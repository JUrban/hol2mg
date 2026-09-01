// hol2mg literal statements (private): shard polytope of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/polytope.ml:13 / face_of   (hash md5:099bff3a2ee95fc4d4f768edb6f0cfe6)
Theorem hlt_face_of_thm : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_face_of A t s = 1 <-> hl_SUBSET (hl_ty_cart R A) t s = 1 /\ (hl_convex A t = 1 /\ forall a b x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) a s = 1 /\ (hl_IN (hl_ty_cart R A) b s = 1 /\ (hl_IN (hl_ty_cart R A) x t = 1 /\ hl_IN (hl_ty_cart R A) x (hl_open_segment A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1)) -> hl_IN (hl_ty_cart R A) a t = 1 /\ hl_IN (hl_ty_cart R A) b t = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:19 / FACE_OF_TRANSLATION_EQ   (hash md5:9aa51de6aca1dc8394af3a3f3cec7d98)
Theorem hlt_FACE_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall f s :e 2 :^: hl_ty_cart R N, hl_face_of N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) f) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_face_of N f s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:26 / FACE_OF_LINEAR_IMAGE   (hash md5:416715f862da522bd16f39c80b2fc42b)
Theorem hlt_FACE_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_face_of N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_face_of M c s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:37 / FACE_OF_REFL   (hash md5:ff67762ec2bb5d79acc6a718b700a501)
Theorem hlt_FACE_OF_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 -> hl_face_of A s s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:41 / FACE_OF_REFL_EQ   (hash md5:36b87c71e2d0c2c053bf63a0399a78a7)
Theorem hlt_FACE_OF_REFL_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_face_of A s s = 1 <-> hl_convex A s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:45 / EMPTY_FACE_OF   (hash md5:bbba0d8d4f40754ca3c2ec45a27fcf4e)
Theorem hlt_EMPTY_FACE_OF : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_face_of A (hl_EMPTY (hl_ty_cart R A)) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:49 / FACE_OF_EMPTY   (hash md5:7ceb69df7db5450ee3b61335c8b86d34)
Theorem hlt_FACE_OF_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_face_of A s (hl_EMPTY (hl_ty_cart R A)) = 1 <-> s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/polytope.ml:54 / FACE_OF_TRANS   (hash md5:6da63c3eec51de63e5d0dd35dd4da897)
Theorem hlt_FACE_OF_TRANS : forall A:set, A <> Empty -> forall s t u :e 2 :^: hl_ty_cart R A, hl_face_of A s t = 1 /\ hl_face_of A t u = 1 -> hl_face_of A s u = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:59 / FACE_OF_FACE   (hash md5:77da238410024cc1a96b4257794201a5)
Theorem hlt_FACE_OF_FACE : forall A:set, A <> Empty -> forall f s t :e 2 :^: hl_ty_cart R A, hl_face_of A t s = 1 -> (hl_face_of A f t = 1 <-> hl_face_of A f s = 1 /\ hl_SUBSET (hl_ty_cart R A) f t = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:65 / FACE_OF_SUBSET   (hash md5:0a58128a9c3c3056eff4910d06ca7519)
Theorem hlt_FACE_OF_SUBSET : forall A:set, A <> Empty -> forall f s t :e 2 :^: hl_ty_cart R A, hl_face_of A f s = 1 /\ (hl_SUBSET (hl_ty_cart R A) f t = 1 /\ hl_SUBSET (hl_ty_cart R A) t s = 1) -> hl_face_of A f t = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:69 / FACE_OF_SLICE   (hash md5:8bf0dc3cde013aa5d7b6b05de9815e5f)
Theorem hlt_FACE_OF_SLICE : forall A:set, A <> Empty -> forall f s t :e 2 :^: hl_ty_cart R A, hl_face_of A f s = 1 /\ hl_convex A t = 1 -> hl_face_of A (hl_INTER (hl_ty_cart R A) f t) (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:79 / FACE_OF_INTER   (hash md5:481b9cdca89a276487915b36966e7bfd)
Theorem hlt_FACE_OF_INTER : forall A:set, A <> Empty -> forall s t1 t2 :e 2 :^: hl_ty_cart R A, hl_face_of A t1 s = 1 /\ hl_face_of A t2 s = 1 -> hl_face_of A (hl_INTER (hl_ty_cart R A) t1 t2) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:84 / FACE_OF_INTERS   (hash md5:71f46e4175f8b64563354876cf48eb0b)
Theorem hlt_FACE_OF_INTERS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, ~ P = hl_EMPTY (2 :^: hl_ty_cart R A) /\ (forall t :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) t P = 1 -> hl_face_of A t s = 1) -> hl_face_of A (hl_INTERS (hl_ty_cart R A) P) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:90 / FACE_OF_INTER_INTER   (hash md5:c956b6e57c7f6b919ac9fda1d7352788)
Theorem hlt_FACE_OF_INTER_INTER : forall A:set, A <> Empty -> forall f t f' t' :e 2 :^: hl_ty_cart R A, hl_face_of A f t = 1 /\ hl_face_of A f' t' = 1 -> hl_face_of A (hl_INTER (hl_ty_cart R A) f f') (hl_INTER (hl_ty_cart R A) t t') = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:95 / FACE_OF_STILLCONVEX   (hash md5:d9f510fdd68f7b37006b333189164707)
Theorem hlt_FACE_OF_STILLCONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> (hl_face_of N t s = 1 <-> hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_convex N (hl_DIFF (hl_ty_cart R N) s t) = 1 /\ t = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) t) s)).
Admitted.

// HOL Light: Multivariate/polytope.ml:180 / FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE_STRONG   (hash md5:bfb2bf99d3b06d93506eeaffc411e282)
Theorem hlt_FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE_STRONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_convex N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5518 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5518 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))) = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_dot N a x) b = 1) -> hl_face_of N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5519 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5519 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:203 / FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE_STRONG   (hash md5:015e959421c0b33b3cf62f2819487b44)
Theorem hlt_FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE_STRONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_convex N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5520 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5520 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))) = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_ge (hl_dot N a x) b = 1) -> hl_face_of N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5521 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5521 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:212 / FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE   (hash md5:2703046851af5c60ba353f3e29a530ea)
Theorem hlt_FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_convex N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_dot N a x) b = 1) -> hl_face_of N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5522 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5522 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:219 / FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE   (hash md5:91a1d500cb5ae835d1ff734359d58b40)
Theorem hlt_FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_convex N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_ge (hl_dot N a x) b = 1) -> hl_face_of N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5523 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5523 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:226 / FACE_OF_IMP_SUBSET   (hash md5:0dc5a07a03fab66aa661be60497dd229)
Theorem hlt_FACE_OF_IMP_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_face_of A t s = 1 -> hl_SUBSET (hl_ty_cart R A) t s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:230 / FACE_OF_IMP_CONVEX   (hash md5:1c3382a975564886882d12d9a2e6be15)
Theorem hlt_FACE_OF_IMP_CONVEX : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_face_of A t s = 1 -> hl_convex A t = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:234 / FACE_OF_IMP_CLOSED   (hash md5:db3a93a8701f34c5ad4c23fe0949d28f)
Theorem hlt_FACE_OF_IMP_CLOSED : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ (hl_closed A s = 1 /\ hl_face_of A t s = 1) -> hl_closed A t = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:242 / FACE_OF_IMP_COMPACT   (hash md5:ea87dd49dc65c217114e01c5d62566e5)
Theorem hlt_FACE_OF_IMP_COMPACT : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ (hl_compact A s = 1 /\ hl_face_of A t s = 1) -> hl_compact A t = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:247 / FACE_OF_INTER_SUBFACE   (hash md5:3f2246df263d2d95457ea2cd2ef74455)
Theorem hlt_FACE_OF_INTER_SUBFACE : forall N:set, N <> Empty -> forall c1 c2 d1 d2 :e 2 :^: hl_ty_cart R N, hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c1 = 1 /\ (hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c2 = 1 /\ (hl_face_of N d1 c1 = 1 /\ hl_face_of N d2 c2 = 1)) -> hl_face_of N (hl_INTER (hl_ty_cart R N) d1 d2) d1 = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) d1 d2) d2 = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:258 / SUBSET_OF_FACE_OF   (hash md5:5c98ee7582fccfaa42b59c9b042361d2)
Theorem hlt_SUBSET_OF_FACE_OF : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_face_of N t s = 1 /\ (hl_SUBSET (hl_ty_cart R N) u s = 1 /\ ~ hl_DISJOINT (hl_ty_cart R N) t (hl_relative_interior N u) = 1) -> hl_SUBSET (hl_ty_cart R N) u t = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:312 / FACE_OF_EQ   (hash md5:2923cf23172905fc558a622ee97c7977)
Theorem hlt_FACE_OF_EQ : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_face_of N t s = 1 /\ (hl_face_of N u s = 1 /\ ~ hl_DISJOINT (hl_ty_cart R N) (hl_relative_interior N t) (hl_relative_interior N u) = 1) -> t = u.
Admitted.

// HOL Light: Multivariate/polytope.ml:324 / FACE_OF_DISJOINT_RELATIVE_INTERIOR   (hash md5:62bf841688da95dac3944ecfe2c14bbd)
Theorem hlt_FACE_OF_DISJOINT_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ ~ f = s -> hl_INTER (hl_ty_cart R N) f (hl_relative_interior N s) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/polytope.ml:333 / FACE_OF_DISJOINT_INTERIOR   (hash md5:d634c8b98a8332471484e9f6bb2c3bbe)
Theorem hlt_FACE_OF_DISJOINT_INTERIOR : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ ~ f = s -> hl_INTER (hl_ty_cart R N) f (hl_interior N s) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/polytope.ml:341 / SUBSET_OF_FACE_OF_AFFINE_HULL   (hash md5:d428845a8f17970215103ca1b2ab5d23)
Theorem hlt_SUBSET_OF_FACE_OF_AFFINE_HULL : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_face_of N t s = 1 /\ (hl_convex N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) u s = 1 /\ ~ hl_DISJOINT (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) t) (hl_relative_interior N u) = 1)) -> hl_SUBSET (hl_ty_cart R N) u t = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:352 / AFFINE_HULL_FACE_OF_DISJOINT_RELATIVE_INTERIOR   (hash md5:8f31b354f0f2cf431466cf5dfbd450c5)
Theorem hlt_AFFINE_HULL_FACE_OF_DISJOINT_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_face_of N f s = 1 /\ ~ f = s) -> hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) f) (hl_relative_interior N s) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/polytope.ml:361 / FACE_OF_SUBSET_RELATIVE_BOUNDARY   (hash md5:f0821cf0403be33e5203893e1bd835b4)
Theorem hlt_FACE_OF_SUBSET_RELATIVE_BOUNDARY : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ ~ f = s -> hl_SUBSET (hl_ty_cart R N) f (hl_DIFF (hl_ty_cart R N) s (hl_relative_interior N s)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:367 / FACE_OF_SUBSET_RELATIVE_FRONTIER   (hash md5:7ca61f9123b0763e23fa63d3c8abf5cf)
Theorem hlt_FACE_OF_SUBSET_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ ~ f = s -> hl_SUBSET (hl_ty_cart R N) f (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:375 / FACE_OF_SUBSET_RELATIVE_FRONTIER_AFF_DIM   (hash md5:6e499d14ffaad61524bfb172493d8af0)
Theorem hlt_FACE_OF_SUBSET_RELATIVE_FRONTIER_AFF_DIM : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ hl_int_lt (hl_aff_dim N f) (hl_aff_dim N s) = 1 -> hl_SUBSET (hl_ty_cart R N) f (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:381 / FACE_OF_SUBSET_FRONTIER_AFF_DIM   (hash md5:1146a3e7bcd7b2eb8c697d3b8f6c5b50)
Theorem hlt_FACE_OF_SUBSET_FRONTIER_AFF_DIM : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ hl_int_lt (hl_aff_dim N f) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 -> hl_SUBSET (hl_ty_cart R N) f (hl_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:393 / FACE_OF_AFF_DIM_LT   (hash md5:73644172a93e920bc4fe0ab7373eda7c)
Theorem hlt_FACE_OF_AFF_DIM_LT : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_face_of N f s = 1 /\ ~ f = s) -> hl_int_lt (hl_aff_dim N f) (hl_aff_dim N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:410 / FACE_OF_CONVEX_HULLS   (hash md5:c1d3a4c085be5e73cbbf58563aff42b4)
Theorem hlt_FACE_OF_CONVEX_HULLS : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) f s = 1 /\ hl_DISJOINT (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) f) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DIFF (hl_ty_cart R N) s f)) = 1) -> hl_face_of N (hl_hull (hl_ty_cart R N) (hl_convex N) f) (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:530 / FACE_OF_CONVEX_HULL_INSERT   (hash md5:eac817757d0cf2b5b698aa2ea376ba8d)
Theorem hlt_FACE_OF_CONVEX_HULL_INSERT : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (~ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ hl_face_of N f (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1) -> hl_face_of N f (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:542 / FACE_OF_AFFINE_TRIVIAL   (hash md5:cc06839bce1e0901a8c10a95b3654d25)
Theorem hlt_FACE_OF_AFFINE_TRIVIAL : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ hl_face_of N f s = 1 -> f = hl_EMPTY (hl_ty_cart R N) \/ f = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:565 / FACE_OF_AFFINE_EQ   (hash md5:4f8c451c32a8eed45ce51480ef62b553)
Theorem hlt_FACE_OF_AFFINE_EQ : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 -> (hl_face_of N f s = 1 <-> f = hl_EMPTY (hl_ty_cart R N) \/ f = s).
Admitted.

// HOL Light: Multivariate/polytope.ml:570 / INTERS_FACES_FINITE_BOUND   (hash md5:eceeef38f59c1ee65ded12b3c0843638)
Theorem hlt_INTERS_FACES_FINITE_BOUND : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_convex N s = 1 /\ (forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c f = 1 -> hl_face_of N c s = 1) -> exists f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f' = 1 /\ (hl_SUBSET (2 :^: hl_ty_cart R N) f' f = 1 /\ (hl_le (hl_CARD (2 :^: hl_ty_cart R N) f') (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_INTERS (hl_ty_cart R N) f' = hl_INTERS (hl_ty_cart R N) f)).
Admitted.

// HOL Light: Multivariate/polytope.ml:701 / INTERS_FACES_FINITE_ALTBOUND   (hash md5:adc4c56e73493f0016ce7433748ccbd4)
Theorem hlt_INTERS_FACES_FINITE_ALTBOUND : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e 2 :^: (2 :^: hl_ty_cart R N), (forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c f = 1 -> hl_face_of N c s = 1) -> exists f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f' = 1 /\ (hl_SUBSET (2 :^: hl_ty_cart R N) f' f = 1 /\ (hl_le (hl_CARD (2 :^: hl_ty_cart R N) f') (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ hl_INTERS (hl_ty_cart R N) f' = hl_INTERS (hl_ty_cart R N) f)).
Admitted.

// HOL Light: Multivariate/polytope.ml:784 / FACES_OF_TRANSLATION   (hash md5:573fc734479b85042cd601d74f2fcfb6)
Theorem hlt_FACES_OF_TRANSLATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5524 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5524 (hl_face_of N f (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s)) f = 1 then 1 else 0) = hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x)) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5525 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5525 (hl_face_of N f s) f = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:795 / FACES_OF_LINEAR_IMAGE   (hash md5:5d489b64fcb4436e33dbef1886b01402)
Theorem hlt_FACES_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5530 :e 2 :^: hl_ty_cart R N => if exists t :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5530 (hl_face_of N t (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) t = 1 then 1 else 0) = hl_IMAGE (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_5531 :e 2 :^: hl_ty_cart R M => if exists t :e 2 :^: hl_ty_cart R M, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_5531 (hl_face_of M t s) t = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:811 / FACE_OF_CONIC   (hash md5:79bc1b8e62360eabb18e5a058e4fd0c6)
Theorem hlt_FACE_OF_CONIC : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 /\ hl_face_of N f s = 1 -> hl_conic N f = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:843 / FACE_OF_PCROSS   (hash md5:90fa49be80d5f43fd333ce9f26e9715b)
Theorem hlt_FACE_OF_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall f s :e 2 :^: hl_ty_cart R M, forall f' s' :e 2 :^: hl_ty_cart R N, hl_face_of M f s = 1 /\ hl_face_of N f' s' = 1 -> hl_face_of (hl_ty_finite_sum M N) (hl_PCROSS R M N f f') (hl_PCROSS R M N s s') = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:858 / FACE_OF_PCROSS_DECOMP   (hash md5:5f286bc083850a00ccf5c6d2b4a0ba6f)
Theorem hlt_FACE_OF_PCROSS_DECOMP : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall s' :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_face_of (hl_ty_finite_sum M N) c (hl_PCROSS R M N s s') = 1 <-> exists f :e 2 :^: hl_ty_cart R M, exists f' :e 2 :^: hl_ty_cart R N, hl_face_of M f s = 1 /\ (hl_face_of N f' s' = 1 /\ c = hl_PCROSS R M N f f').
Admitted.

