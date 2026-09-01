// hol2mg certification module (private): shard polytope of profile multivariate.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Multivariate/polytope.ml:13 / face_of   (hash md5:099bff3a2ee95fc4d4f768edb6f0cfe6)
// not bridged: 
Theorem face_of_thm : forall A:set, A <> Empty -> forall s t c= R :^: idx A, face_of A t s <-> t c= s /\ (convex A t /\ forall a b x :e R :^: idx A, a :e s /\ (b :e s /\ (x :e t /\ x :e open_segment A (a,b))) -> a :e t /\ b :e t).
Admitted.

// HOL Light: Multivariate/polytope.ml:19 / FACE_OF_TRANSLATION_EQ   (hash md5:9aa51de6aca1dc8394af3a3f3cec7d98)
// not bridged: 
Theorem FACE_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall f s c= R :^: idx N, face_of N {vector_add N a x | x :e f} {vector_add N a x | x :e s} <-> face_of N f s.
Admitted.

// HOL Light: Multivariate/polytope.ml:26 / FACE_OF_LINEAR_IMAGE   (hash md5:416715f862da522bd16f39c80b2fc42b)
// not bridged: 
Theorem FACE_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall c s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (face_of N {f x | x :e c} {f x | x :e s} <-> face_of M c s).
Admitted.

// HOL Light: Multivariate/polytope.ml:37 / FACE_OF_REFL   (hash md5:ff67762ec2bb5d79acc6a718b700a501)
// not bridged: 
Theorem FACE_OF_REFL : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s -> face_of A s s.
Admitted.

// HOL Light: Multivariate/polytope.ml:41 / FACE_OF_REFL_EQ   (hash md5:36b87c71e2d0c2c053bf63a0399a78a7)
// not bridged: 
Theorem FACE_OF_REFL_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, face_of A s s <-> convex A s.
Admitted.

// HOL Light: Multivariate/polytope.ml:45 / EMPTY_FACE_OF   (hash md5:bbba0d8d4f40754ca3c2ec45a27fcf4e)
// not bridged: 
Theorem EMPTY_FACE_OF : forall A:set, A <> Empty -> forall s c= R :^: idx A, face_of A Empty s.
Admitted.

// HOL Light: Multivariate/polytope.ml:49 / FACE_OF_EMPTY   (hash md5:7ceb69df7db5450ee3b61335c8b86d34)
// not bridged: 
Theorem FACE_OF_EMPTY : forall A:set, A <> Empty -> forall s c= R :^: idx A, face_of A s Empty <-> s = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:54 / FACE_OF_TRANS   (hash md5:6da63c3eec51de63e5d0dd35dd4da897)
// not bridged: 
Theorem FACE_OF_TRANS : forall A:set, A <> Empty -> forall s t u c= R :^: idx A, face_of A s t /\ face_of A t u -> face_of A s u.
Admitted.

// HOL Light: Multivariate/polytope.ml:59 / FACE_OF_FACE   (hash md5:77da238410024cc1a96b4257794201a5)
// not bridged: 
Theorem FACE_OF_FACE : forall A:set, A <> Empty -> forall f s t c= R :^: idx A, face_of A t s -> (face_of A f t <-> face_of A f s /\ f c= t).
Admitted.

// HOL Light: Multivariate/polytope.ml:65 / FACE_OF_SUBSET   (hash md5:0a58128a9c3c3056eff4910d06ca7519)
// not bridged: 
Theorem FACE_OF_SUBSET : forall A:set, A <> Empty -> forall f s t c= R :^: idx A, face_of A f s /\ (f c= t /\ t c= s) -> face_of A f t.
Admitted.

// HOL Light: Multivariate/polytope.ml:69 / FACE_OF_SLICE   (hash md5:8bf0dc3cde013aa5d7b6b05de9815e5f)
// not bridged: 
Theorem FACE_OF_SLICE : forall A:set, A <> Empty -> forall f s t c= R :^: idx A, face_of A f s /\ convex A t -> face_of A (f :/\: t) (s :/\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:79 / FACE_OF_INTER   (hash md5:481b9cdca89a276487915b36966e7bfd)
// not bridged: 
Theorem FACE_OF_INTER : forall A:set, A <> Empty -> forall s t1 t2 c= R :^: idx A, face_of A t1 s /\ face_of A t2 s -> face_of A (t1 :/\: t2) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:84 / FACE_OF_INTERS   (hash md5:71f46e4175f8b64563354876cf48eb0b)
// not bridged: 
Theorem FACE_OF_INTERS : forall A:set, A <> Empty -> forall P c= Power (R :^: idx A), forall s c= R :^: idx A, ~ P = Empty /\ (forall t c= R :^: idx A, t :e P -> face_of A t s) -> face_of A {x :e R :^: idx A | forall Y :e P, x :e Y} s.
Admitted.

// HOL Light: Multivariate/polytope.ml:90 / FACE_OF_INTER_INTER   (hash md5:c956b6e57c7f6b919ac9fda1d7352788)
// not bridged: 
Theorem FACE_OF_INTER_INTER : forall A:set, A <> Empty -> forall f t f' t' c= R :^: idx A, face_of A f t /\ face_of A f' t' -> face_of A (f :/\: f') (t :/\: t').
Admitted.

// HOL Light: Multivariate/polytope.ml:95 / FACE_OF_STILLCONVEX   (hash md5:d9f510fdd68f7b37006b333189164707)
// not bridged: 
Theorem FACE_OF_STILLCONVEX : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s -> (face_of N t s <-> t c= s /\ (convex N (s :\: t) /\ t = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t :/\: s)).
Admitted.

// HOL Light: Multivariate/polytope.ml:180 / FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE_STRONG   (hash md5:bfb2bf99d3b06d93506eeaffc411e282)
// not bridged: 
Theorem FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE_STRONG : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, convex N (s :/\: {x :e R :^: idx N | dot N a x = b}) /\ (forall x :e R :^: idx N, x :e s -> dot N a x <= b) -> face_of N (s :/\: {x :e R :^: idx N | dot N a x = b}) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:203 / FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE_STRONG   (hash md5:015e959421c0b33b3cf62f2819487b44)
// not bridged: 
Theorem FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE_STRONG : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, convex N (s :/\: {x :e R :^: idx N | dot N a x = b}) /\ (forall x :e R :^: idx N, x :e s -> b <= dot N a x) -> face_of N (s :/\: {x :e R :^: idx N | dot N a x = b}) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:212 / FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE   (hash md5:2703046851af5c60ba353f3e29a530ea)
// not bridged: 
Theorem FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, convex N s /\ (forall x :e R :^: idx N, x :e s -> dot N a x <= b) -> face_of N (s :/\: {x :e R :^: idx N | dot N a x = b}) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:219 / FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE   (hash md5:91a1d500cb5ae835d1ff734359d58b40)
// not bridged: 
Theorem FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, convex N s /\ (forall x :e R :^: idx N, x :e s -> b <= dot N a x) -> face_of N (s :/\: {x :e R :^: idx N | dot N a x = b}) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:226 / FACE_OF_IMP_SUBSET   (hash md5:0dc5a07a03fab66aa661be60497dd229)
// not bridged: 
Theorem FACE_OF_IMP_SUBSET : forall A:set, A <> Empty -> forall s t c= R :^: idx A, face_of A t s -> t c= s.
Admitted.

// HOL Light: Multivariate/polytope.ml:230 / FACE_OF_IMP_CONVEX   (hash md5:1c3382a975564886882d12d9a2e6be15)
// not bridged: 
Theorem FACE_OF_IMP_CONVEX : forall A:set, A <> Empty -> forall s t c= R :^: idx A, face_of A t s -> convex A t.
Admitted.

// HOL Light: Multivariate/polytope.ml:234 / FACE_OF_IMP_CLOSED   (hash md5:db3a93a8701f34c5ad4c23fe0949d28f)
// not bridged: 
Theorem FACE_OF_IMP_CLOSED : forall A:set, A <> Empty -> forall s t c= R :^: idx A, convex A s /\ (closed A s /\ face_of A t s) -> closed A t.
Admitted.

// HOL Light: Multivariate/polytope.ml:242 / FACE_OF_IMP_COMPACT   (hash md5:ea87dd49dc65c217114e01c5d62566e5)
// not bridged: 
Theorem FACE_OF_IMP_COMPACT : forall A:set, A <> Empty -> forall s t c= R :^: idx A, convex A s /\ (compact A s /\ face_of A t s) -> compact A t.
Admitted.

// HOL Light: Multivariate/polytope.ml:247 / FACE_OF_INTER_SUBFACE   (hash md5:3f2246df263d2d95457ea2cd2ef74455)
// not bridged: 
Theorem FACE_OF_INTER_SUBFACE : forall N:set, N <> Empty -> forall c1 c2 d1 d2 c= R :^: idx N, face_of N (c1 :/\: c2) c1 /\ (face_of N (c1 :/\: c2) c2 /\ (face_of N d1 c1 /\ face_of N d2 c2)) -> face_of N (d1 :/\: d2) d1 /\ face_of N (d1 :/\: d2) d2.
Admitted.

// HOL Light: Multivariate/polytope.ml:258 / SUBSET_OF_FACE_OF   (hash md5:5c98ee7582fccfaa42b59c9b042361d2)
// not bridged: 
Theorem SUBSET_OF_FACE_OF : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, face_of N t s /\ (u c= s /\ ~ t :/\: relative_interior N u = Empty) -> u c= t.
Admitted.

// HOL Light: Multivariate/polytope.ml:312 / FACE_OF_EQ   (hash md5:2923cf23172905fc558a622ee97c7977)
// not bridged: 
Theorem FACE_OF_EQ : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, face_of N t s /\ (face_of N u s /\ ~ relative_interior N t :/\: relative_interior N u = Empty) -> t = u.
Admitted.

// HOL Light: Multivariate/polytope.ml:324 / FACE_OF_DISJOINT_RELATIVE_INTERIOR   (hash md5:62bf841688da95dac3944ecfe2c14bbd)
// not bridged: 
Theorem FACE_OF_DISJOINT_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall f s c= R :^: idx N, face_of N f s /\ ~ f = s -> f :/\: relative_interior N s = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:333 / FACE_OF_DISJOINT_INTERIOR   (hash md5:d634c8b98a8332471484e9f6bb2c3bbe)
// not bridged: 
Theorem FACE_OF_DISJOINT_INTERIOR : forall N:set, N <> Empty -> forall f s c= R :^: idx N, face_of N f s /\ ~ f = s -> f :/\: interior N s = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:341 / SUBSET_OF_FACE_OF_AFFINE_HULL   (hash md5:d428845a8f17970215103ca1b2ab5d23)
// not bridged: 
Theorem SUBSET_OF_FACE_OF_AFFINE_HULL : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, face_of N t s /\ (convex N s /\ (u c= s /\ ~ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t :/\: relative_interior N u = Empty)) -> u c= t.
Admitted.

// HOL Light: Multivariate/polytope.ml:352 / AFFINE_HULL_FACE_OF_DISJOINT_RELATIVE_INTERIOR   (hash md5:8f31b354f0f2cf431466cf5dfbd450c5)
// not bridged: 
Theorem AFFINE_HULL_FACE_OF_DISJOINT_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s f c= R :^: idx N, convex N s /\ (face_of N f s /\ ~ f = s) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} f :/\: relative_interior N s = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:361 / FACE_OF_SUBSET_RELATIVE_BOUNDARY   (hash md5:f0821cf0403be33e5203893e1bd835b4)
// not bridged: 
Theorem FACE_OF_SUBSET_RELATIVE_BOUNDARY : forall N:set, N <> Empty -> forall s f c= R :^: idx N, face_of N f s /\ ~ f = s -> f c= s :\: relative_interior N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:367 / FACE_OF_SUBSET_RELATIVE_FRONTIER   (hash md5:7ca61f9123b0763e23fa63d3c8abf5cf)
// not bridged: 
Theorem FACE_OF_SUBSET_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s f c= R :^: idx N, face_of N f s /\ ~ f = s -> f c= relative_frontier N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:375 / FACE_OF_SUBSET_RELATIVE_FRONTIER_AFF_DIM   (hash md5:6e499d14ffaad61524bfb172493d8af0)
// not bridged: 
Theorem FACE_OF_SUBSET_RELATIVE_FRONTIER_AFF_DIM : forall N:set, N <> Empty -> forall f s c= R :^: idx N, face_of N f s /\ aff_dim N f < aff_dim N s -> f c= relative_frontier N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:381 / FACE_OF_SUBSET_FRONTIER_AFF_DIM   (hash md5:1146a3e7bcd7b2eb8c697d3b8f6c5b50)
// not bridged: 
Theorem FACE_OF_SUBSET_FRONTIER_AFF_DIM : forall N:set, N <> Empty -> forall f s c= R :^: idx N, face_of N f s /\ aff_dim N f < dimindex N -> f c= frontier N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:393 / FACE_OF_AFF_DIM_LT   (hash md5:73644172a93e920bc4fe0ab7373eda7c)
// not bridged: 
Theorem FACE_OF_AFF_DIM_LT : forall N:set, N <> Empty -> forall f s c= R :^: idx N, convex N s /\ (face_of N f s /\ ~ f = s) -> aff_dim N f < aff_dim N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:410 / FACE_OF_CONVEX_HULLS   (hash md5:c1d3a4c085be5e73cbbf58563aff42b4)
// not bridged: 
Theorem FACE_OF_CONVEX_HULLS : forall N:set, N <> Empty -> forall f s c= R :^: idx N, finite s /\ (f c= s /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} f :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\: f) = Empty) -> face_of N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} f) (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:530 / FACE_OF_CONVEX_HULL_INSERT   (hash md5:eac817757d0cf2b5b698aa2ea376ba8d)
// not bridged: 
Theorem FACE_OF_CONVEX_HULL_INSERT : forall N:set, N <> Empty -> forall f s c= R :^: idx N, forall a :e R :^: idx N, finite s /\ (~ a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ face_of N f (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s)) -> face_of N f (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s a)).
Admitted.

// HOL Light: Multivariate/polytope.ml:542 / FACE_OF_AFFINE_TRIVIAL   (hash md5:cc06839bce1e0901a8c10a95b3654d25)
// not bridged: 
Theorem FACE_OF_AFFINE_TRIVIAL : forall N:set, N <> Empty -> forall s f c= R :^: idx N, affine N s /\ face_of N f s -> f = Empty \/ f = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:565 / FACE_OF_AFFINE_EQ   (hash md5:4f8c451c32a8eed45ce51480ef62b553)
// not bridged: 
Theorem FACE_OF_AFFINE_EQ : forall N:set, N <> Empty -> forall s f c= R :^: idx N, affine N s -> (face_of N f s <-> f = Empty \/ f = s).
Admitted.

// HOL Light: Multivariate/polytope.ml:570 / INTERS_FACES_FINITE_BOUND   (hash md5:eceeef38f59c1ee65ded12b3c0843638)
// not bridged: 
Theorem INTERS_FACES_FINITE_BOUND : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f c= Power (R :^: idx N), convex N s /\ (forall c c= R :^: idx N, c :e f -> face_of N c s) -> exists f' c= Power (R :^: idx N), finite f' /\ (f' c= f /\ (finite_cardinality f' <= dimindex N + 1 /\ {x :e R :^: idx N | forall Y :e f', x :e Y} = {x :e R :^: idx N | forall Y :e f, x :e Y})).
Admitted.

// HOL Light: Multivariate/polytope.ml:701 / INTERS_FACES_FINITE_ALTBOUND   (hash md5:adc4c56e73493f0016ce7433748ccbd4)
// not bridged: 
Theorem INTERS_FACES_FINITE_ALTBOUND : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f c= Power (R :^: idx N), (forall c c= R :^: idx N, c :e f -> face_of N c s) -> exists f' c= Power (R :^: idx N), finite f' /\ (f' c= f /\ (finite_cardinality f' <= dimindex N + 2 /\ {x :e R :^: idx N | forall Y :e f', x :e Y} = {x :e R :^: idx N | forall Y :e f, x :e Y})).
Admitted.

// HOL Light: Multivariate/polytope.ml:784 / FACES_OF_TRANSLATION   (hash md5:573fc734479b85042cd601d74f2fcfb6)
// not bridged: 
Theorem FACES_OF_TRANSLATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, {f :e Power (R :^: idx N) | face_of N f {vector_add N a x | x :e s}} = {{x0 :e R :^: idx N | x0 :e {vector_add N a x0 | x0 :e x}} | x :e {f :e Power (R :^: idx N) | face_of N f s}}.
Admitted.

// HOL Light: Multivariate/polytope.ml:795 / FACES_OF_LINEAR_IMAGE   (hash md5:5d489b64fcb4436e33dbef1886b01402)
// not bridged: 
Theorem FACES_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> {t :e Power (R :^: idx N) | face_of N t {f x | x :e s}} = {{x0 :e R :^: idx N | x0 :e {f x0 | x0 :e x}} | x :e {t :e Power (R :^: idx M) | face_of M t s}}.
Admitted.

// HOL Light: Multivariate/polytope.ml:811 / FACE_OF_CONIC   (hash md5:79bc1b8e62360eabb18e5a058e4fd0c6)
// not bridged: 
Theorem FACE_OF_CONIC : forall N:set, N <> Empty -> forall s f c= R :^: idx N, conic N s /\ face_of N f s -> conic N f.
Admitted.

// HOL Light: Multivariate/polytope.ml:843 / FACE_OF_PCROSS   (hash md5:90fa49be80d5f43fd333ce9f26e9715b)
// not bridged: 
Theorem FACE_OF_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall f s c= R :^: idx M, forall f' s' c= R :^: idx N, face_of M f s /\ face_of N f' s' -> face_of (idx_n (dimindex M + dimindex N)) (\/_ x :e f, {pastecart M N x y | y :e f'}) (\/_ x :e s, {pastecart M N x y | y :e s'}).
Admitted.

// HOL Light: Multivariate/polytope.ml:858 / FACE_OF_PCROSS_DECOMP   (hash md5:5f286bc083850a00ccf5c6d2b4a0ba6f)
// not bridged: 
Theorem FACE_OF_PCROSS_DECOMP : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall s' c= R :^: idx N, forall c c= R :^: idx_n (dimindex M + dimindex N), face_of (idx_n (dimindex M + dimindex N)) c (\/_ x :e s, {pastecart M N x y | y :e s'}) <-> exists f c= R :^: idx M, exists f' c= R :^: idx N, face_of M f s /\ (face_of N f' s' /\ c = \/_ x :e f, {pastecart M N x y | y :e f'}).
Admitted.

