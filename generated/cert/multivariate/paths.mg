// hol2mg certification module (private): shard paths of profile multivariate.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Multivariate/paths.ml:15 / path   (hash md5:3e38207d4ba14c90a8c86f79428dfc66)
// not bridged: 
Theorem path_thm : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (path N g <-> continuous_on_hl 1 N g (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil))).
Admitted.

// HOL Light: Multivariate/paths.ml:18 / pathstart   (hash md5:b8ae256ecb50a0a77ca7e6a3b6d1a2b8)
// not bridged: 
Theorem pathstart_thm : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> pathstart N g = g (vec 1 0).
Admitted.

// HOL Light: Multivariate/paths.ml:21 / pathfinish   (hash md5:410aebb7bed48d26d5beef36d8ace92a)
// not bridged: 
Theorem pathfinish_thm : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> pathfinish N g = g (vec 1 1).
Admitted.

// HOL Light: Multivariate/paths.ml:24 / path_image   (hash md5:12410178999d897c85e054eebfcb1a6b)
// not bridged: 
Theorem path_image_thm : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> path_image N g = {g x | x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}.
Admitted.

// HOL Light: Multivariate/paths.ml:27 / reversepath   (hash md5:da91d231868e71218cd858bca980d9d6)
// not bridged: 
Theorem reversepath_thm : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall x :e R :^: idx 1, reversepath N g x = g (vector_sub 1 (vec 1 1) x).
Admitted.

// HOL Light: Multivariate/paths.ml:30 / joinpaths   (hash md5:6c24f16b1ab64b13b12edf075e77c00e)
// not bridged: 
Theorem joinpaths : forall A:set, A <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e A) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e A) -> forall x :e R :^: idx 1, poly_add A g1 g2 x = if drop x <= 1 :/: 2 then g1 (vector_mul 1 2 x) else g2 (vector_sub 1 (vector_mul 1 2 x) (vec 1 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:34 / simple_path   (hash md5:9d622dbe43f160d5f520faf5829ba651)
// not bridged: 
Theorem simple_path_thm : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (simple_path N g <-> path N g /\ forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ g x = g y) -> x = y \/ (x = vec 1 0 /\ y = vec 1 1 \/ x = vec 1 1 /\ y = vec 1 0)).
Admitted.

// HOL Light: Multivariate/paths.ml:42 / arc   (hash md5:85c5c4d5d22aeadca0a6ce98137f1bb1)
// not bridged: 
Theorem arc_thm : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (arc N g <-> path N g /\ forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ g x = g y) -> x = y).
Admitted.

// HOL Light: Multivariate/paths.ml:54 / PATH_IN_EUCLIDEAN   (hash md5:2862b5e1f6857e9e88eccd17bcdb655a)
// not bridged: 
Theorem PATH_IN_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall g:set -> set, (forall x :e R, g x :e R :^: idx N) -> (path_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) g <-> path N (fun x:set => g (drop x)) /\ path_image N (fun x:set => g (drop x)) c= s).
Admitted.

// HOL Light: Multivariate/paths.ml:77 / PATH_EUCLIDEAN   (hash md5:e97c4225669045d34c9f5e1654984819)
// not bridged: 
Theorem PATH_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (path N g /\ path_image N g c= s <-> path_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) (fun x:set => g (lift x))).
Admitted.

// HOL Light: Multivariate/paths.ml:84 / PATH_PATH_IN   (hash md5:f701cb90b4d0133dbb8cdc97856d2ac7)
// not bridged: 
Theorem PATH_PATH_IN : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (path N g <-> path_in (R :^: idx N) (euclidean N) (fun x:set => g (lift x))).
Admitted.

// HOL Light: Multivariate/paths.ml:94 / PATH_EQ   (hash md5:9d50aac8fad5f8c19643c7e1e9310c50)
// not bridged: 
Theorem PATH_EQ : forall A:set, A <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p t = q t) /\ path A p -> path A q.
Admitted.

// HOL Light: Multivariate/paths.ml:99 / PATH_CONTINUOUS_IMAGE   (hash md5:b7ef0f039b879bd813b368cc84cae32e)
// not bridged: 
Theorem PATH_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> path M g /\ continuous_on_hl M N f (path_image M g) -> path N (fun x:set => f (g x)).
Admitted.

// HOL Light: Multivariate/paths.ml:104 / PATH_TRANSLATION_EQ   (hash md5:79d409b25ae243699fb59d19777edaf0)
// not bridged: 
Theorem PATH_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (path N (fun x:set => vector_add N a (g x)) <-> path N g).
Admitted.

// HOL Light: Multivariate/paths.ml:116 / PATH_LINEAR_IMAGE_EQ   (hash md5:76c92445c91d5b605513b60754675b0d)
// not bridged: 
Theorem PATH_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (path N (fun x:set => f (g x)) <-> path M g).
Admitted.

// HOL Light: Multivariate/paths.ml:132 / PATHSTART_TRANSLATION   (hash md5:c9d211ee2cab94ab1a29824b895c4e91)
// not bridged: 
Theorem PATHSTART_TRANSLATION : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> pathstart A (fun x:set => vector_add A a (g x)) = vector_add A a (pathstart A g).
Admitted.

// HOL Light: Multivariate/paths.ml:138 / PATHSTART_LINEAR_IMAGE_EQ   (hash md5:48f10ffa03367f3f5462df952ba2f604)
// not bridged: 
Theorem PATHSTART_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx B) -> linear B A f -> pathstart A (fun x:set => f (g x)) = f (pathstart B g).
Admitted.

// HOL Light: Multivariate/paths.ml:144 / PATHFINISH_TRANSLATION   (hash md5:c9ff6c6884c03a6e0d198d2227b543d4)
// not bridged: 
Theorem PATHFINISH_TRANSLATION : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> pathfinish A (fun x:set => vector_add A a (g x)) = vector_add A a (pathfinish A g).
Admitted.

// HOL Light: Multivariate/paths.ml:150 / PATHFINISH_LINEAR_IMAGE   (hash md5:bc17bb8e8dc7efaaff4edeabdaa58190)
// not bridged: 
Theorem PATHFINISH_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx B) -> linear B A f -> pathfinish A (fun x:set => f (g x)) = f (pathfinish B g).
Admitted.

// HOL Light: Multivariate/paths.ml:156 / PATH_IMAGE_TRANSLATION   (hash md5:27efbd1bebb15badded77c84bf28a6fd)
// not bridged: 
Theorem PATH_IMAGE_TRANSLATION : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> path_image A (fun x:set => vector_add A a (g x)) = {vector_add A a x | x :e path_image A g}.
Admitted.

// HOL Light: Multivariate/paths.ml:162 / PATH_IMAGE_LINEAR_IMAGE   (hash md5:25996f792b68b91f5960fcfee8fd0039)
// not bridged: 
Theorem PATH_IMAGE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx B) -> linear B A f -> path_image A (fun x:set => f (g x)) = {f x | x :e path_image B g}.
Admitted.

// HOL Light: Multivariate/paths.ml:168 / REVERSEPATH_TRANSLATION   (hash md5:3852fac687d957a3aeb3363ecda65946)
// not bridged: 
Theorem REVERSEPATH_TRANSLATION : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall x :e R :^: idx 1, reversepath A (fun x:set => vector_add A a (g x)) x = vector_add A a (reversepath A g x).
Admitted.

// HOL Light: Multivariate/paths.ml:174 / REVERSEPATH_LINEAR_IMAGE   (hash md5:281e0fb0604ee3a541e5dbbb7ff78cc1)
// not bridged: 
Theorem REVERSEPATH_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx B) -> linear B A f -> forall x :e R :^: idx 1, reversepath A (fun x:set => f (g x)) x = f (reversepath B g x).
Admitted.

// HOL Light: Multivariate/paths.ml:180 / JOINPATHS_TRANSLATION   (hash md5:c4a25f19d86b4aec0bd94de73e9639a9)
// not bridged: 
Theorem JOINPATHS_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> forall x :e R :^: idx 1, poly_add (R :^: idx N) (fun x:set => vector_add N a (g1 x)) (fun x:set => vector_add N a (g2 x)) x = vector_add N a (poly_add (R :^: idx N) g1 g2 x).
Admitted.

// HOL Light: Multivariate/paths.ml:188 / JOINPATHS_LINEAR_IMAGE   (hash md5:5e2bf71423a91b24ed689fa93ece6287)
// not bridged: 
Theorem JOINPATHS_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx A) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx A) -> linear A B f -> forall x :e R :^: idx 1, poly_add (R :^: idx B) (fun x:set => f (g1 x)) (fun x:set => f (g2 x)) x = f (poly_add (R :^: idx A) g1 g2 x).
Admitted.

// HOL Light: Multivariate/paths.ml:195 / SIMPLE_PATH_TRANSLATION_EQ   (hash md5:ef7679003de262f43f2e8e4feec1e6d8)
// not bridged: 
Theorem SIMPLE_PATH_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (simple_path N (fun x:set => vector_add N a (g x)) <-> simple_path N g).
Admitted.

// HOL Light: Multivariate/paths.ml:202 / SIMPLE_PATH_LINEAR_IMAGE_EQ   (hash md5:c55ba9c0bafa738ca60a40d3a7fdd22f)
// not bridged: 
Theorem SIMPLE_PATH_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (simple_path N (fun x:set => f (g x)) <-> simple_path M g).
Admitted.

// HOL Light: Multivariate/paths.ml:212 / ARC_TRANSLATION_EQ   (hash md5:bdd661fabbde88d8613c9c44f8a85351)
// not bridged: 
Theorem ARC_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (arc N (fun x:set => vector_add N a (g x)) <-> arc N g).
Admitted.

// HOL Light: Multivariate/paths.ml:219 / ARC_LINEAR_IMAGE_EQ   (hash md5:79494cf64f6412318b077834513a3c82)
// not bridged: 
Theorem ARC_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (arc N (fun x:set => f (g x)) <-> arc M g).
Admitted.

// HOL Light: Multivariate/paths.ml:229 / SIMPLE_PATH_CONTINUOUS_IMAGE   (hash md5:c56957d1b6ce96a5a00c966793670968)
// not bridged: 
Theorem SIMPLE_PATH_CONTINUOUS_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> simple_path A g /\ (continuous_on_hl A B f (path_image A g) /\ (forall x y :e R :^: idx A, x :e path_image A g /\ (y :e path_image A g /\ f x = f y) -> x = y)) -> simple_path B (fun x:set => f (g x)).
Admitted.

// HOL Light: Multivariate/paths.ml:239 / ARC_CONTINUOUS_IMAGE   (hash md5:72873699941e0135935122e65d1a1449)
// not bridged: 
Theorem ARC_CONTINUOUS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> arc N g /\ (continuous_on_hl N A f (path_image N g) /\ (forall x y :e R :^: idx N, x :e path_image N g /\ (y :e path_image N g /\ f x = f y) -> x = y)) -> arc A (fun x:set => f (g x)).
Admitted.

// HOL Light: Multivariate/paths.ml:252 / ARC_IMP_SIMPLE_PATH   (hash md5:504a3594d4b66a32a0f58abbf44031e7)
// not bridged: 
Theorem ARC_IMP_SIMPLE_PATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g -> simple_path A g.
Admitted.

// HOL Light: Multivariate/paths.ml:256 / ARC_IMP_PATH   (hash md5:1595c4fb16e8cb68d720182c816f185a)
// not bridged: 
Theorem ARC_IMP_PATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g -> path A g.
Admitted.

// HOL Light: Multivariate/paths.ml:260 / SIMPLE_PATH_IMP_PATH   (hash md5:48b04573fd70b6c3bec47bf97e8a36a2)
// not bridged: 
Theorem SIMPLE_PATH_IMP_PATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> simple_path A g -> path A g.
Admitted.

// HOL Light: Multivariate/paths.ml:264 / SIMPLE_PATH_CASES   (hash md5:6e36660fcb0bab6ae19e3b42142d10be)
// not bridged: 
Theorem SIMPLE_PATH_CASES : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> simple_path N g -> arc N g \/ pathfinish N g = pathstart N g.
Admitted.

// HOL Light: Multivariate/paths.ml:274 / SIMPLE_PATH_IMP_ARC   (hash md5:64ec845bfdb9049cb0f5d6746aa87907)
// not bridged: 
Theorem SIMPLE_PATH_IMP_ARC : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> simple_path N g /\ ~ pathfinish N g = pathstart N g -> arc N g.
Admitted.

// HOL Light: Multivariate/paths.ml:279 / ARC_DISTINCT_ENDS   (hash md5:4b6661eae3fe3ae271feb208fc74411d)
// not bridged: 
Theorem ARC_DISTINCT_ENDS : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> arc N g -> ~ pathfinish N g = pathstart N g.
Admitted.

// HOL Light: Multivariate/paths.ml:287 / ARC_SIMPLE_PATH   (hash md5:683bacdea80ec2a007102bb6cfb28d81)
// not bridged: 
Theorem ARC_SIMPLE_PATH : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (arc N g <-> simple_path N g /\ ~ pathfinish N g = pathstart N g).
Admitted.

// HOL Light: Multivariate/paths.ml:292 / SIMPLE_PATH_EQ_ARC   (hash md5:e73306598b36cffd0ab48426bf890051)
// not bridged: 
Theorem SIMPLE_PATH_EQ_ARC : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> ~ pathstart A g = pathfinish A g -> (simple_path A g <-> arc A g).
Admitted.

// HOL Light: Multivariate/paths.ml:296 / PATH_IMAGE_NONEMPTY   (hash md5:1def93cc9ec9a9d23515f5b15db1cff7)
// not bridged: 
Theorem PATH_IMAGE_NONEMPTY : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> ~ path_image A g = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:302 / PATHSTART_IN_PATH_IMAGE   (hash md5:be85a1a43dadb75c756e82f5253d29f4)
// not bridged: 
Theorem PATHSTART_IN_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> pathstart A g :e path_image A g.
Admitted.

// HOL Light: Multivariate/paths.ml:308 / PATHFINISH_IN_PATH_IMAGE   (hash md5:cb9c23f8418205360d8abf0bb9b24d37)
// not bridged: 
Theorem PATHFINISH_IN_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> pathfinish A g :e path_image A g.
Admitted.

// HOL Light: Multivariate/paths.ml:314 / CONNECTED_PATH_IMAGE   (hash md5:811e261df5f79284d98c5923ec5611bc)
// not bridged: 
Theorem CONNECTED_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> path A g -> connected A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:320 / COMPACT_PATH_IMAGE   (hash md5:5d548c39f227642d205c9ce9d0da7a18)
// not bridged: 
Theorem COMPACT_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> path A g -> compact A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:326 / BOUNDED_PATH_IMAGE   (hash md5:4047b9c333afa6cae6ed2a17d0fb41fe)
// not bridged: 
Theorem BOUNDED_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> path A g -> bounded_hl A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:330 / CLOSED_PATH_IMAGE   (hash md5:e7934916e5cfb4c7438fa6a6627bce50)
// not bridged: 
Theorem CLOSED_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> path A g -> closed A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:334 / CONNECTED_SIMPLE_PATH_IMAGE   (hash md5:0135a16bf11d9e41a2865d2e52e2bd3c)
// not bridged: 
Theorem CONNECTED_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> simple_path A g -> connected A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:338 / COMPACT_SIMPLE_PATH_IMAGE   (hash md5:7a27352ca58973911fb580db0a59d658)
// not bridged: 
Theorem COMPACT_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> simple_path A g -> compact A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:342 / BOUNDED_SIMPLE_PATH_IMAGE   (hash md5:2f0e551d32cac975cf2b8effae0e729f)
// not bridged: 
Theorem BOUNDED_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> simple_path A g -> bounded_hl A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:346 / CLOSED_SIMPLE_PATH_IMAGE   (hash md5:80bc7270633550646048271b96a3f6ef)
// not bridged: 
Theorem CLOSED_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> simple_path A g -> closed A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:350 / CONNECTED_ARC_IMAGE   (hash md5:1f461b2f7b736dba2b7b433acfe35af3)
// not bridged: 
Theorem CONNECTED_ARC_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g -> connected A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:354 / COMPACT_ARC_IMAGE   (hash md5:8c2fd0dd722b709b516a03a3fae91158)
// not bridged: 
Theorem COMPACT_ARC_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g -> compact A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:358 / BOUNDED_ARC_IMAGE   (hash md5:08e69b1778468a6b6569e5d10f905806)
// not bridged: 
Theorem BOUNDED_ARC_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g -> bounded_hl A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:362 / CLOSED_ARC_IMAGE   (hash md5:b01ac87e877145a75d9902a596bb6ee3)
// not bridged: 
Theorem CLOSED_ARC_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g -> closed A (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:366 / PATHSTART_COMPOSE   (hash md5:f91f8819300bee8d88f5b7db4243f040)
// not bridged: 
Theorem PATHSTART_COMPOSE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx B) -> pathstart A (fun x:set => f (p x)) = f (pathstart B p).
Admitted.

// HOL Light: Multivariate/paths.ml:370 / PATHFINISH_COMPOSE   (hash md5:a298116d2650f6d35318e319ce7215a8)
// not bridged: 
Theorem PATHFINISH_COMPOSE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx B) -> pathfinish A (fun x:set => f (p x)) = f (pathfinish B p).
Admitted.

// HOL Light: Multivariate/paths.ml:374 / PATH_IMAGE_COMPOSE   (hash md5:1ee9e614357befe2957d55fd65d069e0)
// not bridged: 
Theorem PATH_IMAGE_COMPOSE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx B) -> path_image A (fun x:set => f (p x)) = {f x | x :e path_image B p}.
Admitted.

// HOL Light: Multivariate/paths.ml:378 / PATH_COMPOSE_JOIN   (hash md5:b39abc0f41cf55e9d72289a288a7db5b)
// not bridged: 
Theorem PATH_COMPOSE_JOIN : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e A) -> forall x :e R :^: idx 1, f (poly_add A p q x) = poly_add B (fun x:set => f (p x)) (fun x:set => f (q x)) x.
Admitted.

// HOL Light: Multivariate/paths.ml:382 / PATH_COMPOSE_REVERSEPATH   (hash md5:7c89c0e4a0ab6cdd6660caca1201f8f3)
// not bridged: 
Theorem PATH_COMPOSE_REVERSEPATH : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall x :e R :^: idx 1, f (reversepath A p x) = reversepath B (fun x:set => f (p x)) x.
Admitted.

// HOL Light: Multivariate/paths.ml:386 / JOIN_PATHS_EQ   (hash md5:d29faddc945cfa3b408b12065bcfb0a2)
// not bridged: 
Theorem JOIN_PATHS_EQ : forall N:set, N <> Empty -> forall p':set -> set, (forall x :e R :^: idx 1, p' x :e R :^: idx N) -> forall q':set -> set, (forall x :e R :^: idx 1, q' x :e R :^: idx N) -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p t = p' t) /\ (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> q t = q' t) -> forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> poly_add (R :^: idx N) p q t = poly_add (R :^: idx N) p' q' t.
Admitted.

// HOL Light: Multivariate/paths.ml:396 / CARD_EQ_SIMPLE_PATH_IMAGE   (hash md5:25a1fb6cc96701bb64019b249f370594)
// not bridged: 
Theorem CARD_EQ_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> simple_path A g -> equip (path_image A g) R.
Admitted.

// HOL Light: Multivariate/paths.ml:408 / INFINITE_SIMPLE_PATH_IMAGE   (hash md5:60332daf8bf35495412c99b29a4e7c96)
// not bridged: 
Theorem INFINITE_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> simple_path A g -> infinite (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:413 / CARD_EQ_ARC_IMAGE   (hash md5:bc0e34634202e36178d24ce2b6ca2310)
// not bridged: 
Theorem CARD_EQ_ARC_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g -> equip (path_image A g) R.
Admitted.

// HOL Light: Multivariate/paths.ml:417 / INFINITE_ARC_IMAGE   (hash md5:a34eabfc59cf1145d0d499ee694c6476)
// not bridged: 
Theorem INFINITE_ARC_IMAGE : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g -> infinite (path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:425 / JOINPATHS   (hash md5:a011db2061464378879d173cd52b2ad9)
// not bridged: 
Theorem JOINPATHS : forall A:set, A <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx A) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx A) -> pathfinish A g1 = pathstart A g2 -> forall x :e R :^: idx 1, poly_add (R :^: idx A) g1 g2 x = if drop x < 1 :/: 2 then g1 (vector_mul 1 2 x) else g2 (vector_sub 1 (vector_mul 1 2 x) (vec 1 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:439 / REVERSEPATH_REVERSEPATH   (hash md5:0a9574f4267f46600c2a2b9d194bbad9)
// not bridged: 
Theorem REVERSEPATH_REVERSEPATH : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall x :e R :^: idx 1, reversepath N (reversepath N g) x = g x.
Admitted.

// HOL Light: Multivariate/paths.ml:444 / PATHSTART_REVERSEPATH   (hash md5:46fba92797b160761c72cf9f016ba54c)
// not bridged: 
Theorem PATHSTART_REVERSEPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> pathstart A (reversepath A g) = pathfinish A g.
Admitted.

// HOL Light: Multivariate/paths.ml:448 / PATHFINISH_REVERSEPATH   (hash md5:02327668b1a8e674dc30dfdeba127389)
// not bridged: 
Theorem PATHFINISH_REVERSEPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> pathfinish A (reversepath A g) = pathstart A g.
Admitted.

// HOL Light: Multivariate/paths.ml:452 / PATHSTART_JOIN   (hash md5:94759bf6ea532cecac87514dd871fcbb)
// not bridged: 
Theorem PATHSTART_JOIN : forall A:set, A <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx A) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx A) -> pathstart A (poly_add (R :^: idx A) g1 g2) = pathstart A g1.
Admitted.

// HOL Light: Multivariate/paths.ml:457 / PATHFINISH_JOIN   (hash md5:975b58e2249aba9a76400368532bb4c0)
// not bridged: 
Theorem PATHFINISH_JOIN : forall A:set, A <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx A) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx A) -> pathfinish A (poly_add (R :^: idx A) g1 g2) = pathfinish A g2.
Admitted.

// HOL Light: Multivariate/paths.ml:462 / PATH_IMAGE_REVERSEPATH   (hash md5:9a5c072266ce6dcfd9b413e0a3c70a83)
// not bridged: 
Theorem PATH_IMAGE_REVERSEPATH : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> path_image N (reversepath N g) = path_image N g.
Admitted.

// HOL Light: Multivariate/paths.ml:473 / PATH_REVERSEPATH   (hash md5:a6f4f0799b8c33791410e13cd8f449ec)
// not bridged: 
Theorem PATH_REVERSEPATH : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (path N (reversepath N g) <-> path N g).
Admitted.

// HOL Light: Multivariate/paths.ml:486 / PATH_JOIN   (hash md5:b606de5085cff9edcb34525a9d48e601)
// not bridged: 
Theorem PATH_JOIN : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> pathfinish N g1 = pathstart N g2 -> (path N (poly_add (R :^: idx N) g1 g2) <-> path N g1 /\ path N g2).
Admitted.

// HOL Light: Multivariate/paths.ml:581 / PATH_JOIN_IMP   (hash md5:b5f8ed6e2c70a1542d4250ee58d2191e)
// not bridged: 
Theorem PATH_JOIN_IMP : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> path N g1 /\ (path N g2 /\ pathfinish N g1 = pathstart N g2) -> path N (poly_add (R :^: idx N) g1 g2).
Admitted.

// HOL Light: Multivariate/paths.ml:587 / PATH_IMAGE_JOIN_SUBSET   (hash md5:bdb8b9372589b724fdce6cb2cf50d0af)
// not bridged: 
Theorem PATH_IMAGE_JOIN_SUBSET : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> path_image N (poly_add (R :^: idx N) g1 g2) c= path_image N g1 :\/: path_image N g2.
Admitted.

// HOL Light: Multivariate/paths.ml:599 / SUBSET_PATH_IMAGE_JOIN   (hash md5:be6bda1cd16890186a94368246f2540c)
// not bridged: 
Theorem SUBSET_PATH_IMAGE_JOIN : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> forall s c= R :^: idx N, path_image N g1 c= s /\ path_image N g2 c= s -> path_image N (poly_add (R :^: idx N) g1 g2) c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:607 / PATH_IMAGE_JOIN   (hash md5:f3c38524ee4eb1c29012c510071e14c4)
// not bridged: 
Theorem PATH_IMAGE_JOIN : forall A:set, A <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx A) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx A) -> pathfinish A g1 = pathstart A g2 -> path_image A (poly_add (R :^: idx A) g1 g2) = path_image A g1 :\/: path_image A g2.
Admitted.

// HOL Light: Multivariate/paths.ml:632 / NOT_IN_PATH_IMAGE_JOIN   (hash md5:e96017f1705f210d51cb0f8f7cb2e9ef)
// not bridged: 
Theorem NOT_IN_PATH_IMAGE_JOIN : forall A:set, A <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx A) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx A) -> forall x :e R :^: idx A, ~ x :e path_image A g1 /\ ~ x :e path_image A g2 -> ~ x :e path_image A (poly_add (R :^: idx A) g1 g2).
Admitted.

// HOL Light: Multivariate/paths.ml:637 / ARC_REVERSEPATH   (hash md5:f6c858aeb09f55028a70240ae8d28a90)
// not bridged: 
Theorem ARC_REVERSEPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g -> arc A (reversepath A g).
Admitted.

// HOL Light: Multivariate/paths.ml:647 / ARC_REVERSEPATH_EQ   (hash md5:0aca85dc6021830e1312aaa5d0785a1c)
// not bridged: 
Theorem ARC_REVERSEPATH_EQ : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (arc N (reversepath N g) <-> arc N g).
Admitted.

// HOL Light: Multivariate/paths.ml:651 / SIMPLE_PATH_REVERSEPATH   (hash md5:dde2a91851c3d56bc55fa94b51f82b97)
// not bridged: 
Theorem SIMPLE_PATH_REVERSEPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> simple_path A g -> simple_path A (reversepath A g).
Admitted.

// HOL Light: Multivariate/paths.ml:661 / SIMPLE_PATH_REVERSEPATH_EQ   (hash md5:ee472574a15435bddfb3e5898668a40f)
// not bridged: 
Theorem SIMPLE_PATH_REVERSEPATH_EQ : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> (simple_path N (reversepath N g) <-> simple_path N g).
Admitted.

// HOL Light: Multivariate/paths.ml:665 / SIMPLE_PATH_JOIN_LOOP   (hash md5:f3bf92ff67afe1c26a5cbe60a2e416e0)
// not bridged: 
Theorem SIMPLE_PATH_JOIN_LOOP : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> arc N g1 /\ (arc N g2 /\ (pathfinish N g1 = pathstart N g2 /\ (pathfinish N g2 = pathstart N g1 /\ path_image N g1 :/\: path_image N g2 c= {pathstart N g1,pathstart N g2}))) -> simple_path N (poly_add (R :^: idx N) g1 g2).
Admitted.

// HOL Light: Multivariate/paths.ml:737 / ARC_JOIN   (hash md5:c6a6d5c3127c47b3674446289b11625e)
// not bridged: 
Theorem ARC_JOIN : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> arc N g1 /\ (arc N g2 /\ (pathfinish N g1 = pathstart N g2 /\ path_image N g1 :/\: path_image N g2 c= {pathstart N g2})) -> arc N (poly_add (R :^: idx N) g1 g2).
Admitted.

// HOL Light: Multivariate/paths.ml:793 / REVERSEPATH_JOINPATHS   (hash md5:5bf725a71f03f916f603d17ed4c79f5e)
// not bridged: 
Theorem REVERSEPATH_JOINPATHS : forall A:set, A <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx A) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx A) -> pathfinish A g1 = pathstart A g2 -> forall x :e R :^: idx 1, reversepath A (poly_add (R :^: idx A) g1 g2) x = poly_add (R :^: idx A) (reversepath A g2) (reversepath A g1) x.
Admitted.

// HOL Light: Multivariate/paths.ml:816 / PATH_JOIN_PATH_ENDS   (hash md5:75feafa657c921bfa4cc47577d05057b)
// not bridged: 
Theorem PATH_JOIN_PATH_ENDS : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> path N g2 /\ path N (poly_add (R :^: idx N) g1 g2) -> pathfinish N g1 = pathstart N g2.
Admitted.

// HOL Light: Multivariate/paths.ml:850 / PATH_JOIN_EQ   (hash md5:07d5da1d298024442455deccc135186e)
// not bridged: 
Theorem PATH_JOIN_EQ : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> path N g1 /\ path N g2 -> (path N (poly_add (R :^: idx N) g1 g2) <-> pathfinish N g1 = pathstart N g2).
Admitted.

// HOL Light: Multivariate/paths.ml:856 / SIMPLE_PATH_JOIN_IMP   (hash md5:166900da1f0c52817167fe8f1697fbed)
// not bridged: 
Theorem SIMPLE_PATH_JOIN_IMP : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> simple_path N (poly_add (R :^: idx N) g1 g2) /\ pathfinish N g1 = pathstart N g2 -> arc N g1 /\ (arc N g2 /\ path_image N g1 :/\: path_image N g2 c= {pathstart N g1,pathstart N g2}).
Admitted.

// HOL Light: Multivariate/paths.ml:911 / SIMPLE_PATH_JOIN_LOOP_EQ   (hash md5:c57974832946c6876a5e0d604ac264ac)
// not bridged: 
Theorem SIMPLE_PATH_JOIN_LOOP_EQ : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> pathfinish N g2 = pathstart N g1 /\ pathfinish N g1 = pathstart N g2 -> (simple_path N (poly_add (R :^: idx N) g1 g2) <-> arc N g1 /\ (arc N g2 /\ path_image N g1 :/\: path_image N g2 c= {pathstart N g1,pathstart N g2})).
Admitted.

// HOL Light: Multivariate/paths.ml:921 / SIMPLE_PATH_JOIN_LOOP_EQ_ALT   (hash md5:27096eaff4cf73693a385fce156c786c)
// not bridged: 
Theorem SIMPLE_PATH_JOIN_LOOP_EQ_ALT : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> pathfinish N g2 = pathstart N g1 /\ pathfinish N g1 = pathstart N g2 -> (simple_path N (poly_add (R :^: idx N) g1 g2) <-> arc N g1 /\ (arc N g2 /\ path_image N g1 :/\: path_image N g2 = {pathstart N g1,pathstart N g2})).
Admitted.

// HOL Light: Multivariate/paths.ml:935 / ARC_JOIN_EQ   (hash md5:621339be14765812305ba59f184e97be)
// not bridged: 
Theorem ARC_JOIN_EQ : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> pathfinish N g1 = pathstart N g2 -> (arc N (poly_add (R :^: idx N) g1 g2) <-> arc N g1 /\ (arc N g2 /\ path_image N g1 :/\: path_image N g2 c= {pathstart N g2})).
Admitted.

// HOL Light: Multivariate/paths.ml:975 / ARC_JOIN_EQ_ALT   (hash md5:c4d99d7936958827810cd6ee9d098829)
// not bridged: 
Theorem ARC_JOIN_EQ_ALT : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> pathfinish N g1 = pathstart N g2 -> (arc N (poly_add (R :^: idx N) g1 g2) <-> arc N g1 /\ (arc N g2 /\ path_image N g1 :/\: path_image N g2 = {pathstart N g2})).
Admitted.

// HOL Light: Multivariate/paths.ml:990 / PATH_ASSOC   (hash md5:0d456b50f5464b38688043bd05b6d159)
// not bridged: 
Theorem PATH_ASSOC : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx N) -> pathfinish N p = pathstart N q /\ pathfinish N q = pathstart N r -> (path N (poly_add (R :^: idx N) p (poly_add (R :^: idx N) q r)) <-> path N (poly_add (R :^: idx N) (poly_add (R :^: idx N) p q) r)).
Admitted.

// HOL Light: Multivariate/paths.ml:996 / SIMPLE_PATH_ASSOC   (hash md5:88033d1a9d4930c7c2c99b1d05ebb15f)
// not bridged: 
Theorem SIMPLE_PATH_ASSOC : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx N) -> pathfinish N p = pathstart N q /\ pathfinish N q = pathstart N r -> (simple_path N (poly_add (R :^: idx N) p (poly_add (R :^: idx N) q r)) <-> simple_path N (poly_add (R :^: idx N) (poly_add (R :^: idx N) p q) r)).
Admitted.

// HOL Light: Multivariate/paths.ml:1017 / ARC_ASSOC   (hash md5:b7f872d3ba1001d8d1a12769c1702662)
// not bridged: 
Theorem ARC_ASSOC : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx N) -> pathfinish N p = pathstart N q /\ pathfinish N q = pathstart N r -> (arc N (poly_add (R :^: idx N) p (poly_add (R :^: idx N) q r)) <-> arc N (poly_add (R :^: idx N) (poly_add (R :^: idx N) p q) r)).
Admitted.

// HOL Light: Multivariate/paths.ml:1028 / PATH_SYM   (hash md5:aced1f474045fd06a3aa0211663decc9)
// not bridged: 
Theorem PATH_SYM : forall A:set, A <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> pathfinish A p = pathstart A q /\ pathfinish A q = pathstart A p -> (path A (poly_add (R :^: idx A) p q) <-> path A (poly_add (R :^: idx A) q p)).
Admitted.

// HOL Light: Multivariate/paths.ml:1033 / SIMPLE_PATH_SYM   (hash md5:f9659c65b58ce4efd132845d81ce051b)
// not bridged: 
Theorem SIMPLE_PATH_SYM : forall A:set, A <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> pathfinish A p = pathstart A q /\ pathfinish A q = pathstart A p -> (simple_path A (poly_add (R :^: idx A) p q) <-> simple_path A (poly_add (R :^: idx A) q p)).
Admitted.

// HOL Light: Multivariate/paths.ml:1038 / PATH_IMAGE_SYM   (hash md5:a8d51534087fabba4cd06c7631b0053f)
// not bridged: 
Theorem PATH_IMAGE_SYM : forall A:set, A <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> pathfinish A p = pathstart A q /\ pathfinish A q = pathstart A p -> path_image A (poly_add (R :^: idx A) p q) = path_image A (poly_add (R :^: idx A) q p).
Admitted.

// HOL Light: Multivariate/paths.ml:1047 / shiftpath   (hash md5:debd904ff6dc3dadaa8d39d8ee5d489e)
// not bridged: 
Theorem shiftpath_thm : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a x :e R :^: idx 1, shiftpath N a f x = if drop (vector_add 1 a x) <= 1 then f (vector_add 1 a x) else f (vector_add 1 a (vector_sub 1 x (vec 1 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:1052 / SHIFTPATH_TRANSLATION   (hash md5:d18394912559056c64806e60e7ded98d)
// not bridged: 
Theorem SHIFTPATH_TRANSLATION : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall t :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall x :e R :^: idx 1, shiftpath A t (fun x:set => vector_add A a (g x)) x = vector_add A a (shiftpath A t g x).
Admitted.

// HOL Light: Multivariate/paths.ml:1058 / SHIFTPATH_LINEAR_IMAGE   (hash md5:8284ab5f9af9f7abeeca302102accec9)
// not bridged: 
Theorem SHIFTPATH_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall t :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx B) -> linear B A f -> forall x :e R :^: idx 1, shiftpath A t (fun x:set => f (g x)) x = f (shiftpath B t g x).
Admitted.

// HOL Light: Multivariate/paths.ml:1064 / PATHSTART_SHIFTPATH   (hash md5:73a9935edab60bec27c2239d8e65ff46)
// not bridged: 
Theorem PATHSTART_SHIFTPATH : forall A:set, A <> Empty -> forall a :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> drop a <= 1 -> pathstart A (shiftpath A a g) = g a.
Admitted.

// HOL Light: Multivariate/paths.ml:1068 / PATHFINISH_SHIFTPATH   (hash md5:45c4f3558c9642d2d46c0b30fef397b1)
// not bridged: 
Theorem PATHFINISH_SHIFTPATH : forall A:set, A <> Empty -> forall a :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> 0 <= drop a /\ pathfinish A g = pathstart A g -> pathfinish A (shiftpath A a g) = g a.
Admitted.

// HOL Light: Multivariate/paths.ml:1076 / ENDPOINTS_SHIFTPATH   (hash md5:066d26dab22231d46d1759378e2a7519)
// not bridged: 
Theorem ENDPOINTS_SHIFTPATH : forall A:set, A <> Empty -> forall a :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> pathfinish A g = pathstart A g /\ a :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> pathfinish A (shiftpath A a g) = g a /\ pathstart A (shiftpath A a g) = g a.
Admitted.

// HOL Light: Multivariate/paths.ml:1083 / CLOSED_SHIFTPATH   (hash md5:4306c479813d28e3df64f190223c9c27)
// not bridged: 
Theorem CLOSED_SHIFTPATH : forall A:set, A <> Empty -> forall a :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> pathfinish A g = pathstart A g /\ a :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> pathfinish A (shiftpath A a g) = pathstart A (shiftpath A a g).
Admitted.

// HOL Light: Multivariate/paths.ml:1089 / PATH_SHIFTPATH   (hash md5:862d39fa1f03e9f57b1e63a975c28b52)
// not bridged: 
Theorem PATH_SHIFTPATH : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a :e R :^: idx 1, path N g /\ (pathfinish N g = pathstart N g /\ a :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) -> path N (shiftpath N a g).
Admitted.

// HOL Light: Multivariate/paths.ml:1125 / SHIFTPATH_SHIFTPATH   (hash md5:1256ff99452dbe7e6e2ae57c54f5d0c7)
// not bridged: 
Theorem SHIFTPATH_SHIFTPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall a x :e R :^: idx 1, a :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (pathfinish A g = pathstart A g /\ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) -> shiftpath A (vector_sub 1 (vec 1 1) a) (shiftpath A a g) x = g x.
Admitted.

// HOL Light: Multivariate/paths.ml:1143 / PATH_IMAGE_SHIFTPATH   (hash md5:e002f634e9f528a1265d4036fcbf8d75)
// not bridged: 
Theorem PATH_IMAGE_SHIFTPATH : forall N:set, N <> Empty -> forall a :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> a :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ pathfinish N g = pathstart N g -> path_image N (shiftpath N a g) = path_image N g.
Admitted.

// HOL Light: Multivariate/paths.ml:1174 / SIMPLE_PATH_SHIFTPATH   (hash md5:05fc2e71662324c5ddae0117a5d805d3)
// not bridged: 
Theorem SIMPLE_PATH_SHIFTPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall a :e R :^: idx 1, simple_path A g /\ (pathfinish A g = pathstart A g /\ a :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) -> simple_path A (shiftpath A a g).
Admitted.

// HOL Light: Multivariate/paths.ml:1198 / subpath   (hash md5:294edbf4f78c00259ad72eadc670d387)
// not bridged: 
Theorem subpath_thm : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> forall v u x :e R :^: idx 1, subpath A u v g x = g (vector_add 1 u (vector_mul 1 (drop (vector_sub 1 v u)) x)).
Admitted.

// HOL Light: Multivariate/paths.ml:1201 / SUBPATH_SCALING_LEMMA   (hash md5:322d531fc0b9d363b676fe7783734087)
// not bridged: 
Theorem SUBPATH_SCALING_LEMMA : forall u v :e R :^: idx 1, {vector_add 1 u (vector_mul 1 (drop (vector_sub 1 v u)) x) | x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)} = closed_segment 1 (seq_cons (u,v) seq_nil).
Admitted.

// HOL Light: Multivariate/paths.ml:1212 / PATH_IMAGE_SUBPATH_GEN   (hash md5:2861c6cda5f96ad6e96bd11b82525d81)
// not bridged: 
Theorem PATH_IMAGE_SUBPATH_GEN : forall N:set, N <> Empty -> forall u v :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> path_image N (subpath (R :^: idx N) u v g) = {g x | x :e closed_segment 1 (seq_cons (u,v) seq_nil)}.
Admitted.

// HOL Light: Multivariate/paths.ml:1218 / PATH_IMAGE_SUBPATH   (hash md5:a38b085a5ebcdf95ba7200dfb686f0f8)
// not bridged: 
Theorem PATH_IMAGE_SUBPATH : forall N:set, N <> Empty -> forall u v :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> drop u <= drop v -> path_image N (subpath (R :^: idx N) u v g) = {g x | x :e closed_interval 1 (seq_cons (u,v) seq_nil)}.
Admitted.

// HOL Light: Multivariate/paths.ml:1224 / PATH_IMAGE_SUBPATH_COMBINE   (hash md5:473d74f253860757f90f5fd0480c2f42)
// not bridged: 
Theorem PATH_IMAGE_SUBPATH_COMBINE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall u :e R :^: idx 1, path N g /\ u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> path_image N (subpath (R :^: idx N) (vec 1 0) u g) :\/: path_image N (subpath (R :^: idx N) u (vec 1 1) g) = path_image N g.
Admitted.

// HOL Light: Multivariate/paths.ml:1236 / PATH_SUBPATH   (hash md5:927600f98028917a98782cc183c06fda)
// not bridged: 
Theorem PATH_SUBPATH : forall N:set, N <> Empty -> forall u v :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> path N g /\ (u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ v :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) -> path N (subpath (R :^: idx N) u v g).
Admitted.

// HOL Light: Multivariate/paths.ml:1251 / PATHSTART_SUBPATH   (hash md5:4675335fa10d6bcd4eb812f297c3d4db)
// not bridged: 
Theorem PATHSTART_SUBPATH : forall N:set, N <> Empty -> forall u v :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> pathstart N (subpath (R :^: idx N) u v g) = g u.
Admitted.

// HOL Light: Multivariate/paths.ml:1255 / PATHFINISH_SUBPATH   (hash md5:1513c523c2cdeb0ed41b4a88724d39cb)
// not bridged: 
Theorem PATHFINISH_SUBPATH : forall N:set, N <> Empty -> forall u v :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> pathfinish N (subpath (R :^: idx N) u v g) = g v.
Admitted.

// HOL Light: Multivariate/paths.ml:1260 / SUBPATH_TRIVIAL   (hash md5:092aa6cf2caf3900d0ff24b42f426646)
// not bridged: 
Theorem SUBPATH_TRIVIAL : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> forall x :e R :^: idx 1, subpath A (vec 1 0) (vec 1 1) g x = g x.
Admitted.

// HOL Light: Multivariate/paths.ml:1265 / SUBPATH_REVERSEPATH   (hash md5:9af3bc8c67641395ea18af5c618403b2)
// not bridged: 
Theorem SUBPATH_REVERSEPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall x :e R :^: idx 1, subpath (R :^: idx A) (vec 1 1) (vec 1 0) g x = reversepath A g x.
Admitted.

// HOL Light: Multivariate/paths.ml:1270 / REVERSEPATH_SUBPATH   (hash md5:b073b866189ca3fe5d6fbf10d3334877)
// not bridged: 
Theorem REVERSEPATH_SUBPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall u v x :e R :^: idx 1, reversepath A (subpath (R :^: idx A) u v g) x = subpath (R :^: idx A) v u g x.
Admitted.

// HOL Light: Multivariate/paths.ml:1277 / SUBPATH_TRANSLATION   (hash md5:21175b57b6787a8e7d8988cbfa92e65c)
// not bridged: 
Theorem SUBPATH_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall u v x :e R :^: idx 1, subpath (R :^: idx N) u v (fun x:set => vector_add N a (g x)) x = vector_add N a (subpath (R :^: idx N) u v g x).
Admitted.

// HOL Light: Multivariate/paths.ml:1284 / SUBPATH_LINEAR_IMAGE   (hash md5:7a8344b26408e830c689b33059e3eb0e)
// not bridged: 
Theorem SUBPATH_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall u v :e R :^: idx 1, linear M N f -> forall x :e R :^: idx 1, subpath (R :^: idx N) u v (fun x:set => f (g x)) x = f (subpath (R :^: idx M) u v g x).
Admitted.

// HOL Light: Multivariate/paths.ml:1291 / SIMPLE_PATH_SUBPATH_EQ   (hash md5:010e91e3c34da583b0531515d51c54dc)
// not bridged: 
Theorem SIMPLE_PATH_SUBPATH_EQ : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall u v :e R :^: idx 1, simple_path A (subpath (R :^: idx A) u v g) <-> path A (subpath (R :^: idx A) u v g) /\ (~ u = v /\ forall x y :e R :^: idx 1, x :e closed_segment 1 (seq_cons (u,v) seq_nil) /\ (y :e closed_segment 1 (seq_cons (u,v) seq_nil) /\ g x = g y) -> x = y \/ (x = u /\ y = v \/ x = v /\ y = u)).
Admitted.

// HOL Light: Multivariate/paths.ml:1312 / ARC_SUBPATH_EQ   (hash md5:ff9cecc4705e5ba23ca5aa9aff92f06e)
// not bridged: 
Theorem ARC_SUBPATH_EQ : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall u v :e R :^: idx 1, arc A (subpath (R :^: idx A) u v g) <-> path A (subpath (R :^: idx A) u v g) /\ (~ u = v /\ forall x y :e R :^: idx 1, x :e closed_segment 1 (seq_cons (u,v) seq_nil) /\ (y :e closed_segment 1 (seq_cons (u,v) seq_nil) /\ g x = g y) -> x = y).
Admitted.

// HOL Light: Multivariate/paths.ml:1329 / SIMPLE_PATH_SUBPATH   (hash md5:ab2d90b9aa9653250e11e3fba89bd044)
// not bridged: 
Theorem SIMPLE_PATH_SUBPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall u v :e R :^: idx 1, simple_path A g /\ (u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (v :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ ~ u = v)) -> simple_path A (subpath (R :^: idx A) u v g).
Admitted.

// HOL Light: Multivariate/paths.ml:1352 / ARC_SIMPLE_PATH_SUBPATH   (hash md5:6118e6cc3e6ece4c1938044046e07b18)
// not bridged: 
Theorem ARC_SIMPLE_PATH_SUBPATH : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall u v :e R :^: idx 1, simple_path A g /\ (u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (v :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ ~ g u = g v)) -> arc A (subpath (R :^: idx A) u v g).
Admitted.

// HOL Light: Multivariate/paths.ml:1361 / ARC_SUBPATH_ARC   (hash md5:0c43d75df523fba2a86b93284843cac4)
// not bridged: 
Theorem ARC_SUBPATH_ARC : forall A:set, A <> Empty -> forall u v :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> arc A g /\ (u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (v :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ ~ u = v)) -> arc A (subpath (R :^: idx A) u v g).
Admitted.

// HOL Light: Multivariate/paths.ml:1369 / ARC_SIMPLE_PATH_SUBPATH_INTERIOR   (hash md5:c538343b40db08b4a2f22eeb9f7d99ae)
// not bridged: 
Theorem ARC_SIMPLE_PATH_SUBPATH_INTERIOR : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall u v :e R :^: idx 1, simple_path A g /\ (u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (v :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (~ u = v /\ abs_SNo (drop u + - drop v) < 1))) -> arc A (subpath (R :^: idx A) u v g).
Admitted.

// HOL Light: Multivariate/paths.ml:1382 / PATH_IMAGE_SUBPATH_SUBSET   (hash md5:5f854e463b7a6f651a571edfe901503a)
// not bridged: 
Theorem PATH_IMAGE_SUBPATH_SUBSET : forall N:set, N <> Empty -> forall u v :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> path N g /\ (u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ v :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) -> path_image N (subpath (R :^: idx N) u v g) c= path_image N g.
Admitted.

// HOL Light: Multivariate/paths.ml:1391 / JOIN_SUBPATHS_MIDDLE   (hash md5:7fabf6a0dff3f88bcca8055856ca2c4f)
// not bridged: 
Theorem JOIN_SUBPATHS_MIDDLE : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall x :e R :^: idx 1, poly_add (R :^: idx N) (subpath (R :^: idx N) (vec 1 0) (lift (1 :/: 2)) p) (subpath (R :^: idx N) (lift (1 :/: 2)) (vec 1 1) p) x = p x.
Admitted.

// HOL Light: Multivariate/paths.ml:1404 / EXISTS_SUBPATH_OF_PATH   (hash md5:5d3344f16d92d92071069f70885f3f13)
// not bridged: 
Theorem EXISTS_SUBPATH_OF_PATH : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a b :e R :^: idx N, path N g /\ (a :e path_image N g /\ b :e path_image N g) -> exists h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) /\ (path N h /\ (pathstart N h = a /\ (pathfinish N h = b /\ path_image N h c= path_image N g))).
Admitted.

// HOL Light: Multivariate/paths.ml:1420 / EXISTS_SUBPATH_OF_ARC_NOENDS   (hash md5:7516ba6c4e79bbd30c579acbdee60baa)
// not bridged: 
Theorem EXISTS_SUBPATH_OF_ARC_NOENDS : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a b :e R :^: idx N, arc N g /\ (a :e path_image N g /\ (b :e path_image N g /\ {a,b} :/\: {pathstart N g,pathfinish N g} = Empty)) -> exists h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) /\ (path N h /\ (pathstart N h = a /\ (pathfinish N h = b /\ path_image N h c= path_image N g :\: {pathstart N g,pathfinish N g}))).
Admitted.

// HOL Light: Multivariate/paths.ml:1459 / EXISTS_SUBARC_OF_ARC_NOENDS   (hash md5:021c9caaeb030de7bc623712c709cf9d)
// not bridged: 
Theorem EXISTS_SUBARC_OF_ARC_NOENDS : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a b :e R :^: idx N, arc N g /\ (a :e path_image N g /\ (b :e path_image N g /\ (~ a = b /\ {a,b} :/\: {pathstart N g,pathfinish N g} = Empty))) -> exists h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) /\ (arc N h /\ (pathstart N h = a /\ (pathfinish N h = b /\ path_image N h c= path_image N g :\: {pathstart N g,pathfinish N g}))).
Admitted.

// HOL Light: Multivariate/paths.ml:1502 / EXISTS_ARC_PSUBSET_SIMPLE_PATH   (hash md5:03069cc5b75e704b4a3738a7f34d8233)
// not bridged: 
Theorem EXISTS_ARC_PSUBSET_SIMPLE_PATH : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> simple_path N g /\ (closed N s /\ (s c= path_image N g /\ s <> path_image N g)) -> exists h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) /\ (arc N h /\ (s c= path_image N h /\ path_image N h c= path_image N g)).
Admitted.

// HOL Light: Multivariate/paths.ml:1572 / EXISTS_DOUBLE_ARC_EXPLICIT   (hash md5:ec93e80fbfe4355148a5e59dcdf1d4a3)
// not bridged: 
Theorem EXISTS_DOUBLE_ARC_EXPLICIT : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a b :e R :^: idx 1, simple_path N g /\ (pathfinish N g = pathstart N g /\ (a :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (b :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (drop a <= drop b /\ ~ g a = g b)))) -> exists u:set -> set, (forall x :e R :^: idx 1, u x :e R :^: idx N) /\ exists d:set -> set, (forall x :e R :^: idx 1, d x :e R :^: idx N) /\ (arc N u /\ (arc N d /\ (pathstart N u = g a /\ (pathfinish N u = g b /\ (pathstart N d = g b /\ (pathfinish N d = g a /\ (path_image N u = {g x | x :e closed_interval 1 (seq_cons (a,b) seq_nil)} /\ (path_image N d = {g x | x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) :\: open_interval 1 (a,b)} /\ (path_image N u :/\: path_image N d = {g a,g b} /\ path_image N u :\/: path_image N d = path_image N g))))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:1768 / EXISTS_DOUBLE_ARC   (hash md5:746219d7efc2f2053e743b0bc180cfe6)
// not bridged: 
Theorem EXISTS_DOUBLE_ARC : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a b :e R :^: idx N, simple_path N g /\ (pathfinish N g = pathstart N g /\ (a :e path_image N g /\ (b :e path_image N g /\ ~ a = b))) -> exists u:set -> set, (forall x :e R :^: idx 1, u x :e R :^: idx N) /\ exists d:set -> set, (forall x :e R :^: idx 1, d x :e R :^: idx N) /\ (arc N u /\ (arc N d /\ (pathstart N u = a /\ (pathfinish N u = b /\ (pathstart N d = b /\ (pathfinish N d = a /\ (path_image N u :/\: path_image N d = {a,b} /\ path_image N u :\/: path_image N d = path_image N g))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:1795 / SUBPATH_TO_FRONTIER_EXPLICIT   (hash md5:cd7c545124749f39408947a7bdd59fe0)
// not bridged: 
Theorem SUBPATH_TO_FRONTIER_EXPLICIT : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, path N g /\ (pathstart N g :e s /\ ~ pathfinish N g :e s) -> exists u :e R :^: idx 1, u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ ((forall x :e R :^: idx 1, 0 <= drop x /\ drop x < drop u -> g x :e interior N s) /\ (~ g u :e interior N s /\ (u = vec 1 0 \/ g u :e closure N s))).
Admitted.

// HOL Light: Multivariate/paths.ml:1853 / SUBPATH_TO_FRONTIER_STRONG   (hash md5:d57ce818de042d8eb37629a8f850ea96)
// not bridged: 
Theorem SUBPATH_TO_FRONTIER_STRONG : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, path N g /\ (pathstart N g :e s /\ ~ pathfinish N g :e s) -> exists u :e R :^: idx 1, u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (~ pathfinish N (subpath (R :^: idx N) (vec 1 0) u g) :e interior N s /\ (u = vec 1 0 \/ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ ~ x = vec 1 1 -> subpath (R :^: idx N) (vec 1 0) u g x :e interior N s) /\ pathfinish N (subpath (R :^: idx N) (vec 1 0) u g) :e closure N s)).
Admitted.

// HOL Light: Multivariate/paths.ml:1879 / SUBPATH_TO_FRONTIER   (hash md5:80adbfc23b7120d67dd3e5677f148260)
// not bridged: 
Theorem SUBPATH_TO_FRONTIER : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, path N g /\ (pathstart N g :e s /\ ~ pathfinish N g :e s) -> exists u :e R :^: idx 1, u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (pathfinish N (subpath (R :^: idx N) (vec 1 0) u g) :e frontier N s /\ path_image N (subpath (R :^: idx N) (vec 1 0) u g) :\: {pathfinish N (subpath (R :^: idx N) (vec 1 0) u g)} c= interior N s).
Admitted.

// HOL Light: Multivariate/paths.ml:1903 / EXISTS_PATH_SUBPATH_TO_FRONTIER   (hash md5:6e1e765d7b0e848d5f86fe143eaab985)
// not bridged: 
Theorem EXISTS_PATH_SUBPATH_TO_FRONTIER : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, path N g /\ (pathstart N g :e s /\ ~ pathfinish N g :e s) -> exists h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) /\ (path N h /\ (pathstart N h = pathstart N g /\ (path_image N h c= path_image N g /\ (path_image N h :\: {pathfinish N h} c= interior N s /\ pathfinish N h :e frontier N s)))).
Admitted.

// HOL Light: Multivariate/paths.ml:1917 / EXISTS_PATH_SUBPATH_TO_FRONTIER_CLOSED   (hash md5:2c85963eac663dfb605c7bb55a3656e5)
// not bridged: 
Theorem EXISTS_PATH_SUBPATH_TO_FRONTIER_CLOSED : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, closed N s /\ (path N g /\ (pathstart N g :e s /\ ~ pathfinish N g :e s)) -> exists h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) /\ (path N h /\ (pathstart N h = pathstart N g /\ (path_image N h c= path_image N g :/\: s /\ pathfinish N h :e frontier N s))).
Admitted.

// HOL Light: Multivariate/paths.ml:1933 / PATH_COMBINE   (hash md5:61c8c25ce19e45a20ee1ff3623d32a0b)
// not bridged: 
Theorem PATH_COMBINE : forall N:set, N <> Empty -> forall u :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> (path N g <-> path N (subpath (R :^: idx N) (vec 1 0) u g) /\ path N (subpath (R :^: idx N) u (vec 1 1) g)).
Admitted.

// HOL Light: Multivariate/paths.ml:2000 / linepath   (hash md5:234c8f2bbcb8f0bb4f8f5fef036bb4d7)
// not bridged: 
Theorem linepath_thm : forall A:set, A <> Empty -> forall a b :e R :^: idx A, forall x :e R :^: idx 1, linepath A (a,b) x = vector_add A (vector_mul A (1 + - drop x) a) (vector_mul A (drop x) b).
Admitted.

// HOL Light: Multivariate/paths.ml:2003 / LINEPATH_TRANSLATION   (hash md5:dbc993451d7f6f9ef425d12c97295ca5)
// not bridged: 
Theorem LINEPATH_TRANSLATION : forall A:set, A <> Empty -> forall a b c :e R :^: idx A, forall x :e R :^: idx 1, linepath A (vector_add A a b,vector_add A a c) x = vector_add A a (linepath A (b,c) x).
Admitted.

// HOL Light: Multivariate/paths.ml:2009 / LINEPATH_LINEAR_IMAGE   (hash md5:f940201fb9c307ce1a50fa52bbad871c)
// not bridged: 
Theorem LINEPATH_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> linear B A f -> forall b c :e R :^: idx B, forall x :e R :^: idx 1, linepath A (f b,f c) x = f (linepath B (b,c) x).
Admitted.

// HOL Light: Multivariate/paths.ml:2018 / PATHSTART_LINEPATH   (hash md5:678f8dcf6160edd1d06bef6e04ab0a69)
// not bridged: 
Theorem PATHSTART_LINEPATH : forall A:set, A <> Empty -> forall a b :e R :^: idx A, pathstart A (linepath A (a,b)) = a.
Admitted.

// HOL Light: Multivariate/paths.ml:2022 / PATHFINISH_LINEPATH   (hash md5:e5872b09c22356ab3687d69110f583de)
// not bridged: 
Theorem PATHFINISH_LINEPATH : forall A:set, A <> Empty -> forall a b :e R :^: idx A, pathfinish A (linepath A (a,b)) = b.
Admitted.

// HOL Light: Multivariate/paths.ml:2026 / CONTINUOUS_LINEPATH_AT   (hash md5:d58684582df45e4cbd0fdb774d0b0dde)
// not bridged: 
Theorem CONTINUOUS_LINEPATH_AT : forall A:set, A <> Empty -> forall a b :e R :^: idx A, forall x :e R :^: idx 1, continuous A (R :^: idx 1) (linepath A (a,b)) (at_hl 1 x).
Admitted.

// HOL Light: Multivariate/paths.ml:2035 / CONTINUOUS_ON_LINEPATH   (hash md5:35afae8ec67e95c32f58d14b5261dedb)
// not bridged: 
Theorem CONTINUOUS_ON_LINEPATH : forall A:set, A <> Empty -> forall a b :e R :^: idx A, forall s c= R :^: idx 1, continuous_on_hl 1 A (linepath A (a,b)) s.
Admitted.

// HOL Light: Multivariate/paths.ml:2039 / PATH_LINEPATH   (hash md5:931425434664afdf890a81c19208ce4d)
// not bridged: 
Theorem PATH_LINEPATH : forall A:set, A <> Empty -> forall a b :e R :^: idx A, path A (linepath A (a,b)).
Admitted.

// HOL Light: Multivariate/paths.ml:2043 / PATH_IMAGE_LINEPATH   (hash md5:1a0e07001d01e5b355ddadfc4021a7fa)
// not bridged: 
Theorem PATH_IMAGE_LINEPATH : forall A:set, A <> Empty -> forall a b :e R :^: idx A, path_image A (linepath A (a,b)) = closed_segment A (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/paths.ml:2050 / REVERSEPATH_LINEPATH   (hash md5:b8fecc2356ad3a777f2cb44122898adb)
// not bridged: 
Theorem REVERSEPATH_LINEPATH : forall A:set, A <> Empty -> forall a b :e R :^: idx A, forall x :e R :^: idx 1, reversepath A (linepath A (a,b)) x = linepath A (b,a) x.
Admitted.

// HOL Light: Multivariate/paths.ml:2055 / ARC_LINEPATH   (hash md5:0fff1fe28f73285aad9b143bb5cafe5d)
// not bridged: 
Theorem ARC_LINEPATH : forall A:set, A <> Empty -> forall a b :e R :^: idx A, ~ a = b -> arc A (linepath A (a,b)).
Admitted.

// HOL Light: Multivariate/paths.ml:2063 / SIMPLE_PATH_LINEPATH   (hash md5:1571f4cc25d95cc65c8e9b9de1f4c207)
// not bridged: 
Theorem SIMPLE_PATH_LINEPATH : forall A:set, A <> Empty -> forall a b :e R :^: idx A, ~ a = b -> simple_path A (linepath A (a,b)).
Admitted.

// HOL Light: Multivariate/paths.ml:2067 / SIMPLE_PATH_LINEPATH_EQ   (hash md5:6a2b77ce7a6efa18f6f5f0527e93f757)
// not bridged: 
Theorem SIMPLE_PATH_LINEPATH_EQ : forall N:set, N <> Empty -> forall a b :e R :^: idx N, simple_path N (linepath N (a,b)) <-> ~ a = b.
Admitted.

// HOL Light: Multivariate/paths.ml:2077 / ARC_LINEPATH_EQ   (hash md5:f5664cf881282c5682f4d684dd757bb1)
// not bridged: 
Theorem ARC_LINEPATH_EQ : forall A:set, A <> Empty -> forall a b :e R :^: idx A, arc A (linepath A (a,b)) <-> ~ a = b.
Admitted.

// HOL Light: Multivariate/paths.ml:2082 / LINEPATH_REFL   (hash md5:0b4e4a850cfc727663594f564367bb3a)
// not bridged: 
Theorem LINEPATH_REFL : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall x :e R :^: idx 1, linepath A (a,a) x = a.
Admitted.

// HOL Light: Multivariate/paths.ml:2086 / PATH_IMAGE_CONST   (hash md5:c89d2cecd50cb35821bf0e0a0d2ae23a)
// not bridged: 
Theorem PATH_IMAGE_CONST : forall N:set, N <> Empty -> forall a :e R :^: idx N, path_image N (fun x:set => a) = {a}.
Admitted.

// HOL Light: Multivariate/paths.ml:2091 / SHIFTPATH_TRIVIAL   (hash md5:e3592e7af9701cf241d4879895a1e690)
// not bridged: 
Theorem SHIFTPATH_TRIVIAL : forall A:set, A <> Empty -> forall t :e R :^: idx 1, forall a :e R :^: idx A, forall x :e R :^: idx 1, shiftpath A t (linepath A (a,a)) x = linepath A (a,a) x.
Admitted.

// HOL Light: Multivariate/paths.ml:2095 / SUBPATH_REFL   (hash md5:83480fb4d44b4f334feeb6a09795edd0)
// not bridged: 
Theorem SUBPATH_REFL : forall A:set, A <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx A) -> forall a x :e R :^: idx 1, subpath (R :^: idx A) a a g x = linepath A (g a,g a) x.
Admitted.

// HOL Light: Multivariate/paths.ml:2101 / SEGMENT_TO_FRONTIER   (hash md5:d97613cb5d70cbd4818bff616a8df669)
// not bridged: 
Theorem SEGMENT_TO_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, a :e interior N s /\ ~ b :e interior N s -> exists c :e R :^: idx N, c :e closed_segment N (seq_cons (a,b) seq_nil) /\ (~ c = a /\ (c :e frontier N s /\ open_segment N (a,c) c= interior N s)).
Admitted.

// HOL Light: Multivariate/paths.ml:2139 / NOT_ON_PATH_BALL   (hash md5:e47912a9984f1dfaf8adad0e646b2496)
// not bridged: 
Theorem NOT_ON_PATH_BALL : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall z :e R :^: idx N, path N g /\ ~ z :e path_image N g -> exists e0 :e R, 0 < e0 /\ ball N (z,e0) :/\: path_image N g = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:2154 / NOT_ON_PATH_CBALL   (hash md5:3cdf75d4ec09777192ee85377b379800)
// not bridged: 
Theorem NOT_ON_PATH_CBALL : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall z :e R :^: idx N, path N g /\ ~ z :e path_image N g -> exists e0 :e R, 0 < e0 /\ cball N (z,e0) :/\: path_image N g = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:2170 / HOMEOMORPHISM_ARC   (hash md5:df098bf7c8f921d012f28ba5dd445f91)
// not bridged: 
Theorem HOMEOMORPHISM_ARC : forall N:set, N <> Empty -> forall g :e R :^: idx N :^: (R :^: idx 1), arc N (fun x:set => g x) -> exists h :e R :^: idx 1 :^: (R :^: idx N), homeomorphism 1 N (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil),path_image N (fun x:set => g x)) (g,h).
Admitted.

// HOL Light: Multivariate/paths.ml:2176 / HOMEOMORPHIC_ARC_IMAGE_INTERVAL   (hash md5:3319d52c6376dbf95015eb291d3c44a1)
// not bridged: 
Theorem HOMEOMORPHIC_ARC_IMAGE_INTERVAL : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a b :e R :^: idx 1, arc N g /\ drop a < drop b -> homeomorphic 1 N (path_image N g) (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/paths.ml:2187 / HOMEOMORPHIC_ARC_IMAGES   (hash md5:c501ddbaa7e8afa14295670caded9eaf)
// not bridged: 
Theorem HOMEOMORPHIC_ARC_IMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> arc M g /\ arc N h -> homeomorphic N M (path_image M g) (path_image N h).
Admitted.

// HOL Light: Multivariate/paths.ml:2196 / HOMEOMORPHIC_ARC_IMAGE_SEGMENT   (hash md5:fcb31877c7e0599a765d5d2046d414a4)
// not bridged: 
Theorem HOMEOMORPHIC_ARC_IMAGE_SEGMENT : forall M N:set, M <> Empty -> N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a b :e R :^: idx M, arc N g /\ ~ a = b -> homeomorphic M N (path_image N g) (closed_segment M (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/paths.ml:2203 / HOMEOMORPHIC_ARC_IMAGE_SEGMENT_EQ   (hash md5:beb582812473126bf7ee8175ae158680)
// not bridged: 
Theorem HOMEOMORPHIC_ARC_IMAGE_SEGMENT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx M, ~ a = b -> (homeomorphic M N s (closed_segment M (seq_cons (a,b) seq_nil)) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) /\ (arc N g /\ path_image N g = s)).
Admitted.

// HOL Light: Multivariate/paths.ml:2217 / CONNECTED_SUBSET_PATH_IMAGE_ARC   (hash md5:22091ee66192e407c64bb17d6d7a8b2e)
// not bridged: 
Theorem CONNECTED_SUBSET_PATH_IMAGE_ARC : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> arc N g /\ (connected N s /\ (s c= path_image N g /\ (pathstart N g :e s /\ pathfinish N g :e s))) -> s = path_image N g.
Admitted.

// HOL Light: Multivariate/paths.ml:2242 / ARC_IMAGE_UNIQUE   (hash md5:566fad6a723cce08bdbd588b16ae9aaa)
// not bridged: 
Theorem ARC_IMAGE_UNIQUE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> path N g /\ (arc N h /\ (path_image N g c= path_image N h /\ {pathstart N g,pathfinish N g} = {pathstart N h,pathfinish N h})) -> path_image N g = path_image N h.
Admitted.

// HOL Light: Multivariate/paths.ml:2257 / CONNECTED_SUBSET_ARC_PAIR   (hash md5:421ac713b9c888da400b61a2b52bc2cb)
// not bridged: 
Theorem CONNECTED_SUBSET_ARC_PAIR : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> forall s c= R :^: idx N, arc N g /\ (arc N h /\ (pathstart N g = pathstart N h /\ (pathfinish N g = pathfinish N h /\ (path_image N g :/\: path_image N h = {pathstart N g,pathfinish N g} /\ (connected N s /\ (s c= path_image N g :\/: path_image N h /\ (pathstart N g :e s /\ pathfinish N g :e s))))))) -> path_image N g c= s \/ path_image N h c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:2381 / HOMEOMORPHIC_SIMPLE_PATH_IMAGES   (hash md5:bdeefb946745daa1d1e81c84477e0b13)
// not bridged: 
Theorem HOMEOMORPHIC_SIMPLE_PATH_IMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> simple_path M g /\ (pathfinish M g = pathstart M g /\ (simple_path N h /\ pathfinish N h = pathstart N h)) -> homeomorphic N M (path_image M g) (path_image N h).
Admitted.

// HOL Light: Multivariate/paths.ml:2401 / HOMEOMORPHIC_SIMPLE_PATH_IMAGE_CIRCLE_EQ   (hash md5:02674e4c3216b9e8de7519675a24b5e7)
// not bridged: 
Theorem HOMEOMORPHIC_SIMPLE_PATH_IMAGE_CIRCLE_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx_n 2, forall r :e R, 0 < r -> (homeomorphic (idx_n 2) N s (sphere (idx_n 2) (a,r)) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) /\ (simple_path N g /\ (pathfinish N g = pathstart N g /\ path_image N g = s))).
Admitted.

// HOL Light: Multivariate/paths.ml:2488 / HOMEOMORPHIC_SIMPLE_PATH_IMAGE_CIRCLE   (hash md5:2860fd6857c48fcf310cd1a56c61e950)
// not bridged: 
Theorem HOMEOMORPHIC_SIMPLE_PATH_IMAGE_CIRCLE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a :e R :^: idx_n 2, forall r :e R, simple_path N g /\ (pathfinish N g = pathstart N g /\ 0 < r) -> homeomorphic (idx_n 2) N (path_image N g) (sphere (idx_n 2) (a,r)).
Admitted.

// HOL Light: Multivariate/paths.ml:2498 / path_component   (hash md5:d2a2afab33e0edfb11bc71951a2f6855)
// not bridged: 
Theorem path_component_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x y :e R :^: idx A, path_component A s x y <-> exists g:set -> set, (forall x0 :e R :^: idx 1, g x0 :e R :^: idx A) /\ (path A g /\ (path_image A g c= s /\ (pathstart A g = x /\ pathfinish A g = y))).
Admitted.

// HOL Light: Multivariate/paths.ml:2503 / path_components   (hash md5:8ba16f02ce8f96e905852d6c21eae1be)
// not bridged: 
Theorem path_components_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, path_components A s = {{x0 :e R :^: idx A | path_component A s x x0} | x :e R :^: idx A, x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:2506 / PATH_COMPONENT_OF_EUCLIDEAN   (hash md5:a525ef778120e1e3be96c6756aeafb98)
// not bridged: 
Theorem PATH_COMPONENT_OF_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x x0 :e R :^: idx N, path_component_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) x x0 <-> path_component N s x x0.
Admitted.

// HOL Light: Multivariate/paths.ml:2516 / PATH_COMPONENTS_OF_EUCLIDEAN   (hash md5:5b22d970969c6ef95d89696fa6279683)
// not bridged: 
Theorem PATH_COMPONENTS_OF_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, path_components_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) = path_components N s.
Admitted.

// HOL Light: Multivariate/paths.ml:2522 / PATH_COMPONENT_IN   (hash md5:f502d59bc1e38e58fb1d0d2f66d5f712)
// not bridged: 
Theorem PATH_COMPONENT_IN : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x y :e R :^: idx A, path_component A s x y -> x :e s /\ y :e s.
Admitted.

// HOL Light: Multivariate/paths.ml:2528 / PATH_COMPONENT_REFL_EQ   (hash md5:107335395f75cfd1609830a3fea637b8)
// not bridged: 
Theorem PATH_COMPONENT_REFL_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, path_component N s x x <-> x :e s.
Admitted.

// HOL Light: Multivariate/paths.ml:2533 / PATH_COMPONENT_REFL   (hash md5:843c0c850eb7ab68cfc446604edbc9dd)
// not bridged: 
Theorem PATH_COMPONENT_REFL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, x :e s -> path_component N s x x.
Admitted.

// HOL Light: Multivariate/paths.ml:2537 / PATH_COMPONENT_SYM_EQ   (hash md5:2b8749f03c8a5915fe2c22ac3cee7dd9)
// not bridged: 
Theorem PATH_COMPONENT_SYM_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x y :e R :^: idx A, path_component A s x y <-> path_component A s y x.
Admitted.

// HOL Light: Multivariate/paths.ml:2542 / PATH_COMPONENT_SYM   (hash md5:ac6339ab1e7d56ac945385f16686dd9f)
// not bridged: 
Theorem PATH_COMPONENT_SYM : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, path_component N s x y -> path_component N s y x.
Admitted.

// HOL Light: Multivariate/paths.ml:2546 / PATH_COMPONENT_TRANS   (hash md5:f5488b9719c61dcdf6c6248f9873941f)
// not bridged: 
Theorem PATH_COMPONENT_TRANS : forall N:set, N <> Empty -> forall z :e R :^: idx N, forall s c= R :^: idx N, forall x y :e R :^: idx N, path_component N s x y /\ path_component N s y z -> path_component N s x z.
Admitted.

// HOL Light: Multivariate/paths.ml:2551 / PATH_COMPONENT_OF_SUBSET   (hash md5:d2b98277e3f50d660abbd6ed9f728534)
// not bridged: 
Theorem PATH_COMPONENT_OF_SUBSET : forall A:set, A <> Empty -> forall y :e R :^: idx A, forall s t c= R :^: idx A, forall x :e R :^: idx A, s c= t /\ path_component A s x y -> path_component A t x y.
Admitted.

// HOL Light: Multivariate/paths.ml:2559 / PATH_COMPONENT_SET   (hash md5:232e91c05b4060d48dd8e67839d4c4b4)
// not bridged: 
Theorem PATH_COMPONENT_SET : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x x0 :e R :^: idx A, path_component A s x x0 <-> x0 :e {y :e R :^: idx A | exists g:set -> set, (forall x1 :e R :^: idx 1, g x1 :e R :^: idx A) /\ (path A g /\ (path_image A g c= s /\ (pathstart A g = x /\ pathfinish A g = y)))}.
Admitted.

// HOL Light: Multivariate/paths.ml:2565 / PATH_COMPONENT_SUBSET   (hash md5:4a92f0f42f475a12e69edc852ab50e35)
// not bridged: 
Theorem PATH_COMPONENT_SUBSET : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, {x0 :e R :^: idx A | path_component A s x x0} c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:2569 / PATH_COMPONENT_EQ_EMPTY   (hash md5:10df1f1641481a98c97afb33064219c8)
// not bridged: 
Theorem PATH_COMPONENT_EQ_EMPTY : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, (forall x0 :e R :^: idx A, path_component A s x x0 <-> x0 :e Empty) <-> ~ x :e s.
Admitted.

// HOL Light: Multivariate/paths.ml:2574 / PATH_COMPONENT_EMPTY   (hash md5:4186c58bd9d17ef1b90697d8e03798f1)
// not bridged: 
Theorem PATH_COMPONENT_EMPTY : forall A:set, A <> Empty -> forall x x0 :e R :^: idx A, path_component A Empty x x0 <-> x0 :e Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:2578 / UNIONS_PATH_COMPONENT   (hash md5:7115589272c6268a21644918c890d34b)
// not bridged: 
Theorem UNIONS_PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, Union {{x0 :e R :^: idx N | path_component N s x x0} | x :e R :^: idx N, x :e s} = s.
Admitted.

// HOL Light: Multivariate/paths.ml:2586 / PATH_COMPONENT_TRANSLATION   (hash md5:db6b12c947335ef24153a5c9b61ac1fb)
// not bridged: 
Theorem PATH_COMPONENT_TRANSLATION : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall s c= R :^: idx A, forall x x0 :e R :^: idx A, path_component A {vector_add A a x1 | x1 :e s} (vector_add A a x) x0 <-> x0 :e {vector_add A a x1 | x1 :e {x1 :e R :^: idx A | path_component A s x x1}}.
Admitted.

// HOL Light: Multivariate/paths.ml:2593 / PATH_COMPONENT_LINEAR_IMAGE   (hash md5:3a61c5846eeedb83778c90c241c1dc02)
// not bridged: 
Theorem PATH_COMPONENT_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, forall x :e R :^: idx B, linear B A f /\ ((forall x0 y :e R :^: idx B, f x0 = f y -> x0 = y) /\ (forall y :e R :^: idx A, exists x0 :e R :^: idx B, f x0 = y)) -> forall x0 :e R :^: idx A, path_component A {f x | x :e s} (f x) x0 <-> x0 :e {f x0 | x0 :e {x1 :e R :^: idx B | path_component B s x x1}}.
Admitted.

// HOL Light: Multivariate/paths.ml:2606 / path_connected   (hash md5:0ea9c9da94220655fb912d4dedbf7314)
// not bridged: 
Theorem path_connected_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, path_connected A s <-> forall x y :e R :^: idx A, x :e s /\ y :e s -> exists g:set -> set, (forall x0 :e R :^: idx 1, g x0 :e R :^: idx A) /\ (path A g /\ (path_image A g c= s /\ (pathstart A g = x /\ pathfinish A g = y))).
Admitted.

// HOL Light: Multivariate/paths.ml:2612 / PATH_CONNECTED_IFF_PATH_COMPONENT   (hash md5:f838e167efaa18a175b44e9a50cce5fb)
// not bridged: 
Theorem PATH_CONNECTED_IFF_PATH_COMPONENT : forall A:set, A <> Empty -> forall s c= R :^: idx A, path_connected A s <-> forall x y :e R :^: idx A, x :e s /\ y :e s -> path_component A s x y.
Admitted.

// HOL Light: Multivariate/paths.ml:2616 / PATH_CONNECTED_IN_EUCLIDEAN   (hash md5:74e7852230e469f2d0e921187921bdcf)
// not bridged: 
Theorem PATH_CONNECTED_IN_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, path_connected_in (R :^: idx N) (euclidean N) s <-> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:2623 / PATH_CONNECTED_SPACE_EUCLIDEAN_SUBTOPOLOGY   (hash md5:a7a524cb5ecac3fb08ef08014f7328b5)
// not bridged: 
Theorem PATH_CONNECTED_SPACE_EUCLIDEAN_SUBTOPOLOGY : forall N:set, N <> Empty -> forall s c= R :^: idx N, path_connected_space (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) <-> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:2631 / PATH_CONNECTED_IMP_PATH_COMPONENT   (hash md5:7a27bfa0de1e3ddd0e3957afd5ab49fe)
// not bridged: 
Theorem PATH_CONNECTED_IMP_PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, path_connected N s /\ (a :e s /\ b :e s) -> path_component N s a b.
Admitted.

// HOL Light: Multivariate/paths.ml:2636 / PATH_CONNECTED_COMPONENT_SET   (hash md5:5b8091f31c8e52adec801e140b6633b7)
// not bridged: 
Theorem PATH_CONNECTED_COMPONENT_SET : forall A:set, A <> Empty -> forall s c= R :^: idx A, path_connected A s <-> forall x :e R :^: idx A, x :e s -> forall x0 :e R :^: idx A, path_component A s x x0 <-> x0 :e s.
Admitted.

// HOL Light: Multivariate/paths.ml:2641 / PATH_COMPONENT_MONO   (hash md5:643105c57058842f69f67d25ba290462)
// not bridged: 
Theorem PATH_COMPONENT_MONO : forall A:set, A <> Empty -> forall s t c= R :^: idx A, forall x :e R :^: idx A, s c= t -> {x0 :e R :^: idx A | path_component A s x x0} c= {x0 :e R :^: idx A | path_component A t x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:2645 / PATH_COMPONENT_MAXIMAL   (hash md5:8d974a9bd9b7ad75e43422f0e0cc6444)
// not bridged: 
Theorem PATH_COMPONENT_MAXIMAL : forall A:set, A <> Empty -> forall s t c= R :^: idx A, forall x :e R :^: idx A, x :e t /\ (path_connected A t /\ t c= s) -> t c= {x0 :e R :^: idx A | path_component A s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:2651 / PATH_COMPONENT_EQ   (hash md5:c2186383ec6ffec1fded373c516005b1)
// not bridged: 
Theorem PATH_COMPONENT_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x y :e R :^: idx A, y :e {x0 :e R :^: idx A | path_component A s x x0} -> forall x0 :e R :^: idx A, path_component A s y x0 <-> path_component A s x x0.
Admitted.

// HOL Light: Multivariate/paths.ml:2657 / PATH_CONNECTED_PATH_IMAGE   (hash md5:dc28de71a9368248416aa8ef5f5d1dc7)
// not bridged: 
Theorem PATH_CONNECTED_PATH_IMAGE : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> path N p -> path_connected N (path_image N p).
Admitted.

// HOL Light: Multivariate/paths.ml:2664 / PATH_COMPONENT_PATH_IMAGE_PATHSTART   (hash md5:6475c4ef2915f6e8388fc7bd1b174da8)
// not bridged: 
Theorem PATH_COMPONENT_PATH_IMAGE_PATHSTART : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall x :e R :^: idx N, path N p /\ x :e path_image N p -> path_component N (path_image N p) (pathstart N p) x.
Admitted.

// HOL Light: Multivariate/paths.ml:2674 / PATH_CONNECTED_PATH_COMPONENT   (hash md5:ac3998ad5e882f3a331c72760aef615a)
// not bridged: 
Theorem PATH_CONNECTED_PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, path_connected N {x0 :e R :^: idx N | path_component N s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:2682 / PATH_COMPONENT   (hash md5:8bbd115f60f1b39474d921ea9c9e82da)
// not bridged: 
Theorem PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, path_component N s x y <-> exists t c= R :^: idx N, path_connected N t /\ (t c= s /\ (x :e t /\ y :e t)).
Admitted.

// HOL Light: Multivariate/paths.ml:2693 / PATH_COMPONENT_PATH_COMPONENT   (hash md5:16be8fb266ca114bc0c281c936a8e913)
// not bridged: 
Theorem PATH_COMPONENT_PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x x0 :e R :^: idx N, path_component N {x1 :e R :^: idx N | path_component N s x x1} x x0 <-> path_component N s x x0.
Admitted.

// HOL Light: Multivariate/paths.ml:2707 / PATH_CONNECTED_LINEPATH   (hash md5:1cbe7730a33a9345026a4c26d2baa2d4)
// not bridged: 
Theorem PATH_CONNECTED_LINEPATH : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, closed_segment N (seq_cons (a,b) seq_nil) c= s -> path_component N s a b.
Admitted.

// HOL Light: Multivariate/paths.ml:2714 / PATH_COMPONENT_DISJOINT   (hash md5:b0e7ac9ce8c8128726faa1e960cb5343)
// not bridged: 
Theorem PATH_COMPONENT_DISJOINT : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a b :e R :^: idx A, {x :e R :^: idx A | path_component A s a x} :/\: {x :e R :^: idx A | path_component A s b x} = Empty <-> ~ a :e {x :e R :^: idx A | path_component A s b x}.
Admitted.

// HOL Light: Multivariate/paths.ml:2720 / PATH_COMPONENT_EQ_EQ   (hash md5:9e604585ae6585c47e93f1884fb29258)
// not bridged: 
Theorem PATH_COMPONENT_EQ_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, (forall x0 :e R :^: idx N, path_component N s x x0 <-> path_component N s y x0) <-> ~ x :e s /\ ~ y :e s \/ x :e s /\ (y :e s /\ path_component N s x y).
Admitted.

// HOL Light: Multivariate/paths.ml:2736 / PATH_COMPONENT_UNIQUE   (hash md5:88ecb11071fe98c73c87dab11ca63015)
// not bridged: 
Theorem PATH_COMPONENT_UNIQUE : forall N:set, N <> Empty -> forall s c c= R :^: idx N, forall x :e R :^: idx N, x :e c /\ (c c= s /\ (path_connected N c /\ (forall c' c= R :^: idx N, x :e c' /\ (c' c= s /\ path_connected N c') -> c' c= c))) -> forall x0 :e R :^: idx N, path_component N s x x0 <-> x0 :e c.
Admitted.

// HOL Light: Multivariate/paths.ml:2749 / PATH_COMPONENT_INTERMEDIATE_SUBSET   (hash md5:bda71f1f6f995c34b47027b5e61072ae)
// not bridged: 
Theorem PATH_COMPONENT_INTERMEDIATE_SUBSET : forall N:set, N <> Empty -> forall t u c= R :^: idx N, forall a :e R :^: idx N, {x :e R :^: idx N | path_component N u a x} c= t /\ t c= u -> forall x :e R :^: idx N, path_component N t a x <-> path_component N u a x.
Admitted.

// HOL Light: Multivariate/paths.ml:2761 / COMPLEMENT_PATH_COMPONENT_UNIONS   (hash md5:909609dbae281ca8662a4221eaa193cb)
// not bridged: 
Theorem COMPLEMENT_PATH_COMPONENT_UNIONS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, s :\: {x0 :e R :^: idx N | path_component N s x x0} = Union ({{x0 :e R :^: idx N | path_component N s y x0} | y :e R :^: idx N, y :e s} :\: {{x0 :e R :^: idx N | path_component N s x x0}}).
Admitted.

// HOL Light: Multivariate/paths.ml:2778 / OPEN_GENERAL_COMPONENT   (hash md5:2be2e2f5e4d9e15dab3f31a3551c20a4)
// not bridged: 
Theorem OPEN_GENERAL_COMPONENT : forall N:set, N <> Empty -> forall c :e Power (R :^: idx N) :^: (R :^: idx N) :^: Power (R :^: idx N), (forall s c= R :^: idx N, forall x y :e R :^: idx N, y :e c s x -> x :e s /\ y :e s) /\ ((forall s c= R :^: idx N, forall x y :e R :^: idx N, y :e c s x -> x :e c s y) /\ ((forall s c= R :^: idx N, forall x y z :e R :^: idx N, y :e c s x /\ z :e c s y -> z :e c s x) /\ ((forall s t c= R :^: idx N, forall x y :e R :^: idx N, s c= t /\ y :e c s x -> y :e c t x) /\ (forall s c= R :^: idx N, forall x y :e R :^: idx N, forall e0 :e R, y :e ball N (x,e0) /\ ball N (x,e0) c= s -> y :e c (ball N (x,e0)) x)))) -> forall s c= R :^: idx N, forall x :e R :^: idx N, open N s -> open N (c s x).
Admitted.

// HOL Light: Multivariate/paths.ml:2805 / OPEN_NON_GENERAL_COMPONENT   (hash md5:cf6efba76227233d4a99b96de357d776)
// not bridged: 
Theorem OPEN_NON_GENERAL_COMPONENT : forall N:set, N <> Empty -> forall c :e Power (R :^: idx N) :^: (R :^: idx N) :^: Power (R :^: idx N), (forall s c= R :^: idx N, forall x y :e R :^: idx N, y :e c s x -> x :e s /\ y :e s) /\ ((forall s c= R :^: idx N, forall x y :e R :^: idx N, y :e c s x -> x :e c s y) /\ ((forall s c= R :^: idx N, forall x y z :e R :^: idx N, y :e c s x /\ z :e c s y -> z :e c s x) /\ ((forall s t c= R :^: idx N, forall x y :e R :^: idx N, s c= t /\ y :e c s x -> y :e c t x) /\ (forall s c= R :^: idx N, forall x y :e R :^: idx N, forall e0 :e R, y :e ball N (x,e0) /\ ball N (x,e0) c= s -> y :e c (ball N (x,e0)) x)))) -> forall s c= R :^: idx N, forall x :e R :^: idx N, open N s -> open N (s :\: c s x).
Admitted.

// HOL Light: Multivariate/paths.ml:2833 / GENERAL_CONNECTED_OPEN   (hash md5:39b6114ec174511bc2f53c973c8c23a2)
// not bridged: 
Theorem GENERAL_CONNECTED_OPEN : forall N:set, N <> Empty -> forall c:set -> set -> set -> prop, (forall s c= R :^: idx N, forall x y :e R :^: idx N, c s x y -> x :e s /\ y :e s) /\ ((forall s c= R :^: idx N, forall x y :e R :^: idx N, c s x y -> c s y x) /\ ((forall s c= R :^: idx N, forall x y z :e R :^: idx N, c s x y /\ c s y z -> c s x z) /\ ((forall s t c= R :^: idx N, forall x y :e R :^: idx N, s c= t /\ c s x y -> c t x y) /\ (forall s c= R :^: idx N, forall x y :e R :^: idx N, forall e0 :e R, y :e ball N (x,e0) /\ ball N (x,e0) c= s -> c (ball N (x,e0)) x y)))) -> forall s c= R :^: idx N, forall x y :e R :^: idx N, open N s /\ (connected N s /\ (x :e s /\ y :e s)) -> c s x y.
Admitted.

// HOL Light: Multivariate/paths.ml:2872 / CONVEX_IMP_PATH_CONNECTED   (hash md5:910b9613fd412ad43d999a6067092864)
// not bridged: 
Theorem CONVEX_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:2885 / PATH_CONNECTED_UNIV   (hash md5:e1d54b3c0d104958eb5fa17fd6c73ee7)
// not bridged: 
Theorem PATH_CONNECTED_UNIV : forall N:set, N <> Empty -> path_connected N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/paths.ml:2889 / IS_INTERVAL_PATH_CONNECTED   (hash md5:35e37764052499e1597547d1bf2a7993)
// not bridged: 
Theorem IS_INTERVAL_PATH_CONNECTED : forall A:set, A <> Empty -> forall s c= R :^: idx A, is_interval A s -> path_connected A s.
Admitted.

// HOL Light: Multivariate/paths.ml:2893 / PATH_CONNECTED_INTERVAL   (hash md5:77da0f9ef7c051b7be0a12c11574c08b)
// not bridged: 
Theorem PATH_CONNECTED_INTERVAL : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, path_connected N (closed_interval N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, path_connected N (open_interval N (a,b)).
Admitted.

// HOL Light: Multivariate/paths.ml:2898 / PATH_COMPONENT_UNIV   (hash md5:a2b22a155a81f34a7e3418be7c800f98)
// not bridged: 
Theorem PATH_COMPONENT_UNIV : forall N:set, N <> Empty -> forall x x0 :e R :^: idx N, path_component N (R :^: idx N) x x0 <-> x0 :e R :^: idx N.
Admitted.

// HOL Light: Multivariate/paths.ml:2902 / PATH_CONNECTED_IMP_CONNECTED   (hash md5:de91760b7734055586719e713390d351)
// not bridged: 
Theorem PATH_CONNECTED_IMP_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, path_connected N s -> connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:2915 / OPEN_PATH_COMPONENT   (hash md5:efdba42ec0749e16a3055edee02becab)
// not bridged: 
Theorem OPEN_PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, open N s -> open N {x0 :e R :^: idx N | path_component N s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:2924 / OPEN_NON_PATH_COMPONENT   (hash md5:91090f048cc90c834c1aba5ae3697d33)
// not bridged: 
Theorem OPEN_NON_PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, open N s -> open N (s :\: {x0 :e R :^: idx N | path_component N s x x0}).
Admitted.

// HOL Light: Multivariate/paths.ml:2933 / PATH_CONNECTED_CONTINUOUS_IMAGE   (hash md5:8f018098883ff84d710af6a34c6f4e10)
// not bridged: 
Theorem PATH_CONNECTED_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ path_connected M s -> path_connected N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:2948 / HOMEOMORPHIC_PATH_CONNECTEDNESS   (hash md5:57ae03c9274fa8970f06761a64b081ba)
// not bridged: 
Theorem HOMEOMORPHIC_PATH_CONNECTEDNESS : forall A B:set, A <> Empty -> B <> Empty -> forall s c= R :^: idx A, forall t c= R :^: idx B, homeomorphic B A s t -> (path_connected A s <-> path_connected B t).
Admitted.

// HOL Light: Multivariate/paths.ml:2953 / PATH_CONNECTED_LINEAR_IMAGE   (hash md5:1254a615cfb21a451835388069be5174)
// not bridged: 
Theorem PATH_CONNECTED_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, path_connected M s /\ linear M N f -> path_connected N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:2958 / PATH_CONNECTED_LINEAR_IMAGE_EQ   (hash md5:0f9eda0eb8c6165700a5a72e3f1a90f2)
// not bridged: 
Theorem PATH_CONNECTED_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ (forall x y :e R :^: idx B, f x = f y -> x = y) -> (path_connected A {f x | x :e s} <-> path_connected B s).
Admitted.

// HOL Light: Multivariate/paths.ml:2965 / HOMEOMORPHISM_PATH_CONNECTEDNESS   (hash md5:bc4b2dbe232702e900969d9d7a7b3cc9)
// not bridged: 
Theorem HOMEOMORPHISM_PATH_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall g :e R :^: idx M :^: (R :^: idx N), forall s c= R :^: idx M, forall t c= R :^: idx N, forall k c= R :^: idx M, homeomorphism M N (s,t) (f,g) /\ k c= s -> (path_connected N {f x | x :e k} <-> path_connected M k).
Admitted.

// HOL Light: Multivariate/paths.ml:2976 / PATH_CONNECTED_EMPTY   (hash md5:bd5f0d0b4b938726d21f402f82297508)
// not bridged: 
Theorem PATH_CONNECTED_EMPTY : forall A:set, A <> Empty -> path_connected A Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:2980 / PATH_CONNECTED_SING   (hash md5:60e0eb239ef3084ef2bba24a003ae699)
// not bridged: 
Theorem PATH_CONNECTED_SING : forall N:set, N <> Empty -> forall a :e R :^: idx N, path_connected N {a}.
Admitted.

// HOL Light: Multivariate/paths.ml:2987 / PATH_CONNECTED_UNION   (hash md5:ecac425dc7bea312e06e9392a0e640db)
// not bridged: 
Theorem PATH_CONNECTED_UNION : forall A:set, A <> Empty -> forall s t c= R :^: idx A, path_connected A s /\ (path_connected A t /\ ~ s :/\: t = Empty) -> path_connected A (s :\/: t).
Admitted.

// HOL Light: Multivariate/paths.ml:2994 / PATH_CONNECTED_UNIONS   (hash md5:20765b5fdebd2162470c44774ef72611)
// not bridged: 
Theorem PATH_CONNECTED_UNIONS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (forall s c= R :^: idx N, s :e f -> path_connected N s) /\ ~ {x :e R :^: idx N | forall Y :e f, x :e Y} = Empty -> path_connected N (Union f).
Admitted.

// HOL Light: Multivariate/paths.ml:3020 / PATH_CONNECTED_TRANSLATION   (hash md5:582b378d443f0c429bf959d56542577b)
// not bridged: 
Theorem PATH_CONNECTED_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, path_connected N s -> path_connected N {vector_add N a x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:3025 / PATH_CONNECTED_TRANSLATION_EQ   (hash md5:c9b20690ea16f4a7ce5c88c3e5b0e1ed)
// not bridged: 
Theorem PATH_CONNECTED_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, path_connected N {vector_add N a x | x :e s} <-> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:3031 / PATH_CONNECTED_PCROSS   (hash md5:5062c0eab5402f085e2b6ac7dc37d745)
// not bridged: 
Theorem PATH_CONNECTED_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, path_connected M s /\ path_connected N t -> path_connected (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/paths.ml:3060 / PATH_CONNECTED_PCROSS_EQ   (hash md5:aa9e833ae0c0bc2930d24c4cca625971)
// not bridged: 
Theorem PATH_CONNECTED_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, path_connected (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ path_connected M s /\ path_connected N t).
Admitted.

// HOL Light: Multivariate/paths.ml:3083 / PATH_COMPONENT_PCROSS   (hash md5:9a8a84e708a5e26f57fe5ee6e3795b53)
// not bridged: 
Theorem PATH_COMPONENT_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall a :e R :^: idx M, forall b :e R :^: idx N, forall x :e R :^: idx_n (dimindex M + dimindex N), path_component (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) (pastecart M N a b) x <-> x :e \/_ x :e {x0 :e R :^: idx M | path_component M s a x0}, {pastecart M N x y | y :e {x0 :e R :^: idx N | path_component N t b x0}}.
Admitted.

// HOL Light: Multivariate/paths.ml:3111 / PATH_CONNECTED_SCALING   (hash md5:e6ac4ccc3acb2b4dd4188aa5207a90c5)
// not bridged: 
Theorem PATH_CONNECTED_SCALING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, path_connected N s -> path_connected N {vector_mul N c x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:3120 / PATH_CONNECTED_SCALING_EQ   (hash md5:ce0df9635f79de5ec44c8aab2e952187)
// not bridged: 
Theorem PATH_CONNECTED_SCALING_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, path_connected N {vector_mul N c x | x :e s} <-> c = 0 \/ path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:3132 / PATH_CONNECTED_AFFINITY_EQ   (hash md5:799d5056dfa203805896d5d050e894ee)
// not bridged: 
Theorem PATH_CONNECTED_AFFINITY_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, path_connected N {vector_add N (vector_mul N m x) c | x :e s} <-> m = 0 \/ path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:3139 / PATH_CONNECTED_AFFINITY   (hash md5:d8a1defa3b30da63f0c1ad3cba3e1da9)
// not bridged: 
Theorem PATH_CONNECTED_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, path_connected N s -> path_connected N {vector_add N (vector_mul N m x) c | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:3144 / PATH_CONNECTED_NEGATIONS   (hash md5:0741efec4808b00db99ada98a3a66d0b)
// not bridged: 
Theorem PATH_CONNECTED_NEGATIONS : forall N:set, N <> Empty -> forall s c= R :^: idx N, path_connected N s -> path_connected N {vector_neg N x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:3153 / PATH_CONNECTED_SUMS   (hash md5:ea56b6b6098928a3e46e090b3c040077)
// not bridged: 
Theorem PATH_CONNECTED_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, path_connected N s /\ path_connected N t -> path_connected N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/paths.ml:3170 / IS_INTERVAL_PATH_CONNECTED_1   (hash md5:a73eadb5dffcfeab7708b00e660b58bb)
// not bridged: 
Theorem IS_INTERVAL_PATH_CONNECTED_1 : forall s c= R :^: idx 1, is_interval 1 s <-> path_connected 1 s.
Admitted.

// HOL Light: Multivariate/paths.ml:3179 / CARD_LE_PATH_COMPONENTS   (hash md5:c6a97b27b8521545996c983d871bf2f0)
// not bridged: 
Theorem CARD_LE_PATH_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s -> atleastp {{x :e R :^: idx N | path_component N {f x | x :e s} y x} | y :e R :^: idx N, y :e {f x | x :e s}} {{x0 :e R :^: idx M | path_component M s x x0} | x :e R :^: idx M, x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:3200 / CARD_LE_CONNECTED_COMPONENTS   (hash md5:0a4e6d62c627c43c1db727a9dc7da55b)
// not bridged: 
Theorem CARD_LE_CONNECTED_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s -> atleastp {{x :e R :^: idx N | connected_component N {f x | x :e s} y x} | y :e R :^: idx N, y :e {f x | x :e s}} {{x0 :e R :^: idx M | connected_component M s x x0} | x :e R :^: idx M, x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:3221 / CARD_LE_COMPONENTS   (hash md5:112df8f2c1c1f0c7535b4a87949c3498)
// not bridged: 
Theorem CARD_LE_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s -> atleastp (components N {f x | x :e s}) (components M s).
Admitted.

// HOL Light: Multivariate/paths.ml:3230 / PATH_CONNECTED_SEGMENT   (hash md5:4139c3edeebf14b023ff0b8114016380)
// not bridged: 
Theorem PATH_CONNECTED_SEGMENT : forall A B:set, A <> Empty -> B <> Empty -> (forall a b :e R :^: idx A, path_connected A (closed_segment A (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx B, path_connected B (open_segment B (a,b)).
Admitted.

// HOL Light: Multivariate/paths.ml:3235 / PATH_CONNECTED_SEMIOPEN_SEGMENT   (hash md5:979178a9aa80bb25789381e1ce60dae6)
// not bridged: 
Theorem PATH_CONNECTED_SEMIOPEN_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, path_connected N (closed_segment N (seq_cons (a,b) seq_nil) :\: {a})) /\ forall a b :e R :^: idx N, path_connected N (closed_segment N (seq_cons (a,b) seq_nil) :\: {b}).
Admitted.

// HOL Light: Multivariate/paths.ml:3240 / SUBSET_CONTINUOUS_IMAGE_SEGMENT_1   (hash md5:9a7e742c7cd6b02f7a83409388c570c5)
// not bridged: 
Theorem SUBSET_CONTINUOUS_IMAGE_SEGMENT_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall a b :e R :^: idx N, continuous_on_hl N 1 f (closed_segment N (seq_cons (a,b) seq_nil)) -> closed_segment 1 (seq_cons (f a,f b) seq_nil) c= {f x | x :e closed_segment N (seq_cons (a,b) seq_nil)}.
Admitted.

// HOL Light: Multivariate/paths.ml:3252 / CONTINUOUS_INJECTIVE_IMAGE_SEGMENT_1   (hash md5:7a3c19fbcfc09884882962b6ead57976)
// not bridged: 
Theorem CONTINUOUS_INJECTIVE_IMAGE_SEGMENT_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall a b :e R :^: idx N, continuous_on_hl N 1 f (closed_segment N (seq_cons (a,b) seq_nil)) /\ (forall x y :e R :^: idx N, x :e closed_segment N (seq_cons (a,b) seq_nil) /\ (y :e closed_segment N (seq_cons (a,b) seq_nil) /\ f x = f y) -> x = y) -> {f x | x :e closed_segment N (seq_cons (a,b) seq_nil)} = closed_segment 1 (seq_cons (f a,f b) seq_nil).
Admitted.

// HOL Light: Multivariate/paths.ml:3307 / CONTINUOUS_INJECTIVE_IMAGE_OPEN_SEGMENT_1   (hash md5:830d6bc6c17f3e80de0b7aea6acc1196)
// not bridged: 
Theorem CONTINUOUS_INJECTIVE_IMAGE_OPEN_SEGMENT_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall a b :e R :^: idx N, continuous_on_hl N 1 f (closed_segment N (seq_cons (a,b) seq_nil)) /\ (forall x y :e R :^: idx N, x :e closed_segment N (seq_cons (a,b) seq_nil) /\ (y :e closed_segment N (seq_cons (a,b) seq_nil) /\ f x = f y) -> x = y) -> {f x | x :e open_segment N (a,b)} = open_segment 1 (f a,f b).
Admitted.

// HOL Light: Multivariate/paths.ml:3320 / CONTINUOUS_IVT_LOCAL_EXTREMUM   (hash md5:3e980ea5dcd15b009756e67a33a27771)
// not bridged: 
Theorem CONTINUOUS_IVT_LOCAL_EXTREMUM : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall a b :e R :^: idx N, continuous_on_hl N 1 f (closed_segment N (seq_cons (a,b) seq_nil)) /\ (~ a = b /\ f a = f b) -> exists z :e R :^: idx N, z :e open_segment N (a,b) /\ ((forall w :e R :^: idx N, w :e closed_segment N (seq_cons (a,b) seq_nil) -> drop (f w) <= drop (f z)) \/ forall w :e R :^: idx N, w :e closed_segment N (seq_cons (a,b) seq_nil) -> drop (f z) <= drop (f w)).
Admitted.

// HOL Light: Multivariate/paths.ml:3348 / FRONTIER_UNIONS_SUBSET_CLOSURE   (hash md5:4abeec99a7e08b316ea254fb997fb2d4)
// not bridged: 
Theorem FRONTIER_UNIONS_SUBSET_CLOSURE : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), frontier N (Union f) c= closure N (Union {frontier N t | t :e Power (R :^: idx N), t :e f}).
Admitted.

// HOL Light: Multivariate/paths.ml:3375 / FRONTIER_UNIONS_SUBSET   (hash md5:812afb520cbed02169cf181510e5b961)
// not bridged: 
Theorem FRONTIER_UNIONS_SUBSET : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), finite f -> frontier N (Union f) c= Union {frontier N t | t :e Power (R :^: idx N), t :e f}.
Admitted.

// HOL Light: Multivariate/paths.ml:3384 / CLOSURE_CONVEX_INTER_AFFINE   (hash md5:a98ec1a8a09432c73e18707d31cd5d8b)
// not bridged: 
Theorem CLOSURE_CONVEX_INTER_AFFINE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (affine N t /\ ~ relative_interior N s :/\: t = Empty) -> closure N (s :/\: t) = closure N s :/\: t.
Admitted.

// HOL Light: Multivariate/paths.ml:3421 / RELATIVE_FRONTIER_CONVEX_INTER_AFFINE   (hash md5:ea75dc5d71c8baba228f5876e4b5ee84)
// not bridged: 
Theorem RELATIVE_FRONTIER_CONVEX_INTER_AFFINE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (affine N t /\ ~ interior N s :/\: t = Empty) -> relative_frontier N (s :/\: t) = frontier N s :/\: t.
Admitted.

// HOL Light: Multivariate/paths.ml:3434 / RELATIVE_FRONTIER_CBALL_INTER_AFFINE   (hash md5:57ced403eac0d65d96816c72caac8ab8)
// not bridged: 
Theorem RELATIVE_FRONTIER_CBALL_INTER_AFFINE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, affine N s /\ (a :e s /\ ~ r = 0) -> relative_frontier N (cball N (a,r) :/\: s) = sphere N (a,r) :/\: s.
Admitted.

// HOL Light: Multivariate/paths.ml:3448 / CONNECTED_COMPONENT_1_GEN   (hash md5:3f0c7689460e9ab77eb50dbee46c6841)
// not bridged: 
Theorem CONNECTED_COMPONENT_1_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, dimindex N = 1 -> (connected_component N s a b <-> closed_segment N (seq_cons (a,b) seq_nil) c= s).
Admitted.

// HOL Light: Multivariate/paths.ml:3456 / CONNECTED_COMPONENT_1   (hash md5:f2e11f011134e24d14f05e1111ee0ce8)
// not bridged: 
Theorem CONNECTED_COMPONENT_1 : forall s c= R :^: idx 1, forall a b :e R :^: idx 1, connected_component 1 s a b <-> closed_segment 1 (seq_cons (a,b) seq_nil) c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:3460 / HOMEOMORPHIC_SEGMENTS   (hash md5:b1fdd5f0984174b01c25901305d0f5f1)
// not bridged: 
Theorem HOMEOMORPHIC_SEGMENTS : forall M N:set, M <> Empty -> N <> Empty -> (forall a b :e R :^: idx M, forall c d :e R :^: idx N, homeomorphic N M (closed_segment M (seq_cons (a,b) seq_nil)) (closed_segment N (seq_cons (c,d) seq_nil)) <-> (a = b <-> c = d)) /\ ((forall a b :e R :^: idx M, forall c d :e R :^: idx N, ~ homeomorphic N M (closed_segment M (seq_cons (a,b) seq_nil)) (open_segment N (c,d))) /\ ((forall a b :e R :^: idx M, forall c d :e R :^: idx N, ~ homeomorphic N M (open_segment M (a,b)) (closed_segment N (seq_cons (c,d) seq_nil))) /\ forall a b :e R :^: idx M, forall c d :e R :^: idx N, homeomorphic N M (open_segment M (a,b)) (open_segment N (c,d)) <-> (a = b <-> c = d))).
Admitted.

// HOL Light: Multivariate/paths.ml:3498 / HOMEOMORPHISM_SEGMENT   (hash md5:0655cd5d7d906d740d00297baddbca2b)
// not bridged: 
Theorem HOMEOMORPHISM_SEGMENT : forall N:set, N <> Empty -> forall a b :e R :^: idx N, ~ a = b -> exists h :e R :^: idx 1 :^: (R :^: idx N), homeomorphism 1 N (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil),closed_segment N (seq_cons (a,b) seq_nil)) (fun t :e R :^: idx 1 => vector_add N (vector_mul N (1 + - drop t) a) (vector_mul N (drop t) b),h).
Admitted.

// HOL Light: Multivariate/paths.ml:3515 / CONNECTED_SUBSET_SEGMENT   (hash md5:728aa023a8747c213cc62c58b1921ae3)
// not bridged: 
Theorem CONNECTED_SUBSET_SEGMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, connected N s /\ (s c= closed_segment N (seq_cons (a,b) seq_nil) /\ (a :e s /\ b :e s)) -> s = closed_segment N (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/paths.ml:3546 / DIAMETER_SEGMENT   (hash md5:8641d5766c145734ffcbba090ae2e870)
// not bridged: 
Theorem DIAMETER_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, diameter N (closed_segment N (seq_cons (a,b) seq_nil)) = distance N (a,b)) /\ forall a b :e R :^: idx N, diameter N (open_segment N (a,b)) = distance N (a,b).
Admitted.

// HOL Light: Multivariate/paths.ml:3565 / SIMPLE_PATH_ENDLESS   (hash md5:6cc4122ad12bb6c25c7409a85547bdc5)
// not bridged: 
Theorem SIMPLE_PATH_ENDLESS : forall N:set, N <> Empty -> forall c:set -> set, (forall x :e R :^: idx 1, c x :e R :^: idx N) -> simple_path N c -> path_image N c :\: {pathstart N c,pathfinish N c} = {c x | x :e open_interval 1 (vec 1 0,vec 1 1)}.
Admitted.

// HOL Light: Multivariate/paths.ml:3580 / PATH_CONNECTED_SIMPLE_PATH_ENDLESS   (hash md5:f3d79fb65c931ebb7777a231de53a742)
// not bridged: 
Theorem PATH_CONNECTED_SIMPLE_PATH_ENDLESS : forall N:set, N <> Empty -> forall c:set -> set, (forall x :e R :^: idx 1, c x :e R :^: idx N) -> simple_path N c -> path_connected N (path_image N c :\: {pathstart N c,pathfinish N c}).
Admitted.

// HOL Light: Multivariate/paths.ml:3592 / CONNECTED_SIMPLE_PATH_ENDLESS   (hash md5:888a1fb610c8f55683ccaf63d2f32d50)
// not bridged: 
Theorem CONNECTED_SIMPLE_PATH_ENDLESS : forall N:set, N <> Empty -> forall c:set -> set, (forall x :e R :^: idx 1, c x :e R :^: idx N) -> simple_path N c -> connected N (path_image N c :\: {pathstart N c,pathfinish N c}).
Admitted.

// HOL Light: Multivariate/paths.ml:3598 / NONEMPTY_SIMPLE_PATH_ENDLESS   (hash md5:85b3c3269ed31940636db4b6caf91fa0)
// not bridged: 
Theorem NONEMPTY_SIMPLE_PATH_ENDLESS : forall N:set, N <> Empty -> forall c:set -> set, (forall x :e R :^: idx 1, c x :e R :^: idx N) -> simple_path N c -> ~ path_image N c :\: {pathstart N c,pathfinish N c} = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:3604 / CONNECTED_ARC_IMAGE_DELETE   (hash md5:5e521e59edc20a2a69a228b02d35bc51)
// not bridged: 
Theorem CONNECTED_ARC_IMAGE_DELETE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a :e R :^: idx N, arc N g /\ a :e path_image N g -> (connected N (path_image N g :\: {a}) <-> a :e {pathstart N g,pathfinish N g}).
Admitted.

// HOL Light: Multivariate/paths.ml:3647 / CONNECTED_SIMPLE_PATH_IMAGE_DELETE   (hash md5:82465e9625e73501f32a74480ae344b5)
// not bridged: 
Theorem CONNECTED_SIMPLE_PATH_IMAGE_DELETE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a :e R :^: idx N, simple_path N g /\ pathfinish N g = pathstart N g -> connected N (path_image N g :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:3664 / HOMEOMORPHIC_SIMPLE_PATH_ARC   (hash md5:ba6f377377ae9402de652152d70d1b8e)
// not bridged: 
Theorem HOMEOMORPHIC_SIMPLE_PATH_ARC : forall M N:set, M <> Empty -> N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> arc M g /\ (simple_path N h /\ homeomorphic N M (path_image M g) (path_image N h)) -> arc N h.
Admitted.

// HOL Light: Multivariate/paths.ml:3700 / HOMEOMORPHIC_SIMPLE_PATH_ARC_EQ   (hash md5:fd403d9b8bdc18bca24d516f3a3c2491)
// not bridged: 
Theorem HOMEOMORPHIC_SIMPLE_PATH_ARC_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> simple_path M g /\ (simple_path N h /\ homeomorphic N M (path_image M g) (path_image N h)) -> (arc M g <-> arc N h).
Admitted.

// HOL Light: Multivariate/paths.ml:3712 / ARC_ENDS_UNIQUE   (hash md5:3743380e9e3ceb0bdfb351e2cf54b386)
// not bridged: 
Theorem ARC_ENDS_UNIQUE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> arc N g /\ (simple_path N h /\ path_image N g = path_image N h) -> {pathstart N g,pathfinish N g} = {pathstart N h,pathfinish N h}.
Admitted.

// HOL Light: Multivariate/paths.ml:3729 / ARC_HOMEOMORPHISM_ENDS   (hash md5:3e81cb937ec4c1e4a5b6d3b3c9f84cab)
// not bridged: 
Theorem ARC_HOMEOMORPHISM_ENDS : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> forall f f' :e R :^: idx N :^: (R :^: idx N), homeomorphism N N (path_image N g,path_image N h) (f,f') /\ (arc N g /\ arc N h) -> f (pathstart N g) = pathstart N h /\ (f (pathfinish N g) = pathfinish N h /\ (f' (pathstart N h) = pathstart N g /\ f' (pathfinish N h) = pathfinish N g)) \/ f (pathstart N g) = pathfinish N h /\ (f (pathfinish N g) = pathstart N h /\ (f' (pathstart N h) = pathfinish N g /\ f' (pathfinish N h) = pathstart N g)).
Admitted.

// HOL Light: Multivariate/paths.ml:3754 / HOMEOMORPHISM_ARC_IMAGES   (hash md5:07c2ae41cde11364fb678b7405a4f8b0)
// not bridged: 
Theorem HOMEOMORPHISM_ARC_IMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> arc M g /\ arc N h -> exists f :e R :^: idx N :^: (R :^: idx M), exists f' :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (path_image M g,path_image N h) (f,f') /\ (f (pathstart M g) = pathstart N h /\ (f (pathfinish M g) = pathfinish N h /\ (f' (pathstart N h) = pathstart M g /\ f' (pathfinish N h) = pathfinish M g))).
Admitted.

// HOL Light: Multivariate/paths.ml:3776 / COLLINEAR_SIMPLE_PATH_IMAGE   (hash md5:31b748cd3064ce35bd02903b3e320e42)
// not bridged: 
Theorem COLLINEAR_SIMPLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> simple_path N g /\ collinear N (path_image N g) -> path_image N g = closed_segment N (seq_cons (pathstart N g,pathfinish N g) seq_nil).
Admitted.

// HOL Light: Multivariate/paths.ml:3803 / INJECTIVE_INTO_1D_EQ_HOMEOMORPHISM   (hash md5:a1c826d0c5c06f2fa20a622bfc3d1247)
// not bridged: 
Theorem INJECTIVE_INTO_1D_EQ_HOMEOMORPHISM : forall N:set, N <> Empty -> forall f :e R :^: idx 1 :^: (R :^: idx N), forall s c= R :^: idx N, continuous_on_hl N 1 (fun x:set => f x) s /\ path_connected N s -> ((forall x y :e R :^: idx N, x :e s /\ (y :e s /\ f x = f y) -> x = y) <-> exists g :e R :^: idx N :^: (R :^: idx 1), homeomorphism N 1 (s,{f x | x :e s}) (f,g)).
Admitted.

// HOL Light: Multivariate/paths.ml:3826 / INJECTIVE_INTO_1D_IMP_OPEN_MAP   (hash md5:16033a2a8318cfa60027f4e81ca72176)
// not bridged: 
Theorem INJECTIVE_INTO_1D_IMP_OPEN_MAP : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall s t c= R :^: idx N, continuous_on_hl N 1 f s /\ (path_connected N s /\ ((forall x y :e R :^: idx N, x :e s /\ (y :e s /\ f x = f y) -> x = y) /\ t :e subtopology (R :^: idx N) (euclidean N) s)) -> {f x | x :e t} :e subtopology (R :^: idx 1) (euclidean 1) {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:3835 / HOMEOMORPHISM_INTO_1D   (hash md5:3b40fa1b9916e1bed6287455b017697b)
// not bridged: 
Theorem HOMEOMORPHISM_INTO_1D : forall N:set, N <> Empty -> forall f :e R :^: idx 1 :^: (R :^: idx N), forall s c= R :^: idx N, forall t c= R :^: idx 1, path_connected N s /\ (continuous_on_hl N 1 (fun x:set => f x) s /\ ({f x | x :e s} = t /\ (forall x y :e R :^: idx N, x :e s /\ (y :e s /\ f x = f y) -> x = y))) -> exists g :e R :^: idx N :^: (R :^: idx 1), homeomorphism N 1 (s,t) (f,g).
Admitted.

// HOL Light: Multivariate/paths.ml:3851 / CONTINUOUS_INJECTIVE_IFF_MONOTONIC   (hash md5:2d179b4368ab590abac5c84f36fbcfd8)
// not bridged: 
Theorem CONTINUOUS_INJECTIVE_IFF_MONOTONIC : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, continuous_on_hl 1 1 f s /\ is_interval 1 s -> ((forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ f x = f y) -> x = y) <-> (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x < drop y) -> drop (f x) < drop (f y)) \/ forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x < drop y) -> drop (f y) < drop (f x)).
Admitted.

// HOL Light: Multivariate/paths.ml:3871 / CONTINUOUS_INJECTIVE_IMP_MONOTONIC   (hash md5:e1458f19a6187109cc36ca1bb603ae29)
// not bridged: 
Theorem CONTINUOUS_INJECTIVE_IMP_MONOTONIC : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, continuous_on_hl 1 1 f s /\ (is_interval 1 s /\ (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> (forall x y :e R :^: idx 1, x :e s /\ y :e s -> (drop (f x) < drop (f y) <-> drop x < drop y)) \/ forall x y :e R :^: idx 1, x :e s /\ y :e s -> (drop (f x) < drop (f y) <-> drop y < drop x).
Admitted.

// HOL Light: Multivariate/paths.ml:3891 / HOMEOMORPHISM_1D_IMP_MONOTONIC   (hash md5:fecd174b8c8225f20219551a031624e8)
// not bridged: 
Theorem HOMEOMORPHISM_1D_IMP_MONOTONIC : forall f g :e R :^: idx 1 :^: (R :^: idx 1), forall s t c= R :^: idx 1, homeomorphism 1 1 (s,t) (f,g) /\ is_interval 1 s -> (forall x y :e R :^: idx 1, x :e s /\ y :e s -> (drop (f x) < drop (f y) <-> drop x < drop y)) /\ (forall x y :e R :^: idx 1, x :e t /\ y :e t -> (drop (g x) < drop (g y) <-> drop x < drop y)) \/ (forall x y :e R :^: idx 1, x :e s /\ y :e s -> (drop (f x) < drop (f y) <-> drop y < drop x)) /\ forall x y :e R :^: idx 1, x :e t /\ y :e t -> (drop (g x) < drop (g y) <-> drop y < drop x).
Admitted.

// HOL Light: Multivariate/paths.ml:3916 / CONVEXITY_PRESERVING   (hash md5:6033ae57b1d2bd7b0069246b461f70e6)
// not bridged: 
Theorem CONVEXITY_PRESERVING : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall c c= R :^: idx M, c c= s /\ convex M c -> convex N {f x | x :e c}) <-> forall a b :e R :^: idx M, closed_segment M (seq_cons (a,b) seq_nil) c= s -> convex N {f x | x :e closed_segment M (seq_cons (a,b) seq_nil)}.
Admitted.

// HOL Light: Multivariate/paths.ml:3932 / CONVEXITY_PRESERVING_ALT   (hash md5:5d7948deb5452d9409265b37a1168224)
// not bridged: 
Theorem CONVEXITY_PRESERVING_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall c c= R :^: idx M, c c= s /\ convex M c -> convex N {f x | x :e c}) <-> forall a b :e R :^: idx M, closed_segment M (seq_cons (a,b) seq_nil) c= s -> closed_segment N (seq_cons (f a,f b) seq_nil) c= {f x | x :e closed_segment M (seq_cons (a,b) seq_nil)}.
Admitted.

// HOL Light: Multivariate/paths.ml:3947 / DARBOUX_AND_REGULATED_IMP_CONTINUOUS   (hash md5:f0390d70135a1437d781b12987d82be4)
// not bridged: 
Theorem DARBOUX_AND_REGULATED_IMP_CONTINUOUS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall s c= R :^: idx 1, is_interval 1 s /\ ((forall c c= R :^: idx 1, c c= s /\ connected 1 c -> connected N {f x | x :e c}) /\ (forall a :e R :^: idx 1, a :e s -> (exists l :e R :^: idx N, tendsto N (R :^: idx 1) f l (within (R :^: idx 1) (at_hl 1 a) (s :/\: {x :e R :^: idx 1 | drop x <= drop a}))) /\ exists r :e R :^: idx N, tendsto N (R :^: idx 1) f r (within (R :^: idx 1) (at_hl 1 a) (s :/\: {x :e R :^: idx 1 | drop a <= drop x})))) -> continuous_on_hl 1 N f s.
Admitted.

// HOL Light: Multivariate/paths.ml:4035 / LIPSCHITZ_ON_UNION   (hash md5:60a127079a5c32fbd62b745eddbc1bef)
// not bridged: 
Theorem LIPSCHITZ_ON_UNION : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall s t c= R :^: idx 1, forall l :e R, is_interval 1 s /\ (is_interval 1 t /\ (~ s :/\: t = Empty /\ ((forall x y :e R :^: idx 1, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= l * vector_norm 1 (vector_sub 1 x y)) /\ (forall x y :e R :^: idx 1, x :e t /\ y :e t -> vector_norm N (vector_sub N (f x) (f y)) <= l * vector_norm 1 (vector_sub 1 x y))))) -> forall x y :e R :^: idx 1, x :e s :\/: t /\ y :e s :\/: t -> vector_norm N (vector_sub N (f x) (f y)) <= l * vector_norm 1 (vector_sub 1 x y).
Admitted.

// HOL Light: Multivariate/paths.ml:4070 / LIPSCHITZ_ON_COMBINE   (hash md5:cc262c8f1a675b2b03f26abf0230d3fe)
// not bridged: 
Theorem LIPSCHITZ_ON_COMBINE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b c :e R :^: idx 1, forall l :e R, (forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ y :e closed_interval 1 (seq_cons (a,b) seq_nil) -> vector_norm N (vector_sub N (f x) (f y)) <= l * vector_norm 1 (vector_sub 1 x y)) /\ (forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (b,c) seq_nil) /\ y :e closed_interval 1 (seq_cons (b,c) seq_nil) -> vector_norm N (vector_sub N (f x) (f y)) <= l * vector_norm 1 (vector_sub 1 x y)) -> forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,c) seq_nil) /\ y :e closed_interval 1 (seq_cons (a,c) seq_nil) -> vector_norm N (vector_sub N (f x) (f y)) <= l * vector_norm 1 (vector_sub 1 x y).
Admitted.

// HOL Light: Multivariate/paths.ml:4095 / LOCALLY_LIPSCHITZ_GEN   (hash md5:0e569c68bffff05e724f89ed9ca5417a)
// not bridged: 
Theorem LOCALLY_LIPSCHITZ_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall b :e R, convex M s /\ (forall x :e R :^: idx M, forall c :e R, x :e s /\ b < c -> eventually (R :^: idx M) {y :e R :^: idx M | vector_norm N (vector_sub N (f y) (f x)) <= c * vector_norm M (vector_sub M y x)} (within (R :^: idx M) (at_hl M x) s)) -> forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= b * vector_norm M (vector_sub M x y).
Admitted.

// HOL Light: Multivariate/paths.ml:4270 / LOCALLY_LIPSCHITZ   (hash md5:79e2c7c62e1fe3a070681713672c122c)
// not bridged: 
Theorem LOCALLY_LIPSCHITZ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall b :e R, convex M s /\ (forall x :e R :^: idx M, x :e s -> eventually (R :^: idx M) {y :e R :^: idx M | vector_norm N (vector_sub N (f y) (f x)) <= b * vector_norm M (vector_sub M y x)} (within (R :^: idx M) (at_hl M x) s)) -> forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= b * vector_norm M (vector_sub M x y).
Admitted.

// HOL Light: Multivariate/paths.ml:4290 / CARD_EQ_SEGMENT   (hash md5:ed2fe27a8847777f9ce8cb675e8e2a5f)
// not bridged: 
Theorem CARD_EQ_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, ~ a = b -> equip (closed_segment N (seq_cons (a,b) seq_nil)) R) /\ forall a b :e R :^: idx N, ~ a = b -> equip (open_segment N (a,b)) R.
Admitted.

// HOL Light: Multivariate/paths.ml:4303 / UNCOUNTABLE_SEGMENT   (hash md5:54f3fe59d06dd813d75d1102ef7dc2ce)
// not bridged: 
Theorem UNCOUNTABLE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, ~ a = b -> ~ countable (closed_segment N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, ~ a = b -> ~ countable (open_segment N (a,b)).
Admitted.

// HOL Light: Multivariate/paths.ml:4308 / CARD_EQ_PATH_CONNECTED   (hash md5:4433898e75ca4f0976c9e31e0886cc82)
// not bridged: 
Theorem CARD_EQ_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, path_connected N s /\ (a :e s /\ (b :e s /\ ~ a = b)) -> equip s R.
Admitted.

// HOL Light: Multivariate/paths.ml:4313 / UNCOUNTABLE_PATH_CONNECTED   (hash md5:36d1e6bccbaec6d33d25a8ee4aa477cf)
// not bridged: 
Theorem UNCOUNTABLE_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, path_connected N s /\ (a :e s /\ (b :e s /\ ~ a = b)) -> ~ countable s.
Admitted.

// HOL Light: Multivariate/paths.ml:4321 / CARD_EQ_CONVEX   (hash md5:6550362a6021dd708b59f684cfb548c7)
// not bridged: 
Theorem CARD_EQ_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (a :e s /\ (b :e s /\ ~ a = b)) -> equip s R.
Admitted.

// HOL Light: Multivariate/paths.ml:4326 / UNCOUNTABLE_CONVEX   (hash md5:bb3071873dbbd1627b76ae721ce2e94a)
// not bridged: 
Theorem UNCOUNTABLE_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, convex N s /\ (a :e s /\ (b :e s /\ ~ a = b)) -> ~ countable s.
Admitted.

// HOL Light: Multivariate/paths.ml:4334 / CARD_EQ_NONEMPTY_INTERIOR   (hash md5:3b3806c64c6e410b1e00bfea64a4610c)
// not bridged: 
Theorem CARD_EQ_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ interior N s = Empty -> equip s R.
Admitted.

// HOL Light: Multivariate/paths.ml:4344 / UNCOUNTABLE_NONEMPTY_INTERIOR   (hash md5:8ccc0761768b09b8f2c8b4c9d60e0cb6)
// not bridged: 
Theorem UNCOUNTABLE_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ interior N s = Empty -> ~ countable s.
Admitted.

// HOL Light: Multivariate/paths.ml:4348 / COUNTABLE_EMPTY_INTERIOR   (hash md5:21cdfb19ac724a8f4464eae8c5ba779a)
// not bridged: 
Theorem COUNTABLE_EMPTY_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, countable s -> interior N s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:4368 / CONNECTED_FINITE_EQ_LOWDIM   (hash md5:65153e84b21170ac59f96ef4e01030e4)
// not bridged: 
Theorem CONNECTED_FINITE_EQ_LOWDIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, connected N s -> (finite s <-> aff_dim N s <= 0).
Admitted.

// HOL Light: Multivariate/paths.ml:4374 / CLOSED_AS_FRONTIER_OF_SUBSET   (hash md5:99f5f48b0e75b42019e1462d60aa97ef)
// not bridged: 
Theorem CLOSED_AS_FRONTIER_OF_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s <-> exists t c= R :^: idx N, t c= s /\ s = frontier N t.
Admitted.

// HOL Light: Multivariate/paths.ml:4385 / CLOSED_AS_FRONTIER   (hash md5:253bb7b39ab66a5eec227f3e6273a42b)
// not bridged: 
Theorem CLOSED_AS_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s <-> exists t c= R :^: idx N, s = frontier N t.
Admitted.

// HOL Light: Multivariate/paths.ml:4390 / CARD_EQ_PERFECT_SET   (hash md5:c7ffdde161db86ab1696bf0634af56b9)
// not bridged: 
Theorem CARD_EQ_PERFECT_SET : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s /\ ((forall x :e R :^: idx N, x :e s -> limit_point_of N x s) /\ ~ s = Empty) -> equip s R.
Admitted.

// HOL Light: Multivariate/paths.ml:4404 / CARD_EQ_CLOSED   (hash md5:8af247f8efdd6c07ac2df40f7883c91d)
// not bridged: 
Theorem CARD_EQ_CLOSED : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> atleastp s omega \/ equip s R.
Admitted.

// HOL Light: Multivariate/paths.ml:4421 / CARD_EQ_CONDENSATION_POINTS   (hash md5:a63b7dec34cf35ec00019e6623f9729b)
// not bridged: 
Theorem CARD_EQ_CONDENSATION_POINTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, equip {x :e R :^: idx N | condensation_point_of N x s} R <-> ~ countable s.
Admitted.

// HOL Light: Multivariate/paths.ml:4421 / CONDENSATION_POINTS_EQ_EMPTY   (hash md5:1f087dce50777fc392270e5f758db946)
// not bridged: 
Theorem CONDENSATION_POINTS_EQ_EMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, {x :e R :^: idx N | condensation_point_of N x s} = Empty <-> countable s.
Admitted.

// HOL Light: Multivariate/paths.ml:4445 / UNCOUNTABLE_HAS_CONDENSATION_POINT   (hash md5:d0e6528e3bc197d48dd6d5af0016b50a)
// not bridged: 
Theorem UNCOUNTABLE_HAS_CONDENSATION_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ countable s -> exists x :e R :^: idx N, condensation_point_of N x s.
Admitted.

// HOL Light: Multivariate/paths.ml:4453 / COSMALL_APPROXIMATION   (hash md5:df864d40250493168cc5a5f8b65fff0f)
Theorem hlt_COSMALL_APPROXIMATION : forall s :e 2 :^: R, hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) s) (hl_UNIV R) = 1 -> forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y s = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1.
Admitted.
Theorem COSMALL_APPROXIMATION_bridge : (forall s :e 2 :^: R, hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) s) (hl_UNIV R) = 1 -> forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y s = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1) -> (forall s c= R, atleastp (R :\: s) R /\ ~ equip (R :\: s) R -> forall x e0 :e R, 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0).
exact (fun H__top => ((imp_forall_sub (R) (fun s => hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) s) (hl_UNIV R) = 1 -> forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y s = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1) (fun s => atleastp (R :\: s) R /\ ~ equip (R :\: s) R -> forall x e0 :e R, 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0) (fun s Hss => (fun H__L : ((hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) (hl_UNIV R) = 1) -> (forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1)) => fun H__hyp1 : (atleastp (R :\: s) R /\ ~ equip (R :\: s) R) => (imp_forall_in (R) (fun x => forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1) (fun x => forall e0 :e R, 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0) (fun x Hx => (imp_forall_in (R) (fun e0 => hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e0 = 1 -> exists y :e R, hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1) (fun e0 => 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0) (fun e0 He0 => (fun H__L : ((hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e0 = 1) -> (exists y :e R, hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1)) => fun H__hyp4 : (0 < e0) => (imp_exists_in (R) (fun y => hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1) (fun y => y :e s /\ abs_SNo (y + - x) < e0) (fun y Hy => (imp_and_dep (hl_IN R y (hl_chi R s) = 1) (y :e s) (hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1) (abs_SNo (y + - x) < e0) (iffEL (hl_IN R y (hl_chi R s) = 1) (y :e s) ((hl_rep_chi (R) s Hss) (fun hl__u hl__v => hl_IN R y (hl_chi R s) = 1 <-> y :e hl__u) ((hl_IN_compat) (R) R_nonempty (y) Hy (hl_chi R s) (hl_chi_Pi (R) s)))) (fun H__and6 : (y :e s) => (iffEL (hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1) (abs_SNo (y + - x) < e0) ((((hl_real_sub_compat) (y) Hy (x) Hx) (fun hl__u hl__v => hl_real_abs (hl_real_sub y x) = abs_SNo hl__u) ((hl_real_abs_compat) (hl_real_sub y x) (setexp_ap (R) (R) (hl_real_sub y) (setexp_ap (R) (R :^: R) (hl_real_sub) ((hl_real_sub_in)) (y) Hy) (x) Hx))) (fun hl__u hl__v => hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1 <-> hl__u < e0) ((hl_real_lt_compat) (hl_real_abs (hl_real_sub y x)) (setexp_ap (R) (R) (hl_real_abs) ((hl_real_abs_in)) (hl_real_sub y x) (setexp_ap (R) (R) (hl_real_sub y) (setexp_ap (R) (R :^: R) (hl_real_sub) ((hl_real_sub_in)) (y) Hy) (x) Hx)) (e0) He0))))))) (H__L ((iffER (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e0 = 1) (0 < e0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e0 = 1 <-> hl__u < e0) ((hl_real_lt_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (e0) He0))) H__hyp4))))))) (H__L ((iffER (hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) (hl_UNIV R) = 1) (atleastp (R :\: s) R /\ ~ equip (R :\: s) R) (((hl_UNIV_compat) (R) R_nonempty) (fun hl__u hl__v => hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) (hl_UNIV R) = 1 <-> atleastp (R :\: s) hl__u /\ ~ equip (R :\: s) hl__u) ((((hl_UNIV_compat) (R) R_nonempty) (fun hl__u hl__v => hl_rep R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) = hl__u :\: s) ((hl_rep_chi (R) s Hss) (fun hl__u hl__v => hl_rep R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) = hl_rep R (hl_UNIV R) :\: hl__u) ((hl_DIFF_compat) (R) R_nonempty (hl_UNIV R) ((hl_UNIV_in) (R) R_nonempty) (hl_chi R s) (hl_chi_Pi (R) s)))) (fun hl__u hl__v => hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) (hl_UNIV R) = 1 <-> atleastp hl__u (hl_rep R (hl_UNIV R)) /\ ~ equip hl__u (hl_rep R (hl_UNIV R))) ((hl_sym_3c5f63_compat) (R) (R) R_nonempty R_nonempty (hl_DIFF R (hl_UNIV R) (hl_chi R s)) (setexp_ap (2 :^: R) (2 :^: R) (hl_DIFF R (hl_UNIV R)) (setexp_ap (2 :^: R) (2 :^: R :^: (2 :^: R)) (hl_DIFF R) ((hl_DIFF_in) (R) R_nonempty) (hl_UNIV R) ((hl_UNIV_in) (R) R_nonempty)) (hl_chi R s) (hl_chi_Pi (R) s)) (hl_UNIV R) ((hl_UNIV_in) (R) R_nonempty))))) H__hyp1))))) H__top)).
Qed.
Theorem COSMALL_APPROXIMATION : forall s c= R, atleastp (R :\: s) R /\ ~ equip (R :\: s) R -> forall x e0 :e R, 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0.
exact (COSMALL_APPROXIMATION_bridge hlt_COSMALL_APPROXIMATION).
Admitted.

// HOL Light: Multivariate/paths.ml:4477 / COCOUNTABLE_APPROXIMATION   (hash md5:1fee1503f2d746bd38d554e95c876d93)
Theorem hlt_COCOUNTABLE_APPROXIMATION : forall s :e 2 :^: R, hl_COUNTABLE R (hl_DIFF R (hl_UNIV R) s) = 1 -> forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y s = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1.
Admitted.
Theorem COCOUNTABLE_APPROXIMATION_bridge : (forall s :e 2 :^: R, hl_COUNTABLE R (hl_DIFF R (hl_UNIV R) s) = 1 -> forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y s = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1) -> (forall s c= R, countable (R :\: s) -> forall x e0 :e R, 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0).
exact (fun H__top => ((imp_forall_sub (R) (fun s => hl_COUNTABLE R (hl_DIFF R (hl_UNIV R) s) = 1 -> forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y s = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1) (fun s => countable (R :\: s) -> forall x e0 :e R, 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0) (fun s Hss => (fun H__L : ((hl_COUNTABLE R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) = 1) -> (forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1)) => fun H__hyp1 : (countable (R :\: s)) => (imp_forall_in (R) (fun x => forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1) (fun x => forall e0 :e R, 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0) (fun x Hx => (imp_forall_in (R) (fun e0 => hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e0 = 1 -> exists y :e R, hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1) (fun e0 => 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0) (fun e0 He0 => (fun H__L : ((hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e0 = 1) -> (exists y :e R, hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1)) => fun H__hyp4 : (0 < e0) => (imp_exists_in (R) (fun y => hl_IN R y (hl_chi R s) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1) (fun y => y :e s /\ abs_SNo (y + - x) < e0) (fun y Hy => (imp_and_dep (hl_IN R y (hl_chi R s) = 1) (y :e s) (hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1) (abs_SNo (y + - x) < e0) (iffEL (hl_IN R y (hl_chi R s) = 1) (y :e s) ((hl_rep_chi (R) s Hss) (fun hl__u hl__v => hl_IN R y (hl_chi R s) = 1 <-> y :e hl__u) ((hl_IN_compat) (R) R_nonempty (y) Hy (hl_chi R s) (hl_chi_Pi (R) s)))) (fun H__and6 : (y :e s) => (iffEL (hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1) (abs_SNo (y + - x) < e0) ((((hl_real_sub_compat) (y) Hy (x) Hx) (fun hl__u hl__v => hl_real_abs (hl_real_sub y x) = abs_SNo hl__u) ((hl_real_abs_compat) (hl_real_sub y x) (setexp_ap (R) (R) (hl_real_sub y) (setexp_ap (R) (R :^: R) (hl_real_sub) ((hl_real_sub_in)) (y) Hy) (x) Hx))) (fun hl__u hl__v => hl_real_lt (hl_real_abs (hl_real_sub y x)) e0 = 1 <-> hl__u < e0) ((hl_real_lt_compat) (hl_real_abs (hl_real_sub y x)) (setexp_ap (R) (R) (hl_real_abs) ((hl_real_abs_in)) (hl_real_sub y x) (setexp_ap (R) (R) (hl_real_sub y) (setexp_ap (R) (R :^: R) (hl_real_sub) ((hl_real_sub_in)) (y) Hy) (x) Hx)) (e0) He0))))))) (H__L ((iffER (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e0 = 1) (0 < e0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e0 = 1 <-> hl__u < e0) ((hl_real_lt_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (e0) He0))) H__hyp4))))))) (H__L ((iffER (hl_COUNTABLE R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) = 1) (countable (R :\: s)) ((((hl_UNIV_compat) (R) R_nonempty) (fun hl__u hl__v => hl_rep R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) = hl__u :\: s) ((hl_rep_chi (R) s Hss) (fun hl__u hl__v => hl_rep R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) = hl_rep R (hl_UNIV R) :\: hl__u) ((hl_DIFF_compat) (R) R_nonempty (hl_UNIV R) ((hl_UNIV_in) (R) R_nonempty) (hl_chi R s) (hl_chi_Pi (R) s)))) (fun hl__u hl__v => hl_COUNTABLE R (hl_DIFF R (hl_UNIV R) (hl_chi R s)) = 1 <-> countable hl__u) ((hl_COUNTABLE_compat) (R) R_nonempty (hl_DIFF R (hl_UNIV R) (hl_chi R s)) (setexp_ap (2 :^: R) (2 :^: R) (hl_DIFF R (hl_UNIV R)) (setexp_ap (2 :^: R) (2 :^: R :^: (2 :^: R)) (hl_DIFF R) ((hl_DIFF_in) (R) R_nonempty) (hl_UNIV R) ((hl_UNIV_in) (R) R_nonempty)) (hl_chi R s) (hl_chi_Pi (R) s))))) H__hyp1))))) H__top)).
Qed.
Theorem COCOUNTABLE_APPROXIMATION : forall s c= R, countable (R :\: s) -> forall x e0 :e R, 0 < e0 -> exists y :e R, y :e s /\ abs_SNo (y + - x) < e0.
exact (COCOUNTABLE_APPROXIMATION_bridge hlt_COCOUNTABLE_APPROXIMATION).
Admitted.

// HOL Light: Multivariate/paths.ml:4487 / OPEN_SET_COSMALL_COORDINATES   (hash md5:2fbf923c41147c7534e684fe757bcaed)
// not bridged: 
Theorem OPEN_SET_COSMALL_COORDINATES : forall N:set, N <> Empty -> forall P:set -> set -> prop, (forall i :e omega, 1 <= i /\ i <= dimindex N -> atleastp (R :\: {x :e R | P i x}) R /\ ~ equip (R :\: {x :e R | P i x}) R) -> forall s c= R :^: idx N, open N s /\ ~ s = Empty -> exists x :e R :^: idx N, x :e s /\ forall i :e omega, 1 <= i /\ i <= dimindex N -> P i (x i).
Admitted.

// HOL Light: Multivariate/paths.ml:4519 / OPEN_SET_COCOUNTABLE_COORDINATES   (hash md5:2f17a0b65423d3844b7a8815fbc45062)
// not bridged: 
Theorem OPEN_SET_COCOUNTABLE_COORDINATES : forall N:set, N <> Empty -> forall P:set -> set -> prop, (forall i :e omega, 1 <= i /\ i <= dimindex N -> countable (R :\: {x :e R | P i x})) -> forall s c= R :^: idx N, open N s /\ ~ s = Empty -> exists x :e R :^: idx N, x :e s /\ forall i :e omega, 1 <= i /\ i <= dimindex N -> P i (x i).
Admitted.

// HOL Light: Multivariate/paths.ml:4532 / OPEN_SET_IRRATIONAL_COORDINATES   (hash md5:ee81fbff7691972b6fb29cde4c5ace9f)
// not bridged: 
Theorem OPEN_SET_IRRATIONAL_COORDINATES : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s /\ ~ s = Empty -> exists x :e R :^: idx N, x :e s /\ forall i :e omega, 1 <= i /\ i <= dimindex N -> ~ x i :e rational.
Admitted.

// HOL Light: Multivariate/paths.ml:4539 / CLOSURE_COSMALL_COORDINATES   (hash md5:5f7f9029ff7e8efe596fc97da1287b77)
// not bridged: 
Theorem CLOSURE_COSMALL_COORDINATES : forall N:set, N <> Empty -> forall P:set -> set -> prop, (forall i :e omega, 1 <= i /\ i <= dimindex N -> atleastp (R :\: {x :e R | P i x}) R /\ ~ equip (R :\: {x :e R | P i x}) R) -> closure N {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> P i (x i)} = R :^: idx N.
Admitted.

// HOL Light: Multivariate/paths.ml:4552 / CLOSURE_COCOUNTABLE_COORDINATES   (hash md5:3279393862b59318b4c15ce070880f3a)
// not bridged: 
Theorem CLOSURE_COCOUNTABLE_COORDINATES : forall N:set, N <> Empty -> forall P:set -> set -> prop, (forall i :e omega, 1 <= i /\ i <= dimindex N -> countable (R :\: {x :e R | P i x})) -> closure N {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> P i (x i)} = R :^: idx N.
Admitted.

// HOL Light: Multivariate/paths.ml:4564 / CLOSURE_IRRATIONAL_COORDINATES   (hash md5:503e32e38d455d59504affc43ec7357a)
// not bridged: 
Theorem CLOSURE_IRRATIONAL_COORDINATES : forall N:set, N <> Empty -> closure N {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> ~ x i :e rational} = R :^: idx N.
Admitted.

// HOL Light: Multivariate/paths.ml:4576 / HOMEOMORPHIC_MONOTONE_IMAGE_INTERVAL   (hash md5:69025774a521518dc1d77c878885505c)
// not bridged: 
Theorem HOMEOMORPHIC_MONOTONE_IMAGE_INTERVAL : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> continuous_on_hl 1 N f (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) /\ ((forall y :e R :^: idx N, connected 1 {x :e R :^: idx 1 | x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ f x = y}) /\ ~ f (vec 1 1) = f (vec 1 0)) -> homeomorphic 1 N {f x | x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)} (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)).
Admitted.

// HOL Light: Multivariate/paths.ml:5948 / PATH_CONTAINS_ARC   (hash md5:fb72738dd04d9c4e92a142f96a34cf1d)
// not bridged: 
Theorem PATH_CONTAINS_ARC : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall a b :e R :^: idx N, path N p /\ (pathstart N p = a /\ (pathfinish N p = b /\ ~ a = b)) -> exists q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) /\ (arc N q /\ (path_image N q c= path_image N p /\ (pathstart N q = a /\ pathfinish N q = b))).
Admitted.

// HOL Light: Multivariate/paths.ml:6366 / PATH_CONNECTED_ARCWISE   (hash md5:8825ec0fbd7e8d24929f604a3ded29c3)
// not bridged: 
Theorem PATH_CONNECTED_ARCWISE : forall N:set, N <> Empty -> forall s c= R :^: idx N, path_connected N s <-> forall x y :e R :^: idx N, x :e s /\ (y :e s /\ ~ x = y) -> exists g:set -> set, (forall x0 :e R :^: idx 1, g x0 :e R :^: idx N) /\ (arc N g /\ (path_image N g c= s /\ (pathstart N g = x /\ pathfinish N g = y))).
Admitted.

// HOL Light: Multivariate/paths.ml:6389 / ARC_CONNECTED_TRANS   (hash md5:15463832ace2f6414f2d14ddc5be3bbe)
// not bridged: 
Theorem ARC_CONNECTED_TRANS : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> arc N g /\ (arc N h /\ (pathfinish N g = pathstart N h /\ ~ pathstart N g = pathfinish N h)) -> exists i:set -> set, (forall x :e R :^: idx 1, i x :e R :^: idx N) /\ (arc N i /\ (path_image N i c= path_image N g :\/: path_image N h /\ (pathstart N i = pathstart N g /\ pathfinish N i = pathfinish N h))).
Admitted.

// HOL Light: Multivariate/paths.ml:6407 / LOCALLY_CONNECTED_SPACE_SUBTOPOLOGY_EUCLIDEAN   (hash md5:3ee3b4b8a548d579bbe68504ddae96f4)
// not bridged: 
Theorem LOCALLY_CONNECTED_SPACE_SUBTOPOLOGY_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally_connected_space (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) <-> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6418 / LOCALLY_CONNECTED   (hash md5:b8b3f4af6a6092f7c7d28d68c914e945)
// not bridged: 
Theorem LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s <-> forall v c= R :^: idx N, forall x :e R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ x :e v -> exists u c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (connected N u /\ (x :e u /\ u c= v)).
Admitted.

// HOL Light: Multivariate/paths.ml:6418 / LOCALLY_CONNECTED_OPEN_CONNECTED_COMPONENT   (hash md5:01388bbc67d09befea3725a911ebdc3d)
// not bridged: 
Theorem LOCALLY_CONNECTED_OPEN_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s <-> forall t c= R :^: idx N, forall x :e R :^: idx N, t :e subtopology (R :^: idx N) (euclidean N) s /\ x :e t -> {x0 :e R :^: idx N | connected_component N t x x0} :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:6455 / LOCALLY_PATH_CONNECTED_SPACE_SUBTOPOLOGY_EUCLIDEAN   (hash md5:913c1272972b151985f6af44a51af2bc)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_SPACE_SUBTOPOLOGY_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally_path_connected_space (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) <-> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6466 / LOCALLY_PATH_CONNECTED   (hash md5:4f9a8db3e24b2fcfe2b79d8608a537ce)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | path_connected N x} s <-> forall v c= R :^: idx N, forall x :e R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ x :e v -> exists u c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (path_connected N u /\ (x :e u /\ u c= v)).
Admitted.

// HOL Light: Multivariate/paths.ml:6466 / LOCALLY_PATH_CONNECTED_OPEN_PATH_COMPONENT   (hash md5:5a998f94a362600659f034a005345485)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_OPEN_PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | path_connected N x} s <-> forall t c= R :^: idx N, forall x :e R :^: idx N, t :e subtopology (R :^: idx N) (euclidean N) s /\ x :e t -> {x0 :e R :^: idx N | path_component N t x x0} :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:6503 / LOCALLY_CONNECTED_OPEN_COMPONENT   (hash md5:34c7782a3590fa5eb303bb14324f1f57)
// not bridged: 
Theorem LOCALLY_CONNECTED_OPEN_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s <-> forall t c c= R :^: idx N, t :e subtopology (R :^: idx N) (euclidean N) s /\ c :e components N t -> c :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:6511 / LOCALLY_CONNECTED_IM_KLEINEN   (hash md5:dab3a22938d6868c96e447229cbff2f2)
// not bridged: 
Theorem LOCALLY_CONNECTED_IM_KLEINEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s <-> forall v c= R :^: idx N, forall x :e R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ x :e v -> exists u c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (x :e u /\ (u c= v /\ forall y :e R :^: idx N, y :e u -> exists c c= R :^: idx N, connected N c /\ (c c= v /\ (x :e c /\ y :e c)))).
Admitted.

// HOL Light: Multivariate/paths.ml:6537 / LOCALLY_PATH_CONNECTED_IM_KLEINEN   (hash md5:fa4f96249172b6469617b9570ed22e6e)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_IM_KLEINEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | path_connected N x} s <-> forall v c= R :^: idx N, forall x :e R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ x :e v -> exists u c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (x :e u /\ (u c= v /\ forall y :e R :^: idx N, y :e u -> exists p:set -> set, (forall x0 :e R :^: idx 1, p x0 :e R :^: idx N) /\ (path N p /\ (path_image N p c= v /\ (pathstart N p = x /\ pathfinish N p = y))))).
Admitted.

// HOL Light: Multivariate/paths.ml:6572 / LOCALLY_PATH_CONNECTED_IMP_LOCALLY_CONNECTED   (hash md5:be90341f985b258b263fc75b0861fca9)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | path_connected N x} s -> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6576 / LOCALLY_CONNECTED_COMPONENTS   (hash md5:73cbe867f5c4dac879df76649a8a5aa7)
// not bridged: 
Theorem LOCALLY_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s c c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s /\ c :e components N s -> locally N {x :e Power (R :^: idx N) | connected N x} c.
Admitted.

// HOL Light: Multivariate/paths.ml:6585 / LOCALLY_CONNECTED_CONNECTED_COMPONENT   (hash md5:141a54b57eab9c0aee103f46eadcc23e)
// not bridged: 
Theorem LOCALLY_CONNECTED_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, locally N {x0 :e Power (R :^: idx N) | connected N x0} s -> locally N {x0 :e Power (R :^: idx N) | connected N x0} {x0 :e R :^: idx N | connected_component N s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:6596 / LOCALLY_PATH_CONNECTED_COMPONENTS   (hash md5:5268ea5dd0e14ca1cea82e31f4ec0acc)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s c c= R :^: idx N, locally N {x :e Power (R :^: idx N) | path_connected N x} s /\ c :e components N s -> locally N {x :e Power (R :^: idx N) | path_connected N x} c.
Admitted.

// HOL Light: Multivariate/paths.ml:6607 / LOCALLY_PATH_CONNECTED_CONNECTED_COMPONENT   (hash md5:eb036330424b64e40e60f41f67ee7b0f)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, locally N {x0 :e Power (R :^: idx N) | path_connected N x0} s -> locally N {x0 :e Power (R :^: idx N) | path_connected N x0} {x0 :e R :^: idx N | connected_component N s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:6618 / OPEN_IMP_LOCALLY_PATH_CONNECTED   (hash md5:06f27e8ac2daf21f26e213e2b3dd8332)
// not bridged: 
Theorem OPEN_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s -> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6627 / OPEN_IMP_LOCALLY_CONNECTED   (hash md5:7701ed15a14f654c3f5d01b16edc48aa)
// not bridged: 
Theorem OPEN_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s -> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6634 / LOCALLY_PATH_CONNECTED_UNIV   (hash md5:82bc212f2b61276c457185011f2ac4b3)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_UNIV : forall N:set, N <> Empty -> locally N {x :e Power (R :^: idx N) | path_connected N x} (R :^: idx N).
Admitted.

// HOL Light: Multivariate/paths.ml:6638 / LOCALLY_CONNECTED_UNIV   (hash md5:db47cdf0e2ba5b9fa585c6ee8dcc6911)
// not bridged: 
Theorem LOCALLY_CONNECTED_UNIV : forall N:set, N <> Empty -> locally N {x :e Power (R :^: idx N) | connected N x} (R :^: idx N).
Admitted.

// HOL Light: Multivariate/paths.ml:6642 / OPEN_IN_CONNECTED_COMPONENT_LOCALLY_CONNECTED   (hash md5:e5e6ab7c5eaee84357c8389ac897054f)
// not bridged: 
Theorem OPEN_IN_CONNECTED_COMPONENT_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, locally N {x0 :e Power (R :^: idx N) | connected N x0} s -> {x0 :e R :^: idx N | connected_component N s x x0} :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:6652 / OPEN_IN_COMPONENTS_LOCALLY_CONNECTED   (hash md5:74d4f8eef35016db25d0244f16c93880)
// not bridged: 
Theorem OPEN_IN_COMPONENTS_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s /\ c :e components N s -> c :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:6658 / OPEN_IN_PATH_COMPONENT_LOCALLY_PATH_CONNECTED   (hash md5:15e3c3fb2c3ff3593dc0f6e9840e3a38)
// not bridged: 
Theorem OPEN_IN_PATH_COMPONENT_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, locally N {x0 :e Power (R :^: idx N) | path_connected N x0} s -> {x0 :e R :^: idx N | path_component N s x x0} :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:6668 / CLOSED_IN_PATH_COMPONENT_LOCALLY_PATH_CONNECTED   (hash md5:3c453b16b966b07b7d6be6b820240af3)
// not bridged: 
Theorem CLOSED_IN_PATH_COMPONENT_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, locally N {x0 :e Power (R :^: idx N) | path_connected N x0} s -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) {x0 :e R :^: idx N | path_component N s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:6679 / CONVEX_IMP_LOCALLY_PATH_CONNECTED   (hash md5:3fb6e5f9a902cd7d41836d34576a2587)
// not bridged: 
Theorem CONVEX_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6697 / OPEN_IN_IMP_LOCALLY_PATH_CONNECTED   (hash md5:6e3fa656c15eb49a98e586662f84f8f9)
// not bridged: 
Theorem OPEN_IN_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) -> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6705 / OPEN_IN_CONNECTED_COMPONENTS   (hash md5:323c072205637c3e767e4b1d5e09dbd7)
// not bridged: 
Theorem OPEN_IN_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s c c= R :^: idx N, finite (components N s) /\ c :e components N s -> c :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:6712 / FINITE_COMPONENTS_MEETING_COMPACT_SUBSET   (hash md5:90bbeb09c33a34090fafd8f2c7d1c281)
// not bridged: 
Theorem FINITE_COMPONENTS_MEETING_COMPACT_SUBSET : forall N:set, N <> Empty -> forall k s c= R :^: idx N, compact N k /\ (locally N {x :e Power (R :^: idx N) | connected N x} s /\ k c= s) -> finite {c :e Power (R :^: idx N) | c :e components N s /\ ~ c :/\: k = Empty}.
Admitted.

// HOL Light: Multivariate/paths.ml:6758 / FINITE_COMPONENTS   (hash md5:fc0f1f9c91573ef7a5938dc6db6733cf)
// not bridged: 
Theorem FINITE_COMPONENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> finite (components N s).
Admitted.

// HOL Light: Multivariate/paths.ml:6770 / FINITE_LOCALLY_CONNECTED_CONNECTED_COMPONENTS   (hash md5:a6273b959789f2d465ee84e7e2fc6b5d)
// not bridged: 
Theorem FINITE_LOCALLY_CONNECTED_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> finite {{x0 :e R :^: idx N | connected_component N s x x0} | x :e R :^: idx N, x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6776 / FINITE_LOCALLY_PATH_CONNECTED_PATH_COMPONENTS   (hash md5:b2b5c7881a24d6b181baff7d194f98e7)
// not bridged: 
Theorem FINITE_LOCALLY_PATH_CONNECTED_PATH_COMPONENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ locally N {x :e Power (R :^: idx N) | path_connected N x} s -> finite {{x0 :e R :^: idx N | path_component N s x x0} | x :e R :^: idx N, x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6801 / CONVEX_IMP_LOCALLY_CONNECTED   (hash md5:dd37f8b6e3755a394f8f4b9164ddb503)
// not bridged: 
Theorem CONVEX_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6806 / HOMEOMORPHIC_LOCAL_CONNECTEDNESS   (hash md5:1e27bd419c48eb5d78f35ea79686a5c1)
// not bridged: 
Theorem HOMEOMORPHIC_LOCAL_CONNECTEDNESS : forall A B:set, A <> Empty -> B <> Empty -> forall s c= R :^: idx A, forall t c= R :^: idx B, homeomorphic B A s t -> (locally A {x :e Power (R :^: idx A) | connected A x} s <-> locally B {x :e Power (R :^: idx B) | connected B x} t).
Admitted.

// HOL Light: Multivariate/paths.ml:6811 / HOMEOMORPHISM_LOCAL_CONNECTEDNESS   (hash md5:1bf451b049bdedc2bbd98545f0b0c940)
// not bridged: 
Theorem HOMEOMORPHISM_LOCAL_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall g :e R :^: idx M :^: (R :^: idx N), forall s c= R :^: idx M, forall t c= R :^: idx N, forall k c= R :^: idx M, homeomorphism M N (s,t) (f,g) /\ k c= s -> (locally N {x :e Power (R :^: idx N) | connected N x} {f x | x :e k} <-> locally M {x :e Power (R :^: idx M) | connected M x} k).
Admitted.

// HOL Light: Multivariate/paths.ml:6822 / HOMEOMORPHIC_LOCAL_PATH_CONNECTEDNESS   (hash md5:f452c9f0077441ff78c29f895143f0a8)
// not bridged: 
Theorem HOMEOMORPHIC_LOCAL_PATH_CONNECTEDNESS : forall A B:set, A <> Empty -> B <> Empty -> forall s c= R :^: idx A, forall t c= R :^: idx B, homeomorphic B A s t -> (locally A {x :e Power (R :^: idx A) | path_connected A x} s <-> locally B {x :e Power (R :^: idx B) | path_connected B x} t).
Admitted.

// HOL Light: Multivariate/paths.ml:6828 / HOMEOMORPHISM_LOCAL_PATH_CONNECTEDNESS   (hash md5:d9303e1d04a205abe8030124fa6c9d86)
// not bridged: 
Theorem HOMEOMORPHISM_LOCAL_PATH_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall g :e R :^: idx M :^: (R :^: idx N), forall s c= R :^: idx M, forall t c= R :^: idx N, forall k c= R :^: idx M, homeomorphism M N (s,t) (f,g) /\ k c= s -> (locally N {x :e Power (R :^: idx N) | path_connected N x} {f x | x :e k} <-> locally M {x :e Power (R :^: idx M) | path_connected M x} k).
Admitted.

// HOL Light: Multivariate/paths.ml:6839 / LOCALLY_PATH_CONNECTED_TRANSLATION_EQ   (hash md5:b3ac162dcf2d6a96b8548cac4d7b9317)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | path_connected N x} {vector_add N a x | x :e s} <-> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6847 / LOCALLY_CONNECTED_TRANSLATION_EQ   (hash md5:6c408a986af6fdeb50e2e93911df7805)
// not bridged: 
Theorem LOCALLY_CONNECTED_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} {vector_add N a x | x :e s} <-> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:6855 / LOCALLY_PATH_CONNECTED_LINEAR_IMAGE_EQ   (hash md5:956ec6b5031cb10bc6f6a9bac73e297a)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (locally N {x :e Power (R :^: idx N) | path_connected N x} {f x | x :e s} <-> locally M {x :e Power (R :^: idx M) | path_connected M x} s).
Admitted.

// HOL Light: Multivariate/paths.ml:6864 / LOCALLY_CONNECTED_LINEAR_IMAGE_EQ   (hash md5:5ab35f24d460b7c9c16b6507a8332b03)
// not bridged: 
Theorem LOCALLY_CONNECTED_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (locally N {x :e Power (R :^: idx N) | connected N x} {f x | x :e s} <-> locally M {x :e Power (R :^: idx M) | connected M x} s).
Admitted.

// HOL Light: Multivariate/paths.ml:6873 / LOCALLY_CONNECTED_QUOTIENT_IMAGE   (hash md5:42fc40bf09884077669a496088563b85)
// not bridged: 
Theorem LOCALLY_CONNECTED_QUOTIENT_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall t c= R :^: idx N, t c= {f x | x :e s} -> ({x :e R :^: idx M | x :e s /\ f x :e t} :e subtopology (R :^: idx M) (euclidean M) s <-> t :e subtopology (R :^: idx N) (euclidean N) {f x | x :e s})) /\ locally M {x :e Power (R :^: idx M) | connected M x} s -> locally N {x :e Power (R :^: idx N) | connected N x} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6887 / LOCALLY_PATH_CONNECTED_QUOTIENT_IMAGE   (hash md5:bd11b53b9ac3e92ee161f57e1030deaa)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_QUOTIENT_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall t c= R :^: idx N, t c= {f x | x :e s} -> ({x :e R :^: idx M | x :e s /\ f x :e t} :e subtopology (R :^: idx M) (euclidean M) s <-> t :e subtopology (R :^: idx N) (euclidean N) {f x | x :e s})) /\ locally M {x :e Power (R :^: idx M) | path_connected M x} s -> locally N {x :e Power (R :^: idx N) | path_connected N x} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6902 / LOCALLY_CONNECTED_CONTINUOUS_IMAGE_COMPACT   (hash md5:f89cba848309bd1ea1a622d8640c672d)
// not bridged: 
Theorem LOCALLY_CONNECTED_CONTINUOUS_IMAGE_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, locally M {x :e Power (R :^: idx M) | connected M x} s /\ (compact M s /\ continuous_on_hl M N f s) -> locally N {x :e Power (R :^: idx N) | connected N x} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6913 / LOCALLY_PATH_CONNECTED_CONTINUOUS_IMAGE_COMPACT   (hash md5:a38f9cee536b5541e457c0caa6d72cfe)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_CONTINUOUS_IMAGE_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, locally M {x :e Power (R :^: idx M) | path_connected M x} s /\ (compact M s /\ continuous_on_hl M N f s) -> locally N {x :e Power (R :^: idx N) | path_connected N x} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6924 / LOCALLY_PATH_CONNECTED_PATH_IMAGE   (hash md5:76eb1f332e91c82a58e599d08bdcd5b4)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_PATH_IMAGE : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> path N p -> locally N {x :e Power (R :^: idx N) | path_connected N x} (path_image N p).
Admitted.

// HOL Light: Multivariate/paths.ml:6931 / LOCALLY_CONNECTED_PATH_IMAGE   (hash md5:051d36318ec7fa38e0bae00bc0cc14a7)
// not bridged: 
Theorem LOCALLY_CONNECTED_PATH_IMAGE : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> path N p -> locally N {x :e Power (R :^: idx N) | connected N x} (path_image N p).
Admitted.

// HOL Light: Multivariate/paths.ml:6936 / LOCALLY_CONNECTED_LEFT_INVERTIBLE_IMAGE   (hash md5:c14c4b35a8ebf2157228344ae21bb2ba)
// not bridged: 
Theorem LOCALLY_CONNECTED_LEFT_INVERTIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ (continuous_on_hl N M g {f x | x :e s} /\ ((forall x :e R :^: idx M, x :e s -> g (f x) = x) /\ locally M {x :e Power (R :^: idx M) | connected M x} s)) -> locally N {x :e Power (R :^: idx N) | connected N x} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6947 / LOCALLY_CONNECTED_RIGHT_INVERTIBLE_IMAGE   (hash md5:a8bf70d0fdc31497cd0e0ff0c8d83368)
// not bridged: 
Theorem LOCALLY_CONNECTED_RIGHT_INVERTIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ (continuous_on_hl N M g {f x | x :e s} /\ ({g x | x :e {f x | x :e s}} c= s /\ ((forall x :e R :^: idx N, x :e {f x | x :e s} -> f (g x) = x) /\ locally M {x :e Power (R :^: idx M) | connected M x} s))) -> locally N {x :e Power (R :^: idx N) | connected N x} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6959 / LOCALLY_PATH_CONNECTED_LEFT_INVERTIBLE_IMAGE   (hash md5:040d8f85ea0c85aab1f29159d4159c05)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_LEFT_INVERTIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ (continuous_on_hl N M g {f x | x :e s} /\ ((forall x :e R :^: idx M, x :e s -> g (f x) = x) /\ locally M {x :e Power (R :^: idx M) | path_connected M x} s)) -> locally N {x :e Power (R :^: idx N) | path_connected N x} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6971 / LOCALLY_PATH_CONNECTED_RIGHT_INVERTIBLE_IMAGE   (hash md5:b896bc6cf403daaa6c31170562c6f662)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_RIGHT_INVERTIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ (continuous_on_hl N M g {f x | x :e s} /\ ({g x | x :e {f x | x :e s}} c= s /\ ((forall x :e R :^: idx N, x :e {f x | x :e s} -> f (g x) = x) /\ locally M {x :e Power (R :^: idx M) | path_connected M x} s))) -> locally N {x :e Power (R :^: idx N) | path_connected N x} {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:6984 / LOCALLY_CONNECTED_PCROSS   (hash md5:b005791e46bceeb90ce2fb966ec12b89)
// not bridged: 
Theorem LOCALLY_CONNECTED_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, locally M {x :e Power (R :^: idx M) | connected M x} s /\ locally N {x :e Power (R :^: idx N) | connected N x} t -> locally (idx_n (dimindex M + dimindex N)) {x :e Power (R :^: idx_n (dimindex M + dimindex N)) | connected (idx_n (dimindex M + dimindex N)) x} (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/paths.ml:6990 / LOCALLY_PATH_CONNECTED_PCROSS   (hash md5:d7e6242abb8246e0c3261fc7998a673b)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, locally M {x :e Power (R :^: idx M) | path_connected M x} s /\ locally N {x :e Power (R :^: idx N) | path_connected N x} t -> locally (idx_n (dimindex M + dimindex N)) {x :e Power (R :^: idx_n (dimindex M + dimindex N)) | path_connected (idx_n (dimindex M + dimindex N)) x} (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/paths.ml:6996 / LOCALLY_CONNECTED_PCROSS_EQ   (hash md5:fa0fff17fe0740aabcf8c5eb851b76e3)
// not bridged: 
Theorem LOCALLY_CONNECTED_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, locally (idx_n (dimindex M + dimindex N)) {x :e Power (R :^: idx_n (dimindex M + dimindex N)) | connected (idx_n (dimindex M + dimindex N)) x} (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ locally M {x :e Power (R :^: idx M) | connected M x} s /\ locally N {x :e Power (R :^: idx N) | connected N x} t).
Admitted.

// HOL Light: Multivariate/paths.ml:7050 / LOCALLY_PATH_CONNECTED_PCROSS_EQ   (hash md5:8a0606936a26d99b8a099e7d1b406de0)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, locally (idx_n (dimindex M + dimindex N)) {x :e Power (R :^: idx_n (dimindex M + dimindex N)) | path_connected (idx_n (dimindex M + dimindex N)) x} (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ locally M {x :e Power (R :^: idx M) | path_connected M x} s /\ locally N {x :e Power (R :^: idx N) | path_connected N x} t).
Admitted.

// HOL Light: Multivariate/paths.ml:7117 / LOCALLY_CONNECTED_SUBREGION   (hash md5:e4251b7f5fe9cd6a142f191b72f81381)
// not bridged: 
Theorem LOCALLY_CONNECTED_SUBREGION : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s /\ (t c= s /\ (connected N c /\ c :e subtopology (R :^: idx N) (euclidean N) t)) -> exists c' c= R :^: idx N, connected N c' /\ (c' :e subtopology (R :^: idx N) (euclidean N) s /\ c = t :/\: c').
Admitted.

// HOL Light: Multivariate/paths.ml:7147 / CARD_EQ_OPEN_IN   (hash md5:074659d2f0b586c397b0c99f110a6eee)
// not bridged: 
Theorem CARD_EQ_OPEN_IN : forall N:set, N <> Empty -> forall u s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} u /\ (s :e subtopology (R :^: idx N) (euclidean N) u /\ (exists x :e R :^: idx N, x :e s /\ limit_point_of N x u)) -> equip s R.
Admitted.

// HOL Light: Multivariate/paths.ml:7179 / CARD_EQ_OPEN_IN_AFFINE   (hash md5:c30a2180add49111c57b3d140df6f8d4)
// not bridged: 
Theorem CARD_EQ_OPEN_IN_AFFINE : forall N:set, N <> Empty -> forall u s c= R :^: idx N, affine N u /\ (~ aff_dim N u = 0 /\ (s :e subtopology (R :^: idx N) (euclidean N) u /\ ~ s = Empty)) -> equip s R.
Admitted.

// HOL Light: Multivariate/paths.ml:7193 / SEPARATION_BY_CLOSED_INTERMEDIATES   (hash md5:7db01bc6dd3de27fb249bcede26ae809)
// not bridged: 
Theorem SEPARATION_BY_CLOSED_INTERMEDIATES : forall N:set, N <> Empty -> forall u s c= R :^: idx N, ~ connected N (u :\: s) -> exists t c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) t /\ (t c= s /\ forall c c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) c /\ (t c= c /\ c c= s) -> ~ connected N (u :\: c)).
Admitted.

// HOL Light: Multivariate/paths.ml:7208 / SEPARATION_BY_CLOSED_INTERMEDIATES_EQ   (hash md5:4cd7704a0246067a5c52ec24eb527e36)
// not bridged: 
Theorem SEPARATION_BY_CLOSED_INTERMEDIATES_EQ : forall N:set, N <> Empty -> forall u s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} u -> (~ connected N (u :\: s) <-> exists t c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) t /\ (t c= s /\ forall c c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) c /\ (t c= c /\ c c= s) -> ~ connected N (u :\: c))).
Admitted.

// HOL Light: Multivariate/paths.ml:7225 / LOCALLY_CONNECTED_CLOSED_UNION_GEN   (hash md5:bac2d922957be4f4bd7886b41475f365)
// not bridged: 
Theorem LOCALLY_CONNECTED_CLOSED_UNION_GEN : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) t /\ (locally N {x :e Power (R :^: idx N) | connected N x} s /\ locally N {x :e Power (R :^: idx N) | connected N x} t)) -> locally N {x :e Power (R :^: idx N) | connected N x} (s :\/: t).
Admitted.

// HOL Light: Multivariate/paths.ml:7316 / LOCALLY_CONNECTED_CLOSED_UNION   (hash md5:a2e9e6cda2ebccf5276edddde6867249)
// not bridged: 
Theorem LOCALLY_CONNECTED_CLOSED_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s /\ (locally N {x :e Power (R :^: idx N) | connected N x} t /\ (closed N s /\ closed N t)) -> locally N {x :e Power (R :^: idx N) | connected N x} (s :\/: t).
Admitted.

// HOL Light: Multivariate/paths.ml:7325 / LOCALLY_CONNECTED_CLOSED_UNIONS   (hash md5:846d22a4af4914e384b52e17c9e99fc7)
// not bridged: 
Theorem LOCALLY_CONNECTED_CLOSED_UNIONS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), finite f /\ (forall s c= R :^: idx N, s :e f -> closed N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s) -> locally N {x :e Power (R :^: idx N) | connected N x} (Union f).
Admitted.

// HOL Light: Multivariate/paths.ml:7334 / LOCALLY_CONNECTED_FROM_UNION_AND_INTER_GEN   (hash md5:f3f5330e0ea8a743c9febd228050a055)
// not bridged: 
Theorem LOCALLY_CONNECTED_FROM_UNION_AND_INTER_GEN : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) t /\ (locally N {x :e Power (R :^: idx N) | connected N x} (s :\/: t) /\ locally N {x :e Power (R :^: idx N) | connected N x} (s :/\: t))) -> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:7432 / LOCALLY_CONNECTED_FROM_UNION_AND_INTER   (hash md5:016a9f5a71881f05c4b0bdf1c9e6ff53)
// not bridged: 
Theorem LOCALLY_CONNECTED_FROM_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, closed N s /\ (closed N t /\ (locally N {x :e Power (R :^: idx N) | connected N x} (s :\/: t) /\ locally N {x :e Power (R :^: idx N) | connected N x} (s :/\: t))) -> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:7442 / LOCALLY_CONNECTED_CLOSURE_FROM_FRONTIER   (hash md5:7c3306992eaeccbd55da5ba9a98e35e9)
// not bridged: 
Theorem LOCALLY_CONNECTED_CLOSURE_FROM_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} (frontier N s) -> locally N {x :e Power (R :^: idx N) | connected N x} (closure N s).
Admitted.

// HOL Light: Multivariate/paths.ml:7682 / PATH_CONNECTED_FROM_CLOSED_UNION_AND_INTER   (hash md5:457c33908dbc2e212569b941a73b7004)
// not bridged: 
Theorem PATH_CONNECTED_FROM_CLOSED_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, closed N s /\ (closed N t /\ (path_connected N (s :\/: t) /\ path_connected N (s :/\: t))) -> path_connected N s /\ path_connected N t.
Admitted.

// HOL Light: Multivariate/paths.ml:7693 / PATH_CONNECTED_CLOSURE_FROM_FRONTIER   (hash md5:20e4657faaa01fb892bde16955ef2199)
// not bridged: 
Theorem PATH_CONNECTED_CLOSURE_FROM_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, path_connected N (frontier N s) -> path_connected N (closure N s).
Admitted.

// HOL Light: Multivariate/paths.ml:7707 / LOCALLY_PATH_CONNECTED_SUBREGION   (hash md5:0e6d0fe065a8b05b59687714dc5ca569)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_SUBREGION : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, locally N {x :e Power (R :^: idx N) | path_connected N x} s /\ (t c= s /\ (path_connected N c /\ c :e subtopology (R :^: idx N) (euclidean N) t)) -> exists c' c= R :^: idx N, path_connected N c' /\ (c' :e subtopology (R :^: idx N) (euclidean N) s /\ c = t :/\: c').
Admitted.

// HOL Light: Multivariate/paths.ml:7742 / LOCALLY_PATH_CONNECTED_FROM_UNION_AND_INTER_GEN   (hash md5:6dab6af19d2a3b6e198eb0907a08cb2e)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_FROM_UNION_AND_INTER_GEN : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) t /\ (locally N {x :e Power (R :^: idx N) | path_connected N x} (s :\/: t) /\ locally N {x :e Power (R :^: idx N) | path_connected N x} (s :/\: t))) -> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:7840 / LOCALLY_PATH_CONNECTED_FROM_UNION_AND_INTER   (hash md5:ce484fee410cb216ab9bce17cf05412f)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_FROM_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, closed N s /\ (closed N t /\ (locally N {x :e Power (R :^: idx N) | path_connected N x} (s :\/: t) /\ locally N {x :e Power (R :^: idx N) | path_connected N x} (s :/\: t))) -> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:7860 / SUBMETRIC_EUCLIDEAN_METRIC   (hash md5:b7547fb1d8c60bc7cc4a57cc369a29a9)
// not bridged: 
Theorem SUBMETRIC_EUCLIDEAN_METRIC : forall N:set, N <> Empty -> (forall s c= R :^: idx N, mspace (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) = s) /\ forall s c= R :^: idx N, forall x :e R :^: idx N :*: R :^: idx N, mdist (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) x = distance N x.
Admitted.

// HOL Light: Multivariate/paths.ml:7865 / MTOPOLOGY_SUBMETRIC_EUCLIDEAN   (hash md5:9db0e005f6ba364e15623eaacd9e8416)
// not bridged: 
Theorem MTOPOLOGY_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, mtopology (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) = subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:7871 / MBOUNDED_SUBMETRIC_EUCLIDEAN   (hash md5:a23073568b3eaf5fa5c494a111e975fc)
// not bridged: 
Theorem MBOUNDED_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, t c= s -> (mbounded (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) t <-> bounded_hl N t).
Admitted.

// HOL Light: Multivariate/paths.ml:7878 / MDIAMETER_SUBMETRIC_EUCLIDEAN   (hash md5:546a7bfcbc5f455a253891cb8b895af9)
// not bridged: 
Theorem MDIAMETER_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, t c= s -> mdiameter (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) t = diameter N t.
Admitted.

// HOL Light: Multivariate/paths.ml:7887 / CONNECTED_IN_SUBTOPOLOGY_EUCLIDEAN   (hash md5:85280d366248f23485236ac7c56dab94)
// not bridged: 
Theorem CONNECTED_IN_SUBTOPOLOGY_EUCLIDEAN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, connected_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) t <-> t c= s /\ connected N t.
Admitted.

// HOL Light: Multivariate/paths.ml:7892 / COMPACT_IN_SUBTOPOLOGY_EUCLIDEAN   (hash md5:8848d3490d226645c3c0c7a58ddac301)
// not bridged: 
Theorem COMPACT_IN_SUBTOPOLOGY_EUCLIDEAN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) t <-> t c= s /\ compact N t.
Admitted.

// HOL Light: Multivariate/paths.ml:7897 / CONNECTED_IN_SUBMETRIC_EUCLIDEAN   (hash md5:96a9d70d88aeda5c3e42c7fe482a5253)
// not bridged: 
Theorem CONNECTED_IN_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, connected_in (R :^: idx N) (mtopology (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s)) t <-> t c= s /\ connected N t.
Admitted.

// HOL Light: Multivariate/paths.ml:7905 / COMPACT_IN_SUBMETRIC_EUCLIDEAN_MSPACE   (hash md5:6835e3a0b072bc7a216d5fd1842b5248)
// not bridged: 
Theorem COMPACT_IN_SUBMETRIC_EUCLIDEAN_MSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact_in (R :^: idx N) (mtopology (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s)) s <-> compact N s.
Admitted.

// HOL Light: Multivariate/paths.ml:7911 / LOCALLY_CONNECTED_SPACE_SUBMETRIC_EUCLIDEAN   (hash md5:2086c2db6b38a1e93a8de22a07584832)
// not bridged: 
Theorem LOCALLY_CONNECTED_SPACE_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally_connected_space (R :^: idx N) (mtopology (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s)) <-> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:7918 / LOCALLY_COMPACT_SPACE_SUBMETRIC_EUCLIDEAN   (hash md5:00d7114e16adeb46e57b6ad441666863)
// not bridged: 
Theorem LOCALLY_COMPACT_SPACE_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally_compact_space (R :^: idx N) (mtopology (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s)) <-> locally N {x :e Power (R :^: idx N) | compact N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:7925 / CONNECTED_IN_SUBMETRIC_EUCLIDEAN_MSPACE   (hash md5:8ea2474a455423fa960b8be29cabc683)
// not bridged: 
Theorem CONNECTED_IN_SUBMETRIC_EUCLIDEAN_MSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, connected_in (R :^: idx N) (mtopology (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s)) s <-> connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:7932 / FCCOVERABLE_IN_EUCLIDEAN_METRIC   (hash md5:abfce99616fcdb59ccaff6c7982045a4)
// not bridged: 
Theorem FCCOVERABLE_IN_EUCLIDEAN_METRIC : forall N:set, N <> Empty -> forall s c= R :^: idx N, fccoverable_in (R :^: idx N) (euclidean_metric N) s <-> forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = s /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (bounded_hl N t /\ diameter N t <= e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:7943 / FCCOVERABLE_SPACE_SUBMETRIC_EUCLIDEAN   (hash md5:20eebc4ddd1fcc5d99c1bcb69ae7fde2)
// not bridged: 
Theorem FCCOVERABLE_SPACE_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, fccoverable_space (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) <-> forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = s /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (bounded_hl N t /\ diameter N t <= e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:7962 / ULC_SPACE_SUBMETRIC_EUCLIDEAN   (hash md5:bf2506e39763a382ec9384d93eabde85)
// not bridged: 
Theorem ULC_SPACE_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, ulc_space (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) <-> forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall x y :e R :^: idx N, x :e s /\ (y :e s /\ distance N (x,y) < d) -> exists c c= R :^: idx N, x :e c /\ (y :e c /\ (c c= s /\ (connected N c /\ (bounded_hl N c /\ diameter N c <= e0)))).
Admitted.

// HOL Light: Multivariate/paths.ml:7986 / FCCOVERABLE_IMP_LOCALLY_CONNECTED   (hash md5:92a96c84dad89d72f3898c8ba5b0dee0)
// not bridged: 
Theorem FCCOVERABLE_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, (forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = s /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (bounded_hl N t /\ diameter N t <= e0))) -> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:8000 / ULC_IMP_LOCALLY_CONNECTED   (hash md5:8def49f5fc3e2cb0ae4c2afaec8859f3)
// not bridged: 
Theorem ULC_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, (forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall x y :e R :^: idx N, x :e s /\ (y :e s /\ distance N (x,y) < d) -> exists c c= R :^: idx N, x :e c /\ (y :e c /\ (c c= s /\ (connected N c /\ (bounded_hl N c /\ diameter N c <= e0))))) -> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:8017 / FCCOVERABLE_INTERMEDIATE_CLOSURE   (hash md5:22015d002ba91100a215c54ea2e062cf)
// not bridged: 
Theorem FCCOVERABLE_INTERMEDIATE_CLOSURE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t /\ (t c= closure N s /\ (forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = s /\ forall t0 c= R :^: idx N, t0 :e c -> connected N t0 /\ (bounded_hl N t0 /\ diameter N t0 <= e0)))) -> forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = t /\ forall t0 c= R :^: idx N, t0 :e c -> connected N t0 /\ (bounded_hl N t0 /\ diameter N t0 <= e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:8032 / COMPACT_LOCALLY_CONNECTED_IMP_ULC   (hash md5:0e83b0f81fab8b60731890d1b8ec1d8e)
// not bridged: 
Theorem COMPACT_LOCALLY_CONNECTED_IMP_ULC : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall x y :e R :^: idx N, x :e s /\ (y :e s /\ distance N (x,y) < d) -> exists c c= R :^: idx N, x :e c /\ (y :e c /\ (c c= s /\ (connected N c /\ (bounded_hl N c /\ diameter N c <= e0)))).
Admitted.

// HOL Light: Multivariate/paths.ml:8051 / COMPACT_LOCALLY_CONNECTED_IMP_ULC_ALT   (hash md5:6bb5b97b5bab959b2597f653de04b20d)
// not bridged: 
Theorem COMPACT_LOCALLY_CONNECTED_IMP_ULC_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ (d < e0 /\ forall x y :e R :^: idx N, x :e s /\ (y :e s /\ distance N (x,y) < d) -> exists c c= R :^: idx N, connected N c /\ (x :e c /\ (y :e c /\ c c= s :/\: (ball N (x,e0) :/\: ball N (y,e0))))).
Admitted.

// HOL Light: Multivariate/paths.ml:8078 / BOUNDED_ULC_IMP_FCCOVERABLE   (hash md5:950980715de07a886cf5d0c1fd5d9b90)
// not bridged: 
Theorem BOUNDED_ULC_IMP_FCCOVERABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ (forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall x y :e R :^: idx N, x :e s /\ (y :e s /\ distance N (x,y) < d) -> exists c c= R :^: idx N, x :e c /\ (y :e c /\ (c c= s /\ (connected N c /\ (bounded_hl N c /\ diameter N c <= e0))))) -> forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = s /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (bounded_hl N t /\ diameter N t <= e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:8104 / COMPACT_LOCALLY_CONNECTED_IMP_FCCOVERABLE   (hash md5:0ed475a6d83d77e667d06c9df366c6a3)
// not bridged: 
Theorem COMPACT_LOCALLY_CONNECTED_IMP_FCCOVERABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = s /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (bounded_hl N t /\ diameter N t <= e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:8119 / COMPACT_LOCALLY_CONNECTED_EQ_FCCCOVERABLE   (hash md5:60b7b9611b626acf65e2d565bf8eda75)
// not bridged: 
Theorem COMPACT_LOCALLY_CONNECTED_EQ_FCCCOVERABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s <-> forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = s /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (compact N t /\ diameter N t <= e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:8145 / LOCALLY_FCCOVERABLE   (hash md5:9e85d443b1975a8cb6abd02b04c43a50)
// not bridged: 
Theorem LOCALLY_FCCOVERABLE : forall N:set, N <> Empty -> forall s u c= R :^: idx N, forall a :e R :^: idx N, (forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = s /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (bounded_hl N t /\ diameter N t <= e0))) /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ a :e u) -> exists v c= R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ (connected N v /\ (a :e v /\ (v c= u /\ forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = v /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (bounded_hl N t /\ diameter N t <= e0))))).
Admitted.

// HOL Light: Multivariate/paths.ml:8592 / LOCALLY_FCCOVERABLE_ALT   (hash md5:5cf80b5e085dca1ebd38a9747c52e7e8)
// not bridged: 
Theorem LOCALLY_FCCOVERABLE_ALT : forall N:set, N <> Empty -> forall s u c= R :^: idx N, forall a :e R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s /\ (locally N {x :e Power (R :^: idx N) | connected N x} s /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ a :e u)) -> exists v c= R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ (connected N v /\ (a :e v /\ (v c= u /\ forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = v /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (bounded_hl N t /\ diameter N t <= e0))))).
Admitted.

// HOL Light: Multivariate/paths.ml:9080 / LOCALLY_CONNECTED_CONTINUUM   (hash md5:48b25e858b59ef7ea9e87ee39d1782ed)
// not bridged: 
Theorem LOCALLY_CONNECTED_CONTINUUM : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {c :e Power (R :^: idx N) | compact N c /\ (connected N c /\ locally N {x :e Power (R :^: idx N) | connected N x} c)} s <-> locally N {x :e Power (R :^: idx N) | compact N x} s /\ locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:9113 / COMPACT_LOCALLY_CONNECTED_EQ_FCCCOVERABLE_ALT   (hash md5:51ddfe52bb92bfee2ebbb338a59f5597)
// not bridged: 
Theorem COMPACT_LOCALLY_CONNECTED_EQ_FCCCOVERABLE_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s <-> forall e0 :e R, 0 < e0 -> exists c c= Power (R :^: idx N), finite c /\ (Union c = s /\ forall t c= R :^: idx N, t :e c -> connected N t /\ (compact N t /\ (locally N {x :e Power (R :^: idx N) | connected N x} t /\ diameter N t <= e0))).
Admitted.

// HOL Light: Multivariate/paths.ml:9136 / SEMI_LOCALLY_CONNECTED   (hash md5:a4c462c262c2f6c426af9de3436e4f87)
// not bridged: 
Theorem SEMI_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, connected N s /\ (locally N {x :e Power (R :^: idx N) | compact N x} s /\ locally N {x :e Power (R :^: idx N) | connected N x} s) -> forall x :e R :^: idx N, forall v c= R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ x :e v -> exists u c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (x :e u /\ (u c= v /\ finite (components N (s :\: u)))).
Admitted.

// HOL Light: Multivariate/paths.ml:9155 / SEMI_LOCALLY_CONNECTED_GEN   (hash md5:9c0d8095485b9963797ccf1cdc6a6f49)
// not bridged: 
Theorem SEMI_LOCALLY_CONNECTED_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite (components N s) /\ (locally N {x :e Power (R :^: idx N) | compact N x} s /\ locally N {x :e Power (R :^: idx N) | connected N x} s) -> forall x :e R :^: idx N, forall v c= R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ x :e v -> exists u c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (x :e u /\ (u c= v /\ finite (components N (s :\: u)))).
Admitted.

// HOL Light: Multivariate/paths.ml:9174 / SEMI_LOCALLY_CONNECTED_COMPACT   (hash md5:8bf1530ad308fd2c15ee450a7c5f8cfb)
// not bridged: 
Theorem SEMI_LOCALLY_CONNECTED_COMPACT : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> forall x :e R :^: idx N, forall v c= R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ x :e v -> exists u c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (x :e u /\ (u c= v /\ finite (components N (s :\: u)))).
Admitted.

// HOL Light: Multivariate/paths.ml:9212 / COMPACT_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN   (hash md5:57dda941642f13a4007d207394608b23)
// not bridged: 
Theorem COMPACT_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ (connected N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s) -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:9229 / LOCALLY_COMPACT_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN   (hash md5:42f5de761b3664ec118050ea16f68f97)
// not bridged: 
Theorem LOCALLY_COMPACT_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s /\ (connected N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s) -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:9286 / MCOMPLETE_IMP_LOCALLY_COMPACT_EUCLIDEAN   (hash md5:5f6a3d9bdbf76961895a63dc34513b0f)
// not bridged: 
Theorem MCOMPLETE_IMP_LOCALLY_COMPACT_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, mcomplete (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) -> locally N {x :e Power (R :^: idx N) | compact N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:9298 / MCOMPLETE_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN   (hash md5:207b7b3970c6e3b31e4e0070216ea1b4)
// not bridged: 
Theorem MCOMPLETE_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, mcomplete (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) /\ (connected N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s) -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:9311 / MCOMPLETE_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED_EUCLIDEAN   (hash md5:1ed4820d4c6cf04fdb692aedc6d5ff60)
// not bridged: 
Theorem MCOMPLETE_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, mcomplete (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:9323 / MCOMPLETE_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED_EUCLIDEAN   (hash md5:3c84b1eecad3771e38a2c6d9a030816a)
// not bridged: 
Theorem MCOMPLETE_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, mcomplete (R :^: idx N) (submetric (R :^: idx N) (euclidean_metric N) s) -> (locally N {x :e Power (R :^: idx N) | path_connected N x} s <-> locally N {x :e Power (R :^: idx N) | connected N x} s).
Admitted.

// HOL Light: Multivariate/paths.ml:9337 / GDELTA_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED   (hash md5:431690d8bbacc4be4022b1e4716b995c)
// not bridged: 
Theorem GDELTA_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, gdelta N s -> (locally N {x :e Power (R :^: idx N) | path_connected N x} s <-> locally N {x :e Power (R :^: idx N) | connected N x} s).
Admitted.

// HOL Light: Multivariate/paths.ml:9352 / GDELTA_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED   (hash md5:0b0e13f8ef1342253c434d82941861f5)
// not bridged: 
Theorem GDELTA_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, gdelta N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:9362 / GDELTA_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED   (hash md5:7e4137a0e4f7379c0373c39008b8d7f8)
// not bridged: 
Theorem GDELTA_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, gdelta N s /\ (connected N s /\ locally N {x :e Power (R :^: idx N) | connected N x} s) -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:9382 / LOCALLY_CONVEX   (hash md5:0fff0940871462fb7943a6dafbcba829)
// not bridged: 
Theorem LOCALLY_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | convex N x} s <-> forall x :e R :^: idx N, x :e s -> exists u v c= R :^: idx N, x :e u /\ (u c= v /\ (v c= s /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ convex N v))).
Admitted.

// HOL Light: Multivariate/paths.ml:9417 / PROPER_MAP_TO_COMPACT   (hash md5:fee9f9772d501a98b529bc7b74621aa0)
// not bridged: 
Theorem PROPER_MAP_TO_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, (forall k c= R :^: idx N, k c= t /\ compact N k -> compact M {x :e R :^: idx M | x :e s /\ f x :e k}) /\ (compact N t /\ {f x | x :e s} c= t) -> continuous_on_hl M N f s.
Admitted.

// HOL Light: Multivariate/paths.ml:9434 / CONTINUOUS_WITHIN_SEQUENTIALLY_COMPACT_MAP   (hash md5:af566fb87bfd640ba315b3d9a8e8d773)
// not bridged: 
Theorem CONTINUOUS_WITHIN_SEQUENTIALLY_COMPACT_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall x :e R :^: idx M, (forall c c= R :^: idx M, c c= s /\ compact M c -> compact N {f x | x :e c}) /\ x :e s -> (continuous N (R :^: idx M) f (within (R :^: idx M) (at_hl M x) s) <-> forall p:set -> set, (forall x0 :e omega, p x0 :e R :^: idx M) -> forall y :e R :^: idx N, (forall n :e omega, p n :e s) /\ (tendsto M omega p x sequentially /\ (forall n :e omega, f (p n) = y)) -> f x = y).
Admitted.

// HOL Light: Multivariate/paths.ml:9551 / COMPACT_CLOSED_POINTIMAGES_IMP_CONTINUOUS_ON   (hash md5:f2d6f9f6aa147ef145674b0288807b82)
// not bridged: 
Theorem COMPACT_CLOSED_POINTIMAGES_IMP_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall c c= R :^: idx M, c c= s /\ compact M c -> compact N {f x | x :e c}) /\ (forall y :e R :^: idx N, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) s) {x :e R :^: idx M | x :e s /\ f x = y}) -> continuous_on_hl M N f s.
Admitted.

// HOL Light: Multivariate/paths.ml:9572 / COMPACT_CONTINUOUS_IMAGE_EQ   (hash md5:cb5d649ca440a943e668f0f7ec511ff5)
// not bridged: 
Theorem COMPACT_CONTINUOUS_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y) -> (continuous_on_hl M N f s <-> forall t c= R :^: idx M, compact M t /\ t c= s -> compact N {f x | x :e t}).
Admitted.

// HOL Light: Multivariate/paths.ml:9589 / CONTINUOUS_EQ_COMPACT_CONNECTED_PRESERVING_GEN   (hash md5:e7aba24c6121477d5ca25601406c9f95)
// not bridged: 
Theorem CONTINUOUS_EQ_COMPACT_CONNECTED_PRESERVING_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall P c= Power (R :^: idx M), forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, locally M P s /\ (forall c c= R :^: idx M, c :e P -> connected M c) -> (continuous_on_hl M N f s <-> (forall c c= R :^: idx M, c c= s /\ compact M c -> compact N {f x | x :e c}) /\ forall c c= R :^: idx M, c c= s /\ c :e P -> connected N {f x | x :e c}).
Admitted.

// HOL Light: Multivariate/paths.ml:9673 / CONTINUOUS_EQ_COMPACT_CONNECTED_PRESERVING   (hash md5:34ec31efca44fc8f9ef72d632a2762e8)
// not bridged: 
Theorem CONTINUOUS_EQ_COMPACT_CONNECTED_PRESERVING : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, locally M {x :e Power (R :^: idx M) | connected M x} s -> (continuous_on_hl M N f s <-> (forall c c= R :^: idx M, c c= s /\ compact M c -> compact N {f x | x :e c}) /\ forall c c= R :^: idx M, c c= s /\ connected M c -> connected N {f x | x :e c}).
Admitted.

// HOL Light: Multivariate/paths.ml:9683 / CONTINUOUS_EQ_COMPACT_PATH_CONNECTED_PRESERVING   (hash md5:30ef86b081fe74b9927f3e8d2efc5a70)
// not bridged: 
Theorem CONTINUOUS_EQ_COMPACT_PATH_CONNECTED_PRESERVING : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, locally M {x :e Power (R :^: idx M) | path_connected M x} s -> (continuous_on_hl M N f s <-> (forall c c= R :^: idx M, c c= s /\ compact M c -> compact N {f x | x :e c}) /\ forall c c= R :^: idx M, c c= s /\ path_connected M c -> path_connected N {f x | x :e c}).
Admitted.

// HOL Light: Multivariate/paths.ml:9697 / CONNECTED_CLOSED_POINTIMAGES_IMP_CONTINUOUS_ON   (hash md5:a71c0f9cfaa396c0d42bacc235dc84ad)
// not bridged: 
Theorem CONNECTED_CLOSED_POINTIMAGES_IMP_CONTINUOUS_ON : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall s c= R :^: idx N, forall t c= R :^: idx 1, {f x | x :e s} c= t /\ (locally N {x :e Power (R :^: idx N) | connected N x} s /\ ((forall c c= R :^: idx N, c c= s /\ connected N c -> connected 1 {f x | x :e c}) /\ (forall y :e R :^: idx 1, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) {x :e R :^: idx N | x :e s /\ f x = y}))) -> continuous_on_hl N 1 f s.
Admitted.

// HOL Light: Multivariate/paths.ml:9735 / CONNECTED_CONNECTED_IMP_CLOSED_POINTIMAGES   (hash md5:3831f999d194cd96abadb7044f4b76be)
// not bridged: 
Theorem CONNECTED_CONNECTED_IMP_CLOSED_POINTIMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall c c= R :^: idx M, c c= s /\ connected M c -> connected N {f x | x :e c}) /\ (forall y :e R :^: idx N, connected M {x :e R :^: idx M | x :e s /\ f x = y}) -> forall y :e R :^: idx N, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) s) {x :e R :^: idx M | x :e s /\ f x = y}.
Admitted.

// HOL Light: Multivariate/paths.ml:9755 / CONNECTED_CONNECTED_POINTIMAGES_IMP_CONTINUOUS_ON   (hash md5:ed3ad00d00d3cfc09f4bd26f50dc2e97)
// not bridged: 
Theorem CONNECTED_CONNECTED_POINTIMAGES_IMP_CONTINUOUS_ON : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall s c= R :^: idx N, forall t c= R :^: idx 1, {f x | x :e s} c= t /\ (locally N {x :e Power (R :^: idx N) | connected N x} s /\ ((forall c c= R :^: idx N, c c= s /\ connected N c -> connected 1 {f x | x :e c}) /\ (forall y :e R :^: idx 1, connected N {x :e R :^: idx N | x :e s /\ f x = y}))) -> continuous_on_hl N 1 f s.
Admitted.

// HOL Light: Multivariate/paths.ml:9768 / CLOSED_CLOSED_PREIMAGES_IMP_CONTINUOUS_ON   (hash md5:b047e0158a3c4149e0ef21c4a132af65)
// not bridged: 
Theorem CLOSED_CLOSED_PREIMAGES_IMP_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, compact N t /\ ((forall y :e R :^: idx N, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) s) {x :e R :^: idx M | x :e s /\ f x = y}) /\ (forall c c= R :^: idx M, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) s) c -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) t) {f x | x :e c})) -> continuous_on_hl M N f s.
Admitted.

// HOL Light: Multivariate/paths.ml:9783 / CLOSED_CONNECTED_PREIMAGES_IMP_CONTINUOUS_ON   (hash md5:b2fc6b335f3a9d9af3c83b204d8532b2)
// not bridged: 
Theorem CLOSED_CONNECTED_PREIMAGES_IMP_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, compact N t /\ ((forall y :e R :^: idx N, connected M {x :e R :^: idx M | x :e s /\ f x = y}) /\ ((forall c c= R :^: idx M, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) s) c -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) t) {f x | x :e c}) /\ (forall c c= R :^: idx M, c c= s /\ connected M c -> connected N {f x | x :e c}))) -> continuous_on_hl M N f s.
Admitted.

// HOL Light: Multivariate/paths.ml:9797 / BICONNECTED_IMP_CONTINUOUS_ON   (hash md5:803d6a2548c6c8f0dd76ba584aeb41fe)
// not bridged: 
Theorem BICONNECTED_IMP_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, finite (components N t) /\ (locally N {x :e Power (R :^: idx N) | compact N x} t /\ (locally N {x :e Power (R :^: idx N) | connected N x} t /\ ({f x | x :e s} = t /\ ((forall c c= R :^: idx M, c c= s /\ connected M c -> connected N {f x | x :e c}) /\ (forall c c= R :^: idx N, c c= t /\ connected N c -> connected M {x :e R :^: idx M | x :e s /\ f x :e c}))))) -> continuous_on_hl M N f s.
Admitted.

// HOL Light: Multivariate/paths.ml:9891 / MONOTONE_TOPOLOGICALLY_IMP   (hash md5:0c90a448a81da11b196c518728ae3d4b)
// not bridged: 
Theorem MONOTONE_TOPOLOGICALLY_IMP : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, (forall c c= R :^: idx 1, connected 1 c -> connected 1 {x :e R :^: idx 1 | x :e s /\ f x :e c}) -> (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f x) <= drop (f y)) \/ forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f y) <= drop (f x).
Admitted.

// HOL Light: Multivariate/paths.ml:9911 / MONOTONE_TOPOLOGICALLY_EQ   (hash md5:1beeeea82db099e6f6da2ee81d95a098)
// not bridged: 
Theorem MONOTONE_TOPOLOGICALLY_EQ : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, (forall c c= R :^: idx 1, connected 1 c -> connected 1 {x :e R :^: idx 1 | x :e s /\ f x :e c}) <-> is_interval 1 s /\ ((forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f x) <= drop (f y)) \/ forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f y) <= drop (f x)).
Admitted.

// HOL Light: Multivariate/paths.ml:9925 / MONOTONE_TOPOLOGICALLY   (hash md5:65bcf07895af76eb3fd3926b89cbb149)
// not bridged: 
Theorem MONOTONE_TOPOLOGICALLY : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, is_interval 1 s -> ((forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f x) <= drop (f y)) \/ (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f y) <= drop (f x)) <-> forall c c= R :^: idx 1, connected 1 c -> connected 1 {x :e R :^: idx 1 | x :e s /\ f x :e c}).
Admitted.

// HOL Light: Multivariate/paths.ml:9934 / MONOTONE_TOPOLOGICALLY_INTO_1D_EQ   (hash md5:62e49e1e67f8be9b3cc4b51a91d0907c)
// not bridged: 
Theorem MONOTONE_TOPOLOGICALLY_INTO_1D_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall s c= R :^: idx N, continuous_on_hl N 1 f s -> ((forall k c= R :^: idx 1, connected 1 k -> connected N {x :e R :^: idx N | x :e s /\ f x :e k}) <-> connected N s /\ forall y :e R :^: idx 1, connected N {x :e R :^: idx N | x :e s /\ f x = y}).
Admitted.

// HOL Light: Multivariate/paths.ml:9952 / MONOTONE_TOPOLOGICALLY_INTO_1D   (hash md5:7d645b97eb80a45c83f370abc4d777c3)
// not bridged: 
Theorem MONOTONE_TOPOLOGICALLY_INTO_1D : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall s c= R :^: idx N, connected N s /\ (continuous_on_hl N 1 f s /\ (forall y :e R :^: idx 1, connected N {x :e R :^: idx N | x :e s /\ f x = y})) -> forall k c= R :^: idx 1, connected 1 k -> connected N {x :e R :^: idx N | x :e s /\ f x :e k}.
Admitted.

// HOL Light: Multivariate/paths.ml:9959 / MONOTONE_TOPOLOGICALLY_POINTS   (hash md5:083650264f8731a1d9ddc617a6da4f5f)
// not bridged: 
Theorem MONOTONE_TOPOLOGICALLY_POINTS : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, is_interval 1 s /\ continuous_on_hl 1 1 f s -> ((forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f x) <= drop (f y)) \/ (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f y) <= drop (f x)) <-> forall a :e R :^: idx 1, connected 1 {x :e R :^: idx 1 | x :e s /\ f x = a}).
Admitted.

// HOL Light: Multivariate/paths.ml:9970 / MONOTONE_TOPOLOGICALLY_POINTS_IMP   (hash md5:adf0a998313670b53c34a2c09122d39f)
// not bridged: 
Theorem MONOTONE_TOPOLOGICALLY_POINTS_IMP : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, continuous_on_hl 1 1 f s /\ (is_interval 1 s /\ (forall y :e R :^: idx 1, connected 1 {x :e R :^: idx 1 | x :e s /\ f x = y})) -> (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f x) <= drop (f y)) \/ forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f y) <= drop (f x).
Admitted.

// HOL Light: Multivariate/paths.ml:9979 / MONOTONE_IMP_HOMEOMORPHISM_1D   (hash md5:f4a3ff552957425b51879892c56003d1)
// not bridged: 
Theorem MONOTONE_IMP_HOMEOMORPHISM_1D : forall f :e R :^: idx 1 :^: (R :^: idx 1), forall s t c= R :^: idx 1, is_interval 1 s /\ (is_interval 1 t /\ ({f x | x :e s} = t /\ ((forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x < drop y) -> drop (f x) < drop (f y)) \/ (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x < drop y) -> drop (f x) < drop (f y))))) -> exists g :e R :^: idx 1 :^: (R :^: idx 1), homeomorphism 1 1 (s,t) (f,g).
Admitted.

// HOL Light: Multivariate/paths.ml:10031 / MONOTONE_CONNECTED_PREIMAGES_IMP_PROPER_MAP   (hash md5:8f6292b52289028bd47220ae91664abb)
// not bridged: 
Theorem MONOTONE_CONNECTED_PREIMAGES_IMP_PROPER_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, {f x | x :e s} = t /\ (locally M {x :e Power (R :^: idx M) | compact M x} s /\ (locally N {x :e Power (R :^: idx N) | connected N x} t /\ (continuous_on_hl M N f s /\ ((forall y :e R :^: idx N, compact M {x :e R :^: idx M | x :e s /\ f x = y}) /\ (forall c c= R :^: idx N, c c= t /\ connected N c -> connected M {x :e R :^: idx M | x :e s /\ f x :e c}))))) -> forall k c= R :^: idx N, k c= t /\ compact N k -> compact M {x :e R :^: idx M | x :e s /\ f x :e k}.
Admitted.

// HOL Light: Multivariate/paths.ml:10111 / MONOTONE_INTO_1D_IMP_PROPER_MAP   (hash md5:54fe69bda3e7301542cbc6210385cb37)
// not bridged: 
Theorem MONOTONE_INTO_1D_IMP_PROPER_MAP : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall s c= R :^: idx N, forall t c= R :^: idx 1, connected N s /\ (locally N {x :e Power (R :^: idx N) | compact N x} s /\ (continuous_on_hl N 1 f s /\ ({f x | x :e s} = t /\ ((forall y :e R :^: idx 1, compact N {x :e R :^: idx N | x :e s /\ f x = y}) /\ (forall y :e R :^: idx 1, connected N {x :e R :^: idx N | x :e s /\ f x = y}))))) -> forall k c= R :^: idx 1, k c= t /\ compact 1 k -> compact N {x :e R :^: idx N | x :e s /\ f x :e k}.
Admitted.

// HOL Light: Multivariate/paths.ml:10126 / MONOTONE_CONNECTED_PREIMAGES_IMP_PROPER_MAP_GEN   (hash md5:2a3b01e4ff331cba5d32ea610aab6236)
// not bridged: 
Theorem MONOTONE_CONNECTED_PREIMAGES_IMP_PROPER_MAP_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, {f x | x :e s} = t /\ (locally M {x :e Power (R :^: idx M) | compact M x} s /\ (locally N {x :e Power (R :^: idx N) | connected N x} t /\ ((forall c c= R :^: idx M, c c= s /\ compact M c -> compact N {f x | x :e c}) /\ ((forall y :e R :^: idx N, compact M {x :e R :^: idx M | x :e s /\ f x = y}) /\ (forall c c= R :^: idx N, c c= t /\ connected N c -> connected M {x :e R :^: idx M | x :e s /\ f x :e c}))))) -> forall k c= R :^: idx N, k c= t /\ compact N k -> compact M {x :e R :^: idx M | x :e s /\ f x :e k}.
Admitted.

// HOL Light: Multivariate/paths.ml:10146 / SURA_BURA_COMPACT   (hash md5:08f81921b7ceec59e07b0516079af0be)
// not bridged: 
Theorem SURA_BURA_COMPACT : forall N:set, N <> Empty -> forall s c c= R :^: idx N, compact N s /\ c :e components N s -> c = {x :e R :^: idx N | forall Y :e {t :e Power (R :^: idx N) | c c= t /\ (t :e subtopology (R :^: idx N) (euclidean N) s /\ closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) t)}, x :e Y}.
Admitted.

// HOL Light: Multivariate/paths.ml:10165 / SURA_BURA_CLOPEN_SUBSET   (hash md5:4845de0846e8e0c9151afa1f09e9dde2)
// not bridged: 
Theorem SURA_BURA_CLOPEN_SUBSET : forall N:set, N <> Empty -> forall s c u c= R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s /\ (c :e components N s /\ (compact N c /\ (open N u /\ c c= u))) -> exists k c= R :^: idx N, k :e subtopology (R :^: idx N) (euclidean N) s /\ (compact N k /\ (c c= k /\ k c= u)).
Admitted.

// HOL Light: Multivariate/paths.ml:10223 / SURA_BURA_CLOPEN_SUBSET_ALT   (hash md5:954889012078cbdbd4a45b08f9c89eac)
// not bridged: 
Theorem SURA_BURA_CLOPEN_SUBSET_ALT : forall N:set, N <> Empty -> forall s c u c= R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s /\ (c :e components N s /\ (compact N c /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ c c= u))) -> exists k c= R :^: idx N, k :e subtopology (R :^: idx N) (euclidean N) s /\ (compact N k /\ (c c= k /\ k c= u)).
Admitted.

// HOL Light: Multivariate/paths.ml:10240 / SURA_BURA   (hash md5:94d634aaed9f844f9ddc0c5039d601ce)
// not bridged: 
Theorem SURA_BURA : forall N:set, N <> Empty -> forall s c c= R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s /\ (c :e components N s /\ compact N c) -> c = {x :e R :^: idx N | forall Y :e {k :e Power (R :^: idx N) | c c= k /\ (compact N k /\ k :e subtopology (R :^: idx N) (euclidean N) s)}, x :e Y}.
Admitted.

// HOL Light: Multivariate/paths.ml:10259 / COMPONENT_CLOPEN_HAUSDIST_EXPLICIT   (hash md5:fb2834fb5a213bba1f2059cd6c5e1343)
// not bridged: 
Theorem COMPONENT_CLOPEN_HAUSDIST_EXPLICIT : forall N:set, N <> Empty -> forall s c c= R :^: idx N, forall e0 :e R, 0 < e0 /\ (locally N {x :e Power (R :^: idx N) | compact N x} s /\ (c :e components N s /\ compact N c)) -> exists k c= R :^: idx N, k :e subtopology (R :^: idx N) (euclidean N) s /\ (compact N k /\ (c c= k /\ k c= \/_ x :e R :^: idx N, {vector_add N x d | d :e R :^: idx N, x :e c /\ d :e ball N (vec N 0,e0)})).
Admitted.

// HOL Light: Multivariate/paths.ml:10275 / COMPONENT_CLOPEN_HAUSDIST   (hash md5:a77952554770a5913d40f800144409ec)
// not bridged: 
Theorem COMPONENT_CLOPEN_HAUSDIST : forall N:set, N <> Empty -> forall s c c= R :^: idx N, forall e0 :e R, 0 < e0 /\ (locally N {x :e Power (R :^: idx N) | compact N x} s /\ (c :e components N s /\ compact N c)) -> exists k c= R :^: idx N, k :e subtopology (R :^: idx N) (euclidean N) s /\ (compact N k /\ (c c= k /\ hausdist N (c,k) < e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:10305 / COMPONENT_INTERMEDIATE_CLOPEN   (hash md5:44eb3e50fba68181f397eb7fce835bbc)
// not bridged: 
Theorem COMPONENT_INTERMEDIATE_CLOPEN : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, t :e components N s /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ (t c= u /\ (dimindex N = 1 \/ ((exists r c= R :^: idx 1, homeomorphic 1 N s r) \/ (locally N {x :e Power (R :^: idx N) | connected N x} s \/ locally N {x :e Power (R :^: idx N) | compact N x} s /\ compact N t))))) -> exists c c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) c /\ (c :e subtopology (R :^: idx N) (euclidean N) s /\ (t c= c /\ c c= u)).
Admitted.

// HOL Light: Multivariate/paths.ml:10558 / COMPONENTS_SUBSETS_CLOPEN_PARTITION   (hash md5:74f01eda45fc42801827351f917776fd)
// not bridged: 
Theorem COMPONENTS_SUBSETS_CLOPEN_PARTITION : forall N:set, N <> Empty -> forall u c= Power (R :^: idx N), forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s /\ (finite u /\ (~ u = Empty /\ (u c= components N s /\ (forall c c= R :^: idx N, c :e u -> compact N c)))) -> exists f :e Power (R :^: idx N) :^: Power (R :^: idx N), (forall c c= R :^: idx N, c :e u -> f c :e subtopology (R :^: idx N) (euclidean N) s /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) (f c) /\ c c= f c)) /\ ((forall x y :e u, x <> y -> ~ f x = f y) /\ ((forall x y :e u, x <> y -> f x :/\: f y = Empty) /\ Union {f x | x :e u} = s)).
Admitted.

// HOL Light: Multivariate/paths.ml:10680 / OPEN_CONNECTED_COMPONENT   (hash md5:8a4938e766678b0112a55272438dff8c)
// not bridged: 
Theorem OPEN_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, open N s -> open N {x0 :e R :^: idx N | connected_component N s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:10695 / IN_CLOSURE_CONNECTED_COMPONENT   (hash md5:68327c654e367e31f4d0042b61d740c2)
// not bridged: 
Theorem IN_CLOSURE_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, x :e s /\ open N s -> (x :e closure N {x0 :e R :^: idx N | connected_component N s y x0} <-> x :e {x0 :e R :^: idx N | connected_component N s y x0}).
Admitted.

// HOL Light: Multivariate/paths.ml:10714 / PATH_COMPONENT_SUBSET_CONNECTED_COMPONENT   (hash md5:d79f1f377a24a01caf5825c7610a2df0)
// not bridged: 
Theorem PATH_COMPONENT_SUBSET_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, {x0 :e R :^: idx N | path_component N s x x0} c= {x0 :e R :^: idx N | connected_component N s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:10720 / PATH_COMPONENT_EQ_CONNECTED_COMPONENT   (hash md5:1b0957cf3a000bb3c94bb2993c66efce)
// not bridged: 
Theorem PATH_COMPONENT_EQ_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, locally N {x0 :e Power (R :^: idx N) | path_connected N x0} s -> forall x0 :e R :^: idx N, path_component N s x x0 <-> connected_component N s x x0.
Admitted.

// HOL Light: Multivariate/paths.ml:10730 / PATH_COMPONENT_IMP_CONNECTED_COMPONENT   (hash md5:a91fbeba1f52d2ae213a7df22593091d)
// not bridged: 
Theorem PATH_COMPONENT_IMP_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, path_component N s a b -> connected_component N s a b.
Admitted.

// HOL Light: Multivariate/paths.ml:10735 / LOCALLY_PATH_CONNECTED_PATH_COMPONENT   (hash md5:06d6f9f807ece3c73a591a82760b129c)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, locally N {x0 :e Power (R :^: idx N) | path_connected N x0} s -> locally N {x0 :e Power (R :^: idx N) | path_connected N x0} {x0 :e R :^: idx N | path_component N s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:10742 / OPEN_PATH_CONNECTED_COMPONENT   (hash md5:b0857544bbc9437a572ecbed907b9491)
// not bridged: 
Theorem OPEN_PATH_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, open N s -> forall x0 :e R :^: idx N, path_component N s x x0 <-> connected_component N s x x0.
Admitted.

// HOL Light: Multivariate/paths.ml:10747 / PATH_CONNECTED_EQ_CONNECTED_LPC   (hash md5:3394ea76be4597b5c48fc81b60c86276)
// not bridged: 
Theorem PATH_CONNECTED_EQ_CONNECTED_LPC : forall A:set, A <> Empty -> forall s c= R :^: idx A, locally A {x :e Power (R :^: idx A) | path_connected A x} s -> (path_connected A s <-> connected A s).
Admitted.

// HOL Light: Multivariate/paths.ml:10753 / PATH_CONNECTED_EQ_CONNECTED   (hash md5:9ad85884482de9e5c0f858bbf710ff44)
// not bridged: 
Theorem PATH_CONNECTED_EQ_CONNECTED : forall A:set, A <> Empty -> forall s c= R :^: idx A, open A s -> (path_connected A s <-> connected A s).
Admitted.

// HOL Light: Multivariate/paths.ml:10757 / CONNECTED_OPEN_PATH_CONNECTED   (hash md5:711fdfa89e4301e0d2014e981cc3507d)
// not bridged: 
Theorem CONNECTED_OPEN_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s /\ connected N s -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:10761 / CONNECTED_OPEN_ARC_CONNECTED   (hash md5:81779330a7c42a7f111cb4c391157df8)
// not bridged: 
Theorem CONNECTED_OPEN_ARC_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s /\ connected N s -> forall x y :e R :^: idx N, x :e s /\ y :e s -> x = y \/ exists g:set -> set, (forall x0 :e R :^: idx 1, g x0 :e R :^: idx N) /\ (arc N g /\ (path_image N g c= s /\ (pathstart N g = x /\ pathfinish N g = y))).
Admitted.

// HOL Light: Multivariate/paths.ml:10774 / OPEN_COMPONENTS   (hash md5:41949160dcf651065bde10888f374423)
// not bridged: 
Theorem OPEN_COMPONENTS : forall N:set, N <> Empty -> forall u s c= R :^: idx N, open N u /\ s :e components N u -> open N s.
Admitted.

// HOL Light: Multivariate/paths.ml:10780 / COMPONENTS_OPEN_UNIQUE   (hash md5:8cfd8c4b9a3de3ffd2e5d765a17df5ba)
// not bridged: 
Theorem COMPONENTS_OPEN_UNIQUE : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), forall s c= R :^: idx N, (forall c c= R :^: idx N, c :e f -> open N c /\ (connected N c /\ ~ c = Empty)) /\ ((forall x y :e f, x <> y -> x :/\: y = Empty) /\ Union f = s) -> components N s = f.
Admitted.

// HOL Light: Multivariate/paths.ml:10791 / COUNTABLE_OPEN_COMPONENTS   (hash md5:a8f1361b1abe4304355be70dbebbdd8a)
// not bridged: 
Theorem COUNTABLE_OPEN_COMPONENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s -> countable (components N s).
Admitted.

// HOL Light: Multivariate/paths.ml:10798 / COUNTABLE_OPEN_CONNECTED_COMPONENTS   (hash md5:67ef5dcbe1bd7929805a107da8554576)
// not bridged: 
Theorem COUNTABLE_OPEN_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, open N s -> countable {{x0 :e R :^: idx N | connected_component N s x x0} | x :e R :^: idx N, x :e t}.
Admitted.

// HOL Light: Multivariate/paths.ml:10808 / CONTINUOUS_ON_COMPONENTS   (hash md5:fb2fd5778f13c672768993d900a7541f)
// not bridged: 
Theorem CONTINUOUS_ON_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, locally M {x :e Power (R :^: idx M) | connected M x} s /\ (forall c c= R :^: idx M, c :e components M s -> continuous_on_hl M N f c) -> continuous_on_hl M N f s.
Admitted.

// HOL Light: Multivariate/paths.ml:10815 / CONTINUOUS_ON_COMPONENTS_EQ   (hash md5:5db4f052620857f6d5396542c05c5a68)
// not bridged: 
Theorem CONTINUOUS_ON_COMPONENTS_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx A, locally A {x :e Power (R :^: idx A) | connected A x} s -> (continuous_on_hl A B f s <-> forall c c= R :^: idx A, c :e components A s -> continuous_on_hl A B f c).
Admitted.

// HOL Light: Multivariate/paths.ml:10823 / CONTINUOUS_ON_COMPONENTS_OPEN   (hash md5:5be7bfb7e0498295979bcfd7795ab5f2)
// not bridged: 
Theorem CONTINUOUS_ON_COMPONENTS_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, open M s /\ (forall c c= R :^: idx M, c :e components M s -> continuous_on_hl M N f c) -> continuous_on_hl M N f s.
Admitted.

// HOL Light: Multivariate/paths.ml:10829 / CONTINUOUS_ON_COMPONENTS_OPEN_EQ   (hash md5:e5888f7d73fdb9e77451a617d1eaf719)
// not bridged: 
Theorem CONTINUOUS_ON_COMPONENTS_OPEN_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx A, open A s -> (continuous_on_hl A B f s <-> forall c c= R :^: idx A, c :e components A s -> continuous_on_hl A B f c).
Admitted.

// HOL Light: Multivariate/paths.ml:10837 / CLOSED_IN_UNION_COMPLEMENT_COMPONENTS   (hash md5:44e8a485c4580e2cffe59506619759f9)
// not bridged: 
Theorem CLOSED_IN_UNION_COMPLEMENT_COMPONENTS : forall N:set, N <> Empty -> forall u s c= R :^: idx N, forall c c= Power (R :^: idx N), locally N {x :e Power (R :^: idx N) | connected N x} u /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ c c= components N (u :\: s)) -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) (s :\/: Union c).
Admitted.

// HOL Light: Multivariate/paths.ml:10874 / CLOSED_UNION_COMPLEMENT_COMPONENTS   (hash md5:d73b22084cc5fb8e9e5d95fb3ba07c8a)
// not bridged: 
Theorem CLOSED_UNION_COMPLEMENT_COMPONENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c c= Power (R :^: idx N), closed N s /\ c c= components N ((R :^: idx N) :\: s) -> closed N (s :\/: Union c).
Admitted.

// HOL Light: Multivariate/paths.ml:10882 / CLOSED_IN_UNION_COMPLEMENT_COMPONENT   (hash md5:30e60c2e1299965e56d521460a6725e9)
// not bridged: 
Theorem CLOSED_IN_UNION_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall u s c c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} u /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ c :e components N (u :\: s)) -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) (s :\/: c).
Admitted.

// HOL Light: Multivariate/paths.ml:10893 / CLOSED_UNION_COMPLEMENT_COMPONENT   (hash md5:3239b08c2017db28fce1f4339673b8c9)
// not bridged: 
Theorem CLOSED_UNION_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall s c c= R :^: idx N, closed N s /\ c :e components N ((R :^: idx N) :\: s) -> closed N (s :\/: c).
Admitted.

// HOL Light: Multivariate/paths.ml:10900 / NONSEPARATED_CLOSED_COMPLEMENT_COMPONENTS   (hash md5:64d65bde255e9985bf660148261cf5f3)
// not bridged: 
Theorem NONSEPARATED_CLOSED_COMPLEMENT_COMPONENTS : forall N:set, N <> Empty -> forall u s c= R :^: idx N, forall c c= Power (R :^: idx N), connected N u /\ (locally N {x :e Power (R :^: idx N) | connected N x} u /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ (~ s = Empty /\ (c c= components N (u :\: s) /\ ~ c = Empty)))) -> ~ s :/\: closure N (Union c) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:10941 / COUNTABLE_CONNECTED_COMPONENTS   (hash md5:ebdd29163e8ea5d3c6a757c5c92e6e14)
// not bridged: 
Theorem COUNTABLE_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s -> countable {{x0 :e R :^: idx N | connected_component N s x x0} | x :e R :^: idx N, x :e t}.
Admitted.

// HOL Light: Multivariate/paths.ml:10969 / COUNTABLE_PATH_COMPONENTS   (hash md5:fbb6325d69cdf07b2880b8112e676c41)
// not bridged: 
Theorem COUNTABLE_PATH_COMPONENTS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, locally N {x :e Power (R :^: idx N) | path_connected N x} s -> countable {{x0 :e R :^: idx N | path_component N s x x0} | x :e R :^: idx N, x :e t}.
Admitted.

// HOL Light: Multivariate/paths.ml:10997 / COUNTABLE_COMPONENTS   (hash md5:7466f69cdea0101555dfea20e58766f3)
// not bridged: 
Theorem COUNTABLE_COMPONENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} s -> countable (components N s).
Admitted.

// HOL Light: Multivariate/paths.ml:11001 / FRONTIER_MINIMAL_SEPARATING_CLOSED   (hash md5:64bddb61d1c1297770db1851a93a3ab9)
// not bridged: 
Theorem FRONTIER_MINIMAL_SEPARATING_CLOSED : forall N:set, N <> Empty -> forall s c c= R :^: idx N, closed N s /\ (~ connected N ((R :^: idx N) :\: s) /\ ((forall t c= R :^: idx N, closed N t /\ (t c= s /\ t <> s) -> connected N ((R :^: idx N) :\: t)) /\ c :e components N ((R :^: idx N) :\: s))) -> frontier N c = s.
Admitted.

// HOL Light: Multivariate/paths.ml:11044 / FRONTIER_MINIMAL_SEPARATING_CLOSED_POINTWISE   (hash md5:1121c8eaa1c44917233083248d3ea292)
// not bridged: 
Theorem FRONTIER_MINIMAL_SEPARATING_CLOSED_POINTWISE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, closed N s /\ (~ a :e s /\ (~ connected_component N ((R :^: idx N) :\: s) a b /\ (forall t c= R :^: idx N, closed N t /\ (t c= s /\ t <> s) -> connected_component N ((R :^: idx N) :\: t) a b))) -> frontier N {x :e R :^: idx N | connected_component N ((R :^: idx N) :\: s) a x} = s.
Admitted.

// HOL Light: Multivariate/paths.ml:11072 / CONNECTED_COMPONENT_DIFF_NONSEPARATED   (hash md5:a34c284c0fa25f4bc119b8e2defeca47)
// not bridged: 
Theorem CONNECTED_COMPONENT_DIFF_NONSEPARATED : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, compact N s /\ (connected N s /\ (t c= s /\ (~ t = Empty /\ c :e components N (s :\: t)))) -> ~ closure N c :/\: closure N t = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11167 / CONNECTED_COMPONENT_DIFF_NONSEPARATED_ALT   (hash md5:f9b9f3890aa8328f8ca329eeccdc70fc)
// not bridged: 
Theorem CONNECTED_COMPONENT_DIFF_NONSEPARATED_ALT : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, compact N s /\ (connected N s /\ (t c= s /\ t <> s /\ c :e components N t)) -> ~ closure N c :/\: closure N (s :\: t) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11177 / CONNECTED_COMPONENT_DIFF_CLOSED_NONSEPARATED   (hash md5:c9f65c22ee279532238b988eedaefca7)
// not bridged: 
Theorem CONNECTED_COMPONENT_DIFF_CLOSED_NONSEPARATED : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, compact N s /\ (connected N s /\ (closed N t /\ (t c= s /\ (~ t = Empty /\ c :e components N (s :\: t))))) -> ~ closure N c :/\: t = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11184 / NONSEPARATED_CLOSED_COMPLEMENT_COMPONENT   (hash md5:94b4a7ac2d309c34db893c91e2c7bd68)
// not bridged: 
Theorem NONSEPARATED_CLOSED_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall u s c c= R :^: idx N, (compact N u \/ locally N {x :e Power (R :^: idx N) | connected N x} u) /\ (connected N u /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ (~ s = Empty /\ c :e components N (u :\: s)))) -> ~ s :/\: closure N c = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11203 / CONNECTED_EQ_NONSEPARATED_CLOSED_COMPLEMENT_COMPONENT   (hash md5:99fd7c7fcab4afcfcf93245a5fc2366a)
// not bridged: 
Theorem CONNECTED_EQ_NONSEPARATED_CLOSED_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall u s c= R :^: idx N, (compact N u \/ locally N {x :e Power (R :^: idx N) | connected N x} u) /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ (connected N s /\ ~ s = Empty)) -> (connected N u <-> forall c c= R :^: idx N, c :e components N (u :\: s) -> ~ s :/\: closure N c = Empty).
Admitted.

// HOL Light: Multivariate/paths.ml:11235 / CONNECTED_EQ_COMPONENT_DIFF_CLOSED_NONSEPARATED   (hash md5:d3cf3513fc585e9cbff181d233225c2d)
// not bridged: 
Theorem CONNECTED_EQ_COMPONENT_DIFF_CLOSED_NONSEPARATED : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact N s /\ (closed N t /\ (connected N t /\ (t c= s /\ ~ t = Empty))) -> (connected N s <-> forall c c= R :^: idx N, c :e components N (s :\: t) -> ~ closure N c :/\: t = Empty).
Admitted.

// HOL Light: Multivariate/paths.ml:11244 / CONNECTED_EQ_COMPONENT_DELETE_NONSEPARATED   (hash md5:0332df6679c3c8091ce26df0ca473e26)
// not bridged: 
Theorem CONNECTED_EQ_COMPONENT_DELETE_NONSEPARATED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, (compact N s \/ (locally N {x :e Power (R :^: idx N) | connected N x} s \/ finite (components N (s :\: {a})))) /\ a :e s -> (connected N s <-> forall c c= R :^: idx N, c :e components N (s :\: {a}) -> a :e closure N c).
Admitted.

// HOL Light: Multivariate/paths.ml:11293 / CONNECTED_INSERT_COMPACT   (hash md5:c9933561cc718a3f7aaa443d1dfdc5c8)
// not bridged: 
Theorem CONNECTED_INSERT_COMPACT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, compact N (SetAdjoin s a) -> (connected N (SetAdjoin s a) <-> forall c c= R :^: idx N, c :e components N s -> a :e closure N c).
Admitted.

// HOL Light: Multivariate/paths.ml:11318 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN   (hash md5:30ebc5dda2e976f8350fe3fc602ae416)
// not bridged: 
Theorem BOUNDARY_BUMPING_THEOREM_EUCLIDEAN : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, compact N s /\ (connected N s /\ (t c= s /\ t <> s /\ c :e components N t)) -> ~ closure N c :/\: (closure N t :/\: closure N (s :\: t)) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11329 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_CLOSED   (hash md5:c7af535d514da8fe1709d6a02f938468)
// not bridged: 
Theorem BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_CLOSED : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, compact N s /\ (connected N s /\ (closed N t /\ (t c= s /\ t <> s /\ c :e components N t))) -> ~ c :/\: (closure N t :/\: closure N (s :\: t)) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11340 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_ALT   (hash md5:dc875d65a91d617156bab3a46a139dbb)
// not bridged: 
Theorem BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_ALT : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, compact N s /\ (connected N s /\ (t :e subtopology (R :^: idx N) (euclidean N) s /\ (t c= s /\ t <> s /\ c :e components N (closure N t)))) -> ~ c :/\: (s :\: t) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11371 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_OPEN   (hash md5:2595b7f98ff0f38682c4a8654be40a69)
// not bridged: 
Theorem BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_OPEN : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, (compact N s \/ locally N {x :e Power (R :^: idx N) | connected N x} s) /\ (connected N s /\ (t :e subtopology (R :^: idx N) (euclidean N) s /\ (t c= s /\ t <> s /\ c :e components N t))) -> ~ closure N c :/\: (s :\: t) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11388 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_OPEN_ALT   (hash md5:d665104389802209ab9b036a19d4507b)
// not bridged: 
Theorem BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_OPEN_ALT : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, (compact N s \/ locally N {x :e Power (R :^: idx N) | connected N x} s) /\ (connected N s /\ (t :e subtopology (R :^: idx N) (euclidean N) s /\ (t c= s /\ t <> s /\ c :e components N t))) -> ~ closure N c :/\: (closure N t :\: t) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11401 / CONTINUUM_UNION_COMPONENTS_INTERMEDIATE_COMPLEMENT   (hash md5:cd5639d958c41f23dabb154e581ad860)
// not bridged: 
Theorem CONTINUUM_UNION_COMPONENTS_INTERMEDIATE_COMPLEMENT : forall N:set, N <> Empty -> forall s t u c c= R :^: idx N, compact N s /\ (connected N s /\ (compact N t /\ (s c= t /\ (compact N u /\ (connected N u /\ (t c= u /\ (c :e components N (u :\: t) /\ closure N c :\: c c= s))))))) -> compact N (c :\/: s) /\ connected N (c :\/: s).
Admitted.

// HOL Light: Multivariate/paths.ml:11432 / CONTINUUM_UNION_COMPONENTS_COMPLEMENT   (hash md5:f8afdd268498d48d4de2bde96cf3cfad)
// not bridged: 
Theorem CONTINUUM_UNION_COMPONENTS_COMPLEMENT : forall N:set, N <> Empty -> forall s u c c= R :^: idx N, compact N s /\ (connected N s /\ (compact N u /\ (connected N u /\ (s c= u /\ (c :e components N (u :\: s) /\ closure N c :\: c c= s))))) -> compact N (c :\/: s) /\ connected N (c :\/: s).
Admitted.

// HOL Light: Multivariate/paths.ml:11446 / WELLCHAINED_ELEMENTS_EUCLIDEAN   (hash md5:f6520bdf0f781b1ce8e8066b147b392c)
// not bridged: 
Theorem WELLCHAINED_ELEMENTS_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, forall e0 :e R, (exists p:set -> set, (forall x :e omega, p x :e R :^: idx N) /\ exists n :e omega, p 0 = a /\ (p n = b /\ ((forall i :e omega, i <= n -> p i :e s) /\ forall i :e omega, i < n -> distance N (p i,p (ordsucc i)) < e0))) <-> a :e s /\ (b :e s /\ forall c c= R :^: idx N, c c= s /\ (a :e c /\ (forall x y :e R :^: idx N, x :e c /\ (y :e s /\ distance N (x,y) < e0) -> y :e c)) -> b :e c).
Admitted.

// HOL Light: Multivariate/paths.ml:11457 / WELLCHAINED_SETS_EUCLIDEAN   (hash md5:0c0f74baacf2d95d0c0e76e1aeed2a28)
// not bridged: 
Theorem WELLCHAINED_SETS_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, (forall a b :e R :^: idx N, a :e s /\ b :e s -> exists p:set -> set, (forall x :e omega, p x :e R :^: idx N) /\ exists n :e omega, p 0 = a /\ (p n = b /\ ((forall i :e omega, i <= n -> p i :e s) /\ forall i :e omega, i < n -> distance N (p i,p (ordsucc i)) < e0))) <-> forall c c= R :^: idx N, c c= s /\ (~ c = Empty /\ (forall x y :e R :^: idx N, x :e c /\ (y :e s /\ distance N (x,y) < e0) -> y :e c)) -> c = s.
Admitted.

// HOL Light: Multivariate/paths.ml:11468 / CONNECTED_IMP_WELLCHAINED   (hash md5:8c00b8a56d192805800ed4f385afde22)
// not bridged: 
Theorem CONNECTED_IMP_WELLCHAINED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, forall a b :e R :^: idx N, connected N s /\ (0 < e0 /\ (a :e s /\ b :e s)) -> exists p:set -> set, (forall x :e omega, p x :e R :^: idx N) /\ exists n :e omega, p 0 = a /\ (p n = b /\ ((forall i :e omega, i <= n -> p i :e s) /\ forall i :e omega, i < n -> distance N (p i,p (ordsucc i)) < e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:11481 / CONNECTED_COMPONENT_IMP_WELLCHAINED   (hash md5:c1aa786352fbebebcdd5ae90b426c787)
// not bridged: 
Theorem CONNECTED_COMPONENT_IMP_WELLCHAINED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, forall e0 :e R, 0 < e0 /\ connected_component N s a b -> exists p:set -> set, (forall x :e omega, p x :e R :^: idx N) /\ exists n :e omega, p 0 = a /\ (p n = b /\ ((forall i :e omega, i <= n -> p i :e s) /\ forall i :e omega, i < n -> distance N (p i,p (ordsucc i)) < e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:11494 / CONNECTED_EQ_WELLCHAINED   (hash md5:9be87bfc16fc504a2866160b5f66ebc2)
// not bridged: 
Theorem CONNECTED_EQ_WELLCHAINED : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s -> (connected N s <-> forall e0 :e R, 0 < e0 -> forall a b :e R :^: idx N, a :e s /\ b :e s -> exists p:set -> set, (forall x :e omega, p x :e R :^: idx N) /\ exists n :e omega, p 0 = a /\ (p n = b /\ ((forall i :e omega, i <= n -> p i :e s) /\ forall i :e omega, i < n -> distance N (p i,p (ordsucc i)) < e0))).
Admitted.

// HOL Light: Multivariate/paths.ml:11509 / CONNECTED_COMPONENT_EQ_WELLCHAINED   (hash md5:6ef2dab9c2b69f0f0dc3f07c8fe3879a)
// not bridged: 
Theorem CONNECTED_COMPONENT_EQ_WELLCHAINED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, compact N s -> (connected_component N s a b <-> a :e s /\ (b :e s /\ forall e0 :e R, 0 < e0 -> exists p:set -> set, (forall x :e omega, p x :e R :^: idx N) /\ exists n :e omega, p 0 = a /\ (p n = b /\ ((forall i :e omega, i <= n -> p i :e s) /\ forall i :e omega, i < n -> distance N (p i,p (ordsucc i)) < e0)))).
Admitted.

// HOL Light: Multivariate/paths.ml:11525 / WELLCHAINED_INTERS_EUCLIDEAN   (hash md5:b9019fc2d1b100030fed8d4146fcb9e1)
// not bridged: 
Theorem WELLCHAINED_INTERS_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, forall d e0 :e R, d < e0 /\ ((forall m :e omega, compact N (s m)) /\ ((forall m :e omega, s (ordsucc m) c= s m) /\ (forall m :e omega, forall a b :e R :^: idx N, a :e s m /\ b :e s m -> exists p:set -> set, (forall x :e omega, p x :e R :^: idx N) /\ exists n :e omega, p 0 = a /\ (p n = b /\ ((forall i :e omega, i <= n -> p i :e s m) /\ forall i :e omega, i < n -> distance N (p i,p (ordsucc i)) < d))))) -> forall a b :e R :^: idx N, a :e {x :e R :^: idx N | forall Y :e {s m | m :e omega, m :e omega}, x :e Y} /\ b :e {x :e R :^: idx N | forall Y :e {s m | m :e omega, m :e omega}, x :e Y} -> exists p:set -> set, (forall x :e omega, p x :e R :^: idx N) /\ exists n :e omega, p 0 = a /\ (p n = b /\ ((forall i :e omega, i <= n -> p i :e {x :e R :^: idx N | forall Y :e {s m | m :e omega, m :e omega}, x :e Y}) /\ forall i :e omega, i < n -> distance N (p i,p (ordsucc i)) < e0)).
Admitted.

// HOL Light: Multivariate/paths.ml:11547 / COMPACT_PARTITION_CONTAINING_CLOSED   (hash md5:6d677fff96e4298075c887d3cf92ff4f)
// not bridged: 
Theorem COMPACT_PARTITION_CONTAINING_CLOSED : forall N:set, N <> Empty -> forall s t t' c= R :^: idx N, compact N s /\ (closed N t /\ (closed N t' /\ (t c= s /\ (t' c= s /\ (forall c c= R :^: idx N, c :e components N s -> c :/\: t = Empty \/ c :/\: t' = Empty))))) -> exists k k' c= R :^: idx N, compact N k /\ (compact N k' /\ (t c= k /\ (t' c= k' /\ (k :/\: k' = Empty /\ k :\/: k' = s)))).
Admitted.

// HOL Light: Multivariate/paths.ml:11673 / COMPACT_PARTITION_CONTAINING_POINTS   (hash md5:5f5508853dbad6e3488d45d0c7c6c3e5)
// not bridged: 
Theorem COMPACT_PARTITION_CONTAINING_POINTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, compact N s /\ (a :e s /\ (b :e s /\ ~ connected_component N s a b)) -> exists k k' c= R :^: idx N, compact N k /\ (compact N k' /\ (a :e k /\ (b :e k' /\ (k :/\: k' = Empty /\ k :\/: k' = s)))).
Admitted.

// HOL Light: Multivariate/paths.ml:11689 / CONNECTED_COMPONENT_LIMIT   (hash md5:faed00947485a64bbb3e0959bb082558)
// not bridged: 
Theorem CONNECTED_COMPONENT_LIMIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x:set -> set, (forall x0 :e omega, x x0 :e R :^: idx N) -> forall y:set -> set, (forall x0 :e omega, y x0 :e R :^: idx N) -> forall a b :e R :^: idx N, compact N s /\ (tendsto N omega x a sequentially /\ (tendsto N omega y b sequentially /\ eventually omega {n :e omega | connected_component N s (x n) (y n)} sequentially)) -> connected_component N s a b.
Admitted.

// HOL Light: Multivariate/paths.ml:11733 / CLOSED_UNIONS_COMPONENTS_MEETING_CLOSED   (hash md5:ad804d18b762e8b4e55ef4fc5edbff8a)
// not bridged: 
Theorem CLOSED_UNIONS_COMPONENTS_MEETING_CLOSED : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact N s /\ closed N t -> closed N (Union {c :e Power (R :^: idx N) | c :e components N s /\ ~ c :/\: t = Empty}).
Admitted.

// HOL Light: Multivariate/paths.ml:11779 / ARBITRARILY_SMALL_CONTINUUM   (hash md5:37a6433ba0d90af000973bdc84de6065)
// not bridged: 
Theorem ARBITRARILY_SMALL_CONTINUUM : forall N:set, N <> Empty -> forall s u c= R :^: idx N, forall a :e R :^: idx N, connected N s /\ (locally N {x :e Power (R :^: idx N) | compact N x} s /\ (open N u /\ ({a} c= s /\ {a} <> s /\ a :e u))) -> exists c c= R :^: idx N, {a} c= c /\ {a} <> c /\ (c c= s /\ (c c= u /\ (compact N c /\ connected N c))).
Admitted.

// HOL Light: Multivariate/paths.ml:11830 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_INTER   (hash md5:c2650b5c1c8072787e6630adaec2a0fb)
// not bridged: 
Theorem BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_INTER : forall N:set, N <> Empty -> forall s u c c= R :^: idx N, connected N s /\ (locally N {x :e Power (R :^: idx N) | compact N x} s /\ (open N u /\ (~ s c= u /\ (compact N (s :/\: closure N u) /\ c :e components N (s :/\: closure N u))))) -> ~ c :/\: frontier N u = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:11884 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_INTER_ALT   (hash md5:7dfa2d76d6cf0c3e6afe4e5dae4c612c)
// not bridged: 
Theorem BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_INTER_ALT : forall N:set, N <> Empty -> forall s u c c= R :^: idx N, connected N s /\ (locally N {x :e Power (R :^: idx N) | compact N x} s /\ (open N u /\ (~ s :/\: u = Empty /\ (~ s c= u /\ (compact N (s :/\: closure N u) /\ c :e components N (s :/\: u)))))) -> exists x :e R :^: idx N, x :e frontier N u /\ limit_point_of N x c.
Admitted.

// HOL Light: Multivariate/paths.ml:11958 / LOCALLY_COMPACT_CONNECTED_IMP_PATH_CONNECTED   (hash md5:e6b85b8c8be1a2b809e8664bd6f7d893)
// not bridged: 
Theorem LOCALLY_COMPACT_CONNECTED_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s /\ (locally N {x :e Power (R :^: idx N) | connected N x} s /\ connected N s) -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:11973 / LOCALLY_COMPACT_PATH_CONNECTED_EQ_CONNECTED   (hash md5:7f1710d1270c4cfbb2ad2ae04f24a663)
// not bridged: 
Theorem LOCALLY_COMPACT_PATH_CONNECTED_EQ_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> (path_connected N s <-> connected N s).
Admitted.

// HOL Light: Multivariate/paths.ml:11980 / LOCALLY_COMPACT_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED   (hash md5:262ff4fea0e5da7562ddc0b3287c80b5)
// not bridged: 
Theorem LOCALLY_COMPACT_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s /\ locally N {x :e Power (R :^: idx N) | connected N x} s -> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:11998 / LOCALLY_COMPACT_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED   (hash md5:b92be18c58d4194aa3141dadddc0591b)
// not bridged: 
Theorem LOCALLY_COMPACT_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | compact N x} s -> (locally N {x :e Power (R :^: idx N) | path_connected N x} s <-> locally N {x :e Power (R :^: idx N) | connected N x} s).
Admitted.

// HOL Light: Multivariate/paths.ml:12004 / LOCALLY_PATH_CONNECTED_CLOSURE_FROM_FRONTIER   (hash md5:36863d475d071694ad59f07d9337f80d)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_CLOSURE_FROM_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | connected N x} (frontier N s) -> locally N {x :e Power (R :^: idx N) | path_connected N x} (closure N s).
Admitted.

// HOL Light: Multivariate/paths.ml:12016 / CLOSED_IRREDUCIBLE_SEPARATOR   (hash md5:53af3ba39ec967d520392fef974b77f6)
// not bridged: 
Theorem CLOSED_IRREDUCIBLE_SEPARATOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, closed N s /\ ~ connected_component N ((R :^: idx N) :\: s) a b -> exists t c= R :^: idx N, t c= s /\ (closed N t /\ (~ t = Empty /\ (~ connected_component N ((R :^: idx N) :\: t) a b /\ forall u c= R :^: idx N, u c= t /\ u <> t -> connected_component N ((R :^: idx N) :\: u) a b))).
Admitted.

// HOL Light: Multivariate/paths.ml:12123 / NORM_SEGMENT_LOWERBOUND   (hash md5:c84c946190e9688306428a9d10161c35)
// not bridged: 
Theorem NORM_SEGMENT_LOWERBOUND : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, forall r d :e R, 0 < r /\ (vector_norm N a = r /\ (vector_norm N b = r /\ (x :e closed_segment N (seq_cons (a,b) seq_nil) /\ dot N a b = d * r ^ 2))) -> (if 0 <= (1 + - abs_SNo d) :/: 2 then sqrt_SNo_nonneg ((1 + - abs_SNo d) :/: 2) else - sqrt_SNo_nonneg (- (1 + - abs_SNo d) :/: 2)) * r <= vector_norm N x.
Admitted.

// HOL Light: Multivariate/paths.ml:12176 / NORM_SEGMENT_ORTHOGONAL_LOWERBOUND   (hash md5:66ecdd7a6ac84f035402bb8ad2261dbd)
// not bridged: 
Theorem NORM_SEGMENT_ORTHOGONAL_LOWERBOUND : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, forall r :e R, r <= vector_norm N a /\ (r <= vector_norm N b /\ (orthogonal N a b /\ x :e closed_segment N (seq_cons (a,b) seq_nil))) -> r :/: 2 <= vector_norm N x.
Admitted.

// HOL Light: Multivariate/paths.ml:12209 / DENSE_ACCESSIBLE_FRONTIER_POINTS   (hash md5:7090eb30384a522f2f73ae85aaf48041)
// not bridged: 
Theorem DENSE_ACCESSIBLE_FRONTIER_POINTS : forall N:set, N <> Empty -> forall s v c= R :^: idx N, open N s /\ (v :e subtopology (R :^: idx N) (euclidean N) (frontier N s) /\ ~ v = Empty) -> exists g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) /\ (arc N g /\ ({g x | x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) :\: {vec 1 1}} c= s /\ (pathstart N g :e s /\ pathfinish N g :e v))).
Admitted.

// HOL Light: Multivariate/paths.ml:12322 / DENSE_ACCESSIBLE_FRONTIER_POINTS_CONNECTED   (hash md5:8261319bccca7ae82f770a75a9b0d5f1)
// not bridged: 
Theorem DENSE_ACCESSIBLE_FRONTIER_POINTS_CONNECTED : forall N:set, N <> Empty -> forall s v c= R :^: idx N, forall x :e R :^: idx N, open N s /\ (connected N s /\ (x :e s /\ (v :e subtopology (R :^: idx N) (euclidean N) (frontier N s) /\ ~ v = Empty))) -> exists g:set -> set, (forall x0 :e R :^: idx 1, g x0 :e R :^: idx N) /\ (arc N g /\ ({g x | x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) :\: {vec 1 1}} c= s /\ (pathstart N g = x /\ pathfinish N g :e v))).
Admitted.

// HOL Light: Multivariate/paths.ml:12362 / DENSE_ACCESSIBLE_FRONTIER_POINT_PAIRS   (hash md5:0ead3dbbc7f629dff938c0aad89c41af)
// not bridged: 
Theorem DENSE_ACCESSIBLE_FRONTIER_POINT_PAIRS : forall N:set, N <> Empty -> forall s u v c= R :^: idx N, open N s /\ (connected N s /\ (u :e subtopology (R :^: idx N) (euclidean N) (frontier N s) /\ (v :e subtopology (R :^: idx N) (euclidean N) (frontier N s) /\ (~ u = Empty /\ (~ v = Empty /\ ~ u = v))))) -> exists g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) /\ (arc N g /\ (pathstart N g :e u /\ (pathfinish N g :e v /\ {g x | x :e open_interval 1 (vec 1 0,vec 1 1)} c= s))).
Admitted.

// HOL Light: Multivariate/paths.ml:12433 / PATH_CONNECTED_CONVEX_DIFF_CARD_LT   (hash md5:7ed3a102927614d0cd510ac66aaad4d8)
// not bridged: 
Theorem PATH_CONNECTED_CONVEX_DIFF_CARD_LT : forall N:set, N <> Empty -> forall u s c= R :^: idx N, convex N u /\ (~ collinear N u /\ (atleastp s R /\ ~ equip s R)) -> path_connected N (u :\: s).
Admitted.

// HOL Light: Multivariate/paths.ml:12560 / CONNECTED_CONVEX_DIFF_CARD_LT   (hash md5:3ea9d31b6a64828b3dbea119b33ce38a)
// not bridged: 
Theorem CONNECTED_CONVEX_DIFF_CARD_LT : forall A:set, A <> Empty -> forall u s c= R :^: idx A, convex A u /\ (~ collinear A u /\ (atleastp s R /\ ~ equip s R)) -> connected A (u :\: s).
Admitted.

// HOL Light: Multivariate/paths.ml:12564 / PATH_CONNECTED_CONVEX_DIFF_COUNTABLE   (hash md5:f625bdcbfbb5e5c8013f8e690d91245b)
// not bridged: 
Theorem PATH_CONNECTED_CONVEX_DIFF_COUNTABLE : forall A:set, A <> Empty -> forall u s c= R :^: idx A, convex A u /\ (~ collinear A u /\ countable s) -> path_connected A (u :\: s).
Admitted.

// HOL Light: Multivariate/paths.ml:12568 / CONNECTED_CONVEX_DIFF_COUNTABLE   (hash md5:281fb2257965375b093b97e66b5f87b6)
// not bridged: 
Theorem CONNECTED_CONVEX_DIFF_COUNTABLE : forall A:set, A <> Empty -> forall u s c= R :^: idx A, convex A u /\ (~ collinear A u /\ countable s) -> connected A (u :\: s).
Admitted.

// HOL Light: Multivariate/paths.ml:12572 / PATH_CONNECTED_PUNCTURED_CONVEX   (hash md5:624589e5f3cf8bbde6e20de3293585c7)
// not bridged: 
Theorem PATH_CONNECTED_PUNCTURED_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, convex N s /\ ~ aff_dim N s = 1 -> path_connected N (s :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12590 / CONNECTED_PUNCTURED_CONVEX   (hash md5:13b994cecfeccedf4403c8920444f07b)
// not bridged: 
Theorem CONNECTED_PUNCTURED_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, convex N s /\ ~ aff_dim N s = 1 -> connected N (s :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12594 / PATH_CONNECTED_COMPLEMENT_CARD_LT   (hash md5:90cfd2cdd667a7fc3bde23455ff27595)
// not bridged: 
Theorem PATH_CONNECTED_COMPLEMENT_CARD_LT : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ (atleastp s R /\ ~ equip s R) -> path_connected N ((R :^: idx N) :\: s).
Admitted.

// HOL Light: Multivariate/paths.ml:12601 / PATH_CONNECTED_CONNECTED_DIFF   (hash md5:1c65da8eb27ba76158bc0fa251783e4d)
// not bridged: 
Theorem PATH_CONNECTED_CONNECTED_DIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, connected N s /\ (s c= closure N (s :\: t) /\ (forall x :e R :^: idx N, x :e s -> exists u c= R :^: idx N, x :e u /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ path_connected N (u :\: t)))) -> path_connected N (s :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:12633 / PATH_CONNECTED_OPEN_IN_DIFF_CARD_LT   (hash md5:451c5a6d8f0134040a109ae6d12ee177)
// not bridged: 
Theorem PATH_CONNECTED_OPEN_IN_DIFF_CARD_LT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, connected N s /\ (s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ (~ collinear N s /\ (atleastp t R /\ ~ equip t R))) -> path_connected N (s :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:12694 / CONNECTED_OPEN_IN_DIFF_CARD_LT   (hash md5:0ce6ad7b101eaa6badc5a1785869fb58)
// not bridged: 
Theorem CONNECTED_OPEN_IN_DIFF_CARD_LT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, connected N s /\ (s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ (~ collinear N s /\ (atleastp t R /\ ~ equip t R))) -> connected N (s :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:12703 / PATH_CONNECTED_OPEN_DIFF_CARD_LT   (hash md5:dd693a1d56e2752ecffc5d225d948123)
// not bridged: 
Theorem PATH_CONNECTED_OPEN_DIFF_CARD_LT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, 2 <= dimindex N /\ (open N s /\ (connected N s /\ (atleastp t R /\ ~ equip t R))) -> path_connected N (s :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:12715 / CONNECTED_OPEN_DIFF_CARD_LT   (hash md5:4cba2ada04a4eefb36879183f17144a0)
// not bridged: 
Theorem CONNECTED_OPEN_DIFF_CARD_LT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, 2 <= dimindex N /\ (open N s /\ (connected N s /\ (atleastp t R /\ ~ equip t R))) -> connected N (s :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:12721 / PATH_CONNECTED_OPEN_DIFF_COUNTABLE   (hash md5:8a443da84491a1d60871ae9cd78eb450)
// not bridged: 
Theorem PATH_CONNECTED_OPEN_DIFF_COUNTABLE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, 2 <= dimindex N /\ (open N s /\ (connected N s /\ countable t)) -> path_connected N (s :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:12729 / CONNECTED_OPEN_DIFF_COUNTABLE   (hash md5:6591e4a69cf57c318c67c260650c2165)
// not bridged: 
Theorem CONNECTED_OPEN_DIFF_COUNTABLE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, 2 <= dimindex N /\ (open N s /\ (connected N s /\ countable t)) -> connected N (s :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:12735 / PATH_CONNECTED_OPEN_DELETE   (hash md5:c9251cfd62868304aba14e8713640827)
// not bridged: 
Theorem PATH_CONNECTED_OPEN_DELETE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, 2 <= dimindex N /\ (open N s /\ connected N s) -> path_connected N (s :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12742 / CONNECTED_OPEN_DELETE   (hash md5:30d5835bc33d8c3e1f987708301df7f6)
// not bridged: 
Theorem CONNECTED_OPEN_DELETE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, 2 <= dimindex N /\ (open N s /\ connected N s) -> connected N (s :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12747 / PATH_CONNECTED_PUNCTURED_UNIVERSE   (hash md5:6ad1685c7778c8829a6705ad9d3f5413)
// not bridged: 
Theorem PATH_CONNECTED_PUNCTURED_UNIVERSE : forall N:set, N <> Empty -> forall a :e R :^: idx N, 2 <= dimindex N -> path_connected N ((R :^: idx N) :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12752 / CONNECTED_PUNCTURED_UNIVERSE   (hash md5:b0ba9bcac73c4dfccd590365e68a0a76)
// not bridged: 
Theorem CONNECTED_PUNCTURED_UNIVERSE : forall N:set, N <> Empty -> forall a :e R :^: idx N, 2 <= dimindex N -> connected N ((R :^: idx N) :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12756 / PATH_CONNECTED_PUNCTURED_BALL   (hash md5:00b94eeaf88fb32e59a1c1a0eaaf5388)
// not bridged: 
Theorem PATH_CONNECTED_PUNCTURED_BALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N -> path_connected N (ball N (a,r) :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12760 / CONNECTED_PUNCTURED_BALL   (hash md5:23193801715feefb6227d5ac16d86e2d)
// not bridged: 
Theorem CONNECTED_PUNCTURED_BALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N -> connected N (ball N (a,r) :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12764 / PATH_CONNECTED_PUNCTURED_CBALL   (hash md5:b896be2fe645d2ac8049a6b2a9329717)
// not bridged: 
Theorem PATH_CONNECTED_PUNCTURED_CBALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N -> path_connected N (cball N (a,r) :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12776 / CONNECTED_PUNCTURED_CBALL   (hash md5:3fcf6ac4c2708e36cb9302e9461eea4a)
// not bridged: 
Theorem CONNECTED_PUNCTURED_CBALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N -> connected N (cball N (a,r) :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:12780 / PATH_CONNECTED_SPHERE   (hash md5:d24daf986a878a8ad72b6e34229ff9f2)
// not bridged: 
Theorem PATH_CONNECTED_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N -> path_connected N (sphere N (a,r)).
Admitted.

// HOL Light: Multivariate/paths.ml:12815 / CONNECTED_SPHERE   (hash md5:6ecbaabd7db14d92ca8ef2f40300150e)
// not bridged: 
Theorem CONNECTED_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N -> connected N (sphere N (a,r)).
Admitted.

// HOL Light: Multivariate/paths.ml:12819 / CONNECTED_SPHERE_EQ   (hash md5:445585d2b42f5e6e5fc96355c624ce95)
// not bridged: 
Theorem CONNECTED_SPHERE_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, connected N (sphere N (a,r)) <-> 2 <= dimindex N \/ r <= 0.
Admitted.

// HOL Light: Multivariate/paths.ml:12850 / PATH_CONNECTED_SPHERE_EQ   (hash md5:655088a4031c90884a5e72b9f459db70)
// not bridged: 
Theorem PATH_CONNECTED_SPHERE_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, path_connected N (sphere N (a,r)) <-> 2 <= dimindex N \/ r <= 0.
Admitted.

// HOL Light: Multivariate/paths.ml:12861 / FINITE_SPHERE   (hash md5:d4ae4e2471c12b5d401bc1930cdb020f)
// not bridged: 
Theorem FINITE_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, finite (sphere N (a,r)) <-> r <= 0 \/ dimindex N = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12883 / LIMIT_POINT_OF_SPHERE   (hash md5:15e201752d54be4c38e39a7e21adac31)
// not bridged: 
Theorem LIMIT_POINT_OF_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall x :e R :^: idx N, limit_point_of N x (sphere N (a,r)) <-> 0 < r /\ (2 <= dimindex N /\ x :e sphere N (a,r)).
Admitted.

// HOL Light: Multivariate/paths.ml:12899 / CARD_EQ_SPHERE   (hash md5:3cee687ce79c0b3e7b481a180eef8aa0)
// not bridged: 
Theorem CARD_EQ_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N /\ 0 < r -> equip (sphere N (a,r)) R.
Admitted.

// HOL Light: Multivariate/paths.ml:12907 / HAS_SIZE_SPHERE_2   (hash md5:f52e836a85d164f8b94918bf24306689)
// not bridged: 
Theorem HAS_SIZE_SPHERE_2 : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, equip (sphere N (a,r)) 2 <-> dimindex N = 1 /\ 0 < r.
Admitted.

// HOL Light: Multivariate/paths.ml:12935 / LOCALLY_PATH_CONNECTED_SPHERE   (hash md5:b2aff339017efdd482a5568800ba70e2)
// not bridged: 
Theorem LOCALLY_PATH_CONNECTED_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, locally N {x :e Power (R :^: idx N) | path_connected N x} (sphere N (a,r)).
Admitted.

// HOL Light: Multivariate/paths.ml:12970 / LOCALLY_CONNECTED_SPHERE   (hash md5:20f24c10ded64417753018be5ac5d62c)
// not bridged: 
Theorem LOCALLY_CONNECTED_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, locally N {x :e Power (R :^: idx N) | connected N x} (sphere N (a,r)).
Admitted.

// HOL Light: Multivariate/paths.ml:12975 / CARD_CIRCLE_INTERSECTION_LE   (hash md5:c554d410af28cf80f6935300d803c2dd)
// not bridged: 
Theorem CARD_CIRCLE_INTERSECTION_LE : forall a b :e R :^: idx_n 2, forall r s :e R, ~ (a = b /\ (r = s /\ (0 < r /\ 0 < s))) -> finite_cardinality (sphere (idx_n 2) (a,r) :/\: sphere (idx_n 2) (b,s)) <= 2.
Admitted.

// HOL Light: Multivariate/paths.ml:12975 / FINITE_CIRCLE_INTERSECTION   (hash md5:99eacc9810fe70b7fe9024b1c38568f8)
// not bridged: 
Theorem FINITE_CIRCLE_INTERSECTION : forall a b :e R :^: idx_n 2, forall r s :e R, finite (sphere (idx_n 2) (a,r) :/\: sphere (idx_n 2) (b,s)) <-> ~ (a = b /\ (r = s /\ (0 < r /\ 0 < s))).
Admitted.

// HOL Light: Multivariate/paths.ml:13020 / INTER_SPHERE_EQ_EMPTY   (hash md5:45d543a91eac4d911e8648e543fb3a36)
// not bridged: 
Theorem INTER_SPHERE_EQ_EMPTY : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall r s :e R, sphere N (a,r) :/\: sphere N (b,s) = Empty <-> (dimindex N = 1 -> r < 0 \/ (s < 0 \/ ~ distance N (a,b) = abs_SNo (r + - s) /\ ~ distance N (a,b) = r + s)) /\ (~ dimindex N = 1 -> r < 0 \/ (s < 0 \/ (distance N (a,b) < abs_SNo (r + - s) \/ r + s < distance N (a,b)))).
Admitted.

// HOL Light: Multivariate/paths.ml:13074 / HAS_SIZE_INTER_SPHERE_1   (hash md5:116943c9bf5486473241ad0466eed4a0)
// not bridged: 
Theorem HAS_SIZE_INTER_SPHERE_1 : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall r s :e R, equip (sphere N (a,r) :/\: sphere N (b,s)) 1 <-> 0 <= r /\ (0 <= s /\ ((a = b -> r = 0 /\ s = 0) /\ (distance N (a,b) = r + s \/ distance N (a,b) = abs_SNo (r + - s)))).
Admitted.

// HOL Light: Multivariate/paths.ml:13161 / PATH_CONNECTED_ANNULUS   (hash md5:a079ec36f036185e0546865d9b8d08c7)
// not bridged: 
Theorem PATH_CONNECTED_ANNULUS : forall N:set, N <> Empty -> (forall a :e R :^: idx N, forall r1 r2 :e R, 2 <= dimindex N -> path_connected N {x :e R :^: idx N | r1 < vector_norm N (vector_sub N x a) /\ vector_norm N (vector_sub N x a) < r2}) /\ ((forall a :e R :^: idx N, forall r1 r2 :e R, 2 <= dimindex N -> path_connected N {x :e R :^: idx N | r1 < vector_norm N (vector_sub N x a) /\ vector_norm N (vector_sub N x a) <= r2}) /\ ((forall a :e R :^: idx N, forall r1 r2 :e R, 2 <= dimindex N -> path_connected N {x :e R :^: idx N | r1 <= vector_norm N (vector_sub N x a) /\ vector_norm N (vector_sub N x a) < r2}) /\ forall a :e R :^: idx N, forall r1 r2 :e R, 2 <= dimindex N -> path_connected N {x :e R :^: idx N | r1 <= vector_norm N (vector_sub N x a) /\ vector_norm N (vector_sub N x a) < r2})).
Admitted.

// HOL Light: Multivariate/paths.ml:13220 / CONNECTED_ANNULUS   (hash md5:98655c3bc28320fe2f3261a137357e14)
// not bridged: 
Theorem CONNECTED_ANNULUS : forall N:set, N <> Empty -> (forall a :e R :^: idx N, forall r1 r2 :e R, 2 <= dimindex N -> connected N {x :e R :^: idx N | r1 < vector_norm N (vector_sub N x a) /\ vector_norm N (vector_sub N x a) < r2}) /\ ((forall a :e R :^: idx N, forall r1 r2 :e R, 2 <= dimindex N -> connected N {x :e R :^: idx N | r1 < vector_norm N (vector_sub N x a) /\ vector_norm N (vector_sub N x a) <= r2}) /\ ((forall a :e R :^: idx N, forall r1 r2 :e R, 2 <= dimindex N -> connected N {x :e R :^: idx N | r1 <= vector_norm N (vector_sub N x a) /\ vector_norm N (vector_sub N x a) < r2}) /\ forall a :e R :^: idx N, forall r1 r2 :e R, 2 <= dimindex N -> connected N {x :e R :^: idx N | r1 <= vector_norm N (vector_sub N x a) /\ vector_norm N (vector_sub N x a) < r2})).
Admitted.

// HOL Light: Multivariate/paths.ml:13236 / PATH_CONNECTED_COMPLEMENT_BOUNDED_CONVEX   (hash md5:a2685fd1a62cb6308f1162588b1037d0)
// not bridged: 
Theorem PATH_CONNECTED_COMPLEMENT_BOUNDED_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ (bounded_hl N s /\ convex N s) -> path_connected N ((R :^: idx N) :\: s).
Admitted.

// HOL Light: Multivariate/paths.ml:13332 / CONNECTED_COMPLEMENT_BOUNDED_CONVEX   (hash md5:957c8ec80d84d2c2dfb1ce328b341d2b)
// not bridged: 
Theorem CONNECTED_COMPLEMENT_BOUNDED_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ (bounded_hl N s /\ convex N s) -> connected N ((R :^: idx N) :\: s).
Admitted.

// HOL Light: Multivariate/paths.ml:13338 / CONNECTED_DIFF_BALL   (hash md5:b833a754a248288011fba8f5d17739df)
// not bridged: 
Theorem CONNECTED_DIFF_BALL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N /\ (connected N s /\ cball N (a,r) c= s) -> connected N (s :\: ball N (a,r)).
Admitted.

// HOL Light: Multivariate/paths.ml:13349 / PATH_CONNECTED_DIFF_BALL   (hash md5:6b83e093bac1ff8356d905b0405db22a)
// not bridged: 
Theorem PATH_CONNECTED_DIFF_BALL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N /\ (path_connected N s /\ cball N (a,r) c= s) -> path_connected N (s :\: ball N (a,r)).
Admitted.

// HOL Light: Multivariate/paths.ml:13403 / CONNECTED_DELETE_INTERIOR_POINT   (hash md5:532076ffaebb3924f09fcef7e8e2bd41)
// not bridged: 
Theorem CONNECTED_DELETE_INTERIOR_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, 2 <= dimindex N /\ (connected N s /\ a :e interior N s) -> connected N (s :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:13424 / CONNECTED_DELETE_INTERIOR_POINT_EQ   (hash md5:80ab709ae346256900e2ea6c8d88b24e)
// not bridged: 
Theorem CONNECTED_DELETE_INTERIOR_POINT_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, 2 <= dimindex N /\ a :e interior N s -> (connected N (s :\: {a}) <-> connected N s).
Admitted.

// HOL Light: Multivariate/paths.ml:13435 / CONNECTED_OPEN_DELETE_EQ   (hash md5:bd2cab9e32292d0de05083d4dffe05db)
// not bridged: 
Theorem CONNECTED_OPEN_DELETE_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, 2 <= dimindex N /\ open N s -> (connected N (s :\: {a}) <-> connected N s).
Admitted.

// HOL Light: Multivariate/paths.ml:13445 / PATH_CONNECTED_DELETE_INTERIOR_POINT   (hash md5:fc917208d4af2a197e3e58d8c7635142)
// not bridged: 
Theorem PATH_CONNECTED_DELETE_INTERIOR_POINT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, 2 <= dimindex N /\ (path_connected N s /\ a :e interior N s) -> path_connected N (s :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:13466 / CONNECTED_OPEN_DIFF_CBALL   (hash md5:4a568a2aa248375a9822c168ee95e5de)
// not bridged: 
Theorem CONNECTED_OPEN_DIFF_CBALL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N /\ (open N s /\ (connected N s /\ cball N (a,r) c= s)) -> connected N (s :\: cball N (a,r)).
Admitted.

// HOL Light: Multivariate/paths.ml:13532 / PATH_CONNECTED_CONVEX_DIFF_LOWDIM   (hash md5:6803d0f3e3a57d07ff79777f4cbd04b5)
// not bridged: 
Theorem PATH_CONNECTED_CONVEX_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ aff_dim N t + 2 <= aff_dim N s -> path_connected N (s :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:13599 / PATH_CONNECTED_OPEN_IN_DIFF_LOWDIM   (hash md5:cc217dea25b9bf0e23fa787a65c4f541)
// not bridged: 
Theorem PATH_CONNECTED_OPEN_IN_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s t c= R :^: idx N, connected N s /\ (s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ aff_dim N t + 2 <= aff_dim N s) -> path_connected N (s :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:13635 / PATH_CONNECTED_OPEN_IN_DIFF_UNIONS_LOWDIM   (hash md5:df57674741dacd32e8c42a728e39ce03)
// not bridged: 
Theorem PATH_CONNECTED_OPEN_IN_DIFF_UNIONS_LOWDIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall f c= Power (R :^: idx N), connected N s /\ (s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ (finite f /\ (forall t c= R :^: idx N, t :e f -> closed N t /\ aff_dim N t + 2 <= aff_dim N s))) -> path_connected N (s :\: Union f).
Admitted.

// HOL Light: Multivariate/paths.ml:13680 / CONNECTED_OPEN_IN_DIFF_UNIONS_LOWDIM   (hash md5:074775aaf5a71ad1d8722305b0a46c96)
// not bridged: 
Theorem CONNECTED_OPEN_IN_DIFF_UNIONS_LOWDIM : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), forall s c= R :^: idx N, connected N s /\ (s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ (finite f /\ (forall t c= R :^: idx N, t :e f -> aff_dim N t + 2 <= aff_dim N s))) -> connected N (s :\: Union f).
Admitted.

// HOL Light: Multivariate/paths.ml:13725 / BOUNDED_FRONTIER_BOUNDED_OR_COBOUNDED   (hash md5:71c64d49e78d7c2fcb308f13816bef59)
// not bridged: 
Theorem BOUNDED_FRONTIER_BOUNDED_OR_COBOUNDED : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ bounded_hl N (frontier N s) -> bounded_hl N s \/ bounded_hl N ((R :^: idx N) :\: s).
Admitted.

// HOL Light: Multivariate/paths.ml:13740 / BOUNDED_COMMON_FRONTIER_DOMAINS   (hash md5:1545b3feb5cd2378101ffc9f5e0cadc7)
// not bridged: 
Theorem BOUNDED_COMMON_FRONTIER_DOMAINS : forall N:set, N <> Empty -> forall s t c c= R :^: idx N, 2 <= dimindex N /\ (bounded_hl N c /\ (open N s /\ (connected N s /\ (open N t /\ (connected N t /\ (~ s = t /\ (frontier N s = c /\ frontier N t = c))))))) -> bounded_hl N s \/ bounded_hl N t.
Admitted.

// HOL Light: Multivariate/paths.ml:13761 / INTERIOR_ARC_IMAGE   (hash md5:948bc11d2333181c1b13d0230f1fa0fe)
// not bridged: 
Theorem INTERIOR_ARC_IMAGE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> 2 <= dimindex N /\ arc N g -> interior N (path_image N g) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:13806 / INTERIOR_SIMPLE_PATH_IMAGE   (hash md5:b3167494c3948ea6a19ec0c5281e697f)
// not bridged: 
Theorem INTERIOR_SIMPLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> 2 <= dimindex N /\ simple_path N g -> interior N (path_image N g) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:13827 / ENDPOINTS_NOT_IN_INTERIOR_SIMPLE_PATH_IMAGE   (hash md5:7d9d1e3728a16bf7db9a57efb9090de5)
// not bridged: 
Theorem ENDPOINTS_NOT_IN_INTERIOR_SIMPLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> simple_path N g -> {pathstart N g,pathfinish N g} :/\: interior N (path_image N g) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:13849 / COBOUNDED_UNBOUNDED_COMPONENT   (hash md5:c2f515bb9fb06df36527f1fcddb2a752)
// not bridged: 
Theorem COBOUNDED_UNBOUNDED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N ((R :^: idx N) :\: s) -> exists x :e R :^: idx N, x :e s /\ ~ bounded_hl N {x0 :e R :^: idx N | connected_component N s x x0}.
Admitted.

// HOL Light: Multivariate/paths.ml:13875 / COBOUNDED_UNIQUE_UNBOUNDED_COMPONENT   (hash md5:a0e9664ab989007d9ba65aefa355d4c7)
// not bridged: 
Theorem COBOUNDED_UNIQUE_UNBOUNDED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, 2 <= dimindex N /\ (bounded_hl N ((R :^: idx N) :\: s) /\ (~ bounded_hl N {x0 :e R :^: idx N | connected_component N s x x0} /\ ~ bounded_hl N {x0 :e R :^: idx N | connected_component N s y x0})) -> forall x0 :e R :^: idx N, connected_component N s x x0 <-> connected_component N s y x0.
Admitted.

// HOL Light: Multivariate/paths.ml:13901 / COBOUNDED_UNBOUNDED_COMPONENTS   (hash md5:0ea210cde0ada647ffedcd948e159eb1)
// not bridged: 
Theorem COBOUNDED_UNBOUNDED_COMPONENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N ((R :^: idx N) :\: s) -> exists c c= R :^: idx N, c :e components N s /\ ~ bounded_hl N c.
Admitted.

// HOL Light: Multivariate/paths.ml:13905 / COBOUNDED_UNIQUE_UNBOUNDED_COMPONENTS   (hash md5:775c1619cb96f5a707199489d569acf5)
// not bridged: 
Theorem COBOUNDED_UNIQUE_UNBOUNDED_COMPONENTS : forall N:set, N <> Empty -> forall s c c' c= R :^: idx N, 2 <= dimindex N /\ (bounded_hl N ((R :^: idx N) :\: s) /\ (c :e components N s /\ (~ bounded_hl N c /\ (c' :e components N s /\ ~ bounded_hl N c')))) -> c' = c.
Admitted.

// HOL Light: Multivariate/paths.ml:13915 / COBOUNDED_HAS_BOUNDED_COMPONENT   (hash md5:a258b9cb9cc72585e50697d1956629d9)
// not bridged: 
Theorem COBOUNDED_HAS_BOUNDED_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ (bounded_hl N ((R :^: idx N) :\: s) /\ ~ connected N s) -> exists c c= R :^: idx N, c :e components N s /\ bounded_hl N c.
Admitted.

// HOL Light: Multivariate/paths.ml:13932 / HOMEOMORPHISM_MOVING_POINT_EXISTS   (hash md5:a9f2dcb826bc5fcf4022d4a6934280ed)
// not bridged: 
Theorem HOMEOMORPHISM_MOVING_POINT_EXISTS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall a b :e R :^: idx N, s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ (s c= t /\ (t c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ (connected N s /\ (a :e s /\ b :e s)))) -> exists f g :e R :^: idx N :^: (R :^: idx N), homeomorphism N N (t,t) (f,g) /\ (f a = b /\ ({x :e R :^: idx N | ~ (f x = x /\ g x = x)} c= s /\ bounded_hl N {x :e R :^: idx N | ~ (f x = x /\ g x = x)})).
Admitted.

// HOL Light: Multivariate/paths.ml:14162 / HOMEOMORPHISM_MOVING_POINTS_EXISTS_GEN   (hash md5:a184dad4e2ac1d5a580ed9355bea9282)
// not bridged: 
Theorem HOMEOMORPHISM_MOVING_POINTS_EXISTS_GEN : forall A N:set, A <> Empty -> N <> Empty -> forall s t c= R :^: idx N, forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx N) -> forall y:set -> set, (forall x0 :e A, y x0 :e R :^: idx N) -> forall k c= A, 2 <= aff_dim N s /\ (s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s) /\ (s c= t /\ (t c= hull (R :^: idx N) {x0 :e Power (R :^: idx N) | affine N x0} s /\ (connected N s /\ (finite k /\ ((forall i :e A, i :e k -> x i :e s /\ y i :e s) /\ (forall x0 y0 :e k, x0 <> y0 -> ~ x x0 = x y0 /\ ~ y x0 = y y0))))))) -> exists f g :e R :^: idx N :^: (R :^: idx N), homeomorphism N N (t,t) (f,g) /\ ((forall i :e A, i :e k -> f (x i) = y i) /\ ({x0 :e R :^: idx N | ~ (f x0 = x0 /\ g x0 = x0)} c= s /\ bounded_hl N {x0 :e R :^: idx N | ~ (f x0 = x0 /\ g x0 = x0)})).
Admitted.

// HOL Light: Multivariate/paths.ml:14240 / HOMEOMORPHISM_MOVING_POINTS_EXISTS   (hash md5:08973e1fc7e96e352b60003aba8158b0)
// not bridged: 
Theorem HOMEOMORPHISM_MOVING_POINTS_EXISTS : forall A N:set, A <> Empty -> N <> Empty -> forall s t c= R :^: idx N, forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx N) -> forall y:set -> set, (forall x0 :e A, y x0 :e R :^: idx N) -> forall k c= A, 2 <= dimindex N /\ (open N s /\ (connected N s /\ (s c= t /\ (finite k /\ ((forall i :e A, i :e k -> x i :e s /\ y i :e s) /\ (forall x0 y0 :e k, x0 <> y0 -> ~ x x0 = x y0 /\ ~ y x0 = y y0)))))) -> exists f g :e R :^: idx N :^: (R :^: idx N), homeomorphism N N (t,t) (f,g) /\ ((forall i :e A, i :e k -> f (x i) = y i) /\ ({x0 :e R :^: idx N | ~ (f x0 = x0 /\ g x0 = x0)} c= s /\ bounded_hl N {x0 :e R :^: idx N | ~ (f x0 = x0 /\ g x0 = x0)})).
Admitted.

// HOL Light: Multivariate/paths.ml:14262 / HOMEOMORPHISM_GROUPING_POINTS_EXISTS   (hash md5:38df4726a65f099ff10a479faa4ca8d4)
// not bridged: 
Theorem HOMEOMORPHISM_GROUPING_POINTS_EXISTS : forall N:set, N <> Empty -> forall u s t k c= R :^: idx N, open N u /\ (open N s /\ (connected N s /\ (~ u = Empty /\ (finite k /\ (k c= s /\ (u c= s /\ s c= t)))))) -> exists f g :e R :^: idx N :^: (R :^: idx N), homeomorphism N N (t,t) (f,g) /\ ({x :e R :^: idx N | ~ (f x = x /\ g x = x)} c= s /\ (bounded_hl N {x :e R :^: idx N | ~ (f x = x /\ g x = x)} /\ forall x :e R :^: idx N, x :e k -> f x :e u)).
Admitted.

// HOL Light: Multivariate/paths.ml:14604 / HOMEOMORPHISM_GROUPING_POINTS_EXISTS_GEN   (hash md5:69b5fc6873044ea326e320e14f559a16)
// not bridged: 
Theorem HOMEOMORPHISM_GROUPING_POINTS_EXISTS_GEN : forall N:set, N <> Empty -> forall u s t k c= R :^: idx N, s :e subtopology (R :^: idx N) (euclidean N) (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s) /\ (s c= t /\ (t c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s /\ (connected N s /\ (finite k /\ (k c= s /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ ~ u = Empty)))))) -> exists f g :e R :^: idx N :^: (R :^: idx N), homeomorphism N N (t,t) (f,g) /\ ((forall x :e R :^: idx N, x :e k -> f x :e u) /\ ({x :e R :^: idx N | ~ (f x = x /\ g x = x)} c= s /\ bounded_hl N {x :e R :^: idx N | ~ (f x = x /\ g x = x)})).
Admitted.

// HOL Light: Multivariate/paths.ml:14732 / HOMEOMORPHISM_MOVING_DENSE_COUNTABLE_SUBSETS_EXISTS   (hash md5:2acae540692e2a5757bc81cf65d06fc6)
// not bridged: 
Theorem HOMEOMORPHISM_MOVING_DENSE_COUNTABLE_SUBSETS_EXISTS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, countable s /\ (closure M s = hull (R :^: idx M) {x :e Power (R :^: idx M) | affine M x} s /\ (countable t /\ (closure N t = hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t /\ aff_dim M s = aff_dim N t))) -> exists f :e R :^: idx N :^: (R :^: idx M), exists g :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (hull (R :^: idx M) {x :e Power (R :^: idx M) | affine M x} s,hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t) (f,g) /\ {f x | x :e s} = t.
Admitted.

// HOL Light: Multivariate/paths.ml:15155 / HAS_SIZE_UNBOUNDED_COMPONENTS_COMPLEMENT_1   (hash md5:2b40fa7b51b6021598ff50c5edde6322)
// not bridged: 
Theorem HAS_SIZE_UNBOUNDED_COMPONENTS_COMPLEMENT_1 : forall s c= R :^: idx 1, bounded_hl 1 s /\ ~ s = Empty -> equip {c :e Power (R :^: idx 1) | c :e components 1 ((R :^: idx 1) :\: s) /\ ~ bounded_hl 1 c} 2.
Admitted.

// HOL Light: Multivariate/paths.ml:15232 / HAS_SIZE_UNBOUNDED_COMPONENTS_COMPLEMENT   (hash md5:4de1999b909602955d664caa081ab7b6)
// not bridged: 
Theorem HAS_SIZE_UNBOUNDED_COMPONENTS_COMPLEMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> equip {c :e Power (R :^: idx N) | c :e components N ((R :^: idx N) :\: s) /\ ~ bounded_hl N c} (if s = Empty \/ 2 <= dimindex N then 1 else 2).
Admitted.

// HOL Light: Multivariate/paths.ml:15267 / inside   (hash md5:024b21e8da1124c6b086cd7ec214ef1a)
// not bridged: 
Theorem inside_thm : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N s = {x :e R :^: idx N | ~ x :e s /\ bounded_hl N {x0 :e R :^: idx N | connected_component N ((R :^: idx N) :\: s) x x0}}.
Admitted.

// HOL Light: Multivariate/paths.ml:15271 / outside   (hash md5:908e448d58e100886a2230a05c76e9da)
// not bridged: 
Theorem outside_thm : forall N:set, N <> Empty -> forall s c= R :^: idx N, outside N s = {x :e R :^: idx N | ~ x :e s /\ ~ bounded_hl N {x0 :e R :^: idx N | connected_component N ((R :^: idx N) :\: s) x x0}}.
Admitted.

// HOL Light: Multivariate/paths.ml:15275 / INSIDE_TRANSLATION   (hash md5:548049981b2cd2d6b0dc2d1d9a6bd035)
// not bridged: 
Theorem INSIDE_TRANSLATION : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall s c= R :^: idx A, inside A {vector_add A a x | x :e s} = {vector_add A a x | x :e inside A s}.
Admitted.

// HOL Light: Multivariate/paths.ml:15279 / OUTSIDE_TRANSLATION   (hash md5:ffedd533ea1e34378ed947b74b95ec24)
// not bridged: 
Theorem OUTSIDE_TRANSLATION : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall s c= R :^: idx A, outside A {vector_add A a x | x :e s} = {vector_add A a x | x :e outside A s}.
Admitted.

// HOL Light: Multivariate/paths.ml:15285 / INSIDE_LINEAR_IMAGE   (hash md5:4a92d7069b523fdf9da0e44de60b567a)
// not bridged: 
Theorem INSIDE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ ((forall x y :e R :^: idx B, f x = f y -> x = y) /\ (forall y :e R :^: idx A, exists x :e R :^: idx B, f x = y)) -> inside A {f x | x :e s} = {f x | x :e inside B s}.
Admitted.

// HOL Light: Multivariate/paths.ml:15290 / OUTSIDE_LINEAR_IMAGE   (hash md5:6148f2ece32a35a79e338b58db7a4319)
// not bridged: 
Theorem OUTSIDE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ ((forall x y :e R :^: idx B, f x = f y -> x = y) /\ (forall y :e R :^: idx A, exists x :e R :^: idx B, f x = y)) -> outside A {f x | x :e s} = {f x | x :e outside B s}.
Admitted.

// HOL Light: Multivariate/paths.ml:15297 / OUTSIDE   (hash md5:e8d99c1e2e283c14e43688a7c0e79651)
// not bridged: 
Theorem OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, outside N s = {x :e R :^: idx N | ~ bounded_hl N {x0 :e R :^: idx N | connected_component N ((R :^: idx N) :\: s) x x0}}.
Admitted.

// HOL Light: Multivariate/paths.ml:15304 / INSIDE_NO_OVERLAP   (hash md5:266b8456dae967f8fc98f0c3faafe63f)
// not bridged: 
Theorem INSIDE_NO_OVERLAP : forall A:set, A <> Empty -> forall s c= R :^: idx A, inside A s :/\: s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:15308 / OUTSIDE_NO_OVERLAP   (hash md5:7c6249f1417b62ca2864ed7850a5b751)
// not bridged: 
Theorem OUTSIDE_NO_OVERLAP : forall A:set, A <> Empty -> forall s c= R :^: idx A, outside A s :/\: s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:15312 / INSIDE_INTER_OUTSIDE   (hash md5:a4790c00c7083672f1b7b7765132cc6d)
// not bridged: 
Theorem INSIDE_INTER_OUTSIDE : forall A:set, A <> Empty -> forall s c= R :^: idx A, inside A s :/\: outside A s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:15316 / INSIDE_UNION_OUTSIDE   (hash md5:d6d98565fa94f011e4742f44ddb2b64a)
// not bridged: 
Theorem INSIDE_UNION_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N s :\/: outside N s = (R :^: idx N) :\: s.
Admitted.

// HOL Light: Multivariate/paths.ml:15320 / INSIDE_EQ_OUTSIDE   (hash md5:ca6e652391141675a3ce40147d6bd584)
// not bridged: 
Theorem INSIDE_EQ_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N s = outside N s <-> s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/paths.ml:15324 / INSIDE_OUTSIDE   (hash md5:24d5897ba2fb3ab066deba5c56a767bf)
// not bridged: 
Theorem INSIDE_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N s = (R :^: idx N) :\: s :\/: outside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15330 / OUTSIDE_INSIDE   (hash md5:44d78c602eb4fea6616d597bce0b95d3)
// not bridged: 
Theorem OUTSIDE_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, outside N s = (R :^: idx N) :\: s :\/: inside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15336 / INSIDE_EMPTY_EQ_NO_BOUNDED_COMPONENT_COMPLEMENT   (hash md5:1c6ddf7454e9a17fcf832efbad3e26e3)
// not bridged: 
Theorem INSIDE_EMPTY_EQ_NO_BOUNDED_COMPONENT_COMPLEMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N s = Empty <-> forall c c= R :^: idx N, c :e components N ((R :^: idx N) :\: s) -> ~ bounded_hl N c.
Admitted.

// HOL Light: Multivariate/paths.ml:15341 / OUTSIDE_EMPTY_EQ_NO_BOUNDED_COMPONENT_COMPLEMENT   (hash md5:c553438abe38380d52f11aaa596df1bd)
// not bridged: 
Theorem OUTSIDE_EMPTY_EQ_NO_BOUNDED_COMPONENT_COMPLEMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, outside N s = Empty <-> forall c c= R :^: idx N, c :e components N ((R :^: idx N) :\: s) -> bounded_hl N c.
Admitted.

// HOL Light: Multivariate/paths.ml:15346 / INSIDE_SELF_OUTSIDE_EVERSION   (hash md5:c56133dbc4a098805bfdccbb0bc97464)
// not bridged: 
Theorem INSIDE_SELF_OUTSIDE_EVERSION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s :\/: inside N s c= inside N t <-> t :\/: outside N t c= outside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15355 / UNION_WITH_INSIDE   (hash md5:aea49fec15b15799df938dc162bb7924)
// not bridged: 
Theorem UNION_WITH_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, s :\/: inside N s = (R :^: idx N) :\: outside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15359 / UNION_WITH_OUTSIDE   (hash md5:888faf553b1cf5cd3797189088cab342)
// not bridged: 
Theorem UNION_WITH_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, s :\/: outside N s = (R :^: idx N) :\: inside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15363 / OUTSIDE_MONO   (hash md5:ea691b9bd76dbeeb66ed6d871a9b6394)
// not bridged: 
Theorem OUTSIDE_MONO : forall A:set, A <> Empty -> forall s t c= R :^: idx A, s c= t -> outside A t c= outside A s.
Admitted.

// HOL Light: Multivariate/paths.ml:15370 / INSIDE_MONO   (hash md5:3c35a404ffadc3e9f7e8297fdaab2815)
// not bridged: 
Theorem INSIDE_MONO : forall A:set, A <> Empty -> forall s t c= R :^: idx A, s c= t -> inside A s :\: t c= inside A t.
Admitted.

// HOL Light: Multivariate/paths.ml:15379 / INSIDE_MONO_ALT   (hash md5:44096cd091d7dce6864eff63d7e941ee)
// not bridged: 
Theorem INSIDE_MONO_ALT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t -> inside N s c= t :\/: inside N t.
Admitted.

// HOL Light: Multivariate/paths.ml:15384 / COBOUNDED_OUTSIDE   (hash md5:09886c434d7047137f550b1c530b25e6)
// not bridged: 
Theorem COBOUNDED_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> bounded_hl N ((R :^: idx N) :\: outside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15426 / UNBOUNDED_OUTSIDE   (hash md5:94b4cee03e3e42482416824025bbcc60)
// not bridged: 
Theorem UNBOUNDED_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> ~ bounded_hl N (outside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15430 / BOUNDED_INSIDE   (hash md5:f651943665d3a144d45dc442dcd53f41)
// not bridged: 
Theorem BOUNDED_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> bounded_hl N (inside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15438 / CONNECTED_OUTSIDE   (hash md5:2e1d64d0f47bf5148f7e1b917ebd182a)
// not bridged: 
Theorem CONNECTED_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ bounded_hl N s -> connected N (outside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15458 / OUTSIDE_CONNECTED_COMPONENT_LT   (hash md5:2122df7f8c476900d2c46bd0492411af)
// not bridged: 
Theorem OUTSIDE_CONNECTED_COMPONENT_LT : forall N:set, N <> Empty -> forall s c= R :^: idx N, outside N s = {x :e R :^: idx N | forall B :e R, exists y :e R :^: idx N, B < vector_norm N y /\ connected_component N ((R :^: idx N) :\: s) x y}.
Admitted.

// HOL Light: Multivariate/paths.ml:15465 / OUTSIDE_CONNECTED_COMPONENT_LE   (hash md5:ebc447079f3a5deab235f097e3a8032e)
// not bridged: 
Theorem OUTSIDE_CONNECTED_COMPONENT_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, outside N s = {x :e R :^: idx N | forall B :e R, exists y :e R :^: idx N, B <= vector_norm N y /\ connected_component N ((R :^: idx N) :\: s) x y}.
Admitted.

// HOL Light: Multivariate/paths.ml:15474 / NOT_OUTSIDE_CONNECTED_COMPONENT_LT   (hash md5:ea73ebf12f801ccd122b296aacb39ab1)
// not bridged: 
Theorem NOT_OUTSIDE_CONNECTED_COMPONENT_LT : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ bounded_hl N s -> (R :^: idx N) :\: outside N s = {x :e R :^: idx N | forall B :e R, exists y :e R :^: idx N, B < vector_norm N y /\ ~ connected_component N ((R :^: idx N) :\: s) x y}.
Admitted.

// HOL Light: Multivariate/paths.ml:15507 / NOT_OUTSIDE_CONNECTED_COMPONENT_LE   (hash md5:aedbfedb8378b3c7e442062d5313db89)
// not bridged: 
Theorem NOT_OUTSIDE_CONNECTED_COMPONENT_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ bounded_hl N s -> (R :^: idx N) :\: outside N s = {x :e R :^: idx N | forall B :e R, exists y :e R :^: idx N, B <= vector_norm N y /\ ~ connected_component N ((R :^: idx N) :\: s) x y}.
Admitted.

// HOL Light: Multivariate/paths.ml:15517 / INSIDE_CONNECTED_COMPONENT_LT   (hash md5:35fddf70e1bf55a39a6a3a96a2953fb0)
// not bridged: 
Theorem INSIDE_CONNECTED_COMPONENT_LT : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ bounded_hl N s -> inside N s = {x :e R :^: idx N | ~ x :e s /\ forall B :e R, exists y :e R :^: idx N, B < vector_norm N y /\ ~ connected_component N ((R :^: idx N) :\: s) x y}.
Admitted.

// HOL Light: Multivariate/paths.ml:15527 / INSIDE_CONNECTED_COMPONENT_LE   (hash md5:5a6c2d43463c547c3a542b404667b1c6)
// not bridged: 
Theorem INSIDE_CONNECTED_COMPONENT_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ bounded_hl N s -> inside N s = {x :e R :^: idx N | ~ x :e s /\ forall B :e R, exists y :e R :^: idx N, B <= vector_norm N y /\ ~ connected_component N ((R :^: idx N) :\: s) x y}.
Admitted.

// HOL Light: Multivariate/paths.ml:15537 / OUTSIDE_UNION_OUTSIDE_UNION   (hash md5:e20767a40126530b40093daadfb335e5)
// not bridged: 
Theorem OUTSIDE_UNION_OUTSIDE_UNION : forall N:set, N <> Empty -> forall c c1 c2 c= R :^: idx N, c :/\: outside N (c1 :\/: c2) = Empty -> outside N (c1 :\/: c2) c= outside N (c1 :\/: c).
Admitted.

// HOL Light: Multivariate/paths.ml:15560 / INSIDE_SUBSET   (hash md5:7e09723f9a54bd95f7049183f6e7cbc1)
// not bridged: 
Theorem INSIDE_SUBSET : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, connected N u /\ (~ bounded_hl N u /\ t :\/: u = (R :^: idx N) :\: s) -> inside N s c= t.
Admitted.

// HOL Light: Multivariate/paths.ml:15572 / INSIDE_UNIQUE   (hash md5:a234da403c5dc2e57d5352ea4ce9588d)
// not bridged: 
Theorem INSIDE_UNIQUE : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, connected N t /\ (bounded_hl N t /\ (connected N u /\ (~ bounded_hl N u /\ (~ connected N ((R :^: idx N) :\: s) /\ t :\/: u = (R :^: idx N) :\: s)))) -> inside N s = t.
Admitted.

// HOL Light: Multivariate/paths.ml:15611 / INSIDE_OUTSIDE_UNIQUE   (hash md5:46f6e075a580933aa3456ae8070ef990)
// not bridged: 
Theorem INSIDE_OUTSIDE_UNIQUE : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, connected N t /\ (bounded_hl N t /\ (connected N u /\ (~ bounded_hl N u /\ (~ connected N ((R :^: idx N) :\: s) /\ t :\/: u = (R :^: idx N) :\: s)))) -> inside N s = t /\ outside N s = u.
Admitted.

// HOL Light: Multivariate/paths.ml:15629 / INTERIOR_INSIDE_FRONTIER   (hash md5:8fbf4a3785e8f168d7c2b618ffa0b4c6)
// not bridged: 
Theorem INTERIOR_INSIDE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> interior N s c= inside N (frontier N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15651 / INSIDE_EMPTY   (hash md5:f00e0218eca72ef287a73ed1e6a85344)
// not bridged: 
Theorem INSIDE_EMPTY : forall A:set, A <> Empty -> inside A Empty = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:15656 / OUTSIDE_EMPTY   (hash md5:aaef9238da16cf3fc975bfa7a45f8b00)
// not bridged: 
Theorem OUTSIDE_EMPTY : forall N:set, N <> Empty -> outside N Empty = R :^: idx N.
Admitted.

// HOL Light: Multivariate/paths.ml:15660 / INSIDE_SAME_COMPONENT   (hash md5:0870dbe959defaaad13b4f9367aceaf5)
// not bridged: 
Theorem INSIDE_SAME_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, connected_component N ((R :^: idx N) :\: s) x y /\ x :e inside N s -> y :e inside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15672 / OUTSIDE_SAME_COMPONENT   (hash md5:71b6ef74e97968b9364369263e50c5d0)
// not bridged: 
Theorem OUTSIDE_SAME_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, connected_component N ((R :^: idx N) :\: s) x y /\ x :e outside N s -> y :e outside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15684 / CONNECTED_COMPONENT_INSIDE   (hash md5:fc0b145b41e239609e0e8ba175e42e37)
// not bridged: 
Theorem CONNECTED_COMPONENT_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x :e R :^: idx N, connected_component N (inside N s) a x <-> (a :e inside N s -> connected_component N ((R :^: idx N) :\: s) a x) /\ (~ a :e inside N s -> x :e Empty).
Admitted.

// HOL Light: Multivariate/paths.ml:15698 / CONNECTED_COMPONENT_OUTSIDE   (hash md5:8bca0d6cc41fd2f3d4c429067b9d0f8c)
// not bridged: 
Theorem CONNECTED_COMPONENT_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x :e R :^: idx N, connected_component N (outside N s) a x <-> (a :e outside N s -> connected_component N ((R :^: idx N) :\: s) a x) /\ (~ a :e outside N s -> x :e Empty).
Admitted.

// HOL Light: Multivariate/paths.ml:15712 / BOUNDED_COMPONENTS_INSIDE   (hash md5:4d4c9926b3a2c0e27f294ab1d82828ca)
// not bridged: 
Theorem BOUNDED_COMPONENTS_INSIDE : forall N:set, N <> Empty -> forall s c c= R :^: idx N, c :e components N (inside N s) -> bounded_hl N c.
Admitted.

// HOL Light: Multivariate/paths.ml:15717 / UNBOUNDED_COMPONENTS_OUTSIDE   (hash md5:cfd6fd54d39fd606328d44b3a140b628)
// not bridged: 
Theorem UNBOUNDED_COMPONENTS_OUTSIDE : forall N:set, N <> Empty -> forall s c c= R :^: idx N, c :e components N (outside N s) -> ~ bounded_hl N c.
Admitted.

// HOL Light: Multivariate/paths.ml:15722 / INSIDE_WITH_INSIDE   (hash md5:3124baf6eaab873b7a3772fa805cd6a4)
// not bridged: 
Theorem INSIDE_WITH_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N (s :\/: inside N s) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:15728 / OUTSIDE_WITH_OUTSIDE   (hash md5:5270a876c582c083ba492d1e1b39397b)
// not bridged: 
Theorem OUTSIDE_WITH_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, outside N (s :\/: outside N s) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:15735 / OUTSIDE_CONVEX   (hash md5:a3f0d01e6067ca8ca195bfb91a4ea49f)
// not bridged: 
Theorem OUTSIDE_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> outside N s = (R :^: idx N) :\: s.
Admitted.

// HOL Light: Multivariate/paths.ml:15783 / INSIDE_CONVEX   (hash md5:28c6e0d5d9ca0feb19f2fc5e39fbe2f1)
// not bridged: 
Theorem INSIDE_CONVEX : forall A:set, A <> Empty -> forall s c= R :^: idx A, convex A s -> inside A s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:15787 / OUTSIDE_SUBSET_CONVEX   (hash md5:a490e687d42f90e162da332c6cdf1907)
// not bridged: 
Theorem OUTSIDE_SUBSET_CONVEX : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N t /\ s c= t -> (R :^: idx N) :\: t c= outside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15794 / INSIDE_SUBSET_CONVEX   (hash md5:8b809b67be4d40de5d4bb86d69b5c480)
// not bridged: 
Theorem INSIDE_SUBSET_CONVEX : forall N:set, N <> Empty -> forall s c c= R :^: idx N, convex N c /\ s c= c -> inside N s c= c.
Admitted.

// HOL Light: Multivariate/paths.ml:15801 / INSIDE_SUBSET_CONVEX_HULL   (hash md5:0d9ac1dc13fb27c0ebb942fc8648f3a0)
// not bridged: 
Theorem INSIDE_SUBSET_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N s c= hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:15805 / UNBOUNDED_DISJOINT_IN_OUTSIDE   (hash md5:55e2807bef8d707301dfc9f31d3c5791)
// not bridged: 
Theorem UNBOUNDED_DISJOINT_IN_OUTSIDE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall x :e R :^: idx N, connected N t /\ (~ bounded_hl N t /\ (x :e t /\ s :/\: t = Empty)) -> x :e outside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15814 / INSIDE_SUBSET_INTERIOR_CONVEX   (hash md5:1d392ceb4a3b4ac7a79b8f7e90e69589)
// not bridged: 
Theorem INSIDE_SUBSET_INTERIOR_CONVEX : forall N:set, N <> Empty -> forall s c c= R :^: idx N, convex N c /\ s c= c -> inside N s c= interior N c.
Admitted.

// HOL Light: Multivariate/paths.ml:15844 / INSIDE_SUBSET_INTERIOR_CONVEX_HULL   (hash md5:e18f2f8cbbaefbafade46f6458ddfec3)
// not bridged: 
Theorem INSIDE_SUBSET_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N s c= interior N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/paths.ml:15849 / OUTSIDE_FRONTIER_MISSES_CLOSURE   (hash md5:3c3a02ed5f7b644b869bb7e1d2d975bb)
// not bridged: 
Theorem OUTSIDE_FRONTIER_MISSES_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> outside N (frontier N s) c= (R :^: idx N) :\: closure N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15858 / OUTSIDE_FRONTIER_EQ_COMPLEMENT_CLOSURE   (hash md5:87a5476b991b4c85c4ad9ac11c02ce5e)
// not bridged: 
Theorem OUTSIDE_FRONTIER_EQ_COMPLEMENT_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ convex N s -> outside N (frontier N s) = (R :^: idx N) :\: closure N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15866 / INSIDE_FRONTIER_EQ_INTERIOR   (hash md5:54e2c5a5a0aa6786a3b56bfb46172316)
// not bridged: 
Theorem INSIDE_FRONTIER_EQ_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ convex N s -> inside N (frontier N s) = interior N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15876 / INSIDE_SPHERE   (hash md5:f9c2ac7403cfd314b5806ad03d49dff6)
// not bridged: 
Theorem INSIDE_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, inside N (sphere N (a,r)) = ball N (a,r).
Admitted.

// HOL Light: Multivariate/paths.ml:15882 / OUTSIDE_SPHERE   (hash md5:0a25d553d1f07122bdb6653907a61871)
// not bridged: 
Theorem OUTSIDE_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, outside N (sphere N (a,r)) = (R :^: idx N) :\: cball N (a,r).
Admitted.

// HOL Light: Multivariate/paths.ml:15886 / OPEN_INSIDE   (hash md5:1aeae289d2aae49fd4cf18dc148dc1a9)
// not bridged: 
Theorem OPEN_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> open N (inside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15907 / OPEN_OUTSIDE   (hash md5:f3bcf4c108905cc9b16606b2d6d482fe)
// not bridged: 
Theorem OPEN_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> open N (outside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15928 / CLOSURE_INSIDE_SUBSET   (hash md5:0ee4fd3fae0aab399620c569c687abd2)
// not bridged: 
Theorem CLOSURE_INSIDE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> closure N (inside N s) c= s :\/: inside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15933 / FRONTIER_INSIDE_SUBSET   (hash md5:501a73bf5c40812ff0b601e64bab2bd4)
// not bridged: 
Theorem FRONTIER_INSIDE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> frontier N (inside N s) c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:15939 / FRONTIER_WITH_INSIDE_SUBSET   (hash md5:dfe01a04a813eb8c7d03a541480e8dee)
// not bridged: 
Theorem FRONTIER_WITH_INSIDE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> frontier N (s :\/: inside N s) c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:15946 / CLOSURE_OUTSIDE_SUBSET   (hash md5:493362c8d309588d375e2b73e69e1a40)
// not bridged: 
Theorem CLOSURE_OUTSIDE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> closure N (outside N s) c= s :\/: outside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15951 / FRONTIER_OUTSIDE_SUBSET   (hash md5:969f555bd838505329ca72b0244c8a9e)
// not bridged: 
Theorem FRONTIER_OUTSIDE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> frontier N (outside N s) c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:15957 / FRONTIER_WITH_OUTSIDE_SUBSET   (hash md5:7749edec74c8cca06a7e54bc3a54066c)
// not bridged: 
Theorem FRONTIER_WITH_OUTSIDE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> frontier N (s :\/: outside N s) c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:15964 / CLOSED_WITH_INSIDE   (hash md5:44d6fa798e1eabf894be45b1e503ad99)
// not bridged: 
Theorem CLOSED_WITH_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> closed N (s :\/: inside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15973 / BOUNDED_WITH_INSIDE   (hash md5:8db320a4b42e489612f70e317bcc8eb5)
// not bridged: 
Theorem BOUNDED_WITH_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> bounded_hl N (s :\/: inside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15977 / COMPACT_WITH_INSIDE   (hash md5:40f084d0c829a306618471e983eb5915)
// not bridged: 
Theorem COMPACT_WITH_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s -> compact N (s :\/: inside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15982 / INSIDE_COMPLEMENT_UNBOUNDED_CONNECTED_EMPTY   (hash md5:f217294fe2ba02e3a0f858d7b34a71a7)
// not bridged: 
Theorem INSIDE_COMPLEMENT_UNBOUNDED_CONNECTED_EMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, connected N ((R :^: idx N) :\: s) /\ ~ bounded_hl N ((R :^: idx N) :\: s) -> inside N s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:15989 / INSIDE_BOUNDED_COMPLEMENT_CONNECTED_EMPTY   (hash md5:01d8e85d0181c7f82640e94780e407b8)
// not bridged: 
Theorem INSIDE_BOUNDED_COMPLEMENT_CONNECTED_EMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, connected N ((R :^: idx N) :\: s) /\ bounded_hl N s -> inside N s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:15995 / INSIDE_INSIDE   (hash md5:ef22a141009623c3d3ae3687ba40b9f8)
// not bridged: 
Theorem INSIDE_INSIDE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= inside N t -> inside N s :\: t c= inside N t.
Admitted.

// HOL Light: Multivariate/paths.ml:16015 / INSIDE_INSIDE_SUBSET   (hash md5:8eea58034c0379e5759b0baeda31eb2c)
// not bridged: 
Theorem INSIDE_INSIDE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N (inside N s) c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:16022 / INSIDE_OUTSIDE_INTERSECT_CONNECTED   (hash md5:937247e623874277c28aa202043a9cbc)
// not bridged: 
Theorem INSIDE_OUTSIDE_INTERSECT_CONNECTED : forall N:set, N <> Empty -> forall s t c= R :^: idx N, connected N t /\ (~ inside N s :/\: t = Empty /\ ~ outside N s :/\: t = Empty) -> ~ s :/\: t = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:16041 / OUTSIDE_BOUNDED_NONEMPTY   (hash md5:86cef4f307ff9b89ffbb3d4008c1bd19)
// not bridged: 
Theorem OUTSIDE_BOUNDED_NONEMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> ~ outside N s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:16053 / OUTSIDE_COMPACT_IN_OPEN   (hash md5:133a06ce718520f6c11182d891625b15)
// not bridged: 
Theorem OUTSIDE_COMPACT_IN_OPEN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, compact N s /\ (open N t /\ (s c= t /\ ~ t = Empty)) -> ~ outside N s :/\: t = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:16117 / INSIDE_INSIDE_COMPACT_CONNECTED   (hash md5:972ce55420a2e627a1f5d3087c711eb3)
// not bridged: 
Theorem INSIDE_INSIDE_COMPACT_CONNECTED : forall N:set, N <> Empty -> forall s t c= R :^: idx N, closed N s /\ (compact N t /\ (s c= inside N t /\ connected N t)) -> inside N s c= inside N t.
Admitted.

// HOL Light: Multivariate/paths.ml:16158 / INSIDE_SELF_OUTSIDE_COMPACT_CONNECTED   (hash md5:21f365ac23a22cc2505de8d66f87dc68)
// not bridged: 
Theorem INSIDE_SELF_OUTSIDE_COMPACT_CONNECTED : forall N:set, N <> Empty -> forall s t c= R :^: idx N, closed N s /\ (compact N t /\ (s c= inside N t /\ connected N t)) -> t :\/: outside N t c= outside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:16166 / INSIDE_OUTSIDE_COMPACT_CONNECTED   (hash md5:a3c11d5b27c185f11c3aceefe811501c)
// not bridged: 
Theorem INSIDE_OUTSIDE_COMPACT_CONNECTED : forall N:set, N <> Empty -> forall s t c= R :^: idx N, closed N s /\ (compact N t /\ (s c= inside N t /\ connected N t)) -> t c= outside N s.
Admitted.

// HOL Light: Multivariate/paths.ml:16174 / CONNECTED_WITH_INSIDE   (hash md5:14ee4378940cdd9531f49cca5467ff31)
// not bridged: 
Theorem CONNECTED_WITH_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s /\ connected N s -> connected N (s :\/: inside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:16219 / CONNECTED_WITH_OUTSIDE   (hash md5:711b5838810dd903be8bbf332a90b3fe)
// not bridged: 
Theorem CONNECTED_WITH_OUTSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s /\ connected N s -> connected N (s :\/: outside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:16264 / INSIDE_INSIDE_EQ_EMPTY   (hash md5:bb8a0138cd89566db8d86001c34f6c9b)
// not bridged: 
Theorem INSIDE_INSIDE_EQ_EMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s /\ connected N s -> inside N (inside N s) = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:16277 / INSIDE_IN_COMPONENTS   (hash md5:b3442f67b368ae75bf0cb0118b468418)
// not bridged: 
Theorem INSIDE_IN_COMPONENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, inside N s :e components N ((R :^: idx N) :\: s) <-> connected N (inside N s) /\ ~ inside N s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:16295 / OUTSIDE_IN_COMPONENTS   (hash md5:47341ad33870e20a010a50da87ef89fc)
// not bridged: 
Theorem OUTSIDE_IN_COMPONENTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, outside N s :e components N ((R :^: idx N) :\: s) <-> connected N (outside N s) /\ ~ outside N s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:16313 / BOUNDED_UNIQUE_OUTSIDE   (hash md5:6e521785b77775b52cc9f635a08fcf71)
// not bridged: 
Theorem BOUNDED_UNIQUE_OUTSIDE : forall N:set, N <> Empty -> forall c s c= R :^: idx N, 2 <= dimindex N /\ bounded_hl N s -> (c :e components N ((R :^: idx N) :\: s) /\ ~ bounded_hl N c <-> c = outside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:16326 / EMPTY_INSIDE_PSUBSET_CONVEX_FRONTIER   (hash md5:b7bb15d8335b4b9c63215ffbc05fcfb8)
// not bridged: 
Theorem EMPTY_INSIDE_PSUBSET_CONVEX_FRONTIER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (t c= frontier N s /\ t <> frontier N s) -> inside N t = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:16391 / HOMOTOPIC_WITH_EUCLIDEAN   (hash md5:b27d1046d5209ce8efa6ed9b50379824)
// not bridged: 
Theorem HOMOTOPIC_WITH_EUCLIDEAN : forall M N:set, M <> Empty -> N <> Empty -> forall P c= R :^: idx N :^: (R :^: idx M), forall X c= R :^: idx M, forall Y c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx M, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx M, q x :e R :^: idx N) -> (homotopic_with (R :^: idx N) (R :^: idx M) P (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Y) p q <-> exists h:set -> set, (forall x :e R :^: idx_n (1 + dimindex M), h x :e R :^: idx N) /\ (continuous_on_hl (idx_n (1 + dimindex M)) N h (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 M x y | y :e X}) /\ ({h x | x :e \/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 M x y | y :e X}} c= Y /\ ((forall x :e R :^: idx M, h (pastecart 1 M (vec 1 0) x) = p x) /\ ((forall x :e R :^: idx M, h (pastecart 1 M (vec 1 1) x) = q x) /\ forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> (fun x :e R :^: idx M => h (pastecart 1 M t x)) :e P))))).
Admitted.

// HOL Light: Multivariate/paths.ml:16452 / HOMOTOPIC_WITH_EUCLIDEAN_ALT   (hash md5:5d16f670e0b6a8c2f6363310a65e6f2a)
// not bridged: 
Theorem HOMOTOPIC_WITH_EUCLIDEAN_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall X c= R :^: idx M, forall P c= R :^: idx N :^: (R :^: idx M), forall Y c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx M, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx M, q x :e R :^: idx N) -> (forall h k :e R :^: idx N :^: (R :^: idx M), (forall x :e R :^: idx M, x :e X -> h x = k x) -> (h :e P <-> k :e P)) -> (homotopic_with (R :^: idx N) (R :^: idx M) P (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Y) p q <-> exists h:set -> set, (forall x :e R :^: idx_n (1 + dimindex M), h x :e R :^: idx N) /\ (continuous_on_hl (idx_n (1 + dimindex M)) N h (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 M x y | y :e X}) /\ ({h x | x :e \/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 M x y | y :e X}} c= Y /\ ((forall x :e R :^: idx M, x :e X -> h (pastecart 1 M (vec 1 0) x) = p x) /\ ((forall x :e R :^: idx M, x :e X -> h (pastecart 1 M (vec 1 1) x) = q x) /\ forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> (fun x :e R :^: idx M => h (pastecart 1 M t x)) :e P))))).
Admitted.

// HOL Light: Multivariate/paths.ml:16489 / HOMOTOPIC_WITH_RESTRICT   (hash md5:c77cd0aea5bbe88746ca8dadcb2edd7c)
// not bridged: 
Theorem HOMOTOPIC_WITH_RESTRICT : forall M N:set, M <> Empty -> N <> Empty -> forall P c= R :^: idx N :^: (R :^: idx M), forall s c= R :^: idx M, forall t c= R :^: idx N, forall s' c= R :^: idx M, forall t' c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> homotopic_with (R :^: idx N) (R :^: idx M) P (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f g /\ (s' c= s /\ (forall h :e R :^: idx N :^: (R :^: idx M), h :e P /\ {h x | x :e s} c= t -> {h x | x :e s'} c= t')) -> homotopic_with (R :^: idx N) (R :^: idx M) P (subtopology (R :^: idx M) (euclidean M) s',subtopology (R :^: idx N) (euclidean N) t') f g.
Admitted.

// HOL Light: Multivariate/paths.ml:16513 / HOMOTOPIC_WITH_IMP_CONTINUOUS   (hash md5:1821e0642bb8c531a3b59d4c02f9fd07)
// not bridged: 
Theorem HOMOTOPIC_WITH_IMP_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall P c= R :^: idx N :^: (R :^: idx M), forall X c= R :^: idx M, forall Y c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> homotopic_with (R :^: idx N) (R :^: idx M) P (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Y) f g -> continuous_on_hl M N f X /\ continuous_on_hl M N g X.
Admitted.

// HOL Light: Multivariate/paths.ml:16536 / HOMOTOPIC_WITH_IMP_SUBSET   (hash md5:b695afbec4a65adc107617533d5d32db)
// not bridged: 
Theorem HOMOTOPIC_WITH_IMP_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall P c= R :^: idx N :^: (R :^: idx M), forall X c= R :^: idx M, forall Y c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> homotopic_with (R :^: idx N) (R :^: idx M) P (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Y) f g -> {f x | x :e X} c= Y /\ {g x | x :e X} c= Y.
Admitted.

// HOL Light: Multivariate/paths.ml:16548 / HOMOTOPIC_WITH_MONO   (hash md5:52c166a703487c2211e6592afed06e84)
// not bridged: 
Theorem HOMOTOPIC_WITH_MONO : forall M N:set, M <> Empty -> N <> Empty -> forall P Q c= R :^: idx N :^: (R :^: idx M), forall X c= R :^: idx M, forall Y c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> homotopic_with (R :^: idx N) (R :^: idx M) P (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Y) f g /\ (forall h :e R :^: idx N :^: (R :^: idx M), continuous_on_hl M N (fun x:set => h x) X /\ ({h x | x :e X} c= Y /\ h :e P) -> h :e Q) -> homotopic_with (R :^: idx N) (R :^: idx M) Q (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Y) f g.
Admitted.

// HOL Light: Multivariate/paths.ml:16568 / HOMOTOPIC_WITH_SUBSET_LEFT   (hash md5:29c07218fb15b92298fa051456ca2e9a)
// not bridged: 
Theorem HOMOTOPIC_WITH_SUBSET_LEFT : forall A B:set, A <> Empty -> B <> Empty -> forall P c= R :^: idx B :^: (R :^: idx A), forall X c= R :^: idx A, forall Y c= R :^: idx B, forall Z c= R :^: idx A, forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx B) -> homotopic_with (R :^: idx B) (R :^: idx A) P (subtopology (R :^: idx A) (euclidean A) X,subtopology (R :^: idx B) (euclidean B) Y) f g /\ Z c= X -> homotopic_with (R :^: idx B) (R :^: idx A) P (subtopology (R :^: idx A) (euclidean A) Z,subtopology (R :^: idx B) (euclidean B) Y) f g.
Admitted.

// HOL Light: Multivariate/paths.ml:16584 / HOMOTOPIC_WITH_SUBSET_RIGHT   (hash md5:9ff4de87fadadef36c6c8c6cf1d7e19e)
// not bridged: 
Theorem HOMOTOPIC_WITH_SUBSET_RIGHT : forall M N:set, M <> Empty -> N <> Empty -> forall P c= R :^: idx N :^: (R :^: idx M), forall X c= R :^: idx M, forall Y Z c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> homotopic_with (R :^: idx N) (R :^: idx M) P (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Y) f g /\ Y c= Z -> homotopic_with (R :^: idx N) (R :^: idx M) P (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Z) f g.
Admitted.

// HOL Light: Multivariate/paths.ml:16597 / HOMOTOPIC_WITH_COMPOSE_CONTINUOUS_RIGHT   (hash md5:9c2f092245517dc439a458e1bda270c0)
// not bridged: 
Theorem HOMOTOPIC_WITH_COMPOSE_CONTINUOUS_RIGHT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p c= R :^: idx P :^: (R :^: idx M), forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall W c= R :^: idx M, forall X c= R :^: idx N, forall Y c= R :^: idx P, homotopic_with (R :^: idx P) (R :^: idx N) {f0 :e R :^: idx P :^: (R :^: idx N) | (fun x :e R :^: idx M => f0 (h x)) :e p} (subtopology (R :^: idx N) (euclidean N) X,subtopology (R :^: idx P) (euclidean P) Y) f g /\ (continuous_on_hl M N h W /\ {h x | x :e W} c= X) -> homotopic_with (R :^: idx P) (R :^: idx M) p (subtopology (R :^: idx M) (euclidean M) W,subtopology (R :^: idx P) (euclidean P) Y) (fun x:set => f (h x)) (fun x:set => g (h x)).
Admitted.

// HOL Light: Multivariate/paths.ml:16609 / HOMOTOPIC_COMPOSE_CONTINUOUS_RIGHT   (hash md5:8945480f31319d0999b3a19648274703)
// not bridged: 
Theorem HOMOTOPIC_COMPOSE_CONTINUOUS_RIGHT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall W c= R :^: idx M, forall X c= R :^: idx N, forall Y c= R :^: idx P, homotopic_with (R :^: idx P) (R :^: idx N) {f0 :e R :^: idx P :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) X,subtopology (R :^: idx P) (euclidean P) Y) f g /\ (continuous_on_hl M N h W /\ {h x | x :e W} c= X) -> homotopic_with (R :^: idx P) (R :^: idx M) {f0 :e R :^: idx P :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) W,subtopology (R :^: idx P) (euclidean P) Y) (fun x:set => f (h x)) (fun x:set => g (h x)).
Admitted.

// HOL Light: Multivariate/paths.ml:16620 / HOMOTOPIC_WITH_COMPOSE_CONTINUOUS_LEFT   (hash md5:119ff54f344abad1cee3a27e6a37dfa3)
// not bridged: 
Theorem HOMOTOPIC_WITH_COMPOSE_CONTINUOUS_LEFT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p c= R :^: idx P :^: (R :^: idx M), forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx N, h x :e R :^: idx P) -> forall X c= R :^: idx M, forall Y c= R :^: idx N, forall Z c= R :^: idx P, homotopic_with (R :^: idx N) (R :^: idx M) {f0 :e R :^: idx N :^: (R :^: idx M) | (fun x :e R :^: idx M => h (f0 x)) :e p} (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Y) f g /\ (continuous_on_hl N P h Y /\ {h x | x :e Y} c= Z) -> homotopic_with (R :^: idx P) (R :^: idx M) p (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx P) (euclidean P) Z) (fun x:set => h (f x)) (fun x:set => h (g x)).
Admitted.

// HOL Light: Multivariate/paths.ml:16632 / HOMOTOPIC_COMPOSE_CONTINUOUS_LEFT   (hash md5:550d9efebeab7632f429334b9723f352)
// not bridged: 
Theorem HOMOTOPIC_COMPOSE_CONTINUOUS_LEFT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx N, h x :e R :^: idx P) -> forall X c= R :^: idx M, forall Y c= R :^: idx N, forall Z c= R :^: idx P, homotopic_with (R :^: idx N) (R :^: idx M) {f0 :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx N) (euclidean N) Y) f g /\ (continuous_on_hl N P h Y /\ {h x | x :e Y} c= Z) -> homotopic_with (R :^: idx P) (R :^: idx M) {f0 :e R :^: idx P :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) X,subtopology (R :^: idx P) (euclidean P) Z) (fun x:set => h (f x)) (fun x:set => h (g x)).
Admitted.

// HOL Light: Multivariate/paths.ml:16644 / HOMOTOPIC_WITH_PCROSS   (hash md5:a2511b2b0fac9976ce397a7d73e995b4)
// not bridged: 
Theorem HOMOTOPIC_WITH_PCROSS : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx P, f' x :e R :^: idx Q) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall g':set -> set, (forall x :e R :^: idx P, g' x :e R :^: idx Q) -> forall p c= R :^: idx N :^: (R :^: idx M), forall p' c= R :^: idx Q :^: (R :^: idx P), forall q c= R :^: idx_n (dimindex N + dimindex Q) :^: (R :^: idx_n (dimindex M + dimindex P)), forall s c= R :^: idx M, forall s' c= R :^: idx P, forall t c= R :^: idx N, forall t' c= R :^: idx Q, homotopic_with (R :^: idx N) (R :^: idx M) p (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f g /\ (homotopic_with (R :^: idx Q) (R :^: idx P) p' (subtopology (R :^: idx P) (euclidean P) s',subtopology (R :^: idx Q) (euclidean Q) t') f' g' /\ (forall f0 :e R :^: idx N :^: (R :^: idx M), forall g0 :e R :^: idx Q :^: (R :^: idx P), f0 :e p /\ g0 :e p' -> (fun x :e R :^: idx_n (dimindex M + dimindex P) => pastecart N Q (f0 (fstcart M x)) (g0 (sndcart M P x))) :e q)) -> homotopic_with (R :^: idx_n (dimindex N + dimindex Q)) (R :^: idx_n (dimindex M + dimindex P)) q (subtopology (R :^: idx_n (dimindex M + dimindex P)) (euclidean (idx_n (dimindex M + dimindex P))) (\/_ x :e s, {pastecart M P x y | y :e s'}),subtopology (R :^: idx_n (dimindex N + dimindex Q)) (euclidean (idx_n (dimindex N + dimindex Q))) (\/_ x :e t, {pastecart N Q x y | y :e t'})) (fun z:set => pastecart N Q (f (fstcart M z)) (f' (sndcart M P z))) (fun z:set => pastecart N Q (g (fstcart M z)) (g' (sndcart M P z))).
Admitted.

// HOL Light: Multivariate/paths.ml:16693 / HOMOTOPIC_WITH_COMPOSE   (hash md5:61b2c214f9fed3a572ef054410840c8e)
// not bridged: 
Theorem HOMOTOPIC_WITH_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P0 c= R :^: idx N :^: (R :^: idx M), forall Q c= R :^: idx P :^: (R :^: idx N), forall R0 c= R :^: idx P :^: (R :^: idx M), forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx M, f' x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall g':set -> set, (forall x :e R :^: idx N, g' x :e R :^: idx P) -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, (forall f0 :e R :^: idx N :^: (R :^: idx M), forall g0 :e R :^: idx P :^: (R :^: idx N), continuous_on_hl M N (fun x:set => f0 x) s /\ ({f0 x | x :e s} c= t /\ (f0 :e P0 /\ (continuous_on_hl N P (fun x:set => g0 x) t /\ ({g0 x | x :e t} c= u /\ g0 :e Q)))) -> (fun x :e R :^: idx M => g0 (f0 x)) :e R0) /\ (homotopic_with (R :^: idx N) (R :^: idx M) P0 (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f f' /\ homotopic_with (R :^: idx P) (R :^: idx N) Q (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx P) (euclidean P) u) g g') -> homotopic_with (R :^: idx P) (R :^: idx M) R0 (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx P) (euclidean P) u) (fun x:set => g (f x)) (fun x:set => g' (f' x)).
Admitted.

// HOL Light: Multivariate/paths.ml:16722 / HOMOTOPIC_COMPOSE   (hash md5:41240daeb547cb0be5e47c0ac1f31fec)
// not bridged: 
Theorem HOMOTOPIC_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx M, f' x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall g':set -> set, (forall x :e R :^: idx N, g' x :e R :^: idx P) -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f f' /\ homotopic_with (R :^: idx P) (R :^: idx N) {x :e R :^: idx P :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx P) (euclidean P) u) g g' -> homotopic_with (R :^: idx P) (R :^: idx M) {x :e R :^: idx P :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx P) (euclidean P) u) (fun x:set => g (f x)) (fun x:set => g' (f' x)).
Admitted.

// HOL Light: Multivariate/paths.ml:16740 / HOMOTOPIC_TRIVIALITY   (hash md5:682d43083e378f9c827f6603eee92148)
// not bridged: 
Theorem HOMOTOPIC_TRIVIALITY : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, (forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl M N g s /\ {g x | x :e s} c= t)) -> homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f g) <-> (s = Empty \/ path_connected N t) /\ forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> continuous_on_hl M N f s /\ {f x | x :e s} c= t -> exists c :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f (fun x:set => c).
Admitted.

// HOL Light: Multivariate/paths.ml:16792 / HOMOTOPIC_ON_CLOPEN_UNIONS   (hash md5:83701e2760adb13a53bc5e2506477472)
// not bridged: 
Theorem HOMOTOPIC_ON_CLOPEN_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall t c= R :^: idx N, forall u c= Power (R :^: idx M), (forall s c= R :^: idx M, s :e u -> closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) (Union u)) s /\ (s :e subtopology (R :^: idx M) (euclidean M) (Union u) /\ homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f g)) -> homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) (Union u),subtopology (R :^: idx N) (euclidean N) t) f g.
Admitted.

// HOL Light: Multivariate/paths.ml:16880 / INESSENTIAL_ON_CLOPEN_UNIONS   (hash md5:3564beefa4633c2cdc1864e74fe53f2a)
// not bridged: 
Theorem INESSENTIAL_ON_CLOPEN_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, forall u c= Power (R :^: idx M), path_connected N t /\ (forall s c= R :^: idx M, s :e u -> closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) (Union u)) s /\ (s :e subtopology (R :^: idx M) (euclidean M) (Union u) /\ exists a :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f (fun x:set => a))) -> exists a :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) (Union u),subtopology (R :^: idx N) (euclidean N) t) f (fun x:set => a).
Admitted.

// HOL Light: Multivariate/paths.ml:16927 / HOMOTOPIC_WITH_REFLECTIONS_ALONG   (hash md5:f7bb94293cc6d7feb4e293f4f1521118)
// not bridged: 
Theorem HOMOTOPIC_WITH_REFLECTIONS_ALONG : forall N:set, N <> Empty -> forall P c= R :^: idx N :^: (R :^: idx N), forall s t c= R :^: idx N, forall a b :e R :^: idx N, ~ a = vec N 0 /\ (~ b = vec N 0 /\ (forall c :e R :^: idx N, c :e closed_segment N (seq_cons (a,b) seq_nil) -> (fun x :e R :^: idx N => reflect_along N c x) :e P /\ {reflect_along N c x | x :e s} c= t)) -> homotopic_with (R :^: idx N) (R :^: idx N) P (subtopology (R :^: idx N) (euclidean N) s,subtopology (R :^: idx N) (euclidean N) t) (reflect_along N a) (reflect_along N b).
Admitted.

// HOL Light: Multivariate/paths.ml:17000 / HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS   (hash md5:a5a166a1dd369232a6f452cb40317f80)
// not bridged: 
Theorem HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> (homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | orthogonal_transformation N (fun x0:set => x x0)} (subtopology (R :^: idx N) (euclidean N) (sphere N (vec N 0,1)),subtopology (R :^: idx N) (euclidean N) (sphere N (vec N 0,1))) f g <-> orthogonal_transformation N f /\ (orthogonal_transformation N g /\ det N (matrix N N f) = det N (matrix N N g))).
Admitted.

// HOL Light: Multivariate/paths.ml:17094 / HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_GEN   (hash md5:b02124b630a706f3e9e2dbc0422dcbc2)
// not bridged: 
Theorem HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_GEN : forall N:set, N <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> (exists r :e R, 0 < r /\ P r) -> (homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | orthogonal_transformation N (fun x0:set => x x0)} (subtopology (R :^: idx N) (euclidean N) {x :e R :^: idx N | P (vector_norm N x)},subtopology (R :^: idx N) (euclidean N) {x :e R :^: idx N | P (vector_norm N x)}) f g <-> orthogonal_transformation N f /\ (orthogonal_transformation N g /\ det N (matrix N N f) = det N (matrix N N g))).
Admitted.

// HOL Light: Multivariate/paths.ml:17220 / HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_ALT   (hash md5:4fe03ef190c845f84be1d289cbfe4a83)
// not bridged: 
Theorem HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_ALT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> (homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | orthogonal_transformation N (fun x0:set => x x0)} (subtopology (R :^: idx N) (euclidean N) ((R :^: idx N) :\: {vec N 0}),subtopology (R :^: idx N) (euclidean N) ((R :^: idx N) :\: {vec N 0})) f g <-> orthogonal_transformation N f /\ (orthogonal_transformation N g /\ det N (matrix N N f) = det N (matrix N N g))).
Admitted.

// HOL Light: Multivariate/paths.ml:17233 / HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_UNIV   (hash md5:00ea9f936dc6051a052e437d205e2e0c)
// not bridged: 
Theorem HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_UNIV : forall A N:set, N <> Empty -> forall P :e A, forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> (homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | orthogonal_transformation N (fun x0:set => x x0)} (subtopology (R :^: idx N) (euclidean N) (R :^: idx N),subtopology (R :^: idx N) (euclidean N) (R :^: idx N)) f g <-> orthogonal_transformation N f /\ (orthogonal_transformation N g /\ det N (matrix N N f) = det N (matrix N N g))).
Admitted.

// HOL Light: Multivariate/paths.ml:17245 / HOMOTOPIC_WITH_LINEAR_POSITIVE_DEFINITE_MAPS   (hash md5:4553d5b2a8d1e74679281ae0a375d89c)
// not bridged: 
Theorem HOMOTOPIC_WITH_LINEAR_POSITIVE_DEFINITE_MAPS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> (homotopic_with (R :^: idx N) (R :^: idx N) {f0 :e R :^: idx N :^: (R :^: idx N) | linear N N (fun x:set => f0 x) /\ positive_definite N (matrix N N (fun x:set => f0 x))} (subtopology (R :^: idx N) (euclidean N) ((R :^: idx N) :\: {vec N 0}),subtopology (R :^: idx N) (euclidean N) ((R :^: idx N) :\: {vec N 0})) f g <-> linear N N f /\ (linear N N g /\ (positive_definite N (matrix N N f) /\ positive_definite N (matrix N N g)))).
Admitted.

// HOL Light: Multivariate/paths.ml:17293 / HOMOTOPIC_WITH_LINEAR_MAPS   (hash md5:b63d6e4510f52acc2a70d4ba7b269f98)
// not bridged: 
Theorem HOMOTOPIC_WITH_LINEAR_MAPS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> (homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | linear N N (fun x0:set => x x0)} (subtopology (R :^: idx N) (euclidean N) ((R :^: idx N) :\: {vec N 0}),subtopology (R :^: idx N) (euclidean N) ((R :^: idx N) :\: {vec N 0})) f g <-> linear N N f /\ (linear N N g /\ 0 < det N (matrix N N f) * det N (matrix N N g))).
Admitted.

// HOL Light: Multivariate/paths.ml:17399 / homotopic_paths   (hash md5:c0280f4e10e1b599efd4adccd3aa7be8)
// not bridged: 
Theorem homotopic_paths_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> (homotopic_paths A s p q <-> homotopic_with (R :^: idx A) (R :^: idx 1) {r :e R :^: idx A :^: (R :^: idx 1) | pathstart A (fun x:set => r x) = pathstart A p /\ pathfinish A (fun x:set => r x) = pathfinish A p} (subtopology (R :^: idx 1) (euclidean 1) (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)),subtopology (R :^: idx A) (euclidean A) s) p q).
Admitted.

// HOL Light: Multivariate/paths.ml:17407 / HOMOTOPIC_PATHS   (hash md5:e2f475086333b30586fc5846ba241dd4)
// not bridged: 
Theorem HOMOTOPIC_PATHS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> (homotopic_paths N s p q <-> exists h:set -> set, (forall x :e R :^: idx_n 2, h x :e R :^: idx N) /\ (continuous_on_hl (idx_n 2) N h (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}) /\ ({h x | x :e \/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}} c= s /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> h (pastecart 1 1 (vec 1 0) x) = p x) /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> h (pastecart 1 1 (vec 1 1) x) = q x) /\ forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> pathstart N (fun x:set => h (pastecart 1 1 t x)) = pathstart N p /\ pathfinish N (fun x:set => h (pastecart 1 1 t x)) = pathfinish N p))))).
Admitted.

// HOL Light: Multivariate/paths.ml:17427 / HOMOTOPIC_PATHS_IMP_PATHSTART   (hash md5:dd72cc46d1f929a8c942911acdb8a217)
// not bridged: 
Theorem HOMOTOPIC_PATHS_IMP_PATHSTART : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_paths A s p q -> pathstart A p = pathstart A q.
Admitted.

// HOL Light: Multivariate/paths.ml:17433 / HOMOTOPIC_PATHS_IMP_PATHFINISH   (hash md5:b6681cb4d52507ac611f8f809ffddd1a)
// not bridged: 
Theorem HOMOTOPIC_PATHS_IMP_PATHFINISH : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_paths A s p q -> pathfinish A p = pathfinish A q.
Admitted.

// HOL Light: Multivariate/paths.ml:17439 / HOMOTOPIC_PATHS_IMP_PATH   (hash md5:a24c170a1e32b1a94609465502370167)
// not bridged: 
Theorem HOMOTOPIC_PATHS_IMP_PATH : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_paths A s p q -> path A p /\ path A q.
Admitted.

// HOL Light: Multivariate/paths.ml:17445 / HOMOTOPIC_PATHS_IMP_SUBSET   (hash md5:196de61b178daa7d40b14bce02e30a8a)
// not bridged: 
Theorem HOMOTOPIC_PATHS_IMP_SUBSET : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_paths A s p q -> path_image A p c= s /\ path_image A q c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:17452 / HOMOTOPIC_PATHS_REFL   (hash md5:c2dbc2b252adecfe535450f047f0e8ef)
// not bridged: 
Theorem HOMOTOPIC_PATHS_REFL : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> (homotopic_paths A s p p <-> path A p /\ path_image A p c= s).
Admitted.

// HOL Light: Multivariate/paths.ml:17458 / HOMOTOPIC_PATHS_SYM   (hash md5:f3ce46c23979022482c1a2caae595ca3)
// not bridged: 
Theorem HOMOTOPIC_PATHS_SYM : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> (homotopic_paths A s p q <-> homotopic_paths A s q p).
Admitted.

// HOL Light: Multivariate/paths.ml:17466 / HOMOTOPIC_PATHS_TRANS   (hash md5:b7ad6573941b6177c918f5ec5b0bf119)
// not bridged: 
Theorem HOMOTOPIC_PATHS_TRANS : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx A) -> homotopic_paths A s p q /\ homotopic_paths A s q r -> homotopic_paths A s p r.
Admitted.

// HOL Light: Multivariate/paths.ml:17477 / HOMOTOPIC_PATHS_EQ   (hash md5:13859c4cdbf62ec176f3b0dd5502c220)
// not bridged: 
Theorem HOMOTOPIC_PATHS_EQ : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall s c= R :^: idx N, path N p /\ (path_image N p c= s /\ (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p t = q t)) -> homotopic_paths N s p q.
Admitted.

// HOL Light: Multivariate/paths.ml:17491 / HOMOTOPIC_PATHS_REPARAMETRIZE   (hash md5:f7fbfb9ee5adf694502cb678efd7ccba)
// not bridged: 
Theorem HOMOTOPIC_PATHS_REPARAMETRIZE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> path N p /\ (path_image N p c= s /\ (exists f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) /\ (continuous_on_hl 1 1 f (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) /\ ({f x | x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)} c= closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (f (vec 1 0) = vec 1 0 /\ (f (vec 1 1) = vec 1 1 /\ forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> q t = p (f t))))))) -> homotopic_paths N s p q.
Admitted.

// HOL Light: Multivariate/paths.ml:17548 / HOMOTOPIC_PATHS_SUBSET   (hash md5:fdbf9d0f44229aa00b45bbd168ba7b69)
// not bridged: 
Theorem HOMOTOPIC_PATHS_SUBSET : forall A:set, A <> Empty -> forall t s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_paths A s p q /\ s c= t -> homotopic_paths A t p q.
Admitted.

// HOL Light: Multivariate/paths.ml:17558 / HOMOTOPIC_JOIN_LEMMA   (hash md5:d9ad621e26bd3123196b8b75f990e5ab)
// not bridged: 
Theorem HOMOTOPIC_JOIN_LEMMA : forall N:set, N <> Empty -> forall p:set -> set -> set, (forall x y :e R :^: idx 1, p x y :e R :^: idx N) -> forall q:set -> set -> set, (forall x y :e R :^: idx 1, q x y :e R :^: idx N) -> continuous_on_hl (idx_n 2) N (fun y:set => p (fstcart 1 y) (sndcart 1 1 y)) (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}) /\ (continuous_on_hl (idx_n 2) N (fun y:set => q (fstcart 1 y) (sndcart 1 1 y)) (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}) /\ (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> pathfinish N (p t) = pathstart N (q t))) -> continuous_on_hl (idx_n 2) N (fun y:set => poly_add (R :^: idx N) (p (fstcart 1 y)) (q (fstcart 1 y)) (sndcart 1 1 y)) (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}).
Admitted.

// HOL Light: Multivariate/paths.ml:17602 / HOMOTOPIC_PATHS_REVERSEPATH   (hash md5:e383a0d46bbed0e8b1cde74bd55899a1)
// not bridged: 
Theorem HOMOTOPIC_PATHS_REVERSEPATH : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> (homotopic_paths N s (reversepath N p) (reversepath N q) <-> homotopic_paths N s p q).
Admitted.

// HOL Light: Multivariate/paths.ml:17641 / HOMOTOPIC_PATHS_JOIN   (hash md5:4980d825e95f0bbd722c598d4b96388e)
// not bridged: 
Theorem HOMOTOPIC_PATHS_JOIN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall p':set -> set, (forall x :e R :^: idx 1, p' x :e R :^: idx N) -> forall q':set -> set, (forall x :e R :^: idx 1, q' x :e R :^: idx N) -> homotopic_paths N s p p' /\ (homotopic_paths N s q q' /\ pathfinish N p = pathstart N q) -> homotopic_paths N s (poly_add (R :^: idx N) p q) (poly_add (R :^: idx N) p' q').
Admitted.

// HOL Light: Multivariate/paths.ml:17675 / HOMOTOPIC_PATHS_CONTINUOUS_IMAGE   (hash md5:c2191f25f9f47e18dd44ac5cfab3f0d5)
// not bridged: 
Theorem HOMOTOPIC_PATHS_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopic_paths M s f g /\ (continuous_on_hl M N h s /\ {h x | x :e s} c= t) -> homotopic_paths N t (fun x:set => h (f x)) (fun x:set => h (g x)).
Admitted.

// HOL Light: Multivariate/paths.ml:17692 / HOMOTOPIC_PATHS_RID   (hash md5:30778bf6c64c44f05c1c43e290e5444c)
// not bridged: 
Theorem HOMOTOPIC_PATHS_RID : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> path A p /\ path_image A p c= s -> homotopic_paths A s (poly_add (R :^: idx A) p (linepath A (pathfinish A p,pathfinish A p))) p.
Admitted.

// HOL Light: Multivariate/paths.ml:17719 / HOMOTOPIC_PATHS_LID   (hash md5:57ae2c50e2f0f7aa6ea857abdd0c9d2a)
// not bridged: 
Theorem HOMOTOPIC_PATHS_LID : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> path N p /\ path_image N p c= s -> homotopic_paths N s (poly_add (R :^: idx N) (linepath N (pathstart N p,pathstart N p)) p) p.
Admitted.

// HOL Light: Multivariate/paths.ml:17734 / HOMOTOPIC_PATHS_ASSOC   (hash md5:6417b820658c87a5239245346ffdbcae)
// not bridged: 
Theorem HOMOTOPIC_PATHS_ASSOC : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx N) -> path N p /\ (path_image N p c= s /\ (path N q /\ (path_image N q c= s /\ (path N r /\ (path_image N r c= s /\ (pathfinish N p = pathstart N q /\ pathfinish N q = pathstart N r)))))) -> homotopic_paths N s (poly_add (R :^: idx N) p (poly_add (R :^: idx N) q r)) (poly_add (R :^: idx N) (poly_add (R :^: idx N) p q) r).
Admitted.

// HOL Light: Multivariate/paths.ml:17783 / HOMOTOPIC_PATHS_RINV   (hash md5:fb7b0319dc99d2f02d11bee00d97ea64)
// not bridged: 
Theorem HOMOTOPIC_PATHS_RINV : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> path N p /\ path_image N p c= s -> homotopic_paths N s (poly_add (R :^: idx N) p (reversepath N p)) (linepath N (pathstart N p,pathstart N p)).
Admitted.

// HOL Light: Multivariate/paths.ml:17865 / HOMOTOPIC_PATHS_LINV   (hash md5:31a1b0783fcef04387e26b9333cfa7f1)
// not bridged: 
Theorem HOMOTOPIC_PATHS_LINV : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> path N p /\ path_image N p c= s -> homotopic_paths N s (poly_add (R :^: idx N) (reversepath N p) p) (linepath N (pathfinish N p,pathfinish N p)).
Admitted.

// HOL Light: Multivariate/paths.ml:17877 / HOMOTOPIC_PATHS_LCANCEL   (hash md5:a763e21a16d2709f6bff7df9b9b13e2a)
// not bridged: 
Theorem HOMOTOPIC_PATHS_LCANCEL : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx N) -> forall s c= R :^: idx N, homotopic_paths N s (poly_add (R :^: idx N) p q) (poly_add (R :^: idx N) p r) /\ (pathstart N q = pathfinish N p /\ pathstart N r = pathfinish N p) -> homotopic_paths N s q r.
Admitted.

// HOL Light: Multivariate/paths.ml:17914 / HOMOTOPIC_PATHS_LCANCEL_EQ   (hash md5:a3eee9b799a86bf10cdaa1c70abb4c60)
// not bridged: 
Theorem HOMOTOPIC_PATHS_LCANCEL_EQ : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx N) -> forall s c= R :^: idx N, pathstart N q = pathfinish N p /\ pathstart N r = pathfinish N p -> (homotopic_paths N s (poly_add (R :^: idx N) p q) (poly_add (R :^: idx N) p r) <-> path N p /\ (path_image N p c= s /\ homotopic_paths N s q r)).
Admitted.

// HOL Light: Multivariate/paths.ml:17927 / HOMOTOPIC_PATHS_RCANCEL   (hash md5:eb2bfc82e125f391f3326d10691ec20b)
// not bridged: 
Theorem HOMOTOPIC_PATHS_RCANCEL : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx N) -> forall s c= R :^: idx N, homotopic_paths N s (poly_add (R :^: idx N) p r) (poly_add (R :^: idx N) q r) /\ (pathfinish N p = pathstart N r /\ pathfinish N q = pathstart N r) -> homotopic_paths N s p q.
Admitted.

// HOL Light: Multivariate/paths.ml:17965 / HOMOTOPIC_PATHS_RCANCEL_EQ   (hash md5:4c61c8efefa29ad3ccd2a101534c8465)
// not bridged: 
Theorem HOMOTOPIC_PATHS_RCANCEL_EQ : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx N) -> forall s c= R :^: idx N, pathfinish N p = pathstart N r /\ pathfinish N q = pathstart N r -> (homotopic_paths N s (poly_add (R :^: idx N) p r) (poly_add (R :^: idx N) q r) <-> homotopic_paths N s p q /\ (path N r /\ path_image N r c= s)).
Admitted.

// HOL Light: Multivariate/paths.ml:17982 / homotopic_loops   (hash md5:5278f1ca33ccb671ccee37707e5cbbd8)
// not bridged: 
Theorem homotopic_loops_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> (homotopic_loops A s p q <-> homotopic_with (R :^: idx A) (R :^: idx 1) {r :e R :^: idx A :^: (R :^: idx 1) | pathfinish A (fun x:set => r x) = pathstart A (fun x:set => r x)} (subtopology (R :^: idx 1) (euclidean 1) (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)),subtopology (R :^: idx A) (euclidean A) s) p q).
Admitted.

// HOL Light: Multivariate/paths.ml:17990 / HOMOTOPIC_LOOPS   (hash md5:e0f4efbfd9bec85dfc5fcfe1c7904ba0)
// not bridged: 
Theorem HOMOTOPIC_LOOPS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> (homotopic_loops N s p q <-> exists h:set -> set, (forall x :e R :^: idx_n 2, h x :e R :^: idx N) /\ (continuous_on_hl (idx_n 2) N h (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}) /\ ({h x | x :e \/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}} c= s /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> h (pastecart 1 1 (vec 1 0) x) = p x) /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> h (pastecart 1 1 (vec 1 1) x) = q x) /\ forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> pathfinish N (fun x:set => h (pastecart 1 1 t x)) = pathstart N (fun x:set => h (pastecart 1 1 t x))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:18009 / HOMOTOPIC_LOOPS_IMP_LOOP   (hash md5:5c61205d195331182d7880df0dfa97b1)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_IMP_LOOP : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_loops A s p q -> pathfinish A p = pathstart A p /\ pathfinish A q = pathstart A q.
Admitted.

// HOL Light: Multivariate/paths.ml:18017 / HOMOTOPIC_LOOPS_IMP_PATH   (hash md5:de8395a0237957f1fe66016040a6deb5)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_IMP_PATH : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_loops A s p q -> path A p /\ path A q.
Admitted.

// HOL Light: Multivariate/paths.ml:18023 / HOMOTOPIC_LOOPS_IMP_SUBSET   (hash md5:5b28a522d224c133c12fe67ef7eeb0f3)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_IMP_SUBSET : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_loops A s p q -> path_image A p c= s /\ path_image A q c= s.
Admitted.

// HOL Light: Multivariate/paths.ml:18030 / HOMOTOPIC_LOOPS_REFL   (hash md5:4ec0f7a468812c6ba3d951d7c07c7c3f)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_REFL : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> (homotopic_loops A s p p <-> path A p /\ (path_image A p c= s /\ pathfinish A p = pathstart A p)).
Admitted.

// HOL Light: Multivariate/paths.ml:18037 / HOMOTOPIC_LOOPS_SYM   (hash md5:71c5ed7587ff2e40468daa8734e5cd9a)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_SYM : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> (homotopic_loops A s p q <-> homotopic_loops A s q p).
Admitted.

// HOL Light: Multivariate/paths.ml:18041 / HOMOTOPIC_LOOPS_TRANS   (hash md5:4903e396d00b0075dc396b4344b0b458)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_TRANS : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx A) -> homotopic_loops A s p q /\ homotopic_loops A s q r -> homotopic_loops A s p r.
Admitted.

// HOL Light: Multivariate/paths.ml:18047 / HOMOTOPIC_LOOPS_SUBSET   (hash md5:4daa3e3a23daba6f6e4f9ba95ce92b10)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_SUBSET : forall A:set, A <> Empty -> forall t s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_loops A s p q /\ s c= t -> homotopic_loops A t p q.
Admitted.

// HOL Light: Multivariate/paths.ml:18053 / HOMOTOPIC_LOOPS_EQ   (hash md5:ab1cc5d1856f192b146d7c19d89e8533)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_EQ : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall s c= R :^: idx N, path N p /\ (path_image N p c= s /\ (pathfinish N p = pathstart N p /\ (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p t = q t))) -> homotopic_loops N s p q.
Admitted.

// HOL Light: Multivariate/paths.ml:18067 / HOMOTOPIC_LOOPS_CONTINUOUS_IMAGE   (hash md5:d15e0063697ebc5bc83bdd02f31185cd)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopic_loops M s f g /\ (continuous_on_hl M N h s /\ {h x | x :e s} c= t) -> homotopic_loops N t (fun x:set => h (f x)) (fun x:set => h (g x)).
Admitted.

// HOL Light: Multivariate/paths.ml:18079 / HOMOTOPIC_LOOPS_SHIFTPATH_SELF   (hash md5:028cf59daea1136577aa20b9c4b84d18)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_SHIFTPATH_SELF : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall t :e R :^: idx 1, forall s c= R :^: idx N, path N p /\ (path_image N p c= s /\ (pathfinish N p = pathstart N p /\ t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil))) -> homotopic_loops N s p (shiftpath N t p).
Admitted.

// HOL Light: Multivariate/paths.ml:18154 / HOMOTOPIC_PATHS_IMP_HOMOTOPIC_LOOPS   (hash md5:262766561c5fbf6b3b4e6fdb0ff8f207)
// not bridged: 
Theorem HOMOTOPIC_PATHS_IMP_HOMOTOPIC_LOOPS : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx A) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx A) -> homotopic_paths A s p q /\ (pathfinish A p = pathstart A p /\ pathfinish A q = pathstart A p) -> homotopic_loops A s p q.
Admitted.

// HOL Light: Multivariate/paths.ml:18165 / HOMOTOPIC_LOOPS_IMP_HOMOTOPIC_PATHS_NULL   (hash md5:5a955ad0e45eb188bca0645509f97cfc)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_IMP_HOMOTOPIC_PATHS_NULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall a :e R :^: idx N, homotopic_loops N s p (linepath N (a,a)) -> homotopic_paths N s p (linepath N (pathstart N p,pathstart N p)).
Admitted.

// HOL Light: Multivariate/paths.ml:18299 / HOMOTOPIC_LOOPS_CONJUGATE   (hash md5:846771b96180bdbd2dbcfa96e3e4783f)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_CONJUGATE : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall s c= R :^: idx N, path N p /\ (path_image N p c= s /\ (path N q /\ (path_image N q c= s /\ (pathfinish N p = pathstart N q /\ pathfinish N q = pathstart N q)))) -> homotopic_loops N s (poly_add (R :^: idx N) p (poly_add (R :^: idx N) q (reversepath N p))) q.
Admitted.

// HOL Light: Multivariate/paths.ml:18397 / PATH_COMPONENT_IMP_HOMOTOPIC_POINTS   (hash md5:80aeddc94f482770c4fdfe8babba854e)
// not bridged: 
Theorem PATH_COMPONENT_IMP_HOMOTOPIC_POINTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, path_component N s a b -> homotopic_loops N s (linepath N (a,a)) (linepath N (b,b)).
Admitted.

// HOL Light: Multivariate/paths.ml:18415 / HOMOTOPIC_LOOPS_IMP_PATH_COMPONENT_VALUE   (hash md5:be36fee3cbfccd1d600bc5f0157588d3)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_IMP_PATH_COMPONENT_VALUE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall t :e R :^: idx 1, homotopic_loops N s p q /\ t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> path_component N s (p t) (q t).
Admitted.

// HOL Light: Multivariate/paths.ml:18437 / HOMOTOPIC_POINTS_EQ_PATH_COMPONENT   (hash md5:0c83d7731b291457ae8e05abbaa3ed50)
// not bridged: 
Theorem HOMOTOPIC_POINTS_EQ_PATH_COMPONENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, homotopic_loops N s (linepath N (a,a)) (linepath N (b,b)) <-> path_component N s a b.
Admitted.

// HOL Light: Multivariate/paths.ml:18448 / PATH_CONNECTED_EQ_HOMOTOPIC_POINTS   (hash md5:fe9be1b62147e59b796d1eb30f22e2f1)
// not bridged: 
Theorem PATH_CONNECTED_EQ_HOMOTOPIC_POINTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, path_connected N s <-> forall a b :e R :^: idx N, a :e s /\ b :e s -> homotopic_loops N s (linepath N (a,a)) (linepath N (b,b)).
Admitted.

// HOL Light: Multivariate/paths.ml:18460 / HOMOTOPIC_WITH_LINEAR   (hash md5:ba073b4386909fce48bbc2249ff44e7b)
// not bridged: 
Theorem HOMOTOPIC_WITH_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ (continuous_on_hl M N g s /\ (forall x :e R :^: idx M, x :e s -> closed_segment N (seq_cons (f x,g x) seq_nil) c= t)) -> homotopic_with (R :^: idx N) (R :^: idx M) {z :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f g.
Admitted.

// HOL Light: Multivariate/paths.ml:18495 / HOMOTOPIC_LOOPS_LINEAR   (hash md5:74ef38831426b56ca97ed9ba477b898a)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_LINEAR : forall A N:set, A <> Empty -> N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> path N g /\ (path N h /\ (pathfinish N g = pathstart N g /\ (pathfinish N h = pathstart N h /\ (forall t :e R :^: idx 1, forall x :e A, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> closed_segment N (seq_cons (g t,h t) seq_nil) c= s)))) -> homotopic_loops N s g h.
Admitted.

// HOL Light: Multivariate/paths.ml:18495 / HOMOTOPIC_PATHS_LINEAR   (hash md5:d448c68288a3e271943fa2e1c5a4aba5)
// not bridged: 
Theorem HOMOTOPIC_PATHS_LINEAR : forall A N:set, A <> Empty -> N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> path N g /\ (path N h /\ (pathstart N h = pathstart N g /\ (pathfinish N h = pathfinish N g /\ (forall t :e R :^: idx 1, forall x :e A, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> closed_segment N (seq_cons (g t,h t) seq_nil) c= s)))) -> homotopic_paths N s g h.
Admitted.

// HOL Light: Multivariate/paths.ml:18570 / HOMOTOPIC_NEARBY_LOOPS   (hash md5:1b857af00675681bc5a8c334762b46fd)
// not bridged: 
Theorem HOMOTOPIC_NEARBY_LOOPS : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, path N g /\ (pathfinish N g = pathstart N g /\ (open N s /\ path_image N g c= s)) -> exists e0 :e R, 0 < e0 /\ forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> path N h /\ (pathfinish N h = pathstart N h /\ (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> vector_norm N (vector_sub N (h t) (g t)) < e0)) -> homotopic_loops N s g h.
Admitted.

// HOL Light: Multivariate/paths.ml:18570 / HOMOTOPIC_NEARBY_PATHS   (hash md5:c54e17ee0ac195d1a1fa8d183245f1fa)
// not bridged: 
Theorem HOMOTOPIC_NEARBY_PATHS : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, path N g /\ (open N s /\ path_image N g c= s) -> exists e0 :e R, 0 < e0 /\ forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx N) -> path N h /\ (pathstart N h = pathstart N g /\ (pathfinish N h = pathfinish N g /\ (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> vector_norm N (vector_sub N (h t) (g t)) < e0))) -> homotopic_paths N s g h.
Admitted.

// HOL Light: Multivariate/paths.ml:18607 / HOMOTOPIC_NON_MIDPOINT_SPHEREMAPS   (hash md5:a90c30b4131ee3c8cc774275429921e3)
// not bridged: 
Theorem HOMOTOPIC_NON_MIDPOINT_SPHEREMAPS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall a :e R :^: idx N, forall r :e R, continuous_on_hl M N f s /\ ({f x | x :e s} c= sphere N (a,r) /\ (continuous_on_hl M N g s /\ ({g x | x :e s} c= sphere N (a,r) /\ (forall x :e R :^: idx M, x :e s -> ~ midpoint N (f x,g x) = a)))) -> homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) (sphere N (a,r))) f g.
Admitted.

// HOL Light: Multivariate/paths.ml:18668 / HOMOTOPIC_NON_ANTIPODAL_SPHEREMAPS   (hash md5:4cbbcf7482cf0f08db93a306eec24d59)
// not bridged: 
Theorem HOMOTOPIC_NON_ANTIPODAL_SPHEREMAPS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall r :e R, continuous_on_hl M N f s /\ ({f x | x :e s} c= sphere N (vec N 0,r) /\ (continuous_on_hl M N g s /\ ({g x | x :e s} c= sphere N (vec N 0,r) /\ (forall x :e R :^: idx M, x :e s -> ~ f x = vector_neg N (g x))))) -> homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) (sphere N (vec N 0,r))) f g.
Admitted.

// HOL Light: Multivariate/paths.ml:18683 / HOMOTOPICALLY_TRIVIAL_RETRACTION_GEN   (hash md5:536318e4c76e3f29ef56e8ea5e6b21df)
// not bridged: 
Theorem HOMOTOPICALLY_TRIVIAL_RETRACTION_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P0 c= R :^: idx M :^: (R :^: idx P), forall Q c= R :^: idx N :^: (R :^: idx P), forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall k:set -> set, (forall x :e R :^: idx N, k x :e R :^: idx M) -> continuous_on_hl M N h s /\ ({h x | x :e s} = t /\ (continuous_on_hl N M k t /\ ({k x | x :e t} c= s /\ ((forall y :e R :^: idx N, y :e t -> h (k y) = y) /\ ((forall f :e R :^: idx N :^: (R :^: idx P), continuous_on_hl P N (fun x:set => f x) u /\ ({f x | x :e u} c= t /\ f :e Q) -> (fun x :e R :^: idx P => k (f x)) :e P0) /\ ((forall f :e R :^: idx M :^: (R :^: idx P), continuous_on_hl P M (fun x:set => f x) u /\ ({f x | x :e u} c= s /\ f :e P0) -> (fun x :e R :^: idx P => h (f x)) :e Q) /\ (forall h0 k0 :e R :^: idx N :^: (R :^: idx P), (forall x :e R :^: idx P, x :e u -> h0 x = k0 x) -> (h0 :e Q <-> k0 :e Q)))))))) /\ (forall f g :e R :^: idx M :^: (R :^: idx P), continuous_on_hl P M (fun x:set => f x) u /\ ({f x | x :e u} c= s /\ (f :e P0 /\ (continuous_on_hl P M (fun x:set => g x) u /\ ({g x | x :e u} c= s /\ g :e P0)))) -> homotopic_with (R :^: idx M) (R :^: idx P) P0 (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx M) (euclidean M) s) (fun x:set => f x) (fun x:set => g x)) -> forall f g :e R :^: idx N :^: (R :^: idx P), continuous_on_hl P N (fun x:set => f x) u /\ ({f x | x :e u} c= t /\ (f :e Q /\ (continuous_on_hl P N (fun x:set => g x) u /\ ({g x | x :e u} c= t /\ g :e Q)))) -> homotopic_with (R :^: idx N) (R :^: idx P) Q (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx N) (euclidean N) t) (fun x:set => f x) (fun x:set => g x).
Admitted.

// HOL Light: Multivariate/paths.ml:18723 / HOMOTOPICALLY_TRIVIAL_RETRACTION_NULL_GEN   (hash md5:5e18b8291f5b2afdbe2ae95dd1e7e5c0)
// not bridged: 
Theorem HOMOTOPICALLY_TRIVIAL_RETRACTION_NULL_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P0 c= R :^: idx M :^: (R :^: idx P), forall Q c= R :^: idx N :^: (R :^: idx P), forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall k:set -> set, (forall x :e R :^: idx N, k x :e R :^: idx M) -> continuous_on_hl M N h s /\ ({h x | x :e s} = t /\ (continuous_on_hl N M k t /\ ({k x | x :e t} c= s /\ ((forall y :e R :^: idx N, y :e t -> h (k y) = y) /\ ((forall f :e R :^: idx N :^: (R :^: idx P), continuous_on_hl P N (fun x:set => f x) u /\ ({f x | x :e u} c= t /\ f :e Q) -> (fun x :e R :^: idx P => k (f x)) :e P0) /\ ((forall f :e R :^: idx M :^: (R :^: idx P), continuous_on_hl P M (fun x:set => f x) u /\ ({f x | x :e u} c= s /\ f :e P0) -> (fun x :e R :^: idx P => h (f x)) :e Q) /\ (forall h0 k0 :e R :^: idx N :^: (R :^: idx P), (forall x :e R :^: idx P, x :e u -> h0 x = k0 x) -> (h0 :e Q <-> k0 :e Q)))))))) /\ (forall f :e R :^: idx M :^: (R :^: idx P), continuous_on_hl P M (fun x:set => f x) u /\ ({f x | x :e u} c= s /\ f :e P0) -> exists c :e R :^: idx M, homotopic_with (R :^: idx M) (R :^: idx P) P0 (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx M) (euclidean M) s) (fun x:set => f x) (fun x:set => c)) -> forall f :e R :^: idx N :^: (R :^: idx P), continuous_on_hl P N (fun x:set => f x) u /\ ({f x | x :e u} c= t /\ f :e Q) -> exists c :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx P) Q (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx N) (euclidean N) t) (fun x:set => f x) (fun x:set => c).
Admitted.

// HOL Light: Multivariate/paths.ml:18762 / COHOMOTOPICALLY_TRIVIAL_RETRACTION_GEN   (hash md5:795c8c7b5d2228a53b3956da95894b1d)
// not bridged: 
Theorem COHOMOTOPICALLY_TRIVIAL_RETRACTION_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P0 c= R :^: idx P :^: (R :^: idx M), forall Q c= R :^: idx P :^: (R :^: idx N), forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall k:set -> set, (forall x :e R :^: idx N, k x :e R :^: idx M) -> continuous_on_hl M N h s /\ ({h x | x :e s} = t /\ (continuous_on_hl N M k t /\ ({k x | x :e t} c= s /\ ((forall y :e R :^: idx N, y :e t -> h (k y) = y) /\ ((forall f :e R :^: idx P :^: (R :^: idx N), continuous_on_hl N P (fun x:set => f x) t /\ ({f x | x :e t} c= u /\ f :e Q) -> (fun x :e R :^: idx M => f (h x)) :e P0) /\ ((forall f :e R :^: idx P :^: (R :^: idx M), continuous_on_hl M P (fun x:set => f x) s /\ ({f x | x :e s} c= u /\ f :e P0) -> (fun x :e R :^: idx N => f (k x)) :e Q) /\ (forall h0 k0 :e R :^: idx P :^: (R :^: idx N), (forall x :e R :^: idx N, x :e t -> h0 x = k0 x) -> (h0 :e Q <-> k0 :e Q)))))))) /\ (forall f g :e R :^: idx P :^: (R :^: idx M), continuous_on_hl M P (fun x:set => f x) s /\ ({f x | x :e s} c= u /\ (f :e P0 /\ (continuous_on_hl M P (fun x:set => g x) s /\ ({g x | x :e s} c= u /\ g :e P0)))) -> homotopic_with (R :^: idx P) (R :^: idx M) P0 (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx P) (euclidean P) u) (fun x:set => f x) (fun x:set => g x)) -> forall f g :e R :^: idx P :^: (R :^: idx N), continuous_on_hl N P (fun x:set => f x) t /\ ({f x | x :e t} c= u /\ (f :e Q /\ (continuous_on_hl N P (fun x:set => g x) t /\ ({g x | x :e t} c= u /\ g :e Q)))) -> homotopic_with (R :^: idx P) (R :^: idx N) Q (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx P) (euclidean P) u) (fun x:set => f x) (fun x:set => g x).
Admitted.

// HOL Light: Multivariate/paths.ml:18803 / COHOMOTOPICALLY_TRIVIAL_RETRACTION_NULL_GEN   (hash md5:6494df68d573e1b42cdafd52a9747cd0)
// not bridged: 
Theorem COHOMOTOPICALLY_TRIVIAL_RETRACTION_NULL_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P0 c= R :^: idx P :^: (R :^: idx M), forall Q c= R :^: idx P :^: (R :^: idx N), forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall k:set -> set, (forall x :e R :^: idx N, k x :e R :^: idx M) -> continuous_on_hl M N h s /\ ({h x | x :e s} = t /\ (continuous_on_hl N M k t /\ ({k x | x :e t} c= s /\ ((forall y :e R :^: idx N, y :e t -> h (k y) = y) /\ ((forall f :e R :^: idx P :^: (R :^: idx N), continuous_on_hl N P (fun x:set => f x) t /\ ({f x | x :e t} c= u /\ f :e Q) -> (fun x :e R :^: idx M => f (h x)) :e P0) /\ ((forall f :e R :^: idx P :^: (R :^: idx M), continuous_on_hl M P (fun x:set => f x) s /\ ({f x | x :e s} c= u /\ f :e P0) -> (fun x :e R :^: idx N => f (k x)) :e Q) /\ (forall h0 k0 :e R :^: idx P :^: (R :^: idx N), (forall x :e R :^: idx N, x :e t -> h0 x = k0 x) -> (h0 :e Q <-> k0 :e Q)))))))) /\ (forall f :e R :^: idx P :^: (R :^: idx M), continuous_on_hl M P (fun x:set => f x) s /\ ({f x | x :e s} c= u /\ f :e P0) -> exists c :e R :^: idx P, homotopic_with (R :^: idx P) (R :^: idx M) P0 (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx P) (euclidean P) u) (fun x:set => f x) (fun x:set => c)) -> forall f :e R :^: idx P :^: (R :^: idx N), continuous_on_hl N P (fun x:set => f x) t /\ ({f x | x :e t} c= u /\ f :e Q) -> exists c :e R :^: idx P, homotopic_with (R :^: idx P) (R :^: idx N) Q (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx P) (euclidean P) u) (fun x:set => f x) (fun x:set => c).
Admitted.

// HOL Light: Multivariate/paths.ml:18845 / HOMOTOPIC_JOIN_SUBPATHS   (hash md5:5aec29f3efa4035bb7d75c9239ca13a4)
// not bridged: 
Theorem HOMOTOPIC_JOIN_SUBPATHS : forall N:set, N <> Empty -> forall u v w :e R :^: idx 1, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, path N g /\ (path_image N g c= s /\ (u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ (v :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) /\ w :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)))) -> homotopic_paths N s (poly_add (R :^: idx N) (subpath (R :^: idx N) u v g) (subpath (R :^: idx N) v w g)) (subpath (R :^: idx N) u w g).
Admitted.

// HOL Light: Multivariate/paths.ml:18992 / HOMOTOPIC_LOOPS_SHIFTPATH   (hash md5:b97d0a6f9196150ea3ea1bd378448ca0)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_SHIFTPATH : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall u :e R :^: idx 1, homotopic_loops N s p q /\ u :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> homotopic_loops N s (shiftpath N u p) (shiftpath N u q).
Admitted.

// HOL Light: Multivariate/paths.ml:19054 / HOMOTOPIC_PATHS_LOOP_PARTS   (hash md5:c336059f8c013a3e5849ff282bae4eee)
// not bridged: 
Theorem HOMOTOPIC_PATHS_LOOP_PARTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> forall a :e R :^: idx N, homotopic_loops N s (poly_add (R :^: idx N) p (reversepath N q)) (linepath N (a,a)) /\ path N q -> homotopic_paths N s p q.
Admitted.

// HOL Light: Multivariate/paths.ml:19102 / HOMOTOPIC_LOOPS_ADD_SYM   (hash md5:3bce84cb59d5619999f3373368af2c89)
// not bridged: 
Theorem HOMOTOPIC_LOOPS_ADD_SYM : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> path N p /\ (path_image N p c= s /\ (pathfinish N p = pathstart N p /\ (path N q /\ (path_image N q c= s /\ (pathfinish N q = pathstart N q /\ pathstart N q = pathstart N p))))) -> homotopic_loops N s (poly_add (R :^: idx N) p q) (poly_add (R :^: idx N) q p).
Admitted.

// HOL Light: Multivariate/paths.ml:19142 / simply_connected   (hash md5:0829cbf43c6b910201d28390e5925bf0)
// not bridged: 
Theorem simply_connected_thm : forall N:set, N <> Empty -> forall s c= R :^: idx N, simply_connected N s <-> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> path N p /\ (pathfinish N p = pathstart N p /\ (path_image N p c= s /\ (path N q /\ (pathfinish N q = pathstart N q /\ path_image N q c= s)))) -> homotopic_loops N s p q.
Admitted.

// HOL Light: Multivariate/paths.ml:19148 / SIMPLY_CONNECTED_EMPTY   (hash md5:0af14609047ccff78f5d388c139ad901)
// not bridged: 
Theorem SIMPLY_CONNECTED_EMPTY : forall A:set, A <> Empty -> simply_connected A Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:19153 / SIMPLY_CONNECTED_IMP_PATH_CONNECTED   (hash md5:88ec27a2246e11b5778edb29731875fd)
// not bridged: 
Theorem SIMPLY_CONNECTED_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, simply_connected N s -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:19161 / SIMPLY_CONNECTED_IMP_CONNECTED   (hash md5:00c3f26843119a29b7fd5f94f57437da)
// not bridged: 
Theorem SIMPLY_CONNECTED_IMP_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, simply_connected N s -> connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:19166 / SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_ANY   (hash md5:de95d8ef9be4e03c332d3762bbe3ed37)
// not bridged: 
Theorem SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_ANY : forall N:set, N <> Empty -> forall s c= R :^: idx N, simply_connected N s <-> forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall a :e R :^: idx N, path N p /\ (path_image N p c= s /\ (pathfinish N p = pathstart N p /\ a :e s)) -> homotopic_loops N s p (linepath N (a,a)).
Admitted.

// HOL Light: Multivariate/paths.ml:19183 / SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_SOME   (hash md5:08807529f2e8f51c32631cfea236daa6)
// not bridged: 
Theorem SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_SOME : forall N:set, N <> Empty -> forall s c= R :^: idx N, simply_connected N s <-> path_connected N s /\ forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> path N p /\ (path_image N p c= s /\ pathfinish N p = pathstart N p) -> exists a :e R :^: idx N, a :e s /\ homotopic_loops N s p (linepath N (a,a)).
Admitted.

// HOL Light: Multivariate/paths.ml:19203 / SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_ALL   (hash md5:3f359fc3f2967cebdec14dddfab98e58)
// not bridged: 
Theorem SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_ALL : forall N:set, N <> Empty -> forall s c= R :^: idx N, simply_connected N s <-> s = Empty \/ exists a :e R :^: idx N, a :e s /\ forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> path N p /\ (path_image N p c= s /\ pathfinish N p = pathstart N p) -> homotopic_loops N s p (linepath N (a,a)).
Admitted.

// HOL Light: Multivariate/paths.ml:19236 / SIMPLY_CONNECTED_EQ_CONTRACTIBLE_PATH   (hash md5:1434e50858616211c37588f52aba874d)
// not bridged: 
Theorem SIMPLY_CONNECTED_EQ_CONTRACTIBLE_PATH : forall N:set, N <> Empty -> forall s c= R :^: idx N, simply_connected N s <-> path_connected N s /\ forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> path N p /\ (path_image N p c= s /\ pathfinish N p = pathstart N p) -> homotopic_paths N s p (linepath N (pathstart N p,pathstart N p)).
Admitted.

// HOL Light: Multivariate/paths.ml:19262 / SIMPLY_CONNECTED_EQ_HOMOTOPIC_PATHS   (hash md5:4255451640f99fb8e30d2f62d1aaf27c)
// not bridged: 
Theorem SIMPLY_CONNECTED_EQ_HOMOTOPIC_PATHS : forall N:set, N <> Empty -> forall s c= R :^: idx N, simply_connected N s <-> path_connected N s /\ forall p:set -> set, (forall x :e R :^: idx 1, p x :e R :^: idx N) -> forall q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx N) -> path N p /\ (path_image N p c= s /\ (path N q /\ (path_image N q c= s /\ (pathstart N q = pathstart N p /\ pathfinish N q = pathfinish N p)))) -> homotopic_paths N s p q.
Admitted.

// HOL Light: Multivariate/paths.ml:19309 / SIMPLY_CONNECTED_RETRACTION_GEN   (hash md5:0f3aa54930dcc3feda59e42d573874a4)
// not bridged: 
Theorem SIMPLY_CONNECTED_RETRACTION_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall k:set -> set, (forall x :e R :^: idx N, k x :e R :^: idx M) -> continuous_on_hl M N h s /\ ({h x | x :e s} = t /\ (continuous_on_hl N M k t /\ ({k x | x :e t} c= s /\ ((forall y :e R :^: idx N, y :e t -> h (k y) = y) /\ simply_connected M s)))) -> simply_connected N t.
Admitted.

// HOL Light: Multivariate/paths.ml:19327 / HOMEOMORPHIC_SIMPLY_CONNECTED   (hash md5:b8cd19013b994c671a1ec1a1a287c9f4)
// not bridged: 
Theorem HOMEOMORPHIC_SIMPLY_CONNECTED : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t /\ simply_connected M s -> simply_connected N t.
Admitted.

// HOL Light: Multivariate/paths.ml:19338 / HOMEOMORPHIC_SIMPLY_CONNECTED_EQ   (hash md5:ddd8723c76c0bce5449ba3fe967d4c29)
// not bridged: 
Theorem HOMEOMORPHIC_SIMPLY_CONNECTED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t -> (simply_connected M s <-> simply_connected N t).
Admitted.

// HOL Light: Multivariate/paths.ml:19347 / SIMPLY_CONNECTED_TRANSLATION   (hash md5:5264b6f0a0a15e4e1788744f01f81cb2)
// not bridged: 
Theorem SIMPLY_CONNECTED_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, simply_connected N {vector_add N a x | x :e s} <-> simply_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:19355 / SIMPLY_CONNECTED_INJECTIVE_LINEAR_IMAGE   (hash md5:bea7d5a32ca2a1d62f363366f5846588)
// not bridged: 
Theorem SIMPLY_CONNECTED_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (simply_connected N {f x | x :e s} <-> simply_connected M s).
Admitted.

// HOL Light: Multivariate/paths.ml:19365 / HOMEOMORPHISM_SIMPLE_CONNECTEDNESS   (hash md5:631971690e235214b227d84daead98e1)
// not bridged: 
Theorem HOMEOMORPHISM_SIMPLE_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall g :e R :^: idx M :^: (R :^: idx N), forall s c= R :^: idx M, forall t c= R :^: idx N, forall k c= R :^: idx M, homeomorphism M N (s,t) (f,g) /\ k c= s -> (simply_connected N {f x | x :e k} <-> simply_connected M k).
Admitted.

// HOL Light: Multivariate/paths.ml:19376 / SIMPLY_CONNECTED_PCROSS   (hash md5:ce681df535dafdd8f4e7ccf3b2cbb729)
// not bridged: 
Theorem SIMPLY_CONNECTED_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, simply_connected M s /\ simply_connected N t -> simply_connected (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/paths.ml:19411 / SIMPLY_CONNECTED_PCROSS_EQ   (hash md5:4416cb5bc7fd2e70ac7964823e4dd952)
// not bridged: 
Theorem SIMPLY_CONNECTED_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, simply_connected (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ simply_connected M s /\ simply_connected N t).
Admitted.

// HOL Light: Multivariate/paths.ml:19474 / SIMPLY_CONNECTED_NESTED_UNIONS   (hash md5:e443e92e61917abb05443886c65d55f1)
// not bridged: 
Theorem SIMPLY_CONNECTED_NESTED_UNIONS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (forall s c= R :^: idx N, s :e f -> open N s /\ simply_connected N s) /\ (forall s t c= R :^: idx N, s :e f /\ t :e f -> s c= t \/ t c= s) -> simply_connected N (Union f).
Admitted.

// HOL Light: Multivariate/paths.ml:19511 / fundamental_group   (hash md5:c1e98549943d913d208a3514f5f427d7)
// not bridged: 
Theorem fundamental_group_thm : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, fundamental_group N (s,a) = {{x :e R :^: idx N :^: (R :^: idx 1) | homotopic_paths N s (fun x0:set => p x0) (fun x0:set => x x0)} | p :e R :^: idx N :^: (R :^: idx 1), path N (fun x:set => p x) /\ (path_image N (fun x:set => p x) c= s /\ (pathstart N (fun x:set => p x) = a /\ pathfinish N (fun x:set => p x) = a))}.
Admitted.

// HOL Light: Multivariate/paths.ml:19516 / FUNDAMENTAL_GROUP_EQ_EMPTY   (hash md5:d31a7eef0d0e3207011fdb355f7149cb)
// not bridged: 
Theorem FUNDAMENTAL_GROUP_EQ_EMPTY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, fundamental_group N (s,a) = Empty <-> ~ a :e s.
Admitted.

// HOL Light: Multivariate/paths.ml:19527 / CARD_EQ_FUNDAMENTAL_GROUPS_BASEPOINTS   (hash md5:2643858fd5be9ebc24902e21f078d2aa)
// not bridged: 
Theorem CARD_EQ_FUNDAMENTAL_GROUPS_BASEPOINTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, path_connected N s /\ (a :e s /\ b :e s) -> equip (fundamental_group N (s,a)) (fundamental_group N (s,b)).
Admitted.

// HOL Light: Multivariate/paths.ml:19585 / SIMPLY_CONNECTED_FUNDAMENTAL_GROUP   (hash md5:6ad1027d5b0354fd1a276a9ed38fe47c)
// not bridged: 
Theorem SIMPLY_CONNECTED_FUNDAMENTAL_GROUP : forall N:set, N <> Empty -> forall s c= R :^: idx N, simply_connected N s <-> path_connected N s /\ forall a :e R :^: idx N, a :e s -> fundamental_group N (s,a) = {{x :e R :^: idx N :^: (R :^: idx 1) | homotopic_paths N s (linepath N (a,a)) (fun x0:set => x x0)}}.
Admitted.

// HOL Light: Multivariate/paths.ml:19616 / FUNDAMENTAL_GROUP_SIMPLY_CONNECTED   (hash md5:c03f0d631fdaadacb09954b9a3924ebc)
// not bridged: 
Theorem FUNDAMENTAL_GROUP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, simply_connected N s /\ a :e s -> fundamental_group N (s,a) = {{x :e R :^: idx N :^: (R :^: idx 1) | homotopic_paths N s (linepath N (a,a)) (fun x0:set => x x0)}}.
Admitted.

// HOL Light: Multivariate/paths.ml:19629 / NULLHOMOTOPIC_FROM_SPHERE_EXTENSION   (hash md5:bdc1b68ab9f3708ad0093532841fab3b)
// not bridged: 
Theorem NULLHOMOTOPIC_FROM_SPHERE_EXTENSION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx N, forall a :e R :^: idx M, forall r :e R, (exists c :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) (sphere M (a,r)),subtopology (R :^: idx N) (euclidean N) s) f (fun x:set => c)) <-> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ (continuous_on_hl M N g (cball M (a,r)) /\ ({g x | x :e cball M (a,r)} c= s /\ forall x :e R :^: idx M, x :e sphere M (a,r) -> g x = f x)).
Admitted.

// HOL Light: Multivariate/paths.ml:19857 / homotopy_equivalent   (hash md5:7d43c6c76b35fd4bfc4dbdbb03f5eed5)
// not bridged: 
Theorem homotopy_equivalent_thm : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopy_equivalent M N s t <-> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl N M g t /\ ({g x | x :e t} c= s /\ (homotopic_with (R :^: idx M) (R :^: idx M) {x :e R :^: idx M :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx M) (euclidean M) s) (fun x:set => g (f x)) (fun x:set => x) /\ homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx N) (euclidean N) t) (fun x:set => f (g x)) (fun x:set => x)))))).
Admitted.

// HOL Light: Multivariate/paths.ml:19866 / HOMOTOPY_EQUIVALENT_SPACE_EUCLIDEAN   (hash md5:944271742a026183005925ff0401e766)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_SPACE_EUCLIDEAN : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopy_equivalent_space (R :^: idx M) (R :^: idx N) (subtopology (R :^: idx M) (euclidean M) s) (subtopology (R :^: idx N) (euclidean N) t) <-> homotopy_equivalent M N s t.
Admitted.

// HOL Light: Multivariate/paths.ml:19874 / HOMOTOPY_EQUIVALENT   (hash md5:2a1f8f245ca9680d45bec00b118a5b7f)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopy_equivalent M N s t <-> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ exists h:set -> set, (forall x :e R :^: idx N, h x :e R :^: idx M) /\ (continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl N M g t /\ ({g x | x :e t} c= s /\ (continuous_on_hl N M h t /\ ({h x | x :e t} c= s /\ (homotopic_with (R :^: idx M) (R :^: idx M) {x :e R :^: idx M :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx M) (euclidean M) s) (fun x:set => g (f x)) (fun x:set => x) /\ homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx N) (euclidean N) t) (fun x:set => f (h x)) (fun x:set => x)))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:19910 / HOMEOMORPHIC_IMP_HOMOTOPY_EQUIVALENT   (hash md5:602dc34bd4901df571b5bc2d4d40c7e0)
// not bridged: 
Theorem HOMEOMORPHIC_IMP_HOMOTOPY_EQUIVALENT : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t -> homotopy_equivalent M N s t.
Admitted.

// HOL Light: Multivariate/paths.ml:19917 / HOMOTOPY_EQUIVALENT_REFL   (hash md5:bc6e1daac758cf585b0c0402c8f40d51)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_REFL : forall N:set, N <> Empty -> forall s c= R :^: idx N, homotopy_equivalent N N s s.
Admitted.

// HOL Light: Multivariate/paths.ml:19921 / HOMOTOPY_EQUIVALENT_SYM   (hash md5:9439b5ac5521b4e8a83fa9f5f7d997ef)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_SYM : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopy_equivalent M N s t <-> homotopy_equivalent N M t s.
Admitted.

// HOL Light: Multivariate/paths.ml:19927 / HOMOTOPY_EQUIVALENT_TRANS   (hash md5:7605a2304098d1de86e9f9d82cd6316b)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_TRANS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, homotopy_equivalent M N s t /\ homotopy_equivalent N P t u -> homotopy_equivalent M P s u.
Admitted.

// HOL Light: Multivariate/paths.ml:19934 / HOMOTOPY_EQUIVALENT_PCROSS   (hash md5:94ca9de8deb7e6aab684505d4f558a3a)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_PCROSS : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall s' c= R :^: idx P, forall t' c= R :^: idx Q, homotopy_equivalent M P s s' /\ homotopy_equivalent N Q t t' -> homotopy_equivalent (idx_n (dimindex M + dimindex N)) (idx_n (dimindex P + dimindex Q)) (\/_ x :e s, {pastecart M N x y | y :e t}) (\/_ x :e s', {pastecart P Q x y | y :e t'}).
Admitted.

// HOL Light: Multivariate/paths.ml:19974 / HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_SELF   (hash md5:78ebfe3a1dbc55ce3e0a75bcc72328a6)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_SELF : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> homotopy_equivalent N M {f x | x :e s} s.
Admitted.

// HOL Light: Multivariate/paths.ml:19982 / HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_LEFT_EQ   (hash md5:0a1e0f78151d7db9de54830abbbf136c)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_LEFT_EQ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx A, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (homotopy_equivalent N A {f x | x :e s} t <-> homotopy_equivalent M A s t).
Admitted.

// HOL Light: Multivariate/paths.ml:19993 / HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_RIGHT_EQ   (hash md5:62ad5e686a50cd49e7d6d5208bb927a1)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_RIGHT_EQ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx A, forall t c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (homotopy_equivalent A N s {f x | x :e t} <-> homotopy_equivalent A M s t).
Admitted.

// HOL Light: Multivariate/paths.ml:20004 / HOMOTOPY_EQUIVALENT_TRANSLATION_SELF   (hash md5:355360009b6c8864c180a5146cf99dc1)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_TRANSLATION_SELF : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, homotopy_equivalent N N {vector_add N a x | x :e s} s.
Admitted.

// HOL Light: Multivariate/paths.ml:20009 / HOMOTOPY_EQUIVALENT_TRANSLATION_LEFT_EQ   (hash md5:5674b57004e17234cec6dd1bfd55e26d)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_TRANSLATION_LEFT_EQ : forall A N:set, A <> Empty -> N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, forall t c= R :^: idx A, homotopy_equivalent N A {vector_add N a x | x :e s} t <-> homotopy_equivalent N A s t.
Admitted.

// HOL Light: Multivariate/paths.ml:20015 / HOMOTOPY_EQUIVALENT_TRANSLATION_RIGHT_EQ   (hash md5:05038a3c883e673721415eef756a7eb9)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_TRANSLATION_RIGHT_EQ : forall A N:set, A <> Empty -> N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx A, forall t c= R :^: idx N, homotopy_equivalent A N s {vector_add N a x | x :e t} <-> homotopy_equivalent A N s t.
Admitted.

// HOL Light: Multivariate/paths.ml:20025 / HOMOTOPY_EQUIVALENT_HOMOTOPIC_TRIVIALITY   (hash md5:c28ce16aac5e3e8e4695226e356ecf1c)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_HOMOTOPIC_TRIVIALITY : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, homotopy_equivalent M N s t -> ((forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e R :^: idx P, g x :e R :^: idx M) -> continuous_on_hl P M f u /\ ({f x | x :e u} c= s /\ (continuous_on_hl P M g u /\ {g x | x :e u} c= s)) -> homotopic_with (R :^: idx M) (R :^: idx P) {x :e R :^: idx M :^: (R :^: idx P) | True} (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx M) (euclidean M) s) f g) <-> forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx P, g x :e R :^: idx N) -> continuous_on_hl P N f u /\ ({f x | x :e u} c= t /\ (continuous_on_hl P N g u /\ {g x | x :e u} c= t)) -> homotopic_with (R :^: idx N) (R :^: idx P) {x :e R :^: idx N :^: (R :^: idx P) | True} (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx N) (euclidean N) t) f g).
Admitted.

// HOL Light: Multivariate/paths.ml:20085 / HOMOTOPY_EQUIVALENT_COHOMOTOPIC_TRIVIALITY   (hash md5:55a7327fe8edd11769bba565e3d86c2f)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_COHOMOTOPIC_TRIVIALITY : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, homotopy_equivalent M N s t -> ((forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> continuous_on_hl M P f s /\ ({f x | x :e s} c= u /\ (continuous_on_hl M P g s /\ {g x | x :e s} c= u)) -> homotopic_with (R :^: idx P) (R :^: idx M) {x :e R :^: idx P :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx P) (euclidean P) u) f g) <-> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> continuous_on_hl N P f t /\ ({f x | x :e t} c= u /\ (continuous_on_hl N P g t /\ {g x | x :e t} c= u)) -> homotopic_with (R :^: idx P) (R :^: idx N) {x :e R :^: idx P :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx P) (euclidean P) u) f g).
Admitted.

// HOL Light: Multivariate/paths.ml:20143 / HOMOTOPY_EQUIVALENT_HOMOTOPIC_TRIVIALITY_NULL   (hash md5:d541be0d137584fdc3fcacba3b740349)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_HOMOTOPIC_TRIVIALITY_NULL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, homotopy_equivalent M N s t -> ((forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx M) -> continuous_on_hl P M f u /\ {f x | x :e u} c= s -> exists c :e R :^: idx M, homotopic_with (R :^: idx M) (R :^: idx P) {x :e R :^: idx M :^: (R :^: idx P) | True} (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx M) (euclidean M) s) f (fun x:set => c)) <-> forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> continuous_on_hl P N f u /\ {f x | x :e u} c= t -> exists c :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx P) {x :e R :^: idx N :^: (R :^: idx P) | True} (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx N) (euclidean N) t) f (fun x:set => c)).
Admitted.

// HOL Light: Multivariate/paths.ml:20195 / HOMOTOPY_EQUIVALENT_COHOMOTOPIC_TRIVIALITY_NULL   (hash md5:0327626fa9f3905c704c0a163b321387)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_COHOMOTOPIC_TRIVIALITY_NULL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, homotopy_equivalent M N s t -> ((forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx P) -> continuous_on_hl M P f s /\ {f x | x :e s} c= u -> exists c :e R :^: idx P, homotopic_with (R :^: idx P) (R :^: idx M) {x :e R :^: idx P :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx P) (euclidean P) u) f (fun x:set => c)) <-> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> continuous_on_hl N P f t /\ {f x | x :e t} c= u -> exists c :e R :^: idx P, homotopic_with (R :^: idx P) (R :^: idx N) {x :e R :^: idx P :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx P) (euclidean P) u) f (fun x:set => c)).
Admitted.

// HOL Light: Multivariate/paths.ml:20244 / HOMOTOPIC_WITH_IMP_PATH_COMPONENT   (hash md5:f80cb6db63d8b9eb64b0b65f77e9232f)
// not bridged: 
Theorem HOMOTOPIC_WITH_IMP_PATH_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall a :e R :^: idx M, homotopic_with (R :^: idx N) (R :^: idx M) {x :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f g /\ a :e s -> path_component N t (f a) (g a).
Admitted.

// HOL Light: Multivariate/paths.ml:20276 / HOMOTOPY_INVARIANT_CARD_COMPONENTS   (hash md5:9464119bad1904d41617bb2fe4455c2a)
// not bridged: 
Theorem HOMOTOPY_INVARIANT_CARD_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl N M g t /\ ({g x | x :e t} c= s /\ homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx N) (euclidean N) t) (fun x:set => f (g x)) (fun x:set => x)))) -> atleastp (components N t) (components M s).
Admitted.

// HOL Light: Multivariate/paths.ml:20327 / HOMOTOPY_INVARIANT_CONNECTEDNESS   (hash md5:7c4598c12f8c4f22768a994f9106da12)
// not bridged: 
Theorem HOMOTOPY_INVARIANT_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl N M g t /\ ({g x | x :e t} c= s /\ (homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx N) (euclidean N) t) (fun x:set => f (g x)) (fun x:set => x) /\ connected M s)))) -> connected N t.
Admitted.

// HOL Light: Multivariate/paths.ml:20347 / HOMOTOPY_EQUIVALENT_CONNECTEDNESS   (hash md5:c1df46b806ae1769bf169f560490758b)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopy_equivalent M N s t -> (connected M s <-> connected N t).
Admitted.

// HOL Light: Multivariate/paths.ml:20355 / HOMOTOPY_EQUIVALENT_CARD_EQ_COMPONENTS   (hash md5:214c5d71d8a5877c0fd66ab22b7b324f)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_CARD_EQ_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopy_equivalent M N s t -> equip (components M s) (components N t).
Admitted.

// HOL Light: Multivariate/paths.ml:20362 / HOMEOMORPHIC_CARD_EQ_COMPONENTS   (hash md5:013786cf95c9e7b09c788db6927bac3b)
// not bridged: 
Theorem HOMEOMORPHIC_CARD_EQ_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t -> equip (components M s) (components N t).
Admitted.

// HOL Light: Multivariate/paths.ml:20370 / HOMOTOPY_INVARIANT_CARD_PATH_COMPONENTS   (hash md5:0dcf1cb0b358a66d80947df53074951b)
// not bridged: 
Theorem HOMOTOPY_INVARIANT_CARD_PATH_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl N M g t /\ ({g x | x :e t} c= s /\ homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx N) (euclidean N) t) (fun x:set => f (g x)) (fun x:set => x)))) -> atleastp {{x0 :e R :^: idx N | path_component N t x x0} | x :e R :^: idx N, x :e t} {{x0 :e R :^: idx M | path_component M s x x0} | x :e R :^: idx M, x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:20424 / HOMOTOPY_INVARIANT_PATH_CONNECTEDNESS   (hash md5:135293dc0352481d4f56eb6de5fc0294)
// not bridged: 
Theorem HOMOTOPY_INVARIANT_PATH_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl N M g t /\ ({g x | x :e t} c= s /\ (homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) t,subtopology (R :^: idx N) (euclidean N) t) (fun x:set => f (g x)) (fun x:set => x) /\ path_connected M s)))) -> path_connected N t.
Admitted.

// HOL Light: Multivariate/paths.ml:20461 / HOMOTOPY_EQUIVALENT_PATH_CONNECTEDNESS   (hash md5:8c4d22315fe5fea7453523d11a0482fe)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_PATH_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopy_equivalent M N s t -> (path_connected M s <-> path_connected N t).
Admitted.

// HOL Light: Multivariate/paths.ml:20469 / HOMOTOPY_EQUIVALENT_CARD_EQ_PATH_COMPONENTS   (hash md5:47e8ba4d2e22b0a31a241ae3e05e602d)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_CARD_EQ_PATH_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopy_equivalent M N s t -> equip {{x0 :e R :^: idx M | path_component M s x x0} | x :e R :^: idx M, x :e s} {{x0 :e R :^: idx N | path_component N t x x0} | x :e R :^: idx N, x :e t}.
Admitted.

// HOL Light: Multivariate/paths.ml:20478 / HOMEOMORPHIC_CARD_EQ_PATH_COMPONENTS   (hash md5:6cae5e241e1a013653b330befccd7fca)
// not bridged: 
Theorem HOMEOMORPHIC_CARD_EQ_PATH_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t -> equip {{x0 :e R :^: idx M | path_component M s x x0} | x :e R :^: idx M, x :e s} {{x0 :e R :^: idx N | path_component N t x x0} | x :e R :^: idx N, x :e t}.
Admitted.

// HOL Light: Multivariate/paths.ml:20488 / FINITE_COMPONENTS_PUNCTURED_CONVEX   (hash md5:75987552ca15cf4e11d9935203de1bfe)
// not bridged: 
Theorem FINITE_COMPONENTS_PUNCTURED_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, convex N s -> finite (components N (s :\: {a})).
Admitted.

// HOL Light: Multivariate/paths.ml:20549 / contractible   (hash md5:47ddb9ea405bbc60b5e4d6768287eeb9)
// not bridged: 
Theorem contractible_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, contractible A s <-> exists a :e R :^: idx A, homotopic_with (R :^: idx A) (R :^: idx A) {x :e R :^: idx A :^: (R :^: idx A) | True} (subtopology (R :^: idx A) (euclidean A) s,subtopology (R :^: idx A) (euclidean A) s) (fun x:set => x) (fun x:set => a).
Admitted.

// HOL Light: Multivariate/paths.ml:20554 / CONTRACTIBLE_SPACE_EUCLIDEAN   (hash md5:b3482337cb22d7204ce5c10a7a0a1e29)
// not bridged: 
Theorem CONTRACTIBLE_SPACE_EUCLIDEAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, contractible_space (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) <-> contractible N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20559 / CONTRACTIBLE_IMP_SIMPLY_CONNECTED   (hash md5:2a83e3f240d510d9e30a63ce74fc37b3)
// not bridged: 
Theorem CONTRACTIBLE_IMP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, contractible N s -> simply_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20594 / CONTRACTIBLE_IMP_CONNECTED   (hash md5:27cc9157d0685d1054833cd1d79817c2)
// not bridged: 
Theorem CONTRACTIBLE_IMP_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, contractible N s -> connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20599 / CONTRACTIBLE_IMP_PATH_CONNECTED   (hash md5:59784ecdf24cc7dea48bcd0127a7501c)
// not bridged: 
Theorem CONTRACTIBLE_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, contractible N s -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20604 / NULLHOMOTOPIC_THROUGH_CONTRACTIBLE   (hash md5:fe3fcdf92c3601470009564c01e2b259)
// not bridged: 
Theorem NULLHOMOTOPIC_THROUGH_CONTRACTIBLE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl N P g t /\ ({g x | x :e t} c= u /\ contractible N t))) -> exists c :e R :^: idx P, homotopic_with (R :^: idx P) (R :^: idx M) {h :e R :^: idx P :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx P) (euclidean P) u) (fun x:set => g (f x)) (fun x:set => c).
Admitted.

// HOL Light: Multivariate/paths.ml:20618 / NULLHOMOTOPIC_INTO_CONTRACTIBLE   (hash md5:c86fc11ef4814d00a9c2e5956a166db7)
// not bridged: 
Theorem NULLHOMOTOPIC_INTO_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ contractible N t) -> exists c :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx M) {h :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f (fun x:set => c).
Admitted.

// HOL Light: Multivariate/paths.ml:20630 / NULLHOMOTOPIC_FROM_CONTRACTIBLE   (hash md5:c7d3691359f81b2c1704e4a5090f7cfa)
// not bridged: 
Theorem NULLHOMOTOPIC_FROM_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ contractible M s) -> exists c :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx M) {h :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f (fun x:set => c).
Admitted.

// HOL Light: Multivariate/paths.ml:20642 / HOMOTOPIC_THROUGH_CONTRACTIBLE   (hash md5:34dcffc59f7123ad7da66142cdb6bc90)
// not bridged: 
Theorem HOMOTOPIC_THROUGH_CONTRACTIBLE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f1:set -> set, (forall x :e R :^: idx M, f1 x :e R :^: idx N) -> forall g1:set -> set, (forall x :e R :^: idx N, g1 x :e R :^: idx P) -> forall f2:set -> set, (forall x :e R :^: idx M, f2 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx N, g2 x :e R :^: idx P) -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall u c= R :^: idx P, continuous_on_hl M N f1 s /\ ({f1 x | x :e s} c= t /\ (continuous_on_hl N P g1 t /\ ({g1 x | x :e t} c= u /\ (continuous_on_hl M N f2 s /\ ({f2 x | x :e s} c= t /\ (continuous_on_hl N P g2 t /\ ({g2 x | x :e t} c= u /\ (contractible N t /\ path_connected P u)))))))) -> homotopic_with (R :^: idx P) (R :^: idx M) {h :e R :^: idx P :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx P) (euclidean P) u) (fun x:set => g1 (f1 x)) (fun x:set => g2 (f2 x)).
Admitted.

// HOL Light: Multivariate/paths.ml:20658 / HOMOTOPIC_INTO_CONTRACTIBLE   (hash md5:e572ed21feb971bcf8b407b817dfad70)
// not bridged: 
Theorem HOMOTOPIC_INTO_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl M N g s /\ ({g x | x :e s} c= t /\ contractible N t))) -> homotopic_with (R :^: idx N) (R :^: idx M) {h :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f g.
Admitted.

// HOL Light: Multivariate/paths.ml:20668 / HOMOTOPIC_FROM_CONTRACTIBLE   (hash md5:93a7ee986250bbb43dce678b01bf7181)
// not bridged: 
Theorem HOMOTOPIC_FROM_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (continuous_on_hl M N g s /\ ({g x | x :e s} c= t /\ (contractible M s /\ path_connected N t)))) -> homotopic_with (R :^: idx N) (R :^: idx M) {h :e R :^: idx N :^: (R :^: idx M) | True} (subtopology (R :^: idx M) (euclidean M) s,subtopology (R :^: idx N) (euclidean N) t) f g.
Admitted.

// HOL Light: Multivariate/paths.ml:20679 / HOMOTOPY_EQUIVALENT_CONTRACTIBLE_SETS   (hash md5:016efe5b9f853593b18709bf7ee1f6b2)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_CONTRACTIBLE_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, contractible M s /\ (contractible N t /\ (s = Empty <-> t = Empty)) -> homotopy_equivalent M N s t.
Admitted.

// HOL Light: Multivariate/paths.ml:20699 / STARLIKE_IMP_CONTRACTIBLE_GEN   (hash md5:315bc00f9d7e22c27747b449e4f370e6)
// not bridged: 
Theorem STARLIKE_IMP_CONTRACTIBLE_GEN : forall N:set, N <> Empty -> forall P c= R :^: idx N :^: (R :^: idx N), forall s c= R :^: idx N, (forall a :e R :^: idx N, forall t :e R, a :e s /\ (0 <= t /\ t <= 1) -> (fun x :e R :^: idx N => vector_add N (vector_mul N (1 + - t) x) (vector_mul N t a)) :e P) /\ starlike N s -> exists a :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx N) P (subtopology (R :^: idx N) (euclidean N) s,subtopology (R :^: idx N) (euclidean N) s) (fun x:set => x) (fun x:set => a).
Admitted.

// HOL Light: Multivariate/paths.ml:20722 / STARLIKE_IMP_CONTRACTIBLE   (hash md5:2d7b6f9b546aa2af68a7343cfd09ccc0)
// not bridged: 
Theorem STARLIKE_IMP_CONTRACTIBLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, starlike N s -> contractible N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20726 / CONTRACTIBLE_UNIV   (hash md5:ec3f3e77645c810c493646d07408c1f9)
// not bridged: 
Theorem CONTRACTIBLE_UNIV : forall N:set, N <> Empty -> contractible N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/paths.ml:20730 / STARLIKE_IMP_SIMPLY_CONNECTED   (hash md5:5f0bce38684d58c2c18362f25e28562e)
// not bridged: 
Theorem STARLIKE_IMP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, starlike N s -> simply_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20735 / CONVEX_IMP_SIMPLY_CONNECTED   (hash md5:d6303dc3a88fc51b2601d4b9c254066f)
// not bridged: 
Theorem CONVEX_IMP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> simply_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20740 / STARLIKE_IMP_PATH_CONNECTED   (hash md5:81088e26b4c56d12f96ba736c815da69)
// not bridged: 
Theorem STARLIKE_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, starlike N s -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20745 / STARLIKE_IMP_CONNECTED   (hash md5:2fbc6212f1ec0a0f0f01d4b8bdfd813c)
// not bridged: 
Theorem STARLIKE_IMP_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, starlike N s -> connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20749 / CONIC_IMP_PATH_CONNECTED   (hash md5:0ecd256b1718b8a39e8207d9410b3362)
// not bridged: 
Theorem CONIC_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s -> path_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20754 / CONIC_IMP_CONNECTED   (hash md5:4f5e9363174157bd9e3de61cd1a2ae8a)
// not bridged: 
Theorem CONIC_IMP_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s -> connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20758 / IS_INTERVAL_SIMPLY_CONNECTED_1   (hash md5:1438852811914c9c669ecbce5cd2840f)
// not bridged: 
Theorem IS_INTERVAL_SIMPLY_CONNECTED_1 : forall s c= R :^: idx 1, is_interval 1 s <-> simply_connected 1 s.
Admitted.

// HOL Light: Multivariate/paths.ml:20763 / CONTRACTIBLE_EMPTY   (hash md5:695d2cb03a5d6c02195249a0cf8977e8)
// not bridged: 
Theorem CONTRACTIBLE_EMPTY : forall A:set, A <> Empty -> contractible A Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:20769 / CONIC_IMP_CONTRACTIBLE   (hash md5:26043ef0784eb0c964f297a6b4fd433f)
// not bridged: 
Theorem CONIC_IMP_CONTRACTIBLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s -> contractible N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20774 / CONIC_IMP_SIMPLY_CONNECTED   (hash md5:7d9f74654d5a3eced74258d463f4e75c)
// not bridged: 
Theorem CONIC_IMP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s c= R :^: idx N, conic N s -> simply_connected N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20778 / CONTRACTIBLE_CONVEX_TWEAK_BOUNDARY_POINTS   (hash md5:8cb6fa5d721f4dbb3f66ea82e9daaad6)
// not bridged: 
Theorem CONTRACTIBLE_CONVEX_TWEAK_BOUNDARY_POINTS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, convex N s /\ (relative_interior N s c= t /\ t c= closure N s) -> contractible N t.
Admitted.

// HOL Light: Multivariate/paths.ml:20787 / CONVEX_IMP_CONTRACTIBLE   (hash md5:86c5d862f58b1801bcfa3baf0fd6dd3c)
// not bridged: 
Theorem CONVEX_IMP_CONTRACTIBLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> contractible N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20792 / CONTRACTIBLE_SING   (hash md5:9816341689625d443f53c6feecc9690d)
// not bridged: 
Theorem CONTRACTIBLE_SING : forall N:set, N <> Empty -> forall a :e R :^: idx N, contractible N {a}.
Admitted.

// HOL Light: Multivariate/paths.ml:20796 / SIMPLY_CONNECTED_SING   (hash md5:d72d9d83aa070b9275f5cd9c85341485)
// not bridged: 
Theorem SIMPLY_CONNECTED_SING : forall N:set, N <> Empty -> forall a :e R :^: idx N, simply_connected N {a}.
Admitted.

// HOL Light: Multivariate/paths.ml:20800 / IS_INTERVAL_CONTRACTIBLE_1   (hash md5:47d554162f67ab00530ae6bedf9c7178)
// not bridged: 
Theorem IS_INTERVAL_CONTRACTIBLE_1 : forall s c= R :^: idx 1, is_interval 1 s <-> contractible 1 s.
Admitted.

// HOL Light: Multivariate/paths.ml:20805 / CONTRACTIBLE_PCROSS   (hash md5:2a0bc765967de016755d27bc11dd77dd)
// not bridged: 
Theorem CONTRACTIBLE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, contractible M s /\ contractible N t -> contractible (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/paths.ml:20834 / CONTRACTIBLE_PCROSS_EQ   (hash md5:3e7cb196c0f76873d5dde723d2f56859)
// not bridged: 
Theorem CONTRACTIBLE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, contractible (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ contractible M s /\ contractible N t).
Admitted.

// HOL Light: Multivariate/paths.ml:20880 / HOMOTOPY_EQUIVALENT_EMPTY   (hash md5:0e04b5d203557c6ae159b324abedd154)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_EMPTY : forall M N:set, M <> Empty -> N <> Empty -> (forall s c= R :^: idx M, homotopy_equivalent M N s Empty <-> s = Empty) /\ forall t c= R :^: idx N, homotopy_equivalent M N Empty t <-> t = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:20887 / HOMOTOPY_EQUIVALENT_CONTRACTIBILITY   (hash md5:8ff059ef1c5c91695236f5068f8ababd)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_CONTRACTIBILITY : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homotopy_equivalent M N s t -> (contractible M s <-> contractible N t).
Admitted.

// HOL Light: Multivariate/paths.ml:20894 / HOMOTOPY_EQUIVALENT_SING   (hash md5:a3ef9c591f5089f24deeb5b0975cc4ce)
// not bridged: 
Theorem HOMOTOPY_EQUIVALENT_SING : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall a :e R :^: idx N, homotopy_equivalent M N s {a} <-> ~ s = Empty /\ contractible M s.
Admitted.

// HOL Light: Multivariate/paths.ml:20905 / HOMEOMORPHIC_CONTRACTIBLE_EQ   (hash md5:a79bbbbf38ff1a7da1e4a06213d4e530)
// not bridged: 
Theorem HOMEOMORPHIC_CONTRACTIBLE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t -> (contractible M s <-> contractible N t).
Admitted.

// HOL Light: Multivariate/paths.ml:20911 / HOMEOMORPHIC_CONTRACTIBLE   (hash md5:0d672fdc3afdc33426f2ba849fb98784)
// not bridged: 
Theorem HOMEOMORPHIC_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t /\ contractible M s -> contractible N t.
Admitted.

// HOL Light: Multivariate/paths.ml:20916 / CONTRACTIBLE_TRANSLATION   (hash md5:6c7d70568b8db233414c6bf3a06e2f9b)
// not bridged: 
Theorem CONTRACTIBLE_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, contractible N {vector_add N a x | x :e s} <-> contractible N s.
Admitted.

// HOL Light: Multivariate/paths.ml:20924 / CONTRACTIBLE_INJECTIVE_LINEAR_IMAGE   (hash md5:28e6beab91aa3c94630b36c5e5221fcd)
// not bridged: 
Theorem CONTRACTIBLE_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (contractible N {f x | x :e s} <-> contractible M s).
Admitted.

// HOL Light: Multivariate/paths.ml:20934 / HOMEOMORPHISM_CONTRACTIBILITY   (hash md5:eedf5f9d155877bd7e8c82e9e3d8fe5a)
// not bridged: 
Theorem HOMEOMORPHISM_CONTRACTIBILITY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall g :e R :^: idx M :^: (R :^: idx N), forall s c= R :^: idx M, forall t c= R :^: idx N, forall k c= R :^: idx M, homeomorphism M N (s,t) (f,g) /\ k c= s -> (contractible N {f x | x :e k} <-> contractible M k).
Admitted.

// HOL Light: Multivariate/paths.ml:20949 / HOMEOMORPHIC_PUNCTURED_AFFINE_SPHERE_AFFINE   (hash md5:622060bc9b421942645f5a13eabc71a5)
// not bridged: 
Theorem HOMEOMORPHIC_PUNCTURED_AFFINE_SPHERE_AFFINE : forall M N:set, M <> Empty -> N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall b :e R :^: idx N, forall t c= R :^: idx N, forall p c= R :^: idx M, 0 < r /\ (b :e sphere N (a,r) /\ (affine N t /\ (a :e t /\ (b :e t /\ (affine M p /\ aff_dim N t = aff_dim M p + 1))))) -> homeomorphic M N (sphere N (a,r) :/\: t :\: {b}) p.
Admitted.

// HOL Light: Multivariate/paths.ml:21119 / HOMEOMORPHIC_PUNCTURED_SPHERE_AFFINE_GEN   (hash md5:67cd27d1d7371da2d25089c445cf9e2a)
// not bridged: 
Theorem HOMEOMORPHIC_PUNCTURED_SPHERE_AFFINE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall t c= R :^: idx M, forall a :e R :^: idx N, convex N s /\ (bounded_hl N s /\ (a :e relative_frontier N s /\ (affine M t /\ aff_dim N s = aff_dim M t + 1))) -> homeomorphic M N (relative_frontier N s :\: {a}) t.
Admitted.

// HOL Light: Multivariate/paths.ml:21170 / HOMEOMORPHIC_PUNCTURED_SPHERE_AFFINE   (hash md5:cc1aea9756d9f58b19db2bab02268d3e)
// not bridged: 
Theorem HOMEOMORPHIC_PUNCTURED_SPHERE_AFFINE : forall M N:set, M <> Empty -> N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall b :e R :^: idx N, forall t c= R :^: idx M, 0 < r /\ (b :e sphere N (a,r) /\ (affine M t /\ aff_dim M t + 1 = dimindex N)) -> homeomorphic M N (sphere N (a,r) :\: {b}) t.
Admitted.

// HOL Light: Multivariate/paths.ml:21180 / HOMEOMORPHIC_PUNCTURED_SPHERE_HYPERPLANE   (hash md5:d53b632da08613fb036aca18207fbaa7)
// not bridged: 
Theorem HOMEOMORPHIC_PUNCTURED_SPHERE_HYPERPLANE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall b c :e R :^: idx N, forall d :e R, 0 < r /\ (b :e sphere N (a,r) /\ ~ c = vec N 0) -> homeomorphic N N (sphere N (a,r) :\: {b}) {x :e R :^: idx N | dot N c x = d}.
Admitted.

// HOL Light: Multivariate/paths.ml:21188 / HOMEOMORPHIC_PUNCTURED_SPHERE_UNIV   (hash md5:5b171d60f9aabefd7edb82e6bc48123e)
// not bridged: 
Theorem HOMEOMORPHIC_PUNCTURED_SPHERE_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall b :e R :^: idx N, 0 < r /\ (b :e sphere N (a,r) /\ dimindex N = dimindex M + 1) -> homeomorphic M N (sphere N (a,r) :\: {b}) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/paths.ml:21197 / CONTRACTIBLE_PUNCTURED_SPHERE   (hash md5:078e6f99145952d14e7738ab47317b36)
// not bridged: 
Theorem CONTRACTIBLE_PUNCTURED_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall b :e R :^: idx N, 0 < r /\ b :e sphere N (a,r) -> contractible N (sphere N (a,r) :\: {b}).
Admitted.

// HOL Light: Multivariate/paths.ml:21208 / CONTRACTIBLE_PUNCTURED_SPHERE_GEN   (hash md5:c2b2a267fae9483e58537e0dd7350eea)
// not bridged: 
Theorem CONTRACTIBLE_PUNCTURED_SPHERE_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, convex N s /\ (bounded_hl N s /\ a :e relative_frontier N s) -> contractible N (relative_frontier N s :\: {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:21226 / NULLHOMOTOPIC_NONSURJECTIVE_SPHERE_MAP_GEN   (hash md5:f68068b04eac321e970d5c6af4b72fe0)
// not bridged: 
Theorem NULLHOMOTOPIC_NONSURJECTIVE_SPHERE_MAP_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, convex N s /\ (bounded_hl N s /\ (continuous_on_hl N N f (relative_frontier N s) /\ ({f x | x :e relative_frontier N s} c= relative_frontier N s /\ {f x | x :e relative_frontier N s} <> relative_frontier N s))) -> exists a :e R :^: idx N, homotopic_with (R :^: idx N) (R :^: idx N) {x :e R :^: idx N :^: (R :^: idx N) | True} (subtopology (R :^: idx N) (euclidean N) (relative_frontier N s),subtopology (R :^: idx N) (euclidean N) (relative_frontier N s)) f (fun x:set => a).
Admitted.

// HOL Light: Multivariate/paths.ml:21247 / CONNECTED_PUNCTURED_SPHERE   (hash md5:24ce052b557286a09ad055bc03152db4)
// not bridged: 
Theorem CONNECTED_PUNCTURED_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, forall b :e R :^: idx N, connected N (sphere N (a,r) :\: {b}) <-> dimindex N = 1 /\ 0 < r -> b :e sphere N (a,r).
Admitted.

// HOL Light: Multivariate/paths.ml:21288 / CONNECTED_IN_SPHERE_DELETE_INTERIOR_POINT_EQ   (hash md5:828170e0602a62e2efaba781514bfd8b)
// not bridged: 
Theorem CONNECTED_IN_SPHERE_DELETE_INTERIOR_POINT_EQ : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall r :e R, forall u s c= R :^: idx N, 3 <= dimindex N /\ (u :e subtopology (R :^: idx N) (euclidean N) (sphere N (a,r)) /\ (b :e u /\ (u c= s /\ s c= sphere N (a,r)))) -> (connected N (s :\: {b}) <-> connected N s).
Admitted.

// HOL Light: Multivariate/paths.ml:21358 / CONNECTED_OPEN_IN_SPHERE_DELETE_EQ   (hash md5:f119f0fa0376eb04ae674934b06e9c9e)
// not bridged: 
Theorem CONNECTED_OPEN_IN_SPHERE_DELETE_EQ : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall r :e R, forall s c= R :^: idx N, 3 <= dimindex N /\ s :e subtopology (R :^: idx N) (euclidean N) (sphere N (a,r)) -> (connected N (s :\: {b}) <-> connected N s).
Admitted.

// HOL Light: Multivariate/paths.ml:21370 / FINITE_COMPONENTS_PUNCTURED_CONNECTED_SUBSET_SPHERE   (hash md5:5379d5ac848a84912d5748b175f2a8ea)
// not bridged: 
Theorem FINITE_COMPONENTS_PUNCTURED_CONNECTED_SUBSET_SPHERE : forall N:set, N <> Empty -> forall r :e R, forall s c= R :^: idx N, forall a b :e R :^: idx N, connected N s /\ (s c= sphere N (a,r) /\ b :e interior_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) (sphere N (a,r))) s) -> finite (components N (s :\: {b})).
Admitted.

// HOL Light: Multivariate/paths.ml:21437 / CARD_EQ_COMPONENTS_IN_COMPACTIFICATION   (hash md5:61a7277ca6f39d97476beb5b6a65b756)
// not bridged: 
Theorem CARD_EQ_COMPONENTS_IN_COMPACTIFICATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx M :^: (R :^: idx N), forall g :e R :^: idx N :^: (R :^: idx M), forall a :e R :^: idx N, forall r :e R, forall s c= R :^: idx N, forall z :e R :^: idx N, homeomorphism N M (sphere N (a,r) :\: {z},R :^: idx M) (f,g) /\ (s c= sphere N (a,r) /\ (z :e sphere N (a,r) /\ ~ z :e closure N s)) -> equip (components N (sphere N (a,r) :\: s)) ({1} :+: {c :e Power (R :^: idx M) | c :e components M ((R :^: idx M) :\: {f x | x :e s}) /\ bounded_hl M c}).
Admitted.

// HOL Light: Multivariate/paths.ml:21608 / CONNECTED_COMPLEMENT_SUBSET_SIMPLE_PATH_IMAGE   (hash md5:f9bfe68fa3add5b314beea6b9d25d415)
// not bridged: 
Theorem CONNECTED_COMPLEMENT_SUBSET_SIMPLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, simple_path N g /\ (pathfinish N g = pathstart N g /\ s c= path_image N g) -> (connected N (path_image N g :\: s) <-> connected N s).
Admitted.

// HOL Light: Multivariate/paths.ml:21646 / CONNECTED_COMPLEMENT_SUBSET_CIRCLE   (hash md5:f21c3434ca6801fd19d089f305d230f0)
// not bridged: 
Theorem CONNECTED_COMPLEMENT_SUBSET_CIRCLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, dimindex N = 2 /\ s c= sphere N (a,r) -> (connected N (sphere N (a,r) :\: s) <-> connected N s).
Admitted.

// HOL Light: Multivariate/paths.ml:21676 / HOMEOMORPHIC_CLOSED_IN_CONVEX   (hash md5:dfa4221ff42f360a8adae49157b766e1)
// not bridged: 
Theorem HOMEOMORPHIC_CLOSED_IN_CONVEX : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, aff_dim M s < dimindex N -> exists u t c= R :^: idx N, convex N u /\ (~ u = Empty /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) t /\ homeomorphic N M s t)).
Admitted.

// HOL Light: Multivariate/paths.ml:21746 / LOCALLY_COMPACT_HOMEOMORPHIC_CLOSED   (hash md5:4841e57552bfa92c04594d757ae8872c)
// not bridged: 
Theorem LOCALLY_COMPACT_HOMEOMORPHIC_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, locally M {x :e Power (R :^: idx M) | compact M x} s /\ dimindex M < dimindex N -> exists t c= R :^: idx N, closed N t /\ homeomorphic N M s t.
Admitted.

// HOL Light: Multivariate/paths.ml:21795 / SIMPLY_CONNECTED_UNION   (hash md5:82f6248003fdfa6f7a9e80edf8af2ed5)
// not bridged: 
Theorem SIMPLY_CONNECTED_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s :e subtopology (R :^: idx N) (euclidean N) (s :\/: t) /\ (t :e subtopology (R :^: idx N) (euclidean N) (s :\/: t) /\ (simply_connected N s /\ (simply_connected N t /\ (path_connected N (s :/\: t) /\ ~ s :/\: t = Empty)))) -> simply_connected N (s :\/: t).
Admitted.

// HOL Light: Multivariate/paths.ml:22067 / dimension   (hash md5:7dbb632d322c1c777665903d0fc41b0e)
// not bridged: 
Theorem dimension_thm : forall N:set, N <> Empty -> forall s c= R :^: idx N, dimension N s = if s = Empty then - 1 else choose_in omega (fun n:set => dimension_le (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) n /\ forall m :e omega, dimension_le (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) m -> n <= m).
Admitted.

// HOL Light: Multivariate/paths.ml:22072 / DIMENSION_GE   (hash md5:2316da65683b8c662eba1dc336ecce2d)
// not bridged: 
Theorem DIMENSION_GE : forall N:set, N <> Empty -> forall s c= R :^: idx N, - 1 <= dimension N s.
Admitted.

// HOL Light: Multivariate/paths.ml:22076 / DIMENSION_LE_IMP_GE   (hash md5:a367ec78c478028b69c6491d3a718587)
// not bridged: 
Theorem DIMENSION_LE_IMP_GE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, dimension N s <= n -> - 1 <= n.
Admitted.

// HOL Light: Multivariate/paths.ml:22345 / DIMENSION_TRANSLATION   (hash md5:3e3fed6d92d505317a2d2ed93f660865)
// not bridged: 
Theorem DIMENSION_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, dimension N {vector_add N a x | x :e s} = dimension N s.
Admitted.

// HOL Light: Multivariate/paths.ml:22352 / DIMENSION_LINEAR_IMAGE   (hash md5:152e80d800f509d58e0cd336ec31b161)
// not bridged: 
Theorem DIMENSION_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> dimension N {f x | x :e s} = dimension M s.
Admitted.

// HOL Light: Multivariate/paths.ml:22362 / DIMENSION_LE_DIMINDEX   (hash md5:9be6a34dd6584e49e33e1f19ea1ba4ea)
// not bridged: 
Theorem DIMENSION_LE_DIMINDEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, dimension N s <= dimindex N.
Admitted.

// HOL Light: Multivariate/paths.ml:22366 / DIMENSION_LE_MINUS1   (hash md5:379516997593c7ac944a4bd2dee0c4c2)
// not bridged: 
Theorem DIMENSION_LE_MINUS1 : forall N:set, N <> Empty -> forall s c= R :^: idx N, dimension N s <= - 1 <-> s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:22371 / DIMENSION_EQ_MINUS1   (hash md5:c57ce1f326503f0e846dab98b90f89a3)
// not bridged: 
Theorem DIMENSION_EQ_MINUS1 : forall N:set, N <> Empty -> forall s c= R :^: idx N, dimension N s = - 1 <-> s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:22375 / DIMENSION_POS_LE   (hash md5:0de33438161255cfcc2fa26940080bd3)
// not bridged: 
Theorem DIMENSION_POS_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, 0 <= dimension N s <-> ~ s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:22380 / DIMENSION_EMPTY   (hash md5:4792327544465d4e4a8d8168e9a3794b)
// not bridged: 
Theorem DIMENSION_EMPTY : forall A:set, A <> Empty -> dimension A Empty = - 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22384 / DIMENSION_SUBSET   (hash md5:aa6434f9d19e2a081f3bbdfd2254b3a5)
// not bridged: 
Theorem DIMENSION_SUBSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t -> dimension N s <= dimension N t.
Admitted.

// HOL Light: Multivariate/paths.ml:22390 / DIMENSION_LE_DISCRETE   (hash md5:7ce08fa46c88e067ddf7fc2d7a3ec5f5)
// not bridged: 
Theorem DIMENSION_LE_DISCRETE : forall N:set, N <> Empty -> forall s c= R :^: idx N, {x :e R :^: idx N | limit_point_of N x s} = Empty -> dimension N s <= 0.
Admitted.

// HOL Light: Multivariate/paths.ml:22398 / DIMENSION_EQ_ZERO_DISCRETE   (hash md5:c25848b56dafd117c45a6f9a6e7bf8c1)
// not bridged: 
Theorem DIMENSION_EQ_ZERO_DISCRETE : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ s = Empty /\ {x :e R :^: idx N | limit_point_of N x s} = Empty -> dimension N s = 0.
Admitted.

// HOL Light: Multivariate/paths.ml:22403 / DIMENSION_EQ_DISCRETE   (hash md5:7f474285970a44c8a2b0fc91d0575571)
// not bridged: 
Theorem DIMENSION_EQ_DISCRETE : forall N:set, N <> Empty -> forall s c= R :^: idx N, {x :e R :^: idx N | limit_point_of N x s} = Empty -> dimension N s = if s = Empty then - 1 else 0.
Admitted.

// HOL Light: Multivariate/paths.ml:22410 / DIMENSION_LE_EQ_ALT   (hash md5:cbe0145142c3e58f8ae983c081817d4f)
// not bridged: 
Theorem DIMENSION_LE_EQ_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, dimension N s <= n <-> - 1 <= n /\ forall v c= R :^: idx N, forall a :e R :^: idx N, open N v /\ (a :e v /\ a :e s) -> exists u c= R :^: idx N, a :e u /\ (u c= v /\ (open N u /\ dimension N (frontier_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) (s :/\: u)) <= n + - 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:22422 / DIMENSION_LE_EQ_LOCAL   (hash md5:0b0af61b07f95d4cf04ca10aac3b11a9)
// not bridged: 
Theorem DIMENSION_LE_EQ_LOCAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, dimension N s <= n <-> - 1 <= n /\ forall v c= R :^: idx N, forall a :e R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) s /\ a :e v -> exists u c= R :^: idx N, a :e u /\ (u c= v /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ dimension N (frontier_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) u) <= n + - 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:22438 / DIMENSION_LE_EQ_GENERAL   (hash md5:e74871080663523f4fa1c5023e9e9a77)
// not bridged: 
Theorem DIMENSION_LE_EQ_GENERAL : forall N:set, N <> Empty -> forall t s c= R :^: idx N, forall n :e int, s c= t -> (dimension N s <= n <-> - 1 <= n /\ forall v c= R :^: idx N, forall a :e R :^: idx N, v :e subtopology (R :^: idx N) (euclidean N) t /\ (a :e v /\ a :e s) -> exists u c= R :^: idx N, a :e u /\ (u c= v /\ (u :e subtopology (R :^: idx N) (euclidean N) t /\ dimension N (s :/\: frontier_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) t) u) <= n + - 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:22493 / DIMENSION_LE_EQ_LOCALLY   (hash md5:b897d7e5de575d8fa8040d7ee219f3f9)
// not bridged: 
Theorem DIMENSION_LE_EQ_LOCALLY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, dimension N s <= n <-> - 1 <= n /\ locally N {u :e Power (R :^: idx N) | u :e subtopology (R :^: idx N) (euclidean N) s /\ dimension N (frontier_of (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) u) <= n + - 1} s.
Admitted.

// HOL Light: Multivariate/paths.ml:22504 / LOCALLY_OPEN_AND_DIMENSION_LE   (hash md5:b174549b0994a9919c9fc923c04a522a)
// not bridged: 
Theorem LOCALLY_OPEN_AND_DIMENSION_LE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall n :e int, dimension A s <= n <-> - 1 <= n /\ locally A {u :e Power (R :^: idx A) | u :e subtopology (R :^: idx A) (euclidean A) s /\ dimension A u <= n} s.
Admitted.

// HOL Light: Multivariate/paths.ml:22516 / DIMENSION_EQ_ON_NBDS   (hash md5:96c458805f7216d38ea442c20e557443)
// not bridged: 
Theorem DIMENSION_EQ_ON_NBDS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, ~ s = Empty /\ (forall x :e R :^: idx N, x :e s -> exists u v c= R :^: idx N, x :e u /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ (u c= v /\ (v c= s /\ dimension N v = n)))) -> dimension N s = n.
Admitted.

// HOL Light: Multivariate/paths.ml:22543 / LOCALLY_DIMENSION_EQ   (hash md5:928494c2075db942700d6190706811bc)
// not bridged: 
Theorem LOCALLY_DIMENSION_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, ~ s = Empty /\ locally N {u :e Power (R :^: idx N) | dimension N u = n} s -> dimension N s = n.
Admitted.

// HOL Light: Multivariate/paths.ml:22552 / DIMENSION_EQ_ON_OPEN_SUBSETS   (hash md5:bcb0b2e6dc4679582247cbaa547800e9)
// not bridged: 
Theorem DIMENSION_EQ_ON_OPEN_SUBSETS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, ~ s = Empty /\ (forall x :e R :^: idx N, x :e s -> exists u c= R :^: idx N, x :e u /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ dimension N u = n)) -> dimension N s = n.
Admitted.

// HOL Light: Multivariate/paths.ml:22562 / DIMENSION_EQ_LOCALLY_CLOPEN   (hash md5:8e8578e1e05dc6c84aa772435ce7a338)
// not bridged: 
Theorem DIMENSION_EQ_LOCALLY_CLOPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, dimension N s <= 0 <-> locally N {u :e Power (R :^: idx N) | closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) u /\ u :e subtopology (R :^: idx N) (euclidean N) s} s.
Admitted.

// HOL Light: Multivariate/paths.ml:22571 / SMALL_INDUCTIVE_DIMENSION   (hash md5:3204d121a413b2590eb57cf1c0c17b91)
// not bridged: 
Theorem SMALL_INDUCTIVE_DIMENSION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, dimension N s <= n <-> - 1 <= n /\ forall c c= R :^: idx N, forall a :e R :^: idx N, a :e s /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) c /\ ~ a :e c) -> exists b c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) b /\ (dimension N b <= n + - 1 /\ exists u v c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (v :e subtopology (R :^: idx N) (euclidean N) s /\ (u :/\: v = Empty /\ (u :\/: v = s :\: b /\ (a :e u /\ c c= v))))).
Admitted.

// HOL Light: Multivariate/paths.ml:22641 / SMALL_IMP_DIMENSION_LE_0   (hash md5:1e13f22e0f2ddd3572bad5abe2259b3d)
// not bridged: 
Theorem SMALL_IMP_DIMENSION_LE_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, atleastp s R /\ ~ equip s R -> dimension N s <= 0.
Admitted.

// HOL Light: Multivariate/paths.ml:22674 / COUNTABLE_IMP_DIMENSION_LE_0   (hash md5:0626f0c1e05ecb1f7226ebc4dc8e5248)
// not bridged: 
Theorem COUNTABLE_IMP_DIMENSION_LE_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, countable s -> dimension N s <= 0.
Admitted.

// HOL Light: Multivariate/paths.ml:22678 / FINITE_IMP_DIMENSION_LE_0   (hash md5:0f1b741ff77f20f4ea67e1f1716f1bb5)
// not bridged: 
Theorem FINITE_IMP_DIMENSION_LE_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> dimension N s <= 0.
Admitted.

// HOL Light: Multivariate/paths.ml:22682 / DIMENSION_SING   (hash md5:35f72a2c4d24be67122ec75239ffabf6)
// not bridged: 
Theorem DIMENSION_SING : forall N:set, N <> Empty -> forall a :e R :^: idx N, dimension N {a} = 0.
Admitted.

// HOL Light: Multivariate/paths.ml:22689 / CONNECTED_DIMENSION_EQ_SING   (hash md5:caed6d0738b640f8ccdbc6c77a79f1cc)
// not bridged: 
Theorem CONNECTED_DIMENSION_EQ_SING : forall N:set, N <> Empty -> forall s c= R :^: idx N, connected N s -> (dimension N s = 0 <-> exists a :e R :^: idx N, s = {a}).
Admitted.

// HOL Light: Multivariate/paths.ml:22716 / DIMENSION_SUBSET_EXISTS   (hash md5:139a60835eb74a410d3dc5e2334b1345)
// not bridged: 
Theorem DIMENSION_SUBSET_EXISTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, - 1 <= n /\ n <= dimension N s -> exists t c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) t /\ (t c= s /\ dimension N t = n).
Admitted.

// HOL Light: Multivariate/paths.ml:22781 / DIMENSION_UNION_LE_BASIC   (hash md5:b38ce557dbd43ab3d059fa098847367b)
// not bridged: 
Theorem DIMENSION_UNION_LE_BASIC : forall N:set, N <> Empty -> forall s t c= R :^: idx N, dimension N (s :\/: t) <= dimension N s + dimension N t + 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22832 / DIMENSION_ZERO_REDUCTION_THEOREM   (hash md5:4880c6a9a7a562989e1d0741157a3fe4)
// not bridged: 
Theorem DIMENSION_ZERO_REDUCTION_THEOREM : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall v :e Power (R :^: idx N) :^: omega, dimension N s <= 0 /\ (forall n :e omega, v n :e subtopology (R :^: idx N) (euclidean N) s) -> exists u :e Power (R :^: idx N) :^: omega, (forall n :e omega, u n :e subtopology (R :^: idx N) (euclidean N) s) /\ ((forall n :e omega, u n c= v n) /\ ((forall x y :e omega, x <> y -> u x :/\: u y = Empty) /\ Union {u n | n :e omega, n :e omega} = Union {v n | n :e omega, n :e omega})).
Admitted.

// HOL Light: Multivariate/paths.ml:22858 / DIMENSION_ZERO_REDUCTION_THEOREM_2   (hash md5:2079ce1be98fdfca93a366cc85dddc35)
// not bridged: 
Theorem DIMENSION_ZERO_REDUCTION_THEOREM_2 : forall N:set, N <> Empty -> forall u s t c= R :^: idx N, dimension N u <= 0 /\ (s :e subtopology (R :^: idx N) (euclidean N) u /\ t :e subtopology (R :^: idx N) (euclidean N) u) -> exists s' t' c= R :^: idx N, s' :e subtopology (R :^: idx N) (euclidean N) u /\ (t' :e subtopology (R :^: idx N) (euclidean N) u /\ (s' c= s /\ (t' c= t /\ (s' :/\: t' = Empty /\ s' :\/: t' = s :\/: t)))).
Admitted.

// HOL Light: Multivariate/paths.ml:22883 / DIMENSION_ZERO_SEPARATION_THEOREM   (hash md5:fcc743534ebfc0b079528bf1f5644b9a)
// not bridged: 
Theorem DIMENSION_ZERO_SEPARATION_THEOREM : forall N:set, N <> Empty -> forall u s t c= R :^: idx N, dimension N u <= 0 /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) t /\ s :/\: t = Empty)) -> exists s' t' c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s' /\ (s' :e subtopology (R :^: idx N) (euclidean N) u /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) t' /\ (t' :e subtopology (R :^: idx N) (euclidean N) u /\ (s c= s' /\ (t c= t' /\ (s' :/\: t' = Empty /\ s' :\/: t' = u)))))).
Admitted.

// HOL Light: Multivariate/paths.ml:22909 / DIMENSION_DECOMPOSITION   (hash md5:eb388dda5e4339f56ba4bd8641d67034)
// not bridged: 
Theorem DIMENSION_DECOMPOSITION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, 0 <= n -> (dimension N s <= n <-> exists t u c= R :^: idx N, t :\/: u = s /\ (t :/\: u = Empty /\ (t :e relative_to (R :^: idx N) {x :e Power (R :^: idx N) | fsigma N x} s /\ (dimension N t <= n + - 1 /\ dimension N u <= 0)))).
Admitted.

// HOL Light: Multivariate/paths.ml:22909 / DIMENSION_LE_CLOSED_IN_UNIONS   (hash md5:53ae6853e0cf47d5ee85c9dea9fd12d8)
// not bridged: 
Theorem DIMENSION_LE_CLOSED_IN_UNIONS : forall N:set, N <> Empty -> forall u c= R :^: idx N, forall c c= Power (R :^: idx N), forall n :e int, - 1 <= n /\ (countable c /\ (forall s c= R :^: idx N, s :e c -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ dimension N s <= n)) -> dimension N (Union c) <= n.
Admitted.

// HOL Light: Multivariate/paths.ml:23251 / DIMENSION_LE_UNIONS_RELATIVE   (hash md5:bac4702b8eb1df57d8d4e3fc1cd2c879)
// not bridged: 
Theorem DIMENSION_LE_UNIONS_RELATIVE : forall N:set, N <> Empty -> forall u c= R :^: idx N, forall c c= Power (R :^: idx N), forall n :e int, - 1 <= n /\ (countable c /\ (forall s c= R :^: idx N, s :e c -> s :e relative_to (R :^: idx N) {x :e Power (R :^: idx N) | fsigma N x} u /\ dimension N s <= n)) -> dimension N (Union c) <= n.
Admitted.

// HOL Light: Multivariate/paths.ml:23279 / DIMENSION_LE_UNIONS   (hash md5:914960790fc946b761aaabd7f4d5145a)
// not bridged: 
Theorem DIMENSION_LE_UNIONS : forall N:set, N <> Empty -> forall c c= Power (R :^: idx N), forall n :e int, - 1 <= n /\ (countable c /\ (forall s c= R :^: idx N, s :e c -> fsigma N s /\ dimension N s <= n)) -> dimension N (Union c) <= n.
Admitted.

// HOL Light: Multivariate/paths.ml:23289 / DIMENSION_LE_UNION_RELATIVE   (hash md5:54f867af2fc8e0e638e72a732904b15f)
// not bridged: 
Theorem DIMENSION_LE_UNION_RELATIVE : forall N:set, N <> Empty -> forall u s t c= R :^: idx N, forall n :e int, s :e relative_to (R :^: idx N) {x :e Power (R :^: idx N) | fsigma N x} u /\ (t :e relative_to (R :^: idx N) {x :e Power (R :^: idx N) | fsigma N x} u /\ (dimension N s <= n /\ dimension N t <= n)) -> dimension N (s :\/: t) <= n.
Admitted.

// HOL Light: Multivariate/paths.ml:23301 / DIMENSION_LE_UNION   (hash md5:bf1ba4d399ce4049dbaf9fc5f1689200)
// not bridged: 
Theorem DIMENSION_LE_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall n :e int, fsigma N s /\ (fsigma N t /\ (dimension N s <= n /\ dimension N t <= n)) -> dimension N (s :\/: t) <= n.
Admitted.

// HOL Light: Multivariate/paths.ml:23308 / DIMENSION_LE_UNION_RELATIVE_GEN   (hash md5:863eeca1a0188c111f4d64842196ba4c)
// not bridged: 
Theorem DIMENSION_LE_UNION_RELATIVE_GEN : forall N:set, N <> Empty -> forall u s t c= R :^: idx N, forall n :e int, (s :e relative_to (R :^: idx N) {x :e Power (R :^: idx N) | fsigma N x} u /\ (s :e relative_to (R :^: idx N) {x :e Power (R :^: idx N) | gdelta N x} u /\ t c= u) \/ t :e relative_to (R :^: idx N) {x :e Power (R :^: idx N) | fsigma N x} u /\ (t :e relative_to (R :^: idx N) {x :e Power (R :^: idx N) | gdelta N x} u /\ s c= u)) /\ (dimension N s <= n /\ dimension N t <= n) -> dimension N (s :\/: t) <= n.
Admitted.

// HOL Light: Multivariate/paths.ml:23340 / DIMENSION_LE_UNION_GEN   (hash md5:54ebcd402c0f9362b9daa8743a0bab9f)
// not bridged: 
Theorem DIMENSION_LE_UNION_GEN : forall N:set, N <> Empty -> forall n :e int, forall s t c= R :^: idx N, (fsigma N s /\ gdelta N s \/ fsigma N t /\ gdelta N t) /\ (dimension N s <= n /\ dimension N t <= n) -> dimension N (s :\/: t) <= n.
Admitted.

// HOL Light: Multivariate/paths.ml:23350 / DIMENSION_LE_UNION_CLOSED_IN   (hash md5:a93549c8e4936b5294eba94c1b7210ac)
// not bridged: 
Theorem DIMENSION_LE_UNION_CLOSED_IN : forall N:set, N <> Empty -> forall u s t c= R :^: idx N, forall n :e int, (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) s /\ t c= u \/ closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) u) t /\ s c= u) /\ (dimension N s <= n /\ dimension N t <= n) -> dimension N (s :\/: t) <= n.
Admitted.

// HOL Light: Multivariate/paths.ml:23361 / DIMENSION_LE_UNIONS_ZERODIMENSIONAL   (hash md5:568329c85fb13b1da95cbb09ff8a22e6)
// not bridged: 
Theorem DIMENSION_LE_UNIONS_ZERODIMENSIONAL : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), finite f /\ (forall s c= R :^: idx N, s :e f -> dimension N s <= 0) -> dimension N (Union f) <= finite_cardinality f + - 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23378 / DIMENSION_LE_UNIONS_ZERODIMENSIONAL_EQ   (hash md5:c9329486d64c037dc92d172d5e97296c)
// not bridged: 
Theorem DIMENSION_LE_UNIONS_ZERODIMENSIONAL_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, dimension N s <= n <-> exists f c= Power (R :^: idx N), finite f /\ (finite_cardinality f <= n + 1 /\ ((forall d c= R :^: idx N, d :e f -> dimension N d <= 0) /\ Union f = s)).
Admitted.

// HOL Light: Multivariate/paths.ml:23426 / DIMENSION_INSERT   (hash md5:6aff0b8f29781fc3176ae12c712bdbf5)
// not bridged: 
Theorem DIMENSION_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, dimension N (SetAdjoin s a) = if s = Empty then 0 else dimension N s.
Admitted.

// HOL Light: Multivariate/paths.ml:23436 / DIMENSION_DELETE   (hash md5:bdfdd6df0170cdb01da7170ea1d454c9)
// not bridged: 
Theorem DIMENSION_DELETE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, dimension N (s :\: {a}) = if s :\: {a} = Empty then - 1 else dimension N s.
Admitted.

// HOL Light: Multivariate/paths.ml:23446 / DIMENSION_LE_EQ_GEN   (hash md5:880029475b3e75cbde0c59e27dc275d4)
// not bridged: 
Theorem DIMENSION_LE_EQ_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, dimension N s <= n <-> (s = Empty -> - 1 <= n) /\ (~ s = Empty -> forall v c= R :^: idx N, forall a :e R :^: idx N, open N v /\ a :e v -> exists u c= R :^: idx N, a :e u /\ (u c= v /\ (open N u /\ dimension N (s :/\: frontier N u) <= n + - 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:23470 / DIMENSION_PCROSS_LE   (hash md5:61d911f1eefddb6d5806c2d7b4760dfa)
// not bridged: 
Theorem DIMENSION_PCROSS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, ~ (s = Empty /\ t = Empty) -> dimension (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <= dimension M s + dimension N t.
Admitted.

// HOL Light: Multivariate/paths.ml:23537 / DIMENSION_PCROSS_EQ_0   (hash md5:ef95ce56f84526f110b2ab7a263deea4)
// not bridged: 
Theorem DIMENSION_PCROSS_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, dimension (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) = 0 <-> dimension M s = 0 /\ dimension N t = 0.
Admitted.

// HOL Light: Multivariate/paths.ml:23578 / DIMENSION_SEPARATION_THEOREM   (hash md5:90adac121695367d8a9d4b5f22b203f9)
// not bridged: 
Theorem DIMENSION_SEPARATION_THEOREM : forall N:set, N <> Empty -> forall t s c= R :^: idx N, forall n :e int, forall c d c= R :^: idx N, 0 <= n /\ (s c= t /\ (dimension N s <= n /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) t) c /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) t) d /\ c :/\: d = Empty)))) -> exists b c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) t) b /\ (dimension N (b :/\: s) <= n + - 1 /\ exists u v c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) t /\ (v :e subtopology (R :^: idx N) (euclidean N) t /\ (u :/\: v = Empty /\ (u :\/: v = t :\: b /\ (c c= u /\ d c= v))))).
Admitted.

// HOL Light: Multivariate/paths.ml:23715 / LARGE_INDUCTIVE_DIMENSION   (hash md5:f251bc22f3a18fb7ab2960d5d85ecf51)
// not bridged: 
Theorem LARGE_INDUCTIVE_DIMENSION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, dimension N s <= n <-> (s = Empty -> - 1 <= n) /\ (~ s = Empty -> forall c d c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) c /\ (closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) d /\ c :/\: d = Empty) -> exists b c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) b /\ (dimension N b <= n + - 1 /\ exists u v c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (v :e subtopology (R :^: idx N) (euclidean N) s /\ (u :/\: v = Empty /\ (u :\/: v = s :\: b /\ (c c= u /\ d c= v)))))).
Admitted.

// HOL Light: Multivariate/paths.ml:23748 / TINY_INDUCTIVE_DIMENSION   (hash md5:a1b57f0928d458d91e9bb6b5076f2390)
// not bridged: 
Theorem TINY_INDUCTIVE_DIMENSION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e int, locally N {x :e Power (R :^: idx N) | compact N x} s -> (dimension N s <= n <-> (s = Empty -> - 1 <= n) /\ (~ s = Empty -> 0 <= n /\ forall x y :e R :^: idx N, x :e s /\ (y :e s /\ ~ x = y) -> exists b c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) b /\ (dimension N b <= n + - 1 /\ exists u v c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (v :e subtopology (R :^: idx N) (euclidean N) s /\ (u :/\: v = Empty /\ (u :\/: v = s :\: b /\ (x :e u /\ y :e v))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:23907 / DIMENSION_LE_RATIONAL_COORDINATES   (hash md5:1d541aa2d169c09cf0e5f792039f0eed)
// not bridged: 
Theorem DIMENSION_LE_RATIONAL_COORDINATES : forall N:set, N <> Empty -> forall n :e omega, dimension N {x :e R :^: idx N | equip {i :e omega | i :e idx N /\ x i :e rational} n} <= 0.
Admitted.

// HOL Light: Multivariate/paths.ml:24006 / DIMENSION_EXACTLY_RATIONAL_COORDINATES   (hash md5:6d2b0ba73a83852bc3d6230e9ee32489)
// not bridged: 
Theorem DIMENSION_EXACTLY_RATIONAL_COORDINATES : forall N:set, N <> Empty -> forall n :e omega, 1 <= n /\ n <= dimindex N -> dimension N {x :e R :^: idx N | equip {i :e omega | i :e idx N /\ x i :e rational} n} = 0.
Admitted.

// HOL Light: Multivariate/paths.ml:24029 / covering_space   (hash md5:324a9821dde4802e418715d13bdcc1e9)
// not bridged: 
Theorem covering_space_thm : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall c c= R :^: idx M, forall p :e R :^: idx N :^: (R :^: idx M), covering_space M N (c,p) s <-> continuous_on_hl M N (fun x:set => p x) c /\ ({p x | x :e c} = s /\ forall x :e R :^: idx N, x :e s -> exists t c= R :^: idx N, x :e t /\ (t :e subtopology (R :^: idx N) (euclidean N) s /\ exists v c= Power (R :^: idx M), Union v = {x0 :e R :^: idx M | x0 :e c /\ p x0 :e t} /\ ((forall u c= R :^: idx M, u :e v -> u :e subtopology (R :^: idx M) (euclidean M) c) /\ ((forall x y :e v, x <> y -> x :/\: y = Empty) /\ forall u c= R :^: idx M, u :e v -> exists q :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (u,t) (p,q))))).
Admitted.

// HOL Light: Multivariate/paths.ml:24039 / COVERING_SPACE_IMP_CONTINUOUS   (hash md5:24d158d0f86fb9dee8789ccfea92b246)
// not bridged: 
Theorem COVERING_SPACE_IMP_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> continuous_on_hl M N (fun x:set => p x) c.
Admitted.

// HOL Light: Multivariate/paths.ml:24043 / COVERING_SPACE_IMP_SURJECTIVE   (hash md5:b1ef7c36c017a3e8dc6cde2a316620ab)
// not bridged: 
Theorem COVERING_SPACE_IMP_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> {p x | x :e c} = s.
Admitted.

// HOL Light: Multivariate/paths.ml:24047 / HOMEOMORPHISM_IMP_COVERING_SPACE   (hash md5:135c34bf8bdd8895676f6fe05cb94c49)
// not bridged: 
Theorem HOMEOMORPHISM_IMP_COVERING_SPACE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall g :e R :^: idx M :^: (R :^: idx N), forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphism M N (s,t) (f,g) -> covering_space M N (s,f) t.
Admitted.

// HOL Light: Multivariate/paths.ml:24060 / COVERING_SPACE_LOCAL_HOMEOMORPHISM   (hash md5:a2676ceea445f638fcae7f81143a65fd)
// not bridged: 
Theorem COVERING_SPACE_LOCAL_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> forall x :e R :^: idx M, x :e c -> exists t c= R :^: idx M, exists u c= R :^: idx N, x :e t /\ (t :e subtopology (R :^: idx M) (euclidean M) c /\ (p x :e u /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ exists q :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (t,u) (p,q)))).
Admitted.

// HOL Light: Multivariate/paths.ml:24078 / COVERING_SPACE_LOCAL_HOMEOMORPHISM_ALT   (hash md5:e91ea2ea18ae9167f2b293caf3835632)
// not bridged: 
Theorem COVERING_SPACE_LOCAL_HOMEOMORPHISM_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> forall y :e R :^: idx N, y :e s -> exists x :e R :^: idx M, exists t c= R :^: idx M, exists u c= R :^: idx N, p x = y /\ (x :e t /\ (t :e subtopology (R :^: idx M) (euclidean M) c /\ (y :e u /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ exists q :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (t,u) (p,q))))).
Admitted.

// HOL Light: Multivariate/paths.ml:24095 / COVERING_SPACE_OPEN_MAP   (hash md5:4115ac81801d015ed3801cb040fb338b)
// not bridged: 
Theorem COVERING_SPACE_OPEN_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall t c= R :^: idx M, covering_space M N (c,p) s /\ t :e subtopology (R :^: idx M) (euclidean M) c -> {p x | x :e t} :e subtopology (R :^: idx N) (euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:24133 / COVERING_SPACE_QUOTIENT_MAP   (hash md5:8fa4b1851072ddbe7c1a52a19d698d5f)
// not bridged: 
Theorem COVERING_SPACE_QUOTIENT_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> forall u c= R :^: idx N, u c= s -> ({x :e R :^: idx M | x :e c /\ p x :e u} :e subtopology (R :^: idx M) (euclidean M) c <-> u :e subtopology (R :^: idx N) (euclidean N) s).
Admitted.

// HOL Light: Multivariate/paths.ml:24146 / COVERING_SPACE_LOCALIZED_HOMEOMORPHISM   (hash md5:c6fc425e9cf176dee15909bc1c342664)
// not bridged: 
Theorem COVERING_SPACE_LOCALIZED_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> forall w c= R :^: idx M, forall x :e R :^: idx M, x :e w /\ w :e subtopology (R :^: idx M) (euclidean M) c -> exists t c= R :^: idx M, exists u c= R :^: idx N, x :e t /\ (t :e subtopology (R :^: idx M) (euclidean M) c /\ (p x :e u /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ (t c= w /\ exists q :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (t,u) (p,q))))).
Admitted.

// HOL Light: Multivariate/paths.ml:24173 / COVERING_SPACE_LOCALIZED_HOMEOMORPHISM_ALT   (hash md5:1e55874f7894b52760921c052adc525f)
// not bridged: 
Theorem COVERING_SPACE_LOCALIZED_HOMEOMORPHISM_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> forall w c= R :^: idx N, forall y :e R :^: idx N, y :e w /\ w :e subtopology (R :^: idx N) (euclidean N) s -> exists x :e R :^: idx M, exists t c= R :^: idx M, exists u c= R :^: idx N, p x = y /\ (x :e t /\ (t :e subtopology (R :^: idx M) (euclidean M) c /\ (y :e u /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ (u c= w /\ exists q :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (t,u) (p,q)))))).
Admitted.

// HOL Light: Multivariate/paths.ml:24200 / COVERING_SPACE_LOCALLY_HOMEOMORPHIC   (hash md5:10f6cdbec6b8342ea288bd1ef9d10877)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY_HOMEOMORPHIC : forall M N:set, M <> Empty -> N <> Empty -> forall P c= Power (R :^: idx M), forall Q c= Power (R :^: idx N), forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ ((forall q :e R :^: idx M :^: (R :^: idx N), forall u c= R :^: idx M, forall v c= R :^: idx N, ~ u = Empty /\ (u c= c /\ (v c= s /\ (homeomorphism M N (u,v) (p,q) /\ u :e P))) -> v :e Q) /\ locally M P c) -> locally N Q s.
Admitted.

// HOL Light: Multivariate/paths.ml:24237 / COVERING_SPACE_LOCALLY_HOMEOMORPHIC_EQ   (hash md5:95e115078027d0a1b535ab2da4259264)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY_HOMEOMORPHIC_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall P c= Power (R :^: idx M), forall Q c= Power (R :^: idx N), forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ (forall q :e R :^: idx M :^: (R :^: idx N), forall u c= R :^: idx M, forall v c= R :^: idx N, ~ u = Empty /\ (u c= c /\ (v c= s /\ homeomorphism M N (u,v) (p,q))) -> (u :e P <-> v :e Q)) -> (locally M P c <-> locally N Q s).
Admitted.

// HOL Light: Multivariate/paths.ml:24280 / COVERING_SPACE_LOCALLY   (hash md5:8ae7b9beba39426bc3603848846672f0)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY : forall M N:set, M <> Empty -> N <> Empty -> forall P c= Power (R :^: idx M), forall Q c= Power (R :^: idx N), forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ ((forall t c= R :^: idx M, t c= c /\ t :e P -> {p x | x :e t} :e Q) /\ locally M P c) -> locally N Q s.
Admitted.

// HOL Light: Multivariate/paths.ml:24289 / COVERING_SPACE_LOCALLY_EQ   (hash md5:598df5ee9f81c548598c0f75a5731063)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall P c= Power (R :^: idx M), forall Q c= Power (R :^: idx N), forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ ((forall t c= R :^: idx M, t c= c /\ t :e P -> {p x | x :e t} :e Q) /\ (forall q:set -> set, (forall x :e R :^: idx N, q x :e R :^: idx M) -> forall u c= R :^: idx N, u c= s /\ (continuous_on_hl N M q u /\ u :e Q) -> {q x | x :e u} :e P)) -> (locally N Q s <-> locally M P c).
Admitted.

// HOL Light: Multivariate/paths.ml:24299 / COVERING_SPACE_LOCALLY_COMPACT_EQ   (hash md5:d7ffe82d6b364b16969cbc50dd8f459d)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY_COMPACT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> (locally N {x :e Power (R :^: idx N) | compact N x} s <-> locally M {x :e Power (R :^: idx M) | compact M x} c).
Admitted.

// HOL Light: Multivariate/paths.ml:24308 / COVERING_SPACE_LOCALLY_CONNECTED_EQ   (hash md5:3045b81ef30ee9291abb8b56085907dc)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY_CONNECTED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> (locally N {x :e Power (R :^: idx N) | connected N x} s <-> locally M {x :e Power (R :^: idx M) | connected M x} c).
Admitted.

// HOL Light: Multivariate/paths.ml:24317 / COVERING_SPACE_LOCALLY_PATH_CONNECTED_EQ   (hash md5:c50e3bde6f78a698509a1bafa12c8fc6)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY_PATH_CONNECTED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> (locally N {x :e Power (R :^: idx N) | path_connected N x} s <-> locally M {x :e Power (R :^: idx M) | path_connected M x} c).
Admitted.

// HOL Light: Multivariate/paths.ml:24326 / COVERING_SPACE_LOCALLY_COMPACT   (hash md5:40af38c14528118acbc7dbc557264df9)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ locally M {x :e Power (R :^: idx M) | compact M x} c -> locally N {x :e Power (R :^: idx N) | compact N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:24332 / COVERING_SPACE_LOCALLY_CONNECTED   (hash md5:b16c76f406aa747d558cdb9ba845ba35)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY_CONNECTED : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ locally M {x :e Power (R :^: idx M) | connected M x} c -> locally N {x :e Power (R :^: idx N) | connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:24337 / COVERING_SPACE_LOCALLY_PATH_CONNECTED   (hash md5:cc03da52da7086e49482628ce1eb459d)
// not bridged: 
Theorem COVERING_SPACE_LOCALLY_PATH_CONNECTED : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ locally M {x :e Power (R :^: idx M) | path_connected M x} c -> locally N {x :e Power (R :^: idx N) | path_connected N x} s.
Admitted.

// HOL Light: Multivariate/paths.ml:24343 / COVERING_SPACE_LIFT_UNIQUE_GEN   (hash md5:d44c120b4e43add0ca989646b7b117ab)
// not bridged: 
Theorem COVERING_SPACE_LIFT_UNIQUE_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> forall g1:set -> set, (forall x :e R :^: idx P, g1 x :e R :^: idx M) -> forall g2:set -> set, (forall x :e R :^: idx P, g2 x :e R :^: idx M) -> forall c c= R :^: idx M, forall s c= R :^: idx N, forall t u c= R :^: idx P, forall a x :e R :^: idx P, covering_space M N (c,p) s /\ (continuous_on_hl P N f t /\ ({f x | x :e t} c= s /\ (continuous_on_hl P M g1 t /\ ({g1 x | x :e t} c= c /\ ((forall x0 :e R :^: idx P, x0 :e t -> f x0 = p (g1 x0)) /\ (continuous_on_hl P M g2 t /\ ({g2 x | x :e t} c= c /\ ((forall x0 :e R :^: idx P, x0 :e t -> f x0 = p (g2 x0)) /\ (u :e components P t /\ (a :e u /\ (g1 a = g2 a /\ x :e u))))))))))) -> g1 x = g2 x.
Admitted.

// HOL Light: Multivariate/paths.ml:24390 / COVERING_SPACE_LIFT_UNIQUE   (hash md5:f8f2ad27b2c1b4dfc2b0fcc37bd50f2e)
// not bridged: 
Theorem COVERING_SPACE_LIFT_UNIQUE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> forall g1:set -> set, (forall x :e R :^: idx P, g1 x :e R :^: idx M) -> forall g2:set -> set, (forall x :e R :^: idx P, g2 x :e R :^: idx M) -> forall c c= R :^: idx M, forall s c= R :^: idx N, forall t c= R :^: idx P, forall a x :e R :^: idx P, covering_space M N (c,p) s /\ (continuous_on_hl P N f t /\ ({f x | x :e t} c= s /\ (continuous_on_hl P M g1 t /\ ({g1 x | x :e t} c= c /\ ((forall x0 :e R :^: idx P, x0 :e t -> f x0 = p (g1 x0)) /\ (continuous_on_hl P M g2 t /\ ({g2 x | x :e t} c= c /\ ((forall x0 :e R :^: idx P, x0 :e t -> f x0 = p (g2 x0)) /\ (connected P t /\ (a :e t /\ (g1 a = g2 a /\ x :e t))))))))))) -> g1 x = g2 x.
Admitted.

// HOL Light: Multivariate/paths.ml:24407 / COVERING_SPACE_LIFT_UNIQUE_IDENTITY   (hash md5:d1547d8ff951491e0d9844b147ef152e)
// not bridged: 
Theorem COVERING_SPACE_LIFT_UNIQUE_IDENTITY : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx M) -> forall s c= R :^: idx N, forall a :e R :^: idx M, covering_space M N (c,p) s /\ (path_connected M c /\ (continuous_on_hl M M f c /\ ({f x | x :e c} c= c /\ ((forall x :e R :^: idx M, x :e c -> p (f x) = p x) /\ (a :e c /\ f a = a))))) -> forall x :e R :^: idx M, x :e c -> f x = x.
Admitted.

// HOL Light: Multivariate/paths.ml:24440 / COVERING_SPACE_LIFT_HOMOTOPY   (hash md5:cb8bf6897058e6d9535988138daf90ef)
// not bridged: 
Theorem COVERING_SPACE_LIFT_HOMOTOPY : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall h:set -> set, (forall x :e R :^: idx_n (1 + dimindex P), h x :e R :^: idx N) -> forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx M) -> forall u c= R :^: idx P, covering_space M N (c,p) s /\ (continuous_on_hl (idx_n (1 + dimindex P)) N h (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 P x y | y :e u}) /\ ({h x | x :e \/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 P x y | y :e u}} c= s /\ ((forall y :e R :^: idx P, y :e u -> h (pastecart 1 P (vec 1 0) y) = p (f y)) /\ (continuous_on_hl P M f u /\ {f x | x :e u} c= c)))) -> exists k:set -> set, (forall x :e R :^: idx_n (1 + dimindex P), k x :e R :^: idx M) /\ (continuous_on_hl (idx_n (1 + dimindex P)) M k (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 P x y | y :e u}) /\ ({k x | x :e \/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 P x y | y :e u}} c= c /\ ((forall y :e R :^: idx P, y :e u -> k (pastecart 1 P (vec 1 0) y) = f y) /\ forall z :e R :^: idx_n (1 + dimindex P), z :e (\/_ x :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil), {pastecart 1 P x y | y :e u}) -> h z = p (k z)))).
Admitted.

// HOL Light: Multivariate/paths.ml:24926 / COVERING_SPACE_LIFT_HOMOTOPIC_FUNCTION   (hash md5:93c75c2019d2e1c24caf38a858648ea3)
// not bridged: 
Theorem COVERING_SPACE_LIFT_HOMOTOPIC_FUNCTION : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx P, f' x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx P, g x :e R :^: idx M) -> forall u c= R :^: idx P, covering_space M N (c,p) s /\ (continuous_on_hl P M g u /\ ({g x | x :e u} c= c /\ ((forall y :e R :^: idx P, y :e u -> p (g y) = f y) /\ homotopic_with (R :^: idx N) (R :^: idx P) {x :e R :^: idx N :^: (R :^: idx P) | True} (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx N) (euclidean N) s) f f'))) -> exists g':set -> set, (forall x :e R :^: idx P, g' x :e R :^: idx M) /\ (continuous_on_hl P M g' u /\ ({g' x | x :e u} c= c /\ forall y :e R :^: idx P, y :e u -> p (g' y) = f' y)).
Admitted.

// HOL Light: Multivariate/paths.ml:24961 / COVERING_SPACE_LIFT_INESSENTIAL_FUNCTION   (hash md5:ef14a84f779e3f06d181822413699b5b)
// not bridged: 
Theorem COVERING_SPACE_LIFT_INESSENTIAL_FUNCTION : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> forall a :e R :^: idx N, forall u c= R :^: idx P, covering_space M N (c,p) s /\ homotopic_with (R :^: idx N) (R :^: idx P) {x :e R :^: idx N :^: (R :^: idx P) | True} (subtopology (R :^: idx P) (euclidean P) u,subtopology (R :^: idx N) (euclidean N) s) f (fun x:set => a) -> exists g:set -> set, (forall x :e R :^: idx P, g x :e R :^: idx M) /\ (continuous_on_hl P M g u /\ ({g x | x :e u} c= c /\ forall y :e R :^: idx P, y :e u -> p (g y) = f y)).
Admitted.

// HOL Light: Multivariate/paths.ml:24983 / COVERING_SPACE_LIFT_HOMOTOPY_ALT   (hash md5:51a98ebfabafa325d0b800cc2994c555)
// not bridged: 
Theorem COVERING_SPACE_LIFT_HOMOTOPY_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall h:set -> set, (forall x :e R :^: idx_n (dimindex P + 1), h x :e R :^: idx N) -> forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx M) -> forall u c= R :^: idx P, covering_space M N (c,p) s /\ (continuous_on_hl (idx_n (dimindex P + 1)) N h (\/_ x :e u, {pastecart P 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}) /\ ({h x | x :e \/_ x :e u, {pastecart P 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}} c= s /\ ((forall y :e R :^: idx P, y :e u -> h (pastecart P 1 y (vec 1 0)) = p (f y)) /\ (continuous_on_hl P M f u /\ {f x | x :e u} c= c)))) -> exists k:set -> set, (forall x :e R :^: idx_n (dimindex P + 1), k x :e R :^: idx M) /\ (continuous_on_hl (idx_n (dimindex P + 1)) M k (\/_ x :e u, {pastecart P 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}) /\ ({k x | x :e \/_ x :e u, {pastecart P 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}} c= c /\ ((forall y :e R :^: idx P, y :e u -> k (pastecart P 1 y (vec 1 0)) = f y) /\ forall z :e R :^: idx_n (dimindex P + 1), z :e (\/_ x :e u, {pastecart P 1 x y | y :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)}) -> h z = p (k z)))).
Admitted.

// HOL Light: Multivariate/paths.ml:25032 / COVERING_SPACE_LIFT_PATH_STRONG   (hash md5:edf641cd37b9858c04b2cbca0849d280)
// not bridged: 
Theorem COVERING_SPACE_LIFT_PATH_STRONG : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall a :e R :^: idx M, covering_space M N (c,p) s /\ (path N g /\ (path_image N g c= s /\ (pathstart N g = p a /\ a :e c))) -> exists h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx M) /\ (path M h /\ (path_image M h c= c /\ (pathstart M h = a /\ forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (h t) = g t))).
Admitted.

// HOL Light: Multivariate/paths.ml:25072 / COVERING_SPACE_LIFT_PATH   (hash md5:d892aa96391a7537d0045c434f0d592d)
// not bridged: 
Theorem COVERING_SPACE_LIFT_PATH : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> covering_space M N (c,p) s /\ (path N g /\ path_image N g c= s) -> exists h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx M) /\ (path M h /\ (path_image M h c= c /\ forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (h t) = g t)).
Admitted.

// HOL Light: Multivariate/paths.ml:25090 / COVERING_SPACE_LIFT_HOMOTOPIC_PATHS   (hash md5:f5438081a001d0d81eda9d13d38c0634)
// not bridged: 
Theorem COVERING_SPACE_LIFT_HOMOTOPIC_PATHS : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> forall h1:set -> set, (forall x :e R :^: idx 1, h1 x :e R :^: idx M) -> forall h2:set -> set, (forall x :e R :^: idx 1, h2 x :e R :^: idx M) -> covering_space M N (c,p) s /\ (path N g1 /\ (path_image N g1 c= s /\ (path N g2 /\ (path_image N g2 c= s /\ (homotopic_paths N s g1 g2 /\ (path M h1 /\ (path_image M h1 c= c /\ ((forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (h1 t) = g1 t) /\ (path M h2 /\ (path_image M h2 c= c /\ ((forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (h2 t) = g2 t) /\ pathstart M h1 = pathstart M h2))))))))))) -> homotopic_paths M c h1 h2.
Admitted.

// HOL Light: Multivariate/paths.ml:25179 / COVERING_SPACE_MONODROMY   (hash md5:b562703b9668ee7a654d7b2bb2558417)
// not bridged: 
Theorem COVERING_SPACE_MONODROMY : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> forall h1:set -> set, (forall x :e R :^: idx 1, h1 x :e R :^: idx M) -> forall h2:set -> set, (forall x :e R :^: idx 1, h2 x :e R :^: idx M) -> covering_space M N (c,p) s /\ (path N g1 /\ (path_image N g1 c= s /\ (path N g2 /\ (path_image N g2 c= s /\ (homotopic_paths N s g1 g2 /\ (path M h1 /\ (path_image M h1 c= c /\ ((forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (h1 t) = g1 t) /\ (path M h2 /\ (path_image M h2 c= c /\ ((forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (h2 t) = g2 t) /\ pathstart M h1 = pathstart M h2))))))))))) -> pathfinish M h1 = pathfinish M h2.
Admitted.

// HOL Light: Multivariate/paths.ml:25195 / COVERING_SPACE_LIFT_HOMOTOPIC_PATH   (hash md5:83d8efa31f3c36748c1923bfbfd1ab66)
// not bridged: 
Theorem COVERING_SPACE_LIFT_HOMOTOPIC_PATH : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall a b :e R :^: idx M, covering_space M N (c,p) s /\ (homotopic_paths N s f f' /\ (path M g /\ (path_image M g c= c /\ (pathstart M g = a /\ (pathfinish M g = b /\ (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (g t) = f t)))))) -> exists g':set -> set, (forall x :e R :^: idx 1, g' x :e R :^: idx M) /\ (path M g' /\ (path_image M g' c= c /\ (pathstart M g' = a /\ (pathfinish M g' = b /\ forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (g' t) = f' t)))).
Admitted.

// HOL Light: Multivariate/paths.ml:25223 / COVERING_SPACE_INESSENTIAL_LOOP_LIFT_IS_LOOP   (hash md5:cbbeb03f6e13ed7d0a00366e80724489)
// not bridged: 
Theorem COVERING_SPACE_INESSENTIAL_LOOP_LIFT_IS_LOOP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx M) -> forall a :e R :^: idx N, covering_space M N (c,p) s /\ (path N g /\ (path_image N g c= s /\ (pathfinish N g = pathstart N g /\ (homotopic_paths N s g (linepath N (a,a)) /\ (path M h /\ (path_image M h c= c /\ (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (h t) = g t))))))) -> pathfinish M h = pathstart M h.
Admitted.

// HOL Light: Multivariate/paths.ml:25251 / COVERING_SPACE_SIMPLY_CONNECTED_LOOP_LIFT_IS_LOOP   (hash md5:86e91aa600deaeefb934fd002d70370c)
// not bridged: 
Theorem COVERING_SPACE_SIMPLY_CONNECTED_LOOP_LIFT_IS_LOOP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx M) -> covering_space M N (c,p) s /\ (simply_connected N s /\ (path N g /\ (path_image N g c= s /\ (pathfinish N g = pathstart N g /\ (path M h /\ (path_image M h c= c /\ (forall t :e R :^: idx 1, t :e closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil) -> p (h t) = g t))))))) -> pathfinish M h = pathstart M h.
Admitted.

// HOL Light: Multivariate/paths.ml:25265 / COVERING_SPACE_HOMOTOPIC_PATHS_CANCEL   (hash md5:c3268abf60340af66781bff1ecfbe601)
// not bridged: 
Theorem COVERING_SPACE_HOMOTOPIC_PATHS_CANCEL : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx M) -> covering_space M N (c,p) s /\ (path M g /\ (path_image M g c= c /\ (path M h /\ (path_image M h c= c /\ (pathstart M g = pathstart M h /\ homotopic_paths N s (fun x:set => p (g x)) (fun x:set => p (h x))))))) -> homotopic_paths M c g h.
Admitted.

// HOL Light: Multivariate/paths.ml:25281 / COVERING_SPACE_HOMOTOPIC_PATHS_CANCEL_EQ   (hash md5:0e20522931f9fc08af25604c1d0104e3)
// not bridged: 
Theorem COVERING_SPACE_HOMOTOPIC_PATHS_CANCEL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx 1, h x :e R :^: idx M) -> covering_space M N (c,p) s /\ (path M g /\ (path_image M g c= c /\ (path M h /\ (path_image M h c= c /\ pathstart M g = pathstart M h)))) -> (homotopic_paths N s (fun x:set => p (g x)) (fun x:set => p (h x)) <-> homotopic_paths M c g h).
Admitted.

// HOL Light: Multivariate/paths.ml:25299 / COVERING_SPACE_LIFT_GENERAL   (hash md5:6d3f51aeae613d9fefcaf3c9c3ffa3e3)
// not bridged: 
Theorem COVERING_SPACE_LIFT_GENERAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> forall u c= R :^: idx P, forall a :e R :^: idx M, forall z :e R :^: idx P, covering_space M N (c,p) s /\ (a :e c /\ (z :e u /\ (path_connected P u /\ (locally P {x :e Power (R :^: idx P) | path_connected P x} u /\ (continuous_on_hl P N f u /\ ({f x | x :e u} c= s /\ (f z = p a /\ (forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx P) -> path P r /\ (path_image P r c= u /\ (pathstart P r = z /\ pathfinish P r = z)) -> exists q:set -> set, (forall x :e R :^: idx 1, q x :e R :^: idx M) /\ (path M q /\ (path_image M q c= c /\ (pathstart M q = a /\ (pathfinish M q = a /\ homotopic_paths N s (fun x:set => f (r x)) (fun x:set => p (q x)))))))))))))) -> exists g:set -> set, (forall x :e R :^: idx P, g x :e R :^: idx M) /\ (continuous_on_hl P M g u /\ ({g x | x :e u} c= c /\ (g z = a /\ forall y :e R :^: idx P, y :e u -> p (g y) = f y))).
Admitted.

// HOL Light: Multivariate/paths.ml:25643 / COVERING_SPACE_LIFT_STRONGER   (hash md5:41dd3d9d1fa69c09778243ba14087585)
// not bridged: 
Theorem COVERING_SPACE_LIFT_STRONGER : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> forall u c= R :^: idx P, forall a :e R :^: idx M, forall z :e R :^: idx P, covering_space M N (c,p) s /\ (a :e c /\ (z :e u /\ (path_connected P u /\ (locally P {x :e Power (R :^: idx P) | path_connected P x} u /\ (continuous_on_hl P N f u /\ ({f x | x :e u} c= s /\ (f z = p a /\ (forall r:set -> set, (forall x :e R :^: idx 1, r x :e R :^: idx P) -> path P r /\ (path_image P r c= u /\ (pathstart P r = z /\ pathfinish P r = z)) -> exists b :e R :^: idx N, homotopic_paths N s (fun x:set => f (r x)) (linepath N (b,b)))))))))) -> exists g:set -> set, (forall x :e R :^: idx P, g x :e R :^: idx M) /\ (continuous_on_hl P M g u /\ ({g x | x :e u} c= c /\ (g z = a /\ forall y :e R :^: idx P, y :e u -> p (g y) = f y))).
Admitted.

// HOL Light: Multivariate/paths.ml:25668 / COVERING_SPACE_LIFT_STRONG   (hash md5:91474f37a2d394bce778ec41d4a49099)
// not bridged: 
Theorem COVERING_SPACE_LIFT_STRONG : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> forall u c= R :^: idx P, forall a :e R :^: idx M, forall z :e R :^: idx P, covering_space M N (c,p) s /\ (a :e c /\ (z :e u /\ (simply_connected P u /\ (locally P {x :e Power (R :^: idx P) | path_connected P x} u /\ (continuous_on_hl P N f u /\ ({f x | x :e u} c= s /\ f z = p a)))))) -> exists g:set -> set, (forall x :e R :^: idx P, g x :e R :^: idx M) /\ (continuous_on_hl P M g u /\ ({g x | x :e u} c= c /\ (g z = a /\ forall y :e R :^: idx P, y :e u -> p (g y) = f y))).
Admitted.

// HOL Light: Multivariate/paths.ml:25691 / COVERING_SPACE_LIFT   (hash md5:23cbb46bbe5257dcc3d92d811ec6baf7)
// not bridged: 
Theorem COVERING_SPACE_LIFT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall f:set -> set, (forall x :e R :^: idx P, f x :e R :^: idx N) -> forall u c= R :^: idx P, covering_space M N (c,p) s /\ (simply_connected P u /\ (locally P {x :e Power (R :^: idx P) | path_connected P x} u /\ (continuous_on_hl P N f u /\ {f x | x :e u} c= s))) -> exists g:set -> set, (forall x :e R :^: idx P, g x :e R :^: idx M) /\ (continuous_on_hl P M g u /\ ({g x | x :e u} c= c /\ forall y :e R :^: idx P, y :e u -> p (g y) = f y)).
Admitted.

// HOL Light: Multivariate/paths.ml:25717 / CARD_EQ_COVERING_MAP_FIBRES   (hash md5:c502f15a48b45fc11be5c8ab99adec38)
// not bridged: 
Theorem CARD_EQ_COVERING_MAP_FIBRES : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall a b :e R :^: idx N, covering_space M N (c,p) s /\ (path_connected N s /\ (a :e s /\ b :e s)) -> equip {x :e R :^: idx M | x :e c /\ p x = a} {x :e R :^: idx M | x :e c /\ p x = b}.
Admitted.

// HOL Light: Multivariate/paths.ml:25771 / COVERING_SPACE_INJECTIVE   (hash md5:0d7309442eb3c0f732a54e5fa4e6de7b)
// not bridged: 
Theorem COVERING_SPACE_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ (path_connected M c /\ simply_connected N s) -> forall x y :e R :^: idx M, x :e c /\ (y :e c /\ p x = p y) -> x = y.
Admitted.

// HOL Light: Multivariate/paths.ml:25840 / COVERING_SPACE_HOMEOMORPHISM   (hash md5:d51f2688119ebc9a982183b4c61aaa32)
// not bridged: 
Theorem COVERING_SPACE_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ (path_connected M c /\ simply_connected N s) -> exists q :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (c,s) (p,q).
Admitted.

// HOL Light: Multivariate/paths.ml:25855 / COVERING_SPACE_FIBRE_NO_LIMPT   (hash md5:2574c39dc2dbfcaa9327d1c6c3abbc52)
// not bridged: 
Theorem COVERING_SPACE_FIBRE_NO_LIMPT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall a :e R :^: idx M, forall b :e R :^: idx N, covering_space M N (c,p) s /\ a :e c -> ~ limit_point_of M a {x :e R :^: idx M | x :e c /\ p x = b}.
Admitted.

// HOL Light: Multivariate/paths.ml:25885 / COVERING_SPACE_COUNTABLE_SHEETS   (hash md5:d1e05af01c578dcec899006be5b8e9cf)
// not bridged: 
Theorem COVERING_SPACE_COUNTABLE_SHEETS : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall b :e R :^: idx N, covering_space M N (c,p) s -> countable {x :e R :^: idx M | x :e c /\ p x = b}.
Admitted.

// HOL Light: Multivariate/paths.ml:25893 / COVERING_SPACE_FINITE_EQ_COMPACT_FIBRE   (hash md5:fe5b884424e36192fd854d9e8f2cee5d)
// not bridged: 
Theorem COVERING_SPACE_FINITE_EQ_COMPACT_FIBRE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall b :e R :^: idx N, covering_space M N (c,p) s -> (finite {x :e R :^: idx M | x :e c /\ p x = b} <-> compact M {x :e R :^: idx M | x :e c /\ p x = b}).
Admitted.

// HOL Light: Multivariate/paths.ml:25915 / COVERING_SPACE_CLOSED_MAP   (hash md5:18e4620b944704f3a2e987514e41cddf)
// not bridged: 
Theorem COVERING_SPACE_CLOSED_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall t c= R :^: idx M, covering_space M N (c,p) s /\ ((forall b :e R :^: idx N, b :e s -> finite {x :e R :^: idx M | x :e c /\ p x = b}) /\ closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) c) t) -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) {p x | x :e t}.
Admitted.

// HOL Light: Multivariate/paths.ml:25982 / COVERING_SPACE_FINITE_SHEETS_EQ_CLOSED_MAP_STRONG   (hash md5:7616d5736622afaed5b22da4881a1ed6)
// not bridged: 
Theorem COVERING_SPACE_FINITE_SHEETS_EQ_CLOSED_MAP_STRONG : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ (forall b :e R :^: idx N, b :e s -> limit_point_of N b s) -> ((forall b :e R :^: idx N, b :e s -> finite {x :e R :^: idx M | x :e c /\ p x = b}) <-> forall t c= R :^: idx M, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) c) t -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) {p x | x :e t}).
Admitted.

// HOL Light: Multivariate/paths.ml:26095 / COVERING_SPACE_FINITE_SHEETS_EQ_CLOSED_MAP   (hash md5:abcb24894b02031f3d651af298df5b7d)
// not bridged: 
Theorem COVERING_SPACE_FINITE_SHEETS_EQ_CLOSED_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s /\ (connected N s /\ ~ (exists a :e R :^: idx N, s = {a})) -> ((forall b :e R :^: idx N, b :e s -> finite {x :e R :^: idx M | x :e c /\ p x = b}) <-> forall t c= R :^: idx M, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) c) t -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) {p x | x :e t}).
Admitted.

// HOL Light: Multivariate/paths.ml:26111 / COVERING_SPACE_FINITE_SHEETS_EQ_PROPER_MAP   (hash md5:f292407c60647f6de73f0e7571379e3f)
// not bridged: 
Theorem COVERING_SPACE_FINITE_SHEETS_EQ_PROPER_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> ((forall b :e R :^: idx N, b :e s -> finite {x :e R :^: idx M | x :e c /\ p x = b}) <-> forall k c= R :^: idx N, k c= s /\ compact N k -> compact M {x :e R :^: idx M | x :e c /\ p x :e k}).
Admitted.

// HOL Light: Multivariate/paths.ml:26130 / COVERING_SPACE_FINITE_SHEETS   (hash md5:67f13f3d9a10109a0255d486de95ad8b)
// not bridged: 
Theorem COVERING_SPACE_FINITE_SHEETS : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall b :e R :^: idx N, covering_space M N (c,p) s /\ compact M c -> finite {x :e R :^: idx M | x :e c /\ p x = b}.
Admitted.

// HOL Light: Multivariate/paths.ml:26137 / COVERING_SPACE_COMPACT   (hash md5:001e5097d77a8a5c0389ddc5c667e90b)
// not bridged: 
Theorem COVERING_SPACE_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, covering_space M N (c,p) s -> (compact M c <-> compact N s /\ forall b :e R :^: idx N, b :e s -> finite {x :e R :^: idx M | x :e c /\ p x = b}).
Admitted.

// HOL Light: Multivariate/paths.ml:26156 / PROPER_LOCAL_HOMEOMORPHISM_IMP_COVERING_MAP   (hash md5:9c7f9b12282ec91bf817097cbe98ee44)
// not bridged: 
Theorem PROPER_LOCAL_HOMEOMORPHISM_IMP_COVERING_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, {p x | x :e c} = s /\ ((forall k c= R :^: idx N, k c= s /\ compact N k -> compact M {x :e R :^: idx M | x :e c /\ p x :e k}) /\ (forall x :e R :^: idx M, x :e c -> exists t c= R :^: idx M, exists u c= R :^: idx N, exists q :e R :^: idx M :^: (R :^: idx N), x :e t /\ (t :e subtopology (R :^: idx M) (euclidean M) c /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ homeomorphism M N (t,u) (p,q))))) -> covering_space M N (c,p) s.
Admitted.

// HOL Light: Multivariate/paths.ml:26461 / CLOSED_LOCAL_HOMEOMORPHISM_IMP_COVERING_MAP   (hash md5:cc91992a5c366ac64415d7c4e60947a3)
// not bridged: 
Theorem CLOSED_LOCAL_HOMEOMORPHISM_IMP_COVERING_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, (forall x :e R :^: idx M, (forall x0 :e R :^: idx M, connected_component M c x x0 <-> x0 :e SetAdjoin Empty x) -> c = {x}) /\ ({p x | x :e c} = s /\ ((forall k c= R :^: idx M, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) c) k -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) {p x | x :e k}) /\ (forall x :e R :^: idx M, x :e c -> exists t c= R :^: idx M, exists u c= R :^: idx N, exists q :e R :^: idx M :^: (R :^: idx N), x :e t /\ (t :e subtopology (R :^: idx M) (euclidean M) c /\ (u :e subtopology (R :^: idx N) (euclidean N) s /\ homeomorphism M N (t,u) (p,q)))))) -> covering_space M N (c,p) s.
Admitted.

// HOL Light: Multivariate/paths.ml:26479 / PROPER_LOCAL_HOMEOMORPHISM_GLOBAL   (hash md5:6467d7fc2579e9ec4c9dcb00ee55f7ca)
// not bridged: 
Theorem PROPER_LOCAL_HOMEOMORPHISM_GLOBAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall s c= R :^: idx M, forall t c= R :^: idx N, path_connected M s /\ (simply_connected N t /\ ((s = Empty -> t = Empty) /\ ((forall k c= R :^: idx N, k c= t /\ compact N k -> compact M {x :e R :^: idx M | x :e s /\ f x :e k}) /\ (forall x :e R :^: idx M, x :e s -> exists u c= R :^: idx M, exists v c= R :^: idx N, exists q :e R :^: idx M :^: (R :^: idx N), x :e u /\ (u :e subtopology (R :^: idx M) (euclidean M) s /\ (v :e subtopology (R :^: idx N) (euclidean N) t /\ homeomorphism M N (u,v) (f,q))))))) -> exists g :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (s,t) (f,g).
Admitted.

// HOL Light: Multivariate/paths.ml:26511 / CLOSED_LOCAL_HOMEOMORPHISM_GLOBAL   (hash md5:aa518ba9f336da1e62270d73a0b4aa0d)
// not bridged: 
Theorem CLOSED_LOCAL_HOMEOMORPHISM_GLOBAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall s c= R :^: idx M, forall t c= R :^: idx N, path_connected M s /\ (simply_connected N t /\ ((s = Empty -> t = Empty) /\ ((forall c c= R :^: idx M, closed_in (R :^: idx M) (subtopology (R :^: idx M) (euclidean M) s) c -> closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) t) {f x | x :e c}) /\ (forall x :e R :^: idx M, x :e s -> exists u c= R :^: idx M, exists v c= R :^: idx N, exists g :e R :^: idx M :^: (R :^: idx N), x :e u /\ (u :e subtopology (R :^: idx M) (euclidean M) s /\ (v :e subtopology (R :^: idx N) (euclidean N) t /\ homeomorphism M N (u,v) (f,g))))))) -> exists g :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (s,t) (f,g).
Admitted.

// HOL Light: Multivariate/paths.ml:26544 / PROPER_LOCALLY_INJECTIVE_OPEN_IMP_COVERING_MAP   (hash md5:1c48cb74c0ee269df830ad7a009a0b7c)
// not bridged: 
Theorem PROPER_LOCALLY_INJECTIVE_OPEN_IMP_COVERING_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, continuous_on_hl M N (fun x:set => p x) c /\ ({p x | x :e c} = s /\ ((forall k c= R :^: idx N, k c= s /\ compact N k -> compact M {x :e R :^: idx M | x :e c /\ p x :e k}) /\ ((forall u c= R :^: idx M, u :e subtopology (R :^: idx M) (euclidean M) c -> {p x | x :e u} :e subtopology (R :^: idx N) (euclidean N) s) /\ (forall x :e R :^: idx M, x :e c -> exists t c= R :^: idx M, x :e t /\ (t :e subtopology (R :^: idx M) (euclidean M) c /\ forall y z :e R :^: idx M, y :e t /\ (z :e t /\ p y = p z) -> y = z))))) -> covering_space M N (c,p) s.
Admitted.

// HOL Light: Multivariate/paths.ml:26573 / PROPER_LOCALLY_INJECTIVE_OPEN_IMP_COVERING_MAP_GEN   (hash md5:8436c3290bce1b784ddf5873da958b59)
// not bridged: 
Theorem PROPER_LOCALLY_INJECTIVE_OPEN_IMP_COVERING_MAP_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, continuous_on_hl M N (fun x:set => p x) c /\ ({p x | x :e c} = s /\ ((forall k c= R :^: idx N, k c= s /\ compact N k -> compact M {x :e R :^: idx M | x :e c /\ p x :e k}) /\ ((forall u c= R :^: idx M, u :e subtopology (R :^: idx M) (euclidean M) c -> {x :e R :^: idx M | x :e c /\ p x :e {p x0 | x0 :e u}} :e subtopology (R :^: idx M) (euclidean M) c) /\ (forall x :e R :^: idx M, x :e c -> exists t c= R :^: idx M, x :e t /\ (t :e subtopology (R :^: idx M) (euclidean M) c /\ forall y z :e R :^: idx M, y :e t /\ (z :e t /\ p y = p z) -> y = z))))) -> covering_space M N (c,p) s.
Admitted.

// HOL Light: Multivariate/paths.ml:26590 / PROPER_LOCALLY_INJECTIVE_OPEN_IMP_HOMEOMORPHISM   (hash md5:7f43adff2f393beea717a635e77d3aee)
// not bridged: 
Theorem PROPER_LOCALLY_INJECTIVE_OPEN_IMP_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall s c= R :^: idx M, forall t c= R :^: idx N, path_connected M s /\ (simply_connected N t /\ (continuous_on_hl M N (fun x:set => f x) s /\ ({f x | x :e s} = t /\ ((forall k c= R :^: idx N, k c= t /\ compact N k -> compact M {x :e R :^: idx M | x :e s /\ f x :e k}) /\ ((forall u c= R :^: idx M, u :e subtopology (R :^: idx M) (euclidean M) s -> {f x | x :e u} :e subtopology (R :^: idx N) (euclidean N) t) /\ (forall x :e R :^: idx M, x :e s -> exists u c= R :^: idx M, x :e u /\ (u :e subtopology (R :^: idx M) (euclidean M) s /\ forall y z :e R :^: idx M, y :e u /\ (z :e u /\ f y = f z) -> y = z))))))) -> exists g :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (s,t) (f,g).
Admitted.

// HOL Light: Multivariate/paths.ml:26606 / PROPER_LOCALLY_INJECTIVE_OPEN_IMP_HOMEOMORPHISM_GEN   (hash md5:cc8fae3d37fb19a31e53b009e27da9e5)
// not bridged: 
Theorem PROPER_LOCALLY_INJECTIVE_OPEN_IMP_HOMEOMORPHISM_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall s c= R :^: idx M, forall t c= R :^: idx N, path_connected M s /\ (simply_connected N t /\ (continuous_on_hl M N (fun x:set => f x) s /\ ({f x | x :e s} = t /\ ((forall k c= R :^: idx N, k c= t /\ compact N k -> compact M {x :e R :^: idx M | x :e s /\ f x :e k}) /\ ((forall u c= R :^: idx M, u :e subtopology (R :^: idx M) (euclidean M) s -> {x :e R :^: idx M | x :e s /\ f x :e {f x0 | x0 :e u}} :e subtopology (R :^: idx M) (euclidean M) s) /\ (forall x :e R :^: idx M, x :e s -> exists u c= R :^: idx M, x :e u /\ (u :e subtopology (R :^: idx M) (euclidean M) s /\ forall y z :e R :^: idx M, y :e u /\ (z :e u /\ f y = f z) -> y = z))))))) -> exists g :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (s,t) (f,g).
Admitted.

// HOL Light: Multivariate/paths.ml:26627 / UNIVERSAL_COVERING_SPACE   (hash md5:d787ac3e1446a38fbba49617a10b886c)
// not bridged: 
Theorem UNIVERSAL_COVERING_SPACE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall c c= R :^: idx M, forall p :e R :^: idx P :^: (R :^: idx M), forall c' c= R :^: idx N, forall p' :e R :^: idx P :^: (R :^: idx N), forall s c= R :^: idx P, covering_space M P (c,p) s /\ (covering_space N P (c',p') s /\ (locally M {x :e Power (R :^: idx M) | path_connected M x} c /\ (simply_connected M c /\ connected N c'))) -> exists q :e R :^: idx N :^: (R :^: idx M), covering_space M N (c,q) c' /\ forall x :e R :^: idx M, x :e c -> p' (q x) = p x.
Admitted.

// HOL Light: Multivariate/paths.ml:26897 / CARD_EQ_FUNDAMENTAL_GROUP_COVERING_SPACE_ALT   (hash md5:8735a227e217c1d3bb3bff5c8ecbe893)
// not bridged: 
Theorem CARD_EQ_FUNDAMENTAL_GROUP_COVERING_SPACE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall a :e R :^: idx M, covering_space M N (c,p) s /\ (path_connected M c /\ a :e c) -> equip (fundamental_group N (s,p a)) {{x :e R :^: idx M :^: (R :^: idx 1) | homotopic_paths M c (fun x0:set => g x0) (fun x0:set => x x0)} | g :e R :^: idx M :^: (R :^: idx 1), path M (fun x:set => g x) /\ (path_image M (fun x:set => g x) c= c /\ (pathstart M (fun x:set => g x) = a /\ p (pathfinish M (fun x:set => g x)) = p a))}.
Admitted.

// HOL Light: Multivariate/paths.ml:26987 / CARD_EQ_FUNDAMENTAL_GROUP_COVERING_SPACE   (hash md5:6ff1eb6e2257ec5b755c74bfff16f4e7)
// not bridged: 
Theorem CARD_EQ_FUNDAMENTAL_GROUP_COVERING_SPACE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx M), forall c c= R :^: idx M, forall s c= R :^: idx N, forall a :e R :^: idx M, covering_space M N (c,p) s /\ (path_connected M c /\ a :e c) -> equip (fundamental_group N (s,p a)) (fundamental_group M (c,a) :*: {a' :e R :^: idx M | a' :e c /\ p a' = p a}).
Admitted.

// HOL Light: Multivariate/paths.ml:27116 / COVERING_SPACE_SELF_FINITE_FUNDAMENTAL_GROUP   (hash md5:d1bd140581f4f35672de1dbb15655ac4)
// not bridged: 
Theorem COVERING_SPACE_SELF_FINITE_FUNDAMENTAL_GROUP : forall N:set, N <> Empty -> forall p :e R :^: idx N :^: (R :^: idx N), forall s c= R :^: idx N, forall a :e R :^: idx N, covering_space N N (s,p) s /\ (path_connected N s /\ (a :e s /\ finite (fundamental_group N (s,a)))) -> exists q :e R :^: idx N :^: (R :^: idx N), homeomorphism N N (s,s) (p,q).
Admitted.

// HOL Light: Multivariate/paths.ml:27159 / HOMEOMORPHIC_SUBSPACE_EUCLIDEAN_SPACE   (hash md5:3b65609bad8f724557fc215c028fc5c5)
// not bridged: 
Theorem HOMEOMORPHIC_SUBSPACE_EUCLIDEAN_SPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e omega, subspace N s -> (homeomorphic_space (R :^: idx N) (R :^: omega) (subtopology (R :^: idx N) (euclidean N) s) (euclidean_space n) <-> dim N s = n).
Admitted.

// HOL Light: Multivariate/paths.ml:27190 / HOMEOMORPHIC_SUBSPACE_EUCLIDEAN_SPACE_DIM   (hash md5:55625b3f7789d81e41fc0371d2a22bac)
// not bridged: 
Theorem HOMEOMORPHIC_SUBSPACE_EUCLIDEAN_SPACE_DIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s -> homeomorphic_space (R :^: idx N) (R :^: omega) (subtopology (R :^: idx N) (euclidean N) s) (euclidean_space (dim N s)).
Admitted.

// HOL Light: Multivariate/paths.ml:27196 / HOMEOMORPHIC_SUBSPACES_EQ   (hash md5:6b1f58ff40227c3c38d4ede6ebba1cef)
// not bridged: 
Theorem HOMEOMORPHIC_SUBSPACES_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, subspace M s /\ subspace N t -> (homeomorphic N M s t <-> dim M s = dim N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27211 / HOMEOMORPHIC_AFFINE_EUCLIDEAN_SPACE   (hash md5:e10c6bf3758cfd9b705c1ca92362f1b5)
// not bridged: 
Theorem HOMEOMORPHIC_AFFINE_EUCLIDEAN_SPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e omega, affine N s -> (homeomorphic_space (R :^: idx N) (R :^: omega) (subtopology (R :^: idx N) (euclidean N) s) (euclidean_space n) <-> aff_dim N s = n).
Admitted.

// HOL Light: Multivariate/paths.ml:27240 / HOMEOMORPHIC_AFFINE_SETS_EQ   (hash md5:3f496709933f0a2279675c4ec5d31b16)
// not bridged: 
Theorem HOMEOMORPHIC_AFFINE_SETS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, affine M s /\ affine N t -> (homeomorphic N M s t <-> aff_dim M s = aff_dim N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27258 / INVARIANCE_OF_DOMAIN_SUBSPACES   (hash md5:01dbdbc9e3b028a24f91a9f8245605fd)
// not bridged: 
Theorem INVARIANCE_OF_DOMAIN_SUBSPACES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall u c= R :^: idx M, forall v c= R :^: idx N, forall s c= R :^: idx M, subspace M u /\ (subspace N v /\ (dim N v <= dim M u /\ (continuous_on_hl M N f s /\ ({f x | x :e s} c= v /\ ((forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y) /\ s :e subtopology (R :^: idx M) (euclidean M) u))))) -> {f x | x :e s} :e subtopology (R :^: idx N) (euclidean N) v.
Admitted.

// HOL Light: Multivariate/paths.ml:27312 / INVARIANCE_OF_DOMAIN   (hash md5:618ea7277ea4d7637e24207c74d41bb3)
// not bridged: 
Theorem INVARIANCE_OF_DOMAIN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, continuous_on_hl N N f s /\ (open N s /\ (forall x y :e R :^: idx N, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> open N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:27323 / INVARIANCE_OF_DIMENSION_SUBSPACES   (hash md5:2e8c480dc5b10ed0fc2cc963e9c1da7d)
// not bridged: 
Theorem INVARIANCE_OF_DIMENSION_SUBSPACES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall u c= R :^: idx M, forall v c= R :^: idx N, forall s c= R :^: idx M, subspace M u /\ (subspace N v /\ (~ s = Empty /\ (s :e subtopology (R :^: idx M) (euclidean M) u /\ (continuous_on_hl M N f s /\ ({f x | x :e s} c= v /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y)))))) -> dim M u <= dim N v.
Admitted.

// HOL Light: Multivariate/paths.ml:27360 / INVARIANCE_OF_DOMAIN_AFFINE_SETS   (hash md5:151b60295a455571510f7de3f251cc9f)
// not bridged: 
Theorem INVARIANCE_OF_DOMAIN_AFFINE_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall u c= R :^: idx M, forall v c= R :^: idx N, forall s c= R :^: idx M, affine M u /\ (affine N v /\ (aff_dim N v <= aff_dim M u /\ (continuous_on_hl M N f s /\ ({f x | x :e s} c= v /\ ((forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y) /\ s :e subtopology (R :^: idx M) (euclidean M) u))))) -> {f x | x :e s} :e subtopology (R :^: idx N) (euclidean N) v.
Admitted.

// HOL Light: Multivariate/paths.ml:27399 / INVARIANCE_OF_DIMENSION_AFFINE_SETS   (hash md5:a2c6fdb20fc0e55c378dc6b1fdcf8e96)
// not bridged: 
Theorem INVARIANCE_OF_DIMENSION_AFFINE_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall u c= R :^: idx M, forall v c= R :^: idx N, forall s c= R :^: idx M, affine M u /\ (affine N v /\ (~ s = Empty /\ (s :e subtopology (R :^: idx M) (euclidean M) u /\ (continuous_on_hl M N f s /\ ({f x | x :e s} c= v /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y)))))) -> aff_dim M u <= aff_dim N v.
Admitted.

// HOL Light: Multivariate/paths.ml:27436 / INVARIANCE_OF_DIMENSION   (hash md5:5e9f951ce17184fffea006c7ec6d5df9)
// not bridged: 
Theorem INVARIANCE_OF_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ (open M s /\ (~ s = Empty /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y))) -> dimindex M <= dimindex N.
Admitted.

// HOL Light: Multivariate/paths.ml:27447 / CONTINUOUS_INJECTIVE_IMAGE_SUBSPACE_DIM_LE   (hash md5:ad87799c8a249da3bcd922c15ddad27f)
// not bridged: 
Theorem CONTINUOUS_INJECTIVE_IMAGE_SUBSPACE_DIM_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, subspace M s /\ (subspace N t /\ (continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y)))) -> dim M s <= dim N t.
Admitted.

// HOL Light: Multivariate/paths.ml:27457 / INVARIANCE_OF_DIMENSION_CONVEX_DOMAIN   (hash md5:63fae0321e83e1014183f24fa3b3c159)
// not bridged: 
Theorem INVARIANCE_OF_DIMENSION_CONVEX_DOMAIN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, convex M s /\ (continuous_on_hl M N f s /\ ({f x | x :e s} c= hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} t /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y))) -> aff_dim M s <= aff_dim N t.
Admitted.

// HOL Light: Multivariate/paths.ml:27475 / HOMEOMORPHIC_CONVEX_SETS   (hash md5:3a1f570ba7e3751ca44d202453aeb110)
// not bridged: 
Theorem HOMEOMORPHIC_CONVEX_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, convex M s /\ (convex N t /\ homeomorphic N M s t) -> aff_dim M s = aff_dim N t.
Admitted.

// HOL Light: Multivariate/paths.ml:27487 / HOMEOMORPHIC_CONVEX_COMPACT_SETS_EQ   (hash md5:4c558d459262d5c80c74fb957b9e61eb)
// not bridged: 
Theorem HOMEOMORPHIC_CONVEX_COMPACT_SETS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, convex M s /\ (compact M s /\ (convex N t /\ compact N t)) -> (homeomorphic N M s t <-> aff_dim M s = aff_dim N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27493 / INVARIANCE_OF_DOMAIN_GEN   (hash md5:beb3c786cba34c605afc7ad8f7056703)
// not bridged: 
Theorem INVARIANCE_OF_DOMAIN_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex N <= dimindex M /\ (continuous_on_hl M N f s /\ (open M s /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y))) -> open N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:27504 / INJECTIVE_INTO_1D_IMP_OPEN_MAP_UNIV   (hash md5:4047231aec2e701510c5b0c16cb59596)
// not bridged: 
Theorem INJECTIVE_INTO_1D_IMP_OPEN_MAP_UNIV : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall s t c= R :^: idx N, continuous_on_hl N 1 f s /\ ((forall x y :e R :^: idx N, x :e s /\ (y :e s /\ f x = f y) -> x = y) /\ (open N t /\ t c= s)) -> open 1 {f x | x :e t}.
Admitted.

// HOL Light: Multivariate/paths.ml:27515 / CONTINUOUS_ON_INVERSE_OPEN   (hash md5:9f0c9619b9fedd28ca5c5e3f2cef0414)
// not bridged: 
Theorem CONTINUOUS_ON_INVERSE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, dimindex N <= dimindex M /\ (continuous_on_hl M N f s /\ (open M s /\ (forall x :e R :^: idx M, x :e s -> g (f x) = x))) -> continuous_on_hl N M g {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:27532 / CONTINUOUS_ON_INVERSE_INTO_1D   (hash md5:a11c8cc5e1d7b37c65ed6f2fc0d7a299)
// not bridged: 
Theorem CONTINUOUS_ON_INVERSE_INTO_1D : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall s c= R :^: idx N, forall t c= R :^: idx 1, continuous_on_hl N 1 f s /\ ((path_connected N s \/ (connected N s /\ (locally N {x :e Power (R :^: idx N) | compact N x} s \/ locally N {x :e Power (R :^: idx N) | connected N x} s) \/ (compact N s \/ open N s))) /\ ({f x | x :e s} = t /\ (forall x :e R :^: idx N, x :e s -> g (f x) = x))) -> continuous_on_hl 1 N g t.
Admitted.

// HOL Light: Multivariate/paths.ml:27684 / INVARIANCE_OF_DOMAIN_HOMEOMORPHISM   (hash md5:22c8c9c7f7342204e0a225003ac9ce7d)
// not bridged: 
Theorem INVARIANCE_OF_DOMAIN_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), forall s c= R :^: idx M, dimindex N <= dimindex M /\ (continuous_on_hl M N (fun x:set => f x) s /\ (open M s /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y))) -> exists g :e R :^: idx M :^: (R :^: idx N), homeomorphism M N (s,{f x | x :e s}) (f,g).
Admitted.

// HOL Light: Multivariate/paths.ml:27695 / INVARIANCE_OF_DOMAIN_HOMEOMORPHIC   (hash md5:b94f91355752531e202c87c63887b4ff)
// not bridged: 
Theorem INVARIANCE_OF_DOMAIN_HOMEOMORPHIC : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex N <= dimindex M /\ (continuous_on_hl M N f s /\ (open M s /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y))) -> homeomorphic N M s {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:27704 / HOMEOMORPHIC_INTERVALS_EQ   (hash md5:625423e1a23fdd448533a82dbd8486b3)
// not bridged: 
Theorem HOMEOMORPHIC_INTERVALS_EQ : forall M N:set, M <> Empty -> N <> Empty -> (forall a b :e R :^: idx M, forall c d :e R :^: idx N, homeomorphic N M (closed_interval M (seq_cons (a,b) seq_nil)) (closed_interval N (seq_cons (c,d) seq_nil)) <-> aff_dim M (closed_interval M (seq_cons (a,b) seq_nil)) = aff_dim N (closed_interval N (seq_cons (c,d) seq_nil))) /\ ((forall a b :e R :^: idx M, forall c d :e R :^: idx N, homeomorphic N M (closed_interval M (seq_cons (a,b) seq_nil)) (open_interval N (c,d)) <-> closed_interval M (seq_cons (a,b) seq_nil) = Empty /\ open_interval N (c,d) = Empty) /\ ((forall a b :e R :^: idx M, forall c d :e R :^: idx N, homeomorphic N M (open_interval M (a,b)) (closed_interval N (seq_cons (c,d) seq_nil)) <-> open_interval M (a,b) = Empty /\ closed_interval N (seq_cons (c,d) seq_nil) = Empty) /\ forall a b :e R :^: idx M, forall c d :e R :^: idx N, homeomorphic N M (open_interval M (a,b)) (open_interval N (c,d)) <-> open_interval M (a,b) = Empty /\ open_interval N (c,d) = Empty \/ ~ open_interval M (a,b) = Empty /\ (~ open_interval N (c,d) = Empty /\ dimindex M = dimindex N))).
Admitted.

// HOL Light: Multivariate/paths.ml:27771 / CONTINUOUS_IMAGE_SUBSET_INTERIOR   (hash md5:5f636a800c5f5074ac41a63d958207fd)
// not bridged: 
Theorem CONTINUOUS_IMAGE_SUBSET_INTERIOR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ (dimindex N <= dimindex M /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> {f x | x :e interior M s} c= interior N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:27784 / HOMEOMORPHIC_INTERIORS_SAME_DIMENSION   (hash md5:1b7daf67d0dc7a85d69929495db3d079)
// not bridged: 
Theorem HOMEOMORPHIC_INTERIORS_SAME_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, dimindex M = dimindex N /\ homeomorphic N M s t -> homeomorphic N M (interior M s) (interior N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27807 / HOMEOMORPHIC_INTERIORS   (hash md5:300a111c12c256d93e87e9aa401c079e)
// not bridged: 
Theorem HOMEOMORPHIC_INTERIORS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t /\ (interior M s = Empty <-> interior N t = Empty) -> homeomorphic N M (interior M s) (interior N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27824 / HOMEOMORPHIC_FRONTIERS_SAME_DIMENSION   (hash md5:94dcab57c2db32059d25598d9e3d2bba)
// not bridged: 
Theorem HOMEOMORPHIC_FRONTIERS_SAME_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, dimindex M = dimindex N /\ (homeomorphic N M s t /\ (closed M s /\ closed N t)) -> homeomorphic N M (frontier M s) (frontier N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27853 / HOMEOMORPHIC_FRONTIERS   (hash md5:5e638578599985b51376949b2b1a90b8)
// not bridged: 
Theorem HOMEOMORPHIC_FRONTIERS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t /\ (closed M s /\ (closed N t /\ (interior M s = Empty <-> interior N t = Empty))) -> homeomorphic N M (frontier M s) (frontier N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27871 / CONTINUOUS_IMAGE_SUBSET_RELATIVE_INTERIOR   (hash md5:896eba78dc3029ec6d1f5a1db062833f)
// not bridged: 
Theorem CONTINUOUS_IMAGE_SUBSET_RELATIVE_INTERIOR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ (aff_dim N t <= aff_dim M s /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y))) -> {f x | x :e relative_interior M s} c= relative_interior N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/paths.ml:27890 / HOMEOMORPHIC_RELATIVE_INTERIORS_SAME_DIMENSION   (hash md5:32422a0f1df8902566bf1be1fd747aea)
// not bridged: 
Theorem HOMEOMORPHIC_RELATIVE_INTERIORS_SAME_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, aff_dim M s = aff_dim N t /\ homeomorphic N M s t -> homeomorphic N M (relative_interior M s) (relative_interior N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27916 / HOMEOMORPHIC_RELATIVE_INTERIORS   (hash md5:7911c01749be84f85b4890e99d3f97a6)
// not bridged: 
Theorem HOMEOMORPHIC_RELATIVE_INTERIORS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t /\ (relative_interior M s = Empty <-> relative_interior N t = Empty) -> homeomorphic N M (relative_interior M s) (relative_interior N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27942 / HOMEOMORPHIC_RELATIVE_BOUNDARIES_SAME_DIMENSION   (hash md5:b7e213558d09bc61b83c0b103039b4e4)
// not bridged: 
Theorem HOMEOMORPHIC_RELATIVE_BOUNDARIES_SAME_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, aff_dim M s = aff_dim N t /\ homeomorphic N M s t -> homeomorphic N M (s :\: relative_interior M s) (t :\: relative_interior N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27972 / HOMEOMORPHIC_RELATIVE_BOUNDARIES   (hash md5:51144985d907cad94024c2bf8f80a7d4)
// not bridged: 
Theorem HOMEOMORPHIC_RELATIVE_BOUNDARIES : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, homeomorphic N M s t /\ (relative_interior M s = Empty <-> relative_interior N t = Empty) -> homeomorphic N M (s :\: relative_interior M s) (t :\: relative_interior N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27999 / UNIFORMLY_CONTINUOUS_HOMEOMORPHISM_UNIV_TRIVIAL   (hash md5:5a1fcb5af272ee34c2c8287f520950c3)
// not bridged: 
Theorem UNIFORMLY_CONTINUOUS_HOMEOMORPHISM_UNIV_TRIVIAL : forall N:set, N <> Empty -> forall f g :e R :^: idx N :^: (R :^: idx N), forall s c= R :^: idx N, homeomorphism N N (s,R :^: idx N) (f,g) /\ uniformly_continuous_on_hl N N (fun x:set => f x) s -> s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/paths.ml:28026 / INVARIANCE_OF_DOMAIN_SPHERE_AFFINE_SET_GEN   (hash md5:a81e179dfe0b72181423ed329eeaa3ab)
// not bridged: 
Theorem INVARIANCE_OF_DOMAIN_SPHERE_AFFINE_SET_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall u s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ ((forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y) /\ (bounded_hl M u /\ (convex M u /\ (affine N t /\ (aff_dim N t < aff_dim M u /\ s :e subtopology (R :^: idx M) (euclidean M) (relative_frontier M u))))))) -> {f x | x :e s} :e subtopology (R :^: idx N) (euclidean N) t.
Admitted.

// HOL Light: Multivariate/paths.ml:28113 / INVARIANCE_OF_DOMAIN_SPHERE_AFFINE_SET   (hash md5:3c2cfd7bef4e7377a929b75ecb3f9333)
// not bridged: 
Theorem INVARIANCE_OF_DOMAIN_SPHERE_AFFINE_SET : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall a :e R :^: idx M, forall r :e R, forall s c= R :^: idx M, forall t c= R :^: idx N, continuous_on_hl M N f s /\ ({f x | x :e s} c= t /\ ((forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y) /\ (~ r = 0 /\ (affine N t /\ (aff_dim N t < dimindex M /\ s :e subtopology (R :^: idx M) (euclidean M) (sphere M (a,r))))))) -> {f x | x :e s} :e subtopology (R :^: idx N) (euclidean N) t.
Admitted.

// HOL Light: Multivariate/paths.ml:28131 / NO_EMBEDDING_SPHERE_LOWDIM   (hash md5:450b0eed1b69d207b190feab9bd823cc)
// not bridged: 
Theorem NO_EMBEDDING_SPHERE_LOWDIM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall a :e R :^: idx M, forall r :e R, 0 < r /\ (continuous_on_hl M N f (sphere M (a,r)) /\ (forall x y :e R :^: idx M, x :e sphere M (a,r) /\ (y :e sphere M (a,r) /\ f x = f y) -> x = y)) -> dimindex M <= dimindex N.
Admitted.

// HOL Light: Multivariate/paths.ml:28151 / EMPTY_INTERIOR_LOWDIM_GEN   (hash md5:42812217163293d75da24bc6cf6efd34)
// not bridged: 
Theorem EMPTY_INTERIOR_LOWDIM_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall t c= R :^: idx M, dimindex M < dimindex N /\ homeomorphic M N s t -> interior N s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:28178 / EMPTY_INTERIOR_LOWDIM_GEN_LE   (hash md5:3a2358a34f87f8ac054c50e8dc88c4d0)
// not bridged: 
Theorem EMPTY_INTERIOR_LOWDIM_GEN_LE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall t c= R :^: idx M, dimindex M <= dimindex N /\ (interior M t = Empty /\ homeomorphic M N s t) -> interior N s = Empty.
Admitted.

// HOL Light: Multivariate/paths.ml:28189 / HOMEOMORPHIC_HYPERPLANES_EQ   (hash md5:6c76dd5ac9306b6f717fa9a5f3ad73d5)
// not bridged: 
Theorem HOMEOMORPHIC_HYPERPLANES_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall a :e R :^: idx M, forall b :e R, forall c :e R :^: idx N, forall d :e R, ~ a = vec M 0 /\ ~ c = vec N 0 -> (homeomorphic N M {x :e R :^: idx M | dot M a x = b} {x :e R :^: idx N | dot N c x = d} <-> dimindex M = dimindex N).
Admitted.

// HOL Light: Multivariate/paths.ml:28198 / HOMEOMORPHIC_UNIV_UNIV   (hash md5:3955a40a236e50f33f9980a21d493321)
// not bridged: 
Theorem HOMEOMORPHIC_UNIV_UNIV : forall M N:set, M <> Empty -> N <> Empty -> (homeomorphic N M (R :^: idx M) (R :^: idx N) <-> dimindex M = dimindex N).
Admitted.

// HOL Light: Multivariate/paths.ml:28202 / HOMEOMORPHIC_CBALLS_EQ   (hash md5:07d8ee03fd2350f8f30da2ae6a5295b1)
// not bridged: 
Theorem HOMEOMORPHIC_CBALLS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall a :e R :^: idx M, forall b :e R :^: idx N, forall r s :e R, homeomorphic N M (cball M (a,r)) (cball N (b,s)) <-> r < 0 /\ s < 0 \/ (r = 0 /\ s = 0 \/ 0 < r /\ (0 < s /\ dimindex M = dimindex N)).
Admitted.

// HOL Light: Multivariate/paths.ml:28245 / HOMEOMORPHIC_BALLS_EQ   (hash md5:cc7bd54c353bcd38ed03701f34159f14)
// not bridged: 
Theorem HOMEOMORPHIC_BALLS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall a :e R :^: idx M, forall b :e R :^: idx N, forall r s :e R, homeomorphic N M (ball M (a,r)) (ball N (b,s)) <-> r <= 0 /\ s <= 0 \/ 0 < r /\ (0 < s /\ dimindex M = dimindex N).
Admitted.

// HOL Light: Multivariate/paths.ml:28280 / CARD_EQ_COMPONENTS_COMPLEMENTS   (hash md5:15ce097f1f96a2f231d304ed777186b5)
// not bridged: 
Theorem CARD_EQ_COMPONENTS_COMPLEMENTS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, closed N s /\ (closed N t /\ homeomorphic N N s t) -> equip (components N ((R :^: idx N) :\: s)) (components N ((R :^: idx N) :\: t)).
Admitted.

// HOL Light: Multivariate/paths.ml:28341 / JORDAN_CURVE_THEOREM_GEN   (hash md5:c9900a156d1d755ace277e6c9633eacc)
// not bridged: 
Theorem JORDAN_CURVE_THEOREM_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ homeomorphic N N s (sphere N (vec N 0,1)) -> exists ins out c= R :^: idx N, ~ ins = Empty /\ (open N ins /\ (connected N ins /\ (~ out = Empty /\ (open N out /\ (connected N out /\ (bounded_hl N ins /\ (~ bounded_hl N out /\ (ins :/\: out = Empty /\ (ins :\/: out = (R :^: idx N) :\: s /\ (frontier N ins = s /\ frontier N out = s)))))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:28475 / JORDAN_INSIDE_OUTSIDE_GEN   (hash md5:32396a4741e7e841c9bcae03c6904e99)
// not bridged: 
Theorem JORDAN_INSIDE_OUTSIDE_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, 2 <= dimindex N /\ homeomorphic N N s (sphere N (vec N 0,1)) -> ~ inside N s = Empty /\ (open N (inside N s) /\ (connected N (inside N s) /\ (~ outside N s = Empty /\ (open N (outside N s) /\ (connected N (outside N s) /\ (bounded_hl N (inside N s) /\ (~ bounded_hl N (outside N s) /\ (inside N s :/\: outside N s = Empty /\ (inside N s :\/: outside N s = (R :^: idx N) :\: s /\ (frontier N (inside N s) = s /\ frontier N (outside N s) = s)))))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:28504 / JORDAN_BROUWER_FRONTIER   (hash md5:878dca6b56cfeca38e73a519b4181573)
// not bridged: 
Theorem JORDAN_BROUWER_FRONTIER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N /\ (homeomorphic N N s (sphere N (a,r)) /\ t :e components N ((R :^: idx N) :\: s)) -> frontier N t = s.
Admitted.

// HOL Light: Multivariate/paths.ml:28540 / JORDAN_BROUWER_NONSEPARATION   (hash md5:6009147f39323afeb5b37906d8e2115c)
// not bridged: 
Theorem JORDAN_BROUWER_NONSEPARATION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, 2 <= dimindex N /\ (homeomorphic N N s (sphere N (a,r)) /\ (t c= s /\ t <> s)) -> connected N ((R :^: idx N) :\: t).
Admitted.

// HOL Light: Multivariate/paths.ml:28554 / JORDAN_BROUWER_SEPARATION   (hash md5:e7a2af9e1466b9e672b2329c7bf6eaec)
// not bridged: 
Theorem JORDAN_BROUWER_SEPARATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, 0 < r /\ homeomorphic N N s (sphere N (a,r)) -> ~ connected N ((R :^: idx N) :\: s).
Admitted.

// HOL Light: Multivariate/paths.ml:28576 / JORDAN_CURVE_THEOREM   (hash md5:0ef1a772a8bf61823ed900b232320509)
// not bridged: 
Theorem JORDAN_CURVE_THEOREM : forall c:set -> set, (forall x :e R :^: idx 1, c x :e R :^: idx_n 2) -> simple_path (idx_n 2) c /\ pathfinish (idx_n 2) c = pathstart (idx_n 2) c -> exists ins out c= R :^: idx_n 2, ~ ins = Empty /\ (open (idx_n 2) ins /\ (connected (idx_n 2) ins /\ (~ out = Empty /\ (open (idx_n 2) out /\ (connected (idx_n 2) out /\ (bounded_hl (idx_n 2) ins /\ (~ bounded_hl (idx_n 2) out /\ (ins :/\: out = Empty /\ (ins :\/: out = (R :^: idx_n 2) :\: path_image (idx_n 2) c /\ (frontier (idx_n 2) ins = path_image (idx_n 2) c /\ frontier (idx_n 2) out = path_image (idx_n 2) c)))))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:28591 / JORDAN_DISCONNECTED   (hash md5:7de6b924da96a8ce5a80b2dbbf17500e)
// not bridged: 
Theorem JORDAN_DISCONNECTED : forall c:set -> set, (forall x :e R :^: idx 1, c x :e R :^: idx_n 2) -> simple_path (idx_n 2) c /\ pathfinish (idx_n 2) c = pathstart (idx_n 2) c -> ~ connected (idx_n 2) ((R :^: idx_n 2) :\: path_image (idx_n 2) c).
Admitted.

// HOL Light: Multivariate/paths.ml:28599 / JORDAN_INSIDE_OUTSIDE   (hash md5:70a4c1a6e1082aa2672b8453143b21bd)
// not bridged: 
Theorem JORDAN_INSIDE_OUTSIDE : forall c:set -> set, (forall x :e R :^: idx 1, c x :e R :^: idx_n 2) -> simple_path (idx_n 2) c /\ pathfinish (idx_n 2) c = pathstart (idx_n 2) c -> ~ inside (idx_n 2) (path_image (idx_n 2) c) = Empty /\ (open (idx_n 2) (inside (idx_n 2) (path_image (idx_n 2) c)) /\ (connected (idx_n 2) (inside (idx_n 2) (path_image (idx_n 2) c)) /\ (~ outside (idx_n 2) (path_image (idx_n 2) c) = Empty /\ (open (idx_n 2) (outside (idx_n 2) (path_image (idx_n 2) c)) /\ (connected (idx_n 2) (outside (idx_n 2) (path_image (idx_n 2) c)) /\ (bounded_hl (idx_n 2) (inside (idx_n 2) (path_image (idx_n 2) c)) /\ (~ bounded_hl (idx_n 2) (outside (idx_n 2) (path_image (idx_n 2) c)) /\ (inside (idx_n 2) (path_image (idx_n 2) c) :/\: outside (idx_n 2) (path_image (idx_n 2) c) = Empty /\ (inside (idx_n 2) (path_image (idx_n 2) c) :\/: outside (idx_n 2) (path_image (idx_n 2) c) = (R :^: idx_n 2) :\: path_image (idx_n 2) c /\ (frontier (idx_n 2) (inside (idx_n 2) (path_image (idx_n 2) c)) = path_image (idx_n 2) c /\ frontier (idx_n 2) (outside (idx_n 2) (path_image (idx_n 2) c)) = path_image (idx_n 2) c)))))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:28619 / JORDAN_COMPONENTS   (hash md5:e3d755b76706102457faabc6b4412ff0)
// not bridged: 
Theorem JORDAN_COMPONENTS : forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx_n 2) -> simple_path (idx_n 2) g /\ pathfinish (idx_n 2) g = pathstart (idx_n 2) g -> components (idx_n 2) ((R :^: idx_n 2) :\: path_image (idx_n 2) g) = {inside (idx_n 2) (path_image (idx_n 2) g),outside (idx_n 2) (path_image (idx_n 2) g)}.
Admitted.

// HOL Light: Multivariate/paths.ml:28631 / HOMEOMORPHIC_SEPARATION_SPHERE_CARD_EQ   (hash md5:0e4dd1c5cd78b555a7d9efef3fd67e93)
// not bridged: 
Theorem HOMEOMORPHIC_SEPARATION_SPHERE_CARD_EQ : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, s c= sphere N (a,r) /\ (t c= sphere N (a,r) /\ (closed N s /\ (closed N t /\ homeomorphic N N s t))) -> equip (components N (sphere N (a,r) :\: s)) (components N (sphere N (a,r) :\: t)).
Admitted.

// HOL Light: Multivariate/paths.ml:28748 / HOMEOMORPHIC_SEPARATION_SPHERE_HAS_SIZE_EQ   (hash md5:2a842d95ae73dc2dfdea922b5e639240)
// not bridged: 
Theorem HOMEOMORPHIC_SEPARATION_SPHERE_HAS_SIZE_EQ : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, forall n :e omega, s c= sphere N (a,r) /\ (t c= sphere N (a,r) /\ homeomorphic N N s t) -> (equip (components N (sphere N (a,r) :\: s)) n <-> equip (components N (sphere N (a,r) :\: t)) n).
Admitted.

// HOL Light: Multivariate/paths.ml:28772 / HOMEOMORPHIC_SEPARATION_SPHERE   (hash md5:17465a5465dc23d872e9fcb994f4c0d9)
// not bridged: 
Theorem HOMEOMORPHIC_SEPARATION_SPHERE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall a :e R :^: idx N, forall r :e R, s c= sphere N (a,r) /\ (t c= sphere N (a,r) /\ homeomorphic N N s t) -> (connected N (sphere N (a,r) :\: s) <-> connected N (sphere N (a,r) :\: t)).
Admitted.

// HOL Light: Multivariate/paths.ml:28782 / HAS_SIZE_EQ_COMPONENTS_COMPLEMENTS   (hash md5:328f4bb11ac46cc56df46505004ce238)
// not bridged: 
Theorem HAS_SIZE_EQ_COMPONENTS_COMPLEMENTS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall n :e omega, (closed N s /\ closed N t \/ bounded_hl N s /\ bounded_hl N t) /\ homeomorphic N N s t -> (equip (components N ((R :^: idx N) :\: s)) n <-> equip (components N ((R :^: idx N) :\: t)) n).
Admitted.

// HOL Light: Multivariate/paths.ml:28870 / HOMEOMORPHIC_SEPARATION   (hash md5:54ebf44ba28b5792476c20d64fe4ecde)
// not bridged: 
Theorem HOMEOMORPHIC_SEPARATION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, bounded_hl N s /\ (bounded_hl N t /\ homeomorphic N N s t) -> (connected N ((R :^: idx N) :\: s) <-> connected N ((R :^: idx N) :\: t)).
Admitted.