// HOL Light: Multivariate/polytope.ml:930 / FACE_OF_PCROSS_EQ   (hash md5:7f73e41a8619270929a89c7b44b38e06)
Theorem hlt_FACE_OF_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f s :e 2 :^: hl_ty_cart R M, forall f' s' :e 2 :^: hl_ty_cart R N, hl_face_of (hl_ty_finite_sum M N) (hl_PCROSS R M N f f') (hl_PCROSS R M N s s') = 1 <-> f = hl_EMPTY (hl_ty_cart R M) \/ (f' = hl_EMPTY (hl_ty_cart R N) \/ hl_face_of M f s = 1 /\ hl_face_of N f' s' = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:939 / HYPERPLANE_FACE_OF_HALFSPACE_LE   (hash md5:1bf09c05c13c5a3559445cfbcef21cac)
Theorem hlt_HYPERPLANE_FACE_OF_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_face_of N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5535 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5535 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5536 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5536 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:947 / HYPERPLANE_FACE_OF_HALFSPACE_GE   (hash md5:7f81e719c36ec11e10b3ced26e75858c)
Theorem hlt_HYPERPLANE_FACE_OF_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_face_of N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5540 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5540 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5541 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5541 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:955 / FACE_OF_HALFSPACE_LE   (hash md5:0ef3ec5b74ad6d344a54944dcc60953e)
Theorem hlt_FACE_OF_HALFSPACE_LE : forall N:set, N <> Empty -> forall f :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_face_of N f (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5545 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5545 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = 1 <-> f = hl_EMPTY (hl_ty_cart R N) \/ (f = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5546 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5546 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0) \/ f = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5547 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5547 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:981 / FACE_OF_HALFSPACE_GE   (hash md5:7b01a7e0a83c0dcf538426b0ca82e202)
Theorem hlt_FACE_OF_HALFSPACE_GE : forall N:set, N <> Empty -> forall f :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_face_of N f (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5548 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5548 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0)) = 1 <-> f = hl_EMPTY (hl_ty_cart R N) \/ (f = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5549 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5549 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0) \/ f = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5550 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5550 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:990 / RELATIVE_BOUNDARY_POINT_IN_PROPER_FACE   (hash md5:14b8f70aa5d02f64be89a8a6d46b2f17)
Theorem hlt_RELATIVE_BOUNDARY_POINT_IN_PROPER_FACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ ~ hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1) -> exists f :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ (~ f = s /\ hl_IN (hl_ty_cart R N) x f = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:1013 / RELATIVE_FRONTIER_OF_CONVEX_CLOSED   (hash md5:859b30dad69934a838cd27a5f5948706)
Theorem hlt_RELATIVE_FRONTIER_OF_CONVEX_CLOSED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_closed N s = 1 -> hl_relative_frontier N s = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5552 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5552 (if hl_face_of N f s = 1 /\ ~ f = s then 1 else 0) f = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1026 / IN_RELATIVE_INTERIOR_OF_FACE   (hash md5:8bd700671c5b81d80afeb1a2f57854d5)
Theorem hlt_IN_RELATIVE_INTERIOR_OF_FACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) x s = 1 -> exists f :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_relative_interior N f) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1051 / CONVEX_FACIAL_PARTITION   (hash md5:a695a9b82a01dce469ed280771f9b870)
Theorem hlt_CONVEX_FACIAL_PARTITION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5554 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5554 (hl_face_of N f s) (hl_relative_interior N f) = 1 then 1 else 0)) = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1058 / IN_RELATIVE_INTERIOR_OF_UNIQUE_FACE   (hash md5:e3f1dc5acb7cae0a13d3a27be3e1cd8e)
Theorem hlt_IN_RELATIVE_INTERIOR_OF_UNIQUE_FACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) x s = 1 -> hl_exists_unique (2 :^: hl_ty_cart R N) (fun f :e 2 :^: hl_ty_cart R N => if hl_face_of N f s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_relative_interior N f) = 1 then 1 else 0) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1066 / RELATIVE_INTERIOR_SUBSET_OF_PROPER_FACE   (hash md5:9d13e20e906c1e81a7ef24c48ed44421)
Theorem hlt_RELATIVE_INTERIOR_SUBSET_OF_PROPER_FACE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ ~ hl_DIFF (hl_ty_cart R N) (hl_relative_interior N t) (hl_relative_interior N s) = hl_EMPTY (hl_ty_cart R N)) -> exists f :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ (~ f = s /\ hl_SUBSET (hl_ty_cart R N) t f = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:1084 / CONVEX_RELATIVE_BOUNDARY_SUBSET_OF_PROPER_FACE   (hash md5:3d96dc66b18b4ba5473f0d24226d34fc)
Theorem hlt_CONVEX_RELATIVE_BOUNDARY_SUBSET_OF_PROPER_FACE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_convex N t = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_DIFF (hl_ty_cart R N) s (hl_relative_interior N s)) = 1)) -> exists f :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ (~ f = s /\ hl_SUBSET (hl_ty_cart R N) t f = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:1097 / RELATIVE_FRONTIER_FACIAL_PARTITION_ALT   (hash md5:aab5c49f628d41f12d810d8955c4059b)
Theorem hlt_RELATIVE_FRONTIER_FACIAL_PARTITION_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_closed N s = 1 -> hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5557 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5557 (if hl_face_of N f s = 1 /\ ~ f = s then 1 else 0) (hl_relative_interior N f) = 1 then 1 else 0)) = hl_relative_frontier N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1115 / RELATIVE_FRONTIER_FACIAL_PARTITION   (hash md5:d294565ab84b0dd209e37cfa944c3663)
Theorem hlt_RELATIVE_FRONTIER_FACIAL_PARTITION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_closed N s = 1 -> hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5560 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5560 (if hl_face_of N f s = 1 /\ hl_int_lt (hl_aff_dim N f) (hl_aff_dim N s) = 1 then 1 else 0) (hl_relative_interior N f) = 1 then 1 else 0)) = hl_relative_frontier N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1128 / FRONTIER_OF_CONVEX_CLOSED   (hash md5:5b1ff7545d2cf21f800ba7e2c4028682)
Theorem hlt_FRONTIER_OF_CONVEX_CLOSED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_closed N s = 1 -> hl_frontier N s = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5561 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5561 (if hl_face_of N f s = 1 /\ hl_int_lt (hl_aff_dim N f) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 then 1 else 0) f = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1150 / FACE_OF_INTER_AS_INTER_OF_FACE   (hash md5:c3e218b4260f7fee4632fa5029e810e4)
Theorem hlt_FACE_OF_INTER_AS_INTER_OF_FACE : forall N:set, N <> Empty -> forall s t f :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ hl_face_of N f (hl_INTER (hl_ty_cart R N) s t) = 1) -> exists k l :e 2 :^: hl_ty_cart R N, hl_face_of N k s = 1 /\ (hl_face_of N l t = 1 /\ hl_INTER (hl_ty_cart R N) k l = f).
Admitted.

// HOL Light: Multivariate/polytope.ml:1189 / exposed_face_of   (hash md5:b4e84412091196c09149f7f81e0d28fd)
Theorem hlt_exposed_face_of_thm : forall A:set, A <> Empty -> forall t s :e 2 :^: hl_ty_cart R A, hl_exposed_face_of A t s = 1 <-> hl_face_of A t s = 1 /\ exists a :e hl_ty_cart R A, exists b :e R, hl_SUBSET (hl_ty_cart R A) s (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5562 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5562 (hl_real_le (hl_dot A a x) b) x = 1 then 1 else 0)) = 1 /\ t = hl_INTER (hl_ty_cart R A) s (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5563 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5563 (if hl_dot A a x = b then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1194 / EXPOSED_FACE_OF_IMP_FACE_OF   (hash md5:70a3ac9df84b0cb9767fc9bf3531ba94)
Theorem hlt_EXPOSED_FACE_OF_IMP_FACE_OF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_exposed_face_of N t s = 1 -> hl_face_of N t s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1198 / EMPTY_EXPOSED_FACE_OF   (hash md5:a4b4cc48993e3ebec960bd6fa2f9a4e9)
Theorem hlt_EMPTY_EXPOSED_FACE_OF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_exposed_face_of N (hl_EMPTY (hl_ty_cart R N)) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1204 / EXPOSED_FACE_OF_REFL_EQ   (hash md5:1899a158c4198119f9ada2787430ac7b)
Theorem hlt_EXPOSED_FACE_OF_REFL_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_exposed_face_of N s s = 1 <-> hl_convex N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1211 / EXPOSED_FACE_OF_REFL   (hash md5:ddb52410d7a60181ef50ba13b0565796)
Theorem hlt_EXPOSED_FACE_OF_REFL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_exposed_face_of N s s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1215 / EXPOSED_FACE_OF   (hash md5:cf7c12260bd0b59c9de66b6389fd7ce2)
Theorem hlt_EXPOSED_FACE_OF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_exposed_face_of N t s = 1 <-> hl_face_of N t s = 1 /\ (t = hl_EMPTY (hl_ty_cart R N) \/ (t = s \/ exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_SUBSET (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5564 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5564 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = 1 /\ t = hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5565 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5565 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:1235 / EXPOSED_FACE_OF_TRANSLATION_EQ   (hash md5:18774cbcf72255f0db46e2013436c4e3)
Theorem hlt_EXPOSED_FACE_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall f s :e 2 :^: hl_ty_cart R N, hl_exposed_face_of N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) f) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_exposed_face_of N f s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1257 / EXPOSED_FACE_OF_LINEAR_IMAGE   (hash md5:8a5491614fa169b90652e9b75aac3605)
Theorem hlt_EXPOSED_FACE_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y)) -> (hl_exposed_face_of N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_exposed_face_of M c s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:1283 / EXPOSED_FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE   (hash md5:9254c972073452c1b5029d6f876183f7)
Theorem hlt_EXPOSED_FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_convex N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_dot N a x) b = 1) -> hl_exposed_face_of N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5566 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5566 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1290 / EXPOSED_FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE   (hash md5:9530db3d77a5518478d795ab3e86c652)
Theorem hlt_EXPOSED_FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_convex N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_ge (hl_dot N a x) b = 1) -> hl_exposed_face_of N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5567 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5567 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1299 / EXPOSED_FACE_OF_INTER   (hash md5:a793542d031b0ca662ccf6b80671a57a)
Theorem hlt_EXPOSED_FACE_OF_INTER : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_exposed_face_of N t s = 1 /\ hl_exposed_face_of N u s = 1 -> hl_exposed_face_of N (hl_INTER (hl_ty_cart R N) t u) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1319 / EXPOSED_FACE_OF_INTERS   (hash md5:46ea39f0206eb50ed664741a67f1839d)
Theorem hlt_EXPOSED_FACE_OF_INTERS : forall N:set, N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, ~ P = hl_EMPTY (2 :^: hl_ty_cart R N) /\ (forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t P = 1 -> hl_exposed_face_of N t s = 1) -> hl_exposed_face_of N (hl_INTERS (hl_ty_cart R N) P) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1347 / EXPOSED_FACE_OF_SUMS   (hash md5:651e3fb57211bfa95c7adb2ae1ab65fe)
Theorem hlt_EXPOSED_FACE_OF_SUMS : forall N:set, N <> Empty -> forall s t f :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ hl_exposed_face_of N f (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5571 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5571 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = 1) -> exists k l :e 2 :^: hl_ty_cart R N, hl_exposed_face_of N k s = 1 /\ (hl_exposed_face_of N l t = 1 /\ f = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5572 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5572 (if hl_IN (hl_ty_cart R N) x k = 1 /\ hl_IN (hl_ty_cart R N) y l = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1399 / EXPOSED_FACE_OF_PARALLEL   (hash md5:040df22439931448504a15f2c8bda6bc)
Theorem hlt_EXPOSED_FACE_OF_PARALLEL : forall N:set, N <> Empty -> forall t s :e 2 :^: hl_ty_cart R N, hl_exposed_face_of N t s = 1 <-> hl_face_of N t s = 1 /\ exists a :e hl_ty_cart R N, exists b :e R, hl_SUBSET (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5583 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5583 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = 1 /\ (t = hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5584 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5584 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) /\ ((~ t = hl_EMPTY (hl_ty_cart R N) /\ ~ t = s -> ~ a = hl_vec N (hl_NUMERAL hl_zero)) /\ forall w :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) w (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ ~ t = s -> hl_IN (hl_ty_cart R N) (hl_vector_add N w a) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1462 / RELATIVE_BOUNDARY_POINT_IN_EXPOSED_FACE   (hash md5:116baa6624376686cf9e4e0bebb660aa)
Theorem hlt_RELATIVE_BOUNDARY_POINT_IN_EXPOSED_FACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ ~ hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1) -> exists f :e 2 :^: hl_ty_cart R N, hl_exposed_face_of N f s = 1 /\ (~ f = s /\ hl_IN (hl_ty_cart R N) x f = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:1488 / extreme_point_of   (hash md5:28efa76f56e9fa76468ff62302403f78)
Theorem hlt_extreme_point_of_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_extreme_point_of A x s = 1 <-> hl_IN (hl_ty_cart R A) x s = 1 /\ forall a b :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) a s = 1 /\ hl_IN (hl_ty_cart R A) b s = 1 -> ~ hl_IN (hl_ty_cart R A) x (hl_open_segment A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1492 / EXTREME_POINT_RELATIVE_FRONTIER   (hash md5:9a6af5cb4d2afbb5395bedc755e0532d)
Theorem hlt_EXTREME_POINT_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s (hl_relative_interior N s)) = 1 /\ (forall a b :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))) (hl_DIFF (hl_ty_cart R N) s (hl_relative_interior N s)) = 1 -> ~ hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1)) -> hl_extreme_point_of N x s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1505 / EXTREME_POINT_OF_STILLCONVEX_IMP   (hash md5:bab18740e38045dfd152295f9876e881)
Theorem hlt_EXTREME_POINT_OF_STILLCONVEX_IMP : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_convex N (hl_DELETE (hl_ty_cart R N) s x) = 1 -> hl_extreme_point_of N x s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1511 / EXTREME_POINTS_OF_STILLCONVEX   (hash md5:c25017dcae9a919534ee257fa4a3b982)
Theorem hlt_EXTREME_POINTS_OF_STILLCONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5586 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5586 (hl_extreme_point_of N x s) x = 1 then 1 else 0)) = 1 -> hl_convex N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1517 / EXTREME_POINT_OF_STILLCONVEX   (hash md5:50255df46fe468dc67266bb4cdcc013d)
Theorem hlt_EXTREME_POINT_OF_STILLCONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 -> (hl_extreme_point_of N x s = 1 <-> hl_IN (hl_ty_cart R N) x s = 1 /\ hl_convex N (hl_DELETE (hl_ty_cart R N) s x) = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:1524 / FACE_OF_SING   (hash md5:af6ffa487a0d0a53b0e3eaa0768ecc20)
Theorem hlt_FACE_OF_SING : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_face_of A (hl_INSERT (hl_ty_cart R A) x (hl_EMPTY (hl_ty_cart R A))) s = 1 <-> hl_extreme_point_of A x s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1529 / FACE_OF_AFF_DIM_0   (hash md5:ed3d12e090a9ab4020b4c3dbe88b67b9)
Theorem hlt_FACE_OF_AFF_DIM_0 : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ hl_aff_dim N f = hl_int_of_num (hl_NUMERAL hl_zero) <-> exists a :e hl_ty_cart R N, hl_extreme_point_of N a s = 1 /\ f = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1534 / EXTREME_POINT_NOT_IN_RELATIVE_INTERIOR   (hash md5:d1ef09920cacaa8c60e71cf45119e6e4)
Theorem hlt_EXTREME_POINT_NOT_IN_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_extreme_point_of N x s = 1 /\ ~ s = hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N)) -> ~ hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1543 / EXTREME_POINT_NOT_IN_INTERIOR   (hash md5:b881599f40cff1b5e0353772617e0a89)
Theorem hlt_EXTREME_POINT_NOT_IN_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_extreme_point_of N x s = 1 -> ~ hl_IN (hl_ty_cart R N) x (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1551 / EXTREME_POINT_IN_RELATIVE_FRONTIER   (hash md5:cafad003ddf12287dba6477acd2e12f6)
Theorem hlt_EXTREME_POINT_IN_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_extreme_point_of N x s = 1 /\ ~ s = hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N)) -> hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1558 / EXTREME_POINT_IN_FRONTIER   (hash md5:c6e0eb8351a992e384e4f89719dc1abf)
Theorem hlt_EXTREME_POINT_IN_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_extreme_point_of N x s = 1 -> hl_IN (hl_ty_cart R N) x (hl_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1563 / EXTREME_POINT_OF_FACE   (hash md5:beaf27eb2894dcad643fc2639ea7c351)
Theorem hlt_EXTREME_POINT_OF_FACE : forall A:set, A <> Empty -> forall f s :e 2 :^: hl_ty_cart R A, forall v :e hl_ty_cart R A, hl_face_of A f s = 1 -> (hl_extreme_point_of A v f = 1 <-> hl_extreme_point_of A v s = 1 /\ hl_IN (hl_ty_cart R A) v f = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:1568 / EXTREME_POINT_OF_MIDPOINT   (hash md5:10e06c0781e215cadf39b7d028c93ec6)
Theorem hlt_EXTREME_POINT_OF_MIDPOINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 -> (hl_extreme_point_of N x s = 1 <-> hl_IN (hl_ty_cart R N) x s = 1 /\ forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ x = hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) -> x = a /\ x = b).
Admitted.

// HOL Light: Multivariate/polytope.ml:1602 / EXTREME_POINT_OF_CONVEX_HULL   (hash md5:713214dab2decabe9bcd3e516d790e73)
Theorem hlt_EXTREME_POINT_OF_CONVEX_HULL : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_IN (hl_ty_cart R N) x s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1612 / EXTREME_POINTS_OF_CONVEX_HULL   (hash md5:1585aa216068bf44226739a38b7c3403)
Theorem hlt_EXTREME_POINTS_OF_CONVEX_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5587 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5587 (hl_extreme_point_of A x (hl_hull (hl_ty_cart R A) (hl_convex A) s)) x = 1 then 1 else 0)) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1616 / EXTREME_POINT_OF_EMPTY   (hash md5:dfd805163936a2a65d6498436255811e)
Theorem hlt_EXTREME_POINT_OF_EMPTY : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, ~ hl_extreme_point_of A x (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1620 / EXTREME_POINT_OF_SING   (hash md5:5f0eca3cb27b36f770c993d13c3a853f)
Theorem hlt_EXTREME_POINT_OF_SING : forall A:set, A <> Empty -> forall a x :e hl_ty_cart R A, hl_extreme_point_of A x (hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A))) = 1 <-> x = a.
Admitted.