// HOL Light: Multivariate/polytope.ml:930 / FACE_OF_PCROSS_EQ   (hash md5:7f73e41a8619270929a89c7b44b38e06)
// not bridged: 
Theorem FACE_OF_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f s c= R :^: idx M, forall f' s' c= R :^: idx N, face_of (idx_n (dimindex M + dimindex N)) (\/_ x :e f, {pastecart M N x y | y :e f'}) (\/_ x :e s, {pastecart M N x y | y :e s'}) <-> f = Empty \/ (f' = Empty \/ face_of M f s /\ face_of N f' s').
Admitted.

// HOL Light: Multivariate/polytope.ml:939 / HYPERPLANE_FACE_OF_HALFSPACE_LE   (hash md5:1bf09c05c13c5a3559445cfbcef21cac)
// not bridged: 
Theorem HYPERPLANE_FACE_OF_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, face_of N {x :e R :^: idx N | dot N a x = b} {x :e R :^: idx N | dot N a x <= b}.
Admitted.

// HOL Light: Multivariate/polytope.ml:947 / HYPERPLANE_FACE_OF_HALFSPACE_GE   (hash md5:7f81e719c36ec11e10b3ced26e75858c)
// not bridged: 
Theorem HYPERPLANE_FACE_OF_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, face_of N {x :e R :^: idx N | dot N a x = b} {x :e R :^: idx N | b <= dot N a x}.
Admitted.

// HOL Light: Multivariate/polytope.ml:955 / FACE_OF_HALFSPACE_LE   (hash md5:0ef3ec5b74ad6d344a54944dcc60953e)
// not bridged: 
Theorem FACE_OF_HALFSPACE_LE : forall N:set, N <> Empty -> forall f c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, face_of N f {x :e R :^: idx N | dot N a x <= b} <-> f = Empty \/ (f = {x :e R :^: idx N | dot N a x = b} \/ f = {x :e R :^: idx N | dot N a x <= b}).
Admitted.

// HOL Light: Multivariate/polytope.ml:981 / FACE_OF_HALFSPACE_GE   (hash md5:7b01a7e0a83c0dcf538426b0ca82e202)
// not bridged: 
Theorem FACE_OF_HALFSPACE_GE : forall N:set, N <> Empty -> forall f c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, face_of N f {x :e R :^: idx N | b <= dot N a x} <-> f = Empty \/ (f = {x :e R :^: idx N | dot N a x = b} \/ f = {x :e R :^: idx N | b <= dot N a x}).
Admitted.

// HOL Light: Multivariate/polytope.ml:990 / RELATIVE_BOUNDARY_POINT_IN_PROPER_FACE   (hash md5:14b8f70aa5d02f64be89a8a6d46b2f17)
// not bridged: 
Theorem RELATIVE_BOUNDARY_POINT_IN_PROPER_FACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ (x :e s /\ ~ x :e relative_interior N s) -> exists f c= R :^: idx N, face_of N f s /\ (~ f = s /\ x :e f).
Admitted.

// HOL Light: Multivariate/polytope.ml:1013 / RELATIVE_FRONTIER_OF_CONVEX_CLOSED   (hash md5:859b30dad69934a838cd27a5f5948706)
// not bridged: 
Theorem RELATIVE_FRONTIER_OF_CONVEX_CLOSED : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ closed N s -> relative_frontier N s = Union {f :e Power (R :^: idx N) | face_of N f s /\ ~ f = s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:1026 / IN_RELATIVE_INTERIOR_OF_FACE   (hash md5:8bd700671c5b81d80afeb1a2f57854d5)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR_OF_FACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ x :e s -> exists f c= R :^: idx N, face_of N f s /\ x :e relative_interior N f.
Admitted.

// HOL Light: Multivariate/polytope.ml:1051 / CONVEX_FACIAL_PARTITION   (hash md5:a695a9b82a01dce469ed280771f9b870)
// not bridged: 
Theorem CONVEX_FACIAL_PARTITION : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> Union {relative_interior N f | f :e Power (R :^: idx N), face_of N f s} = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1058 / IN_RELATIVE_INTERIOR_OF_UNIQUE_FACE   (hash md5:e3f1dc5acb7cae0a13d3a27be3e1cd8e)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR_OF_UNIQUE_FACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ x :e s -> exists f c= R :^: idx N, face_of N f s /\ x :e relative_interior N f /\ forall y c= R :^: idx N, face_of N y s /\ x :e relative_interior N y -> y = f.
Admitted.

// HOL Light: Multivariate/polytope.ml:1066 / RELATIVE_INTERIOR_SUBSET_OF_PROPER_FACE   (hash md5:9d13e20e906c1e81a7ef24c48ed44421)
// not bridged: 
Theorem RELATIVE_INTERIOR_SUBSET_OF_PROPER_FACE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (t c= s /\ ~ relative_interior N t :\: relative_interior N s = Empty) -> exists f c= R :^: idx N, face_of N f s /\ (~ f = s /\ t c= f).
Admitted.

// HOL Light: Multivariate/polytope.ml:1084 / CONVEX_RELATIVE_BOUNDARY_SUBSET_OF_PROPER_FACE   (hash md5:3d96dc66b18b4ba5473f0d24226d34fc)
// not bridged: 
Theorem CONVEX_RELATIVE_BOUNDARY_SUBSET_OF_PROPER_FACE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (~ s = Empty /\ (convex N t /\ t c= s :\: relative_interior N s)) -> exists f c= R :^: idx N, face_of N f s /\ (~ f = s /\ t c= f).
Admitted.

// HOL Light: Multivariate/polytope.ml:1097 / RELATIVE_FRONTIER_FACIAL_PARTITION_ALT   (hash md5:aab5c49f628d41f12d810d8955c4059b)
// not bridged: 
Theorem RELATIVE_FRONTIER_FACIAL_PARTITION_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ closed N s -> Union {relative_interior N f | f :e Power (R :^: idx N), face_of N f s /\ ~ f = s} = relative_frontier N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1115 / RELATIVE_FRONTIER_FACIAL_PARTITION   (hash md5:d294565ab84b0dd209e37cfa944c3663)
// not bridged: 
Theorem RELATIVE_FRONTIER_FACIAL_PARTITION : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ closed N s -> Union {relative_interior N f | f :e Power (R :^: idx N), face_of N f s /\ aff_dim N f < aff_dim N s} = relative_frontier N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1128 / FRONTIER_OF_CONVEX_CLOSED   (hash md5:5b1ff7545d2cf21f800ba7e2c4028682)
// not bridged: 
Theorem FRONTIER_OF_CONVEX_CLOSED : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ closed N s -> frontier N s = Union {f :e Power (R :^: idx N) | face_of N f s /\ aff_dim N f < dimindex N}.
Admitted.

// HOL Light: Multivariate/polytope.ml:1150 / FACE_OF_INTER_AS_INTER_OF_FACE   (hash md5:c3e218b4260f7fee4632fa5029e810e4)
// not bridged: 
Theorem FACE_OF_INTER_AS_INTER_OF_FACE : forall N:set, N <> Empty -> forall s t f c= R :^: idx N, convex N s /\ (convex N t /\ face_of N f (s :/\: t)) -> exists k l c= R :^: idx N, face_of N k s /\ (face_of N l t /\ k :/\: l = f).
Admitted.

// HOL Light: Multivariate/polytope.ml:1189 / exposed_face_of   (hash md5:b4e84412091196c09149f7f81e0d28fd)
// not bridged: 
Theorem exposed_face_of_thm : forall A:set, A <> Empty -> forall t s c= R :^: idx A, exposed_face_of A t s <-> face_of A t s /\ exists a :e R :^: idx A, exists b :e R, s c= {x :e R :^: idx A | dot A a x <= b} /\ t = s :/\: {x :e R :^: idx A | dot A a x = b}.
Admitted.

// HOL Light: Multivariate/polytope.ml:1194 / EXPOSED_FACE_OF_IMP_FACE_OF   (hash md5:70a3ac9df84b0cb9767fc9bf3531ba94)
// not bridged: 
Theorem EXPOSED_FACE_OF_IMP_FACE_OF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, exposed_face_of N t s -> face_of N t s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1198 / EMPTY_EXPOSED_FACE_OF   (hash md5:a4b4cc48993e3ebec960bd6fa2f9a4e9)
// not bridged: 
Theorem EMPTY_EXPOSED_FACE_OF : forall N:set, N <> Empty -> forall s c= R :^: idx N, exposed_face_of N Empty s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1204 / EXPOSED_FACE_OF_REFL_EQ   (hash md5:1899a158c4198119f9ada2787430ac7b)
// not bridged: 
Theorem EXPOSED_FACE_OF_REFL_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, exposed_face_of N s s <-> convex N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1211 / EXPOSED_FACE_OF_REFL   (hash md5:ddb52410d7a60181ef50ba13b0565796)
// not bridged: 
Theorem EXPOSED_FACE_OF_REFL : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> exposed_face_of N s s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1215 / EXPOSED_FACE_OF   (hash md5:cf7c12260bd0b59c9de66b6389fd7ce2)
// not bridged: 
Theorem EXPOSED_FACE_OF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, exposed_face_of N t s <-> face_of N t s /\ (t = Empty \/ (t = s \/ exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ (s c= {x :e R :^: idx N | dot N a x <= b} /\ t = s :/\: {x :e R :^: idx N | dot N a x = b}))).
Admitted.

// HOL Light: Multivariate/polytope.ml:1235 / EXPOSED_FACE_OF_TRANSLATION_EQ   (hash md5:18774cbcf72255f0db46e2013436c4e3)
// not bridged: 
Theorem EXPOSED_FACE_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall f s c= R :^: idx N, exposed_face_of N {vector_add N a x | x :e f} {vector_add N a x | x :e s} <-> exposed_face_of N f s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1257 / EXPOSED_FACE_OF_LINEAR_IMAGE   (hash md5:8a5491614fa169b90652e9b75aac3605)
// not bridged: 
Theorem EXPOSED_FACE_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall c s c= R :^: idx M, linear M N f /\ ((forall x y :e R :^: idx M, f x = f y -> x = y) /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y)) -> (exposed_face_of N {f x | x :e c} {f x | x :e s} <-> exposed_face_of M c s).
Admitted.

// HOL Light: Multivariate/polytope.ml:1283 / EXPOSED_FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE   (hash md5:9254c972073452c1b5029d6f876183f7)
// not bridged: 
Theorem EXPOSED_FACE_OF_INTER_SUPPORTING_HYPERPLANE_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, convex N s /\ (forall x :e R :^: idx N, x :e s -> dot N a x <= b) -> exposed_face_of N (s :/\: {x :e R :^: idx N | dot N a x = b}) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1290 / EXPOSED_FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE   (hash md5:9530db3d77a5518478d795ab3e86c652)
// not bridged: 
Theorem EXPOSED_FACE_OF_INTER_SUPPORTING_HYPERPLANE_GE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, convex N s /\ (forall x :e R :^: idx N, x :e s -> b <= dot N a x) -> exposed_face_of N (s :/\: {x :e R :^: idx N | dot N a x = b}) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1299 / EXPOSED_FACE_OF_INTER   (hash md5:a793542d031b0ca662ccf6b80671a57a)
// not bridged: 
Theorem EXPOSED_FACE_OF_INTER : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, exposed_face_of N t s /\ exposed_face_of N u s -> exposed_face_of N (t :/\: u) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1319 / EXPOSED_FACE_OF_INTERS   (hash md5:46ea39f0206eb50ed664741a67f1839d)
// not bridged: 
Theorem EXPOSED_FACE_OF_INTERS : forall N:set, N <> Empty -> forall P c= Power (R :^: idx N), forall s c= R :^: idx N, ~ P = Empty /\ (forall t c= R :^: idx N, t :e P -> exposed_face_of N t s) -> exposed_face_of N {x :e R :^: idx N | forall Y :e P, x :e Y} s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1347 / EXPOSED_FACE_OF_SUMS   (hash md5:651e3fb57211bfa95c7adb2ae1ab65fe)
// not bridged: 
Theorem EXPOSED_FACE_OF_SUMS : forall N:set, N <> Empty -> forall s t f c= R :^: idx N, convex N s /\ (convex N t /\ exposed_face_of N f (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t})) -> exists k l c= R :^: idx N, exposed_face_of N k s /\ (exposed_face_of N l t /\ f = \/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e k /\ y :e l}).
Admitted.

// HOL Light: Multivariate/polytope.ml:1399 / EXPOSED_FACE_OF_PARALLEL   (hash md5:040df22439931448504a15f2c8bda6bc)
// not bridged: 
Theorem EXPOSED_FACE_OF_PARALLEL : forall N:set, N <> Empty -> forall t s c= R :^: idx N, exposed_face_of N t s <-> face_of N t s /\ exists a :e R :^: idx N, exists b :e R, s c= {x :e R :^: idx N | dot N a x <= b} /\ (t = s :/\: {x :e R :^: idx N | dot N a x = b} /\ ((~ t = Empty /\ ~ t = s -> ~ a = vec N 0) /\ forall w :e R :^: idx N, w :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ ~ t = s -> vector_add N w a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1462 / RELATIVE_BOUNDARY_POINT_IN_EXPOSED_FACE   (hash md5:116baa6624376686cf9e4e0bebb660aa)
// not bridged: 
Theorem RELATIVE_BOUNDARY_POINT_IN_EXPOSED_FACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ (x :e s /\ ~ x :e relative_interior N s) -> exists f c= R :^: idx N, exposed_face_of N f s /\ (~ f = s /\ x :e f).
Admitted.

// HOL Light: Multivariate/polytope.ml:1488 / extreme_point_of   (hash md5:28efa76f56e9fa76468ff62302403f78)
// not bridged: 
Theorem extreme_point_of_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, extreme_point_of A x s <-> x :e s /\ forall a b :e R :^: idx A, a :e s /\ b :e s -> ~ x :e open_segment A (a,b).
Admitted.

// HOL Light: Multivariate/polytope.ml:1492 / EXTREME_POINT_RELATIVE_FRONTIER   (hash md5:9a6af5cb4d2afbb5395bedc755e0532d)
// not bridged: 
Theorem EXTREME_POINT_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ (x :e s :\: relative_interior N s /\ (forall a b :e R :^: idx N, {a,b} c= s :\: relative_interior N s -> ~ x :e open_segment N (a,b))) -> extreme_point_of N x s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1505 / EXTREME_POINT_OF_STILLCONVEX_IMP   (hash md5:bab18740e38045dfd152295f9876e881)
// not bridged: 
Theorem EXTREME_POINT_OF_STILLCONVEX_IMP : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, x :e s /\ convex N (s :\: {x}) -> extreme_point_of N x s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1511 / EXTREME_POINTS_OF_STILLCONVEX   (hash md5:c25017dcae9a919534ee257fa4a3b982)
// not bridged: 
Theorem EXTREME_POINTS_OF_STILLCONVEX : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ t c= {x :e R :^: idx N | extreme_point_of N x s} -> convex N (s :\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:1517 / EXTREME_POINT_OF_STILLCONVEX   (hash md5:50255df46fe468dc67266bb4cdcc013d)
// not bridged: 
Theorem EXTREME_POINT_OF_STILLCONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s -> (extreme_point_of N x s <-> x :e s /\ convex N (s :\: {x})).
Admitted.

// HOL Light: Multivariate/polytope.ml:1524 / FACE_OF_SING   (hash md5:af6ffa487a0d0a53b0e3eaa0768ecc20)
// not bridged: 
Theorem FACE_OF_SING : forall A:set, A <> Empty -> forall x :e R :^: idx A, forall s c= R :^: idx A, face_of A {x} s <-> extreme_point_of A x s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1529 / FACE_OF_AFF_DIM_0   (hash md5:ed3d12e090a9ab4020b4c3dbe88b67b9)
// not bridged: 
Theorem FACE_OF_AFF_DIM_0 : forall N:set, N <> Empty -> forall s f c= R :^: idx N, face_of N f s /\ aff_dim N f = 0 <-> exists a :e R :^: idx N, extreme_point_of N a s /\ f = {a}.
Admitted.

// HOL Light: Multivariate/polytope.ml:1534 / EXTREME_POINT_NOT_IN_RELATIVE_INTERIOR   (hash md5:d1ef09920cacaa8c60e71cf45119e6e4)
// not bridged: 
Theorem EXTREME_POINT_NOT_IN_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, extreme_point_of N x s /\ ~ s = {x} -> ~ x :e relative_interior N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1543 / EXTREME_POINT_NOT_IN_INTERIOR   (hash md5:b881599f40cff1b5e0353772617e0a89)
// not bridged: 
Theorem EXTREME_POINT_NOT_IN_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, extreme_point_of N x s -> ~ x :e interior N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1551 / EXTREME_POINT_IN_RELATIVE_FRONTIER   (hash md5:cafad003ddf12287dba6477acd2e12f6)
// not bridged: 
Theorem EXTREME_POINT_IN_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, extreme_point_of N x s /\ ~ s = {x} -> x :e relative_frontier N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1558 / EXTREME_POINT_IN_FRONTIER   (hash md5:c6e0eb8351a992e384e4f89719dc1abf)
// not bridged: 
Theorem EXTREME_POINT_IN_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, extreme_point_of N x s -> x :e frontier N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1563 / EXTREME_POINT_OF_FACE   (hash md5:beaf27eb2894dcad643fc2639ea7c351)
// not bridged: 
Theorem EXTREME_POINT_OF_FACE : forall A:set, A <> Empty -> forall f s c= R :^: idx A, forall v :e R :^: idx A, face_of A f s -> (extreme_point_of A v f <-> extreme_point_of A v s /\ v :e f).
Admitted.

// HOL Light: Multivariate/polytope.ml:1568 / EXTREME_POINT_OF_MIDPOINT   (hash md5:10e06c0781e215cadf39b7d028c93ec6)
// not bridged: 
Theorem EXTREME_POINT_OF_MIDPOINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s -> (extreme_point_of N x s <-> x :e s /\ forall a b :e R :^: idx N, a :e s /\ (b :e s /\ x = midpoint N (a,b)) -> x = a /\ x = b).
Admitted.

// HOL Light: Multivariate/polytope.ml:1602 / EXTREME_POINT_OF_CONVEX_HULL   (hash md5:713214dab2decabe9bcd3e516d790e73)
// not bridged: 
Theorem EXTREME_POINT_OF_CONVEX_HULL : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= R :^: idx N, extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s) -> x :e s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1612 / EXTREME_POINTS_OF_CONVEX_HULL   (hash md5:1585aa216068bf44226739a38b7c3403)
// not bridged: 
Theorem EXTREME_POINTS_OF_CONVEX_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, {x :e R :^: idx A | extreme_point_of A x (hull (R :^: idx A) {x0 :e Power (R :^: idx A) | convex A x0} s)} c= s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1616 / EXTREME_POINT_OF_EMPTY   (hash md5:dfd805163936a2a65d6498436255811e)
// not bridged: 
Theorem EXTREME_POINT_OF_EMPTY : forall A:set, A <> Empty -> forall x :e R :^: idx A, ~ extreme_point_of A x Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:1620 / EXTREME_POINT_OF_SING   (hash md5:5f0eca3cb27b36f770c993d13c3a853f)
// not bridged: 
Theorem EXTREME_POINT_OF_SING : forall A:set, A <> Empty -> forall a x :e R :^: idx A, extreme_point_of A x {a} <-> x = a.
Admitted.

// HOL Light: Multivariate/polytope.ml:1625 / EXTREME_POINT_OF_TRANSLATION_EQ   (hash md5:ac23a6d15bd1e3b321e1caf200deca86)
// not bridged: 
Theorem EXTREME_POINT_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a x :e R :^: idx N, forall s c= R :^: idx N, extreme_point_of N (vector_add N a x) {vector_add N a x0 | x0 :e s} <-> extreme_point_of N x s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1633 / EXTREME_POINT_OF_LINEAR_IMAGE   (hash md5:b60b723dea1ed27434e9c4d1bde53bca)
// not bridged: 
Theorem EXTREME_POINT_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall x :e R :^: idx M, forall s c= R :^: idx M, forall f:set -> set, (forall x0 :e R :^: idx M, f x0 :e R :^: idx N) -> linear M N f /\ (forall x0 y :e R :^: idx M, f x0 = f y -> x0 = y) -> (extreme_point_of N (f x) {f x | x :e s} <-> extreme_point_of M x s).
Admitted.

// HOL Light: Multivariate/polytope.ml:1641 / EXTREME_POINTS_OF_TRANSLATION   (hash md5:a502b512f1f8c55b0b6163e9c212d57d)
// not bridged: 
Theorem EXTREME_POINTS_OF_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, {x :e R :^: idx N | extreme_point_of N x {vector_add N a x0 | x0 :e s}} = {vector_add N a x | x :e {x :e R :^: idx N | extreme_point_of N x s}}.
Admitted.

// HOL Light: Multivariate/polytope.ml:1649 / EXTREME_POINT_OF_INTER   (hash md5:081cc2f9d7f8e3aa7a1c1ee3782e64af)
// not bridged: 
Theorem EXTREME_POINT_OF_INTER : forall A:set, A <> Empty -> forall x :e R :^: idx A, forall s t c= R :^: idx A, extreme_point_of A x s /\ extreme_point_of A x t -> extreme_point_of A x (s :/\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:1654 / EXTREME_POINT_OF_INTER_GEN   (hash md5:ee5c0bca55914970de87fbe968a12810)
// not bridged: 
Theorem EXTREME_POINT_OF_INTER_GEN : forall A:set, A <> Empty -> forall x :e R :^: idx A, forall s t c= R :^: idx A, (extreme_point_of A x s \/ extreme_point_of A x t) /\ x :e s :/\: t -> extreme_point_of A x (s :/\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:1659 / EXTREME_POINTS_OF_LINEAR_IMAGE   (hash md5:117d5d9547402c51a92757ed8906c86b)
// not bridged: 
Theorem EXTREME_POINTS_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> {y :e R :^: idx N | extreme_point_of N y {f x | x :e s}} = {f x | x :e {x :e R :^: idx M | extreme_point_of M x s}}.
Admitted.

// HOL Light: Multivariate/polytope.ml:1673 / EXTREME_POINT_OF_INTER_SUPPORTING_HYPERPLANE_LE   (hash md5:5391cbf3bf7a8086bc0392bf729f4f09)
// not bridged: 
Theorem EXTREME_POINT_OF_INTER_SUPPORTING_HYPERPLANE_LE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a :e R :^: idx A, forall b :e R, forall c :e R :^: idx A, (forall x :e R :^: idx A, x :e s -> dot A a x <= b) /\ s :/\: {x :e R :^: idx A | dot A a x = b} = {c} -> extreme_point_of A c s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1682 / EXTREME_POINT_OF_INTER_SUPPORTING_HYPERPLANE_GE   (hash md5:b66d3ed3e87f68f3819cfd4fa745b301)
// not bridged: 
Theorem EXTREME_POINT_OF_INTER_SUPPORTING_HYPERPLANE_GE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a :e R :^: idx A, forall b :e R, forall c :e R :^: idx A, (forall x :e R :^: idx A, x :e s -> b <= dot A a x) /\ s :/\: {x :e R :^: idx A | dot A a x = b} = {c} -> extreme_point_of A c s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1691 / EXPOSED_POINT_OF_INTER_SUPPORTING_HYPERPLANE_LE   (hash md5:2845401930a37d995c9344f260281fd8)
// not bridged: 
Theorem EXPOSED_POINT_OF_INTER_SUPPORTING_HYPERPLANE_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, forall c :e R :^: idx N, (forall x :e R :^: idx N, x :e s -> dot N a x <= b) /\ s :/\: {x :e R :^: idx N | dot N a x = b} = {c} -> exposed_face_of N {c} s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1702 / EXPOSED_POINT_OF_INTER_SUPPORTING_HYPERPLANE_GE   (hash md5:59fffa53880457bf996e4471fd939ad1)
// not bridged: 
Theorem EXPOSED_POINT_OF_INTER_SUPPORTING_HYPERPLANE_GE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, forall c :e R :^: idx N, (forall x :e R :^: idx N, x :e s -> b <= dot N a x) /\ s :/\: {x :e R :^: idx N | dot N a x = b} = {c} -> exposed_face_of N {c} s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1712 / EXPOSED_POINT_OF_FURTHEST_POINT   (hash md5:15dc2c80491746d3674a42468f01de4a)
// not bridged: 
Theorem EXPOSED_POINT_OF_FURTHEST_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, b :e s /\ (forall x :e R :^: idx N, x :e s -> distance N (a,x) <= distance N (a,b)) -> exposed_face_of N {b} s.
Admitted.

// HOL Light: Multivariate/polytope.ml:1733 / COLLINEAR_EXTREME_POINTS   (hash md5:2e93c12514a9588be94169ecc54e879a)
// not bridged: 
Theorem COLLINEAR_EXTREME_POINTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, collinear N s -> finite {x :e R :^: idx N | extreme_point_of N x s} /\ finite_cardinality {x :e R :^: idx N | extreme_point_of N x s} <= 2.
Admitted.

// HOL Light: Multivariate/polytope.ml:1758 / EXTREME_POINT_OF_CONIC   (hash md5:995a4ff45b910772d0f0b85fa5bd1ebc)
// not bridged: 
Theorem EXTREME_POINT_OF_CONIC : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, conic N s /\ extreme_point_of N x s -> x = vec N 0.
Admitted.

// HOL Light: Multivariate/polytope.ml:1767 / EXTREME_POINT_OF_CONVEX_HULL_INSERT   (hash md5:ae498ebf71b876b7e0b4387f6379fcd3)
// not bridged: 
Theorem EXTREME_POINT_OF_CONVEX_HULL_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, finite s /\ ~ a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s -> extreme_point_of N a (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s a)).
Admitted.

// HOL Light: Multivariate/polytope.ml:1780 / FACE_OF_CONIC_HULL   (hash md5:f9fe7ca3ea0170ec4d5bb02110a05d31)
// not bridged: 
Theorem FACE_OF_CONIC_HULL : forall N:set, N <> Empty -> forall f s c= R :^: idx N, face_of N f s /\ ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> face_of N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} f) (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:1856 / FACE_OF_CONIC_HULL_REV   (hash md5:9d9cb6034eb498f681022632eac76bd0)
// not bridged: 
Theorem FACE_OF_CONIC_HULL_REV : forall N:set, N <> Empty -> forall s f c= R :^: idx N, face_of N f (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) /\ ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> f = {vec N 0} \/ exists f' c= R :^: idx N, face_of N f' s /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} f' = f.
Admitted.

// HOL Light: Multivariate/polytope.ml:1893 / EXTREME_POINT_OF_CONIC_HULL   (hash md5:7a2df2fbe8073edb40bcc69fc5955f08)
// not bridged: 
Theorem EXTREME_POINT_OF_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, ~ vec N 0 :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s -> (extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | conic N x0} s) <-> x = vec N 0 /\ ~ s = Empty).
Admitted.

