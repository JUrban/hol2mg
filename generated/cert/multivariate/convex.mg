// hol2mg certification module (private): shard convex of profile multivariate.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Multivariate/convex.ml:16 / TRANSLATION_EQ_IMP   (hash md5:ad020331c2c9b2fd7db6d88149f51000)
// not bridged: 
Theorem TRANSLATION_EQ_IMP : forall N:set, N <> Empty -> forall P:set -> prop, (forall a :e R :^: idx N, forall s c= R :^: idx N, P {vector_add N a x | x :e s} <-> P s) <-> forall a :e R :^: idx N, forall s c= R :^: idx N, P s -> P {vector_add N a x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:27 / DIM_HYPERPLANE   (hash md5:9f0f7c36e9a99431c5e6149ce1f9b5b3)
// not bridged: 
Theorem DIM_HYPERPLANE : forall N:set, N <> Empty -> forall a :e R :^: idx N, ~ a = vec N 0 -> dim N {x :e R :^: idx N | dot N a x = 0} = minus_nat (dimindex N) 1.
Admitted.

// HOL Light: Multivariate/convex.ml:33 / DIM_EQ_HYPERPLANE   (hash md5:d467979b66f4be4c30a78dfbb6bf7e1b)
// not bridged: 
Theorem DIM_EQ_HYPERPLANE : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s = minus_nat (dimindex N) 1 <-> exists a :e R :^: idx N, ~ a = vec N 0 /\ span N s = {x :e R :^: idx N | dot N a x = 0}.
Admitted.

// HOL Light: Multivariate/convex.ml:42 / affine   (hash md5:322ee5044b45616965e2dd28a31b6a18)
// not bridged: 
Theorem affine_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, affine A s <-> forall x y :e R :^: idx A, forall u v :e R, x :e s /\ (y :e s /\ u + v = 1) -> vector_add A (vector_mul A u x) (vector_mul A v y) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:46 / AFFINE_ALT   (hash md5:af73e48e1a2b40aab82da00f4a4ed378)
// not bridged: 
Theorem AFFINE_ALT : forall A:set, A <> Empty -> forall s c= R :^: idx A, affine A s <-> forall x y :e R :^: idx A, forall u :e R, x :e s /\ y :e s -> vector_add A (vector_mul A (1 + - u) x) (vector_mul A u y) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:51 / AFFINE_SCALING   (hash md5:c6580609222840775aa55ad838ea4e06)
// not bridged: 
Theorem AFFINE_SCALING : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall c :e R, affine A s -> affine A {vector_mul A c x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:58 / AFFINE_NEGATIONS   (hash md5:e4b7404cb035a12d7dc8fd9d668061f6)
// not bridged: 
Theorem AFFINE_NEGATIONS : forall A:set, A <> Empty -> forall s c= R :^: idx A, affine A s -> affine A {vector_neg A x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:65 / AFFINE_SUMS   (hash md5:c0a6379cd80d6c3a3b7986d1c9acdabd)
// not bridged: 
Theorem AFFINE_SUMS : forall A:set, A <> Empty -> forall s t c= R :^: idx A, affine A s /\ affine A t -> affine A (\/_ x :e R :^: idx A, {vector_add A x y | y :e R :^: idx A, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:72 / AFFINE_DIFFERENCES   (hash md5:c02c16a4fc9efce81c5827619c986409)
// not bridged: 
Theorem AFFINE_DIFFERENCES : forall A:set, A <> Empty -> forall s t c= R :^: idx A, affine A s /\ affine A t -> affine A (\/_ x :e R :^: idx A, {vector_sub A x y | y :e R :^: idx A, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:79 / AFFINE_TRANSLATION_EQ   (hash md5:97d95973d505a94cd50c4a04b6708f77)
// not bridged: 
Theorem AFFINE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, affine N {vector_add N a x | x :e s} <-> affine N s.
Admitted.

// HOL Light: Multivariate/convex.ml:87 / AFFINE_TRANSLATION   (hash md5:a913080ca9e986d255afa9d512b60bc9)
// not bridged: 
Theorem AFFINE_TRANSLATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, affine N s -> affine N {vector_add N a x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:91 / AFFINE_LINEAR_IMAGE   (hash md5:e5b47f54161454729eb3c5d2d7cbcbe7)
// not bridged: 
Theorem AFFINE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx A, affine A s /\ linear A B f -> affine B {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:96 / AFFINE_LINEAR_IMAGE_EQ   (hash md5:983fdfdae86298a3688fa6e00690dfda)
// not bridged: 
Theorem AFFINE_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ (forall x y :e R :^: idx B, f x = f y -> x = y) -> (affine A {f x | x :e s} <-> affine B s).
Admitted.

// HOL Light: Multivariate/convex.ml:103 / AFFINE_LINEAR_PREIMAGE   (hash md5:31dd5dbb1110be382d13cbe265280f00)
// not bridged: 
Theorem AFFINE_LINEAR_PREIMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear M N f /\ affine N s -> affine M {x :e R :^: idx M | f x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:107 / AFFINE_EMPTY   (hash md5:75972012bbdda9568c248be4c694387e)
// not bridged: 
Theorem AFFINE_EMPTY : forall A:set, A <> Empty -> affine A Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:111 / AFFINE_SING   (hash md5:99a0df2a257b3de828b49089b26638d5)
// not bridged: 
Theorem AFFINE_SING : forall A:set, A <> Empty -> forall x :e R :^: idx A, affine A {x}.
Admitted.

// HOL Light: Multivariate/convex.ml:117 / AFFINE_SCALING_EQ   (hash md5:29b92e77c6458a5f1d403fb63dd28c64)
// not bridged: 
Theorem AFFINE_SCALING_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, affine N {vector_mul N c x | x :e s} <-> c = 0 \/ affine N s.
Admitted.

// HOL Light: Multivariate/convex.ml:127 / AFFINE_AFFINITY_EQ   (hash md5:4dd0832a0dc4d031a3cb7ff502f0880c)
// not bridged: 
Theorem AFFINE_AFFINITY_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, affine N {vector_add N (vector_mul N m x) c | x :e s} <-> m = 0 \/ affine N s.
Admitted.

// HOL Light: Multivariate/convex.ml:133 / AFFINE_AFFINITY   (hash md5:2466fcea73545af2edb915cdda71dd13)
// not bridged: 
Theorem AFFINE_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, affine N s -> affine N {vector_add N (vector_mul N m x) c | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:137 / AFFINE_UNIV   (hash md5:3e4ab7b14083f68a49fa86bdcd2446dd)
// not bridged: 
Theorem AFFINE_UNIV : forall N:set, N <> Empty -> affine N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/convex.ml:141 / AFFINE_HYPERPLANE   (hash md5:e83e6a7b292070e6382bb51d3f5a2bd8)
// not bridged: 
Theorem AFFINE_HYPERPLANE : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall b :e R, affine A {x :e R :^: idx A | dot A a x = b}.
Admitted.

// HOL Light: Multivariate/convex.ml:146 / AFFINE_STANDARD_HYPERPLANE   (hash md5:063392f6bfe1ea557ae7f91c4331117c)
// not bridged: 
Theorem AFFINE_STANDARD_HYPERPLANE : forall N:set, N <> Empty -> forall b :e R, forall k :e omega, affine N {x :e R :^: idx N | x k = b}.
Admitted.

// HOL Light: Multivariate/convex.ml:155 / AFFINE_INTERS   (hash md5:a60a01f1047994a82e1d7d0445d27d54)
// not bridged: 
Theorem AFFINE_INTERS : forall A:set, A <> Empty -> forall f c= Power (R :^: idx A), (forall s c= R :^: idx A, s :e f -> affine A s) -> affine A {x :e R :^: idx A | forall Y :e f, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:159 / AFFINE_INTER   (hash md5:88e9209f966b7d8d293def3ac92d9cff)
// not bridged: 
Theorem AFFINE_INTER : forall A:set, A <> Empty -> forall s t c= R :^: idx A, affine A s /\ affine A t -> affine A (s :/\: t).
Admitted.

// HOL Light: Multivariate/convex.ml:163 / AFFINE_AFFINE_HULL   (hash md5:abb3039efc33f0090b97e65464cd7b7c)
// not bridged: 
Theorem AFFINE_AFFINE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, affine A (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:167 / AFFINE_HULL_EQ   (hash md5:7da92cbfc5d613bed9953baa46afa0be)
// not bridged: 
Theorem AFFINE_HULL_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s = s <-> affine A s.
Admitted.

// HOL Light: Multivariate/convex.ml:171 / IS_AFFINE_HULL   (hash md5:50a87925c3927f5cbf629a6c14766f6c)
// not bridged: 
Theorem IS_AFFINE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, affine A s <-> exists t c= R :^: idx A, s = hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} t.
Admitted.

// HOL Light: Multivariate/convex.ml:175 / AFFINE_HULL_UNIV   (hash md5:4356b12a98e6522ff5d5d1b33faab8c4)
// not bridged: 
Theorem AFFINE_HULL_UNIV : forall N:set, N <> Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (R :^: idx N) = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:179 / AFFINE_HULLS_EQ   (hash md5:d99fe2832ae056806dfb57cdf00e1833)
// not bridged: 
Theorem AFFINE_HULLS_EQ : forall A:set, A <> Empty -> forall s t c= R :^: idx A, s c= hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} t /\ t c= hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s -> hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s = hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} t.
Admitted.

// HOL Light: Multivariate/convex.ml:185 / AFFINE_HULL_TRANSLATION   (hash md5:5d0372433259411eef921e1109b4d1d2)
// not bridged: 
Theorem AFFINE_HULL_TRANSLATION : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} {vector_add A a x | x :e s} = {vector_add A a x | x :e hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:192 / AFFINE_HULL_LINEAR_IMAGE   (hash md5:ab0c6e16e32a1c661ab43a51ccb14c29)
// not bridged: 
Theorem AFFINE_HULL_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f -> hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} {f x | x :e s} = {f x | x :e hull (R :^: idx B) {x :e Power (R :^: idx B) | affine B x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:210 / IN_AFFINE_HULL_LINEAR_IMAGE   (hash md5:d92692b8ef3e92a5d2e63a51643e85df)
// not bridged: 
Theorem IN_AFFINE_HULL_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall x :e R :^: idx M, linear M N f /\ x :e hull (R :^: idx M) {x0 :e Power (R :^: idx M) | affine M x0} s -> f x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:215 / SAME_DISTANCES_TO_AFFINE_HULL   (hash md5:9624d1002e87b1083912155b58685ad4)
// not bridged: 
Theorem SAME_DISTANCES_TO_AFFINE_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, (forall x :e R :^: idx N, x :e s -> distance N (x,a) = distance N (x,b)) -> forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s -> distance N (x,a) = distance N (x,b).
Admitted.

// HOL Light: Multivariate/convex.ml:227 / BILINEAR_IN_AFFINE_HULL   (hash md5:06582c6df1133b007bba20c3729714e6)
// not bridged: 
Theorem BILINEAR_IN_AFFINE_HULL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, f x y :e R :^: idx P) -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall x :e R :^: idx M, forall y :e R :^: idx N, bilinear N P M f /\ (x :e hull (R :^: idx M) {x0 :e Power (R :^: idx M) | affine M x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} t) -> f x y :e hull (R :^: idx P) {x0 :e Power (R :^: idx P) | affine P x0} (\/_ a :e R :^: idx M, {f a b | b :e R :^: idx N, a :e s /\ b :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:246 / IN_AFFINE_ADD_MUL   (hash md5:bdccff15360b76d6b7997c670b2e58f0)
// not bridged: 
Theorem IN_AFFINE_ADD_MUL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x :e R :^: idx N, forall d :e R, affine N s /\ (a :e s /\ vector_add N a x :e s) -> vector_add N a (vector_mul N d x) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:252 / IN_AFFINE_ADD_MUL_DIFF   (hash md5:28c4a80823c597ff16bec425419fe9ed)
// not bridged: 
Theorem IN_AFFINE_ADD_MUL_DIFF : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R, forall x y z :e R :^: idx N, affine N s /\ (x :e s /\ (y :e s /\ z :e s)) -> vector_add N x (vector_mul N a (vector_sub N y z)) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:264 / IN_AFFINE_MUL_DIFF_ADD   (hash md5:9a40a04340ddbec003d40699223fcd02)
// not bridged: 
Theorem IN_AFFINE_MUL_DIFF_ADD : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R, forall x y z :e R :^: idx N, affine N s /\ (x :e s /\ (y :e s /\ z :e s)) -> vector_add N (vector_mul N a (vector_sub N x y)) z :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:270 / IN_AFFINE_SUB_MUL_DIFF   (hash md5:83bacd3405fb8a04278b162f0d24743b)
// not bridged: 
Theorem IN_AFFINE_SUB_MUL_DIFF : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R, forall x y z :e R :^: idx N, affine N s /\ (x :e s /\ (y :e s /\ z :e s)) -> vector_sub N x (vector_mul N a (vector_sub N y z)) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:276 / AFFINE_DIFFS_SUBSPACE   (hash md5:c417a3cc6761c48972bd55d777ecedc9)
// not bridged: 
Theorem AFFINE_DIFFS_SUBSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, affine N s /\ a :e s -> subspace N {vector_sub N x a | x :e R :^: idx N, x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:292 / AFFINE_VSUM   (hash md5:be42933a2f469439b51d56447a05deaf)
// not bridged: 
Theorem AFFINE_VSUM : forall A N:set, A <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall k c= A, forall u:set -> set, (forall x :e A, u x :e R) -> forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx N) -> finite k /\ (affine N s /\ (finsum k u = 1 /\ (forall i :e A, i :e k -> x i :e s))) -> vsum A N k (fun i:set => vector_mul N (u i) (x i)) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:316 / AFFINE_VSUM_STRONG   (hash md5:f64a56d275efed4b80afd816f136a58b)
// not bridged: 
Theorem AFFINE_VSUM_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall k c= A, forall u:set -> set, (forall x :e A, u x :e R) -> forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx N) -> affine N s /\ (finsum k u = 1 /\ (forall i :e A, i :e k -> u i = 0 \/ x i :e s)) -> vsum A N k (fun i:set => vector_mul N (u i) (x i)) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:335 / AFFINE_INDEXED   (hash md5:de02f5c6e939e0b8db5206cae769ee3c)
// not bridged: 
Theorem AFFINE_INDEXED : forall N:set, N <> Empty -> forall s c= R :^: idx N, affine N s <-> forall k :e omega, forall u:set -> set, (forall x :e omega, u x :e R) -> forall x:set -> set, (forall x0 :e omega, x x0 :e R :^: idx N) -> (forall i :e omega, 1 <= i /\ i <= k -> x i :e s) /\ finsum (idx_n k) u = 1 -> vsum omega N (idx_n k) (fun i:set => vector_mul N (u i) (x i)) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:353 / AFFINE_HULL_INDEXED   (hash md5:0b925c04a12b4b5c1ef8be82fae2d282)
// not bridged: 
Theorem AFFINE_HULL_INDEXED : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = {y :e R :^: idx N | exists k :e omega, exists u:set -> set, (forall x :e omega, u x :e R) /\ exists x:set -> set, (forall x0 :e omega, x x0 :e R :^: idx N) /\ ((forall i :e omega, 1 <= i /\ i <= k -> x i :e s) /\ (finsum (idx_n k) u = 1 /\ vsum omega N (idx_n k) (fun i:set => vector_mul N (u i) (x i)) = y))}.
Admitted.

// HOL Light: Multivariate/convex.ml:386 / AFFINE   (hash md5:9c368d2c1e913fb375ee3cdb56aa3761)
// not bridged: 
Theorem AFFINE : forall N:set, N <> Empty -> forall V c= R :^: idx N, affine N V <-> forall s c= R :^: idx N, forall u:set -> set, (forall x :e R :^: idx N, u x :e R) -> finite s /\ (~ s = Empty /\ (s c= V /\ finsum s u = 1)) -> vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) :e V.
Admitted.

// HOL Light: Multivariate/convex.ml:406 / AFFINE_EXPLICIT   (hash md5:2b62959bbe9198238b80d033515babe2)
// not bridged: 
Theorem AFFINE_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, affine N s <-> forall t c= R :^: idx N, forall u:set -> set, (forall x :e R :^: idx N, u x :e R) -> finite t /\ (t c= s /\ finsum t u = 1) -> vsum (R :^: idx N) N t (fun x:set => vector_mul N (u x) x) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:418 / AFFINE_HULL_EXPLICIT   (hash md5:035a96e41090c957616f643bedd88bae)
// not bridged: 
Theorem AFFINE_HULL_EXPLICIT : forall N:set, N <> Empty -> forall p c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} p = {y :e R :^: idx N | exists s c= R :^: idx N, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finite s /\ (~ s = Empty /\ (s c= p /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = y))))}.
Admitted.

// HOL Light: Multivariate/convex.ml:470 / AFFINE_HULL_EXPLICIT_ALT   (hash md5:0b7c971fe428aa54d23291b570b7057f)
// not bridged: 
Theorem AFFINE_HULL_EXPLICIT_ALT : forall N:set, N <> Empty -> forall p c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} p = {y :e R :^: idx N | exists s c= R :^: idx N, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finite s /\ (s c= p /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = y)))}.
Admitted.

// HOL Light: Multivariate/convex.ml:482 / AFFINE_HULL_FINITE   (hash md5:3aaf33e7a5c30e906d3dc52adefd665e)
// not bridged: 
Theorem AFFINE_HULL_FINITE : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = y)}.
Admitted.

// HOL Light: Multivariate/convex.ml:515 / AFFINE_HULL_0_EXPLICIT   (hash md5:ba4b12a8be648f191a3c91e27c6f3833)
// not bridged: 
Theorem AFFINE_HULL_0_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s <-> exists t c= R :^: idx N, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finite t /\ (~ t = Empty /\ (t c= s /\ (~ finsum t u = 0 /\ vsum (R :^: idx N) N t (fun x:set => vector_mul N (u x) x) = vec N 0)))).
Admitted.

// HOL Light: Multivariate/convex.ml:533 / AFFINE_HULL_EMPTY   (hash md5:795a1ebc85d130e4c0202062fa46509d)
// not bridged: 
Theorem AFFINE_HULL_EMPTY : forall A:set, A <> Empty -> hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} Empty = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:538 / AFFINE_HULL_EQ_EMPTY   (hash md5:14f811e968395fc1d782debf82097038)
// not bridged: 
Theorem AFFINE_HULL_EQ_EMPTY : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s = Empty <-> s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:543 / AFFINE_HULL_FINITE_STEP_GEN   (hash md5:8370b846ed1549607c64328e12b52181)
// not bridged: 
Theorem AFFINE_HULL_FINITE_STEP_GEN : forall N:set, N <> Empty -> forall w :e R, forall y :e R :^: idx N, forall s c= R :^: idx N, forall a :e R :^: idx N, forall P:set -> set -> prop, ((exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e Empty -> P x (u x)) /\ (finsum Empty u = w /\ vsum (R :^: idx N) N Empty (fun x:set => vector_mul N (u x) x) = y))) <-> w = 0 /\ y = vec N 0) /\ (finite s /\ ((forall y0 :e R, a :e s /\ P a y0 -> P a (y0 :/: 2)) /\ (forall x y0 :e R, a :e s /\ (P a x /\ P a y0) -> P a (x + y0))) -> ((exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e SetAdjoin s a -> P x (u x)) /\ (finsum (SetAdjoin s a) u = w /\ vsum (R :^: idx N) N (SetAdjoin s a) (fun x:set => vector_mul N (u x) x) = y))) <-> exists v :e R, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (P a v /\ ((forall x :e R :^: idx N, x :e s -> P x (u x)) /\ (finsum s u = w + - v /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = vector_sub N y (vector_mul N v a)))))).
Admitted.

// HOL Light: Multivariate/convex.ml:594 / AFFINE_HULL_FINITE_STEP   (hash md5:47904e40cd820ee216be18b8691352a8)
// not bridged: 
Theorem AFFINE_HULL_FINITE_STEP : forall N:set, N <> Empty -> forall w :e R, forall y :e R :^: idx N, forall s c= R :^: idx N, forall a :e R :^: idx N, ((exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finsum Empty u = w /\ vsum (R :^: idx N) N Empty (fun x:set => vector_mul N (u x) x) = y)) <-> w = 0 /\ y = vec N 0) /\ (finite s -> ((exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finsum (SetAdjoin s a) u = w /\ vsum (R :^: idx N) N (SetAdjoin s a) (fun x:set => vector_mul N (u x) x) = y)) <-> exists v :e R, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finsum s u = w + - v /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = vector_sub N y (vector_mul N v a)))).
Admitted.

// HOL Light: Multivariate/convex.ml:605 / AFFINE_HULL_2   (hash md5:329f4b5c6df3abcf71dc546619d1a871)
// not bridged: 
Theorem AFFINE_HULL_2 : forall A:set, A <> Empty -> forall a b :e R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} {a,b} = \/_ u :e R, {vector_add A (vector_mul A u a) (vector_mul A v b) | v :e R, u + v = 1}.
Admitted.

// HOL Light: Multivariate/convex.ml:614 / AFFINE_HULL_2_ALT   (hash md5:d9e2a4ec8aeb15f7fef5ce27bb7c388a)
// not bridged: 
Theorem AFFINE_HULL_2_ALT : forall A:set, A <> Empty -> forall a b :e R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} {a,b} = {vector_add A a (vector_mul A u (vector_sub A b a)) | u :e R, u :e R}.
Admitted.

// HOL Light: Multivariate/convex.ml:623 / AFFINE_HULL_3   (hash md5:5ddbe4d405a32ef352b9f9b8eea328b0)
// not bridged: 
Theorem AFFINE_HULL_3 : forall A:set, A <> Empty -> forall a b c :e R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} {a,b,c} = \/_ u :e R, \/_ v :e R, {vector_add A (vector_mul A u a) (vector_add A (vector_mul A v b) (vector_mul A w c)) | w :e R, u + v + w = 1}.
Admitted.

// HOL Light: Multivariate/convex.ml:632 / AFFINE_HULL_0_2_EXPLICIT   (hash md5:5ca42040829f126c32cad1bfab14da0d)
// not bridged: 
Theorem AFFINE_HULL_0_2_EXPLICIT : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vec N 0 :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} {x,y} <-> exists a b :e R, vector_add N (vector_mul N a x) (vector_mul N b y) = vec N 0 /\ ~ a + b = 0.
Admitted.

// HOL Light: Multivariate/convex.ml:645 / AFFINE_HULL_0_3_EXPLICIT   (hash md5:08e05ad7c5765f722f55e118fcafdbdb)
// not bridged: 
Theorem AFFINE_HULL_0_3_EXPLICIT : forall N:set, N <> Empty -> forall x y z :e R :^: idx N, vec N 0 :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} {x,y,z} <-> exists a b c :e R, vector_add N (vector_mul N a x) (vector_add N (vector_mul N b y) (vector_mul N c z)) = vec N 0 /\ ~ a + b + c = 0.
Admitted.

// HOL Light: Multivariate/convex.ml:664 / AFFINE_HULL_INSERT_SUBSET_SPAN   (hash md5:a7b7d193f90f833148df6d2cd8c7b9cb)
// not bridged: 
Theorem AFFINE_HULL_INSERT_SUBSET_SPAN : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (SetAdjoin s a) c= {vector_add N a v | v :e R :^: idx N, v :e span N {vector_sub N x a | x :e R :^: idx N, x :e s}}.
Admitted.

// HOL Light: Multivariate/convex.ml:693 / AFFINE_HULL_INSERT_SPAN   (hash md5:ff2b5e097540db3ce7d0d240c22445e0)
// not bridged: 
Theorem AFFINE_HULL_INSERT_SPAN : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, ~ a :e s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (SetAdjoin s a) = {vector_add N a v | v :e R :^: idx N, v :e span N {vector_sub N x a | x :e R :^: idx N, x :e s}}.
Admitted.

// HOL Light: Multivariate/convex.ml:727 / AFFINE_HULL_SPAN   (hash md5:f0f8e82e2488a7008a2946af6f9e42c0)
// not bridged: 
Theorem AFFINE_HULL_SPAN : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, a :e s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = {vector_add N a v | v :e R :^: idx N, v :e span N {vector_sub N x a | x :e R :^: idx N, x :e s :\: {a}}}.
Admitted.

// HOL Light: Multivariate/convex.ml:738 / DIFFS_AFFINE_HULL_SPAN   (hash md5:7e85c81e1afd28c1fe94918f303bd370)
// not bridged: 
Theorem DIFFS_AFFINE_HULL_SPAN : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, a :e s -> {vector_sub N x a | x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s} = span N {vector_sub N x a | x :e R :^: idx N, x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:748 / AFFINE_HULL_SING   (hash md5:72dee67377bd1fde9a1709c65a4530e0)
// not bridged: 
Theorem AFFINE_HULL_SING : forall A:set, A <> Empty -> forall a :e R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} {a} = {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:754 / AFFINE_HULL_EQ_SING   (hash md5:870277ff349ab43958a61e2a2ba426ff)
// not bridged: 
Theorem AFFINE_HULL_EQ_SING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = {a} <-> s = {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:763 / AFFINE_HULL_SCALING   (hash md5:c6e8c944720ed3c322951185d0179064)
// not bridged: 
Theorem AFFINE_HULL_SCALING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {vector_mul N c x | x :e s} = {vector_mul N c x | x :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:778 / AFFINE_HULL_AFFINITY   (hash md5:a7fce0596865922c2b9f8bda5452859c)
// not bridged: 
Theorem AFFINE_HULL_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall c :e R, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {vector_add N (vector_mul N c x) a | x :e s} = {vector_add N (vector_mul N c x) a | x :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:790 / convex   (hash md5:b4fa4bc35f84236c9d7568457f82be50)
// not bridged: 
Theorem convex_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s <-> forall x y :e R :^: idx A, forall u v :e R, x :e s /\ (y :e s /\ (0 <= u /\ (0 <= v /\ u + v = 1))) -> vector_add A (vector_mul A u x) (vector_mul A v y) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:795 / CONVEX_ALT   (hash md5:b8164c517888411b18a0f57f16357844)
// not bridged: 
Theorem CONVEX_ALT : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s <-> forall x y :e R :^: idx A, forall u :e R, x :e s /\ (y :e s /\ (0 <= u /\ u <= 1)) -> vector_add A (vector_mul A (1 + - u) x) (vector_mul A u y) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:803 / IN_CONVEX_SET   (hash md5:7fb138ee8e87f0f9ab99966f6e09b6b5)
// not bridged: 
Theorem IN_CONVEX_SET : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a b :e R :^: idx A, forall u :e R, convex A s /\ (a :e s /\ (b :e s /\ (0 <= u /\ u <= 1))) -> vector_add A (vector_mul A (1 + - u) a) (vector_mul A u b) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:809 / MIDPOINT_IN_CONVEX   (hash md5:060c8af40a6d83423c406fe1ab4d9790)
// not bridged: 
Theorem MIDPOINT_IN_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, convex N s /\ (x :e s /\ y :e s) -> midpoint N (x,y) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:819 / CONVEX_CONTAINS_SEGMENT   (hash md5:af5caa5b32c9788b0113a84c60e9aef9)
// not bridged: 
Theorem CONVEX_CONTAINS_SEGMENT : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s <-> forall a b :e R :^: idx A, a :e s /\ b :e s -> closed_segment A (seq_cons (a,b) seq_nil) c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:823 / CONVEX_CONTAINS_OPEN_SEGMENT   (hash md5:2dde103a59fd79e4f7a4d25bac9d57c9)
// not bridged: 
Theorem CONVEX_CONTAINS_OPEN_SEGMENT : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s <-> forall a b :e R :^: idx A, a :e s /\ b :e s -> open_segment A (a,b) c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:828 / CONVEX_CONTAINS_SEGMENT_EQ   (hash md5:b6451a00c3a8ef78b7ababab2266da13)
// not bridged: 
Theorem CONVEX_CONTAINS_SEGMENT_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s <-> forall a b :e R :^: idx N, closed_segment N (seq_cons (a,b) seq_nil) c= s <-> a :e s /\ b :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:834 / CONVEX_CONTAINS_SEGMENT_IMP   (hash md5:586700446741917feeca288bab755561)
// not bridged: 
Theorem CONVEX_CONTAINS_SEGMENT_IMP : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a b :e R :^: idx A, convex A s -> (closed_segment A (seq_cons (a,b) seq_nil) c= s <-> a :e s /\ b :e s).
Admitted.

// HOL Light: Multivariate/convex.ml:838 / SEGMENT_SUBSET_CONVEX   (hash md5:683646a7e093778f83666008177831d2)
// not bridged: 
Theorem SEGMENT_SUBSET_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (a :e s /\ b :e s) -> closed_segment N (seq_cons (a,b) seq_nil) c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:843 / CONVEX_CONTAINS   (hash md5:18649e33865bae330617b861f4149379)
// not bridged: 
Theorem CONVEX_CONTAINS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b x :e R :^: idx N, convex N s /\ (a :e s /\ (b :e s /\ x :e closed_segment N (seq_cons (a,b) seq_nil))) -> x :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:848 / CONVEX_EMPTY   (hash md5:2db735a023dd07e80b6b2ad0900ab3fd)
// not bridged: 
Theorem CONVEX_EMPTY : forall A:set, A <> Empty -> convex A Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:852 / CONVEX_SING   (hash md5:79d8689e7b80f6878abbfb1534334729)
// not bridged: 
Theorem CONVEX_SING : forall A:set, A <> Empty -> forall a :e R :^: idx A, convex A {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:856 / CONVEX_UNIV   (hash md5:b3509548b72402936384c1d88d08a0ba)
// not bridged: 
Theorem CONVEX_UNIV : forall N:set, N <> Empty -> convex N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/convex.ml:860 / CONVEX_INTERS   (hash md5:865fceffc61b8a4c44fd56443d453c72)
// not bridged: 
Theorem CONVEX_INTERS : forall A:set, A <> Empty -> forall f c= Power (R :^: idx A), (forall s c= R :^: idx A, s :e f -> convex A s) -> convex A {x :e R :^: idx A | forall Y :e f, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:864 / CONVEX_INTER   (hash md5:835b231c8abb1bf0c882a662fa17d433)
// not bridged: 
Theorem CONVEX_INTER : forall A:set, A <> Empty -> forall s t c= R :^: idx A, convex A s /\ convex A t -> convex A (s :/\: t).
Admitted.

// HOL Light: Multivariate/convex.ml:868 / CONVEX_HALFSPACE_LE   (hash md5:5af22d5c70c47e8d6e4d520b052a03f0)
// not bridged: 
Theorem CONVEX_HALFSPACE_LE : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall b :e R, convex A {x :e R :^: idx A | dot A a x <= b}.
Admitted.

// HOL Light: Multivariate/convex.ml:876 / CONVEX_HALFSPACE_COMPONENT_LE   (hash md5:fc7a6ecca356f7164e9f78277225c6db)
// not bridged: 
Theorem CONVEX_HALFSPACE_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, convex N {x :e R :^: idx N | x k <= a}.
Admitted.

// HOL Light: Multivariate/convex.ml:885 / CONVEX_HALFSPACE_GE   (hash md5:539bcfe0e7c86423cbad09f387fd801d)
// not bridged: 
Theorem CONVEX_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, convex N {x :e R :^: idx N | b <= dot N a x}.
Admitted.

// HOL Light: Multivariate/convex.ml:892 / CONVEX_HALFSPACE_COMPONENT_GE   (hash md5:86c2cfb78da13a9fbd19365fe9c2faa9)
// not bridged: 
Theorem CONVEX_HALFSPACE_COMPONENT_GE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, convex N {x :e R :^: idx N | a <= x k}.
Admitted.

// HOL Light: Multivariate/convex.ml:901 / CONVEX_HYPERPLANE   (hash md5:39eaf3cae90ada53c7f6911606db3969)
// not bridged: 
Theorem CONVEX_HYPERPLANE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, convex N {x :e R :^: idx N | dot N a x = b}.
Admitted.

// HOL Light: Multivariate/convex.ml:910 / CONVEX_STANDARD_HYPERPLANE   (hash md5:29be8ef4046ac87cde557622b983777a)
// not bridged: 
Theorem CONVEX_STANDARD_HYPERPLANE : forall N:set, N <> Empty -> forall k :e omega, forall a :e R, convex N {x :e R :^: idx N | x k = a}.
Admitted.

// HOL Light: Multivariate/convex.ml:919 / CONVEX_HALFSPACE_LT   (hash md5:6b58e3fde0d9e965f05164165cb5e60d)
// not bridged: 
Theorem CONVEX_HALFSPACE_LT : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall b :e R, convex A {x :e R :^: idx A | dot A a x < b}.
Admitted.

// HOL Light: Multivariate/convex.ml:925 / CONVEX_HALFSPACE_COMPONENT_LT   (hash md5:ccd7f9f665940bd817a7db0a5f8cccbc)
// not bridged: 
Theorem CONVEX_HALFSPACE_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, convex N {x :e R :^: idx N | x k < a}.
Admitted.

// HOL Light: Multivariate/convex.ml:934 / CONVEX_HALFSPACE_GT   (hash md5:98760554f696877219b11600412e4de2)
// not bridged: 
Theorem CONVEX_HALFSPACE_GT : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall b :e R, convex A {x :e R :^: idx A | b < dot A a x}.
Admitted.

// HOL Light: Multivariate/convex.ml:939 / CONVEX_HALFSPACE_COMPONENT_GT   (hash md5:5e40c9b344a63877f1420b9f5a8efb19)
// not bridged: 
Theorem CONVEX_HALFSPACE_COMPONENT_GT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, convex N {x :e R :^: idx N | a < x k}.
Admitted.

// HOL Light: Multivariate/convex.ml:948 / CONVEX_STRIP_COMPONENT_LE   (hash md5:8367fa0eeb9b86b423f5578c0fc85f7a)
// not bridged: 
Theorem CONVEX_STRIP_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, convex N {x :e R :^: idx N | abs_SNo (x k) <= a}.
Admitted.

// HOL Light: Multivariate/convex.ml:955 / CONVEX_STRIP_COMPONENT_LT   (hash md5:e38459c1eb736c931bb74a1c5fa3cf92)
// not bridged: 
Theorem CONVEX_STRIP_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, convex N {x :e R :^: idx N | abs_SNo (x k) < a}.
Admitted.

// HOL Light: Multivariate/convex.ml:962 / CONVEX_HALFSPACE_SGN   (hash md5:e11b4223775366657edcb94c40d5c902)
// not bridged: 
Theorem CONVEX_HALFSPACE_SGN : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, convex N {x :e R :^: idx N | (if 0 < dot N a x then 1 else if dot N a x < 0 then - 1 else 0) = b}.
Admitted.

// HOL Light: Multivariate/convex.ml:975 / CONVEX_HALFSPACE_COMPONENT_SGN   (hash md5:d5c2e66bf2bf4ebf9c8630485157c152)
// not bridged: 
Theorem CONVEX_HALFSPACE_COMPONENT_SGN : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, convex N {x :e R :^: idx N | (if 0 < x k then 1 else if x k < 0 then - 1 else 0) = a}.
Admitted.

// HOL Light: Multivariate/convex.ml:984 / CONVEX_POSITIVE_ORTHANT   (hash md5:5b378ae098666a057d8dbd63b56d408b)
// not bridged: 
Theorem CONVEX_POSITIVE_ORTHANT : forall N:set, N <> Empty -> convex N {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 <= x i}.
Admitted.

// HOL Light: Multivariate/convex.ml:990 / LIMPT_OF_CONVEX   (hash md5:6dfa1efb5fa4089e45381e3ecf55cd6b)
// not bridged: 
Theorem LIMPT_OF_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ x :e s -> (limit_point_of N x s <-> ~ s = {x}).
Admitted.

// HOL Light: Multivariate/convex.ml:1017 / TRIVIAL_LIMIT_WITHIN_CONVEX   (hash md5:c935a8be75e2f1f0a7b8190310428c6c)
// not bridged: 
Theorem TRIVIAL_LIMIT_WITHIN_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ x :e s -> (trivial_limit (R :^: idx N) (within (R :^: idx N) (at_hl N x) s) <-> s = {x}).
Admitted.

// HOL Light: Multivariate/convex.ml:1026 / CONVEX_TRANSLATION_EQ   (hash md5:4638ce7e2783cdfa2f52952391dfbd94)
// not bridged: 
Theorem CONVEX_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, convex N {vector_add N a x | x :e s} <-> convex N s.
Admitted.

// HOL Light: Multivariate/convex.ml:1034 / CONVEX_TRANSLATION   (hash md5:7acb7d755d1061127727a9c6d3bd897f)
// not bridged: 
Theorem CONVEX_TRANSLATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, convex N s -> convex N {vector_add N a x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1038 / CONVEX_LINEAR_IMAGE   (hash md5:1a8921f81473c5e1bff48bd356407e55)
// not bridged: 
Theorem CONVEX_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx A, convex A s /\ linear A B f -> convex B {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1043 / CONVEX_LINEAR_IMAGE_EQ   (hash md5:59ecb201b6253d793de6a1e31daec80a)
// not bridged: 
Theorem CONVEX_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ (forall x y :e R :^: idx B, f x = f y -> x = y) -> (convex A {f x | x :e s} <-> convex B s).
Admitted.

// HOL Light: Multivariate/convex.ml:1054 / CONVEX_VSUM   (hash md5:5f64405ddd8a788d7b1385a8e27c076e)
// not bridged: 
Theorem CONVEX_VSUM : forall A N:set, A <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall k c= A, forall u:set -> set, (forall x :e A, u x :e R) -> forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx N) -> finite k /\ (convex N s /\ (finsum k u = 1 /\ (forall i :e A, i :e k -> 0 <= u i /\ x i :e s))) -> vsum A N k (fun i:set => vector_mul N (u i) (x i)) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:1100 / CONVEX_VSUM_STRONG   (hash md5:e2273588f2e1c096e43a6156b5d91654)
// not bridged: 
Theorem CONVEX_VSUM_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall k c= A, forall u:set -> set, (forall x :e A, u x :e R) -> forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx N) -> convex N s /\ (finsum k u = 1 /\ (forall i :e A, i :e k -> 0 <= u i /\ (u i = 0 \/ x i :e s))) -> vsum A N k (fun i:set => vector_mul N (u i) (x i)) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:1119 / CONVEX_INDEXED   (hash md5:5e4803885ffe6aacc93b5e4ed4a4a456)
// not bridged: 
Theorem CONVEX_INDEXED : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s <-> forall k :e omega, forall u:set -> set, (forall x :e omega, u x :e R) -> forall x:set -> set, (forall x0 :e omega, x x0 :e R :^: idx N) -> (forall i :e omega, 1 <= i /\ i <= k -> 0 <= u i /\ x i :e s) /\ finsum (idx_n k) u = 1 -> vsum omega N (idx_n k) (fun i:set => vector_mul N (u i) (x i)) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:1137 / CONVEX_EXPLICIT   (hash md5:c91d8466fc4d0a58e2e0ee89b92b3d21)
// not bridged: 
Theorem CONVEX_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s <-> forall t c= R :^: idx N, forall u:set -> set, (forall x :e R :^: idx N, u x :e R) -> finite t /\ (t c= s /\ ((forall x :e R :^: idx N, x :e t -> 0 <= u x) /\ finsum t u = 1)) -> vsum (R :^: idx N) N t (fun x:set => vector_mul N (u x) x) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:1157 / CONVEX   (hash md5:373f0711462fd028797d2c91114d9e10)
// not bridged: 
Theorem CONVEX : forall N:set, N <> Empty -> forall V c= R :^: idx N, convex N V <-> forall s c= R :^: idx N, forall u:set -> set, (forall x :e R :^: idx N, u x :e R) -> finite s /\ (~ s = Empty /\ (s c= V /\ ((forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ finsum s u = 1))) -> vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) :e V.
Admitted.

// HOL Light: Multivariate/convex.ml:1171 / CONVEX_FINITE   (hash md5:e0d0fa974fe4addbd8da090109bc66eb)
// not bridged: 
Theorem CONVEX_FINITE : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> (convex N s <-> forall u:set -> set, (forall x :e R :^: idx N, u x :e R) -> (forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ finsum s u = 1 -> vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) :e s).
Admitted.

// HOL Light: Multivariate/convex.ml:1188 / AFFINE_PCROSS   (hash md5:eef50dfcef8dd757cb9c9fdc8673c7f6)
// not bridged: 
Theorem AFFINE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, affine M s /\ affine N t -> affine (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:1195 / AFFINE_PCROSS_EQ   (hash md5:f616b593d2aab3015b3b7770a8864d98)
// not bridged: 
Theorem AFFINE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, affine (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ affine M s /\ affine N t).
Admitted.

// HOL Light: Multivariate/convex.ml:1215 / CONVEX_PCROSS   (hash md5:1fa3a5668412201b4f291ffb1c9b87cc)
// not bridged: 
Theorem CONVEX_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, convex M s /\ convex N t -> convex (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:1222 / CONVEX_PCROSS_EQ   (hash md5:bec0860700d73c6ad4891bd061769856)
// not bridged: 
Theorem CONVEX_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, convex (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ convex M s /\ convex N t).
Admitted.

// HOL Light: Multivariate/convex.ml:1246 / conic   (hash md5:f6a209c28d01492d0fbc124c211c2854)
// not bridged: 
Theorem conic_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, conic A s <-> forall x :e R :^: idx A, forall c :e R, x :e s /\ 0 <= c -> vector_mul A c x :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:1249 / SUBSPACE_IMP_CONIC   (hash md5:89c584f6e845f9e7d901624dcefc1933)
// not bridged: 
Theorem SUBSPACE_IMP_CONIC : forall A:set, A <> Empty -> forall s c= R :^: idx A, subspace A s -> conic A s.
Admitted.

// HOL Light: Multivariate/convex.ml:1253 / CONIC_EMPTY   (hash md5:a5f991bdd98f681e053d628b0daf5cec)
// not bridged: 
Theorem CONIC_EMPTY : forall A:set, A <> Empty -> conic A Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:1257 / CONIC_UNIV   (hash md5:9ced06815f3946d2b08d1bc21969af98)
// not bridged: 
Theorem CONIC_UNIV : forall N:set, N <> Empty -> conic N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/convex.ml:1261 / CONIC_INTERS   (hash md5:467383d88ca98674bb9b5de275490a16)
// not bridged: 
Theorem CONIC_INTERS : forall A:set, A <> Empty -> forall f c= Power (R :^: idx A), (forall s c= R :^: idx A, s :e f -> conic A s) -> conic A {x :e R :^: idx A | forall Y :e f, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:1265 / CONIC_LINEAR_IMAGE   (hash md5:b5b6c88394cf757cd27592d53b4dec6f)
// not bridged: 
Theorem CONIC_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx A, conic A s /\ linear A B f -> conic B {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1270 / CONIC_LINEAR_IMAGE_EQ   (hash md5:70767d36b1c52a4249dc6cd36fe9982d)
// not bridged: 
Theorem CONIC_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ (forall x y :e R :^: idx B, f x = f y -> x = y) -> (conic A {f x | x :e s} <-> conic B s).
Admitted.

// HOL Light: Multivariate/convex.ml:1277 / CONIC_MUL   (hash md5:0db52a89aba9bc4a41d33d34daf75e37)
// not bridged: 
Theorem CONIC_MUL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, forall x :e R :^: idx N, conic N s /\ (x :e s /\ 0 <= c) -> vector_mul N c x :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:1281 / CONIC_CONIC_HULL   (hash md5:4e0ae98d4043477622bb4fc733376e87)
// not bridged: 
Theorem CONIC_CONIC_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, conic A (hull (R :^: idx A) {x :e Power (R :^: idx A) | conic A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:1285 / CONIC_HULL_EQ   (hash md5:2892ac163eba2d5321df15fc90143404)
// not bridged: 
Theorem CONIC_HULL_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | conic A x} s = s <-> conic A s.
Admitted.

// HOL Light: Multivariate/convex.ml:1289 / CONIC_HULL_UNIV   (hash md5:ae11ed5ee8d229b965abd485cad6629e)
// not bridged: 
Theorem CONIC_HULL_UNIV : forall N:set, N <> Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (R :^: idx N) = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:1293 / CONIC_NEGATIONS   (hash md5:eda1f0d76586943fa09c9b498134e24a)
// not bridged: 
Theorem CONIC_NEGATIONS : forall A:set, A <> Empty -> forall s c= R :^: idx A, conic A s -> conic A {vector_neg A x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1298 / CONIC_SPAN   (hash md5:e3a807910a4c171789180231b7c9ffd9)
// not bridged: 
Theorem CONIC_SPAN : forall A:set, A <> Empty -> forall s c= R :^: idx A, conic A (span A s).
Admitted.

// HOL Light: Multivariate/convex.ml:1302 / CONIC_HULL_EXPLICIT   (hash md5:6a42e9a749293a70a7edefef1d00b086)
// not bridged: 
Theorem CONIC_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s = \/_ c :e R, {vector_mul N c x | x :e R :^: idx N, 0 <= c /\ x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1315 / CONIC_HULL_AS_IMAGE   (hash md5:c810d4afec015ef30d386156311d4a47)
// not bridged: 
Theorem CONIC_HULL_AS_IMAGE : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s = {vector_mul N (drop (fstcart 1 z)) (sndcart 1 N z) | z :e \/_ x :e {t :e R :^: idx 1 | 0 <= drop t}, {pastecart 1 N x y | y :e s}}.
Admitted.

// HOL Light: Multivariate/convex.ml:1323 / CONIC_HULL_POINTLESS_AS_IMAGE   (hash md5:fa0476c4c9bde0b3870415e5d8ec78e5)
// not bridged: 
Theorem CONIC_HULL_POINTLESS_AS_IMAGE : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s :\: {vec N 0} = {vector_mul N (drop (fstcart 1 z)) (sndcart 1 N z) | z :e \/_ x :e {t :e R :^: idx 1 | 0 < drop t}, {pastecart 1 N x y | y :e s :\: {vec N 0}}}.
Admitted.

// HOL Light: Multivariate/convex.ml:1339 / CONIC_HULL_LINEAR_IMAGE   (hash md5:db8b151fa750b1a4656092b87ae273a1)
// not bridged: 
Theorem CONIC_HULL_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f -> hull (R :^: idx A) {x :e Power (R :^: idx A) | conic A x} {f x | x :e s} = {f x | x :e hull (R :^: idx B) {x :e Power (R :^: idx B) | conic B x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1349 / CONIC_HULL_IMAGE_SCALE   (hash md5:e023ac95133d191c8b392db0f8b0073b)
// not bridged: 
Theorem CONIC_HULL_IMAGE_SCALE : forall N:set, N <> Empty -> forall c:set -> set, (forall x :e R :^: idx N, c x :e R) -> forall s c= R :^: idx N, (forall x :e R :^: idx N, x :e s -> 0 < c x) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} {vector_mul N (c x) x | x :e s} = hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:1365 / CONVEX_CONIC_HULL   (hash md5:440b0a7d18b933c70d12c0d63e80401c)
// not bridged: 
Theorem CONVEX_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> convex N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:1396 / CONIC_HALFSPACE_LE   (hash md5:a68ba099424cef64d2323616b120e8d0)
// not bridged: 
Theorem CONIC_HALFSPACE_LE : forall A:set, A <> Empty -> forall a :e R :^: idx A, conic A {x :e R :^: idx A | dot A a x <= 0}.
Admitted.

// HOL Light: Multivariate/convex.ml:1402 / CONIC_HALFSPACE_GE   (hash md5:b378e0618787104fadb757aba4f0e4ed)
// not bridged: 
Theorem CONIC_HALFSPACE_GE : forall A:set, A <> Empty -> forall a :e R :^: idx A, conic A {x :e R :^: idx A | 0 <= dot A a x}.
Admitted.

// HOL Light: Multivariate/convex.ml:1406 / CONIC_HULL_EMPTY   (hash md5:9e99e94257bbc2a814ba5a53870e537d)
// not bridged: 
Theorem CONIC_HULL_EMPTY : forall A:set, A <> Empty -> hull (R :^: idx A) {x :e Power (R :^: idx A) | conic A x} Empty = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:1411 / CONIC_CONTAINS_0   (hash md5:45cd582fcb49d2f55391e5650738ea9e)
// not bridged: 
Theorem CONIC_CONTAINS_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s -> (vec N 0 :e s <-> ~ s = Empty).
Admitted.

// HOL Light: Multivariate/convex.ml:1420 / CONIC_HULL_EQ_EMPTY   (hash md5:15311cadaef7117eb56b3b9f17708dcf)
// not bridged: 
Theorem CONIC_HULL_EQ_EMPTY : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | conic A x} s = Empty <-> s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:1425 / CONIC_SUMS   (hash md5:d5c0f90a788631dd9b6ed2cf548006bf)
// not bridged: 
Theorem CONIC_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, conic N s /\ conic N t -> conic N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:1430 / CONIC_PCROSS   (hash md5:54310397d8111d4a02bfbd753543d556)
// not bridged: 
Theorem CONIC_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, conic M s /\ conic N t -> conic (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:1437 / CONIC_PCROSS_EQ   (hash md5:2374091baf6f89a6f76401f3bd994d54)
// not bridged: 
Theorem CONIC_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, conic (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ conic M s /\ conic N t).
Admitted.

// HOL Light: Multivariate/convex.ml:1457 / CONIC_POSITIVE_ORTHANT   (hash md5:1a03bd6b417b3bf4a84477d744497dfa)
// not bridged: 
Theorem CONIC_POSITIVE_ORTHANT : forall N:set, N <> Empty -> conic N {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 <= x i}.
Admitted.

// HOL Light: Multivariate/convex.ml:1461 / CONIC_HULL_0   (hash md5:6242100a74dd8a26544935589214e901)
// not bridged: 
Theorem CONIC_HULL_0 : forall A:set, A <> Empty -> hull (R :^: idx A) {x :e Power (R :^: idx A) | conic A x} {vec A 0} = {vec A 0}.
Admitted.

// HOL Light: Multivariate/convex.ml:1466 / CONIC_HULL_CONTAINS_0   (hash md5:0ec23f7d5e8a2b9af744c1a74163c28d)
// not bridged: 
Theorem CONIC_HULL_CONTAINS_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s <-> ~ s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:1470 / CONIC_HULL_EQ_SING   (hash md5:0caf9e470940b405ef05e1544f4171a7)
// not bridged: 
Theorem CONIC_HULL_EQ_SING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, hull (R :^: idx N) {x0 :e Power (R :^: idx N) | conic N x0} s = {x} <-> s = {vec N 0} /\ x = vec N 0.
Admitted.

// HOL Light: Multivariate/convex.ml:1482 / CONIC_HULL_INTER_AFFINE_HULL   (hash md5:7b06b6d532173642abf38a10311ee160)
// not bridged: 
Theorem CONIC_HULL_INTER_AFFINE_HULL : forall N:set, N <> Empty -> forall s f c= R :^: idx N, f c= s /\ ~ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} f :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = f.
Admitted.

// HOL Light: Multivariate/convex.ml:1509 / SEPARATE_CLOSED_CONES   (hash md5:311c15c0451ee846948e78bc0bb6b4bd)
// not bridged: 
Theorem SEPARATE_CLOSED_CONES : forall N:set, N <> Empty -> forall c d c= R :^: idx N, conic N c /\ (closed N c /\ (conic N d /\ (closed N d /\ c :/\: d c= {vec N 0}))) -> exists e0 :e R, 0 < e0 /\ forall x y :e R :^: idx N, x :e c /\ y :e d -> e0 * (if vector_norm N x <= vector_norm N y then vector_norm N y else vector_norm N x) <= distance N (x,y).
Admitted.

// HOL Light: Multivariate/convex.ml:1561 / CONTINUOUS_ON_COMPACT_SURFACE_PROJECTION   (hash md5:68c6196337635bb4beb7caf4d292b47e)
// not bridged: 
Theorem CONTINUOUS_ON_COMPACT_SURFACE_PROJECTION : forall N:set, N <> Empty -> forall s v c= R :^: idx N, forall d:set -> set, (forall x :e R :^: idx N, d x :e R) -> compact N s /\ (s c= v :\: {vec N 0} /\ (conic N v /\ (forall x :e R :^: idx N, forall k :e R, x :e v :\: {vec N 0} -> (0 < k /\ vector_mul N k x :e s <-> d x = k)))) -> continuous_on_hl N N (fun x:set => vector_mul N (d x) x) (v :\: {vec N 0}).
Admitted.

// HOL Light: Multivariate/convex.ml:1616 / affine_dependent   (hash md5:00762d1d1731a7ed132553848ae29f92)
// not bridged: 
Theorem affine_dependent_thm : forall N:set, N <> Empty -> forall s c= R :^: idx N, affine_dependent N s <-> exists x :e R :^: idx N, x :e s /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} (s :\: {x}).
Admitted.

// HOL Light: Multivariate/convex.ml:1620 / AFFINE_DEPENDENT_EXPLICIT   (hash md5:890ce8b4396272d065f5b3369c382fb0)
// not bridged: 
Theorem AFFINE_DEPENDENT_EXPLICIT : forall N:set, N <> Empty -> forall p c= R :^: idx N, affine_dependent N p <-> exists s c= R :^: idx N, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finite s /\ (s c= p /\ (finsum s u = 0 /\ ((exists v :e R :^: idx N, v :e s /\ ~ u v = 0) /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = vec N 0)))).
Admitted.

// HOL Light: Multivariate/convex.ml:1675 / AFFINE_DEPENDENT_EXPLICIT_FINITE   (hash md5:b6c4543407bdbada6de66d30463be729)
// not bridged: 
Theorem AFFINE_DEPENDENT_EXPLICIT_FINITE : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> (affine_dependent N s <-> exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finsum s u = 0 /\ ((exists v :e R :^: idx N, v :e s /\ ~ u v = 0) /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = vec N 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:1691 / AFFINE_DEPENDENT_TRANSLATION_EQ   (hash md5:a886cb23910290ca7e9e085f23b02a3b)
// not bridged: 
Theorem AFFINE_DEPENDENT_TRANSLATION_EQ : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall s c= R :^: idx A, affine_dependent A {vector_add A a x | x :e s} <-> affine_dependent A s.
Admitted.

// HOL Light: Multivariate/convex.ml:1697 / AFFINE_DEPENDENT_TRANSLATION   (hash md5:f601f877c2642116d61ab2073e561e4e)
// not bridged: 
Theorem AFFINE_DEPENDENT_TRANSLATION : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a :e R :^: idx A, affine_dependent A s -> affine_dependent A {vector_add A a x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1701 / AFFINE_DEPENDENT_LINEAR_IMAGE_EQ   (hash md5:21381f9d245c54a0f6961a24c674c276)
// not bridged: 
Theorem AFFINE_DEPENDENT_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (affine_dependent N {f x | x :e s} <-> affine_dependent M s).
Admitted.

// HOL Light: Multivariate/convex.ml:1709 / AFFINE_DEPENDENT_LINEAR_IMAGE   (hash md5:01600840d245fc6df4043bbf24852142)
// not bridged: 
Theorem AFFINE_DEPENDENT_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ ((forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y) /\ affine_dependent M s) -> affine_dependent N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1723 / AFFINE_DEPENDENT_MONO   (hash md5:688f14e632ab48b378290c40c93dd94e)
// not bridged: 
Theorem AFFINE_DEPENDENT_MONO : forall N:set, N <> Empty -> forall s t c= R :^: idx N, affine_dependent N s /\ s c= t -> affine_dependent N t.
Admitted.

// HOL Light: Multivariate/convex.ml:1732 / AFFINE_INDEPENDENT_EMPTY   (hash md5:e1037835905466b96044c04c63465c73)
// not bridged: 
Theorem AFFINE_INDEPENDENT_EMPTY : forall A:set, A <> Empty -> ~ affine_dependent A Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:1736 / AFFINE_INDEPENDENT_1   (hash md5:bffb822605e7b97ee6ce2d7aefb77c77)
// not bridged: 
Theorem AFFINE_INDEPENDENT_1 : forall N:set, N <> Empty -> forall a :e R :^: idx N, ~ affine_dependent N {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:1741 / AFFINE_INDEPENDENT_2   (hash md5:6c217236e02caaef4d8ff2d54ae61ce2)
// not bridged: 
Theorem AFFINE_INDEPENDENT_2 : forall N:set, N <> Empty -> forall a b :e R :^: idx N, ~ affine_dependent N {a,b}.
Admitted.

// HOL Light: Multivariate/convex.ml:1750 / AFFINE_INDEPENDENT_SUBSET   (hash md5:e7d49c431e60a0106fd44f268baeab5d)
// not bridged: 
Theorem AFFINE_INDEPENDENT_SUBSET : forall A:set, A <> Empty -> forall s t c= R :^: idx A, ~ affine_dependent A t /\ s c= t -> ~ affine_dependent A s.
Admitted.

// HOL Light: Multivariate/convex.ml:1755 / AFFINE_INDEPENDENT_DELETE   (hash md5:d27af2fce6bbc9a0c32b15a24613dc58)
// not bridged: 
Theorem AFFINE_INDEPENDENT_DELETE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a :e R :^: idx A, ~ affine_dependent A s -> ~ affine_dependent A (s :\: {a}).
Admitted.

// HOL Light: Multivariate/convex.ml:1765 / coplanar   (hash md5:67012b0b66f89bdaa4e10caced2b7a66)
// not bridged: 
Theorem coplanar_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, coplanar A s <-> exists u v w :e R :^: idx A, s c= hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} {u,v,w}.
Admitted.

// HOL Light: Multivariate/convex.ml:1768 / COLLINEAR_AFFINE_HULL   (hash md5:6c607db844ab14ffdcba004be927a082)
// not bridged: 
Theorem COLLINEAR_AFFINE_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, collinear N s <-> exists u v :e R :^: idx N, s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {u,v}.
Admitted.

// HOL Light: Multivariate/convex.ml:1794 / COLLINEAR_IMP_COPLANAR   (hash md5:3a4851c8f30fcb740f857d7b131f6555)
// not bridged: 
Theorem COLLINEAR_IMP_COPLANAR : forall A:set, A <> Empty -> forall s c= R :^: idx A, collinear A s -> coplanar A s.
Admitted.

// HOL Light: Multivariate/convex.ml:1798 / COPLANAR_SMALL   (hash md5:53e096a291e03b73783d767fb00667ee)
// not bridged: 
Theorem COPLANAR_SMALL : forall A:set, A <> Empty -> forall s c= R :^: idx A, finite s /\ finite_cardinality s <= 3 -> coplanar A s.
Admitted.

// HOL Light: Multivariate/convex.ml:1808 / COPLANAR_EMPTY   (hash md5:1a0f8cca8af26766e4e156a497a1cb89)
// not bridged: 
Theorem COPLANAR_EMPTY : forall A:set, A <> Empty -> coplanar A Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:1812 / COPLANAR_SING   (hash md5:53bbc1e8d7f6aceaaa02015eeba09107)
// not bridged: 
Theorem COPLANAR_SING : forall A:set, A <> Empty -> forall a :e R :^: idx A, coplanar A {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:1816 / COPLANAR_2   (hash md5:5701c1b1acd87a9d810b2db8a58487f0)
// not bridged: 
Theorem COPLANAR_2 : forall A:set, A <> Empty -> forall a b :e R :^: idx A, coplanar A {a,b}.
Admitted.

// HOL Light: Multivariate/convex.ml:1820 / COPLANAR_3   (hash md5:2a08a43d326f70f17c819ead6835a4ab)
// not bridged: 
Theorem COPLANAR_3 : forall A:set, A <> Empty -> forall a b c :e R :^: idx A, coplanar A {a,b,c}.
Admitted.

// HOL Light: Multivariate/convex.ml:1825 / COLLINEAR_AFFINE_HULL_COLLINEAR   (hash md5:8c32299a20dd50792877d13d3be265c7)
// not bridged: 
Theorem COLLINEAR_AFFINE_HULL_COLLINEAR : forall A:set, A <> Empty -> forall s c= R :^: idx A, collinear A (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s) <-> collinear A s.
Admitted.

// HOL Light: Multivariate/convex.ml:1830 / COPLANAR_AFFINE_HULL_COPLANAR   (hash md5:322e80b9742821ede7e1e5fbc4f0b839)
// not bridged: 
Theorem COPLANAR_AFFINE_HULL_COPLANAR : forall A:set, A <> Empty -> forall s c= R :^: idx A, coplanar A (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s) <-> coplanar A s.
Admitted.

// HOL Light: Multivariate/convex.ml:1835 / COPLANAR_TRANSLATION_EQ   (hash md5:fe32377a01c58cee94e12acc1d7514b0)
// not bridged: 
Theorem COPLANAR_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, coplanar N {vector_add N a x | x :e s} <-> coplanar N s.
Admitted.

// HOL Light: Multivariate/convex.ml:1839 / COPLANAR_TRANSLATION   (hash md5:d61af02ad617cd60931ee3528fad4d18)
// not bridged: 
Theorem COPLANAR_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, coplanar N s -> coplanar N {vector_add N a x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1845 / COPLANAR_LINEAR_IMAGE   (hash md5:a571d60d3b13688d25f333af4eef8ec9)
// not bridged: 
Theorem COPLANAR_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, coplanar M s /\ linear M N f -> coplanar N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:1855 / COPLANAR_LINEAR_IMAGE_EQ   (hash md5:67e76201d9197542bb5e8d1cf324008f)
// not bridged: 
Theorem COPLANAR_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ (forall x y :e R :^: idx B, f x = f y -> x = y) -> (coplanar A {f x | x :e s} <-> coplanar B s).
Admitted.

// HOL Light: Multivariate/convex.ml:1862 / COPLANAR_SUBSET   (hash md5:8f51442e153400c102d16835ee8f540d)
// not bridged: 
Theorem COPLANAR_SUBSET : forall A:set, A <> Empty -> forall s t c= R :^: idx A, coplanar A t /\ s c= t -> coplanar A s.
Admitted.

// HOL Light: Multivariate/convex.ml:1866 / AFFINE_HULL_3_IMP_COLLINEAR   (hash md5:4dba703cc6a8c3ac26d5b027b846280f)
// not bridged: 
Theorem AFFINE_HULL_3_IMP_COLLINEAR : forall A:set, A <> Empty -> forall a b c :e R :^: idx A, c :e hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} {a,b} -> collinear A {a,b,c}.
Admitted.

// HOL Light: Multivariate/convex.ml:1872 / COLLINEAR_3_AFFINE_HULL   (hash md5:cb8a120b280c992ca78510f6f4d529c6)
// not bridged: 
Theorem COLLINEAR_3_AFFINE_HULL : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, ~ a = b -> (collinear N {a,b,c} <-> c :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b}).
Admitted.

// HOL Light: Multivariate/convex.ml:1891 / COLLINEAR_3_EQ_AFFINE_DEPENDENT   (hash md5:b217e60a2075d969ca4153fe5a0129dd)
// not bridged: 
Theorem COLLINEAR_3_EQ_AFFINE_DEPENDENT : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, collinear N {a,b,c} <-> a = b \/ (a = c \/ (b = c \/ affine_dependent N {a,b,c})).
Admitted.

// HOL Light: Multivariate/convex.ml:1911 / AFFINE_DEPENDENT_IMP_COLLINEAR_3   (hash md5:e53b68d3bc1e0b97840764876c46af41)
// not bridged: 
Theorem AFFINE_DEPENDENT_IMP_COLLINEAR_3 : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, affine_dependent N {a,b,c} -> collinear N {a,b,c}.
Admitted.

// HOL Light: Multivariate/convex.ml:1925 / COLLINEAR_3_IN_AFFINE_HULL   (hash md5:8003a080f326bc0b99a6081eaff1250c)
// not bridged: 
Theorem COLLINEAR_3_IN_AFFINE_HULL : forall N:set, N <> Empty -> forall v0 v1 x :e R :^: idx N, ~ v1 = v0 -> (collinear N {v0,v1,x} <-> x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} {v0,v1}).
Admitted.

// HOL Light: Multivariate/convex.ml:1937 / COLLINEAR_3_EXPLICIT   (hash md5:9ad59a305417d74c83853f6d85da9dde)
// not bridged: 
Theorem COLLINEAR_3_EXPLICIT : forall N:set, N <> Empty -> forall x y z :e R :^: idx N, collinear N {x,y,z} <-> exists a b c :e R, vector_add N (vector_mul N a x) (vector_add N (vector_mul N b y) (vector_mul N c z)) = vec N 0 /\ (a + b + c = 0 /\ ~ (a = 0 /\ (b = 0 /\ c = 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:1972 / CONVEX_CONNECTED   (hash md5:938ee87a441ce1e79fb59f88eb4cdc61)
// not bridged: 
Theorem CONVEX_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> connected N s.
Admitted.

// HOL Light: Multivariate/convex.ml:1985 / convex_on   (hash md5:9ad1e0594ba4685ad5bf69f959feb73c)
// not bridged: 
Theorem convex_on_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> (convex_on A f s <-> forall x y :e R :^: idx A, forall u v :e R, x :e s /\ (y :e s /\ (0 <= u /\ (0 <= v /\ u + v = 1))) -> f (vector_add A (vector_mul A u x) (vector_mul A v y)) <= u * f x + v * f y).
Admitted.

// HOL Light: Multivariate/convex.ml:1990 / CONVEX_ON_EMPTY   (hash md5:a4f2ffdf0fc5ece4ace81111c4f6283c)
// not bridged: 
Theorem CONVEX_ON_EMPTY : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> convex_on N f Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:1994 / CONVEX_ON_SUBSET   (hash md5:db409d679f2cf965a99add7bc490f8b6)
// not bridged: 
Theorem CONVEX_ON_SUBSET : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> forall s t c= R :^: idx A, convex_on A f t /\ s c= t -> convex_on A f s.
Admitted.

// HOL Light: Multivariate/convex.ml:1998 / CONVEX_ON_EQ   (hash md5:54888ca057193dbc20ec91c0aae19eb4)
// not bridged: 
Theorem CONVEX_ON_EQ : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R) -> forall s c= R :^: idx A, convex A s /\ ((forall x :e R :^: idx A, x :e s -> f x = g x) /\ convex_on A f s) -> convex_on A g s.
Admitted.

// HOL Light: Multivariate/convex.ml:2003 / CONVEX_ON_CONST   (hash md5:e6f67571f986c4520f36246bd79ca9a1)
// not bridged: 
Theorem CONVEX_ON_CONST : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a :e R, convex_on A (fun x:set => a) s.
Admitted.

// HOL Light: Multivariate/convex.ml:2007 / LINEAR_IMP_CONVEX_ON   (hash md5:b309484764a6be976f616c2c43f69150)
// not bridged: 
Theorem LINEAR_IMP_CONVEX_ON : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, linear N 1 (fun x:set => lift (f x)) -> convex_on N f s.
Admitted.

// HOL Light: Multivariate/convex.ml:2013 / CONVEX_ON_SING   (hash md5:091ab559d5f69bc454fff9f920d480a9)
// not bridged: 
Theorem CONVEX_ON_SING : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall a :e R :^: idx N, convex_on N f {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:2019 / CONVEX_ADD   (hash md5:5e5d095ce054a6482f62512c4260d28a)
// not bridged: 
Theorem CONVEX_ADD : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R) -> convex_on A f s /\ convex_on A g s -> convex_on A (fun x:set => f x + g x) s.
Admitted.

// HOL Light: Multivariate/convex.ml:2027 / CONVEX_ADD_EQ   (hash md5:1fca2a97e8033418ed75565f17d007f9)
// not bridged: 
Theorem CONVEX_ADD_EQ : forall N:set, N <> Empty -> forall a :e R, forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, convex_on N (fun x:set => a + f x) s <-> convex_on N f s.
Admitted.

// HOL Light: Multivariate/convex.ml:2035 / CONVEX_CMUL   (hash md5:e9669aad7d5e4454691002292f2be170)
// not bridged: 
Theorem CONVEX_CMUL : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall c :e R, forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> 0 <= c /\ convex_on A f s -> convex_on A (fun x:set => c * f x) s.
Admitted.

// HOL Light: Multivariate/convex.ml:2040 / CONVEX_MAX   (hash md5:3a6836e090bf5a4b6900b6a92b2e2af5)
// not bridged: 
Theorem CONVEX_MAX : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R) -> forall s c= R :^: idx A, convex_on A f s /\ convex_on A g s -> convex_on A (fun x:set => if f x <= g x then g x else f x) s.
Admitted.

// HOL Light: Multivariate/convex.ml:2051 / CONVEX_ON_SUM   (hash md5:37e00cfca471ec3bc2f6a1ded83188e4)
// not bridged: 
Theorem CONVEX_ON_SUM : forall A N:set, A <> Empty -> N <> Empty -> forall t c= R :^: idx N, forall f:set -> set -> set, (forall x :e A, forall y :e R :^: idx N, f x y :e R) -> forall s c= A, finite s /\ (forall a :e A, a :e s -> convex_on N (f a) t) -> convex_on N (fun x:set => finsum s (fun a:set => f a x)) t.
Admitted.

// HOL Light: Multivariate/convex.ml:2060 / CONVEX_ON_IMP_MIDPOINT_CONVEX   (hash md5:2124e9611bfb0e6782e7ce5255c5adfe)
// not bridged: 
Theorem CONVEX_ON_IMP_MIDPOINT_CONVEX : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall x y :e R :^: idx N, convex_on N f s /\ (x :e s /\ y :e s) -> f (midpoint N (x,y)) <= (f x + f y) :/: 2.
Admitted.

// HOL Light: Multivariate/convex.ml:2070 / CONVEX_LOWER   (hash md5:3e7d9bd958041a66a9e5b724bc7a1487)
// not bridged: 
Theorem CONVEX_LOWER : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall x y :e R :^: idx N, forall u v :e R, convex_on N f s /\ (x :e s /\ (y :e s /\ (0 <= u /\ (0 <= v /\ u + v = 1)))) -> f (vector_add N (vector_mul N u x) (vector_mul N v y)) <= if f x <= f y then f y else f x.
Admitted.

// HOL Light: Multivariate/convex.ml:2081 / CONVEX_LOWER_SEGMENT   (hash md5:7ef429c0a75cf82be6d9117e26bd185a)
// not bridged: 
Theorem CONVEX_LOWER_SEGMENT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall a b x :e R :^: idx N, convex_on N f s /\ (a :e s /\ (b :e s /\ x :e closed_segment N (seq_cons (a,b) seq_nil))) -> f x <= if f a <= f b then f b else f a.
Admitted.

// HOL Light: Multivariate/convex.ml:2089 / CONVEX_LOWER_SEGMENT_LT   (hash md5:15afea1dc92dc2699fe4139ca736fffe)
// not bridged: 
Theorem CONVEX_LOWER_SEGMENT_LT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall a b x :e R :^: idx N, convex_on N f s /\ (a :e s /\ (b :e s /\ (x :e closed_segment N (seq_cons (a,b) seq_nil) /\ (~ x = b /\ f a < f b)))) -> f x < f b.
Admitted.

// HOL Light: Multivariate/convex.ml:2109 / CONVEX_LOCAL_GLOBAL_MINIMUM_SEGMENT   (hash md5:361a511984f4e45e27479eb5be7cc832)
// not bridged: 
Theorem CONVEX_LOCAL_GLOBAL_MINIMUM_SEGMENT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex_on N f s /\ (x :e s /\ (forall z :e R :^: idx N, z :e s /\ ~ z = x -> exists y :e R :^: idx N, y :e closed_segment N (seq_cons (x,z) seq_nil) /\ (y :e s /\ (~ y = x /\ f x <= f y)))) -> forall z :e R :^: idx N, z :e s -> f x <= f z.
Admitted.

// HOL Light: Multivariate/convex.ml:2125 / CONVEX_LOCAL_GLOBAL_MINIMUM_GEN   (hash md5:f1a00066e381742ded592f1b5076c4e7)
// not bridged: 
Theorem CONVEX_LOCAL_GLOBAL_MINIMUM_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s t c= R :^: idx N, forall x :e R :^: idx N, convex_on N f s /\ (x :e t /\ (t :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s) /\ (t c= s /\ (forall y :e R :^: idx N, y :e t -> f x <= f y)))) -> forall y :e R :^: idx N, y :e s -> f x <= f y.
Admitted.

// HOL Light: Multivariate/convex.ml:2163 / CONVEX_LOCAL_GLOBAL_MINIMUM   (hash md5:51ddddaec83c297e701231dbd2b73a37)
// not bridged: 
Theorem CONVEX_LOCAL_GLOBAL_MINIMUM : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s t c= R :^: idx N, forall x :e R :^: idx N, convex_on N f s /\ (x :e t /\ (open N t /\ (t c= s /\ (forall y :e R :^: idx N, y :e t -> f x <= f y)))) -> forall y :e R :^: idx N, y :e s -> f x <= f y.
Admitted.

// HOL Light: Multivariate/convex.ml:2175 / CONVEX_DISTANCE   (hash md5:504cc3f52ecd4608f9ea5a1e297e5d1e)
// not bridged: 
Theorem CONVEX_DISTANCE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a :e R :^: idx A, convex_on A (fun x:set => distance A (a,x)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:2185 / CONVEX_NORM   (hash md5:327d9fa10697f6418c9683dc8ab769c4)
// not bridged: 
Theorem CONVEX_NORM : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex_on N (fun x:set => vector_norm N x) s.
Admitted.

// HOL Light: Multivariate/convex.ml:2191 / CONVEX_ON_COMPOSE_LINEAR   (hash md5:a2d1b572a03309a28db11fe87b65aab5)
// not bridged: 
Theorem CONVEX_ON_COMPOSE_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, convex_on N f {g x | x :e s} /\ linear M N g -> convex_on M (fun x:set => f (g x)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:2202 / CONVEX_ON_TRANSLATION   (hash md5:d3cbc089c066097aac7ce63a8b0e5b4d)
// not bridged: 
Theorem CONVEX_ON_TRANSLATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall a :e R :^: idx N, convex_on N f {vector_add N a x | x :e s} <-> convex_on N (fun x:set => f (vector_add N a x)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:2211 / LINEAR_CONVEX_ON_1   (hash md5:8145b45eb57a21485bf278f568e77527)
// not bridged: 
Theorem LINEAR_CONVEX_ON_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> (linear N 1 f <-> f (vec N 0) = vec 1 0 /\ (convex_on N (fun x:set => drop (f x)) (R :^: idx N) /\ convex_on N (fun x:set => - drop (f x)) (R :^: idx N))).
Admitted.

// HOL Light: Multivariate/convex.ml:2271 / CONVEX_CONCAVE_EQ_AFFINE   (hash md5:6f44dc78459b5598b9a2a16da04eb541)
// not bridged: 
Theorem CONVEX_CONCAVE_EQ_AFFINE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> (convex_on N f (R :^: idx N) /\ convex_on N (fun x:set => - f x) (R :^: idx N) <-> exists a :e R :^: idx N, exists b :e R, forall x :e R :^: idx N, f x = dot N a x + b).
Admitted.

// HOL Light: Multivariate/convex.ml:2295 / CONVEX_BALL   (hash md5:a32033dc7d5ee3c1e823e81515c2c6f2)
// not bridged: 
Theorem CONVEX_BALL : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall e0 :e R, convex N (ball N (x,e0)).
Admitted.

// HOL Light: Multivariate/convex.ml:2303 / CONNECTED_BALL   (hash md5:83228390b4c99af71b93b7e5d108fbdf)
// not bridged: 
Theorem CONNECTED_BALL : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall e0 :e R, connected N (ball N (x,e0)).
Admitted.

// HOL Light: Multivariate/convex.ml:2307 / CONVEX_CBALL   (hash md5:0bc1bce38edcab93d8201a6d993c35a0)
// not bridged: 
Theorem CONVEX_CBALL : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall e0 :e R, convex N (cball N (x,e0)).
Admitted.

// HOL Light: Multivariate/convex.ml:2322 / CONNECTED_CBALL   (hash md5:2aa71a21536a3ea89582f9ef78dc411a)
// not bridged: 
Theorem CONNECTED_CBALL : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall e0 :e R, connected N (cball N (x,e0)).
Admitted.

// HOL Light: Multivariate/convex.ml:2326 / CONVEX_INTERMEDIATE_BALL   (hash md5:8abf0dc41550178e4c3bee4d33f63a57)
// not bridged: 
Theorem CONVEX_INTERMEDIATE_BALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall t c= R :^: idx N, ball N (a,r) c= t /\ t c= cball N (a,r) -> convex N t.
Admitted.

// HOL Light: Multivariate/convex.ml:2337 / FRONTIER_OF_CONNECTED_COMPONENT_SUBSET   (hash md5:0b9c8e3fc0eb27b003ea2fc106876628)
// not bridged: 
Theorem FRONTIER_OF_CONNECTED_COMPONENT_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, frontier N {x0 :e R :^: idx N | connected_component N s x x0} c= frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:2360 / FRONTIER_OF_COMPONENTS_SUBSET   (hash md5:400e63dab2f0a3e7e9d1d160d820616b)
// not bridged: 
Theorem FRONTIER_OF_COMPONENTS_SUBSET : forall N:set, N <> Empty -> forall s c c= R :^: idx N, c :e components N s -> frontier N c c= frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:2366 / FRONTIER_OF_COMPONENTS_CLOSED_COMPLEMENT   (hash md5:b7ae3b8ae602486f1ae2c70ae6947d89)
// not bridged: 
Theorem FRONTIER_OF_COMPONENTS_CLOSED_COMPLEMENT : forall N:set, N <> Empty -> forall s c c= R :^: idx N, closed N s /\ c :e components N ((R :^: idx N) :\: s) -> frontier N c c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:2374 / CONTAINS_COMPONENT_OF_COMPACT_FRONTIER   (hash md5:2ee753e98cf47c758e45965fc4217d10)
// not bridged: 
Theorem CONTAINS_COMPONENT_OF_COMPACT_FRONTIER : forall N:set, N <> Empty -> forall s c c= R :^: idx N, compact N s /\ c :e components N s -> exists d c= R :^: idx N, d :e components N (frontier N s) /\ d c= c.
Admitted.

// HOL Light: Multivariate/convex.ml:2404 / CARD_LE_COMPONENTS_FRONTIER   (hash md5:52f1118a40513cc649beba4567be19bc)
// not bridged: 
Theorem CARD_LE_COMPONENTS_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s -> atleastp (components N s) (components N (frontier N s)).
Admitted.

// HOL Light: Multivariate/convex.ml:2418 / CONTAINS_COMPONENT_OF_CLOSURE_FRONTIER   (hash md5:f4817c8a01ecef987f79467c96f88cad)
// not bridged: 
Theorem CONTAINS_COMPONENT_OF_CLOSURE_FRONTIER : forall N:set, N <> Empty -> forall s c c= R :^: idx N, bounded_hl N s /\ c :e components N (closure N s) -> exists d c= R :^: idx N, d :e components N (frontier N s) /\ d c= c.
Admitted.

// HOL Light: Multivariate/convex.ml:2447 / CARD_LE_COMPONENTS_CLOSURE_FRONTIER   (hash md5:3ea08efb7bffd1d44f19db7b2678a03a)
// not bridged: 
Theorem CARD_LE_COMPONENTS_CLOSURE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> atleastp (components N (closure N s)) (components N (frontier N s)).
Admitted.

// HOL Light: Multivariate/convex.ml:2466 / CONNECTED_UNION_CLOPEN_IN_COMPLEMENT   (hash md5:3ec68aeafb5d52f74c521b996b0815a9)
// not bridged: 
Theorem CONNECTED_UNION_CLOPEN_IN_COMPLEMENT : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, connected N s /\ (connected N u /\ (s c= u /\ (t :e subtopology (R :^: idx N) (euclidean N) (u :\: s) /\ closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) (u :\: s)) t))) -> connected N (s :\/: t).
Admitted.

// HOL Light: Multivariate/convex.ml:2528 / COMPONENT_COMPLEMENT_CONNECTED   (hash md5:7b4597686e4a4919c5c8ee115228629b)
// not bridged: 
Theorem COMPONENT_COMPLEMENT_CONNECTED : forall N:set, N <> Empty -> forall s u c c= R :^: idx N, connected N s /\ (connected N u /\ (s c= u /\ c :e components N (u :\: s))) -> connected N (u :\: c).
Admitted.

// HOL Light: Multivariate/convex.ml:2590 / BALL_SUBSET_OPEN_MAP_IMAGE   (hash md5:1be260630507fa854f1b884732745d9d)
// not bridged: 
Theorem BALL_SUBSET_OPEN_MAP_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall a :e R :^: idx M, forall r :e R, bounded_hl M s /\ (continuous_on_hl M N f (closure M s) /\ (open N {f x | x :e interior M s} /\ (a :e s /\ (0 < r /\ (forall z :e R :^: idx M, z :e frontier M s -> r <= vector_norm N (vector_sub N (f z) (f a))))))) -> ball N (f a,r) c= {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:2670 / CONVEX_SCALING   (hash md5:935fa479509d9a92903d0563b1c84d74)
// not bridged: 
Theorem CONVEX_SCALING : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall c :e R, convex A s -> convex A {vector_mul A c x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:2677 / CONVEX_SCALING_EQ   (hash md5:b2b20c074fa5e1fa10e8bceb0c18424d)
// not bridged: 
Theorem CONVEX_SCALING_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, convex N {vector_mul N c x | x :e s} <-> c = 0 \/ convex N s.
Admitted.

// HOL Light: Multivariate/convex.ml:2687 / CONVEX_NEGATIONS   (hash md5:a1d8900cabffab4a9e43daab96713e80)
// not bridged: 
Theorem CONVEX_NEGATIONS : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s -> convex A {vector_neg A x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:2694 / CONVEX_SUMS   (hash md5:1a24cd4ac3b0a476ff2afbaf02da6fc2)
// not bridged: 
Theorem CONVEX_SUMS : forall A:set, A <> Empty -> forall s t c= R :^: idx A, convex A s /\ convex A t -> convex A (\/_ x :e R :^: idx A, {vector_add A x y | y :e R :^: idx A, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:2701 / CONVEX_DIFFERENCES   (hash md5:8be35ae009a718079c0f66c427ccf5dd)
// not bridged: 
Theorem CONVEX_DIFFERENCES : forall A:set, A <> Empty -> forall s t c= R :^: idx A, convex A s /\ convex A t -> convex A (\/_ x :e R :^: idx A, {vector_sub A x y | y :e R :^: idx A, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:2708 / CONVEX_AFFINITY_EQ   (hash md5:99c290910a1d9f990ec75dd7e0af3beb)
// not bridged: 
Theorem CONVEX_AFFINITY_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, convex N {vector_add N (vector_mul N m x) c | x :e s} <-> m = 0 \/ convex N s.
Admitted.

// HOL Light: Multivariate/convex.ml:2714 / CONVEX_AFFINITY   (hash md5:3d5049233cffd8981ca52c0373470e3f)
// not bridged: 
Theorem CONVEX_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, convex N s -> convex N {vector_add N (vector_mul N m x) c | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:2718 / CONVEX_LINEAR_PREIMAGE   (hash md5:58c666902e7fe730edfb1d81ecb88c4e)
// not bridged: 
Theorem CONVEX_LINEAR_PREIMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ convex N s -> convex M {x :e R :^: idx M | f x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:2724 / CONVEX_SUMS_MULTIPLES   (hash md5:429e5ac33d31f0c01ba3ef267400399b)
// not bridged: 
Theorem CONVEX_SUMS_MULTIPLES : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c d :e R, convex N s /\ (0 <= c /\ 0 <= d) -> (\/_ x :e R :^: idx N, {vector_add N (vector_mul N c x) (vector_mul N d y) | y :e R :^: idx N, x :e s /\ y :e s}) = {vector_mul N (c + d) x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:2743 / CONVEX_TRANSLATION_SUBSET_PREIMAGE   (hash md5:7448bdec8f263278f027b7ece0c6e688)
// not bridged: 
Theorem CONVEX_TRANSLATION_SUBSET_PREIMAGE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N t -> convex N {a :e R :^: idx N | {vector_add N a x | x :e s} c= t}.
Admitted.

// HOL Light: Multivariate/convex.ml:2753 / CONVEX_TRANSLATION_SUPERSET_PREIMAGE   (hash md5:a913f839c89048928b3db3a106c804b7)
// not bridged: 
Theorem CONVEX_TRANSLATION_SUPERSET_PREIMAGE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N t -> convex N {a :e R :^: idx N | s c= {vector_add N a x | x :e t}}.
Admitted.

// HOL Light: Multivariate/convex.ml:2765 / SUBSET_SUMS_LCANCEL   (hash md5:131cddf9e1603f73cf0ae6a9a2eee2a9)
// not bridged: 
Theorem SUBSET_SUMS_LCANCEL : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, ~ s = Empty /\ (bounded_hl N s /\ (closed N u /\ (convex N u /\ (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) c= (\/_ x :e R :^: idx N, {vector_add N x z | z :e R :^: idx N, x :e s /\ z :e u})))) -> t c= u.
Admitted.

// HOL Light: Multivariate/convex.ml:2832 / SUBSET_SUMS_RCANCEL   (hash md5:00a56889ddc12751931f18205d986ace)
// not bridged: 
Theorem SUBSET_SUMS_RCANCEL : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, closed N t /\ (convex N t /\ (bounded_hl N u /\ (~ u = Empty /\ (\/_ x :e R :^: idx N, {vector_add N x z | z :e R :^: idx N, x :e s /\ z :e u}) c= (\/_ y :e R :^: idx N, {vector_add N y z | z :e R :^: idx N, y :e t /\ z :e u})))) -> s c= t.
Admitted.

// HOL Light: Multivariate/convex.ml:2841 / EQ_SUMS_LCANCEL   (hash md5:f6c5315421d064e44686928455126149)
// not bridged: 
Theorem EQ_SUMS_LCANCEL : forall A:set, A <> Empty -> forall s t u c= R :^: idx A, ~ s = Empty /\ (bounded_hl A s /\ (closed A t /\ (convex A t /\ (closed A u /\ (convex A u /\ (\/_ x :e R :^: idx A, {vector_add A x y | y :e R :^: idx A, x :e s /\ y :e t}) = (\/_ x :e R :^: idx A, {vector_add A x z | z :e R :^: idx A, x :e s /\ z :e u})))))) -> t = u.
Admitted.

// HOL Light: Multivariate/convex.ml:2850 / EQ_SUMS_RCANCEL   (hash md5:4fa2ceab60ab3f9648bf5ad3efaef6b7)
// not bridged: 
Theorem EQ_SUMS_RCANCEL : forall A:set, A <> Empty -> forall s t u c= R :^: idx A, closed A s /\ (convex A s /\ (closed A t /\ (convex A t /\ (bounded_hl A u /\ (~ u = Empty /\ (\/_ x :e R :^: idx A, {vector_add A x z | z :e R :^: idx A, x :e s /\ z :e u}) = (\/_ y :e R :^: idx A, {vector_add A y z | z :e R :^: idx A, y :e t /\ z :e u})))))) -> s = t.
Admitted.

// HOL Light: Multivariate/convex.ml:2863 / CONVEX_CONVEX_HULL   (hash md5:9ed3efb50fdcca9606017d2974d52423)
// not bridged: 
Theorem CONVEX_CONVEX_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:2867 / CONVEX_HULL_EQ   (hash md5:702255eab574211a66183e4ae180738e)
// not bridged: 
Theorem CONVEX_HULL_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s = s <-> convex A s.
Admitted.

// HOL Light: Multivariate/convex.ml:2871 / CONVEX_HULLS_EQ   (hash md5:52dafe916b08d00f8524db7242b6f1fc)
// not bridged: 
Theorem CONVEX_HULLS_EQ : forall A:set, A <> Empty -> forall s t c= R :^: idx A, s c= hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} t /\ t c= hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s -> hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s = hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} t.
Admitted.

// HOL Light: Multivariate/convex.ml:2877 / IS_CONVEX_HULL   (hash md5:74f9d592824049b55f39aad49c3c3b30)
// not bridged: 
Theorem IS_CONVEX_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s <-> exists t c= R :^: idx A, s = hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} t.
Admitted.

// HOL Light: Multivariate/convex.ml:2881 / CONVEX_HULL_CONTAINS   (hash md5:e7eb9bbc308c7179e1a02901463e8734)
// not bridged: 
Theorem CONVEX_HULL_CONTAINS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b x :e R :^: idx N, a :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ (b :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ x :e closed_segment N (seq_cons (a,b) seq_nil)) -> x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s.
Admitted.

// HOL Light: Multivariate/convex.ml:2887 / MIDPOINTS_IN_CONVEX_HULL   (hash md5:0d39a0d4b26e2248ae82e614738985de)
// not bridged: 
Theorem MIDPOINTS_IN_CONVEX_HULL : forall N:set, N <> Empty -> forall y x :e R :^: idx N, forall s c= R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s -> midpoint N (x,y) :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s.
Admitted.

// HOL Light: Multivariate/convex.ml:2892 / CONVEX_HULL_UNIV   (hash md5:55fb105f55bcd0626fb992e1fac0e945)
// not bridged: 
Theorem CONVEX_HULL_UNIV : forall N:set, N <> Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (R :^: idx N) = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:2896 / BOUNDED_CONVEX_HULL   (hash md5:124159e088094bfb3085ba6dcf3eaab2)
// not bridged: 
Theorem BOUNDED_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> bounded_hl N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:2904 / BOUNDED_CONVEX_HULL_EQ   (hash md5:1fd38810ada8051c2ddf2f1cd8544ee4)
// not bridged: 
Theorem BOUNDED_CONVEX_HULL_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, bounded_hl A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s) <-> bounded_hl A s.
Admitted.

// HOL Light: Multivariate/convex.ml:2908 / FINITE_IMP_BOUNDED_CONVEX_HULL   (hash md5:5039901efa27cd1fdbab3e41ef4444de)
// not bridged: 
Theorem FINITE_IMP_BOUNDED_CONVEX_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, finite s -> bounded_hl A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:2916 / CONVEX_HULL_EMPTY   (hash md5:c939e8ed67d04ae8b00542f19111db85)
// not bridged: 
Theorem CONVEX_HULL_EMPTY : forall A:set, A <> Empty -> hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} Empty = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:2921 / CONVEX_HULL_EQ_EMPTY   (hash md5:75a5cd3319dda256e24ba16d9d2bbf70)
// not bridged: 
Theorem CONVEX_HULL_EQ_EMPTY : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s = Empty <-> s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:2926 / CONVEX_HULL_SING   (hash md5:85ab3a9c27fa5ea6447e6bcc9b11d032)
// not bridged: 
Theorem CONVEX_HULL_SING : forall A:set, A <> Empty -> forall a :e R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} {a} = {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:2930 / CONVEX_HULL_EQ_SING   (hash md5:b5cbceb8252d21f9cab446ec5a5348fc)
// not bridged: 
Theorem CONVEX_HULL_EQ_SING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s = {a} <-> s = {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:2939 / CONVEX_HULL_INSERT   (hash md5:9ee86a8679ff209f0f6f6c276924e6c3)
// not bridged: 
Theorem CONVEX_HULL_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, ~ s = Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s a) = {x :e R :^: idx N | exists u v :e R, exists b :e R :^: idx N, 0 <= u /\ (0 <= v /\ (u + v = 1 /\ (b :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ x = vector_add N (vector_mul N u a) (vector_mul N v b))))}.
Admitted.

// HOL Light: Multivariate/convex.ml:2990 / CONVEX_HULL_INSERT_ALT   (hash md5:c685a970804f60f868417359d3e0c738)
// not bridged: 
Theorem CONVEX_HULL_INSERT_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s a) = if s = Empty then {a} else \/_ u :e R, {vector_add N (vector_mul N (1 + - u) a) (vector_mul N u x) | x :e R :^: idx N, 0 <= u /\ (u <= 1 /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s)}.
Admitted.

// HOL Light: Multivariate/convex.ml:3004 / CONVEX_HULL_INSERT_SEGMENTS   (hash md5:f4060dd236b7307b75061038af4b9ed8)
// not bridged: 
Theorem CONVEX_HULL_INSERT_SEGMENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s a) = if s = Empty then {a} else Union {closed_segment N (seq_cons (a,x) seq_nil) | x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:3016 / CONVEX_HULL_INDEXED   (hash md5:ee1e004415cfeafeaa494d59b332e849)
// not bridged: 
Theorem CONVEX_HULL_INDEXED : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s = {y :e R :^: idx N | exists k :e omega, exists u:set -> set, (forall x :e omega, u x :e R) /\ exists x:set -> set, (forall x0 :e omega, x x0 :e R :^: idx N) /\ ((forall i :e omega, 1 <= i /\ i <= k -> 0 <= u i /\ x i :e s) /\ (finsum (idx_n k) u = 1 /\ vsum omega N (idx_n k) (fun i:set => vector_mul N (u i) (x i)) = y))}.
Admitted.

// HOL Light: Multivariate/convex.ml:3049 / CONVEX_HULL_FINITE_IMAGE_EXPLICIT   (hash md5:2daebd5e3f36cf70e6adedc7f5236a3b)
// not bridged: 
Theorem CONVEX_HULL_FINITE_IMAGE_EXPLICIT : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall k c= A, finite k -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {f x | x :e k} = {y :e R :^: idx N | exists u:set -> set, (forall x :e A, u x :e R) /\ ((forall a :e A, a :e k -> 0 <= u a) /\ (finsum k u = 1 /\ vsum A N k (fun a:set => vector_mul N (u a) (f a)) = y))}.
Admitted.

// HOL Light: Multivariate/convex.ml:3122 / CONVEX_HULL_EXPLICIT   (hash md5:3cb2526fbb25d37a1dc5d2dbbc1fe83d)
// not bridged: 
Theorem CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall p c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} p = {y :e R :^: idx N | exists s c= R :^: idx N, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finite s /\ (s c= p /\ ((forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = y))))}.
Admitted.

// HOL Light: Multivariate/convex.ml:3175 / CONVEX_HULL_FINITE   (hash md5:4955b8826b3fb902916a0959b72b3565)
// not bridged: 
Theorem CONVEX_HULL_FINITE : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s = {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y))}.
Admitted.

// HOL Light: Multivariate/convex.ml:3213 / CONVEX_HULL_IMAGE   (hash md5:15c75582da11ce915b3b991ae5899ffe)
// not bridged: 
Theorem CONVEX_HULL_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall k c= A, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {f x | x :e k} = {y :e R :^: idx N | exists c c= A, exists u:set -> set, (forall x :e A, u x :e R) /\ (finite c /\ (c c= k /\ ((forall a :e A, a :e c -> 0 <= u a) /\ (finsum c u = 1 /\ vsum A N c (fun a:set => vector_mul N (u a) (f a)) = y))))}.
Admitted.

// HOL Light: Multivariate/convex.ml:3253 / CONVEX_HULL_IMAGE_LT   (hash md5:66cbeb3de5cd2e74cad934a9fbe20946)
// not bridged: 
Theorem CONVEX_HULL_IMAGE_LT : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall k c= A, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {f x | x :e k} = {y :e R :^: idx N | exists c c= A, exists u:set -> set, (forall x :e A, u x :e R) /\ (finite c /\ (c c= k /\ ((forall a :e A, a :e c -> 0 < u a) /\ (finsum c u = 1 /\ vsum A N c (fun a:set => vector_mul N (u a) (f a)) = y))))}.
Admitted.

// HOL Light: Multivariate/convex.ml:3275 / CONVEX_HULL_UNION_EXPLICIT   (hash md5:ed8e4741b6e9d76fe41e815d0dd57b3d)
// not bridged: 
Theorem CONVEX_HULL_UNION_EXPLICIT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ convex N t -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\/: t) = s :\/: (t :\/: \/_ x :e R :^: idx N, \/_ u :e R, {vector_add N (vector_mul N (1 + - u) x) (vector_mul N u y) | y :e R :^: idx N, x :e s /\ (y :e t /\ (0 <= u /\ u <= 1))}).
Admitted.

// HOL Light: Multivariate/convex.ml:3340 / CONVEX_HULL_UNION_NONEMPTY_EXPLICIT   (hash md5:f53fa6fd25998673adf36a890d0f9922)
// not bridged: 
Theorem CONVEX_HULL_UNION_NONEMPTY_EXPLICIT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (~ s = Empty /\ (convex N t /\ ~ t = Empty)) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\/: t) = \/_ x :e R :^: idx N, \/_ u :e R, {vector_add N (vector_mul N (1 + - u) x) (vector_mul N u y) | y :e R :^: idx N, x :e s /\ (y :e t /\ (0 <= u /\ u <= 1))}.
Admitted.

// HOL Light: Multivariate/convex.ml:3358 / CONVEX_HULL_UNION_UNIONS   (hash md5:a5e5338ac0c72a69b5153bafa979b0d6)
// not bridged: 
Theorem CONVEX_HULL_UNION_UNIONS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), forall s c= R :^: idx N, convex N (Union f) /\ ~ f = Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\/: Union f) = Union {hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\/: t) | t :e Power (R :^: idx N), t :e f}.
Admitted.

// HOL Light: Multivariate/convex.ml:3398 / CONVEX_HULL_FINITE_STEP   (hash md5:b341fef026f19d35b0a6a8b548857e8f)
// not bridged: 
Theorem CONVEX_HULL_FINITE_STEP : forall N:set, N <> Empty -> forall w :e R, forall y :e R :^: idx N, forall s c= R :^: idx N, forall a :e R :^: idx N, ((exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e Empty -> 0 <= u x) /\ (finsum Empty u = w /\ vsum (R :^: idx N) N Empty (fun x:set => vector_mul N (u x) x) = y))) <-> w = 0 /\ y = vec N 0) /\ (finite s -> ((exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e SetAdjoin s a -> 0 <= u x) /\ (finsum (SetAdjoin s a) u = w /\ vsum (R :^: idx N) N (SetAdjoin s a) (fun x:set => vector_mul N (u x) x) = y))) <-> exists v :e R, 0 <= v /\ exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ (finsum s u = w + - v /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = vector_sub N y (vector_mul N v a))))).
Admitted.

// HOL Light: Multivariate/convex.ml:3418 / CONVEX_HULL_2   (hash md5:78b328625abcc55478577e0e6956ed02)
// not bridged: 
Theorem CONVEX_HULL_2 : forall A:set, A <> Empty -> forall a b :e R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} {a,b} = \/_ u :e R, {vector_add A (vector_mul A u a) (vector_mul A v b) | v :e R, 0 <= u /\ (0 <= v /\ u + v = 1)}.
Admitted.

// HOL Light: Multivariate/convex.ml:3427 / CONVEX_HULL_2_ALT   (hash md5:fed7f9f51b5d8bf6df7654c11db7e369)
// not bridged: 
Theorem CONVEX_HULL_2_ALT : forall A:set, A <> Empty -> forall a b :e R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} {a,b} = {vector_add A a (vector_mul A u (vector_sub A b a)) | u :e R, 0 <= u /\ u <= 1}.
Admitted.

// HOL Light: Multivariate/convex.ml:3437 / CONVEX_HULL_3   (hash md5:72a0aec1253f12097612c67cec5697fb)
// not bridged: 
Theorem CONVEX_HULL_3 : forall A:set, A <> Empty -> forall a b c :e R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} {a,b,c} = \/_ u :e R, \/_ v :e R, {vector_add A (vector_mul A u a) (vector_add A (vector_mul A v b) (vector_mul A w c)) | w :e R, 0 <= u /\ (0 <= v /\ (0 <= w /\ u + v + w = 1))}.
Admitted.

// HOL Light: Multivariate/convex.ml:3447 / CONVEX_HULL_3_ALT   (hash md5:bf0fec96a05608cbfffd39663f9b3b2b)
// not bridged: 
Theorem CONVEX_HULL_3_ALT : forall A:set, A <> Empty -> forall a b c :e R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} {a,b,c} = \/_ u :e R, {vector_add A a (vector_add A (vector_mul A u (vector_sub A b a)) (vector_mul A v (vector_sub A c a))) | v :e R, 0 <= u /\ (0 <= v /\ u + v <= 1)}.
Admitted.

// HOL Light: Multivariate/convex.ml:3459 / CONVEX_HULL_SUMS   (hash md5:4ac59d31e842dbb56d2d81c613399616)
// not bridged: 
Theorem CONVEX_HULL_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) = \/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} t}.
Admitted.

// HOL Light: Multivariate/convex.ml:3489 / AFFINE_HULL_SUMS   (hash md5:ea87d0132f926a016ad3c30dd2a53048)
// not bridged: 
Theorem AFFINE_HULL_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) = \/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} t}.
Admitted.

// HOL Light: Multivariate/convex.ml:3519 / AFFINE_HULL_PCROSS   (hash md5:31d1368fd35dd48fbb0816d420bb7d06)
// not bridged: 
Theorem AFFINE_HULL_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, hull (R :^: idx_n (dimindex M + dimindex N)) {x :e Power (R :^: idx_n (dimindex M + dimindex N)) | affine (idx_n (dimindex M + dimindex N)) x} (\/_ x :e s, {pastecart M N x y | y :e t}) = \/_ x :e hull (R :^: idx M) {x :e Power (R :^: idx M) | affine M x} s, {pastecart M N x y | y :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t}.
Admitted.

// HOL Light: Multivariate/convex.ml:3519 / CONVEX_HULL_PCROSS   (hash md5:8f262f96a86e8db3b4be5f02523978e0)
// not bridged: 
Theorem CONVEX_HULL_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, hull (R :^: idx_n (dimindex M + dimindex N)) {x :e Power (R :^: idx_n (dimindex M + dimindex N)) | convex (idx_n (dimindex M + dimindex N)) x} (\/_ x :e s, {pastecart M N x y | y :e t}) = \/_ x :e hull (R :^: idx M) {x :e Power (R :^: idx M) | convex M x} s, {pastecart M N x y | y :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t}.
Admitted.

// HOL Light: Multivariate/convex.ml:3575 / BILINEAR_IN_CONVEX_HULL   (hash md5:949be6b9e33a869f2e581a103e2d5a0e)
// not bridged: 
Theorem BILINEAR_IN_CONVEX_HULL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, f x y :e R :^: idx P) -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall x :e R :^: idx M, forall y :e R :^: idx N, bilinear N P M f /\ (x :e hull (R :^: idx M) {x0 :e Power (R :^: idx M) | convex M x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} t) -> f x y :e hull (R :^: idx P) {x0 :e Power (R :^: idx P) | convex P x0} (\/_ a :e R :^: idx M, {f a b | b :e R :^: idx N, a :e s /\ b :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:3594 / SUBSPACE_IMP_AFFINE   (hash md5:b93efe6c9ee46b64296e12f3beaba9fa)
// not bridged: 
Theorem SUBSPACE_IMP_AFFINE : forall A:set, A <> Empty -> forall s c= R :^: idx A, subspace A s -> affine A s.
Admitted.

// HOL Light: Multivariate/convex.ml:3598 / AFFINE_IMP_CONVEX   (hash md5:d86ba388254fdd4adab9562779cbf2a3)
// not bridged: 
Theorem AFFINE_IMP_CONVEX : forall A:set, A <> Empty -> forall s c= R :^: idx A, affine A s -> convex A s.
Admitted.

// HOL Light: Multivariate/convex.ml:3602 / SUBSPACE_IMP_CONVEX   (hash md5:fd9bcc0f47b4bcc032299f7eac53397f)
// not bridged: 
Theorem SUBSPACE_IMP_CONVEX : forall A:set, A <> Empty -> forall s c= R :^: idx A, subspace A s -> convex A s.
Admitted.

// HOL Light: Multivariate/convex.ml:3606 / AFFINE_HULL_SUBSET_SPAN   (hash md5:e53050f0916fafebf58d39cbe6f34910)
// not bridged: 
Theorem AFFINE_HULL_SUBSET_SPAN : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s c= span A s.
Admitted.

// HOL Light: Multivariate/convex.ml:3611 / CONVEX_HULL_SUBSET_SPAN   (hash md5:f0f9859ac551477c8983bea84f7e81f9)
// not bridged: 
Theorem CONVEX_HULL_SUBSET_SPAN : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s c= span A s.
Admitted.

// HOL Light: Multivariate/convex.ml:3616 / CONVEX_HULL_SUBSET_AFFINE_HULL   (hash md5:a2f653f9be4dbb0a294a769618f1375c)
// not bridged: 
Theorem CONVEX_HULL_SUBSET_AFFINE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s c= hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:3621 / COLLINEAR_CONVEX_HULL_COLLINEAR   (hash md5:f889587006cf930b36920505a73a0bba)
// not bridged: 
Theorem COLLINEAR_CONVEX_HULL_COLLINEAR : forall N:set, N <> Empty -> forall s c= R :^: idx N, collinear N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) <-> collinear N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3626 / AFFINE_SPAN   (hash md5:f2311d8edf160defa4f9357ba7b39a6d)
// not bridged: 
Theorem AFFINE_SPAN : forall A:set, A <> Empty -> forall s c= R :^: idx A, affine A (span A s).
Admitted.

// HOL Light: Multivariate/convex.ml:3630 / CONVEX_SPAN   (hash md5:51c5aed6e08eea8e35638111bd08837a)
// not bridged: 
Theorem CONVEX_SPAN : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A (span A s).
Admitted.

// HOL Light: Multivariate/convex.ml:3634 / SEGMENT_SUBSET_LINE   (hash md5:f9a70676ad1582b2b3b87b64ad4e5869)
// not bridged: 
Theorem SEGMENT_SUBSET_LINE : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, closed_segment N (seq_cons (a,b) seq_nil) c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b}) /\ forall a b :e R :^: idx N, open_segment N (a,b) c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b}.
Admitted.

// HOL Light: Multivariate/convex.ml:3643 / SPAN_CONVEX_HULL   (hash md5:7fc7983d40e76bad084cc1c0933deacc)
// not bridged: 
Theorem SPAN_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, span N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3651 / DIM_CONVEX_HULL   (hash md5:7eda4e12c6e935b0c3cf37d4d6087303)
// not bridged: 
Theorem DIM_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3655 / AFFINE_EQ_SUBSPACE   (hash md5:f4581cf202a6ef1aabe73ccce304f1f8)
// not bridged: 
Theorem AFFINE_EQ_SUBSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e s -> (affine N s <-> subspace N s).
Admitted.

// HOL Light: Multivariate/convex.ml:3669 / AFFINE_IMP_SUBSPACE   (hash md5:4b9dac8cb73d03aa126bd0117dc3e6cd)
// not bridged: 
Theorem AFFINE_IMP_SUBSPACE : forall A:set, A <> Empty -> forall s c= R :^: idx A, affine A s /\ vec A 0 :e s -> subspace A s.
Admitted.

// HOL Light: Multivariate/convex.ml:3673 / SUBSPACE_EQ_AFFINE   (hash md5:ca9235d97022f1b7d27c924eeef49f87)
// not bridged: 
Theorem SUBSPACE_EQ_AFFINE : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s <-> affine N s /\ vec N 0 :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:3677 / AFFINE_HULL_EQ_SPAN   (hash md5:11aa4a7cc25a8657a3a919c526ba9434)
// not bridged: 
Theorem AFFINE_HULL_EQ_SPAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3695 / SPAN_AFFINE_HULL_INSERT   (hash md5:5f3dae0ac162abeb4e1e31cf9aa31e31)
// not bridged: 
Theorem SPAN_AFFINE_HULL_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, span N s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (SetAdjoin s (vec N 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:3699 / CLOSED_AFFINE   (hash md5:fc474fd430f189303300399d75bf1235)
// not bridged: 
Theorem CLOSED_AFFINE : forall N:set, N <> Empty -> forall s c= R :^: idx N, affine N s -> closed N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3714 / CLOSED_AFFINE_HULL   (hash md5:dbd07528b70c860781763b464760862e)
// not bridged: 
Theorem CLOSED_AFFINE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, closed A (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:3718 / CLOSURE_SUBSET_AFFINE_HULL   (hash md5:762a976d56cf2b1a73358c0317a6c652)
// not bridged: 
Theorem CLOSURE_SUBSET_AFFINE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, closure A s c= hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:3723 / AFFINE_HULL_CLOSURE   (hash md5:0400594fe71d9ce8c71c5a9ae3099274)
// not bridged: 
Theorem AFFINE_HULL_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (closure N s) = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:3731 / AFFINE_HULL_EQ_SPAN_EQ   (hash md5:c3e5eeaf0501a6a6a2c53a1ac70dba3d)
// not bridged: 
Theorem AFFINE_HULL_EQ_SPAN_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = span N s <-> vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:3735 / AFFINE_DEPENDENT_IMP_DEPENDENT   (hash md5:71666088a649c15b282d12d37434973a)
// not bridged: 
Theorem AFFINE_DEPENDENT_IMP_DEPENDENT : forall A:set, A <> Empty -> forall s c= R :^: idx A, affine_dependent A s -> dependent A s.
Admitted.

// HOL Light: Multivariate/convex.ml:3740 / DEPENDENT_AFFINE_DEPENDENT_CASES   (hash md5:35168658218d0099eda475cbb9c8ae0d)
// not bridged: 
Theorem DEPENDENT_AFFINE_DEPENDENT_CASES : forall N:set, N <> Empty -> forall s c= R :^: idx N, dependent N s <-> affine_dependent N s \/ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:3766 / DEPENDENT_IMP_AFFINE_DEPENDENT   (hash md5:944321d78e2eea9f24ab05a736c484ef)
// not bridged: 
Theorem DEPENDENT_IMP_AFFINE_DEPENDENT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, dependent N {vector_sub N x a | x :e R :^: idx N, x :e s} /\ ~ a :e s -> affine_dependent N (SetAdjoin s a).
Admitted.

// HOL Light: Multivariate/convex.ml:3803 / AFFINE_DEPENDENT_BIGGERSET   (hash md5:ba8eff9c7eac77cf2ca7a004192db138)
// not bridged: 
Theorem AFFINE_DEPENDENT_BIGGERSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, (finite s -> dimindex N + 2 <= finite_cardinality s) -> affine_dependent N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3822 / AFFINE_DEPENDENT_BIGGERSET_GENERAL   (hash md5:bcb337c6d38d9ff611b36716d67e0f67)
// not bridged: 
Theorem AFFINE_DEPENDENT_BIGGERSET_GENERAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, (finite s -> dim N s + 2 <= finite_cardinality s) -> affine_dependent N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3846 / AFFINE_INDEPENDENT_IMP_FINITE   (hash md5:7925a90071fbfff2991762ca95d83854)
// not bridged: 
Theorem AFFINE_INDEPENDENT_IMP_FINITE : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> finite s.
Admitted.

// HOL Light: Multivariate/convex.ml:3850 / AFFINE_INDEPENDENT_CARD_LE   (hash md5:1e9545c7374c6e55c10fcd776bdd704c)
// not bridged: 
Theorem AFFINE_INDEPENDENT_CARD_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> finite_cardinality s <= dimindex N + 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3856 / AFFINE_INDEPENDENT_CONVEX_AFFINE_HULL   (hash md5:88b7f875053de093eca2afd9fa2605d9)
// not bridged: 
Theorem AFFINE_INDEPENDENT_CONVEX_AFFINE_HULL : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ affine_dependent N s /\ t c= s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:3891 / DISJOINT_AFFINE_HULL   (hash md5:4b8564e38c0ca782c9a3481046377bec)
// not bridged: 
Theorem DISJOINT_AFFINE_HULL : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, ~ affine_dependent N s /\ (t c= s /\ (u c= s /\ t :/\: u = Empty)) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} u = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:3925 / AFFINE_INDEPENDENT_SPAN_EQ   (hash md5:528037c80b5d77b2a11ed9b175602e60)
// not bridged: 
Theorem AFFINE_INDEPENDENT_SPAN_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s /\ finite_cardinality s = dimindex N + 1 -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:3943 / AFFINE_INDEPENDENT_SPAN_GT   (hash md5:309799596c0cb6c054257a494d9e087a)
// not bridged: 
Theorem AFFINE_INDEPENDENT_SPAN_GT : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s /\ dimindex N < finite_cardinality s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:3952 / EMPTY_INTERIOR_AFFINE_HULL   (hash md5:fd921d57ffd7345e8e95d807018aefb1)
// not bridged: 
Theorem EMPTY_INTERIOR_AFFINE_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ finite_cardinality s <= dimindex N -> interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:3971 / EMPTY_INTERIOR_CONVEX_HULL   (hash md5:832d8e099d2e415470dba471ce5ddcea)
// not bridged: 
Theorem EMPTY_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ finite_cardinality s <= dimindex N -> interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:3981 / AFFINE_DEPENDENT_CHOOSE   (hash md5:d32cac55a54e5e25b651ed3c474c4566)
// not bridged: 
Theorem AFFINE_DEPENDENT_CHOOSE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, ~ affine_dependent N s -> (affine_dependent N (SetAdjoin s a) <-> ~ a :e s /\ a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:4011 / AFFINE_INDEPENDENT_INSERT   (hash md5:6a85edfb092889cce5328c30b354b504)
// not bridged: 
Theorem AFFINE_INDEPENDENT_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, ~ affine_dependent N s /\ ~ a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> ~ affine_dependent N (SetAdjoin s a).
Admitted.

// HOL Light: Multivariate/convex.ml:4017 / AFFINE_HULL_EXPLICIT_UNIQUE   (hash md5:023e48019c81920d1eed1918201268fe)
// not bridged: 
Theorem AFFINE_HULL_EXPLICIT_UNIQUE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall u:set -> set, (forall x :e R :^: idx N, u x :e R) -> forall u':set -> set, (forall x :e R :^: idx N, u' x :e R) -> ~ affine_dependent N s /\ (finsum s u = 1 /\ (finsum s u' = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = vsum (R :^: idx N) N s (fun x:set => vector_mul N (u' x) x))) -> forall x :e R :^: idx N, x :e s -> u x = u' x.
Admitted.

// HOL Light: Multivariate/convex.ml:4032 / INDEPENDENT_IMP_AFFINE_DEPENDENT_0   (hash md5:d8badb9981de4e62b3f88df5195c7ed3)
// not bridged: 
Theorem INDEPENDENT_IMP_AFFINE_DEPENDENT_0 : forall A:set, A <> Empty -> forall s c= R :^: idx A, independent A s -> ~ affine_dependent A (SetAdjoin s (vec A 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:4037 / AFFINE_INDEPENDENT_STDBASIS   (hash md5:b4ba58a776608165a799eb2712be3766)
// not bridged: 
Theorem AFFINE_INDEPENDENT_STDBASIS : forall N:set, N <> Empty -> ~ affine_dependent N (SetAdjoin {basis N i | i :e omega, 1 <= i /\ i <= dimindex N} (vec N 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:4042 / SPAN_CONIC_HULL   (hash md5:8a50d4f8b3718d5cdb8e5cfe3fa7935c)
// not bridged: 
Theorem SPAN_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, span N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) = span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4049 / CONIC_HULLS_EQ_IMP_SPANS_EQ   (hash md5:20b1fc997f900105f45ac0d1e34105c9)
// not bridged: 
Theorem CONIC_HULLS_EQ_IMP_SPANS_EQ : forall N:set, N <> Empty -> forall s t c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} t -> span N s = span N t.
Admitted.

// HOL Light: Multivariate/convex.ml:4054 / DIM_CONIC_HULL   (hash md5:a7d4ccc34cdf274aedcffe1b4acfc206)
// not bridged: 
Theorem DIM_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) = dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4058 / CONIC_HULL_SUBSET_SPAN   (hash md5:30705d44ccdc3c540fb3bb18fb72e8c8)
// not bridged: 
Theorem CONIC_HULL_SUBSET_SPAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s c= span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4062 / CONIC_IMAGE_MULTIPLE_EQ   (hash md5:cf1543ac78ed099a500022cef46a041a)
// not bridged: 
Theorem CONIC_IMAGE_MULTIPLE_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s <-> forall a :e R, 0 <= a -> {vector_mul N a x | x :e s} c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:4066 / CONIC_IMAGE_MULTIPLE   (hash md5:c6d0cd0273ee018c18655249aea96887)
// not bridged: 
Theorem CONIC_IMAGE_MULTIPLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R, conic N s /\ 0 < a -> {vector_mul N a x | x :e s} = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4082 / AFFINE_TRANSLATION_SUBSPACE   (hash md5:b93c45b419f48720a89d042fc06eceb8)
// not bridged: 
Theorem AFFINE_TRANSLATION_SUBSPACE : forall N:set, N <> Empty -> forall t c= R :^: idx N, affine N t /\ ~ t = Empty <-> exists a :e R :^: idx N, exists s c= R :^: idx N, subspace N s /\ t = {vector_add N a x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:4095 / AFFINE_TRANSLATION_UNIQUE_SUBSPACE   (hash md5:2b7e7e57b5d7a689bd5bea39c0586fd4)
// not bridged: 
Theorem AFFINE_TRANSLATION_UNIQUE_SUBSPACE : forall N:set, N <> Empty -> forall t c= R :^: idx N, affine N t /\ ~ t = Empty <-> exists s c= R :^: idx N, (exists a :e R :^: idx N, subspace N s /\ t = {vector_add N a x | x :e s}) /\ forall y c= R :^: idx N, (exists a :e R :^: idx N, subspace N y /\ t = {vector_add N a x | x :e y}) -> y = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4119 / AFFINE_TRANSLATION_SUBSPACE_EXPLICIT   (hash md5:687bb13e3ff98269b61bc06d0a7db629)
// not bridged: 
Theorem AFFINE_TRANSLATION_SUBSPACE_EXPLICIT : forall N:set, N <> Empty -> forall t c= R :^: idx N, forall a :e R :^: idx N, affine N t /\ a :e t -> subspace N {vector_sub N x a | x :e R :^: idx N, x :e t} /\ t = {vector_add N a x | x :e {vector_sub N x a | x :e R :^: idx N, x :e t}}.
Admitted.

// HOL Light: Multivariate/convex.ml:4133 / AFFINE_PARALLEL_SLICE   (hash md5:e7ee2ba554a86fe93bcd5a73e3ac4103)
// not bridged: 
Theorem AFFINE_PARALLEL_SLICE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall b :e R, affine N s -> s :/\: {x :e R :^: idx N | dot N a x <= b} = Empty \/ (s c= {x :e R :^: idx N | dot N a x <= b} \/ exists a' :e R :^: idx N, exists b' :e R, ~ a' = vec N 0 /\ (s :/\: {x :e R :^: idx N | dot N a' x <= b'} = s :/\: {x :e R :^: idx N | dot N a x <= b} /\ (s :/\: {x :e R :^: idx N | dot N a' x = b'} = s :/\: {x :e R :^: idx N | dot N a x = b} /\ forall w :e R :^: idx N, w :e s -> vector_add N w a' :e s))).
Admitted.

// HOL Light: Multivariate/convex.ml:4194 / MAXIMAL_AFFINE_INDEPENDENT_SUBSET   (hash md5:a3d2305b5bb861d19566bd75790722de)
// not bridged: 
Theorem MAXIMAL_AFFINE_INDEPENDENT_SUBSET : forall N:set, N <> Empty -> forall s b c= R :^: idx N, b c= s /\ (~ affine_dependent N b /\ (forall b' c= R :^: idx N, b c= b' /\ (b' c= s /\ ~ affine_dependent N b') -> b' = b)) -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} b.
Admitted.

// HOL Light: Multivariate/convex.ml:4208 / MAXIMAL_AFFINE_INDEPENDENT_SUBSET_AFFINE   (hash md5:d9a3cb59766f77fd5ce6de98ffee6b3f)
// not bridged: 
Theorem MAXIMAL_AFFINE_INDEPENDENT_SUBSET_AFFINE : forall N:set, N <> Empty -> forall s b c= R :^: idx N, affine N s /\ (b c= s /\ (~ affine_dependent N b /\ (forall b' c= R :^: idx N, b c= b' /\ (b' c= s /\ ~ affine_dependent N b') -> b' = b))) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} b = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4217 / EXTEND_TO_AFFINE_BASIS   (hash md5:2a4cdd6431b1fa1e48977357cd1d7f60)
// not bridged: 
Theorem EXTEND_TO_AFFINE_BASIS : forall N:set, N <> Empty -> forall s u c= R :^: idx N, ~ affine_dependent N s /\ s c= u -> exists t c= R :^: idx N, ~ affine_dependent N t /\ (s c= t /\ (t c= u /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} u)).
Admitted.

// HOL Light: Multivariate/convex.ml:4243 / AFFINE_BASIS_EXISTS   (hash md5:7896a512ed2a60bec2797dbe37e6421e)
// not bridged: 
Theorem AFFINE_BASIS_EXISTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, exists b c= R :^: idx N, ~ affine_dependent N b /\ (b c= s /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} b = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:4252 / aff_dim   (hash md5:9c0f3addecc214434b602ca1036e3760)
// not bridged: 
Theorem aff_dim_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, aff_dim A s = choose_in int (fun d:set => exists b c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} b = hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s /\ (~ affine_dependent A b /\ finite_cardinality b = d + 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:4257 / AFF_DIM   (hash md5:bf6ef5edb512f71346041b1c5f9d4029)
// not bridged: 
Theorem AFF_DIM : forall A:set, A <> Empty -> forall s c= R :^: idx A, exists b c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} b = hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s /\ (~ affine_dependent A b /\ aff_dim A s = finite_cardinality b + - 1).
Admitted.

// HOL Light: Multivariate/convex.ml:4267 / AFF_DIM_EMPTY   (hash md5:2aad80c357e8ce8297486bb355cea34f)
// not bridged: 
Theorem AFF_DIM_EMPTY : forall A:set, A <> Empty -> aff_dim A Empty = - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4273 / AFF_DIM_AFFINE_HULL   (hash md5:13044d3c8df8d33b7c3f00b6a69f702d)
// not bridged: 
Theorem AFF_DIM_AFFINE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, aff_dim A (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s) = aff_dim A s.
Admitted.

// HOL Light: Multivariate/convex.ml:4277 / AFF_DIM_TRANSLATION_EQ   (hash md5:7adbf7fbfa023c1cedf38ebde622e945)
// not bridged: 
Theorem AFF_DIM_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, aff_dim N {vector_add N a x | x :e s} = aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4286 / AFFINE_HULL_CONIC_HULL   (hash md5:c6037139b447b08b39876cf3cfbf9c7d)
// not bridged: 
Theorem AFFINE_HULL_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) = if s = Empty then Empty else hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (SetAdjoin s (vec N 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:4295 / AFFINE_INDEPENDENT_CARD_DIM_DIFFS   (hash md5:1c63def2072ef52758d92507181c110e)
// not bridged: 
Theorem AFFINE_INDEPENDENT_CARD_DIM_DIFFS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, ~ affine_dependent N s /\ a :e s -> finite_cardinality s = dim N {vector_sub N x a | x :e R :^: idx N, x :e s} + 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4320 / AFF_DIM_DIM_0   (hash md5:e6b1c649d53a9460f963f12deb0fcafa)
// not bridged: 
Theorem AFF_DIM_DIM_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> aff_dim N s = dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4354 / AFF_DIM_DIM_SUBSPACE   (hash md5:31f1f0dad6ddb6f82ccc436190127f2b)
// not bridged: 
Theorem AFF_DIM_DIM_SUBSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s -> aff_dim N s = dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4358 / AFF_DIM_DIM_AFFINE_DIFFS_STRONG   (hash md5:79f3cb3dca375a748faacbc1c524a59b)
// not bridged: 
Theorem AFF_DIM_DIM_AFFINE_DIFFS_STRONG : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s -> aff_dim N s = dim N {vector_sub N x a | x :e R :^: idx N, x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:4364 / AFF_DIM_DIM_AFFINE_DIFFS   (hash md5:aac07bea2e7610bba2d7fb32e7306f7a)
// not bridged: 
Theorem AFF_DIM_DIM_AFFINE_DIFFS : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, a :e s -> aff_dim N s = dim N {vector_sub N x a | x :e R :^: idx N, x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:4368 / AFF_DIM_LINEAR_IMAGE_LE   (hash md5:55090e3c2873a6fe5121ba8fdff9a3ae)
// not bridged: 
Theorem AFF_DIM_LINEAR_IMAGE_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f -> aff_dim N {f x | x :e s} <= aff_dim M s.
Admitted.

// HOL Light: Multivariate/convex.ml:4390 / AFF_DIM_INJECTIVE_LINEAR_IMAGE   (hash md5:87d8deb6d340b2a9bee9a183b1fa77cb)
// not bridged: 
Theorem AFF_DIM_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> aff_dim N {f x | x :e s} = aff_dim M s.
Admitted.

// HOL Light: Multivariate/convex.ml:4407 / AFF_DIM_AFFINE_INDEPENDENT   (hash md5:f39e89c6705f801cbe37e53b61aa75eb)
// not bridged: 
Theorem AFF_DIM_AFFINE_INDEPENDENT : forall N:set, N <> Empty -> forall b c= R :^: idx N, ~ affine_dependent N b -> aff_dim N b = finite_cardinality b + - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4425 / AFF_DIM_UNIQUE   (hash md5:e5e1c62ebcdc6f64c9ff098111a56003)
// not bridged: 
Theorem AFF_DIM_UNIQUE : forall N:set, N <> Empty -> forall s b c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} b = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ ~ affine_dependent N b -> aff_dim N s = finite_cardinality b + - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4431 / AFF_DIM_SING   (hash md5:1f6d8cef1ec02b3f4564a3505119ac37)
// not bridged: 
Theorem AFF_DIM_SING : forall N:set, N <> Empty -> forall a :e R :^: idx N, aff_dim N {a} = 0.
Admitted.

// HOL Light: Multivariate/convex.ml:4439 / AFF_DIM_LE_CARD   (hash md5:8d45cb8123bb3759b0ab7267fe0ea5ff)
// not bridged: 
Theorem AFF_DIM_LE_CARD : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> aff_dim N s <= finite_cardinality s + - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4450 / AFF_DIM_GE   (hash md5:fefa13b4adea08debf4224f7c74a4ecf)
// not bridged: 
Theorem AFF_DIM_GE : forall N:set, N <> Empty -> forall s c= R :^: idx N, - 1 <= aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4455 / AFF_DIM_SUBSET   (hash md5:a5ad46e0bab76636a6a604f115b20ecc)
// not bridged: 
Theorem AFF_DIM_SUBSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t -> aff_dim N s <= aff_dim N t.
Admitted.

// HOL Light: Multivariate/convex.ml:4463 / AFF_DIM_LE_DIM   (hash md5:a9f1e466b4b00fb386cbc9fd4e0eb0df)
// not bridged: 
Theorem AFF_DIM_LE_DIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s <= dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4469 / AFF_DIM_CONVEX_HULL   (hash md5:799a591742f63f98877b9263cf080015)
// not bridged: 
Theorem AFF_DIM_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4477 / AFF_DIM_CLOSURE   (hash md5:3bbea5ef4bc399332c3fcadd4b823254)
// not bridged: 
Theorem AFF_DIM_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N (closure N s) = aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4489 / AFF_DIM_2   (hash md5:e91fa89ef24b4c74ab23d7638271c274)
// not bridged: 
Theorem AFF_DIM_2 : forall N:set, N <> Empty -> forall a b :e R :^: idx N, aff_dim N {a,b} = if a = b then 0 else 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4498 / AFF_DIM_EQ_MINUS1   (hash md5:d0f133e1d078fd521ffd0e3c5afdabde)
// not bridged: 
Theorem AFF_DIM_EQ_MINUS1 : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s = - 1 <-> s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:4509 / AFF_DIM_POS_LE   (hash md5:4fb4ff56ae9c6406ae202ea2a8d4256e)
// not bridged: 
Theorem AFF_DIM_POS_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, 0 <= aff_dim N s <-> ~ s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:4514 / AFF_DIM_EQ_0   (hash md5:ff83dfe74adff0c0dbb148d2d6b17100)
// not bridged: 
Theorem AFF_DIM_EQ_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s = 0 <-> exists a :e R :^: idx N, s = {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:4528 / CONNECTED_IMP_PERFECT_AFF_DIM   (hash md5:240d122017b03aaa7b9ee6767cc5101b)
// not bridged: 
Theorem CONNECTED_IMP_PERFECT_AFF_DIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, connected N s /\ (~ aff_dim N s = 0 /\ x :e s) -> limit_point_of N x s.
Admitted.

// HOL Light: Multivariate/convex.ml:4533 / AFF_DIM_UNIV   (hash md5:7287f03acb3badb9231f842c0f006ccb)
// not bridged: 
Theorem AFF_DIM_UNIV : forall N:set, N <> Empty -> aff_dim N (R :^: idx N) = dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:4537 / AFF_DIM_EQ_AFFINE_HULL   (hash md5:7e49985226e735d755f127557bf5f278)
// not bridged: 
Theorem AFF_DIM_EQ_AFFINE_HULL : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t /\ aff_dim N t <= aff_dim N s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t.
Admitted.

// HOL Light: Multivariate/convex.ml:4548 / AFF_DIM_SUMS_INTER   (hash md5:8a4f71a188dd3f54c50d1ecde2e7d97e)
// not bridged: 
Theorem AFF_DIM_SUMS_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, affine N s /\ (affine N t /\ ~ s :/\: t = Empty) -> aff_dim N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) = (aff_dim N s + aff_dim N t) + - aff_dim N (s :/\: t).
Admitted.

// HOL Light: Multivariate/convex.ml:4572 / AFF_DIM_PSUBSET   (hash md5:e5495fab5069eb55e2ce2d1920a7e17c)
// not bridged: 
Theorem AFF_DIM_PSUBSET : forall A:set, A <> Empty -> forall s t c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s c= hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} t /\ hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s <> hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} t -> aff_dim A s < aff_dim A t.
Admitted.

// HOL Light: Multivariate/convex.ml:4578 / AFF_DIM_EQ_FULL_GEN   (hash md5:8fa3097137a8c4818fa24a4ba75ed5be)
// not bridged: 
Theorem AFF_DIM_EQ_FULL_GEN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t -> (aff_dim N s = aff_dim N t <-> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t).
Admitted.

// HOL Light: Multivariate/convex.ml:4587 / AFF_DIM_EQ_FULL   (hash md5:acc21963340c4597418dfc31e9989f00)
// not bridged: 
Theorem AFF_DIM_EQ_FULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s = dimindex N <-> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:4592 / AFF_DIM_LE_UNIV   (hash md5:d5ba065e6d24af463df5f536fe77049c)
// not bridged: 
Theorem AFF_DIM_LE_UNIV : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s <= dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:4597 / AFFINE_INDEPENDENT_IFF_CARD   (hash md5:5935b5fe22e9be454f7110679b869a8d)
// not bridged: 
Theorem AFFINE_INDEPENDENT_IFF_CARD : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s <-> finite s /\ aff_dim N s = finite_cardinality s + - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4612 / AFFINE_HULL_CONVEX_INTER_NONEMPTY_INTERIOR   (hash md5:6dcc6c65abb41b5aa56431f8262f7872)
// not bridged: 
Theorem AFFINE_HULL_CONVEX_INTER_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ ~ s :/\: interior N t = Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (s :/\: t) = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:4649 / AFFINE_HULL_CONVEX_INTER_OPEN   (hash md5:b30129b2973d4b56403713491b921023)
// not bridged: 
Theorem AFFINE_HULL_CONVEX_INTER_OPEN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (open N t /\ ~ s :/\: t = Empty) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (s :/\: t) = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:4655 / AFFINE_HULL_AFFINE_INTER_NONEMPTY_INTERIOR   (hash md5:eed67a00e599b979133ac534cfe53f97)
// not bridged: 
Theorem AFFINE_HULL_AFFINE_INTER_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s t c= R :^: idx N, affine N s /\ ~ s :/\: interior N t = Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (s :/\: t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4662 / AFFINE_HULL_AFFINE_INTER_OPEN   (hash md5:a0f9d1817c397abc7526b4afeaa31524)
// not bridged: 
Theorem AFFINE_HULL_AFFINE_INTER_OPEN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, affine N s /\ (open N t /\ ~ s :/\: t = Empty) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (s :/\: t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4668 / CONVEX_AND_AFFINE_INTER_OPEN   (hash md5:a38b18524d25f8646b099e8b6ba097d6)
// not bridged: 
Theorem CONVEX_AND_AFFINE_INTER_OPEN : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, convex N s /\ (affine N t /\ (open N u /\ (s :/\: u = t :/\: u /\ ~ s :/\: u = Empty))) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = t.
Admitted.

// HOL Light: Multivariate/convex.ml:4685 / AFFINE_HULL_CONVEX_INTER_OPEN_IN   (hash md5:bac285ca03087e6b75592508c26eb7e5)
// not bridged: 
Theorem AFFINE_HULL_CONVEX_INTER_OPEN_IN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (t :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ ~ s :/\: t = Empty) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (s :/\: t) = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:4697 / AFFINE_HULL_AFFINE_INTER_OPEN_IN   (hash md5:2054eda7816be2e8d50d72cf672096db)
// not bridged: 
Theorem AFFINE_HULL_AFFINE_INTER_OPEN_IN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, affine N s /\ (t :e subtopology (R :^: idx N) (euclidean N) s /\ ~ s :/\: t = Empty) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (s :/\: t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4706 / AFFINE_HULL_OPEN_IN_CONVEX   (hash md5:193378f165a99f50132211ce27269775)
// not bridged: 
Theorem AFFINE_HULL_OPEN_IN_CONVEX : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (t :e subtopology (R :^: idx N) (euclidean N) s /\ ~ t = Empty) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:4716 / AFFINE_HULL_OPEN_IN   (hash md5:bfd3d169e9bf238b2bf1af1cc01545ad)
// not bridged: 
Theorem AFFINE_HULL_OPEN_IN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t) /\ ~ s = Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t.
Admitted.

// HOL Light: Multivariate/convex.ml:4724 / AFFINE_HULL_OPEN_IN_AFFINE   (hash md5:d9a729c1ac711492be300769e3309e4d)
// not bridged: 
Theorem AFFINE_HULL_OPEN_IN_AFFINE : forall N:set, N <> Empty -> forall u s c= R :^: idx N, affine N u /\ (s :e subtopology (R :^: idx N) (euclidean N) u /\ ~ s = Empty) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = u.
Admitted.

// HOL Light: Multivariate/convex.ml:4730 / AFFINE_HULL_OPEN   (hash md5:612586230bcf87353181c95aeae98035)
// not bridged: 
Theorem AFFINE_HULL_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s /\ ~ s = Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:4737 / AFFINE_HULL_NONEMPTY_INTERIOR   (hash md5:6e7ce39021fde15e99bdc02d901d3d8b)
// not bridged: 
Theorem AFFINE_HULL_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ interior N s = Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:4745 / AFF_DIM_OPEN   (hash md5:af4ae64212a23b751bee71d6d5cc5ceb)
// not bridged: 
Theorem AFF_DIM_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s /\ ~ s = Empty -> aff_dim N s = dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:4749 / AFF_DIM_NONEMPTY_INTERIOR   (hash md5:51a2f09badc4789cc81b48d0094e53f7)
// not bridged: 
Theorem AFF_DIM_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ interior N s = Empty -> aff_dim N s = dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:4753 / EMPTY_INTERIOR_AFF_DIM   (hash md5:5c7383eb90a7fbc0a5a049c6c36299e5)
// not bridged: 
Theorem EMPTY_INTERIOR_AFF_DIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s < dimindex N -> interior N s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:4757 / SPAN_OPEN   (hash md5:a8857b79fbc1376bca9f3e48705730c8)
// not bridged: 
Theorem SPAN_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s /\ ~ s = Empty -> span N s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:4764 / DIM_OPEN   (hash md5:587e19342cb621a7884cac7b5ff9cc9c)
// not bridged: 
Theorem DIM_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s /\ ~ s = Empty -> dim N s = dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:4768 / AFF_DIM_INSERT   (hash md5:117e816b11dfbfcd6f83ce0ea763a628)
// not bridged: 
Theorem AFF_DIM_INSERT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, aff_dim N (SetAdjoin s a) = if a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s then aff_dim N s else aff_dim N s + 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4783 / AFF_DIM_DIM   (hash md5:189921c495effd8fed6d7990dd2b4e68)
// not bridged: 
Theorem AFF_DIM_DIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s = if vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s then dim N s else dim N s + - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4792 / AFF_DIM_CONIC_HULL_DIM   (hash md5:fd04a054bd79a9af817b770e3315ab09)
// not bridged: 
Theorem AFF_DIM_CONIC_HULL_DIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) = if s = Empty then - 1 else dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4801 / AFFINE_BOUNDED_EQ_TRIVIAL   (hash md5:be805ee111c31948ba494a9e3b8552d0)
// not bridged: 
Theorem AFFINE_BOUNDED_EQ_TRIVIAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, affine N s -> (bounded_hl N s <-> s = Empty \/ exists a :e R :^: idx N, s = {a}).
Admitted.

// HOL Light: Multivariate/convex.ml:4812 / AFFINE_BOUNDED_EQ_LOWDIM   (hash md5:04ababad1f5de114db543ef77809223a)
// not bridged: 
Theorem AFFINE_BOUNDED_EQ_LOWDIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, affine N s -> (bounded_hl N s <-> aff_dim N s <= 0).
Admitted.

// HOL Light: Multivariate/convex.ml:4819 / COLLINEAR_AFF_DIM   (hash md5:0c882ae5b852202617ea7fff11dcf259)
// not bridged: 
Theorem COLLINEAR_AFF_DIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, collinear N s <-> aff_dim N s <= 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4844 / COPLANAR_AFF_DIM   (hash md5:e100dee56645048556909e48a6cfbcf5)
// not bridged: 
Theorem COPLANAR_AFF_DIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, coplanar N s <-> aff_dim N s <= 2.
Admitted.

// HOL Light: Multivariate/convex.ml:4865 / HOMEOMORPHIC_AFFINE_SETS   (hash md5:18416083d3fb45f487ded5185e346456)
// not bridged: 
Theorem HOMEOMORPHIC_AFFINE_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, affine M s /\ (affine N t /\ aff_dim M s = aff_dim N t) -> homeomorphic N M s t.
Admitted.

// HOL Light: Multivariate/convex.ml:4882 / AFF_DIM_OPEN_IN   (hash md5:aecc7d8e0d7c2d0fc1fe0f842f2b749b)
// not bridged: 
Theorem AFF_DIM_OPEN_IN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ s = Empty /\ (s :e subtopology (R :^: idx N) (euclidean N) t /\ affine N t) -> aff_dim N s = aff_dim N t.
Admitted.

// HOL Light: Multivariate/convex.ml:4918 / DIM_OPEN_IN   (hash md5:5ced6f206aab765e1f164e70ddc54a02)
// not bridged: 
Theorem DIM_OPEN_IN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ s = Empty /\ (s :e subtopology (R :^: idx N) (euclidean N) t /\ subspace N t) -> dim N s = dim N t.
Admitted.

// HOL Light: Multivariate/convex.ml:4931 / AFF_DIM_CONVEX_INTER_NONEMPTY_INTERIOR   (hash md5:c64a38c869a440124c1e29f169e724a0)
// not bridged: 
Theorem AFF_DIM_CONVEX_INTER_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ ~ s :/\: interior N t = Empty -> aff_dim N (s :/\: t) = aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4939 / AFF_DIM_CONVEX_INTER_OPEN   (hash md5:6730903bb475b0057d99eae7a24f46af)
// not bridged: 
Theorem AFF_DIM_CONVEX_INTER_OPEN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (open N t /\ ~ s :/\: t = Empty) -> aff_dim N (s :/\: t) = aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4947 / AFF_DIM_NONEMPTY_INTERIOR_OF   (hash md5:20b9e2177778197bbf0612736601f8c0)
// not bridged: 
Theorem AFF_DIM_NONEMPTY_INTERIOR_OF : forall N:set, N <> Empty -> forall u s c= R :^: idx N, s c= u /\ (affine N u /\ ~ interior_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s = Empty) -> aff_dim N s = aff_dim N u.
Admitted.

// HOL Light: Multivariate/convex.ml:4959 / EMPTY_INTERIOR_OF_AFF_DIM   (hash md5:e9b86bfb05b929a6b513fe6c4d00c1e0)
// not bridged: 
Theorem EMPTY_INTERIOR_OF_AFF_DIM : forall N:set, N <> Empty -> forall u s c= R :^: idx N, affine N u /\ aff_dim N s < aff_dim N u -> interior_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:4973 / AFFINE_HULL_HALFSPACE_LT   (hash md5:c5375602ffdf3af334d00db03ca39f05)
// not bridged: 
Theorem AFFINE_HULL_HALFSPACE_LT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {x :e R :^: idx N | dot N a x < b} = if a = vec N 0 /\ b <= 0 then Empty else R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:4980 / AFFINE_HULL_HALFSPACE_LE   (hash md5:30fcf8b3a7ca024c197f593ebb4e66e4)
// not bridged: 
Theorem AFFINE_HULL_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {x :e R :^: idx N | dot N a x <= b} = if a = vec N 0 /\ b < 0 then Empty else R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:4990 / AFFINE_HULL_HALFSPACE_GT   (hash md5:8abd955a000e62d12be91115f7511b77)
// not bridged: 
Theorem AFFINE_HULL_HALFSPACE_GT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {x :e R :^: idx N | b < dot N a x} = if a = vec N 0 /\ 0 <= b then Empty else R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:4997 / AFFINE_HULL_HALFSPACE_GE   (hash md5:1c00dbacc1a1ff52342dd40c654e7123)
// not bridged: 
Theorem AFFINE_HULL_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {x :e R :^: idx N | b <= dot N a x} = if a = vec N 0 /\ 0 < b then Empty else R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:5005 / AFF_DIM_HALFSPACE_LT   (hash md5:1a26a8a2d4b44340487909536fb1f5de)
// not bridged: 
Theorem AFF_DIM_HALFSPACE_LT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, aff_dim N {x :e R :^: idx N | dot N a x < b} = if a = vec N 0 /\ b <= 0 then - 1 else dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:5013 / AFF_DIM_HALFSPACE_LE   (hash md5:0d708a1edbebf8ee626ad31c8c2251a8)
// not bridged: 
Theorem AFF_DIM_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, aff_dim N {x :e R :^: idx N | dot N a x <= b} = if a = vec N 0 /\ b < 0 then - 1 else dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:5021 / AFF_DIM_HALFSPACE_GT   (hash md5:e5d413b692cfa777c913e8ba7e6852d9)
// not bridged: 
Theorem AFF_DIM_HALFSPACE_GT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, aff_dim N {x :e R :^: idx N | b < dot N a x} = if a = vec N 0 /\ 0 <= b then - 1 else dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:5029 / AFF_DIM_HALFSPACE_GE   (hash md5:a9459a785b0013b97d50bcd238d9bd7d)
// not bridged: 
Theorem AFF_DIM_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, aff_dim N {x :e R :^: idx N | b <= dot N a x} = if a = vec N 0 /\ 0 < b then - 1 else dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:5037 / CHOOSE_AFFINE_SUBSET   (hash md5:75feffab4e0fa87551931bc15f76ff58)
// not bridged: 
Theorem CHOOSE_AFFINE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall d :e int, affine N s /\ (- 1 <= d /\ d <= aff_dim N s) -> exists t c= R :^: idx N, affine N t /\ (t c= s /\ aff_dim N t = d).
Admitted.

// HOL Light: Multivariate/convex.ml:5064 / NONEMPTY_AFFINE_EXISTS   (hash md5:8c913fc7b9dbdfbcf010a826b107e157)
// not bridged: 
Theorem NONEMPTY_AFFINE_EXISTS : forall N:set, N <> Empty -> forall n :e int, forall a :e R :^: idx N, 0 <= n /\ n <= dimindex N -> exists s c= R :^: idx N, affine N s /\ (a :e s /\ aff_dim N s = n).
Admitted.

// HOL Light: Multivariate/convex.ml:5076 / AFFINE_EXISTS   (hash md5:c32215453ff38df643c62716fcf20d07)
// not bridged: 
Theorem AFFINE_EXISTS : forall N:set, N <> Empty -> forall n :e int, - 1 <= n /\ n <= dimindex N -> exists s c= R :^: idx N, affine N s /\ aff_dim N s = n.
Admitted.

// HOL Light: Multivariate/convex.ml:5085 / AFF_DIM_CONIC_HULL   (hash md5:b38ad7c0422c040272dfa6b9798e1437)
// not bridged: 
Theorem AFF_DIM_CONIC_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) = if s = Empty \/ vec N 0 :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s then aff_dim N s else aff_dim N s + 1.
Admitted.

// HOL Light: Multivariate/convex.ml:5096 / AFF_DIM_PCROSS   (hash md5:cd2c6b3495b7cb6e421bba4b7b36e14b)
// not bridged: 
Theorem AFF_DIM_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, ~ s = Empty /\ ~ t = Empty -> aff_dim (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) = aff_dim M s + aff_dim N t.
Admitted.

// HOL Light: Multivariate/convex.ml:5121 / AFF_DIM_UNION   (hash md5:abae1ef8ca20fe328b14acc0a6f64f98)
// not bridged: 
Theorem AFF_DIM_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, affine N s /\ (affine N t /\ ~ s :/\: t = Empty) -> aff_dim N (s :\/: t) = (aff_dim N s + aff_dim N t) + - aff_dim N (s :/\: t).
Admitted.

// HOL Light: Multivariate/convex.ml:5137 / COPLANAR_INTERSECTING_LINES   (hash md5:44165db64dd30bf0394e2b829b8473b7)
// not bridged: 
Theorem COPLANAR_INTERSECTING_LINES : forall N:set, N <> Empty -> forall a b c d z :e R :^: idx N, collinear N {a,z,b} /\ collinear N {c,z,d} -> coplanar N {z,a,b,c,d}.
Admitted.

// HOL Light: Multivariate/convex.ml:5155 / ISOMETRIC_HOMEOMORPHISM_AFFINE   (hash md5:837cc93eafd21be85faac8f3ba7ce5ae)
// not bridged: 
Theorem ISOMETRIC_HOMEOMORPHISM_AFFINE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, affine M s /\ (affine N t /\ aff_dim M s = aff_dim N t) -> exists f :e R :^: idx N :^: (R :^: idx M), exists g :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (s,t) (f,g) /\ ((forall x y :e R :^: idx M, x :e s /\ y :e s -> distance N (f x,f y) = distance M (x,y)) /\ forall x y :e R :^: idx N, x :e t /\ y :e t -> distance M (g x,g y) = distance N (x,y)).
Admitted.

// HOL Light: Multivariate/convex.ml:5202 / RIGID_TRANSFORMATION_BETWEEN_CONGRUENT_SETS   (hash md5:0912c98cbdef9897fd73808d21e1c002)
// not bridged: 
Theorem RIGID_TRANSFORMATION_BETWEEN_CONGRUENT_SETS : forall A N:set, A <> Empty -> N <> Empty -> forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx N) -> forall y:set -> set, (forall x0 :e A, y x0 :e R :^: idx N) -> forall s c= A, (forall i j :e A, i :e s /\ j :e s -> distance N (x i,x j) = distance N (y i,y j)) -> exists a :e R :^: idx N, exists f:set -> set, (forall x0 :e R :^: idx N, f x0 :e R :^: idx N) /\ (orthogonal_transformation N f /\ forall i :e A, i :e s -> y i = vector_add N a (f (x i))).
Admitted.

// HOL Light: Multivariate/convex.ml:5354 / RIGID_TRANSFORMATION_BETWEEN_CONGRUENT_SETS_STRONG   (hash md5:5d9e8f4046343bd457fa98169efe4551)
// not bridged: 
Theorem RIGID_TRANSFORMATION_BETWEEN_CONGRUENT_SETS_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx N) -> forall y:set -> set, (forall x0 :e A, y x0 :e R :^: idx N) -> forall s t c= A, t c= s /\ (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} {y x | x :e t} = hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} {y x | x :e s} /\ (forall i j :e A, i :e s /\ j :e t -> distance N (x i,x j) = distance N (y i,y j))) -> exists a :e R :^: idx N, exists f:set -> set, (forall x0 :e R :^: idx N, f x0 :e R :^: idx N) /\ (orthogonal_transformation N f /\ forall i :e A, i :e s -> y i = vector_add N a (f (x i))).
Admitted.

// HOL Light: Multivariate/convex.ml:5383 / RIGID_TRANSFORMATION_BETWEEN_3   (hash md5:fd4f72949dc7c699d5c7dcd24fe528cd)
// not bridged: 
Theorem RIGID_TRANSFORMATION_BETWEEN_3 : forall N:set, N <> Empty -> forall a b c a' b' c' :e R :^: idx N, distance N (a,b) = distance N (a',b') /\ (distance N (b,c) = distance N (b',c') /\ distance N (c,a) = distance N (c',a')) -> exists k :e R :^: idx N, exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ (a' = vector_add N k (f a) /\ (b' = vector_add N k (f b) /\ c' = vector_add N k (f c)))).
Admitted.

// HOL Light: Multivariate/convex.ml:5399 / RIGID_TRANSFORMATION_BETWEEN_2   (hash md5:5af298e26a05514c275ef03b0b3da3d3)
// not bridged: 
Theorem RIGID_TRANSFORMATION_BETWEEN_2 : forall N:set, N <> Empty -> forall a b a' b' :e R :^: idx N, distance N (a,b) = distance N (a',b') -> exists k :e R :^: idx N, exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ (a' = vector_add N k (f a) /\ b' = vector_add N k (f b))).
Admitted.

// HOL Light: Multivariate/convex.ml:5414 / CONVEX_HULL_CARATHEODORY_AFF_DIM   (hash md5:2d9a1accdff9f4fc9f3d3e138ec5f3ff)
// not bridged: 
Theorem CONVEX_HULL_CARATHEODORY_AFF_DIM : forall N:set, N <> Empty -> forall p c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} p = {y :e R :^: idx N | exists s c= R :^: idx N, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finite s /\ (s c= p /\ (finite_cardinality s <= aff_dim N p + 1 /\ ((forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = y)))))}.
Admitted.

// HOL Light: Multivariate/convex.ml:5492 / CARATHEODORY_AFF_DIM   (hash md5:a89bbd09e3c3ca462263287b9fa1cf08)
// not bridged: 
Theorem CARATHEODORY_AFF_DIM : forall N:set, N <> Empty -> forall p c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} p = {x :e R :^: idx N | exists s c= R :^: idx N, finite s /\ (s c= p /\ (finite_cardinality s <= aff_dim N p + 1 /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s))}.
Admitted.

// HOL Light: Multivariate/convex.ml:5504 / CONVEX_HULL_CARATHEODORY   (hash md5:d63376e5d61c32c5f232245e9abd0542)
// not bridged: 
Theorem CONVEX_HULL_CARATHEODORY : forall N:set, N <> Empty -> forall p c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} p = {y :e R :^: idx N | exists s c= R :^: idx N, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finite s /\ (s c= p /\ (finite_cardinality s <= dimindex N + 1 /\ ((forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = y)))))}.
Admitted.

// HOL Light: Multivariate/convex.ml:5522 / CARATHEODORY   (hash md5:e973613f6ffd4873644fbf6b8f4c8aaf)
// not bridged: 
Theorem CARATHEODORY : forall N:set, N <> Empty -> forall p c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} p = {x :e R :^: idx N | exists s c= R :^: idx N, finite s /\ (s c= p /\ (finite_cardinality s <= dimindex N + 1 /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s))}.
Admitted.

// HOL Light: Multivariate/convex.ml:5538 / AFFINE_HULL_INTER   (hash md5:d8c06dead850ab38b6da2c3d24061c14)
// not bridged: 
Theorem AFFINE_HULL_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ affine_dependent N (s :\/: t) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (s :/\: t).
Admitted.

// HOL Light: Multivariate/convex.ml:5538 / CONVEX_HULL_INTER   (hash md5:2901e9660fe49fb70a07a70a01954b62)
// not bridged: 
Theorem CONVEX_HULL_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ affine_dependent N (s :\/: t) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :/\: t).
Admitted.

// HOL Light: Multivariate/convex.ml:5587 / AFFINE_HULL_INTERS   (hash md5:4b62d444c66d5f636076da5263ccef9e)
// not bridged: 
Theorem AFFINE_HULL_INTERS : forall N:set, N <> Empty -> forall s c= Power (R :^: idx N), ~ affine_dependent N (Union s) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {x :e R :^: idx N | forall Y :e s, x :e Y} = {x :e R :^: idx N | forall Y :e {hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t | t :e Power (R :^: idx N), t :e s}, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:5623 / CONVEX_HULL_INTERS   (hash md5:689d64d75a638e8fb0c235c3210dbcc6)
// not bridged: 
Theorem CONVEX_HULL_INTERS : forall N:set, N <> Empty -> forall s c= Power (R :^: idx N), ~ affine_dependent N (Union s) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {x :e R :^: idx N | forall Y :e s, x :e Y} = {x :e R :^: idx N | forall Y :e {hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t | t :e Power (R :^: idx N), t :e s}, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:5659 / IN_CONVEX_HULL_EXCHANGE   (hash md5:3db5007c5aa21a22543626a53bc5a907)
// not bridged: 
Theorem IN_CONVEX_HULL_EXCHANGE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x :e R :^: idx N, a :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s -> exists b :e R :^: idx N, b :e s /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} (SetAdjoin (s :\: {b}) a).
Admitted.

// HOL Light: Multivariate/convex.ml:5746 / IN_CONVEX_HULL_EXCHANGE_UNIQUE   (hash md5:34225c0eda632dd739edd8965ae2789b)
// not bridged: 
Theorem IN_CONVEX_HULL_EXCHANGE_UNIQUE : forall N:set, N <> Empty -> forall s t t' c= R :^: idx N, forall a x :e R :^: idx N, ~ affine_dependent N s /\ (a :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ (t c= s /\ (t' c= s /\ (x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} (SetAdjoin t a) /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} (SetAdjoin t' a))))) -> x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} (SetAdjoin (t :/\: t') a).
Admitted.

// HOL Light: Multivariate/convex.ml:5832 / CONVEX_HULL_EXCHANGE_UNION   (hash md5:64645c8f054ca4d70e14195160a02d58)
// not bridged: 
Theorem CONVEX_HULL_EXCHANGE_UNION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s = Union {hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin (s :\: {b}) a) | b :e R :^: idx N, b :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:5848 / CONVEX_HULL_EXCHANGE_INTER   (hash md5:87b801a743546f52d33ed1c964c74c11)
// not bridged: 
Theorem CONVEX_HULL_EXCHANGE_INTER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall t t' c= R :^: idx N, ~ affine_dependent N s /\ (a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s /\ (t c= s /\ t' c= s)) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin t a) :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin t' a) = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin (t :/\: t') a).
Admitted.

// HOL Light: Multivariate/convex.ml:5867 / AFF_DIM_EQ_INTER_HYPERPLANE   (hash md5:a2d5d4c55376f6836c8d41e7edcf2065)
// not bridged: 
Theorem AFF_DIM_EQ_INTER_HYPERPLANE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, affine N s /\ (affine N t /\ (t c= s /\ aff_dim N t + 1 = aff_dim N s)) -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ {x :e R :^: idx N | dot N a x = b} :/\: s = t.
Admitted.

// HOL Light: Multivariate/convex.ml:5893 / AFF_DIM_EQ_HYPERPLANE   (hash md5:ac39c31d0553e87a31c9dba616b18561)
// not bridged: 
Theorem AFF_DIM_EQ_HYPERPLANE : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s = dimindex N + - 1 <-> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = {x :e R :^: idx N | dot N a x = b}.
Admitted.

// HOL Light: Multivariate/convex.ml:5920 / AFF_DIM_HYPERPLANE   (hash md5:5196d425e3670bac76282074e48fedf9)
// not bridged: 
Theorem AFF_DIM_HYPERPLANE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, ~ a = vec N 0 -> aff_dim N {x :e R :^: idx N | dot N a x = b} = dimindex N + - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:5927 / BOUNDED_HYPERPLANE_EQ_TRIVIAL   (hash md5:7513cd53bf6532e826c41cf3f8403e4a)
// not bridged: 
Theorem BOUNDED_HYPERPLANE_EQ_TRIVIAL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, bounded_hl N {x :e R :^: idx N | dot N a x = b} <-> (a = vec N 0 -> ~ b = 0) /\ (~ a = vec N 0 -> dimindex N = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:5941 / AFFINE_HULL_FINITE_INTERSECTION_HYPERPLANES   (hash md5:b5167297a0d3fc4e2533960257c2de8a)
// not bridged: 
Theorem AFFINE_HULL_FINITE_INTERSECTION_HYPERPLANES : forall N:set, N <> Empty -> forall s c= R :^: idx N, exists f c= Power (R :^: idx N), finite f /\ (finite_cardinality f + aff_dim N s = dimindex N /\ (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = {x :e R :^: idx N | forall Y :e f, x :e Y} /\ forall h c= R :^: idx N, h :e f -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ h = {x :e R :^: idx N | dot N a x = b})).
Admitted.

// HOL Light: Multivariate/convex.ml:5998 / AFFINE_HYPERPLANE_SUMS_EQ_UNIV   (hash md5:753fb42a56c67d0476b702aee7407a28)
// not bridged: 
Theorem AFFINE_HYPERPLANE_SUMS_EQ_UNIV : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, forall s c= R :^: idx N, affine N s /\ (~ s :/\: {v :e R :^: idx N | dot N a v = b} = Empty /\ ~ s :\: {v :e R :^: idx N | dot N a v = b} = Empty) -> (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e {v :e R :^: idx N | dot N a v = b}}) = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:6049 / AFF_DIM_AFFINE_INTER_HYPERPLANE   (hash md5:019bc62720b47ba81a0a3a6a727cd548)
// not bridged: 
Theorem AFF_DIM_AFFINE_INTER_HYPERPLANE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, forall s c= R :^: idx N, affine N s -> aff_dim N (s :/\: {x :e R :^: idx N | dot N a x = b}) = if s :/\: {v :e R :^: idx N | dot N a v = b} = Empty then - 1 else if s c= {v :e R :^: idx N | dot N a v = b} then aff_dim N s else aff_dim N s + - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6071 / AFF_DIM_LT_FULL   (hash md5:742aa7f868c98304feff1f46fdf6814e)
// not bridged: 
Theorem AFF_DIM_LT_FULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s < dimindex N <-> ~ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:6076 / AFF_LOWDIM_SUBSET_HYPERPLANE   (hash md5:36e64c2520c1f3a1bc45f31d3db13d99)
// not bridged: 
Theorem AFF_LOWDIM_SUBSET_HYPERPLANE : forall N:set, N <> Empty -> forall s c= R :^: idx N, aff_dim N s < dimindex N -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ s c= {x :e R :^: idx N | dot N a x = b}.
Admitted.

// HOL Light: Multivariate/convex.ml:6094 / COLLINEAR_HYPERPLANE_2   (hash md5:a039f36f75891817bac08c496561bc89)
// not bridged: 
Theorem COLLINEAR_HYPERPLANE_2 : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, dimindex N <= 2 /\ ~ a = vec N 0 -> collinear N {x :e R :^: idx N | dot N a x = b}.
Admitted.

// HOL Light: Multivariate/convex.ml:6100 / COLLINEAR_STANDARD_HYPERPLANE_2   (hash md5:a4f19aa6716d12f5a85b61d345fc3de9)
// not bridged: 
Theorem COLLINEAR_STANDARD_HYPERPLANE_2 : forall N:set, N <> Empty -> forall k :e omega, forall b :e R, dimindex N <= 2 -> collinear N {x :e R :^: idx N | x k = b}.
Admitted.

// HOL Light: Multivariate/convex.ml:6113 / ROTATION_TO_GENERAL_POSITION_EXISTS_GEN   (hash md5:583a14ebf72e7556c963fd68d4f7713a)
// not bridged: 
Theorem ROTATION_TO_GENERAL_POSITION_EXISTS_GEN : forall N:set, N <> Empty -> forall n :e omega, forall s c= R :^: idx N, n <= dimindex N /\ (countable s /\ s c= span N {basis N x | x :e idx_n n}) -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ (det N (matrix N N f) = 1 /\ ((forall x :e R :^: idx N, (forall i :e omega, 1 <= i /\ i <= n -> x i = 0) -> f x = x) /\ ({f x | x :e span N {basis N x | x :e idx_n n}} = span N {basis N x | x :e idx_n n} /\ forall x y :e s, x <> y -> forall i :e omega, 1 <= i /\ i <= n -> ~ f x i = f y i)))).
Admitted.

// HOL Light: Multivariate/convex.ml:6418 / ROTATION_TO_GENERAL_POSITION_EXISTS   (hash md5:f9a9601c053b173b63380ec03a54b846)
// not bridged: 
Theorem ROTATION_TO_GENERAL_POSITION_EXISTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, countable s -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ (det N (matrix N N f) = 1 /\ forall x y :e s, x <> y -> forall i :e omega, 1 <= i /\ i <= dimindex N -> ~ f x i = f y i)).
Admitted.

// HOL Light: Multivariate/convex.ml:6435 / OPEN_CONVEX_HULL   (hash md5:84f48d4145a0b2cae8ea04d73b29bf22)
// not bridged: 
Theorem OPEN_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s -> open N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:6471 / COMPACT_CONVEX_COMBINATIONS   (hash md5:56fc616bfe03135241d209f1a1c342fe)
// not bridged: 
Theorem COMPACT_CONVEX_COMBINATIONS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact N s /\ compact N t -> compact N (\/_ x :e R :^: idx N, \/_ u :e R, {vector_add N (vector_mul N (1 + - u) x) (vector_mul N u y) | y :e R :^: idx N, 0 <= u /\ (u <= 1 /\ (x :e s /\ y :e t))}).
Admitted.

// HOL Light: Multivariate/convex.ml:6504 / COMPACT_CONVEX_HULL   (hash md5:f3407ac72f243135f1f4edfc9bfaf2b0)
// not bridged: 
Theorem COMPACT_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s -> compact N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:6598 / FINITE_IMP_COMPACT_CONVEX_HULL   (hash md5:bdffb5ed7b85822cd507e1b56f94a544)
// not bridged: 
Theorem FINITE_IMP_COMPACT_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> compact N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:6602 / CONVEX_HULL_INTERIOR_SUBSET   (hash md5:8987dbad9a7a461772dc57e803f3c6e9)
// not bridged: 
Theorem CONVEX_HULL_INTERIOR_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (interior N s) c= interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:6611 / SIMPLEX_FURTHEST_LT   (hash md5:d5ee6d77b4f9ed5cf97472baab6fda8a)
// not bridged: 
Theorem SIMPLEX_FURTHEST_LT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ ~ x :e s -> exists y :e R :^: idx N, y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ vector_norm N (vector_sub N x a) < vector_norm N (vector_sub N y a).
Admitted.

// HOL Light: Multivariate/convex.ml:6681 / SIMPLEX_FURTHEST_LT_EXISTS   (hash md5:40d5204740bec5f22fabc98caa384576)
// not bridged: 
Theorem SIMPLEX_FURTHEST_LT_EXISTS : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ ~ x :e s -> exists y :e R :^: idx N, y :e s /\ vector_norm N (vector_sub N x a) < vector_norm N (vector_sub N y a).
Admitted.

// HOL Light: Multivariate/convex.ml:6693 / SIMPLEX_FURTHEST_LE_EXISTS   (hash md5:6bc6eee45c0e3969165e1495563e5529)
// not bridged: 
Theorem SIMPLEX_FURTHEST_LE_EXISTS : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s -> exists y :e R :^: idx N, y :e s /\ vector_norm N (vector_sub N x a) <= vector_norm N (vector_sub N y a).
Admitted.

// HOL Light: Multivariate/convex.ml:6699 / SIMPLEX_FURTHEST_LE   (hash md5:ea2e74ea7c6712157936f785c5216305)
// not bridged: 
Theorem SIMPLEX_FURTHEST_LE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, finite s /\ ~ s = Empty -> exists y :e R :^: idx N, y :e s /\ forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s -> vector_norm N (vector_sub N x a) <= vector_norm N (vector_sub N y a).
Admitted.

// HOL Light: Multivariate/convex.ml:6713 / SIMPLEX_EXTREMAL_LE   (hash md5:41209e192c554b6a70b5d1a01bb212db)
// not bridged: 
Theorem SIMPLEX_EXTREMAL_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ ~ s = Empty -> exists u v :e R :^: idx N, u :e s /\ (v :e s /\ forall x y :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s -> vector_norm N (vector_sub N x y) <= vector_norm N (vector_sub N u v)).
Admitted.

// HOL Light: Multivariate/convex.ml:6728 / SIMPLEX_EXTREMAL_LE_EXISTS   (hash md5:c47b123aff080f26b3cff81ad2d536fa)
// not bridged: 
Theorem SIMPLEX_EXTREMAL_LE_EXISTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, finite s /\ (x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s) -> exists u v :e R :^: idx N, u :e s /\ (v :e s /\ vector_norm N (vector_sub N x y) <= vector_norm N (vector_sub N u v)).
Admitted.

// HOL Light: Multivariate/convex.ml:6738 / CLOSER_POINTS_LEMMA   (hash md5:bcadcd0b5e98d5025a9ef1dcd6c6e656)
// not bridged: 
Theorem CLOSER_POINTS_LEMMA : forall N:set, N <> Empty -> forall y z :e R :^: idx N, 0 < dot N y z -> exists u :e R, 0 < u /\ forall v :e R, 0 < v /\ v <= u -> vector_norm N (vector_sub N (vector_mul N v z) y) < vector_norm N y.
Admitted.

// HOL Light: Multivariate/convex.ml:6754 / CLOSER_POINT_LEMMA   (hash md5:e0a3e3a956c2f3263ffd4e541c506b5b)
// not bridged: 
Theorem CLOSER_POINT_LEMMA : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, 0 < dot A (vector_sub A y x) (vector_sub A z x) -> exists u :e R, 0 < u /\ (u <= 1 /\ distance A (vector_add A x (vector_mul A u (vector_sub A z x)),y) < distance A (x,y)).
Admitted.

// HOL Light: Multivariate/convex.ml:6765 / ANY_CLOSEST_POINT_DOT   (hash md5:21501edd896f4647c74d86db1efb3ab0)
// not bridged: 
Theorem ANY_CLOSEST_POINT_DOT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x y :e R :^: idx N, convex N s /\ (closed N s /\ (x :e s /\ (y :e s /\ (forall z :e R :^: idx N, z :e s -> distance N (a,x) <= distance N (a,z))))) -> dot N (vector_sub N a x) (vector_sub N y x) <= 0.
Admitted.

// HOL Light: Multivariate/convex.ml:6779 / ANY_CLOSEST_POINT_UNIQUE   (hash md5:c13668f3ce1830db6650f5236934b874)
// not bridged: 
Theorem ANY_CLOSEST_POINT_UNIQUE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x y :e R :^: idx N, convex N s /\ (closed N s /\ (x :e s /\ (y :e s /\ ((forall z :e R :^: idx N, z :e s -> distance N (a,x) <= distance N (a,z)) /\ (forall z :e R :^: idx N, z :e s -> distance N (a,y) <= distance N (a,z)))))) -> x = y.
Admitted.

// HOL Light: Multivariate/convex.ml:6791 / CLOSEST_POINT_UNIQUE   (hash md5:7ae5c6b8b45d3860703d64d63fc13650)
// not bridged: 
Theorem CLOSEST_POINT_UNIQUE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x :e R :^: idx N, convex N s /\ (closed N s /\ (x :e s /\ (forall z :e R :^: idx N, z :e s -> distance N (a,x) <= distance N (a,z)))) -> x = closest_point N s a.
Admitted.

// HOL Light: Multivariate/convex.ml:6800 / CLOSEST_POINT_DOT   (hash md5:b7320f8bcedb2dcf08fcfe652b644915)
// not bridged: 
Theorem CLOSEST_POINT_DOT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x :e R :^: idx N, convex N s /\ (closed N s /\ x :e s) -> dot N (vector_sub N a (closest_point N s a)) (vector_sub N x (closest_point N s a)) <= 0.
Admitted.

// HOL Light: Multivariate/convex.ml:6808 / CLOSEST_POINT_LT   (hash md5:d3d47b7aa06069f8c0d7d3186bb1ff07)
// not bridged: 
Theorem CLOSEST_POINT_LT : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a x :e R :^: idx A, convex A s /\ (closed A s /\ (x :e s /\ ~ x = closest_point A s a)) -> distance A (a,closest_point A s a) < distance A (a,x).
Admitted.

// HOL Light: Multivariate/convex.ml:6817 / CLOSEST_POINT_LIPSCHITZ   (hash md5:640f6ef0c58caef5c2da59528f10e74c)
// not bridged: 
Theorem CLOSEST_POINT_LIPSCHITZ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, convex N s /\ (closed N s /\ ~ s = Empty) -> distance N (closest_point N s x,closest_point N s y) <= distance N (x,y).
Admitted.

// HOL Light: Multivariate/convex.ml:6834 / CONTINUOUS_AT_CLOSEST_POINT   (hash md5:b01c182e0e33b17beb822982d5ba4683)
// not bridged: 
Theorem CONTINUOUS_AT_CLOSEST_POINT : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, convex A s /\ (closed A s /\ ~ s = Empty) -> continuous A (R :^: idx A) (closest_point A s) (at_hl A x).
Admitted.

// HOL Light: Multivariate/convex.ml:6840 / CONTINUOUS_ON_CLOSEST_POINT   (hash md5:8f7ea965766f8a22ff8931ac4f370949)
// not bridged: 
Theorem CONTINUOUS_ON_CLOSEST_POINT : forall A:set, A <> Empty -> forall s t c= R :^: idx A, convex A s /\ (closed A s /\ ~ s = Empty) -> continuous_on_hl A A (closest_point A s) t.
Admitted.

// HOL Light: Multivariate/convex.ml:6845 / CLOSEST_POINT_TRANSLATION   (hash md5:6ca5349fbfc5f7f5528657bda8a399a6)
// not bridged: 
Theorem CLOSEST_POINT_TRANSLATION : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= R :^: idx N, forall a :e R :^: idx N, convex N s /\ (closed N s /\ ~ s = Empty) -> closest_point N {vector_add N a x0 | x0 :e s} (vector_add N a x) = vector_add N a (closest_point N s x).
Admitted.

// HOL Light: Multivariate/convex.ml:6865 / ANY_CLOSEST_POINT_AFFINE_ORTHOGONAL   (hash md5:a7481de0559c0c0bb0b4a506c71b0a04)
// not bridged: 
Theorem ANY_CLOSEST_POINT_AFFINE_ORTHOGONAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, affine N s /\ (b :e s /\ (forall x :e R :^: idx N, x :e s -> distance N (a,b) <= distance N (a,x))) -> forall x :e R :^: idx N, x :e s -> orthogonal N (vector_sub N x b) (vector_sub N a b).
Admitted.

// HOL Light: Multivariate/convex.ml:6888 / ORTHOGONAL_ANY_CLOSEST_POINT   (hash md5:4d132d0d765851a806c0a78035557ee2)
// not bridged: 
Theorem ORTHOGONAL_ANY_CLOSEST_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, b :e s /\ (forall x :e R :^: idx N, x :e s -> orthogonal N (vector_sub N x b) (vector_sub N a b)) -> forall x :e R :^: idx N, x :e s -> distance N (a,b) <= distance N (a,x).
Admitted.

// HOL Light: Multivariate/convex.ml:6897 / CLOSEST_POINT_AFFINE_ORTHOGONAL   (hash md5:13210230ff466e99101835bbea6df09e)
// not bridged: 
Theorem CLOSEST_POINT_AFFINE_ORTHOGONAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x :e R :^: idx N, affine N s /\ (~ s = Empty /\ x :e s) -> orthogonal N (vector_sub N x (closest_point N s a)) (vector_sub N a (closest_point N s a)).
Admitted.

// HOL Light: Multivariate/convex.ml:6907 / CLOSEST_POINT_AFFINE_ORTHOGONAL_EQ   (hash md5:0cb645550063627cab90d7352813980c)
// not bridged: 
Theorem CLOSEST_POINT_AFFINE_ORTHOGONAL_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, affine N s /\ b :e s -> (closest_point N s a = b <-> forall x :e R :^: idx N, x :e s -> orthogonal N (vector_sub N x b) (vector_sub N a b)).
Admitted.

// HOL Light: Multivariate/convex.ml:6923 / CLOSEST_POINT_SUBSPACE_ORTHOGONAL_EQ   (hash md5:17edaac2ff5b59f2a7d7f2e463ee099a)
// not bridged: 
Theorem CLOSEST_POINT_SUBSPACE_ORTHOGONAL_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, subspace N s -> (closest_point N s a = b <-> b :e s /\ forall x :e R :^: idx N, x :e s -> orthogonal N (vector_sub N a b) x).
Admitted.

// HOL Light: Multivariate/convex.ml:6939 / CLOSEST_POINT_SUBSPACE_ORTHOGONAL   (hash md5:fd8246140a50cb7affd7d4dc1d14aad6)
// not bridged: 
Theorem CLOSEST_POINT_SUBSPACE_ORTHOGONAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, subspace N s /\ b :e s -> orthogonal N (vector_sub N a (closest_point N s a)) b.
Admitted.

// HOL Light: Multivariate/convex.ml:6944 / LINEAR_CLOSEST_POINT   (hash md5:1d6a48316040e86378afe3222dbfb8cd)
// not bridged: 
Theorem LINEAR_CLOSEST_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s -> linear N N (closest_point N s).
Admitted.

// HOL Light: Multivariate/convex.ml:6957 / SELF_ADJOINT_CLOSEST_POINT   (hash md5:2654c6e9e4877a7bb54af86eae7bafde)
// not bridged: 
Theorem SELF_ADJOINT_CLOSEST_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s -> forall x :e R :^: idx N, adjoint N N (closest_point N s) x = closest_point N s x.
Admitted.

// HOL Light: Multivariate/convex.ml:6971 / CLOSEST_POINT_IDEMPOTENT   (hash md5:a037488380206f644938df7e2e047333)
// not bridged: 
Theorem CLOSEST_POINT_IDEMPOTENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> forall x :e R :^: idx N, closest_point N s (closest_point N s x) = closest_point N s x.
Admitted.

// HOL Light: Multivariate/convex.ml:6979 / MATRIX_INV_PROJECTION_IMAGE   (hash md5:5d275169795e0320440e73285ae2435e)
// not bridged: 
Theorem MATRIX_INV_PROJECTION_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_mul N M N A (matrix_inv M N A) = matrix N N (closest_point N {matrix_vector_mul N M A x0 | x0 :e R :^: idx M}).
Admitted.

// HOL Light: Multivariate/convex.ml:6979 / MATRIX_INV_PROJECTION_IMAGE_ALT   (hash md5:0c3d15ed0c6623ea6494335975c4695a)
// not bridged: 
Theorem MATRIX_INV_PROJECTION_IMAGE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx N, matrix_vector_mul N N (matrix_mul N M N A (matrix_inv M N A)) x = closest_point N {matrix_vector_mul N M A x0 | x0 :e R :^: idx M} x.
Admitted.

// HOL Light: Multivariate/convex.ml:6998 / SEPARATING_HYPERPLANE_AFFINE_AFFINE   (hash md5:2adf8849846e796eee383b89dff53cb9)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_AFFINE_AFFINE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, affine N s /\ (affine N t /\ (~ s = Empty /\ (~ t = Empty /\ s :/\: t = Empty))) -> exists a :e R :^: idx N, exists b c :e R, ~ a = vec N 0 /\ (b < c /\ ((forall x :e R :^: idx N, x :e s -> dot N a x = b) /\ forall x :e R :^: idx N, x :e t -> dot N a x = c)).
Admitted.

// HOL Light: Multivariate/convex.ml:7055 / SEPARATING_HYPERPLANE_AFFINE_HULLS   (hash md5:408513117c7b32b04532253835858c3d)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_AFFINE_HULLS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ s = Empty /\ (~ t = Empty /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t = Empty) -> exists a :e R :^: idx N, exists b c :e R, ~ a = vec N 0 /\ (b < c /\ ((forall x :e R :^: idx N, x :e s -> dot N a x = b) /\ forall x :e R :^: idx N, x :e t -> dot N a x = c)).
Admitted.

// HOL Light: Multivariate/convex.ml:7071 / SUPPORTING_HYPERPLANE_COMPACT_POINT_SUP   (hash md5:2573e4a92e70b04e70ae29009845924c)
// not bridged: 
Theorem SUPPORTING_HYPERPLANE_COMPACT_POINT_SUP : forall N:set, N <> Empty -> forall a c :e R :^: idx N, forall s c= R :^: idx N, compact N s /\ ~ s = Empty -> exists b :e R, exists y :e R :^: idx N, y :e s /\ (dot N a (vector_sub N y c) = b /\ forall x :e R :^: idx N, x :e s -> dot N a (vector_sub N x c) <= b).
Admitted.

// HOL Light: Multivariate/convex.ml:7087 / SUPPORTING_HYPERPLANE_COMPACT_POINT_INF   (hash md5:ebb5f2bfb92806ac6797f20c192890cd)
// not bridged: 
Theorem SUPPORTING_HYPERPLANE_COMPACT_POINT_INF : forall N:set, N <> Empty -> forall a c :e R :^: idx N, forall s c= R :^: idx N, compact N s /\ ~ s = Empty -> exists b :e R, exists y :e R :^: idx N, y :e s /\ (dot N a (vector_sub N y c) = b /\ forall x :e R :^: idx N, x :e s -> b <= dot N a (vector_sub N x c)).
Admitted.

// HOL Light: Multivariate/convex.ml:7101 / SUPPORTING_HYPERPLANE_CLOSED_POINT   (hash md5:0c61de93afd3d1ad295ac6265ae66bee)
// not bridged: 
Theorem SUPPORTING_HYPERPLANE_CLOSED_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall z :e R :^: idx N, convex N s /\ (closed N s /\ (~ s = Empty /\ ~ z :e s)) -> exists a :e R :^: idx N, exists b :e R, exists y :e R :^: idx N, dot N a z < b /\ (y :e s /\ (dot N a y = b /\ forall x :e R :^: idx N, x :e s -> b <= dot N a x)).
Admitted.

// HOL Light: Multivariate/convex.ml:7125 / SEPARATING_HYPERPLANE_CLOSED_POINT_INSET   (hash md5:17c1c3e4bb1dc55b22f2aeea3b7ca151)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_CLOSED_POINT_INSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall z :e R :^: idx N, convex N s /\ (closed N s /\ (~ s = Empty /\ ~ z :e s)) -> exists a :e R :^: idx N, exists b :e R, a :e s /\ (dot N (vector_sub N a z) z < b /\ forall x :e R :^: idx N, x :e s -> b < dot N (vector_sub N a z) x).
Admitted.

// HOL Light: Multivariate/convex.ml:7157 / SEPARATING_HYPERPLANE_CLOSED_0_INSET   (hash md5:f367fb5ca2aa4b911f3097bcb10df006)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_CLOSED_0_INSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ (closed N s /\ (~ s = Empty /\ ~ vec N 0 :e s)) -> exists a :e R :^: idx N, exists b :e R, a :e s /\ (~ a = vec N 0 /\ (0 < b /\ forall x :e R :^: idx N, x :e s -> b < dot N a x)).
Admitted.

// HOL Light: Multivariate/convex.ml:7168 / SEPARATING_HYPERPLANE_CLOSED_POINT   (hash md5:07446405ad1abd2e374e6947a8902cc0)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_CLOSED_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall z :e R :^: idx N, convex N s /\ (closed N s /\ ~ z :e s) -> exists a :e R :^: idx N, exists b :e R, dot N a z < b /\ forall x :e R :^: idx N, x :e s -> b < dot N a x.
Admitted.

// HOL Light: Multivariate/convex.ml:7178 / SEPARATING_HYPERPLANE_CLOSED_0   (hash md5:04ce4a06a36d855712317bfe15525ad5)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_CLOSED_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ (closed N s /\ ~ vec N 0 :e s) -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ (0 < b /\ forall x :e R :^: idx N, x :e s -> b < dot N a x).
Admitted.

// HOL Light: Multivariate/convex.ml:7195 / SEPARATING_HYPERPLANE_CLOSED_COMPACT   (hash md5:9fcd647da12b785f8a20fdf851482c5a)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_CLOSED_COMPACT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (closed N s /\ (convex N t /\ (compact N t /\ (~ t = Empty /\ s :/\: t = Empty)))) -> exists a :e R :^: idx N, exists b :e R, (forall x :e R :^: idx N, x :e s -> dot N a x < b) /\ forall x :e R :^: idx N, x :e t -> b < dot N a x.
Admitted.

// HOL Light: Multivariate/convex.ml:7248 / SEPARATING_HYPERPLANE_COMPACT_CLOSED   (hash md5:0c6c7a9f3c880c79427d2a0e194d234c)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_COMPACT_CLOSED : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (compact N s /\ (~ s = Empty /\ (convex N t /\ (closed N t /\ s :/\: t = Empty)))) -> exists a :e R :^: idx N, exists b :e R, (forall x :e R :^: idx N, x :e s -> dot N a x < b) /\ forall x :e R :^: idx N, x :e t -> b < dot N a x.
Admitted.

// HOL Light: Multivariate/convex.ml:7263 / SEPARATING_HYPERPLANE_COMPACT_CLOSED_NONZERO   (hash md5:24f9f47c432914799b3d2c411aeaf9b7)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_COMPACT_CLOSED_NONZERO : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (compact N s /\ (~ s = Empty /\ (convex N t /\ (closed N t /\ s :/\: t = Empty)))) -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ ((forall x :e R :^: idx N, x :e s -> dot N a x < b) /\ forall x :e R :^: idx N, x :e t -> b < dot N a x).
Admitted.

// HOL Light: Multivariate/convex.ml:7291 / SEPARATING_HYPERPLANE_COMPACT_COMPACT   (hash md5:50f6e1d001a3d31337c76b0ef58f3634)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_COMPACT_COMPACT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (compact N s /\ (convex N t /\ (compact N t /\ s :/\: t = Empty))) -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ ((forall x :e R :^: idx N, x :e s -> dot N a x < b) /\ forall x :e R :^: idx N, x :e t -> b < dot N a x).
Admitted.

// HOL Light: Multivariate/convex.ml:7320 / SEPARATING_HYPERPLANE_SET_0_INSPAN   (hash md5:f79e993851f43374668b8ab31dff4d90)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_SET_0_INSPAN : forall A N:set, A <> Empty -> N <> Empty -> forall s c= R :^: idx N, convex N s /\ (~ s = Empty /\ ~ vec N 0 :e s) -> exists a :e R :^: idx N, exists b :e A, a :e span N s /\ (~ a = vec N 0 /\ forall x :e R :^: idx N, x :e s -> 0 <= dot N a x).
Admitted.

// HOL Light: Multivariate/convex.ml:7381 / SEPARATING_HYPERPLANE_SET_POINT_INAFF   (hash md5:25c00d03ef7ee306cabafd6cdda554a2)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_SET_POINT_INAFF : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall z :e R :^: idx N, convex N s /\ (~ s = Empty /\ ~ z :e s) -> exists a :e R :^: idx N, exists b :e R, vector_add N z a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (SetAdjoin s z) /\ (~ a = vec N 0 /\ (dot N a z <= b /\ forall x :e R :^: idx N, x :e s -> b <= dot N a x)).
Admitted.

// HOL Light: Multivariate/convex.ml:7399 / SEPARATING_HYPERPLANE_SET_0   (hash md5:2a5329e86e5ed6d9dbc811e758f4cb2c)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_SET_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ ~ vec N 0 :e s -> exists a :e R :^: idx N, ~ a = vec N 0 /\ forall x :e R :^: idx N, x :e s -> 0 <= dot N a x.
Admitted.

// HOL Light: Multivariate/convex.ml:7408 / SEPARATING_HYPERPLANE_SETS   (hash md5:7fb4eb1c3ba2603945bd0a83fa8a4421)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_SETS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (convex N t /\ (~ s = Empty /\ (~ t = Empty /\ s :/\: t = Empty))) -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ ((forall x :e R :^: idx N, x :e s -> dot N a x <= b) /\ forall x :e R :^: idx N, x :e t -> b <= dot N a x).
Admitted.

// HOL Light: Multivariate/convex.ml:7438 / UNBOUNDED_COMPLEMENT_COMPONENT_CONVEX   (hash md5:d948381bcb3606b0a03175d4cdf41e8c)
// not bridged: 
Theorem UNBOUNDED_COMPLEMENT_COMPONENT_CONVEX : forall N:set, N <> Empty -> forall s c c= R :^: idx N, convex N s /\ c :e components N ((R :^: idx N) :\: s) -> ~ bounded_hl N c.
Admitted.

// HOL Light: Multivariate/convex.ml:7466 / UNBOUNDED_COMPLEMENT_CONVEX   (hash md5:d59cd58ee08dd79517e0e1007dc18c6e)
// not bridged: 
Theorem UNBOUNDED_COMPLEMENT_CONVEX : forall N:set, N <> Empty -> forall c c= R :^: idx N, convex N c /\ ~ c = R :^: idx N -> ~ bounded_hl N ((R :^: idx N) :\: c).
Admitted.

// HOL Light: Multivariate/convex.ml:7477 / COMPONENTS_CONVEX_COMPLEMENT_CONTAINS_HALFSPACE   (hash md5:d5e859eacf8ea23a25901096d73d3273)
// not bridged: 
Theorem COMPONENTS_CONVEX_COMPLEMENT_CONTAINS_HALFSPACE : forall N:set, N <> Empty -> forall s c c= R :^: idx N, convex N s /\ c :e components N ((R :^: idx N) :\: s) -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ {x :e R :^: idx N | dot N a x <= b} c= c.
Admitted.

// HOL Light: Multivariate/convex.ml:7508 / CARD_COMPONENTS_COMPLEMENT_CONVEX   (hash md5:32ca3cd0006e579be8d9f8fec6a87b2c)
// not bridged: 
Theorem CARD_COMPONENTS_COMPLEMENT_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> finite_cardinality (components N ((R :^: idx N) :\: s)) <= 2.
Admitted.

// HOL Light: Multivariate/convex.ml:7508 / FINITE_COMPONENTS_COMPLEMENT_CONVEX   (hash md5:7ffdd68d5e2904fd120ace4302eca360)
// not bridged: 
Theorem FINITE_COMPONENTS_COMPLEMENT_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> finite (components N ((R :^: idx N) :\: s)).
Admitted.

// HOL Light: Multivariate/convex.ml:7585 / CONVEX_CLOSURE   (hash md5:a9dc295043df7d2aac0b1be3123d8bd8)
// not bridged: 
Theorem CONVEX_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> convex N (closure N s).
Admitted.

// HOL Light: Multivariate/convex.ml:7595 / CONVEX_INTERIOR   (hash md5:af8a1d69f1b858943f176905855ea87b)
// not bridged: 
Theorem CONVEX_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> convex N (interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:7611 / CONVEX_HULL_CLOSURE_SUBSET   (hash md5:86d2b05c2d31c4bc3942962bbb4b9efd)
// not bridged: 
Theorem CONVEX_HULL_CLOSURE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (closure N s) c= closure N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:7616 / CONVEX_HULL_CLOSURE   (hash md5:375a9442ced9e26d48e0acdbbb7e9be6)
// not bridged: 
Theorem CONVEX_HULL_CLOSURE : forall A:set, A <> Empty -> forall s c= R :^: idx A, bounded_hl A s -> hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} (closure A s) = closure A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:7624 / SUPPORTING_HYPERPLANE_POINT   (hash md5:112f7f459c7bf6ed5a68818ec4d9ca94)
// not bridged: 
Theorem SUPPORTING_HYPERPLANE_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall z :e R :^: idx N, convex N s /\ (~ s = Empty /\ ~ z :e s) -> exists a :e R :^: idx N, exists b :e R, exists y :e R :^: idx N, ~ a = vec N 0 /\ (dot N a z <= b /\ (y :e closure N s /\ (dot N a y = b /\ forall x :e R :^: idx N, x :e closure N s -> b <= dot N a x))).
Admitted.

// HOL Light: Multivariate/convex.ml:7653 / CONVEX_ON_SETDIST   (hash md5:e37e1338b954c002f58d2e7c064c9c97)
// not bridged: 
Theorem CONVEX_ON_SETDIST : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N t -> convex_on N (fun x:set => setdist N ({x},t)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:7688 / CONVEX_HULL_TRANSLATION   (hash md5:6476ff062c432deb2c1051801159463f)
// not bridged: 
Theorem CONVEX_HULL_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {vector_add N a x | x :e s} = {vector_add N a x | x :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:7698 / CONVEX_HULL_SCALING   (hash md5:1e72ae13bf393160b9f6a0cf762e2211)
// not bridged: 
Theorem CONVEX_HULL_SCALING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {vector_mul N c x | x :e s} = {vector_mul N c x | x :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:7712 / CONVEX_HULL_AFFINITY   (hash md5:a20968e379d883e573450c23d6fc7712)
// not bridged: 
Theorem CONVEX_HULL_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall c :e R, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {vector_add N (vector_mul N c x) a | x :e s} = {vector_add N (vector_mul N c x) a | x :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:7724 / CONVEX_HALFSPACE_INTERSECTION   (hash md5:ae9fc564c29279ef796dfd8c02d3bcbc)
// not bridged: 
Theorem CONVEX_HALFSPACE_INTERSECTION : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s /\ convex N s -> s = {x :e R :^: idx N | forall Y :e {h :e Power (R :^: idx N) | s c= h /\ exists a :e R :^: idx N, exists b :e R, h = {x :e R :^: idx N | dot N a x <= b}}, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:7747 / polar_dual   (hash md5:d52f4fe5cc7f4a913e800007bf32bed7)
// not bridged: 
Theorem polar_dual_thm : forall N:set, N <> Empty -> forall s c= R :^: idx N, polar_dual N s = {x :e R :^: idx N | forall u :e R :^: idx N, u :e s -> - 1 <= dot N u x}.
Admitted.

// HOL Light: Multivariate/convex.ml:7750 / POLAR_DUAL   (hash md5:e78c439cd2d2a6fdc6583ae3984fe574)
// not bridged: 
Theorem POLAR_DUAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, polar_dual N s = {x :e R :^: idx N | forall Y :e {{x :e R :^: idx N | - 1 <= dot N u x} | u :e R :^: idx N, u :e s}, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:7755 / CLOSED_POLAR_DUAL   (hash md5:d87b60fb5b956d2639df5c80b5138944)
// not bridged: 
Theorem CLOSED_POLAR_DUAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N (polar_dual N s).
Admitted.

// HOL Light: Multivariate/convex.ml:7761 / CONVEX_POLAR_DUAL   (hash md5:c33184db6ac1f3f92889f9a50e8a6403)
// not bridged: 
Theorem CONVEX_POLAR_DUAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N (polar_dual N s).
Admitted.

// HOL Light: Multivariate/convex.ml:7767 / POLAR_DUAL_0   (hash md5:3f89a1809432dcf8623919e4a896fc6b)
// not bridged: 
Theorem POLAR_DUAL_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e polar_dual N s.
Admitted.

// HOL Light: Multivariate/convex.ml:7772 / POLAR_DUAL_EMPTY   (hash md5:e4495858371133b649bd1da39132318d)
// not bridged: 
Theorem POLAR_DUAL_EMPTY : forall N:set, N <> Empty -> polar_dual N Empty = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:7776 / POLAR_DUAL_SING   (hash md5:002dc2c046bcc56341ee45701ba3f4c7)
// not bridged: 
Theorem POLAR_DUAL_SING : forall N:set, N <> Empty -> polar_dual N {vec N 0} = R :^: idx N.
Admitted.

// HOL Light: Multivariate/convex.ml:7781 / POLAR_DUAL_UNIV   (hash md5:144c9efcae8565a1219ab1266e18e33a)
// not bridged: 
Theorem POLAR_DUAL_UNIV : forall N:set, N <> Empty -> polar_dual N (R :^: idx N) = {vec N 0}.
Admitted.

// HOL Light: Multivariate/convex.ml:7791 / POLAR_DUAL_ANTIMONO   (hash md5:beb29ad475cab910c81ca28c7b9cbf62)
// not bridged: 
Theorem POLAR_DUAL_ANTIMONO : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t -> polar_dual N t c= polar_dual N s.
Admitted.

// HOL Light: Multivariate/convex.ml:7796 / POLAR_DUAL_UNION   (hash md5:3e8d6acd993207ed22f678658764cd0f)
// not bridged: 
Theorem POLAR_DUAL_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, polar_dual N (s :\/: t) = polar_dual N s :/\: polar_dual N t.
Admitted.

// HOL Light: Multivariate/convex.ml:7800 / POLAR_DUAL_SCALING   (hash md5:cd85343b470bb38c6aaebaa05b8c2c7d)
// not bridged: 
Theorem POLAR_DUAL_SCALING : forall N:set, N <> Empty -> forall a :e R, forall s c= R :^: idx N, ~ a = 0 -> polar_dual N {vector_mul N a x | x :e R :^: idx N, x :e s} = {vector_mul N (recip_SNo a) x | x :e R :^: idx N, x :e polar_dual N s}.
Admitted.

// HOL Light: Multivariate/convex.ml:7812 / POLAR_DUAL_UNIT_CBALL   (hash md5:b38b7a4c0ee5a4bc87fb13712b8f931d)
// not bridged: 
Theorem POLAR_DUAL_UNIT_CBALL : forall N:set, N <> Empty -> polar_dual N (cball N (vec N 0,1)) = cball N (vec N 0,1).
Admitted.

// HOL Light: Multivariate/convex.ml:7837 / POLAR_DUAL_CBALL   (hash md5:fdabcd47ccc29892008c39752f7413cf)
// not bridged: 
Theorem POLAR_DUAL_CBALL : forall N:set, N <> Empty -> forall r :e R, 0 < r -> polar_dual N (cball N (vec N 0,r)) = cball N (vec N 0,recip_SNo r).
Admitted.

// HOL Light: Multivariate/convex.ml:7847 / POLAR_DUAL_POLAR_DUAL_GEN   (hash md5:af3ec696db998c5c7fc1b40ba4a6de7b)
// not bridged: 
Theorem POLAR_DUAL_POLAR_DUAL_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, polar_dual N (polar_dual N s) = closure N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s (vec N 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:7879 / POLAR_DUAL_POLAR_DUAL_EQ   (hash md5:eb287e4012c0cb4a967149bdc90f3adf)
// not bridged: 
Theorem POLAR_DUAL_POLAR_DUAL_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, polar_dual N (polar_dual N s) = s <-> closed N s /\ (convex N s /\ vec N 0 :e s).
Admitted.

// HOL Light: Multivariate/convex.ml:7900 / POLAR_DUAL_POLAR_DUAL   (hash md5:dfb75760c78fdb4b7274a2a1986a934b)
// not bridged: 
Theorem POLAR_DUAL_POLAR_DUAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s /\ (convex N s /\ vec N 0 :e s) -> polar_dual N (polar_dual N s) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:7910 / RADON_EX_LEMMA   (hash md5:769251e34139adf39af6eecfeee7d482)
// not bridged: 
Theorem RADON_EX_LEMMA : forall N:set, N <> Empty -> forall c c= R :^: idx N, finite c /\ affine_dependent N c -> exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finsum c u = 0 /\ ((exists v :e R :^: idx N, v :e c /\ ~ u v = 0) /\ vsum (R :^: idx N) N c (fun v:set => vector_mul N (u v) v) = vec N 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:7925 / RADON_S_LEMMA   (hash md5:076d30d2032a8275b659aeed7aad2c1f)
Theorem hlt_RADON_S_LEMMA : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, hl_FINITE A s = 1 /\ hl_sum A s f = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_sum A (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_real_neg (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x s = 1 /\ hl_real_lt (f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) f).
Admitted.
Theorem RADON_S_LEMMA_bridge : (forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, hl_FINITE A s = 1 /\ hl_sum A s f = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_sum A (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_real_neg (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x s = 1 /\ hl_real_lt (f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) f)) -> (forall A:set, A <> Empty -> forall s c= A, forall f:set -> set, (forall x :e A, f x :e R) -> finite s /\ finsum s f = 0 -> finsum {x :e A | x :e s /\ 0 < f x} f = - finsum {x :e A | x :e s /\ f x < 0} f).
exact (fun H__top A HAne => ((imp_forall_sub (A) (fun s => forall f :e R :^: A, hl_FINITE A s = 1 /\ hl_sum A s f = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_sum A (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_real_neg (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x s = 1 /\ hl_real_lt (f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) f)) (fun s => forall f:set -> set, (forall x :e A, f x :e R) -> finite s /\ finsum s f = 0 -> finsum {x :e A | x :e s /\ 0 < f x} f = - finsum {x :e A | x :e s /\ f x < 0} f) (fun s Hss => (imp_forall_fun (A) (R) (fun f => hl_FINITE A (hl_chi A s) = 1 /\ hl_sum A (hl_chi A s) f = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_sum A (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_real_neg (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) f)) (fun f => finite s /\ finsum s f = 0 -> finsum {x :e A | x :e s /\ 0 < f x} f = - finsum {x :e A | x :e s /\ f x < 0} f) (fun f Hfc => (fun H__L : ((hl_FINITE A (hl_chi A s) = 1 /\ hl_sum A (hl_chi A s) (hl_lam A f) = hl_real_of_num (hl_NUMERAL hl_zero)) -> (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_lam A f) = hl_real_neg (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_lam A f)))) => fun H__hyp2 : (finite s /\ finsum s f = 0) => (imp_eq (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_lam A f)) (finsum {x :e A | x :e s /\ 0 < f x} f) (hl_real_neg (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_lam A f))) (- finsum {x :e A | x :e s /\ f x < 0} f) ((eq_trans_i (hl_rep (A) (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) x = 1 then 1 else 0))) ({v :e A | exists x :e A, (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) = 1 /\ v = x}) ({x :e A | x :e s /\ 0 < f x}) (hl_gspec_generic (A) (A) (fun x => if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) (fun x => x) (fun x Hx => (If_in_2 (hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1)))) (eq_trans_i ({v :e A | exists x :e A, (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) = 1 /\ v = x}) ({x :e A | (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) = 1}) ({x :e A | x :e s /\ 0 < f x}) (gspec_sep_form (A) (fun x => if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0)) (Sep_ext_iff (A) (fun x => (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) = 1) (fun x => x :e s /\ 0 < f x) (fun x Hx => (iff_trans ((if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) = 1) (hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1) (x :e s /\ 0 < f x) (If_1_iff (hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1)) (iffI (hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1) (x :e s /\ 0 < f x) (imp_and_dep (hl_IN A x (hl_chi A s) = 1) (x :e s) (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1) (0 < f x) (iffEL (hl_IN A x (hl_chi A s) = 1) (x :e s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_IN A x (hl_chi A s) = 1 <-> x :e hl__u) ((hl_IN_compat) (A) HAne (x) Hx (hl_chi A s) (hl_chi_Pi (A) s)))) (fun H__and6 : (x :e s) => (iffEL (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1) (0 < f x) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 <-> 0 < hl__u) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 <-> hl__u < hl_lam A f x) ((hl_real_lt_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (hl_lam A f x) (setexp_ap (A) (R) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (x) Hx))))))) (imp_and_dep_bwd (hl_IN A x (hl_chi A s) = 1) (x :e s) (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1) (0 < f x) (iffER (hl_IN A x (hl_chi A s) = 1) (x :e s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_IN A x (hl_chi A s) = 1 <-> x :e hl__u) ((hl_IN_compat) (A) HAne (x) Hx (hl_chi A s) (hl_chi_Pi (A) s)))) (fun H__and5 : (x :e s) => (iffER (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1) (0 < f x) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 <-> 0 < hl__u) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 <-> hl__u < hl_lam A f x) ((hl_real_lt_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (hl_lam A f x) (setexp_ap (A) (R) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (x) Hx))))))))))))) (fun hl__u hl__v => hl_sum A (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_lam A f) = finsum hl__u f) ((hl_sum_compat) (A) HAne (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) x = 1 then 1 else 0)) (setexp_ap (2 :^: A) (2 :^: A) (hl_GSPEC A) ((hl_GSPEC_in) (A) HAne) (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun GEN_PVAR_4893 => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) x = 1 then 1 else 0) (fun GEN_PVAR_4893 HGEN_PVAR_4893 => (If_in_2 (exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam A f x) = 1 then 1 else 0) x = 1))))) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)))) (((eq_trans_i (hl_rep (A) (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0))) ({v :e A | exists x :e A, (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) = 1 /\ v = x}) ({x :e A | x :e s /\ f x < 0}) (hl_gspec_generic (A) (A) (fun x => if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) (fun x => x) (fun x Hx => (If_in_2 (hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1)))) (eq_trans_i ({v :e A | exists x :e A, (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) = 1 /\ v = x}) ({x :e A | (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) = 1}) ({x :e A | x :e s /\ f x < 0}) (gspec_sep_form (A) (fun x => if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0)) (Sep_ext_iff (A) (fun x => (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) = 1) (fun x => x :e s /\ f x < 0) (fun x Hx => (iff_trans ((if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) = 1) (hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (x :e s /\ f x < 0) (If_1_iff (hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1)) (iffI (hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (x :e s /\ f x < 0) (imp_and_dep (hl_IN A x (hl_chi A s) = 1) (x :e s) (hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (f x < 0) (iffEL (hl_IN A x (hl_chi A s) = 1) (x :e s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_IN A x (hl_chi A s) = 1 <-> x :e hl__u) ((hl_IN_compat) (A) HAne (x) Hx (hl_chi A s) (hl_chi_Pi (A) s)))) (fun H__and10 : (x :e s) => (iffEL (hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (f x < 0) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl__u < 0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_lam A f x < hl__u) ((hl_real_lt_compat) (hl_lam A f x) (setexp_ap (A) (R) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (x) Hx) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))))))) (imp_and_dep_bwd (hl_IN A x (hl_chi A s) = 1) (x :e s) (hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (f x < 0) (iffER (hl_IN A x (hl_chi A s) = 1) (x :e s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_IN A x (hl_chi A s) = 1 <-> x :e hl__u) ((hl_IN_compat) (A) HAne (x) Hx (hl_chi A s) (hl_chi_Pi (A) s)))) (fun H__and9 : (x :e s) => (iffER (hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (f x < 0) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl__u < 0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_lam A f x < hl__u) ((hl_real_lt_compat) (hl_lam A f x) (setexp_ap (A) (R) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (x) Hx) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))))))))))))) (fun hl__u hl__v => hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_lam A f) = finsum hl__u f) ((hl_sum_compat) (A) HAne (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) (setexp_ap (2 :^: A) (2 :^: A) (hl_GSPEC A) ((hl_GSPEC_in) (A) HAne) (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun GEN_PVAR_4894 => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0) (fun GEN_PVAR_4894 HGEN_PVAR_4894 => (If_in_2 (exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1))))) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)))) (fun hl__u hl__v => hl_real_neg (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_lam A f)) = - hl__u) ((hl_real_neg_compat) (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_lam A f)) (setexp_ap (R :^: A) (R) (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0))) (setexp_ap (2 :^: A) (R :^: (R :^: A)) (hl_sum A) ((hl_sum_in) (A) HAne) (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) (setexp_ap (2 :^: A) (2 :^: A) (hl_GSPEC A) ((hl_GSPEC_in) (A) HAne) (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun GEN_PVAR_4894 => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0) (fun GEN_PVAR_4894 HGEN_PVAR_4894 => (If_in_2 (exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x (hl_chi A s) = 1 /\ hl_real_lt (hl_lam A f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1)))))) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc))))) (H__L ((imp_and_dep_bwd (hl_FINITE A (hl_chi A s) = 1) (finite s) (hl_sum A (hl_chi A s) (hl_lam A f) = hl_real_of_num (hl_NUMERAL hl_zero)) (finsum s f = 0) (iffER (hl_FINITE A (hl_chi A s) = 1) (finite s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_FINITE A (hl_chi A s) = 1 <-> finite hl__u) ((hl_FINITE_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s)))) (fun H__and3 : (finite s) => (imp_eq (finsum s f) (hl_sum A (hl_chi A s) (hl_lam A f)) (0) (hl_real_of_num (hl_NUMERAL hl_zero)) (eq_sym_i (hl_sum A (hl_chi A s) (hl_lam A f)) (finsum s f) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_sum A (hl_chi A s) (hl_lam A f) = finsum hl__u f) ((hl_sum_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f))))) (eq_sym_i (hl_real_of_num (hl_NUMERAL hl_zero)) (0) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))))))) H__hyp2))))))) (H__top A HAne))).
Qed.
Theorem RADON_S_LEMMA : forall A:set, A <> Empty -> forall s c= A, forall f:set -> set, (forall x :e A, f x :e R) -> finite s /\ finsum s f = 0 -> finsum {x :e A | x :e s /\ 0 < f x} f = - finsum {x :e A | x :e s /\ f x < 0} f.
exact (RADON_S_LEMMA_bridge hlt_RADON_S_LEMMA).
Admitted.

// HOL Light: Multivariate/convex.ml:7954 / RADON_V_LEMMA   (hash md5:f6e8c49abef1e887eb2d23025da6aff0)
// not bridged: 
Theorem RADON_V_LEMMA : forall A N:set, A <> Empty -> N <> Empty -> forall s c= A, forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e A, g x :e R) -> finite s /\ (vsum A N s f = vec N 0 /\ (forall x :e A, g x = 0 -> f x = vec N 0)) -> vsum A N {x :e A | x :e s /\ 0 < g x} f = vector_neg N (vsum A N {x :e A | x :e s /\ g x < 0} f).
Admitted.

// HOL Light: Multivariate/convex.ml:7983 / RADON_PARTITION   (hash md5:bea325ea678848929793cc23296584a8)
// not bridged: 
Theorem RADON_PARTITION : forall N:set, N <> Empty -> forall c c= R :^: idx N, finite c /\ affine_dependent N c -> exists m p c= R :^: idx N, m :/\: p = Empty /\ (m :\/: p = c /\ ~ hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} m :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} p = Empty).
Admitted.

// HOL Light: Multivariate/convex.ml:8092 / RADON   (hash md5:2178eed6c674edf1e9785cfad8969c48)
// not bridged: 
Theorem RADON : forall N:set, N <> Empty -> forall c c= R :^: idx N, affine_dependent N c -> exists m p c= R :^: idx N, m c= c /\ (p c= c /\ (m :/\: p = Empty /\ ~ hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} m :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} p = Empty)).
Admitted.

// HOL Light: Multivariate/convex.ml:8116 / HELLY_INDUCT   (hash md5:2915773b99907369be56b764c4736148)
// not bridged: 
Theorem HELLY_INDUCT : forall N:set, N <> Empty -> forall n :e omega, forall f c= Power (R :^: idx N), equip f n /\ (dimindex N + 1 <= n /\ ((forall s c= R :^: idx N, s :e f -> convex N s) /\ (forall t c= Power (R :^: idx N), t c= f /\ finite_cardinality t = dimindex N + 1 -> ~ {x :e R :^: idx N | forall Y :e t, x :e Y} = Empty))) -> ~ {x :e R :^: idx N | forall Y :e f, x :e Y} = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:8192 / HELLY   (hash md5:f8a3cc4d476bd2999398de3bf5d7cca5)
// not bridged: 
Theorem HELLY : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), finite f /\ (dimindex N + 1 <= finite_cardinality f /\ ((forall s c= R :^: idx N, s :e f -> convex N s) /\ (forall t c= Power (R :^: idx N), t c= f /\ finite_cardinality t = dimindex N + 1 -> ~ {x :e R :^: idx N | forall Y :e t, x :e Y} = Empty))) -> ~ {x :e R :^: idx N | forall Y :e f, x :e Y} = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:8201 / HELLY_ALT   (hash md5:dc7cf6b10ec48cca56e61097ceddf672)
// not bridged: 
Theorem HELLY_ALT : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), finite f /\ ((forall s c= R :^: idx N, s :e f -> convex N s) /\ (forall t c= Power (R :^: idx N), t c= f /\ finite_cardinality t <= dimindex N + 1 -> ~ {x :e R :^: idx N | forall Y :e t, x :e Y} = Empty)) -> ~ {x :e R :^: idx N | forall Y :e f, x :e Y} = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:8212 / HELLY_CLOSED_ALT   (hash md5:70da2dcbf8634e706520f1771ccd9cdd)
// not bridged: 
Theorem HELLY_CLOSED_ALT : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (forall s c= R :^: idx N, s :e f -> convex N s /\ closed N s) /\ ((exists s c= R :^: idx N, s :e f /\ bounded_hl N s) /\ (forall t c= Power (R :^: idx N), t c= f /\ (finite t /\ finite_cardinality t <= dimindex N + 1) -> ~ {x :e R :^: idx N | forall Y :e t, x :e Y} = Empty)) -> ~ {x :e R :^: idx N | forall Y :e f, x :e Y} = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:8226 / HELLY_COMPACT_ALT   (hash md5:e849f79ad89b37510c2eee360341df38)
// not bridged: 
Theorem HELLY_COMPACT_ALT : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (forall s c= R :^: idx N, s :e f -> convex N s /\ compact N s) /\ (forall t c= Power (R :^: idx N), t c= f /\ (finite t /\ finite_cardinality t <= dimindex N + 1) -> ~ {x :e R :^: idx N | forall Y :e t, x :e Y} = Empty) -> ~ {x :e R :^: idx N | forall Y :e f, x :e Y} = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:8239 / HELLY_CLOSED   (hash md5:d88d92381d78387191044d1c897b058e)
// not bridged: 
Theorem HELLY_CLOSED : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (finite f -> dimindex N + 1 <= finite_cardinality f) /\ ((forall s c= R :^: idx N, s :e f -> convex N s /\ closed N s) /\ ((exists s c= R :^: idx N, s :e f /\ bounded_hl N s) /\ (forall t c= Power (R :^: idx N), t c= f /\ (finite t /\ finite_cardinality t = dimindex N + 1) -> ~ {x :e R :^: idx N | forall Y :e t, x :e Y} = Empty))) -> ~ {x :e R :^: idx N | forall Y :e f, x :e Y} = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:8259 / HELLY_COMPACT   (hash md5:a3c9d798358dfc435c51e433aba50547)
// not bridged: 
Theorem HELLY_COMPACT : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (finite f -> dimindex N + 1 <= finite_cardinality f) /\ ((forall s c= R :^: idx N, s :e f -> convex N s /\ compact N s) /\ (forall t c= Power (R :^: idx N), t c= f /\ (finite t /\ finite_cardinality t = dimindex N + 1) -> ~ {x :e R :^: idx N | forall Y :e t, x :e Y} = Empty)) -> ~ {x :e R :^: idx N | forall Y :e f, x :e Y} = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:8277 / KIRCHBERGER   (hash md5:a9cb1aa5779c0f9d8a1753005e48c629)
// not bridged: 
Theorem KIRCHBERGER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact N s /\ (compact N t /\ (forall s' t' c= R :^: idx N, s' c= s /\ (t' c= t /\ (finite s' /\ (finite t' /\ finite_cardinality s' + finite_cardinality t' <= dimindex N + 2))) -> exists a :e R :^: idx N, exists b :e R, (forall x :e R :^: idx N, x :e s' -> dot N a x < b) /\ forall x :e R :^: idx N, x :e t' -> b < dot N a x)) -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ ((forall x :e R :^: idx N, x :e s -> dot N a x < b) /\ forall x :e R :^: idx N, x :e t -> b < dot N a x).
Admitted.

// HOL Light: Multivariate/convex.ml:8387 / CONVEX_HULL_LINEAR_IMAGE   (hash md5:fc2948eb9698d283d35f7d2b014e37d3)
// not bridged: 
Theorem CONVEX_HULL_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f -> hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} {f x | x :e s} = {f x | x :e hull (R :^: idx B) {x :e Power (R :^: idx B) | convex B x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:8404 / IN_CONVEX_HULL_LINEAR_IMAGE   (hash md5:5a5b394ad3f5249c6854031a5683fdcf)
// not bridged: 
Theorem IN_CONVEX_HULL_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall x :e R :^: idx M, linear M N f /\ x :e hull (R :^: idx M) {x0 :e Power (R :^: idx M) | convex M x0} s -> f x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:8409 / CONIC_CONVEX_HULL   (hash md5:6272ff73c99951767ff51521b763a375)
// not bridged: 
Theorem CONIC_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s -> conic N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:8414 / CONIC_HULL_CONVEX_HULL   (hash md5:2a74e754937eacd8fe81bf5876e97caf)
// not bridged: 
Theorem CONIC_HULL_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:8425 / IS_INTERVAL_CONVEX   (hash md5:9ffb86964565cfa43759ada68a8baaf6)
// not bridged: 
Theorem IS_INTERVAL_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, is_interval N s -> convex N s.
Admitted.

// HOL Light: Multivariate/convex.ml:8442 / IS_INTERVAL_CONNECTED   (hash md5:9c8ebf5cf8f77bbe1445282414b8cfbc)
// not bridged: 
Theorem IS_INTERVAL_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, is_interval N s -> connected N s.
Admitted.

// HOL Light: Multivariate/convex.ml:8446 / IS_INTERVAL_CONNECTED_1   (hash md5:e586fe79353093d729bda722ff00f64d)
// not bridged: 
Theorem IS_INTERVAL_CONNECTED_1 : forall s c= R :^: idx 1, is_interval 1 s <-> connected 1 s.
Admitted.

// HOL Light: Multivariate/convex.ml:8465 / CONVEX_INTERVAL   (hash md5:7ff805370441c1da101428b4e2588afd)
// not bridged: 
Theorem CONVEX_INTERVAL : forall N:set, N <> Empty -> forall a b :e R :^: idx N, convex N (closed_interval N (seq_cons (a,b) seq_nil)) /\ convex N (open_interval N (a,b)).
Admitted.

// HOL Light: Multivariate/convex.ml:8469 / CONNECTED_INTERVAL   (hash md5:ce747a3e06df48cd3a70022b475fb0d8)
// not bridged: 
Theorem CONNECTED_INTERVAL : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, connected N (closed_interval N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, connected N (open_interval N (a,b)).
Admitted.

// HOL Light: Multivariate/convex.ml:8474 / LIMIT_POINT_OF_INTERVAL   (hash md5:001ecb897c86e6d843e8516a5f457587)
// not bridged: 
Theorem LIMIT_POINT_OF_INTERVAL : forall N:set, N <> Empty -> (forall a b x :e R :^: idx N, limit_point_of N x (closed_interval N (seq_cons (a,b) seq_nil)) <-> ~ a = b /\ x :e closed_interval N (seq_cons (a,b) seq_nil)) /\ forall a b x :e R :^: idx N, limit_point_of N x (open_interval N (a,b)) <-> ~ open_interval N (a,b) = Empty /\ x :e closed_interval N (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:8491 / CONVEX_CONNECTED_COLLINEAR   (hash md5:0ce226fc52a0da7423517be1b08c68e3)
// not bridged: 
Theorem CONVEX_CONNECTED_COLLINEAR : forall N:set, N <> Empty -> forall s c= R :^: idx N, collinear N s -> (convex N s <-> connected N s).
Admitted.

// HOL Light: Multivariate/convex.ml:8560 / CONVEX_EQ_CONVEX_LINE_INTERSECTION   (hash md5:2ee58eabcff2000014b7a63390a35a71)
// not bridged: 
Theorem CONVEX_EQ_CONVEX_LINE_INTERSECTION : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s <-> forall a b :e R :^: idx N, convex N (s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b}).
Admitted.

// HOL Light: Multivariate/convex.ml:8570 / CONVEX_EQ_CONNECTED_LINE_INTERSECTION   (hash md5:3d1b17139011e93ae2c78418a119f425)
// not bridged: 
Theorem CONVEX_EQ_CONNECTED_LINE_INTERSECTION : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s <-> forall a b :e R :^: idx N, connected N (s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b}).
Admitted.

// HOL Light: Multivariate/convex.ml:8585 / IS_INTERVAL_CONVEX_1   (hash md5:c0286fed03ac68090da23349717dc4dc)
// not bridged: 
Theorem IS_INTERVAL_CONVEX_1 : forall s c= R :^: idx 1, is_interval 1 s <-> convex 1 s.
Admitted.

// HOL Light: Multivariate/convex.ml:8589 / CONVEX_CONNECTED_1   (hash md5:c85f907c35d0d1f4023f4883c7c91598)
// not bridged: 
Theorem CONVEX_CONNECTED_1 : forall s c= R :^: idx 1, convex 1 s <-> connected 1 s.
Admitted.

// HOL Light: Multivariate/convex.ml:8593 / CONNECTED_CONVEX_1   (hash md5:2b90c3c26e7366b242d33ca244f92813)
// not bridged: 
Theorem CONNECTED_CONVEX_1 : forall s c= R :^: idx 1, connected 1 s <-> convex 1 s.
Admitted.

// HOL Light: Multivariate/convex.ml:8597 / CONNECTED_COMPACT_INTERVAL_1   (hash md5:564db39fa22c699368fddf4497419728)
// not bridged: 
Theorem CONNECTED_COMPACT_INTERVAL_1 : forall s c= R :^: idx 1, connected 1 s /\ compact 1 s <-> exists a b :e R :^: idx 1, s = closed_interval 1 (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:8601 / CONVEX_CONNECTED_1_GEN   (hash md5:e37772c4226b598ecb039158228fc37d)
// not bridged: 
Theorem CONVEX_CONNECTED_1_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, dimindex N = 1 -> (convex N s <-> connected N s).
Admitted.

// HOL Light: Multivariate/convex.ml:8608 / CONNECTED_CONVEX_1_GEN   (hash md5:519bf0a982d1e1a8adac9969793a082e)
// not bridged: 
Theorem CONNECTED_CONVEX_1_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, dimindex N = 1 -> (connected N s <-> convex N s).
Admitted.

// HOL Light: Multivariate/convex.ml:8613 / COMPACT_CONVEX_COLLINEAR_SEGMENT_ALT   (hash md5:50afcb4402353ef3e3914dadf6058a86)
// not bridged: 
Theorem COMPACT_CONVEX_COLLINEAR_SEGMENT_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ s = Empty /\ (compact N s /\ (connected N s /\ collinear N s)) -> exists a b :e R :^: idx N, s = closed_segment N (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:8654 / COMPACT_CONVEX_COLLINEAR_SEGMENT   (hash md5:d6c4ebf208ef239206402d99ee4cfd41)
// not bridged: 
Theorem COMPACT_CONVEX_COLLINEAR_SEGMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ s = Empty /\ (compact N s /\ (convex N s /\ collinear N s)) -> exists a b :e R :^: idx N, s = closed_segment N (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:8661 / IN_CONVEX_HULL_INTERVAL_1   (hash md5:8ab0b81139b433a767b75178f5bbb345)
// not bridged: 
Theorem IN_CONVEX_HULL_INTERVAL_1 : forall s c= R :^: idx 1, forall x :e R :^: idx 1, x :e hull (R :^: idx 1) {x0 :e Power (R :^: idx 1) | convex 1 x0} s <-> exists a b :e R :^: idx 1, a :e s /\ (b :e s /\ x :e closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/convex.ml:8661 / IN_CONVEX_HULL_SEGMENT_1   (hash md5:c218722643d0bc6e76f982cd66d22842)
// not bridged: 
Theorem IN_CONVEX_HULL_SEGMENT_1 : forall s c= R :^: idx 1, forall x :e R :^: idx 1, x :e hull (R :^: idx 1) {x0 :e Power (R :^: idx 1) | convex 1 x0} s <-> exists a b :e R :^: idx 1, a :e s /\ (b :e s /\ x :e closed_segment 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/convex.ml:8696 / JUNG   (hash md5:fef8db776413c0626648120a5c2fbccd)
// not bridged: 
Theorem JUNG : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall r :e R, bounded_hl N s /\ (if 0 <= dimindex N :/: (2 * dimindex N + 2) then sqrt_SNo_nonneg (dimindex N :/: (2 * dimindex N + 2)) else - sqrt_SNo_nonneg (- dimindex N :/: (2 * dimindex N + 2))) * diameter N s <= r -> exists a :e R :^: idx N, s c= cball N (a,r).
Admitted.

// HOL Light: Multivariate/convex.ml:9008 / KIRSZBRAUN   (hash md5:fd5064f3ed9a34356e1d0be061b4bd01)
// not bridged: 
Theorem KIRSZBRAUN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall B :e R, 0 <= B /\ (forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ ((forall x y :e R :^: idx M, vector_norm N (vector_sub N (g x) (g y)) <= B * vector_norm M (vector_sub M x y)) /\ forall x :e R :^: idx M, x :e s -> g x = f x).
Admitted.

// HOL Light: Multivariate/convex.ml:9637 / LIPSCHITZ_EXTENSION_EXISTS   (hash md5:c9249652204f8e915d7198912b8cabde)
// not bridged: 
Theorem LIPSCHITZ_EXTENSION_EXISTS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (exists B :e R, forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ ((exists B :e R, forall x y :e R :^: idx M, vector_norm N (vector_sub N (g x) (g y)) <= B * vector_norm M (vector_sub M x y)) /\ forall x :e R :^: idx M, x :e s -> g x = f x).
Admitted.

// HOL Light: Multivariate/convex.ml:9653 / DUGUNDJI   (hash md5:d35c860a30fde796209a4654e7e5223c)
// not bridged: 
Theorem DUGUNDJI : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall c c= R :^: idx N, forall u s c= R :^: idx M, convex N c /\ (~ c = Empty /\ (closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) u) s /\ (continuous_on_hl M N f s /\ {f x | x :e s} c= c))) -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ (continuous_on_hl M N g u /\ ({g x | x :e u} c= c /\ forall x :e R :^: idx M, x :e s -> g x = f x)).
Admitted.

// HOL Light: Multivariate/convex.ml:9804 / TIETZE   (hash md5:0674e5c1070984deed2bd80c847294f6)
// not bridged: 
Theorem TIETZE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall u s c= R :^: idx M, forall B :e R, 0 <= B /\ (closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) u) s /\ (continuous_on_hl M N f s /\ (forall x :e R :^: idx M, x :e s -> vector_norm N (f x) <= B))) -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ (continuous_on_hl M N g u /\ ((forall x :e R :^: idx M, x :e s -> g x = f x) /\ forall x :e R :^: idx M, x :e u -> vector_norm N (g x) <= B)).
Admitted.

// HOL Light: Multivariate/convex.ml:9820 / TIETZE_CLOSED_INTERVAL   (hash md5:39335f03de0e106bc85295c07bb1a550)
// not bridged: 
Theorem TIETZE_CLOSED_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall u s c= R :^: idx M, forall a b :e R :^: idx N, ~ closed_interval N (seq_cons (a,b) seq_nil) = Empty /\ (closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) u) s /\ (continuous_on_hl M N f s /\ (forall x :e R :^: idx M, x :e s -> f x :e closed_interval N (seq_cons (a,b) seq_nil)))) -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ (continuous_on_hl M N g u /\ ((forall x :e R :^: idx M, x :e s -> g x = f x) /\ forall x :e R :^: idx M, x :e u -> g x :e closed_interval N (seq_cons (a,b) seq_nil))).
Admitted.

// HOL Light: Multivariate/convex.ml:9835 / TIETZE_CLOSED_INTERVAL_1   (hash md5:9770638f94f903fa5f23f65a50f00707)
// not bridged: 
Theorem TIETZE_CLOSED_INTERVAL_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall u s c= R :^: idx N, forall a b :e R :^: idx 1, drop a <= drop b /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ (continuous_on_hl N 1 f s /\ (forall x :e R :^: idx N, x :e s -> f x :e closed_interval 1 (seq_cons (a,b) seq_nil)))) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx 1) /\ (continuous_on_hl N 1 g u /\ ((forall x :e R :^: idx N, x :e s -> g x = f x) /\ forall x :e R :^: idx N, x :e u -> g x :e closed_interval 1 (seq_cons (a,b) seq_nil))).
Admitted.

// HOL Light: Multivariate/convex.ml:9847 / TIETZE_OPEN_INTERVAL   (hash md5:fcecbc3413c05e6014e2d9a312d4b322)
// not bridged: 
Theorem TIETZE_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall u s c= R :^: idx M, forall a b :e R :^: idx N, ~ open_interval N (a,b) = Empty /\ (closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) u) s /\ (continuous_on_hl M N f s /\ (forall x :e R :^: idx M, x :e s -> f x :e open_interval N (a,b)))) -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ (continuous_on_hl M N g u /\ ((forall x :e R :^: idx M, x :e s -> g x = f x) /\ forall x :e R :^: idx M, x :e u -> g x :e open_interval N (a,b))).
Admitted.

// HOL Light: Multivariate/convex.ml:9862 / TIETZE_OPEN_INTERVAL_1   (hash md5:550244b320acfed9f729f94fd4d21104)
// not bridged: 
Theorem TIETZE_OPEN_INTERVAL_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall u s c= R :^: idx N, forall a b :e R :^: idx 1, drop a < drop b /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ (continuous_on_hl N 1 f s /\ (forall x :e R :^: idx N, x :e s -> f x :e open_interval 1 (a,b)))) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx 1) /\ (continuous_on_hl N 1 g u /\ ((forall x :e R :^: idx N, x :e s -> g x = f x) /\ forall x :e R :^: idx N, x :e u -> g x :e open_interval 1 (a,b))).
Admitted.

// HOL Light: Multivariate/convex.ml:9874 / TIETZE_UNBOUNDED   (hash md5:2f178483b7f86d3eb7cb3ed036cc24d3)
// not bridged: 
Theorem TIETZE_UNBOUNDED : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall u s c= R :^: idx M, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) u) s /\ continuous_on_hl M N f s -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ (continuous_on_hl M N g u /\ forall x :e R :^: idx M, x :e s -> g x = f x).
Admitted.

// HOL Light: Multivariate/convex.ml:9888 / convex_cone   (hash md5:df8897c765cb06663205aaa51abd55e4)
// not bridged: 
Theorem convex_cone_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex_cone A s <-> ~ s = Empty /\ (convex A s /\ conic A s).
Admitted.

// HOL Light: Multivariate/convex.ml:9891 / CONVEX_CONE   (hash md5:cd0c47f3e3b3d4fc86d169570636d39c)
// not bridged: 
Theorem CONVEX_CONE : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex_cone N s <-> vec N 0 :e s /\ ((forall x y :e R :^: idx N, x :e s /\ y :e s -> vector_add N x y :e s) /\ forall x :e R :^: idx N, forall c :e R, x :e s /\ 0 <= c -> vector_mul N c x :e s).
Admitted.

// HOL Light: Multivariate/convex.ml:9909 / CONVEX_CONE_ADD   (hash md5:27135487571002b7fb929657cb066e73)
// not bridged: 
Theorem CONVEX_CONE_ADD : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x y :e R :^: idx A, convex_cone A s /\ (x :e s /\ y :e s) -> vector_add A x y :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:9913 / CONVEX_CONE_MUL   (hash md5:de84ef35d5263130a9bae50bef61e6b6)
// not bridged: 
Theorem CONVEX_CONE_MUL : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall c :e R, forall x :e R :^: idx A, convex_cone A s /\ (0 <= c /\ x :e s) -> vector_mul A c x :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:9917 / CONVEX_CONE_NONEMPTY   (hash md5:c79aeb50fb6de0dbd6eef2148eb3abe1)
// not bridged: 
Theorem CONVEX_CONE_NONEMPTY : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex_cone A s -> ~ s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:9921 / CONVEX_CONE_LINEAR_IMAGE   (hash md5:2615019d54feec1d276015b6e8c0c2ed)
// not bridged: 
Theorem CONVEX_CONE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, convex_cone M s /\ linear M N f -> convex_cone N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:9927 / CONVEX_CONE_LINEAR_IMAGE_EQ   (hash md5:e7de178c38ee964dca73a753ffce1b77)
// not bridged: 
Theorem CONVEX_CONE_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (convex_cone N {f x | x :e s} <-> convex_cone M s).
Admitted.

// HOL Light: Multivariate/convex.ml:9936 / CONVEX_CONE_HALFSPACE_GE   (hash md5:f17f4784ef61f13c2603f26656e25e2f)
// not bridged: 
Theorem CONVEX_CONE_HALFSPACE_GE : forall A:set, A <> Empty -> forall a :e R :^: idx A, convex_cone A {x :e R :^: idx A | 0 <= dot A a x}.
Admitted.

// HOL Light: Multivariate/convex.ml:9941 / CONVEX_CONE_HALFSPACE_LE   (hash md5:c5dadb42e33c7274c2d12f23a6678ec5)
// not bridged: 
Theorem CONVEX_CONE_HALFSPACE_LE : forall A:set, A <> Empty -> forall a :e R :^: idx A, convex_cone A {x :e R :^: idx A | dot A a x <= 0}.
Admitted.

// HOL Light: Multivariate/convex.ml:9946 / CONVEX_CONE_CONTAINS_0   (hash md5:224b17ee19b417f31290dde4e2ac9a39)
// not bridged: 
Theorem CONVEX_CONE_CONTAINS_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex_cone N s -> vec N 0 :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:9950 / CONVEX_CONE_INTERS   (hash md5:774d78e5e49a6bb116465ba2c6567791)
// not bridged: 
Theorem CONVEX_CONE_INTERS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (forall s c= R :^: idx N, s :e f -> convex_cone N s) -> convex_cone N {x :e R :^: idx N | forall Y :e f, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:9957 / CONVEX_CONE_CONVEX_CONE_HULL   (hash md5:e77b45acbb6faf32b7e3ecef615ed915)
// not bridged: 
Theorem CONVEX_CONE_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex_cone A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex_cone A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:9961 / CONVEX_CONVEX_CONE_HULL   (hash md5:907698b8d2d97d4c9632534bc5d181b1)
// not bridged: 
Theorem CONVEX_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex_cone A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:9965 / CONIC_CONVEX_CONE_HULL   (hash md5:4fd47eab9e83d87f43f9f87afa32c5dc)
// not bridged: 
Theorem CONIC_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, conic A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex_cone A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:9969 / CONVEX_CONE_HULL_NONEMPTY   (hash md5:919434d853a04c0b97cf004ecc59ff21)
// not bridged: 
Theorem CONVEX_CONE_HULL_NONEMPTY : forall A:set, A <> Empty -> forall s c= R :^: idx A, ~ hull (R :^: idx A) {x :e Power (R :^: idx A) | convex_cone A x} s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:9973 / CONVEX_CONE_HULL_CONTAINS_0   (hash md5:09e223f85d791588ebf0c903a2e678fb)
// not bridged: 
Theorem CONVEX_CONE_HULL_CONTAINS_0 : forall A:set, A <> Empty -> forall s c= R :^: idx A, vec A 0 :e hull (R :^: idx A) {x :e Power (R :^: idx A) | convex_cone A x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:9977 / CONVEX_CONE_HULL_ADD   (hash md5:ec000ef5c55e4a014ade701c8d3e3248)
// not bridged: 
Theorem CONVEX_CONE_HULL_ADD : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex_cone N x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex_cone N x0} s -> vector_add N x y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex_cone N x0} s.
Admitted.

// HOL Light: Multivariate/convex.ml:9983 / CONVEX_CONE_HULL_MUL   (hash md5:f3257b12895139a94bcac76fb1e881e9)
// not bridged: 
Theorem CONVEX_CONE_HULL_MUL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, forall x :e R :^: idx N, 0 <= c /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex_cone N x0} s -> vector_mul N c x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex_cone N x0} s.
Admitted.

// HOL Light: Multivariate/convex.ml:9989 / CONVEX_CONE_SUMS   (hash md5:8b6edb3456ad1f8ccb72ff3f366fa661)
// not bridged: 
Theorem CONVEX_CONE_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex_cone N s /\ convex_cone N t -> convex_cone N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:9994 / CONVEX_CONE_PCROSS   (hash md5:d56d1e7d18654c8d71fcdce82e7555ce)
// not bridged: 
Theorem CONVEX_CONE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, convex_cone M s /\ convex_cone N t -> convex_cone (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:9999 / CONVEX_CONE_PCROSS_EQ   (hash md5:44a35cf1a5baefb9e16afc9692e6322e)
// not bridged: 
Theorem CONVEX_CONE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, convex_cone (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> convex_cone M s /\ convex_cone N t.
Admitted.

// HOL Light: Multivariate/convex.ml:10019 / CONVEX_CONE_HULL_UNION   (hash md5:f8d8ae71393ef0ff9686d8f2465827fe)
// not bridged: 
Theorem CONVEX_CONE_HULL_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} (s :\/: t) = \/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex_cone N x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex_cone N x0} t}.
Admitted.

// HOL Light: Multivariate/convex.ml:10035 / CONVEX_CONE_SING   (hash md5:cedb0bcd04db303a113818b5de7edc38)
// not bridged: 
Theorem CONVEX_CONE_SING : forall A:set, A <> Empty -> convex_cone A {vec A 0}.
Admitted.

// HOL Light: Multivariate/convex.ml:10039 / CONVEX_HULL_SUBSET_CONVEX_CONE_HULL   (hash md5:a786cb00ea7c033e8fdd7ca2bdde281f)
// not bridged: 
Theorem CONVEX_HULL_SUBSET_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s c= hull (R :^: idx A) {x :e Power (R :^: idx A) | convex_cone A x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:10044 / CONIC_HULL_SUBSET_CONVEX_CONE_HULL   (hash md5:486e439a9fd435aa60a403803a3f7e73)
// not bridged: 
Theorem CONIC_HULL_SUBSET_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | conic A x} s c= hull (R :^: idx A) {x :e Power (R :^: idx A) | convex_cone A x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:10049 / CONVEX_CONE_HULL_SEPARATE_NONEMPTY   (hash md5:d0c26b17b2f7432c79352abae10cbd07)
// not bridged: 
Theorem CONVEX_CONE_HULL_SEPARATE_NONEMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ s = Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:10060 / CONVEX_CONE_HULL_EMPTY   (hash md5:3e17ca5f74b3909ad2630cd80705635a)
// not bridged: 
Theorem CONVEX_CONE_HULL_EMPTY : forall A:set, A <> Empty -> hull (R :^: idx A) {x :e Power (R :^: idx A) | convex_cone A x} Empty = {vec A 0}.
Admitted.

// HOL Light: Multivariate/convex.ml:10066 / CONVEX_CONE_HULL_SEPARATE   (hash md5:1ca3438e595a40b72af486dfc18562a4)
// not bridged: 
Theorem CONVEX_CONE_HULL_SEPARATE : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} s = SetAdjoin (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s)) (vec N 0).
Admitted.

// HOL Light: Multivariate/convex.ml:10076 / CONVEX_CONE_HULL_CONVEX_HULL_NONEMPTY   (hash md5:d417d633036ada668997dd5a23f60d97)
// not bridged: 
Theorem CONVEX_CONE_HULL_CONVEX_HULL_NONEMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ s = Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} s = \/_ c :e R, {vector_mul N c x | x :e R :^: idx N, 0 <= c /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:10082 / CONVEX_CONE_HULL_CONVEX_HULL   (hash md5:dfa527ef6e3bdfc5d8d71a21643cba09)
// not bridged: 
Theorem CONVEX_CONE_HULL_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} s = SetAdjoin (\/_ c :e R, {vector_mul N c x | x :e R :^: idx N, 0 <= c /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s}) (vec N 0).
Admitted.

// HOL Light: Multivariate/convex.ml:10088 / CONVEX_CONE_HULL_LINEAR_IMAGE   (hash md5:bc29f3e813fe4ecc38687386b1b589aa)
// not bridged: 
Theorem CONVEX_CONE_HULL_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} {f x | x :e s} = {f x | x :e hull (R :^: idx M) {x :e Power (R :^: idx M) | convex_cone M x} s}.
Admitted.

// HOL Light: Multivariate/convex.ml:10102 / SUBSPACE_IMP_CONVEX_CONE   (hash md5:c7e13f4fabe88e750df07ab11bd53d30)
// not bridged: 
Theorem SUBSPACE_IMP_CONVEX_CONE : forall A:set, A <> Empty -> forall s c= R :^: idx A, subspace A s -> convex_cone A s.
Admitted.

// HOL Light: Multivariate/convex.ml:10106 / CONVEX_CONE_SPAN   (hash md5:789910e3aae0745eeaf6fdf99e1a0838)
// not bridged: 
Theorem CONVEX_CONE_SPAN : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex_cone A (span A s).
Admitted.

// HOL Light: Multivariate/convex.ml:10111 / CONVEX_CONE_NEGATIONS   (hash md5:50fb0127fe992a006dd769ff6c3346f3)
// not bridged: 
Theorem CONVEX_CONE_NEGATIONS : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex_cone A s -> convex_cone A {vector_neg A x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:10115 / SUBSPACE_CONVEX_CONE_SYMMETRIC   (hash md5:e62a04f9ce5526dc6d79396678e77500)
// not bridged: 
Theorem SUBSPACE_CONVEX_CONE_SYMMETRIC : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s <-> convex_cone N s /\ forall x :e R :^: idx N, x :e s -> vector_neg N x :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:10125 / SPAN_CONVEX_CONE_ALLSIGNS   (hash md5:90e8356e56330e3c6948ea2615800cf9)
// not bridged: 
Theorem SPAN_CONVEX_CONE_ALLSIGNS : forall N:set, N <> Empty -> forall s c= R :^: idx N, span N s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex_cone N x} (s :\/: {vector_neg N x | x :e s}).
Admitted.

// HOL Light: Multivariate/convex.ml:10150 / epigraph   (hash md5:26017c53041eba7934e67395074c5c63)
// not bridged: 
Theorem epigraph_thm : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> epigraph N s f = {xy :e R :^: idx_n (dimindex N + 1) | fstcart N xy :e s /\ f (fstcart N xy) <= drop (sndcart N 1 xy)}.
Admitted.

// HOL Light: Multivariate/convex.ml:10155 / IN_EPIGRAPH   (hash md5:f71834bb9832c3e3904105cc0a9c375d)
// not bridged: 
Theorem IN_EPIGRAPH : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> forall x :e R :^: idx A, forall y :e R, pastecart A 1 x (lift y) :e epigraph A s f <-> x :e s /\ f x <= y.
Admitted.

// HOL Light: Multivariate/convex.ml:10160 / CONVEX_EPIGRAPH   (hash md5:e588d8f5ad9aa3d4a618fb95f76def40)
// not bridged: 
Theorem CONVEX_EPIGRAPH : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> forall s c= R :^: idx A, convex_on A f s /\ convex A s <-> convex (idx_n (dimindex A + 1)) (epigraph A s f).
Admitted.

// HOL Light: Multivariate/convex.ml:10168 / CONVEX_EPIGRAPH_CONVEX   (hash md5:391dcc60d82590d5001ca372193bf0a0)
// not bridged: 
Theorem CONVEX_EPIGRAPH_CONVEX : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> forall s c= R :^: idx A, convex A s -> (convex_on A f s <-> convex (idx_n (dimindex A + 1)) (epigraph A s f)).
Admitted.

// HOL Light: Multivariate/convex.ml:10172 / CONVEX_ON_EPIGRAPH_SLICE_LE   (hash md5:ad309f5967cde29db435f7f95f81181e)
// not bridged: 
Theorem CONVEX_ON_EPIGRAPH_SLICE_LE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall a :e R, convex_on N f s /\ convex N s -> convex N {x :e R :^: idx N | x :e s /\ f x <= a}.
Admitted.

// HOL Light: Multivariate/convex.ml:10182 / CONVEX_ON_EPIGRAPH_SLICE_LT   (hash md5:0758ed2879132ada9a35f238c120ef2d)
// not bridged: 
Theorem CONVEX_ON_EPIGRAPH_SLICE_LT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall a :e R, convex_on N f s /\ convex N s -> convex N {x :e R :^: idx N | x :e s /\ f x < a}.
Admitted.

// HOL Light: Multivariate/convex.ml:10192 / CONVEX_ON_SUP   (hash md5:2fec17255ad4407e2fda8e9b7fa87bd0)
// not bridged: 
Theorem CONVEX_ON_SUP : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set -> set, (forall x :e A, forall y :e R :^: idx N, f x y :e R) -> forall t c= A, forall s c= R :^: idx N, convex N s /\ ((forall i :e A, i :e t -> convex_on N (f i) s) /\ (forall x :e R :^: idx N, x :e s -> exists B :e R, forall i :e A, i :e t -> f i x <= B)) -> convex_on N (fun x:set => sup {f i x | i :e A, i :e t}) s.
Admitted.

// HOL Light: Multivariate/convex.ml:10222 / FORALL_OF_PASTECART   (hash md5:1a9c19ce6b211525d6000e815257a232)
Theorem hlt_FORALL_OF_PASTECART : forall A B M N:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> forall P :e 2 :^: (hl_ty_cart B N :^: A) :^: (hl_ty_cart B M :^: A), (forall p :e hl_ty_cart B (hl_ty_finite_sum M N) :^: A, P (hl_o (hl_ty_cart B (hl_ty_finite_sum M N)) (hl_ty_cart B M) A (hl_fstcart B M N) p) (hl_o (hl_ty_cart B (hl_ty_finite_sum M N)) (hl_ty_cart B N) A (hl_sndcart B M N) p) = 1) <-> forall x :e hl_ty_cart B M :^: A, forall y :e hl_ty_cart B N :^: A, P x y = 1.
Admitted.
Theorem FORALL_OF_PASTECART_bridge : (forall A B M N:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> forall P :e 2 :^: (hl_ty_cart B N :^: A) :^: (hl_ty_cart B M :^: A), (forall p :e hl_ty_cart B (hl_ty_finite_sum M N) :^: A, P (hl_o (hl_ty_cart B (hl_ty_finite_sum M N)) (hl_ty_cart B M) A (hl_fstcart B M N) p) (hl_o (hl_ty_cart B (hl_ty_finite_sum M N)) (hl_ty_cart B N) A (hl_sndcart B M N) p) = 1) <-> forall x :e hl_ty_cart B M :^: A, forall y :e hl_ty_cart B N :^: A, P x y = 1) -> (forall A B M N:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> forall P:set -> set -> prop, (forall p:set -> set, (forall x :e A, p x :e B :^: idx_n (dimindex M + dimindex N)) -> P (fun x :e A => fstcart M (p x)) (fun x :e A => sndcart M N (p x))) <-> forall x :e B :^: idx M :^: A, forall y :e B :^: idx N :^: A, P x y).
exact (fun H__top A B M N HAne HBne HMne HNne => (fun P => ((idx_idx_n (dimindex M + dimindex N) (add_SNo_In_omega (dimindex M) (dimindex_omega (M)) (dimindex N) (dimindex_omega (N)))) (fun hl__u hl__v => (forall p:set -> set, (forall x :e A, p x :e B :^: hl__u) -> P (fun x :e A => fstcart M (p x)) (fun x :e A => sndcart M N (p x))) <-> forall x :e B :^: idx M :^: A, forall y :e B :^: idx N :^: A, P x y) (((imp_forall_pred2 (B :^: idx M :^: A) (B :^: idx N :^: A) (fun P => (forall p :e B :^: idx (idx_n (dimindex M + dimindex N)) :^: A, P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p) = 1) <-> forall x :e B :^: idx M :^: A, forall y :e B :^: idx N :^: A, P x y = 1) (fun P => (forall p:set -> set, (forall x :e A, p x :e B :^: idx (idx_n (dimindex M + dimindex N))) -> P (fun x :e A => fstcart M (p x)) (fun x :e A => sndcart M N (p x))) <-> forall x :e B :^: idx M :^: A, forall y :e B :^: idx N :^: A, P x y) (fun P => (imp_iff (forall p :e B :^: idx (idx_n (dimindex M + dimindex N)) :^: A, hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p) = 1) (forall p:set -> set, (forall x :e A, p x :e B :^: idx (idx_n (dimindex M + dimindex N))) -> P (fun x :e A => fstcart M (p x)) (fun x :e A => sndcart M N (p x))) (forall x :e B :^: idx M :^: A, forall y :e B :^: idx N :^: A, hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P x y = 1) (forall x :e B :^: idx M :^: A, forall y :e B :^: idx N :^: A, P x y) (imp_forall_fun (A) (B :^: idx (idx_n (dimindex M + dimindex N))) (fun p => hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p) = 1) (fun p => P (fun x :e A => fstcart M (p x)) (fun x :e A => sndcart M N (p x))) (fun p Hpc => (iffEL (hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) (hl_lam A p)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) (hl_lam A p)) = 1) (P (fun x :e A => fstcart M (p x)) (fun x :e A => sndcart M N (p x))) ((fun_value_of_pw (A) (B :^: idx N) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) (hl_lam A p)) (fun x:set => sndcart M N (p x)) (setexp_ap (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A) (B :^: idx N :^: A) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N)) (setexp_ap (B :^: idx N :^: (B :^: idx (idx_n (dimindex M + dimindex N)))) (B :^: idx N :^: A :^: (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A) ((hl_o_in) (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) (A) (hl_ty_cart_native_nonempty (B) (idx_n (dimindex M + dimindex N)) HBne (hl_ty_finite_sum_native_nonempty (M) (N) HMne HNne)) (hl_ty_cart_native_nonempty (B) (N) HBne HNne) HAne) (hl_sndcart B M N) ((hl_sndcart_in) (B) (M) (N) HBne HMne HNne)) (hl_lam A p) (hl_lam_Pi (A) (B :^: idx (idx_n (dimindex M + dimindex N))) p Hpc)) (pw_o_fun (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) (A) (hl_sndcart B M N) ((hl_sndcart_in) (B) (M) (N) HBne HMne HNne) (hl_lam A p) (hl_lam_Pi (A) (B :^: idx (idx_n (dimindex M + dimindex N))) p Hpc) (fun x:set => sndcart M N (p x)) (fun x Hx => (eq_trans_i ((fun x :e A => hl_sndcart B M N (hl_lam A p x)) x) (hl_sndcart B M N (hl_lam A p x)) (sndcart M N (p x)) (beta (A) (fun x:set => hl_sndcart B M N (hl_lam A p x)) x Hx) (((hl_lam_ap (A) p) (x) Hx) (fun hl__u hl__v => hl_sndcart B M N (hl_lam A p x) = sndcart M N hl__u) ((hl_sndcart_compat) (B) (M) (N) HBne HMne HNne (hl_lam A p x) (setexp_ap (A) (B :^: idx (idx_n (dimindex M + dimindex N))) (hl_lam A p) (hl_lam_Pi (A) (B :^: idx (idx_n (dimindex M + dimindex N))) p Hpc) (x) Hx))))))) (fun hl__u hl__v => hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) (hl_lam A p)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) (hl_lam A p)) = 1 <-> P (fun x :e A => fstcart M (p x)) hl__u) ((fun_value_of_pw (A) (B :^: idx M) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) (hl_lam A p)) (fun x:set => fstcart M (p x)) (setexp_ap (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A) (B :^: idx M :^: A) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N)) (setexp_ap (B :^: idx M :^: (B :^: idx (idx_n (dimindex M + dimindex N)))) (B :^: idx M :^: A :^: (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A) ((hl_o_in) (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) (A) (hl_ty_cart_native_nonempty (B) (idx_n (dimindex M + dimindex N)) HBne (hl_ty_finite_sum_native_nonempty (M) (N) HMne HNne)) (hl_ty_cart_native_nonempty (B) (M) HBne HMne) HAne) (hl_fstcart B M N) ((hl_fstcart_in) (B) (M) (N) HBne HMne HNne)) (hl_lam A p) (hl_lam_Pi (A) (B :^: idx (idx_n (dimindex M + dimindex N))) p Hpc)) (pw_o_fun (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) (A) (hl_fstcart B M N) ((hl_fstcart_in) (B) (M) (N) HBne HMne HNne) (hl_lam A p) (hl_lam_Pi (A) (B :^: idx (idx_n (dimindex M + dimindex N))) p Hpc) (fun x:set => fstcart M (p x)) (fun x Hx => (eq_trans_i ((fun x :e A => hl_fstcart B M N (hl_lam A p x)) x) (hl_fstcart B M N (hl_lam A p x)) (fstcart M (p x)) (beta (A) (fun x:set => hl_fstcart B M N (hl_lam A p x)) x Hx) (((hl_lam_ap (A) p) (x) Hx) (fun hl__u hl__v => hl_fstcart B M N (hl_lam A p x) = fstcart M hl__u) ((hl_fstcart_compat) (B) (M) (N) HBne HMne HNne (hl_lam A p x) (setexp_ap (A) (B :^: idx (idx_n (dimindex M + dimindex N))) (hl_lam A p) (hl_lam_Pi (A) (B :^: idx (idx_n (dimindex M + dimindex N))) p Hpc) (x) Hx))))))) (fun hl__u hl__v => hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) (hl_lam A p)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) (hl_lam A p)) = 1 <-> P hl__u (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) (hl_lam A p))) ((hl_chip2_iff (B :^: idx M :^: A) (B :^: idx N :^: A) P) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) (hl_lam A p)) (setexp_ap (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A) (B :^: idx M :^: A) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N)) (setexp_ap (B :^: idx M :^: (B :^: idx (idx_n (dimindex M + dimindex N)))) (B :^: idx M :^: A :^: (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A) ((hl_o_in) (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) (A) (hl_ty_cart_native_nonempty (B) (idx_n (dimindex M + dimindex N)) HBne (hl_ty_finite_sum_native_nonempty (M) (N) HMne HNne)) (hl_ty_cart_native_nonempty (B) (M) HBne HMne) HAne) (hl_fstcart B M N) ((hl_fstcart_in) (B) (M) (N) HBne HMne HNne)) (hl_lam A p) (hl_lam_Pi (A) (B :^: idx (idx_n (dimindex M + dimindex N))) p Hpc)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) (hl_lam A p)) (setexp_ap (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A) (B :^: idx N :^: A) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N)) (setexp_ap (B :^: idx N :^: (B :^: idx (idx_n (dimindex M + dimindex N)))) (B :^: idx N :^: A :^: (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A) ((hl_o_in) (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) (A) (hl_ty_cart_native_nonempty (B) (idx_n (dimindex M + dimindex N)) HBne (hl_ty_finite_sum_native_nonempty (M) (N) HMne HNne)) (hl_ty_cart_native_nonempty (B) (N) HBne HNne) HAne) (hl_sndcart B M N) ((hl_sndcart_in) (B) (M) (N) HBne HMne HNne)) (hl_lam A p) (hl_lam_Pi (A) (B :^: idx (idx_n (dimindex M + dimindex N))) p Hpc)))))))) (imp_forall_fun_rev (A) (B :^: idx (idx_n (dimindex M + dimindex N))) (fun p => hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p) = 1) (fun p => P (fun x :e A => fstcart M (p x)) (fun x :e A => sndcart M N (p x))) (fun p Hp => (iffER (hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p) = 1) (P (fun x :e A => fstcart M (p x)) (fun x :e A => sndcart M N (p x))) ((fun_value_of_pw (A) (B :^: idx N) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p) (fun x:set => sndcart M N (p x)) (setexp_ap (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A) (B :^: idx N :^: A) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N)) (setexp_ap (B :^: idx N :^: (B :^: idx (idx_n (dimindex M + dimindex N)))) (B :^: idx N :^: A :^: (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A) ((hl_o_in) (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) (A) (hl_ty_cart_native_nonempty (B) (idx_n (dimindex M + dimindex N)) HBne (hl_ty_finite_sum_native_nonempty (M) (N) HMne HNne)) (hl_ty_cart_native_nonempty (B) (N) HBne HNne) HAne) (hl_sndcart B M N) ((hl_sndcart_in) (B) (M) (N) HBne HMne HNne)) (p) Hp) (pw_o_fun (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) (A) (hl_sndcart B M N) ((hl_sndcart_in) (B) (M) (N) HBne HMne HNne) (p) Hp (fun x:set => sndcart M N (p x)) (fun x Hx => (eq_trans_i ((fun x :e A => hl_sndcart B M N (p x)) x) (hl_sndcart B M N (p x)) (sndcart M N (p x)) (beta (A) (fun x:set => hl_sndcart B M N (p x)) x Hx) ((hl_sndcart_compat) (B) (M) (N) HBne HMne HNne (p x) (setexp_ap (A) (B :^: idx (idx_n (dimindex M + dimindex N))) (p) Hp (x) Hx)))))) (fun hl__u hl__v => hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p) = 1 <-> P (fun x :e A => fstcart M (p x)) hl__u) ((fun_value_of_pw (A) (B :^: idx M) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (fun x:set => fstcart M (p x)) (setexp_ap (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A) (B :^: idx M :^: A) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N)) (setexp_ap (B :^: idx M :^: (B :^: idx (idx_n (dimindex M + dimindex N)))) (B :^: idx M :^: A :^: (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A) ((hl_o_in) (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) (A) (hl_ty_cart_native_nonempty (B) (idx_n (dimindex M + dimindex N)) HBne (hl_ty_finite_sum_native_nonempty (M) (N) HMne HNne)) (hl_ty_cart_native_nonempty (B) (M) HBne HMne) HAne) (hl_fstcart B M N) ((hl_fstcart_in) (B) (M) (N) HBne HMne HNne)) (p) Hp) (pw_o_fun (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) (A) (hl_fstcart B M N) ((hl_fstcart_in) (B) (M) (N) HBne HMne HNne) (p) Hp (fun x:set => fstcart M (p x)) (fun x Hx => (eq_trans_i ((fun x :e A => hl_fstcart B M N (p x)) x) (hl_fstcart B M N (p x)) (fstcart M (p x)) (beta (A) (fun x:set => hl_fstcart B M N (p x)) x Hx) ((hl_fstcart_compat) (B) (M) (N) HBne HMne HNne (p x) (setexp_ap (A) (B :^: idx (idx_n (dimindex M + dimindex N))) (p) Hp (x) Hx)))))) (fun hl__u hl__v => hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p) = 1 <-> P hl__u (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p)) ((hl_chip2_iff (B :^: idx M :^: A) (B :^: idx N :^: A) P) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (setexp_ap (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A) (B :^: idx M :^: A) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N)) (setexp_ap (B :^: idx M :^: (B :^: idx (idx_n (dimindex M + dimindex N)))) (B :^: idx M :^: A :^: (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A) ((hl_o_in) (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) (A) (hl_ty_cart_native_nonempty (B) (idx_n (dimindex M + dimindex N)) HBne (hl_ty_finite_sum_native_nonempty (M) (N) HMne HNne)) (hl_ty_cart_native_nonempty (B) (M) HBne HMne) HAne) (hl_fstcart B M N) ((hl_fstcart_in) (B) (M) (N) HBne HMne HNne)) (p) Hp) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N) p) (setexp_ap (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A) (B :^: idx N :^: A) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A (hl_sndcart B M N)) (setexp_ap (B :^: idx N :^: (B :^: idx (idx_n (dimindex M + dimindex N)))) (B :^: idx N :^: A :^: (B :^: idx (idx_n (dimindex M + dimindex N)) :^: A)) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) A) ((hl_o_in) (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx N) (A) (hl_ty_cart_native_nonempty (B) (idx_n (dimindex M + dimindex N)) HBne (hl_ty_finite_sum_native_nonempty (M) (N) HMne HNne)) (hl_ty_cart_native_nonempty (B) (N) HBne HNne) HAne) (hl_sndcart B M N) ((hl_sndcart_in) (B) (M) (N) HBne HMne HNne)) (p) Hp))))))) (imp_forall_in (B :^: idx M :^: A) (fun x => forall y :e B :^: idx N :^: A, hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P x y = 1) (fun x => forall y :e B :^: idx N :^: A, P x y) (fun x Hx => (imp_forall_in (B :^: idx N :^: A) (fun y => hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P x y = 1) (fun y => P x y) (fun y Hy => (iffEL (hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P x y = 1) (P x y) ((hl_chip2_iff (B :^: idx M :^: A) (B :^: idx N :^: A) P) (x) Hx (y) Hy)))))) (imp_forall_in (B :^: idx M :^: A) (fun x => forall y :e B :^: idx N :^: A, P x y) (fun x => forall y :e B :^: idx N :^: A, hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P x y = 1) (fun x Hx => (imp_forall_in (B :^: idx N :^: A) (fun y => P x y) (fun y => hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P x y = 1) (fun y Hy => (iffER (hl_chip2 (B :^: idx M :^: A) (B :^: idx N :^: A) P x y = 1) (P x y) ((hl_chip2_iff (B :^: idx M :^: A) (B :^: idx N :^: A) P) (x) Hx (y) Hy))))))))) ((hl_ty_cart_native (B) (N) HBne HNne) (fun hl__u hl__v => forall P :e 2 :^: (hl__u :^: A) :^: (B :^: idx M :^: A), (forall p :e B :^: idx (idx_n (dimindex M + dimindex N)) :^: A, P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (B :^: idx M) A (hl_fstcart B M N) p) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) hl__u A (hl_sndcart B M N) p) = 1) <-> forall x :e B :^: idx M :^: A, forall y :e hl__u :^: A, P x y = 1) ((hl_ty_cart_native (B) (M) HBne HMne) (fun hl__u hl__v => forall P :e 2 :^: (hl_ty_cart B N :^: A) :^: (hl__u :^: A), (forall p :e B :^: idx (idx_n (dimindex M + dimindex N)) :^: A, P (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) hl__u A (hl_fstcart B M N) p) (hl_o (B :^: idx (idx_n (dimindex M + dimindex N))) (hl_ty_cart B N) A (hl_sndcart B M N) p) = 1) <-> forall x :e hl__u :^: A, forall y :e hl_ty_cart B N :^: A, P x y = 1) ((hl_ty_finite_sum_native (M) (N) HMne HNne) (fun hl__u hl__v => forall P :e 2 :^: (hl_ty_cart B N :^: A) :^: (hl_ty_cart B M :^: A), (forall p :e B :^: idx hl__u :^: A, P (hl_o (B :^: idx hl__u) (hl_ty_cart B M) A (hl_fstcart B M N) p) (hl_o (B :^: idx hl__u) (hl_ty_cart B N) A (hl_sndcart B M N) p) = 1) <-> forall x :e hl_ty_cart B M :^: A, forall y :e hl_ty_cart B N :^: A, P x y = 1) ((hl_ty_cart_native (B) (hl_ty_finite_sum M N) HBne (hl_ty_finite_sum_nonempty (M) (N) HMne HNne)) (fun hl__u hl__v => forall P :e 2 :^: (hl_ty_cart B N :^: A) :^: (hl_ty_cart B M :^: A), (forall p :e hl__u :^: A, P (hl_o hl__u (hl_ty_cart B M) A (hl_fstcart B M N) p) (hl_o hl__u (hl_ty_cart B N) A (hl_sndcart B M N) p) = 1) <-> forall x :e hl_ty_cart B M :^: A, forall y :e hl_ty_cart B N :^: A, P x y = 1) (H__top A B M N HAne HBne HMne HNne)))))) P)))).
Qed.
Theorem FORALL_OF_PASTECART : forall A B M N:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> forall P:set -> set -> prop, (forall p:set -> set, (forall x :e A, p x :e B :^: idx_n (dimindex M + dimindex N)) -> P (fun x :e A => fstcart M (p x)) (fun x :e A => sndcart M N (p x))) <-> forall x :e B :^: idx M :^: A, forall y :e B :^: idx N :^: A, P x y.
exact (FORALL_OF_PASTECART_bridge hlt_FORALL_OF_PASTECART).
Admitted.

// HOL Light: Multivariate/convex.ml:10228 / FORALL_OF_DROP   (hash md5:e34eae6303c9998155455e54b020d22f)
// not bridged: 
Theorem FORALL_OF_DROP : forall A:set, A <> Empty -> forall P:set -> prop, (forall v:set -> set, (forall x :e A, v x :e R :^: idx 1) -> P (fun x :e A => drop (v x))) <-> forall x :e R :^: A, P x.
Admitted.

// HOL Light: Multivariate/convex.ml:10234 / CONVEX_ON_JENSEN   (hash md5:a34a8b0abffac43956ad3215791b4c01)
// not bridged: 
Theorem CONVEX_ON_JENSEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, convex N s -> (convex_on N f s <-> forall k :e omega, forall u:set -> set, (forall x :e omega, u x :e R) -> forall x:set -> set, (forall x0 :e omega, x x0 :e R :^: idx N) -> (forall i :e omega, 1 <= i /\ i <= k -> 0 <= u i /\ x i :e s) /\ finsum (idx_n k) u = 1 -> f (vsum omega N (idx_n k) (fun i:set => vector_mul N (u i) (x i))) <= finsum (idx_n k) (fun i:set => u i * f (x i))).
Admitted.

// HOL Light: Multivariate/convex.ml:10266 / CONVEX_ON_IMP_JENSEN   (hash md5:18e61e5e257824e4398d34c3d54fa13b)
// not bridged: 
Theorem CONVEX_ON_IMP_JENSEN : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall k c= A, forall u:set -> set, (forall x :e A, u x :e R) -> forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx N) -> convex_on N f s /\ (convex N s /\ (finite k /\ ((forall i :e A, i :e k -> 0 <= u i /\ x i :e s) /\ finsum k u = 1))) -> f (vsum A N k (fun i:set => vector_mul N (u i) (x i))) <= finsum k (fun i:set => u i * f (x i)).
Admitted.

// HOL Light: Multivariate/convex.ml:10288 / IVT_INCREASING_COMPONENT_ON_1   (hash md5:677a528d5155d9abe1f663eecaa9baef)
// not bridged: 
Theorem IVT_INCREASING_COMPONENT_ON_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, forall y :e R, forall k :e omega, drop a <= drop b /\ (1 <= k /\ (k <= dimindex N /\ (continuous_on_hl 1 N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (f a k <= y /\ y <= f b k)))) -> exists x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ f x k = y.
Admitted.

// HOL Light: Multivariate/convex.ml:10304 / IVT_INCREASING_COMPONENT_1   (hash md5:1c0b9424c7a57905a6c003bc5dcff2db)
// not bridged: 
Theorem IVT_INCREASING_COMPONENT_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, forall y :e R, forall k :e omega, drop a <= drop b /\ (1 <= k /\ (k <= dimindex N /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> continuous N (R :^: idx 1) f (at_hl 1 x)) /\ (f a k <= y /\ y <= f b k)))) -> exists x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ f x k = y.
Admitted.

// HOL Light: Multivariate/convex.ml:10313 / IVT_DECREASING_COMPONENT_ON_1   (hash md5:e52958e09affbf5cec9eacc29feec28e)
// not bridged: 
Theorem IVT_DECREASING_COMPONENT_ON_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, forall y :e R, forall k :e omega, drop a <= drop b /\ (1 <= k /\ (k <= dimindex N /\ (continuous_on_hl 1 N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (f b k <= y /\ y <= f a k)))) -> exists x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ f x k = y.
Admitted.

// HOL Light: Multivariate/convex.ml:10324 / IVT_DECREASING_COMPONENT_1   (hash md5:3c34be3e648859739956ed10d8967e0b)
// not bridged: 
Theorem IVT_DECREASING_COMPONENT_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, forall y :e R, forall k :e omega, drop a <= drop b /\ (1 <= k /\ (k <= dimindex N /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> continuous N (R :^: idx 1) f (at_hl 1 x)) /\ (f b k <= y /\ y <= f a k)))) -> exists x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ f x k = y.
Admitted.

// HOL Light: Multivariate/convex.ml:10337 / CONVEX_ON_CONVEX_HULL_BOUND   (hash md5:9383e7efd9473071a4c9372118bbabc2)
// not bridged: 
Theorem CONVEX_ON_CONVEX_HULL_BOUND : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall b :e R, convex_on N f (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) /\ (forall x :e R :^: idx N, x :e s -> f x <= b) -> forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s -> f x <= b.
Admitted.

// HOL Light: Multivariate/convex.ml:10357 / CONVEX_ON_CONVEX_HULL_BOUND_EQ   (hash md5:824ca244b47e9b898f066b9f84ba22e7)
// not bridged: 
Theorem CONVEX_ON_CONVEX_HULL_BOUND_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall b :e R, convex_on N f (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) -> ((forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s -> f x <= b) <-> forall x :e R :^: idx N, x :e s -> f x <= b).
Admitted.

// HOL Light: Multivariate/convex.ml:10364 / DIST_CONVEX_HULL_BOUND_EQ   (hash md5:e5a6b9f8bb82692eb5d5b286c41113f2)
// not bridged: 
Theorem DIST_CONVEX_HULL_BOUND_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall d :e R, (forall x :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s -> distance N (a,x) <= d) <-> forall x :e R :^: idx N, x :e s -> distance N (a,x) <= d.
Admitted.

// HOL Light: Multivariate/convex.ml:10371 / DIST_CONVEX_HULL_BOUND_2   (hash md5:6a9cc3c9f1f654a672e01b6b7a25e12a)
// not bridged: 
Theorem DIST_CONVEX_HULL_BOUND_2 : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall d :e R, (forall x y :e R :^: idx N, x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s /\ y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s -> distance N (x,y) <= d) <-> forall x y :e R :^: idx N, x :e s /\ y :e s -> distance N (x,y) <= d.
Admitted.

// HOL Light: Multivariate/convex.ml:10377 / DIAMETER_CONVEX_HULL   (hash md5:3d6d866bc400598d6de8cb9a44eabaf1)
// not bridged: 
Theorem DIAMETER_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, diameter N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = diameter N s.
Admitted.

// HOL Light: Multivariate/convex.ml:10383 / DIAMETER_SIMPLEX   (hash md5:b0851ad258ad8639143eda69fea1d84f)
// not bridged: 
Theorem DIAMETER_SIMPLEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ s = Empty -> diameter N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = sup (\/_ x :e R :^: idx N, {distance N (x,y) | y :e R :^: idx N, x :e s /\ y :e s}).
Admitted.

// HOL Light: Multivariate/convex.ml:10389 / UNIT_INTERVAL_CONVEX_HULL   (hash md5:2fa718d0b0a4c90d61d1cbd0a3fbfed2)
// not bridged: 
Theorem UNIT_INTERVAL_CONVEX_HULL : forall N:set, N <> Empty -> closed_interval N (seq_cons (vec N 0,vec N 1) seq_nil) = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> x i = 0 \/ x i = 1}.
Admitted.

// HOL Light: Multivariate/convex.ml:10525 / CLOSED_INTERVAL_AS_CONVEX_HULL   (hash md5:63ede07ffeaa1f7dc2e506fda505b036)
// not bridged: 
Theorem CLOSED_INTERVAL_AS_CONVEX_HULL : forall N:set, N <> Empty -> forall a b :e R :^: idx N, exists s c= R :^: idx N, finite s /\ closed_interval N (seq_cons (a,b) seq_nil) = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:10644 / CONVEX_ON_SECANTS_1_IMP   (hash md5:3768bb01b98fb55b601f1cc73cb3f790)
// not bridged: 
Theorem CONVEX_ON_SECANTS_1_IMP : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R) -> forall s c= R :^: idx 1, forall a b c d :e R :^: idx 1, convex_on 1 f s /\ (a :e s /\ (b :e s /\ (c :e s /\ (d :e s /\ (drop a < drop b /\ (drop b <= drop c /\ drop c < drop d)))))) -> (f b + - f a) :/: (drop b + - drop a) <= (f d + - f c) :/: (drop d + - drop c).
Admitted.

// HOL Light: Multivariate/convex.ml:10670 / CONVEX_ON_SECANTS_1   (hash md5:0463784c542821493fbcb2809e1edec7)
// not bridged: 
Theorem CONVEX_ON_SECANTS_1 : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R) -> forall s c= R :^: idx 1, is_interval 1 s -> (convex_on 1 f s <-> forall a b c d :e R :^: idx 1, a :e s /\ (b :e s /\ (c :e s /\ (d :e s /\ (drop a < drop b /\ (drop b <= drop c /\ drop c < drop d))))) -> (f b + - f a) :/: (drop b + - drop a) <= (f d + - f c) :/: (drop d + - drop c)).
Admitted.

// HOL Light: Multivariate/convex.ml:10705 / starlike   (hash md5:a60bf5e0b894e220030f37ebb6436d9c)
// not bridged: 
Theorem starlike_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, starlike A s <-> exists a :e R :^: idx A, a :e s /\ forall x :e R :^: idx A, x :e s -> closed_segment A (seq_cons (a,x) seq_nil) c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:10708 / CONVEX_IMP_STARLIKE   (hash md5:b8de50490ffbb63f3e00bf5e4a67f93b)
// not bridged: 
Theorem CONVEX_IMP_STARLIKE : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s /\ ~ s = Empty -> starlike A s.
Admitted.

// HOL Light: Multivariate/convex.ml:10713 / CONIC_IMP_STARLIKE   (hash md5:a5e914ad197b32101febd49bc545d8dd)
// not bridged: 
Theorem CONIC_IMP_STARLIKE : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s /\ ~ s = Empty -> starlike N s.
Admitted.

// HOL Light: Multivariate/convex.ml:10723 / SEGMENT_CONVEX_HULL   (hash md5:425735a37990dec5bd999cd94fcce3d8)
// not bridged: 
Theorem SEGMENT_CONVEX_HULL : forall A:set, A <> Empty -> forall a b :e R :^: idx A, closed_segment A (seq_cons (a,b) seq_nil) = hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} {a,b}.
Admitted.

// HOL Light: Multivariate/convex.ml:10735 / CONTINUOUS_INCREASING_IMAGE_INTERVAL_1   (hash md5:7369fa286a0027cb9bea8270e8b1cc4e)
// not bridged: 
Theorem CONTINUOUS_INCREASING_IMAGE_INTERVAL_1 : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall a b :e R :^: idx 1, ~ closed_interval 1 (seq_cons (a,b) seq_nil) = Empty /\ (continuous_on_hl 1 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x <= drop y) -> drop (f x) <= drop (f y))) -> {f x | x :e closed_interval 1 (seq_cons (a,b) seq_nil)} = closed_interval 1 (seq_cons (f a,f b) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:10755 / CONTINUOUS_DECREASING_IMAGE_INTERVAL_1   (hash md5:0ccd4d9735661ca2f50e54eb70cedfc4)
// not bridged: 
Theorem CONTINUOUS_DECREASING_IMAGE_INTERVAL_1 : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall a b :e R :^: idx 1, ~ closed_interval 1 (seq_cons (a,b) seq_nil) = Empty /\ (continuous_on_hl 1 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x <= drop y) -> drop (f y) <= drop (f x))) -> {f x | x :e closed_interval 1 (seq_cons (a,b) seq_nil)} = closed_interval 1 (seq_cons (f b,f a) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:10775 / SEGMENT_FURTHEST_LE   (hash md5:bb082b36c3d9ca255262e9cad6843c25)
// not bridged: 
Theorem SEGMENT_FURTHEST_LE : forall N:set, N <> Empty -> forall a b x y :e R :^: idx N, x :e closed_segment N (seq_cons (a,b) seq_nil) -> vector_norm N (vector_sub N y x) <= vector_norm N (vector_sub N y a) \/ vector_norm N (vector_sub N y x) <= vector_norm N (vector_sub N y b).
Admitted.

// HOL Light: Multivariate/convex.ml:10786 / SEGMENT_BOUND   (hash md5:23c3768d92323b46e4e3121face17acc)
// not bridged: 
Theorem SEGMENT_BOUND : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, x :e closed_segment N (seq_cons (a,b) seq_nil) -> vector_norm N (vector_sub N x a) <= vector_norm N (vector_sub N b a) /\ vector_norm N (vector_sub N x b) <= vector_norm N (vector_sub N b a).
Admitted.

// HOL Light: Multivariate/convex.ml:10797 / BETWEEN_IN_CONVEX_HULL   (hash md5:7047be98e0924d1151ea822ae1630d49)
// not bridged: 
Theorem BETWEEN_IN_CONVEX_HULL : forall N:set, N <> Empty -> forall x a b :e R :^: idx N, between N x (a,b) <-> x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} {a,b}.
Admitted.

// HOL Light: Multivariate/convex.ml:10801 / STARLIKE_LINEAR_IMAGE   (hash md5:071020dc0639f06c135433f380795ded)
// not bridged: 
Theorem STARLIKE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx A, starlike A s /\ linear A B f -> starlike B {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:10806 / STARLIKE_LINEAR_IMAGE_EQ   (hash md5:2e470797db1bbcf9eb9edb8e73e37115)
// not bridged: 
Theorem STARLIKE_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ (forall x y :e R :^: idx B, f x = f y -> x = y) -> (starlike A {f x | x :e s} <-> starlike B s).
Admitted.

// HOL Light: Multivariate/convex.ml:10813 / STARLIKE_TRANSLATION_EQ   (hash md5:105b9c6e6fcf9b99d5124bc9567577ac)
// not bridged: 
Theorem STARLIKE_TRANSLATION_EQ : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall s c= R :^: idx A, starlike A {vector_add A a x | x :e s} <-> starlike A s.
Admitted.

// HOL Light: Multivariate/convex.ml:10819 / BETWEEN_LINEAR_IMAGE_EQ   (hash md5:3053bc6e52c6ecee8605846616af2b1e)
// not bridged: 
Theorem BETWEEN_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall x y z :e R :^: idx A, linear A B f /\ (forall x0 y0 :e R :^: idx A, f x0 = f y0 -> x0 = y0) -> (between B (f x) (f y,f z) <-> between A x (y,z)).
Admitted.

// HOL Light: Multivariate/convex.ml:10826 / STARLIKE_CLOSURE   (hash md5:50d47e1344275c00daf73eefdc4101ae)
// not bridged: 
Theorem STARLIKE_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, starlike N s -> starlike N (closure N s).
Admitted.

// HOL Light: Multivariate/convex.ml:10845 / STARLIKE_UNIV   (hash md5:770d3509d6c7a0bb67ed01b645c3fe03)
// not bridged: 
Theorem STARLIKE_UNIV : forall N:set, N <> Empty -> starlike N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/convex.ml:10850 / STARLIKE_PCROSS   (hash md5:84bf1ccedcf5b5d540b160190ff51239)
// not bridged: 
Theorem STARLIKE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, starlike M s /\ starlike N t -> starlike (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/convex.ml:10861 / STARLIKE_PCROSS_EQ   (hash md5:3a2f3849e09e37169cb5d8c4953753f7)
// not bridged: 
Theorem STARLIKE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, starlike (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> starlike M s /\ starlike N t.
Admitted.

// HOL Light: Multivariate/convex.ml:10883 / BETWEEN_DIST_LT   (hash md5:34614556e697067e7d93deb0ad5f0a35)
// not bridged: 
Theorem BETWEEN_DIST_LT : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall r :e R, forall a b c :e R :^: idx N, distance N (c,a) < r /\ (distance N (c,b) < r /\ between N x (a,b)) -> distance N (c,x) < r.
Admitted.

// HOL Light: Multivariate/convex.ml:10892 / BETWEEN_DIST_LE   (hash md5:d508a8192fec1b398e55a43a45d836c5)
// not bridged: 
Theorem BETWEEN_DIST_LE : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall r :e R, forall a b c :e R :^: idx N, distance N (c,a) <= r /\ (distance N (c,b) <= r /\ between N x (a,b)) -> distance N (c,x) <= r.
Admitted.

// HOL Light: Multivariate/convex.ml:10902 / BETWEEN_NORM_LT   (hash md5:deefd30dc7290ca22a4742fb9fc6c5fd)
// not bridged: 
Theorem BETWEEN_NORM_LT : forall N:set, N <> Empty -> forall r :e R, forall a b x :e R :^: idx N, vector_norm N a < r /\ (vector_norm N b < r /\ between N x (a,b)) -> vector_norm N x < r.
Admitted.

// HOL Light: Multivariate/convex.ml:10907 / BETWEEN_NORM_LE   (hash md5:da216b1f6499e2505e7a26172fd697a9)
// not bridged: 
Theorem BETWEEN_NORM_LE : forall N:set, N <> Empty -> forall r :e R, forall a b x :e R :^: idx N, vector_norm N a <= r /\ (vector_norm N b <= r /\ between N x (a,b)) -> vector_norm N x <= r.
Admitted.

// HOL Light: Multivariate/convex.ml:10912 / UNION_SEGMENT   (hash md5:a2317c2ae2304148f41970cee34731c4)
// not bridged: 
Theorem UNION_SEGMENT : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, b :e closed_segment N (seq_cons (a,c) seq_nil) -> closed_segment N (seq_cons (a,b) seq_nil) :\/: closed_segment N (seq_cons (b,c) seq_nil) = closed_segment N (seq_cons (a,c) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:10924 / CONVEX_STARCENTRES   (hash md5:aaf510e0db14a94ac71b5b45fae8177d)
// not bridged: 
Theorem CONVEX_STARCENTRES : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N {a :e R :^: idx N | a :e s /\ forall x :e R :^: idx N, x :e s -> closed_segment N (seq_cons (a,x) seq_nil) c= s}.
Admitted.

// HOL Light: Multivariate/convex.ml:10945 / MIDPOINT_CONVEX_SET   (hash md5:1a3d54a7dfae6c3adfaeb06b2a61a3d4)
// not bridged: 
Theorem MIDPOINT_CONVEX_SET : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s \/ closed N s -> (convex N s <-> forall a b :e R :^: idx N, a :e s /\ b :e s -> midpoint N (a,b) :e s).
Admitted.

// HOL Light: Multivariate/convex.ml:11046 / COLLINEAR_DESCALE   (hash md5:238f7ed648a72d836ce3f9724305a616)
// not bridged: 
Theorem COLLINEAR_DESCALE : forall N:set, N <> Empty -> forall a b c :e R, forall x y z :e R :^: idx N, ~ a = 0 /\ (~ c = 0 /\ (collinear N {vector_mul N a x,vector_mul N b y,vector_mul N c z} /\ ~ vec N 0 :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} {x,y,z})) -> collinear N {x,y,z}.
Admitted.

// HOL Light: Multivariate/convex.ml:11067 / CLOSED_SEGMENT_DESCALE   (hash md5:8b2e1df0b8f5a1f3b620f6dd9f340e08)
// not bridged: 
Theorem CLOSED_SEGMENT_DESCALE : forall N:set, N <> Empty -> forall a b c :e R, forall x y z :e R :^: idx N, 0 < a /\ (0 <= b /\ (0 < c /\ (vector_mul N b y :e closed_segment N (seq_cons (vector_mul N a x,vector_mul N c z) seq_nil) /\ ~ vec N 0 :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} {x,y,z}))) -> y :e closed_segment N (seq_cons (x,z) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:11099 / OPEN_SEGMENT_DESCALE   (hash md5:c80b6dfeb5bf9a6e500505f3a15de733)
// not bridged: 
Theorem OPEN_SEGMENT_DESCALE : forall N:set, N <> Empty -> forall a b c :e R, forall x y z :e R :^: idx N, 0 < a /\ (0 <= b /\ (0 < c /\ (vector_mul N b y :e open_segment N (vector_mul N a x,vector_mul N c z) /\ (~ vec N 0 :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} {x,y,z} /\ ~ (x = y /\ z = y))))) -> y :e open_segment N (x,z).
Admitted.

// HOL Light: Multivariate/convex.ml:11144 / IN_INTERIOR_CONVEX_SHRINK   (hash md5:6562d97c89e3c9dcbdb22910cc0dcdc1)
// not bridged: 
Theorem IN_INTERIOR_CONVEX_SHRINK : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, forall x c :e R :^: idx N, convex N s /\ (c :e interior N s /\ (x :e s /\ (0 < e0 /\ e0 <= 1))) -> vector_sub N x (vector_mul N e0 (vector_sub N x c)) :e interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11174 / IN_INTERIOR_CLOSURE_CONVEX_SHRINK   (hash md5:97dfffa1eb96c228bc05f58f7059c2fc)
// not bridged: 
Theorem IN_INTERIOR_CLOSURE_CONVEX_SHRINK : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, forall x c :e R :^: idx N, convex N s /\ (c :e interior N s /\ (x :e closure N s /\ (0 < e0 /\ e0 <= 1))) -> vector_sub N x (vector_mul N e0 (vector_sub N x c)) :e interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11220 / IN_INTERIOR_CLOSURE_CONVEX_SEGMENT   (hash md5:7dd36aff39ee2daade5d0396a8f5ff1e)
// not bridged: 
Theorem IN_INTERIOR_CLOSURE_CONVEX_SEGMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (a :e interior N s /\ b :e closure N s) -> open_segment N (a,b) c= interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11234 / relative_interior   (hash md5:37eddb15cabdba3e800a79972ec18f38)
// not bridged: 
Theorem relative_interior_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, relative_interior A s = {x :e R :^: idx A | exists t c= R :^: idx A, t :e subtopology (R :^: idx A) (euclidean A) (hull (R :^: idx A) {x0 :e Power (R :^: idx A) | affine A x0} s) /\ (x :e t /\ t c= s)}.
Admitted.

// HOL Light: Multivariate/convex.ml:11239 / relative_frontier   (hash md5:b87ec9b836401eea23dc0eee62e41317)
// not bridged: 
Theorem relative_frontier_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, relative_frontier A s = closure A s :\: relative_interior A s.
Admitted.

// HOL Light: Multivariate/convex.ml:11242 / RELATIVE_INTERIOR_INTERIOR_OF   (hash md5:1f65cf53652208236dcf25e9369c88c3)
// not bridged: 
Theorem RELATIVE_INTERIOR_INTERIOR_OF : forall N:set, N <> Empty -> forall s c= R :^: idx N, relative_interior N s = interior_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:11248 / RELATIVE_FRONTIER_FRONTIER_OF   (hash md5:ac40af594bf74c4794b45094b824f963)
// not bridged: 
Theorem RELATIVE_FRONTIER_FRONTIER_OF : forall N:set, N <> Empty -> forall s c= R :^: idx N, relative_frontier N s = frontier_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:11259 / RELATIVE_INTERIOR   (hash md5:1c2ae86acb4c8f75b1fb9f267d731599)
// not bridged: 
Theorem RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s c= R :^: idx A, relative_interior A s = {x :e R :^: idx A | x :e s /\ exists t c= R :^: idx A, open A t /\ (x :e t /\ t :/\: hull (R :^: idx A) {x0 :e Power (R :^: idx A) | affine A x0} s c= s)}.
Admitted.

// HOL Light: Multivariate/convex.ml:11270 / RELATIVE_INTERIOR_EQ   (hash md5:90410948b9f3411baddad03cf294b026)
// not bridged: 
Theorem RELATIVE_INTERIOR_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, relative_interior A s = s <-> s :e subtopology (R :^: idx A) (euclidean A) (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:11276 / RELATIVE_INTERIOR_OPEN_IN   (hash md5:08df57f6286462b5cce555ca306a0dcd)
// not bridged: 
Theorem RELATIVE_INTERIOR_OPEN_IN : forall A:set, A <> Empty -> forall s c= R :^: idx A, s :e subtopology (R :^: idx A) (euclidean A) (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s) -> relative_interior A s = s.
Admitted.

// HOL Light: Multivariate/convex.ml:11281 / RELATIVE_INTERIOR_EMPTY   (hash md5:cff85e45b78c4e6d4eeafb428c22f32b)
// not bridged: 
Theorem RELATIVE_INTERIOR_EMPTY : forall A:set, A <> Empty -> relative_interior A Empty = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:11285 / RELATIVE_FRONTIER_EMPTY   (hash md5:bdecb5b3cdcc23c724a4ea3e2afb048b)
// not bridged: 
Theorem RELATIVE_FRONTIER_EMPTY : forall A:set, A <> Empty -> relative_frontier A Empty = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:11289 / RELATIVE_INTERIOR_AFFINE   (hash md5:baeb12427768ac50c4d9b7c26511eb45)
// not bridged: 
Theorem RELATIVE_INTERIOR_AFFINE : forall N:set, N <> Empty -> forall s c= R :^: idx N, affine N s -> relative_interior N s = s.
Admitted.

// HOL Light: Multivariate/convex.ml:11294 / RELATIVE_INTERIOR_UNIV   (hash md5:9e9ed5eeda52842268d9be6d866ae131)
// not bridged: 
Theorem RELATIVE_INTERIOR_UNIV : forall A:set, A <> Empty -> forall s c= R :^: idx A, relative_interior A (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s) = hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:11300 / OPEN_IN_RELATIVE_INTERIOR   (hash md5:211472f38ba876516b41972bbcb343ba)
// not bridged: 
Theorem OPEN_IN_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s c= R :^: idx A, relative_interior A s :e subtopology (R :^: idx A) (euclidean A) (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:11307 / RELATIVE_INTERIOR_SUBSET   (hash md5:9bd3de8fef55e33ca20283350a244190)
// not bridged: 
Theorem RELATIVE_INTERIOR_SUBSET : forall A:set, A <> Empty -> forall s c= R :^: idx A, relative_interior A s c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:11311 / RELATIVE_FRONTIER_SUBSET   (hash md5:5697c36d627d7f1ac35b4e52d9cf569a)
// not bridged: 
Theorem RELATIVE_FRONTIER_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> relative_frontier N s c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:11315 / RELATIVE_FRONTIER_SUBSET_EQ   (hash md5:9027637cd731dd7b5a7bf5e3d01067b1)
// not bridged: 
Theorem RELATIVE_FRONTIER_SUBSET_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, relative_frontier N s c= s <-> closed N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11320 / BOUNDED_RELATIVE_INTERIOR   (hash md5:04a10a9d2e52b4c95212b3bfd07a754b)
// not bridged: 
Theorem BOUNDED_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> bounded_hl N (relative_interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:11324 / OPEN_IN_SET_RELATIVE_INTERIOR   (hash md5:8fdf5e6cbdf1bd7250e548d38c8f7ae8)
// not bridged: 
Theorem OPEN_IN_SET_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, relative_interior N s :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:11331 / SUBSET_RELATIVE_INTERIOR   (hash md5:5ac4c36a400638d955e250b06b3589cd)
// not bridged: 
Theorem SUBSET_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s t c= R :^: idx A, s c= t /\ hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s = hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} t -> relative_interior A s c= relative_interior A t.
Admitted.

// HOL Light: Multivariate/convex.ml:11336 / RELATIVE_INTERIOR_CLOSURE_SUBSET   (hash md5:8eb5f3449cc00abcb5b110fbe3981e7d)
// not bridged: 
Theorem RELATIVE_INTERIOR_CLOSURE_SUBSET : forall A:set, A <> Empty -> forall s c= R :^: idx A, relative_interior A s c= relative_interior A (closure A s).
Admitted.

// HOL Light: Multivariate/convex.ml:11341 / RELATIVE_INTERIOR_MAXIMAL   (hash md5:bffd3334eb6ce2c2fe899ffbbb351cd3)
// not bridged: 
Theorem RELATIVE_INTERIOR_MAXIMAL : forall A:set, A <> Empty -> forall s t c= R :^: idx A, t c= s /\ t :e subtopology (R :^: idx A) (euclidean A) (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s) -> t c= relative_interior A s.
Admitted.

// HOL Light: Multivariate/convex.ml:11347 / RELATIVE_INTERIOR_UNIQUE   (hash md5:56f2d1d7ec3a33016ac1e35ca955a754)
// not bridged: 
Theorem RELATIVE_INTERIOR_UNIQUE : forall A:set, A <> Empty -> forall s t c= R :^: idx A, t c= s /\ (t :e subtopology (R :^: idx A) (euclidean A) (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s) /\ (forall t' c= R :^: idx A, t' c= s /\ t' :e subtopology (R :^: idx A) (euclidean A) (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s) -> t' c= t)) -> relative_interior A s = t.
Admitted.

// HOL Light: Multivariate/convex.ml:11357 / IN_RELATIVE_INTERIOR   (hash md5:6b710e5af5ca3f6cfc11a79ab780b97c)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= R :^: idx N, x :e relative_interior N s <-> x :e s /\ exists e0 :e R, 0 < e0 /\ ball N (x,e0) :/\: hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:11370 / IN_RELATIVE_INTERIOR_CBALL   (hash md5:dc146566eb28ef89ae638aa2633fa0e1)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR_CBALL : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= R :^: idx N, x :e relative_interior N s <-> x :e s /\ exists e0 :e R, 0 < e0 /\ cball N (x,e0) :/\: hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s c= s.
Admitted.

// HOL Light: Multivariate/convex.ml:11389 / RELATIVE_INTERIOR_CONVEX_INTER_OPEN   (hash md5:f7729650d0d75dd9643ed65383092966)
// not bridged: 
Theorem RELATIVE_INTERIOR_CONVEX_INTER_OPEN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (open N t /\ ~ s :/\: t = Empty) -> relative_interior N (s :/\: t) = relative_interior N s :/\: t.
Admitted.

// HOL Light: Multivariate/convex.ml:11405 / CONIC_HULL_EQ_AFFINE_HULL   (hash md5:a6b82d37a1fb60db42e68ccb901ff284)
// not bridged: 
Theorem CONIC_HULL_EQ_AFFINE_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e relative_interior N s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:11405 / CONIC_HULL_EQ_SPAN   (hash md5:8f0e7b6af6a0e6469226426e13b1bec8)
// not bridged: 
Theorem CONIC_HULL_EQ_SPAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e relative_interior N s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s = span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11431 / CONIC_HULL_EQ_SPAN_EQ   (hash md5:66e49ee1c041fc8e817a65bbba73fefb)
// not bridged: 
Theorem CONIC_HULL_EQ_SPAN_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, vec N 0 :e relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) <-> hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s = span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11439 / OPEN_IN_SUBSET_RELATIVE_INTERIOR   (hash md5:a20e46c12074f8c9769d012bf4edbd48)
// not bridged: 
Theorem OPEN_IN_SUBSET_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s t c= R :^: idx A, s :e subtopology (R :^: idx A) (euclidean A) (hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} t) -> (s c= relative_interior A t <-> s c= t).
Admitted.

// HOL Light: Multivariate/convex.ml:11445 / RELATIVE_INTERIOR_TRANSLATION   (hash md5:ca83884b3f5a9b57dc4b0c1e60ab39cd)
// not bridged: 
Theorem RELATIVE_INTERIOR_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, relative_interior N {vector_add N a x | x :e s} = {vector_add N a x | x :e relative_interior N s}.
Admitted.

// HOL Light: Multivariate/convex.ml:11453 / RELATIVE_FRONTIER_TRANSLATION   (hash md5:25d53785bc09bcc9134f97bcf75f3009)
// not bridged: 
Theorem RELATIVE_FRONTIER_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, relative_frontier N {vector_add N a x | x :e s} = {vector_add N a x | x :e relative_frontier N s}.
Admitted.

// HOL Light: Multivariate/convex.ml:11461 / RELATIVE_INTERIOR_INJECTIVE_LINEAR_IMAGE   (hash md5:d5513150b5eb91e33e6969bb0ac3ea5f)
// not bridged: 
Theorem RELATIVE_INTERIOR_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> relative_interior N {f x | x :e s} = {f x | x :e relative_interior M s}.
Admitted.

// HOL Light: Multivariate/convex.ml:11474 / RELATIVE_FRONTIER_INJECTIVE_LINEAR_IMAGE   (hash md5:f572e999f88d0f2a2a9758cd321336a4)
// not bridged: 
Theorem RELATIVE_FRONTIER_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> relative_frontier N {f x | x :e s} = {f x | x :e relative_frontier M s}.
Admitted.

// HOL Light: Multivariate/convex.ml:11482 / RELATIVE_INTERIOR_RELATIVE_INTERIOR   (hash md5:6f51efc7421167f7f2e1428b8f0fc2b3)
// not bridged: 
Theorem RELATIVE_INTERIOR_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, relative_interior N (relative_interior N s) = relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11503 / RELATIVE_INTERIOR_EQ_EMPTY   (hash md5:26f8537aa9558047217fc6fcf880d86c)
// not bridged: 
Theorem RELATIVE_INTERIOR_EQ_EMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> (relative_interior N s = Empty <-> s = Empty).
Admitted.

// HOL Light: Multivariate/convex.ml:11581 / AFF_DIM_NONEMPTY_INTERIOR_OF_EQ   (hash md5:26f17a9ce9256b732c3dad1cc1b09b6b)
// not bridged: 
Theorem AFF_DIM_NONEMPTY_INTERIOR_OF_EQ : forall N:set, N <> Empty -> forall u s c= R :^: idx N, convex N s /\ (affine N u /\ s c= u) -> (aff_dim N s = aff_dim N u <-> s = Empty /\ u = Empty \/ ~ interior_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s = Empty).
Admitted.

// HOL Light: Multivariate/convex.ml:11598 / RELATIVE_INTERIOR_INTERIOR   (hash md5:d206b14ffd1e566fc3b3c4c2c6fa28a8)
// not bridged: 
Theorem RELATIVE_INTERIOR_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N -> relative_interior N s = interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11603 / RELATIVE_INTERIOR_OPEN   (hash md5:a3849b205ef7e04f2aab1fd488efae0a)
// not bridged: 
Theorem RELATIVE_INTERIOR_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s -> relative_interior N s = s.
Admitted.

// HOL Light: Multivariate/convex.ml:11609 / RELATIVE_INTERIOR_NONEMPTY_INTERIOR   (hash md5:5cd9fb4622c23bf78a6b1d067216d943)
// not bridged: 
Theorem RELATIVE_INTERIOR_NONEMPTY_INTERIOR : forall A:set, A <> Empty -> forall s c= R :^: idx A, ~ interior A s = Empty -> relative_interior A s = interior A s.
Admitted.

// HOL Light: Multivariate/convex.ml:11613 / RELATIVE_FRONTIER_NONEMPTY_INTERIOR   (hash md5:c0ee5df6ed1e28d19883ee100659f968)
// not bridged: 
Theorem RELATIVE_FRONTIER_NONEMPTY_INTERIOR : forall A:set, A <> Empty -> forall s c= R :^: idx A, ~ interior A s = Empty -> relative_frontier A s = frontier A s.
Admitted.

// HOL Light: Multivariate/convex.ml:11617 / RELATIVE_FRONTIER_FRONTIER   (hash md5:cb7563545cb11686cef1e317c698482d)
// not bridged: 
Theorem RELATIVE_FRONTIER_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N -> relative_frontier N s = frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11621 / RELATIVE_FRONTIER_OPEN   (hash md5:f7b8d659ff4feb46e813bc2ac145533d)
// not bridged: 
Theorem RELATIVE_FRONTIER_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s -> relative_frontier N s = frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11628 / AFFINE_HULL_CONVEX_HULL   (hash md5:eb52a6210c96663df6f6db573ee9cc4f)
// not bridged: 
Theorem AFFINE_HULL_CONVEX_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s) = hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:11635 / INTERIOR_SIMPLEX_NONEMPTY   (hash md5:81d5030f33835f50bc869bd4a4346d7b)
// not bridged: 
Theorem INTERIOR_SIMPLEX_NONEMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, independent N s /\ equip s (dimindex N) -> exists a :e R :^: idx N, a :e interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s (vec N 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:11657 / INTERIOR_SUBSET_RELATIVE_INTERIOR   (hash md5:7d2e8e17d155252acc3e41823536e198)
// not bridged: 
Theorem INTERIOR_SUBSET_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s c= R :^: idx A, interior A s c= relative_interior A s.
Admitted.

// HOL Light: Multivariate/convex.ml:11662 / RELATIVE_FRONTIER_SUBSET_FRONTIER   (hash md5:19c9a24d5800c526a924dc05279774de)
// not bridged: 
Theorem RELATIVE_FRONTIER_SUBSET_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, relative_frontier N s c= frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11668 / CONVEX_RELATIVE_INTERIOR   (hash md5:3d42cd60a2d55f64640aba94fd86c01a)
// not bridged: 
Theorem CONVEX_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> convex N (relative_interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:11694 / IN_RELATIVE_INTERIOR_CONVEX_SHRINK   (hash md5:7b9323316567049b560e5bc1675c57ca)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR_CONVEX_SHRINK : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, forall x c :e R :^: idx N, convex N s /\ (c :e relative_interior N s /\ (x :e s /\ (0 < e0 /\ e0 <= 1))) -> vector_sub N x (vector_mul N e0 (vector_sub N x c)) :e relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11737 / IN_RELATIVE_INTERIOR_CLOSURE_CONVEX_SHRINK   (hash md5:f3911a501666ebb3364087290c46d8d9)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR_CLOSURE_CONVEX_SHRINK : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, forall x c :e R :^: idx N, convex N s /\ (c :e relative_interior N s /\ (x :e closure N s /\ (0 < e0 /\ e0 <= 1))) -> vector_sub N x (vector_mul N e0 (vector_sub N x c)) :e relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11798 / IN_RELATIVE_INTERIOR_CLOSURE_CONVEX_SEGMENT   (hash md5:42936251b69e043abac3d4efd857a955)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR_CLOSURE_CONVEX_SEGMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (a :e relative_interior N s /\ b :e closure N s) -> open_segment N (a,b) c= relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11808 / INTER_RELATIVE_FRONTIER_CONIC_HULL   (hash md5:ab0c03ae5cd253dea881d7e0be703f95)
// not bridged: 
Theorem INTER_RELATIVE_FRONTIER_CONIC_HULL : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (vec N 0 :e relative_interior N s /\ t c= relative_frontier N s) -> t = relative_frontier N s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} t.
Admitted.

// HOL Light: Multivariate/convex.ml:11841 / INTER_CONVEX_HULL_INSERT_RELATIVE_EXTERIOR   (hash md5:debf3d4d278b1a2630c4eff902ea8fe7)
// not bridged: 
Theorem INTER_CONVEX_HULL_INSERT_RELATIVE_EXTERIOR : forall N:set, N <> Empty -> forall c t s c= R :^: idx N, forall z :e R :^: idx N, convex N c /\ (t c= c /\ (z :e relative_interior N c /\ s :/\: relative_interior N c = Empty)) -> s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin t z) = s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t.
Admitted.

// HOL Light: Multivariate/convex.ml:11866 / CONVEX_OPEN_SEGMENT_CASES   (hash md5:82b045e2ee1cbcf2071839f7da5ef0c3)
// not bridged: 
Theorem CONVEX_OPEN_SEGMENT_CASES : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (a :e closure N s /\ b :e closure N s) -> open_segment N (a,b) c= relative_frontier N s \/ open_segment N (a,b) c= relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11886 / CONVEX_OPEN_SEGMENT_CASES_ALT   (hash md5:9063210c599a71b9fa8f83e89c8175fa)
// not bridged: 
Theorem CONVEX_OPEN_SEGMENT_CASES_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (a :e closure N s /\ b :e closure N s) -> open_segment N (a,b) c= frontier N s \/ open_segment N (a,b) c= interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11899 / EXTEND_CONVEX_RELATIVE_FRONTIER_SEGMENT   (hash md5:9500a13cfdc242ecfc7dfa324f3a3051)
// not bridged: 
Theorem EXTEND_CONVEX_RELATIVE_FRONTIER_SEGMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b x :e R :^: idx N, convex N s /\ (a :e closure N s /\ (b :e closure N s /\ (x :e open_segment N (a,b) /\ x :e relative_frontier N s))) -> closed_segment N (seq_cons (a,b) seq_nil) c= relative_frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11922 / SEGMENT_SUBSET_RELATIVE_FRONTIER_CONVEX   (hash md5:94819190c4fd9c33a4e0961aee4a351b)
// not bridged: 
Theorem SEGMENT_SUBSET_RELATIVE_FRONTIER_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b c :e R :^: idx N, convex N s /\ (c :e open_segment N (a,b) /\ {a,b,c} c= relative_frontier N s) -> closed_segment N (seq_cons (a,b) seq_nil) c= relative_frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11931 / EXTEND_CONVEX_FRONTIER_SEGMENT   (hash md5:393005de290391c512ff8bbb75f27b23)
// not bridged: 
Theorem EXTEND_CONVEX_FRONTIER_SEGMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b x :e R :^: idx N, convex N s /\ (a :e closure N s /\ (b :e closure N s /\ (x :e open_segment N (a,b) /\ x :e frontier N s))) -> closed_segment N (seq_cons (a,b) seq_nil) c= frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11954 / RELATIVE_INTERIOR_SING   (hash md5:0cd9185e0f66aecf6e1209f953aa8415)
// not bridged: 
Theorem RELATIVE_INTERIOR_SING : forall A:set, A <> Empty -> forall a :e R :^: idx A, relative_interior A {a} = {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:11962 / RELATIVE_FRONTIER_SING   (hash md5:0495974caf5876f4c8dbe36cf9c5539e)
// not bridged: 
Theorem RELATIVE_FRONTIER_SING : forall N:set, N <> Empty -> forall a :e R :^: idx N, relative_frontier N {a} = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:11967 / RELATIVE_INTERIOR_CBALL   (hash md5:69aed58999159391c4caa6ae861050c9)
// not bridged: 
Theorem RELATIVE_INTERIOR_CBALL : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall r :e R, relative_interior A (cball A (a,r)) = if r = 0 then {a} else ball A (a,r).
Admitted.

// HOL Light: Multivariate/convex.ml:11977 / RELATIVE_INTERIOR_BALL   (hash md5:e3f10f53c3d3855d5ab05a0eba23306c)
// not bridged: 
Theorem RELATIVE_INTERIOR_BALL : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall r :e R, relative_interior A (ball A (a,r)) = ball A (a,r).
Admitted.

// HOL Light: Multivariate/convex.ml:11981 / RELATIVE_FRONTIER_CBALL   (hash md5:625d3ad07c01cfe991406f5885ec947b)
// not bridged: 
Theorem RELATIVE_FRONTIER_CBALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, relative_frontier N (cball N (a,r)) = if r = 0 then Empty else sphere N (a,r).
Admitted.

// HOL Light: Multivariate/convex.ml:11992 / RELATIVE_FRONTIER_BALL   (hash md5:2f7272d15350fa3f37f4b622b0818980)
// not bridged: 
Theorem RELATIVE_FRONTIER_BALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, relative_frontier N (ball N (a,r)) = if r = 0 then Empty else sphere N (a,r).
Admitted.

// HOL Light: Multivariate/convex.ml:12004 / DIFFERENT_NORM_3_COLLINEAR_POINTS   (hash md5:e21bc66548c61de8845fa16765d43ac3)
// not bridged: 
Theorem DIFFERENT_NORM_3_COLLINEAR_POINTS : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, ~ (x :e open_segment N (a,b) /\ (vector_norm N a = vector_norm N b /\ vector_norm N x = vector_norm N b)).
Admitted.

// HOL Light: Multivariate/convex.ml:12025 / OPEN_SEGMENT_SUBSET_BALL   (hash md5:2472490f1e66bc4ae9ff8bcfe71f8015)
// not bridged: 
Theorem OPEN_SEGMENT_SUBSET_BALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall u v :e R :^: idx N, u :e cball N (a,r) /\ v :e cball N (a,r) -> open_segment N (u,v) c= ball N (a,r).
Admitted.

// HOL Light: Multivariate/convex.ml:12060 / STARLIKE_CONVEX_TWEAK_BOUNDARY_POINTS   (hash md5:53aa6493f0772c2c8aebd9821ec53fc9)
// not bridged: 
Theorem STARLIKE_CONVEX_TWEAK_BOUNDARY_POINTS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (~ s = Empty /\ (relative_interior N s c= t /\ t c= closure N s)) -> starlike N t.
Admitted.

// HOL Light: Multivariate/convex.ml:12077 / RELATIVE_INTERIOR_PROLONG   (hash md5:e3370880f48efc3e5f58030d29fed155)
// not bridged: 
Theorem RELATIVE_INTERIOR_PROLONG : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, x :e relative_interior N s /\ y :e s -> exists t :e R, 1 < t /\ vector_add N y (vector_mul N t (vector_sub N x y)) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:12101 / RELATIVE_INTERIOR_CONVEX_PROLONG   (hash md5:89c93e58cb45a173258cb500348b3c43)
// not bridged: 
Theorem RELATIVE_INTERIOR_CONVEX_PROLONG : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> relative_interior N s = {x :e R :^: idx N | x :e s /\ forall y :e R :^: idx N, y :e s -> exists t :e R, 1 < t /\ vector_add N y (vector_mul N t (vector_sub N x y)) :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:12134 / RELATIVE_INTERIOR_EQ_CLOSURE   (hash md5:f94dc5394745fdd4fbcc2ccba9e6f500)
// not bridged: 
Theorem RELATIVE_INTERIOR_EQ_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, relative_interior N s = closure N s <-> affine N s.
Admitted.

// HOL Light: Multivariate/convex.ml:12154 / RAY_TO_RELATIVE_FRONTIER   (hash md5:5d4b2c0b1777b9a198791d94c519d090)
// not bridged: 
Theorem RAY_TO_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a l :e R :^: idx N, bounded_hl N s /\ (a :e relative_interior N s /\ (vector_add N a l :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ ~ l = vec N 0)) -> exists d :e R, 0 < d /\ (vector_add N a (vector_mul N d l) :e relative_frontier N s /\ forall e0 :e R, 0 <= e0 /\ e0 < d -> vector_add N a (vector_mul N e0 l) :e relative_interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12257 / RAY_TO_FRONTIER   (hash md5:2ed6d283e813bb577b154a32becdb3fd)
// not bridged: 
Theorem RAY_TO_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a l :e R :^: idx N, bounded_hl N s /\ (a :e interior N s /\ ~ l = vec N 0) -> exists d :e R, 0 < d /\ (vector_add N a (vector_mul N d l) :e frontier N s /\ forall e0 :e R, 0 <= e0 /\ e0 < d -> vector_add N a (vector_mul N e0 l) :e interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12270 / SEGMENT_TO_RELATIVE_FRONTIER   (hash md5:a13ef0761ea592ae43f01e4bbc280369)
// not bridged: 
Theorem SEGMENT_TO_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, convex N s /\ (bounded_hl N s /\ (x :e relative_interior N s /\ (y :e s /\ ~ (x = y /\ s = {x})))) -> exists z :e R :^: idx N, z :e relative_frontier N s /\ (y :e closed_segment N (seq_cons (x,z) seq_nil) /\ open_segment N (x,z) c= relative_interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12318 / SEGMENT_TO_RELATIVE_FRONTIER_SIMPLE   (hash md5:aa10c37d62ccc34c9c051a396c86554b)
// not bridged: 
Theorem SEGMENT_TO_RELATIVE_FRONTIER_SIMPLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, bounded_hl N s /\ (x :e s /\ ~ s = {x}) -> exists a b :e R :^: idx N, a :e relative_frontier N s /\ (b :e relative_frontier N s /\ x :e closed_segment N (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/convex.ml:12356 / SEGMENT_TO_FRONTIER_SIMPLE   (hash md5:01147e723a746659793d674a28c5aee8)
// not bridged: 
Theorem SEGMENT_TO_FRONTIER_SIMPLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, bounded_hl N s /\ x :e s -> exists a b :e R :^: idx N, a :e frontier N s /\ (b :e frontier N s /\ x :e closed_segment N (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/convex.ml:12394 / SEGMENT_OUT_TO_FRONTIER   (hash md5:5d8c3e2cf912b0447d3e442f9c9bef9d)
// not bridged: 
Theorem SEGMENT_OUT_TO_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, bounded_hl N s /\ (b :e closure N s /\ ~ b = a) -> exists c :e R :^: idx N, ~ c = a /\ (c :e frontier N s /\ b :e closed_segment N (seq_cons (a,c) seq_nil)).
Admitted.

// HOL Light: Multivariate/convex.ml:12418 / SUBSET_CONVEX_HULL_RELATIVE_FRONTIER   (hash md5:78e818947c174eff935905660c3e2e45)
// not bridged: 
Theorem SUBSET_CONVEX_HULL_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ ~ (exists a :e R :^: idx N, s = {a}) -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (relative_frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12433 / SUBSET_CONVEX_HULL_FRONTIER   (hash md5:8eb676d39aab65d8d2d070b0f7fae137)
// not bridged: 
Theorem SUBSET_CONVEX_HULL_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12447 / AFFINE_HULL_RELATIVE_FRONTIER_BOUNDED   (hash md5:8126b6f3728a478fb7fad92ca793543f)
// not bridged: 
Theorem AFFINE_HULL_RELATIVE_FRONTIER_BOUNDED : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ ~ (exists a :e R :^: idx N, s = {a}) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (relative_frontier N s) = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:12461 / KREIN_MILMAN_RELATIVE_FRONTIER   (hash md5:32a1f1f69df777d412c9bac2bdf7cfe1)
// not bridged: 
Theorem KREIN_MILMAN_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ (compact N s /\ ~ (exists a :e R :^: idx N, s = {a})) -> s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (relative_frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12471 / KREIN_MILMAN_RELATIVE_BOUNDARY   (hash md5:16f408e1ef1af322b52343b0e21c7c42)
// not bridged: 
Theorem KREIN_MILMAN_RELATIVE_BOUNDARY : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ (compact N s /\ ~ (exists a :e R :^: idx N, s = {a})) -> s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\: relative_interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12479 / KREIN_MILMAN_FRONTIER   (hash md5:0a255bc0ad33e3fd3a6ab32848656737)
// not bridged: 
Theorem KREIN_MILMAN_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ compact N s -> s = hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12488 / RELATIVE_FRONTIER_NOT_SING   (hash md5:10971f70ece14ba7523d5ea06a7afa81)
// not bridged: 
Theorem RELATIVE_FRONTIER_NOT_SING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, bounded_hl N s -> ~ relative_frontier N s = {a}.
Admitted.

// HOL Light: Multivariate/convex.ml:12526 / RELATIVE_INTERIOR_PCROSS   (hash md5:aa789e400b3637c7f5619f79058405d5)
// not bridged: 
Theorem RELATIVE_INTERIOR_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, relative_interior (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) = \/_ x :e relative_interior M s, {pastecart M N x y | y :e relative_interior N t}.
Admitted.

// HOL Light: Multivariate/convex.ml:12553 / RELATIVE_FRONTIER_EQ_EMPTY   (hash md5:3b088825fafff155c38a91b059bb84f7)
// not bridged: 
Theorem RELATIVE_FRONTIER_EQ_EMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, relative_frontier N s = Empty <-> affine N s.
Admitted.

// HOL Light: Multivariate/convex.ml:12560 / DIAMETER_BOUNDED_BOUND_LT   (hash md5:d5f5958a2a61f10a924199b08f2f99a2)
// not bridged: 
Theorem DIAMETER_BOUNDED_BOUND_LT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, bounded_hl N s /\ (x :e relative_interior N s /\ (y :e closure N s /\ ~ diameter N s = 0)) -> vector_norm N (vector_sub N x y) < diameter N s.
Admitted.

// HOL Light: Multivariate/convex.ml:12607 / DIAMETER_ATTAINED_RELATIVE_FRONTIER   (hash md5:32c1fca00b782157f755a0881d3e4c6c)
// not bridged: 
Theorem DIAMETER_ATTAINED_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ ~ diameter N s = 0 -> exists x y :e R :^: idx N, x :e relative_frontier N s /\ (y :e relative_frontier N s /\ vector_norm N (vector_sub N x y) = diameter N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12624 / DIAMETER_RELATIVE_FRONTIER   (hash md5:f0ab1a271eae1e909be33199a8aef089)
// not bridged: 
Theorem DIAMETER_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ ~ (exists a :e R :^: idx N, s = {a}) -> diameter N (relative_frontier N s) = diameter N s.
Admitted.

// HOL Light: Multivariate/convex.ml:12640 / DIAMETER_ATTAINED_FRONTIER   (hash md5:1fcb4854fe1186b14f8b723ac25ed410)
// not bridged: 
Theorem DIAMETER_ATTAINED_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ ~ diameter N s = 0 -> exists x y :e R :^: idx N, x :e frontier N s /\ (y :e frontier N s /\ vector_norm N (vector_sub N x y) = diameter N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12650 / DIAMETER_FRONTIER   (hash md5:c9708aea456bdc8039383c556eecb499)
// not bridged: 
Theorem DIAMETER_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> diameter N (frontier N s) = diameter N s.
Admitted.

// HOL Light: Multivariate/convex.ml:12667 / CLOSEST_POINT_IN_RELATIVE_INTERIOR   (hash md5:beaf0a859bd6acebd6ddc640c4778502)
// not bridged: 
Theorem CLOSEST_POINT_IN_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, closed N s /\ (~ s = Empty /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s) -> (closest_point N s x :e relative_interior N s <-> x :e relative_interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12707 / CLOSEST_POINT_IN_RELATIVE_FRONTIER   (hash md5:75d4bb8a22361aabd20c5bf7a092cc9a)
// not bridged: 
Theorem CLOSEST_POINT_IN_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, closed N s /\ (~ s = Empty /\ x :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s :\: relative_interior N s) -> closest_point N s x :e relative_frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:12714 / IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT   (hash md5:69ab0984556d2888c7c4b8463ab10e38)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x a :e R :^: idx N, convex N s /\ (x :e relative_interior N s /\ (a :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s /\ ~ x = a)) -> exists b :e R :^: idx N, b :e s /\ x :e open_segment N (a,b).
Admitted.

// HOL Light: Multivariate/convex.ml:12745 / IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT_STRONG   (hash md5:353e21134fe3d8b033fa245ad73b28cf)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT_STRONG : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x a :e R :^: idx N, convex N s /\ (x :e relative_interior N s /\ (a :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s /\ ~ x = a)) -> exists b :e R :^: idx N, b :e relative_interior N s /\ x :e open_segment N (a,b).
Admitted.

// HOL Light: Multivariate/convex.ml:12768 / IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT_EQ   (hash md5:6a35c497f6d408179f2817357b259fa3)
// not bridged: 
Theorem IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s -> (x :e relative_interior N s <-> ~ s = Empty /\ forall a :e R :^: idx N, a :e s /\ ~ a = x -> exists b :e R :^: idx N, b :e s /\ x :e open_segment N (a,b)).
Admitted.

// HOL Light: Multivariate/convex.ml:12792 / INTER_RELATIVE_INTERIOR_SUBSET   (hash md5:b52241f5b8226043cfb6c56f43f99376)
// not bridged: 
Theorem INTER_RELATIVE_INTERIOR_SUBSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ convex N t -> relative_interior N s :/\: relative_interior N t c= relative_interior N (s :/\: t).
Admitted.

// HOL Light: Multivariate/convex.ml:12830 / RELATIVE_INTERIOR_INTER   (hash md5:5d06fd8342a9cf96b6fa9a416cc92a23)
// not bridged: 
Theorem RELATIVE_INTERIOR_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (convex N t /\ ~ relative_interior N s :/\: relative_interior N t = Empty) -> relative_interior N (s :/\: t) = relative_interior N s :/\: relative_interior N t.
Admitted.

// HOL Light: Multivariate/convex.ml:12856 / SUBSET_RELATIVE_INTERIOR_INTERSECTING_CONVEX   (hash md5:e9b6e508ca2ee65ac52d6e3910d73b3e)
// not bridged: 
Theorem SUBSET_RELATIVE_INTERIOR_INTERSECTING_CONVEX : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (convex N t /\ (s c= t /\ ~ s :/\: relative_interior N t = Empty)) -> relative_interior N s c= relative_interior N t.
Admitted.

// HOL Light: Multivariate/convex.ml:12875 / CONVEX_HULL_SPHERE   (hash md5:b4da9f112dd1d6f4e3cb45376da17d30)
// not bridged: 
Theorem CONVEX_HULL_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (sphere N (a,r)) = cball N (a,r).
Admitted.

// HOL Light: Multivariate/convex.ml:12881 / SPHERE_SUBSET_CONVEX   (hash md5:ff8ca6fb37c038955aff166c7cba3764)
// not bridged: 
Theorem SPHERE_SUBSET_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, convex N s -> (sphere N (a,r) c= s <-> cball N (a,r) c= s).
Admitted.

// HOL Light: Multivariate/convex.ml:12886 / DIAMETER_SPHERE   (hash md5:9365e37100f8ec9a34a27826c9233348)
// not bridged: 
Theorem DIAMETER_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, diameter N (sphere N (a,r)) = if r < 0 then 0 else 2 * r.
Admitted.

// HOL Light: Multivariate/convex.ml:12895 / CONVEX_NEARBY_IN_SCALING   (hash md5:c5a30223c680151d71d71e7162aadc2a)
// not bridged: 
Theorem CONVEX_NEARBY_IN_SCALING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall r :e R, convex N s /\ (vec N 0 :e relative_interior N s /\ 1 < r) -> exists d :e R, 0 < d /\ forall x y :e R :^: idx N, x :e s /\ (y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s /\ distance N (x,y) <= d) -> y :e {vector_mul N r x0 | x0 :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:12924 / CONVEX_NEARBY_IN_SCALING_RELATIVE_INTERIOR   (hash md5:f99974e762f67c6561031ccbbde22489)
// not bridged: 
Theorem CONVEX_NEARBY_IN_SCALING_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall r :e R, convex N s /\ (vec N 0 :e relative_interior N s /\ 1 < r) -> exists d :e R, 0 < d /\ forall x y :e R :^: idx N, x :e s /\ (y :e hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s /\ distance N (x,y) <= d) -> y :e {vector_mul N r x0 | x0 :e relative_interior N s}.
Admitted.

// HOL Light: Multivariate/convex.ml:12959 / CONVEX_NEARBY_NOT_IN_SCALING   (hash md5:04df3dd6d0fdfe4f3a996efa0fc7f351)
// not bridged: 
Theorem CONVEX_NEARBY_NOT_IN_SCALING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall r :e R, convex N s /\ (vec N 0 :e relative_interior N s /\ (0 < r /\ r < 1)) -> exists d :e R, 0 < d /\ forall x y :e R :^: idx N, x :e relative_frontier N s /\ distance N (x,y) <= d -> ~ y :e {vector_mul N r x0 | x0 :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:12993 / IS_INTERVAL_RELATIVE_INTERIOR   (hash md5:bf28deca9d445c6db430e469ff345ecc)
// not bridged: 
Theorem IS_INTERVAL_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, is_interval N s -> is_interval N (relative_interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:13022 / IS_INTERVAL_INTERIOR   (hash md5:587629bf5976d6bbf187db5b7da0736e)
// not bridged: 
Theorem IS_INTERVAL_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, is_interval N s -> is_interval N (interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:13029 / IS_INTERVAL_CLOSURE   (hash md5:8ac42d5a3de32f298afa0febcc73fe59)
// not bridged: 
Theorem IS_INTERVAL_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, is_interval N s -> is_interval N (closure N s).
Admitted.

// HOL Light: Multivariate/convex.ml:13076 / CONVEX_PREIMAGE_CONCAVE_SCALING   (hash md5:80aae44facc4b69be04b0011d2dec724)
// not bridged: 
Theorem CONVEX_PREIMAGE_CONCAVE_SCALING : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s t c= R :^: idx N, convex N s /\ (convex N t /\ (vec N 0 :e s /\ (convex_on N (fun x:set => - f x) t /\ (forall x :e R :^: idx N, x :e t -> 0 < f x)))) -> convex N {x :e R :^: idx N | x :e t /\ vector_mul N (recip_SNo (f x)) x :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:13118 / CONVEXITY_PRESERVING_SHRINK_0   (hash md5:2413b01d4759a56c59418fabb0d0e356)
// not bridged: 
Theorem CONVEXITY_PRESERVING_SHRINK_0 : forall N:set, N <> Empty -> exists f g :e R :^: idx N :^: (R :^: idx N), homeomorphism N N (R :^: idx N,ball N (vec N 0,1)) (f,g) /\ ((forall s c= R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} {f x | x :e s} = hull (R :^: idx N) {x :e Power (R :^: idx N) | conic N x} s) /\ ((forall s c= R :^: idx N, vec N 0 :e s -> vec N 0 :e {f x | x :e s}) /\ ((forall s c= R :^: idx N, convex N s /\ vec N 0 :e s -> convex N {f x | x :e s}) /\ forall s c= R :^: idx N, vec N 0 :e relative_interior N s -> vec N 0 :e relative_interior N {f x | x :e s}))).
Admitted.

// HOL Light: Multivariate/convex.ml:13240 / HAUSDIST_CONVEX_HULLS   (hash md5:c3e5323eb7e0cf535f57fcf240c73177)
// not bridged: 
Theorem HAUSDIST_CONVEX_HULLS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, bounded_hl N s /\ bounded_hl N t -> hausdist N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s,hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} t) <= hausdist N (s,t).
Admitted.

// HOL Light: Multivariate/convex.ml:13264 / HAUSDIST_SUMS   (hash md5:1e4394b4a2bd2deef8251b633de64fd1)
// not bridged: 
Theorem HAUSDIST_SUMS : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, bounded_hl N s /\ (bounded_hl N t /\ (convex N s /\ (convex N t /\ (bounded_hl N u /\ (~ s = Empty /\ (~ t = Empty /\ ~ u = Empty)))))) -> hausdist N (\/_ x :e R :^: idx N, {vector_add N x e0 | e0 :e R :^: idx N, x :e s /\ e0 :e u},\/_ y :e R :^: idx N, {vector_add N y e0 | e0 :e R :^: idx N, y :e t /\ e0 :e u}) = hausdist N (s,t).
Admitted.

// HOL Light: Multivariate/convex.ml:13319 / HAUSDIST_COMPLEMENTS_CONVEX_EXPLICIT   (hash md5:8d1791a30761e8b7acd0476babc7c834)
// not bridged: 
Theorem HAUSDIST_COMPLEMENTS_CONVEX_EXPLICIT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall d :e R, forall x :e R :^: idx N, convex N s /\ (bounded_hl N s /\ (~ s = Empty /\ (bounded_hl N t /\ (~ x :e s /\ hausdist N (s,t) < d)))) -> exists y :e R :^: idx N, ~ y :e t /\ distance N (x,y) < d.
Admitted.

// HOL Light: Multivariate/convex.ml:13382 / HAUSDIST_COMPLEMENTS_CONVEX_LE   (hash md5:3f61e87d325863567cf2f28a491d644a)
// not bridged: 
Theorem HAUSDIST_COMPLEMENTS_CONVEX_LE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (bounded_hl N s /\ (convex N t /\ (bounded_hl N t /\ (~ s = Empty /\ ~ t = Empty)))) -> hausdist N ((R :^: idx N) :\: s,(R :^: idx N) :\: t) <= hausdist N (s,t).
Admitted.

// HOL Light: Multivariate/convex.ml:13410 / CONVEX_HAUSDIST_LIMIT   (hash md5:dad2b2565d3ad6e139914ddab8a46d09)
// not bridged: 
Theorem CONVEX_HAUSDIST_LIMIT : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, forall t c= R :^: idx N, eventually omega {n :e omega | bounded_hl N (s n) /\ (convex N (s n) /\ ~ s n = Empty)} sequentially /\ (compact N t /\ tendsto 1 omega (fun n:set => lift (hausdist N (s n,t))) (vec 1 0) sequentially) -> convex N t.
Admitted.

// HOL Light: Multivariate/convex.ml:13448 / COMPLETE_HAUSDIST_CONVEX   (hash md5:7d3a0f29e6de276b79ae993e744bec78)
// not bridged: 
Theorem COMPLETE_HAUSDIST_CONVEX : forall N:set, N <> Empty -> forall f :e Power (R :^: idx N) :^: omega, forall c c= R :^: idx N, closed N c /\ ((forall n :e omega, bounded_hl N (f n) /\ (convex N (f n) /\ (~ f n = Empty /\ f n c= c))) /\ (forall e0 :e R, 0 < e0 -> exists N0 :e omega, forall m n :e omega, N0 <= m /\ N0 <= n -> hausdist N (f m,f n) < e0)) -> exists s c= R :^: idx N, compact N s /\ (convex N s /\ (~ s = Empty /\ (s c= c /\ tendsto 1 omega (fun n:set => lift (hausdist N (f n,s))) (vec 1 0) sequentially))).
Admitted.

// HOL Light: Multivariate/convex.ml:13465 / COMPLETE_HAUSDIST_CONVEX_UNIV   (hash md5:f2260fb28b53acbc8983f1a54d4a0b30)
// not bridged: 
Theorem COMPLETE_HAUSDIST_CONVEX_UNIV : forall N:set, N <> Empty -> forall f :e Power (R :^: idx N) :^: omega, (forall n :e omega, bounded_hl N (f n) /\ (convex N (f n) /\ ~ f n = Empty)) /\ (forall e0 :e R, 0 < e0 -> exists N0 :e omega, forall m n :e omega, N0 <= m /\ N0 <= n -> hausdist N (f m,f n) < e0) -> exists s c= R :^: idx N, compact N s /\ (convex N s /\ (~ s = Empty /\ tendsto 1 omega (fun n:set => lift (hausdist N (f n,s))) (vec 1 0) sequentially)).
Admitted.

// HOL Light: Multivariate/convex.ml:13477 / BLASCHKE   (hash md5:84d9cdcd7ddd4f353cf7947bb280e148)
// not bridged: 
Theorem BLASCHKE : forall N:set, N <> Empty -> forall f :e Power (R :^: idx N) :^: omega, forall c c= R :^: idx N, compact N c /\ (forall n :e omega, convex N (f n) /\ (~ f n = Empty /\ f n c= c)) -> exists r:set -> set, (forall x :e omega, r x :e omega) /\ exists s c= R :^: idx N, (forall m n :e omega, m < n -> r m < r n) /\ (compact N s /\ (convex N s /\ (~ s = Empty /\ (s c= c /\ tendsto 1 omega (fun n:set => lift (hausdist N (f (r n),s))) (vec 1 0) sequentially)))).
Admitted.

// HOL Light: Multivariate/convex.ml:13495 / BLASCHKE_UNIV   (hash md5:f8ce83ac974a31aea7b5e5341ccea31d)
// not bridged: 
Theorem BLASCHKE_UNIV : forall N:set, N <> Empty -> forall f :e Power (R :^: idx N) :^: omega, forall c c= R :^: idx N, bounded_hl N c /\ (forall n :e omega, convex N (f n) /\ (~ f n = Empty /\ f n c= c)) -> exists r:set -> set, (forall x :e omega, r x :e omega) /\ exists s c= R :^: idx N, (forall m n :e omega, m < n -> r m < r n) /\ (compact N s /\ (convex N s /\ (~ s = Empty /\ tendsto 1 omega (fun n:set => lift (hausdist N (f (r n),s))) (vec 1 0) sequentially))).
Admitted.

// HOL Light: Multivariate/convex.ml:13512 / CONVEX_CLOSURE_INTERIOR   (hash md5:7732b2762c76b5af5b137f1a8c3ec234)
// not bridged: 
Theorem CONVEX_CLOSURE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ ~ interior N s = Empty -> closure N (interior N s) = closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13542 / EMPTY_INTERIOR_SUBSET_HYPERPLANE   (hash md5:bfe45de74773ccc36be0154626333186)
// not bridged: 
Theorem EMPTY_INTERIOR_SUBSET_HYPERPLANE : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ interior N s = Empty -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ s c= {x :e R :^: idx N | dot N a x = b}.
Admitted.

// HOL Light: Multivariate/convex.ml:13579 / CONVEX_INTERIOR_CLOSURE   (hash md5:e5b2d6d0291bf8154766b1f94464a80f)
// not bridged: 
Theorem CONVEX_INTERIOR_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> interior N (closure N s) = interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13623 / FRONTIER_CLOSURE_CONVEX   (hash md5:dae9e8c4be87c432846ad4d1dc421ffd)
// not bridged: 
Theorem FRONTIER_CLOSURE_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> frontier N (closure N s) = frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13627 / CONVEX_CLOSURE_RELATIVE_INTERIOR   (hash md5:8c18d191b802161d729458855dfa02e2)
// not bridged: 
Theorem CONVEX_CLOSURE_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> closure N (relative_interior N s) = closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13658 / OPEN_IN_CONVEX_MEETS_RELATIVE_INTERIOR   (hash md5:359f57887f30239c4e40c04cc8b74190)
// not bridged: 
Theorem OPEN_IN_CONVEX_MEETS_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall u s c= R :^: idx N, convex N u /\ (s :e subtopology (R :^: idx N) (euclidean N) u /\ ~ s = Empty) -> ~ s :/\: relative_interior N u = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:13671 / OPEN_SUBSET_CLOSURE_CONVEX   (hash md5:46f8c86a0b3ae6324da4af8ed3e7ebfc)
// not bridged: 
Theorem OPEN_SUBSET_CLOSURE_CONVEX : forall N:set, N <> Empty -> forall u s c= R :^: idx N, open N u /\ convex N s -> (u c= closure N s <-> u c= interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:13679 / SETDIST_RELATIVE_INTERIOR   (hash md5:4fda9a57b9aa4bc3280b15f200cd4c08)
// not bridged: 
Theorem SETDIST_RELATIVE_INTERIOR : forall A B:set, A <> Empty -> B <> Empty -> (forall s t c= R :^: idx A, convex A s -> setdist A (relative_interior A s,t) = setdist A (s,t)) /\ forall s t c= R :^: idx B, convex B t -> setdist B (s,relative_interior B t) = setdist B (s,t).
Admitted.

// HOL Light: Multivariate/convex.ml:13684 / HAUSDIST_RELATIVE_INTERIOR   (hash md5:267710483a3504c281fdf52979a47d9f)
// not bridged: 
Theorem HAUSDIST_RELATIVE_INTERIOR : forall A B:set, A <> Empty -> B <> Empty -> (forall s t c= R :^: idx A, convex A s -> hausdist A (relative_interior A s,t) = hausdist A (s,t)) /\ forall s t c= R :^: idx B, convex B t -> hausdist B (s,relative_interior B t) = hausdist B (s,t).
Admitted.

// HOL Light: Multivariate/convex.ml:13689 / AFFINE_HULL_RELATIVE_INTERIOR   (hash md5:9764e00a8101dd1f4a36001a7dbab061)
// not bridged: 
Theorem AFFINE_HULL_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s -> hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} (relative_interior A s) = hull (R :^: idx A) {x :e Power (R :^: idx A) | affine A x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:13694 / AFF_DIM_RELATIVE_INTERIOR   (hash md5:fa498da51a5e7231c54fdf4771eed2c4)
// not bridged: 
Theorem AFF_DIM_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> aff_dim N (relative_interior N s) = aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13698 / CONVEX_RELATIVE_INTERIOR_CLOSURE   (hash md5:3a0099f33aea8dd75552125cbbb3786f)
// not bridged: 
Theorem CONVEX_RELATIVE_INTERIOR_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> relative_interior N (closure N s) = relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13744 / RELATIVE_FRONTIER_CLOSURE   (hash md5:8278df09fe76f38801f1096b0f8aa9f6)
// not bridged: 
Theorem RELATIVE_FRONTIER_CLOSURE : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s -> relative_frontier A (closure A s) = relative_frontier A s.
Admitted.

// HOL Light: Multivariate/convex.ml:13749 / RELATIVE_FRONTIER_RELATIVE_INTERIOR   (hash md5:443c8ba6d2e21d65afdf4948eae2290a)
// not bridged: 
Theorem RELATIVE_FRONTIER_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> relative_frontier N (relative_interior N s) = relative_frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13756 / CONNECTED_INTER_RELATIVE_FRONTIER   (hash md5:af44928f78ebff9d0964db94232ac521)
// not bridged: 
Theorem CONNECTED_INTER_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, connected N s /\ (s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t /\ (~ s :/\: t = Empty /\ ~ s :\: t = Empty)) -> ~ s :/\: relative_frontier N t = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:13783 / CLOSED_RELATIVE_FRONTIER   (hash md5:0483247f44d661462037b3c1e9a7e97b)
// not bridged: 
Theorem CLOSED_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N (relative_frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:13795 / CLOSED_RELATIVE_BOUNDARY   (hash md5:d2d62470e145e1deab7bf9e102471e50)
// not bridged: 
Theorem CLOSED_RELATIVE_BOUNDARY : forall A:set, A <> Empty -> forall s c= R :^: idx A, closed A s -> closed A (s :\: relative_interior A s).
Admitted.

// HOL Light: Multivariate/convex.ml:13799 / COMPACT_RELATIVE_BOUNDARY   (hash md5:d410a192b86c0186d47214033c825714)
// not bridged: 
Theorem COMPACT_RELATIVE_BOUNDARY : forall A:set, A <> Empty -> forall s c= R :^: idx A, compact A s -> compact A (s :\: relative_interior A s).
Admitted.

// HOL Light: Multivariate/convex.ml:13804 / BOUNDED_RELATIVE_FRONTIER   (hash md5:c5a7cdba6bdffad64a03fcf775cc7722)
// not bridged: 
Theorem BOUNDED_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> bounded_hl N (relative_frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:13809 / COMPACT_RELATIVE_FRONTIER_BOUNDED   (hash md5:de1eac62c42ebcf22bd3c0ddeb3102be)
// not bridged: 
Theorem COMPACT_RELATIVE_FRONTIER_BOUNDED : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> compact N (relative_frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:13814 / COMPACT_RELATIVE_FRONTIER   (hash md5:2a8b296eb100a0cbda2c14163ec3b430)
// not bridged: 
Theorem COMPACT_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s -> compact N (relative_frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:13818 / CONVEX_SAME_RELATIVE_INTERIOR_CLOSURE   (hash md5:2ff35720a7232383cabbec6a4acc6619)
// not bridged: 
Theorem CONVEX_SAME_RELATIVE_INTERIOR_CLOSURE : forall A:set, A <> Empty -> forall s t c= R :^: idx A, convex A s /\ convex A t -> (relative_interior A s = relative_interior A t <-> closure A s = closure A t).
Admitted.

// HOL Light: Multivariate/convex.ml:13825 / CONVEX_SAME_RELATIVE_INTERIOR_CLOSURE_STRADDLE   (hash md5:d2a54df85202f2b461cfcee7df7aa484)
// not bridged: 
Theorem CONVEX_SAME_RELATIVE_INTERIOR_CLOSURE_STRADDLE : forall A:set, A <> Empty -> forall s t c= R :^: idx A, convex A s /\ convex A t -> (relative_interior A s = relative_interior A t <-> relative_interior A s c= t /\ t c= closure A s).
Admitted.

// HOL Light: Multivariate/convex.ml:13834 / RELATIVE_INTERIOR_LINEAR_IMAGE_CONVEX   (hash md5:fb9ace5ac0d174e581bc16110974b883)
// not bridged: 
Theorem RELATIVE_INTERIOR_LINEAR_IMAGE_CONVEX : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ convex M s -> relative_interior N {f x | x :e s} = {f x | x :e relative_interior M s}.
Admitted.

// HOL Light: Multivariate/convex.ml:13869 / RELATIVE_INTERIOR_LINEAR_PREIMAGE_CONVEX   (hash md5:6bd15800facfe77eaa16943468942f40)
// not bridged: 
Theorem RELATIVE_INTERIOR_LINEAR_PREIMAGE_CONVEX : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear M N f /\ (convex N s /\ ~ {x :e R :^: idx M | f x :e relative_interior N s} = Empty) -> relative_interior M {x :e R :^: idx M | f x :e s} = {x :e R :^: idx M | f x :e relative_interior N s}.
Admitted.

// HOL Light: Multivariate/convex.ml:13915 / RELATIVE_INTERIOR_SUMS   (hash md5:c97118c32982e5a827ae18d34cce4673)
// not bridged: 
Theorem RELATIVE_INTERIOR_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ convex N t -> relative_interior N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) = \/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e relative_interior N s /\ y :e relative_interior N t}.
Admitted.

// HOL Light: Multivariate/convex.ml:13933 / CLOSURE_INTERS_CONVEX   (hash md5:e9026a7bb3548750e0f1f5056e8e5764)
// not bridged: 
Theorem CLOSURE_INTERS_CONVEX : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (forall s c= R :^: idx N, s :e f -> convex N s) /\ ~ {x :e R :^: idx N | forall Y :e {{x0 :e R :^: idx N | x0 :e relative_interior N x} | x :e f}, x :e Y} = Empty -> closure N {x :e R :^: idx N | forall Y :e f, x :e Y} = {x :e R :^: idx N | forall Y :e {{x0 :e R :^: idx N | x0 :e closure N x} | x :e f}, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:13969 / CLOSURE_INTERS_CONVEX_OPEN   (hash md5:4b25bfdbc8d0abfd2898c8b3df7ba2cd)
// not bridged: 
Theorem CLOSURE_INTERS_CONVEX_OPEN : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (forall s c= R :^: idx N, s :e f -> convex N s /\ open N s) -> closure N {x :e R :^: idx N | forall Y :e f, x :e Y} = if {x :e R :^: idx N | forall Y :e f, x :e Y} = Empty then Empty else {x :e R :^: idx N | forall Y :e {{x0 :e R :^: idx N | x0 :e closure N x} | x :e f}, x :e Y}.
Admitted.

// HOL Light: Multivariate/convex.ml:13983 / CLOSURE_INTER_CONVEX   (hash md5:df1e83e8338deac5c459c0da57baab36)
// not bridged: 
Theorem CLOSURE_INTER_CONVEX : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (convex N t /\ ~ relative_interior N s :/\: relative_interior N t = Empty) -> closure N (s :/\: t) = closure N s :/\: closure N t.
Admitted.

// HOL Light: Multivariate/convex.ml:13993 / CLOSURE_INTER_CONVEX_OPEN   (hash md5:017a0d62f2bf80bca3a50a674d71bbda)
// not bridged: 
Theorem CLOSURE_INTER_CONVEX_OPEN : forall A:set, A <> Empty -> forall s t c= R :^: idx A, convex A s /\ (open A s /\ (convex A t /\ open A t)) -> closure A (s :/\: t) = if s :/\: t = Empty then Empty else closure A s :/\: closure A t.
Admitted.

// HOL Light: Multivariate/convex.ml:14001 / CLOSURE_CONVEX_INTER_SUPERSET   (hash md5:e0c6360cd9d260f849832545bf5a41b9)
// not bridged: 
Theorem CLOSURE_CONVEX_INTER_SUPERSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (~ interior N s = Empty /\ interior N s c= closure N t) -> closure N (s :/\: t) = closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14014 / CLOSURE_DYADIC_RATIONALS_IN_CONVEX_SET   (hash md5:82a2b34380c526ae17a534f09cf50a97)
// not bridged: 
Theorem CLOSURE_DYADIC_RATIONALS_IN_CONVEX_SET : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ ~ interior N s = Empty -> closure N (s :/\: \/_ n :e omega, {vector_mul N (recip_SNo (2 ^ n)) x | x :e R :^: idx N, forall i :e omega, 1 <= i /\ i <= dimindex N -> x i :e int}) = closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14024 / CLOSURE_RATIONALS_IN_CONVEX_SET   (hash md5:3f24bdb67acec0afbce774658a3c5b5b)
// not bridged: 
Theorem CLOSURE_RATIONALS_IN_CONVEX_SET : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ ~ interior N s = Empty -> closure N (s :/\: {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> x i :e rational}) = closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14033 / RELATIVE_INTERIOR_CONVEX_INTER_AFFINE   (hash md5:b1f2c395015a8f511d1743be7d8d4d45)
// not bridged: 
Theorem RELATIVE_INTERIOR_CONVEX_INTER_AFFINE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (affine N t /\ ~ interior N s :/\: t = Empty) -> relative_interior N (s :/\: t) = interior N s :/\: t.
Admitted.

// HOL Light: Multivariate/convex.ml:14081 / CONNECTED_WITH_RELATIVE_INTERIOR_OPEN_IN_CONVEX   (hash md5:d2ff18a4b046c1e7541818842e517e53)
// not bridged: 
Theorem CONNECTED_WITH_RELATIVE_INTERIOR_OPEN_IN_CONVEX : forall N:set, N <> Empty -> forall c s c= R :^: idx N, convex N c /\ (connected N s /\ s :e subtopology (R :^: idx N) (euclidean N) c) -> connected N (relative_interior N c :/\: s).
Admitted.

// HOL Light: Multivariate/convex.ml:14137 / RELATIVE_INTERIOR_CBALL_INTER_AFFINE   (hash md5:9de7435ef9ede7c791a2af22ca1e8d31)
// not bridged: 
Theorem RELATIVE_INTERIOR_CBALL_INTER_AFFINE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, affine N s /\ (a :e s /\ ~ r = 0) -> relative_interior N (cball N (a,r) :/\: s) = ball N (a,r) :/\: s.
Admitted.

// HOL Light: Multivariate/convex.ml:14155 / NONDECREASING_EXTENDS_TO_CONVEX_HULL   (hash md5:6b4fa6704f6826d83ec273e753547dd6)
// not bridged: 
Theorem NONDECREASING_EXTENDS_TO_CONVEX_HULL : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f x) <= drop (f y)) -> exists g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) /\ ((forall x y :e R :^: idx 1, x :e hull (R :^: idx 1) {x0 :e Power (R :^: idx 1) | convex 1 x0} s /\ (y :e hull (R :^: idx 1) {x0 :e Power (R :^: idx 1) | convex 1 x0} s /\ drop x <= drop y) -> drop (g x) <= drop (g y)) /\ forall x :e R :^: idx 1, x :e s -> g x = f x).
Admitted.

// HOL Light: Multivariate/convex.ml:14182 / NONDECREASING_EXTENDS_FROM_DENSE   (hash md5:e8d5af0009ab6b17ddea74bcd8e80a5d)
// not bridged: 
Theorem NONDECREASING_EXTENDS_FROM_DENSE : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, closure 1 s = R :^: idx 1 /\ (closure 1 {f x | x :e s} = R :^: idx 1 /\ (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f x) <= drop (f y))) -> exists g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) /\ ((forall x y :e R :^: idx 1, drop x <= drop y -> drop (g x) <= drop (g y)) /\ ((forall x :e R :^: idx 1, x :e s -> g x = f x) /\ (continuous_on_hl 1 1 g (R :^: idx 1) /\ {g x | x :e R :^: idx 1} = R :^: idx 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:14243 / INCREASING_EXTENDS_FROM_DENSE   (hash md5:5559714aa34738c004bb2f76848feac1)
// not bridged: 
Theorem INCREASING_EXTENDS_FROM_DENSE : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, closure 1 s = R :^: idx 1 /\ (closure 1 {f x | x :e s} = R :^: idx 1 /\ (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x < drop y) -> drop (f x) < drop (f y))) -> exists g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) /\ ((forall x y :e R :^: idx 1, drop (g x) < drop (g y) <-> drop x < drop y) /\ ((forall x :e R :^: idx 1, x :e s -> g x = f x) /\ (continuous_on_hl 1 1 g (R :^: idx 1) /\ {g x | x :e R :^: idx 1} = R :^: idx 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:14286 / BOUNDED_SEGMENT   (hash md5:d65fcecdd870e993ade40706cd28f22d)
// not bridged: 
Theorem BOUNDED_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, bounded_hl N (closed_segment N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, bounded_hl N (open_segment N (a,b)).
Admitted.

// HOL Light: Multivariate/convex.ml:14297 / SEGMENT_IMAGE_INTERVAL   (hash md5:91ee49dbb801b0857ddc548079b0ece1)
// not bridged: 
Theorem SEGMENT_IMAGE_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> (forall a b :e R :^: idx A, closed_segment A (seq_cons (a,b) seq_nil) = {vector_add A (vector_mul A (1 + - drop u) a) (vector_mul A (drop u) b) | u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}) /\ forall a b :e R :^: idx B, ~ a = b -> open_segment B (a,b) = {vector_add B (vector_mul B (1 + - drop u) a) (vector_mul B (drop u) b) | u :e open_interval 1 (vec 1 0,vec 1 1)}.
Admitted.

// HOL Light: Multivariate/convex.ml:14309 / CLOSURE_SEGMENT   (hash md5:6ae8674b4f7ed471f2198b4c7361ceda)
// not bridged: 
Theorem CLOSURE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, closure N (closed_segment N (seq_cons (a,b) seq_nil)) = closed_segment N (seq_cons (a,b) seq_nil)) /\ forall a b :e R :^: idx N, closure N (open_segment N (a,b)) = if a = b then Empty else closed_segment N (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:14331 / CLOSED_SEGMENT   (hash md5:60f106b5eec7fee0e2ca7ef5c582ce48)
// not bridged: 
Theorem CLOSED_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, closed N (closed_segment N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, closed N (open_segment N (a,b)) <-> a = b.
Admitted.

// HOL Light: Multivariate/convex.ml:14338 / COMPACT_SEGMENT   (hash md5:3f9607888306721572b40426065d7ecb)
// not bridged: 
Theorem COMPACT_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, compact N (closed_segment N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, compact N (open_segment N (a,b)) <-> a = b.
Admitted.

// HOL Light: Multivariate/convex.ml:14343 / AFFINE_HULL_SEGMENT   (hash md5:f3513899f06d09d389d4193915cb10e6)
// not bridged: 
Theorem AFFINE_HULL_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (closed_segment N (seq_cons (a,b) seq_nil)) = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b}) /\ forall a b :e R :^: idx N, hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (open_segment N (a,b)) = if a = b then Empty else hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b}.
Admitted.

// HOL Light: Multivariate/convex.ml:14353 / SEGMENT_AS_BALL   (hash md5:68db38111f35d8f2a2e05448870969fa)
// not bridged: 
Theorem SEGMENT_AS_BALL : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, closed_segment N (seq_cons (a,b) seq_nil) = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} :/\: cball N (vector_mul N (recip_SNo 2) (vector_add N a b),vector_norm N (vector_sub N b a) :/: 2)) /\ forall a b :e R :^: idx N, open_segment N (a,b) = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} :/\: ball N (vector_mul N (recip_SNo 2) (vector_add N a b),vector_norm N (vector_sub N b a) :/: 2).
Admitted.

// HOL Light: Multivariate/convex.ml:14382 / CONVEX_SEGMENT   (hash md5:6a96d773d0d0a2b376fc87e44c4ad838)
// not bridged: 
Theorem CONVEX_SEGMENT : forall A B:set, A <> Empty -> B <> Empty -> (forall a b :e R :^: idx A, convex A (closed_segment A (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx B, convex B (open_segment B (a,b)).
Admitted.

// HOL Light: Multivariate/convex.ml:14388 / RELATIVE_INTERIOR_SEGMENT   (hash md5:c587e8eaa2c40b1ea9b5b58dbcc35eaf)
// not bridged: 
Theorem RELATIVE_INTERIOR_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, relative_interior N (closed_segment N (seq_cons (a,b) seq_nil)) = if a = b then {a} else open_segment N (a,b)) /\ forall a b :e R :^: idx N, relative_interior N (open_segment N (a,b)) = open_segment N (a,b).
Admitted.

// HOL Light: Multivariate/convex.ml:14407 / OPEN_IN_SEGMENT   (hash md5:76ca9d36cd6ac152f359b97645cca504)
// not bridged: 
Theorem OPEN_IN_SEGMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, open_segment N (a,b) c= s /\ s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} (open_segment N (a,b)) -> open_segment N (a,b) :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:14415 / AFF_DIM_SEGMENT   (hash md5:e448195a75cac12f5b0808256016b61c)
// not bridged: 
Theorem AFF_DIM_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, aff_dim N (closed_segment N (seq_cons (a,b) seq_nil)) = if a = b then 0 else 1) /\ forall a b :e R :^: idx N, aff_dim N (open_segment N (a,b)) = if a = b then - 1 else 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14427 / CONVEX_SEMIOPEN_SEGMENT   (hash md5:0ad8ace5599dc0eac4b39ae1bbdbc7bc)
// not bridged: 
Theorem CONVEX_SEMIOPEN_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, convex N (closed_segment N (seq_cons (a,b) seq_nil) :\: {a})) /\ forall a b :e R :^: idx N, convex N (closed_segment N (seq_cons (a,b) seq_nil) :\: {b}).
Admitted.

// HOL Light: Multivariate/convex.ml:14454 / CONNECTED_SEMIOPEN_SEGMENT   (hash md5:1ec49849d73083670877ed90a64cfc8e)
// not bridged: 
Theorem CONNECTED_SEMIOPEN_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, connected N (closed_segment N (seq_cons (a,b) seq_nil) :\: {a})) /\ forall a b :e R :^: idx N, connected N (closed_segment N (seq_cons (a,b) seq_nil) :\: {b}).
Admitted.

// HOL Light: Multivariate/convex.ml:14459 / SEGMENT_EQ_EMPTY   (hash md5:56cfc2ad6b09457b5e8c168abf883ed6)
// not bridged: 
Theorem SEGMENT_EQ_EMPTY : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, ~ closed_segment N (seq_cons (a,b) seq_nil) = Empty) /\ forall a b :e R :^: idx N, open_segment N (a,b) = Empty <-> a = b.
Admitted.

// HOL Light: Multivariate/convex.ml:14467 / FINITE_SEGMENT   (hash md5:5f431e8e9c97932fed618c0ad4c09e4b)
// not bridged: 
Theorem FINITE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, finite (closed_segment N (seq_cons (a,b) seq_nil)) <-> a = b) /\ forall a b :e R :^: idx N, finite (open_segment N (a,b)) <-> a = b.
Admitted.

// HOL Light: Multivariate/convex.ml:14484 / SEGMENT_EQ_SING   (hash md5:27cf674eb61480c7a9ff4b1c57fc733d)
// not bridged: 
Theorem SEGMENT_EQ_SING : forall N:set, N <> Empty -> (forall a b c :e R :^: idx N, closed_segment N (seq_cons (a,b) seq_nil) = {c} <-> a = c /\ b = c) /\ forall a b c :e R :^: idx N, ~ open_segment N (a,b) = {c}.
Admitted.

// HOL Light: Multivariate/convex.ml:14495 / SEGMENT_SUBSET_RELATIVE_FRONTIER_CONVEX_GEN   (hash md5:1da68d39ff2e840d69e5c254d2be5c9b)
// not bridged: 
Theorem SEGMENT_SUBSET_RELATIVE_FRONTIER_CONVEX_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b c :e R :^: idx N, convex N s /\ (collinear N {a,b,c} /\ (~ a = b /\ (~ a = c /\ (~ b = c /\ {a,b,c} c= relative_frontier N s)))) -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {a,b,c} c= relative_frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14514 / SUBSET_SEGMENT_OPEN_CLOSED   (hash md5:f730122c0ef92313e1e21e4c1373ac3f)
// not bridged: 
Theorem SUBSET_SEGMENT_OPEN_CLOSED : forall N:set, N <> Empty -> forall a b c d :e R :^: idx N, open_segment N (a,b) c= open_segment N (c,d) <-> a = b \/ closed_segment N (seq_cons (a,b) seq_nil) c= closed_segment N (seq_cons (c,d) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:14569 / SUBSET_SEGMENT   (hash md5:693bc6ecf94c8b5666ace8a45c5bab4a)
// not bridged: 
Theorem SUBSET_SEGMENT : forall N:set, N <> Empty -> (forall a b c d :e R :^: idx N, closed_segment N (seq_cons (a,b) seq_nil) c= closed_segment N (seq_cons (c,d) seq_nil) <-> a :e closed_segment N (seq_cons (c,d) seq_nil) /\ b :e closed_segment N (seq_cons (c,d) seq_nil)) /\ ((forall a b c d :e R :^: idx N, closed_segment N (seq_cons (a,b) seq_nil) c= open_segment N (c,d) <-> a :e open_segment N (c,d) /\ b :e open_segment N (c,d)) /\ ((forall a b c d :e R :^: idx N, open_segment N (a,b) c= closed_segment N (seq_cons (c,d) seq_nil) <-> a = b \/ a :e closed_segment N (seq_cons (c,d) seq_nil) /\ b :e closed_segment N (seq_cons (c,d) seq_nil)) /\ forall a b c d :e R :^: idx N, open_segment N (a,b) c= open_segment N (c,d) <-> a = b \/ a :e closed_segment N (seq_cons (c,d) seq_nil) /\ b :e closed_segment N (seq_cons (c,d) seq_nil))).
Admitted.

// HOL Light: Multivariate/convex.ml:14594 / INTERIOR_SEGMENT   (hash md5:5387cdc54dee9b0abbb90a8dc0b895ac)
// not bridged: 
Theorem INTERIOR_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, interior N (closed_segment N (seq_cons (a,b) seq_nil)) = if 2 <= dimindex N then Empty else open_segment N (a,b)) /\ forall a b :e R :^: idx N, interior N (open_segment N (a,b)) = if 2 <= dimindex N then Empty else open_segment N (a,b).
Admitted.

// HOL Light: Multivariate/convex.ml:14622 / FRONTIER_SEGMENT   (hash md5:e858def84659444ac47f96f578c83b45)
// not bridged: 
Theorem FRONTIER_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, frontier N (closed_segment N (seq_cons (a,b) seq_nil)) = if 2 <= dimindex N then closed_segment N (seq_cons (a,b) seq_nil) else {a,b}) /\ forall a b :e R :^: idx N, frontier N (open_segment N (a,b)) = if a = b then Empty else if 2 <= dimindex N then closed_segment N (seq_cons (a,b) seq_nil) else {a,b}.
Admitted.

// HOL Light: Multivariate/convex.ml:14639 / SEGMENT_EQ   (hash md5:b21b4da801dba45716cc4ad4e5e43768)
// not bridged: 
Theorem SEGMENT_EQ : forall N:set, N <> Empty -> (forall a b c d :e R :^: idx N, closed_segment N (seq_cons (a,b) seq_nil) = closed_segment N (seq_cons (c,d) seq_nil) <-> {a,b} = {c,d}) /\ ((forall a b c d :e R :^: idx N, ~ closed_segment N (seq_cons (a,b) seq_nil) = open_segment N (c,d)) /\ ((forall a b c d :e R :^: idx N, ~ open_segment N (a,b) = closed_segment N (seq_cons (c,d) seq_nil)) /\ forall a b c d :e R :^: idx N, open_segment N (a,b) = open_segment N (c,d) <-> a = b /\ c = d \/ {a,b} = {c,d})).
Admitted.

// HOL Light: Multivariate/convex.ml:14679 / COLLINEAR_SEGMENT   (hash md5:7c30b1c08a1b29a77bcee731557ca053)
// not bridged: 
Theorem COLLINEAR_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, collinear N (closed_segment N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, collinear N (open_segment N (a,b)).
Admitted.

// HOL Light: Multivariate/convex.ml:14690 / INTER_SEGMENT   (hash md5:1546856e33089f06d6c4df5f2457ac3e)
// not bridged: 
Theorem INTER_SEGMENT : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, b :e closed_segment N (seq_cons (a,c) seq_nil) \/ ~ collinear N {a,b,c} -> closed_segment N (seq_cons (a,b) seq_nil) :/\: closed_segment N (seq_cons (b,c) seq_nil) = {b}.
Admitted.

// HOL Light: Multivariate/convex.ml:14718 / CONVEX_LINE_INTERSECTION_UNIQUE_CLOSED   (hash md5:d0bae4d0ea81baf9d632fac9a17f43fe)
// not bridged: 
Theorem CONVEX_LINE_INTERSECTION_UNIQUE_CLOSED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (closed N s /\ (a :e relative_frontier N s /\ (b :e relative_frontier N s /\ ~ open_segment N (a,b) :/\: relative_interior N s = Empty))) -> s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} = closed_segment N (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/convex.ml:14757 / CONVEX_LINE_INTERSECTION_UNIQUE_OPEN_IN   (hash md5:fd542d8d775028ab19f752ec03154da0)
// not bridged: 
Theorem CONVEX_LINE_INTERSECTION_UNIQUE_OPEN_IN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ (a :e relative_frontier N s /\ (b :e relative_frontier N s /\ ~ open_segment N (a,b) :/\: s = Empty))) -> s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} = open_segment N (a,b).
Admitted.

// HOL Light: Multivariate/convex.ml:14786 / CONVEX_LINE_INTERSECTION_UNIQUE_OPEN   (hash md5:8fe9bed278fad096ba1fefe8983f859b)
// not bridged: 
Theorem CONVEX_LINE_INTERSECTION_UNIQUE_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (open N s /\ (a :e relative_frontier N s /\ (b :e relative_frontier N s /\ ~ open_segment N (a,b) :/\: s = Empty))) -> s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} = open_segment N (a,b).
Admitted.

// HOL Light: Multivariate/convex.ml:14797 / CONVEX_LINE_INTERSECTIONS   (hash md5:1103d30a9bdc877e85dc2e445b4645f2)
// not bridged: 
Theorem CONVEX_LINE_INTERSECTIONS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (a :e relative_frontier N s /\ (b :e relative_frontier N s /\ ~ open_segment N (a,b) :/\: relative_interior N s = Empty)) -> ~ a = b /\ (closure N s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} = closed_segment N (seq_cons (a,b) seq_nil) /\ (relative_interior N s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} = open_segment N (a,b) /\ relative_frontier N s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} = {a,b})).
Admitted.

// HOL Light: Multivariate/convex.ml:14822 / CONVEX_LINE_INTERSECTIONS_ALT   (hash md5:f95b246f8500eb776289cb7e0e0fbf8d)
// not bridged: 
Theorem CONVEX_LINE_INTERSECTIONS_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (a :e relative_frontier N s /\ (b :e relative_frontier N s /\ ~ open_segment N (a,b) c= relative_frontier N s)) -> ~ a = b /\ (closure N s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} = closed_segment N (seq_cons (a,b) seq_nil) /\ (relative_interior N s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} = open_segment N (a,b) /\ relative_frontier N s :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} {a,b} = {a,b})).
Admitted.

// HOL Light: Multivariate/convex.ml:14843 / CLOSED_STRIP_COMPONENT_LE   (hash md5:dcc56b9e4fffa1bbba78d09161af1217)
// not bridged: 
Theorem CLOSED_STRIP_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, closed N {x :e R :^: idx N | abs_SNo (x k) <= a}.
Admitted.

// HOL Light: Multivariate/convex.ml:14850 / OPEN_STRIP_COMPONENT_LT   (hash md5:6885c21cac2e978115b8ff49b1a1e046)
// not bridged: 
Theorem OPEN_STRIP_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, open N {x :e R :^: idx N | abs_SNo (x k) < a}.
Admitted.

// HOL Light: Multivariate/convex.ml:14857 / INTERIOR_STRIP_COMPONENT_LE   (hash md5:e746efcc06d7f1660d56ff3c0f7a4b60)
// not bridged: 
Theorem INTERIOR_STRIP_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, interior N {x :e R :^: idx N | abs_SNo (x k) <= a} = {x :e R :^: idx N | abs_SNo (x k) < a}.
Admitted.

// HOL Light: Multivariate/convex.ml:14865 / CLOSURE_STRIP_COMPONENT_LT   (hash md5:2c11bf6a4881d29f0189122d9d0c3427)
// not bridged: 
Theorem CLOSURE_STRIP_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, closure N {x :e R :^: idx N | abs_SNo (x k) < a} = if a = 0 then Empty else {x :e R :^: idx N | abs_SNo (x k) <= a}.
Admitted.

// HOL Light: Multivariate/convex.ml:14882 / FRONTIER_STRIP_COMPONENT_LE   (hash md5:e6d3b0e65183bac112be991714a1a472)
// not bridged: 
Theorem FRONTIER_STRIP_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, frontier N {x :e R :^: idx N | abs_SNo (x k) <= a} = {x :e R :^: idx N | abs_SNo (x k) = a}.
Admitted.

// HOL Light: Multivariate/convex.ml:14888 / FRONTIER_STRIP_COMPONENT_LT   (hash md5:d4420b0e375f483963948213c6e08ebf)
// not bridged: 
Theorem FRONTIER_STRIP_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, frontier N {x :e R :^: idx N | abs_SNo (x k) < a} = if a = 0 then Empty else {x :e R :^: idx N | abs_SNo (x k) = a}.
Admitted.

// HOL Light: Multivariate/convex.ml:14900 / DENSE_COMPLEMENT_SUBSPACE   (hash md5:e873b359acc34857ecf24dfe9b6ee225)
// not bridged: 
Theorem DENSE_COMPLEMENT_SUBSPACE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, dim N t < dim N s /\ subspace N s -> closure N (s :\: t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:14944 / DENSE_COMPLEMENT_AFFINE   (hash md5:5b6c2285c11ea9894939b2724acfd880)
// not bridged: 
Theorem DENSE_COMPLEMENT_AFFINE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, aff_dim N t < aff_dim N s /\ affine N s -> closure N (s :\: t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:14958 / DENSE_COMPLEMENT_OPEN_IN_AFFINE_HULL   (hash md5:93d25388b85cee67775fecf5e8f8231e)
// not bridged: 
Theorem DENSE_COMPLEMENT_OPEN_IN_AFFINE_HULL : forall N:set, N <> Empty -> forall s t c= R :^: idx N, aff_dim N t < aff_dim N s /\ s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) -> closure N (s :\: t) = closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14974 / DENSE_COMPLEMENT_CONVEX   (hash md5:072a51b3d8529dc4c8c253faaae6b774)
// not bridged: 
Theorem DENSE_COMPLEMENT_CONVEX : forall N:set, N <> Empty -> forall s t c= R :^: idx N, aff_dim N t < aff_dim N s /\ convex N s -> closure N (s :\: t) = closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14986 / DENSE_COMPLEMENT_CONVEX_CLOSED   (hash md5:ef4db395be3c65fcbe165e0d71044bfe)
// not bridged: 
Theorem DENSE_COMPLEMENT_CONVEX_CLOSED : forall N:set, N <> Empty -> forall s t c= R :^: idx N, aff_dim N t < aff_dim N s /\ (convex N s /\ closed N s) -> closure N (s :\: t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:14997 / COMPACT_FRONTIER_LINE_LEMMA   (hash md5:fa98b5329fe9b3ce3f71a5cbf073b153)
// not bridged: 
Theorem COMPACT_FRONTIER_LINE_LEMMA : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, compact N s /\ (vec N 0 :e s /\ ~ x = vec N 0) -> exists u :e R, 0 <= u /\ (vector_mul N u x :e frontier N s /\ forall v :e R, u < v -> ~ vector_mul N v x :e s).
Admitted.

// HOL Light: Multivariate/convex.ml:15071 / STARLIKE_COMPACT_PROJECTIVE   (hash md5:c4a3821acbc6092b0c07d53ca7ad5b99)
// not bridged: 
Theorem STARLIKE_COMPACT_PROJECTIVE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, compact N s /\ (a :e relative_interior N s /\ (forall x :e R :^: idx N, x :e s -> open_segment N (a,x) c= relative_interior N s)) -> homeomorphic N N (s :\: relative_interior N s) (sphere N (a,1) :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ (homeomorphic N N s (cball N (a,1) :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ homeomorphic N N (relative_interior N s) (ball N (a,1) :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s)).
Admitted.

// HOL Light: Multivariate/convex.ml:15416 / HOMEOMORPHIC_CONVEX_COMPACT   (hash md5:7e4bba1e2838c49ec267b2858c495d96)
// not bridged: 
Theorem HOMEOMORPHIC_CONVEX_COMPACT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (compact N s /\ (~ interior N s = Empty /\ (convex N t /\ (compact N t /\ ~ interior N t = Empty)))) -> homeomorphic N N s t.
Admitted.

// HOL Light: Multivariate/convex.ml:15424 / HOMEOMORPHIC_CONVEX_COMPACT_CBALL   (hash md5:3a8496bbf3b196a9ccb4e698f9763c7c)
// not bridged: 
Theorem HOMEOMORPHIC_CONVEX_COMPACT_CBALL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall b :e R :^: idx N, forall e0 :e R, convex N s /\ (compact N s /\ (~ interior N s = Empty /\ 0 < e0)) -> homeomorphic N N s (cball N (b,e0)).
Admitted.

// HOL Light: Multivariate/convex.ml:15432 / HOMEOMORPHIC_CLOSED_INTERVALS   (hash md5:9339772e395153baaa3181244fd1f6af)
// not bridged: 
Theorem HOMEOMORPHIC_CLOSED_INTERVALS : forall N:set, N <> Empty -> forall a b c d :e R :^: idx N, ~ open_interval N (a,b) = Empty /\ ~ open_interval N (c,d) = Empty -> homeomorphic N N (closed_interval N (seq_cons (a,b) seq_nil)) (closed_interval N (seq_cons (c,d) seq_nil)).
Admitted.

// HOL Light: Multivariate/convex.ml:15444 / HOMEOMORPHIC_RELATIVELY_OPEN_CONVEX_SETS   (hash md5:b10160700b2ab38e7fbdd8add654d61b)
// not bridged: 
Theorem HOMEOMORPHIC_RELATIVELY_OPEN_CONVEX_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, convex M s /\ (s :e subtopology (R :^: idx M) (euclidean M) (hull (R :^: idx M) {x :e Power (R :^: idx M) | affine M x} s) /\ (convex N t /\ (t :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t) /\ aff_dim M s = aff_dim N t))) -> homeomorphic N M s t.
Admitted.

// HOL Light: Multivariate/convex.ml:15529 / HOMEOMORPHIC_CONVEX_OPEN_SETS   (hash md5:d1a54d5c0bd3ff1a21257104a20e8824)
// not bridged: 
Theorem HOMEOMORPHIC_CONVEX_OPEN_SETS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (open N s /\ (convex N t /\ (open N t /\ (s = Empty <-> t = Empty)))) -> homeomorphic N N s t.
Admitted.

// HOL Light: Multivariate/convex.ml:15542 / LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION_EXPLICIT   (hash md5:8f0c4e3766c72883183c546711f03968)
// not bridged: 
Theorem LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION_EXPLICIT : forall N:set, N <> Empty -> forall r :e R, forall s c= R :^: idx N, forall x y :e R :^: idx N, convex N s /\ (0 < r /\ (vec N 0 :e s /\ (ball N (vec N 0,r) :/\: hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s c= relative_interior N s /\ (x :e relative_frontier N s /\ y :e relative_frontier N s)))) -> distance N (vector_mul N (recip_SNo (vector_norm N x)) x,vector_mul N (recip_SNo (vector_norm N y)) y) <= recip_SNo r * distance N (x,y).
Admitted.

// HOL Light: Multivariate/convex.ml:15575 / LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION   (hash md5:37df831de84f01a326eb622e64f16c4a)
// not bridged: 
Theorem LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ vec N 0 :e relative_interior N s -> exists B :e R, forall x y :e R :^: idx N, x :e relative_frontier N s /\ y :e relative_frontier N s -> distance N (vector_mul N (recip_SNo (vector_norm N x)) x,vector_mul N (recip_SNo (vector_norm N y)) y) <= B * distance N (x,y).
Admitted.

// HOL Light: Multivariate/convex.ml:15592 / INVERSE_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION_EXPLICIT   (hash md5:fe83a936b62d0f637d0928dcb7f6a5a5)
// not bridged: 
Theorem INVERSE_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION_EXPLICIT : forall N:set, N <> Empty -> forall r R0 :e R, forall s c= R :^: idx N, forall x y :e R :^: idx N, convex N s /\ (0 < r /\ (vec N 0 :e s /\ (ball N (vec N 0,r) :/\: hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s c= relative_interior N s /\ (s c= cball N (vec N 0,R0) /\ (x :e relative_frontier N s /\ y :e relative_frontier N s))))) -> r :/: R0 ^ 2 * distance N (x,y) <= distance N (vector_mul N (recip_SNo (vector_norm N x)) x,vector_mul N (recip_SNo (vector_norm N y)) y).
Admitted.

// HOL Light: Multivariate/convex.ml:15931 / INVERSE_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION   (hash md5:8a6d9bb04422b1eaa123c30b5c6551d3)
// not bridged: 
Theorem INVERSE_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ (bounded_hl N s /\ vec N 0 :e relative_interior N s) -> exists B :e R, 0 < B /\ forall x y :e R :^: idx N, x :e relative_frontier N s /\ y :e relative_frontier N s -> B * distance N (x,y) <= distance N (vector_mul N (recip_SNo (vector_norm N x)) x,vector_mul N (recip_SNo (vector_norm N y)) y).
Admitted.

// HOL Light: Multivariate/convex.ml:15954 / BILIPSCHITZ_HOMEOMORPHISM_SPHERICAL_PROJECTION   (hash md5:be6b5ffe211c9aab2281ed2384e9ef9e)
// not bridged: 
Theorem BILIPSCHITZ_HOMEOMORPHISM_SPHERICAL_PROJECTION : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ (bounded_hl N s /\ vec N 0 :e relative_interior N s) -> exists g :e R :^: idx N :^: (R :^: idx N), homeomorphism N N (relative_frontier N s,sphere N (vec N 0,1) :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) (fun x :e R :^: idx N => vector_mul N (recip_SNo (vector_norm N x)) x,g) /\ ((exists B :e R, forall x y :e R :^: idx N, x :e relative_frontier N s /\ y :e relative_frontier N s -> vector_norm N (vector_sub N (vector_mul N (recip_SNo (vector_norm N x)) x) (vector_mul N (recip_SNo (vector_norm N y)) y)) <= B * vector_norm N (vector_sub N x y)) /\ exists B :e R, forall x y :e R :^: idx N, x :e sphere N (vec N 0,1) :/\: hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s /\ y :e sphere N (vec N 0,1) :/\: hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s -> vector_norm N (vector_sub N (g x) (g y)) <= B * vector_norm N (vector_sub N x y)).
Admitted.

// HOL Light: Multivariate/convex.ml:16032 / BILIPSCHITZ_HOMEOMORPHISM_RELATIVE_FRONTIERS   (hash md5:9fdffd88f310ce4d29722836d320ba8b)
// not bridged: 
Theorem BILIPSCHITZ_HOMEOMORPHISM_RELATIVE_FRONTIERS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, convex M s /\ (bounded_hl M s /\ (convex N t /\ (bounded_hl N t /\ aff_dim M s = aff_dim N t))) -> exists f :e R :^: idx N :^: (R :^: idx M), exists g :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (relative_frontier M s,relative_frontier N t) (f,g) /\ ((exists B :e R, forall x y :e R :^: idx M, x :e relative_frontier M s /\ y :e relative_frontier M s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) /\ exists B :e R, forall x y :e R :^: idx N, x :e relative_frontier N t /\ y :e relative_frontier N t -> vector_norm M (vector_sub M (g x) (g y)) <= B * vector_norm N (vector_sub N x y)).
Admitted.

// HOL Light: Multivariate/convex.ml:16221 / AFF_DIM_NONEMPTY_INTERIOR_EQ   (hash md5:77801971a621b0a2d6a947f626077bca)
// not bridged: 
Theorem AFF_DIM_NONEMPTY_INTERIOR_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> (aff_dim N s = dimindex N <-> ~ interior N s = Empty).
Admitted.

// HOL Light: Multivariate/convex.ml:16232 / AFF_DIM_BALL   (hash md5:a102fa073759f916ba3eb497b3329f47)
// not bridged: 
Theorem AFF_DIM_BALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, aff_dim N (ball N (a,r)) = if 0 < r then dimindex N else - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16241 / AFF_DIM_CBALL   (hash md5:f0e18156640ce3be453af6337b8c1d4a)
// not bridged: 
Theorem AFF_DIM_CBALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, aff_dim N (cball N (a,r)) = if 0 < r then dimindex N else if r = 0 then 0 else - 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16253 / AFF_DIM_INTERVAL   (hash md5:844b121c69bdcba1133d5411ee8fbb67)
// not bridged: 
Theorem AFF_DIM_INTERVAL : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, aff_dim N (closed_interval N (seq_cons (a,b) seq_nil)) = if closed_interval N (seq_cons (a,b) seq_nil) = Empty then - 1 else finite_cardinality {i :e omega | 1 <= i /\ (i <= dimindex N /\ a i < b i)}) /\ forall a b :e R :^: idx N, aff_dim N (open_interval N (a,b)) = if open_interval N (a,b) = Empty then - 1 else dimindex N.
Admitted.

// HOL Light: Multivariate/convex.ml:16311 / GRAPH_EMBEDS_IN_R3   (hash md5:58f6cf3d2e65362f49885ce05cf46f11)
// not bridged: 
Theorem GRAPH_EMBEDS_IN_R3 : forall A:set, A <> Empty -> forall s c= A, atleastp s R -> exists v:set -> set, (forall x :e A, v x :e R :^: idx_n 3) /\ ((forall a b :e A, a :e s /\ b :e s -> (v a = v b <-> a = b)) /\ forall a b c d :e A, ~ {v a,v b} = {v c,v d} -> closed_segment (idx_n 3) (seq_cons (v a,v b) seq_nil) :/\: closed_segment (idx_n 3) (seq_cons (v c,v d) seq_nil) c= {v a,v b} :/\: {v c,v d}).
Admitted.

// HOL Light: Multivariate/convex.ml:16436 / MIDPOINT_CONVEX_DYADIC_RATIONALS   (hash md5:14795da137354072e62d83446b014346)
// not bridged: 
Theorem MIDPOINT_CONVEX_DYADIC_RATIONALS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, (forall x y :e R :^: idx N, x :e s /\ y :e s -> midpoint N (x,y) :e s /\ f (midpoint N (x,y)) <= (f x + f y) :/: 2) -> forall n m p :e omega, forall x y :e R :^: idx N, x :e s /\ (y :e s /\ m + p = 2 ^ n) -> vector_add N (vector_mul N (m :/: 2 ^ n) x) (vector_mul N (p :/: 2 ^ n) y) :e s /\ f (vector_add N (vector_mul N (m :/: 2 ^ n) x) (vector_mul N (p :/: 2 ^ n) y)) <= m :/: 2 ^ n * f x + p :/: 2 ^ n * f y.
Admitted.

// HOL Light: Multivariate/convex.ml:16479 / CONTINUOUS_MIDPOINT_CONVEX   (hash md5:5095e3a295d79c9319987d2e4612cf72)
// not bridged: 
Theorem CONTINUOUS_MIDPOINT_CONVEX : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, continuous_on_hl N 1 (fun x:set => lift (f x)) s /\ (convex N s /\ (forall x y :e R :^: idx N, x :e s /\ y :e s -> f (midpoint N (x,y)) <= (f x + f y) :/: 2)) -> convex_on N f s.
Admitted.

// HOL Light: Multivariate/convex.ml:16548 / SEPARATING_HYPERPLANE_RELATIVE_INTERIORS   (hash md5:c7d7e0eb6fdd986028f8fba690c6e897)
// not bridged: 
Theorem SEPARATING_HYPERPLANE_RELATIVE_INTERIORS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (convex N t /\ (~ (s = Empty /\ t = R :^: idx N \/ s = R :^: idx N /\ t = Empty) /\ relative_interior N s :/\: relative_interior N t = Empty)) -> exists a :e R :^: idx N, exists b :e R, ~ a = vec N 0 /\ ((forall x :e R :^: idx N, x :e s -> dot N a x <= b) /\ forall x :e R :^: idx N, x :e t -> b <= dot N a x).
Admitted.

// HOL Light: Multivariate/convex.ml:16591 / SUPPORTING_HYPERPLANE_RELATIVE_BOUNDARY   (hash md5:efb4764891aa9b48a54565561c9aab86)
// not bridged: 
Theorem SUPPORTING_HYPERPLANE_RELATIVE_BOUNDARY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ (x :e s /\ ~ x :e relative_interior N s) -> exists a :e R :^: idx N, ~ a = vec N 0 /\ ((forall y :e R :^: idx N, y :e s -> dot N a x <= dot N a y) /\ forall y :e R :^: idx N, y :e relative_interior N s -> dot N a x < dot N a y).
Admitted.

// HOL Light: Multivariate/convex.ml:16642 / SUPPORTING_HYPERPLANE_RELATIVE_FRONTIER   (hash md5:d25f811f2cdfd1852b04ddb5dbe02745)
// not bridged: 
Theorem SUPPORTING_HYPERPLANE_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ x :e relative_frontier N s -> exists a :e R :^: idx N, ~ a = vec N 0 /\ ((forall y :e R :^: idx N, y :e closure N s -> dot N a x <= dot N a y) /\ forall y :e R :^: idx N, y :e relative_interior N s -> dot N a x < dot N a y).
Admitted.

// HOL Light: Multivariate/convex.ml:16653 / SUPPORTING_HYPERPLANE_FRONTIER   (hash md5:a2b1f47a3b109253544b32f046b14459)
// not bridged: 
Theorem SUPPORTING_HYPERPLANE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, convex N s /\ x :e frontier N s -> exists a :e R :^: idx N, ~ a = vec N 0 /\ forall y :e R :^: idx N, y :e closure N s -> dot N a x <= dot N a y.
Admitted.

// HOL Light: Multivariate/convex.ml:16675 / UNBOUNDED_CONVEX_CLOSED_CONTAINS_RAY   (hash md5:da3e3d3d21731869144e1c8a93caea17)
// not bridged: 
Theorem UNBOUNDED_CONVEX_CLOSED_CONTAINS_RAY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, convex N s /\ (~ bounded_hl N s /\ (closed N s /\ a :e s)) -> exists l :e R :^: idx N, ~ l = vec N 0 /\ forall t :e R, 0 <= t -> vector_add N a (vector_mul N t l) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:16723 / CONVEX_CLOSED_CONTAINS_SAME_RAY   (hash md5:41042a01d9cea2421029308f0c8012e3)
// not bridged: 
Theorem CONVEX_CLOSED_CONTAINS_SAME_RAY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b l :e R :^: idx N, convex N s /\ (closed N s /\ (b :e s /\ (forall t :e R, 0 <= t -> vector_add N a (vector_mul N t l) :e s))) -> forall t :e R, 0 <= t -> vector_add N b (vector_mul N t l) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:16756 / UNBOUNDED_CONVEX_CLOSED_CONTAINS_RAYS   (hash md5:641e09e9eb13619bf4de5d4c46a77003)
// not bridged: 
Theorem UNBOUNDED_CONVEX_CLOSED_CONTAINS_RAYS : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ (~ bounded_hl N s /\ closed N s) -> exists l :e R :^: idx N, ~ l = vec N 0 /\ forall a :e R :^: idx N, forall t :e R, a :e s /\ 0 <= t -> vector_add N a (vector_mul N t l) :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:16766 / RELATIVE_INTERIOR_UNBOUNDED_CONVEX_CONTAINS_RAY   (hash md5:c6de8655f8ee5adeff27e34a7a8ed568)
// not bridged: 
Theorem RELATIVE_INTERIOR_UNBOUNDED_CONVEX_CONTAINS_RAY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, convex N s /\ (~ bounded_hl N s /\ a :e relative_interior N s) -> exists l :e R :^: idx N, ~ l = vec N 0 /\ forall t :e R, 0 <= t -> vector_add N a (vector_mul N t l) :e relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:16787 / RELATIVE_INTERIOR_CONVEX_CONTAINS_SAME_RAY   (hash md5:046694221bbb16fa8d325ea9fe725b40)
// not bridged: 
Theorem RELATIVE_INTERIOR_CONVEX_CONTAINS_SAME_RAY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b l :e R :^: idx N, convex N s /\ (b :e relative_interior N s /\ (forall t :e R, 0 <= t -> vector_add N a (vector_mul N t l) :e relative_interior N s)) -> forall t :e R, 0 <= t -> vector_add N b (vector_mul N t l) :e relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:16807 / RELATIVE_INTERIOR_UNBOUNDED_CONVEX_CONTAINS_RAYS   (hash md5:e9bdea76acce14a22d6586910089e3fc)
// not bridged: 
Theorem RELATIVE_INTERIOR_UNBOUNDED_CONVEX_CONTAINS_RAYS : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ ~ bounded_hl N s -> exists l :e R :^: idx N, ~ l = vec N 0 /\ forall a :e R :^: idx N, forall t :e R, a :e relative_interior N s /\ 0 <= t -> vector_add N a (vector_mul N t l) :e relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:16820 / CONVEX_TRIPLE_RELATIVE_FRONTIER   (hash md5:38078b6f4c167787b9aeb099a71b60b0)
// not bridged: 
Theorem CONVEX_TRIPLE_RELATIVE_FRONTIER : forall s c= R :^: idx_n 2, forall a b c d :e R :^: idx_n 2, forall e0 :e R, convex (idx_n 2) s /\ ({a,b,c} c= relative_frontier (idx_n 2) s /\ (~ a = b /\ (~ a = c /\ (~ b = c /\ (dot (idx_n 2) d a = e0 /\ (dot (idx_n 2) d b = e0 /\ dot (idx_n 2) d c = e0)))))) -> s c= {x :e R :^: idx_n 2 | dot (idx_n 2) d x <= e0} \/ s c= {x :e R :^: idx_n 2 | e0 <= dot (idx_n 2) d x}.
Admitted.

// HOL Light: Multivariate/convex.ml:16916 / EXPLICIT_SUBSET_RELATIVE_INTERIOR_CONVEX_HULL   (hash md5:d3bc4de59acc1d6dc5403ab1e2964f94)
// not bridged: 
Theorem EXPLICIT_SUBSET_RELATIVE_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 < u x /\ u x < 1) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y))} c= relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:17031 / EXPLICIT_SUBSET_RELATIVE_INTERIOR_CONVEX_HULL_MINIMAL   (hash md5:5ace7de4d881e390776f5647d7627a66)
// not bridged: 
Theorem EXPLICIT_SUBSET_RELATIVE_INTERIOR_CONVEX_HULL_MINIMAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 < u x) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y))} c= relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:17065 / RELATIVE_INTERIOR_CONVEX_HULL_EXPLICIT   (hash md5:ab8741a5259aedbb5e3673229cfbc9b3)
// not bridged: 
Theorem RELATIVE_INTERIOR_CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 < u x) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y))}.
Admitted.

// HOL Light: Multivariate/convex.ml:17138 / EXPLICIT_SUBSET_INTERIOR_CONVEX_HULL   (hash md5:7807af617910fb00b98d5c45fc4d94cf)
// not bridged: 
Theorem EXPLICIT_SUBSET_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N -> {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 < u x /\ u x < 1) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y))} c= interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:17149 / EXPLICIT_SUBSET_INTERIOR_CONVEX_HULL_MINIMAL   (hash md5:0b4f9d62e5676ea1829fa8efd82293c9)
// not bridged: 
Theorem EXPLICIT_SUBSET_INTERIOR_CONVEX_HULL_MINIMAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s = R :^: idx N -> {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 < u x) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y))} c= interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:17160 / INTERIOR_CONVEX_HULL_EXPLICIT_MINIMAL   (hash md5:940c2da795789e753f455463551daaec)
// not bridged: 
Theorem INTERIOR_CONVEX_HULL_EXPLICIT_MINIMAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = if finite_cardinality s <= dimindex N then Empty else {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 < u x) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y))}.
Admitted.

// HOL Light: Multivariate/convex.ml:17180 / INTERIOR_CONVEX_HULL_EXPLICIT   (hash md5:2939f2dab5e7510a252724cd1b7c62f8)
// not bridged: 
Theorem INTERIOR_CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = if finite_cardinality s <= dimindex N then Empty else {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 < u x /\ u x < 1) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y))}.
Admitted.

// HOL Light: Multivariate/convex.ml:17220 / DISJOINT_RELATIVE_INTERIOR_CONVEX_HULL   (hash md5:ad668f637a8b2fc8f09eef9a7cff8917)
// not bridged: 
Theorem DISJOINT_RELATIVE_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s /\ ~ (exists a :e R :^: idx N, s = {a}) -> relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) :/\: s = Empty.
Admitted.

// HOL Light: Multivariate/convex.ml:17244 / INTERIOR_CONVEX_HULL_3_MINIMAL   (hash md5:7d18efed2bed9ae3d056a7c063c87fd5)
// not bridged: 
Theorem INTERIOR_CONVEX_HULL_3_MINIMAL : forall a b c :e R :^: idx_n 2, ~ collinear (idx_n 2) {a,b,c} -> interior (idx_n 2) (hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | convex (idx_n 2) x} {a,b,c}) = {v :e R :^: idx_n 2 | exists x y z :e R, 0 < x /\ (0 < y /\ (0 < z /\ (x + y + z = 1 /\ vector_add (idx_n 2) (vector_mul (idx_n 2) x a) (vector_add (idx_n 2) (vector_mul (idx_n 2) y b) (vector_mul (idx_n 2) z c)) = v)))}.
Admitted.

// HOL Light: Multivariate/convex.ml:17265 / INTERIOR_CONVEX_HULL_3   (hash md5:725cf6fed1a507968eb689d7766f635f)
// not bridged: 
Theorem INTERIOR_CONVEX_HULL_3 : forall a b c :e R :^: idx_n 2, ~ collinear (idx_n 2) {a,b,c} -> interior (idx_n 2) (hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | convex (idx_n 2) x} {a,b,c}) = {v :e R :^: idx_n 2 | exists x y z :e R, 0 < x /\ (x < 1 /\ (0 < y /\ (y < 1 /\ (0 < z /\ (z < 1 /\ (x + y + z = 1 /\ vector_add (idx_n 2) (vector_mul (idx_n 2) x a) (vector_add (idx_n 2) (vector_mul (idx_n 2) y b) (vector_mul (idx_n 2) z c)) = v))))))}.
Admitted.

// HOL Light: Multivariate/convex.ml:17283 / CLOSURE_CONVEX_HULL   (hash md5:b731268bb95139aa3e8a2394f84f094b)
// not bridged: 
Theorem CLOSURE_CONVEX_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, compact A s -> closure A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s) = hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:17287 / RELATIVE_FRONTIER_CONVEX_HULL_EXPLICIT   (hash md5:486a306c3aa46fcb0ad5e9588a969c79)
// not bridged: 
Theorem RELATIVE_FRONTIER_CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> relative_frontier N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ ((exists x :e R :^: idx N, x :e s /\ u x = 0) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y)))}.
Admitted.

// HOL Light: Multivariate/convex.ml:17322 / FRONTIER_CONVEX_HULL_EXPLICIT   (hash md5:3e0027e921c1daccb7307d88f78a51a1)
// not bridged: 
Theorem FRONTIER_CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> frontier N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ ((dimindex N < finite_cardinality s -> (exists x :e R :^: idx N, x :e s /\ u x = 0)) /\ (finsum s u = 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y)))}.
Admitted.

// HOL Light: Multivariate/convex.ml:17346 / RELATIVE_FRONTIER_OF_CONVEX_HULL   (hash md5:840df54bc030559b9588158b58bff46a)
// not bridged: 
Theorem RELATIVE_FRONTIER_OF_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> relative_frontier N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = Union {hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\: {a}) | a :e R :^: idx N, a :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:17372 / FRONTIER_CONVEX_HULL_CASES   (hash md5:c1ebe6f47c3f8de711119a9421a66fe7)
// not bridged: 
Theorem FRONTIER_CONVEX_HULL_CASES : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s -> frontier N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = if finite_cardinality s <= dimindex N then hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s else Union {hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (s :\: {a}) | a :e R :^: idx N, a :e s}.
Admitted.

// HOL Light: Multivariate/convex.ml:17393 / IN_FRONTIER_CONVEX_HULL   (hash md5:96bc3df42ed801b532f78ce97ff7db6e)
// not bridged: 
Theorem IN_FRONTIER_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, finite s /\ (finite_cardinality s <= dimindex N + 1 /\ x :e s) -> x :e frontier N (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s).
Admitted.

// HOL Light: Multivariate/convex.ml:17422 / NOT_IN_INTERIOR_CONVEX_HULL   (hash md5:c8cb31025a8608f0db6adfb07a55f29e)
// not bridged: 
Theorem NOT_IN_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, finite s /\ (finite_cardinality s <= dimindex N + 1 /\ x :e s) -> ~ x :e interior N (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | convex N x0} s).
Admitted.

// HOL Light: Multivariate/convex.ml:17430 / INTERIOR_CONVEX_HULL_EQ_EMPTY   (hash md5:2b8e6c7166bd4d88616a972de631a6c3)
// not bridged: 
Theorem INTERIOR_CONVEX_HULL_EQ_EMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, equip s (dimindex N + 1) -> (interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s) = Empty <-> affine_dependent N s).
Admitted.

// HOL Light: Multivariate/convex.ml:17462 / SIMPLEX_EXPLICIT   (hash md5:3197ca84254464871672f715cafe6b5d)
// not bridged: 
Theorem SIMPLEX_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ ~ vec N 0 :e s -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin s (vec N 0)) = {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((forall x :e R :^: idx N, x :e s -> 0 <= u x) /\ (finsum s u <= 1 /\ vsum (R :^: idx N) N s (fun x:set => vector_mul N (u x) x) = y))}.
Admitted.

// HOL Light: Multivariate/convex.ml:17487 / STD_SIMPLEX   (hash md5:4f2fbd1a0a003fc7762979487d5c5bf0)
// not bridged: 
Theorem STD_SIMPLEX : forall N:set, N <> Empty -> hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin {basis N i | i :e omega, 1 <= i /\ i <= dimindex N} (vec N 0)) = {x :e R :^: idx N | (forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 <= x i) /\ finsum (idx N) (fun i:set => x i) <= 1}.
Admitted.

// HOL Light: Multivariate/convex.ml:17523 / INTERIOR_STD_SIMPLEX   (hash md5:3f260fdb55d116cfcdbf746cb3fb64c3)
// not bridged: 
Theorem INTERIOR_STD_SIMPLEX : forall N:set, N <> Empty -> interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin {basis N i | i :e omega, 1 <= i /\ i <= dimindex N} (vec N 0))) = {x :e R :^: idx N | (forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 < x i) /\ finsum (idx N) (fun i:set => x i) < 1}.
Admitted.

// HOL Light: Multivariate/convex.ml:17589 / barycentre   (hash md5:7e8ebf0fbdf1ac7b4d3c8f8b382c1895)
// not bridged: 
Theorem barycentre_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, barycentre A s = if finite s then vsum (R :^: idx A) A s (vector_mul A (recip_SNo (finite_cardinality s))) else vec A 0.
Admitted.

// HOL Light: Multivariate/convex.ml:17593 / BARYCENTRE_0   (hash md5:4c0650430f1604e47a34be512720fed3)
// not bridged: 
Theorem BARYCENTRE_0 : forall A:set, A <> Empty -> barycentre A Empty = vec A 0.
Admitted.

// HOL Light: Multivariate/convex.ml:17597 / BARYCENTRE_1   (hash md5:8036748c55ad74a47730da079863f5fc)
// not bridged: 
Theorem BARYCENTRE_1 : forall N:set, N <> Empty -> forall a :e R :^: idx N, barycentre N {a} = a.
Admitted.

// HOL Light: Multivariate/convex.ml:17602 / BARYCENTRE_2   (hash md5:8e8f7aa0471040127a095ed45b1ce781)
// not bridged: 
Theorem BARYCENTRE_2 : forall N:set, N <> Empty -> forall a b :e R :^: idx N, barycentre N {a,b} = midpoint N (a,b).
Admitted.

// HOL Light: Multivariate/convex.ml:17610 / BARYCENTRE_IN_RELATIVE_INTERIOR   (hash md5:27b711c257eaaec6e105df141373e399)
// not bridged: 
Theorem BARYCENTRE_IN_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ ~ s = Empty -> barycentre N s :e relative_interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/convex.ml:17622 / BARYCENTRE_IN_CONVEX_HULL   (hash md5:1b0b8b79423dd95da216afcd2e56a70f)
// not bridged: 
Theorem BARYCENTRE_IN_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ ~ s = Empty -> barycentre N s :e hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:17628 / BARYCENTRE_IN_AFFINE_HULL   (hash md5:2ef06d22bd5ba54790b75fecd9735860)
// not bridged: 
Theorem BARYCENTRE_IN_AFFINE_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ ~ s = Empty -> barycentre N s :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s.
Admitted.

// HOL Light: Multivariate/convex.ml:17634 / BARYCENTRE_TRANSLATION   (hash md5:216dec7d5c91ced35813743ffc33ae01)
// not bridged: 
Theorem BARYCENTRE_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, barycentre N {vector_add N a x | x :e s} = vector_add N (if finite s /\ ~ s = Empty then a else vec N 0) (barycentre N s).
Admitted.

// HOL Light: Multivariate/convex.ml:17651 / BARYCENTRE_LINEAR_IMAGE   (hash md5:5882ad4d18988e494f6cd948d11e657e)
// not bridged: 
Theorem BARYCENTRE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> barycentre N {f x | x :e s} = f (barycentre M s).
Admitted.

// HOL Light: Multivariate/convex.ml:17664 / BARYCENTRE_NOT_IN_SET   (hash md5:dc2b46ae48eebcdbc0440b38523d1d74)
// not bridged: 
Theorem BARYCENTRE_NOT_IN_SET : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ affine_dependent N s /\ ~ (exists a :e R :^: idx N, s = {a}) -> ~ barycentre N s :e s.
Admitted.

// HOL Light: Multivariate/convex.ml:17678 / REGULAR_POLYTOPE_DIST_BARYCENTRE   (hash md5:46e4620c06503bd09869b6f08750632a)
// not bridged: 
Theorem REGULAR_POLYTOPE_DIST_BARYCENTRE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e omega, forall r :e R, equip s n /\ (forall x y :e R :^: idx N, x :e s /\ (y :e s /\ ~ x = y) -> distance N (x,y) = r) -> forall x :e R :^: idx N, x :e s -> distance N (barycentre N s,x) = (if 0 <= (n + - 1) :/: (2 * n) then sqrt_SNo_nonneg ((n + - 1) :/: (2 * n)) else - sqrt_SNo_nonneg (- (n + - 1) :/: (2 * n))) * r.
Admitted.

// HOL Light: Multivariate/convex.ml:17739 / REGULAR_POLYTOPE_EXISTS   (hash md5:ee471c8ccb3d26bc510b024ea3b294ee)
// not bridged: 
Theorem REGULAR_POLYTOPE_EXISTS : forall N:set, N <> Empty -> forall r :e R, forall s c= R :^: idx N, forall n :e omega, n <= aff_dim N s + 1 /\ 0 < r -> exists k c= R :^: idx N, equip k n /\ (~ affine_dependent N k /\ (k c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ forall x y :e R :^: idx N, x :e k /\ (y :e k /\ ~ x = y) -> distance N (x,y) = r)).
Admitted.

// HOL Light: Multivariate/convex.ml:17836 / REGULAR_POLYTOPE_WITH_BARYCENTRE_EXISTS_ALT   (hash md5:39fd364dde154273962e3c57f5215600)
// not bridged: 
Theorem REGULAR_POLYTOPE_WITH_BARYCENTRE_EXISTS_ALT : forall N:set, N <> Empty -> forall r :e R, forall s c= R :^: idx N, forall a :e R :^: idx N, forall n :e omega, n <= aff_dim N s + 1 /\ (0 < r /\ (a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ ~ n = 0)) -> exists k c= R :^: idx N, equip k n /\ (~ affine_dependent N k /\ (k c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ (barycentre N k = a /\ ((forall x y :e R :^: idx N, x :e k /\ (y :e k /\ ~ x = y) -> distance N (x,y) = r) /\ forall x :e R :^: idx N, x :e k -> distance N (a,x) = (if 0 <= (n + - 1) :/: (2 * n) then sqrt_SNo_nonneg ((n + - 1) :/: (2 * n)) else - sqrt_SNo_nonneg (- (n + - 1) :/: (2 * n))) * r)))).
Admitted.

// HOL Light: Multivariate/convex.ml:17869 / REGULAR_POLYTOPE_WITH_BARYCENTRE_EXISTS   (hash md5:ea8f300c3235ad766915ebc09ddefa0d)
// not bridged: 
Theorem REGULAR_POLYTOPE_WITH_BARYCENTRE_EXISTS : forall N:set, N <> Empty -> forall r :e R, forall s c= R :^: idx N, forall a :e R :^: idx N, forall n :e omega, n <= aff_dim N s + 1 /\ (0 < r /\ (a :e hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ 1 < n)) -> exists k c= R :^: idx N, equip k n /\ (~ affine_dependent N k /\ (k c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ (barycentre N k = a /\ ((forall x :e R :^: idx N, x :e k -> distance N (a,x) = r) /\ forall x y :e R :^: idx N, x :e k /\ (y :e k /\ ~ x = y) -> distance N (x,y) = (if 0 <= (2 * n) :/: (n + - 1) then sqrt_SNo_nonneg ((2 * n) :/: (n + - 1)) else - sqrt_SNo_nonneg (- (2 * n) :/: (n + - 1))) * r)))).
Admitted.

// HOL Light: Multivariate/convex.ml:17897 / CONVEX_IMP_LOCALLY_BOUNDED   (hash md5:ff1ba4652555ab9d26d283dde16618e2)
// not bridged: 
Theorem CONVEX_IMP_LOCALLY_BOUNDED : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall a :e R :^: idx N, convex_on N f s /\ a :e relative_interior N s -> exists e0 B :e R, 0 < e0 /\ (0 < B /\ (cball N (a,e0) :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s c= s /\ forall x :e R :^: idx N, x :e cball N (a,e0) :/\: hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s -> abs_SNo (f x) <= B)).
Admitted.

// HOL Light: Multivariate/convex.ml:17996 / CONVEX_IMP_LOCALLY_LIPSCHITZ   (hash md5:f142344e38eaa3ed0b3f10e7f5e6b853)
// not bridged: 
Theorem CONVEX_IMP_LOCALLY_LIPSCHITZ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, forall a :e R :^: idx N, convex_on N f s /\ a :e relative_interior N s -> exists e0 B :e R, 0 < e0 /\ (0 < B /\ (cball N (a,e0) :/\: hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s c= s /\ forall x y :e R :^: idx N, x :e cball N (a,e0) :/\: hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s /\ y :e cball N (a,e0) :/\: hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s -> abs_SNo (f x + - f y) <= B * vector_norm N (vector_sub N x y))).
Admitted.

// HOL Light: Multivariate/convex.ml:18089 / CONVEX_ON_CONTINUOUS_ON_RELATIVE_INTERIOR   (hash md5:cbf52dfdb0740baad0071ccfc782a753)
// not bridged: 
Theorem CONVEX_ON_CONTINUOUS_ON_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, convex_on N f s -> continuous_on_hl N 1 (fun x:set => lift (f x)) (relative_interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:18112 / CONVEX_ON_CONTINUOUS   (hash md5:49869533e1e93f80205439bd546e131a)
// not bridged: 
Theorem CONVEX_ON_CONTINUOUS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, open N s /\ convex_on N f s -> continuous_on_hl N 1 (fun x:set => lift (f x)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:18117 / CONVEX_IMP_LIPSCHITZ   (hash md5:090762ccadeb3e3deaa0c7aad66b1d8a)
// not bridged: 
Theorem CONVEX_IMP_LIPSCHITZ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s t c= R :^: idx N, convex_on N f t /\ (compact N s /\ s c= relative_interior N t) -> exists B :e R, 0 < B /\ forall x y :e R :^: idx N, x :e s /\ y :e s -> abs_SNo (f x + - f y) <= B * vector_norm N (vector_sub N x y).
Admitted.

// HOL Light: Multivariate/convex.ml:18212 / CONVEX_BOUNDS_LEMMA   (hash md5:07ad2e5ad00a655791dff09a5dee3087)
// not bridged: 
Theorem CONVEX_BOUNDS_LEMMA : forall N:set, N <> Empty -> forall b :e R, forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall x :e R :^: idx N, forall e0 :e R, convex_on N f (cball N (x,e0)) /\ (forall y :e R :^: idx N, y :e cball N (x,e0) -> f y <= b) -> forall y :e R :^: idx N, y :e cball N (x,e0) -> abs_SNo (f y) <= b + 2 * abs_SNo (f x).
Admitted.

// HOL Light: Multivariate/convex.ml:18241 / CONVEX_IMP_BOUNDED_ON_INTERVAL   (hash md5:b672696c32455def26f933742341c9bf)
// not bridged: 
Theorem CONVEX_IMP_BOUNDED_ON_INTERVAL : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R) -> forall a b :e R :^: idx 1, convex_on 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) -> exists B :e R, 0 < B /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> abs_SNo (f x) <= B.
Admitted.

// HOL Light: Multivariate/convex.ml:18267 / CONVEX_IMP_PIECEWISE_MONOTONE   (hash md5:3466a08c4dd51edc4cbc587971154e4c)
// not bridged: 
Theorem CONVEX_IMP_PIECEWISE_MONOTONE : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R) -> forall s c= R :^: idx 1, convex_on 1 f s /\ is_interval 1 s -> (forall x y :e R :^: idx 1, x :e interior 1 s /\ (y :e interior 1 s /\ drop x <= drop y) -> f x <= f y) \/ ((forall x y :e R :^: idx 1, x :e interior 1 s /\ (y :e interior 1 s /\ drop x <= drop y) -> f y <= f x) \/ exists a :e R :^: idx 1, a :e interior 1 s /\ ((forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ (drop x <= drop y /\ drop y <= drop a)) -> f y <= f x) /\ forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ (drop a <= drop x /\ drop x <= drop y)) -> f x <= f y)).
Admitted.