// HOL Light: Multivariate/polytope.ml:1625 / EXTREME_POINT_OF_TRANSLATION_EQ   (hash md5:ac23a6d15bd1e3b321e1caf200deca86)
Theorem hlt_EXTREME_POINT_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_extreme_point_of N (hl_vector_add N a x) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x1 :e hl_ty_cart R N => hl_vector_add N a x1) s) = 1 <-> hl_extreme_point_of N x s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1633 / EXTREME_POINT_OF_LINEAR_IMAGE   (hash md5:b60b723dea1ed27434e9c4d1bde53bca)
Theorem hlt_EXTREME_POINT_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x1 y :e hl_ty_cart R M, f x1 = f y -> x1 = y) -> (hl_extreme_point_of N (f x) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_extreme_point_of M x s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:1641 / EXTREME_POINTS_OF_TRANSLATION   (hash md5:a502b512f1f8c55b0b6163e9c212d57d)
Theorem hlt_EXTREME_POINTS_OF_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5588 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5588 (hl_extreme_point_of N x (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x1 :e hl_ty_cart R N => hl_vector_add N a x1) s)) x = 1 then 1 else 0) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5589 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5589 (hl_extreme_point_of N x s) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1649 / EXTREME_POINT_OF_INTER   (hash md5:081cc2f9d7f8e3aa7a1c1ee3782e64af)
Theorem hlt_EXTREME_POINT_OF_INTER : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, forall s t :e 2 :^: hl_ty_cart R A, hl_extreme_point_of A x s = 1 /\ hl_extreme_point_of A x t = 1 -> hl_extreme_point_of A x (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1654 / EXTREME_POINT_OF_INTER_GEN   (hash md5:ee5c0bca55914970de87fbe968a12810)
Theorem hlt_EXTREME_POINT_OF_INTER_GEN : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, forall s t :e 2 :^: hl_ty_cart R A, (hl_extreme_point_of A x s = 1 \/ hl_extreme_point_of A x t = 1) /\ hl_IN (hl_ty_cart R A) x (hl_INTER (hl_ty_cart R A) s t) = 1 -> hl_extreme_point_of A x (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1659 / EXTREME_POINTS_OF_LINEAR_IMAGE   (hash md5:117d5d9547402c51a92757ed8906c86b)
Theorem hlt_EXTREME_POINTS_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5590 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5590 (hl_extreme_point_of N y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) y = 1 then 1 else 0) = hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5591 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5591 (hl_extreme_point_of M x s) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1673 / EXTREME_POINT_OF_INTER_SUPPORTING_HYPERPLANE_LE   (hash md5:5391cbf3bf7a8086bc0392bf729f4f09)
Theorem hlt_EXTREME_POINT_OF_INTER_SUPPORTING_HYPERPLANE_LE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a :e hl_ty_cart R A, forall b :e R, forall c :e hl_ty_cart R A, (forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> hl_real_le (hl_dot A a x) b = 1) /\ hl_INTER (hl_ty_cart R A) s (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5592 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5592 (if hl_dot A a x = b then 1 else 0) x = 1 then 1 else 0)) = hl_INSERT (hl_ty_cart R A) c (hl_EMPTY (hl_ty_cart R A)) -> hl_extreme_point_of A c s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1682 / EXTREME_POINT_OF_INTER_SUPPORTING_HYPERPLANE_GE   (hash md5:b66d3ed3e87f68f3819cfd4fa745b301)
Theorem hlt_EXTREME_POINT_OF_INTER_SUPPORTING_HYPERPLANE_GE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a :e hl_ty_cart R A, forall b :e R, forall c :e hl_ty_cart R A, (forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> hl_real_ge (hl_dot A a x) b = 1) /\ hl_INTER (hl_ty_cart R A) s (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5593 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5593 (if hl_dot A a x = b then 1 else 0) x = 1 then 1 else 0)) = hl_INSERT (hl_ty_cart R A) c (hl_EMPTY (hl_ty_cart R A)) -> hl_extreme_point_of A c s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1691 / EXPOSED_POINT_OF_INTER_SUPPORTING_HYPERPLANE_LE   (hash md5:2845401930a37d995c9344f260281fd8)
Theorem hlt_EXPOSED_POINT_OF_INTER_SUPPORTING_HYPERPLANE_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, forall c :e hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_dot N a x) b = 1) /\ hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5594 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5594 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N)) -> hl_exposed_face_of N (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1702 / EXPOSED_POINT_OF_INTER_SUPPORTING_HYPERPLANE_GE   (hash md5:59fffa53880457bf996e4471fd939ad1)
Theorem hlt_EXPOSED_POINT_OF_INTER_SUPPORTING_HYPERPLANE_GE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, forall c :e hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_ge (hl_dot N a x) b = 1) /\ hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5595 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5595 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N)) -> hl_exposed_face_of N (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1712 / EXPOSED_POINT_OF_FURTHEST_POINT   (hash md5:15dc2c80491746d3674a42468f01de4a)
Theorem hlt_EXPOSED_POINT_OF_FURTHEST_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1) -> hl_exposed_face_of N (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1733 / COLLINEAR_EXTREME_POINTS   (hash md5:2e93c12514a9588be94169ecc54e879a)
Theorem hlt_COLLINEAR_EXTREME_POINTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_collinear N s = 1 -> hl_FINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5596 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5596 (hl_extreme_point_of N x s) x = 1 then 1 else 0)) = 1 /\ hl_le (hl_CARD (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5597 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5597 (hl_extreme_point_of N x s) x = 1 then 1 else 0))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1758 / EXTREME_POINT_OF_CONIC   (hash md5:995a4ff45b910772d0f0b85fa5bd1ebc)
Theorem hlt_EXTREME_POINT_OF_CONIC : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_conic N s = 1 /\ hl_extreme_point_of N x s = 1 -> x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/polytope.ml:1767 / EXTREME_POINT_OF_CONVEX_HULL_INSERT   (hash md5:ae498ebf71b876b7e0b4387f6379fcd3)
Theorem hlt_EXTREME_POINT_OF_CONVEX_HULL_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_extreme_point_of N a (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1780 / FACE_OF_CONIC_HULL   (hash md5:f9fe7ca3ea0170ec4d5bb02110a05d31)
Theorem hlt_FACE_OF_CONIC_HULL : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, hl_face_of N f s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_face_of N (hl_hull (hl_ty_cart R N) (hl_conic N) f) (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1856 / FACE_OF_CONIC_HULL_REV   (hash md5:9d9cb6034eb498f681022632eac76bd0)
Theorem hlt_FACE_OF_CONIC_HULL_REV : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_face_of N f (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> f = hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N)) \/ exists f' :e 2 :^: hl_ty_cart R N, hl_face_of N f' s = 1 /\ hl_hull (hl_ty_cart R N) (hl_conic N) f' = f.
Admitted.

// HOL Light: Multivariate/polytope.ml:1893 / EXTREME_POINT_OF_CONIC_HULL   (hash md5:7a2df2fbe8073edb40bcc69fc5955f08)
Theorem hlt_EXTREME_POINT_OF_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> (hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1 <-> x = hl_vec N (hl_NUMERAL hl_zero) /\ ~ s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1931 / FACE_OF_CONIC_HULL_EQ   (hash md5:8749cb4f748bacf64524371b8abbe784)
Theorem hlt_FACE_OF_CONIC_HULL_EQ : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> (hl_face_of N f (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1 <-> f = hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N)) /\ ~ s = hl_EMPTY (hl_ty_cart R N) \/ exists f' :e 2 :^: hl_ty_cart R N, hl_face_of N f' s = 1 /\ hl_hull (hl_ty_cart R N) (hl_conic N) f' = f).
Admitted.

// HOL Light: Multivariate/polytope.ml:1945 / EXTREME_POINT_OF_CBALL   (hash md5:80d632b2ec124cb9ac8062333cddc5b7)
Theorem hlt_EXTREME_POINT_OF_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall x :e hl_ty_cart R N, hl_extreme_point_of N x (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1 <-> hl_IN (hl_ty_cart R N) x (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:1964 / CLOSED_IN_CONIC_HULL   (hash md5:2ceebb463ee48a05e8fd57838e46d272)
Theorem hlt_CLOSED_IN_CONIC_HULL : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N t = 1 /\ (~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) t = 1 /\ hl_SUBSET (hl_ty_cart R N) t s = 1) -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_conic N) s)) (hl_hull (hl_ty_cart R N) (hl_conic N) t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2012 / CLOSED_CONIC_HULL   (hash md5:73432a9394ff2619ebaadc8fca119594)
Theorem hlt_CLOSED_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 \/ hl_compact N s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 -> hl_closed N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2022 / CONIC_CLOSURE   (hash md5:7c49da8580e5d1ab6aaac4dc6cf72b09)
Theorem hlt_CONIC_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 -> hl_conic N (hl_closure N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2030 / CLOSURE_CONIC_HULL   (hash md5:8ac52c2c28c1b94a3bed09bf2d03e7ab)
Theorem hlt_CLOSURE_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 \/ hl_bounded N s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_closure N s) = 1 -> hl_closure N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = hl_hull (hl_ty_cart R N) (hl_conic N) (hl_closure N s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2049 / OPEN_IN_SAME_CONIC_HULL   (hash md5:c90258d900ddeec2c242668b20216ef5)
Theorem hlt_OPEN_IN_SAME_CONIC_HULL : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_conic N u = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) (hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) (hl_vec N (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2073 / OPEN_CONIC_HULL   (hash md5:52e3a7133d3bb55114badf789392d539)
Theorem hlt_OPEN_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_open N (hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) (hl_vec N (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2079 / OPEN_IN_CONIC_HULL   (hash md5:d8cbd6fa0f5b1629cf1f335a3ccb440e)
Theorem hlt_OPEN_IN_CONIC_HULL : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) u)) s = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_hull (hl_ty_cart R N) (hl_conic N) u))) (hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) (hl_vec N (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2194 / CONIC_INTERIOR_INSERT   (hash md5:d796fd2f3a88ae94df4f372f9785b2b1)
Theorem hlt_CONIC_INTERIOR_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 -> hl_conic N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_interior N s)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2216 / CONIC_INTERIOR   (hash md5:9509ab17a643621875c86798af5330cc)
Theorem hlt_CONIC_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_interior N s) = 1 -> hl_conic N (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2220 / CONIC_RELATIVE_INTERIOR_INSERT   (hash md5:41ca9264383b7c713476eabb72502d5e)
Theorem hlt_CONIC_RELATIVE_INTERIOR_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 -> hl_conic N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2249 / CONIC_RELATIVE_INTERIOR   (hash md5:eb1cc88eb04dee4f7d401dc2a6e97903)
Theorem hlt_CONIC_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 -> hl_conic N (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2256 / CONIC_HULL_RELATIVE_INTERIOR_SUBSET   (hash md5:1638e3081a06b8d2b19e012a0528d675)
Theorem hlt_CONIC_HULL_RELATIVE_INTERIOR_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) (hl_relative_interior N s)) (hl_vec N (hl_NUMERAL hl_zero))) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_conic N) s)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2267 / CONIC_SUBSET_AS_CONIC_HULL   (hash md5:57cec04e61c1b48689a4ceef34b2f1c9)
Theorem hlt_CONIC_SUBSET_AS_CONIC_HULL : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_conic N c = 1 /\ (~ c = hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N)) /\ hl_SUBSET (hl_ty_cart R N) c (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1) -> hl_hull (hl_ty_cart R N) (hl_conic N) (hl_INTER (hl_ty_cart R N) s c) = c.
Admitted.

// HOL Light: Multivariate/polytope.ml:2300 / RELATIVE_INTERIOR_CONIC_HULL   (hash md5:16addb606b7785b01b748ecf75560bce)
Theorem hlt_RELATIVE_INTERIOR_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) (hl_relative_interior N s)) (hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/polytope.ml:2353 / CONIC_HULL_RELATIVE_INTERIOR   (hash md5:1e68cffbc12f45abb539ec84aea5bd38)
Theorem hlt_CONIC_HULL_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_hull (hl_ty_cart R N) (hl_conic N) (hl_relative_interior N s) = hl_COND (2 :^: hl_ty_cart R N) (if hl_relative_interior N s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_conic N) s))).
Admitted.

// HOL Light: Multivariate/polytope.ml:2365 / CONIC_HULL_DIFF   (hash md5:92ac08c0a61232a3ade3c73e620fb646)
Theorem hlt_CONIC_HULL_DIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ hl_SUBSET (hl_ty_cart R N) t s = 1 -> hl_hull (hl_ty_cart R N) (hl_conic N) (hl_DIFF (hl_ty_cart R N) s t) = hl_COND (2 :^: hl_ty_cart R N) (if t = s then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_DIFF (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) (hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) t) (hl_vec N (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/polytope.ml:2398 / CONIC_HULL_INTER   (hash md5:0e1876f28f4fb7def7c1074d5652ad28)
Theorem hlt_CONIC_HULL_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_UNION (hl_ty_cart R N) s t)) = 1 -> hl_hull (hl_ty_cart R N) (hl_conic N) (hl_INTER (hl_ty_cart R N) s t) = hl_COND (2 :^: hl_ty_cart R N) (if hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) (hl_hull (hl_ty_cart R N) (hl_conic N) t)).
Admitted.

// HOL Light: Multivariate/polytope.ml:2431 / INTER_CONIC_HULL_SUBSETS_CONVEX_RELATIVE_FRONTIER   (hash md5:df7936f77bc6f00b326344675995d412)
Theorem hlt_INTER_CONIC_HULL_SUBSETS_CONVEX_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_convex N u = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N u) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_UNION (hl_ty_cart R N) s t) (hl_relative_frontier N u) = 1) -> hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) (hl_hull (hl_ty_cart R N) (hl_conic N) t) = hl_COND (2 :^: hl_ty_cart R N) (if s = hl_EMPTY (hl_ty_cart R N) \/ t = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_COND (2 :^: hl_ty_cart R N) (if hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) (hl_hull (hl_ty_cart R N) (hl_conic N) (hl_INTER (hl_ty_cart R N) s t))).
Admitted.

// HOL Light: Multivariate/polytope.ml:2505 / RELATIVE_FRONTIER_CONIC_HULL   (hash md5:2bc80529c0a524779902bcdfa2a0ae67)
Theorem hlt_RELATIVE_FRONTIER_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_relative_frontier N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = hl_COND (2 :^: hl_ty_cart R N) (if exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)) then 1 else 0) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) (hl_hull (hl_ty_cart R N) (hl_conic N) (hl_relative_frontier N s)).
Admitted.

// HOL Light: Multivariate/polytope.ml:2539 / CONIC_HULL_RELATIVE_FRONTIER   (hash md5:8f25d92081752b4cf12e9d76294e9af9)
Theorem hlt_CONIC_HULL_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_hull (hl_ty_cart R N) (hl_conic N) (hl_relative_frontier N s) = hl_COND (2 :^: hl_ty_cart R N) (if exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_relative_frontier N (hl_hull (hl_ty_cart R N) (hl_conic N) s)).
Admitted.

// HOL Light: Multivariate/polytope.ml:2550 / INTER_CONIC_HULL   (hash md5:4f5a0f931292e6473c82a2f0364a434b)
Theorem hlt_INTER_CONIC_HULL : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_UNION (hl_ty_cart R N) s t)) = 1 -> hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) (hl_hull (hl_ty_cart R N) (hl_conic N) t) = hl_COND (2 :^: hl_ty_cart R N) (if s = hl_EMPTY (hl_ty_cart R N) \/ t = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_COND (2 :^: hl_ty_cart R N) (if hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) (hl_hull (hl_ty_cart R N) (hl_conic N) (hl_INTER (hl_ty_cart R N) s t))).
Admitted.