// HOL Light: Multivariate/polytope.ml:1931 / FACE_OF_CONIC_HULL_EQ   (hash md5:8749cb4f748bacf64524371b8abbe784)
// not bridged: 
Theorem FACE_OF_CONIC_HULL_EQ : forall N:set, N <> Empty -> forall s f c= R :^: idx N, ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> (face_of N f (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) <-> f = {vec N 0} /\ ~ s = Empty \/ exists f' c= R :^: idx N, face_of N f' s /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} f' = f).
Admitted.

// HOL Light: Multivariate/polytope.ml:1945 / EXTREME_POINT_OF_CBALL   (hash md5:80d632b2ec124cb9ac8062333cddc5b7)
// not bridged: 
Theorem EXTREME_POINT_OF_CBALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall x :e R :^: idx N, extreme_point_of N x (cball N (a,r)) <-> x :e sphere N (a,r).
Admitted.

// HOL Light: Multivariate/polytope.ml:1964 / CLOSED_IN_CONIC_HULL   (hash md5:2ceebb463ee48a05e8fd57838e46d272)
// not bridged: 
Theorem CLOSED_IN_CONIC_HULL : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact N t /\ (~ vec N 0 :e t /\ t c= s) -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s)) (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} t).
Admitted.

// HOL Light: Multivariate/polytope.ml:2012 / CLOSED_CONIC_HULL   (hash md5:73432a9394ff2619ebaadc8fca119594)
// not bridged: 
Theorem CLOSED_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e relative_interior N s \/ compact N s /\ ~ vec N 0 :e s -> closed N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2022 / CONIC_CLOSURE   (hash md5:7c49da8580e5d1ab6aaac4dc6cf72b09)
// not bridged: 
Theorem CONIC_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s -> conic N (closure N s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2030 / CLOSURE_CONIC_HULL   (hash md5:8ac52c2c28c1b94a3bed09bf2d03e7ab)
// not bridged: 
Theorem CLOSURE_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e relative_interior N s \/ bounded_hl N s /\ ~ vec N 0 :e closure N s -> closure N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) = hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (closure N s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2049 / OPEN_IN_SAME_CONIC_HULL   (hash md5:c90258d900ddeec2c242668b20216ef5)
// not bridged: 
Theorem OPEN_IN_SAME_CONIC_HULL : forall N:set, N <> Empty -> forall u s c= R :^: idx N, conic N u /\ s :e subtopology (R :^: idx N) (euclidean N) u -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s :\: {vec N 0} :e subtopology (R :^: idx N) (euclidean N) u.
Admitted.

// HOL Light: Multivariate/polytope.ml:2073 / OPEN_CONIC_HULL   (hash md5:52e3a7133d3bb55114badf789392d539)
// not bridged: 
Theorem OPEN_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s -> open N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s :\: {vec N 0}).
Admitted.

// HOL Light: Multivariate/polytope.ml:2079 / OPEN_IN_CONIC_HULL   (hash md5:d8cbd6fa0f5b1629cf1f335a3ccb440e)
// not bridged: 
Theorem OPEN_IN_CONIC_HULL : forall N:set, N <> Empty -> forall u s c= R :^: idx N, s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} u) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s :\: {vec N 0} :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} u)).
Admitted.

// HOL Light: Multivariate/polytope.ml:2194 / CONIC_INTERIOR_INSERT   (hash md5:d796fd2f3a88ae94df4f372f9785b2b1)
// not bridged: 
Theorem CONIC_INTERIOR_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s -> conic N (SetAdjoin (interior N s) (vec N 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:2216 / CONIC_INTERIOR   (hash md5:9509ab17a643621875c86798af5330cc)
// not bridged: 
Theorem CONIC_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s /\ vec N 0 :e interior N s -> conic N (interior N s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2220 / CONIC_RELATIVE_INTERIOR_INSERT   (hash md5:41ca9264383b7c713476eabb72502d5e)
// not bridged: 
Theorem CONIC_RELATIVE_INTERIOR_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s -> conic N (SetAdjoin (relative_interior N s) (vec N 0)).
Admitted.

// HOL Light: Multivariate/polytope.ml:2249 / CONIC_RELATIVE_INTERIOR   (hash md5:eb1cc88eb04dee4f7d401dc2a6e97903)
// not bridged: 
Theorem CONIC_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s /\ vec N 0 :e relative_interior N s -> conic N (relative_interior N s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2256 / CONIC_HULL_RELATIVE_INTERIOR_SUBSET   (hash md5:1638e3081a06b8d2b19e012a0528d675)
// not bridged: 
Theorem CONIC_HULL_RELATIVE_INTERIOR_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (relative_interior N s) :\: {vec N 0} c= relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2267 / CONIC_SUBSET_AS_CONIC_HULL   (hash md5:57cec04e61c1b48689a4ceef34b2f1c9)
// not bridged: 
Theorem CONIC_SUBSET_AS_CONIC_HULL : forall N:set, N <> Empty -> forall s c c= R :^: idx N, conic N c /\ (~ c = {vec N 0} /\ c c= hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (s :/\: c) = c.
Admitted.

// HOL Light: Multivariate/polytope.ml:2300 / RELATIVE_INTERIOR_CONIC_HULL   (hash md5:16addb606b7785b01b748ecf75560bce)
// not bridged: 
Theorem RELATIVE_INTERIOR_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) = hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (relative_interior N s) :\: {vec N 0}.
Admitted.

// HOL Light: Multivariate/polytope.ml:2353 / CONIC_HULL_RELATIVE_INTERIOR   (hash md5:1e68cffbc12f45abb539ec84aea5bd38)
// not bridged: 
Theorem CONIC_HULL_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (relative_interior N s) = if relative_interior N s = Empty then Empty else SetAdjoin (relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s)) (vec N 0).
Admitted.

// HOL Light: Multivariate/polytope.ml:2365 / CONIC_HULL_DIFF   (hash md5:92ac08c0a61232a3ade3c73e620fb646)
// not bridged: 
Theorem CONIC_HULL_DIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ t c= s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (s :\: t) = if t = s then Empty else hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s :\: (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} t :\: {vec N 0}).
Admitted.

// HOL Light: Multivariate/polytope.ml:2398 / CONIC_HULL_INTER   (hash md5:0e1876f28f4fb7def7c1074d5652ad28)
// not bridged: 
Theorem CONIC_HULL_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (s :\/: t) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (s :/\: t) = if s :/\: t = Empty then Empty else hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} t.
Admitted.

// HOL Light: Multivariate/polytope.ml:2431 / INTER_CONIC_HULL_SUBSETS_CONVEX_RELATIVE_FRONTIER   (hash md5:df7936f77bc6f00b326344675995d412)
// not bridged: 
Theorem INTER_CONIC_HULL_SUBSETS_CONVEX_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, convex N u /\ (vec N 0 :e relative_interior N u /\ s :\/: t c= relative_frontier N u) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} t = if s = Empty \/ t = Empty then Empty else if s :/\: t = Empty then {vec N 0} else hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (s :/\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:2505 / RELATIVE_FRONTIER_CONIC_HULL   (hash md5:2bc80529c0a524779902bcdfa2a0ae67)
// not bridged: 
Theorem RELATIVE_FRONTIER_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> relative_frontier N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) = if exists a :e R :^: idx N, s = {a} then {vec N 0} else hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (relative_frontier N s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2539 / CONIC_HULL_RELATIVE_FRONTIER   (hash md5:8f25d92081752b4cf12e9d76294e9af9)
// not bridged: 
Theorem CONIC_HULL_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (relative_frontier N s) = if exists a :e R :^: idx N, s = {a} then Empty else relative_frontier N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2550 / INTER_CONIC_HULL   (hash md5:4f5a0f931292e6473c82a2f0364a434b)
// not bridged: 
Theorem INTER_CONIC_HULL : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (s :\/: t) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} t = if s = Empty \/ t = Empty then Empty else if s :/\: t = Empty then {vec N 0} else hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (s :/\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:2579 / RELATIVE_INTERIOR_CONIC_HULL_0   (hash md5:1e561b236d5ceab2eeb776dd2f517d33)
// not bridged: 
Theorem RELATIVE_INTERIOR_CONIC_HULL_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> (vec N 0 :e relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) <-> vec N 0 :e relative_interior N s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2620 / facet_of   (hash md5:5702ecf9cbb71e5c16e6b68030891bcb)
// not bridged: 
Theorem facet_of_thm : forall A:set, A <> Empty -> forall f s c= R :^: idx A, facet_of A f s <-> face_of A f s /\ (~ f = Empty /\ aff_dim A f = aff_dim A s + - 1).
Admitted.

// HOL Light: Multivariate/polytope.ml:2623 / FACET_OF_EMPTY   (hash md5:583286880c657aa7c412c517768b6d8a)
// not bridged: 
Theorem FACET_OF_EMPTY : forall A:set, A <> Empty -> forall s c= R :^: idx A, ~ facet_of A s Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:2627 / FACET_OF_REFL   (hash md5:95bae123e695d268beb90f7133903fec)
// not bridged: 
Theorem FACET_OF_REFL : forall A:set, A <> Empty -> forall s c= R :^: idx A, ~ facet_of A s s.
Admitted.

// HOL Light: Multivariate/polytope.ml:2631 / FACET_OF_IMP_FACE_OF   (hash md5:efc4cbd964f6a4b99c7fbeeaeb6d9a4f)
// not bridged: 
Theorem FACET_OF_IMP_FACE_OF : forall A:set, A <> Empty -> forall f s c= R :^: idx A, facet_of A f s -> face_of A f s.
Admitted.

// HOL Light: Multivariate/polytope.ml:2635 / FACET_OF_IMP_SUBSET   (hash md5:3f4be4a9d35a6376e5b184c09c7ea261)
// not bridged: 
Theorem FACET_OF_IMP_SUBSET : forall A:set, A <> Empty -> forall f s c= R :^: idx A, facet_of A f s -> f c= s.
Admitted.

// HOL Light: Multivariate/polytope.ml:2639 / FACET_OF_IMP_PROPER   (hash md5:aa9ecb27cba468b2f4f99bcc59bca824)
// not bridged: 
Theorem FACET_OF_IMP_PROPER : forall A:set, A <> Empty -> forall f s c= R :^: idx A, facet_of A f s -> ~ f = Empty /\ ~ f = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:2643 / FACET_OF_TRANSLATION_EQ   (hash md5:f96e37d42d67d7817a1fd1425beba4cb)
// not bridged: 
Theorem FACET_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall f s c= R :^: idx N, facet_of N {vector_add N a x | x :e f} {vector_add N a x | x :e s} <-> facet_of N f s.
Admitted.

// HOL Light: Multivariate/polytope.ml:2650 / FACET_OF_LINEAR_IMAGE   (hash md5:6d17a68d7592edf5fe657fc73251ccc5)
// not bridged: 
Theorem FACET_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall c s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (facet_of N {f x | x :e c} {f x | x :e s} <-> facet_of M c s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2658 / HYPERPLANE_FACET_OF_HALFSPACE_LE   (hash md5:9b090829f5cb08e27700a88920e5cd34)
// not bridged: 
Theorem HYPERPLANE_FACET_OF_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, ~ a = vec N 0 -> facet_of N {x :e R :^: idx N | dot N a x = b} {x :e R :^: idx N | dot N a x <= b}.
Admitted.

// HOL Light: Multivariate/polytope.ml:2664 / HYPERPLANE_FACET_OF_HALFSPACE_GE   (hash md5:6426f2832c2305e2f25a017066dd52f9)
// not bridged: 
Theorem HYPERPLANE_FACET_OF_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, ~ a = vec N 0 -> facet_of N {x :e R :^: idx N | dot N a x = b} {x :e R :^: idx N | b <= dot N a x}.
Admitted.

// HOL Light: Multivariate/polytope.ml:2670 / FACET_OF_HALFSPACE_LE   (hash md5:5908ade5aa53ce71b77e46553ab512f6)
// not bridged: 
Theorem FACET_OF_HALFSPACE_LE : forall N:set, N <> Empty -> forall f c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, facet_of N f {x :e R :^: idx N | dot N a x <= b} <-> ~ a = vec N 0 /\ f = {x :e R :^: idx N | dot N a x = b}.
Admitted.

// HOL Light: Multivariate/polytope.ml:2688 / FACET_OF_HALFSPACE_GE   (hash md5:4c6c9c7ffe230910e6af4b2d24628587)
// not bridged: 
Theorem FACET_OF_HALFSPACE_GE : forall N:set, N <> Empty -> forall f c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, facet_of N f {x :e R :^: idx N | b <= dot N a x} <-> ~ a = vec N 0 /\ f = {x :e R :^: idx N | dot N a x = b}.
Admitted.

// HOL Light: Multivariate/polytope.ml:2697 / EXPOSED_FACET_OF   (hash md5:68e4beafe516f2dd8931cc1c686a3b7a)
// not bridged: 
Theorem EXPOSED_FACET_OF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ facet_of N t s -> exposed_face_of N t s.
Admitted.

// HOL Light: Multivariate/polytope.ml:2730 / OPEN_IN_RELATIVE_FRONTIER_INTERIOR_FACET   (hash md5:9d5c056d6541f1e78f4aef5e48a6b7ae)
// not bridged: 
Theorem OPEN_IN_RELATIVE_FRONTIER_INTERIOR_FACET : forall N:set, N <> Empty -> forall s f c= R :^: idx N, convex N s /\ facet_of N f s -> relative_interior N f :e subtopology (R :^: idx N) (euclidean N) (relative_frontier N s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2779 / CLOSED_EXTREME_POINTS_2D   (hash md5:906759a02bef85b952abfa0398288f82)
// not bridged: 
Theorem CLOSED_EXTREME_POINTS_2D : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s /\ (convex N s /\ aff_dim N s <= 2) -> closed N {x :e R :^: idx N | extreme_point_of N x s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:2847 / edge_of   (hash md5:461e35a3376a95873e10849bd204b8d6)
// not bridged: 
Theorem edge_of_thm : forall A:set, A <> Empty -> forall s e0 c= R :^: idx A, edge_of A e0 s <-> face_of A e0 s /\ aff_dim A e0 = 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:2850 / EDGE_OF_TRANSLATION_EQ   (hash md5:77857012f0040d69e4718100531294e4)
// not bridged: 
Theorem EDGE_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall f s c= R :^: idx N, edge_of N {vector_add N a x | x :e f} {vector_add N a x | x :e s} <-> edge_of N f s.
Admitted.

// HOL Light: Multivariate/polytope.ml:2857 / EDGE_OF_LINEAR_IMAGE   (hash md5:45b4d1f61220c0a84901d1bd38419769)
// not bridged: 
Theorem EDGE_OF_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall c s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (edge_of N {f x | x :e c} {f x | x :e s} <-> edge_of M c s).
Admitted.

// HOL Light: Multivariate/polytope.ml:2865 / EDGE_OF_IMP_SUBSET   (hash md5:82a0d39c2adec69638e933d04bfaa114)
// not bridged: 
Theorem EDGE_OF_IMP_SUBSET : forall A:set, A <> Empty -> forall s t c= R :^: idx A, edge_of A s t -> s c= t.
Admitted.

// HOL Light: Multivariate/polytope.ml:2873 / EXTREME_POINT_EXISTS_CONVEX   (hash md5:abbb45f95c51b4620e141b2c92b933e9)
// not bridged: 
Theorem EXTREME_POINT_EXISTS_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ (convex N s /\ ~ s = Empty) -> exists x :e R :^: idx N, extreme_point_of N x s.
Admitted.

// HOL Light: Multivariate/polytope.ml:2908 / KREIN_MILMAN   (hash md5:edf8f6bce5a1ba62b8533cb96486d941)
// not bridged: 
Theorem KREIN_MILMAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ compact N s -> s = closure N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {x :e R :^: idx N | extreme_point_of N x s}).
Admitted.

// HOL Light: Multivariate/polytope.ml:2968 / KREIN_MILMAN_MINKOWSKI   (hash md5:757e1f475e0bc09230b71db4c28ccc4b)
// not bridged: 
Theorem KREIN_MILMAN_MINKOWSKI : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ compact N s -> s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {x :e R :^: idx N | extreme_point_of N x s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:3037 / KREIN_MILMAN_EQ   (hash md5:e0e3a974bc1a72dcf1e61f1a3990619d)
// not bridged: 
Theorem KREIN_MILMAN_EQ : forall N:set, N <> Empty -> forall s e0 c= R :^: idx N, compact N s /\ convex N s -> (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} e0 = s <-> e0 c= s /\ {x :e R :^: idx N | extreme_point_of N x s} c= e0).
Admitted.

// HOL Light: Multivariate/polytope.ml:3056 / KREIN_MILMAN_POLYTOPE   (hash md5:55c1f3fa9cd75588548dcb7a315363b8)
// not bridged: 
Theorem KREIN_MILMAN_POLYTOPE : forall A:set, A <> Empty -> forall s c= R :^: idx A, finite s -> hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s = hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} {x :e R :^: idx A | extreme_point_of A x (hull (R :^: idx A) {x0 :e Power (R :^: idx A) | convex A x0} s)}.
Admitted.

// HOL Light: Multivariate/polytope.ml:3063 / EXTREME_POINTS_OF_CONVEX_HULL_EQ   (hash md5:05358aac9c81dd1998b12a280feb3a87)
// not bridged: 
Theorem EXTREME_POINTS_OF_CONVEX_HULL_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ (forall t c= R :^: idx N, t c= s /\ t <> s -> ~ hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) -> {x :e R :^: idx N | extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s)} = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:3076 / EXTREME_POINT_OF_CONVEX_HULL_EQ   (hash md5:fe8852b283ac73b4be37a5ac3acbe9e6)
// not bridged: 
Theorem EXTREME_POINT_OF_CONVEX_HULL_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, compact N s /\ (forall t c= R :^: idx N, t c= s /\ t <> s -> ~ hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} t = hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s) -> (extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s) <-> x :e s).
Admitted.