// HOL Light: Multivariate/polytope.ml:2579 / RELATIVE_INTERIOR_CONIC_HULL_0   (hash md5:1e561b236d5ceab2eeb776dd2f517d33)
Theorem hlt_RELATIVE_INTERIOR_CONIC_HULL_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_conic N) s)) = 1 <-> hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:2620 / facet_of   (hash md5:5702ecf9cbb71e5c16e6b68030891bcb)
Theorem hlt_facet_of_thm : forall A:set, A <> Empty -> forall f s :e 2 :^: hl_ty_cart R A, hl_facet_of A f s = 1 <-> hl_face_of A f s = 1 /\ (~ f = hl_EMPTY (hl_ty_cart R A) /\ hl_aff_dim A f = hl_int_sub (hl_aff_dim A s) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/polytope.ml:2623 / FACET_OF_EMPTY   (hash md5:583286880c657aa7c412c517768b6d8a)
Theorem hlt_FACET_OF_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, ~ hl_facet_of A s (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2627 / FACET_OF_REFL   (hash md5:95bae123e695d268beb90f7133903fec)
Theorem hlt_FACET_OF_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, ~ hl_facet_of A s s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2631 / FACET_OF_IMP_FACE_OF   (hash md5:efc4cbd964f6a4b99c7fbeeaeb6d9a4f)
Theorem hlt_FACET_OF_IMP_FACE_OF : forall A:set, A <> Empty -> forall f s :e 2 :^: hl_ty_cart R A, hl_facet_of A f s = 1 -> hl_face_of A f s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2635 / FACET_OF_IMP_SUBSET   (hash md5:3f4be4a9d35a6376e5b184c09c7ea261)
Theorem hlt_FACET_OF_IMP_SUBSET : forall A:set, A <> Empty -> forall f s :e 2 :^: hl_ty_cart R A, hl_facet_of A f s = 1 -> hl_SUBSET (hl_ty_cart R A) f s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2639 / FACET_OF_IMP_PROPER   (hash md5:aa9ecb27cba468b2f4f99bcc59bca824)
Theorem hlt_FACET_OF_IMP_PROPER : forall A:set, A <> Empty -> forall f s :e 2 :^: hl_ty_cart R A, hl_facet_of A f s = 1 -> ~ f = hl_EMPTY (hl_ty_cart R A) /\ ~ f = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:2643 / FACET_OF_TRANSLATION_EQ   (hash md5:f96e37d42d67d7817a1fd1425beba4cb)
Theorem hlt_FACET_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall f s :e 2 :^: hl_ty_cart R N, hl_facet_of N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) f) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_facet_of N f s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2650 / FACET_OF_LINEAR_IMAGE   (hash md5:6d17a68d7592edf5fe657fc73251ccc5)
Theorem hlt_FACET_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_facet_of N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_facet_of M c s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:2658 / HYPERPLANE_FACET_OF_HALFSPACE_LE   (hash md5:9b090829f5cb08e27700a88920e5cd34)
Theorem hlt_HYPERPLANE_FACET_OF_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) -> hl_facet_of N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5603 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5603 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5604 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5604 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2664 / HYPERPLANE_FACET_OF_HALFSPACE_GE   (hash md5:6426f2832c2305e2f25a017066dd52f9)
Theorem hlt_HYPERPLANE_FACET_OF_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) -> hl_facet_of N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5605 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5605 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5606 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5606 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2670 / FACET_OF_HALFSPACE_LE   (hash md5:5908ade5aa53ce71b77e46553ab512f6)
Theorem hlt_FACET_OF_HALFSPACE_LE : forall N:set, N <> Empty -> forall f :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_facet_of N f (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5608 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5608 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = 1 <-> ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ f = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5609 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5609 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/polytope.ml:2688 / FACET_OF_HALFSPACE_GE   (hash md5:4c6c9c7ffe230910e6af4b2d24628587)
Theorem hlt_FACET_OF_HALFSPACE_GE : forall N:set, N <> Empty -> forall f :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_facet_of N f (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5610 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5610 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0)) = 1 <-> ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ f = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5611 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5611 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/polytope.ml:2697 / EXPOSED_FACET_OF   (hash md5:68e4beafe516f2dd8931cc1c686a3b7a)
Theorem hlt_EXPOSED_FACET_OF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_facet_of N t s = 1 -> hl_exposed_face_of N t s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2730 / OPEN_IN_RELATIVE_FRONTIER_INTERIOR_FACET   (hash md5:9d5c056d6541f1e78f4aef5e48a6b7ae)
Theorem hlt_OPEN_IN_RELATIVE_FRONTIER_INTERIOR_FACET : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_facet_of N f s = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_relative_frontier N s)) (hl_relative_interior N f) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2779 / CLOSED_EXTREME_POINTS_2D   (hash md5:906759a02bef85b952abfa0398288f82)
Theorem hlt_CLOSED_EXTREME_POINTS_2D : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_convex N s = 1 /\ hl_int_le (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) -> hl_closed N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5620 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5620 (hl_extreme_point_of N x s) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2847 / edge_of   (hash md5:461e35a3376a95873e10849bd204b8d6)
Theorem hlt_edge_of_thm : forall A:set, A <> Empty -> forall s e1 :e 2 :^: hl_ty_cart R A, hl_edge_of A e1 s = 1 <-> hl_face_of A e1 s = 1 /\ hl_aff_dim A e1 = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/polytope.ml:2850 / EDGE_OF_TRANSLATION_EQ   (hash md5:77857012f0040d69e4718100531294e4)
Theorem hlt_EDGE_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall f s :e 2 :^: hl_ty_cart R N, hl_edge_of N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) f) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_edge_of N f s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2857 / EDGE_OF_LINEAR_IMAGE   (hash md5:45b4d1f61220c0a84901d1bd38419769)
Theorem hlt_EDGE_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_edge_of N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_edge_of M c s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:2865 / EDGE_OF_IMP_SUBSET   (hash md5:82a0d39c2adec69638e933d04bfaa114)
Theorem hlt_EDGE_OF_IMP_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_edge_of A s t = 1 -> hl_SUBSET (hl_ty_cart R A) s t = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2873 / EXTREME_POINT_EXISTS_CONVEX   (hash md5:abbb45f95c51b4620e141b2c92b933e9)
Theorem hlt_EXTREME_POINT_EXISTS_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_convex N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N)) -> exists x :e hl_ty_cart R N, hl_extreme_point_of N x s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2908 / KREIN_MILMAN   (hash md5:edf8f6bce5a1ba62b8533cb96486d941)
Theorem hlt_KREIN_MILMAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_compact N s = 1 -> s = hl_closure N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5627 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5627 (hl_extreme_point_of N x s) x = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/polytope.ml:2968 / KREIN_MILMAN_MINKOWSKI   (hash md5:757e1f475e0bc09230b71db4c28ccc4b)
Theorem hlt_KREIN_MILMAN_MINKOWSKI : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_compact N s = 1 -> s = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5633 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5633 (hl_extreme_point_of N x s) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:3037 / KREIN_MILMAN_EQ   (hash md5:e0e3a974bc1a72dcf1e61f1a3990619d)
Theorem hlt_KREIN_MILMAN_EQ : forall N:set, N <> Empty -> forall s e1 :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_convex N s = 1 -> (hl_hull (hl_ty_cart R N) (hl_convex N) e1 = s <-> hl_SUBSET (hl_ty_cart R N) e1 s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5635 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5635 (hl_extreme_point_of N x s) x = 1 then 1 else 0)) e1 = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:3056 / KREIN_MILMAN_POLYTOPE   (hash md5:55c1f3fa9cd75588548dcb7a315363b8)
Theorem hlt_KREIN_MILMAN_POLYTOPE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) s = 1 -> hl_hull (hl_ty_cart R A) (hl_convex A) s = hl_hull (hl_ty_cart R A) (hl_convex A) (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5636 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5636 (hl_extreme_point_of A x (hl_hull (hl_ty_cart R A) (hl_convex A) s)) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:3063 / EXTREME_POINTS_OF_CONVEX_HULL_EQ   (hash md5:05358aac9c81dd1998b12a280feb3a87)
Theorem hlt_EXTREME_POINTS_OF_CONVEX_HULL_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (forall t :e 2 :^: hl_ty_cart R N, hl_PSUBSET (hl_ty_cart R N) t s = 1 -> ~ hl_hull (hl_ty_cart R N) (hl_convex N) t = hl_hull (hl_ty_cart R N) (hl_convex N) s) -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5638 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5638 (hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_convex N) s)) x = 1 then 1 else 0) = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:3076 / EXTREME_POINT_OF_CONVEX_HULL_EQ   (hash md5:fe8852b283ac73b4be37a5ac3acbe9e6)
Theorem hlt_EXTREME_POINT_OF_CONVEX_HULL_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_compact N s = 1 /\ (forall t :e 2 :^: hl_ty_cart R N, hl_PSUBSET (hl_ty_cart R N) t s = 1 -> ~ hl_hull (hl_ty_cart R N) (hl_convex N) t = hl_hull (hl_ty_cart R N) (hl_convex N) s) -> (hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 <-> hl_IN (hl_ty_cart R N) x s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:3085 / EXTREME_POINT_OF_CONVEX_HULL_CONVEX_INDEPENDENT   (hash md5:f7c520e771ddbb584ea90e2a642eaa6d)
Theorem hlt_EXTREME_POINT_OF_CONVEX_HULL_CONVEX_INDEPENDENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_compact N s = 1 /\ (forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 -> ~ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DELETE (hl_ty_cart R N) s a)) = 1) -> (hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 <-> hl_IN (hl_ty_cart R N) x s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:3102 / EXTREME_POINT_OF_CONVEX_HULL_AFFINE_INDEPENDENT   (hash md5:1e575603464de1a7de97eac2fd36b491)
Theorem hlt_EXTREME_POINT_OF_CONVEX_HULL_AFFINE_INDEPENDENT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, ~ hl_affine_dependent A s = 1 -> (hl_extreme_point_of A x (hl_hull (hl_ty_cart R A) (hl_convex A) s) = 1 <-> hl_IN (hl_ty_cart R A) x s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:3111 / EXTREME_POINTS_OF_CONVEX_HULL_AFFINE_INDEPENDENT   (hash md5:ea29392c9d54f7c803f83009efaa9266)
Theorem hlt_EXTREME_POINTS_OF_CONVEX_HULL_AFFINE_INDEPENDENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5639 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5639 (hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_convex N) s)) x = 1 then 1 else 0) = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:3117 / SIMPLEX_VERTICES_UNIQUE   (hash md5:478fb27877edb88a437183d423114dcc)
Theorem hlt_SIMPLEX_VERTICES_UNIQUE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ (~ hl_affine_dependent N t = 1 /\ hl_hull (hl_ty_cart R N) (hl_convex N) s = hl_hull (hl_ty_cart R N) (hl_convex N) t) -> s = t.
Admitted.

// HOL Light: Multivariate/polytope.ml:3125 / EXTREME_POINT_OF_CONVEX_HULL_2   (hash md5:5c20814e85d9438f952fcd1a5a6c8384)
Theorem hlt_EXTREME_POINT_OF_CONVEX_HULL_2 : forall A:set, A <> Empty -> forall a b x :e hl_ty_cart R A, hl_extreme_point_of A x (hl_hull (hl_ty_cart R A) (hl_convex A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A))))) = 1 <-> x = a \/ x = b.
Admitted.

// HOL Light: Multivariate/polytope.ml:3131 / EXTREME_POINT_OF_SEGMENT   (hash md5:a92c5162a2f2ab99e07a77c24bd495ca)
Theorem hlt_EXTREME_POINT_OF_SEGMENT : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, hl_extreme_point_of N x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> x = a \/ x = b.
Admitted.

// HOL Light: Multivariate/polytope.ml:3135 / FACE_OF_CONVEX_HULL_SUBSET   (hash md5:0592727d548efc6b715d797dbb9f1840)
Theorem hlt_FACE_OF_CONVEX_HULL_SUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_face_of N t (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> exists s' :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s' s = 1 /\ t = hl_hull (hl_ty_cart R N) (hl_convex N) s'.
Admitted.

// HOL Light: Multivariate/polytope.ml:3148 / FACE_OF_CONVEX_HULL_AFFINE_INDEPENDENT   (hash md5:8d6559c88034311a07462867fa19638d)
Theorem hlt_FACE_OF_CONVEX_HULL_AFFINE_INDEPENDENT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> (hl_face_of N t (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 <-> exists c :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) c s = 1 /\ t = hl_hull (hl_ty_cart R N) (hl_convex N) c).
Admitted.

// HOL Light: Multivariate/polytope.ml:3166 / FACET_OF_CONVEX_HULL_AFFINE_INDEPENDENT   (hash md5:12348c7afdcc1381dc21dc2e1d98ea31)
Theorem hlt_FACET_OF_CONVEX_HULL_AFFINE_INDEPENDENT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> (hl_facet_of N t (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 <-> ~ t = hl_EMPTY (hl_ty_cart R N) /\ exists u :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) u s = 1 /\ t = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DELETE (hl_ty_cart R N) s u)).
Admitted.

// HOL Light: Multivariate/polytope.ml:3211 / FACET_OF_CONVEX_HULL_AFFINE_INDEPENDENT_ALT   (hash md5:1fdceee2def8660442cd313b11ebad87)
Theorem hlt_FACET_OF_CONVEX_HULL_AFFINE_INDEPENDENT_ALT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> (hl_facet_of N t (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 <-> hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_CARD (hl_ty_cart R N) s) = 1 /\ exists u :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) u s = 1 /\ t = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DELETE (hl_ty_cart R N) s u)).
Admitted.

// HOL Light: Multivariate/polytope.ml:3232 / SEGMENT_FACE_OF   (hash md5:0c5938af8039a0797d1ab132d74277e3)
Theorem hlt_SEGMENT_FACE_OF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_face_of N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1 -> hl_extreme_point_of N a s = 1 /\ hl_extreme_point_of N b s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:3239 / SEGMENT_EDGE_OF   (hash md5:0d5947fdc6a5e81bdfd760aa2e4d1f78)
Theorem hlt_SEGMENT_EDGE_OF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_edge_of N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1 -> ~ a = b /\ (hl_extreme_point_of N a s = 1 /\ hl_extreme_point_of N b s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:3248 / EXTREME_POINT_OF_CONVEX_HULL_INSERT_EQ   (hash md5:eb7f499c9e10d75b3e9bcc8eca9ea934)
Theorem hlt_EXTREME_POINT_OF_CONVEX_HULL_INSERT_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a x :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> (hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s)) = 1 <-> x = a \/ hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:3286 / FACE_OF_CONVEX_HULL_INSERT_EQ   (hash md5:fadb19765016a11ed143ecc4cfc25bc6)
Theorem hlt_FACE_OF_CONVEX_HULL_INSERT_EQ : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> (hl_face_of N f (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s)) = 1 <-> hl_face_of N f (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 \/ exists f' :e 2 :^: hl_ty_cart R N, hl_face_of N f' (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ f = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a f')).
Admitted.

// HOL Light: Multivariate/polytope.ml:3470 / CONVEX_HULL_REDUNDANT_SUBSET_GEN   (hash md5:c3b1a5af128575681fbd19a64367274d)
Theorem hlt_CONVEX_HULL_REDUNDANT_SUBSET_GEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_DISJOINT (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5644 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5644 (hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_convex N) s)) x = 1 then 1 else 0)) = 1) -> hl_hull (hl_ty_cart R N) (hl_convex N) s = hl_hull (hl_ty_cart R N) (hl_convex N) t.
Admitted.

// HOL Light: Multivariate/polytope.ml:3491 / CONVEX_HULL_REDUNDANT_SUBSET   (hash md5:04f2ea17da035af10605768b011264e2)
Theorem hlt_CONVEX_HULL_REDUNDANT_SUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1) -> hl_hull (hl_ty_cart R N) (hl_convex N) s = hl_hull (hl_ty_cart R N) (hl_convex N) t.
Admitted.

// HOL Light: Multivariate/polytope.ml:3501 / CONVEX_HULL_REDUNDANT_SUBSET_REV   (hash md5:ea4d419cd98e180928f9009352a93706)
Theorem hlt_CONVEX_HULL_REDUNDANT_SUBSET_REV : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) s = hl_hull (hl_ty_cart R N) (hl_convex N) t -> hl_DISJOINT (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5645 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5645 (hl_extreme_point_of N x (hl_hull (hl_ty_cart R N) (hl_convex N) s)) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:3509 / CONVEX_HULL_INSERT_REDUNDANT_POINT   (hash md5:2ab2d73f2fba173f2edb9967c4adc575)
Theorem hlt_CONVEX_HULL_INSERT_REDUNDANT_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b c :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) c s)) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) c s)) = 1 /\ hl_IN (hl_ty_cart R N) c (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1) -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) c s) = hl_hull (hl_ty_cart R N) (hl_convex N) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:3559 / CONVEX_HULL_REDUNDANT_POINT   (hash md5:92cdceff8b44b3a190b039d4c6948447)
Theorem hlt_CONVEX_HULL_REDUNDANT_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DELETE (hl_ty_cart R N) s a) = hl_hull (hl_ty_cart R N) (hl_convex N) s <-> ~ hl_extreme_point_of N a (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:3575 / HAUSDIST_FRONTIERS_CONVEX   (hash md5:28357a4acdb871a65b19c74ab8ba9b52)
Theorem hlt_HAUSDIST_FRONTIERS_CONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (hl_bounded N s = 1 /\ hl_bounded N t = 1)) -> hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_frontier N s) (hl_frontier N t)) = hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t).
Admitted.

// HOL Light: Multivariate/polytope.ml:3697 / HAUSDIST_STILL_OUTSIDE   (hash md5:4b1d5b669c60a6a9269776bb0795640a)
Theorem hlt_HAUSDIST_STILL_OUTSIDE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_bounded N t = 1 /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) (hl_setdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))) s)) = 1) -> ~ hl_IN (hl_ty_cart R N) x t = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:3714 / HAUSDIST_STILL_INSIDE   (hash md5:236a915c8e4babee756915b25a4c8f3f)
Theorem hlt_HAUSDIST_STILL_INSIDE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_bounded N t = 1 /\ (hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) (hl_setdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s))) = 1)))) -> hl_IN (hl_ty_cart R N) x t = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:3730 / HAUSDIST_STILL_INSIDE_INTERIOR   (hash md5:89d6ad06ffe67d1770955edf0e8ad17f)
Theorem hlt_HAUSDIST_STILL_INSIDE_INTERIOR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_bounded N t = 1 /\ (hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) (hl_setdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s))) = 1)))) -> hl_IN (hl_ty_cart R N) x (hl_interior N t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:3746 / HAUSDIST_STILL_NONEMPTY_INTERIOR   (hash md5:defa71bb036b9fc4d47b8ca9dc926926)
Theorem hlt_HAUSDIST_STILL_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_convex N s = 1 /\ ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N)) -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall s' :e 2 :^: hl_ty_cart R N, hl_bounded N s' = 1 /\ (hl_convex N s' = 1 /\ (~ s' = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s s')) e1 = 1)) -> ~ hl_interior N s' = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/polytope.ml:3771 / HAUSDIST_STILL_SAME_PLACE_STRONG   (hash md5:e379a43b1f1479c969e7b7be8c0cb782)
Theorem hlt_HAUSDIST_STILL_SAME_PLACE_STRONG : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_bounded N t = 1 /\ (hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) (hl_setdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))) (hl_frontier N s))) = 1)))) -> ~ hl_IN (hl_ty_cart R N) x (hl_frontier N s) = 1 /\ (~ hl_IN (hl_ty_cart R N) x (hl_frontier N t) = 1 /\ (hl_IN (hl_ty_cart R N) x t = 1 <-> hl_IN (hl_ty_cart R N) x s = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:3820 / HAUSDIST_STILL_SAME_PLACE   (hash md5:e45259e37f904ccaea6251105e7b0276)
Theorem hlt_HAUSDIST_STILL_SAME_PLACE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_bounded N t = 1 /\ (hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) (hl_setdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))) (hl_frontier N s))) = 1)))) -> (hl_IN (hl_ty_cart R N) x t = 1 <-> hl_IN (hl_ty_cart R N) x s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:3829 / HAUSDIST_STILL_SAME_PLACE_CONIC_HULL_STRONG   (hash md5:c02016e7c3e84d36f0c39d8917516d7c)
Theorem hlt_HAUSDIST_STILL_SAME_PLACE_CONIC_HULL_STRONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_closure N s) = 1 /\ (~ x = hl_vec N (hl_NUMERAL hl_zero) /\ ~ hl_IN (hl_ty_cart R N) x (hl_frontier N (hl_hull (hl_ty_cart R N) (hl_conic N) s)) = 1)))) -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall s' :e 2 :^: hl_ty_cart R N, hl_convex N s' = 1 /\ (hl_bounded N s' = 1 /\ (~ s' = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s s')) e1 = 1)) -> ~ hl_IN (hl_ty_cart R N) x (hl_frontier N (hl_hull (hl_ty_cart R N) (hl_conic N) s')) = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_conic N) s') = 1 <-> hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:3988 / HAUSDIST_STILL_SAME_PLACE_CONIC_HULL   (hash md5:e1ee9bd789b9f6ad20ea787e26b43eb0)
Theorem hlt_HAUSDIST_STILL_SAME_PLACE_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_closure N s) = 1 /\ ~ hl_IN (hl_ty_cart R N) x (hl_frontier N (hl_hull (hl_ty_cart R N) (hl_conic N) s)) = 1))) -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall s' :e 2 :^: hl_ty_cart R N, hl_convex N s' = 1 /\ (hl_bounded N s' = 1 /\ (~ s' = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s s')) e1 = 1)) -> (hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_conic N) s') = 1 <-> hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:4006 / CONVEX_SYMDIFF_CLOSE_TO_FRONTIER   (hash md5:1913f6851aabc05c8dfdb37c5bb33f74)
Theorem hlt_CONVEX_SYMDIFF_CLOSE_TO_FRONTIER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_bounded N s = 1 /\ (hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_bounded N t = 1 /\ (hl_convex N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) e1 = 1))))) -> hl_SUBSET (hl_ty_cart R N) (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_DIFF (hl_ty_cart R N) t s)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5648 :e hl_ty_cart R N => if exists u v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5648 (if hl_IN (hl_ty_cart R N) u (hl_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) v (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) e1)) = 1 then 1 else 0) (hl_vector_add N u v) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4037 / polytope   (hash md5:dda741857007051970fbcf746659a86d)
Theorem hlt_polytope_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_polytope A s = 1 <-> exists v :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) v = 1 /\ s = hl_hull (hl_ty_cart R A) (hl_convex A) v.
Admitted.

// HOL Light: Multivariate/polytope.ml:4040 / POLYTOPE_TRANSLATION_EQ   (hash md5:f7a1278cc63675348329e02bff24f3bc)
Theorem hlt_POLYTOPE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_polytope N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_polytope N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4046 / POLYTOPE_LINEAR_IMAGE   (hash md5:be24b7675b49bfc4b162f4e8a4baafba)
Theorem hlt_POLYTOPE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall p :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_polytope M p = 1 -> hl_polytope N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f p) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4055 / POLYTOPE_LINEAR_IMAGE_EQ   (hash md5:223eecf138208702702947e540169b40)
Theorem hlt_POLYTOPE_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y)) -> (hl_polytope N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_polytope M s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:4067 / POLYTOPE_EMPTY   (hash md5:bb205a18041b2621ee2dd0ef13ed6961)
Theorem hlt_POLYTOPE_EMPTY : forall A:set, A <> Empty -> hl_polytope A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4071 / POLYTOPE_NEGATIONS   (hash md5:cbf05384f727cef5a04ccbd7dcbac2ee)
Theorem hlt_POLYTOPE_NEGATIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 -> hl_polytope N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4075 / POLYTOPE_CONVEX_HULL   (hash md5:e68eec839e7e11548cfaf825355bc3c5)
Theorem hlt_POLYTOPE_CONVEX_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) s = 1 -> hl_polytope A (hl_hull (hl_ty_cart R A) (hl_convex A) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4079 / POLYTOPE_SEGMENT   (hash md5:7b6c136fcaa521e61b1d752912a213fc)
Theorem hlt_POLYTOPE_SEGMENT : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_polytope N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4085 / POLYTOPE_PCROSS   (hash md5:492caa99007de24bf11cb6a282f5dd4c)
Theorem hlt_POLYTOPE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_polytope M s = 1 /\ hl_polytope N t = 1 -> hl_polytope (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4091 / POLYTOPE_PCROSS_EQ   (hash md5:2c81005fa42f64579048296a941a4fe3)
Theorem hlt_POLYTOPE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_polytope (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_polytope M s = 1 /\ hl_polytope N t = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:4114 / FACE_OF_POLYTOPE_POLYTOPE   (hash md5:cd7e46d4049247db7c4a8bd11bf8a36b)
Theorem hlt_FACE_OF_POLYTOPE_POLYTOPE : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 /\ hl_face_of N f s = 1 -> hl_polytope N f = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4119 / FINITE_POLYTOPE_FACES   (hash md5:2179385078562e8df0147819a2d2f6fa)
Theorem hlt_FINITE_POLYTOPE_FACES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5650 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5650 (hl_face_of N f s) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4130 / FINITE_POLYTOPE_FACETS   (hash md5:221dd98b25aaa6f286cad080af067b3e)
Theorem hlt_FINITE_POLYTOPE_FACETS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5654 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5654 (hl_facet_of N f s) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4136 / POLYTOPE_INTERVAL   (hash md5:af4a6e2f2dbb140c6c47cc793aeb1e49)
Theorem hlt_POLYTOPE_INTERVAL : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_polytope A (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4140 / POLYTOPE_SING   (hash md5:376454c59ee0014980f9ff9bada8b6ff)
Theorem hlt_POLYTOPE_SING : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_polytope A (hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4144 / POLYTOPE_SCALING   (hash md5:7b71d4bab1e2ec9318db5d0086e4ad87)
Theorem hlt_POLYTOPE_SCALING : forall N:set, N <> Empty -> forall c :e R, forall s :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 -> hl_polytope N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4151 / POLYTOPE_SCALING_EQ   (hash md5:95d1701bb3ce1aad76a22ce56c58f535)
Theorem hlt_POLYTOPE_SCALING_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_polytope N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_polytope N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4162 / POLYTOPE_AFFINITY_EQ   (hash md5:fd46973f16b0de3173a706fdbac96f18)
Theorem hlt_POLYTOPE_AFFINITY_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_polytope N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1 <-> m = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_polytope N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4168 / POLYTOPE_AFFINITY   (hash md5:54b221301f3c733d932cfc7aa1a4100d)
Theorem hlt_POLYTOPE_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_polytope N s = 1 -> hl_polytope N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4172 / POLYTOPE_SUMS   (hash md5:c6965b46abf0b08e9d82c8e5387d9f29)
Theorem hlt_POLYTOPE_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 /\ hl_polytope N t = 1 -> hl_polytope N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5656 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5656 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4181 / POLYTOPE_IMP_COMPACT   (hash md5:1b9ab7fbc1f63c58c3cb366fedf156b7)
Theorem hlt_POLYTOPE_IMP_COMPACT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_polytope A s = 1 -> hl_compact A s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4186 / POLYTOPE_IMP_CONVEX   (hash md5:ee0993558e6798502bfa113a538b561f)
Theorem hlt_POLYTOPE_IMP_CONVEX : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_polytope A s = 1 -> hl_convex A s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4190 / POLYTOPE_IMP_CLOSED   (hash md5:f154612d47f919d743ad43ad0a56b3af)
Theorem hlt_POLYTOPE_IMP_CLOSED : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_polytope A s = 1 -> hl_closed A s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4194 / POLYTOPE_IMP_BOUNDED   (hash md5:44b8de278c1a669c7537592c51a8f572)
Theorem hlt_POLYTOPE_IMP_BOUNDED : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_polytope A s = 1 -> hl_bounded A s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4198 / POLYTOPE_1   (hash md5:57b2fffeee9cb2a4134f8fcb2617248f)
Theorem hlt_POLYTOPE_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_polytope 1 s = 1 <-> exists a b :e hl_ty_cart R 1, s = hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/polytope.ml:4203 / POLYTOPE_AFF_DIM_1   (hash md5:a7273326efe03d397cde16d90445c304)
Theorem hlt_POLYTOPE_AFF_DIM_1 : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_polytope N p = 1 /\ hl_aff_dim N p = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> exists a b :e hl_ty_cart R N, ~ a = b /\ p = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/polytope.ml:4220 / FACE_OF_POLYTOPE_INSERT_EQ   (hash md5:58c26a7291b1606cd340dd069dc8cfe9)
Theorem hlt_FACE_OF_POLYTOPE_INSERT_EQ : forall N:set, N <> Empty -> forall f s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_polytope N s = 1 /\ ~ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> (hl_face_of N f (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s)) = 1 <-> hl_face_of N f s = 1 \/ exists f' :e 2 :^: hl_ty_cart R N, hl_face_of N f' s = 1 /\ f = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a f')).
Admitted.

// HOL Light: Multivariate/polytope.ml:4240 / CONVEX_INNER_APPROXIMATION   (hash md5:ec6601ca83200d2a9060a59dcb644654)
Theorem hlt_CONVEX_INNER_APPROXIMATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_bounded N s = 1 /\ (hl_convex N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists k :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) k = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) k) s = 1 /\ (hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) k) s)) e1 = 1 /\ (k = hl_EMPTY (hl_ty_cart R N) -> s = hl_EMPTY (hl_ty_cart R N)))).
Admitted.

// HOL Light: Multivariate/polytope.ml:4283 / CONVEX_OUTER_APPROXIMATION   (hash md5:bc9b3e688dd8b22f949aa36fd875c8e6)
Theorem hlt_CONVEX_OUTER_APPROXIMATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_bounded N s = 1 /\ (hl_convex N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists k :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) k = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_convex N) k) = 1 /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) k) s)) e1 = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:4360 / CONVEX_INNER_POLYTOPE   (hash md5:151655099cce8e9cba59b3fd8ce65412)
Theorem hlt_CONVEX_INNER_POLYTOPE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_bounded N s = 1 /\ (hl_convex N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists p :e 2 :^: hl_ty_cart R N, hl_polytope N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) p s = 1 /\ (hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) p s)) e1 = 1 /\ (p = hl_EMPTY (hl_ty_cart R N) -> s = hl_EMPTY (hl_ty_cart R N)))).
Admitted.

// HOL Light: Multivariate/polytope.ml:4371 / CONVEX_OUTER_POLYTOPE   (hash md5:10ac2c1445242c7d0ee8d456d60b62c2)
Theorem hlt_CONVEX_OUTER_POLYTOPE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_bounded N s = 1 /\ (hl_convex N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists p :e 2 :^: hl_ty_cart R N, hl_polytope N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) p s)) e1 = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:4385 / polyhedron   (hash md5:732e384685e03b2da0bbab4207095e08)
Theorem hlt_polyhedron_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_polyhedron A s = 1 <-> exists f :e 2 :^: (2 :^: hl_ty_cart R A), hl_FINITE (2 :^: hl_ty_cart R A) f = 1 /\ (s = hl_INTERS (hl_ty_cart R A) f /\ forall h :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) h f = 1 -> exists a :e hl_ty_cart R A, exists b :e R, ~ a = hl_vec A (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5663 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5663 (hl_real_le (hl_dot A a x) b) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4391 / POLYHEDRON_INTER   (hash md5:2048ebc28215c54dda8de6925e5b92c0)
Theorem hlt_POLYHEDRON_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ hl_polyhedron N t = 1 -> hl_polyhedron N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4403 / POLYHEDRON_UNIV   (hash md5:bbf684a0e55fc7b45c01bba90d5496c7)
Theorem hlt_POLYHEDRON_UNIV : forall N:set, N <> Empty -> hl_polyhedron N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4408 / POLYHEDRON_POSITIVE_ORTHANT   (hash md5:45b8bcba9ecee94a4d638dd2a7383512)
Theorem hlt_POLYHEDRON_POSITIVE_ORTHANT : forall N:set, N <> Empty -> hl_polyhedron N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5665 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5665 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4420 / POLYHEDRON_INTERS   (hash md5:18c926ce50e582c874a21b22761633a7)
Theorem hlt_POLYHEDRON_INTERS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_polyhedron N s = 1) -> hl_polyhedron N (hl_INTERS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4427 / POLYHEDRON_EMPTY   (hash md5:5db806bec4fc8e7752a4b23183b26bfb)
Theorem hlt_POLYHEDRON_EMPTY : forall N:set, N <> Empty -> hl_polyhedron N (hl_EMPTY (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4441 / POLYHEDRON_HALFSPACE_LE   (hash md5:1e94a9fcc2d41a73843a30b21ac63dd4)
Theorem hlt_POLYHEDRON_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_polyhedron N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5670 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5670 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4450 / POLYHEDRON_HALFSPACE_GE   (hash md5:bc0b71a71270841e88676ca06b18e6ed)
Theorem hlt_POLYHEDRON_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_polyhedron N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5671 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5671 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4455 / POLYHEDRON_HYPERPLANE   (hash md5:2920aa2f7380dfc6569ed2a2f0b3747f)
Theorem hlt_POLYHEDRON_HYPERPLANE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_polyhedron N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5675 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5675 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4462 / AFFINE_IMP_POLYHEDRON   (hash md5:bcfa24b5c9a0008c38c51153bc03c2b7)
Theorem hlt_AFFINE_IMP_POLYHEDRON : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 -> hl_polyhedron N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4474 / POLYHEDRON_IMP_CLOSED   (hash md5:0b72f27106bc8ea9059cba055d2c78d6)
Theorem hlt_POLYHEDRON_IMP_CLOSED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_closed N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4484 / POLYHEDRON_IMP_CONVEX   (hash md5:5a400da03b50703490d1c90aef73cdb6)
Theorem hlt_POLYHEDRON_IMP_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_convex N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4494 / POLYHEDRON_AFFINE_HULL   (hash md5:a94c4febc3873ef29082003f45fd199a)
Theorem hlt_POLYHEDRON_AFFINE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_polyhedron A (hl_hull (hl_ty_cart R A) (hl_affine A) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:4502 / POLYHEDRON_INTER_AFFINE   (hash md5:294403d9de3c2585002dc6093550b0f7)
Theorem hlt_POLYHEDRON_INTER_AFFINE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 <-> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (s = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) /\ forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5676 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5676 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4519 / POLYHEDRON_INTER_AFFINE_PARALLEL   (hash md5:0d533c6375de977e9fc85bf646305657)
Theorem hlt_POLYHEDRON_INTER_AFFINE_PARALLEL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 <-> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (s = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) /\ forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5680 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5680 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N x a) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4596 / POLYHEDRON_INTER_AFFINE_PARALLEL_MINIMAL   (hash md5:01dc3e3b069f31cd6df2773314e589fa)
Theorem hlt_POLYHEDRON_INTER_AFFINE_PARALLEL_MINIMAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 <-> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (s = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) /\ ((forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5681 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5681 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N x a) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1)) /\ forall f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_PSUBSET (2 :^: hl_ty_cart R N) f' f = 1 -> hl_PSUBSET (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f')) = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4628 / POLYHEDRON_INTER_AFFINE_MINIMAL   (hash md5:e463d0eaee893516f2411d0536eee565)
Theorem hlt_POLYHEDRON_INTER_AFFINE_MINIMAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 <-> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (s = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) /\ ((forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5682 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5682 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) /\ forall f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_PSUBSET (2 :^: hl_ty_cart R N) f' f = 1 -> hl_PSUBSET (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f')) = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4640 / RELATIVE_INTERIOR_POLYHEDRON_EXPLICIT   (hash md5:8aecd224b5ef78a82788fc1f34fd5ab0)
Theorem hlt_RELATIVE_INTERIOR_POLYHEDRON_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall a :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), forall b :e R :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (s = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) /\ ((forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> ~ a h = hl_vec N (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5684 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5684 (hl_real_le (hl_dot N (a h) x) (b h)) x = 1 then 1 else 0)) /\ (forall f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_PSUBSET (2 :^: hl_ty_cart R N) f' f = 1 -> hl_PSUBSET (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f')) = 1))) -> hl_relative_interior N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5685 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5685 (if hl_IN (hl_ty_cart R N) x s = 1 /\ forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> hl_real_lt (hl_dot N (a h) x) (b h) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/polytope.ml:4718 / FACET_OF_POLYHEDRON_EXPLICIT   (hash md5:7e41c475b5692aacb52f7034527abed2)
Theorem hlt_FACET_OF_POLYHEDRON_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall a :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), forall b :e R :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (s = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) /\ ((forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> ~ a h = hl_vec N (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5693 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5693 (hl_real_le (hl_dot N (a h) x) (b h)) x = 1 then 1 else 0)) /\ (forall f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_PSUBSET (2 :^: hl_ty_cart R N) f' f = 1 -> hl_PSUBSET (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f')) = 1))) -> forall c :e 2 :^: hl_ty_cart R N, hl_facet_of N c s = 1 <-> exists h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 /\ c = hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5694 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5694 (if hl_dot N (a h) x = b h then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4986 / FACE_OF_POLYHEDRON_SUBSET_EXPLICIT   (hash md5:c5df818bebacd78ac508ee799a672905)
Theorem hlt_FACE_OF_POLYHEDRON_SUBSET_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall a :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), forall b :e R :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (s = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) /\ ((forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> ~ a h = hl_vec N (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5696 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5696 (hl_real_le (hl_dot N (a h) x) (b h)) x = 1 then 1 else 0)) /\ (forall f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_PSUBSET (2 :^: hl_ty_cart R N) f' f = 1 -> hl_PSUBSET (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f')) = 1))) -> forall c :e 2 :^: hl_ty_cart R N, hl_face_of N c s = 1 /\ (~ c = hl_EMPTY (hl_ty_cart R N) /\ ~ c = s) -> exists h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 /\ hl_SUBSET (hl_ty_cart R N) c (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5697 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5697 (if hl_dot N (a h) x = b h then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5065 / FACE_OF_POLYHEDRON_EXPLICIT   (hash md5:f743b0152a3f1e586d590bf6aecb8d2e)
Theorem hlt_FACE_OF_POLYHEDRON_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall a :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), forall b :e R :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (s = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) /\ ((forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> ~ a h = hl_vec N (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5715 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5715 (hl_real_le (hl_dot N (a h) x) (b h)) x = 1 then 1 else 0)) /\ (forall f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_PSUBSET (2 :^: hl_ty_cart R N) f' f = 1 -> hl_PSUBSET (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f')) = 1))) -> forall c :e 2 :^: hl_ty_cart R N, hl_face_of N c s = 1 /\ (~ c = hl_EMPTY (hl_ty_cart R N) /\ ~ c = s) -> c = hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5720 :e 2 :^: hl_ty_cart R N => if exists h :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5720 (if hl_IN (2 :^: hl_ty_cart R N) h f = 1 /\ hl_SUBSET (hl_ty_cart R N) c (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5719 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5719 (if hl_dot N (a h) x = b h then 1 else 0) x = 1 then 1 else 0))) = 1 then 1 else 0) (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5718 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5718 (if hl_dot N (a h) x = b h then 1 else 0) x = 1 then 1 else 0))) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:5190 / FACET_OF_POLYHEDRON   (hash md5:d2a81201bf88a7c7bf75957ccf603840)
Theorem hlt_FACET_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ hl_facet_of N c s = 1 -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_SUBSET (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5721 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5721 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = 1 /\ c = hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5722 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5722 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/polytope.ml:5217 / FACE_OF_POLYHEDRON   (hash md5:fedd8ce571c2f38844ae8230080daca2)
Theorem hlt_FACE_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ (hl_face_of N c s = 1 /\ (~ c = hl_EMPTY (hl_ty_cart R N) /\ ~ c = s)) -> c = hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5723 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5723 (if hl_facet_of N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) c f = 1 then 1 else 0) f = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:5243 / FACE_OF_POLYHEDRON_SUBSET_FACET   (hash md5:4116c66997d9b536819eb1a868d910a4)
Theorem hlt_FACE_OF_POLYHEDRON_SUBSET_FACET : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ (hl_face_of N c s = 1 /\ (~ c = hl_EMPTY (hl_ty_cart R N) /\ ~ c = s)) -> exists f :e 2 :^: hl_ty_cart R N, hl_facet_of N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) c f = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5253 / FACE_OF_POLYHEDRON_FACE_OF_FACET   (hash md5:150fc8cd0b497519eee9858c5c528c30)
Theorem hlt_FACE_OF_POLYHEDRON_FACE_OF_FACET : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ (hl_face_of N c s = 1 /\ (~ c = hl_EMPTY (hl_ty_cart R N) /\ ~ c = s)) -> exists f :e 2 :^: hl_ty_cart R N, hl_face_of N c f = 1 /\ hl_facet_of N f s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5263 / EXPOSED_FACE_OF_POLYHEDRON   (hash md5:c87b5fd79557435d533c0ba15d8d7ff4)
Theorem hlt_EXPOSED_FACE_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> (hl_exposed_face_of N f s = 1 <-> hl_face_of N f s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:5278 / FACE_OF_POLYHEDRON_POLYHEDRON   (hash md5:c6b2663eacac2509fb68f2a0674b8268)
Theorem hlt_FACE_OF_POLYHEDRON_POLYHEDRON : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ hl_face_of N c s = 1 -> hl_polyhedron N c = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5304 / FINITE_POLYHEDRON_FACES   (hash md5:0bc57ce6302acf0bd46a53739c5415bc)
Theorem hlt_FINITE_POLYHEDRON_FACES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5740 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5740 (hl_face_of N f s) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5336 / FINITE_POLYHEDRON_EXPOSED_FACES   (hash md5:deb96937dfc9320458471c3f63d9f2ab)
Theorem hlt_FINITE_POLYHEDRON_EXPOSED_FACES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5741 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5741 (hl_exposed_face_of N f s) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5340 / FINITE_POLYHEDRON_EXTREME_POINTS   (hash md5:e059ecc70af35286170ff80eab957928)
Theorem hlt_FINITE_POLYHEDRON_EXTREME_POINTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_FINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5744 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5744 (hl_extreme_point_of N v s) v = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5353 / FINITE_POLYHEDRON_FACETS   (hash md5:367d5fd0f8ed1861b38518af21a8a5fa)
Theorem hlt_FINITE_POLYHEDRON_FACETS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5748 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5748 (hl_facet_of N f s) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5359 / RELATIVE_INTERIOR_OF_POLYHEDRON   (hash md5:785ccaeca3eef74aae73d925252457ee)
Theorem hlt_RELATIVE_INTERIOR_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_relative_interior N s = hl_DIFF (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5751 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5751 (hl_facet_of N f s) f = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/polytope.ml:5408 / RELATIVE_BOUNDARY_OF_POLYHEDRON   (hash md5:6116cd9bf7dd36689ca143549224d2ae)
Theorem hlt_RELATIVE_BOUNDARY_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_DIFF (hl_ty_cart R N) s (hl_relative_interior N s) = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5752 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5752 (hl_facet_of N f s) f = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:5417 / RELATIVE_FRONTIER_OF_POLYHEDRON   (hash md5:387c71e78e8be57b2d9c5386036b6c2f)
Theorem hlt_RELATIVE_FRONTIER_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_relative_frontier N s = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5753 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5753 (hl_facet_of N f s) f = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:5423 / RELATIVE_FRONTIER_OF_POLYHEDRON_ALT   (hash md5:7d172b0e32b08ed7f5433855a7716b4f)
Theorem hlt_RELATIVE_FRONTIER_OF_POLYHEDRON_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_relative_frontier N s = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5754 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5754 (if hl_face_of N f s = 1 /\ ~ f = s then 1 else 0) f = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:5430 / FACETS_OF_POLYHEDRON_EXPLICIT_DISTINCT   (hash md5:fe3a7b5b7b03fb52b28c5a99d28f226a)
Theorem hlt_FACETS_OF_POLYHEDRON_EXPLICIT_DISTINCT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall a :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), forall b :e R :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (s = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) /\ ((forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> ~ a h = hl_vec N (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5758 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5758 (hl_real_le (hl_dot N (a h) x) (b h)) x = 1 then 1 else 0)) /\ (forall f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_PSUBSET (2 :^: hl_ty_cart R N) f' f = 1 -> hl_PSUBSET (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f')) = 1))) -> forall h1 h2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h1 f = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) h2 f = 1 /\ hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5759 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5759 (if hl_dot N (a h1) x = b h1 then 1 else 0) x = 1 then 1 else 0)) = hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5760 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5760 (if hl_dot N (a h2) x = b h2 then 1 else 0) x = 1 then 1 else 0))) -> h1 = h2.
Admitted.