// HOL Light: Multivariate/polytope.ml:3085 / EXTREME_POINT_OF_CONVEX_HULL_CONVEX_INDEPENDENT   (hash md5:f7c520e771ddbb584ea90e2a642eaa6d)
// not bridged: 
Theorem EXTREME_POINT_OF_CONVEX_HULL_CONVEX_INDEPENDENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, compact N s /\ (forall a :e R :^: idx N, a :e s -> ~ a :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} (s :\: {a})) -> (extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s) <-> x :e s).
Admitted.

// HOL Light: Multivariate/polytope.ml:3102 / EXTREME_POINT_OF_CONVEX_HULL_AFFINE_INDEPENDENT   (hash md5:1e575603464de1a7de97eac2fd36b491)
// not bridged: 
Theorem EXTREME_POINT_OF_CONVEX_HULL_AFFINE_INDEPENDENT : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, ~ affine_dependent A s -> (extreme_point_of A x (hull (R :^: idx A) {x0 :e Power (R :^: idx A) | convex A x0} s) <-> x :e s).
Admitted.

// HOL Light: Multivariate/polytope.ml:3111 / EXTREME_POINTS_OF_CONVEX_HULL_AFFINE_INDEPENDENT   (hash md5:ea29392c9d54f7c803f83009efaa9266)
// not bridged: 
Theorem EXTREME_POINTS_OF_CONVEX_HULL_AFFINE_INDEPENDENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> {x :e R :^: idx N | extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s)} = s.
Admitted.

// HOL Light: Multivariate/polytope.ml:3117 / SIMPLEX_VERTICES_UNIQUE   (hash md5:478fb27877edb88a437183d423114dcc)
// not bridged: 
Theorem SIMPLEX_VERTICES_UNIQUE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ affine_dependent N s /\ (~ affine_dependent N t /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t) -> s = t.
Admitted.

// HOL Light: Multivariate/polytope.ml:3125 / EXTREME_POINT_OF_CONVEX_HULL_2   (hash md5:5c20814e85d9438f952fcd1a5a6c8384)
// not bridged: 
Theorem EXTREME_POINT_OF_CONVEX_HULL_2 : forall A:set, A <> Empty -> forall a b x :e R :^: idx A, extreme_point_of A x (hull (R :^: idx A) {x0 :e Power (R :^: idx A) | convex A x0} {a,b}) <-> x = a \/ x = b.
Admitted.

// HOL Light: Multivariate/polytope.ml:3131 / EXTREME_POINT_OF_SEGMENT   (hash md5:a92c5162a2f2ab99e07a77c24bd495ca)
// not bridged: 
Theorem EXTREME_POINT_OF_SEGMENT : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, extreme_point_of N x (closed_segment N (seq_cons (a,b) seq_nil)) <-> x = a \/ x = b.
Admitted.

// HOL Light: Multivariate/polytope.ml:3135 / FACE_OF_CONVEX_HULL_SUBSET   (hash md5:0592727d548efc6b715d797dbb9f1840)
// not bridged: 
Theorem FACE_OF_CONVEX_HULL_SUBSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact N s /\ face_of N t (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) -> exists s' c= R :^: idx N, s' c= s /\ t = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s'.
Admitted.

// HOL Light: Multivariate/polytope.ml:3148 / FACE_OF_CONVEX_HULL_AFFINE_INDEPENDENT   (hash md5:8d6559c88034311a07462867fa19638d)
// not bridged: 
Theorem FACE_OF_CONVEX_HULL_AFFINE_INDEPENDENT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ affine_dependent N s -> (face_of N t (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) <-> exists c c= R :^: idx N, c c= s /\ t = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} c).
Admitted.

// HOL Light: Multivariate/polytope.ml:3166 / FACET_OF_CONVEX_HULL_AFFINE_INDEPENDENT   (hash md5:12348c7afdcc1381dc21dc2e1d98ea31)
// not bridged: 
Theorem FACET_OF_CONVEX_HULL_AFFINE_INDEPENDENT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ affine_dependent N s -> (facet_of N t (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) <-> ~ t = Empty /\ exists u :e R :^: idx N, u :e s /\ t = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\: {u})).
Admitted.

// HOL Light: Multivariate/polytope.ml:3211 / FACET_OF_CONVEX_HULL_AFFINE_INDEPENDENT_ALT   (hash md5:1fdceee2def8660442cd313b11ebad87)
// not bridged: 
Theorem FACET_OF_CONVEX_HULL_AFFINE_INDEPENDENT_ALT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ affine_dependent N s -> (facet_of N t (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) <-> 2 <= finite_cardinality s /\ exists u :e R :^: idx N, u :e s /\ t = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\: {u})).
Admitted.

// HOL Light: Multivariate/polytope.ml:3232 / SEGMENT_FACE_OF   (hash md5:0c5938af8039a0797d1ab132d74277e3)
// not bridged: 
Theorem SEGMENT_FACE_OF : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, face_of N (closed_segment N (seq_cons (a,b) seq_nil)) s -> extreme_point_of N a s /\ extreme_point_of N b s.
Admitted.

// HOL Light: Multivariate/polytope.ml:3239 / SEGMENT_EDGE_OF   (hash md5:0d5947fdc6a5e81bdfd760aa2e4d1f78)
// not bridged: 
Theorem SEGMENT_EDGE_OF : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, edge_of N (closed_segment N (seq_cons (a,b) seq_nil)) s -> ~ a = b /\ (extreme_point_of N a s /\ extreme_point_of N b s).
Admitted.

// HOL Light: Multivariate/polytope.ml:3248 / EXTREME_POINT_OF_CONVEX_HULL_INSERT_EQ   (hash md5:eb7f499c9e10d75b3e9bcc8eca9ea934)
// not bridged: 
Theorem EXTREME_POINT_OF_CONVEX_HULL_INSERT_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x :e R :^: idx N, finite s /\ ~ a :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s -> (extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} (SetAdjoin s a)) <-> x = a \/ extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s)).
Admitted.

// HOL Light: Multivariate/polytope.ml:3286 / FACE_OF_CONVEX_HULL_INSERT_EQ   (hash md5:fadb19765016a11ed143ecc4cfc25bc6)
// not bridged: 
Theorem FACE_OF_CONVEX_HULL_INSERT_EQ : forall N:set, N <> Empty -> forall f s c= R :^: idx N, forall a :e R :^: idx N, finite s /\ ~ a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> (face_of N f (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s a)) <-> face_of N f (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) \/ exists f' c= R :^: idx N, face_of N f' (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) /\ f = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin f' a)).
Admitted.

// HOL Light: Multivariate/polytope.ml:3470 / CONVEX_HULL_REDUNDANT_SUBSET_GEN   (hash md5:c3b1a5af128575681fbd19a64367274d)
// not bridged: 
Theorem CONVEX_HULL_REDUNDANT_SUBSET_GEN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact N s /\ (t c= s /\ (s :\: t) :/\: {x :e R :^: idx N | extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s)} = Empty) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t.
Admitted.

// HOL Light: Multivariate/polytope.ml:3491 / CONVEX_HULL_REDUNDANT_SUBSET   (hash md5:04f2ea17da035af10605768b011264e2)
// not bridged: 
Theorem CONVEX_HULL_REDUNDANT_SUBSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact N s /\ (t c= s /\ s :\: t c= interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s)) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t.
Admitted.

// HOL Light: Multivariate/polytope.ml:3501 / CONVEX_HULL_REDUNDANT_SUBSET_REV   (hash md5:ea4d419cd98e180928f9009352a93706)
// not bridged: 
Theorem CONVEX_HULL_REDUNDANT_SUBSET_REV : forall N:set, N <> Empty -> forall s t c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t -> (s :\: t) :/\: {x :e R :^: idx N | extreme_point_of N x (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s)} = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:3509 / CONVEX_HULL_INSERT_REDUNDANT_POINT   (hash md5:2ab2d73f2fba173f2edb9967c4adc575)
// not bridged: 
Theorem CONVEX_HULL_INSERT_REDUNDANT_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b c :e R :^: idx N, a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s c) /\ (b :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s c) /\ c :e open_segment N (a,b)) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s c) = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s.
Admitted.