// HOL Light: Multivariate/polytope.ml:5515 / POLYHEDRON_MINIMAL_LEMMA   (hash md5:646174b19b494349ae908d13324f8aaa)
Theorem hlt_POLYHEDRON_MINIMAL_LEMMA : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) = s -> exists f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f' = 1 /\ (hl_SUBSET (2 :^: hl_ty_cart R N) f' f = 1 /\ (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f') = s /\ forall f'' :e 2 :^: (2 :^: hl_ty_cart R N), hl_PSUBSET (2 :^: hl_ty_cart R N) f'' f' = 1 -> hl_PSUBSET (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f'')) = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:5541 / POLYHEDRON   (hash md5:73ff105b46a049091739b78b0ca91ce9)
Theorem hlt_POLYHEDRON : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 <-> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f) = s /\ ((forall f' :e 2 :^: (2 :^: hl_ty_cart R N), hl_PSUBSET (2 :^: hl_ty_cart R N) f' f = 1 -> hl_PSUBSET (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_INTERS (hl_ty_cart R N) f')) = 1) /\ forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5761 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5761 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/polytope.ml:5570 / POLYHEDRON_EQ_FINITE_EXPOSED_FACES   (hash md5:c792f84a31f542bb5f35eedb11eb561f)
Theorem hlt_POLYHEDRON_EQ_FINITE_EXPOSED_FACES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 <-> hl_closed N s = 1 /\ (hl_convex N s = 1 /\ hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5774 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5774 (hl_exposed_face_of N f s) f = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:5702 / POLYHEDRON_EQ_FINITE_FACES   (hash md5:efc221aae71f44b4a7a760782cb1b4fd)
Theorem hlt_POLYHEDRON_EQ_FINITE_FACES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 <-> hl_closed N s = 1 /\ (hl_convex N s = 1 /\ hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5776 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5776 (hl_face_of N f s) f = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:5715 / POLYHEDRON_TRANSLATION_EQ   (hash md5:fd67fbc3beb8723e954c5041d1832249)
Theorem hlt_POLYHEDRON_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_polyhedron N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5732 / POLYHEDRON_LINEAR_IMAGE_EQ   (hash md5:e91f8080a7eea1e3e4e22cd08760a963)
Theorem hlt_POLYHEDRON_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y)) -> (hl_polyhedron N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_polyhedron M s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:5751 / POLYHEDRON_NEGATIONS   (hash md5:82a0cf3346f5473175b68e163c15e0f5)
Theorem hlt_POLYHEDRON_NEGATIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 -> hl_polyhedron N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5758 / POLYHEDRON_LINEAR_PREIMAGE   (hash md5:e830d0b44ac3be18aff0b424e94bd481)
Theorem hlt_POLYHEDRON_LINEAR_PREIMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_linear M N f = 1 /\ hl_polyhedron N s = 1 -> hl_polyhedron M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5781 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5781 (hl_IN (hl_ty_cart R N) (f x) s) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5780 / POLYTOPE_EQ_BOUNDED_POLYHEDRON   (hash md5:cef4591f91d5a8ded211422810739da8)
Theorem hlt_POLYTOPE_EQ_BOUNDED_POLYHEDRON : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 <-> hl_polyhedron N s = 1 /\ hl_bounded N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5792 / POLYTOPE_INTER   (hash md5:771757c1986073e93e541436bd331b41)
Theorem hlt_POLYTOPE_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_polytope A s = 1 /\ hl_polytope A t = 1 -> hl_polytope A (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5796 / POLYTOPE_INTER_POLYHEDRON   (hash md5:ac08094ea944d6400b62408facd1b188)
Theorem hlt_POLYTOPE_INTER_POLYHEDRON : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 /\ hl_polyhedron N t = 1 -> hl_polytope N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5801 / POLYHEDRON_INTER_POLYTOPE   (hash md5:4b27fc024693d2960c5cda9d88715805)
Theorem hlt_POLYHEDRON_INTER_POLYTOPE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ hl_polytope N t = 1 -> hl_polytope N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5806 / POLYTOPE_IMP_POLYHEDRON   (hash md5:cea8b884b182666bc870e5b6c6a13439)
Theorem hlt_POLYTOPE_IMP_POLYHEDRON : forall A:set, A <> Empty -> forall p :e 2 :^: hl_ty_cart R A, hl_polytope A p = 1 -> hl_polyhedron A p = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5810 / POLYTOPE_FACET_EXISTS   (hash md5:0b9aa105d1e0cadbfb750eea3fc202a5)
Theorem hlt_POLYTOPE_FACET_EXISTS : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_polytope N p = 1 /\ hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_aff_dim N p) = 1 -> exists f :e 2 :^: hl_ty_cart R N, hl_facet_of N f p = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5824 / POLYHEDRON_INTERVAL   (hash md5:153a443fad8c3f9b1bb2ee4484a5270a)
Theorem hlt_POLYHEDRON_INTERVAL : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_polyhedron A (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5828 / POLYHEDRON_CONVEX_HULL   (hash md5:67418e950f1174915a1743dc7fa4be35)
Theorem hlt_POLYHEDRON_CONVEX_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) s = 1 -> hl_polyhedron A (hl_hull (hl_ty_cart R A) (hl_convex A) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:5836 / POLYTOPE_UNION_CONVEX_HULL_FACETS   (hash md5:c87615eece8c7112d55a49ff9c9c30d8)
Theorem hlt_POLYTOPE_UNION_CONVEX_HULL_FACETS : forall N:set, N <> Empty -> forall s p :e 2 :^: hl_ty_cart R N, hl_polytope N p = 1 /\ (hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_aff_dim N p) = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) s p = 1)) -> p = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5785 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5785 (hl_facet_of N f p) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_UNION (hl_ty_cart R N) s f)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:5969 / POLYHEDRON_CONVEX_CONE_HULL   (hash md5:e1f31e3ea8aa52ba4f01dfd427acc7a4)
Theorem hlt_POLYHEDRON_CONVEX_CONE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_polyhedron N (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6090 / CLOSED_CONVEX_CONE_HULL   (hash md5:6723754eb9fb91fe2b01b7f8d297ea11)
Theorem hlt_CLOSED_CONVEX_CONE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_closed N (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6094 / POLYHEDRON_CONVEX_CONE_HULL_POLYTOPE   (hash md5:dd8ca655e99d1e48c73b22c2d11cfbc7)
Theorem hlt_POLYHEDRON_CONVEX_CONE_HULL_POLYTOPE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 -> hl_polyhedron N (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6106 / POLYHEDRON_CONIC_HULL_POLYTOPE   (hash md5:83688105a64ea229eb07625377bf5219)
Theorem hlt_POLYHEDRON_CONIC_HULL_POLYTOPE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 -> hl_polyhedron N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6115 / CLOSED_CONIC_HULL_STRONG   (hash md5:d19b5442d6b521dfbe61bbf66d07f159)
Theorem hlt_CLOSED_CONIC_HULL_STRONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 \/ (hl_polytope N s = 1 \/ hl_compact N s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1) -> hl_closed N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6123 / CLOSED_CONVEX_CONE_HULL_STRONG   (hash md5:609640dc3f12dc22dbaf5cd9fb314213)
Theorem hlt_CLOSED_CONVEX_CONE_HULL_STRONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 \/ (hl_polytope N s = 1 \/ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1 \/ hl_compact N s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1)) -> hl_closed N (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6143 / FINITELY_GENERATED_CONIC_POLYHEDRON   (hash md5:caecc3490c4b44bb8346cf0c568f9ef2)
Theorem hlt_FINITELY_GENERATED_CONIC_POLYHEDRON : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ (hl_conic N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N)) -> exists c :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) c = 1 /\ s = hl_hull (hl_ty_cart R N) (hl_convex_cone N) c.
Admitted.

// HOL Light: Multivariate/polytope.ml:6197 / POLYHEDRON_POLYTOPE_SUMS   (hash md5:3bbf2d80d6bee1185e737e4337ac9286)
Theorem hlt_POLYHEDRON_POLYTOPE_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ hl_polytope N t = 1 -> hl_polyhedron N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5794 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5794 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6219 / POLYHEDRON_AS_CONE_PLUS_CONV   (hash md5:72ea4a9c4f8c251da304b461590a0c14)
Theorem hlt_POLYHEDRON_AS_CONE_PLUS_CONV : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 <-> exists t u :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) t = 1 /\ (hl_FINITE (hl_ty_cart R N) u = 1 /\ s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5805 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5805 (if hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex_cone N) t) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex N) u) = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:6381 / POLYHEDRON_LINEAR_IMAGE   (hash md5:3f2a2bcf8d411332905aec55483e45ff)
Theorem hlt_POLYHEDRON_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_polyhedron M s = 1 -> hl_polyhedron N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6394 / POLYHEDRON_SUMS   (hash md5:90986f795f7f7319c989833fe7d09ac7)
Theorem hlt_POLYHEDRON_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ hl_polyhedron N t = 1 -> hl_polyhedron N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5811 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5811 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6414 / POLYHEDRAL_CONVEX_CONE   (hash md5:966e3db754a04b598f0f2bbc82d3195d)
Theorem hlt_POLYHEDRAL_CONVEX_CONE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ hl_convex_cone N s = 1 <-> exists k :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) k = 1 /\ s = hl_hull (hl_ty_cart R N) (hl_convex_cone N) k.
Admitted.

// HOL Light: Multivariate/polytope.ml:6478 / FARKAS_LEMMA   (hash md5:73102401dc9477f6b144b03df431b1c4)
Theorem hlt_FARKAS_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall b :e hl_ty_cart R M, (exists x :e hl_ty_cart R N, hl_matrix_vector_mul N M A x = b /\ forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N x i) = 1) <-> ~ exists y :e hl_ty_cart R M, hl_real_lt (hl_dot M b y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 /\ forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_matrix_vector_mul M N (hl_transp N M A) y) i) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:6536 / FARKAS_LEMMA_ALT   (hash md5:2b5c6d1a2d55b5e6b651c7a33d00e240)
Theorem hlt_FARKAS_LEMMA_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall b :e hl_ty_cart R M, (exists x :e hl_ty_cart R N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> hl_real_le (hl_vindex R M (hl_matrix_vector_mul N M A x) i) (hl_vindex R M b i) = 1) <-> ~ exists y :e hl_ty_cart R M, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R M y i) = 1) /\ (hl_vector_matrix_mul M N y A = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_lt (hl_dot M b y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:6604 / SEPARATING_HYPERPLANE_POLYHEDRA   (hash md5:913c972df30f5c1793f2086636a0701d)
Theorem hlt_SEPARATING_HYPERPLANE_POLYHEDRA : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_polyhedron N s = 1 /\ (hl_polyhedron N t = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_DISJOINT (hl_ty_cart R N) s t = 1))) -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_dot N a x) b = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_gt (hl_dot N a x) b = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:6671 / RELATIVE_BOUNDARY_OF_CONVEX_HULL   (hash md5:f3c2095310e4b2e1d3e4c2b5cb122d68)
Theorem hlt_RELATIVE_BOUNDARY_OF_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_DIFF (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) s) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5819 :e 2 :^: hl_ty_cart R N => if exists a :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5819 (hl_IN (hl_ty_cart R N) a s) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DELETE (hl_ty_cart R N) s a)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:6693 / FRONTIER_OF_CONVEX_HULL   (hash md5:71fa340508d1c256b150e46a59c9b07d)
Theorem hlt_FRONTIER_OF_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_HAS_SIZE (hl_ty_cart R N) s (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_frontier N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5820 :e 2 :^: hl_ty_cart R N => if exists a :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5820 (hl_IN (hl_ty_cart R N) a s) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DELETE (hl_ty_cart R N) s a)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:6765 / RELATIVE_BOUNDARY_OF_TRIANGLE   (hash md5:3aafb6d28dceead7ca92362e9ce5b6b7)
Theorem hlt_RELATIVE_BOUNDARY_OF_TRIANGLE : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, ~ hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 -> hl_DIFF (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N)))))) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))))) = hl_UNION (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_UNION (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b c) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c a) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:6780 / RELATIVE_FRONTIER_OF_TRIANGLE   (hash md5:2ba5fdb4495684906dfd274b1f6dabe2)
Theorem hlt_RELATIVE_FRONTIER_OF_TRIANGLE : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, ~ hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 -> hl_relative_frontier N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N)))))) = hl_UNION (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_UNION (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b c) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c a) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:6791 / FRONTIER_OF_TRIANGLE   (hash md5:bb97ded083c3da18cb637a4a38e66419)
Theorem hlt_FRONTIER_OF_TRIANGLE : forall a b c :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_frontier (idx_n (2 * dimindex 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_convex (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) = hl_UNION (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) (hl_UNION (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) b c) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) c a) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:6816 / INSIDE_OF_TRIANGLE   (hash md5:af44a3d2e379a124baed8e19c9507f2e)
Theorem hlt_INSIDE_OF_TRIANGLE : forall a b c :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_inside (idx_n (2 * dimindex 1)) (hl_UNION (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) (hl_UNION (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) b c) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) c a) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))))) = hl_interior (idx_n (2 * dimindex 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_convex (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1)))))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:6826 / INTERIOR_OF_TRIANGLE   (hash md5:ba3ec09e6ef2051030ed11d36eecd0f9)
Theorem hlt_INTERIOR_OF_TRIANGLE : forall a b c :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_interior (idx_n (2 * dimindex 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_convex (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) = hl_DIFF (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_convex (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) (hl_UNION (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) (hl_UNION (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) b c) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) c a) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:6840 / POLYHEDRON_RIDGE_TWO_FACETS   (hash md5:610238c0cc69d5931ef8de492e673a87)
Theorem hlt_POLYHEDRON_RIDGE_TWO_FACETS : forall N:set, N <> Empty -> forall p r :e 2 :^: hl_ty_cart R N, hl_polyhedron N p = 1 /\ (hl_face_of N r p = 1 /\ (~ r = hl_EMPTY (hl_ty_cart R N) /\ hl_aff_dim N r = hl_int_sub (hl_aff_dim N p) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) -> exists f1 f2 :e 2 :^: hl_ty_cart R N, hl_face_of N f1 p = 1 /\ (hl_aff_dim N f1 = hl_int_sub (hl_aff_dim N p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (hl_face_of N f2 p = 1 /\ (hl_aff_dim N f2 = hl_int_sub (hl_aff_dim N p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (~ f1 = f2 /\ (hl_SUBSET (hl_ty_cart R N) r f1 = 1 /\ (hl_SUBSET (hl_ty_cart R N) r f2 = 1 /\ (hl_INTER (hl_ty_cart R N) f1 f2 = r /\ forall f :e 2 :^: hl_ty_cart R N, hl_face_of N f p = 1 /\ (hl_aff_dim N f = hl_int_sub (hl_aff_dim N p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_SUBSET (hl_ty_cart R N) r f = 1) -> f = f1 \/ f = f2))))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:7222 / POLYTOPE_VERTEX_LOWER_BOUND   (hash md5:260187f3e032bb8e9988c610662fe4f4)
Theorem hlt_POLYTOPE_VERTEX_LOWER_BOUND : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_polytope N p = 1 -> hl_int_le (hl_int_add (hl_aff_dim N p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_CARD (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5845 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5845 (hl_extreme_point_of N v p) v = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7236 / POLYTOPE_FACET_LOWER_BOUND   (hash md5:b15bb9792fb76c5545a81b8018868c5e)
Theorem hlt_POLYTOPE_FACET_LOWER_BOUND : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_polytope N p = 1 /\ ~ hl_aff_dim N p = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_int_le (hl_int_add (hl_aff_dim N p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_CARD (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5850 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5850 (hl_facet_of N f p) f = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7364 / simplex   (hash md5:7c98b7ae01e7893d76a9ea806a79477b)
Theorem hlt_simplex_thm : forall A:set, A <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R A, hl_simplex A n s = 1 <-> exists c :e 2 :^: hl_ty_cart R A, ~ hl_affine_dependent A c = 1 /\ (hl_int_of_num (hl_CARD (hl_ty_cart R A) c) = hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ s = hl_hull (hl_ty_cart R A) (hl_convex A) c).
Admitted.

// HOL Light: Multivariate/polytope.ml:7369 / SIMPLEX_TRANSLATION_EQ   (hash md5:1659810fe413bf464e250f40767fe2b2)
Theorem hlt_SIMPLEX_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_simplex N n (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_simplex N n s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7379 / SIMPLEX_LINEAR_IMAGE_EQ   (hash md5:9f579814ab751ae9117657fc9727bbb1)
Theorem hlt_SIMPLEX_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall n :e hl_ty_int, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_simplex N n (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_simplex M n s = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:7402 / SIMPLEX   (hash md5:f0dbd32306721f6e87a6ab67a4f78086)
Theorem hlt_SIMPLEX : forall A:set, A <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R A, hl_simplex A n s = 1 <-> exists c :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) c = 1 /\ (~ hl_affine_dependent A c = 1 /\ (hl_int_of_num (hl_CARD (hl_ty_cart R A) c) = hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ s = hl_hull (hl_ty_cart R A) (hl_convex A) c)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7409 / SIMPLEX_CONVEX_HULL   (hash md5:a52311e31a573f70c191883988ecdac7)
Theorem hlt_SIMPLEX_CONVEX_HULL : forall N:set, N <> Empty -> forall c :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, ~ hl_affine_dependent N c = 1 /\ hl_int_of_num (hl_CARD (hl_ty_cart R N) c) = hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_simplex N n (hl_hull (hl_ty_cart R N) (hl_convex N) c) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7414 / SIMPLEX_IMP_POLYTOPE   (hash md5:aa9ef757a4bdbe33387d19f7cd8ee815)
Theorem hlt_SIMPLEX_IMP_POLYTOPE : forall A:set, A <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R A, hl_simplex A n s = 1 -> hl_polytope A s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7419 / SIMPLEX_IMP_POLYHEDRON   (hash md5:3611690d2daff32ee72f6391f5418fb8)
Theorem hlt_SIMPLEX_IMP_POLYHEDRON : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall n :e hl_ty_int, hl_simplex A n s = 1 -> hl_polyhedron A s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7423 / SIMPLEX_IMP_CONVEX   (hash md5:aa4f8ccca3ac3faf3f83c1e244e374c6)
Theorem hlt_SIMPLEX_IMP_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_simplex N n s = 1 -> hl_convex N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7427 / SIMPLEX_IMP_COMPACT   (hash md5:3029f233c3451ebd5cac29f7bed3759d)
Theorem hlt_SIMPLEX_IMP_COMPACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_simplex N n s = 1 -> hl_compact N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7431 / SIMPLEX_IMP_CLOSED   (hash md5:c348b9c00a7b42779940a7d11bd45180)
Theorem hlt_SIMPLEX_IMP_CLOSED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_simplex N n s = 1 -> hl_closed N s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7435 / SIMPLEX_DIM_GE   (hash md5:4cdcdbff37625df9ac6935abdac213bf)
Theorem hlt_SIMPLEX_DIM_GE : forall A:set, A <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R A, hl_simplex A n s = 1 -> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7439 / SIMPLEX_EMPTY   (hash md5:0f65adb1109d090c57bd2867c12370c3)
Theorem hlt_SIMPLEX_EMPTY : forall A:set, A <> Empty -> forall n :e hl_ty_int, hl_simplex A n (hl_EMPTY (hl_ty_cart R A)) = 1 <-> n = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/polytope.ml:7448 / SIMPLEX_MINUS_1   (hash md5:a539c0f2128e8cd6ccbdcf662c6b6b4a)
Theorem hlt_SIMPLEX_MINUS_1 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_simplex A (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) s = 1 <-> s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/polytope.ml:7457 / AFF_DIM_SIMPLEX   (hash md5:53078f63bba8dcc5c06848a239e637c8)
Theorem hlt_AFF_DIM_SIMPLEX : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall n :e hl_ty_int, hl_simplex A n s = 1 -> hl_aff_dim A s = n.
Admitted.

// HOL Light: Multivariate/polytope.ml:7463 / SIMPLEX_EXTREME_POINTS   (hash md5:4dc9d46f9da0b1743f8b59bcfb511687)
Theorem hlt_SIMPLEX_EXTREME_POINTS : forall N:set, N <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R N, hl_simplex N n s = 1 -> hl_FINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5854 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5854 (hl_extreme_point_of N v s) v = 1 then 1 else 0)) = 1 /\ (~ hl_affine_dependent N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5855 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5855 (hl_extreme_point_of N v s) v = 1 then 1 else 0)) = 1 /\ (hl_int_of_num (hl_CARD (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5856 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5856 (hl_extreme_point_of N v s) v = 1 then 1 else 0))) = hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ s = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5857 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5857 (hl_extreme_point_of N v s) v = 1 then 1 else 0)))).
Admitted.

// HOL Light: Multivariate/polytope.ml:7495 / SIMPLEX_FACE_OF_SIMPLEX   (hash md5:0ead1deef9749658339cec16025a0bcf)
Theorem hlt_SIMPLEX_FACE_OF_SIMPLEX : forall N:set, N <> Empty -> forall n :e hl_ty_int, forall s f :e 2 :^: hl_ty_cart R N, hl_simplex N n s = 1 /\ hl_face_of N f s = 1 -> exists m :e hl_ty_int, hl_int_le m n = 1 /\ hl_simplex N m f = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7514 / FACE_OF_SIMPLEX_SUBSET   (hash md5:7f7e94143a71622b3a0e94c52bcac784)
Theorem hlt_FACE_OF_SIMPLEX_SUBSET : forall N:set, N <> Empty -> forall n :e hl_ty_int, forall s f :e 2 :^: hl_ty_cart R N, hl_simplex N n s = 1 /\ hl_face_of N f s = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) c (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5859 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5859 (hl_extreme_point_of N x s) x = 1 then 1 else 0)) = 1 /\ f = hl_hull (hl_ty_cart R N) (hl_convex N) c.
Admitted.

// HOL Light: Multivariate/polytope.ml:7526 / SUBSET_FACE_OF_SIMPLEX   (hash md5:87c316bf1141ae49a81ae96ac23ea974)
Theorem hlt_SUBSET_FACE_OF_SIMPLEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, forall c :e 2 :^: hl_ty_cart R N, hl_simplex N n s = 1 /\ hl_SUBSET (hl_ty_cart R N) c (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5862 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5862 (hl_extreme_point_of N x s) x = 1 then 1 else 0)) = 1 -> hl_face_of N (hl_hull (hl_ty_cart R N) (hl_convex N) c) s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7543 / FACES_OF_SIMPLEX   (hash md5:cf7b4fb344618d629035c276960f7da9)
Theorem hlt_FACES_OF_SIMPLEX : forall A:set, A <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R A, hl_simplex A n s = 1 -> hl_GSPEC (2 :^: hl_ty_cart R A) (fun GEN_PVAR_5863 :e 2 :^: hl_ty_cart R A => if exists f :e 2 :^: hl_ty_cart R A, hl_SETSPEC (2 :^: hl_ty_cart R A) GEN_PVAR_5863 (hl_face_of A f s) f = 1 then 1 else 0) = hl_GSPEC (2 :^: hl_ty_cart R A) (fun GEN_PVAR_5865 :e 2 :^: hl_ty_cart R A => if exists c :e 2 :^: hl_ty_cart R A, hl_SETSPEC (2 :^: hl_ty_cart R A) GEN_PVAR_5865 (hl_SUBSET (hl_ty_cart R A) c (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5864 :e hl_ty_cart R A => if exists v :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5864 (hl_extreme_point_of A v s) v = 1 then 1 else 0))) (hl_hull (hl_ty_cart R A) (hl_convex A) c) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/polytope.ml:7551 / HAS_SIZE_FACES_OF_SIMPLEX   (hash md5:0c2b31d532a057d701b800d630114db8)
Theorem hlt_HAS_SIZE_FACES_OF_SIMPLEX : forall N:set, N <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R N, hl_simplex N n s = 1 -> hl_HAS_SIZE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5868 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5868 (hl_face_of N f s) f = 1 then 1 else 0)) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_num_of_int (hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7583 / FINITE_FACES_OF_SIMPLEX   (hash md5:57bae933a3f5772cf426f47d5a107587)
Theorem hlt_FINITE_FACES_OF_SIMPLEX : forall A:set, A <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R A, hl_simplex A n s = 1 -> hl_FINITE (2 :^: hl_ty_cart R A) (hl_GSPEC (2 :^: hl_ty_cart R A) (fun GEN_PVAR_5869 :e 2 :^: hl_ty_cart R A => if exists f :e 2 :^: hl_ty_cart R A, hl_SETSPEC (2 :^: hl_ty_cart R A) GEN_PVAR_5869 (hl_face_of A f s) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7589 / CARD_FACES_OF_SIMPLEX   (hash md5:7a4fc92c7b554cd3c32feaffec937892)
Theorem hlt_CARD_FACES_OF_SIMPLEX : forall A:set, A <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R A, hl_simplex A n s = 1 -> hl_CARD (2 :^: hl_ty_cart R A) (hl_GSPEC (2 :^: hl_ty_cart R A) (fun GEN_PVAR_5870 :e 2 :^: hl_ty_cart R A => if exists f :e 2 :^: hl_ty_cart R A, hl_SETSPEC (2 :^: hl_ty_cart R A) GEN_PVAR_5870 (hl_face_of A f s) f = 1 then 1 else 0)) = hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_num_of_int (hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:7595 / CHOOSE_SIMPLEX   (hash md5:fa6fc431080827e90f6386f279877786)
Theorem hlt_CHOOSE_SIMPLEX : forall N:set, N <> Empty -> forall n :e hl_ty_int, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ hl_int_le n (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 -> exists s :e 2 :^: hl_ty_cart R N, hl_simplex N n s = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7617 / CHOOSE_SURROUNDING_SIMPLEX   (hash md5:30b9aa61eb12eba82f71378a45d77e91)
Theorem hlt_CHOOSE_SURROUNDING_SIMPLEX : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 /\ hl_int_le n (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 -> exists s :e 2 :^: hl_ty_cart R N, hl_simplex N n s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7636 / CHOOSE_SURROUNDING_SIMPLEX_FULL   (hash md5:3377aa514d3bb085eb9d1d063405648d)
Theorem hlt_CHOOSE_SURROUNDING_SIMPLEX_FULL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, exists s :e 2 :^: hl_ty_cart R N, hl_simplex N (hl_int_of_num (hl_dimindex N (hl_UNIV N))) s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7644 / CHOOSE_POLYTOPE   (hash md5:868581b9dc1b0b18154afb6262ebbbf9)
Theorem hlt_CHOOSE_POLYTOPE : forall N:set, N <> Empty -> forall n :e hl_ty_int, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ hl_int_le n (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 -> exists s :e 2 :^: hl_ty_cart R N, hl_polytope N s = 1 /\ hl_aff_dim N s = n.
Admitted.

// HOL Light: Multivariate/polytope.ml:7649 / SIMPLEX_SING   (hash md5:f5af09bacec2ae34f24337374c78274c)
Theorem hlt_SIMPLEX_SING : forall N:set, N <> Empty -> forall n :e hl_ty_int, forall a :e hl_ty_cart R N, hl_simplex N n (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1 <-> n = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/polytope.ml:7659 / SIMPLEX_ZERO   (hash md5:e0c535c24581676de09b146ce67c2698)
Theorem hlt_SIMPLEX_ZERO : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simplex N (hl_int_of_num (hl_NUMERAL hl_zero)) s = 1 <-> exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7668 / SIMPLEX_SEGMENT_CASES   (hash md5:fd7e20650ec66566b4d43bd5095bd009)
Theorem hlt_SIMPLEX_SEGMENT_CASES : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_simplex N (hl_COND hl_ty_int (if a = b then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7677 / SIMPLEX_SEGMENT   (hash md5:84c706e504bb7010bee6724bf84993ad)
Theorem hlt_SIMPLEX_SEGMENT : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, exists n :e hl_ty_int, hl_simplex A n (hl_closed_segment A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7681 / POLYTOPE_LOWDIM_IMP_SIMPLEX   (hash md5:34cdac64ca49e1b3cdc9f4461f5c0ea2)
Theorem hlt_POLYTOPE_LOWDIM_IMP_SIMPLEX : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_polytope N p = 1 /\ hl_int_le (hl_aff_dim N p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> exists n :e hl_ty_int, hl_simplex N n p = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7690 / SIMPLEX_INSERT_DIMPLUS1   (hash md5:24ccdebade3d561cff70591d09581051)
Theorem hlt_SIMPLEX_INSERT_DIMPLUS1 : forall N:set, N <> Empty -> forall n :e hl_ty_int, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_simplex N n s = 1 /\ ~ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_simplex N (hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7706 / SIMPLEX_INSERT   (hash md5:2ddfbc02662bdb307b14d33e25ea9af4)
Theorem hlt_SIMPLEX_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, (exists n :e hl_ty_int, hl_simplex N n s = 1) /\ ~ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> exists n :e hl_ty_int, hl_simplex N n (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7712 / SIMPLEX_ALT   (hash md5:de45237aff4d866085777b412057d307)
Theorem hlt_SIMPLEX_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall i :e hl_ty_int, hl_simplex N i s = 1 <-> hl_convex N s = 1 /\ (hl_compact N s = 1 /\ (hl_FINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5872 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5872 (hl_extreme_point_of N v s) v = 1 then 1 else 0)) = 1 /\ (hl_int_of_num (hl_CARD (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5873 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5873 (hl_extreme_point_of N v s) v = 1 then 1 else 0))) = hl_int_add i (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ ~ hl_affine_dependent N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5874 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5874 (hl_extreme_point_of N v s) v = 1 then 1 else 0)) = 1))).
Admitted.

// HOL Light: Multivariate/polytope.ml:7725 / SIMPLEX_ALT1   (hash md5:4583474b79e75db11029fb7b033c617a)
Theorem hlt_SIMPLEX_ALT1 : forall N:set, N <> Empty -> forall n :e omega, forall s :e 2 :^: hl_ty_cart R N, hl_simplex N (hl_int_sub (hl_int_of_num n) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) s = 1 <-> hl_convex N s = 1 /\ (hl_compact N s = 1 /\ (hl_HAS_SIZE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5875 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5875 (hl_extreme_point_of N v s) v = 1 then 1 else 0)) n = 1 /\ ~ hl_affine_dependent N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5876 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5876 (hl_extreme_point_of N v s) v = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7734 / SIMPLEX_0_NOT_IN_AFFINE_HULL   (hash md5:9deefe54f35909340f3c41a30185665e)
Theorem hlt_SIMPLEX_0_NOT_IN_AFFINE_HULL : forall N:set, N <> Empty -> forall n :e omega, forall s :e 2 :^: hl_ty_cart R N, hl_simplex N (hl_int_sub (hl_int_of_num n) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 <-> hl_convex N s = 1 /\ (hl_compact N s = 1 /\ (hl_HAS_SIZE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5877 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5877 (hl_extreme_point_of N v s) v = 1 then 1 else 0)) n = 1 /\ hl_independent N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5878 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5878 (hl_extreme_point_of N v s) v = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7746 / SIMPLEX_EXTREME_POINTS_NONEMPTY   (hash md5:5f769b7b6d6cb7ac50f9048c807fc176)
Theorem hlt_SIMPLEX_EXTREME_POINTS_NONEMPTY : forall A N:set, A <> Empty -> N <> Empty -> forall c :e 2 :^: hl_ty_cart R A, hl_simplex A (hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) c = 1 -> ~ hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5879 :e hl_ty_cart R A => if exists v :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5879 (hl_extreme_point_of A v c) v = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/polytope.ml:7762 / simplicial_complex   (hash md5:c234bc54f5fa6b68068d5417fea51010)
Theorem hlt_simplicial_complex_thm : forall A:set, A <> Empty -> forall c :e 2 :^: (2 :^: hl_ty_cart R A), hl_simplicial_complex A c = 1 <-> hl_FINITE (2 :^: hl_ty_cart R A) c = 1 /\ ((forall s :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) s c = 1 -> exists n :e hl_ty_int, hl_simplex A n s = 1) /\ ((forall f s :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) s c = 1 /\ hl_face_of A f s = 1 -> hl_IN (2 :^: hl_ty_cart R A) f c = 1) /\ forall s s' :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) s c = 1 /\ hl_IN (2 :^: hl_ty_cart R A) s' c = 1 -> hl_face_of A (hl_INTER (hl_ty_cart R A) s s') s = 1 /\ hl_face_of A (hl_INTER (hl_ty_cart R A) s s') s' = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7770 / triangulation   (hash md5:73be19cb1fea03d05063663df66474b0)
Theorem hlt_triangulation_thm : forall N:set, N <> Empty -> forall tr :e 2 :^: (2 :^: hl_ty_cart R N), hl_triangulation N tr = 1 <-> hl_FINITE (2 :^: hl_ty_cart R N) tr = 1 /\ ((forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t tr = 1 -> exists n :e hl_ty_int, hl_simplex N n t = 1) /\ forall t t' :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t tr = 1 /\ hl_IN (2 :^: hl_ty_cart R N) t' tr = 1 -> hl_face_of N (hl_INTER (hl_ty_cart R N) t t') t = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) t t') t' = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:7777 / SIMPLICIAL_COMPLEX_TRANSLATION   (hash md5:55cf902f2a1868dda0078697cae10428)
Theorem hlt_SIMPLICIAL_COMPLEX_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall tr :e 2 :^: (2 :^: hl_ty_cart R N), hl_simplicial_complex N (hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x)) tr) = 1 <-> hl_simplicial_complex N tr = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7784 / SIMPLICIAL_COMPLEX_LINEAR_IMAGE   (hash md5:6ac1bab3cd36f1f495425669c048c9f8)
Theorem hlt_SIMPLICIAL_COMPLEX_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall tr :e 2 :^: (2 :^: hl_ty_cart R M), hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y)) -> (hl_simplicial_complex N (hl_IMAGE (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f) tr) = 1 <-> hl_simplicial_complex M tr = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:7792 / TRIANGULATION_TRANSLATION   (hash md5:ab4e7e70b4360fcd2499a7c877488290)
Theorem hlt_TRIANGULATION_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall tr :e 2 :^: (2 :^: hl_ty_cart R N), hl_triangulation N (hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x)) tr) = 1 <-> hl_triangulation N tr = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7799 / TRIANGULATION_LINEAR_IMAGE   (hash md5:96fda8681d2aaa9643a310025a1a2027)
Theorem hlt_TRIANGULATION_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall tr :e 2 :^: (2 :^: hl_ty_cart R M), hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y)) -> (hl_triangulation N (hl_IMAGE (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f) tr) = 1 <-> hl_triangulation M tr = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:7807 / SIMPLICIAL_COMPLEX_IMP_TRIANGULATION   (hash md5:e5108363d1745cd6865d173f684ee6ba)
Theorem hlt_SIMPLICIAL_COMPLEX_IMP_TRIANGULATION : forall A:set, A <> Empty -> forall tr :e 2 :^: (2 :^: hl_ty_cart R A), hl_simplicial_complex A tr = 1 -> hl_triangulation A tr = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7811 / TRIANGULATION_SUBSET   (hash md5:84dd797ba89f7aaf9741f3a00370af5c)
Theorem hlt_TRIANGULATION_SUBSET : forall N:set, N <> Empty -> forall tr tr' :e 2 :^: (2 :^: hl_ty_cart R N), hl_triangulation N tr = 1 /\ hl_SUBSET (2 :^: hl_ty_cart R N) tr' tr = 1 -> hl_triangulation N tr' = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7817 / TRIANGULATION_UNION   (hash md5:fbc192eb8691dda3e17d0c72bd86e14d)
Theorem hlt_TRIANGULATION_UNION : forall A:set, A <> Empty -> forall tr1 tr2 :e 2 :^: (2 :^: hl_ty_cart R A), hl_triangulation A (hl_UNION (2 :^: hl_ty_cart R A) tr1 tr2) = 1 <-> hl_triangulation A tr1 = 1 /\ (hl_triangulation A tr2 = 1 /\ forall s t :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) s tr1 = 1 /\ hl_IN (2 :^: hl_ty_cart R A) t tr2 = 1 -> hl_face_of A (hl_INTER (hl_ty_cart R A) s t) s = 1 /\ hl_face_of A (hl_INTER (hl_ty_cart R A) s t) t = 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:7826 / TRIANGULATION_INTER_SIMPLEX   (hash md5:5db903709de398545ad4aff9283fd215)
Theorem hlt_TRIANGULATION_INTER_SIMPLEX : forall N:set, N <> Empty -> forall tr :e 2 :^: (2 :^: hl_ty_cart R N), forall t t' :e 2 :^: hl_ty_cart R N, hl_triangulation N tr = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) t tr = 1 /\ hl_IN (2 :^: hl_ty_cart R N) t' tr = 1) -> hl_INTER (hl_ty_cart R N) t t' = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INTER (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5881 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5881 (hl_extreme_point_of N x t) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5882 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5882 (hl_extreme_point_of N x t') x = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/polytope.ml:7863 / TRIANGULATION_SIMPLICIAL_COMPLEX   (hash md5:53c12ffd5839e27b0fcc4323f609490d)
Theorem hlt_TRIANGULATION_SIMPLICIAL_COMPLEX : forall N:set, N <> Empty -> forall tr :e 2 :^: (2 :^: hl_ty_cart R N), hl_triangulation N tr = 1 -> hl_simplicial_complex N (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5885 :e 2 :^: hl_ty_cart R N => if exists f :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5885 (if exists t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t tr = 1 /\ hl_face_of N f t = 1 then 1 else 0) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7885 / TRIANGULATION_SIMPLEX_FACES   (hash md5:3166eda0a4e5e169fb03df48843c28ba)
Theorem hlt_TRIANGULATION_SIMPLEX_FACES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n d :e hl_ty_int, hl_simplex N n s = 1 -> hl_triangulation N (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5889 :e 2 :^: hl_ty_cart R N => if exists c :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5889 (if hl_face_of N c s = 1 /\ hl_aff_dim N c = d then 1 else 0) c = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7900 / TRIANGULATION_SIMPLEX_FACETS   (hash md5:d45af590cdd215b3c21f70fa295b477a)
Theorem hlt_TRIANGULATION_SIMPLEX_FACETS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_simplex N n s = 1 -> hl_triangulation N (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5891 :e 2 :^: hl_ty_cart R N => if exists c :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5891 (hl_facet_of N c s) c = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7908 / CELL_COMPLEX_DISJOINT_RELATIVE_INTERIORS   (hash md5:387c962d1bdcba37d660c596031f65e6)
Theorem hlt_CELL_COMPLEX_DISJOINT_RELATIVE_INTERIORS : forall N:set, N <> Empty -> forall c d :e 2 :^: hl_ty_cart R N, hl_face_of N (hl_INTER (hl_ty_cart R N) c d) c = 1 /\ (hl_face_of N (hl_INTER (hl_ty_cart R N) c d) d = 1 /\ ~ c = d) -> hl_INTER (hl_ty_cart R N) (hl_relative_interior N c) (hl_relative_interior N d) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/polytope.ml:7922 / TRIANGULATION_DISJOINT_RELATIVE_INTERIORS   (hash md5:611273fe92a9b1927b74c7506e8d7119)
Theorem hlt_TRIANGULATION_DISJOINT_RELATIVE_INTERIORS : forall N:set, N <> Empty -> forall t :e 2 :^: (2 :^: hl_ty_cart R N), forall c d :e 2 :^: hl_ty_cart R N, hl_triangulation N t = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c t = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) d t = 1 /\ ~ c = d)) -> hl_INTER (hl_ty_cart R N) (hl_relative_interior N c) (hl_relative_interior N d) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/polytope.ml:7929 / SIMPLICIAL_COMPLEX_DISJOINT_RELATIVE_INTERIORS   (hash md5:ac8d29c05d5cf8f29c78b1aca8ee4143)
Theorem hlt_SIMPLICIAL_COMPLEX_DISJOINT_RELATIVE_INTERIORS : forall N:set, N <> Empty -> forall t :e 2 :^: (2 :^: hl_ty_cart R N), forall c d :e 2 :^: hl_ty_cart R N, hl_simplicial_complex N t = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c t = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) d t = 1 /\ ~ c = d)) -> hl_INTER (hl_ty_cart R N) (hl_relative_interior N c) (hl_relative_interior N d) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/polytope.ml:7936 / NOT_IN_AFFINE_HULL_SURFACE_TRIANGULATION   (hash md5:07c1c5293a324422151a67172808bf3f)
Theorem hlt_NOT_IN_AFFINE_HULL_SURFACE_TRIANGULATION : forall N:set, N <> Empty -> forall t :e 2 :^: (2 :^: hl_ty_cart R N), forall u :e 2 :^: hl_ty_cart R N, forall z :e hl_ty_cart R N, hl_convex N u = 1 /\ (hl_bounded N u = 1 /\ (hl_IN (hl_ty_cart R N) z (hl_interior N u) = 1 /\ (hl_triangulation N t = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_UNIONS (hl_ty_cart R N) t) (hl_frontier N u) = 1))) -> forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c t = 1 -> ~ hl_IN (hl_ty_cart R N) z (hl_hull (hl_ty_cart R N) (hl_affine N) c) = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7959 / TRIANGULATION_SUBFACES   (hash md5:9d6dacec12e274e665e9978b270b6832)
Theorem hlt_TRIANGULATION_SUBFACES : forall N:set, N <> Empty -> forall tr tr' :e 2 :^: (2 :^: hl_ty_cart R N), hl_triangulation N tr = 1 /\ (forall c' :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c' tr' = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c tr = 1 /\ hl_face_of N c' c = 1) -> hl_triangulation N tr' = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7978 / CELL_COMPLEX_SUBDIVISION_EXISTS   (hash md5:670adeffb9b16703f73d2be019f53fb7)
Theorem hlt_CELL_COMPLEX_SUBDIVISION_EXISTS : forall N:set, N <> Empty -> forall m :e 2 :^: (2 :^: hl_ty_cart R N), forall d :e hl_ty_int, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) m = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_polytope N c = 1) /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_int_le (hl_aff_dim N c) d = 1) /\ (forall c1 c2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c1 m = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c2 m = 1 -> hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c1 = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c2 = 1)))) -> exists m' :e 2 :^: (2 :^: hl_ty_cart R N), (forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m' = 1 -> hl_real_lt (hl_diameter N c) e1 = 1) /\ (hl_UNIONS (hl_ty_cart R N) m' = hl_UNIONS (hl_ty_cart R N) m /\ (hl_FINITE (2 :^: hl_ty_cart R N) m' = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m' = 1 -> exists d1 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d1 m = 1 /\ hl_SUBSET (hl_ty_cart R N) c d1 = 1) /\ ((forall c :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 /\ hl_IN (hl_ty_cart R N) x c = 1 -> exists d1 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d1 m' = 1 /\ (hl_IN (hl_ty_cart R N) x d1 = 1 /\ hl_SUBSET (hl_ty_cart R N) d1 c = 1)) /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m' = 1 -> hl_polytope N c = 1) /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m' = 1 -> hl_int_le (hl_aff_dim N c) d = 1) /\ forall c1 c2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c1 m' = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c2 m' = 1 -> hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c1 = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c2 = 1)))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:8135 / SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX_LOWDIM   (hash md5:273b98e04c5f2cc4436cbc7b1538af27)
Theorem hlt_SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX_LOWDIM : forall N:set, N <> Empty -> forall m :e 2 :^: (2 :^: hl_ty_cart R N), forall d :e hl_ty_int, hl_FINITE (2 :^: hl_ty_cart R N) m = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_polytope N c = 1) /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_int_le (hl_aff_dim N c) d = 1) /\ (forall c1 c2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c1 m = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c2 m = 1 -> hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c1 = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c2 = 1))) -> exists t :e 2 :^: (2 :^: hl_ty_cart R N), hl_simplicial_complex N t = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> hl_int_le (hl_aff_dim N k) d = 1) /\ (hl_UNIONS (hl_ty_cart R N) t = hl_UNIONS (hl_ty_cart R N) m /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_SUBSET (2 :^: hl_ty_cart R N) f t = 1 /\ c = hl_UNIONS (hl_ty_cart R N) f)) /\ forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 /\ hl_SUBSET (hl_ty_cart R N) k c = 1))).
Admitted.