// HOL Light: Multivariate/polytope.ml:3559 / CONVEX_HULL_REDUNDANT_POINT   (hash md5:92cdceff8b44b3a190b039d4c6948447)
// not bridged: 
Theorem CONVEX_HULL_REDUNDANT_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\: {a}) = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s <-> ~ extreme_point_of N a (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:3575 / HAUSDIST_FRONTIERS_CONVEX   (hash md5:28357a4acdb871a65b19c74ab8ba9b52)
// not bridged: 
Theorem HAUSDIST_FRONTIERS_CONVEX : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (convex N t /\ (bounded_hl N s /\ bounded_hl N t)) -> hausdist N (frontier N s,frontier N t) = hausdist N (s,t).
Admitted.

// HOL Light: Multivariate/polytope.ml:3697 / HAUSDIST_STILL_OUTSIDE   (hash md5:4b1d5b669c60a6a9269776bb0795640a)
// not bridged: 
Theorem HAUSDIST_STILL_OUTSIDE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall x :e R :^: idx N, bounded_hl N s /\ (bounded_hl N t /\ hausdist N (s,t) < setdist N ({x},s)) -> ~ x :e t.
Admitted.

// HOL Light: Multivariate/polytope.ml:3714 / HAUSDIST_STILL_INSIDE   (hash md5:236a915c8e4babee756915b25a4c8f3f)
// not bridged: 
Theorem HAUSDIST_STILL_INSIDE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall x :e R :^: idx N, bounded_hl N s /\ (bounded_hl N t /\ (convex N s /\ (convex N t /\ (~ t = Empty /\ hausdist N (s,t) < setdist N ({x},(R :^: idx N) :\: s))))) -> x :e t.
Admitted.

// HOL Light: Multivariate/polytope.ml:3730 / HAUSDIST_STILL_INSIDE_INTERIOR   (hash md5:89d6ad06ffe67d1770955edf0e8ad17f)
// not bridged: 
Theorem HAUSDIST_STILL_INSIDE_INTERIOR : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall x :e R :^: idx N, bounded_hl N s /\ (bounded_hl N t /\ (convex N s /\ (convex N t /\ (~ t = Empty /\ hausdist N (s,t) < setdist N ({x},(R :^: idx N) :\: s))))) -> x :e interior N t.
Admitted.

// HOL Light: Multivariate/polytope.ml:3746 / HAUSDIST_STILL_NONEMPTY_INTERIOR   (hash md5:defa71bb036b9fc4d47b8ca9dc926926)
// not bridged: 
Theorem HAUSDIST_STILL_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ (convex N s /\ ~ interior N s = Empty) -> exists e0 :e R, 0 < e0 /\ forall s' c= R :^: idx N, bounded_hl N s' /\ (convex N s' /\ (~ s' = Empty /\ hausdist N (s,s') < e0)) -> ~ interior N s' = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:3771 / HAUSDIST_STILL_SAME_PLACE_STRONG   (hash md5:e379a43b1f1479c969e7b7be8c0cb782)
// not bridged: 
Theorem HAUSDIST_STILL_SAME_PLACE_STRONG : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall x :e R :^: idx N, bounded_hl N s /\ (bounded_hl N t /\ (convex N s /\ (convex N t /\ (~ t = Empty /\ hausdist N (s,t) < setdist N ({x},frontier N s))))) -> ~ x :e frontier N s /\ (~ x :e frontier N t /\ (x :e t <-> x :e s)).
Admitted.

// HOL Light: Multivariate/polytope.ml:3820 / HAUSDIST_STILL_SAME_PLACE   (hash md5:e45259e37f904ccaea6251105e7b0276)
// not bridged: 
Theorem HAUSDIST_STILL_SAME_PLACE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall x :e R :^: idx N, bounded_hl N s /\ (bounded_hl N t /\ (convex N s /\ (convex N t /\ (~ t = Empty /\ hausdist N (s,t) < setdist N ({x},frontier N s))))) -> (x :e t <-> x :e s).
Admitted.

// HOL Light: Multivariate/polytope.ml:3829 / HAUSDIST_STILL_SAME_PLACE_CONIC_HULL_STRONG   (hash md5:c02016e7c3e84d36f0c39d8917516d7c)
// not bridged: 
Theorem HAUSDIST_STILL_SAME_PLACE_CONIC_HULL_STRONG : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ (bounded_hl N s /\ (~ s = Empty /\ (~ vec N 0 :e closure N s /\ (~ x = vec N 0 /\ ~ x :e frontier N (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | conic N x0} s))))) -> exists e0 :e R, 0 < e0 /\ forall s' c= R :^: idx N, convex N s' /\ (bounded_hl N s' /\ (~ s' = Empty /\ hausdist N (s,s') < e0)) -> ~ x :e frontier N (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | conic N x0} s') /\ (x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | conic N x0} s' <-> x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | conic N x0} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:3988 / HAUSDIST_STILL_SAME_PLACE_CONIC_HULL   (hash md5:e1ee9bd789b9f6ad20ea787e26b43eb0)
// not bridged: 
Theorem HAUSDIST_STILL_SAME_PLACE_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ (bounded_hl N s /\ (~ s = Empty /\ (~ vec N 0 :e closure N s /\ ~ x :e frontier N (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | conic N x0} s)))) -> exists e0 :e R, 0 < e0 /\ forall s' c= R :^: idx N, convex N s' /\ (bounded_hl N s' /\ (~ s' = Empty /\ hausdist N (s,s') < e0)) -> (x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | conic N x0} s' <-> x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | conic N x0} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:4006 / CONVEX_SYMDIFF_CLOSE_TO_FRONTIER   (hash md5:1913f6851aabc05c8dfdb37c5bb33f74)
// not bridged: 
Theorem CONVEX_SYMDIFF_CLOSE_TO_FRONTIER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall e0 :e R, bounded_hl N s /\ (convex N s /\ (~ s = Empty /\ (bounded_hl N t /\ (convex N t /\ (~ t = Empty /\ hausdist N (s,t) < e0))))) -> (s :\: t) :\/: (t :\: s) c= \/_ u :e R :^: idx N, {vector_add N u v | v :e R :^: idx N, u :e frontier N s /\ v :e ball N (vec N 0,e0)}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4037 / polytope   (hash md5:dda741857007051970fbcf746659a86d)
// not bridged: 
Theorem polytope_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, polytope A s <-> exists v c= R :^: idx A, finite v /\ s = hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} v.
Admitted.

// HOL Light: Multivariate/polytope.ml:4040 / POLYTOPE_TRANSLATION_EQ   (hash md5:f7a1278cc63675348329e02bff24f3bc)
// not bridged: 
Theorem POLYTOPE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, polytope N {vector_add N a x | x :e s} <-> polytope N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4046 / POLYTOPE_LINEAR_IMAGE   (hash md5:be24b7675b49bfc4b162f4e8a4baafba)
// not bridged: 
Theorem POLYTOPE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall p c= R :^: idx M, linear M N f /\ polytope M p -> polytope N {f x | x :e p}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4055 / POLYTOPE_LINEAR_IMAGE_EQ   (hash md5:223eecf138208702702947e540169b40)
// not bridged: 
Theorem POLYTOPE_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ ((forall x y :e R :^: idx M, f x = f y -> x = y) /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y)) -> (polytope N {f x | x :e s} <-> polytope M s).
Admitted.

// HOL Light: Multivariate/polytope.ml:4067 / POLYTOPE_EMPTY   (hash md5:bb205a18041b2621ee2dd0ef13ed6961)
// not bridged: 
Theorem POLYTOPE_EMPTY : forall A:set, A <> Empty -> polytope A Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:4071 / POLYTOPE_NEGATIONS   (hash md5:cbf05384f727cef5a04ccbd7dcbac2ee)
// not bridged: 
Theorem POLYTOPE_NEGATIONS : forall N:set, N <> Empty -> forall s c= R :^: idx N, polytope N s -> polytope N {vector_neg N x | x :e s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4075 / POLYTOPE_CONVEX_HULL   (hash md5:e68eec839e7e11548cfaf825355bc3c5)
// not bridged: 
Theorem POLYTOPE_CONVEX_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, finite s -> polytope A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:4079 / POLYTOPE_SEGMENT   (hash md5:7b6c136fcaa521e61b1d752912a213fc)
// not bridged: 
Theorem POLYTOPE_SEGMENT : forall N:set, N <> Empty -> forall a b :e R :^: idx N, polytope N (closed_segment N (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4085 / POLYTOPE_PCROSS   (hash md5:492caa99007de24bf11cb6a282f5dd4c)
// not bridged: 
Theorem POLYTOPE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, polytope M s /\ polytope N t -> polytope (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/polytope.ml:4091 / POLYTOPE_PCROSS_EQ   (hash md5:2c81005fa42f64579048296a941a4fe3)
// not bridged: 
Theorem POLYTOPE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, polytope (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ polytope M s /\ polytope N t).
Admitted.

// HOL Light: Multivariate/polytope.ml:4114 / FACE_OF_POLYTOPE_POLYTOPE   (hash md5:cd7e46d4049247db7c4a8bd11bf8a36b)
// not bridged: 
Theorem FACE_OF_POLYTOPE_POLYTOPE : forall N:set, N <> Empty -> forall f s c= R :^: idx N, polytope N s /\ face_of N f s -> polytope N f.
Admitted.

// HOL Light: Multivariate/polytope.ml:4119 / FINITE_POLYTOPE_FACES   (hash md5:2179385078562e8df0147819a2d2f6fa)
// not bridged: 
Theorem FINITE_POLYTOPE_FACES : forall N:set, N <> Empty -> forall s c= R :^: idx N, polytope N s -> finite {f :e Power (R :^: idx N) | face_of N f s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4130 / FINITE_POLYTOPE_FACETS   (hash md5:221dd98b25aaa6f286cad080af067b3e)
// not bridged: 
Theorem FINITE_POLYTOPE_FACETS : forall N:set, N <> Empty -> forall s c= R :^: idx N, polytope N s -> finite {f :e Power (R :^: idx N) | facet_of N f s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4136 / POLYTOPE_INTERVAL   (hash md5:af4a6e2f2dbb140c6c47cc793aeb1e49)
// not bridged: 
Theorem POLYTOPE_INTERVAL : forall A:set, A <> Empty -> forall a b :e R :^: idx A, polytope A (closed_interval A (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4140 / POLYTOPE_SING   (hash md5:376454c59ee0014980f9ff9bada8b6ff)
// not bridged: 
Theorem POLYTOPE_SING : forall A:set, A <> Empty -> forall a :e R :^: idx A, polytope A {a}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4144 / POLYTOPE_SCALING   (hash md5:7b71d4bab1e2ec9318db5d0086e4ad87)
// not bridged: 
Theorem POLYTOPE_SCALING : forall N:set, N <> Empty -> forall c :e R, forall s c= R :^: idx N, polytope N s -> polytope N {vector_mul N c x | x :e s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4151 / POLYTOPE_SCALING_EQ   (hash md5:95d1701bb3ce1aad76a22ce56c58f535)
// not bridged: 
Theorem POLYTOPE_SCALING_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, polytope N {vector_mul N c x | x :e s} <-> c = 0 \/ polytope N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4162 / POLYTOPE_AFFINITY_EQ   (hash md5:fd46973f16b0de3173a706fdbac96f18)
// not bridged: 
Theorem POLYTOPE_AFFINITY_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, polytope N {vector_add N (vector_mul N m x) c | x :e s} <-> m = 0 \/ polytope N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4168 / POLYTOPE_AFFINITY   (hash md5:54b221301f3c733d932cfc7aa1a4100d)
// not bridged: 
Theorem POLYTOPE_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, polytope N s -> polytope N {vector_add N (vector_mul N m x) c | x :e s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4172 / POLYTOPE_SUMS   (hash md5:c6965b46abf0b08e9d82c8e5387d9f29)
// not bridged: 
Theorem POLYTOPE_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, polytope N s /\ polytope N t -> polytope N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/polytope.ml:4181 / POLYTOPE_IMP_COMPACT   (hash md5:1b9ab7fbc1f63c58c3cb366fedf156b7)
// not bridged: 
Theorem POLYTOPE_IMP_COMPACT : forall A:set, A <> Empty -> forall s c= R :^: idx A, polytope A s -> compact A s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4186 / POLYTOPE_IMP_CONVEX   (hash md5:ee0993558e6798502bfa113a538b561f)
// not bridged: 
Theorem POLYTOPE_IMP_CONVEX : forall A:set, A <> Empty -> forall s c= R :^: idx A, polytope A s -> convex A s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4190 / POLYTOPE_IMP_CLOSED   (hash md5:f154612d47f919d743ad43ad0a56b3af)
// not bridged: 
Theorem POLYTOPE_IMP_CLOSED : forall A:set, A <> Empty -> forall s c= R :^: idx A, polytope A s -> closed A s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4194 / POLYTOPE_IMP_BOUNDED   (hash md5:44b8de278c1a669c7537592c51a8f572)
// not bridged: 
Theorem POLYTOPE_IMP_BOUNDED : forall A:set, A <> Empty -> forall s c= R :^: idx A, polytope A s -> bounded_hl A s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4198 / POLYTOPE_1   (hash md5:57b2fffeee9cb2a4134f8fcb2617248f)
// not bridged: 
Theorem POLYTOPE_1 : forall s c= R :^: idx 1, polytope 1 s <-> exists a b :e R :^: idx 1, s = closed_interval 1 (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/polytope.ml:4203 / POLYTOPE_AFF_DIM_1   (hash md5:a7273326efe03d397cde16d90445c304)
// not bridged: 
Theorem POLYTOPE_AFF_DIM_1 : forall N:set, N <> Empty -> forall p c= R :^: idx N, polytope N p /\ aff_dim N p = 1 <-> exists a b :e R :^: idx N, ~ a = b /\ p = closed_segment N (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/polytope.ml:4220 / FACE_OF_POLYTOPE_INSERT_EQ   (hash md5:58c26a7291b1606cd340dd069dc8cfe9)
// not bridged: 
Theorem FACE_OF_POLYTOPE_INSERT_EQ : forall N:set, N <> Empty -> forall f s c= R :^: idx N, forall a :e R :^: idx N, polytope N s /\ ~ a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> (face_of N f (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s a)) <-> face_of N f s \/ exists f' c= R :^: idx N, face_of N f' s /\ f = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin f' a)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4240 / CONVEX_INNER_APPROXIMATION   (hash md5:ec6601ca83200d2a9060a59dcb644654)
// not bridged: 
Theorem CONVEX_INNER_APPROXIMATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, bounded_hl N s /\ (convex N s /\ 0 < e0) -> exists k c= R :^: idx N, finite k /\ (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} k c= s /\ (hausdist N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} k,s) < e0 /\ (k = Empty -> s = Empty))).
Admitted.

// HOL Light: Multivariate/polytope.ml:4283 / CONVEX_OUTER_APPROXIMATION   (hash md5:bc9b3e688dd8b22f949aa36fd875c8e6)
// not bridged: 
Theorem CONVEX_OUTER_APPROXIMATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, bounded_hl N s /\ (convex N s /\ 0 < e0) -> exists k c= R :^: idx N, finite k /\ (s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} k /\ hausdist N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} k,s) < e0).
Admitted.

// HOL Light: Multivariate/polytope.ml:4360 / CONVEX_INNER_POLYTOPE   (hash md5:151655099cce8e9cba59b3fd8ce65412)
// not bridged: 
Theorem CONVEX_INNER_POLYTOPE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, bounded_hl N s /\ (convex N s /\ 0 < e0) -> exists p c= R :^: idx N, polytope N p /\ (p c= s /\ (hausdist N (p,s) < e0 /\ (p = Empty -> s = Empty))).
Admitted.

// HOL Light: Multivariate/polytope.ml:4371 / CONVEX_OUTER_POLYTOPE   (hash md5:10ac2c1445242c7d0ee8d456d60b62c2)
// not bridged: 
Theorem CONVEX_OUTER_POLYTOPE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, bounded_hl N s /\ (convex N s /\ 0 < e0) -> exists p c= R :^: idx N, polytope N p /\ (s c= p /\ hausdist N (p,s) < e0).
Admitted.

// HOL Light: Multivariate/polytope.ml:4385 / polyhedron   (hash md5:732e384685e03b2da0bbab4207095e08)
// not bridged: 
Theorem polyhedron_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, polyhedron A s <-> exists f c= Power (R :^: idx A), finite f /\ (s = {x :e R :^: idx A | forall Y :e f, x :e Y} /\ forall h c= R :^: idx A, h :e f -> exists a :e R :^: idx A, exists b :e R, ~ a = vec A 0 /\ h = {x :e R :^: idx A | dot A a x <= b}).
Admitted.

// HOL Light: Multivariate/polytope.ml:4391 / POLYHEDRON_INTER   (hash md5:2048ebc28215c54dda8de6925e5b92c0)
// not bridged: 
Theorem POLYHEDRON_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, polyhedron N s /\ polyhedron N t -> polyhedron N (s :/\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:4403 / POLYHEDRON_UNIV   (hash md5:bbf684a0e55fc7b45c01bba90d5496c7)
// not bridged: 
Theorem POLYHEDRON_UNIV : forall N:set, N <> Empty -> polyhedron N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/polytope.ml:4408 / POLYHEDRON_POSITIVE_ORTHANT   (hash md5:45b8bcba9ecee94a4d638dd2a7383512)
// not bridged: 
Theorem POLYHEDRON_POSITIVE_ORTHANT : forall N:set, N <> Empty -> polyhedron N {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 <= x i}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4420 / POLYHEDRON_INTERS   (hash md5:18c926ce50e582c874a21b22761633a7)
// not bridged: 
Theorem POLYHEDRON_INTERS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), finite f /\ (forall s c= R :^: idx N, s :e f -> polyhedron N s) -> polyhedron N {x :e R :^: idx N | forall Y :e f, x :e Y}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4427 / POLYHEDRON_EMPTY   (hash md5:5db806bec4fc8e7752a4b23183b26bfb)
// not bridged: 
Theorem POLYHEDRON_EMPTY : forall N:set, N <> Empty -> polyhedron N Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:4441 / POLYHEDRON_HALFSPACE_LE   (hash md5:1e94a9fcc2d41a73843a30b21ac63dd4)
// not bridged: 
Theorem POLYHEDRON_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, polyhedron N {x :e R :^: idx N | dot N a x <= b}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4450 / POLYHEDRON_HALFSPACE_GE   (hash md5:bc0b71a71270841e88676ca06b18e6ed)
// not bridged: 
Theorem POLYHEDRON_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, polyhedron N {x :e R :^: idx N | b <= dot N a x}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4455 / POLYHEDRON_HYPERPLANE   (hash md5:2920aa2f7380dfc6569ed2a2f0b3747f)
// not bridged: 
Theorem POLYHEDRON_HYPERPLANE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, polyhedron N {x :e R :^: idx N | dot N a x = b}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4462 / AFFINE_IMP_POLYHEDRON   (hash md5:bcfa24b5c9a0008c38c51153bc03c2b7)
// not bridged: 
Theorem AFFINE_IMP_POLYHEDRON : forall N:set, N <> Empty -> forall s c= R :^: idx N, affine N s -> polyhedron N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4474 / POLYHEDRON_IMP_CLOSED   (hash md5:0b72f27106bc8ea9059cba055d2c78d6)
// not bridged: 
Theorem POLYHEDRON_IMP_CLOSED : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> closed N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4484 / POLYHEDRON_IMP_CONVEX   (hash md5:5a400da03b50703490d1c90aef73cdb6)
// not bridged: 
Theorem POLYHEDRON_IMP_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> convex N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:4494 / POLYHEDRON_AFFINE_HULL   (hash md5:a94c4febc3873ef29082003f45fd199a)
// not bridged: 
Theorem POLYHEDRON_AFFINE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, polyhedron A (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:4502 / POLYHEDRON_INTER_AFFINE   (hash md5:294403d9de3c2585002dc6093550b0f7)
// not bridged: 
Theorem POLYHEDRON_INTER_AFFINE : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s <-> exists f c= Power (R :^: idx N), finite f /\ (s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} /\ forall h c= R :^: idx N, h :e f -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ h = {x :e R :^: idx N | dot N a x <= b}).
Admitted.

// HOL Light: Multivariate/polytope.ml:4519 / POLYHEDRON_INTER_AFFINE_PARALLEL   (hash md5:0d533c6375de977e9fc85bf646305657)
// not bridged: 
Theorem POLYHEDRON_INTER_AFFINE_PARALLEL : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s <-> exists f c= Power (R :^: idx N), finite f /\ (s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} /\ forall h c= R :^: idx N, h :e f -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ (h = {x :e R :^: idx N | dot N a x <= b} /\ forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s -> vector_add N x a :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s)).
Admitted.

// HOL Light: Multivariate/polytope.ml:4596 / POLYHEDRON_INTER_AFFINE_PARALLEL_MINIMAL   (hash md5:01dc3e3b069f31cd6df2773314e589fa)
// not bridged: 
Theorem POLYHEDRON_INTER_AFFINE_PARALLEL_MINIMAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s <-> exists f c= Power (R :^: idx N), finite f /\ (s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} /\ ((forall h c= R :^: idx N, h :e f -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ (h = {x :e R :^: idx N | dot N a x <= b} /\ forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s -> vector_add N x a :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s)) /\ forall f' c= Power (R :^: idx N), f' c= f /\ f' <> f -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y} /\ s <> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y})).
Admitted.

// HOL Light: Multivariate/polytope.ml:4628 / POLYHEDRON_INTER_AFFINE_MINIMAL   (hash md5:e463d0eaee893516f2411d0536eee565)
// not bridged: 
Theorem POLYHEDRON_INTER_AFFINE_MINIMAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s <-> exists f c= Power (R :^: idx N), finite f /\ (s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} /\ ((forall h c= R :^: idx N, h :e f -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ h = {x :e R :^: idx N | dot N a x <= b}) /\ forall f' c= Power (R :^: idx N), f' c= f /\ f' <> f -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y} /\ s <> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y})).
Admitted.

// HOL Light: Multivariate/polytope.ml:4640 / RELATIVE_INTERIOR_POLYHEDRON_EXPLICIT   (hash md5:8aecd224b5ef78a82788fc1f34fd5ab0)
// not bridged: 
Theorem RELATIVE_INTERIOR_POLYHEDRON_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f c= Power (R :^: idx N), forall a:set -> set, (forall x :e Power (R :^: idx N), a x :e R :^: idx N) -> forall b:set -> set, (forall x :e Power (R :^: idx N), b x :e R) -> finite f /\ (s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} /\ ((forall h c= R :^: idx N, h :e f -> ~ a h = vec N 0 /\ h = {x :e R :^: idx N | dot N (a h) x <= b h}) /\ (forall f' c= Power (R :^: idx N), f' c= f /\ f' <> f -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y} /\ s <> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y}))) -> relative_interior N s = {x :e R :^: idx N | x :e s /\ forall h c= R :^: idx N, h :e f -> dot N (a h) x < b h}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4718 / FACET_OF_POLYHEDRON_EXPLICIT   (hash md5:7e41c475b5692aacb52f7034527abed2)
// not bridged: 
Theorem FACET_OF_POLYHEDRON_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f c= Power (R :^: idx N), forall a:set -> set, (forall x :e Power (R :^: idx N), a x :e R :^: idx N) -> forall b:set -> set, (forall x :e Power (R :^: idx N), b x :e R) -> finite f /\ (s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} /\ ((forall h c= R :^: idx N, h :e f -> ~ a h = vec N 0 /\ h = {x :e R :^: idx N | dot N (a h) x <= b h}) /\ (forall f' c= Power (R :^: idx N), f' c= f /\ f' <> f -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y} /\ s <> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y}))) -> forall c c= R :^: idx N, facet_of N c s <-> exists h c= R :^: idx N, h :e f /\ c = s :/\: {x :e R :^: idx N | dot N (a h) x = b h}.
Admitted.

// HOL Light: Multivariate/polytope.ml:4986 / FACE_OF_POLYHEDRON_SUBSET_EXPLICIT   (hash md5:c5df818bebacd78ac508ee799a672905)
// not bridged: 
Theorem FACE_OF_POLYHEDRON_SUBSET_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f c= Power (R :^: idx N), forall a:set -> set, (forall x :e Power (R :^: idx N), a x :e R :^: idx N) -> forall b:set -> set, (forall x :e Power (R :^: idx N), b x :e R) -> finite f /\ (s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} /\ ((forall h c= R :^: idx N, h :e f -> ~ a h = vec N 0 /\ h = {x :e R :^: idx N | dot N (a h) x <= b h}) /\ (forall f' c= Power (R :^: idx N), f' c= f /\ f' <> f -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y} /\ s <> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y}))) -> forall c c= R :^: idx N, face_of N c s /\ (~ c = Empty /\ ~ c = s) -> exists h c= R :^: idx N, h :e f /\ c c= s :/\: {x :e R :^: idx N | dot N (a h) x = b h}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5065 / FACE_OF_POLYHEDRON_EXPLICIT   (hash md5:f743b0152a3f1e586d590bf6aecb8d2e)
// not bridged: 
Theorem FACE_OF_POLYHEDRON_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f c= Power (R :^: idx N), forall a:set -> set, (forall x :e Power (R :^: idx N), a x :e R :^: idx N) -> forall b:set -> set, (forall x :e Power (R :^: idx N), b x :e R) -> finite f /\ (s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} /\ ((forall h c= R :^: idx N, h :e f -> ~ a h = vec N 0 /\ h = {x :e R :^: idx N | dot N (a h) x <= b h}) /\ (forall f' c= Power (R :^: idx N), f' c= f /\ f' <> f -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y} /\ s <> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y}))) -> forall c c= R :^: idx N, face_of N c s /\ (~ c = Empty /\ ~ c = s) -> c = {x :e R :^: idx N | forall Y :e {s :/\: {x :e R :^: idx N | dot N (a h) x = b h} | h :e Power (R :^: idx N), h :e f /\ c c= s :/\: {x :e R :^: idx N | dot N (a h) x = b h}}, x :e Y}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5190 / FACET_OF_POLYHEDRON   (hash md5:d2a81201bf88a7c7bf75957ccf603840)
// not bridged: 
Theorem FACET_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s c c= R :^: idx N, polyhedron N s /\ facet_of N c s -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ (s c= {x :e R :^: idx N | dot N a x <= b} /\ c = s :/\: {x :e R :^: idx N | dot N a x = b}).
Admitted.

// HOL Light: Multivariate/polytope.ml:5217 / FACE_OF_POLYHEDRON   (hash md5:fedd8ce571c2f38844ae8230080daca2)
// not bridged: 
Theorem FACE_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s c c= R :^: idx N, polyhedron N s /\ (face_of N c s /\ (~ c = Empty /\ ~ c = s)) -> c = {x :e R :^: idx N | forall Y :e {f :e Power (R :^: idx N) | facet_of N f s /\ c c= f}, x :e Y}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5243 / FACE_OF_POLYHEDRON_SUBSET_FACET   (hash md5:4116c66997d9b536819eb1a868d910a4)
// not bridged: 
Theorem FACE_OF_POLYHEDRON_SUBSET_FACET : forall N:set, N <> Empty -> forall s c c= R :^: idx N, polyhedron N s /\ (face_of N c s /\ (~ c = Empty /\ ~ c = s)) -> exists f c= R :^: idx N, facet_of N f s /\ c c= f.
Admitted.

// HOL Light: Multivariate/polytope.ml:5253 / FACE_OF_POLYHEDRON_FACE_OF_FACET   (hash md5:150fc8cd0b497519eee9858c5c528c30)
// not bridged: 
Theorem FACE_OF_POLYHEDRON_FACE_OF_FACET : forall N:set, N <> Empty -> forall s c c= R :^: idx N, polyhedron N s /\ (face_of N c s /\ (~ c = Empty /\ ~ c = s)) -> exists f c= R :^: idx N, face_of N c f /\ facet_of N f s.
Admitted.

// HOL Light: Multivariate/polytope.ml:5263 / EXPOSED_FACE_OF_POLYHEDRON   (hash md5:c87b5fd79557435d533c0ba15d8d7ff4)
// not bridged: 
Theorem EXPOSED_FACE_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s f c= R :^: idx N, polyhedron N s -> (exposed_face_of N f s <-> face_of N f s).
Admitted.

// HOL Light: Multivariate/polytope.ml:5278 / FACE_OF_POLYHEDRON_POLYHEDRON   (hash md5:c6b2663eacac2509fb68f2a0674b8268)
// not bridged: 
Theorem FACE_OF_POLYHEDRON_POLYHEDRON : forall N:set, N <> Empty -> forall s c c= R :^: idx N, polyhedron N s /\ face_of N c s -> polyhedron N c.
Admitted.

// HOL Light: Multivariate/polytope.ml:5304 / FINITE_POLYHEDRON_FACES   (hash md5:0bc57ce6302acf0bd46a53739c5415bc)
// not bridged: 
Theorem FINITE_POLYHEDRON_FACES : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> finite {f :e Power (R :^: idx N) | face_of N f s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5336 / FINITE_POLYHEDRON_EXPOSED_FACES   (hash md5:deb96937dfc9320458471c3f63d9f2ab)
// not bridged: 
Theorem FINITE_POLYHEDRON_EXPOSED_FACES : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> finite {f :e Power (R :^: idx N) | exposed_face_of N f s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5340 / FINITE_POLYHEDRON_EXTREME_POINTS   (hash md5:e059ecc70af35286170ff80eab957928)
// not bridged: 
Theorem FINITE_POLYHEDRON_EXTREME_POINTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> finite {v :e R :^: idx N | extreme_point_of N v s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5353 / FINITE_POLYHEDRON_FACETS   (hash md5:367d5fd0f8ed1861b38518af21a8a5fa)
// not bridged: 
Theorem FINITE_POLYHEDRON_FACETS : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> finite {f :e Power (R :^: idx N) | facet_of N f s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5359 / RELATIVE_INTERIOR_OF_POLYHEDRON   (hash md5:785ccaeca3eef74aae73d925252457ee)
// not bridged: 
Theorem RELATIVE_INTERIOR_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> relative_interior N s = s :\: Union {f :e Power (R :^: idx N) | facet_of N f s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5408 / RELATIVE_BOUNDARY_OF_POLYHEDRON   (hash md5:6116cd9bf7dd36689ca143549224d2ae)
// not bridged: 
Theorem RELATIVE_BOUNDARY_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> s :\: relative_interior N s = Union {f :e Power (R :^: idx N) | facet_of N f s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5417 / RELATIVE_FRONTIER_OF_POLYHEDRON   (hash md5:387c71e78e8be57b2d9c5386036b6c2f)
// not bridged: 
Theorem RELATIVE_FRONTIER_OF_POLYHEDRON : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> relative_frontier N s = Union {f :e Power (R :^: idx N) | facet_of N f s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5423 / RELATIVE_FRONTIER_OF_POLYHEDRON_ALT   (hash md5:7d172b0e32b08ed7f5433855a7716b4f)
// not bridged: 
Theorem RELATIVE_FRONTIER_OF_POLYHEDRON_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> relative_frontier N s = Union {f :e Power (R :^: idx N) | face_of N f s /\ ~ f = s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5430 / FACETS_OF_POLYHEDRON_EXPLICIT_DISTINCT   (hash md5:fe3a7b5b7b03fb52b28c5a99d28f226a)
// not bridged: 
Theorem FACETS_OF_POLYHEDRON_EXPLICIT_DISTINCT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f c= Power (R :^: idx N), forall a:set -> set, (forall x :e Power (R :^: idx N), a x :e R :^: idx N) -> forall b:set -> set, (forall x :e Power (R :^: idx N), b x :e R) -> finite f /\ (s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} /\ ((forall h c= R :^: idx N, h :e f -> ~ a h = vec N 0 /\ h = {x :e R :^: idx N | dot N (a h) x <= b h}) /\ (forall f' c= Power (R :^: idx N), f' c= f /\ f' <> f -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y} /\ s <> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y}))) -> forall h1 h2 c= R :^: idx N, h1 :e f /\ (h2 :e f /\ s :/\: {x :e R :^: idx N | dot N (a h1) x = b h1} = s :/\: {x :e R :^: idx N | dot N (a h2) x = b h2}) -> h1 = h2.
Admitted.

// HOL Light: Multivariate/polytope.ml:5515 / POLYHEDRON_MINIMAL_LEMMA   (hash md5:646174b19b494349ae908d13324f8aaa)
// not bridged: 
Theorem POLYHEDRON_MINIMAL_LEMMA : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), forall s c= R :^: idx N, finite f /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} = s -> exists f' c= Power (R :^: idx N), finite f' /\ (f' c= f /\ (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y} = s /\ forall f'' c= Power (R :^: idx N), f'' c= f' /\ f'' <> f' -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f'', x :e Y} /\ s <> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f'', x :e Y})).
Admitted.

// HOL Light: Multivariate/polytope.ml:5541 / POLYHEDRON   (hash md5:73ff105b46a049091739b78b0ca91ce9)
// not bridged: 
Theorem POLYHEDRON : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s <-> exists f c= Power (R :^: idx N), finite f /\ (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f, x :e Y} = s /\ ((forall f' c= Power (R :^: idx N), f' c= f /\ f' <> f -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y} /\ s <> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: {x :e R :^: idx N | forall Y :e f', x :e Y}) /\ forall h c= R :^: idx N, h :e f -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ h = {x :e R :^: idx N | dot N a x <= b})).
Admitted.

// HOL Light: Multivariate/polytope.ml:5570 / POLYHEDRON_EQ_FINITE_EXPOSED_FACES   (hash md5:c792f84a31f542bb5f35eedb11eb561f)
// not bridged: 
Theorem POLYHEDRON_EQ_FINITE_EXPOSED_FACES : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s <-> closed N s /\ (convex N s /\ finite {f :e Power (R :^: idx N) | exposed_face_of N f s}).
Admitted.

// HOL Light: Multivariate/polytope.ml:5702 / POLYHEDRON_EQ_FINITE_FACES   (hash md5:efc221aae71f44b4a7a760782cb1b4fd)
// not bridged: 
Theorem POLYHEDRON_EQ_FINITE_FACES : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s <-> closed N s /\ (convex N s /\ finite {f :e Power (R :^: idx N) | face_of N f s}).
Admitted.

// HOL Light: Multivariate/polytope.ml:5715 / POLYHEDRON_TRANSLATION_EQ   (hash md5:fd67fbc3beb8723e954c5041d1832249)
// not bridged: 
Theorem POLYHEDRON_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, polyhedron N {vector_add N a x | x :e s} <-> polyhedron N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:5732 / POLYHEDRON_LINEAR_IMAGE_EQ   (hash md5:e91f8080a7eea1e3e4e22cd08760a963)
// not bridged: 
Theorem POLYHEDRON_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ ((forall x y :e R :^: idx M, f x = f y -> x = y) /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y)) -> (polyhedron N {f x | x :e s} <-> polyhedron M s).
Admitted.

// HOL Light: Multivariate/polytope.ml:5751 / POLYHEDRON_NEGATIONS   (hash md5:82a0cf3346f5473175b68e163c15e0f5)
// not bridged: 
Theorem POLYHEDRON_NEGATIONS : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s -> polyhedron N {vector_neg N x | x :e s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5758 / POLYHEDRON_LINEAR_PREIMAGE   (hash md5:e830d0b44ac3be18aff0b424e94bd481)
// not bridged: 
Theorem POLYHEDRON_LINEAR_PREIMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear M N f /\ polyhedron N s -> polyhedron M {x :e R :^: idx M | f x :e s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5780 / POLYTOPE_EQ_BOUNDED_POLYHEDRON   (hash md5:cef4591f91d5a8ded211422810739da8)
// not bridged: 
Theorem POLYTOPE_EQ_BOUNDED_POLYHEDRON : forall N:set, N <> Empty -> forall s c= R :^: idx N, polytope N s <-> polyhedron N s /\ bounded_hl N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:5792 / POLYTOPE_INTER   (hash md5:771757c1986073e93e541436bd331b41)
// not bridged: 
Theorem POLYTOPE_INTER : forall A:set, A <> Empty -> forall s t c= R :^: idx A, polytope A s /\ polytope A t -> polytope A (s :/\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:5796 / POLYTOPE_INTER_POLYHEDRON   (hash md5:ac08094ea944d6400b62408facd1b188)
// not bridged: 
Theorem POLYTOPE_INTER_POLYHEDRON : forall N:set, N <> Empty -> forall s t c= R :^: idx N, polytope N s /\ polyhedron N t -> polytope N (s :/\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:5801 / POLYHEDRON_INTER_POLYTOPE   (hash md5:4b27fc024693d2960c5cda9d88715805)
// not bridged: 
Theorem POLYHEDRON_INTER_POLYTOPE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, polyhedron N s /\ polytope N t -> polytope N (s :/\: t).
Admitted.

// HOL Light: Multivariate/polytope.ml:5806 / POLYTOPE_IMP_POLYHEDRON   (hash md5:cea8b884b182666bc870e5b6c6a13439)
// not bridged: 
Theorem POLYTOPE_IMP_POLYHEDRON : forall A:set, A <> Empty -> forall p c= R :^: idx A, polytope A p -> polyhedron A p.
Admitted.

// HOL Light: Multivariate/polytope.ml:5810 / POLYTOPE_FACET_EXISTS   (hash md5:0b9aa105d1e0cadbfb750eea3fc202a5)
// not bridged: 
Theorem POLYTOPE_FACET_EXISTS : forall N:set, N <> Empty -> forall p c= R :^: idx N, polytope N p /\ 0 < aff_dim N p -> exists f c= R :^: idx N, facet_of N f p.
Admitted.

// HOL Light: Multivariate/polytope.ml:5824 / POLYHEDRON_INTERVAL   (hash md5:153a443fad8c3f9b1bb2ee4484a5270a)
// not bridged: 
Theorem POLYHEDRON_INTERVAL : forall A:set, A <> Empty -> forall a b :e R :^: idx A, polyhedron A (closed_interval A (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/polytope.ml:5828 / POLYHEDRON_CONVEX_HULL   (hash md5:67418e950f1174915a1743dc7fa4be35)
// not bridged: 
Theorem POLYHEDRON_CONVEX_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, finite s -> polyhedron A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:5836 / POLYTOPE_UNION_CONVEX_HULL_FACETS   (hash md5:c87615eece8c7112d55a49ff9c9c30d8)
// not bridged: 
Theorem POLYTOPE_UNION_CONVEX_HULL_FACETS : forall N:set, N <> Empty -> forall s p c= R :^: idx N, polytope N p /\ (0 < aff_dim N p /\ (~ s = Empty /\ s c= p)) -> p = Union {hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\/: f) | f :e Power (R :^: idx N), facet_of N f p}.
Admitted.

// HOL Light: Multivariate/polytope.ml:5969 / POLYHEDRON_CONVEX_CONE_HULL   (hash md5:e1f31e3ea8aa52ba4f01dfd427acc7a4)
// not bridged: 
Theorem POLYHEDRON_CONVEX_CONE_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> polyhedron N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:6090 / CLOSED_CONVEX_CONE_HULL   (hash md5:6723754eb9fb91fe2b01b7f8d297ea11)
// not bridged: 
Theorem CLOSED_CONVEX_CONE_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> closed N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:6094 / POLYHEDRON_CONVEX_CONE_HULL_POLYTOPE   (hash md5:dd8ca655e99d1e48c73b22c2d11cfbc7)
// not bridged: 
Theorem POLYHEDRON_CONVEX_CONE_HULL_POLYTOPE : forall N:set, N <> Empty -> forall s c= R :^: idx N, polytope N s -> polyhedron N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:6106 / POLYHEDRON_CONIC_HULL_POLYTOPE   (hash md5:83688105a64ea229eb07625377bf5219)
// not bridged: 
Theorem POLYHEDRON_CONIC_HULL_POLYTOPE : forall N:set, N <> Empty -> forall s c= R :^: idx N, polytope N s -> polyhedron N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:6115 / CLOSED_CONIC_HULL_STRONG   (hash md5:d19b5442d6b521dfbe61bbf66d07f159)
// not bridged: 
Theorem CLOSED_CONIC_HULL_STRONG : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e relative_interior N s \/ (polytope N s \/ compact N s /\ ~ vec N 0 :e s) -> closed N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:6123 / CLOSED_CONVEX_CONE_HULL_STRONG   (hash md5:609640dc3f12dc22dbaf5cd9fb314213)
// not bridged: 
Theorem CLOSED_CONVEX_CONE_HULL_STRONG : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s \/ (polytope N s \/ (vec N 0 :e relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) \/ compact N s /\ ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s)) -> closed N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} s).
Admitted.

// HOL Light: Multivariate/polytope.ml:6143 / FINITELY_GENERATED_CONIC_POLYHEDRON   (hash md5:caecc3490c4b44bb8346cf0c568f9ef2)
// not bridged: 
Theorem FINITELY_GENERATED_CONIC_POLYHEDRON : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s /\ (conic N s /\ ~ s = Empty) -> exists c c= R :^: idx N, finite c /\ s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} c.
Admitted.

// HOL Light: Multivariate/polytope.ml:6197 / POLYHEDRON_POLYTOPE_SUMS   (hash md5:3bbf2d80d6bee1185e737e4337ac9286)
// not bridged: 
Theorem POLYHEDRON_POLYTOPE_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, polyhedron N s /\ polytope N t -> polyhedron N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/polytope.ml:6219 / POLYHEDRON_AS_CONE_PLUS_CONV   (hash md5:72ea4a9c4f8c251da304b461590a0c14)
// not bridged: 
Theorem POLYHEDRON_AS_CONE_PLUS_CONV : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s <-> exists t u c= R :^: idx N, finite t /\ (finite u /\ s = \/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex_cone N x0} t /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} u}).
Admitted.

// HOL Light: Multivariate/polytope.ml:6381 / POLYHEDRON_LINEAR_IMAGE   (hash md5:3f2a2bcf8d411332905aec55483e45ff)
// not bridged: 
Theorem POLYHEDRON_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ polyhedron M s -> polyhedron N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:6394 / POLYHEDRON_SUMS   (hash md5:90986f795f7f7319c989833fe7d09ac7)
// not bridged: 
Theorem POLYHEDRON_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, polyhedron N s /\ polyhedron N t -> polyhedron N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/polytope.ml:6414 / POLYHEDRAL_CONVEX_CONE   (hash md5:966e3db754a04b598f0f2bbc82d3195d)
// not bridged: 
Theorem POLYHEDRAL_CONVEX_CONE : forall N:set, N <> Empty -> forall s c= R :^: idx N, polyhedron N s /\ convex_cone N s <-> exists k c= R :^: idx N, finite k /\ s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} k.
Admitted.

// HOL Light: Multivariate/polytope.ml:6478 / FARKAS_LEMMA   (hash md5:73102401dc9477f6b144b03df431b1c4)
// not bridged: 
Theorem FARKAS_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall b :e R :^: idx M, (exists x :e R :^: idx N, matrix_vector_mul M N A x = b /\ forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 <= x i) <-> ~ exists y :e R :^: idx M, dot M b y < 0 /\ forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 <= matrix_vector_mul N M (transp M N A) y i.
Admitted.

// HOL Light: Multivariate/polytope.ml:6536 / FARKAS_LEMMA_ALT   (hash md5:2b5c6d1a2d55b5e6b651c7a33d00e240)
// not bridged: 
Theorem FARKAS_LEMMA_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall b :e R :^: idx M, (exists x :e R :^: idx N, forall i :e omega, 1 <= i /\ i <= dimindex M -> matrix_vector_mul M N A x i <= b i) <-> ~ exists y :e R :^: idx M, (forall i :e omega, 1 <= i /\ i <= dimindex M -> 0 <= y i) /\ (vector_matrix_mul M N y A = vec N 0 /\ dot M b y < 0).
Admitted.

// HOL Light: Multivariate/polytope.ml:6604 / SEPARATING_HYPERPLANE_POLYHEDRA   (hash md5:913c972df30f5c1793f2086636a0701d)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_POLYHEDRA : forall N:set, N <> Empty -> forall s t c= R :^: idx N, polyhedron N s /\ (polyhedron N t /\ (~ s = Empty /\ (~ t = Empty /\ s :/\: t = Empty))) -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ ((forall x :e R :^: idx N, x :e s -> dot N a x < b) /\ forall x :e R :^: idx N, x :e t -> b < dot N a x).
Admitted.

// HOL Light: Multivariate/polytope.ml:6671 / RELATIVE_BOUNDARY_OF_CONVEX_HULL   (hash md5:f3c2095310e4b2e1d3e4c2b5cb122d68)
// not bridged: 
Theorem RELATIVE_BOUNDARY_OF_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s :\: relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = Union {hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\: {a}) | a :e R :^: idx N, a :e s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:6693 / FRONTIER_OF_CONVEX_HULL   (hash md5:71fa340508d1c256b150e46a59c9b07d)
// not bridged: 
Theorem FRONTIER_OF_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, equip s (dimindex N + 1) -> frontier N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = Union {hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\: {a}) | a :e R :^: idx N, a :e s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:6765 / RELATIVE_BOUNDARY_OF_TRIANGLE   (hash md5:3aafb6d28dceead7ca92362e9ce5b6b7)
// not bridged: 
Theorem RELATIVE_BOUNDARY_OF_TRIANGLE : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, ~ collinear N {a,b,c} -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {a,b,c} :\: relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {a,b,c}) = closed_segment N (seq_cons (a,b) seq_nil) :\/: (closed_segment N (seq_cons (b,c) seq_nil) :\/: closed_segment N (seq_cons (c,a) seq_nil)).
Admitted.

// HOL Light: Multivariate/polytope.ml:6780 / RELATIVE_FRONTIER_OF_TRIANGLE   (hash md5:2ba5fdb4495684906dfd274b1f6dabe2)
// not bridged: 
Theorem RELATIVE_FRONTIER_OF_TRIANGLE : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, ~ collinear N {a,b,c} -> relative_frontier N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {a,b,c}) = closed_segment N (seq_cons (a,b) seq_nil) :\/: (closed_segment N (seq_cons (b,c) seq_nil) :\/: closed_segment N (seq_cons (c,a) seq_nil)).
Admitted.

// HOL Light: Multivariate/polytope.ml:6791 / FRONTIER_OF_TRIANGLE   (hash md5:bb97ded083c3da18cb637a4a38e66419)
// not bridged: 
Theorem FRONTIER_OF_TRIANGLE : forall a b c :e R :^: idx_n 2, frontier (idx_n 2) (hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | convex (idx_n 2) x} {a,b,c}) = closed_segment (idx_n 2) (seq_cons (a,b) seq_nil) :\/: (closed_segment (idx_n 2) (seq_cons (b,c) seq_nil) :\/: closed_segment (idx_n 2) (seq_cons (c,a) seq_nil)).
Admitted.

// HOL Light: Multivariate/polytope.ml:6816 / INSIDE_OF_TRIANGLE   (hash md5:af44a3d2e379a124baed8e19c9507f2e)
// not bridged: 
Theorem INSIDE_OF_TRIANGLE : forall a b c :e R :^: idx_n 2, inside (idx_n 2) (closed_segment (idx_n 2) (seq_cons (a,b) seq_nil) :\/: (closed_segment (idx_n 2) (seq_cons (b,c) seq_nil) :\/: closed_segment (idx_n 2) (seq_cons (c,a) seq_nil))) = interior (idx_n 2) (hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | convex (idx_n 2) x} {a,b,c}).
Admitted.

// HOL Light: Multivariate/polytope.ml:6826 / INTERIOR_OF_TRIANGLE   (hash md5:ba3ec09e6ef2051030ed11d36eecd0f9)
// not bridged: 
Theorem INTERIOR_OF_TRIANGLE : forall a b c :e R :^: idx_n 2, interior (idx_n 2) (hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | convex (idx_n 2) x} {a,b,c}) = hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | convex (idx_n 2) x} {a,b,c} :\: closed_segment (idx_n 2) (seq_cons (a,b) seq_nil) :\/: (closed_segment (idx_n 2) (seq_cons (b,c) seq_nil) :\/: closed_segment (idx_n 2) (seq_cons (c,a) seq_nil)).
Admitted.

// HOL Light: Multivariate/polytope.ml:6840 / POLYHEDRON_RIDGE_TWO_FACETS   (hash md5:610238c0cc69d5931ef8de492e673a87)
// not bridged: 
Theorem POLYHEDRON_RIDGE_TWO_FACETS : forall N:set, N <> Empty -> forall p r c= R :^: idx N, polyhedron N p /\ (face_of N r p /\ (~ r = Empty /\ aff_dim N r = aff_dim N p + - 2)) -> exists f1 f2 c= R :^: idx N, face_of N f1 p /\ (aff_dim N f1 = aff_dim N p + - 1 /\ (face_of N f2 p /\ (aff_dim N f2 = aff_dim N p + - 1 /\ (~ f1 = f2 /\ (r c= f1 /\ (r c= f2 /\ (f1 :/\: f2 = r /\ forall f c= R :^: idx N, face_of N f p /\ (aff_dim N f = aff_dim N p + - 1 /\ r c= f) -> f = f1 \/ f = f2))))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:7222 / POLYTOPE_VERTEX_LOWER_BOUND   (hash md5:260187f3e032bb8e9988c610662fe4f4)
// not bridged: 
Theorem POLYTOPE_VERTEX_LOWER_BOUND : forall N:set, N <> Empty -> forall p c= R :^: idx N, polytope N p -> aff_dim N p + 1 <= finite_cardinality {v :e R :^: idx N | extreme_point_of N v p}.
Admitted.

// HOL Light: Multivariate/polytope.ml:7236 / POLYTOPE_FACET_LOWER_BOUND   (hash md5:b15bb9792fb76c5545a81b8018868c5e)
// not bridged: 
Theorem POLYTOPE_FACET_LOWER_BOUND : forall N:set, N <> Empty -> forall p c= R :^: idx N, polytope N p /\ ~ aff_dim N p = 0 -> aff_dim N p + 1 <= finite_cardinality {f :e Power (R :^: idx N) | facet_of N f p}.
Admitted.

// HOL Light: Multivariate/polytope.ml:7364 / simplex   (hash md5:7c98b7ae01e7893d76a9ea806a79477b)
// not bridged: 
Theorem simplex_thm : forall A:set, A <> Empty -> forall n :e int, forall s c= R :^: idx A, simplex A n s <-> exists c c= R :^: idx A, ~ affine_dependent A c /\ (finite_cardinality c = n + 1 /\ s = hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} c).
Admitted.

// HOL Light: Multivariate/polytope.ml:7369 / SIMPLEX_TRANSLATION_EQ   (hash md5:1659810fe413bf464e250f40767fe2b2)
// not bridged: 
Theorem SIMPLEX_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, forall n :e int, simplex N n {vector_add N a x | x :e s} <-> simplex N n s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7379 / SIMPLEX_LINEAR_IMAGE_EQ   (hash md5:9f579814ab751ae9117657fc9727bbb1)
// not bridged: 
Theorem SIMPLEX_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall n :e int, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (simplex N n {f x | x :e s} <-> simplex M n s).
Admitted.

// HOL Light: Multivariate/polytope.ml:7402 / SIMPLEX   (hash md5:f0dbd32306721f6e87a6ab67a4f78086)
// not bridged: 
Theorem SIMPLEX : forall A:set, A <> Empty -> forall n :e int, forall s c= R :^: idx A, simplex A n s <-> exists c c= R :^: idx A, finite c /\ (~ affine_dependent A c /\ (finite_cardinality c = n + 1 /\ s = hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} c)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7409 / SIMPLEX_CONVEX_HULL   (hash md5:a52311e31a573f70c191883988ecdac7)
// not bridged: 
Theorem SIMPLEX_CONVEX_HULL : forall N:set, N <> Empty -> forall c c= R :^: idx N, forall n :e int, ~ affine_dependent N c /\ finite_cardinality c = n + 1 -> simplex N n (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} c).
Admitted.

// HOL Light: Multivariate/polytope.ml:7414 / SIMPLEX_IMP_POLYTOPE   (hash md5:aa9ef757a4bdbe33387d19f7cd8ee815)
// not bridged: 
Theorem SIMPLEX_IMP_POLYTOPE : forall A:set, A <> Empty -> forall n :e int, forall s c= R :^: idx A, simplex A n s -> polytope A s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7419 / SIMPLEX_IMP_POLYHEDRON   (hash md5:3611690d2daff32ee72f6391f5418fb8)
// not bridged: 
Theorem SIMPLEX_IMP_POLYHEDRON : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall n :e int, simplex A n s -> polyhedron A s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7423 / SIMPLEX_IMP_CONVEX   (hash md5:aa4f8ccca3ac3faf3f83c1e244e374c6)
// not bridged: 
Theorem SIMPLEX_IMP_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, simplex N n s -> convex N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7427 / SIMPLEX_IMP_COMPACT   (hash md5:3029f233c3451ebd5cac29f7bed3759d)
// not bridged: 
Theorem SIMPLEX_IMP_COMPACT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, simplex N n s -> compact N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7431 / SIMPLEX_IMP_CLOSED   (hash md5:c348b9c00a7b42779940a7d11bd45180)
// not bridged: 
Theorem SIMPLEX_IMP_CLOSED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, simplex N n s -> closed N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7435 / SIMPLEX_DIM_GE   (hash md5:4cdcdbff37625df9ac6935abdac213bf)
// not bridged: 
Theorem SIMPLEX_DIM_GE : forall A:set, A <> Empty -> forall n :e int, forall s c= R :^: idx A, simplex A n s -> - 1 <= n.
Admitted.

// HOL Light: Multivariate/polytope.ml:7439 / SIMPLEX_EMPTY   (hash md5:0f65adb1109d090c57bd2867c12370c3)
// not bridged: 
Theorem SIMPLEX_EMPTY : forall A:set, A <> Empty -> forall n :e int, simplex A n Empty <-> n = - 1.
Admitted.

// HOL Light: Multivariate/polytope.ml:7448 / SIMPLEX_MINUS_1   (hash md5:a539c0f2128e8cd6ccbdcf662c6b6b4a)
// not bridged: 
Theorem SIMPLEX_MINUS_1 : forall A:set, A <> Empty -> forall s c= R :^: idx A, simplex A (- 1) s <-> s = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:7457 / AFF_DIM_SIMPLEX   (hash md5:53078f63bba8dcc5c06848a239e637c8)
// not bridged: 
Theorem AFF_DIM_SIMPLEX : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall n :e int, simplex A n s -> aff_dim A s = n.
Admitted.

// HOL Light: Multivariate/polytope.ml:7463 / SIMPLEX_EXTREME_POINTS   (hash md5:4dc9d46f9da0b1743f8b59bcfb511687)
// not bridged: 
Theorem SIMPLEX_EXTREME_POINTS : forall N:set, N <> Empty -> forall n :e int, forall s c= R :^: idx N, simplex N n s -> finite {v :e R :^: idx N | extreme_point_of N v s} /\ (~ affine_dependent N {v :e R :^: idx N | extreme_point_of N v s} /\ (finite_cardinality {v :e R :^: idx N | extreme_point_of N v s} = n + 1 /\ s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {v :e R :^: idx N | extreme_point_of N v s})).
Admitted.

// HOL Light: Multivariate/polytope.ml:7495 / SIMPLEX_FACE_OF_SIMPLEX   (hash md5:0ead1deef9749658339cec16025a0bcf)
// not bridged: 
Theorem SIMPLEX_FACE_OF_SIMPLEX : forall N:set, N <> Empty -> forall n :e int, forall s f c= R :^: idx N, simplex N n s /\ face_of N f s -> exists m :e int, m <= n /\ simplex N m f.
Admitted.

// HOL Light: Multivariate/polytope.ml:7514 / FACE_OF_SIMPLEX_SUBSET   (hash md5:7f7e94143a71622b3a0e94c52bcac784)
// not bridged: 
Theorem FACE_OF_SIMPLEX_SUBSET : forall N:set, N <> Empty -> forall n :e int, forall s f c= R :^: idx N, simplex N n s /\ face_of N f s -> exists c c= R :^: idx N, c c= {x :e R :^: idx N | extreme_point_of N x s} /\ f = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} c.
Admitted.

// HOL Light: Multivariate/polytope.ml:7526 / SUBSET_FACE_OF_SIMPLEX   (hash md5:87c316bf1141ae49a81ae96ac23ea974)
// not bridged: 
Theorem SUBSET_FACE_OF_SIMPLEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, forall c c= R :^: idx N, simplex N n s /\ c c= {x :e R :^: idx N | extreme_point_of N x s} -> face_of N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} c) s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7543 / FACES_OF_SIMPLEX   (hash md5:cf7b4fb344618d629035c276960f7da9)
// not bridged: 
Theorem FACES_OF_SIMPLEX : forall A:set, A <> Empty -> forall n :e int, forall s c= R :^: idx A, simplex A n s -> {f :e Power (R :^: idx A) | face_of A f s} = {hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} c | c :e Power (R :^: idx A), c c= {v :e R :^: idx A | extreme_point_of A v s}}.
Admitted.

// HOL Light: Multivariate/polytope.ml:7551 / HAS_SIZE_FACES_OF_SIMPLEX   (hash md5:0c2b31d532a057d701b800d630114db8)
// not bridged: 
Theorem HAS_SIZE_FACES_OF_SIMPLEX : forall N:set, N <> Empty -> forall n :e int, forall s c= R :^: idx N, simplex N n s -> equip {f :e Power (R :^: idx N) | face_of N f s} (2 ^ if n + 1 :e omega then n + 1 else 0).
Admitted.

// HOL Light: Multivariate/polytope.ml:7583 / FINITE_FACES_OF_SIMPLEX   (hash md5:57bae933a3f5772cf426f47d5a107587)
// not bridged: 
Theorem FINITE_FACES_OF_SIMPLEX : forall A:set, A <> Empty -> forall n :e int, forall s c= R :^: idx A, simplex A n s -> finite {f :e Power (R :^: idx A) | face_of A f s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:7589 / CARD_FACES_OF_SIMPLEX   (hash md5:7a4fc92c7b554cd3c32feaffec937892)
// not bridged: 
Theorem CARD_FACES_OF_SIMPLEX : forall A:set, A <> Empty -> forall n :e int, forall s c= R :^: idx A, simplex A n s -> finite_cardinality {f :e Power (R :^: idx A) | face_of A f s} = 2 ^ if n + 1 :e omega then n + 1 else 0.
Admitted.

// HOL Light: Multivariate/polytope.ml:7595 / CHOOSE_SIMPLEX   (hash md5:fa6fc431080827e90f6386f279877786)
// not bridged: 
Theorem CHOOSE_SIMPLEX : forall N:set, N <> Empty -> forall n :e int, - 1 <= n /\ n <= dimindex N -> exists s c= R :^: idx N, simplex N n s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7617 / CHOOSE_SURROUNDING_SIMPLEX   (hash md5:30b9aa61eb12eba82f71378a45d77e91)
// not bridged: 
Theorem CHOOSE_SURROUNDING_SIMPLEX : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall n :e int, 0 <= n /\ n <= dimindex N -> exists s c= R :^: idx N, simplex N n s /\ a :e relative_interior N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7636 / CHOOSE_SURROUNDING_SIMPLEX_FULL   (hash md5:3377aa514d3bb085eb9d1d063405648d)
// not bridged: 
Theorem CHOOSE_SURROUNDING_SIMPLEX_FULL : forall N:set, N <> Empty -> forall a :e R :^: idx N, exists s c= R :^: idx N, simplex N (dimindex N) s /\ a :e interior N s.
Admitted.

// HOL Light: Multivariate/polytope.ml:7644 / CHOOSE_POLYTOPE   (hash md5:868581b9dc1b0b18154afb6262ebbbf9)
// not bridged: 
Theorem CHOOSE_POLYTOPE : forall N:set, N <> Empty -> forall n :e int, - 1 <= n /\ n <= dimindex N -> exists s c= R :^: idx N, polytope N s /\ aff_dim N s = n.
Admitted.

// HOL Light: Multivariate/polytope.ml:7649 / SIMPLEX_SING   (hash md5:f5af09bacec2ae34f24337374c78274c)
// not bridged: 
Theorem SIMPLEX_SING : forall N:set, N <> Empty -> forall n :e int, forall a :e R :^: idx N, simplex N n {a} <-> n = 0.
Admitted.

// HOL Light: Multivariate/polytope.ml:7659 / SIMPLEX_ZERO   (hash md5:e0c535c24581676de09b146ce67c2698)
// not bridged: 
Theorem SIMPLEX_ZERO : forall N:set, N <> Empty -> forall s c= R :^: idx N, simplex N 0 s <-> exists a :e R :^: idx N, s = {a}.
Admitted.

// HOL Light: Multivariate/polytope.ml:7668 / SIMPLEX_SEGMENT_CASES   (hash md5:fd7e20650ec66566b4d43bd5095bd009)
// not bridged: 
Theorem SIMPLEX_SEGMENT_CASES : forall N:set, N <> Empty -> forall a b :e R :^: idx N, simplex N (if a = b then 0 else 1) (closed_segment N (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7677 / SIMPLEX_SEGMENT   (hash md5:84c706e504bb7010bee6724bf84993ad)
// not bridged: 
Theorem SIMPLEX_SEGMENT : forall A:set, A <> Empty -> forall a b :e R :^: idx A, exists n :e int, simplex A n (closed_segment A (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7681 / POLYTOPE_LOWDIM_IMP_SIMPLEX   (hash md5:34cdac64ca49e1b3cdc9f4461f5c0ea2)
// not bridged: 
Theorem POLYTOPE_LOWDIM_IMP_SIMPLEX : forall N:set, N <> Empty -> forall p c= R :^: idx N, polytope N p /\ aff_dim N p <= 1 -> exists n :e int, simplex N n p.
Admitted.

// HOL Light: Multivariate/polytope.ml:7690 / SIMPLEX_INSERT_DIMPLUS1   (hash md5:24ccdebade3d561cff70591d09581051)
// not bridged: 
Theorem SIMPLEX_INSERT_DIMPLUS1 : forall N:set, N <> Empty -> forall n :e int, forall s c= R :^: idx N, forall a :e R :^: idx N, simplex N n s /\ ~ a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> simplex N (n + 1) (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s a)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7706 / SIMPLEX_INSERT   (hash md5:2ddfbc02662bdb307b14d33e25ea9af4)
// not bridged: 
Theorem SIMPLEX_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, (exists n :e int, simplex N n s) /\ ~ a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> exists n :e int, simplex N n (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s a)).
Admitted.

// HOL Light: Multivariate/polytope.ml:7712 / SIMPLEX_ALT   (hash md5:de45237aff4d866085777b412057d307)
// not bridged: 
Theorem SIMPLEX_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall i :e int, simplex N i s <-> convex N s /\ (compact N s /\ (finite {v :e R :^: idx N | extreme_point_of N v s} /\ (finite_cardinality {v :e R :^: idx N | extreme_point_of N v s} = i + 1 /\ ~ affine_dependent N {v :e R :^: idx N | extreme_point_of N v s}))).
Admitted.

// HOL Light: Multivariate/polytope.ml:7725 / SIMPLEX_ALT1   (hash md5:4583474b79e75db11029fb7b033c617a)
// not bridged: 
Theorem SIMPLEX_ALT1 : forall N:set, N <> Empty -> forall n :e omega, forall s c= R :^: idx N, simplex N (n + - 1) s <-> convex N s /\ (compact N s /\ (equip {v :e R :^: idx N | extreme_point_of N v s} n /\ ~ affine_dependent N {v :e R :^: idx N | extreme_point_of N v s})).
Admitted.

// HOL Light: Multivariate/polytope.ml:7734 / SIMPLEX_0_NOT_IN_AFFINE_HULL   (hash md5:9deefe54f35909340f3c41a30185665e)
// not bridged: 
Theorem SIMPLEX_0_NOT_IN_AFFINE_HULL : forall N:set, N <> Empty -> forall n :e omega, forall s c= R :^: idx N, simplex N (n + - 1) s /\ ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s <-> convex N s /\ (compact N s /\ (equip {v :e R :^: idx N | extreme_point_of N v s} n /\ independent N {v :e R :^: idx N | extreme_point_of N v s})).
Admitted.

// HOL Light: Multivariate/polytope.ml:7746 / SIMPLEX_EXTREME_POINTS_NONEMPTY   (hash md5:5f769b7b6d6cb7ac50f9048c807fc176)
// not bridged: 
Theorem SIMPLEX_EXTREME_POINTS_NONEMPTY : forall A N:set, A <> Empty -> N <> Empty -> forall c c= R :^: idx A, simplex A (dimindex N + - 1) c -> ~ {v :e R :^: idx A | extreme_point_of A v c} = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:7762 / simplicial_complex   (hash md5:c234bc54f5fa6b68068d5417fea51010)
// not bridged: 
Theorem simplicial_complex_thm : forall A:set, A <> Empty -> forall c c= Power (R :^: idx A), simplicial_complex A c <-> finite c /\ ((forall s c= R :^: idx A, s :e c -> exists n :e int, simplex A n s) /\ ((forall f s c= R :^: idx A, s :e c /\ face_of A f s -> f :e c) /\ forall s s' c= R :^: idx A, s :e c /\ s' :e c -> face_of A (s :/\: s') s /\ face_of A (s :/\: s') s')).
Admitted.

// HOL Light: Multivariate/polytope.ml:7770 / triangulation   (hash md5:73be19cb1fea03d05063663df66474b0)
// not bridged: 
Theorem triangulation_thm : forall N:set, N <> Empty -> forall tr c= Power (R :^: idx N), triangulation N tr <-> finite tr /\ ((forall t c= R :^: idx N, t :e tr -> exists n :e int, simplex N n t) /\ forall t t' c= R :^: idx N, t :e tr /\ t' :e tr -> face_of N (t :/\: t') t /\ face_of N (t :/\: t') t').
Admitted.

// HOL Light: Multivariate/polytope.ml:7777 / SIMPLICIAL_COMPLEX_TRANSLATION   (hash md5:55cf902f2a1868dda0078697cae10428)
// not bridged: 
Theorem SIMPLICIAL_COMPLEX_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall tr c= Power (R :^: idx N), simplicial_complex N {{x0 :e R :^: idx N | x0 :e {vector_add N a x0 | x0 :e x}} | x :e tr} <-> simplicial_complex N tr.
Admitted.

// HOL Light: Multivariate/polytope.ml:7784 / SIMPLICIAL_COMPLEX_LINEAR_IMAGE   (hash md5:6ac1bab3cd36f1f495425669c048c9f8)
// not bridged: 
Theorem SIMPLICIAL_COMPLEX_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall tr c= Power (R :^: idx M), linear M N f /\ ((forall x y :e R :^: idx M, f x = f y -> x = y) /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y)) -> (simplicial_complex N {{x0 :e R :^: idx N | x0 :e {f x0 | x0 :e x}} | x :e tr} <-> simplicial_complex M tr).
Admitted.

// HOL Light: Multivariate/polytope.ml:7792 / TRIANGULATION_TRANSLATION   (hash md5:ab4e7e70b4360fcd2499a7c877488290)
// not bridged: 
Theorem TRIANGULATION_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall tr c= Power (R :^: idx N), triangulation N {{x0 :e R :^: idx N | x0 :e {vector_add N a x0 | x0 :e x}} | x :e tr} <-> triangulation N tr.
Admitted.

// HOL Light: Multivariate/polytope.ml:7799 / TRIANGULATION_LINEAR_IMAGE   (hash md5:96fda8681d2aaa9643a310025a1a2027)
// not bridged: 
Theorem TRIANGULATION_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall tr c= Power (R :^: idx M), linear M N f /\ ((forall x y :e R :^: idx M, f x = f y -> x = y) /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y)) -> (triangulation N {{x0 :e R :^: idx N | x0 :e {f x0 | x0 :e x}} | x :e tr} <-> triangulation M tr).
Admitted.

// HOL Light: Multivariate/polytope.ml:7807 / SIMPLICIAL_COMPLEX_IMP_TRIANGULATION   (hash md5:e5108363d1745cd6865d173f684ee6ba)
// not bridged: 
Theorem SIMPLICIAL_COMPLEX_IMP_TRIANGULATION : forall A:set, A <> Empty -> forall tr c= Power (R :^: idx A), simplicial_complex A tr -> triangulation A tr.
Admitted.

// HOL Light: Multivariate/polytope.ml:7811 / TRIANGULATION_SUBSET   (hash md5:84dd797ba89f7aaf9741f3a00370af5c)
// not bridged: 
Theorem TRIANGULATION_SUBSET : forall N:set, N <> Empty -> forall tr tr' c= Power (R :^: idx N), triangulation N tr /\ tr' c= tr -> triangulation N tr'.
Admitted.

// HOL Light: Multivariate/polytope.ml:7817 / TRIANGULATION_UNION   (hash md5:fbc192eb8691dda3e17d0c72bd86e14d)
// not bridged: 
Theorem TRIANGULATION_UNION : forall A:set, A <> Empty -> forall tr1 tr2 c= Power (R :^: idx A), triangulation A (tr1 :\/: tr2) <-> triangulation A tr1 /\ (triangulation A tr2 /\ forall s t c= R :^: idx A, s :e tr1 /\ t :e tr2 -> face_of A (s :/\: t) s /\ face_of A (s :/\: t) t).
Admitted.

// HOL Light: Multivariate/polytope.ml:7826 / TRIANGULATION_INTER_SIMPLEX   (hash md5:5db903709de398545ad4aff9283fd215)
// not bridged: 
Theorem TRIANGULATION_INTER_SIMPLEX : forall N:set, N <> Empty -> forall tr c= Power (R :^: idx N), forall t t' c= R :^: idx N, triangulation N tr /\ (t :e tr /\ t' :e tr) -> t :/\: t' = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} ({x :e R :^: idx N | extreme_point_of N x t} :/\: {x :e R :^: idx N | extreme_point_of N x t'}).
Admitted.

// HOL Light: Multivariate/polytope.ml:7863 / TRIANGULATION_SIMPLICIAL_COMPLEX   (hash md5:53c12ffd5839e27b0fcc4323f609490d)
// not bridged: 
Theorem TRIANGULATION_SIMPLICIAL_COMPLEX : forall N:set, N <> Empty -> forall tr c= Power (R :^: idx N), triangulation N tr -> simplicial_complex N {f :e Power (R :^: idx N) | exists t c= R :^: idx N, t :e tr /\ face_of N f t}.
Admitted.

// HOL Light: Multivariate/polytope.ml:7885 / TRIANGULATION_SIMPLEX_FACES   (hash md5:3166eda0a4e5e169fb03df48843c28ba)
// not bridged: 
Theorem TRIANGULATION_SIMPLEX_FACES : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n d :e int, simplex N n s -> triangulation N {c :e Power (R :^: idx N) | face_of N c s /\ aff_dim N c = d}.
Admitted.

// HOL Light: Multivariate/polytope.ml:7900 / TRIANGULATION_SIMPLEX_FACETS   (hash md5:d45af590cdd215b3c21f70fa295b477a)
// not bridged: 
Theorem TRIANGULATION_SIMPLEX_FACETS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, simplex N n s -> triangulation N {c :e Power (R :^: idx N) | facet_of N c s}.
Admitted.

// HOL Light: Multivariate/polytope.ml:7908 / CELL_COMPLEX_DISJOINT_RELATIVE_INTERIORS   (hash md5:387c962d1bdcba37d660c596031f65e6)
// not bridged: 
Theorem CELL_COMPLEX_DISJOINT_RELATIVE_INTERIORS : forall N:set, N <> Empty -> forall c d c= R :^: idx N, face_of N (c :/\: d) c /\ (face_of N (c :/\: d) d /\ ~ c = d) -> relative_interior N c :/\: relative_interior N d = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:7922 / TRIANGULATION_DISJOINT_RELATIVE_INTERIORS   (hash md5:611273fe92a9b1927b74c7506e8d7119)
// not bridged: 
Theorem TRIANGULATION_DISJOINT_RELATIVE_INTERIORS : forall N:set, N <> Empty -> forall t c= Power (R :^: idx N), forall c d c= R :^: idx N, triangulation N t /\ (c :e t /\ (d :e t /\ ~ c = d)) -> relative_interior N c :/\: relative_interior N d = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:7929 / SIMPLICIAL_COMPLEX_DISJOINT_RELATIVE_INTERIORS   (hash md5:ac8d29c05d5cf8f29c78b1aca8ee4143)
// not bridged: 
Theorem SIMPLICIAL_COMPLEX_DISJOINT_RELATIVE_INTERIORS : forall N:set, N <> Empty -> forall t c= Power (R :^: idx N), forall c d c= R :^: idx N, simplicial_complex N t /\ (c :e t /\ (d :e t /\ ~ c = d)) -> relative_interior N c :/\: relative_interior N d = Empty.
Admitted.

// HOL Light: Multivariate/polytope.ml:7936 / NOT_IN_AFFINE_HULL_SURFACE_TRIANGULATION   (hash md5:07c1c5293a324422151a67172808bf3f)
// not bridged: 
Theorem NOT_IN_AFFINE_HULL_SURFACE_TRIANGULATION : forall N:set, N <> Empty -> forall t c= Power (R :^: idx N), forall u c= R :^: idx N, forall z :e R :^: idx N, convex N u /\ (bounded_hl N u /\ (z :e interior N u /\ (triangulation N t /\ Union t c= frontier N u))) -> forall c c= R :^: idx N, c :e t -> ~ z :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} c.
Admitted.

// HOL Light: Multivariate/polytope.ml:7959 / TRIANGULATION_SUBFACES   (hash md5:9d6dacec12e274e665e9978b270b6832)
// not bridged: 
Theorem TRIANGULATION_SUBFACES : forall N:set, N <> Empty -> forall tr tr' c= Power (R :^: idx N), triangulation N tr /\ (forall c' c= R :^: idx N, c' :e tr' -> exists c c= R :^: idx N, c :e tr /\ face_of N c' c) -> triangulation N tr'.
Admitted.

// HOL Light: Multivariate/polytope.ml:7978 / CELL_COMPLEX_SUBDIVISION_EXISTS   (hash md5:670adeffb9b16703f73d2be019f53fb7)
// not bridged: 
Theorem CELL_COMPLEX_SUBDIVISION_EXISTS : forall N:set, N <> Empty -> forall m c= Power (R :^: idx N), forall d :e int, forall e0 :e R, 0 < e0 /\ (finite m /\ ((forall c c= R :^: idx N, c :e m -> polytope N c) /\ ((forall c c= R :^: idx N, c :e m -> aff_dim N c <= d) /\ (forall c1 c2 c= R :^: idx N, c1 :e m /\ c2 :e m -> face_of N (c1 :/\: c2) c1 /\ face_of N (c1 :/\: c2) c2)))) -> exists m' c= Power (R :^: idx N), (forall c c= R :^: idx N, c :e m' -> diameter N c < e0) /\ (Union m' = Union m /\ (finite m' /\ ((forall c c= R :^: idx N, c :e m' -> exists d0 c= R :^: idx N, d0 :e m /\ c c= d0) /\ ((forall c c= R :^: idx N, forall x :e R :^: idx N, c :e m /\ x :e c -> exists d0 c= R :^: idx N, d0 :e m' /\ (x :e d0 /\ d0 c= c)) /\ ((forall c c= R :^: idx N, c :e m' -> polytope N c) /\ ((forall c c= R :^: idx N, c :e m' -> aff_dim N c <= d) /\ forall c1 c2 c= R :^: idx N, c1 :e m' /\ c2 :e m' -> face_of N (c1 :/\: c2) c1 /\ face_of N (c1 :/\: c2) c2)))))).
Admitted.

// HOL Light: Multivariate/polytope.ml:8135 / SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX_LOWDIM   (hash md5:273b98e04c5f2cc4436cbc7b1538af27)
// not bridged: 
Theorem SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX_LOWDIM : forall N:set, N <> Empty -> forall m c= Power (R :^: idx N), forall d :e int, finite m /\ ((forall c c= R :^: idx N, c :e m -> polytope N c) /\ ((forall c c= R :^: idx N, c :e m -> aff_dim N c <= d) /\ (forall c1 c2 c= R :^: idx N, c1 :e m /\ c2 :e m -> face_of N (c1 :/\: c2) c1 /\ face_of N (c1 :/\: c2) c2))) -> exists t c= Power (R :^: idx N), simplicial_complex N t /\ ((forall k c= R :^: idx N, k :e t -> aff_dim N k <= d) /\ (Union t = Union m /\ ((forall c c= R :^: idx N, c :e m -> exists f c= Power (R :^: idx N), finite f /\ (f c= t /\ c = Union f)) /\ forall k c= R :^: idx N, k :e t -> exists c c= R :^: idx N, c :e m /\ k c= c))).
Admitted.

// HOL Light: Multivariate/polytope.ml:8724 / SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX   (hash md5:f0808f145d0f4d44274750b23784e962)
// not bridged: 
Theorem SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX : forall N:set, N <> Empty -> forall m c= Power (R :^: idx N), finite m /\ ((forall c c= R :^: idx N, c :e m -> polytope N c) /\ (forall c1 c2 c= R :^: idx N, c1 :e m /\ c2 :e m -> face_of N (c1 :/\: c2) c1 /\ face_of N (c1 :/\: c2) c2)) -> exists t c= Power (R :^: idx N), simplicial_complex N t /\ (Union t = Union m /\ ((forall c c= R :^: idx N, c :e m -> exists f c= Power (R :^: idx N), finite f /\ (f c= t /\ c = Union f)) /\ forall k c= R :^: idx N, k :e t -> exists c c= R :^: idx N, c :e m /\ k c= c)).
Admitted.

// HOL Light: Multivariate/polytope.ml:8739 / FINE_SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX   (hash md5:47d905959fd7928aafbe6bfdef84f492)
// not bridged: 
Theorem FINE_SIMPLICIAL_SUBDIVISION_OF_CELL_COMPLEX : forall N:set, N <> Empty -> forall m c= Power (R :^: idx N), forall e0 :e R, 0 < e0 /\ (finite m /\ ((forall c c= R :^: idx N, c :e m -> polytope N c) /\ (forall c1 c2 c= R :^: idx N, c1 :e m /\ c2 :e m -> face_of N (c1 :/\: c2) c1 /\ face_of N (c1 :/\: c2) c2))) -> exists t c= Power (R :^: idx N), simplicial_complex N t /\ ((forall k c= R :^: idx N, k :e t -> diameter N k < e0) /\ (Union t = Union m /\ ((forall c c= R :^: idx N, c :e m -> exists f c= Power (R :^: idx N), finite f /\ (f c= t /\ c = Union f)) /\ forall k c= R :^: idx N, k :e t -> exists c c= R :^: idx N, c :e m /\ k c= c))).
Admitted.

// HOL Light: Multivariate/polytope.ml:8784 / REGULAR_CLOSED_UNIONS_FAT_CELLS_UNIV   (hash md5:0b9091bc05152bdbc0d3f7d15614d786)
// not bridged: 
Theorem REGULAR_CLOSED_UNIONS_FAT_CELLS_UNIV : forall N:set, N <> Empty -> forall s c= Power (R :^: idx N), forall u c= R :^: idx N, closure N (interior N u) = u /\ (finite s /\ ((forall c c= R :^: idx N, c :e s -> closed N c /\ convex N c) /\ Union s = u)) -> Union {c :e Power (R :^: idx N) | c :e s /\ ~ interior N c = Empty} = u.
Admitted.

// HOL Light: Multivariate/polytope.ml:8821 / CONVEX_UNIONS_FULLDIM_CELLS   (hash md5:2713e6aefa8d5022124f548b30653c0a)
// not bridged: 
Theorem CONVEX_UNIONS_FULLDIM_CELLS : forall N:set, N <> Empty -> forall s c= Power (R :^: idx N), forall u c= R :^: idx N, finite s /\ ((forall c c= R :^: idx N, c :e s -> closed N c /\ convex N c) /\ (Union s = u /\ convex N u)) -> Union {c :e Power (R :^: idx N) | c :e s /\ aff_dim N c = aff_dim N u} = u.
Admitted.

// HOL Light: Multivariate/polytope.ml:8867 / TRIANGULAR_SUBDIVISION_OF_CELL_COMPLEX   (hash md5:da502bc08427697ab560797773a0e30c)
// not bridged: 
Theorem TRIANGULAR_SUBDIVISION_OF_CELL_COMPLEX : forall N:set, N <> Empty -> forall m c= Power (R :^: idx N), forall d :e int, finite m /\ ((forall c c= R :^: idx N, c :e m -> polytope N c) /\ ((forall c c= R :^: idx N, c :e m -> aff_dim N c = d) /\ (forall c1 c2 c= R :^: idx N, c1 :e m /\ c2 :e m -> face_of N (c1 :/\: c2) c1 /\ face_of N (c1 :/\: c2) c2))) -> exists t c= Power (R :^: idx N), triangulation N t /\ ((forall k c= R :^: idx N, k :e t -> aff_dim N k = d) /\ (Union t = Union m /\ ((forall c c= R :^: idx N, c :e m -> exists f c= Power (R :^: idx N), finite f /\ (f c= t /\ c = Union f)) /\ forall k c= R :^: idx N, k :e t -> exists c c= R :^: idx N, c :e m /\ k c= c))).
Admitted.

// HOL Light: Multivariate/polytope.ml:8904 / FINE_TRIANGULAR_SUBDIVISION_OF_CELL_COMPLEX   (hash md5:42056bf938db9ba2f7047823729c6110)
// not bridged: 
Theorem FINE_TRIANGULAR_SUBDIVISION_OF_CELL_COMPLEX : forall N:set, N <> Empty -> forall m c= Power (R :^: idx N), forall d :e int, forall e0 :e R, 0 < e0 /\ (finite m /\ ((forall c c= R :^: idx N, c :e m -> polytope N c) /\ ((forall c c= R :^: idx N, c :e m -> aff_dim N c = d) /\ (forall c1 c2 c= R :^: idx N, c1 :e m /\ c2 :e m -> face_of N (c1 :/\: c2) c1 /\ face_of N (c1 :/\: c2) c2)))) -> exists t c= Power (R :^: idx N), triangulation N t /\ ((forall k c= R :^: idx N, k :e t -> diameter N k < e0) /\ ((forall k c= R :^: idx N, k :e t -> aff_dim N k = d) /\ (Union t = Union m /\ ((forall c c= R :^: idx N, c :e m -> exists f c= Power (R :^: idx N), finite f /\ (f c= t /\ c = Union f)) /\ forall k c= R :^: idx N, k :e t -> exists c c= R :^: idx N, c :e m /\ k c= c)))).
Admitted.