// HOL Light: Multivariate/polytope.ml:8724 / SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX   (hash md5:f0808f145d0f4d44274750b23784e962)
Theorem hlt_SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX : forall N:set, N <> Empty -> forall m :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) m = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_polytope N c = 1) /\ (forall c1 c2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c1 m = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c2 m = 1 -> hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c1 = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c2 = 1)) -> exists t :e 2 :^: (2 :^: hl_ty_cart R N), hl_simplicial_complex N t = 1 /\ (hl_UNIONS (hl_ty_cart R N) t = hl_UNIONS (hl_ty_cart R N) m /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_SUBSET (2 :^: hl_ty_cart R N) f t = 1 /\ c = hl_UNIONS (hl_ty_cart R N) f)) /\ forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 /\ hl_SUBSET (hl_ty_cart R N) k c = 1)).
Admitted.

// HOL Light: Multivariate/polytope.ml:8739 / FINE_SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX   (hash md5:47d905959fd7928aafbe6bfdef84f492)
Theorem hlt_FINE_SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX : forall N:set, N <> Empty -> forall m :e 2 :^: (2 :^: hl_ty_cart R N), forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) m = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_polytope N c = 1) /\ (forall c1 c2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c1 m = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c2 m = 1 -> hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c1 = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c2 = 1))) -> exists t :e 2 :^: (2 :^: hl_ty_cart R N), hl_simplicial_complex N t = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> hl_real_lt (hl_diameter N k) e1 = 1) /\ (hl_UNIONS (hl_ty_cart R N) t = hl_UNIONS (hl_ty_cart R N) m /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_SUBSET (2 :^: hl_ty_cart R N) f t = 1 /\ c = hl_UNIONS (hl_ty_cart R N) f)) /\ forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 /\ hl_SUBSET (hl_ty_cart R N) k c = 1))).
Admitted.

// HOL Light: Multivariate/polytope.ml:8784 / REGULAR_CLOSED_UNIONS_FAT_CELLS_UNIV   (hash md5:0b9091bc05152bdbc0d3f7d15614d786)
Theorem hlt_REGULAR_CLOSED_UNIONS_FAT_CELLS_UNIV : forall N:set, N <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R N), forall u :e 2 :^: hl_ty_cart R N, hl_closure N (hl_interior N u) = u /\ (hl_FINITE (2 :^: hl_ty_cart R N) s = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c s = 1 -> hl_closed N c = 1 /\ hl_convex N c = 1) /\ hl_UNIONS (hl_ty_cart R N) s = u)) -> hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5916 :e 2 :^: hl_ty_cart R N => if exists c :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5916 (if hl_IN (2 :^: hl_ty_cart R N) c s = 1 /\ ~ hl_interior N c = hl_EMPTY (hl_ty_cart R N) then 1 else 0) c = 1 then 1 else 0)) = u.
Admitted.

// HOL Light: Multivariate/polytope.ml:8821 / CONVEX_UNIONS_FULLDIM_CELLS   (hash md5:2713e6aefa8d5022124f548b30653c0a)
Theorem hlt_CONVEX_UNIONS_FULLDIM_CELLS : forall N:set, N <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R N), forall u :e 2 :^: hl_ty_cart R N, hl_FINITE (2 :^: hl_ty_cart R N) s = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c s = 1 -> hl_closed N c = 1 /\ hl_convex N c = 1) /\ (hl_UNIONS (hl_ty_cart R N) s = u /\ hl_convex N u = 1)) -> hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5918 :e 2 :^: hl_ty_cart R N => if exists c :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5918 (if hl_IN (2 :^: hl_ty_cart R N) c s = 1 /\ hl_aff_dim N c = hl_aff_dim N u then 1 else 0) c = 1 then 1 else 0)) = u.
Admitted.

// HOL Light: Multivariate/polytope.ml:8867 / TRIANGULAR_SUBDIVISION_OF_CELL_COMPLEX   (hash md5:da502bc08427697ab560797773a0e30c)
Theorem hlt_TRIANGULAR_SUBDIVISION_OF_CELL_COMPLEX : forall N:set, N <> Empty -> forall m :e 2 :^: (2 :^: hl_ty_cart R N), forall d :e hl_ty_int, hl_FINITE (2 :^: hl_ty_cart R N) m = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_polytope N c = 1) /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_aff_dim N c = d) /\ (forall c1 c2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c1 m = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c2 m = 1 -> hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c1 = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c2 = 1))) -> exists t :e 2 :^: (2 :^: hl_ty_cart R N), hl_triangulation N t = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> hl_aff_dim N k = d) /\ (hl_UNIONS (hl_ty_cart R N) t = hl_UNIONS (hl_ty_cart R N) m /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_SUBSET (2 :^: hl_ty_cart R N) f t = 1 /\ c = hl_UNIONS (hl_ty_cart R N) f)) /\ forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 /\ hl_SUBSET (hl_ty_cart R N) k c = 1))).
Admitted.

// HOL Light: Multivariate/polytope.ml:8904 / FINE_TRIANGULAR_SUBDIVISION_OF_CELL_COMPLEX   (hash md5:42056bf938db9ba2f7047823729c6110)
Theorem hlt_FINE_TRIANGULAR_SUBDIVISION_OF_CELL_COMPLEX : forall N:set, N <> Empty -> forall m :e 2 :^: (2 :^: hl_ty_cart R N), forall d :e hl_ty_int, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) m = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_polytope N c = 1) /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> hl_aff_dim N c = d) /\ (forall c1 c2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c1 m = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c2 m = 1 -> hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c1 = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) c1 c2) c2 = 1)))) -> exists t :e 2 :^: (2 :^: hl_ty_cart R N), hl_triangulation N t = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> hl_real_lt (hl_diameter N k) e1 = 1) /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> hl_aff_dim N k = d) /\ (hl_UNIONS (hl_ty_cart R N) t = hl_UNIONS (hl_ty_cart R N) m /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 -> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_SUBSET (2 :^: hl_ty_cart R N) f t = 1 /\ c = hl_UNIONS (hl_ty_cart R N) f)) /\ forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k t = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c m = 1 /\ hl_SUBSET (hl_ty_cart R N) k c = 1)))).
Admitted.

