// hol2mg literal statements (private): shard paths of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/paths.ml:15 / path   (hash md5:3e38207d4ba14c90a8c86f79428dfc66)
Theorem hlt_path_thm : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 <-> hl_continuous_on 1 N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18 / pathstart   (hash md5:b8ae256ecb50a0a77ca7e6a3b6d1a2b8)
Theorem hlt_pathstart_thm : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathstart N g = g (hl_vec 1 (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/paths.ml:21 / pathfinish   (hash md5:410aebb7bed48d26d5beef36d8ace92a)
Theorem hlt_pathfinish_thm : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N g = g (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/paths.ml:24 / path_image   (hash md5:12410178999d897c85e054eebfcb1a6b)
Theorem hlt_path_image_thm : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path_image N g = hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:27 / reversepath   (hash md5:da91d231868e71218cd858bca980d9d6)
Theorem hlt_reversepath_thm : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_reversepath N g = fun x :e hl_ty_cart R 1 => g (hl_vector_sub 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) x).
Admitted.

// HOL Light: Multivariate/paths.ml:30 / joinpaths   (hash md5:6c24f16b1ab64b13b12edf075e77c00e)
Theorem hlt_joinpaths : forall A:set, A <> Empty -> forall g1 g2 :e A :^: hl_ty_cart R 1, hl_poly_add A g1 g2 = fun x :e hl_ty_cart R 1 => hl_COND A (hl_real_le (hl_drop x) (hl_real_div (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (g1 (hl_vmul 1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) x)) (g2 (hl_vector_sub 1 (hl_vmul 1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) x) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/paths.ml:34 / simple_path   (hash md5:9d622dbe43f160d5f520faf5829ba651)
Theorem hlt_simple_path_thm : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 <-> hl_path N g = 1 /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ g x = g y) -> x = y \/ (x = hl_vec 1 (hl_NUMERAL hl_zero) /\ y = hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)) \/ x = hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)) /\ y = hl_vec 1 (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/paths.ml:42 / arc   (hash md5:85c5c4d5d22aeadca0a6ce98137f1bb1)
Theorem hlt_arc_thm : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 <-> hl_path N g = 1 /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ g x = g y) -> x = y.
Admitted.

// HOL Light: Multivariate/paths.ml:54 / PATH_IN_EUCLIDEAN   (hash md5:2862b5e1f6857e9e88eccd17bcdb655a)
Theorem hlt_PATH_IN_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: R, hl_path_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) g = 1 <-> hl_path N (hl_o R (hl_ty_cart R N) (hl_ty_cart R 1) g hl_drop) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N (hl_o R (hl_ty_cart R N) (hl_ty_cart R 1) g hl_drop)) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:77 / PATH_EUCLIDEAN   (hash md5:e97c4225669045d34c9f5e1654984819)
Theorem hlt_PATH_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 <-> hl_path_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) R g hl_lift) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:84 / PATH_PATH_IN   (hash md5:f701cb90b4d0133dbb8cdc97856d2ac7)
Theorem hlt_PATH_PATH_IN : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 <-> hl_path_in (hl_ty_cart R N) (hl_euclidean N) (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) R g hl_lift) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:94 / PATH_EQ   (hash md5:9d50aac8fad5f8c19643c7e1e9310c50)
Theorem hlt_PATH_EQ : forall A:set, A <> Empty -> forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p t = q t) /\ hl_path A p = 1 -> hl_path A q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:99 / PATH_CONTINUOUS_IMAGE   (hash md5:b7ef0f039b879bd813b368cc84cae32e)
Theorem hlt_PATH_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_path M g = 1 /\ hl_continuous_on M N f (hl_path_image M g) = 1 -> hl_path N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:104 / PATH_TRANSLATION_EQ   (hash md5:79d409b25ae243699fb59d19777edaf0)
Theorem hlt_PATH_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) g) = 1 <-> hl_path N g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:116 / PATH_LINEAR_IMAGE_EQ   (hash md5:76c92445c91d5b605513b60754675b0d)
Theorem hlt_PATH_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_path N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = 1 <-> hl_path M g = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:132 / PATHSTART_TRANSLATION   (hash md5:c9d211ee2cab94ab1a29824b895c4e91)
Theorem hlt_PATHSTART_TRANSLATION : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathstart A (hl_o (hl_ty_cart R A) (hl_ty_cart R A) (hl_ty_cart R 1) (fun x :e hl_ty_cart R A => hl_vector_add A a x) g) = hl_vector_add A a (hl_pathstart A g).
Admitted.

// HOL Light: Multivariate/paths.ml:138 / PATHSTART_LINEAR_IMAGE_EQ   (hash md5:48f10ffa03367f3f5462df952ba2f604)
Theorem hlt_PATHSTART_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall g :e hl_ty_cart R B :^: hl_ty_cart R 1, hl_linear B A f = 1 -> hl_pathstart A (hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f g) = f (hl_pathstart B g).
Admitted.

// HOL Light: Multivariate/paths.ml:144 / PATHFINISH_TRANSLATION   (hash md5:c9ff6c6884c03a6e0d198d2227b543d4)
Theorem hlt_PATHFINISH_TRANSLATION : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A (hl_o (hl_ty_cart R A) (hl_ty_cart R A) (hl_ty_cart R 1) (fun x :e hl_ty_cart R A => hl_vector_add A a x) g) = hl_vector_add A a (hl_pathfinish A g).
Admitted.

// HOL Light: Multivariate/paths.ml:150 / PATHFINISH_LINEAR_IMAGE   (hash md5:bc17bb8e8dc7efaaff4edeabdaa58190)
Theorem hlt_PATHFINISH_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall g :e hl_ty_cart R B :^: hl_ty_cart R 1, hl_linear B A f = 1 -> hl_pathfinish A (hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f g) = f (hl_pathfinish B g).
Admitted.

// HOL Light: Multivariate/paths.ml:156 / PATH_IMAGE_TRANSLATION   (hash md5:27efbd1bebb15badded77c84bf28a6fd)
Theorem hlt_PATH_IMAGE_TRANSLATION : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_path_image A (hl_o (hl_ty_cart R A) (hl_ty_cart R A) (hl_ty_cart R 1) (fun x :e hl_ty_cart R A => hl_vector_add A a x) g) = hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) (hl_path_image A g).
Admitted.

// HOL Light: Multivariate/paths.ml:162 / PATH_IMAGE_LINEAR_IMAGE   (hash md5:25996f792b68b91f5960fcfee8fd0039)
Theorem hlt_PATH_IMAGE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall g :e hl_ty_cart R B :^: hl_ty_cart R 1, hl_linear B A f = 1 -> hl_path_image A (hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f g) = hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f (hl_path_image B g).
Admitted.

// HOL Light: Multivariate/paths.ml:168 / REVERSEPATH_TRANSLATION   (hash md5:3852fac687d957a3aeb3363ecda65946)
Theorem hlt_REVERSEPATH_TRANSLATION : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_reversepath A (hl_o (hl_ty_cart R A) (hl_ty_cart R A) (hl_ty_cart R 1) (fun x :e hl_ty_cart R A => hl_vector_add A a x) g) = hl_o (hl_ty_cart R A) (hl_ty_cart R A) (hl_ty_cart R 1) (fun x :e hl_ty_cart R A => hl_vector_add A a x) (hl_reversepath A g).
Admitted.

// HOL Light: Multivariate/paths.ml:174 / REVERSEPATH_LINEAR_IMAGE   (hash md5:281e0fb0604ee3a541e5dbbb7ff78cc1)
Theorem hlt_REVERSEPATH_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall g :e hl_ty_cart R B :^: hl_ty_cart R 1, hl_linear B A f = 1 -> hl_reversepath A (hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f g) = hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f (hl_reversepath B g).
Admitted.

// HOL Light: Multivariate/paths.ml:180 / JOINPATHS_TRANSLATION   (hash md5:c4a25f19d86b4aec0bd94de73e9639a9)
Theorem hlt_JOINPATHS_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_poly_add (hl_ty_cart R N) (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) g1) (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) g2) = hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) (hl_poly_add (hl_ty_cart R N) g1 g2).
Admitted.

// HOL Light: Multivariate/paths.ml:188 / JOINPATHS_LINEAR_IMAGE   (hash md5:5e2bf71423a91b24ed689fa93ece6287)
Theorem hlt_JOINPATHS_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall g1 g2 :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_linear A B f = 1 -> hl_poly_add (hl_ty_cart R B) (hl_o (hl_ty_cart R A) (hl_ty_cart R B) (hl_ty_cart R 1) f g1) (hl_o (hl_ty_cart R A) (hl_ty_cart R B) (hl_ty_cart R 1) f g2) = hl_o (hl_ty_cart R A) (hl_ty_cart R B) (hl_ty_cart R 1) f (hl_poly_add (hl_ty_cart R A) g1 g2).
Admitted.

// HOL Light: Multivariate/paths.ml:195 / SIMPLE_PATH_TRANSLATION_EQ   (hash md5:ef7679003de262f43f2e8e4feec1e6d8)
Theorem hlt_SIMPLE_PATH_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) g) = 1 <-> hl_simple_path N g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:202 / SIMPLE_PATH_LINEAR_IMAGE_EQ   (hash md5:c55ba9c0bafa738ca60a40d3a7fdd22f)
Theorem hlt_SIMPLE_PATH_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_simple_path N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = 1 <-> hl_simple_path M g = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:212 / ARC_TRANSLATION_EQ   (hash md5:bdd661fabbde88d8613c9c44f8a85351)
Theorem hlt_ARC_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) g) = 1 <-> hl_arc N g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:219 / ARC_LINEAR_IMAGE_EQ   (hash md5:79494cf64f6412318b077834513a3c82)
Theorem hlt_ARC_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_arc N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = 1 <-> hl_arc M g = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:229 / SIMPLE_PATH_CONTINUOUS_IMAGE   (hash md5:c56957d1b6ce96a5a00c966793670968)
Theorem hlt_SIMPLE_PATH_CONTINUOUS_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_simple_path A g = 1 /\ (hl_continuous_on A B f (hl_path_image A g) = 1 /\ (forall x y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (hl_path_image A g) = 1 /\ (hl_IN (hl_ty_cart R A) y (hl_path_image A g) = 1 /\ f x = f y) -> x = y)) -> hl_simple_path B (hl_o (hl_ty_cart R A) (hl_ty_cart R B) (hl_ty_cart R 1) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:239 / ARC_CONTINUOUS_IMAGE   (hash md5:72873699941e0135935122e65d1a1449)
Theorem hlt_ARC_CONTINUOUS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_continuous_on N A f (hl_path_image N g) = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_path_image N g) = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_path_image N g) = 1 /\ f x = f y) -> x = y)) -> hl_arc A (hl_o (hl_ty_cart R N) (hl_ty_cart R A) (hl_ty_cart R 1) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:252 / ARC_IMP_SIMPLE_PATH   (hash md5:504a3594d4b66a32a0f58abbf44031e7)
Theorem hlt_ARC_IMP_SIMPLE_PATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 -> hl_simple_path A g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:256 / ARC_IMP_PATH   (hash md5:1595c4fb16e8cb68d720182c816f185a)
Theorem hlt_ARC_IMP_PATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 -> hl_path A g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:260 / SIMPLE_PATH_IMP_PATH   (hash md5:48b04573fd70b6c3bec47bf97e8a36a2)
Theorem hlt_SIMPLE_PATH_IMP_PATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_simple_path A g = 1 -> hl_path A g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:264 / SIMPLE_PATH_CASES   (hash md5:6e36660fcb0bab6ae19e3b42142d10be)
Theorem hlt_SIMPLE_PATH_CASES : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 -> hl_arc N g = 1 \/ hl_pathfinish N g = hl_pathstart N g.
Admitted.

// HOL Light: Multivariate/paths.ml:274 / SIMPLE_PATH_IMP_ARC   (hash md5:64ec845bfdb9049cb0f5d6746aa87907)
Theorem hlt_SIMPLE_PATH_IMP_ARC : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 /\ ~ hl_pathfinish N g = hl_pathstart N g -> hl_arc N g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:279 / ARC_DISTINCT_ENDS   (hash md5:4b6661eae3fe3ae271feb208fc74411d)
Theorem hlt_ARC_DISTINCT_ENDS : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 -> ~ hl_pathfinish N g = hl_pathstart N g.
Admitted.

// HOL Light: Multivariate/paths.ml:287 / ARC_SIMPLE_PATH   (hash md5:683bacdea80ec2a007102bb6cfb28d81)
Theorem hlt_ARC_SIMPLE_PATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 <-> hl_simple_path N g = 1 /\ ~ hl_pathfinish N g = hl_pathstart N g.
Admitted.

// HOL Light: Multivariate/paths.ml:292 / SIMPLE_PATH_EQ_ARC   (hash md5:e73306598b36cffd0ab48426bf890051)
Theorem hlt_SIMPLE_PATH_EQ_ARC : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, ~ hl_pathstart A g = hl_pathfinish A g -> (hl_simple_path A g = 1 <-> hl_arc A g = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:296 / PATH_IMAGE_NONEMPTY   (hash md5:1def93cc9ec9a9d23515f5b15db1cff7)
Theorem hlt_PATH_IMAGE_NONEMPTY : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, ~ hl_path_image A g = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/paths.ml:302 / PATHSTART_IN_PATH_IMAGE   (hash md5:be85a1a43dadb75c756e82f5253d29f4)
Theorem hlt_PATHSTART_IN_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_IN (hl_ty_cart R A) (hl_pathstart A g) (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:308 / PATHFINISH_IN_PATH_IMAGE   (hash md5:cb9c23f8418205360d8abf0bb9b24d37)
Theorem hlt_PATHFINISH_IN_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_IN (hl_ty_cart R A) (hl_pathfinish A g) (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:314 / CONNECTED_PATH_IMAGE   (hash md5:811e261df5f79284d98c5923ec5611bc)
Theorem hlt_CONNECTED_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_path A g = 1 -> hl_connected A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:320 / COMPACT_PATH_IMAGE   (hash md5:5d548c39f227642d205c9ce9d0da7a18)
Theorem hlt_COMPACT_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_path A g = 1 -> hl_compact A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:326 / BOUNDED_PATH_IMAGE   (hash md5:4047b9c333afa6cae6ed2a17d0fb41fe)
Theorem hlt_BOUNDED_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_path A g = 1 -> hl_bounded A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:330 / CLOSED_PATH_IMAGE   (hash md5:e7934916e5cfb4c7438fa6a6627bce50)
Theorem hlt_CLOSED_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_path A g = 1 -> hl_closed A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:334 / CONNECTED_SIMPLE_PATH_IMAGE   (hash md5:0135a16bf11d9e41a2865d2e52e2bd3c)
Theorem hlt_CONNECTED_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_simple_path A g = 1 -> hl_connected A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:338 / COMPACT_SIMPLE_PATH_IMAGE   (hash md5:7a27352ca58973911fb580db0a59d658)
Theorem hlt_COMPACT_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_simple_path A g = 1 -> hl_compact A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:342 / BOUNDED_SIMPLE_PATH_IMAGE   (hash md5:2f0e551d32cac975cf2b8effae0e729f)
Theorem hlt_BOUNDED_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_simple_path A g = 1 -> hl_bounded A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:346 / CLOSED_SIMPLE_PATH_IMAGE   (hash md5:80bc7270633550646048271b96a3f6ef)
Theorem hlt_CLOSED_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_simple_path A g = 1 -> hl_closed A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:350 / CONNECTED_ARC_IMAGE   (hash md5:1f461b2f7b736dba2b7b433acfe35af3)
Theorem hlt_CONNECTED_ARC_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 -> hl_connected A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:354 / COMPACT_ARC_IMAGE   (hash md5:8c2fd0dd722b709b516a03a3fae91158)
Theorem hlt_COMPACT_ARC_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 -> hl_compact A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:358 / BOUNDED_ARC_IMAGE   (hash md5:08e69b1778468a6b6569e5d10f905806)
Theorem hlt_BOUNDED_ARC_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 -> hl_bounded A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:362 / CLOSED_ARC_IMAGE   (hash md5:b01ac87e877145a75d9902a596bb6ee3)
Theorem hlt_CLOSED_ARC_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 -> hl_closed A (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:366 / PATHSTART_COMPOSE   (hash md5:f91f8819300bee8d88f5b7db4243f040)
Theorem hlt_PATHSTART_COMPOSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall p :e hl_ty_cart R B :^: hl_ty_cart R 1, hl_pathstart A (hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f p) = f (hl_pathstart B p).
Admitted.

// HOL Light: Multivariate/paths.ml:370 / PATHFINISH_COMPOSE   (hash md5:a298116d2650f6d35318e319ce7215a8)
Theorem hlt_PATHFINISH_COMPOSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall p :e hl_ty_cart R B :^: hl_ty_cart R 1, hl_pathfinish A (hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f p) = f (hl_pathfinish B p).
Admitted.

// HOL Light: Multivariate/paths.ml:374 / PATH_IMAGE_COMPOSE   (hash md5:1ee9e614357befe2957d55fd65d069e0)
Theorem hlt_PATH_IMAGE_COMPOSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall p :e hl_ty_cart R B :^: hl_ty_cart R 1, hl_path_image A (hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f p) = hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f (hl_path_image B p).
Admitted.

// HOL Light: Multivariate/paths.ml:378 / PATH_COMPOSE_JOIN   (hash md5:b39abc0f41cf55e9d72289a288a7db5b)
Theorem hlt_PATH_COMPOSE_JOIN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall p q :e A :^: hl_ty_cart R 1, hl_o A B (hl_ty_cart R 1) f (hl_poly_add A p q) = hl_poly_add B (hl_o A B (hl_ty_cart R 1) f p) (hl_o A B (hl_ty_cart R 1) f q).
Admitted.

// HOL Light: Multivariate/paths.ml:382 / PATH_COMPOSE_REVERSEPATH   (hash md5:7c89c0e4a0ab6cdd6660caca1201f8f3)
Theorem hlt_PATH_COMPOSE_REVERSEPATH : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall p :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_o (hl_ty_cart R A) (hl_ty_cart R B) (hl_ty_cart R 1) f (hl_reversepath A p) = hl_reversepath B (hl_o (hl_ty_cart R A) (hl_ty_cart R B) (hl_ty_cart R 1) f p).
Admitted.

// HOL Light: Multivariate/paths.ml:386 / JOIN_PATHS_EQ   (hash md5:d29faddc945cfa3b408b12065bcfb0a2)
Theorem hlt_JOIN_PATHS_EQ : forall N:set, N <> Empty -> forall p' q' p q :e hl_ty_cart R N :^: hl_ty_cart R 1, (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p t = p' t) /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> q t = q' t) -> forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_poly_add (hl_ty_cart R N) p q t = hl_poly_add (hl_ty_cart R N) p' q' t.
Admitted.

// HOL Light: Multivariate/paths.ml:396 / CARD_EQ_SIMPLE_PATH_IMAGE   (hash md5:25a1fb6cc96701bb64019b249f370594)
Theorem hlt_CARD_EQ_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_simple_path A g = 1 -> hl_sym_3d5f63 (hl_ty_cart R A) R (hl_path_image A g) (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:408 / INFINITE_SIMPLE_PATH_IMAGE   (hash md5:60332daf8bf35495412c99b29a4e7c96)
Theorem hlt_INFINITE_SIMPLE_PATH_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_simple_path A g = 1 -> hl_INFINITE (hl_ty_cart R A) (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:413 / CARD_EQ_ARC_IMAGE   (hash md5:bc0e34634202e36178d24ce2b6ca2310)
Theorem hlt_CARD_EQ_ARC_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 -> hl_sym_3d5f63 (hl_ty_cart R A) R (hl_path_image A g) (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:417 / INFINITE_ARC_IMAGE   (hash md5:a34eabfc59cf1145d0d499ee694c6476)
Theorem hlt_INFINITE_ARC_IMAGE : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 -> hl_INFINITE (hl_ty_cart R A) (hl_path_image A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:425 / JOINPATHS   (hash md5:a011db2061464378879d173cd52b2ad9)
Theorem hlt_JOINPATHS : forall A:set, A <> Empty -> forall g1 g2 :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A g1 = hl_pathstart A g2 -> hl_poly_add (hl_ty_cart R A) g1 g2 = fun x :e hl_ty_cart R 1 => hl_COND (hl_ty_cart R A) (hl_real_lt (hl_drop x) (hl_real_div (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (g1 (hl_vmul 1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) x)) (g2 (hl_vector_sub 1 (hl_vmul 1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) x) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/paths.ml:439 / REVERSEPATH_REVERSEPATH   (hash md5:0a9574f4267f46600c2a2b9d194bbad9)
Theorem hlt_REVERSEPATH_REVERSEPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_reversepath N (hl_reversepath N g) = g.
Admitted.

// HOL Light: Multivariate/paths.ml:444 / PATHSTART_REVERSEPATH   (hash md5:46fba92797b160761c72cf9f016ba54c)
Theorem hlt_PATHSTART_REVERSEPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathstart A (hl_reversepath A g) = hl_pathfinish A g.
Admitted.

// HOL Light: Multivariate/paths.ml:448 / PATHFINISH_REVERSEPATH   (hash md5:02327668b1a8e674dc30dfdeba127389)
Theorem hlt_PATHFINISH_REVERSEPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A (hl_reversepath A g) = hl_pathstart A g.
Admitted.

// HOL Light: Multivariate/paths.ml:452 / PATHSTART_JOIN   (hash md5:94759bf6ea532cecac87514dd871fcbb)
Theorem hlt_PATHSTART_JOIN : forall A:set, A <> Empty -> forall g1 g2 :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathstart A (hl_poly_add (hl_ty_cart R A) g1 g2) = hl_pathstart A g1.
Admitted.

// HOL Light: Multivariate/paths.ml:457 / PATHFINISH_JOIN   (hash md5:975b58e2249aba9a76400368532bb4c0)
Theorem hlt_PATHFINISH_JOIN : forall A:set, A <> Empty -> forall g1 g2 :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A (hl_poly_add (hl_ty_cart R A) g1 g2) = hl_pathfinish A g2.
Admitted.

// HOL Light: Multivariate/paths.ml:462 / PATH_IMAGE_REVERSEPATH   (hash md5:9a5c072266ce6dcfd9b413e0a3c70a83)
Theorem hlt_PATH_IMAGE_REVERSEPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path_image N (hl_reversepath N g) = hl_path_image N g.
Admitted.

// HOL Light: Multivariate/paths.ml:473 / PATH_REVERSEPATH   (hash md5:a6f4f0799b8c33791410e13cd8f449ec)
Theorem hlt_PATH_REVERSEPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N (hl_reversepath N g) = 1 <-> hl_path N g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:486 / PATH_JOIN   (hash md5:b606de5085cff9edcb34525a9d48e601)
Theorem hlt_PATH_JOIN : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N g1 = hl_pathstart N g2 -> (hl_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 <-> hl_path N g1 = 1 /\ hl_path N g2 = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:581 / PATH_JOIN_IMP   (hash md5:b5f8ed6e2c70a1542d4250ee58d2191e)
Theorem hlt_PATH_JOIN_IMP : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g1 = 1 /\ (hl_path N g2 = 1 /\ hl_pathfinish N g1 = hl_pathstart N g2) -> hl_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:587 / PATH_IMAGE_JOIN_SUBSET   (hash md5:bdb8b9372589b724fdce6cb2cf50d0af)
Theorem hlt_PATH_IMAGE_JOIN_SUBSET : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R N) (hl_path_image N (hl_poly_add (hl_ty_cart R N) g1 g2)) (hl_UNION (hl_ty_cart R N) (hl_path_image N g1) (hl_path_image N g2)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:599 / SUBSET_PATH_IMAGE_JOIN   (hash md5:be6bda1cd16890186a94368246f2540c)
Theorem hlt_SUBSET_PATH_IMAGE_JOIN : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_path_image N g1) s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N g2) s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_path_image N (hl_poly_add (hl_ty_cart R N) g1 g2)) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:607 / PATH_IMAGE_JOIN   (hash md5:f3c38524ee4eb1c29012c510071e14c4)
Theorem hlt_PATH_IMAGE_JOIN : forall A:set, A <> Empty -> forall g1 g2 :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A g1 = hl_pathstart A g2 -> hl_path_image A (hl_poly_add (hl_ty_cart R A) g1 g2) = hl_UNION (hl_ty_cart R A) (hl_path_image A g1) (hl_path_image A g2).
Admitted.

// HOL Light: Multivariate/paths.ml:632 / NOT_IN_PATH_IMAGE_JOIN   (hash md5:e96017f1705f210d51cb0f8f7cb2e9ef)
Theorem hlt_NOT_IN_PATH_IMAGE_JOIN : forall A:set, A <> Empty -> forall g1 g2 :e hl_ty_cart R A :^: hl_ty_cart R 1, forall x :e hl_ty_cart R A, ~ hl_IN (hl_ty_cart R A) x (hl_path_image A g1) = 1 /\ ~ hl_IN (hl_ty_cart R A) x (hl_path_image A g2) = 1 -> ~ hl_IN (hl_ty_cart R A) x (hl_path_image A (hl_poly_add (hl_ty_cart R A) g1 g2)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:637 / ARC_REVERSEPATH   (hash md5:f6c858aeb09f55028a70240ae8d28a90)
Theorem hlt_ARC_REVERSEPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 -> hl_arc A (hl_reversepath A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:647 / ARC_REVERSEPATH_EQ   (hash md5:0aca85dc6021830e1312aaa5d0785a1c)
Theorem hlt_ARC_REVERSEPATH_EQ : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N (hl_reversepath N g) = 1 <-> hl_arc N g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:651 / SIMPLE_PATH_REVERSEPATH   (hash md5:dde2a91851c3d56bc55fa94b51f82b97)
Theorem hlt_SIMPLE_PATH_REVERSEPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_simple_path A g = 1 -> hl_simple_path A (hl_reversepath A g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:661 / SIMPLE_PATH_REVERSEPATH_EQ   (hash md5:ee472574a15435bddfb3e5898668a40f)
Theorem hlt_SIMPLE_PATH_REVERSEPATH_EQ : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N (hl_reversepath N g) = 1 <-> hl_simple_path N g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:665 / SIMPLE_PATH_JOIN_LOOP   (hash md5:f3bf92ff67afe1c26a5cbe60a2e416e0)
Theorem hlt_SIMPLE_PATH_JOIN_LOOP : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g1 = 1 /\ (hl_arc N g2 = 1 /\ (hl_pathfinish N g1 = hl_pathstart N g2 /\ (hl_pathfinish N g2 = hl_pathstart N g1 /\ hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_path_image N g1) (hl_path_image N g2)) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g1) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g2) (hl_EMPTY (hl_ty_cart R N)))) = 1))) -> hl_simple_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:737 / ARC_JOIN   (hash md5:c6a6d5c3127c47b3674446289b11625e)
Theorem hlt_ARC_JOIN : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g1 = 1 /\ (hl_arc N g2 = 1 /\ (hl_pathfinish N g1 = hl_pathstart N g2 /\ hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_path_image N g1) (hl_path_image N g2)) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g2) (hl_EMPTY (hl_ty_cart R N))) = 1)) -> hl_arc N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:793 / REVERSEPATH_JOINPATHS   (hash md5:5bf725a71f03f916f603d17ed4c79f5e)
Theorem hlt_REVERSEPATH_JOINPATHS : forall A:set, A <> Empty -> forall g1 g2 :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A g1 = hl_pathstart A g2 -> hl_reversepath A (hl_poly_add (hl_ty_cart R A) g1 g2) = hl_poly_add (hl_ty_cart R A) (hl_reversepath A g2) (hl_reversepath A g1).
Admitted.

// HOL Light: Multivariate/paths.ml:816 / PATH_JOIN_PATH_ENDS   (hash md5:75feafa657c921bfa4cc47577d05057b)
Theorem hlt_PATH_JOIN_PATH_ENDS : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g2 = 1 /\ hl_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 -> hl_pathfinish N g1 = hl_pathstart N g2.
Admitted.

// HOL Light: Multivariate/paths.ml:850 / PATH_JOIN_EQ   (hash md5:07d5da1d298024442455deccc135186e)
Theorem hlt_PATH_JOIN_EQ : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g1 = 1 /\ hl_path N g2 = 1 -> (hl_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 <-> hl_pathfinish N g1 = hl_pathstart N g2).
Admitted.

// HOL Light: Multivariate/paths.ml:856 / SIMPLE_PATH_JOIN_IMP   (hash md5:166900da1f0c52817167fe8f1697fbed)
Theorem hlt_SIMPLE_PATH_JOIN_IMP : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 /\ hl_pathfinish N g1 = hl_pathstart N g2 -> hl_arc N g1 = 1 /\ (hl_arc N g2 = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_path_image N g1) (hl_path_image N g2)) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g1) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g2) (hl_EMPTY (hl_ty_cart R N)))) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:911 / SIMPLE_PATH_JOIN_LOOP_EQ   (hash md5:c57974832946c6876a5e0d604ac264ac)
Theorem hlt_SIMPLE_PATH_JOIN_LOOP_EQ : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N g2 = hl_pathstart N g1 /\ hl_pathfinish N g1 = hl_pathstart N g2 -> (hl_simple_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 <-> hl_arc N g1 = 1 /\ (hl_arc N g2 = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_path_image N g1) (hl_path_image N g2)) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g1) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g2) (hl_EMPTY (hl_ty_cart R N)))) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:921 / SIMPLE_PATH_JOIN_LOOP_EQ_ALT   (hash md5:27096eaff4cf73693a385fce156c786c)
Theorem hlt_SIMPLE_PATH_JOIN_LOOP_EQ_ALT : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N g2 = hl_pathstart N g1 /\ hl_pathfinish N g1 = hl_pathstart N g2 -> (hl_simple_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 <-> hl_arc N g1 = 1 /\ (hl_arc N g2 = 1 /\ hl_INTER (hl_ty_cart R N) (hl_path_image N g1) (hl_path_image N g2) = hl_INSERT (hl_ty_cart R N) (hl_pathstart N g1) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g2) (hl_EMPTY (hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/paths.ml:935 / ARC_JOIN_EQ   (hash md5:621339be14765812305ba59f184e97be)
Theorem hlt_ARC_JOIN_EQ : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N g1 = hl_pathstart N g2 -> (hl_arc N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 <-> hl_arc N g1 = 1 /\ (hl_arc N g2 = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_path_image N g1) (hl_path_image N g2)) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g2) (hl_EMPTY (hl_ty_cart R N))) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:975 / ARC_JOIN_EQ_ALT   (hash md5:c4d99d7936958827810cd6ee9d098829)
Theorem hlt_ARC_JOIN_EQ_ALT : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N g1 = hl_pathstart N g2 -> (hl_arc N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 <-> hl_arc N g1 = 1 /\ (hl_arc N g2 = 1 /\ hl_INTER (hl_ty_cart R N) (hl_path_image N g1) (hl_path_image N g2) = hl_INSERT (hl_ty_cart R N) (hl_pathstart N g2) (hl_EMPTY (hl_ty_cart R N)))).
Admitted.

// HOL Light: Multivariate/paths.ml:990 / PATH_ASSOC   (hash md5:0d456b50f5464b38688043bd05b6d159)
Theorem hlt_PATH_ASSOC : forall N:set, N <> Empty -> forall p q r :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N p = hl_pathstart N q /\ hl_pathfinish N q = hl_pathstart N r -> (hl_path N (hl_poly_add (hl_ty_cart R N) p (hl_poly_add (hl_ty_cart R N) q r)) = 1 <-> hl_path N (hl_poly_add (hl_ty_cart R N) (hl_poly_add (hl_ty_cart R N) p q) r) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:996 / SIMPLE_PATH_ASSOC   (hash md5:88033d1a9d4930c7c2c99b1d05ebb15f)
Theorem hlt_SIMPLE_PATH_ASSOC : forall N:set, N <> Empty -> forall p q r :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N p = hl_pathstart N q /\ hl_pathfinish N q = hl_pathstart N r -> (hl_simple_path N (hl_poly_add (hl_ty_cart R N) p (hl_poly_add (hl_ty_cart R N) q r)) = 1 <-> hl_simple_path N (hl_poly_add (hl_ty_cart R N) (hl_poly_add (hl_ty_cart R N) p q) r) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:1017 / ARC_ASSOC   (hash md5:b7f872d3ba1001d8d1a12769c1702662)
Theorem hlt_ARC_ASSOC : forall N:set, N <> Empty -> forall p q r :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N p = hl_pathstart N q /\ hl_pathfinish N q = hl_pathstart N r -> (hl_arc N (hl_poly_add (hl_ty_cart R N) p (hl_poly_add (hl_ty_cart R N) q r)) = 1 <-> hl_arc N (hl_poly_add (hl_ty_cart R N) (hl_poly_add (hl_ty_cart R N) p q) r) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:1028 / PATH_SYM   (hash md5:aced1f474045fd06a3aa0211663decc9)
Theorem hlt_PATH_SYM : forall A:set, A <> Empty -> forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A p = hl_pathstart A q /\ hl_pathfinish A q = hl_pathstart A p -> (hl_path A (hl_poly_add (hl_ty_cart R A) p q) = 1 <-> hl_path A (hl_poly_add (hl_ty_cart R A) q p) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:1033 / SIMPLE_PATH_SYM   (hash md5:f9659c65b58ce4efd132845d81ce051b)
Theorem hlt_SIMPLE_PATH_SYM : forall A:set, A <> Empty -> forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A p = hl_pathstart A q /\ hl_pathfinish A q = hl_pathstart A p -> (hl_simple_path A (hl_poly_add (hl_ty_cart R A) p q) = 1 <-> hl_simple_path A (hl_poly_add (hl_ty_cart R A) q p) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:1038 / PATH_IMAGE_SYM   (hash md5:a8d51534087fabba4cd06c7631b0053f)
Theorem hlt_PATH_IMAGE_SYM : forall A:set, A <> Empty -> forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A p = hl_pathstart A q /\ hl_pathfinish A q = hl_pathstart A p -> hl_path_image A (hl_poly_add (hl_ty_cart R A) p q) = hl_path_image A (hl_poly_add (hl_ty_cart R A) q p).
Admitted.

// HOL Light: Multivariate/paths.ml:1047 / shiftpath   (hash md5:debd904ff6dc3dadaa8d39d8ee5d489e)
Theorem hlt_shiftpath_thm : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_shiftpath N a f = fun x :e hl_ty_cart R 1 => hl_COND (hl_ty_cart R N) (hl_real_le (hl_drop (hl_vector_add 1 a x)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (f (hl_vector_add 1 a x)) (f (hl_vector_add 1 a (hl_vector_sub 1 x (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))))).
Admitted.

// HOL Light: Multivariate/paths.ml:1052 / SHIFTPATH_TRANSLATION   (hash md5:d18394912559056c64806e60e7ded98d)
Theorem hlt_SHIFTPATH_TRANSLATION : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall t :e hl_ty_cart R 1, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_shiftpath A t (hl_o (hl_ty_cart R A) (hl_ty_cart R A) (hl_ty_cart R 1) (fun x :e hl_ty_cart R A => hl_vector_add A a x) g) = hl_o (hl_ty_cart R A) (hl_ty_cart R A) (hl_ty_cart R 1) (fun x :e hl_ty_cart R A => hl_vector_add A a x) (hl_shiftpath A t g).
Admitted.

// HOL Light: Multivariate/paths.ml:1058 / SHIFTPATH_LINEAR_IMAGE   (hash md5:8284ab5f9af9f7abeeca302102accec9)
Theorem hlt_SHIFTPATH_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall t :e hl_ty_cart R 1, forall g :e hl_ty_cart R B :^: hl_ty_cart R 1, hl_linear B A f = 1 -> hl_shiftpath A t (hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f g) = hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f (hl_shiftpath B t g).
Admitted.

// HOL Light: Multivariate/paths.ml:1064 / PATHSTART_SHIFTPATH   (hash md5:73a9935edab60bec27c2239d8e65ff46)
Theorem hlt_PATHSTART_SHIFTPATH : forall A:set, A <> Empty -> forall a :e hl_ty_cart R 1, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_pathstart A (hl_shiftpath A a g) = g a.
Admitted.

// HOL Light: Multivariate/paths.ml:1068 / PATHFINISH_SHIFTPATH   (hash md5:45c4f3558c9642d2d46c0b30fef397b1)
Theorem hlt_PATHFINISH_SHIFTPATH : forall A:set, A <> Empty -> forall a :e hl_ty_cart R 1, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop a) = 1 /\ hl_pathfinish A g = hl_pathstart A g -> hl_pathfinish A (hl_shiftpath A a g) = g a.
Admitted.

// HOL Light: Multivariate/paths.ml:1076 / ENDPOINTS_SHIFTPATH   (hash md5:066d26dab22231d46d1759378e2a7519)
Theorem hlt_ENDPOINTS_SHIFTPATH : forall A:set, A <> Empty -> forall a :e hl_ty_cart R 1, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A g = hl_pathstart A g /\ hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_pathfinish A (hl_shiftpath A a g) = g a /\ hl_pathstart A (hl_shiftpath A a g) = g a.
Admitted.

// HOL Light: Multivariate/paths.ml:1083 / CLOSED_SHIFTPATH   (hash md5:4306c479813d28e3df64f190223c9c27)
Theorem hlt_CLOSED_SHIFTPATH : forall A:set, A <> Empty -> forall a :e hl_ty_cart R 1, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_pathfinish A g = hl_pathstart A g /\ hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_pathfinish A (hl_shiftpath A a g) = hl_pathstart A (hl_shiftpath A a g).
Admitted.

// HOL Light: Multivariate/paths.ml:1089 / PATH_SHIFTPATH   (hash md5:862d39fa1f03e9f57b1e63a975c28b52)
Theorem hlt_PATH_SHIFTPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_path N g = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_path N (hl_shiftpath N a g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:1125 / SHIFTPATH_SHIFTPATH   (hash md5:1256ff99452dbe7e6e2ae57c54f5d0c7)
Theorem hlt_SHIFTPATH_SHIFTPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall a x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_pathfinish A g = hl_pathstart A g /\ hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_shiftpath A (hl_vector_sub 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) a) (hl_shiftpath A a g) x = g x.
Admitted.

// HOL Light: Multivariate/paths.ml:1143 / PATH_IMAGE_SHIFTPATH   (hash md5:e002f634e9f528a1265d4036fcbf8d75)
Theorem hlt_PATH_IMAGE_SHIFTPATH : forall N:set, N <> Empty -> forall a :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_pathfinish N g = hl_pathstart N g -> hl_path_image N (hl_shiftpath N a g) = hl_path_image N g.
Admitted.

// HOL Light: Multivariate/paths.ml:1174 / SIMPLE_PATH_SHIFTPATH   (hash md5:05fc2e71662324c5ddae0117a5d805d3)
Theorem hlt_SIMPLE_PATH_SHIFTPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_simple_path A g = 1 /\ (hl_pathfinish A g = hl_pathstart A g /\ hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_simple_path A (hl_shiftpath A a g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:1198 / subpath   (hash md5:294edbf4f78c00259ad72eadc670d387)
Theorem hlt_subpath_thm : forall A:set, A <> Empty -> forall g :e A :^: hl_ty_cart R 1, forall v u :e hl_ty_cart R 1, hl_subpath A u v g = fun x :e hl_ty_cart R 1 => g (hl_vector_add 1 u (hl_vmul 1 (hl_drop (hl_vector_sub 1 v u)) x)).
Admitted.

// HOL Light: Multivariate/paths.ml:1201 / SUBPATH_SCALING_LEMMA   (hash md5:322d531fc0b9d363b676fe7783734087)
Theorem hlt_SUBPATH_SCALING_LEMMA : forall u v :e hl_ty_cart R 1, hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 u (hl_vmul 1 (hl_drop (hl_vector_sub 1 v u)) x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:1212 / PATH_IMAGE_SUBPATH_GEN   (hash md5:2861c6cda5f96ad6e96bd11b82525d81)
Theorem hlt_PATH_IMAGE_SUBPATH_GEN : forall N:set, N <> Empty -> forall u v :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path_image N (hl_subpath (hl_ty_cart R N) u v g) = hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) g (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:1218 / PATH_IMAGE_SUBPATH   (hash md5:a38b085a5ebcdf95ba7200dfb686f0f8)
Theorem hlt_PATH_IMAGE_SUBPATH : forall N:set, N <> Empty -> forall u v :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_real_le (hl_drop u) (hl_drop v) = 1 -> hl_path_image N (hl_subpath (hl_ty_cart R N) u v g) = hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:1224 / PATH_IMAGE_SUBPATH_COMBINE   (hash md5:473d74f253860757f90f5fd0480c2f42)
Theorem hlt_PATH_IMAGE_SUBPATH_COMBINE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall u :e hl_ty_cart R 1, hl_path N g = 1 /\ hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_UNION (hl_ty_cart R N) (hl_path_image N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) u g)) (hl_path_image N (hl_subpath (hl_ty_cart R N) u (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) g)) = hl_path_image N g.
Admitted.

// HOL Light: Multivariate/paths.ml:1236 / PATH_SUBPATH   (hash md5:927600f98028917a98782cc183c06fda)
Theorem hlt_PATH_SUBPATH : forall N:set, N <> Empty -> forall u v :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 /\ (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_path N (hl_subpath (hl_ty_cart R N) u v g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:1251 / PATHSTART_SUBPATH   (hash md5:4675335fa10d6bcd4eb812f297c3d4db)
Theorem hlt_PATHSTART_SUBPATH : forall N:set, N <> Empty -> forall u v :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathstart N (hl_subpath (hl_ty_cart R N) u v g) = g u.
Admitted.

// HOL Light: Multivariate/paths.ml:1255 / PATHFINISH_SUBPATH   (hash md5:1513c523c2cdeb0ed41b4a88724d39cb)
Theorem hlt_PATHFINISH_SUBPATH : forall N:set, N <> Empty -> forall u v :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N (hl_subpath (hl_ty_cart R N) u v g) = g v.
Admitted.

// HOL Light: Multivariate/paths.ml:1260 / SUBPATH_TRIVIAL   (hash md5:092aa6cf2caf3900d0ff24b42f426646)
Theorem hlt_SUBPATH_TRIVIAL : forall A:set, A <> Empty -> forall g :e A :^: hl_ty_cart R 1, hl_subpath A (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) g = g.
Admitted.

// HOL Light: Multivariate/paths.ml:1265 / SUBPATH_REVERSEPATH   (hash md5:9af3bc8c67641395ea18af5c618403b2)
Theorem hlt_SUBPATH_REVERSEPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_subpath (hl_ty_cart R A) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vec 1 (hl_NUMERAL hl_zero)) g = hl_reversepath A g.
Admitted.

// HOL Light: Multivariate/paths.ml:1270 / REVERSEPATH_SUBPATH   (hash md5:b073b866189ca3fe5d6fbf10d3334877)
Theorem hlt_REVERSEPATH_SUBPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_reversepath A (hl_subpath (hl_ty_cart R A) u v g) = hl_subpath (hl_ty_cart R A) v u g.
Admitted.

// HOL Light: Multivariate/paths.ml:1277 / SUBPATH_TRANSLATION   (hash md5:21175b57b6787a8e7d8988cbfa92e65c)
Theorem hlt_SUBPATH_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_subpath (hl_ty_cart R N) u v (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) g) = hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) (hl_subpath (hl_ty_cart R N) u v g).
Admitted.

// HOL Light: Multivariate/paths.ml:1284 / SUBPATH_LINEAR_IMAGE   (hash md5:7a8344b26408e830c689b33059e3eb0e)
Theorem hlt_SUBPATH_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_linear M N f = 1 -> hl_subpath (hl_ty_cart R N) u v (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f (hl_subpath (hl_ty_cart R M) u v g).
Admitted.

// HOL Light: Multivariate/paths.ml:1291 / SIMPLE_PATH_SUBPATH_EQ   (hash md5:010e91e3c34da583b0531515d51c54dc)
Theorem hlt_SIMPLE_PATH_SUBPATH_EQ : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_simple_path A (hl_subpath (hl_ty_cart R A) u v g) = 1 <-> hl_path A (hl_subpath (hl_ty_cart R A) u v g) = 1 /\ (~ u = v /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ g x = g y) -> x = y \/ (x = u /\ y = v \/ x = v /\ y = u)).
Admitted.

// HOL Light: Multivariate/paths.ml:1312 / ARC_SUBPATH_EQ   (hash md5:ff9cecc4705e5ba23ca5aa9aff92f06e)
Theorem hlt_ARC_SUBPATH_EQ : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_arc A (hl_subpath (hl_ty_cart R A) u v g) = 1 <-> hl_path A (hl_subpath (hl_ty_cart R A) u v g) = 1 /\ (~ u = v /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ g x = g y) -> x = y).
Admitted.

// HOL Light: Multivariate/paths.ml:1329 / SIMPLE_PATH_SUBPATH   (hash md5:ab2d90b9aa9653250e11e3fba89bd044)
Theorem hlt_SIMPLE_PATH_SUBPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_simple_path A g = 1 /\ (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ~ u = v)) -> hl_simple_path A (hl_subpath (hl_ty_cart R A) u v g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:1352 / ARC_SIMPLE_PATH_SUBPATH   (hash md5:6118e6cc3e6ece4c1938044046e07b18)
Theorem hlt_ARC_SIMPLE_PATH_SUBPATH : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_simple_path A g = 1 /\ (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ~ g u = g v)) -> hl_arc A (hl_subpath (hl_ty_cart R A) u v g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:1361 / ARC_SUBPATH_ARC   (hash md5:0c43d75df523fba2a86b93284843cac4)
Theorem hlt_ARC_SUBPATH_ARC : forall A:set, A <> Empty -> forall u v :e hl_ty_cart R 1, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_arc A g = 1 /\ (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ~ u = v)) -> hl_arc A (hl_subpath (hl_ty_cart R A) u v g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:1369 / ARC_SIMPLE_PATH_SUBPATH_INTERIOR   (hash md5:c538343b40db08b4a2f22eeb9f7d99ae)
Theorem hlt_ARC_SIMPLE_PATH_SUBPATH_INTERIOR : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_simple_path A g = 1 /\ (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (~ u = v /\ hl_real_lt (hl_real_abs (hl_real_sub (hl_drop u) (hl_drop v))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1))) -> hl_arc A (hl_subpath (hl_ty_cart R A) u v g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:1382 / PATH_IMAGE_SUBPATH_SUBSET   (hash md5:5f854e463b7a6f651a571edfe901503a)
Theorem hlt_PATH_IMAGE_SUBPATH_SUBSET : forall N:set, N <> Empty -> forall u v :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 /\ (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_path_image N (hl_subpath (hl_ty_cart R N) u v g)) (hl_path_image N g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:1391 / JOIN_SUBPATHS_MIDDLE   (hash md5:7fabf6a0dff3f88bcca8055856ca2c4f)
Theorem hlt_JOIN_SUBPATHS_MIDDLE : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_poly_add (hl_ty_cart R N) (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_lift (hl_real_div (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) p) (hl_subpath (hl_ty_cart R N) (hl_lift (hl_real_div (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) p) = p.
Admitted.

// HOL Light: Multivariate/paths.ml:1404 / EXISTS_SUBPATH_OF_PATH   (hash md5:5d3344f16d92d92071069f70885f3f13)
Theorem hlt_EXISTS_SUBPATH_OF_PATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R N, hl_path N g = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_path_image N g) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_path_image N g) = 1) -> exists h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N h = 1 /\ (hl_pathstart N h = a /\ (hl_pathfinish N h = b /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) (hl_path_image N g) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:1420 / EXISTS_SUBPATH_OF_ARC_NOENDS   (hash md5:7516ba6c4e79bbd30c579acbdee60baa)
Theorem hlt_EXISTS_SUBPATH_OF_ARC_NOENDS : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R N, hl_arc N g = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_path_image N g) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_path_image N g) = 1 /\ hl_INTER (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N)))) = hl_EMPTY (hl_ty_cart R N))) -> exists h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N h = 1 /\ (hl_pathstart N h = a /\ (hl_pathfinish N h = b /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) (hl_DIFF (hl_ty_cart R N) (hl_path_image N g) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N))))) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:1459 / EXISTS_SUBARC_OF_ARC_NOENDS   (hash md5:021c9caaeb030de7bc623712c709cf9d)
Theorem hlt_EXISTS_SUBARC_OF_ARC_NOENDS : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R N, hl_arc N g = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_path_image N g) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_path_image N g) = 1 /\ (~ a = b /\ hl_INTER (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N)))) = hl_EMPTY (hl_ty_cart R N)))) -> exists h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N h = 1 /\ (hl_pathstart N h = a /\ (hl_pathfinish N h = b /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) (hl_DIFF (hl_ty_cart R N) (hl_path_image N g) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N))))) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:1502 / EXISTS_ARC_PSUBSET_SIMPLE_PATH   (hash md5:03069cc5b75e704b4a3738a7f34d8233)
Theorem hlt_EXISTS_ARC_PSUBSET_SIMPLE_PATH : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 /\ (hl_closed N s = 1 /\ hl_PSUBSET (hl_ty_cart R N) s (hl_path_image N g) = 1) -> exists h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N h = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_path_image N h) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) (hl_path_image N g) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:1572 / EXISTS_DOUBLE_ARC_EXPLICIT   (hash md5:ec93e80fbfe4355148a5e59dcdf1d4a3)
Theorem hlt_EXISTS_DOUBLE_ARC_EXPLICIT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_simple_path N g = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ (hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) b (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ ~ g a = g b)))) -> exists u d :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N u = 1 /\ (hl_arc N d = 1 /\ (hl_pathstart N u = g a /\ (hl_pathfinish N u = g b /\ (hl_pathstart N d = g b /\ (hl_pathfinish N d = g a /\ (hl_path_image N u = hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) /\ (hl_path_image N d = hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) g (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b))) /\ (hl_INTER (hl_ty_cart R N) (hl_path_image N u) (hl_path_image N d) = hl_INSERT (hl_ty_cart R N) (g a) (hl_INSERT (hl_ty_cart R N) (g b) (hl_EMPTY (hl_ty_cart R N))) /\ hl_UNION (hl_ty_cart R N) (hl_path_image N u) (hl_path_image N d) = hl_path_image N g)))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:1768 / EXISTS_DOUBLE_ARC   (hash md5:746219d7efc2f2053e743b0bc180cfe6)
Theorem hlt_EXISTS_DOUBLE_ARC : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R N, hl_simple_path N g = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ (hl_IN (hl_ty_cart R N) a (hl_path_image N g) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_path_image N g) = 1 /\ ~ a = b))) -> exists u d :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N u = 1 /\ (hl_arc N d = 1 /\ (hl_pathstart N u = a /\ (hl_pathfinish N u = b /\ (hl_pathstart N d = b /\ (hl_pathfinish N d = a /\ (hl_INTER (hl_ty_cart R N) (hl_path_image N u) (hl_path_image N d) = hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))) /\ hl_UNION (hl_ty_cart R N) (hl_path_image N u) (hl_path_image N d) = hl_path_image N g)))))).
Admitted.

// HOL Light: Multivariate/paths.ml:1795 / SUBPATH_TO_FRONTIER_EXPLICIT   (hash md5:cd7c545124749f39408947a7bdd59fe0)
Theorem hlt_SUBPATH_TO_FRONTIER_EXPLICIT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N g = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) s = 1) -> exists u :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop x) = 1 /\ hl_real_lt (hl_drop x) (hl_drop u) = 1 -> hl_IN (hl_ty_cart R N) (g x) (hl_interior N s) = 1) /\ (~ hl_IN (hl_ty_cart R N) (g u) (hl_interior N s) = 1 /\ (u = hl_vec 1 (hl_NUMERAL hl_zero) \/ hl_IN (hl_ty_cart R N) (g u) (hl_closure N s) = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:1853 / SUBPATH_TO_FRONTIER_STRONG   (hash md5:d57ce818de042d8eb37629a8f850ea96)
Theorem hlt_SUBPATH_TO_FRONTIER_STRONG : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N g = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) s = 1) -> exists u :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (~ hl_IN (hl_ty_cart R N) (hl_pathfinish N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) u g)) (hl_interior N s) = 1 /\ (u = hl_vec 1 (hl_NUMERAL hl_zero) \/ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ~ x = hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_IN (hl_ty_cart R N) (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) u g x) (hl_interior N s) = 1) /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) u g)) (hl_closure N s) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:1879 / SUBPATH_TO_FRONTIER   (hash md5:80adbfc23b7120d67dd3e5677f148260)
Theorem hlt_SUBPATH_TO_FRONTIER : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N g = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) s = 1) -> exists u :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathfinish N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) u g)) (hl_frontier N s) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_DELETE (hl_ty_cart R N) (hl_path_image N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) u g)) (hl_pathfinish N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) u g))) (hl_interior N s) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:1903 / EXISTS_PATH_SUBPATH_TO_FRONTIER   (hash md5:6e1e765d7b0e848d5f86fe143eaab985)
Theorem hlt_EXISTS_PATH_SUBPATH_TO_FRONTIER : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N g = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) s = 1) -> exists h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N h = 1 /\ (hl_pathstart N h = hl_pathstart N g /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) (hl_path_image N g) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_DELETE (hl_ty_cart R N) (hl_path_image N h) (hl_pathfinish N h)) (hl_interior N s) = 1 /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N h) (hl_frontier N s) = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:1917 / EXISTS_PATH_SUBPATH_TO_FRONTIER_CLOSED   (hash md5:2c85963eac663dfb605c7bb55a3656e5)
Theorem hlt_EXISTS_PATH_SUBPATH_TO_FRONTIER_CLOSED : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_path N g = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) s = 1)) -> exists h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N h = 1 /\ (hl_pathstart N h = hl_pathstart N g /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) (hl_INTER (hl_ty_cart R N) (hl_path_image N g) s) = 1 /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N h) (hl_frontier N s) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:1933 / PATH_COMBINE   (hash md5:61c8c25ce19e45a20ee1ff3623d32a0b)
Theorem hlt_PATH_COMBINE : forall N:set, N <> Empty -> forall u :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> (hl_path N g = 1 <-> hl_path N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) u g) = 1 /\ hl_path N (hl_subpath (hl_ty_cart R N) u (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) g) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:2000 / linepath   (hash md5:234c8f2bbcb8f0bb4f8f5fef036bb4d7)
Theorem hlt_linepath_thm : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = fun x :e hl_ty_cart R 1 => hl_vector_add A (hl_vmul A (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_drop x)) a) (hl_vmul A (hl_drop x) b).
Admitted.

// HOL Light: Multivariate/paths.ml:2003 / LINEPATH_TRANSLATION   (hash md5:dbc993451d7f6f9ef425d12c97295ca5)
Theorem hlt_LINEPATH_TRANSLATION : forall A:set, A <> Empty -> forall a b c :e hl_ty_cart R A, hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_vector_add A a b) (hl_vector_add A a c)) = hl_o (hl_ty_cart R A) (hl_ty_cart R A) (hl_ty_cart R 1) (fun x :e hl_ty_cart R A => hl_vector_add A a x) (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b c)).
Admitted.

// HOL Light: Multivariate/paths.ml:2009 / LINEPATH_LINEAR_IMAGE   (hash md5:f940201fb9c307ce1a50fa52bbad871c)
Theorem hlt_LINEPATH_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, hl_linear B A f = 1 -> forall b c :e hl_ty_cart R B, hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (f b) (f c)) = hl_o (hl_ty_cart R B) (hl_ty_cart R A) (hl_ty_cart R 1) f (hl_linepath B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) b c)).
Admitted.

// HOL Light: Multivariate/paths.ml:2018 / PATHSTART_LINEPATH   (hash md5:678f8dcf6160edd1d06bef6e04ab0a69)
Theorem hlt_PATHSTART_LINEPATH : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_pathstart A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = a.
Admitted.

// HOL Light: Multivariate/paths.ml:2022 / PATHFINISH_LINEPATH   (hash md5:e5872b09c22356ab3687d69110f583de)
Theorem hlt_PATHFINISH_LINEPATH : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_pathfinish A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = b.
Admitted.

// HOL Light: Multivariate/paths.ml:2026 / CONTINUOUS_LINEPATH_AT   (hash md5:d58684582df45e4cbd0fdb774d0b0dde)
Theorem hlt_CONTINUOUS_LINEPATH_AT : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, forall x :e hl_ty_cart R 1, hl_continuous (hl_ty_cart R 1) A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) (hl_at 1 x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2035 / CONTINUOUS_ON_LINEPATH   (hash md5:35afae8ec67e95c32f58d14b5261dedb)
Theorem hlt_CONTINUOUS_ON_LINEPATH : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R 1, hl_continuous_on 1 A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2039 / PATH_LINEPATH   (hash md5:931425434664afdf890a81c19208ce4d)
Theorem hlt_PATH_LINEPATH : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_path A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2043 / PATH_IMAGE_LINEPATH   (hash md5:1a0e07001d01e5b355ddadfc4021a7fa)
Theorem hlt_PATH_IMAGE_LINEPATH : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_path_image A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = hl_closed_segment A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))).
Admitted.

// HOL Light: Multivariate/paths.ml:2050 / REVERSEPATH_LINEPATH   (hash md5:b8fecc2356ad3a777f2cb44122898adb)
Theorem hlt_REVERSEPATH_LINEPATH : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_reversepath A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b a).
Admitted.

// HOL Light: Multivariate/paths.ml:2055 / ARC_LINEPATH   (hash md5:0fff1fe28f73285aad9b143bb5cafe5d)
Theorem hlt_ARC_LINEPATH : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, ~ a = b -> hl_arc A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2063 / SIMPLE_PATH_LINEPATH   (hash md5:1571f4cc25d95cc65c8e9b9de1f4c207)
Theorem hlt_SIMPLE_PATH_LINEPATH : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, ~ a = b -> hl_simple_path A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2067 / SIMPLE_PATH_LINEPATH_EQ   (hash md5:6a2b77ce7a6efa18f6f5f0527e93f757)
Theorem hlt_SIMPLE_PATH_LINEPATH_EQ : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_simple_path N (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> ~ a = b.
Admitted.

// HOL Light: Multivariate/paths.ml:2077 / ARC_LINEPATH_EQ   (hash md5:f5664cf881282c5682f4d684dd757bb1)
Theorem hlt_ARC_LINEPATH_EQ : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_arc A (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1 <-> ~ a = b.
Admitted.

// HOL Light: Multivariate/paths.ml:2082 / LINEPATH_REFL   (hash md5:0b4e4a850cfc727663594f564367bb3a)
Theorem hlt_LINEPATH_REFL : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a a) = fun x :e hl_ty_cart R 1 => a.
Admitted.

// HOL Light: Multivariate/paths.ml:2086 / PATH_IMAGE_CONST   (hash md5:c89d2cecd50cb35821bf0e0a0d2ae23a)
Theorem hlt_PATH_IMAGE_CONST : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_path_image N (fun x :e hl_ty_cart R 1 => a) = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/paths.ml:2091 / SHIFTPATH_TRIVIAL   (hash md5:e3592e7af9701cf241d4879895a1e690)
Theorem hlt_SHIFTPATH_TRIVIAL : forall A:set, A <> Empty -> forall t :e hl_ty_cart R 1, forall a :e hl_ty_cart R A, hl_shiftpath A t (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a a)) = hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a a).
Admitted.

// HOL Light: Multivariate/paths.ml:2095 / SUBPATH_REFL   (hash md5:83480fb4d44b4f334feeb6a09795edd0)
Theorem hlt_SUBPATH_REFL : forall A:set, A <> Empty -> forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_subpath (hl_ty_cart R A) a a g = hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (g a) (g a)).
Admitted.

// HOL Light: Multivariate/paths.ml:2101 / SEGMENT_TO_FRONTIER   (hash md5:d97613cb5d70cbd4818bff616a8df669)
Theorem hlt_SEGMENT_TO_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1 /\ ~ hl_IN (hl_ty_cart R N) b (hl_interior N s) = 1 -> exists c :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) c (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (~ c = a /\ (hl_IN (hl_ty_cart R N) c (hl_frontier N s) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c)) (hl_interior N s) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:2139 / NOT_ON_PATH_BALL   (hash md5:e47912a9984f1dfaf8adad0e646b2496)
Theorem hlt_NOT_ON_PATH_BALL : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall z :e hl_ty_cart R N, hl_path N g = 1 /\ ~ hl_IN (hl_ty_cart R N) z (hl_path_image N g) = 1 -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_INTER (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R z e1)) (hl_path_image N g) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:2154 / NOT_ON_PATH_CBALL   (hash md5:3cdf75d4ec09777192ee85377b379800)
Theorem hlt_NOT_ON_PATH_CBALL : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall z :e hl_ty_cart R N, hl_path N g = 1 /\ ~ hl_IN (hl_ty_cart R N) z (hl_path_image N g) = 1 -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R z e1)) (hl_path_image N g) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:2170 / HOMEOMORPHISM_ARC   (hash md5:df098bf7c8f921d012f28ba5dd445f91)
Theorem hlt_HOMEOMORPHISM_ARC : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 -> exists h :e hl_ty_cart R 1 :^: hl_ty_cart R N, hl_homeomorphism 1 N (hl_pair (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R N) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_path_image N g)) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R 1) (hl_ty_cart R 1 :^: hl_ty_cart R N) g h) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2176 / HOMEOMORPHIC_ARC_IMAGE_INTERVAL   (hash md5:3319d52c6376dbf95015eb291d3c44a1)
Theorem hlt_HOMEOMORPHIC_ARC_IMAGE_INTERVAL : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_arc N g = 1 /\ hl_real_lt (hl_drop a) (hl_drop b) = 1 -> hl_homeomorphic N 1 (hl_path_image N g) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2187 / HOMEOMORPHIC_ARC_IMAGES   (hash md5:c501ddbaa7e8afa14295670caded9eaf)
Theorem hlt_HOMEOMORPHIC_ARC_IMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc M g = 1 /\ hl_arc N h = 1 -> hl_homeomorphic M N (hl_path_image M g) (hl_path_image N h) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2196 / HOMEOMORPHIC_ARC_IMAGE_SEGMENT   (hash md5:fcb31877c7e0599a765d5d2046d414a4)
Theorem hlt_HOMEOMORPHIC_ARC_IMAGE_SEGMENT : forall M N:set, M <> Empty -> N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R M, hl_arc N g = 1 /\ ~ a = b -> hl_homeomorphic N M (hl_path_image N g) (hl_closed_segment M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2203 / HOMEOMORPHIC_ARC_IMAGE_SEGMENT_EQ   (hash md5:beb582812473126bf7ee8175ae158680)
Theorem hlt_HOMEOMORPHIC_ARC_IMAGE_SEGMENT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R M, ~ a = b -> (hl_homeomorphic N M s (hl_closed_segment M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ hl_path_image N g = s).
Admitted.

// HOL Light: Multivariate/paths.ml:2217 / CONNECTED_SUBSET_PATH_IMAGE_ARC   (hash md5:22091ee66192e407c64bb17d6d7a8b2e)
Theorem hlt_CONNECTED_SUBSET_PATH_IMAGE_ARC : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_connected N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_path_image N g) = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) s = 1 /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) s = 1))) -> s = hl_path_image N g.
Admitted.

// HOL Light: Multivariate/paths.ml:2242 / ARC_IMAGE_UNIQUE   (hash md5:566fad6a723cce08bdbd588b16ae9aaa)
Theorem hlt_ARC_IMAGE_UNIQUE : forall N:set, N <> Empty -> forall g h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 /\ (hl_arc N h = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) (hl_path_image N h) = 1 /\ hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N))) = hl_INSERT (hl_ty_cart R N) (hl_pathstart N h) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N h) (hl_EMPTY (hl_ty_cart R N))))) -> hl_path_image N g = hl_path_image N h.
Admitted.

// HOL Light: Multivariate/paths.ml:2257 / CONNECTED_SUBSET_ARC_PAIR   (hash md5:421ac713b9c888da400b61a2b52bc2cb)
Theorem hlt_CONNECTED_SUBSET_ARC_PAIR : forall N:set, N <> Empty -> forall g h :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_arc N g = 1 /\ (hl_arc N h = 1 /\ (hl_pathstart N g = hl_pathstart N h /\ (hl_pathfinish N g = hl_pathfinish N h /\ (hl_INTER (hl_ty_cart R N) (hl_path_image N g) (hl_path_image N h) = hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N))) /\ (hl_connected N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_UNION (hl_ty_cart R N) (hl_path_image N g) (hl_path_image N h)) = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) s = 1 /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) s = 1))))))) -> hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 \/ hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2381 / HOMEOMORPHIC_SIMPLE_PATH_IMAGES   (hash md5:bdeefb946745daa1d1e81c84477e0b13)
Theorem hlt_HOMEOMORPHIC_SIMPLE_PATH_IMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path M g = 1 /\ (hl_pathfinish M g = hl_pathstart M g /\ (hl_simple_path N h = 1 /\ hl_pathfinish N h = hl_pathstart N h)) -> hl_homeomorphic M N (hl_path_image M g) (hl_path_image N h) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2401 / HOMEOMORPHIC_SIMPLE_PATH_IMAGE_CIRCLE_EQ   (hash md5:02674e4c3216b9e8de7519675a24b5e7)
Theorem hlt_HOMEOMORPHIC_SIMPLE_PATH_IMAGE_CIRCLE_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R (idx_n (2 * dimindex 1)), forall r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 -> (hl_homeomorphic N (idx_n (2 * dimindex 1)) s (hl_sphere (idx_n (2 * dimindex 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) R a r)) = 1 <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ hl_path_image N g = s)).
Admitted.

// HOL Light: Multivariate/paths.ml:2488 / HOMEOMORPHIC_SIMPLE_PATH_IMAGE_CIRCLE   (hash md5:2860fd6857c48fcf310cd1a56c61e950)
Theorem hlt_HOMEOMORPHIC_SIMPLE_PATH_IMAGE_CIRCLE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R (idx_n (2 * dimindex 1)), forall r :e R, hl_simple_path N g = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1) -> hl_homeomorphic N (idx_n (2 * dimindex 1)) (hl_path_image N g) (hl_sphere (idx_n (2 * dimindex 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2498 / path_component   (hash md5:d2a2afab33e0edfb11bc71951a2f6855)
Theorem hlt_path_component_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x y :e hl_ty_cart R A, hl_path_component A s x y = 1 <-> exists g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_path A g = 1 /\ (hl_SUBSET (hl_ty_cart R A) (hl_path_image A g) s = 1 /\ (hl_pathstart A g = x /\ hl_pathfinish A g = y)).
Admitted.

// HOL Light: Multivariate/paths.ml:2503 / path_components   (hash md5:8ba16f02ce8f96e905852d6c21eae1be)
Theorem hlt_path_components_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_path_components A s = hl_GSPEC (2 :^: hl_ty_cart R A) (fun GEN_PVAR_5081 :e 2 :^: hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (2 :^: hl_ty_cart R A) GEN_PVAR_5081 (hl_IN (hl_ty_cart R A) x s) (hl_path_component A s x) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:2506 / PATH_COMPONENT_OF_EUCLIDEAN   (hash md5:a525ef778120e1e3be96c6756aeafb98)
Theorem hlt_PATH_COMPONENT_OF_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_path_component_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) = hl_path_component N s.
Admitted.

// HOL Light: Multivariate/paths.ml:2516 / PATH_COMPONENTS_OF_EUCLIDEAN   (hash md5:5b22d970969c6ef95d89696fa6279683)
Theorem hlt_PATH_COMPONENTS_OF_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_path_components_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) = hl_path_components N s.
Admitted.

// HOL Light: Multivariate/paths.ml:2522 / PATH_COMPONENT_IN   (hash md5:f502d59bc1e38e58fb1d0d2f66d5f712)
Theorem hlt_PATH_COMPONENT_IN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x y :e hl_ty_cart R A, hl_path_component A s x y = 1 -> hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2528 / PATH_COMPONENT_REFL_EQ   (hash md5:107335395f75cfd1609830a3fea637b8)
Theorem hlt_PATH_COMPONENT_REFL_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_path_component N s x x = 1 <-> hl_IN (hl_ty_cart R N) x s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2533 / PATH_COMPONENT_REFL   (hash md5:843c0c850eb7ab68cfc446604edbc9dd)
Theorem hlt_PATH_COMPONENT_REFL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_path_component N s x x = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2537 / PATH_COMPONENT_SYM_EQ   (hash md5:2b8749f03c8a5915fe2c22ac3cee7dd9)
Theorem hlt_PATH_COMPONENT_SYM_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x y :e hl_ty_cart R A, hl_path_component A s x y = 1 <-> hl_path_component A s y x = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2542 / PATH_COMPONENT_SYM   (hash md5:ac6339ab1e7d56ac945385f16686dd9f)
Theorem hlt_PATH_COMPONENT_SYM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_path_component N s x y = 1 -> hl_path_component N s y x = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2546 / PATH_COMPONENT_TRANS   (hash md5:f5488b9719c61dcdf6c6248f9873941f)
Theorem hlt_PATH_COMPONENT_TRANS : forall N:set, N <> Empty -> forall z :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_path_component N s x y = 1 /\ hl_path_component N s y z = 1 -> hl_path_component N s x z = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2551 / PATH_COMPONENT_OF_SUBSET   (hash md5:d2b98277e3f50d660abbd6ed9f728534)
Theorem hlt_PATH_COMPONENT_OF_SUBSET : forall A:set, A <> Empty -> forall y :e hl_ty_cart R A, forall s t :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s t = 1 /\ hl_path_component A s x y = 1 -> hl_path_component A t x y = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2559 / PATH_COMPONENT_SET   (hash md5:232e91c05b4060d48dd8e67839d4c4b4)
Theorem hlt_PATH_COMPONENT_SET : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_path_component A s x = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_5082 :e hl_ty_cart R A => if exists y :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_5082 (if exists g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_path A g = 1 /\ (hl_SUBSET (hl_ty_cart R A) (hl_path_image A g) s = 1 /\ (hl_pathstart A g = x /\ hl_pathfinish A g = y)) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:2565 / PATH_COMPONENT_SUBSET   (hash md5:4a92f0f42f475a12e69edc852ab50e35)
Theorem hlt_PATH_COMPONENT_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_path_component A s x) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2569 / PATH_COMPONENT_EQ_EMPTY   (hash md5:10df1f1641481a98c97afb33064219c8)
Theorem hlt_PATH_COMPONENT_EQ_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_path_component A s x = hl_EMPTY (hl_ty_cart R A) <-> ~ hl_IN (hl_ty_cart R A) x s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2574 / PATH_COMPONENT_EMPTY   (hash md5:4186c58bd9d17ef1b90697d8e03798f1)
Theorem hlt_PATH_COMPONENT_EMPTY : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_path_component A (hl_EMPTY (hl_ty_cart R A)) x = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/paths.ml:2578 / UNIONS_PATH_COMPONENT   (hash md5:7115589272c6268a21644918c890d34b)
Theorem hlt_UNIONS_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5083 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5083 (hl_IN (hl_ty_cart R N) x s) (hl_path_component N s x) = 1 then 1 else 0)) = s.
Admitted.

// HOL Light: Multivariate/paths.ml:2586 / PATH_COMPONENT_TRANSLATION   (hash md5:db6b12c947335ef24153a5c9b61ac1fb)
Theorem hlt_PATH_COMPONENT_TRANSLATION : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_path_component A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x1 :e hl_ty_cart R A => hl_vector_add A a x1) s) (hl_vector_add A a x) = hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x1 :e hl_ty_cart R A => hl_vector_add A a x1) (hl_path_component A s x).
Admitted.

// HOL Light: Multivariate/paths.ml:2593 / PATH_COMPONENT_LINEAR_IMAGE   (hash md5:3a61c5846eeedb83778c90c241c1dc02)
Theorem hlt_PATH_COMPONENT_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, hl_linear B A f = 1 /\ ((forall x1 y :e hl_ty_cart R B, f x1 = f y -> x1 = y) /\ (forall y :e hl_ty_cart R A, exists x1 :e hl_ty_cart R B, f x1 = y)) -> hl_path_component A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) (f x) = hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f (hl_path_component B s x).
Admitted.

// HOL Light: Multivariate/paths.ml:2606 / path_connected   (hash md5:0ea9c9da94220655fb912d4dedbf7314)
Theorem hlt_path_connected_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_path_connected A s = 1 <-> forall x y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y s = 1 -> exists g :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_path A g = 1 /\ (hl_SUBSET (hl_ty_cart R A) (hl_path_image A g) s = 1 /\ (hl_pathstart A g = x /\ hl_pathfinish A g = y)).
Admitted.

// HOL Light: Multivariate/paths.ml:2612 / PATH_CONNECTED_IFF_PATH_COMPONENT   (hash md5:f838e167efaa18a175b44e9a50cce5fb)
Theorem hlt_PATH_CONNECTED_IFF_PATH_COMPONENT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_path_connected A s = 1 <-> forall x y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y s = 1 -> hl_path_component A s x y = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2616 / PATH_CONNECTED_IN_EUCLIDEAN   (hash md5:74e7852230e469f2d0e921187921bdcf)
Theorem hlt_PATH_CONNECTED_IN_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_path_connected_in (hl_ty_cart R N) (hl_euclidean N) s = 1 <-> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2623 / PATH_CONNECTED_SPACE_EUCLIDEAN_SUBTOPOLOGY   (hash md5:a7a524cb5ecac3fb08ef08014f7328b5)
Theorem hlt_PATH_CONNECTED_SPACE_EUCLIDEAN_SUBTOPOLOGY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_path_connected_space (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) = 1 <-> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2631 / PATH_CONNECTED_IMP_PATH_COMPONENT   (hash md5:7a27bfa0de1e3ddd0e3957afd5ab49fe)
Theorem hlt_PATH_CONNECTED_IMP_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_path_connected N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1) -> hl_path_component N s a b = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2636 / PATH_CONNECTED_COMPONENT_SET   (hash md5:5b8091f31c8e52adec801e140b6633b7)
Theorem hlt_PATH_CONNECTED_COMPONENT_SET : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_path_connected A s = 1 <-> forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> hl_path_component A s x = s.
Admitted.

// HOL Light: Multivariate/paths.ml:2641 / PATH_COMPONENT_MONO   (hash md5:643105c57058842f69f67d25ba290462)
Theorem hlt_PATH_COMPONENT_MONO : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_SUBSET (hl_ty_cart R A) (hl_path_component A s x) (hl_path_component A t x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2645 / PATH_COMPONENT_MAXIMAL   (hash md5:8d974a9bd9b7ad75e43422f0e0cc6444)
Theorem hlt_PATH_COMPONENT_MAXIMAL : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x t = 1 /\ (hl_path_connected A t = 1 /\ hl_SUBSET (hl_ty_cart R A) t s = 1) -> hl_SUBSET (hl_ty_cart R A) t (hl_path_component A s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2651 / PATH_COMPONENT_EQ   (hash md5:c2186383ec6ffec1fded373c516005b1)
Theorem hlt_PATH_COMPONENT_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) y (hl_path_component A s x) = 1 -> hl_path_component A s y = hl_path_component A s x.
Admitted.

// HOL Light: Multivariate/paths.ml:2657 / PATH_CONNECTED_PATH_IMAGE   (hash md5:dc28de71a9368248416aa8ef5f5d1dc7)
Theorem hlt_PATH_CONNECTED_PATH_IMAGE : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 -> hl_path_connected N (hl_path_image N p) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2664 / PATH_COMPONENT_PATH_IMAGE_PATHSTART   (hash md5:6475c4ef2915f6e8388fc7bd1b174da8)
Theorem hlt_PATH_COMPONENT_PATH_IMAGE_PATHSTART : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, forall x :e hl_ty_cart R N, hl_path N p = 1 /\ hl_IN (hl_ty_cart R N) x (hl_path_image N p) = 1 -> hl_path_component N (hl_path_image N p) (hl_pathstart N p) x = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2674 / PATH_CONNECTED_PATH_COMPONENT   (hash md5:ac3998ad5e882f3a331c72760aef615a)
Theorem hlt_PATH_CONNECTED_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_path_connected N (hl_path_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2682 / PATH_COMPONENT   (hash md5:8bbd115f60f1b39474d921ea9c9e82da)
Theorem hlt_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_path_component N s x y = 1 <-> exists t :e 2 :^: hl_ty_cart R N, hl_path_connected N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_IN (hl_ty_cart R N) x t = 1 /\ hl_IN (hl_ty_cart R N) y t = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:2693 / PATH_COMPONENT_PATH_COMPONENT   (hash md5:16be8fb266ca114bc0c281c936a8e913)
Theorem hlt_PATH_COMPONENT_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_path_component N (hl_path_component N s x) x = hl_path_component N s x.
Admitted.

// HOL Light: Multivariate/paths.ml:2707 / PATH_CONNECTED_LINEPATH   (hash md5:1cbe7730a33a9345026a4c26d2baa2d4)
Theorem hlt_PATH_CONNECTED_LINEPATH : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1 -> hl_path_component N s a b = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2714 / PATH_COMPONENT_DISJOINT   (hash md5:b0e7ac9ce8c8128726faa1e960cb5343)
Theorem hlt_PATH_COMPONENT_DISJOINT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a b :e hl_ty_cart R A, hl_DISJOINT (hl_ty_cart R A) (hl_path_component A s a) (hl_path_component A s b) = 1 <-> ~ hl_IN (hl_ty_cart R A) a (hl_path_component A s b) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2720 / PATH_COMPONENT_EQ_EQ   (hash md5:9e604585ae6585c47e93f1884fb29258)
Theorem hlt_PATH_COMPONENT_EQ_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_path_component N s x = hl_path_component N s y <-> ~ hl_IN (hl_ty_cart R N) x s = 1 /\ ~ hl_IN (hl_ty_cart R N) y s = 1 \/ hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_path_component N s x y = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:2736 / PATH_COMPONENT_UNIQUE   (hash md5:88ecb11071fe98c73c87dab11ca63015)
Theorem hlt_PATH_COMPONENT_UNIQUE : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x c = 1 /\ (hl_SUBSET (hl_ty_cart R N) c s = 1 /\ (hl_path_connected N c = 1 /\ (forall c' :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x c' = 1 /\ (hl_SUBSET (hl_ty_cart R N) c' s = 1 /\ hl_path_connected N c' = 1) -> hl_SUBSET (hl_ty_cart R N) c' c = 1))) -> hl_path_component N s x = c.
Admitted.

// HOL Light: Multivariate/paths.ml:2749 / PATH_COMPONENT_INTERMEDIATE_SUBSET   (hash md5:bda71f1f6f995c34b47027b5e61072ae)
Theorem hlt_PATH_COMPONENT_INTERMEDIATE_SUBSET : forall N:set, N <> Empty -> forall t u :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_path_component N u a) t = 1 /\ hl_SUBSET (hl_ty_cart R N) t u = 1 -> hl_path_component N t a = hl_path_component N u a.
Admitted.

// HOL Light: Multivariate/paths.ml:2761 / COMPLEMENT_PATH_COMPONENT_UNIONS   (hash md5:909609dbae281ca8662a4221eaa193cb)
Theorem hlt_COMPLEMENT_PATH_COMPONENT_UNIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_DIFF (hl_ty_cart R N) s (hl_path_component N s x) = hl_UNIONS (hl_ty_cart R N) (hl_DELETE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5084 :e 2 :^: hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5084 (hl_IN (hl_ty_cart R N) y s) (hl_path_component N s y) = 1 then 1 else 0)) (hl_path_component N s x)).
Admitted.

// HOL Light: Multivariate/paths.ml:2778 / OPEN_GENERAL_COMPONENT   (hash md5:2be2e2f5e4d9e15dab3f31a3551c20a4)
Theorem hlt_OPEN_GENERAL_COMPONENT : forall N:set, N <> Empty -> forall c :e 2 :^: hl_ty_cart R N :^: hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, c s x y = 1 -> hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1) /\ ((forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, c s x y = 1 -> c s y x = 1) /\ ((forall s :e 2 :^: hl_ty_cart R N, forall x y z :e hl_ty_cart R N, c s x y = 1 /\ c s y z = 1 -> c s x z = 1) /\ ((forall s t :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ c s x y = 1 -> c t x y = 1) /\ (forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, forall e1 :e R, hl_IN (hl_ty_cart R N) y (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) s = 1 -> c (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) x y = 1)))) -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open N s = 1 -> hl_open N (c s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2805 / OPEN_NON_GENERAL_COMPONENT   (hash md5:cf6efba76227233d4a99b96de357d776)
Theorem hlt_OPEN_NON_GENERAL_COMPONENT : forall N:set, N <> Empty -> forall c :e 2 :^: hl_ty_cart R N :^: hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, c s x y = 1 -> hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1) /\ ((forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, c s x y = 1 -> c s y x = 1) /\ ((forall s :e 2 :^: hl_ty_cart R N, forall x y z :e hl_ty_cart R N, c s x y = 1 /\ c s y z = 1 -> c s x z = 1) /\ ((forall s t :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ c s x y = 1 -> c t x y = 1) /\ (forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, forall e1 :e R, hl_IN (hl_ty_cart R N) y (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) s = 1 -> c (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) x y = 1)))) -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open N s = 1 -> hl_open N (hl_DIFF (hl_ty_cart R N) s (c s x)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2833 / GENERAL_CONNECTED_OPEN   (hash md5:39b6114ec174511bc2f53c973c8c23a2)
Theorem hlt_GENERAL_CONNECTED_OPEN : forall N:set, N <> Empty -> forall c :e 2 :^: hl_ty_cart R N :^: hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, c s x y = 1 -> hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1) /\ ((forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, c s x y = 1 -> c s y x = 1) /\ ((forall s :e 2 :^: hl_ty_cart R N, forall x y z :e hl_ty_cart R N, c s x y = 1 /\ c s y z = 1 -> c s x z = 1) /\ ((forall s t :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ c s x y = 1 -> c t x y = 1) /\ (forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, forall e1 :e R, hl_IN (hl_ty_cart R N) y (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) s = 1 -> c (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) x y = 1)))) -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1)) -> c s x y = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2872 / CONVEX_IMP_PATH_CONNECTED   (hash md5:910b9613fd412ad43d999a6067092864)
Theorem hlt_CONVEX_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2885 / PATH_CONNECTED_UNIV   (hash md5:e1d54b3c0d104958eb5fa17fd6c73ee7)
Theorem hlt_PATH_CONNECTED_UNIV : forall N:set, N <> Empty -> hl_path_connected N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2889 / IS_INTERVAL_PATH_CONNECTED   (hash md5:35e37764052499e1597547d1bf2a7993)
Theorem hlt_IS_INTERVAL_PATH_CONNECTED : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_is_interval A s = 1 -> hl_path_connected A s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2893 / PATH_CONNECTED_INTERVAL   (hash md5:77da0f9ef7c051b7be0a12c11574c08b)
Theorem hlt_PATH_CONNECTED_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_path_connected N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_path_connected N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2898 / PATH_COMPONENT_UNIV   (hash md5:a2b22a155a81f34a7e3418be7c800f98)
Theorem hlt_PATH_COMPONENT_UNIV : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_path_component N (hl_UNIV (hl_ty_cart R N)) x = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:2902 / PATH_CONNECTED_IMP_CONNECTED   (hash md5:de91760b7734055586719e713390d351)
Theorem hlt_PATH_CONNECTED_IMP_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_path_connected N s = 1 -> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2915 / OPEN_PATH_COMPONENT   (hash md5:efdba42ec0749e16a3055edee02becab)
Theorem hlt_OPEN_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open N s = 1 -> hl_open N (hl_path_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2924 / OPEN_NON_PATH_COMPONENT   (hash md5:91090f048cc90c834c1aba5ae3697d33)
Theorem hlt_OPEN_NON_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open N s = 1 -> hl_open N (hl_DIFF (hl_ty_cart R N) s (hl_path_component N s x)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2933 / PATH_CONNECTED_CONTINUOUS_IMAGE   (hash md5:8f018098883ff84d710af6a34c6f4e10)
Theorem hlt_PATH_CONNECTED_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ hl_path_connected M s = 1 -> hl_path_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2948 / HOMEOMORPHIC_PATH_CONNECTEDNESS   (hash md5:57ae03c9274fa8970f06761a64b081ba)
Theorem hlt_HOMEOMORPHIC_PATH_CONNECTEDNESS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall t :e 2 :^: hl_ty_cart R B, hl_homeomorphic A B s t = 1 -> (hl_path_connected A s = 1 <-> hl_path_connected B t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:2953 / PATH_CONNECTED_LINEAR_IMAGE   (hash md5:1254a615cfb21a451835388069be5174)
Theorem hlt_PATH_CONNECTED_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_path_connected M s = 1 /\ hl_linear M N f = 1 -> hl_path_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2958 / PATH_CONNECTED_LINEAR_IMAGE_EQ   (hash md5:0f9eda0eb8c6165700a5a72e3f1a90f2)
Theorem hlt_PATH_CONNECTED_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ (forall x y :e hl_ty_cart R B, f x = f y -> x = y) -> (hl_path_connected A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1 <-> hl_path_connected B s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:2965 / HOMEOMORPHISM_PATH_CONNECTEDNESS   (hash md5:bc4b2dbe232702e900969d9d7a7b3cc9)
Theorem hlt_HOMEOMORPHISM_PATH_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R M, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> (hl_path_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f k) = 1 <-> hl_path_connected M k = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:2976 / PATH_CONNECTED_EMPTY   (hash md5:bd5f0d0b4b938726d21f402f82297508)
Theorem hlt_PATH_CONNECTED_EMPTY : forall A:set, A <> Empty -> hl_path_connected A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2980 / PATH_CONNECTED_SING   (hash md5:60e0eb239ef3084ef2bba24a003ae699)
Theorem hlt_PATH_CONNECTED_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_path_connected N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2987 / PATH_CONNECTED_UNION   (hash md5:ecac425dc7bea312e06e9392a0e640db)
Theorem hlt_PATH_CONNECTED_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_path_connected A s = 1 /\ (hl_path_connected A t = 1 /\ ~ hl_INTER (hl_ty_cart R A) s t = hl_EMPTY (hl_ty_cart R A)) -> hl_path_connected A (hl_UNION (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:2994 / PATH_CONNECTED_UNIONS   (hash md5:20765b5fdebd2162470c44774ef72611)
Theorem hlt_PATH_CONNECTED_UNIONS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_path_connected N s = 1) /\ ~ hl_INTERS (hl_ty_cart R N) f = hl_EMPTY (hl_ty_cart R N) -> hl_path_connected N (hl_UNIONS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3020 / PATH_CONNECTED_TRANSLATION   (hash md5:582b378d443f0c429bf959d56542577b)
Theorem hlt_PATH_CONNECTED_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_path_connected N s = 1 -> hl_path_connected N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3025 / PATH_CONNECTED_TRANSLATION_EQ   (hash md5:c9b20690ea16f4a7ce5c88c3e5b0e1ed)
Theorem hlt_PATH_CONNECTED_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_path_connected N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3031 / PATH_CONNECTED_PCROSS   (hash md5:5062c0eab5402f085e2b6ac7dc37d745)
Theorem hlt_PATH_CONNECTED_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_path_connected M s = 1 /\ hl_path_connected N t = 1 -> hl_path_connected (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3060 / PATH_CONNECTED_PCROSS_EQ   (hash md5:aa9e833ae0c0bc2930d24c4cca625971)
Theorem hlt_PATH_CONNECTED_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_path_connected (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_path_connected M s = 1 /\ hl_path_connected N t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:3083 / PATH_COMPONENT_PCROSS   (hash md5:9a8a84e708a5e26f57fe5ee6e3795b53)
Theorem hlt_PATH_COMPONENT_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R M, forall b :e hl_ty_cart R N, hl_path_component (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) (hl_pastecart R M N a b) = hl_PCROSS R M N (hl_path_component M s a) (hl_path_component N t b).
Admitted.

// HOL Light: Multivariate/paths.ml:3111 / PATH_CONNECTED_SCALING   (hash md5:e6ac4ccc3acb2b4dd4188aa5207a90c5)
Theorem hlt_PATH_CONNECTED_SCALING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_path_connected N s = 1 -> hl_path_connected N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3120 / PATH_CONNECTED_SCALING_EQ   (hash md5:ce0df9635f79de5ec44c8aab2e952187)
Theorem hlt_PATH_CONNECTED_SCALING_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_path_connected N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3132 / PATH_CONNECTED_AFFINITY_EQ   (hash md5:799d5056dfa203805896d5d050e894ee)
Theorem hlt_PATH_CONNECTED_AFFINITY_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_path_connected N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1 <-> m = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3139 / PATH_CONNECTED_AFFINITY   (hash md5:d8a1defa3b30da63f0c1ad3cba3e1da9)
Theorem hlt_PATH_CONNECTED_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_path_connected N s = 1 -> hl_path_connected N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3144 / PATH_CONNECTED_NEGATIONS   (hash md5:0741efec4808b00db99ada98a3a66d0b)
Theorem hlt_PATH_CONNECTED_NEGATIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_path_connected N s = 1 -> hl_path_connected N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3153 / PATH_CONNECTED_SUMS   (hash md5:ea56b6b6098928a3e46e090b3c040077)
Theorem hlt_PATH_CONNECTED_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_path_connected N s = 1 /\ hl_path_connected N t = 1 -> hl_path_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5085 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5085 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3170 / IS_INTERVAL_PATH_CONNECTED_1   (hash md5:a73eadb5dffcfeab7708b00e660b58bb)
Theorem hlt_IS_INTERVAL_PATH_CONNECTED_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 <-> hl_path_connected 1 s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3179 / CARD_LE_PATH_COMPONENTS   (hash md5:c6a97b27b8521545996c983d871bf2f0)
Theorem hlt_CARD_LE_PATH_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 -> hl_sym_3c3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5086 :e 2 :^: hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5086 (hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) (hl_path_component N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) y) = 1 then 1 else 0)) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_5087 :e 2 :^: hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_5087 (hl_IN (hl_ty_cart R M) x s) (hl_path_component M s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3200 / CARD_LE_CONNECTED_COMPONENTS   (hash md5:0a4e6d62c627c43c1db727a9dc7da55b)
Theorem hlt_CARD_LE_CONNECTED_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 -> hl_sym_3c3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5088 :e 2 :^: hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5088 (hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) (hl_connected_component N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) y) = 1 then 1 else 0)) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_5089 :e 2 :^: hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_5089 (hl_IN (hl_ty_cart R M) x s) (hl_connected_component M s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3221 / CARD_LE_COMPONENTS   (hash md5:112df8f2c1c1f0c7535b4a87949c3498)
Theorem hlt_CARD_LE_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 -> hl_sym_3c3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R M) (hl_components N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) (hl_components M s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3230 / PATH_CONNECTED_SEGMENT   (hash md5:4139c3edeebf14b023ff0b8114016380)
Theorem hlt_PATH_CONNECTED_SEGMENT : forall A B:set, A <> Empty -> B <> Empty -> (forall a b :e hl_ty_cart R A, hl_path_connected A (hl_closed_segment A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1) /\ forall a b :e hl_ty_cart R B, hl_path_connected B (hl_open_segment B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3235 / PATH_CONNECTED_SEMIOPEN_SEGMENT   (hash md5:979178a9aa80bb25789381e1ce60dae6)
Theorem hlt_PATH_CONNECTED_SEMIOPEN_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_path_connected N (hl_DELETE (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) a) = 1) /\ forall a b :e hl_ty_cart R N, hl_path_connected N (hl_DELETE (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) b) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3240 / SUBSET_CONTINUOUS_IMAGE_SEGMENT_1   (hash md5:9a7e742c7cd6b02f7a83409388c570c5)
Theorem hlt_SUBSET_CONTINUOUS_IMAGE_SEGMENT_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_continuous_on N 1 f (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_SUBSET (hl_ty_cart R 1) (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f a) (f b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3252 / CONTINUOUS_INJECTIVE_IMAGE_SEGMENT_1   (hash md5:7a3c19fbcfc09884882962b6ead57976)
Theorem hlt_CONTINUOUS_INJECTIVE_IMAGE_SEGMENT_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_continuous_on N 1 f (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ f x = f y) -> x = y) -> hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f a) (f b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:3307 / CONTINUOUS_INJECTIVE_IMAGE_OPEN_SEGMENT_1   (hash md5:830d6bc6c17f3e80de0b7aea6acc1196)
Theorem hlt_CONTINUOUS_INJECTIVE_IMAGE_OPEN_SEGMENT_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_continuous_on N 1 f (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ f x = f y) -> x = y) -> hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_open_segment 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f a) (f b)).
Admitted.

// HOL Light: Multivariate/paths.ml:3320 / CONTINUOUS_IVT_LOCAL_EXTREMUM   (hash md5:3e980ea5dcd15b009756e67a33a27771)
Theorem hlt_CONTINUOUS_IVT_LOCAL_EXTREMUM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_continuous_on N 1 f (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (~ a = b /\ f a = f b) -> exists z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) z (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 /\ ((forall w :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) w (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_real_le (hl_drop (f w)) (hl_drop (f z)) = 1) \/ forall w :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) w (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_real_le (hl_drop (f z)) (hl_drop (f w)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:3348 / FRONTIER_UNIONS_SUBSET_CLOSURE   (hash md5:4abeec99a7e08b316ea254fb997fb2d4)
Theorem hlt_FRONTIER_UNIONS_SUBSET_CLOSURE : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (hl_ty_cart R N) (hl_frontier N (hl_UNIONS (hl_ty_cart R N) f)) (hl_closure N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5090 :e 2 :^: hl_ty_cart R N => if exists t :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5090 (hl_IN (2 :^: hl_ty_cart R N) t f) (hl_frontier N t) = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3375 / FRONTIER_UNIONS_SUBSET   (hash md5:812afb520cbed02169cf181510e5b961)
Theorem hlt_FRONTIER_UNIONS_SUBSET : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_frontier N (hl_UNIONS (hl_ty_cart R N) f)) (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5091 :e 2 :^: hl_ty_cart R N => if exists t :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5091 (hl_IN (2 :^: hl_ty_cart R N) t f) (hl_frontier N t) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3384 / CLOSURE_CONVEX_INTER_AFFINE   (hash md5:a98ec1a8a09432c73e18707d31cd5d8b)
Theorem hlt_CLOSURE_CONVEX_INTER_AFFINE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_affine N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_relative_interior N s) t = hl_EMPTY (hl_ty_cart R N)) -> hl_closure N (hl_INTER (hl_ty_cart R N) s t) = hl_INTER (hl_ty_cart R N) (hl_closure N s) t.
Admitted.

// HOL Light: Multivariate/paths.ml:3421 / RELATIVE_FRONTIER_CONVEX_INTER_AFFINE   (hash md5:ea75dc5d71c8baba228f5876e4b5ee84)
Theorem hlt_RELATIVE_FRONTIER_CONVEX_INTER_AFFINE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_affine N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_interior N s) t = hl_EMPTY (hl_ty_cart R N)) -> hl_relative_frontier N (hl_INTER (hl_ty_cart R N) s t) = hl_INTER (hl_ty_cart R N) (hl_frontier N s) t.
Admitted.

// HOL Light: Multivariate/paths.ml:3434 / RELATIVE_FRONTIER_CBALL_INTER_AFFINE   (hash md5:57ced403eac0d65d96816c72caac8ab8)
Theorem hlt_RELATIVE_FRONTIER_CBALL_INTER_AFFINE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_affine N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ ~ r = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_relative_frontier N (hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) s) = hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) s.
Admitted.

// HOL Light: Multivariate/paths.ml:3448 / CONNECTED_COMPONENT_1_GEN   (hash md5:3f0c7689460e9ab77eb50dbee46c6841)
Theorem hlt_CONNECTED_COMPONENT_1_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_connected_component N s a b = 1 <-> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:3456 / CONNECTED_COMPONENT_1   (hash md5:f2e11f011134e24d14f05e1111ee0ce8)
Theorem hlt_CONNECTED_COMPONENT_1 : forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_connected_component 1 s a b = 1 <-> hl_SUBSET (hl_ty_cart R 1) (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3460 / HOMEOMORPHIC_SEGMENTS   (hash md5:b1fdd5f0984174b01c25901305d0f5f1)
Theorem hlt_HOMEOMORPHIC_SEGMENTS : forall M N:set, M <> Empty -> N <> Empty -> (forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_homeomorphic M N (hl_closed_segment M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> (a = b <-> c = d)) /\ ((forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, ~ hl_homeomorphic M N (hl_closed_segment M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1) /\ ((forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, ~ hl_homeomorphic M N (hl_open_segment M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_homeomorphic M N (hl_open_segment M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1 <-> (a = b <-> c = d))).
Admitted.

// HOL Light: Multivariate/paths.ml:3498 / HOMEOMORPHISM_SEGMENT   (hash md5:0655cd5d7d906d740d00297baddbca2b)
Theorem hlt_HOMEOMORPHISM_SEGMENT : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, ~ a = b -> exists h :e hl_ty_cart R 1 :^: hl_ty_cart R N, hl_homeomorphism 1 N (hl_pair (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R N) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R 1) (hl_ty_cart R 1 :^: hl_ty_cart R N) (fun t :e hl_ty_cart R 1 => hl_vector_add N (hl_vmul N (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_drop t)) a) (hl_vmul N (hl_drop t) b)) h) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3515 / CONNECTED_SUBSET_SEGMENT   (hash md5:728aa023a8747c213cc62c58b1921ae3)
Theorem hlt_CONNECTED_SUBSET_SEGMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_connected N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1)) -> s = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/paths.ml:3546 / DIAMETER_SEGMENT   (hash md5:8641d5766c145734ffcbba090ae2e870)
Theorem hlt_DIAMETER_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_diameter N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) /\ forall a b :e hl_ty_cart R N, hl_diameter N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b).
Admitted.

// HOL Light: Multivariate/paths.ml:3565 / SIMPLE_PATH_ENDLESS   (hash md5:6cc4122ad12bb6c25c7409a85547bdc5)
Theorem hlt_SIMPLE_PATH_ENDLESS : forall N:set, N <> Empty -> forall c :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N c = 1 -> hl_DIFF (hl_ty_cart R N) (hl_path_image N c) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N c) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N c) (hl_EMPTY (hl_ty_cart R N)))) = hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) c (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/paths.ml:3580 / PATH_CONNECTED_SIMPLE_PATH_ENDLESS   (hash md5:f3d79fb65c931ebb7777a231de53a742)
Theorem hlt_PATH_CONNECTED_SIMPLE_PATH_ENDLESS : forall N:set, N <> Empty -> forall c :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N c = 1 -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) (hl_path_image N c) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N c) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N c) (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3592 / CONNECTED_SIMPLE_PATH_ENDLESS   (hash md5:888a1fb610c8f55683ccaf63d2f32d50)
Theorem hlt_CONNECTED_SIMPLE_PATH_ENDLESS : forall N:set, N <> Empty -> forall c :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N c = 1 -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_path_image N c) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N c) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N c) (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3598 / NONEMPTY_SIMPLE_PATH_ENDLESS   (hash md5:85b3c3269ed31940636db4b6caf91fa0)
Theorem hlt_NONEMPTY_SIMPLE_PATH_ENDLESS : forall N:set, N <> Empty -> forall c :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N c = 1 -> ~ hl_DIFF (hl_ty_cart R N) (hl_path_image N c) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N c) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N c) (hl_EMPTY (hl_ty_cart R N)))) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:3604 / CONNECTED_ARC_IMAGE_DELETE   (hash md5:5e521e59edc20a2a69a228b02d35bc51)
Theorem hlt_CONNECTED_ARC_IMAGE_DELETE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R N, hl_arc N g = 1 /\ hl_IN (hl_ty_cart R N) a (hl_path_image N g) = 1 -> (hl_connected N (hl_DELETE (hl_ty_cart R N) (hl_path_image N g) a) = 1 <-> hl_IN (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N)))) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:3647 / CONNECTED_SIMPLE_PATH_IMAGE_DELETE   (hash md5:82465e9625e73501f32a74480ae344b5)
Theorem hlt_CONNECTED_SIMPLE_PATH_IMAGE_DELETE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R N, hl_simple_path N g = 1 /\ hl_pathfinish N g = hl_pathstart N g -> hl_connected N (hl_DELETE (hl_ty_cart R N) (hl_path_image N g) a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3664 / HOMEOMORPHIC_SIMPLE_PATH_ARC   (hash md5:ba6f377377ae9402de652152d70d1b8e)
Theorem hlt_HOMEOMORPHIC_SIMPLE_PATH_ARC : forall M N:set, M <> Empty -> N <> Empty -> forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc M g = 1 /\ (hl_simple_path N h = 1 /\ hl_homeomorphic M N (hl_path_image M g) (hl_path_image N h) = 1) -> hl_arc N h = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3700 / HOMEOMORPHIC_SIMPLE_PATH_ARC_EQ   (hash md5:fd403d9b8bdc18bca24d516f3a3c2491)
Theorem hlt_HOMEOMORPHIC_SIMPLE_PATH_ARC_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path M g = 1 /\ (hl_simple_path N h = 1 /\ hl_homeomorphic M N (hl_path_image M g) (hl_path_image N h) = 1) -> (hl_arc M g = 1 <-> hl_arc N h = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:3712 / ARC_ENDS_UNIQUE   (hash md5:3743380e9e3ceb0bdfb351e2cf54b386)
Theorem hlt_ARC_ENDS_UNIQUE : forall N:set, N <> Empty -> forall g h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_simple_path N h = 1 /\ hl_path_image N g = hl_path_image N h) -> hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N))) = hl_INSERT (hl_ty_cart R N) (hl_pathstart N h) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N h) (hl_EMPTY (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/paths.ml:3729 / ARC_HOMEOMORPHISM_ENDS   (hash md5:3e81cb937ec4c1e4a5b6d3b3c9f84cab)
Theorem hlt_ARC_HOMEOMORPHISM_ENDS : forall N:set, N <> Empty -> forall g h :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f f' :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_path_image N g) (hl_path_image N h)) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f f') = 1 /\ (hl_arc N g = 1 /\ hl_arc N h = 1) -> f (hl_pathstart N g) = hl_pathstart N h /\ (f (hl_pathfinish N g) = hl_pathfinish N h /\ (f' (hl_pathstart N h) = hl_pathstart N g /\ f' (hl_pathfinish N h) = hl_pathfinish N g)) \/ f (hl_pathstart N g) = hl_pathfinish N h /\ (f (hl_pathfinish N g) = hl_pathstart N h /\ (f' (hl_pathstart N h) = hl_pathfinish N g /\ f' (hl_pathfinish N h) = hl_pathstart N g)).
Admitted.

// HOL Light: Multivariate/paths.ml:3754 / HOMEOMORPHISM_ARC_IMAGES   (hash md5:07c2ae41cde11364fb678b7405a4f8b0)
Theorem hlt_HOMEOMORPHISM_ARC_IMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc M g = 1 /\ hl_arc N h = 1 -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists f' :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_path_image M g) (hl_path_image N h)) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f f') = 1 /\ (f (hl_pathstart M g) = hl_pathstart N h /\ (f (hl_pathfinish M g) = hl_pathfinish N h /\ (f' (hl_pathstart N h) = hl_pathstart M g /\ f' (hl_pathfinish N h) = hl_pathfinish M g))).
Admitted.

// HOL Light: Multivariate/paths.ml:3776 / COLLINEAR_SIMPLE_PATH_IMAGE   (hash md5:31b748cd3064ce35bd02903b3e320e42)
Theorem hlt_COLLINEAR_SIMPLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 /\ hl_collinear N (hl_path_image N g) = 1 -> hl_path_image N g = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_pathstart N g) (hl_pathfinish N g)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/paths.ml:3803 / INJECTIVE_INTO_1D_EQ_HOMEOMORPHISM   (hash md5:a1c826d0c5c06f2fa20a622bfc3d1247)
Theorem hlt_INJECTIVE_INTO_1D_EQ_HOMEOMORPHISM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_continuous_on N 1 f s = 1 /\ hl_path_connected N s = 1 -> ((forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ f x = f y) -> x = y) <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_homeomorphism N 1 (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R 1) s (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f s)) (hl_pair (hl_ty_cart R 1 :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R 1) f g) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:3826 / INJECTIVE_INTO_1D_IMP_OPEN_MAP   (hash md5:16033a2a8318cfa60027f4e81ca72176)
Theorem hlt_INJECTIVE_INTO_1D_IMP_OPEN_MAP : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_continuous_on N 1 f s = 1 /\ (hl_path_connected N s = 1 /\ ((forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ f x = f y) -> x = y) /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1)) -> hl_open_in (hl_ty_cart R 1) (hl_subtopology (hl_ty_cart R 1) (hl_euclidean 1) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f s)) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3835 / HOMEOMORPHISM_INTO_1D   (hash md5:3b40fa1b9916e1bed6287455b017697b)
Theorem hlt_HOMEOMORPHISM_INTO_1D : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R 1, hl_path_connected N s = 1 /\ (hl_continuous_on N 1 f s = 1 /\ (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f s = t /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ f x = f y) -> x = y))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_homeomorphism N 1 (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R 1) s t) (hl_pair (hl_ty_cart R 1 :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R 1) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3851 / CONTINUOUS_INJECTIVE_IFF_MONOTONIC   (hash md5:2d179b4368ab590abac5c84f36fbcfd8)
Theorem hlt_CONTINUOUS_INJECTIVE_IFF_MONOTONIC : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_continuous_on 1 1 f s = 1 /\ hl_is_interval 1 s = 1 -> ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ f x = f y) -> x = y) <-> (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1) \/ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (f y)) (hl_drop (f x)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:3871 / CONTINUOUS_INJECTIVE_IMP_MONOTONIC   (hash md5:e1458f19a6187109cc36ca1bb603ae29)
Theorem hlt_CONTINUOUS_INJECTIVE_IMP_MONOTONIC : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_continuous_on 1 1 f s = 1 /\ (hl_is_interval 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ f x = f y) -> x = y)) -> (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> (hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1 <-> hl_real_lt (hl_drop x) (hl_drop y) = 1)) \/ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> (hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1 <-> hl_real_lt (hl_drop y) (hl_drop x) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:3891 / HOMEOMORPHISM_1D_IMP_MONOTONIC   (hash md5:fecd174b8c8225f20219551a031624e8)
Theorem hlt_HOMEOMORPHISM_1D_IMP_MONOTONIC : forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_homeomorphism 1 1 (hl_pair (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) s t) (hl_pair (hl_ty_cart R 1 :^: hl_ty_cart R 1) (hl_ty_cart R 1 :^: hl_ty_cart R 1) f g) = 1 /\ hl_is_interval 1 s = 1 -> (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> (hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1 <-> hl_real_lt (hl_drop x) (hl_drop y) = 1)) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x t = 1 /\ hl_IN (hl_ty_cart R 1) y t = 1 -> (hl_real_lt (hl_drop (g x)) (hl_drop (g y)) = 1 <-> hl_real_lt (hl_drop x) (hl_drop y) = 1)) \/ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> (hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1 <-> hl_real_lt (hl_drop y) (hl_drop x) = 1)) /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x t = 1 /\ hl_IN (hl_ty_cart R 1) y t = 1 -> (hl_real_lt (hl_drop (g x)) (hl_drop (g y)) = 1 <-> hl_real_lt (hl_drop y) (hl_drop x) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:3916 / CONVEXITY_PRESERVING   (hash md5:6033ae57b1d2bd7b0069246b461f70e6)
Theorem hlt_CONVEXITY_PRESERVING : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_convex M c = 1 -> hl_convex N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) <-> forall a b :e hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_closed_segment M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> hl_convex N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_closed_segment M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3932 / CONVEXITY_PRESERVING_ALT   (hash md5:5d7948deb5452d9409265b37a1168224)
Theorem hlt_CONVEXITY_PRESERVING_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_convex M c = 1 -> hl_convex N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) <-> forall a b :e hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_closed_segment M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f a) (f b)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_closed_segment M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:3947 / DARBOUX_AND_REGULATED_IMP_CONTINUOUS   (hash md5:f0390d70135a1437d781b12987d82be4)
Theorem hlt_DARBOUX_AND_REGULATED_IMP_CONTINUOUS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ ((forall c :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) c s = 1 /\ hl_connected 1 c = 1 -> hl_connected N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f c) = 1) /\ (forall a :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) a s = 1 -> (exists l :e hl_ty_cart R N, hl_tendsto (hl_ty_cart R 1) N f l (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_INTER (hl_ty_cart R 1) s (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_5096 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_5096 (hl_real_le (hl_drop x) (hl_drop a)) x = 1 then 1 else 0)))) = 1) /\ exists r :e hl_ty_cart R N, hl_tendsto (hl_ty_cart R 1) N f r (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_INTER (hl_ty_cart R 1) s (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_5097 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_5097 (hl_real_le (hl_drop a) (hl_drop x)) x = 1 then 1 else 0)))) = 1)) -> hl_continuous_on 1 N f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4035 / LIPSCHITZ_ON_UNION   (hash md5:60a127079a5c32fbd62b745eddbc1bef)
Theorem hlt_LIPSCHITZ_ON_UNION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, forall l :e R, hl_is_interval 1 s = 1 /\ (hl_is_interval 1 t = 1 /\ (~ hl_INTER (hl_ty_cart R 1) s t = hl_EMPTY (hl_ty_cart R 1) /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul l (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x t = 1 /\ hl_IN (hl_ty_cart R 1) y t = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul l (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1)))) -> forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_UNION (hl_ty_cart R 1) s t) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_UNION (hl_ty_cart R 1) s t) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul l (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4070 / LIPSCHITZ_ON_COMBINE   (hash md5:cc262c8f1a675b2b03f26abf0230d3fe)
Theorem hlt_LIPSCHITZ_ON_COMBINE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, forall l :e R, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul l (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) b c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) b c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul l (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1) -> forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul l (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4095 / LOCALLY_LIPSCHITZ_GEN   (hash md5:0e569c68bffff05e724f89ed9ca5417a)
Theorem hlt_LOCALLY_LIPSCHITZ_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall b :e R, hl_convex M s = 1 /\ (forall x :e hl_ty_cart R M, forall c :e R, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_lt b c = 1 -> hl_eventually (hl_ty_cart R M) (fun y :e hl_ty_cart R M => hl_real_le (hl_vector_norm N (hl_vector_sub N (f y) (f x))) (hl_real_mul c (hl_vector_norm M (hl_vector_sub M y x)))) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) -> forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul b (hl_vector_norm M (hl_vector_sub M x y))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4270 / LOCALLY_LIPSCHITZ   (hash md5:79e2c7c62e1fe3a070681713672c122c)
Theorem hlt_LOCALLY_LIPSCHITZ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall b :e R, hl_convex M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_eventually (hl_ty_cart R M) (fun y :e hl_ty_cart R M => hl_real_le (hl_vector_norm N (hl_vector_sub N (f y) (f x))) (hl_real_mul b (hl_vector_norm M (hl_vector_sub M y x)))) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) -> forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul b (hl_vector_norm M (hl_vector_sub M x y))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4290 / CARD_EQ_SEGMENT   (hash md5:ed2fe27a8847777f9ce8cb675e8e2a5f)
Theorem hlt_CARD_EQ_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, ~ a = b -> hl_sym_3d5f63 (hl_ty_cart R N) R (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_UNIV R) = 1) /\ forall a b :e hl_ty_cart R N, ~ a = b -> hl_sym_3d5f63 (hl_ty_cart R N) R (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4303 / UNCOUNTABLE_SEGMENT   (hash md5:54f3fe59d06dd813d75d1102ef7dc2ce)
Theorem hlt_UNCOUNTABLE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, ~ a = b -> ~ hl_COUNTABLE (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, ~ a = b -> ~ hl_COUNTABLE (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4308 / CARD_EQ_PATH_CONNECTED   (hash md5:4433898e75ca4f0976c9e31e0886cc82)
Theorem hlt_CARD_EQ_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_path_connected N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ ~ a = b)) -> hl_sym_3d5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4313 / UNCOUNTABLE_PATH_CONNECTED   (hash md5:36d1e6bccbaec6d33d25a8ee4aa477cf)
Theorem hlt_UNCOUNTABLE_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_path_connected N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ ~ a = b)) -> ~ hl_COUNTABLE (hl_ty_cart R N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4321 / CARD_EQ_CONVEX   (hash md5:6550362a6021dd708b59f684cfb548c7)
Theorem hlt_CARD_EQ_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ ~ a = b)) -> hl_sym_3d5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4326 / UNCOUNTABLE_CONVEX   (hash md5:bb3071873dbbd1627b76ae721ce2e94a)
Theorem hlt_UNCOUNTABLE_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ ~ a = b)) -> ~ hl_COUNTABLE (hl_ty_cart R N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4334 / CARD_EQ_NONEMPTY_INTERIOR   (hash md5:3b3806c64c6e410b1e00bfea64a4610c)
Theorem hlt_CARD_EQ_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> hl_sym_3d5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4344 / UNCOUNTABLE_NONEMPTY_INTERIOR   (hash md5:8ccc0761768b09b8f2c8b4c9d60e0cb6)
Theorem hlt_UNCOUNTABLE_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> ~ hl_COUNTABLE (hl_ty_cart R N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4348 / COUNTABLE_EMPTY_INTERIOR   (hash md5:21cdfb19ac724a8f4464eae8c5ba779a)
Theorem hlt_COUNTABLE_EMPTY_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_COUNTABLE (hl_ty_cart R N) s = 1 -> hl_interior N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:4368 / CONNECTED_FINITE_EQ_LOWDIM   (hash md5:65153e84b21170ac59f96ef4e01030e4)
Theorem hlt_CONNECTED_FINITE_EQ_LOWDIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 -> (hl_FINITE (hl_ty_cart R N) s = 1 <-> hl_int_le (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:4374 / CLOSED_AS_FRONTIER_OF_SUBSET   (hash md5:99f5f48b0e75b42019e1462d60aa97ef)
Theorem hlt_CLOSED_AS_FRONTIER_OF_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 <-> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ s = hl_frontier N t.
Admitted.

// HOL Light: Multivariate/paths.ml:4385 / CLOSED_AS_FRONTIER   (hash md5:253bb7b39ab66a5eec227f3e6273a42b)
Theorem hlt_CLOSED_AS_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 <-> exists t :e 2 :^: hl_ty_cart R N, s = hl_frontier N t.
Admitted.

// HOL Light: Multivariate/paths.ml:4390 / CARD_EQ_PERFECT_SET   (hash md5:c7ffdde161db86ab1696bf0634af56b9)
Theorem hlt_CARD_EQ_PERFECT_SET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_limit_point_of N x s = 1) /\ ~ s = hl_EMPTY (hl_ty_cart R N)) -> hl_sym_3d5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4404 / CARD_EQ_CLOSED   (hash md5:8af247f8efdd6c07ac2df40f7883c91d)
Theorem hlt_CARD_EQ_CLOSED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_sym_3c3d5f63 (hl_ty_cart R N) omega s (hl_UNIV omega) = 1 \/ hl_sym_3d5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4421 / CARD_EQ_CONDENSATION_POINTS   (hash md5:a63b7dec34cf35ec00019e6623f9729b)
Theorem hlt_CARD_EQ_CONDENSATION_POINTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_sym_3d5f63 (hl_ty_cart R N) R (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5116 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5116 (hl_condensation_point_of N x s) x = 1 then 1 else 0)) (hl_UNIV R) = 1 <-> ~ hl_COUNTABLE (hl_ty_cart R N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4421 / CONDENSATION_POINTS_EQ_EMPTY   (hash md5:1f087dce50777fc392270e5f758db946)
Theorem hlt_CONDENSATION_POINTS_EQ_EMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5115 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5115 (hl_condensation_point_of N x s) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) <-> hl_COUNTABLE (hl_ty_cart R N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4445 / UNCOUNTABLE_HAS_CONDENSATION_POINT   (hash md5:d0e6528e3bc197d48dd6d5af0016b50a)
Theorem hlt_UNCOUNTABLE_HAS_CONDENSATION_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_COUNTABLE (hl_ty_cart R N) s = 1 -> exists x :e hl_ty_cart R N, hl_condensation_point_of N x s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4453 / COSMALL_APPROXIMATION   (hash md5:df864d40250493168cc5a5f8b65fff0f)
Theorem hlt_COSMALL_APPROXIMATION : forall s :e 2 :^: R, hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) s) (hl_UNIV R) = 1 -> forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y s = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4477 / COCOUNTABLE_APPROXIMATION   (hash md5:1fee1503f2d746bd38d554e95c876d93)
Theorem hlt_COCOUNTABLE_APPROXIMATION : forall s :e 2 :^: R, hl_COUNTABLE R (hl_DIFF R (hl_UNIV R) s) = 1 -> forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, hl_IN R y s = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4487 / OPEN_SET_COSMALL_COORDINATES   (hash md5:2fbf923c41147c7534e684fe757bcaed)
Theorem hlt_OPEN_SET_COSMALL_COORDINATES : forall N:set, N <> Empty -> forall P :e 2 :^: R :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) (hl_GSPEC R (fun GEN_PVAR_5118 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_5118 (P i x) x = 1 then 1 else 0))) (hl_UNIV R) = 1) -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P i (hl_vindex R N x i) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4519 / OPEN_SET_COCOUNTABLE_COORDINATES   (hash md5:2f17a0b65423d3844b7a8815fbc45062)
Theorem hlt_OPEN_SET_COCOUNTABLE_COORDINATES : forall N:set, N <> Empty -> forall P :e 2 :^: R :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_COUNTABLE R (hl_DIFF R (hl_UNIV R) (hl_GSPEC R (fun GEN_PVAR_5119 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_5119 (P i x) x = 1 then 1 else 0))) = 1) -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P i (hl_vindex R N x i) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4532 / OPEN_SET_IRRATIONAL_COORDINATES   (hash md5:ee81fbff7691972b6fb29cde4c5ace9f)
Theorem hlt_OPEN_SET_IRRATIONAL_COORDINATES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> ~ hl_rational (hl_vindex R N x i) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:4539 / CLOSURE_COSMALL_COORDINATES   (hash md5:5f7f9029ff7e8efe596fc97da1287b77)
Theorem hlt_CLOSURE_COSMALL_COORDINATES : forall N:set, N <> Empty -> forall P :e 2 :^: R :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_sym_3c5f63 R R (hl_DIFF R (hl_UNIV R) (hl_GSPEC R (fun GEN_PVAR_5121 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_5121 (P i x) x = 1 then 1 else 0))) (hl_UNIV R) = 1) -> hl_closure N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5122 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5122 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P i (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:4552 / CLOSURE_COCOUNTABLE_COORDINATES   (hash md5:3279393862b59318b4c15ce070880f3a)
Theorem hlt_CLOSURE_COCOUNTABLE_COORDINATES : forall N:set, N <> Empty -> forall P :e 2 :^: R :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_COUNTABLE R (hl_DIFF R (hl_UNIV R) (hl_GSPEC R (fun GEN_PVAR_5123 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_5123 (P i x) x = 1 then 1 else 0))) = 1) -> hl_closure N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5124 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5124 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P i (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:4564 / CLOSURE_IRRATIONAL_COORDINATES   (hash md5:503e32e38d455d59504affc43ec7357a)
Theorem hlt_CLOSURE_IRRATIONAL_COORDINATES : forall N:set, N <> Empty -> hl_closure N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5126 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5126 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> ~ hl_rational (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:4576 / HOMEOMORPHIC_MONOTONE_IMAGE_INTERVAL   (hash md5:69025774a521518dc1d77c878885505c)
Theorem hlt_HOMEOMORPHIC_MONOTONE_IMAGE_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall y :e hl_ty_cart R N, hl_connected 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_5141 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_5141 (if hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ~ f (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) = f (hl_vec 1 (hl_NUMERAL hl_zero))) -> hl_homeomorphic N 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:5948 / PATH_CONTAINS_ARC   (hash md5:fb72738dd04d9c4e92a142f96a34cf1d)
Theorem hlt_PATH_CONTAINS_ARC : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R N, hl_path N p = 1 /\ (hl_pathstart N p = a /\ (hl_pathfinish N p = b /\ ~ a = b)) -> exists q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N q = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N q) (hl_path_image N p) = 1 /\ (hl_pathstart N q = a /\ hl_pathfinish N q = b)).
Admitted.

// HOL Light: Multivariate/paths.ml:6366 / PATH_CONNECTED_ARCWISE   (hash md5:8825ec0fbd7e8d24929f604a3ded29c3)
Theorem hlt_PATH_CONNECTED_ARCWISE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_path_connected N s = 1 <-> forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ ~ x = y) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_pathstart N g = x /\ hl_pathfinish N g = y)).
Admitted.

// HOL Light: Multivariate/paths.ml:6389 / ARC_CONNECTED_TRANS   (hash md5:15463832ace2f6414f2d14ddc5be3bbe)
Theorem hlt_ARC_CONNECTED_TRANS : forall N:set, N <> Empty -> forall g h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_arc N h = 1 /\ (hl_pathfinish N g = hl_pathstart N h /\ ~ hl_pathstart N g = hl_pathfinish N h)) -> exists i :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N i = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N i) (hl_UNION (hl_ty_cart R N) (hl_path_image N g) (hl_path_image N h)) = 1 /\ (hl_pathstart N i = hl_pathstart N g /\ hl_pathfinish N i = hl_pathfinish N h)).
Admitted.

// HOL Light: Multivariate/paths.ml:6407 / LOCALLY_CONNECTED_SPACE_SUBTOPOLOGY_EUCLIDEAN   (hash md5:3ee3b4b8a548d579bbe68504ddae96f4)
Theorem hlt_LOCALLY_CONNECTED_SPACE_SUBTOPOLOGY_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally_connected_space (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) = 1 <-> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6418 / LOCALLY_CONNECTED   (hash md5:b8b3f4af6a6092f7c7d28d68c914e945)
Theorem hlt_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 <-> forall v :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) x v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_connected N u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ hl_SUBSET (hl_ty_cart R N) u v = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:6418 / LOCALLY_CONNECTED_OPEN_CONNECTED_COMPONENT   (hash md5:01388bbc67d09befea3725a911ebdc3d)
Theorem hlt_LOCALLY_CONNECTED_OPEN_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ hl_IN (hl_ty_cart R N) x t = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_connected_component N t x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6455 / LOCALLY_PATH_CONNECTED_SPACE_SUBTOPOLOGY_EUCLIDEAN   (hash md5:913c1272972b151985f6af44a51af2bc)
Theorem hlt_LOCALLY_PATH_CONNECTED_SPACE_SUBTOPOLOGY_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally_path_connected_space (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) = 1 <-> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6466 / LOCALLY_PATH_CONNECTED   (hash md5:4f9a8db3e24b2fcfe2b79d8608a537ce)
Theorem hlt_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 <-> forall v :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) x v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_path_connected N u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ hl_SUBSET (hl_ty_cart R N) u v = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:6466 / LOCALLY_PATH_CONNECTED_OPEN_PATH_COMPONENT   (hash md5:5a998f94a362600659f034a005345485)
Theorem hlt_LOCALLY_PATH_CONNECTED_OPEN_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ hl_IN (hl_ty_cart R N) x t = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_path_component N t x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6503 / LOCALLY_CONNECTED_OPEN_COMPONENT   (hash md5:34c7782a3590fa5eb303bb14324f1f57)
Theorem hlt_LOCALLY_CONNECTED_OPEN_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 <-> forall t c :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N t) = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6511 / LOCALLY_CONNECTED_IM_KLEINEN   (hash md5:dab3a22938d6868c96e447229cbff2f2)
Theorem hlt_LOCALLY_CONNECTED_IM_KLEINEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 <-> forall v :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) x v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y u = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_connected N c = 1 /\ (hl_SUBSET (hl_ty_cart R N) c v = 1 /\ (hl_IN (hl_ty_cart R N) x c = 1 /\ hl_IN (hl_ty_cart R N) y c = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:6537 / LOCALLY_PATH_CONNECTED_IM_KLEINEN   (hash md5:fa4f96249172b6469617b9570ed22e6e)
Theorem hlt_LOCALLY_PATH_CONNECTED_IM_KLEINEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 <-> forall v :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) x v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y u = 1 -> exists p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) v = 1 /\ (hl_pathstart N p = x /\ hl_pathfinish N p = y)))).
Admitted.

// HOL Light: Multivariate/paths.ml:6572 / LOCALLY_PATH_CONNECTED_IMP_LOCALLY_CONNECTED   (hash md5:be90341f985b258b263fc75b0861fca9)
Theorem hlt_LOCALLY_PATH_CONNECTED_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6576 / LOCALLY_CONNECTED_COMPONENTS   (hash md5:73cbe867f5c4dac879df76649a8a5aa7)
Theorem hlt_LOCALLY_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_locally N (hl_connected N) c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6585 / LOCALLY_CONNECTED_CONNECTED_COMPONENT   (hash md5:141a54b57eab9c0aee103f46eadcc23e)
Theorem hlt_LOCALLY_CONNECTED_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 -> hl_locally N (hl_connected N) (hl_connected_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6596 / LOCALLY_PATH_CONNECTED_COMPONENTS   (hash md5:5268ea5dd0e14ca1cea82e31f4ec0acc)
Theorem hlt_LOCALLY_PATH_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_locally N (hl_path_connected N) c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6607 / LOCALLY_PATH_CONNECTED_CONNECTED_COMPONENT   (hash md5:eb036330424b64e40e60f41f67ee7b0f)
Theorem hlt_LOCALLY_PATH_CONNECTED_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 -> hl_locally N (hl_path_connected N) (hl_connected_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6618 / OPEN_IMP_LOCALLY_PATH_CONNECTED   (hash md5:06f27e8ac2daf21f26e213e2b3dd8332)
Theorem hlt_OPEN_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6627 / OPEN_IMP_LOCALLY_CONNECTED   (hash md5:7701ed15a14f654c3f5d01b16edc48aa)
Theorem hlt_OPEN_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6634 / LOCALLY_PATH_CONNECTED_UNIV   (hash md5:82bc212f2b61276c457185011f2ac4b3)
Theorem hlt_LOCALLY_PATH_CONNECTED_UNIV : forall N:set, N <> Empty -> hl_locally N (hl_path_connected N) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6638 / LOCALLY_CONNECTED_UNIV   (hash md5:db47cdf0e2ba5b9fa585c6ee8dcc6911)
Theorem hlt_LOCALLY_CONNECTED_UNIV : forall N:set, N <> Empty -> hl_locally N (hl_connected N) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6642 / OPEN_IN_CONNECTED_COMPONENT_LOCALLY_CONNECTED   (hash md5:e5e6ab7c5eaee84357c8389ac897054f)
Theorem hlt_OPEN_IN_CONNECTED_COMPONENT_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_connected_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6652 / OPEN_IN_COMPONENTS_LOCALLY_CONNECTED   (hash md5:74d4f8eef35016db25d0244f16c93880)
Theorem hlt_OPEN_IN_COMPONENTS_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6658 / OPEN_IN_PATH_COMPONENT_LOCALLY_PATH_CONNECTED   (hash md5:15e3c3fb2c3ff3593dc0f6e9840e3a38)
Theorem hlt_OPEN_IN_PATH_COMPONENT_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_path_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6668 / CLOSED_IN_PATH_COMPONENT_LOCALLY_PATH_CONNECTED   (hash md5:3c453b16b966b07b7d6be6b820240af3)
Theorem hlt_CLOSED_IN_PATH_COMPONENT_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_path_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6679 / CONVEX_IMP_LOCALLY_PATH_CONNECTED   (hash md5:3fb6e5f9a902cd7d41836d34576a2587)
Theorem hlt_CONVEX_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6697 / OPEN_IN_IMP_LOCALLY_PATH_CONNECTED   (hash md5:6e3fa656c15eb49a98e586662f84f8f9)
Theorem hlt_OPEN_IN_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6705 / OPEN_IN_CONNECTED_COMPONENTS   (hash md5:323c072205637c3e767e4b1d5e09dbd7)
Theorem hlt_OPEN_IN_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N s) = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6712 / FINITE_COMPONENTS_MEETING_COMPACT_SUBSET   (hash md5:90bbeb09c33a34090fafd8f2c7d1c281)
Theorem hlt_FINITE_COMPONENTS_MEETING_COMPACT_SUBSET : forall N:set, N <> Empty -> forall k s :e 2 :^: hl_ty_cart R N, hl_compact N k = 1 /\ (hl_locally N (hl_connected N) s = 1 /\ hl_SUBSET (hl_ty_cart R N) k s = 1) -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5146 :e 2 :^: hl_ty_cart R N => if exists c :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5146 (if hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ ~ hl_INTER (hl_ty_cart R N) c k = hl_EMPTY (hl_ty_cart R N) then 1 else 0) c = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6758 / FINITE_COMPONENTS   (hash md5:fc0f1f9c91573ef7a5938dc6db6733cf)
Theorem hlt_FINITE_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_locally N (hl_connected N) s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6770 / FINITE_LOCALLY_CONNECTED_CONNECTED_COMPONENTS   (hash md5:a6273b959789f2d465ee84e7e2fc6b5d)
Theorem hlt_FINITE_LOCALLY_CONNECTED_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_locally N (hl_connected N) s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5148 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5148 (hl_IN (hl_ty_cart R N) x s) (hl_connected_component N s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6776 / FINITE_LOCALLY_PATH_CONNECTED_PATH_COMPONENTS   (hash md5:b2b5c7881a24d6b181baff7d194f98e7)
Theorem hlt_FINITE_LOCALLY_PATH_CONNECTED_PATH_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_locally N (hl_path_connected N) s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5151 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5151 (hl_IN (hl_ty_cart R N) x s) (hl_path_component N s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6801 / CONVEX_IMP_LOCALLY_CONNECTED   (hash md5:dd37f8b6e3755a394f8f4b9164ddb503)
Theorem hlt_CONVEX_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6806 / HOMEOMORPHIC_LOCAL_CONNECTEDNESS   (hash md5:1e27bd419c48eb5d78f35ea79686a5c1)
Theorem hlt_HOMEOMORPHIC_LOCAL_CONNECTEDNESS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall t :e 2 :^: hl_ty_cart R B, hl_homeomorphic A B s t = 1 -> (hl_locally A (hl_connected A) s = 1 <-> hl_locally B (hl_connected B) t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:6811 / HOMEOMORPHISM_LOCAL_CONNECTEDNESS   (hash md5:1bf451b049bdedc2bbd98545f0b0c940)
Theorem hlt_HOMEOMORPHISM_LOCAL_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R M, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> (hl_locally N (hl_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f k) = 1 <-> hl_locally M (hl_connected M) k = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:6822 / HOMEOMORPHIC_LOCAL_PATH_CONNECTEDNESS   (hash md5:f452c9f0077441ff78c29f895143f0a8)
Theorem hlt_HOMEOMORPHIC_LOCAL_PATH_CONNECTEDNESS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall t :e 2 :^: hl_ty_cart R B, hl_homeomorphic A B s t = 1 -> (hl_locally A (hl_path_connected A) s = 1 <-> hl_locally B (hl_path_connected B) t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:6828 / HOMEOMORPHISM_LOCAL_PATH_CONNECTEDNESS   (hash md5:d9303e1d04a205abe8030124fa6c9d86)
Theorem hlt_HOMEOMORPHISM_LOCAL_PATH_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R M, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> (hl_locally N (hl_path_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f k) = 1 <-> hl_locally M (hl_path_connected M) k = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:6839 / LOCALLY_PATH_CONNECTED_TRANSLATION_EQ   (hash md5:b3ac162dcf2d6a96b8548cac4d7b9317)
Theorem hlt_LOCALLY_PATH_CONNECTED_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_path_connected N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6847 / LOCALLY_CONNECTED_TRANSLATION_EQ   (hash md5:6c408a986af6fdeb50e2e93911df7805)
Theorem hlt_LOCALLY_CONNECTED_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6855 / LOCALLY_PATH_CONNECTED_LINEAR_IMAGE_EQ   (hash md5:956ec6b5031cb10bc6f6a9bac73e297a)
Theorem hlt_LOCALLY_PATH_CONNECTED_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_locally N (hl_path_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_locally M (hl_path_connected M) s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:6864 / LOCALLY_CONNECTED_LINEAR_IMAGE_EQ   (hash md5:5ab35f24d460b7c9c16b6507a8332b03)
Theorem hlt_LOCALLY_CONNECTED_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_locally N (hl_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_locally M (hl_connected M) s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:6873 / LOCALLY_CONNECTED_QUOTIENT_IMAGE   (hash md5:42fc40bf09884077669a496088563b85)
Theorem hlt_LOCALLY_CONNECTED_QUOTIENT_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 -> (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5152 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5152 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) t = 1)) /\ hl_locally M (hl_connected M) s = 1 -> hl_locally N (hl_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6887 / LOCALLY_PATH_CONNECTED_QUOTIENT_IMAGE   (hash md5:bd11b53b9ac3e92ee161f57e1030deaa)
Theorem hlt_LOCALLY_PATH_CONNECTED_QUOTIENT_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 -> (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5153 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5153 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) t = 1)) /\ hl_locally M (hl_path_connected M) s = 1 -> hl_locally N (hl_path_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6902 / LOCALLY_CONNECTED_CONTINUOUS_IMAGE_COMPACT   (hash md5:f89cba848309bd1ea1a622d8640c672d)
Theorem hlt_LOCALLY_CONNECTED_CONTINUOUS_IMAGE_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_locally M (hl_connected M) s = 1 /\ (hl_compact M s = 1 /\ hl_continuous_on M N f s = 1) -> hl_locally N (hl_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6913 / LOCALLY_PATH_CONNECTED_CONTINUOUS_IMAGE_COMPACT   (hash md5:a38f9cee536b5541e457c0caa6d72cfe)
Theorem hlt_LOCALLY_PATH_CONNECTED_CONTINUOUS_IMAGE_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_locally M (hl_path_connected M) s = 1 /\ (hl_compact M s = 1 /\ hl_continuous_on M N f s = 1) -> hl_locally N (hl_path_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6924 / LOCALLY_PATH_CONNECTED_PATH_IMAGE   (hash md5:76eb1f332e91c82a58e599d08bdcd5b4)
Theorem hlt_LOCALLY_PATH_CONNECTED_PATH_IMAGE : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 -> hl_locally N (hl_path_connected N) (hl_path_image N p) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6931 / LOCALLY_CONNECTED_PATH_IMAGE   (hash md5:051d36318ec7fa38e0bae00bc0cc14a7)
Theorem hlt_LOCALLY_CONNECTED_PATH_IMAGE : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 -> hl_locally N (hl_connected N) (hl_path_image N p) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6936 / LOCALLY_CONNECTED_LEFT_INVERTIBLE_IMAGE   (hash md5:c14c4b35a8ebf2157228344ae21bb2ba)
Theorem hlt_LOCALLY_CONNECTED_LEFT_INVERTIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (hl_continuous_on N M g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x) /\ hl_locally M (hl_connected M) s = 1)) -> hl_locally N (hl_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6947 / LOCALLY_CONNECTED_RIGHT_INVERTIBLE_IMAGE   (hash md5:a8bf70d0fdc31497cd0e0ff0c8d83368)
Theorem hlt_LOCALLY_CONNECTED_RIGHT_INVERTIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (hl_continuous_on N M g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 -> f (g x) = x) /\ hl_locally M (hl_connected M) s = 1))) -> hl_locally N (hl_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6959 / LOCALLY_PATH_CONNECTED_LEFT_INVERTIBLE_IMAGE   (hash md5:040d8f85ea0c85aab1f29159d4159c05)
Theorem hlt_LOCALLY_PATH_CONNECTED_LEFT_INVERTIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (hl_continuous_on N M g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x) /\ hl_locally M (hl_path_connected M) s = 1)) -> hl_locally N (hl_path_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6971 / LOCALLY_PATH_CONNECTED_RIGHT_INVERTIBLE_IMAGE   (hash md5:b896bc6cf403daaa6c31170562c6f662)
Theorem hlt_LOCALLY_PATH_CONNECTED_RIGHT_INVERTIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (hl_continuous_on N M g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 -> f (g x) = x) /\ hl_locally M (hl_path_connected M) s = 1))) -> hl_locally N (hl_path_connected N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6984 / LOCALLY_CONNECTED_PCROSS   (hash md5:b005791e46bceeb90ce2fb966ec12b89)
Theorem hlt_LOCALLY_CONNECTED_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_locally M (hl_connected M) s = 1 /\ hl_locally N (hl_connected N) t = 1 -> hl_locally (hl_ty_finite_sum M N) (hl_connected (hl_ty_finite_sum M N)) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6990 / LOCALLY_PATH_CONNECTED_PCROSS   (hash md5:d7e6242abb8246e0c3261fc7998a673b)
Theorem hlt_LOCALLY_PATH_CONNECTED_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_locally M (hl_path_connected M) s = 1 /\ hl_locally N (hl_path_connected N) t = 1 -> hl_locally (hl_ty_finite_sum M N) (hl_path_connected (hl_ty_finite_sum M N)) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:6996 / LOCALLY_CONNECTED_PCROSS_EQ   (hash md5:fa0fff17fe0740aabcf8c5eb851b76e3)
Theorem hlt_LOCALLY_CONNECTED_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_locally (hl_ty_finite_sum M N) (hl_connected (hl_ty_finite_sum M N)) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_locally M (hl_connected M) s = 1 /\ hl_locally N (hl_connected N) t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:7050 / LOCALLY_PATH_CONNECTED_PCROSS_EQ   (hash md5:8a0606936a26d99b8a099e7d1b406de0)
Theorem hlt_LOCALLY_PATH_CONNECTED_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_locally (hl_ty_finite_sum M N) (hl_path_connected (hl_ty_finite_sum M N)) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_locally M (hl_path_connected M) s = 1 /\ hl_locally N (hl_path_connected N) t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:7117 / LOCALLY_CONNECTED_SUBREGION   (hash md5:e4251b7f5fe9cd6a142f191b72f81381)
Theorem hlt_LOCALLY_CONNECTED_SUBREGION : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_connected N c = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) c = 1)) -> exists c' :e 2 :^: hl_ty_cart R N, hl_connected N c' = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c' = 1 /\ c = hl_INTER (hl_ty_cart R N) t c').
Admitted.

// HOL Light: Multivariate/paths.ml:7147 / CARD_EQ_OPEN_IN   (hash md5:074659d2f0b586c397b0c99f110a6eee)
Theorem hlt_CARD_EQ_OPEN_IN : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_limit_point_of N x u = 1)) -> hl_sym_3d5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7179 / CARD_EQ_OPEN_IN_AFFINE   (hash md5:c30a2180add49111c57b3d140df6f8d4)
Theorem hlt_CARD_EQ_OPEN_IN_AFFINE : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_affine N u = 1 /\ (~ hl_aff_dim N u = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N))) -> hl_sym_3d5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7193 / SEPARATION_BY_CLOSED_INTERMEDIATES   (hash md5:7db01bc6dd3de27fb249bcede26ae809)
Theorem hlt_SEPARATION_BY_CLOSED_INTERMEDIATES : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, ~ hl_connected N (hl_DIFF (hl_ty_cart R N) u s) = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ forall c :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) c = 1 /\ (hl_SUBSET (hl_ty_cart R N) t c = 1 /\ hl_SUBSET (hl_ty_cart R N) c s = 1) -> ~ hl_connected N (hl_DIFF (hl_ty_cart R N) u c) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:7208 / SEPARATION_BY_CLOSED_INTERMEDIATES_EQ   (hash md5:4cd7704a0246067a5c52ec24eb527e36)
Theorem hlt_SEPARATION_BY_CLOSED_INTERMEDIATES_EQ : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) u = 1 -> (~ hl_connected N (hl_DIFF (hl_ty_cart R N) u s) = 1 <-> exists t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ forall c :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) c = 1 /\ (hl_SUBSET (hl_ty_cart R N) t c = 1 /\ hl_SUBSET (hl_ty_cart R N) c s = 1) -> ~ hl_connected N (hl_DIFF (hl_ty_cart R N) u c) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:7225 / LOCALLY_CONNECTED_CLOSED_UNION_GEN   (hash md5:bac2d922957be4f4bd7886b41475f365)
Theorem hlt_LOCALLY_CONNECTED_CLOSED_UNION_GEN : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_locally N (hl_connected N) s = 1 /\ hl_locally N (hl_connected N) t = 1)) -> hl_locally N (hl_connected N) (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7316 / LOCALLY_CONNECTED_CLOSED_UNION   (hash md5:a2e9e6cda2ebccf5276edddde6867249)
Theorem hlt_LOCALLY_CONNECTED_CLOSED_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 /\ (hl_locally N (hl_connected N) t = 1 /\ (hl_closed N s = 1 /\ hl_closed N t = 1)) -> hl_locally N (hl_connected N) (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7325 / LOCALLY_CONNECTED_CLOSED_UNIONS   (hash md5:846d22a4af4914e384b52e17c9e99fc7)
Theorem hlt_LOCALLY_CONNECTED_CLOSED_UNIONS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_closed N s = 1 /\ hl_locally N (hl_connected N) s = 1) -> hl_locally N (hl_connected N) (hl_UNIONS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7334 / LOCALLY_CONNECTED_FROM_UNION_AND_INTER_GEN   (hash md5:f3f5330e0ea8a743c9febd228050a055)
Theorem hlt_LOCALLY_CONNECTED_FROM_UNION_AND_INTER_GEN : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_locally N (hl_connected N) (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_locally N (hl_connected N) (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7432 / LOCALLY_CONNECTED_FROM_UNION_AND_INTER   (hash md5:016a9f5a71881f05c4b0bdf1c9e6ff53)
Theorem hlt_LOCALLY_CONNECTED_FROM_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ (hl_locally N (hl_connected N) (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_locally N (hl_connected N) (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7442 / LOCALLY_CONNECTED_CLOSURE_FROM_FRONTIER   (hash md5:7c3306992eaeccbd55da5ba9a98e35e9)
Theorem hlt_LOCALLY_CONNECTED_CLOSURE_FROM_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) (hl_frontier N s) = 1 -> hl_locally N (hl_connected N) (hl_closure N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7682 / PATH_CONNECTED_FROM_CLOSED_UNION_AND_INTER   (hash md5:457c33908dbc2e212569b941a73b7004)
Theorem hlt_PATH_CONNECTED_FROM_CLOSED_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ (hl_path_connected N (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_path_connected N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_path_connected N s = 1 /\ hl_path_connected N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7693 / PATH_CONNECTED_CLOSURE_FROM_FRONTIER   (hash md5:20e4657faaa01fb892bde16955ef2199)
Theorem hlt_PATH_CONNECTED_CLOSURE_FROM_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_path_connected N (hl_frontier N s) = 1 -> hl_path_connected N (hl_closure N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7707 / LOCALLY_PATH_CONNECTED_SUBREGION   (hash md5:0e6d0fe065a8b05b59687714dc5ca569)
Theorem hlt_LOCALLY_PATH_CONNECTED_SUBREGION : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_path_connected N c = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) c = 1)) -> exists c' :e 2 :^: hl_ty_cart R N, hl_path_connected N c' = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c' = 1 /\ c = hl_INTER (hl_ty_cart R N) t c').
Admitted.

// HOL Light: Multivariate/paths.ml:7742 / LOCALLY_PATH_CONNECTED_FROM_UNION_AND_INTER_GEN   (hash md5:6dab6af19d2a3b6e198eb0907a08cb2e)
Theorem hlt_LOCALLY_PATH_CONNECTED_FROM_UNION_AND_INTER_GEN : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_locally N (hl_path_connected N) (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_locally N (hl_path_connected N) (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7840 / LOCALLY_PATH_CONNECTED_FROM_UNION_AND_INTER   (hash md5:ce484fee410cb216ab9bce17cf05412f)
Theorem hlt_LOCALLY_PATH_CONNECTED_FROM_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ (hl_locally N (hl_path_connected N) (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_locally N (hl_path_connected N) (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7860 / SUBMETRIC_EUCLIDEAN_METRIC   (hash md5:b7547fb1d8c60bc7cc4a57cc369a29a9)
Theorem hlt_SUBMETRIC_EUCLIDEAN_METRIC : forall N:set, N <> Empty -> (forall s :e 2 :^: hl_ty_cart R N, hl_mspace (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) = s) /\ forall s :e 2 :^: hl_ty_cart R N, hl_mdist (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) = hl_distance N.
Admitted.

// HOL Light: Multivariate/paths.ml:7865 / MTOPOLOGY_SUBMETRIC_EUCLIDEAN   (hash md5:9db0e005f6ba364e15623eaacd9e8416)
Theorem hlt_MTOPOLOGY_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_mtopology (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) = hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s.
Admitted.

// HOL Light: Multivariate/paths.ml:7871 / MBOUNDED_SUBMETRIC_EUCLIDEAN   (hash md5:a23073568b3eaf5fa5c494a111e975fc)
Theorem hlt_MBOUNDED_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 -> (hl_mbounded (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) t = 1 <-> hl_bounded N t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:7878 / MDIAMETER_SUBMETRIC_EUCLIDEAN   (hash md5:546a7bfcbc5f455a253891cb8b895af9)
Theorem hlt_MDIAMETER_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 -> hl_mdiameter (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) t = hl_diameter N t.
Admitted.

// HOL Light: Multivariate/paths.ml:7887 / CONNECTED_IN_SUBTOPOLOGY_EUCLIDEAN   (hash md5:85280d366248f23485236ac7c56dab94)
Theorem hlt_CONNECTED_IN_SUBTOPOLOGY_EUCLIDEAN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_connected_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 <-> hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_connected N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7892 / COMPACT_IN_SUBTOPOLOGY_EUCLIDEAN   (hash md5:8848d3490d226645c3c0c7a58ddac301)
Theorem hlt_COMPACT_IN_SUBTOPOLOGY_EUCLIDEAN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 <-> hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_compact N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7897 / CONNECTED_IN_SUBMETRIC_EUCLIDEAN   (hash md5:96a9d70d88aeda5c3e42c7fe482a5253)
Theorem hlt_CONNECTED_IN_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_connected_in (hl_ty_cart R N) (hl_mtopology (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s)) t = 1 <-> hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_connected N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7905 / COMPACT_IN_SUBMETRIC_EUCLIDEAN_MSPACE   (hash md5:6835e3a0b072bc7a216d5fd1842b5248)
Theorem hlt_COMPACT_IN_SUBMETRIC_EUCLIDEAN_MSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact_in (hl_ty_cart R N) (hl_mtopology (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s)) s = 1 <-> hl_compact N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7911 / LOCALLY_CONNECTED_SPACE_SUBMETRIC_EUCLIDEAN   (hash md5:2086c2db6b38a1e93a8de22a07584832)
Theorem hlt_LOCALLY_CONNECTED_SPACE_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally_connected_space (hl_ty_cart R N) (hl_mtopology (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s)) = 1 <-> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7918 / LOCALLY_COMPACT_SPACE_SUBMETRIC_EUCLIDEAN   (hash md5:00d7114e16adeb46e57b6ad441666863)
Theorem hlt_LOCALLY_COMPACT_SPACE_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally_compact_space (hl_ty_cart R N) (hl_mtopology (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s)) = 1 <-> hl_locally N (hl_compact N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7925 / CONNECTED_IN_SUBMETRIC_EUCLIDEAN_MSPACE   (hash md5:8ea2474a455423fa960b8be29cabc683)
Theorem hlt_CONNECTED_IN_SUBMETRIC_EUCLIDEAN_MSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_connected_in (hl_ty_cart R N) (hl_mtopology (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s)) s = 1 <-> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:7932 / FCCOVERABLE_IN_EUCLIDEAN_METRIC   (hash md5:abfce99616fcdb59ccaff6c7982045a4)
Theorem hlt_FCCOVERABLE_IN_EUCLIDEAN_METRIC : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_fccoverable_in (hl_ty_cart R N) (hl_euclidean_metric N) s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = s /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:7943 / FCCOVERABLE_SPACE_SUBMETRIC_EUCLIDEAN   (hash md5:20eebc4ddd1fcc5d99c1bcb69ae7fde2)
Theorem hlt_FCCOVERABLE_SPACE_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_fccoverable_space (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = s /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:7962 / ULC_SPACE_SUBMETRIC_EUCLIDEAN   (hash md5:bf2506e39763a382ec9384d93eabde85)
Theorem hlt_ULC_SPACE_SUBMETRIC_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ulc_space (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x c = 1 /\ (hl_IN (hl_ty_cart R N) y c = 1 /\ (hl_SUBSET (hl_ty_cart R N) c s = 1 /\ (hl_connected N c = 1 /\ (hl_bounded N c = 1 /\ hl_real_le (hl_diameter N c) e1 = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:7986 / FCCOVERABLE_IMP_LOCALLY_CONNECTED   (hash md5:92a96c84dad89d72f3898c8ba5b0dee0)
Theorem hlt_FCCOVERABLE_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = s /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1))) -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:8000 / ULC_IMP_LOCALLY_CONNECTED   (hash md5:8def49f5fc3e2cb0ae4c2afaec8859f3)
Theorem hlt_ULC_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x c = 1 /\ (hl_IN (hl_ty_cart R N) y c = 1 /\ (hl_SUBSET (hl_ty_cart R N) c s = 1 /\ (hl_connected N c = 1 /\ (hl_bounded N c = 1 /\ hl_real_le (hl_diameter N c) e1 = 1))))) -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:8017 / FCCOVERABLE_INTERMEDIATE_CLOSURE   (hash md5:22015d002ba91100a215c54ea2e062cf)
Theorem hlt_FCCOVERABLE_INTERMEDIATE_CLOSURE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_closure N s) = 1 /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = s /\ forall t1 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t1 c = 1 -> hl_connected N t1 = 1 /\ (hl_bounded N t1 = 1 /\ hl_real_le (hl_diameter N t1) e1 = 1)))) -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = t /\ forall t1 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t1 c = 1 -> hl_connected N t1 = 1 /\ (hl_bounded N t1 = 1 /\ hl_real_le (hl_diameter N t1) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:8032 / COMPACT_LOCALLY_CONNECTED_IMP_ULC   (hash md5:0e83b0f81fab8b60731890d1b8ec1d8e)
Theorem hlt_COMPACT_LOCALLY_CONNECTED_IMP_ULC : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_locally N (hl_connected N) s = 1 -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x c = 1 /\ (hl_IN (hl_ty_cart R N) y c = 1 /\ (hl_SUBSET (hl_ty_cart R N) c s = 1 /\ (hl_connected N c = 1 /\ (hl_bounded N c = 1 /\ hl_real_le (hl_diameter N c) e1 = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:8051 / COMPACT_LOCALLY_CONNECTED_IMP_ULC_ALT   (hash md5:6bb5b97b5bab959b2597f653de04b20d)
Theorem hlt_COMPACT_LOCALLY_CONNECTED_IMP_ULC_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_locally N (hl_connected N) s = 1 -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_real_lt d e1 = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) -> exists c :e 2 :^: hl_ty_cart R N, hl_connected N c = 1 /\ (hl_IN (hl_ty_cart R N) x c = 1 /\ (hl_IN (hl_ty_cart R N) y c = 1 /\ hl_SUBSET (hl_ty_cart R N) c (hl_INTER (hl_ty_cart R N) s (hl_INTER (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) (hl_ball N (hl_pair (hl_ty_cart R N) R y e1)))) = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:8078 / BOUNDED_ULC_IMP_FCCOVERABLE   (hash md5:950980715de07a886cf5d0c1fd5d9b90)
Theorem hlt_BOUNDED_ULC_IMP_FCCOVERABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x c = 1 /\ (hl_IN (hl_ty_cart R N) y c = 1 /\ (hl_SUBSET (hl_ty_cart R N) c s = 1 /\ (hl_connected N c = 1 /\ (hl_bounded N c = 1 /\ hl_real_le (hl_diameter N c) e1 = 1))))) -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = s /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:8104 / COMPACT_LOCALLY_CONNECTED_IMP_FCCOVERABLE   (hash md5:0ed475a6d83d77e667d06c9df366c6a3)
Theorem hlt_COMPACT_LOCALLY_CONNECTED_IMP_FCCOVERABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_locally N (hl_connected N) s = 1 -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = s /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:8119 / COMPACT_LOCALLY_CONNECTED_EQ_FCCCOVERABLE   (hash md5:60b7b9611b626acf65e2d565bf8eda75)
Theorem hlt_COMPACT_LOCALLY_CONNECTED_EQ_FCCCOVERABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_locally N (hl_connected N) s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = s /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_compact N t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:8145 / LOCALLY_FCCOVERABLE   (hash md5:9e85d443b1975a8cb6abd02b04c43a50)
Theorem hlt_LOCALLY_FCCOVERABLE : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = s /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1))) /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_IN (hl_ty_cart R N) a u = 1) -> exists v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ (hl_connected N v = 1 /\ (hl_IN (hl_ty_cart R N) a v = 1 /\ (hl_SUBSET (hl_ty_cart R N) v u = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = v /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1))))).
Admitted.

// HOL Light: Multivariate/paths.ml:8592 / LOCALLY_FCCOVERABLE_ALT   (hash md5:5cf80b5e085dca1ebd38a9747c52e7e8)
Theorem hlt_LOCALLY_FCCOVERABLE_ALT : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ (hl_locally N (hl_connected N) s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_IN (hl_ty_cart R N) a u = 1)) -> exists v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ (hl_connected N v = 1 /\ (hl_IN (hl_ty_cart R N) a v = 1 /\ (hl_SUBSET (hl_ty_cart R N) v u = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = v /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1))))).
Admitted.

// HOL Light: Multivariate/paths.ml:9080 / LOCALLY_CONNECTED_CONTINUUM   (hash md5:48b25e858b59ef7ea9e87ee39d1782ed)
Theorem hlt_LOCALLY_CONNECTED_CONTINUUM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (fun c :e 2 :^: hl_ty_cart R N => if hl_compact N c = 1 /\ (hl_connected N c = 1 /\ hl_locally N (hl_connected N) c = 1) then 1 else 0) s = 1 <-> hl_locally N (hl_compact N) s = 1 /\ hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9113 / COMPACT_LOCALLY_CONNECTED_EQ_FCCCOVERABLE_ALT   (hash md5:51ddfe52bb92bfee2ebbb338a59f5597)
Theorem hlt_COMPACT_LOCALLY_CONNECTED_EQ_FCCCOVERABLE_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_locally N (hl_connected N) s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) c = 1 /\ (hl_UNIONS (hl_ty_cart R N) c = s /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t c = 1 -> hl_connected N t = 1 /\ (hl_compact N t = 1 /\ (hl_locally N (hl_connected N) t = 1 /\ hl_real_le (hl_diameter N t) e1 = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:9136 / SEMI_LOCALLY_CONNECTED   (hash md5:a4c462c262c2f6c426af9de3436e4f87)
Theorem hlt_SEMI_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_locally N (hl_compact N) s = 1 /\ hl_locally N (hl_connected N) s = 1) -> forall x :e hl_ty_cart R N, forall v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) x v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) s u)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:9155 / SEMI_LOCALLY_CONNECTED_GEN   (hash md5:9c0d8095485b9963797ccf1cdc6a6f49)
Theorem hlt_SEMI_LOCALLY_CONNECTED_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N s) = 1 /\ (hl_locally N (hl_compact N) s = 1 /\ hl_locally N (hl_connected N) s = 1) -> forall x :e hl_ty_cart R N, forall v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) x v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) s u)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:9174 / SEMI_LOCALLY_CONNECTED_COMPACT   (hash md5:8bf1530ad308fd2c15ee450a7c5f8cfb)
Theorem hlt_SEMI_LOCALLY_CONNECTED_COMPACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_locally N (hl_connected N) s = 1 -> forall x :e hl_ty_cart R N, forall v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) x v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) s u)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:9212 / COMPACT_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN   (hash md5:57dda941642f13a4007d207394608b23)
Theorem hlt_COMPACT_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_connected N s = 1 /\ hl_locally N (hl_connected N) s = 1) -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9229 / LOCALLY_COMPACT_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN   (hash md5:42f5de761b3664ec118050ea16f68f97)
Theorem hlt_LOCALLY_COMPACT_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ (hl_connected N s = 1 /\ hl_locally N (hl_connected N) s = 1) -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9286 / MCOMPLETE_IMP_LOCALLY_COMPACT_EUCLIDEAN   (hash md5:5f6a3d9bdbf76961895a63dc34513b0f)
Theorem hlt_MCOMPLETE_IMP_LOCALLY_COMPACT_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_mcomplete (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) = 1 -> hl_locally N (hl_compact N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9298 / MCOMPLETE_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN   (hash md5:207b7b3970c6e3b31e4e0070216ea1b4)
Theorem hlt_MCOMPLETE_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_mcomplete (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) = 1 /\ (hl_connected N s = 1 /\ hl_locally N (hl_connected N) s = 1) -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9311 / MCOMPLETE_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED_EUCLIDEAN   (hash md5:1ed4820d4c6cf04fdb692aedc6d5ff60)
Theorem hlt_MCOMPLETE_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_mcomplete (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) = 1 /\ hl_locally N (hl_connected N) s = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9323 / MCOMPLETE_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED_EUCLIDEAN   (hash md5:3c84b1eecad3771e38a2c6d9a030816a)
Theorem hlt_MCOMPLETE_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_mcomplete (hl_ty_cart R N) (hl_submetric (hl_ty_cart R N) (hl_euclidean_metric N) s) = 1 -> (hl_locally N (hl_path_connected N) s = 1 <-> hl_locally N (hl_connected N) s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9337 / GDELTA_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED   (hash md5:431690d8bbacc4be4022b1e4716b995c)
Theorem hlt_GDELTA_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_gdelta N s = 1 -> (hl_locally N (hl_path_connected N) s = 1 <-> hl_locally N (hl_connected N) s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9352 / GDELTA_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED   (hash md5:0b0e13f8ef1342253c434d82941861f5)
Theorem hlt_GDELTA_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_gdelta N s = 1 /\ hl_locally N (hl_connected N) s = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9362 / GDELTA_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED   (hash md5:7e4137a0e4f7379c0373c39008b8d7f8)
Theorem hlt_GDELTA_CONNECTED_LOCALLY_CONNECTED_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_gdelta N s = 1 /\ (hl_connected N s = 1 /\ hl_locally N (hl_connected N) s = 1) -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9382 / LOCALLY_CONVEX   (hash md5:0fff0940871462fb7943a6dafbcba829)
Theorem hlt_LOCALLY_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_convex N) s = 1 <-> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists u v :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ (hl_SUBSET (hl_ty_cart R N) v s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_convex N v = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:9417 / PROPER_MAP_TO_COMPACT   (hash md5:fee9f9772d501a98b529bc7b74621aa0)
Theorem hlt_PROPER_MAP_TO_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, (forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k t = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5172 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5172 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (hl_compact N t = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1) -> hl_continuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9434 / CONTINUOUS_WITHIN_SEQUENTIALLY_COMPACT_MAP   (hash md5:af566fb87bfd640ba315b3d9a8e8d773)
Theorem hlt_CONTINUOUS_WITHIN_SEQUENTIALLY_COMPACT_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, (forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_compact M c = 1 -> hl_compact N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ hl_IN (hl_ty_cart R M) x s = 1 -> (hl_continuous (hl_ty_cart R M) N f (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 <-> forall p :e hl_ty_cart R M :^: omega, forall y :e hl_ty_cart R N, (forall n :e omega, hl_IN (hl_ty_cart R M) (p n) s = 1) /\ (hl_tendsto omega M p x hl_sequentially = 1 /\ (forall n :e omega, f (p n) = y)) -> f x = y).
Admitted.

// HOL Light: Multivariate/paths.ml:9551 / COMPACT_CLOSED_POINTIMAGES_IMP_CONTINUOUS_ON   (hash md5:f2d6f9f6aa147ef145674b0288807b82)
Theorem hlt_COMPACT_CLOSED_POINTIMAGES_IMP_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_compact M c = 1 -> hl_compact N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ (forall y :e hl_ty_cart R N, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5179 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5179 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) -> hl_continuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9572 / COMPACT_CONTINUOUS_IMAGE_EQ   (hash md5:cb5d649ca440a943e668f0f7ec511ff5)
Theorem hlt_COMPACT_CONTINUOUS_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y) -> (hl_continuous_on M N f s = 1 <-> forall t :e 2 :^: hl_ty_cart R M, hl_compact M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_compact N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9589 / CONTINUOUS_EQ_COMPACT_CONNECTED_PRESERVING_GEN   (hash md5:e7aba24c6121477d5ca25601406c9f95)
Theorem hlt_CONTINUOUS_EQ_COMPACT_CONNECTED_PRESERVING_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R M), forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_locally M P s = 1 /\ (forall c :e 2 :^: hl_ty_cart R M, P c = 1 -> hl_connected M c = 1) -> (hl_continuous_on M N f s = 1 <-> (forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_compact M c = 1 -> hl_compact N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ P c = 1 -> hl_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9673 / CONTINUOUS_EQ_COMPACT_CONNECTED_PRESERVING   (hash md5:34ec31efca44fc8f9ef72d632a2762e8)
Theorem hlt_CONTINUOUS_EQ_COMPACT_CONNECTED_PRESERVING : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_locally M (hl_connected M) s = 1 -> (hl_continuous_on M N f s = 1 <-> (forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_compact M c = 1 -> hl_compact N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_connected M c = 1 -> hl_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9683 / CONTINUOUS_EQ_COMPACT_PATH_CONNECTED_PRESERVING   (hash md5:30ef86b081fe74b9927f3e8d2efc5a70)
Theorem hlt_CONTINUOUS_EQ_COMPACT_PATH_CONNECTED_PRESERVING : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_locally M (hl_path_connected M) s = 1 -> (hl_continuous_on M N f s = 1 <-> (forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_compact M c = 1 -> hl_compact N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_path_connected M c = 1 -> hl_path_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9697 / CONNECTED_CLOSED_POINTIMAGES_IMP_CONTINUOUS_ON   (hash md5:a71c0f9cfaa396c0d42bacc235dc84ad)
Theorem hlt_CONNECTED_CLOSED_POINTIMAGES_IMP_CONTINUOUS_ON : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f s) t = 1 /\ (hl_locally N (hl_connected N) s = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) c s = 1 /\ hl_connected N c = 1 -> hl_connected 1 (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f c) = 1) /\ (forall y :e hl_ty_cart R 1, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5186 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5186 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1))) -> hl_continuous_on N 1 f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9735 / CONNECTED_CONNECTED_IMP_CLOSED_POINTIMAGES   (hash md5:3831f999d194cd96abadb7044f4b76be)
Theorem hlt_CONNECTED_CONNECTED_IMP_CLOSED_POINTIMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_connected M c = 1 -> hl_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ (forall y :e hl_ty_cart R N, hl_connected M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5188 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5188 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) -> forall y :e hl_ty_cart R N, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5189 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5189 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9755 / CONNECTED_CONNECTED_POINTIMAGES_IMP_CONTINUOUS_ON   (hash md5:ed3ad00d00d3cfc09f4bd26f50dc2e97)
Theorem hlt_CONNECTED_CONNECTED_POINTIMAGES_IMP_CONTINUOUS_ON : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f s) t = 1 /\ (hl_locally N (hl_connected N) s = 1 /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) c s = 1 /\ hl_connected N c = 1 -> hl_connected 1 (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f c) = 1) /\ (forall y :e hl_ty_cart R 1, hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5190 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5190 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1))) -> hl_continuous_on N 1 f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9768 / CLOSED_CLOSED_PREIMAGES_IMP_CONTINUOUS_ON   (hash md5:b047e0158a3c4149e0ef21c4a132af65)
Theorem hlt_CLOSED_CLOSED_PREIMAGES_IMP_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_compact N t = 1 /\ ((forall y :e hl_ty_cart R N, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5191 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5191 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (forall c :e 2 :^: hl_ty_cart R M, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) c = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1)) -> hl_continuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9783 / CLOSED_CONNECTED_PREIMAGES_IMP_CONTINUOUS_ON   (hash md5:b2fc6b335f3a9d9af3c83b204d8532b2)
Theorem hlt_CLOSED_CONNECTED_PREIMAGES_IMP_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_compact N t = 1 /\ ((forall y :e hl_ty_cart R N, hl_connected M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5192 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5192 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall c :e 2 :^: hl_ty_cart R M, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) c = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ (forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_connected M c = 1 -> hl_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1))) -> hl_continuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9797 / BICONNECTED_IMP_CONTINUOUS_ON   (hash md5:803d6a2548c6c8f0dd76ba584aeb41fe)
Theorem hlt_BICONNECTED_IMP_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N t) = 1 /\ (hl_locally N (hl_compact N) t = 1 /\ (hl_locally N (hl_connected N) t = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t /\ ((forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_connected M c = 1 -> hl_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ (forall c :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) c t = 1 /\ hl_connected N c = 1 -> hl_connected M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5203 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5203 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) c = 1 then 1 else 0) x = 1 then 1 else 0)) = 1))))) -> hl_continuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9891 / MONOTONE_TOPOLOGICALLY_IMP   (hash md5:0c90a448a81da11b196c518728ae3d4b)
Theorem hlt_MONOTONE_TOPOLOGICALLY_IMP : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall c :e 2 :^: hl_ty_cart R 1, hl_connected 1 c = 1 -> hl_connected 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_5206 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_5206 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) (f x) c = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) -> (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) \/ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9911 / MONOTONE_TOPOLOGICALLY_EQ   (hash md5:1beeeea82db099e6f6da2ee81d95a098)
Theorem hlt_MONOTONE_TOPOLOGICALLY_EQ : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall c :e 2 :^: hl_ty_cart R 1, hl_connected 1 c = 1 -> hl_connected 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_5208 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_5208 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) (f x) c = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) <-> hl_is_interval 1 s = 1 /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) \/ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9925 / MONOTONE_TOPOLOGICALLY   (hash md5:65bcf07895af76eb3fd3926b89cbb149)
Theorem hlt_MONOTONE_TOPOLOGICALLY : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 -> ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) \/ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) <-> forall c :e 2 :^: hl_ty_cart R 1, hl_connected 1 c = 1 -> hl_connected 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_5209 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_5209 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) (f x) c = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9934 / MONOTONE_TOPOLOGICALLY_INTO_1D_EQ   (hash md5:62e49e1e67f8be9b3cc4b51a91d0907c)
Theorem hlt_MONOTONE_TOPOLOGICALLY_INTO_1D_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_continuous_on N 1 f s = 1 -> ((forall k :e 2 :^: hl_ty_cart R 1, hl_connected 1 k = 1 -> hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5210 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5210 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R 1) (f x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) <-> hl_connected N s = 1 /\ forall y :e hl_ty_cart R 1, hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5211 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5211 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9952 / MONOTONE_TOPOLOGICALLY_INTO_1D   (hash md5:7d645b97eb80a45c83f370abc4d777c3)
Theorem hlt_MONOTONE_TOPOLOGICALLY_INTO_1D : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_continuous_on N 1 f s = 1 /\ (forall y :e hl_ty_cart R 1, hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5212 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5212 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1)) -> forall k :e 2 :^: hl_ty_cart R 1, hl_connected 1 k = 1 -> hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5213 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5213 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R 1) (f x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9959 / MONOTONE_TOPOLOGICALLY_POINTS   (hash md5:083650264f8731a1d9ddc617a6da4f5f)
Theorem hlt_MONOTONE_TOPOLOGICALLY_POINTS : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ hl_continuous_on 1 1 f s = 1 -> ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) \/ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) <-> forall a :e hl_ty_cart R 1, hl_connected 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_5214 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_5214 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ f x = a then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:9970 / MONOTONE_TOPOLOGICALLY_POINTS_IMP   (hash md5:adf0a998313670b53c34a2c09122d39f)
Theorem hlt_MONOTONE_TOPOLOGICALLY_POINTS_IMP : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_continuous_on 1 1 f s = 1 /\ (hl_is_interval 1 s = 1 /\ (forall y :e hl_ty_cart R 1, hl_connected 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_5215 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_5215 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1)) -> (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) \/ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:9979 / MONOTONE_IMP_HOMEOMORPHISM_1D   (hash md5:f4a3ff552957425b51879892c56003d1)
Theorem hlt_MONOTONE_IMP_HOMEOMORPHISM_1D : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_is_interval 1 t = 1 /\ (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s = t /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1) \/ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1)))) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, hl_homeomorphism 1 1 (hl_pair (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) s t) (hl_pair (hl_ty_cart R 1 :^: hl_ty_cart R 1) (hl_ty_cart R 1 :^: hl_ty_cart R 1) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10031 / MONOTONE_CONNECTED_PREIMAGES_IMP_PROPER_MAP   (hash md5:8f6292b52289028bd47220ae91664abb)
Theorem hlt_MONOTONE_CONNECTED_PREIMAGES_IMP_PROPER_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t /\ (hl_locally M (hl_compact M) s = 1 /\ (hl_locally N (hl_connected N) t = 1 /\ (hl_continuous_on M N f s = 1 /\ ((forall y :e hl_ty_cart R N, hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5224 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5224 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (forall c :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) c t = 1 /\ hl_connected N c = 1 -> hl_connected M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5225 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5225 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) c = 1 then 1 else 0) x = 1 then 1 else 0)) = 1))))) -> forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k t = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5226 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5226 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10111 / MONOTONE_INTO_1D_IMP_PROPER_MAP   (hash md5:54fe69bda3e7301542cbc6210385cb37)
Theorem hlt_MONOTONE_INTO_1D_IMP_PROPER_MAP : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R 1, hl_connected N s = 1 /\ (hl_locally N (hl_compact N) s = 1 /\ (hl_continuous_on N 1 f s = 1 /\ (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f s = t /\ ((forall y :e hl_ty_cart R 1, hl_compact N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5227 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5227 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (forall y :e hl_ty_cart R 1, hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5228 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5228 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1))))) -> forall k :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) k t = 1 /\ hl_compact 1 k = 1 -> hl_compact N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5229 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5229 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R 1) (f x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10126 / MONOTONE_CONNECTED_PREIMAGES_IMP_PROPER_MAP_GEN   (hash md5:2a3b01e4ff331cba5d32ea610aab6236)
Theorem hlt_MONOTONE_CONNECTED_PREIMAGES_IMP_PROPER_MAP_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t /\ (hl_locally M (hl_compact M) s = 1 /\ (hl_locally N (hl_connected N) t = 1 /\ ((forall c :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) c s = 1 /\ hl_compact M c = 1 -> hl_compact N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ ((forall y :e hl_ty_cart R N, hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5230 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5230 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (forall c :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) c t = 1 /\ hl_connected N c = 1 -> hl_connected M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5231 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5231 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) c = 1 then 1 else 0) x = 1 then 1 else 0)) = 1))))) -> forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k t = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5232 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5232 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10146 / SURA_BURA_COMPACT   (hash md5:08f81921b7ceec59e07b0516079af0be)
Theorem hlt_SURA_BURA_COMPACT : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> c = hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5233 :e 2 :^: hl_ty_cart R N => if exists t :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5233 (if hl_SUBSET (hl_ty_cart R N) c t = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1) then 1 else 0) t = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/paths.ml:10165 / SURA_BURA_CLOPEN_SUBSET   (hash md5:4845de0846e8e0c9151afa1f09e9dde2)
Theorem hlt_SURA_BURA_CLOPEN_SUBSET : forall N:set, N <> Empty -> forall s c u :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ (hl_compact N c = 1 /\ (hl_open N u = 1 /\ hl_SUBSET (hl_ty_cart R N) c u = 1))) -> exists k :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) k = 1 /\ (hl_compact N k = 1 /\ (hl_SUBSET (hl_ty_cart R N) c k = 1 /\ hl_SUBSET (hl_ty_cart R N) k u = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:10223 / SURA_BURA_CLOPEN_SUBSET_ALT   (hash md5:954889012078cbdbd4a45b08f9c89eac)
Theorem hlt_SURA_BURA_CLOPEN_SUBSET_ALT : forall N:set, N <> Empty -> forall s c u :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ (hl_compact N c = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_SUBSET (hl_ty_cart R N) c u = 1))) -> exists k :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) k = 1 /\ (hl_compact N k = 1 /\ (hl_SUBSET (hl_ty_cart R N) c k = 1 /\ hl_SUBSET (hl_ty_cart R N) k u = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:10240 / SURA_BURA   (hash md5:94d634aaed9f844f9ddc0c5039d601ce)
Theorem hlt_SURA_BURA : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ hl_compact N c = 1) -> c = hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5235 :e 2 :^: hl_ty_cart R N => if exists k :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5235 (if hl_SUBSET (hl_ty_cart R N) c k = 1 /\ (hl_compact N k = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) k = 1) then 1 else 0) k = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/paths.ml:10259 / COMPONENT_CLOPEN_HAUSDIST_EXPLICIT   (hash md5:fb2834fb5a213bba1f2059cd6c5e1343)
Theorem hlt_COMPONENT_CLOPEN_HAUSDIST_EXPLICIT : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_locally N (hl_compact N) s = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ hl_compact N c = 1)) -> exists k :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) k = 1 /\ (hl_compact N k = 1 /\ (hl_SUBSET (hl_ty_cart R N) c k = 1 /\ hl_SUBSET (hl_ty_cart R N) k (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5236 :e hl_ty_cart R N => if exists x d :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5236 (if hl_IN (hl_ty_cart R N) x c = 1 /\ hl_IN (hl_ty_cart R N) d (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) e1)) = 1 then 1 else 0) (hl_vector_add N x d) = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:10275 / COMPONENT_CLOPEN_HAUSDIST   (hash md5:a77952554770a5913d40f800144409ec)
Theorem hlt_COMPONENT_CLOPEN_HAUSDIST : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_locally N (hl_compact N) s = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ hl_compact N c = 1)) -> exists k :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) k = 1 /\ (hl_compact N k = 1 /\ (hl_SUBSET (hl_ty_cart R N) c k = 1 /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) c k)) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:10305 / COMPONENT_INTERMEDIATE_CLOPEN   (hash md5:44eb3e50fba68181f397eb7fce835bbc)
Theorem hlt_COMPONENT_INTERMEDIATE_CLOPEN : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t (hl_components N s) = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_SUBSET (hl_ty_cart R N) t u = 1 /\ (hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) \/ ((exists r :e 2 :^: hl_ty_cart R 1, hl_homeomorphic N 1 s r = 1) \/ (hl_locally N (hl_connected N) s = 1 \/ hl_locally N (hl_compact N) s = 1 /\ hl_compact N t = 1))))) -> exists c :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1 /\ (hl_SUBSET (hl_ty_cart R N) t c = 1 /\ hl_SUBSET (hl_ty_cart R N) c u = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:10558 / COMPONENTS_SUBSETS_CLOPEN_PARTITION   (hash md5:74f01eda45fc42801827351f917776fd)
Theorem hlt_COMPONENTS_SUBSETS_CLOPEN_PARTITION : forall N:set, N <> Empty -> forall u :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) u = 1 /\ (~ u = hl_EMPTY (2 :^: hl_ty_cart R N) /\ (hl_SUBSET (2 :^: hl_ty_cart R N) u (hl_components N s) = 1 /\ (forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c u = 1 -> hl_compact N c = 1)))) -> exists f :e 2 :^: hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), (forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c u = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (f c) = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (f c) = 1 /\ hl_SUBSET (hl_ty_cart R N) c (f c) = 1)) /\ (hl_pairwise (2 :^: hl_ty_cart R N) (fun c :e 2 :^: hl_ty_cart R N => fun c' :e 2 :^: hl_ty_cart R N => if ~ f c = f c' then 1 else 0) u = 1 /\ (hl_pairwise (2 :^: hl_ty_cart R N) (fun c :e 2 :^: hl_ty_cart R N => fun c' :e 2 :^: hl_ty_cart R N => hl_DISJOINT (hl_ty_cart R N) (f c) (f c')) u = 1 /\ hl_UNIONS (hl_ty_cart R N) (hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) f u) = s)).
Admitted.

// HOL Light: Multivariate/paths.ml:10680 / OPEN_CONNECTED_COMPONENT   (hash md5:8a4938e766678b0112a55272438dff8c)
Theorem hlt_OPEN_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open N s = 1 -> hl_open N (hl_connected_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10695 / IN_CLOSURE_CONNECTED_COMPONENT   (hash md5:68327c654e367e31f4d0042b61d740c2)
Theorem hlt_IN_CLOSURE_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_open N s = 1 -> (hl_IN (hl_ty_cart R N) x (hl_closure N (hl_connected_component N s y)) = 1 <-> hl_IN (hl_ty_cart R N) x (hl_connected_component N s y) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:10714 / PATH_COMPONENT_SUBSET_CONNECTED_COMPONENT   (hash md5:d79f1f377a24a01caf5825c7610a2df0)
Theorem hlt_PATH_COMPONENT_SUBSET_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_path_component N s x) (hl_connected_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10720 / PATH_COMPONENT_EQ_CONNECTED_COMPONENT   (hash md5:1b0957cf3a000bb3c94bb2993c66efce)
Theorem hlt_PATH_COMPONENT_EQ_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 -> hl_path_component N s x = hl_connected_component N s x.
Admitted.

// HOL Light: Multivariate/paths.ml:10730 / PATH_COMPONENT_IMP_CONNECTED_COMPONENT   (hash md5:a91fbeba1f52d2ae213a7df22593091d)
Theorem hlt_PATH_COMPONENT_IMP_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_path_component N s a b = 1 -> hl_connected_component N s a b = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10735 / LOCALLY_PATH_CONNECTED_PATH_COMPONENT   (hash md5:06d6f9f807ece3c73a591a82760b129c)
Theorem hlt_LOCALLY_PATH_CONNECTED_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 -> hl_locally N (hl_path_connected N) (hl_path_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10742 / OPEN_PATH_CONNECTED_COMPONENT   (hash md5:b0857544bbc9437a572ecbed907b9491)
Theorem hlt_OPEN_PATH_CONNECTED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open N s = 1 -> hl_path_component N s x = hl_connected_component N s x.
Admitted.

// HOL Light: Multivariate/paths.ml:10747 / PATH_CONNECTED_EQ_CONNECTED_LPC   (hash md5:3394ea76be4597b5c48fc81b60c86276)
Theorem hlt_PATH_CONNECTED_EQ_CONNECTED_LPC : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_locally A (hl_path_connected A) s = 1 -> (hl_path_connected A s = 1 <-> hl_connected A s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:10753 / PATH_CONNECTED_EQ_CONNECTED   (hash md5:9ad85884482de9e5c0f858bbf710ff44)
Theorem hlt_PATH_CONNECTED_EQ_CONNECTED : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_open A s = 1 -> (hl_path_connected A s = 1 <-> hl_connected A s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:10757 / CONNECTED_OPEN_PATH_CONNECTED   (hash md5:711fdfa89e4301e0d2014e981cc3507d)
Theorem hlt_CONNECTED_OPEN_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ hl_connected N s = 1 -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10761 / CONNECTED_OPEN_ARC_CONNECTED   (hash md5:81779330a7c42a7f111cb4c391157df8)
Theorem hlt_CONNECTED_OPEN_ARC_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ hl_connected N s = 1 -> forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> x = y \/ exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_pathstart N g = x /\ hl_pathfinish N g = y)).
Admitted.

// HOL Light: Multivariate/paths.ml:10774 / OPEN_COMPONENTS   (hash md5:41949160dcf651065bde10888f374423)
Theorem hlt_OPEN_COMPONENTS : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_open N u = 1 /\ hl_IN (2 :^: hl_ty_cart R N) s (hl_components N u) = 1 -> hl_open N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10780 / COMPONENTS_OPEN_UNIQUE   (hash md5:8cfd8c4b9a3de3ffd2e5d765a17df5ba)
Theorem hlt_COMPONENTS_OPEN_UNIQUE : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, (forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c f = 1 -> hl_open N c = 1 /\ (hl_connected N c = 1 /\ ~ c = hl_EMPTY (hl_ty_cart R N))) /\ (hl_pairwise (2 :^: hl_ty_cart R N) (hl_DISJOINT (hl_ty_cart R N)) f = 1 /\ hl_UNIONS (hl_ty_cart R N) f = s) -> hl_components N s = f.
Admitted.

// HOL Light: Multivariate/paths.ml:10791 / COUNTABLE_OPEN_COMPONENTS   (hash md5:a8f1361b1abe4304355be70dbebbdd8a)
Theorem hlt_COUNTABLE_OPEN_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_components N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10798 / COUNTABLE_OPEN_CONNECTED_COMPONENTS   (hash md5:67ef5dcbe1bd7929805a107da8554576)
Theorem hlt_COUNTABLE_OPEN_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5239 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5239 (hl_IN (hl_ty_cart R N) x t) (hl_connected_component N s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10808 / CONTINUOUS_ON_COMPONENTS   (hash md5:fb2fd5778f13c672768993d900a7541f)
Theorem hlt_CONTINUOUS_ON_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_locally M (hl_connected M) s = 1 /\ (forall c :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) c (hl_components M s) = 1 -> hl_continuous_on M N f c = 1) -> hl_continuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10815 / CONTINUOUS_ON_COMPONENTS_EQ   (hash md5:5db4f052620857f6d5396542c05c5a68)
Theorem hlt_CONTINUOUS_ON_COMPONENTS_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_locally A (hl_connected A) s = 1 -> (hl_continuous_on A B f s = 1 <-> forall c :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) c (hl_components A s) = 1 -> hl_continuous_on A B f c = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:10823 / CONTINUOUS_ON_COMPONENTS_OPEN   (hash md5:5be7bfb7e0498295979bcfd7795ab5f2)
Theorem hlt_CONTINUOUS_ON_COMPONENTS_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_open M s = 1 /\ (forall c :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) c (hl_components M s) = 1 -> hl_continuous_on M N f c = 1) -> hl_continuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10829 / CONTINUOUS_ON_COMPONENTS_OPEN_EQ   (hash md5:e5888f7d73fdb9e77451a617d1eaf719)
Theorem hlt_CONTINUOUS_ON_COMPONENTS_OPEN_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_open A s = 1 -> (hl_continuous_on A B f s = 1 <-> forall c :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) c (hl_components A s) = 1 -> hl_continuous_on A B f c = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:10837 / CLOSED_IN_UNION_COMPLEMENT_COMPONENTS   (hash md5:44e8a485c4580e2cffe59506619759f9)
Theorem hlt_CLOSED_IN_UNION_COMPLEMENT_COMPONENTS : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: (2 :^: hl_ty_cart R N), hl_locally N (hl_connected N) u = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ hl_SUBSET (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) u s)) = 1) -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) (hl_UNION (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) c)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10874 / CLOSED_UNION_COMPLEMENT_COMPONENTS   (hash md5:d73b22084cc5fb8e9e5d95fb3ba07c8a)
Theorem hlt_CLOSED_UNION_COMPLEMENT_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: (2 :^: hl_ty_cart R N), hl_closed N s = 1 /\ hl_SUBSET (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 -> hl_closed N (hl_UNION (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) c)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10882 / CLOSED_IN_UNION_COMPLEMENT_COMPONENT   (hash md5:30e60c2e1299965e56d521460a6725e9)
Theorem hlt_CLOSED_IN_UNION_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall u s c :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) u = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) u s)) = 1) -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) (hl_UNION (hl_ty_cart R N) s c) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10893 / CLOSED_UNION_COMPLEMENT_COMPONENT   (hash md5:3239b08c2017db28fce1f4339673b8c9)
Theorem hlt_CLOSED_UNION_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 -> hl_closed N (hl_UNION (hl_ty_cart R N) s c) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10900 / NONSEPARATED_CLOSED_COMPLEMENT_COMPONENTS   (hash md5:64d65bde255e9985bf660148261cf5f3)
Theorem hlt_NONSEPARATED_CLOSED_COMPLEMENT_COMPONENTS : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: (2 :^: hl_ty_cart R N), hl_connected N u = 1 /\ (hl_locally N (hl_connected N) u = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) u s)) = 1 /\ ~ c = hl_EMPTY (2 :^: hl_ty_cart R N))))) -> ~ hl_INTER (hl_ty_cart R N) s (hl_closure N (hl_UNIONS (hl_ty_cart R N) c)) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:10941 / COUNTABLE_CONNECTED_COMPONENTS   (hash md5:ebdd29163e8ea5d3c6a757c5c92e6e14)
Theorem hlt_COUNTABLE_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5241 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5241 (hl_IN (hl_ty_cart R N) x t) (hl_connected_component N s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10969 / COUNTABLE_PATH_COMPONENTS   (hash md5:fbb6325d69cdf07b2880b8112e676c41)
Theorem hlt_COUNTABLE_PATH_COMPONENTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_locally N (hl_path_connected N) s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5243 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5243 (hl_IN (hl_ty_cart R N) x t) (hl_path_component N s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:10997 / COUNTABLE_COMPONENTS   (hash md5:7466f69cdea0101555dfea20e58766f3)
Theorem hlt_COUNTABLE_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_components N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:11001 / FRONTIER_MINIMAL_SEPARATING_CLOSED   (hash md5:64bddb61d1c1297770db1851a93a3ab9)
Theorem hlt_FRONTIER_MINIMAL_SEPARATING_CLOSED : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (~ hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 /\ ((forall t :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 /\ hl_PSUBSET (hl_ty_cart R N) t s = 1 -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t) = 1) /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1)) -> hl_frontier N c = s.
Admitted.

// HOL Light: Multivariate/paths.ml:11044 / FRONTIER_MINIMAL_SEPARATING_CLOSED_POINTWISE   (hash md5:1121c8eaa1c44917233083248d3ea292)
Theorem hlt_FRONTIER_MINIMAL_SEPARATING_CLOSED_POINTWISE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_closed N s = 1 /\ (~ hl_IN (hl_ty_cart R N) a s = 1 /\ (~ hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) a b = 1 /\ (forall t :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 /\ hl_PSUBSET (hl_ty_cart R N) t s = 1 -> hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t) a b = 1))) -> hl_frontier N (hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) a) = s.
Admitted.

// HOL Light: Multivariate/paths.ml:11072 / CONNECTED_COMPONENT_DIFF_NONSEPARATED   (hash md5:a34c284c0fa25f4bc119b8e2defeca47)
Theorem hlt_CONNECTED_COMPONENT_DIFF_NONSEPARATED : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_connected N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) s t)) = 1))) -> ~ hl_INTER (hl_ty_cart R N) (hl_closure N c) (hl_closure N t) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11167 / CONNECTED_COMPONENT_DIFF_NONSEPARATED_ALT   (hash md5:f9b9f3890aa8328f8ca329eeccdc70fc)
Theorem hlt_CONNECTED_COMPONENT_DIFF_NONSEPARATED_ALT : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_connected N s = 1 /\ (hl_PSUBSET (hl_ty_cart R N) t s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N t) = 1)) -> ~ hl_INTER (hl_ty_cart R N) (hl_closure N c) (hl_closure N (hl_DIFF (hl_ty_cart R N) s t)) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11177 / CONNECTED_COMPONENT_DIFF_CLOSED_NONSEPARATED   (hash md5:c9f65c22ee279532238b988eedaefca7)
Theorem hlt_CONNECTED_COMPONENT_DIFF_CLOSED_NONSEPARATED : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_connected N s = 1 /\ (hl_closed N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) s t)) = 1)))) -> ~ hl_INTER (hl_ty_cart R N) (hl_closure N c) t = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11184 / NONSEPARATED_CLOSED_COMPLEMENT_COMPONENT   (hash md5:94b4a7ac2d309c34db893c91e2c7bd68)
Theorem hlt_NONSEPARATED_CLOSED_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall u s c :e 2 :^: hl_ty_cart R N, (hl_compact N u = 1 \/ hl_locally N (hl_connected N) u = 1) /\ (hl_connected N u = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) u s)) = 1))) -> ~ hl_INTER (hl_ty_cart R N) s (hl_closure N c) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11203 / CONNECTED_EQ_NONSEPARATED_CLOSED_COMPLEMENT_COMPONENT   (hash md5:99fd7c7fcab4afcfcf93245a5fc2366a)
Theorem hlt_CONNECTED_EQ_NONSEPARATED_CLOSED_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, (hl_compact N u = 1 \/ hl_locally N (hl_connected N) u = 1) /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_connected N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N))) -> (hl_connected N u = 1 <-> forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) u s)) = 1 -> ~ hl_INTER (hl_ty_cart R N) s (hl_closure N c) = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/paths.ml:11235 / CONNECTED_EQ_COMPONENT_DIFF_CLOSED_NONSEPARATED   (hash md5:d3cf3513fc585e9cbff181d233225c2d)
Theorem hlt_CONNECTED_EQ_COMPONENT_DIFF_CLOSED_NONSEPARATED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_closed N t = 1 /\ (hl_connected N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ ~ t = hl_EMPTY (hl_ty_cart R N)))) -> (hl_connected N s = 1 <-> forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) s t)) = 1 -> ~ hl_INTER (hl_ty_cart R N) (hl_closure N c) t = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/paths.ml:11244 / CONNECTED_EQ_COMPONENT_DELETE_NONSEPARATED   (hash md5:0332df6679c3c8091ce26df0ca473e26)
Theorem hlt_CONNECTED_EQ_COMPONENT_DELETE_NONSEPARATED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, (hl_compact N s = 1 \/ (hl_locally N (hl_connected N) s = 1 \/ hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N (hl_DELETE (hl_ty_cart R N) s a)) = 1)) /\ hl_IN (hl_ty_cart R N) a s = 1 -> (hl_connected N s = 1 <-> forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DELETE (hl_ty_cart R N) s a)) = 1 -> hl_IN (hl_ty_cart R N) a (hl_closure N c) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:11293 / CONNECTED_INSERT_COMPACT   (hash md5:c9933561cc718a3f7aaa443d1dfdc5c8)
Theorem hlt_CONNECTED_INSERT_COMPACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_compact N (hl_INSERT (hl_ty_cart R N) a s) = 1 -> (hl_connected N (hl_INSERT (hl_ty_cart R N) a s) = 1 <-> forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_IN (hl_ty_cart R N) a (hl_closure N c) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:11318 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN   (hash md5:30ebc5dda2e976f8350fe3fc602ae416)
Theorem hlt_BOUNDARY_BUMPING_THEOREM_EUCLIDEAN : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_connected N s = 1 /\ (hl_PSUBSET (hl_ty_cart R N) t s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N t) = 1)) -> ~ hl_INTER (hl_ty_cart R N) (hl_closure N c) (hl_INTER (hl_ty_cart R N) (hl_closure N t) (hl_closure N (hl_DIFF (hl_ty_cart R N) s t))) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11329 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_CLOSED   (hash md5:c7af535d514da8fe1709d6a02f938468)
Theorem hlt_BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_CLOSED : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_connected N s = 1 /\ (hl_closed N t = 1 /\ (hl_PSUBSET (hl_ty_cart R N) t s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N t) = 1))) -> ~ hl_INTER (hl_ty_cart R N) c (hl_INTER (hl_ty_cart R N) (hl_closure N t) (hl_closure N (hl_DIFF (hl_ty_cart R N) s t))) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11340 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_ALT   (hash md5:dc875d65a91d617156bab3a46a139dbb)
Theorem hlt_BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_ALT : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_connected N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ (hl_PSUBSET (hl_ty_cart R N) t s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_closure N t)) = 1))) -> ~ hl_INTER (hl_ty_cart R N) c (hl_DIFF (hl_ty_cart R N) s t) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11371 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_OPEN   (hash md5:2595b7f98ff0f38682c4a8654be40a69)
Theorem hlt_BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_OPEN : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, (hl_compact N s = 1 \/ hl_locally N (hl_connected N) s = 1) /\ (hl_connected N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ (hl_PSUBSET (hl_ty_cart R N) t s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N t) = 1))) -> ~ hl_INTER (hl_ty_cart R N) (hl_closure N c) (hl_DIFF (hl_ty_cart R N) s t) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11388 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_OPEN_ALT   (hash md5:d665104389802209ab9b036a19d4507b)
Theorem hlt_BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_OPEN_ALT : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, (hl_compact N s = 1 \/ hl_locally N (hl_connected N) s = 1) /\ (hl_connected N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ (hl_PSUBSET (hl_ty_cart R N) t s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N t) = 1))) -> ~ hl_INTER (hl_ty_cart R N) (hl_closure N c) (hl_DIFF (hl_ty_cart R N) (hl_closure N t) t) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11401 / CONTINUUM_UNION_COMPONENTS_INTERMEDIATE_COMPLEMENT   (hash md5:cd5639d958c41f23dabb154e581ad860)
Theorem hlt_CONTINUUM_UNION_COMPONENTS_INTERMEDIATE_COMPLEMENT : forall N:set, N <> Empty -> forall s t u c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_connected N s = 1 /\ (hl_compact N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_compact N u = 1 /\ (hl_connected N u = 1 /\ (hl_SUBSET (hl_ty_cart R N) t u = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) u t)) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) (hl_closure N c) c) s = 1))))))) -> hl_compact N (hl_UNION (hl_ty_cart R N) c s) = 1 /\ hl_connected N (hl_UNION (hl_ty_cart R N) c s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:11432 / CONTINUUM_UNION_COMPONENTS_COMPLEMENT   (hash md5:f8afdd268498d48d4de2bde96cf3cfad)
Theorem hlt_CONTINUUM_UNION_COMPONENTS_COMPLEMENT : forall N:set, N <> Empty -> forall s u c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_connected N s = 1 /\ (hl_compact N u = 1 /\ (hl_connected N u = 1 /\ (hl_SUBSET (hl_ty_cart R N) s u = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) u s)) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) (hl_closure N c) c) s = 1))))) -> hl_compact N (hl_UNION (hl_ty_cart R N) c s) = 1 /\ hl_connected N (hl_UNION (hl_ty_cart R N) c s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:11446 / WELLCHAINED_ELEMENTS_EUCLIDEAN   (hash md5:f6520bdf0f781b1ce8e8066b147b392c)
Theorem hlt_WELLCHAINED_ELEMENTS_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, forall e1 :e R, (exists p :e hl_ty_cart R N :^: omega, exists n :e omega, p (hl_NUMERAL hl_zero) = a /\ (p n = b /\ ((forall i :e omega, hl_le i n = 1 -> hl_IN (hl_ty_cart R N) (p i) s = 1) /\ forall i :e omega, hl_lt i n = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (p i) (p (hl_SUC i)))) e1 = 1))) <-> hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ forall c :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) c s = 1 /\ (hl_IN (hl_ty_cart R N) a c = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x c = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) e1 = 1) -> hl_IN (hl_ty_cart R N) y c = 1)) -> hl_IN (hl_ty_cart R N) b c = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:11457 / WELLCHAINED_SETS_EUCLIDEAN   (hash md5:0c0f74baacf2d95d0c0e76e1aeed2a28)
Theorem hlt_WELLCHAINED_SETS_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, (forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1 -> exists p :e hl_ty_cart R N :^: omega, exists n :e omega, p (hl_NUMERAL hl_zero) = a /\ (p n = b /\ ((forall i :e omega, hl_le i n = 1 -> hl_IN (hl_ty_cart R N) (p i) s = 1) /\ forall i :e omega, hl_lt i n = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (p i) (p (hl_SUC i)))) e1 = 1))) <-> forall c :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) c s = 1 /\ (~ c = hl_EMPTY (hl_ty_cart R N) /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x c = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) e1 = 1) -> hl_IN (hl_ty_cart R N) y c = 1)) -> c = s.
Admitted.

// HOL Light: Multivariate/paths.ml:11468 / CONNECTED_IMP_WELLCHAINED   (hash md5:8c00b8a56d192805800ed4f385afde22)
Theorem hlt_CONNECTED_IMP_WELLCHAINED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, forall a b :e hl_ty_cart R N, hl_connected N s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1)) -> exists p :e hl_ty_cart R N :^: omega, exists n :e omega, p (hl_NUMERAL hl_zero) = a /\ (p n = b /\ ((forall i :e omega, hl_le i n = 1 -> hl_IN (hl_ty_cart R N) (p i) s = 1) /\ forall i :e omega, hl_lt i n = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (p i) (p (hl_SUC i)))) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:11481 / CONNECTED_COMPONENT_IMP_WELLCHAINED   (hash md5:c1aa786352fbebebcdd5ae90b426c787)
Theorem hlt_CONNECTED_COMPONENT_IMP_WELLCHAINED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_connected_component N s a b = 1 -> exists p :e hl_ty_cart R N :^: omega, exists n :e omega, p (hl_NUMERAL hl_zero) = a /\ (p n = b /\ ((forall i :e omega, hl_le i n = 1 -> hl_IN (hl_ty_cart R N) (p i) s = 1) /\ forall i :e omega, hl_lt i n = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (p i) (p (hl_SUC i)))) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:11494 / CONNECTED_EQ_WELLCHAINED   (hash md5:9be87bfc16fc504a2866160b5f66ebc2)
Theorem hlt_CONNECTED_EQ_WELLCHAINED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 -> (hl_connected N s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1 -> exists p :e hl_ty_cart R N :^: omega, exists n :e omega, p (hl_NUMERAL hl_zero) = a /\ (p n = b /\ ((forall i :e omega, hl_le i n = 1 -> hl_IN (hl_ty_cart R N) (p i) s = 1) /\ forall i :e omega, hl_lt i n = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (p i) (p (hl_SUC i)))) e1 = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:11509 / CONNECTED_COMPONENT_EQ_WELLCHAINED   (hash md5:6ef2dab9c2b69f0f0dc3f07c8fe3879a)
Theorem hlt_CONNECTED_COMPONENT_EQ_WELLCHAINED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_compact N s = 1 -> (hl_connected_component N s a b = 1 <-> hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists p :e hl_ty_cart R N :^: omega, exists n :e omega, p (hl_NUMERAL hl_zero) = a /\ (p n = b /\ ((forall i :e omega, hl_le i n = 1 -> hl_IN (hl_ty_cart R N) (p i) s = 1) /\ forall i :e omega, hl_lt i n = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (p i) (p (hl_SUC i)))) e1 = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:11525 / WELLCHAINED_INTERS_EUCLIDEAN   (hash md5:b9019fc2d1b100030fed8d4146fcb9e1)
Theorem hlt_WELLCHAINED_INTERS_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, forall d e1 :e R, hl_real_lt d e1 = 1 /\ ((forall m :e omega, hl_compact N (s m) = 1) /\ ((forall m :e omega, hl_SUBSET (hl_ty_cart R N) (s (hl_SUC m)) (s m) = 1) /\ (forall m :e omega, forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (s m) = 1 /\ hl_IN (hl_ty_cart R N) b (s m) = 1 -> exists p :e hl_ty_cart R N :^: omega, exists n :e omega, p (hl_NUMERAL hl_zero) = a /\ (p n = b /\ ((forall i :e omega, hl_le i n = 1 -> hl_IN (hl_ty_cart R N) (p i) (s m) = 1) /\ forall i :e omega, hl_lt i n = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (p i) (p (hl_SUC i)))) d = 1))))) -> forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5249 :e 2 :^: hl_ty_cart R N => if exists m :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5249 (hl_IN omega m (hl_UNIV omega)) (s m) = 1 then 1 else 0))) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5250 :e 2 :^: hl_ty_cart R N => if exists m :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5250 (hl_IN omega m (hl_UNIV omega)) (s m) = 1 then 1 else 0))) = 1 -> exists p :e hl_ty_cart R N :^: omega, exists n :e omega, p (hl_NUMERAL hl_zero) = a /\ (p n = b /\ ((forall i :e omega, hl_le i n = 1 -> hl_IN (hl_ty_cart R N) (p i) (hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5251 :e 2 :^: hl_ty_cart R N => if exists m :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5251 (hl_IN omega m (hl_UNIV omega)) (s m) = 1 then 1 else 0))) = 1) /\ forall i :e omega, hl_lt i n = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (p i) (p (hl_SUC i)))) e1 = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:11547 / COMPACT_PARTITION_CONTAINING_CLOSED   (hash md5:6d677fff96e4298075c887d3cf92ff4f)
Theorem hlt_COMPACT_PARTITION_CONTAINING_CLOSED : forall N:set, N <> Empty -> forall s t t' :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_closed N t = 1 /\ (hl_closed N t' = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t' s = 1 /\ (forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_INTER (hl_ty_cart R N) c t = hl_EMPTY (hl_ty_cart R N) \/ hl_INTER (hl_ty_cart R N) c t' = hl_EMPTY (hl_ty_cart R N)))))) -> exists k k' :e 2 :^: hl_ty_cart R N, hl_compact N k = 1 /\ (hl_compact N k' = 1 /\ (hl_SUBSET (hl_ty_cart R N) t k = 1 /\ (hl_SUBSET (hl_ty_cart R N) t' k' = 1 /\ (hl_DISJOINT (hl_ty_cart R N) k k' = 1 /\ hl_UNION (hl_ty_cart R N) k k' = s)))).
Admitted.

// HOL Light: Multivariate/paths.ml:11673 / COMPACT_PARTITION_CONTAINING_POINTS   (hash md5:5f5508853dbad6e3488d45d0c7c6c3e5)
Theorem hlt_COMPACT_PARTITION_CONTAINING_POINTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_compact N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ ~ hl_connected_component N s a b = 1)) -> exists k k' :e 2 :^: hl_ty_cart R N, hl_compact N k = 1 /\ (hl_compact N k' = 1 /\ (hl_IN (hl_ty_cart R N) a k = 1 /\ (hl_IN (hl_ty_cart R N) b k' = 1 /\ (hl_DISJOINT (hl_ty_cart R N) k k' = 1 /\ hl_UNION (hl_ty_cart R N) k k' = s)))).
Admitted.

// HOL Light: Multivariate/paths.ml:11689 / CONNECTED_COMPONENT_LIMIT   (hash md5:faed00947485a64bbb3e0959bb082558)
Theorem hlt_CONNECTED_COMPONENT_LIMIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N :^: omega, forall a b :e hl_ty_cart R N, hl_compact N s = 1 /\ (hl_tendsto omega N x a hl_sequentially = 1 /\ (hl_tendsto omega N y b hl_sequentially = 1 /\ hl_eventually omega (fun n :e omega => hl_connected_component N s (x n) (y n)) hl_sequentially = 1)) -> hl_connected_component N s a b = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:11733 / CLOSED_UNIONS_COMPONENTS_MEETING_CLOSED   (hash md5:ad804d18b762e8b4e55ef4fc5edbff8a)
Theorem hlt_CLOSED_UNIONS_COMPONENTS_MEETING_CLOSED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_closed N t = 1 -> hl_closed N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5258 :e 2 :^: hl_ty_cart R N => if exists c :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5258 (if hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ ~ hl_INTER (hl_ty_cart R N) c t = hl_EMPTY (hl_ty_cart R N) then 1 else 0) c = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:11779 / ARBITRARILY_SMALL_CONTINUUM   (hash md5:37a6433ba0d90af000973bdc84de6065)
Theorem hlt_ARBITRARILY_SMALL_CONTINUUM : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_connected N s = 1 /\ (hl_locally N (hl_compact N) s = 1 /\ (hl_open N u = 1 /\ (hl_PSUBSET (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) s = 1 /\ hl_IN (hl_ty_cart R N) a u = 1))) -> exists c :e 2 :^: hl_ty_cart R N, hl_PSUBSET (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) c = 1 /\ (hl_SUBSET (hl_ty_cart R N) c s = 1 /\ (hl_SUBSET (hl_ty_cart R N) c u = 1 /\ (hl_compact N c = 1 /\ hl_connected N c = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:11830 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_INTER   (hash md5:c2650b5c1c8072787e6630adaec2a0fb)
Theorem hlt_BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_INTER : forall N:set, N <> Empty -> forall s u c :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_locally N (hl_compact N) s = 1 /\ (hl_open N u = 1 /\ (~ hl_SUBSET (hl_ty_cart R N) s u = 1 /\ (hl_compact N (hl_INTER (hl_ty_cart R N) s (hl_closure N u)) = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_INTER (hl_ty_cart R N) s (hl_closure N u))) = 1)))) -> ~ hl_INTER (hl_ty_cart R N) c (hl_frontier N u) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:11884 / BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_INTER_ALT   (hash md5:7dfa2d76d6cf0c3e6afe4e5dae4c612c)
Theorem hlt_BOUNDARY_BUMPING_THEOREM_EUCLIDEAN_INTER_ALT : forall N:set, N <> Empty -> forall s u c :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_locally N (hl_compact N) s = 1 /\ (hl_open N u = 1 /\ (~ hl_INTER (hl_ty_cart R N) s u = hl_EMPTY (hl_ty_cart R N) /\ (~ hl_SUBSET (hl_ty_cart R N) s u = 1 /\ (hl_compact N (hl_INTER (hl_ty_cart R N) s (hl_closure N u)) = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_INTER (hl_ty_cart R N) s u)) = 1))))) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_frontier N u) = 1 /\ hl_limit_point_of N x c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:11958 / LOCALLY_COMPACT_CONNECTED_IMP_PATH_CONNECTED   (hash md5:e6b85b8c8be1a2b809e8664bd6f7d893)
Theorem hlt_LOCALLY_COMPACT_CONNECTED_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ (hl_locally N (hl_connected N) s = 1 /\ hl_connected N s = 1) -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:11973 / LOCALLY_COMPACT_PATH_CONNECTED_EQ_CONNECTED   (hash md5:7f1710d1270c4cfbb2ad2ae04f24a663)
Theorem hlt_LOCALLY_COMPACT_PATH_CONNECTED_EQ_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ hl_locally N (hl_connected N) s = 1 -> (hl_path_connected N s = 1 <-> hl_connected N s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:11980 / LOCALLY_COMPACT_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED   (hash md5:262ff4fea0e5da7562ddc0b3287c80b5)
Theorem hlt_LOCALLY_COMPACT_LOCALLY_CONNECTED_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ hl_locally N (hl_connected N) s = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:11998 / LOCALLY_COMPACT_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED   (hash md5:b92be18c58d4194aa3141dadddc0591b)
Theorem hlt_LOCALLY_COMPACT_LOCALLY_PATH_CONNECTED_EQ_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 -> (hl_locally N (hl_path_connected N) s = 1 <-> hl_locally N (hl_connected N) s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:12004 / LOCALLY_PATH_CONNECTED_CLOSURE_FROM_FRONTIER   (hash md5:36863d475d071694ad59f07d9337f80d)
Theorem hlt_LOCALLY_PATH_CONNECTED_CLOSURE_FROM_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_connected N) (hl_frontier N s) = 1 -> hl_locally N (hl_path_connected N) (hl_closure N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12016 / CLOSED_IRREDUCIBLE_SEPARATOR   (hash md5:53af3ba39ec967d520392fef974b77f6)
Theorem hlt_CLOSED_IRREDUCIBLE_SEPARATOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_closed N s = 1 /\ ~ hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) a b = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_closed N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ (~ hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t) a b = 1 /\ forall u :e 2 :^: hl_ty_cart R N, hl_PSUBSET (hl_ty_cart R N) u t = 1 -> hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) u) a b = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:12123 / NORM_SEGMENT_LOWERBOUND   (hash md5:c84c946190e9688306428a9d10161c35)
Theorem hlt_NORM_SEGMENT_LOWERBOUND : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, forall r d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_vector_norm N a = r /\ (hl_vector_norm N b = r /\ (hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_dot N a b = hl_real_mul d (hl_real_pow r (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))) -> hl_real_le (hl_real_mul (hl_sqrt (hl_real_div (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs d)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) r) (hl_vector_norm N x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12176 / NORM_SEGMENT_ORTHOGONAL_LOWERBOUND   (hash md5:66ecdd7a6ac84f035402bb8ad2261dbd)
Theorem hlt_NORM_SEGMENT_ORTHOGONAL_LOWERBOUND : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, forall r :e R, hl_real_le r (hl_vector_norm N a) = 1 /\ (hl_real_le r (hl_vector_norm N b) = 1 /\ (hl_orthogonal N a b = 1 /\ hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1)) -> hl_real_le (hl_real_div r (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vector_norm N x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12209 / DENSE_ACCESSIBLE_FRONTIER_POINTS   (hash md5:7090eb30384a522f2f73ae85aaf48041)
Theorem hlt_DENSE_ACCESSIBLE_FRONTIER_POINTS : forall N:set, N <> Empty -> forall s v :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_frontier N s)) v = 1 /\ ~ v = hl_EMPTY (hl_ty_cart R N)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) g (hl_DELETE (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))))) s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) s = 1 /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) v = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:12322 / DENSE_ACCESSIBLE_FRONTIER_POINTS_CONNECTED   (hash md5:8261319bccca7ae82f770a75a9b0d5f1)
Theorem hlt_DENSE_ACCESSIBLE_FRONTIER_POINTS_CONNECTED : forall N:set, N <> Empty -> forall s v :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_frontier N s)) v = 1 /\ ~ v = hl_EMPTY (hl_ty_cart R N)))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) g (hl_DELETE (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))))) s = 1 /\ (hl_pathstart N g = x /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) v = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:12362 / DENSE_ACCESSIBLE_FRONTIER_POINT_PAIRS   (hash md5:0ead3dbbc7f629dff938c0aad89c41af)
Theorem hlt_DENSE_ACCESSIBLE_FRONTIER_POINT_PAIRS : forall N:set, N <> Empty -> forall s u v :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_frontier N s)) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_frontier N s)) v = 1 /\ (~ u = hl_EMPTY (hl_ty_cart R N) /\ (~ v = hl_EMPTY (hl_ty_cart R N) /\ ~ u = v))))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) u = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathfinish N g) v = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) g (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))))) s = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:12433 / PATH_CONNECTED_CONVEX_DIFF_CARD_LT   (hash md5:7ed3a102927614d0cd510ac66aaad4d8)
Theorem hlt_PATH_CONNECTED_CONVEX_DIFF_CARD_LT : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_convex N u = 1 /\ (~ hl_collinear N u = 1 /\ hl_sym_3c5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) u s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12560 / CONNECTED_CONVEX_DIFF_CARD_LT   (hash md5:3ea9d31b6a64828b3dbea119b33ce38a)
Theorem hlt_CONNECTED_CONVEX_DIFF_CARD_LT : forall A:set, A <> Empty -> forall u s :e 2 :^: hl_ty_cart R A, hl_convex A u = 1 /\ (~ hl_collinear A u = 1 /\ hl_sym_3c5f63 (hl_ty_cart R A) R s (hl_UNIV R) = 1) -> hl_connected A (hl_DIFF (hl_ty_cart R A) u s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12564 / PATH_CONNECTED_CONVEX_DIFF_COUNTABLE   (hash md5:f625bdcbfbb5e5c8013f8e690d91245b)
Theorem hlt_PATH_CONNECTED_CONVEX_DIFF_COUNTABLE : forall A:set, A <> Empty -> forall u s :e 2 :^: hl_ty_cart R A, hl_convex A u = 1 /\ (~ hl_collinear A u = 1 /\ hl_COUNTABLE (hl_ty_cart R A) s = 1) -> hl_path_connected A (hl_DIFF (hl_ty_cart R A) u s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12568 / CONNECTED_CONVEX_DIFF_COUNTABLE   (hash md5:281fb2257965375b093b97e66b5f87b6)
Theorem hlt_CONNECTED_CONVEX_DIFF_COUNTABLE : forall A:set, A <> Empty -> forall u s :e 2 :^: hl_ty_cart R A, hl_convex A u = 1 /\ (~ hl_collinear A u = 1 /\ hl_COUNTABLE (hl_ty_cart R A) s = 1) -> hl_connected A (hl_DIFF (hl_ty_cart R A) u s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12572 / PATH_CONNECTED_PUNCTURED_CONVEX   (hash md5:624589e5f3cf8bbde6e20de3293585c7)
Theorem hlt_PATH_CONNECTED_PUNCTURED_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ ~ hl_aff_dim N s = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_path_connected N (hl_DELETE (hl_ty_cart R N) s a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12590 / CONNECTED_PUNCTURED_CONVEX   (hash md5:13b994cecfeccedf4403c8920444f07b)
Theorem hlt_CONNECTED_PUNCTURED_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ ~ hl_aff_dim N s = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_connected N (hl_DELETE (hl_ty_cart R N) s a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12594 / PATH_CONNECTED_COMPLEMENT_CARD_LT   (hash md5:90cfd2cdd667a7fc3bde23455ff27595)
Theorem hlt_PATH_CONNECTED_COMPLEMENT_CARD_LT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_sym_3c5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1 -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12601 / PATH_CONNECTED_CONNECTED_DIFF   (hash md5:1c65da8eb27ba76158bc0fa251783e4d)
Theorem hlt_PATH_CONNECTED_CONNECTED_DIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_closure N (hl_DIFF (hl_ty_cart R N) s t)) = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_path_connected N (hl_DIFF (hl_ty_cart R N) u t) = 1))) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12633 / PATH_CONNECTED_OPEN_IN_DIFF_CARD_LT   (hash md5:451c5a6d8f0134040a109ae6d12ee177)
Theorem hlt_PATH_CONNECTED_OPEN_IN_DIFF_CARD_LT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ (~ hl_collinear N s = 1 /\ hl_sym_3c5f63 (hl_ty_cart R N) R t (hl_UNIV R) = 1)) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12694 / CONNECTED_OPEN_IN_DIFF_CARD_LT   (hash md5:0ce6ad7b101eaa6badc5a1785869fb58)
Theorem hlt_CONNECTED_OPEN_IN_DIFF_CARD_LT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ (~ hl_collinear N s = 1 /\ hl_sym_3c5f63 (hl_ty_cart R N) R t (hl_UNIV R) = 1)) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12703 / PATH_CONNECTED_OPEN_DIFF_CARD_LT   (hash md5:dd693a1d56e2752ecffc5d225d948123)
Theorem hlt_PATH_CONNECTED_OPEN_DIFF_CARD_LT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_open N s = 1 /\ (hl_connected N s = 1 /\ hl_sym_3c5f63 (hl_ty_cart R N) R t (hl_UNIV R) = 1)) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12715 / CONNECTED_OPEN_DIFF_CARD_LT   (hash md5:4cba2ada04a4eefb36879183f17144a0)
Theorem hlt_CONNECTED_OPEN_DIFF_CARD_LT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_open N s = 1 /\ (hl_connected N s = 1 /\ hl_sym_3c5f63 (hl_ty_cart R N) R t (hl_UNIV R) = 1)) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12721 / PATH_CONNECTED_OPEN_DIFF_COUNTABLE   (hash md5:8a443da84491a1d60871ae9cd78eb450)
Theorem hlt_PATH_CONNECTED_OPEN_DIFF_COUNTABLE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_open N s = 1 /\ (hl_connected N s = 1 /\ hl_COUNTABLE (hl_ty_cart R N) t = 1)) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12729 / CONNECTED_OPEN_DIFF_COUNTABLE   (hash md5:6591e4a69cf57c318c67c260650c2165)
Theorem hlt_CONNECTED_OPEN_DIFF_COUNTABLE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_open N s = 1 /\ (hl_connected N s = 1 /\ hl_COUNTABLE (hl_ty_cart R N) t = 1)) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12735 / PATH_CONNECTED_OPEN_DELETE   (hash md5:c9251cfd62868304aba14e8713640827)
Theorem hlt_PATH_CONNECTED_OPEN_DELETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_open N s = 1 /\ hl_connected N s = 1) -> hl_path_connected N (hl_DELETE (hl_ty_cart R N) s a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12742 / CONNECTED_OPEN_DELETE   (hash md5:30d5835bc33d8c3e1f987708301df7f6)
Theorem hlt_CONNECTED_OPEN_DELETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_open N s = 1 /\ hl_connected N s = 1) -> hl_connected N (hl_DELETE (hl_ty_cart R N) s a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12747 / PATH_CONNECTED_PUNCTURED_UNIVERSE   (hash md5:6ad1685c7778c8829a6705ad9d3f5413)
Theorem hlt_PATH_CONNECTED_PUNCTURED_UNIVERSE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12752 / CONNECTED_PUNCTURED_UNIVERSE   (hash md5:b0ba9bcac73c4dfccd590365e68a0a76)
Theorem hlt_CONNECTED_PUNCTURED_UNIVERSE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12756 / PATH_CONNECTED_PUNCTURED_BALL   (hash md5:00b94eeaf88fb32e59a1c1a0eaaf5388)
Theorem hlt_PATH_CONNECTED_PUNCTURED_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_path_connected N (hl_DELETE (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12760 / CONNECTED_PUNCTURED_BALL   (hash md5:23193801715feefb6227d5ac16d86e2d)
Theorem hlt_CONNECTED_PUNCTURED_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_connected N (hl_DELETE (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12764 / PATH_CONNECTED_PUNCTURED_CBALL   (hash md5:b896be2fe645d2ac8049a6b2a9329717)
Theorem hlt_PATH_CONNECTED_PUNCTURED_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_path_connected N (hl_DELETE (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12776 / CONNECTED_PUNCTURED_CBALL   (hash md5:3fcf6ac4c2708e36cb9302e9461eea4a)
Theorem hlt_CONNECTED_PUNCTURED_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_connected N (hl_DELETE (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12780 / PATH_CONNECTED_SPHERE   (hash md5:d24daf986a878a8ad72b6e34229ff9f2)
Theorem hlt_PATH_CONNECTED_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_path_connected N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12815 / CONNECTED_SPHERE   (hash md5:6ecbaabd7db14d92ca8ef2f40300150e)
Theorem hlt_CONNECTED_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_connected N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12819 / CONNECTED_SPHERE_EQ   (hash md5:445585d2b42f5e6e5fc96355c624ce95)
Theorem hlt_CONNECTED_SPHERE_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_connected N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 <-> hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 \/ hl_real_le r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12850 / PATH_CONNECTED_SPHERE_EQ   (hash md5:655088a4031c90884a5e72b9f459db70)
Theorem hlt_PATH_CONNECTED_SPHERE_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_path_connected N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 <-> hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 \/ hl_real_le r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12861 / FINITE_SPHERE   (hash md5:d4ae4e2471c12b5d401bc1930cdb020f)
Theorem hlt_FINITE_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_FINITE (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 <-> hl_real_le r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Multivariate/paths.ml:12883 / LIMIT_POINT_OF_SPHERE   (hash md5:15e201752d54be4c38e39a7e21adac31)
Theorem hlt_LIMIT_POINT_OF_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall x :e hl_ty_cart R N, hl_limit_point_of N x (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:12899 / CARD_EQ_SPHERE   (hash md5:3cee687ce79c0b3e7b481a180eef8aa0)
Theorem hlt_CARD_EQ_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 -> hl_sym_3d5f63 (hl_ty_cart R N) R (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12907 / HAS_SIZE_SPHERE_2   (hash md5:f52e836a85d164f8b94918bf24306689)
Theorem hlt_HAS_SIZE_SPHERE_2 : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_HAS_SIZE (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 <-> hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12935 / LOCALLY_PATH_CONNECTED_SPHERE   (hash md5:b2aff339017efdd482a5568800ba70e2)
Theorem hlt_LOCALLY_PATH_CONNECTED_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_locally N (hl_path_connected N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12970 / LOCALLY_CONNECTED_SPHERE   (hash md5:20f24c10ded64417753018be5ac5d62c)
Theorem hlt_LOCALLY_CONNECTED_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_locally N (hl_connected N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12975 / CARD_CIRCLE_INTERSECTION_LE   (hash md5:c554d410af28cf80f6935300d803c2dd)
Theorem hlt_CARD_CIRCLE_INTERSECTION_LE : forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), forall r s :e R, ~ (a = b /\ (r = s /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) s = 1))) -> hl_le (hl_CARD (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_INTER (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_sphere (idx_n (2 * dimindex 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) R a r)) (hl_sphere (idx_n (2 * dimindex 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) R b s)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:12975 / FINITE_CIRCLE_INTERSECTION   (hash md5:99eacc9810fe70b7fe9024b1c38568f8)
Theorem hlt_FINITE_CIRCLE_INTERSECTION : forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), forall r s :e R, hl_FINITE (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_INTER (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_sphere (idx_n (2 * dimindex 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) R a r)) (hl_sphere (idx_n (2 * dimindex 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) R b s))) = 1 <-> ~ (a = b /\ (r = s /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) s = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:13020 / INTER_SPHERE_EQ_EMPTY   (hash md5:45d543a91eac4d911e8648e543fb3a36)
Theorem hlt_INTER_SPHERE_EQ_EMPTY : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall r s :e R, hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) (hl_sphere N (hl_pair (hl_ty_cart R N) R b s)) = hl_EMPTY (hl_ty_cart R N) <-> hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) /\ (hl_real_lt r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ (hl_real_lt s (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ ~ hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_real_abs (hl_real_sub r s) /\ ~ hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_real_add r s)) \/ ~ hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) /\ (hl_real_lt r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ (hl_real_lt s (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ (hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_real_abs (hl_real_sub r s)) = 1 \/ hl_real_lt (hl_real_add r s) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:13074 / HAS_SIZE_INTER_SPHERE_1   (hash md5:116943c9bf5486473241ad0466eed4a0)
Theorem hlt_HAS_SIZE_INTER_SPHERE_1 : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall r s :e R, hl_HAS_SIZE (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) (hl_sphere N (hl_pair (hl_ty_cart R N) R b s))) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) s = 1 /\ ((a = b -> r = hl_real_of_num (hl_NUMERAL hl_zero) /\ s = hl_real_of_num (hl_NUMERAL hl_zero)) /\ (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_real_add r s \/ hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_real_abs (hl_real_sub r s)))).
Admitted.

// HOL Light: Multivariate/paths.ml:13161 / PATH_CONNECTED_ANNULUS   (hash md5:a079ec36f036185e0546865d9b8d08c7)
Theorem hlt_PATH_CONNECTED_ANNULUS : forall N:set, N <> Empty -> (forall a :e hl_ty_cart R N, forall r1 r2 :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_path_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5273 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5273 (if hl_real_lt r1 (hl_vector_norm N (hl_vector_sub N x a)) = 1 /\ hl_real_lt (hl_vector_norm N (hl_vector_sub N x a)) r2 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall a :e hl_ty_cart R N, forall r1 r2 :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_path_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5274 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5274 (if hl_real_lt r1 (hl_vector_norm N (hl_vector_sub N x a)) = 1 /\ hl_real_le (hl_vector_norm N (hl_vector_sub N x a)) r2 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall a :e hl_ty_cart R N, forall r1 r2 :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_path_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5275 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5275 (if hl_real_le r1 (hl_vector_norm N (hl_vector_sub N x a)) = 1 /\ hl_real_lt (hl_vector_norm N (hl_vector_sub N x a)) r2 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ forall a :e hl_ty_cart R N, forall r1 r2 :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_path_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5276 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5276 (if hl_real_le r1 (hl_vector_norm N (hl_vector_sub N x a)) = 1 /\ hl_real_lt (hl_vector_norm N (hl_vector_sub N x a)) r2 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:13220 / CONNECTED_ANNULUS   (hash md5:98655c3bc28320fe2f3261a137357e14)
Theorem hlt_CONNECTED_ANNULUS : forall N:set, N <> Empty -> (forall a :e hl_ty_cart R N, forall r1 r2 :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5277 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5277 (if hl_real_lt r1 (hl_vector_norm N (hl_vector_sub N x a)) = 1 /\ hl_real_lt (hl_vector_norm N (hl_vector_sub N x a)) r2 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall a :e hl_ty_cart R N, forall r1 r2 :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5278 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5278 (if hl_real_lt r1 (hl_vector_norm N (hl_vector_sub N x a)) = 1 /\ hl_real_le (hl_vector_norm N (hl_vector_sub N x a)) r2 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall a :e hl_ty_cart R N, forall r1 r2 :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5279 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5279 (if hl_real_le r1 (hl_vector_norm N (hl_vector_sub N x a)) = 1 /\ hl_real_lt (hl_vector_norm N (hl_vector_sub N x a)) r2 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ forall a :e hl_ty_cart R N, forall r1 r2 :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_connected N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5280 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5280 (if hl_real_le r1 (hl_vector_norm N (hl_vector_sub N x a)) = 1 /\ hl_real_lt (hl_vector_norm N (hl_vector_sub N x a)) r2 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:13236 / PATH_CONNECTED_COMPLEMENT_BOUNDED_CONVEX   (hash md5:a2685fd1a62cb6308f1162588b1037d0)
Theorem hlt_PATH_CONNECTED_COMPLEMENT_BOUNDED_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_bounded N s = 1 /\ hl_convex N s = 1) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13332 / CONNECTED_COMPLEMENT_BOUNDED_CONVEX   (hash md5:957c8ec80d84d2c2dfb1ce328b341d2b)
Theorem hlt_CONNECTED_COMPLEMENT_BOUNDED_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_bounded N s = 1 /\ hl_convex N s = 1) -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13338 / CONNECTED_DIFF_BALL   (hash md5:b833a754a248288011fba8f5d17739df)
Theorem hlt_CONNECTED_DIFF_BALL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_connected N s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) s = 1) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s (hl_ball N (hl_pair (hl_ty_cart R N) R a r))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13349 / PATH_CONNECTED_DIFF_BALL   (hash md5:6b83e093bac1ff8356d905b0405db22a)
Theorem hlt_PATH_CONNECTED_DIFF_BALL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_path_connected N s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) s = 1) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) s (hl_ball N (hl_pair (hl_ty_cart R N) R a r))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13403 / CONNECTED_DELETE_INTERIOR_POINT   (hash md5:532076ffaebb3924f09fcef7e8e2bd41)
Theorem hlt_CONNECTED_DELETE_INTERIOR_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_connected N s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1) -> hl_connected N (hl_DELETE (hl_ty_cart R N) s a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13424 / CONNECTED_DELETE_INTERIOR_POINT_EQ   (hash md5:80ab709ae346256900e2ea6c8d88b24e)
Theorem hlt_CONNECTED_DELETE_INTERIOR_POINT_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1 -> (hl_connected N (hl_DELETE (hl_ty_cart R N) s a) = 1 <-> hl_connected N s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:13435 / CONNECTED_OPEN_DELETE_EQ   (hash md5:bd2cab9e32292d0de05083d4dffe05db)
Theorem hlt_CONNECTED_OPEN_DELETE_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_open N s = 1 -> (hl_connected N (hl_DELETE (hl_ty_cart R N) s a) = 1 <-> hl_connected N s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:13445 / PATH_CONNECTED_DELETE_INTERIOR_POINT   (hash md5:fc917208d4af2a197e3e58d8c7635142)
Theorem hlt_PATH_CONNECTED_DELETE_INTERIOR_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_path_connected N s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1) -> hl_path_connected N (hl_DELETE (hl_ty_cart R N) s a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13466 / CONNECTED_OPEN_DIFF_CBALL   (hash md5:4a568a2aa248375a9822c168ee95e5de)
Theorem hlt_CONNECTED_OPEN_DIFF_CBALL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_open N s = 1 /\ (hl_connected N s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) s = 1)) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s (hl_cball N (hl_pair (hl_ty_cart R N) R a r))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13532 / PATH_CONNECTED_CONVEX_DIFF_LOWDIM   (hash md5:6803d0f3e3a57d07ff79777f4cbd04b5)
Theorem hlt_PATH_CONNECTED_CONVEX_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_int_le (hl_int_add (hl_aff_dim N t) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_aff_dim N s) = 1 -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13599 / PATH_CONNECTED_OPEN_IN_DIFF_LOWDIM   (hash md5:cc217dea25b9bf0e23fa787a65c4f541)
Theorem hlt_PATH_CONNECTED_OPEN_IN_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ hl_int_le (hl_int_add (hl_aff_dim N t) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_aff_dim N s) = 1) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13635 / PATH_CONNECTED_OPEN_IN_DIFF_UNIONS_LOWDIM   (hash md5:df57674741dacd32e8c42a728e39ce03)
Theorem hlt_PATH_CONNECTED_OPEN_IN_DIFF_UNIONS_LOWDIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_connected N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t f = 1 -> hl_closed N t = 1 /\ hl_int_le (hl_int_add (hl_aff_dim N t) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_aff_dim N s) = 1))) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) f)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13680 / CONNECTED_OPEN_IN_DIFF_UNIONS_LOWDIM   (hash md5:074775aaf5a71ad1d8722305b0a46c96)
Theorem hlt_CONNECTED_OPEN_IN_DIFF_UNIONS_LOWDIM : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t f = 1 -> hl_int_le (hl_int_add (hl_aff_dim N t) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_aff_dim N s) = 1))) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) f)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13725 / BOUNDED_FRONTIER_BOUNDED_OR_COBOUNDED   (hash md5:71c64d49e78d7c2fcb308f13816bef59)
Theorem hlt_BOUNDED_FRONTIER_BOUNDED_OR_COBOUNDED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_bounded N (hl_frontier N s) = 1 -> hl_bounded N s = 1 \/ hl_bounded N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13740 / BOUNDED_COMMON_FRONTIER_DOMAINS   (hash md5:1545b3feb5cd2378101ffc9f5e0cadc7)
Theorem hlt_BOUNDED_COMMON_FRONTIER_DOMAINS : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_bounded N c = 1 /\ (hl_open N s = 1 /\ (hl_connected N s = 1 /\ (hl_open N t = 1 /\ (hl_connected N t = 1 /\ (~ s = t /\ (hl_frontier N s = c /\ hl_frontier N t = c))))))) -> hl_bounded N s = 1 \/ hl_bounded N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13761 / INTERIOR_ARC_IMAGE   (hash md5:948bc11d2333181c1b13d0230f1fa0fe)
Theorem hlt_INTERIOR_ARC_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_arc N g = 1 -> hl_interior N (hl_path_image N g) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:13806 / INTERIOR_SIMPLE_PATH_IMAGE   (hash md5:b3167494c3948ea6a19ec0c5281e697f)
Theorem hlt_INTERIOR_SIMPLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_simple_path N g = 1 -> hl_interior N (hl_path_image N g) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:13827 / ENDPOINTS_NOT_IN_INTERIOR_SIMPLE_PATH_IMAGE   (hash md5:7d9d1e3728a16bf7db9a57efb9090de5)
Theorem hlt_ENDPOINTS_NOT_IN_INTERIOR_SIMPLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 -> hl_DISJOINT (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N)))) (hl_interior N (hl_path_image N g)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13849 / COBOUNDED_UNBOUNDED_COMPONENT   (hash md5:c2f515bb9fb06df36527f1fcddb2a752)
Theorem hlt_COBOUNDED_UNBOUNDED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ ~ hl_bounded N (hl_connected_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13875 / COBOUNDED_UNIQUE_UNBOUNDED_COMPONENT   (hash md5:a0e9664ab989007d9ba65aefa355d4c7)
Theorem hlt_COBOUNDED_UNIQUE_UNBOUNDED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_bounded N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 /\ (~ hl_bounded N (hl_connected_component N s x) = 1 /\ ~ hl_bounded N (hl_connected_component N s y) = 1)) -> hl_connected_component N s x = hl_connected_component N s y.
Admitted.

// HOL Light: Multivariate/paths.ml:13901 / COBOUNDED_UNBOUNDED_COMPONENTS   (hash md5:0ea210cde0ada647ffedcd948e159eb1)
Theorem hlt_COBOUNDED_UNBOUNDED_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ ~ hl_bounded N c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13905 / COBOUNDED_UNIQUE_UNBOUNDED_COMPONENTS   (hash md5:775c1619cb96f5a707199489d569acf5)
Theorem hlt_COBOUNDED_UNIQUE_UNBOUNDED_COMPONENTS : forall N:set, N <> Empty -> forall s c c' :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_bounded N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ (~ hl_bounded N c = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c' (hl_components N s) = 1 /\ ~ hl_bounded N c' = 1)))) -> c' = c.
Admitted.

// HOL Light: Multivariate/paths.ml:13915 / COBOUNDED_HAS_BOUNDED_COMPONENT   (hash md5:a258b9cb9cc72585e50697d1956629d9)
Theorem hlt_COBOUNDED_HAS_BOUNDED_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_bounded N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 /\ ~ hl_connected N s = 1) -> exists c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 /\ hl_bounded N c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:13932 / HOMEOMORPHISM_MOVING_POINT_EXISTS   (hash md5:a9f2dcb826bc5fcf4022d4a6934280ed)
Theorem hlt_HOMEOMORPHISM_MOVING_POINT_EXISTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ (hl_connected N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1)))) -> exists f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ (f a = b /\ (hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5294 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5294 (if ~ (f x = x /\ g x = x) then 1 else 0) x = 1 then 1 else 0)) s = 1 /\ hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5295 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5295 (if ~ (f x = x /\ g x = x) then 1 else 0) x = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:14162 / HOMEOMORPHISM_MOVING_POINTS_EXISTS_GEN   (hash md5:a184dad4e2ac1d5a580ed9355bea9282)
Theorem hlt_HOMEOMORPHISM_MOVING_POINTS_EXISTS_GEN : forall A N:set, A <> Empty -> N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N :^: A, forall k :e 2 :^: A, hl_int_le (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_aff_dim N s) = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ (hl_connected N s = 1 /\ (hl_FINITE A k = 1 /\ ((forall i :e A, hl_IN A i k = 1 -> hl_IN (hl_ty_cart R N) (x i) s = 1 /\ hl_IN (hl_ty_cart R N) (y i) s = 1) /\ hl_pairwise A (fun i :e A => fun j :e A => if ~ x i = x j /\ ~ y i = y j then 1 else 0) k = 1)))))) -> exists f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall i :e A, hl_IN A i k = 1 -> f (x i) = y i) /\ (hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5298 :e hl_ty_cart R N => if exists x1 :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5298 (if ~ (f x1 = x1 /\ g x1 = x1) then 1 else 0) x1 = 1 then 1 else 0)) s = 1 /\ hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5299 :e hl_ty_cart R N => if exists x1 :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5299 (if ~ (f x1 = x1 /\ g x1 = x1) then 1 else 0) x1 = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:14240 / HOMEOMORPHISM_MOVING_POINTS_EXISTS   (hash md5:08973e1fc7e96e352b60003aba8158b0)
Theorem hlt_HOMEOMORPHISM_MOVING_POINTS_EXISTS : forall A N:set, A <> Empty -> N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N :^: A, forall k :e 2 :^: A, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_open N s = 1 /\ (hl_connected N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_FINITE A k = 1 /\ ((forall i :e A, hl_IN A i k = 1 -> hl_IN (hl_ty_cart R N) (x i) s = 1 /\ hl_IN (hl_ty_cart R N) (y i) s = 1) /\ hl_pairwise A (fun i :e A => fun j :e A => if ~ x i = x j /\ ~ y i = y j then 1 else 0) k = 1))))) -> exists f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall i :e A, hl_IN A i k = 1 -> f (x i) = y i) /\ (hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5300 :e hl_ty_cart R N => if exists x1 :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5300 (if ~ (f x1 = x1 /\ g x1 = x1) then 1 else 0) x1 = 1 then 1 else 0)) s = 1 /\ hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5301 :e hl_ty_cart R N => if exists x1 :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5301 (if ~ (f x1 = x1 /\ g x1 = x1) then 1 else 0) x1 = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:14262 / HOMEOMORPHISM_GROUPING_POINTS_EXISTS   (hash md5:38df4726a65f099ff10a479faa4ca8d4)
Theorem hlt_HOMEOMORPHISM_GROUPING_POINTS_EXISTS : forall N:set, N <> Empty -> forall u s t k :e 2 :^: hl_ty_cart R N, hl_open N u = 1 /\ (hl_open N s = 1 /\ (hl_connected N s = 1 /\ (~ u = hl_EMPTY (hl_ty_cart R N) /\ (hl_FINITE (hl_ty_cart R N) k = 1 /\ (hl_SUBSET (hl_ty_cart R N) k s = 1 /\ (hl_SUBSET (hl_ty_cart R N) u s = 1 /\ hl_SUBSET (hl_ty_cart R N) s t = 1)))))) -> exists f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5306 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5306 (if ~ (f x = x /\ g x = x) then 1 else 0) x = 1 then 1 else 0)) s = 1 /\ (hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5307 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5307 (if ~ (f x = x /\ g x = x) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x k = 1 -> hl_IN (hl_ty_cart R N) (f x) u = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:14604 / HOMEOMORPHISM_GROUPING_POINTS_EXISTS_GEN   (hash md5:69b5fc6873044ea326e320e14f559a16)
Theorem hlt_HOMEOMORPHISM_GROUPING_POINTS_EXISTS_GEN : forall N:set, N <> Empty -> forall u s t k :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ (hl_connected N s = 1 /\ (hl_FINITE (hl_ty_cart R N) k = 1 /\ (hl_SUBSET (hl_ty_cart R N) k s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ ~ u = hl_EMPTY (hl_ty_cart R N))))))) -> exists f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x k = 1 -> hl_IN (hl_ty_cart R N) (f x) u = 1) /\ (hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5310 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5310 (if ~ (f x = x /\ g x = x) then 1 else 0) x = 1 then 1 else 0)) s = 1 /\ hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5311 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5311 (if ~ (f x = x /\ g x = x) then 1 else 0) x = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:14732 / HOMEOMORPHISM_MOVING_DENSE_COUNTABLE_SUBSETS_EXISTS   (hash md5:2acae540692e2a5757bc81cf65d06fc6)
Theorem hlt_HOMEOMORPHISM_MOVING_DENSE_COUNTABLE_SUBSETS_EXISTS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_COUNTABLE (hl_ty_cart R M) s = 1 /\ (hl_closure M s = hl_hull (hl_ty_cart R M) (hl_affine M) s /\ (hl_COUNTABLE (hl_ty_cart R N) t = 1 /\ (hl_closure N t = hl_hull (hl_ty_cart R N) (hl_affine N) t /\ hl_aff_dim M s = hl_aff_dim N t))) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_hull (hl_ty_cart R M) (hl_affine M) s) (hl_hull (hl_ty_cart R N) (hl_affine N) t)) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t.
Admitted.

// HOL Light: Multivariate/paths.ml:15155 / HAS_SIZE_UNBOUNDED_COMPONENTS_COMPLEMENT_1   (hash md5:2b40fa7b51b6021598ff50c5edde6322)
Theorem hlt_HAS_SIZE_UNBOUNDED_COMPONENTS_COMPLEMENT_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_bounded 1 s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R 1) -> hl_HAS_SIZE (2 :^: hl_ty_cart R 1) (hl_GSPEC (2 :^: hl_ty_cart R 1) (fun GEN_PVAR_5324 :e 2 :^: hl_ty_cart R 1 => if exists c :e 2 :^: hl_ty_cart R 1, hl_SETSPEC (2 :^: hl_ty_cart R 1) GEN_PVAR_5324 (if hl_IN (2 :^: hl_ty_cart R 1) c (hl_components 1 (hl_DIFF (hl_ty_cart R 1) (hl_UNIV (hl_ty_cart R 1)) s)) = 1 /\ ~ hl_bounded 1 c = 1 then 1 else 0) c = 1 then 1 else 0)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15232 / HAS_SIZE_UNBOUNDED_COMPONENTS_COMPLEMENT   (hash md5:4de1999b909602955d664caa081ab7b6)
Theorem hlt_HAS_SIZE_UNBOUNDED_COMPONENTS_COMPLEMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_HAS_SIZE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5326 :e 2 :^: hl_ty_cart R N => if exists c :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5326 (if hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 /\ ~ hl_bounded N c = 1 then 1 else 0) c = 1 then 1 else 0)) (hl_COND omega (if s = hl_EMPTY (hl_ty_cart R N) \/ hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15267 / inside   (hash md5:024b21e8da1124c6b086cd7ec214ef1a)
Theorem hlt_inside_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_inside N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5327 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5327 (if ~ hl_IN (hl_ty_cart R N) x s = 1 /\ hl_bounded N (hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:15271 / outside   (hash md5:908e448d58e100886a2230a05c76e9da)
Theorem hlt_outside_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_outside N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5328 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5328 (if ~ hl_IN (hl_ty_cart R N) x s = 1 /\ ~ hl_bounded N (hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:15275 / INSIDE_TRANSLATION   (hash md5:548049981b2cd2d6b0dc2d1d9a6bd035)
Theorem hlt_INSIDE_TRANSLATION : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_inside A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) s) = hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) (hl_inside A s).
Admitted.

// HOL Light: Multivariate/paths.ml:15279 / OUTSIDE_TRANSLATION   (hash md5:ffedd533ea1e34378ed947b74b95ec24)
Theorem hlt_OUTSIDE_TRANSLATION : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_outside A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) s) = hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) (hl_outside A s).
Admitted.

// HOL Light: Multivariate/paths.ml:15285 / INSIDE_LINEAR_IMAGE   (hash md5:4a92d7069b523fdf9da0e44de60b567a)
Theorem hlt_INSIDE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ ((forall x y :e hl_ty_cart R B, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R A, exists x :e hl_ty_cart R B, f x = y)) -> hl_inside A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f (hl_inside B s).
Admitted.

// HOL Light: Multivariate/paths.ml:15290 / OUTSIDE_LINEAR_IMAGE   (hash md5:6148f2ece32a35a79e338b58db7a4319)
Theorem hlt_OUTSIDE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ ((forall x y :e hl_ty_cart R B, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R A, exists x :e hl_ty_cart R B, f x = y)) -> hl_outside A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f (hl_outside B s).
Admitted.

// HOL Light: Multivariate/paths.ml:15297 / OUTSIDE   (hash md5:e8d99c1e2e283c14e43688a7c0e79651)
Theorem hlt_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_outside N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5329 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5329 (if ~ hl_bounded N (hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:15304 / INSIDE_NO_OVERLAP   (hash md5:266b8456dae967f8fc98f0c3faafe63f)
Theorem hlt_INSIDE_NO_OVERLAP : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_INTER (hl_ty_cart R A) (hl_inside A s) s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/paths.ml:15308 / OUTSIDE_NO_OVERLAP   (hash md5:7c6249f1417b62ca2864ed7850a5b751)
Theorem hlt_OUTSIDE_NO_OVERLAP : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_INTER (hl_ty_cart R A) (hl_outside A s) s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/paths.ml:15312 / INSIDE_INTER_OUTSIDE   (hash md5:a4790c00c7083672f1b7b7765132cc6d)
Theorem hlt_INSIDE_INTER_OUTSIDE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_INTER (hl_ty_cart R A) (hl_inside A s) (hl_outside A s) = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/paths.ml:15316 / INSIDE_UNION_OUTSIDE   (hash md5:d6d98565fa94f011e4742f44ddb2b64a)
Theorem hlt_INSIDE_UNION_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_UNION (hl_ty_cart R N) (hl_inside N s) (hl_outside N s) = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s.
Admitted.

// HOL Light: Multivariate/paths.ml:15320 / INSIDE_EQ_OUTSIDE   (hash md5:ca6e652391141675a3ce40147d6bd584)
Theorem hlt_INSIDE_EQ_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_inside N s = hl_outside N s <-> s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:15324 / INSIDE_OUTSIDE   (hash md5:24d5897ba2fb3ab066deba5c56a767bf)
Theorem hlt_INSIDE_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_inside N s = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_UNION (hl_ty_cart R N) s (hl_outside N s)).
Admitted.

// HOL Light: Multivariate/paths.ml:15330 / OUTSIDE_INSIDE   (hash md5:44d78c602eb4fea6616d597bce0b95d3)
Theorem hlt_OUTSIDE_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_outside N s = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_UNION (hl_ty_cart R N) s (hl_inside N s)).
Admitted.

// HOL Light: Multivariate/paths.ml:15336 / INSIDE_EMPTY_EQ_NO_BOUNDED_COMPONENT_COMPLEMENT   (hash md5:1c6ddf7454e9a17fcf832efbad3e26e3)
Theorem hlt_INSIDE_EMPTY_EQ_NO_BOUNDED_COMPONENT_COMPLEMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_inside N s = hl_EMPTY (hl_ty_cart R N) <-> forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 -> ~ hl_bounded N c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15341 / OUTSIDE_EMPTY_EQ_NO_BOUNDED_COMPONENT_COMPLEMENT   (hash md5:c553438abe38380d52f11aaa596df1bd)
Theorem hlt_OUTSIDE_EMPTY_EQ_NO_BOUNDED_COMPONENT_COMPLEMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_outside N s = hl_EMPTY (hl_ty_cart R N) <-> forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 -> hl_bounded N c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15346 / INSIDE_SELF_OUTSIDE_EVERSION   (hash md5:c56133dbc4a098805bfdccbb0bc97464)
Theorem hlt_INSIDE_SELF_OUTSIDE_EVERSION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_UNION (hl_ty_cart R N) s (hl_inside N s)) (hl_inside N t) = 1 <-> hl_SUBSET (hl_ty_cart R N) (hl_UNION (hl_ty_cart R N) t (hl_outside N t)) (hl_outside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15355 / UNION_WITH_INSIDE   (hash md5:aea49fec15b15799df938dc162bb7924)
Theorem hlt_UNION_WITH_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_UNION (hl_ty_cart R N) s (hl_inside N s) = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_outside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15359 / UNION_WITH_OUTSIDE   (hash md5:888faf553b1cf5cd3797189088cab342)
Theorem hlt_UNION_WITH_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_UNION (hl_ty_cart R N) s (hl_outside N s) = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_inside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15363 / OUTSIDE_MONO   (hash md5:ea691b9bd76dbeeb66ed6d871a9b6394)
Theorem hlt_OUTSIDE_MONO : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_SUBSET (hl_ty_cart R A) (hl_outside A t) (hl_outside A s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15370 / INSIDE_MONO   (hash md5:3c35a404ffadc3e9f7e8297fdaab2815)
Theorem hlt_INSIDE_MONO : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_SUBSET (hl_ty_cart R A) (hl_DIFF (hl_ty_cart R A) (hl_inside A s) t) (hl_inside A t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15379 / INSIDE_MONO_ALT   (hash md5:44096cd091d7dce6864eff63d7e941ee)
Theorem hlt_INSIDE_MONO_ALT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_inside N s) (hl_UNION (hl_ty_cart R N) t (hl_inside N t)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15384 / COBOUNDED_OUTSIDE   (hash md5:09886c434d7047137f550b1c530b25e6)
Theorem hlt_COBOUNDED_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_bounded N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_outside N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15426 / UNBOUNDED_OUTSIDE   (hash md5:94b4cee03e3e42482416824025bbcc60)
Theorem hlt_UNBOUNDED_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> ~ hl_bounded N (hl_outside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15430 / BOUNDED_INSIDE   (hash md5:f651943665d3a144d45dc442dcd53f41)
Theorem hlt_BOUNDED_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_bounded N (hl_inside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15438 / CONNECTED_OUTSIDE   (hash md5:2e1d64d0f47bf5148f7e1b917ebd182a)
Theorem hlt_CONNECTED_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_bounded N s = 1 -> hl_connected N (hl_outside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15458 / OUTSIDE_CONNECTED_COMPONENT_LT   (hash md5:2122df7f8c476900d2c46bd0492411af)
Theorem hlt_OUTSIDE_CONNECTED_COMPONENT_LT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_outside N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5332 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5332 (if forall B :e R, exists y :e hl_ty_cart R N, hl_real_lt B (hl_vector_norm N y) = 1 /\ hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x y = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:15465 / OUTSIDE_CONNECTED_COMPONENT_LE   (hash md5:ebc447079f3a5deab235f097e3a8032e)
Theorem hlt_OUTSIDE_CONNECTED_COMPONENT_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_outside N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5333 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5333 (if forall B :e R, exists y :e hl_ty_cart R N, hl_real_le B (hl_vector_norm N y) = 1 /\ hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x y = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:15474 / NOT_OUTSIDE_CONNECTED_COMPONENT_LT   (hash md5:ea73ebf12f801ccd122b296aacb39ab1)
Theorem hlt_NOT_OUTSIDE_CONNECTED_COMPONENT_LT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_bounded N s = 1 -> hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_outside N s) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5334 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5334 (if forall B :e R, exists y :e hl_ty_cart R N, hl_real_lt B (hl_vector_norm N y) = 1 /\ ~ hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x y = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:15507 / NOT_OUTSIDE_CONNECTED_COMPONENT_LE   (hash md5:aedbfedb8378b3c7e442062d5313db89)
Theorem hlt_NOT_OUTSIDE_CONNECTED_COMPONENT_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_bounded N s = 1 -> hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_outside N s) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5335 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5335 (if forall B :e R, exists y :e hl_ty_cart R N, hl_real_le B (hl_vector_norm N y) = 1 /\ ~ hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x y = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:15517 / INSIDE_CONNECTED_COMPONENT_LT   (hash md5:35fddf70e1bf55a39a6a3a96a2953fb0)
Theorem hlt_INSIDE_CONNECTED_COMPONENT_LT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_bounded N s = 1 -> hl_inside N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5336 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5336 (if ~ hl_IN (hl_ty_cart R N) x s = 1 /\ forall B :e R, exists y :e hl_ty_cart R N, hl_real_lt B (hl_vector_norm N y) = 1 /\ ~ hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x y = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:15527 / INSIDE_CONNECTED_COMPONENT_LE   (hash md5:5a6c2d43463c547c3a542b404667b1c6)
Theorem hlt_INSIDE_CONNECTED_COMPONENT_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_bounded N s = 1 -> hl_inside N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5337 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5337 (if ~ hl_IN (hl_ty_cart R N) x s = 1 /\ forall B :e R, exists y :e hl_ty_cart R N, hl_real_le B (hl_vector_norm N y) = 1 /\ ~ hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x y = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:15537 / OUTSIDE_UNION_OUTSIDE_UNION   (hash md5:e20767a40126530b40093daadfb335e5)
Theorem hlt_OUTSIDE_UNION_OUTSIDE_UNION : forall N:set, N <> Empty -> forall c c1 c2 :e 2 :^: hl_ty_cart R N, hl_INTER (hl_ty_cart R N) c (hl_outside N (hl_UNION (hl_ty_cart R N) c1 c2)) = hl_EMPTY (hl_ty_cart R N) -> hl_SUBSET (hl_ty_cart R N) (hl_outside N (hl_UNION (hl_ty_cart R N) c1 c2)) (hl_outside N (hl_UNION (hl_ty_cart R N) c1 c)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15560 / INSIDE_SUBSET   (hash md5:7e09723f9a54bd95f7049183f6e7cbc1)
Theorem hlt_INSIDE_SUBSET : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_connected N u = 1 /\ (~ hl_bounded N u = 1 /\ hl_UNION (hl_ty_cart R N) t u = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) -> hl_SUBSET (hl_ty_cart R N) (hl_inside N s) t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15572 / INSIDE_UNIQUE   (hash md5:a234da403c5dc2e57d5352ea4ce9588d)
Theorem hlt_INSIDE_UNIQUE : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ (hl_connected N u = 1 /\ (~ hl_bounded N u = 1 /\ (~ hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 /\ hl_UNION (hl_ty_cart R N) t u = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)))) -> hl_inside N s = t.
Admitted.

// HOL Light: Multivariate/paths.ml:15611 / INSIDE_OUTSIDE_UNIQUE   (hash md5:46f6e075a580933aa3456ae8070ef990)
Theorem hlt_INSIDE_OUTSIDE_UNIQUE : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_connected N t = 1 /\ (hl_bounded N t = 1 /\ (hl_connected N u = 1 /\ (~ hl_bounded N u = 1 /\ (~ hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 /\ hl_UNION (hl_ty_cart R N) t u = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)))) -> hl_inside N s = t /\ hl_outside N s = u.
Admitted.

// HOL Light: Multivariate/paths.ml:15629 / INTERIOR_INSIDE_FRONTIER   (hash md5:8fbf4a3785e8f168d7c2b618ffa0b4c6)
Theorem hlt_INTERIOR_INSIDE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_interior N s) (hl_inside N (hl_frontier N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15651 / INSIDE_EMPTY   (hash md5:f00e0218eca72ef287a73ed1e6a85344)
Theorem hlt_INSIDE_EMPTY : forall A:set, A <> Empty -> hl_inside A (hl_EMPTY (hl_ty_cart R A)) = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/paths.ml:15656 / OUTSIDE_EMPTY   (hash md5:aaef9238da16cf3fc975bfa7a45f8b00)
Theorem hlt_OUTSIDE_EMPTY : forall N:set, N <> Empty -> hl_outside N (hl_EMPTY (hl_ty_cart R N)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:15660 / INSIDE_SAME_COMPONENT   (hash md5:0870dbe959defaaad13b4f9367aceaf5)
Theorem hlt_INSIDE_SAME_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x y = 1 /\ hl_IN (hl_ty_cart R N) x (hl_inside N s) = 1 -> hl_IN (hl_ty_cart R N) y (hl_inside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15672 / OUTSIDE_SAME_COMPONENT   (hash md5:71b6ef74e97968b9364369263e50c5d0)
Theorem hlt_OUTSIDE_SAME_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) x y = 1 /\ hl_IN (hl_ty_cart R N) x (hl_outside N s) = 1 -> hl_IN (hl_ty_cart R N) y (hl_outside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15684 / CONNECTED_COMPONENT_INSIDE   (hash md5:fc0b145b41e239609e0e8ba175e42e37)
Theorem hlt_CONNECTED_COMPONENT_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_connected_component N (hl_inside N s) a = hl_COND (2 :^: hl_ty_cart R N) (hl_IN (hl_ty_cart R N) a (hl_inside N s)) (hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) a) (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/paths.ml:15698 / CONNECTED_COMPONENT_OUTSIDE   (hash md5:8bca0d6cc41fd2f3d4c429067b9d0f8c)
Theorem hlt_CONNECTED_COMPONENT_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_connected_component N (hl_outside N s) a = hl_COND (2 :^: hl_ty_cart R N) (hl_IN (hl_ty_cart R N) a (hl_outside N s)) (hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) a) (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/paths.ml:15712 / BOUNDED_COMPONENTS_INSIDE   (hash md5:4d4c9926b3a2c0e27f294ab1d82828ca)
Theorem hlt_BOUNDED_COMPONENTS_INSIDE : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_inside N s)) = 1 -> hl_bounded N c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15717 / UNBOUNDED_COMPONENTS_OUTSIDE   (hash md5:cfd6fd54d39fd606328d44b3a140b628)
Theorem hlt_UNBOUNDED_COMPONENTS_OUTSIDE : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_outside N s)) = 1 -> ~ hl_bounded N c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15722 / INSIDE_WITH_INSIDE   (hash md5:3124baf6eaab873b7a3772fa805cd6a4)
Theorem hlt_INSIDE_WITH_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_inside N (hl_UNION (hl_ty_cart R N) s (hl_inside N s)) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:15728 / OUTSIDE_WITH_OUTSIDE   (hash md5:5270a876c582c083ba492d1e1b39397b)
Theorem hlt_OUTSIDE_WITH_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_outside N (hl_UNION (hl_ty_cart R N) s (hl_outside N s)) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:15735 / OUTSIDE_CONVEX   (hash md5:a3f0d01e6067ca8ca195bfb91a4ea49f)
Theorem hlt_OUTSIDE_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_outside N s = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s.
Admitted.

// HOL Light: Multivariate/paths.ml:15783 / INSIDE_CONVEX   (hash md5:28c6e0d5d9ca0feb19f2fc5e39fbe2f1)
Theorem hlt_INSIDE_CONVEX : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 -> hl_inside A s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/paths.ml:15787 / OUTSIDE_SUBSET_CONVEX   (hash md5:a490e687d42f90e162da332c6cdf1907)
Theorem hlt_OUTSIDE_SUBSET_CONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N t = 1 /\ hl_SUBSET (hl_ty_cart R N) s t = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t) (hl_outside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15794 / INSIDE_SUBSET_CONVEX   (hash md5:8b809b67be4d40de5d4bb86d69b5c480)
Theorem hlt_INSIDE_SUBSET_CONVEX : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_convex N c = 1 /\ hl_SUBSET (hl_ty_cart R N) s c = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_inside N s) c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15801 / INSIDE_SUBSET_CONVEX_HULL   (hash md5:0d9ac1dc13fb27c0ebb942fc8648f3a0)
Theorem hlt_INSIDE_SUBSET_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_inside N s) (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15805 / UNBOUNDED_DISJOINT_IN_OUTSIDE   (hash md5:55e2807bef8d707301dfc9f31d3c5791)
Theorem hlt_UNBOUNDED_DISJOINT_IN_OUTSIDE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_connected N t = 1 /\ (~ hl_bounded N t = 1 /\ (hl_IN (hl_ty_cart R N) x t = 1 /\ hl_DISJOINT (hl_ty_cart R N) s t = 1)) -> hl_IN (hl_ty_cart R N) x (hl_outside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15814 / INSIDE_SUBSET_INTERIOR_CONVEX   (hash md5:1d392ceb4a3b4ac7a79b8f7e90e69589)
Theorem hlt_INSIDE_SUBSET_INTERIOR_CONVEX : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_convex N c = 1 /\ hl_SUBSET (hl_ty_cart R N) s c = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_inside N s) (hl_interior N c) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15844 / INSIDE_SUBSET_INTERIOR_CONVEX_HULL   (hash md5:e18f2f8cbbaefbafade46f6458ddfec3)
Theorem hlt_INSIDE_SUBSET_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_inside N s) (hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15849 / OUTSIDE_FRONTIER_MISSES_CLOSURE   (hash md5:3c3a02ed5f7b644b869bb7e1d2d975bb)
Theorem hlt_OUTSIDE_FRONTIER_MISSES_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_outside N (hl_frontier N s)) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_closure N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15858 / OUTSIDE_FRONTIER_EQ_COMPLEMENT_CLOSURE   (hash md5:87a5476b991b4c85c4ad9ac11c02ce5e)
Theorem hlt_OUTSIDE_FRONTIER_EQ_COMPLEMENT_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_convex N s = 1 -> hl_outside N (hl_frontier N s) = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_closure N s).
Admitted.

// HOL Light: Multivariate/paths.ml:15866 / INSIDE_FRONTIER_EQ_INTERIOR   (hash md5:54e2c5a5a0aa6786a3b56bfb46172316)
Theorem hlt_INSIDE_FRONTIER_EQ_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_convex N s = 1 -> hl_inside N (hl_frontier N s) = hl_interior N s.
Admitted.

// HOL Light: Multivariate/paths.ml:15876 / INSIDE_SPHERE   (hash md5:f9c2ac7403cfd314b5806ad03d49dff6)
Theorem hlt_INSIDE_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_inside N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = hl_ball N (hl_pair (hl_ty_cart R N) R a r).
Admitted.

// HOL Light: Multivariate/paths.ml:15882 / OUTSIDE_SPHERE   (hash md5:0a25d553d1f07122bdb6653907a61871)
Theorem hlt_OUTSIDE_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_outside N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)).
Admitted.

// HOL Light: Multivariate/paths.ml:15886 / OPEN_INSIDE   (hash md5:1aeae289d2aae49fd4cf18dc148dc1a9)
Theorem hlt_OPEN_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_open N (hl_inside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15907 / OPEN_OUTSIDE   (hash md5:f3bcf4c108905cc9b16606b2d6d482fe)
Theorem hlt_OPEN_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_open N (hl_outside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15928 / CLOSURE_INSIDE_SUBSET   (hash md5:0ee4fd3fae0aab399620c569c687abd2)
Theorem hlt_CLOSURE_INSIDE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_closure N (hl_inside N s)) (hl_UNION (hl_ty_cart R N) s (hl_inside N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15933 / FRONTIER_INSIDE_SUBSET   (hash md5:501a73bf5c40812ff0b601e64bab2bd4)
Theorem hlt_FRONTIER_INSIDE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_frontier N (hl_inside N s)) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15939 / FRONTIER_WITH_INSIDE_SUBSET   (hash md5:dfe01a04a813eb8c7d03a541480e8dee)
Theorem hlt_FRONTIER_WITH_INSIDE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_frontier N (hl_UNION (hl_ty_cart R N) s (hl_inside N s))) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15946 / CLOSURE_OUTSIDE_SUBSET   (hash md5:493362c8d309588d375e2b73e69e1a40)
Theorem hlt_CLOSURE_OUTSIDE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_closure N (hl_outside N s)) (hl_UNION (hl_ty_cart R N) s (hl_outside N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15951 / FRONTIER_OUTSIDE_SUBSET   (hash md5:969f555bd838505329ca72b0244c8a9e)
Theorem hlt_FRONTIER_OUTSIDE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_frontier N (hl_outside N s)) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15957 / FRONTIER_WITH_OUTSIDE_SUBSET   (hash md5:7749edec74c8cca06a7e54bc3a54066c)
Theorem hlt_FRONTIER_WITH_OUTSIDE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_frontier N (hl_UNION (hl_ty_cart R N) s (hl_outside N s))) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15964 / CLOSED_WITH_INSIDE   (hash md5:44d6fa798e1eabf894be45b1e503ad99)
Theorem hlt_CLOSED_WITH_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_closed N (hl_UNION (hl_ty_cart R N) s (hl_inside N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15973 / BOUNDED_WITH_INSIDE   (hash md5:8db320a4b42e489612f70e317bcc8eb5)
Theorem hlt_BOUNDED_WITH_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_bounded N (hl_UNION (hl_ty_cart R N) s (hl_inside N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15977 / COMPACT_WITH_INSIDE   (hash md5:40f084d0c829a306618471e983eb5915)
Theorem hlt_COMPACT_WITH_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 -> hl_compact N (hl_UNION (hl_ty_cart R N) s (hl_inside N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:15982 / INSIDE_COMPLEMENT_UNBOUNDED_CONNECTED_EMPTY   (hash md5:f217294fe2ba02e3a0f858d7b34a71a7)
Theorem hlt_INSIDE_COMPLEMENT_UNBOUNDED_CONNECTED_EMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 /\ ~ hl_bounded N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 -> hl_inside N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:15989 / INSIDE_BOUNDED_COMPLEMENT_CONNECTED_EMPTY   (hash md5:01d8e85d0181c7f82640e94780e407b8)
Theorem hlt_INSIDE_BOUNDED_COMPLEMENT_CONNECTED_EMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 /\ hl_bounded N s = 1 -> hl_inside N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:15995 / INSIDE_INSIDE   (hash md5:ef22a141009623c3d3ae3687ba40b9f8)
Theorem hlt_INSIDE_INSIDE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s (hl_inside N t) = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) (hl_inside N s) t) (hl_inside N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16015 / INSIDE_INSIDE_SUBSET   (hash md5:8eea58034c0379e5759b0baeda31eb2c)
Theorem hlt_INSIDE_INSIDE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_inside N (hl_inside N s)) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16022 / INSIDE_OUTSIDE_INTERSECT_CONNECTED   (hash md5:937247e623874277c28aa202043a9cbc)
Theorem hlt_INSIDE_OUTSIDE_INTERSECT_CONNECTED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_connected N t = 1 /\ (~ hl_INTER (hl_ty_cart R N) (hl_inside N s) t = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_INTER (hl_ty_cart R N) (hl_outside N s) t = hl_EMPTY (hl_ty_cart R N)) -> ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:16041 / OUTSIDE_BOUNDED_NONEMPTY   (hash md5:86cef4f307ff9b89ffbb3d4008c1bd19)
Theorem hlt_OUTSIDE_BOUNDED_NONEMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> ~ hl_outside N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:16053 / OUTSIDE_COMPACT_IN_OPEN   (hash md5:133a06ce718520f6c11182d891625b15)
Theorem hlt_OUTSIDE_COMPACT_IN_OPEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_open N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ ~ t = hl_EMPTY (hl_ty_cart R N))) -> ~ hl_INTER (hl_ty_cart R N) (hl_outside N s) t = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:16117 / INSIDE_INSIDE_COMPACT_CONNECTED   (hash md5:972ce55420a2e627a1f5d3087c711eb3)
Theorem hlt_INSIDE_INSIDE_COMPACT_CONNECTED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_compact N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_inside N t) = 1 /\ hl_connected N t = 1)) -> hl_SUBSET (hl_ty_cart R N) (hl_inside N s) (hl_inside N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16158 / INSIDE_SELF_OUTSIDE_COMPACT_CONNECTED   (hash md5:21f365ac23a22cc2505de8d66f87dc68)
Theorem hlt_INSIDE_SELF_OUTSIDE_COMPACT_CONNECTED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_compact N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_inside N t) = 1 /\ hl_connected N t = 1)) -> hl_SUBSET (hl_ty_cart R N) (hl_UNION (hl_ty_cart R N) t (hl_outside N t)) (hl_outside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16166 / INSIDE_OUTSIDE_COMPACT_CONNECTED   (hash md5:a3c11d5b27c185f11c3aceefe811501c)
Theorem hlt_INSIDE_OUTSIDE_COMPACT_CONNECTED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_compact N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_inside N t) = 1 /\ hl_connected N t = 1)) -> hl_SUBSET (hl_ty_cart R N) t (hl_outside N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16174 / CONNECTED_WITH_INSIDE   (hash md5:14ee4378940cdd9531f49cca5467ff31)
Theorem hlt_CONNECTED_WITH_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ hl_connected N s = 1 -> hl_connected N (hl_UNION (hl_ty_cart R N) s (hl_inside N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16219 / CONNECTED_WITH_OUTSIDE   (hash md5:711b5838810dd903be8bbf332a90b3fe)
Theorem hlt_CONNECTED_WITH_OUTSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ hl_connected N s = 1 -> hl_connected N (hl_UNION (hl_ty_cart R N) s (hl_outside N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16264 / INSIDE_INSIDE_EQ_EMPTY   (hash md5:bb8a0138cd89566db8d86001c34f6c9b)
Theorem hlt_INSIDE_INSIDE_EQ_EMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ hl_connected N s = 1 -> hl_inside N (hl_inside N s) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:16277 / INSIDE_IN_COMPONENTS   (hash md5:b3442f67b368ae75bf0cb0118b468418)
Theorem hlt_INSIDE_IN_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) (hl_inside N s) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 <-> hl_connected N (hl_inside N s) = 1 /\ ~ hl_inside N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:16295 / OUTSIDE_IN_COMPONENTS   (hash md5:47341ad33870e20a010a50da87ef89fc)
Theorem hlt_OUTSIDE_IN_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) (hl_outside N s) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 <-> hl_connected N (hl_outside N s) = 1 /\ ~ hl_outside N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:16313 / BOUNDED_UNIQUE_OUTSIDE   (hash md5:6e521785b77775b52cc9f635a08fcf71)
Theorem hlt_BOUNDED_UNIQUE_OUTSIDE : forall N:set, N <> Empty -> forall c s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_bounded N s = 1 -> (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 /\ ~ hl_bounded N c = 1 <-> c = hl_outside N s).
Admitted.

// HOL Light: Multivariate/paths.ml:16326 / EMPTY_INSIDE_PSUBSET_CONVEX_FRONTIER   (hash md5:b7bb15d8335b4b9c63215ffbc05fcfb8)
Theorem hlt_EMPTY_INSIDE_PSUBSET_CONVEX_FRONTIER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_PSUBSET (hl_ty_cart R N) t (hl_frontier N s) = 1 -> hl_inside N t = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:16391 / HOMOTOPIC_WITH_EUCLIDEAN   (hash md5:b27d1046d5209ce8efa6ed9b50379824)
Theorem hlt_HOMOTOPIC_WITH_EUCLIDEAN : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall X :e 2 :^: hl_ty_cart R M, forall Y :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Y)) p q = 1 <-> exists h :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum 1 M), hl_continuous_on (hl_ty_finite_sum 1 M) N h (hl_PCROSS R 1 M (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) X) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum 1 M)) (hl_ty_cart R N) h (hl_PCROSS R 1 M (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) X)) Y = 1 /\ ((forall x :e hl_ty_cart R M, h (hl_pastecart R 1 M (hl_vec 1 (hl_NUMERAL hl_zero)) x) = p x) /\ ((forall x :e hl_ty_cart R M, h (hl_pastecart R 1 M (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) x) = q x) /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> P (fun x :e hl_ty_cart R M => h (hl_pastecart R 1 M t x)) = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:16452 / HOMOTOPIC_WITH_EUCLIDEAN_ALT   (hash md5:5d16f670e0b6a8c2f6363310a65e6f2a)
Theorem hlt_HOMOTOPIC_WITH_EUCLIDEAN_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall X :e 2 :^: hl_ty_cart R M, forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall Y :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R M, (forall h k :e hl_ty_cart R N :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x X = 1 -> h x = k x) -> (P h = 1 <-> P k = 1)) -> (hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Y)) p q = 1 <-> exists h :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum 1 M), hl_continuous_on (hl_ty_finite_sum 1 M) N h (hl_PCROSS R 1 M (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) X) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum 1 M)) (hl_ty_cart R N) h (hl_PCROSS R 1 M (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) X)) Y = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x X = 1 -> h (hl_pastecart R 1 M (hl_vec 1 (hl_NUMERAL hl_zero)) x) = p x) /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x X = 1 -> h (hl_pastecart R 1 M (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) x) = q x) /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> P (fun x :e hl_ty_cart R M => h (hl_pastecart R 1 M t x)) = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:16489 / HOMOTOPIC_WITH_RESTRICT   (hash md5:c77cd0aea5bbe88746ca8dadcb2edd7c)
Theorem hlt_HOMOTOPIC_WITH_RESTRICT : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall s' :e 2 :^: hl_ty_cart R M, forall t' :e 2 :^: hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1 /\ (hl_SUBSET (hl_ty_cart R M) s' s = 1 /\ (forall h :e hl_ty_cart R N :^: hl_ty_cart R M, P h = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h s) t = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h s') t' = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s') (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t')) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16513 / HOMOTOPIC_WITH_IMP_CONTINUOUS   (hash md5:1821e0642bb8c531a3b59d4c02f9fd07)
Theorem hlt_HOMOTOPIC_WITH_IMP_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall X :e 2 :^: hl_ty_cart R M, forall Y :e 2 :^: hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Y)) f g = 1 -> hl_continuous_on M N f X = 1 /\ hl_continuous_on M N g X = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16536 / HOMOTOPIC_WITH_IMP_SUBSET   (hash md5:b695afbec4a65adc107617533d5d32db)
Theorem hlt_HOMOTOPIC_WITH_IMP_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall X :e 2 :^: hl_ty_cart R M, forall Y :e 2 :^: hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Y)) f g = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f X) Y = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g X) Y = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16548 / HOMOTOPIC_WITH_MONO   (hash md5:52c166a703487c2211e6592afed06e84)
Theorem hlt_HOMOTOPIC_WITH_MONO : forall M N:set, M <> Empty -> N <> Empty -> forall P Q :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall X :e 2 :^: hl_ty_cart R M, forall Y :e 2 :^: hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Y)) f g = 1 /\ (forall h :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N h X = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h X) Y = 1 /\ P h = 1) -> Q h = 1) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) Q (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Y)) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16568 / HOMOTOPIC_WITH_SUBSET_LEFT   (hash md5:29c07218fb15b92298fa051456ca2e9a)
Theorem hlt_HOMOTOPIC_WITH_SUBSET_LEFT : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (hl_ty_cart R B :^: hl_ty_cart R A), forall X :e 2 :^: hl_ty_cart R A, forall Y :e 2 :^: hl_ty_cart R B, forall Z :e 2 :^: hl_ty_cart R A, forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, hl_homotopic_with (hl_ty_cart R A) (hl_ty_cart R B) P (hl_pair (hl_ty_topology (hl_ty_cart R A)) (hl_ty_topology (hl_ty_cart R B)) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) X) (hl_subtopology (hl_ty_cart R B) (hl_euclidean B) Y)) f g = 1 /\ hl_SUBSET (hl_ty_cart R A) Z X = 1 -> hl_homotopic_with (hl_ty_cart R A) (hl_ty_cart R B) P (hl_pair (hl_ty_topology (hl_ty_cart R A)) (hl_ty_topology (hl_ty_cart R B)) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) Z) (hl_subtopology (hl_ty_cart R B) (hl_euclidean B) Y)) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16584 / HOMOTOPIC_WITH_SUBSET_RIGHT   (hash md5:9ff4de87fadadef36c6c8c6cf1d7e19e)
Theorem hlt_HOMOTOPIC_WITH_SUBSET_RIGHT : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall X :e 2 :^: hl_ty_cart R M, forall Y Z :e 2 :^: hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Y)) f g = 1 /\ hl_SUBSET (hl_ty_cart R N) Y Z = 1 -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Z)) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16597 / HOMOTOPIC_WITH_COMPOSE_CONTINUOUS_RIGHT   (hash md5:9c2f092245517dc439a458e1bda270c0)
Theorem hlt_HOMOTOPIC_WITH_COMPOSE_CONTINUOUS_RIGHT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e 2 :^: (hl_ty_cart R P :^: hl_ty_cart R M), forall f g :e hl_ty_cart R P :^: hl_ty_cart R N, forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall W :e 2 :^: hl_ty_cart R M, forall X :e 2 :^: hl_ty_cart R N, forall Y :e 2 :^: hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R P) (fun f1 :e hl_ty_cart R P :^: hl_ty_cart R N => p (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f1 h)) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) X) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) Y)) f g = 1 /\ (hl_continuous_on M N h W = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h W) X = 1) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) p (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) W) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) Y)) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f h) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g h) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16609 / HOMOTOPIC_COMPOSE_CONTINUOUS_RIGHT   (hash md5:8945480f31319d0999b3a19648274703)
Theorem hlt_HOMOTOPIC_COMPOSE_CONTINUOUS_RIGHT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f g :e hl_ty_cart R P :^: hl_ty_cart R N, forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall W :e 2 :^: hl_ty_cart R M, forall X :e 2 :^: hl_ty_cart R N, forall Y :e 2 :^: hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R P) (fun f1 :e hl_ty_cart R P :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) X) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) Y)) f g = 1 /\ (hl_continuous_on M N h W = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h W) X = 1) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) (fun f1 :e hl_ty_cart R P :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) W) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) Y)) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f h) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g h) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16620 / HOMOTOPIC_WITH_COMPOSE_CONTINUOUS_LEFT   (hash md5:119ff54f344abad1cee3a27e6a37dfa3)
Theorem hlt_HOMOTOPIC_WITH_COMPOSE_CONTINUOUS_LEFT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e 2 :^: (hl_ty_cart R P :^: hl_ty_cart R M), forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R P :^: hl_ty_cart R N, forall X :e 2 :^: hl_ty_cart R M, forall Y :e 2 :^: hl_ty_cart R N, forall Z :e 2 :^: hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun f1 :e hl_ty_cart R N :^: hl_ty_cart R M => p (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) h f1)) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Y)) f g = 1 /\ (hl_continuous_on N P h Y = 1 /\ hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) h Y) Z = 1) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) p (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) Z)) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) h f) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) h g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16632 / HOMOTOPIC_COMPOSE_CONTINUOUS_LEFT   (hash md5:550d9efebeab7632f429334b9723f352)
Theorem hlt_HOMOTOPIC_COMPOSE_CONTINUOUS_LEFT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R P :^: hl_ty_cart R N, forall X :e 2 :^: hl_ty_cart R M, forall Y :e 2 :^: hl_ty_cart R N, forall Z :e 2 :^: hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun f1 :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) Y)) f g = 1 /\ (hl_continuous_on N P h Y = 1 /\ hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) h Y) Z = 1) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) (fun f1 :e hl_ty_cart R P :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) X) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) Z)) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) h f) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) h g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16644 / HOMOTOPIC_WITH_PCROSS   (hash md5:a2511b2b0fac9976ce397a7d73e995b4)
Theorem hlt_HOMOTOPIC_WITH_PCROSS : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall f' :e hl_ty_cart R Q :^: hl_ty_cart R P, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R Q :^: hl_ty_cart R P, forall p :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall p' :e 2 :^: (hl_ty_cart R Q :^: hl_ty_cart R P), forall q :e 2 :^: (hl_ty_cart R (hl_ty_finite_sum N Q) :^: hl_ty_cart R (hl_ty_finite_sum M P)), forall s :e 2 :^: hl_ty_cart R M, forall s' :e 2 :^: hl_ty_cart R P, forall t :e 2 :^: hl_ty_cart R N, forall t' :e 2 :^: hl_ty_cart R Q, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) p (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1 /\ (hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R Q) p' (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R Q)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) s') (hl_subtopology (hl_ty_cart R Q) (hl_euclidean Q) t')) f' g' = 1 /\ (forall f1 :e hl_ty_cart R N :^: hl_ty_cart R M, forall g1 :e hl_ty_cart R Q :^: hl_ty_cart R P, p f1 = 1 /\ p' g1 = 1 -> q (fun x :e hl_ty_cart R (hl_ty_finite_sum M P) => hl_pastecart R N Q (f1 (hl_fstcart R M P x)) (g1 (hl_sndcart R M P x))) = 1)) -> hl_homotopic_with (hl_ty_cart R (hl_ty_finite_sum M P)) (hl_ty_cart R (hl_ty_finite_sum N Q)) q (hl_pair (hl_ty_topology (hl_ty_cart R (hl_ty_finite_sum M P))) (hl_ty_topology (hl_ty_cart R (hl_ty_finite_sum N Q))) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum M P)) (hl_euclidean (hl_ty_finite_sum M P)) (hl_PCROSS R M P s s')) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N Q)) (hl_euclidean (hl_ty_finite_sum N Q)) (hl_PCROSS R N Q t t'))) (fun z :e hl_ty_cart R (hl_ty_finite_sum M P) => hl_pastecart R N Q (f (hl_fstcart R M P z)) (f' (hl_sndcart R M P z))) (fun z :e hl_ty_cart R (hl_ty_finite_sum M P) => hl_pastecart R N Q (g (hl_fstcart R M P z)) (g' (hl_sndcart R M P z))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16693 / HOMOTOPIC_WITH_COMPOSE   (hash md5:61b2c214f9fed3a572ef054410840c8e)
Theorem hlt_HOMOTOPIC_WITH_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P1 :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall Q :e 2 :^: (hl_ty_cart R P :^: hl_ty_cart R N), forall R1 :e 2 :^: (hl_ty_cart R P :^: hl_ty_cart R M), forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g g' :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, (forall f1 :e hl_ty_cart R N :^: hl_ty_cart R M, forall g1 :e hl_ty_cart R P :^: hl_ty_cart R N, hl_continuous_on M N f1 s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f1 s) t = 1 /\ (P1 f1 = 1 /\ (hl_continuous_on N P g1 t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) g1 t) u = 1 /\ Q g1 = 1)))) -> R1 (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g1 f1) = 1) /\ (hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) P1 (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f f' = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R P) Q (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) g g' = 1) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) R1 (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g' f') = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16722 / HOMOTOPIC_COMPOSE   (hash md5:41240daeb547cb0be5e47c0ac1f31fec)
Theorem hlt_HOMOTOPIC_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g g' :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f f' = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R P) (fun x :e hl_ty_cart R P :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) g g' = 1 -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) (fun x :e hl_ty_cart R P :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g' f') = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16740 / HOMOTOPIC_TRIVIALITY   (hash md5:682d43083e378f9c827f6603eee92148)
Theorem hlt_HOMOTOPIC_TRIVIALITY : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, (forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on M N g s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) t = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1) <-> (s = hl_EMPTY (hl_ty_cart R M) \/ hl_path_connected N t = 1) /\ forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 -> exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => c) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16792 / HOMOTOPIC_ON_CLOPEN_UNIONS   (hash md5:83701e2760adb13a53bc5e2506477472)
Theorem hlt_HOMOTOPIC_ON_CLOPEN_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: (2 :^: hl_ty_cart R M), (forall s :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) s u = 1 -> hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_UNIONS (hl_ty_cart R M) u)) s = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_UNIONS (hl_ty_cart R M) u)) s = 1 /\ hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_UNIONS (hl_ty_cart R M) u)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16880 / INESSENTIAL_ON_CLOPEN_UNIONS   (hash md5:3564beefa4633c2cdc1864e74fe53f2a)
Theorem hlt_INESSENTIAL_ON_CLOPEN_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: (2 :^: hl_ty_cart R M), hl_path_connected N t = 1 /\ (forall s :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) s u = 1 -> hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_UNIONS (hl_ty_cart R M) u)) s = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_UNIONS (hl_ty_cart R M) u)) s = 1 /\ exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => a) = 1)) -> exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_UNIONS (hl_ty_cart R M) u)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:16927 / HOMOTOPIC_WITH_REFLECTIONS_ALONG   (hash md5:f7bb94293cc6d7feb4e293f4f1521118)
Theorem hlt_HOMOTOPIC_WITH_REFLECTIONS_ALONG : forall N:set, N <> Empty -> forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R N), forall s t :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (~ b = hl_vec N (hl_NUMERAL hl_zero) /\ (forall c :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) c (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> P (hl_reflect_along N c) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_reflect_along N c) s) t = 1)) -> hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (hl_reflect_along N a) (hl_reflect_along N b) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17000 / HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS   (hash md5:a5a166a1dd369232a6f452cb40317f80)
Theorem hlt_HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (hl_orthogonal_transformation N) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))))) f g = 1 <-> hl_orthogonal_transformation N f = 1 /\ (hl_orthogonal_transformation N g = 1 /\ hl_det N (hl_matrix N N f) = hl_det N (hl_matrix N N g)).
Admitted.

// HOL Light: Multivariate/paths.ml:17094 / HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_GEN   (hash md5:b02124b630a706f3e9e2dbc0422dcbc2)
Theorem hlt_HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_GEN : forall N:set, N <> Empty -> forall P :e 2 :^: R, forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, (exists r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ P r = 1) -> (hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (hl_orthogonal_transformation N) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5344 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5344 (P (hl_vector_norm N x)) x = 1 then 1 else 0))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5345 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5345 (P (hl_vector_norm N x)) x = 1 then 1 else 0)))) f g = 1 <-> hl_orthogonal_transformation N f = 1 /\ (hl_orthogonal_transformation N g = 1 /\ hl_det N (hl_matrix N N f) = hl_det N (hl_matrix N N g))).
Admitted.

// HOL Light: Multivariate/paths.ml:17220 / HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_ALT   (hash md5:4fe03ef190c845f84be1d289cbfe4a83)
Theorem hlt_HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_ALT : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (hl_orthogonal_transformation N) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero)))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero))))) f g = 1 <-> hl_orthogonal_transformation N f = 1 /\ (hl_orthogonal_transformation N g = 1 /\ hl_det N (hl_matrix N N f) = hl_det N (hl_matrix N N g)).
Admitted.

// HOL Light: Multivariate/paths.ml:17233 / HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_UNIV   (hash md5:00ea9f936dc6051a052e437d205e2e0c)
Theorem hlt_HOMOTOPIC_WITH_ORTHOGONAL_TRANSFORMATIONS_UNIV : forall A N:set, A <> Empty -> N <> Empty -> forall P :e A, forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (hl_orthogonal_transformation N) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNIV (hl_ty_cart R N))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNIV (hl_ty_cart R N)))) f g = 1 <-> hl_orthogonal_transformation N f = 1 /\ (hl_orthogonal_transformation N g = 1 /\ hl_det N (hl_matrix N N f) = hl_det N (hl_matrix N N g)).
Admitted.

// HOL Light: Multivariate/paths.ml:17245 / HOMOTOPIC_WITH_LINEAR_POSITIVE_DEFINITE_MAPS   (hash md5:4553d5b2a8d1e74679281ae0a375d89c)
Theorem hlt_HOMOTOPIC_WITH_LINEAR_POSITIVE_DEFINITE_MAPS : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun f1 :e hl_ty_cart R N :^: hl_ty_cart R N => if hl_linear N N f1 = 1 /\ hl_positive_definite N (hl_matrix N N f1) = 1 then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero)))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero))))) f g = 1 <-> hl_linear N N f = 1 /\ (hl_linear N N g = 1 /\ (hl_positive_definite N (hl_matrix N N f) = 1 /\ hl_positive_definite N (hl_matrix N N g) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:17293 / HOMOTOPIC_WITH_LINEAR_MAPS   (hash md5:b63d6e4510f52acc2a70d4ba7b269f98)
Theorem hlt_HOMOTOPIC_WITH_LINEAR_MAPS : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (hl_linear N N) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero)))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero))))) f g = 1 <-> hl_linear N N f = 1 /\ (hl_linear N N g = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul (hl_det N (hl_matrix N N f)) (hl_det N (hl_matrix N N g))) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:17399 / homotopic_paths   (hash md5:c0280f4e10e1b599efd4adccd3aa7be8)
Theorem hlt_homotopic_paths_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p q = 1 <-> hl_homotopic_with (hl_ty_cart R 1) (hl_ty_cart R A) (fun r :e hl_ty_cart R A :^: hl_ty_cart R 1 => if hl_pathstart A r = hl_pathstart A p /\ hl_pathfinish A r = hl_pathfinish A p then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R 1)) (hl_ty_topology (hl_ty_cart R A)) (hl_subtopology (hl_ty_cart R 1) (hl_euclidean 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) s)) p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17407 / HOMOTOPIC_PATHS   (hash md5:e2f475086333b30586fc5846ba241dd4)
Theorem hlt_HOMOTOPIC_PATHS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_homotopic_paths N s p q = 1 <-> exists h :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum 1 1), hl_continuous_on (hl_ty_finite_sum 1 1) N h (hl_PCROSS R 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum 1 1)) (hl_ty_cart R N) h (hl_PCROSS R 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))))) s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> h (hl_pastecart R 1 1 (hl_vec 1 (hl_NUMERAL hl_zero)) x) = p x) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> h (hl_pastecart R 1 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) x) = q x) /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_pathstart N (hl_o (hl_ty_cart R (hl_ty_finite_sum 1 1)) (hl_ty_cart R N) (hl_ty_cart R 1) h (hl_pastecart R 1 1 t)) = hl_pathstart N p /\ hl_pathfinish N (hl_o (hl_ty_cart R (hl_ty_finite_sum 1 1)) (hl_ty_cart R N) (hl_ty_cart R 1) h (hl_pastecart R 1 1 t)) = hl_pathfinish N p))).
Admitted.

// HOL Light: Multivariate/paths.ml:17427 / HOMOTOPIC_PATHS_IMP_PATHSTART   (hash md5:dd72cc46d1f929a8c942911acdb8a217)
Theorem hlt_HOMOTOPIC_PATHS_IMP_PATHSTART : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p q = 1 -> hl_pathstart A p = hl_pathstart A q.
Admitted.

// HOL Light: Multivariate/paths.ml:17433 / HOMOTOPIC_PATHS_IMP_PATHFINISH   (hash md5:b6681cb4d52507ac611f8f809ffddd1a)
Theorem hlt_HOMOTOPIC_PATHS_IMP_PATHFINISH : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p q = 1 -> hl_pathfinish A p = hl_pathfinish A q.
Admitted.

// HOL Light: Multivariate/paths.ml:17439 / HOMOTOPIC_PATHS_IMP_PATH   (hash md5:a24c170a1e32b1a94609465502370167)
Theorem hlt_HOMOTOPIC_PATHS_IMP_PATH : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p q = 1 -> hl_path A p = 1 /\ hl_path A q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17445 / HOMOTOPIC_PATHS_IMP_SUBSET   (hash md5:196de61b178daa7d40b14bce02e30a8a)
Theorem hlt_HOMOTOPIC_PATHS_IMP_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p q = 1 -> hl_SUBSET (hl_ty_cart R A) (hl_path_image A p) s = 1 /\ hl_SUBSET (hl_ty_cart R A) (hl_path_image A q) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17452 / HOMOTOPIC_PATHS_REFL   (hash md5:c2dbc2b252adecfe535450f047f0e8ef)
Theorem hlt_HOMOTOPIC_PATHS_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p p = 1 <-> hl_path A p = 1 /\ hl_SUBSET (hl_ty_cart R A) (hl_path_image A p) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17458 / HOMOTOPIC_PATHS_SYM   (hash md5:f3ce46c23979022482c1a2caae595ca3)
Theorem hlt_HOMOTOPIC_PATHS_SYM : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p q = 1 <-> hl_homotopic_paths A s q p = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17466 / HOMOTOPIC_PATHS_TRANS   (hash md5:b7ad6573941b6177c918f5ec5b0bf119)
Theorem hlt_HOMOTOPIC_PATHS_TRANS : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q r :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p q = 1 /\ hl_homotopic_paths A s q r = 1 -> hl_homotopic_paths A s p r = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17477 / HOMOTOPIC_PATHS_EQ   (hash md5:13859c4cdbf62ec176f3b0dd5502c220)
Theorem hlt_HOMOTOPIC_PATHS_EQ : forall N:set, N <> Empty -> forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p t = q t)) -> hl_homotopic_paths N s p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17491 / HOMOTOPIC_PATHS_REPARAMETRIZE   (hash md5:f7fbfb9ee5adf694502cb678efd7ccba)
Theorem hlt_HOMOTOPIC_PATHS_REPARAMETRIZE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (exists f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (f (hl_vec 1 (hl_NUMERAL hl_zero)) = hl_vec 1 (hl_NUMERAL hl_zero) /\ (f (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> q t = p (f t)))))) -> hl_homotopic_paths N s p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17548 / HOMOTOPIC_PATHS_SUBSET   (hash md5:fdbf9d0f44229aa00b45bbd168ba7b69)
Theorem hlt_HOMOTOPIC_PATHS_SUBSET : forall A:set, A <> Empty -> forall t s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p q = 1 /\ hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_homotopic_paths A t p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17558 / HOMOTOPIC_JOIN_LEMMA   (hash md5:d9ad621e26bd3123196b8b75f990e5ab)
Theorem hlt_HOMOTOPIC_JOIN_LEMMA : forall N:set, N <> Empty -> forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1 :^: hl_ty_cart R 1, hl_continuous_on (hl_ty_finite_sum 1 1) N (fun y :e hl_ty_cart R (hl_ty_finite_sum 1 1) => p (hl_fstcart R 1 1 y) (hl_sndcart R 1 1 y)) (hl_PCROSS R 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ (hl_continuous_on (hl_ty_finite_sum 1 1) N (fun y :e hl_ty_cart R (hl_ty_finite_sum 1 1) => q (hl_fstcart R 1 1 y) (hl_sndcart R 1 1 y)) (hl_PCROSS R 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_pathfinish N (p t) = hl_pathstart N (q t))) -> hl_continuous_on (hl_ty_finite_sum 1 1) N (fun y :e hl_ty_cart R (hl_ty_finite_sum 1 1) => hl_poly_add (hl_ty_cart R N) (p (hl_fstcart R 1 1 y)) (q (hl_fstcart R 1 1 y)) (hl_sndcart R 1 1 y)) (hl_PCROSS R 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17602 / HOMOTOPIC_PATHS_REVERSEPATH   (hash md5:e383a0d46bbed0e8b1cde74bd55899a1)
Theorem hlt_HOMOTOPIC_PATHS_REVERSEPATH : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_homotopic_paths N s (hl_reversepath N p) (hl_reversepath N q) = 1 <-> hl_homotopic_paths N s p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17641 / HOMOTOPIC_PATHS_JOIN   (hash md5:4980d825e95f0bbd722c598d4b96388e)
Theorem hlt_HOMOTOPIC_PATHS_JOIN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q p' q' :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_homotopic_paths N s p p' = 1 /\ (hl_homotopic_paths N s q q' = 1 /\ hl_pathfinish N p = hl_pathstart N q) -> hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) p q) (hl_poly_add (hl_ty_cart R N) p' q') = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17675 / HOMOTOPIC_PATHS_CONTINUOUS_IMAGE   (hash md5:c2191f25f9f47e18dd44ac5cfab3f0d5)
Theorem hlt_HOMOTOPIC_PATHS_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopic_paths M s f g = 1 /\ (hl_continuous_on M N h s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h s) t = 1) -> hl_homotopic_paths N t (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) h f) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) h g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17692 / HOMOTOPIC_PATHS_RID   (hash md5:30778bf6c64c44f05c1c43e290e5444c)
Theorem hlt_HOMOTOPIC_PATHS_RID : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_path A p = 1 /\ hl_SUBSET (hl_ty_cart R A) (hl_path_image A p) s = 1 -> hl_homotopic_paths A s (hl_poly_add (hl_ty_cart R A) p (hl_linepath A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_pathfinish A p) (hl_pathfinish A p)))) p = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17719 / HOMOTOPIC_PATHS_LID   (hash md5:57ae2c50e2f0f7aa6ea857abdd0c9d2a)
Theorem hlt_HOMOTOPIC_PATHS_LID : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 -> hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_pathstart N p) (hl_pathstart N p))) p) p = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17734 / HOMOTOPIC_PATHS_ASSOC   (hash md5:6417b820658c87a5239245346ffdbcae)
Theorem hlt_HOMOTOPIC_PATHS_ASSOC : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q r :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (hl_path N q = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N q) s = 1 /\ (hl_path N r = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N r) s = 1 /\ (hl_pathfinish N p = hl_pathstart N q /\ hl_pathfinish N q = hl_pathstart N r)))))) -> hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) p (hl_poly_add (hl_ty_cart R N) q r)) (hl_poly_add (hl_ty_cart R N) (hl_poly_add (hl_ty_cart R N) p q) r) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17783 / HOMOTOPIC_PATHS_RINV   (hash md5:fb7b0319dc99d2f02d11bee00d97ea64)
Theorem hlt_HOMOTOPIC_PATHS_RINV : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 -> hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) p (hl_reversepath N p)) (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_pathstart N p) (hl_pathstart N p))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17865 / HOMOTOPIC_PATHS_LINV   (hash md5:31a1b0783fcef04387e26b9333cfa7f1)
Theorem hlt_HOMOTOPIC_PATHS_LINV : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 -> hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) (hl_reversepath N p) p) (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_pathfinish N p) (hl_pathfinish N p))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17877 / HOMOTOPIC_PATHS_LCANCEL   (hash md5:a763e21a16d2709f6bff7df9b9b13e2a)
Theorem hlt_HOMOTOPIC_PATHS_LCANCEL : forall N:set, N <> Empty -> forall p q r :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) p q) (hl_poly_add (hl_ty_cart R N) p r) = 1 /\ (hl_pathstart N q = hl_pathfinish N p /\ hl_pathstart N r = hl_pathfinish N p) -> hl_homotopic_paths N s q r = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17914 / HOMOTOPIC_PATHS_LCANCEL_EQ   (hash md5:a3eee9b799a86bf10cdaa1c70abb4c60)
Theorem hlt_HOMOTOPIC_PATHS_LCANCEL_EQ : forall N:set, N <> Empty -> forall p q r :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_pathstart N q = hl_pathfinish N p /\ hl_pathstart N r = hl_pathfinish N p -> (hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) p q) (hl_poly_add (hl_ty_cart R N) p r) = 1 <-> hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ hl_homotopic_paths N s q r = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:17927 / HOMOTOPIC_PATHS_RCANCEL   (hash md5:eb2bfc82e125f391f3326d10691ec20b)
Theorem hlt_HOMOTOPIC_PATHS_RCANCEL : forall N:set, N <> Empty -> forall p q r :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) p r) (hl_poly_add (hl_ty_cart R N) q r) = 1 /\ (hl_pathfinish N p = hl_pathstart N r /\ hl_pathfinish N q = hl_pathstart N r) -> hl_homotopic_paths N s p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17965 / HOMOTOPIC_PATHS_RCANCEL_EQ   (hash md5:4c61c8efefa29ad3ccd2a101534c8465)
Theorem hlt_HOMOTOPIC_PATHS_RCANCEL_EQ : forall N:set, N <> Empty -> forall p q r :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_pathfinish N p = hl_pathstart N r /\ hl_pathfinish N q = hl_pathstart N r -> (hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) p r) (hl_poly_add (hl_ty_cart R N) q r) = 1 <-> hl_homotopic_paths N s p q = 1 /\ (hl_path N r = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N r) s = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:17982 / homotopic_loops   (hash md5:5278f1ca33ccb671ccee37707e5cbbd8)
Theorem hlt_homotopic_loops_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_loops A s p q = 1 <-> hl_homotopic_with (hl_ty_cart R 1) (hl_ty_cart R A) (fun r :e hl_ty_cart R A :^: hl_ty_cart R 1 => if hl_pathfinish A r = hl_pathstart A r then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R 1)) (hl_ty_topology (hl_ty_cart R A)) (hl_subtopology (hl_ty_cart R 1) (hl_euclidean 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) s)) p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:17990 / HOMOTOPIC_LOOPS   (hash md5:e0f4efbfd9bec85dfc5fcfe1c7904ba0)
Theorem hlt_HOMOTOPIC_LOOPS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_homotopic_loops N s p q = 1 <-> exists h :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum 1 1), hl_continuous_on (hl_ty_finite_sum 1 1) N h (hl_PCROSS R 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum 1 1)) (hl_ty_cart R N) h (hl_PCROSS R 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))))) s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> h (hl_pastecart R 1 1 (hl_vec 1 (hl_NUMERAL hl_zero)) x) = p x) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> h (hl_pastecart R 1 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) x) = q x) /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_pathfinish N (hl_o (hl_ty_cart R (hl_ty_finite_sum 1 1)) (hl_ty_cart R N) (hl_ty_cart R 1) h (hl_pastecart R 1 1 t)) = hl_pathstart N (hl_o (hl_ty_cart R (hl_ty_finite_sum 1 1)) (hl_ty_cart R N) (hl_ty_cart R 1) h (hl_pastecart R 1 1 t))))).
Admitted.

// HOL Light: Multivariate/paths.ml:18009 / HOMOTOPIC_LOOPS_IMP_LOOP   (hash md5:5c61205d195331182d7880df0dfa97b1)
Theorem hlt_HOMOTOPIC_LOOPS_IMP_LOOP : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_loops A s p q = 1 -> hl_pathfinish A p = hl_pathstart A p /\ hl_pathfinish A q = hl_pathstart A q.
Admitted.

// HOL Light: Multivariate/paths.ml:18017 / HOMOTOPIC_LOOPS_IMP_PATH   (hash md5:de8395a0237957f1fe66016040a6deb5)
Theorem hlt_HOMOTOPIC_LOOPS_IMP_PATH : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_loops A s p q = 1 -> hl_path A p = 1 /\ hl_path A q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18023 / HOMOTOPIC_LOOPS_IMP_SUBSET   (hash md5:5b28a522d224c133c12fe67ef7eeb0f3)
Theorem hlt_HOMOTOPIC_LOOPS_IMP_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_loops A s p q = 1 -> hl_SUBSET (hl_ty_cart R A) (hl_path_image A p) s = 1 /\ hl_SUBSET (hl_ty_cart R A) (hl_path_image A q) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18030 / HOMOTOPIC_LOOPS_REFL   (hash md5:4ec0f7a468812c6ba3d951d7c07c7c3f)
Theorem hlt_HOMOTOPIC_LOOPS_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_loops A s p p = 1 <-> hl_path A p = 1 /\ (hl_SUBSET (hl_ty_cart R A) (hl_path_image A p) s = 1 /\ hl_pathfinish A p = hl_pathstart A p).
Admitted.

// HOL Light: Multivariate/paths.ml:18037 / HOMOTOPIC_LOOPS_SYM   (hash md5:71c5ed7587ff2e40468daa8734e5cd9a)
Theorem hlt_HOMOTOPIC_LOOPS_SYM : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_loops A s p q = 1 <-> hl_homotopic_loops A s q p = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18041 / HOMOTOPIC_LOOPS_TRANS   (hash md5:4903e396d00b0075dc396b4344b0b458)
Theorem hlt_HOMOTOPIC_LOOPS_TRANS : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q r :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_loops A s p q = 1 /\ hl_homotopic_loops A s q r = 1 -> hl_homotopic_loops A s p r = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18047 / HOMOTOPIC_LOOPS_SUBSET   (hash md5:4daa3e3a23daba6f6e4f9ba95ce92b10)
Theorem hlt_HOMOTOPIC_LOOPS_SUBSET : forall A:set, A <> Empty -> forall t s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_loops A s p q = 1 /\ hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_homotopic_loops A t p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18053 / HOMOTOPIC_LOOPS_EQ   (hash md5:ab1cc5d1856f192b146d7c19d89e8533)
Theorem hlt_HOMOTOPIC_LOOPS_EQ : forall N:set, N <> Empty -> forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (hl_pathfinish N p = hl_pathstart N p /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p t = q t))) -> hl_homotopic_loops N s p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18067 / HOMOTOPIC_LOOPS_CONTINUOUS_IMAGE   (hash md5:d15e0063697ebc5bc83bdd02f31185cd)
Theorem hlt_HOMOTOPIC_LOOPS_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopic_loops M s f g = 1 /\ (hl_continuous_on M N h s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h s) t = 1) -> hl_homotopic_loops N t (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) h f) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) h g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18079 / HOMOTOPIC_LOOPS_SHIFTPATH_SELF   (hash md5:028cf59daea1136577aa20b9c4b84d18)
Theorem hlt_HOMOTOPIC_LOOPS_SHIFTPATH_SELF : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, forall t :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (hl_pathfinish N p = hl_pathstart N p /\ hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1)) -> hl_homotopic_loops N s p (hl_shiftpath N t p) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18154 / HOMOTOPIC_PATHS_IMP_HOMOTOPIC_LOOPS   (hash md5:262766561c5fbf6b3b4e6fdb0ff8f207)
Theorem hlt_HOMOTOPIC_PATHS_IMP_HOMOTOPIC_LOOPS : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall p q :e hl_ty_cart R A :^: hl_ty_cart R 1, hl_homotopic_paths A s p q = 1 /\ (hl_pathfinish A p = hl_pathstart A p /\ hl_pathfinish A q = hl_pathstart A p) -> hl_homotopic_loops A s p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18165 / HOMOTOPIC_LOOPS_IMP_HOMOTOPIC_PATHS_NULL   (hash md5:5a955ad0e45eb188bca0645509f97cfc)
Theorem hlt_HOMOTOPIC_LOOPS_IMP_HOMOTOPIC_PATHS_NULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R N, hl_homotopic_loops N s p (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a)) = 1 -> hl_homotopic_paths N s p (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_pathstart N p) (hl_pathstart N p))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18299 / HOMOTOPIC_LOOPS_CONJUGATE   (hash md5:846771b96180bdbd2dbcfa96e3e4783f)
Theorem hlt_HOMOTOPIC_LOOPS_CONJUGATE : forall N:set, N <> Empty -> forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (hl_path N q = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N q) s = 1 /\ (hl_pathfinish N p = hl_pathstart N q /\ hl_pathfinish N q = hl_pathstart N q)))) -> hl_homotopic_loops N s (hl_poly_add (hl_ty_cart R N) p (hl_poly_add (hl_ty_cart R N) q (hl_reversepath N p))) q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18397 / PATH_COMPONENT_IMP_HOMOTOPIC_POINTS   (hash md5:80aeddc94f482770c4fdfe8babba854e)
Theorem hlt_PATH_COMPONENT_IMP_HOMOTOPIC_POINTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_path_component N s a b = 1 -> hl_homotopic_loops N s (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a)) (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18415 / HOMOTOPIC_LOOPS_IMP_PATH_COMPONENT_VALUE   (hash md5:be36fee3cbfccd1d600bc5f0157588d3)
Theorem hlt_HOMOTOPIC_LOOPS_IMP_PATH_COMPONENT_VALUE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, forall t :e hl_ty_cart R 1, hl_homotopic_loops N s p q = 1 /\ hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_path_component N s (p t) (q t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18437 / HOMOTOPIC_POINTS_EQ_PATH_COMPONENT   (hash md5:0c83d7731b291457ae8e05abbaa3ed50)
Theorem hlt_HOMOTOPIC_POINTS_EQ_PATH_COMPONENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_homotopic_loops N s (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a)) (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b b)) = 1 <-> hl_path_component N s a b = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18448 / PATH_CONNECTED_EQ_HOMOTOPIC_POINTS   (hash md5:fe9be1b62147e59b796d1eb30f22e2f1)
Theorem hlt_PATH_CONNECTED_EQ_HOMOTOPIC_POINTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_path_connected N s = 1 <-> forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1 -> hl_homotopic_loops N s (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a)) (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18460 / HOMOTOPIC_WITH_LINEAR   (hash md5:ba073b4386909fce48bbc2249ff44e7b)
Theorem hlt_HOMOTOPIC_WITH_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_continuous_on M N g s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (g x)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) t = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun z :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18495 / HOMOTOPIC_LOOPS_LINEAR   (hash md5:74ef38831426b56ca97ed9ba477b898a)
Theorem hlt_HOMOTOPIC_LOOPS_LINEAR : forall A N:set, A <> Empty -> N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 /\ (hl_path N h = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ (hl_pathfinish N h = hl_pathstart N h /\ (forall t :e hl_ty_cart R 1, forall x :e A, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g t) (h t)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1)))) -> hl_homotopic_loops N s g h = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18495 / HOMOTOPIC_PATHS_LINEAR   (hash md5:d448c68288a3e271943fa2e1c5a4aba5)
Theorem hlt_HOMOTOPIC_PATHS_LINEAR : forall A N:set, A <> Empty -> N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 /\ (hl_path N h = 1 /\ (hl_pathstart N h = hl_pathstart N g /\ (hl_pathfinish N h = hl_pathfinish N g /\ (forall t :e hl_ty_cart R 1, forall x :e A, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g t) (h t)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1)))) -> hl_homotopic_paths N s g h = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18570 / HOMOTOPIC_NEARBY_LOOPS   (hash md5:1b857af00675681bc5a8c334762b46fd)
Theorem hlt_HOMOTOPIC_NEARBY_LOOPS : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N g = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ (hl_open N s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1)) -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N h = 1 /\ (hl_pathfinish N h = hl_pathstart N h /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (h t) (g t))) e1 = 1)) -> hl_homotopic_loops N s g h = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18570 / HOMOTOPIC_NEARBY_PATHS   (hash md5:c54e17ee0ac195d1a1fa8d183245f1fa)
Theorem hlt_HOMOTOPIC_NEARBY_PATHS : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N g = 1 /\ (hl_open N s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1) -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N h = 1 /\ (hl_pathstart N h = hl_pathstart N g /\ (hl_pathfinish N h = hl_pathfinish N g /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (h t) (g t))) e1 = 1))) -> hl_homotopic_paths N s g h = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18607 / HOMOTOPIC_NON_MIDPOINT_SPHEREMAPS   (hash md5:a90c30b4131ee3c8cc774275429921e3)
Theorem hlt_HOMOTOPIC_NON_MIDPOINT_SPHEREMAPS : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R N, forall r :e R, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (hl_continuous_on M N g s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> ~ hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (g x)) = a)))) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)))) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18668 / HOMOTOPIC_NON_ANTIPODAL_SPHEREMAPS   (hash md5:4cbbcf7482cf0f08db93a306eec24d59)
Theorem hlt_HOMOTOPIC_NON_ANTIPODAL_SPHEREMAPS : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall r :e R, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) = 1 /\ (hl_continuous_on M N g s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> ~ f x = hl_vector_neg N (g x))))) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)))) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18683 / HOMOTOPICALLY_TRIVIAL_RETRACTION_GEN   (hash md5:536318e4c76e3f29ef56e8ea5e6b21df)
Theorem hlt_HOMOTOPICALLY_TRIVIAL_RETRACTION_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P1 :e 2 :^: (hl_ty_cart R M :^: hl_ty_cart R P), forall Q :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R P), forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on M N h s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h s = t /\ (hl_continuous_on N M k t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) k t) s = 1 /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> h (k y) = y) /\ ((forall f :e hl_ty_cart R N :^: hl_ty_cart R P, hl_continuous_on P N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) t = 1 /\ Q f = 1) -> P1 (hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R P) k f) = 1) /\ ((forall f :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M f u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) f u) s = 1 /\ P1 f = 1) -> Q (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R P) h f) = 1) /\ (forall h1 k1 :e hl_ty_cart R N :^: hl_ty_cart R P, (forall x :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) x u = 1 -> h1 x = k1 x) -> (Q h1 = 1 <-> Q k1 = 1)))))))) /\ (forall f g :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M f u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) f u) s = 1 /\ (P1 f = 1 /\ (hl_continuous_on P M g u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g u) s = 1 /\ P1 g = 1)))) -> hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R M) P1 (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s)) f g = 1) -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R P, hl_continuous_on P N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) t = 1 /\ (Q f = 1 /\ (hl_continuous_on P N g u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) g u) t = 1 /\ Q g = 1)))) -> hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R N) Q (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18723 / HOMOTOPICALLY_TRIVIAL_RETRACTION_NULL_GEN   (hash md5:5e18b8291f5b2afdbe2ae95dd1e7e5c0)
Theorem hlt_HOMOTOPICALLY_TRIVIAL_RETRACTION_NULL_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P1 :e 2 :^: (hl_ty_cart R M :^: hl_ty_cart R P), forall Q :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R P), forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on M N h s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h s = t /\ (hl_continuous_on N M k t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) k t) s = 1 /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> h (k y) = y) /\ ((forall f :e hl_ty_cart R N :^: hl_ty_cart R P, hl_continuous_on P N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) t = 1 /\ Q f = 1) -> P1 (hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R P) k f) = 1) /\ ((forall f :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M f u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) f u) s = 1 /\ P1 f = 1) -> Q (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R P) h f) = 1) /\ (forall h1 k1 :e hl_ty_cart R N :^: hl_ty_cart R P, (forall x :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) x u = 1 -> h1 x = k1 x) -> (Q h1 = 1 <-> Q k1 = 1)))))))) /\ (forall f :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M f u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) f u) s = 1 /\ P1 f = 1) -> exists c :e hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R M) P1 (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s)) f (fun x :e hl_ty_cart R P => c) = 1) -> forall f :e hl_ty_cart R N :^: hl_ty_cart R P, hl_continuous_on P N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) t = 1 /\ Q f = 1) -> exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R N) Q (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R P => c) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18762 / COHOMOTOPICALLY_TRIVIAL_RETRACTION_GEN   (hash md5:795c8c7b5d2228a53b3956da95894b1d)
Theorem hlt_COHOMOTOPICALLY_TRIVIAL_RETRACTION_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P1 :e 2 :^: (hl_ty_cart R P :^: hl_ty_cart R M), forall Q :e 2 :^: (hl_ty_cart R P :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on M N h s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h s = t /\ (hl_continuous_on N M k t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) k t) s = 1 /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> h (k y) = y) /\ ((forall f :e hl_ty_cart R P :^: hl_ty_cart R N, hl_continuous_on N P f t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) f t) u = 1 /\ Q f = 1) -> P1 (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f h) = 1) /\ ((forall f :e hl_ty_cart R P :^: hl_ty_cart R M, hl_continuous_on M P f s = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) f s) u = 1 /\ P1 f = 1) -> Q (hl_o (hl_ty_cart R M) (hl_ty_cart R P) (hl_ty_cart R N) f k) = 1) /\ (forall h1 k1 :e hl_ty_cart R P :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> h1 x = k1 x) -> (Q h1 = 1 <-> Q k1 = 1)))))))) /\ (forall f g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_continuous_on M P f s = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) f s) u = 1 /\ (P1 f = 1 /\ (hl_continuous_on M P g s = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) g s) u = 1 /\ P1 g = 1)))) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) P1 (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) f g = 1) -> forall f g :e hl_ty_cart R P :^: hl_ty_cart R N, hl_continuous_on N P f t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) f t) u = 1 /\ (Q f = 1 /\ (hl_continuous_on N P g t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) g t) u = 1 /\ Q g = 1)))) -> hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R P) Q (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18803 / COHOMOTOPICALLY_TRIVIAL_RETRACTION_NULL_GEN   (hash md5:6494df68d573e1b42cdafd52a9747cd0)
Theorem hlt_COHOMOTOPICALLY_TRIVIAL_RETRACTION_NULL_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall P1 :e 2 :^: (hl_ty_cart R P :^: hl_ty_cart R M), forall Q :e 2 :^: (hl_ty_cart R P :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on M N h s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h s = t /\ (hl_continuous_on N M k t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) k t) s = 1 /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> h (k y) = y) /\ ((forall f :e hl_ty_cart R P :^: hl_ty_cart R N, hl_continuous_on N P f t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) f t) u = 1 /\ Q f = 1) -> P1 (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f h) = 1) /\ ((forall f :e hl_ty_cart R P :^: hl_ty_cart R M, hl_continuous_on M P f s = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) f s) u = 1 /\ P1 f = 1) -> Q (hl_o (hl_ty_cart R M) (hl_ty_cart R P) (hl_ty_cart R N) f k) = 1) /\ (forall h1 k1 :e hl_ty_cart R P :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> h1 x = k1 x) -> (Q h1 = 1 <-> Q k1 = 1)))))))) /\ (forall f :e hl_ty_cart R P :^: hl_ty_cart R M, hl_continuous_on M P f s = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) f s) u = 1 /\ P1 f = 1) -> exists c :e hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) P1 (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) f (fun x :e hl_ty_cart R M => c) = 1) -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, hl_continuous_on N P f t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) f t) u = 1 /\ Q f = 1) -> exists c :e hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R P) Q (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) f (fun x :e hl_ty_cart R N => c) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18845 / HOMOTOPIC_JOIN_SUBPATHS   (hash md5:5aec29f3efa4035bb7d75c9239ca13a4)
Theorem hlt_HOMOTOPIC_JOIN_SUBPATHS : forall N:set, N <> Empty -> forall u v w :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_path N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) w (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1))) -> hl_homotopic_paths N s (hl_poly_add (hl_ty_cart R N) (hl_subpath (hl_ty_cart R N) u v g) (hl_subpath (hl_ty_cart R N) v w g)) (hl_subpath (hl_ty_cart R N) u w g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:18992 / HOMOTOPIC_LOOPS_SHIFTPATH   (hash md5:b97d0a6f9196150ea3ea1bd378448ca0)
Theorem hlt_HOMOTOPIC_LOOPS_SHIFTPATH : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, forall u :e hl_ty_cart R 1, hl_homotopic_loops N s p q = 1 /\ hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_homotopic_loops N s (hl_shiftpath N u p) (hl_shiftpath N u q) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19054 / HOMOTOPIC_PATHS_LOOP_PARTS   (hash md5:c336059f8c013a3e5849ff282bae4eee)
Theorem hlt_HOMOTOPIC_PATHS_LOOP_PARTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R N, hl_homotopic_loops N s (hl_poly_add (hl_ty_cart R N) p (hl_reversepath N q)) (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a)) = 1 /\ hl_path N q = 1 -> hl_homotopic_paths N s p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19102 / HOMOTOPIC_LOOPS_ADD_SYM   (hash md5:3bce84cb59d5619999f3373368af2c89)
Theorem hlt_HOMOTOPIC_LOOPS_ADD_SYM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (hl_pathfinish N p = hl_pathstart N p /\ (hl_path N q = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N q) s = 1 /\ (hl_pathfinish N q = hl_pathstart N q /\ hl_pathstart N q = hl_pathstart N p))))) -> hl_homotopic_loops N s (hl_poly_add (hl_ty_cart R N) p q) (hl_poly_add (hl_ty_cart R N) q p) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19142 / simply_connected   (hash md5:0829cbf43c6b910201d28390e5925bf0)
Theorem hlt_simply_connected_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N s = 1 <-> forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_pathfinish N p = hl_pathstart N p /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (hl_path N q = 1 /\ (hl_pathfinish N q = hl_pathstart N q /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N q) s = 1)))) -> hl_homotopic_loops N s p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19148 / SIMPLY_CONNECTED_EMPTY   (hash md5:0af14609047ccff78f5d388c139ad901)
Theorem hlt_SIMPLY_CONNECTED_EMPTY : forall A:set, A <> Empty -> hl_simply_connected A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19153 / SIMPLY_CONNECTED_IMP_PATH_CONNECTED   (hash md5:88ec27a2246e11b5778edb29731875fd)
Theorem hlt_SIMPLY_CONNECTED_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N s = 1 -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19161 / SIMPLY_CONNECTED_IMP_CONNECTED   (hash md5:00c3f26843119a29b7fd5f94f57437da)
Theorem hlt_SIMPLY_CONNECTED_IMP_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N s = 1 -> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19166 / SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_ANY   (hash md5:de95d8ef9be4e03c332d3762bbe3ed37)
Theorem hlt_SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_ANY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N s = 1 <-> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R N, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (hl_pathfinish N p = hl_pathstart N p /\ hl_IN (hl_ty_cart R N) a s = 1)) -> hl_homotopic_loops N s p (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19183 / SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_SOME   (hash md5:08807529f2e8f51c32631cfea236daa6)
Theorem hlt_SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_SOME : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N s = 1 <-> hl_path_connected N s = 1 /\ forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ hl_pathfinish N p = hl_pathstart N p) -> exists a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ hl_homotopic_loops N s p (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19203 / SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_ALL   (hash md5:3f359fc3f2967cebdec14dddfab98e58)
Theorem hlt_SIMPLY_CONNECTED_EQ_CONTRACTIBLE_LOOP_ALL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N s = 1 <-> s = hl_EMPTY (hl_ty_cart R N) \/ exists a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ hl_pathfinish N p = hl_pathstart N p) -> hl_homotopic_loops N s p (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19236 / SIMPLY_CONNECTED_EQ_CONTRACTIBLE_PATH   (hash md5:1434e50858616211c37588f52aba874d)
Theorem hlt_SIMPLY_CONNECTED_EQ_CONTRACTIBLE_PATH : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N s = 1 <-> hl_path_connected N s = 1 /\ forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ hl_pathfinish N p = hl_pathstart N p) -> hl_homotopic_paths N s p (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_pathstart N p) (hl_pathstart N p))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19262 / SIMPLY_CONNECTED_EQ_HOMOTOPIC_PATHS   (hash md5:4255451640f99fb8e30d2f62d1aaf27c)
Theorem hlt_SIMPLY_CONNECTED_EQ_HOMOTOPIC_PATHS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N s = 1 <-> hl_path_connected N s = 1 /\ forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (hl_path N q = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N q) s = 1 /\ (hl_pathstart N q = hl_pathstart N p /\ hl_pathfinish N q = hl_pathfinish N p)))) -> hl_homotopic_paths N s p q = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19309 / SIMPLY_CONNECTED_RETRACTION_GEN   (hash md5:0f3aa54930dcc3feda59e42d573874a4)
Theorem hlt_SIMPLY_CONNECTED_RETRACTION_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on M N h s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) h s = t /\ (hl_continuous_on N M k t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) k t) s = 1 /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> h (k y) = y) /\ hl_simply_connected M s = 1)))) -> hl_simply_connected N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19327 / HOMEOMORPHIC_SIMPLY_CONNECTED   (hash md5:b8cd19013b994c671a1ec1a1a287c9f4)
Theorem hlt_HOMEOMORPHIC_SIMPLY_CONNECTED : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 /\ hl_simply_connected M s = 1 -> hl_simply_connected N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19338 / HOMEOMORPHIC_SIMPLY_CONNECTED_EQ   (hash md5:ddd8723c76c0bce5449ba3fe967d4c29)
Theorem hlt_HOMEOMORPHIC_SIMPLY_CONNECTED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 -> (hl_simply_connected M s = 1 <-> hl_simply_connected N t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:19347 / SIMPLY_CONNECTED_TRANSLATION   (hash md5:5264b6f0a0a15e4e1788744f01f81cb2)
Theorem hlt_SIMPLY_CONNECTED_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_simply_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19355 / SIMPLY_CONNECTED_INJECTIVE_LINEAR_IMAGE   (hash md5:bea7d5a32ca2a1d62f363366f5846588)
Theorem hlt_SIMPLY_CONNECTED_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_simply_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_simply_connected M s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:19365 / HOMEOMORPHISM_SIMPLE_CONNECTEDNESS   (hash md5:631971690e235214b227d84daead98e1)
Theorem hlt_HOMEOMORPHISM_SIMPLE_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R M, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> (hl_simply_connected N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f k) = 1 <-> hl_simply_connected M k = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:19376 / SIMPLY_CONNECTED_PCROSS   (hash md5:ce681df535dafdd8f4e7ccf3b2cbb729)
Theorem hlt_SIMPLY_CONNECTED_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_simply_connected M s = 1 /\ hl_simply_connected N t = 1 -> hl_simply_connected (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19411 / SIMPLY_CONNECTED_PCROSS_EQ   (hash md5:4416cb5bc7fd2e70ac7964823e4dd952)
Theorem hlt_SIMPLY_CONNECTED_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_simply_connected (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_simply_connected M s = 1 /\ hl_simply_connected N t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:19474 / SIMPLY_CONNECTED_NESTED_UNIONS   (hash md5:e443e92e61917abb05443886c65d55f1)
Theorem hlt_SIMPLY_CONNECTED_NESTED_UNIONS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_open N s = 1 /\ hl_simply_connected N s = 1) /\ (forall s t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 /\ hl_IN (2 :^: hl_ty_cart R N) t f = 1 -> hl_SUBSET (hl_ty_cart R N) s t = 1 \/ hl_SUBSET (hl_ty_cart R N) t s = 1) -> hl_simply_connected N (hl_UNIONS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19511 / fundamental_group   (hash md5:c1e98549943d913d208a3514f5f427d7)
Theorem hlt_fundamental_group_thm : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_fundamental_group N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N) s a) = hl_GSPEC (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) (fun GEN_PVAR_5354 :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1) => if exists p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_SETSPEC (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) GEN_PVAR_5354 (if hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) s = 1 /\ (hl_pathstart N p = a /\ hl_pathfinish N p = a)) then 1 else 0) (hl_homotopic_paths N s p) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/paths.ml:19516 / FUNDAMENTAL_GROUP_EQ_EMPTY   (hash md5:d31a7eef0d0e3207011fdb355f7149cb)
Theorem hlt_FUNDAMENTAL_GROUP_EQ_EMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_fundamental_group N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N) s a) = hl_EMPTY (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) <-> ~ hl_IN (hl_ty_cart R N) a s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19527 / CARD_EQ_FUNDAMENTAL_GROUPS_BASEPOINTS   (hash md5:2643858fd5be9ebc24902e21f078d2aa)
Theorem hlt_CARD_EQ_FUNDAMENTAL_GROUPS_BASEPOINTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_path_connected N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1) -> hl_sym_3d5f63 (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) (hl_fundamental_group N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N) s a)) (hl_fundamental_group N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N) s b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19585 / SIMPLY_CONNECTED_FUNDAMENTAL_GROUP   (hash md5:6ad1027d5b0354fd1a276a9ed38fe47c)
Theorem hlt_SIMPLY_CONNECTED_FUNDAMENTAL_GROUP : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_simply_connected N s = 1 <-> hl_path_connected N s = 1 /\ forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 -> hl_fundamental_group N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N) s a) = hl_INSERT (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) (hl_homotopic_paths N s (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a))) (hl_EMPTY (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:19616 / FUNDAMENTAL_GROUP_SIMPLY_CONNECTED   (hash md5:c03f0d631fdaadacb09954b9a3924ebc)
Theorem hlt_FUNDAMENTAL_GROUP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_simply_connected N s = 1 /\ hl_IN (hl_ty_cart R N) a s = 1 -> hl_fundamental_group N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N) s a) = hl_INSERT (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) (hl_homotopic_paths N s (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a))) (hl_EMPTY (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:19629 / NULLHOMOTOPIC_FROM_SPHERE_EXTENSION   (hash md5:bdc1b68ab9f3708ad0093532841fab3b)
Theorem hlt_NULLHOMOTOPIC_FROM_SPHERE_EXTENSION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R M, forall r :e R, (exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_sphere M (hl_pair (hl_ty_cart R M) R a r))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) f (fun x :e hl_ty_cart R M => c) = 1) <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g (hl_cball M (hl_pair (hl_ty_cart R M) R a r)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_cball M (hl_pair (hl_ty_cart R M) R a r))) s = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_sphere M (hl_pair (hl_ty_cart R M) R a r)) = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/paths.ml:19857 / homotopy_equivalent   (hash md5:7d43c6c76b35fd4bfc4dbdbb03f5eed5)
Theorem hlt_homotopy_equivalent_thm : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent M N s t = 1 <-> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on N M g t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t) s = 1 /\ (hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s)) (hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f) (hl_I (hl_ty_cart R M)) = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g) (hl_I (hl_ty_cart R N)) = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:19866 / HOMOTOPY_EQUIVALENT_SPACE_EUCLIDEAN   (hash md5:944271742a026183005925ff0401e766)
Theorem hlt_HOMOTOPY_EQUIVALENT_SPACE_EUCLIDEAN : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent_space (hl_ty_cart R M) (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) = 1 <-> hl_homotopy_equivalent M N s t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19874 / HOMOTOPY_EQUIVALENT   (hash md5:2a1f8f245ca9680d45bec00b118a5b7f)
Theorem hlt_HOMOTOPY_EQUIVALENT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent M N s t = 1 <-> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists g h :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on N M g t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t) s = 1 /\ (hl_continuous_on N M h t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) h t) s = 1 /\ (hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s)) (hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f) (hl_I (hl_ty_cart R M)) = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f h) (hl_I (hl_ty_cart R N)) = 1)))))).
Admitted.

// HOL Light: Multivariate/paths.ml:19910 / HOMEOMORPHIC_IMP_HOMOTOPY_EQUIVALENT   (hash md5:602dc34bd4901df571b5bc2d4d40c7e0)
Theorem hlt_HOMEOMORPHIC_IMP_HOMOTOPY_EQUIVALENT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 -> hl_homotopy_equivalent M N s t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19917 / HOMOTOPY_EQUIVALENT_REFL   (hash md5:bc6e1daac758cf585b0c0402c8f40d51)
Theorem hlt_HOMOTOPY_EQUIVALENT_REFL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent N N s s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19921 / HOMOTOPY_EQUIVALENT_SYM   (hash md5:9439b5ac5521b4e8a83fa9f5f7d997ef)
Theorem hlt_HOMOTOPY_EQUIVALENT_SYM : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent M N s t = 1 <-> hl_homotopy_equivalent N M t s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19927 / HOMOTOPY_EQUIVALENT_TRANS   (hash md5:7605a2304098d1de86e9f9d82cd6316b)
Theorem hlt_HOMOTOPY_EQUIVALENT_TRANS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, hl_homotopy_equivalent M N s t = 1 /\ hl_homotopy_equivalent N P t u = 1 -> hl_homotopy_equivalent M P s u = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19934 / HOMOTOPY_EQUIVALENT_PCROSS   (hash md5:94ca9de8deb7e6aab684505d4f558a3a)
Theorem hlt_HOMOTOPY_EQUIVALENT_PCROSS : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall s' :e 2 :^: hl_ty_cart R P, forall t' :e 2 :^: hl_ty_cart R Q, hl_homotopy_equivalent M P s s' = 1 /\ hl_homotopy_equivalent N Q t t' = 1 -> hl_homotopy_equivalent (hl_ty_finite_sum M N) (hl_ty_finite_sum P Q) (hl_PCROSS R M N s t) (hl_PCROSS R P Q s' t') = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19974 / HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_SELF   (hash md5:78ebfe3a1dbc55ce3e0a75bcc72328a6)
Theorem hlt_HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_SELF : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_homotopy_equivalent N M (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:19982 / HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_LEFT_EQ   (hash md5:0a1e0f78151d7db9de54830abbbf136c)
Theorem hlt_HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_LEFT_EQ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R A, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_homotopy_equivalent N A (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 <-> hl_homotopy_equivalent M A s t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:19993 / HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_RIGHT_EQ   (hash md5:62ad5e686a50cd49e7d6d5208bb927a1)
Theorem hlt_HOMOTOPY_EQUIVALENT_INJECTIVE_LINEAR_IMAGE_RIGHT_EQ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R A, forall t :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_homotopy_equivalent A N s (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1 <-> hl_homotopy_equivalent A M s t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20004 / HOMOTOPY_EQUIVALENT_TRANSLATION_SELF   (hash md5:355360009b6c8864c180a5146cf99dc1)
Theorem hlt_HOMOTOPY_EQUIVALENT_TRANSLATION_SELF : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent N N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20009 / HOMOTOPY_EQUIVALENT_TRANSLATION_LEFT_EQ   (hash md5:5674b57004e17234cec6dd1bfd55e26d)
Theorem hlt_HOMOTOPY_EQUIVALENT_TRANSLATION_LEFT_EQ : forall A N:set, A <> Empty -> N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R A, hl_homotopy_equivalent N A (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) t = 1 <-> hl_homotopy_equivalent N A s t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20015 / HOMOTOPY_EQUIVALENT_TRANSLATION_RIGHT_EQ   (hash md5:05038a3c883e673721415eef756a7eb9)
Theorem hlt_HOMOTOPY_EQUIVALENT_TRANSLATION_RIGHT_EQ : forall A N:set, A <> Empty -> N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R A, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent A N s (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) t) = 1 <-> hl_homotopy_equivalent A N s t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20025 / HOMOTOPY_EQUIVALENT_HOMOTOPIC_TRIVIALITY   (hash md5:c28ce16aac5e3e8e4695226e356ecf1c)
Theorem hlt_HOMOTOPY_EQUIVALENT_HOMOTOPIC_TRIVIALITY : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, hl_homotopy_equivalent M N s t = 1 -> ((forall f g :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M f u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) f u) s = 1 /\ (hl_continuous_on P M g u = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g u) s = 1)) -> hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R M) (fun x :e hl_ty_cart R M :^: hl_ty_cart R P => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s)) f g = 1) <-> forall f g :e hl_ty_cart R N :^: hl_ty_cart R P, hl_continuous_on P N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) t = 1 /\ (hl_continuous_on P N g u = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) g u) t = 1)) -> hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R P => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20085 / HOMOTOPY_EQUIVALENT_COHOMOTOPIC_TRIVIALITY   (hash md5:55a7327fe8edd11769bba565e3d86c2f)
Theorem hlt_HOMOTOPY_EQUIVALENT_COHOMOTOPIC_TRIVIALITY : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, hl_homotopy_equivalent M N s t = 1 -> ((forall f g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_continuous_on M P f s = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) f s) u = 1 /\ (hl_continuous_on M P g s = 1 /\ hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) g s) u = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) (fun x :e hl_ty_cart R P :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) f g = 1) <-> forall f g :e hl_ty_cart R P :^: hl_ty_cart R N, hl_continuous_on N P f t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) f t) u = 1 /\ (hl_continuous_on N P g t = 1 /\ hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) g t) u = 1)) -> hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R P) (fun x :e hl_ty_cart R P :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) f g = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20143 / HOMOTOPY_EQUIVALENT_HOMOTOPIC_TRIVIALITY_NULL   (hash md5:d541be0d137584fdc3fcacba3b740349)
Theorem hlt_HOMOTOPY_EQUIVALENT_HOMOTOPIC_TRIVIALITY_NULL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, hl_homotopy_equivalent M N s t = 1 -> ((forall f :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M f u = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) f u) s = 1 -> exists c :e hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R M) (fun x :e hl_ty_cart R M :^: hl_ty_cart R P => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s)) f (fun x :e hl_ty_cart R P => c) = 1) <-> forall f :e hl_ty_cart R N :^: hl_ty_cart R P, hl_continuous_on P N f u = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) t = 1 -> exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R P => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R P => c) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20195 / HOMOTOPY_EQUIVALENT_COHOMOTOPIC_TRIVIALITY_NULL   (hash md5:0327626fa9f3905c704c0a163b321387)
Theorem hlt_HOMOTOPY_EQUIVALENT_COHOMOTOPIC_TRIVIALITY_NULL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, hl_homotopy_equivalent M N s t = 1 -> ((forall f :e hl_ty_cart R P :^: hl_ty_cart R M, hl_continuous_on M P f s = 1 /\ hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) f s) u = 1 -> exists c :e hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) (fun x :e hl_ty_cart R P :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) f (fun x :e hl_ty_cart R M => c) = 1) <-> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, hl_continuous_on N P f t = 1 /\ hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) f t) u = 1 -> exists c :e hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R P) (fun x :e hl_ty_cart R P :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) f (fun x :e hl_ty_cart R N => c) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20244 / HOMOTOPIC_WITH_IMP_PATH_COMPONENT   (hash md5:f80cb6db63d8b9eb64b0b65f77e9232f)
Theorem hlt_HOMOTOPIC_WITH_IMP_PATH_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1 /\ hl_IN (hl_ty_cart R M) a s = 1 -> hl_path_component N t (f a) (g a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20276 / HOMOTOPY_INVARIANT_CARD_COMPONENTS   (hash md5:9464119bad1904d41617bb2fe4455c2a)
Theorem hlt_HOMOTOPY_INVARIANT_CARD_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on N M g t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t) s = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g) (hl_I (hl_ty_cart R N)) = 1))) -> hl_sym_3c3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R M) (hl_components N t) (hl_components M s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20327 / HOMOTOPY_INVARIANT_CONNECTEDNESS   (hash md5:7c4598c12f8c4f22768a994f9106da12)
Theorem hlt_HOMOTOPY_INVARIANT_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on N M g t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t) s = 1 /\ (hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g) (hl_I (hl_ty_cart R N)) = 1 /\ hl_connected M s = 1)))) -> hl_connected N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20347 / HOMOTOPY_EQUIVALENT_CONNECTEDNESS   (hash md5:c1df46b806ae1769bf169f560490758b)
Theorem hlt_HOMOTOPY_EQUIVALENT_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent M N s t = 1 -> (hl_connected M s = 1 <-> hl_connected N t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20355 / HOMOTOPY_EQUIVALENT_CARD_EQ_COMPONENTS   (hash md5:214c5d71d8a5877c0fd66ab22b7b324f)
Theorem hlt_HOMOTOPY_EQUIVALENT_CARD_EQ_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent M N s t = 1 -> hl_sym_3d5f63 (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_components M s) (hl_components N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20362 / HOMEOMORPHIC_CARD_EQ_COMPONENTS   (hash md5:013786cf95c9e7b09c788db6927bac3b)
Theorem hlt_HOMEOMORPHIC_CARD_EQ_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 -> hl_sym_3d5f63 (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_components M s) (hl_components N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20370 / HOMOTOPY_INVARIANT_CARD_PATH_COMPONENTS   (hash md5:0dcf1cb0b358a66d80947df53074951b)
Theorem hlt_HOMOTOPY_INVARIANT_CARD_PATH_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on N M g t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t) s = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g) (hl_I (hl_ty_cart R N)) = 1))) -> hl_sym_3c3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5360 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5360 (hl_IN (hl_ty_cart R N) x t) (hl_path_component N t x) = 1 then 1 else 0)) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_5361 :e 2 :^: hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_5361 (hl_IN (hl_ty_cart R M) x s) (hl_path_component M s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20424 / HOMOTOPY_INVARIANT_PATH_CONNECTEDNESS   (hash md5:135293dc0352481d4f56eb6de5fc0294)
Theorem hlt_HOMOTOPY_INVARIANT_PATH_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on N M g t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t) s = 1 /\ (hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g) (hl_I (hl_ty_cart R N)) = 1 /\ hl_path_connected M s = 1)))) -> hl_path_connected N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20461 / HOMOTOPY_EQUIVALENT_PATH_CONNECTEDNESS   (hash md5:8c4d22315fe5fea7453523d11a0482fe)
Theorem hlt_HOMOTOPY_EQUIVALENT_PATH_CONNECTEDNESS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent M N s t = 1 -> (hl_path_connected M s = 1 <-> hl_path_connected N t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20469 / HOMOTOPY_EQUIVALENT_CARD_EQ_PATH_COMPONENTS   (hash md5:47e8ba4d2e22b0a31a241ae3e05e602d)
Theorem hlt_HOMOTOPY_EQUIVALENT_CARD_EQ_PATH_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent M N s t = 1 -> hl_sym_3d5f63 (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_5365 :e 2 :^: hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_5365 (hl_IN (hl_ty_cart R M) x s) (hl_path_component M s x) = 1 then 1 else 0)) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5366 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5366 (hl_IN (hl_ty_cart R N) x t) (hl_path_component N t x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20478 / HOMEOMORPHIC_CARD_EQ_PATH_COMPONENTS   (hash md5:6cae5e241e1a013653b330befccd7fca)
Theorem hlt_HOMEOMORPHIC_CARD_EQ_PATH_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 -> hl_sym_3d5f63 (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_5367 :e 2 :^: hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_5367 (hl_IN (hl_ty_cart R M) x s) (hl_path_component M s x) = 1 then 1 else 0)) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5368 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5368 (hl_IN (hl_ty_cart R N) x t) (hl_path_component N t x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20488 / FINITE_COMPONENTS_PUNCTURED_CONVEX   (hash md5:75987552ca15cf4e11d9935203de1bfe)
Theorem hlt_FINITE_COMPONENTS_PUNCTURED_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N (hl_DELETE (hl_ty_cart R N) s a)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20549 / contractible   (hash md5:47ddb9ea405bbc60b5e4d6768287eeb9)
Theorem hlt_contractible_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_contractible A s = 1 <-> exists a :e hl_ty_cart R A, hl_homotopic_with (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A :^: hl_ty_cart R A => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R A)) (hl_ty_topology (hl_ty_cart R A)) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) s) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) s)) (fun x :e hl_ty_cart R A => x) (fun x :e hl_ty_cart R A => a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20554 / CONTRACTIBLE_SPACE_EUCLIDEAN   (hash md5:b3482337cb22d7204ce5c10a7a0a1e29)
Theorem hlt_CONTRACTIBLE_SPACE_EUCLIDEAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_contractible_space (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) = 1 <-> hl_contractible N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20559 / CONTRACTIBLE_IMP_SIMPLY_CONNECTED   (hash md5:2a83e3f240d510d9e30a63ce74fc37b3)
Theorem hlt_CONTRACTIBLE_IMP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_contractible N s = 1 -> hl_simply_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20594 / CONTRACTIBLE_IMP_CONNECTED   (hash md5:27cc9157d0685d1054833cd1d79817c2)
Theorem hlt_CONTRACTIBLE_IMP_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_contractible N s = 1 -> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20599 / CONTRACTIBLE_IMP_PATH_CONNECTED   (hash md5:59784ecdf24cc7dea48bcd0127a7501c)
Theorem hlt_CONTRACTIBLE_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_contractible N s = 1 -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20604 / NULLHOMOTOPIC_THROUGH_CONTRACTIBLE   (hash md5:fe3fcdf92c3601470009564c01e2b259)
Theorem hlt_NULLHOMOTOPIC_THROUGH_CONTRACTIBLE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on N P g t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) g t) u = 1 /\ hl_contractible N t = 1))) -> exists c :e hl_ty_cart R P, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) (fun h :e hl_ty_cart R P :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) (fun x :e hl_ty_cart R M => c) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20618 / NULLHOMOTOPIC_INTO_CONTRACTIBLE   (hash md5:c86fc11ef4814d00a9c2e5956a166db7)
Theorem hlt_NULLHOMOTOPIC_INTO_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ hl_contractible N t = 1) -> exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun h :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => c) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20630 / NULLHOMOTOPIC_FROM_CONTRACTIBLE   (hash md5:c7d3691359f81b2c1704e4a5090f7cfa)
Theorem hlt_NULLHOMOTOPIC_FROM_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ hl_contractible M s = 1) -> exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun h :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => c) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20642 / HOMOTOPIC_THROUGH_CONTRACTIBLE   (hash md5:34dcffc59f7123ad7da66142cdb6bc90)
Theorem hlt_HOMOTOPIC_THROUGH_CONTRACTIBLE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f1 :e hl_ty_cart R N :^: hl_ty_cart R M, forall g1 :e hl_ty_cart R P :^: hl_ty_cart R N, forall f2 :e hl_ty_cart R N :^: hl_ty_cart R M, forall g2 :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, hl_continuous_on M N f1 s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f1 s) t = 1 /\ (hl_continuous_on N P g1 t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) g1 t) u = 1 /\ (hl_continuous_on M N f2 s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f2 s) t = 1 /\ (hl_continuous_on N P g2 t = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R P) g2 t) u = 1 /\ (hl_contractible N t = 1 /\ hl_path_connected P u = 1)))))))) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R P) (fun h :e hl_ty_cart R P :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R P)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u)) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g1 f1) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g2 f2) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20658 / HOMOTOPIC_INTO_CONTRACTIBLE   (hash md5:e572ed21feb971bcf8b407b817dfad70)
Theorem hlt_HOMOTOPIC_INTO_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on M N g s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) t = 1 /\ hl_contractible N t = 1))) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun h :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20668 / HOMOTOPIC_FROM_CONTRACTIBLE   (hash md5:93a7ee986250bbb43dce678b01bf7181)
Theorem hlt_HOMOTOPIC_FROM_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on M N g s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) t = 1 /\ (hl_contractible M s = 1 /\ hl_path_connected N t = 1)))) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun h :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20679 / HOMOTOPY_EQUIVALENT_CONTRACTIBLE_SETS   (hash md5:016efe5b9f853593b18709bf7ee1f6b2)
Theorem hlt_HOMOTOPY_EQUIVALENT_CONTRACTIBLE_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_contractible M s = 1 /\ (hl_contractible N t = 1 /\ (s = hl_EMPTY (hl_ty_cart R M) <-> t = hl_EMPTY (hl_ty_cart R N))) -> hl_homotopy_equivalent M N s t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20699 / STARLIKE_IMP_CONTRACTIBLE_GEN   (hash md5:315bc00f9d7e22c27747b449e4f370e6)
Theorem hlt_STARLIKE_IMP_CONTRACTIBLE_GEN : forall N:set, N <> Empty -> forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, (forall a :e hl_ty_cart R N, forall t :e R, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 /\ hl_real_le t (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> P (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) t) x) (hl_vmul N t a)) = 1) /\ hl_starlike N s = 1 -> exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) P (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) (fun x :e hl_ty_cart R N => a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20722 / STARLIKE_IMP_CONTRACTIBLE   (hash md5:2d7b6f9b546aa2af68a7343cfd09ccc0)
Theorem hlt_STARLIKE_IMP_CONTRACTIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_starlike N s = 1 -> hl_contractible N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20726 / CONTRACTIBLE_UNIV   (hash md5:ec3f3e77645c810c493646d07408c1f9)
Theorem hlt_CONTRACTIBLE_UNIV : forall N:set, N <> Empty -> hl_contractible N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20730 / STARLIKE_IMP_SIMPLY_CONNECTED   (hash md5:5f0bce38684d58c2c18362f25e28562e)
Theorem hlt_STARLIKE_IMP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_starlike N s = 1 -> hl_simply_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20735 / CONVEX_IMP_SIMPLY_CONNECTED   (hash md5:d6303dc3a88fc51b2601d4b9c254066f)
Theorem hlt_CONVEX_IMP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_simply_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20740 / STARLIKE_IMP_PATH_CONNECTED   (hash md5:81088e26b4c56d12f96ba736c815da69)
Theorem hlt_STARLIKE_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_starlike N s = 1 -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20745 / STARLIKE_IMP_CONNECTED   (hash md5:2fbc6212f1ec0a0f0f01d4b8bdfd813c)
Theorem hlt_STARLIKE_IMP_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_starlike N s = 1 -> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20749 / CONIC_IMP_PATH_CONNECTED   (hash md5:0ecd256b1718b8a39e8207d9410b3362)
Theorem hlt_CONIC_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20754 / CONIC_IMP_CONNECTED   (hash md5:4f5e9363174157bd9e3de61cd1a2ae8a)
Theorem hlt_CONIC_IMP_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 -> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20758 / IS_INTERVAL_SIMPLY_CONNECTED_1   (hash md5:1438852811914c9c669ecbce5cd2840f)
Theorem hlt_IS_INTERVAL_SIMPLY_CONNECTED_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 <-> hl_simply_connected 1 s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20763 / CONTRACTIBLE_EMPTY   (hash md5:695d2cb03a5d6c02195249a0cf8977e8)
Theorem hlt_CONTRACTIBLE_EMPTY : forall A:set, A <> Empty -> hl_contractible A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20769 / CONIC_IMP_CONTRACTIBLE   (hash md5:26043ef0784eb0c964f297a6b4fd433f)
Theorem hlt_CONIC_IMP_CONTRACTIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 -> hl_contractible N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20774 / CONIC_IMP_SIMPLY_CONNECTED   (hash md5:7d9f74654d5a3eced74258d463f4e75c)
Theorem hlt_CONIC_IMP_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 -> hl_simply_connected N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20778 / CONTRACTIBLE_CONVEX_TWEAK_BOUNDARY_POINTS   (hash md5:8cb6fa5d721f4dbb3f66ea82e9daaad6)
Theorem hlt_CONTRACTIBLE_CONVEX_TWEAK_BOUNDARY_POINTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_relative_interior N s) t = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_closure N s) = 1) -> hl_contractible N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20787 / CONVEX_IMP_CONTRACTIBLE   (hash md5:86c5d862f58b1801bcfa3baf0fd6dd3c)
Theorem hlt_CONVEX_IMP_CONTRACTIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_contractible N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20792 / CONTRACTIBLE_SING   (hash md5:9816341689625d443f53c6feecc9690d)
Theorem hlt_CONTRACTIBLE_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_contractible N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20796 / SIMPLY_CONNECTED_SING   (hash md5:d72d9d83aa070b9275f5cd9c85341485)
Theorem hlt_SIMPLY_CONNECTED_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_simply_connected N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20800 / IS_INTERVAL_CONTRACTIBLE_1   (hash md5:47d554162f67ab00530ae6bedf9c7178)
Theorem hlt_IS_INTERVAL_CONTRACTIBLE_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 <-> hl_contractible 1 s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20805 / CONTRACTIBLE_PCROSS   (hash md5:2a0bc765967de016755d27bc11dd77dd)
Theorem hlt_CONTRACTIBLE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_contractible M s = 1 /\ hl_contractible N t = 1 -> hl_contractible (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20834 / CONTRACTIBLE_PCROSS_EQ   (hash md5:3e7cb196c0f76873d5dde723d2f56859)
Theorem hlt_CONTRACTIBLE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_contractible (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_contractible M s = 1 /\ hl_contractible N t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20880 / HOMOTOPY_EQUIVALENT_EMPTY   (hash md5:0e04b5d203557c6ae159b324abedd154)
Theorem hlt_HOMOTOPY_EQUIVALENT_EMPTY : forall M N:set, M <> Empty -> N <> Empty -> (forall s :e 2 :^: hl_ty_cart R M, hl_homotopy_equivalent M N s (hl_EMPTY (hl_ty_cart R N)) = 1 <-> s = hl_EMPTY (hl_ty_cart R M)) /\ forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent M N (hl_EMPTY (hl_ty_cart R M)) t = 1 <-> t = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:20887 / HOMOTOPY_EQUIVALENT_CONTRACTIBILITY   (hash md5:8ff059ef1c5c91695236f5068f8ababd)
Theorem hlt_HOMOTOPY_EQUIVALENT_CONTRACTIBILITY : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homotopy_equivalent M N s t = 1 -> (hl_contractible M s = 1 <-> hl_contractible N t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20894 / HOMOTOPY_EQUIVALENT_SING   (hash md5:a3ef9c591f5089f24deeb5b0975cc4ce)
Theorem hlt_HOMOTOPY_EQUIVALENT_SING : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R N, hl_homotopy_equivalent M N s (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1 <-> ~ s = hl_EMPTY (hl_ty_cart R M) /\ hl_contractible M s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20905 / HOMEOMORPHIC_CONTRACTIBLE_EQ   (hash md5:a79bbbbf38ff1a7da1e4a06213d4e530)
Theorem hlt_HOMEOMORPHIC_CONTRACTIBLE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 -> (hl_contractible M s = 1 <-> hl_contractible N t = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20911 / HOMEOMORPHIC_CONTRACTIBLE   (hash md5:0d672fdc3afdc33426f2ba849fb98784)
Theorem hlt_HOMEOMORPHIC_CONTRACTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 /\ hl_contractible M s = 1 -> hl_contractible N t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20916 / CONTRACTIBLE_TRANSLATION   (hash md5:6c7d70568b8db233414c6bf3a06e2f9b)
Theorem hlt_CONTRACTIBLE_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_contractible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_contractible N s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:20924 / CONTRACTIBLE_INJECTIVE_LINEAR_IMAGE   (hash md5:28e6beab91aa3c94630b36c5e5221fcd)
Theorem hlt_CONTRACTIBLE_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_contractible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_contractible M s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20934 / HOMEOMORPHISM_CONTRACTIBILITY   (hash md5:eedf5f9d155877bd7e8c82e9e3d8fe5a)
Theorem hlt_HOMEOMORPHISM_CONTRACTIBILITY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R M, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> (hl_contractible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f k) = 1 <-> hl_contractible M k = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:20949 / HOMEOMORPHIC_PUNCTURED_AFFINE_SPHERE_AFFINE   (hash md5:622060bc9b421942645f5a13eabc71a5)
Theorem hlt_HOMEOMORPHIC_PUNCTURED_AFFINE_SPHERE_AFFINE : forall M N:set, M <> Empty -> N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall b :e hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R N, forall p :e 2 :^: hl_ty_cart R M, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (hl_affine N t = 1 /\ (hl_IN (hl_ty_cart R N) a t = 1 /\ (hl_IN (hl_ty_cart R N) b t = 1 /\ (hl_affine M p = 1 /\ hl_aff_dim N t = hl_int_add (hl_aff_dim M p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))))) -> hl_homeomorphic N M (hl_DELETE (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) t) b) p = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21119 / HOMEOMORPHIC_PUNCTURED_SPHERE_AFFINE_GEN   (hash md5:67cd27d1d7371da2d25089c445cf9e2a)
Theorem hlt_HOMEOMORPHIC_PUNCTURED_SPHERE_AFFINE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_frontier N s) = 1 /\ (hl_affine M t = 1 /\ hl_aff_dim N s = hl_int_add (hl_aff_dim M t) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) -> hl_homeomorphic N M (hl_DELETE (hl_ty_cart R N) (hl_relative_frontier N s) a) t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21170 / HOMEOMORPHIC_PUNCTURED_SPHERE_AFFINE   (hash md5:cc1aea9756d9f58b19db2bab02268d3e)
Theorem hlt_HOMEOMORPHIC_PUNCTURED_SPHERE_AFFINE : forall M N:set, M <> Empty -> N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall b :e hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (hl_affine M t = 1 /\ hl_int_add (hl_aff_dim M t) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_int_of_num (hl_dimindex N (hl_UNIV N)))) -> hl_homeomorphic N M (hl_DELETE (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) b) t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21180 / HOMEOMORPHIC_PUNCTURED_SPHERE_HYPERPLANE   (hash md5:d53b632da08613fb036aca18207fbaa7)
Theorem hlt_HOMEOMORPHIC_PUNCTURED_SPHERE_HYPERPLANE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall b c :e hl_ty_cart R N, forall d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ ~ c = hl_vec N (hl_NUMERAL hl_zero)) -> hl_homeomorphic N N (hl_DELETE (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) b) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5380 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5380 (if hl_dot N c x = d then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21188 / HOMEOMORPHIC_PUNCTURED_SPHERE_UNIV   (hash md5:5b171d60f9aabefd7edb82e6bc48123e)
Theorem hlt_HOMEOMORPHIC_PUNCTURED_SPHERE_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall b :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ hl_dimindex N (hl_UNIV N) = hl_add (hl_dimindex M (hl_UNIV M)) (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_homeomorphic N M (hl_DELETE (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) b) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21197 / CONTRACTIBLE_PUNCTURED_SPHERE   (hash md5:078e6f99145952d14e7738ab47317b36)
Theorem hlt_CONTRACTIBLE_PUNCTURED_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall b :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_IN (hl_ty_cart R N) b (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 -> hl_contractible N (hl_DELETE (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) b) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21208 / CONTRACTIBLE_PUNCTURED_SPHERE_GEN   (hash md5:c2b2a267fae9483e58537e0dd7350eea)
Theorem hlt_CONTRACTIBLE_PUNCTURED_SPHERE_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_relative_frontier N s) = 1) -> hl_contractible N (hl_DELETE (hl_ty_cart R N) (hl_relative_frontier N s) a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21226 / NULLHOMOTOPIC_NONSURJECTIVE_SPHERE_MAP_GEN   (hash md5:f68068b04eac321e970d5c6af4b72fe0)
Theorem hlt_NULLHOMOTOPIC_NONSURJECTIVE_SPHERE_MAP_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ (hl_continuous_on N N f (hl_relative_frontier N s) = 1 /\ hl_PSUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_relative_frontier N s)) (hl_relative_frontier N s) = 1)) -> exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_relative_frontier N s)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_relative_frontier N s))) f (fun x :e hl_ty_cart R N => a) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21247 / CONNECTED_PUNCTURED_SPHERE   (hash md5:24ce052b557286a09ad055bc03152db4)
Theorem hlt_CONNECTED_PUNCTURED_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall b :e hl_ty_cart R N, hl_connected N (hl_DELETE (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) b) = 1 <-> hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 -> hl_IN (hl_ty_cart R N) b (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21288 / CONNECTED_IN_SPHERE_DELETE_INTERIOR_POINT_EQ   (hash md5:828170e0602a62e2efaba781514bfd8b)
Theorem hlt_CONNECTED_IN_SPHERE_DELETE_INTERIOR_POINT_EQ : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall r :e R, forall u s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r))) u = 1 /\ (hl_IN (hl_ty_cart R N) b u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u s = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1))) -> (hl_connected N (hl_DELETE (hl_ty_cart R N) s b) = 1 <-> hl_connected N s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:21358 / CONNECTED_OPEN_IN_SPHERE_DELETE_EQ   (hash md5:f119f0fa0376eb04ae674934b06e9c9e)
Theorem hlt_CONNECTED_OPEN_IN_SPHERE_DELETE_EQ : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall r :e R, forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r))) s = 1 -> (hl_connected N (hl_DELETE (hl_ty_cart R N) s b) = 1 <-> hl_connected N s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:21370 / FINITE_COMPONENTS_PUNCTURED_CONNECTED_SUBSET_SPHERE   (hash md5:5379d5ac848a84912d5748b175f2a8ea)
Theorem hlt_FINITE_COMPONENTS_PUNCTURED_CONNECTED_SUBSET_SPHERE : forall N:set, N <> Empty -> forall r :e R, forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_connected N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_interior_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r))) s) = 1) -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N (hl_DELETE (hl_ty_cart R N) s b)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21437 / CARD_EQ_COMPONENTS_IN_COMPACTIFICATION   (hash md5:61a7277ca6f39d97476beb5b6a65b756)
Theorem hlt_CARD_EQ_COMPONENTS_IN_COMPACTIFICATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R N, forall r :e R, forall s :e 2 :^: hl_ty_cart R N, forall z :e hl_ty_cart R N, hl_homeomorphism N M (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R M) (hl_DELETE (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) z) (hl_UNIV (hl_ty_cart R M))) (hl_pair (hl_ty_cart R M :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R M) f g) = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (hl_IN (hl_ty_cart R N) z (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ ~ hl_IN (hl_ty_cart R N) z (hl_closure N s) = 1)) -> hl_sym_3d5f63 (2 :^: hl_ty_cart R N) (omega :+: 2 :^: hl_ty_cart R M) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) s)) (hl_sym_2b5f63 omega (2 :^: hl_ty_cart R M) (hl_INSERT omega (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_EMPTY omega)) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_5383 :e 2 :^: hl_ty_cart R M => if exists c :e 2 :^: hl_ty_cart R M, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_5383 (if hl_IN (2 :^: hl_ty_cart R M) c (hl_components M (hl_DIFF (hl_ty_cart R M) (hl_UNIV (hl_ty_cart R M)) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) f s))) = 1 /\ hl_bounded M c = 1 then 1 else 0) c = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21608 / CONNECTED_COMPLEMENT_SUBSET_SIMPLE_PATH_IMAGE   (hash md5:f9bfe68fa3add5b314beea6b9d25d415)
Theorem hlt_CONNECTED_COMPLEMENT_SUBSET_SIMPLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_simple_path N g = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ hl_SUBSET (hl_ty_cart R N) s (hl_path_image N g) = 1) -> (hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_path_image N g) s) = 1 <-> hl_connected N s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:21646 / CONNECTED_COMPLEMENT_SUBSET_CIRCLE   (hash md5:f21c3434ca6801fd19d089f305d230f0)
Theorem hlt_CONNECTED_COMPLEMENT_SUBSET_CIRCLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)) /\ hl_SUBSET (hl_ty_cart R N) s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 -> (hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) s) = 1 <-> hl_connected N s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:21676 / HOMEOMORPHIC_CLOSED_IN_CONVEX   (hash md5:dfa4221ff42f360a8adae49157b766e1)
Theorem hlt_HOMEOMORPHIC_CLOSED_IN_CONVEX : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, hl_int_lt (hl_aff_dim M s) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 -> exists u t :e 2 :^: hl_ty_cart R N, hl_convex N u = 1 /\ (~ u = hl_EMPTY (hl_ty_cart R N) /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ hl_homeomorphic M N s t = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:21746 / LOCALLY_COMPACT_HOMEOMORPHIC_CLOSED   (hash md5:4841e57552bfa92c04594d757ae8872c)
Theorem hlt_LOCALLY_COMPACT_HOMEOMORPHIC_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, hl_locally M (hl_compact M) s = 1 /\ hl_lt (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 /\ hl_homeomorphic M N s t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:21795 / SIMPLY_CONNECTED_UNION   (hash md5:82f6248003fdfa6f7a9e80edf8af2ed5)
Theorem hlt_SIMPLY_CONNECTED_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) t = 1 /\ (hl_simply_connected N s = 1 /\ (hl_simply_connected N t = 1 /\ (hl_path_connected N (hl_INTER (hl_ty_cart R N) s t) = 1 /\ ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N))))) -> hl_simply_connected N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22067 / dimension   (hash md5:7dbb632d322c1c777665903d0fc41b0e)
Theorem hlt_dimension_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dimension N s = hl_COND hl_ty_int (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_minimal (fun n :e omega => hl_dimension_le (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_int_of_num n)))).
Admitted.

// HOL Light: Multivariate/paths.ml:22072 / DIMENSION_GE   (hash md5:2316da65683b8c662eba1dc336ecce2d)
Theorem hlt_DIMENSION_GE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_dimension N s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22076 / DIMENSION_LE_IMP_GE   (hash md5:a367ec78c478028b69c6491d3a718587)
Theorem hlt_DIMENSION_LE_IMP_GE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 -> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22345 / DIMENSION_TRANSLATION   (hash md5:3e3fed6d92d505317a2d2ed93f660865)
Theorem hlt_DIMENSION_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_dimension N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = hl_dimension N s.
Admitted.

// HOL Light: Multivariate/paths.ml:22352 / DIMENSION_LINEAR_IMAGE   (hash md5:152e80d800f509d58e0cd336ec31b161)
Theorem hlt_DIMENSION_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_dimension N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_dimension M s.
Admitted.

// HOL Light: Multivariate/paths.ml:22362 / DIMENSION_LE_DIMINDEX   (hash md5:9be6a34dd6584e49e33e1f19ea1ba4ea)
Theorem hlt_DIMENSION_LE_DIMINDEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_dimension N s) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22366 / DIMENSION_LE_MINUS1   (hash md5:379516997593c7ac944a4bd2dee0c4c2)
Theorem hlt_DIMENSION_LE_MINUS1 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_dimension N s) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 <-> s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:22371 / DIMENSION_EQ_MINUS1   (hash md5:c57ce1f326503f0e846dab98b90f89a3)
Theorem hlt_DIMENSION_EQ_MINUS1 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dimension N s = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) <-> s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:22375 / DIMENSION_POS_LE   (hash md5:0de33438161255cfcc2fa26940080bd3)
Theorem hlt_DIMENSION_POS_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_dimension N s) = 1 <-> ~ s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:22380 / DIMENSION_EMPTY   (hash md5:4792327544465d4e4a8d8168e9a3794b)
Theorem hlt_DIMENSION_EMPTY : forall A:set, A <> Empty -> hl_dimension A (hl_EMPTY (hl_ty_cart R A)) = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/paths.ml:22384 / DIMENSION_SUBSET   (hash md5:aa6434f9d19e2a081f3bbdfd2254b3a5)
Theorem hlt_DIMENSION_SUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 -> hl_int_le (hl_dimension N s) (hl_dimension N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22390 / DIMENSION_LE_DISCRETE   (hash md5:7ce08fa46c88e067ddf7fc2d7a3ec5f5)
Theorem hlt_DIMENSION_LE_DISCRETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5386 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5386 (hl_limit_point_of N x s) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) -> hl_int_le (hl_dimension N s) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22398 / DIMENSION_EQ_ZERO_DISCRETE   (hash md5:c25848b56dafd117c45a6f9a6e7bf8c1)
Theorem hlt_DIMENSION_EQ_ZERO_DISCRETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5387 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5387 (hl_limit_point_of N x s) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) -> hl_dimension N s = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/paths.ml:22403 / DIMENSION_EQ_DISCRETE   (hash md5:7f474285970a44c8a2b0fc91d0575571)
Theorem hlt_DIMENSION_EQ_DISCRETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5388 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5388 (hl_limit_point_of N x s) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) -> hl_dimension N s = hl_COND hl_ty_int (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/paths.ml:22410 / DIMENSION_LE_EQ_ALT   (hash md5:cbe0145142c3e58f8ae983c081817d4f)
Theorem hlt_DIMENSION_LE_EQ_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ forall v :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_open N v = 1 /\ (hl_IN (hl_ty_cart R N) a v = 1 /\ hl_IN (hl_ty_cart R N) a s = 1) -> exists u :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ (hl_open N u = 1 /\ hl_int_le (hl_dimension N (hl_frontier_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_INTER (hl_ty_cart R N) s u))) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:22422 / DIMENSION_LE_EQ_LOCAL   (hash md5:0b0af61b07f95d4cf04ca10aac3b11a9)
Theorem hlt_DIMENSION_LE_EQ_LOCAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ forall v :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) a v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_int_le (hl_dimension N (hl_frontier_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u)) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:22438 / DIMENSION_LE_EQ_GENERAL   (hash md5:e74871080663523f4fa1c5023e9e9a77)
Theorem hlt_DIMENSION_LE_EQ_GENERAL : forall N:set, N <> Empty -> forall t s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_SUBSET (hl_ty_cart R N) s t = 1 -> (hl_int_le (hl_dimension N s) n = 1 <-> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ forall v :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) v = 1 /\ (hl_IN (hl_ty_cart R N) a v = 1 /\ hl_IN (hl_ty_cart R N) a s = 1) -> exists u :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) u = 1 /\ hl_int_le (hl_dimension N (hl_INTER (hl_ty_cart R N) s (hl_frontier_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) u))) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:22493 / DIMENSION_LE_EQ_LOCALLY   (hash md5:b897d7e5de575d8fa8040d7ee219f3f9)
Theorem hlt_DIMENSION_LE_EQ_LOCALLY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ hl_locally N (fun u :e 2 :^: hl_ty_cart R N => if hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_int_le (hl_dimension N (hl_frontier_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u)) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 then 1 else 0) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22504 / LOCALLY_OPEN_AND_DIMENSION_LE   (hash md5:b174549b0994a9919c9fc923c04a522a)
Theorem hlt_LOCALLY_OPEN_AND_DIMENSION_LE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall n :e hl_ty_int, hl_int_le (hl_dimension A s) n = 1 <-> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ hl_locally A (fun u :e 2 :^: hl_ty_cart R A => if hl_open_in (hl_ty_cart R A) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) s) u = 1 /\ hl_int_le (hl_dimension A u) n = 1 then 1 else 0) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22516 / DIMENSION_EQ_ON_NBDS   (hash md5:96c458805f7216d38ea442c20e557443)
Theorem hlt_DIMENSION_EQ_ON_NBDS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, ~ s = hl_EMPTY (hl_ty_cart R N) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists u v :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ (hl_SUBSET (hl_ty_cart R N) v s = 1 /\ hl_dimension N v = n)))) -> hl_dimension N s = n.
Admitted.

// HOL Light: Multivariate/paths.ml:22543 / LOCALLY_DIMENSION_EQ   (hash md5:928494c2075db942700d6190706811bc)
Theorem hlt_LOCALLY_DIMENSION_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, ~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_locally N (fun u :e 2 :^: hl_ty_cart R N => if hl_dimension N u = n then 1 else 0) s = 1 -> hl_dimension N s = n.
Admitted.

// HOL Light: Multivariate/paths.ml:22552 / DIMENSION_EQ_ON_OPEN_SUBSETS   (hash md5:bcb0b2e6dc4679582247cbaa547800e9)
Theorem hlt_DIMENSION_EQ_ON_OPEN_SUBSETS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, ~ s = hl_EMPTY (hl_ty_cart R N) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_dimension N u = n)) -> hl_dimension N s = n.
Admitted.

// HOL Light: Multivariate/paths.ml:22562 / DIMENSION_EQ_LOCALLY_CLOPEN   (hash md5:8e8578e1e05dc6c84aa772435ce7a338)
Theorem hlt_DIMENSION_EQ_LOCALLY_CLOPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_dimension N s) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_locally N (fun u :e 2 :^: hl_ty_cart R N => if hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 then 1 else 0) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22571 / SMALL_INDUCTIVE_DIMENSION   (hash md5:3204d121a413b2590eb57cf1c0c17b91)
Theorem hlt_SMALL_INDUCTIVE_DIMENSION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ forall c :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1 /\ ~ hl_IN (hl_ty_cart R N) a c = 1) -> exists b :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) b = 1 /\ (hl_int_le (hl_dimension N b) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ exists u v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ (hl_DISJOINT (hl_ty_cart R N) u v = 1 /\ (hl_UNION (hl_ty_cart R N) u v = hl_DIFF (hl_ty_cart R N) s b /\ (hl_IN (hl_ty_cart R N) a u = 1 /\ hl_SUBSET (hl_ty_cart R N) c v = 1))))).
Admitted.

// HOL Light: Multivariate/paths.ml:22641 / SMALL_IMP_DIMENSION_LE_0   (hash md5:1e13f22e0f2ddd3572bad5abe2259b3d)
Theorem hlt_SMALL_IMP_DIMENSION_LE_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_sym_3c5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1 -> hl_int_le (hl_dimension N s) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22674 / COUNTABLE_IMP_DIMENSION_LE_0   (hash md5:0626f0c1e05ecb1f7226ebc4dc8e5248)
Theorem hlt_COUNTABLE_IMP_DIMENSION_LE_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_COUNTABLE (hl_ty_cart R N) s = 1 -> hl_int_le (hl_dimension N s) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22678 / FINITE_IMP_DIMENSION_LE_0   (hash md5:0f1b741ff77f20f4ea67e1f1716f1bb5)
Theorem hlt_FINITE_IMP_DIMENSION_LE_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_int_le (hl_dimension N s) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22682 / DIMENSION_SING   (hash md5:35f72a2c4d24be67122ec75239ffabf6)
Theorem hlt_DIMENSION_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_dimension N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/paths.ml:22689 / CONNECTED_DIMENSION_EQ_SING   (hash md5:caed6d0738b640f8ccdbc6c77a79f1cc)
Theorem hlt_CONNECTED_DIMENSION_EQ_SING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 -> (hl_dimension N s = hl_int_of_num (hl_NUMERAL hl_zero) <-> exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/paths.ml:22716 / DIMENSION_SUBSET_EXISTS   (hash md5:139a60835eb74a410d3dc5e2334b1345)
Theorem hlt_DIMENSION_SUBSET_EXISTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ hl_int_le n (hl_dimension N s) = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_dimension N t = n).
Admitted.

// HOL Light: Multivariate/paths.ml:22781 / DIMENSION_UNION_LE_BASIC   (hash md5:b38ce557dbd43ab3d059fa098847367b)
Theorem hlt_DIMENSION_UNION_LE_BASIC : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_int_le (hl_dimension N (hl_UNION (hl_ty_cart R N) s t)) (hl_int_add (hl_dimension N s) (hl_int_add (hl_dimension N t) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:22832 / DIMENSION_ZERO_REDUCTION_THEOREM   (hash md5:4880c6a9a7a562989e1d0741157a3fe4)
Theorem hlt_DIMENSION_ZERO_REDUCTION_THEOREM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall v :e 2 :^: hl_ty_cart R N :^: omega, hl_int_le (hl_dimension N s) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 /\ (forall n :e omega, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (v n) = 1) -> exists u :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (u n) = 1) /\ ((forall n :e omega, hl_SUBSET (hl_ty_cart R N) (u n) (v n) = 1) /\ (hl_pairwise omega (fun m :e omega => fun n :e omega => hl_DISJOINT (hl_ty_cart R N) (u m) (u n)) (hl_UNIV omega) = 1 /\ hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5389 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5389 (hl_IN omega n (hl_UNIV omega)) (u n) = 1 then 1 else 0)) = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5390 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5390 (hl_IN omega n (hl_UNIV omega)) (v n) = 1 then 1 else 0)))).
Admitted.

// HOL Light: Multivariate/paths.ml:22858 / DIMENSION_ZERO_REDUCTION_THEOREM_2   (hash md5:2079ce1be98fdfca93a366cc85dddc35)
Theorem hlt_DIMENSION_ZERO_REDUCTION_THEOREM_2 : forall N:set, N <> Empty -> forall u s t :e 2 :^: hl_ty_cart R N, hl_int_le (hl_dimension N u) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1) -> exists s' t' :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s' = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t' = 1 /\ (hl_SUBSET (hl_ty_cart R N) s' s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t' t = 1 /\ (hl_DISJOINT (hl_ty_cart R N) s' t' = 1 /\ hl_UNION (hl_ty_cart R N) s' t' = hl_UNION (hl_ty_cart R N) s t)))).
Admitted.

// HOL Light: Multivariate/paths.ml:22883 / DIMENSION_ZERO_SEPARATION_THEOREM   (hash md5:fcc743534ebfc0b079528bf1f5644b9a)
Theorem hlt_DIMENSION_ZERO_SEPARATION_THEOREM : forall N:set, N <> Empty -> forall u s t :e 2 :^: hl_ty_cart R N, hl_int_le (hl_dimension N u) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ hl_DISJOINT (hl_ty_cart R N) s t = 1)) -> exists s' t' :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s' = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s' = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t' = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t' = 1 /\ (hl_SUBSET (hl_ty_cart R N) s s' = 1 /\ (hl_SUBSET (hl_ty_cart R N) t t' = 1 /\ (hl_DISJOINT (hl_ty_cart R N) s' t' = 1 /\ hl_UNION (hl_ty_cart R N) s' t' = u)))))).
Admitted.

// HOL Light: Multivariate/paths.ml:22909 / DIMENSION_DECOMPOSITION   (hash md5:eb388dda5e4339f56ba4bd8641d67034)
Theorem hlt_DIMENSION_DECOMPOSITION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 -> (hl_int_le (hl_dimension N s) n = 1 <-> exists t u :e 2 :^: hl_ty_cart R N, hl_UNION (hl_ty_cart R N) t u = s /\ (hl_DISJOINT (hl_ty_cart R N) t u = 1 /\ (hl_relative_to (hl_ty_cart R N) (hl_fsigma N) s t = 1 /\ (hl_int_le (hl_dimension N t) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ hl_int_le (hl_dimension N u) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:22909 / DIMENSION_LE_CLOSED_IN_UNIONS   (hash md5:53ae6853e0cf47d5ee85c9dea9fd12d8)
Theorem hlt_DIMENSION_LE_CLOSED_IN_UNIONS : forall N:set, N <> Empty -> forall u :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: (2 :^: hl_ty_cart R N), forall n :e hl_ty_int, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ (hl_COUNTABLE (2 :^: hl_ty_cart R N) c = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s c = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ hl_int_le (hl_dimension N s) n = 1)) -> hl_int_le (hl_dimension N (hl_UNIONS (hl_ty_cart R N) c)) n = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23251 / DIMENSION_LE_UNIONS_RELATIVE   (hash md5:bac4702b8eb1df57d8d4e3fc1cd2c879)
Theorem hlt_DIMENSION_LE_UNIONS_RELATIVE : forall N:set, N <> Empty -> forall u :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: (2 :^: hl_ty_cart R N), forall n :e hl_ty_int, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ (hl_COUNTABLE (2 :^: hl_ty_cart R N) c = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s c = 1 -> hl_relative_to (hl_ty_cart R N) (hl_fsigma N) u s = 1 /\ hl_int_le (hl_dimension N s) n = 1)) -> hl_int_le (hl_dimension N (hl_UNIONS (hl_ty_cart R N) c)) n = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23279 / DIMENSION_LE_UNIONS   (hash md5:914960790fc946b761aaabd7f4d5145a)
Theorem hlt_DIMENSION_LE_UNIONS : forall N:set, N <> Empty -> forall c :e 2 :^: (2 :^: hl_ty_cart R N), forall n :e hl_ty_int, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ (hl_COUNTABLE (2 :^: hl_ty_cart R N) c = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s c = 1 -> hl_fsigma N s = 1 /\ hl_int_le (hl_dimension N s) n = 1)) -> hl_int_le (hl_dimension N (hl_UNIONS (hl_ty_cart R N) c)) n = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23289 / DIMENSION_LE_UNION_RELATIVE   (hash md5:54f867af2fc8e0e638e72a732904b15f)
Theorem hlt_DIMENSION_LE_UNION_RELATIVE : forall N:set, N <> Empty -> forall u s t :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_relative_to (hl_ty_cart R N) (hl_fsigma N) u s = 1 /\ (hl_relative_to (hl_ty_cart R N) (hl_fsigma N) u t = 1 /\ (hl_int_le (hl_dimension N s) n = 1 /\ hl_int_le (hl_dimension N t) n = 1)) -> hl_int_le (hl_dimension N (hl_UNION (hl_ty_cart R N) s t)) n = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23301 / DIMENSION_LE_UNION   (hash md5:bf1ba4d399ce4049dbaf9fc5f1689200)
Theorem hlt_DIMENSION_LE_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_fsigma N s = 1 /\ (hl_fsigma N t = 1 /\ (hl_int_le (hl_dimension N s) n = 1 /\ hl_int_le (hl_dimension N t) n = 1)) -> hl_int_le (hl_dimension N (hl_UNION (hl_ty_cart R N) s t)) n = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23308 / DIMENSION_LE_UNION_RELATIVE_GEN   (hash md5:863eeca1a0188c111f4d64842196ba4c)
Theorem hlt_DIMENSION_LE_UNION_RELATIVE_GEN : forall N:set, N <> Empty -> forall u s t :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, (hl_relative_to (hl_ty_cart R N) (hl_fsigma N) u s = 1 /\ (hl_relative_to (hl_ty_cart R N) (hl_gdelta N) u s = 1 /\ hl_SUBSET (hl_ty_cart R N) t u = 1) \/ hl_relative_to (hl_ty_cart R N) (hl_fsigma N) u t = 1 /\ (hl_relative_to (hl_ty_cart R N) (hl_gdelta N) u t = 1 /\ hl_SUBSET (hl_ty_cart R N) s u = 1)) /\ (hl_int_le (hl_dimension N s) n = 1 /\ hl_int_le (hl_dimension N t) n = 1) -> hl_int_le (hl_dimension N (hl_UNION (hl_ty_cart R N) s t)) n = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23340 / DIMENSION_LE_UNION_GEN   (hash md5:54ebcd402c0f9362b9daa8743a0bab9f)
Theorem hlt_DIMENSION_LE_UNION_GEN : forall N:set, N <> Empty -> forall n :e hl_ty_int, forall s t :e 2 :^: hl_ty_cart R N, (hl_fsigma N s = 1 /\ hl_gdelta N s = 1 \/ hl_fsigma N t = 1 /\ hl_gdelta N t = 1) /\ (hl_int_le (hl_dimension N s) n = 1 /\ hl_int_le (hl_dimension N t) n = 1) -> hl_int_le (hl_dimension N (hl_UNION (hl_ty_cart R N) s t)) n = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23350 / DIMENSION_LE_UNION_CLOSED_IN   (hash md5:a93549c8e4936b5294eba94c1b7210ac)
Theorem hlt_DIMENSION_LE_UNION_CLOSED_IN : forall N:set, N <> Empty -> forall u s t :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ hl_SUBSET (hl_ty_cart R N) t u = 1 \/ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ hl_SUBSET (hl_ty_cart R N) s u = 1) /\ (hl_int_le (hl_dimension N s) n = 1 /\ hl_int_le (hl_dimension N t) n = 1) -> hl_int_le (hl_dimension N (hl_UNION (hl_ty_cart R N) s t)) n = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23361 / DIMENSION_LE_UNIONS_ZERODIMENSIONAL   (hash md5:568329c85fb13b1da95cbb09ff8a22e6)
Theorem hlt_DIMENSION_LE_UNIONS_ZERODIMENSIONAL : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_int_le (hl_dimension N s) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) -> hl_int_le (hl_dimension N (hl_UNIONS (hl_ty_cart R N) f)) (hl_int_sub (hl_int_of_num (hl_CARD (2 :^: hl_ty_cart R N) f)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23378 / DIMENSION_LE_UNIONS_ZERODIMENSIONAL_EQ   (hash md5:c9329486d64c037dc92d172d5e97296c)
Theorem hlt_DIMENSION_LE_UNIONS_ZERODIMENSIONAL_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_int_le (hl_int_of_num (hl_CARD (2 :^: hl_ty_cart R N) f)) (hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ ((forall d :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d f = 1 -> hl_int_le (hl_dimension N d) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) /\ hl_UNIONS (hl_ty_cart R N) f = s)).
Admitted.

// HOL Light: Multivariate/paths.ml:23426 / DIMENSION_INSERT   (hash md5:6aff0b8f29781fc3176ae12c712bdbf5)
Theorem hlt_DIMENSION_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_dimension N (hl_INSERT (hl_ty_cart R N) a s) = hl_COND hl_ty_int (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_dimension N s).
Admitted.

// HOL Light: Multivariate/paths.ml:23436 / DIMENSION_DELETE   (hash md5:bdfdd6df0170cdb01da7170ea1d454c9)
Theorem hlt_DIMENSION_DELETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_dimension N (hl_DELETE (hl_ty_cart R N) s a) = hl_COND hl_ty_int (if hl_DELETE (hl_ty_cart R N) s a = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_dimension N s).
Admitted.

// HOL Light: Multivariate/paths.ml:23446 / DIMENSION_LE_EQ_GEN   (hash md5:880029475b3e75cbde0c59e27dc275d4)
Theorem hlt_DIMENSION_LE_EQ_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> s = hl_EMPTY (hl_ty_cart R N) /\ hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 \/ ~ s = hl_EMPTY (hl_ty_cart R N) /\ forall v :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_open N v = 1 /\ hl_IN (hl_ty_cart R N) a v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ (hl_open N u = 1 /\ hl_int_le (hl_dimension N (hl_INTER (hl_ty_cart R N) s (hl_frontier N u))) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1)).
Admitted.

// HOL Light: Multivariate/paths.ml:23470 / DIMENSION_PCROSS_LE   (hash md5:61d911f1eefddb6d5806c2d7b4760dfa)
Theorem hlt_DIMENSION_PCROSS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, ~ (s = hl_EMPTY (hl_ty_cart R M) /\ t = hl_EMPTY (hl_ty_cart R N)) -> hl_int_le (hl_dimension (hl_ty_finite_sum M N) (hl_PCROSS R M N s t)) (hl_int_add (hl_dimension M s) (hl_dimension N t)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:23537 / DIMENSION_PCROSS_EQ_0   (hash md5:ef95ce56f84526f110b2ab7a263deea4)
Theorem hlt_DIMENSION_PCROSS_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_dimension (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = hl_int_of_num (hl_NUMERAL hl_zero) <-> hl_dimension M s = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_dimension N t = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/paths.ml:23578 / DIMENSION_SEPARATION_THEOREM   (hash md5:90adac121695367d8a9d4b5f22b203f9)
Theorem hlt_DIMENSION_SEPARATION_THEOREM : forall N:set, N <> Empty -> forall t s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, forall c d :e 2 :^: hl_ty_cart R N, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_int_le (hl_dimension N s) n = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) c = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) d = 1 /\ hl_DISJOINT (hl_ty_cart R N) c d = 1)))) -> exists b :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) b = 1 /\ (hl_int_le (hl_dimension N (hl_INTER (hl_ty_cart R N) b s)) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ exists u v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) v = 1 /\ (hl_DISJOINT (hl_ty_cart R N) u v = 1 /\ (hl_UNION (hl_ty_cart R N) u v = hl_DIFF (hl_ty_cart R N) t b /\ (hl_SUBSET (hl_ty_cart R N) c u = 1 /\ hl_SUBSET (hl_ty_cart R N) d v = 1))))).
Admitted.

// HOL Light: Multivariate/paths.ml:23715 / LARGE_INDUCTIVE_DIMENSION   (hash md5:f251bc22f3a18fb7ab2960d5d85ecf51)
Theorem hlt_LARGE_INDUCTIVE_DIMENSION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> s = hl_EMPTY (hl_ty_cart R N) /\ hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 \/ ~ s = hl_EMPTY (hl_ty_cart R N) /\ forall c d :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) d = 1 /\ hl_DISJOINT (hl_ty_cart R N) c d = 1) -> exists b :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) b = 1 /\ (hl_int_le (hl_dimension N b) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ exists u v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ (hl_DISJOINT (hl_ty_cart R N) u v = 1 /\ (hl_UNION (hl_ty_cart R N) u v = hl_DIFF (hl_ty_cart R N) s b /\ (hl_SUBSET (hl_ty_cart R N) c u = 1 /\ hl_SUBSET (hl_ty_cart R N) d v = 1))))).
Admitted.

// HOL Light: Multivariate/paths.ml:23748 / TINY_INDUCTIVE_DIMENSION   (hash md5:a1b57f0928d458d91e9bb6b5076f2390)
Theorem hlt_TINY_INDUCTIVE_DIMENSION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_locally N (hl_compact N) s = 1 -> (hl_int_le (hl_dimension N s) n = 1 <-> s = hl_EMPTY (hl_ty_cart R N) /\ hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 \/ ~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ ~ x = y) -> exists b :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) b = 1 /\ (hl_int_le (hl_dimension N b) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ exists u v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ (hl_DISJOINT (hl_ty_cart R N) u v = 1 /\ (hl_UNION (hl_ty_cart R N) u v = hl_DIFF (hl_ty_cart R N) s b /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ hl_IN (hl_ty_cart R N) y v = 1))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:23907 / DIMENSION_LE_RATIONAL_COORDINATES   (hash md5:1d541aa2d169c09cf0e5f792039f0eed)
Theorem hlt_DIMENSION_LE_RATIONAL_COORDINATES : forall N:set, N <> Empty -> forall n :e omega, hl_int_le (hl_dimension N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5413 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5413 (hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_5412 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_5412 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_rational (hl_vindex R N x i) = 1 then 1 else 0) i = 1 then 1 else 0)) n) x = 1 then 1 else 0))) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:24006 / DIMENSION_EXACTLY_RATIONAL_COORDINATES   (hash md5:6d2b0ba73a83852bc3d6230e9ee32489)
Theorem hlt_DIMENSION_EXACTLY_RATIONAL_COORDINATES : forall N:set, N <> Empty -> forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ hl_le n (hl_dimindex N (hl_UNIV N)) = 1 -> hl_dimension N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5415 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5415 (hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_5414 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_5414 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_rational (hl_vindex R N x i) = 1 then 1 else 0) i = 1 then 1 else 0)) n) x = 1 then 1 else 0)) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/paths.ml:24029 / covering_space   (hash md5:324a9821dde4802e418715d13bdcc1e9)
Theorem hlt_covering_space_thm : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: hl_ty_cart R M, forall p :e hl_ty_cart R N :^: hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 <-> hl_continuous_on M N p c = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p c = s /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ exists v :e 2 :^: (2 :^: hl_ty_cart R M), hl_UNIONS (hl_ty_cart R M) v = hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5416 :e hl_ty_cart R M => if exists x1 :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5416 (if hl_IN (hl_ty_cart R M) x1 c = 1 /\ hl_IN (hl_ty_cart R N) (p x1) t = 1 then 1 else 0) x1 = 1 then 1 else 0) /\ ((forall u :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) u v = 1 -> hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) u = 1) /\ (hl_pairwise (2 :^: hl_ty_cart R M) (hl_DISJOINT (hl_ty_cart R M)) v = 1 /\ forall u :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) u v = 1 -> exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) u t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:24039 / COVERING_SPACE_IMP_CONTINUOUS   (hash md5:24d158d0f86fb9dee8789ccfea92b246)
Theorem hlt_COVERING_SPACE_IMP_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> hl_continuous_on M N p c = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:24043 / COVERING_SPACE_IMP_SURJECTIVE   (hash md5:b1ef7c36c017a3e8dc6cde2a316620ab)
Theorem hlt_COVERING_SPACE_IMP_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p c = s.
Admitted.

// HOL Light: Multivariate/paths.ml:24047 / HOMEOMORPHISM_IMP_COVERING_SPACE   (hash md5:135c34bf8bdd8895676f6fe05cb94c49)
Theorem hlt_HOMEOMORPHISM_IMP_COVERING_SPACE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 -> hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) s f) t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:24060 / COVERING_SPACE_LOCAL_HOMEOMORPHISM   (hash md5:a2676ceea445f638fcae7f81143a65fd)
Theorem hlt_COVERING_SPACE_LOCAL_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> exists t :e 2 :^: hl_ty_cart R M, exists u :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 /\ (hl_IN (hl_ty_cart R N) (p x) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1))).
Admitted.

// HOL Light: Multivariate/paths.ml:24078 / COVERING_SPACE_LOCAL_HOMEOMORPHISM_ALT   (hash md5:e91ea2ea18ae9167f2b293caf3835632)
Theorem hlt_COVERING_SPACE_LOCAL_HOMEOMORPHISM_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> exists x :e hl_ty_cart R M, exists t :e 2 :^: hl_ty_cart R M, exists u :e 2 :^: hl_ty_cart R N, p x = y /\ (hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 /\ (hl_IN (hl_ty_cart R N) y u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:24095 / COVERING_SPACE_OPEN_MAP   (hash md5:4115ac81801d015ed3801cb040fb338b)
Theorem hlt_COVERING_SPACE_OPEN_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:24133 / COVERING_SPACE_QUOTIENT_MAP   (hash md5:8fa4b1851072ddbe7c1a52a19d698d5f)
Theorem hlt_COVERING_SPACE_QUOTIENT_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> forall u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) u s = 1 -> (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5419 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5419 (if hl_IN (hl_ty_cart R M) x c = 1 /\ hl_IN (hl_ty_cart R N) (p x) u = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:24146 / COVERING_SPACE_LOCALIZED_HOMEOMORPHISM   (hash md5:c6fc425e9cf176dee15909bc1c342664)
Theorem hlt_COVERING_SPACE_LOCALIZED_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> forall w :e 2 :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x w = 1 /\ hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) w = 1 -> exists t :e 2 :^: hl_ty_cart R M, exists u :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 /\ (hl_IN (hl_ty_cart R N) (p x) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_SUBSET (hl_ty_cart R M) t w = 1 /\ exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1)))).
Admitted.

// HOL Light: Multivariate/paths.ml:24173 / COVERING_SPACE_LOCALIZED_HOMEOMORPHISM_ALT   (hash md5:1e55874f7894b52760921c052adc525f)
Theorem hlt_COVERING_SPACE_LOCALIZED_HOMEOMORPHISM_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> forall w :e 2 :^: hl_ty_cart R N, forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y w = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) w = 1 -> exists x :e hl_ty_cart R M, exists t :e 2 :^: hl_ty_cart R M, exists u :e 2 :^: hl_ty_cart R N, p x = y /\ (hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 /\ (hl_IN (hl_ty_cart R N) y u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u w = 1 /\ exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1))))).
Admitted.

// HOL Light: Multivariate/paths.ml:24200 / COVERING_SPACE_LOCALLY_HOMEOMORPHIC   (hash md5:10f6cdbec6b8342ea288bd1ef9d10877)
Theorem hlt_COVERING_SPACE_LOCALLY_HOMEOMORPHIC : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R M), forall Q :e 2 :^: (2 :^: hl_ty_cart R N), forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ ((forall q :e hl_ty_cart R M :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R M, forall v :e 2 :^: hl_ty_cart R N, ~ u = hl_EMPTY (hl_ty_cart R M) /\ (hl_SUBSET (hl_ty_cart R M) u c = 1 /\ (hl_SUBSET (hl_ty_cart R N) v s = 1 /\ (hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) u v) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1 /\ P u = 1))) -> Q v = 1) /\ hl_locally M P c = 1) -> hl_locally N Q s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:24237 / COVERING_SPACE_LOCALLY_HOMEOMORPHIC_EQ   (hash md5:95e115078027d0a1b535ab2da4259264)
Theorem hlt_COVERING_SPACE_LOCALLY_HOMEOMORPHIC_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R M), forall Q :e 2 :^: (2 :^: hl_ty_cart R N), forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (forall q :e hl_ty_cart R M :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R M, forall v :e 2 :^: hl_ty_cart R N, ~ u = hl_EMPTY (hl_ty_cart R M) /\ (hl_SUBSET (hl_ty_cart R M) u c = 1 /\ (hl_SUBSET (hl_ty_cart R N) v s = 1 /\ hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) u v) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1)) -> (P u = 1 <-> Q v = 1)) -> (hl_locally M P c = 1 <-> hl_locally N Q s = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:24280 / COVERING_SPACE_LOCALLY   (hash md5:8ae7b9beba39426bc3603848846672f0)
Theorem hlt_COVERING_SPACE_LOCALLY : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R M), forall Q :e 2 :^: (2 :^: hl_ty_cart R N), forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ ((forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t c = 1 /\ P t = 1 -> Q (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p t) = 1) /\ hl_locally M P c = 1) -> hl_locally N Q s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:24289 / COVERING_SPACE_LOCALLY_EQ   (hash md5:598df5ee9f81c548598c0f75a5731063)
Theorem hlt_COVERING_SPACE_LOCALLY_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R M), forall Q :e 2 :^: (2 :^: hl_ty_cart R N), forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ ((forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t c = 1 /\ P t = 1 -> Q (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p t) = 1) /\ (forall q :e hl_ty_cart R M :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) u s = 1 /\ (hl_continuous_on N M q u = 1 /\ Q u = 1) -> P (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) q u) = 1)) -> (hl_locally N Q s = 1 <-> hl_locally M P c = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:24299 / COVERING_SPACE_LOCALLY_COMPACT_EQ   (hash md5:d7ffe82d6b364b16969cbc50dd8f459d)
Theorem hlt_COVERING_SPACE_LOCALLY_COMPACT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> (hl_locally N (hl_compact N) s = 1 <-> hl_locally M (hl_compact M) c = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:24308 / COVERING_SPACE_LOCALLY_CONNECTED_EQ   (hash md5:3045b81ef30ee9291abb8b56085907dc)
Theorem hlt_COVERING_SPACE_LOCALLY_CONNECTED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> (hl_locally N (hl_connected N) s = 1 <-> hl_locally M (hl_connected M) c = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:24317 / COVERING_SPACE_LOCALLY_PATH_CONNECTED_EQ   (hash md5:c50e3bde6f78a698509a1bafa12c8fc6)
Theorem hlt_COVERING_SPACE_LOCALLY_PATH_CONNECTED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> (hl_locally N (hl_path_connected N) s = 1 <-> hl_locally M (hl_path_connected M) c = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:24326 / COVERING_SPACE_LOCALLY_COMPACT   (hash md5:40af38c14528118acbc7dbc557264df9)
Theorem hlt_COVERING_SPACE_LOCALLY_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ hl_locally M (hl_compact M) c = 1 -> hl_locally N (hl_compact N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:24332 / COVERING_SPACE_LOCALLY_CONNECTED   (hash md5:b16c76f406aa747d558cdb9ba845ba35)
Theorem hlt_COVERING_SPACE_LOCALLY_CONNECTED : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ hl_locally M (hl_connected M) c = 1 -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:24337 / COVERING_SPACE_LOCALLY_PATH_CONNECTED   (hash md5:cc03da52da7086e49482628ce1eb459d)
Theorem hlt_COVERING_SPACE_LOCALLY_PATH_CONNECTED : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ hl_locally M (hl_path_connected M) c = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:24343 / COVERING_SPACE_LIFT_UNIQUE_GEN   (hash md5:d44c120b4e43add0ca989646b7b117ab)
Theorem hlt_COVERING_SPACE_LIFT_UNIQUE_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R P, forall g1 g2 :e hl_ty_cart R M :^: hl_ty_cart R P, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall t u :e 2 :^: hl_ty_cart R P, forall a x :e hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_continuous_on P N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f t) s = 1 /\ (hl_continuous_on P M g1 t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g1 t) c = 1 /\ ((forall x1 :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) x1 t = 1 -> f x1 = p (g1 x1)) /\ (hl_continuous_on P M g2 t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g2 t) c = 1 /\ ((forall x1 :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) x1 t = 1 -> f x1 = p (g2 x1)) /\ (hl_IN (2 :^: hl_ty_cart R P) u (hl_components P t) = 1 /\ (hl_IN (hl_ty_cart R P) a u = 1 /\ (g1 a = g2 a /\ hl_IN (hl_ty_cart R P) x u = 1))))))))))) -> g1 x = g2 x.
Admitted.

// HOL Light: Multivariate/paths.ml:24390 / COVERING_SPACE_LIFT_UNIQUE   (hash md5:f8f2ad27b2c1b4dfc2b0fcc37bd50f2e)
Theorem hlt_COVERING_SPACE_LIFT_UNIQUE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R P, forall g1 g2 :e hl_ty_cart R M :^: hl_ty_cart R P, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R P, forall a x :e hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_continuous_on P N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f t) s = 1 /\ (hl_continuous_on P M g1 t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g1 t) c = 1 /\ ((forall x1 :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) x1 t = 1 -> f x1 = p (g1 x1)) /\ (hl_continuous_on P M g2 t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g2 t) c = 1 /\ ((forall x1 :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) x1 t = 1 -> f x1 = p (g2 x1)) /\ (hl_connected P t = 1 /\ (hl_IN (hl_ty_cart R P) a t = 1 /\ (g1 a = g2 a /\ hl_IN (hl_ty_cart R P) x t = 1))))))))))) -> g1 x = g2 x.
Admitted.

// HOL Light: Multivariate/paths.ml:24407 / COVERING_SPACE_LIFT_UNIQUE_IDENTITY   (hash md5:d1547d8ff951491e0d9844b147ef152e)
Theorem hlt_COVERING_SPACE_LIFT_UNIQUE_IDENTITY : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path_connected M c = 1 /\ (hl_continuous_on M M f c = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) f c) c = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> p (f x) = p x) /\ (hl_IN (hl_ty_cart R M) a c = 1 /\ f a = a))))) -> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> f x = x.
Admitted.

// HOL Light: Multivariate/paths.ml:24440 / COVERING_SPACE_LIFT_HOMOTOPY   (hash md5:cb8bf6897058e6d9535988138daf90ef)
Theorem hlt_COVERING_SPACE_LIFT_HOMOTOPY : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall h :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum 1 P), forall f :e hl_ty_cart R M :^: hl_ty_cart R P, forall u :e 2 :^: hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_continuous_on (hl_ty_finite_sum 1 P) N h (hl_PCROSS R 1 P (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) u) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum 1 P)) (hl_ty_cart R N) h (hl_PCROSS R 1 P (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) u)) s = 1 /\ ((forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> h (hl_pastecart R 1 P (hl_vec 1 (hl_NUMERAL hl_zero)) y) = p (f y)) /\ (hl_continuous_on P M f u = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) f u) c = 1)))) -> exists k :e hl_ty_cart R M :^: hl_ty_cart R (hl_ty_finite_sum 1 P), hl_continuous_on (hl_ty_finite_sum 1 P) M k (hl_PCROSS R 1 P (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) u) = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum 1 P)) (hl_ty_cart R M) k (hl_PCROSS R 1 P (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) u)) c = 1 /\ ((forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> k (hl_pastecart R 1 P (hl_vec 1 (hl_NUMERAL hl_zero)) y) = f y) /\ forall z :e hl_ty_cart R (hl_ty_finite_sum 1 P), hl_IN (hl_ty_cart R (hl_ty_finite_sum 1 P)) z (hl_PCROSS R 1 P (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) u) = 1 -> h z = p (k z))).
Admitted.

// HOL Light: Multivariate/paths.ml:24926 / COVERING_SPACE_LIFT_HOMOTOPIC_FUNCTION   (hash md5:93c75c2019d2e1c24caf38a858648ea3)
Theorem hlt_COVERING_SPACE_LIFT_HOMOTOPIC_FUNCTION : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall f f' :e hl_ty_cart R N :^: hl_ty_cart R P, forall g :e hl_ty_cart R M :^: hl_ty_cart R P, forall u :e 2 :^: hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_continuous_on P M g u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g u) c = 1 /\ ((forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> p (g y) = f y) /\ hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R P => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) f f' = 1))) -> exists g' :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M g' u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g' u) c = 1 /\ forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> p (g' y) = f' y).
Admitted.

// HOL Light: Multivariate/paths.ml:24961 / COVERING_SPACE_LIFT_INESSENTIAL_FUNCTION   (hash md5:ef14a84f779e3f06d181822413699b5b)
Theorem hlt_COVERING_SPACE_LIFT_INESSENTIAL_FUNCTION : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R P, forall a :e hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ hl_homotopic_with (hl_ty_cart R P) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R P => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R P)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R P) (hl_euclidean P) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) f (fun x :e hl_ty_cart R P => a) = 1 -> exists g :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M g u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g u) c = 1 /\ forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> p (g y) = f y).
Admitted.

// HOL Light: Multivariate/paths.ml:24983 / COVERING_SPACE_LIFT_HOMOTOPY_ALT   (hash md5:51a98ebfabafa325d0b800cc2994c555)
Theorem hlt_COVERING_SPACE_LIFT_HOMOTOPY_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall h :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum P 1), forall f :e hl_ty_cart R M :^: hl_ty_cart R P, forall u :e 2 :^: hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_continuous_on (hl_ty_finite_sum P 1) N h (hl_PCROSS R P 1 u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum P 1)) (hl_ty_cart R N) h (hl_PCROSS R P 1 u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))))) s = 1 /\ ((forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> h (hl_pastecart R P 1 y (hl_vec 1 (hl_NUMERAL hl_zero))) = p (f y)) /\ (hl_continuous_on P M f u = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) f u) c = 1)))) -> exists k :e hl_ty_cart R M :^: hl_ty_cart R (hl_ty_finite_sum P 1), hl_continuous_on (hl_ty_finite_sum P 1) M k (hl_PCROSS R P 1 u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum P 1)) (hl_ty_cart R M) k (hl_PCROSS R P 1 u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))))) c = 1 /\ ((forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> k (hl_pastecart R P 1 y (hl_vec 1 (hl_NUMERAL hl_zero))) = f y) /\ forall z :e hl_ty_cart R (hl_ty_finite_sum P 1), hl_IN (hl_ty_cart R (hl_ty_finite_sum P 1)) z (hl_PCROSS R P 1 u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 -> h z = p (k z))).
Admitted.

// HOL Light: Multivariate/paths.ml:25032 / COVERING_SPACE_LIFT_PATH_STRONG   (hash md5:edf641cd37b9858c04b2cbca0849d280)
Theorem hlt_COVERING_SPACE_LIFT_PATH_STRONG : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_pathstart N g = p a /\ hl_IN (hl_ty_cart R M) a c = 1))) -> exists h :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_path M h = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h) c = 1 /\ (hl_pathstart M h = a /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (h t) = g t)).
Admitted.

// HOL Light: Multivariate/paths.ml:25072 / COVERING_SPACE_LIFT_PATH   (hash md5:d892aa96391a7537d0045c434f0d592d)
Theorem hlt_COVERING_SPACE_LIFT_PATH : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path N g = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1) -> exists h :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_path M h = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h) c = 1 /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (h t) = g t).
Admitted.

// HOL Light: Multivariate/paths.ml:25090 / COVERING_SPACE_LIFT_HOMOTOPIC_PATHS   (hash md5:f5438081a001d0d81eda9d13d38c0634)
Theorem hlt_COVERING_SPACE_LIFT_HOMOTOPIC_PATHS : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, forall h1 h2 :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path N g1 = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g1) s = 1 /\ (hl_path N g2 = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g2) s = 1 /\ (hl_homotopic_paths N s g1 g2 = 1 /\ (hl_path M h1 = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h1) c = 1 /\ ((forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (h1 t) = g1 t) /\ (hl_path M h2 = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h2) c = 1 /\ ((forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (h2 t) = g2 t) /\ hl_pathstart M h1 = hl_pathstart M h2))))))))))) -> hl_homotopic_paths M c h1 h2 = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:25179 / COVERING_SPACE_MONODROMY   (hash md5:b562703b9668ee7a654d7b2bb2558417)
Theorem hlt_COVERING_SPACE_MONODROMY : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, forall h1 h2 :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path N g1 = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g1) s = 1 /\ (hl_path N g2 = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g2) s = 1 /\ (hl_homotopic_paths N s g1 g2 = 1 /\ (hl_path M h1 = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h1) c = 1 /\ ((forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (h1 t) = g1 t) /\ (hl_path M h2 = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h2) c = 1 /\ ((forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (h2 t) = g2 t) /\ hl_pathstart M h1 = hl_pathstart M h2))))))))))) -> hl_pathfinish M h1 = hl_pathfinish M h2.
Admitted.

// HOL Light: Multivariate/paths.ml:25195 / COVERING_SPACE_LIFT_HOMOTOPIC_PATH   (hash md5:83d8efa31f3c36748c1923bfbfd1ab66)
Theorem hlt_COVERING_SPACE_LIFT_HOMOTOPIC_PATH : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_homotopic_paths N s f f' = 1 /\ (hl_path M g = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M g) c = 1 /\ (hl_pathstart M g = a /\ (hl_pathfinish M g = b /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (g t) = f t)))))) -> exists g' :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_path M g' = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M g') c = 1 /\ (hl_pathstart M g' = a /\ (hl_pathfinish M g' = b /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (g' t) = f' t))).
Admitted.

// HOL Light: Multivariate/paths.ml:25223 / COVERING_SPACE_INESSENTIAL_LOOP_LIFT_IS_LOOP   (hash md5:cbbeb03f6e13ed7d0a00366e80724489)
Theorem hlt_COVERING_SPACE_INESSENTIAL_LOOP_LIFT_IS_LOOP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall h :e hl_ty_cart R M :^: hl_ty_cart R 1, forall a :e hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ (hl_homotopic_paths N s g (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a a)) = 1 /\ (hl_path M h = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h) c = 1 /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (h t) = g t))))))) -> hl_pathfinish M h = hl_pathstart M h.
Admitted.

// HOL Light: Multivariate/paths.ml:25251 / COVERING_SPACE_SIMPLY_CONNECTED_LOOP_LIFT_IS_LOOP   (hash md5:86e91aa600deaeefb934fd002d70370c)
Theorem hlt_COVERING_SPACE_SIMPLY_CONNECTED_LOOP_LIFT_IS_LOOP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall h :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_simply_connected N s = 1 /\ (hl_path N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ (hl_path M h = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h) c = 1 /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p (h t) = g t))))))) -> hl_pathfinish M h = hl_pathstart M h.
Admitted.

// HOL Light: Multivariate/paths.ml:25265 / COVERING_SPACE_HOMOTOPIC_PATHS_CANCEL   (hash md5:c3268abf60340af66781bff1ecfbe601)
Theorem hlt_COVERING_SPACE_HOMOTOPIC_PATHS_CANCEL : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall g h :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path M g = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M g) c = 1 /\ (hl_path M h = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h) c = 1 /\ (hl_pathstart M g = hl_pathstart M h /\ hl_homotopic_paths N s (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) p g) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) p h) = 1))))) -> hl_homotopic_paths M c g h = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:25281 / COVERING_SPACE_HOMOTOPIC_PATHS_CANCEL_EQ   (hash md5:0e20522931f9fc08af25604c1d0104e3)
Theorem hlt_COVERING_SPACE_HOMOTOPIC_PATHS_CANCEL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall g h :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path M g = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M g) c = 1 /\ (hl_path M h = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M h) c = 1 /\ hl_pathstart M g = hl_pathstart M h)))) -> (hl_homotopic_paths N s (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) p g) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) p h) = 1 <-> hl_homotopic_paths M c g h = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:25299 / COVERING_SPACE_LIFT_GENERAL   (hash md5:6d3f51aeae613d9fefcaf3c9c3ffa3e3)
Theorem hlt_COVERING_SPACE_LIFT_GENERAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R P, forall u :e 2 :^: hl_ty_cart R P, forall a :e hl_ty_cart R M, forall z :e hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_IN (hl_ty_cart R M) a c = 1 /\ (hl_IN (hl_ty_cart R P) z u = 1 /\ (hl_path_connected P u = 1 /\ (hl_locally P (hl_path_connected P) u = 1 /\ (hl_continuous_on P N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) s = 1 /\ (f z = p a /\ (forall r :e hl_ty_cart R P :^: hl_ty_cart R 1, hl_path P r = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_path_image P r) u = 1 /\ (hl_pathstart P r = z /\ hl_pathfinish P r = z)) -> exists q :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_path M q = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M q) c = 1 /\ (hl_pathstart M q = a /\ (hl_pathfinish M q = a /\ hl_homotopic_paths N s (hl_o (hl_ty_cart R P) (hl_ty_cart R N) (hl_ty_cart R 1) f r) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) p q) = 1))))))))))) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M g u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g u) c = 1 /\ (g z = a /\ forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> p (g y) = f y)).
Admitted.

// HOL Light: Multivariate/paths.ml:25643 / COVERING_SPACE_LIFT_STRONGER   (hash md5:41dd3d9d1fa69c09778243ba14087585)
Theorem hlt_COVERING_SPACE_LIFT_STRONGER : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R P, forall u :e 2 :^: hl_ty_cart R P, forall a :e hl_ty_cart R M, forall z :e hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_IN (hl_ty_cart R M) a c = 1 /\ (hl_IN (hl_ty_cart R P) z u = 1 /\ (hl_path_connected P u = 1 /\ (hl_locally P (hl_path_connected P) u = 1 /\ (hl_continuous_on P N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) s = 1 /\ (f z = p a /\ (forall r :e hl_ty_cart R P :^: hl_ty_cart R 1, hl_path P r = 1 /\ (hl_SUBSET (hl_ty_cart R P) (hl_path_image P r) u = 1 /\ (hl_pathstart P r = z /\ hl_pathfinish P r = z)) -> exists b :e hl_ty_cart R N, hl_homotopic_paths N s (hl_o (hl_ty_cart R P) (hl_ty_cart R N) (hl_ty_cart R 1) f r) (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b b)) = 1)))))))) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M g u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g u) c = 1 /\ (g z = a /\ forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> p (g y) = f y)).
Admitted.

// HOL Light: Multivariate/paths.ml:25668 / COVERING_SPACE_LIFT_STRONG   (hash md5:91474f37a2d394bce778ec41d4a49099)
Theorem hlt_COVERING_SPACE_LIFT_STRONG : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R P, forall u :e 2 :^: hl_ty_cart R P, forall a :e hl_ty_cart R M, forall z :e hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_IN (hl_ty_cart R M) a c = 1 /\ (hl_IN (hl_ty_cart R P) z u = 1 /\ (hl_simply_connected P u = 1 /\ (hl_locally P (hl_path_connected P) u = 1 /\ (hl_continuous_on P N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) s = 1 /\ f z = p a)))))) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M g u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g u) c = 1 /\ (g z = a /\ forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> p (g y) = f y)).
Admitted.

// HOL Light: Multivariate/paths.ml:25691 / COVERING_SPACE_LIFT   (hash md5:23cbb46bbe5257dcc3d92d811ec6baf7)
Theorem hlt_COVERING_SPACE_LIFT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R P, forall u :e 2 :^: hl_ty_cart R P, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_simply_connected P u = 1 /\ (hl_locally P (hl_path_connected P) u = 1 /\ (hl_continuous_on P N f u = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R N) f u) s = 1))) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R P, hl_continuous_on P M g u = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R P) (hl_ty_cart R M) g u) c = 1 /\ forall y :e hl_ty_cart R P, hl_IN (hl_ty_cart R P) y u = 1 -> p (g y) = f y).
Admitted.

// HOL Light: Multivariate/paths.ml:25717 / CARD_EQ_COVERING_MAP_FIBRES   (hash md5:c502f15a48b45fc11be5c8ab99adec38)
Theorem hlt_CARD_EQ_COVERING_MAP_FIBRES : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path_connected N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1)) -> hl_sym_3d5f63 (hl_ty_cart R M) (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5436 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5436 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = a then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5437 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5437 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:25771 / COVERING_SPACE_INJECTIVE   (hash md5:0d7309442eb3c0f732a54e5fa4e6de7b)
Theorem hlt_COVERING_SPACE_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path_connected M c = 1 /\ hl_simply_connected N s = 1) -> forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 /\ (hl_IN (hl_ty_cart R M) y c = 1 /\ p x = p y) -> x = y.
Admitted.

// HOL Light: Multivariate/paths.ml:25840 / COVERING_SPACE_HOMEOMORPHISM   (hash md5:d51f2688119ebc9a982183b4c61aaa32)
Theorem hlt_COVERING_SPACE_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path_connected M c = 1 /\ hl_simply_connected N s = 1) -> exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) c s) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:25855 / COVERING_SPACE_FIBRE_NO_LIMPT   (hash md5:2574c39dc2dbfcaa9327d1c6c3abbc52)
Theorem hlt_COVERING_SPACE_FIBRE_NO_LIMPT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R M, forall b :e hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ hl_IN (hl_ty_cart R M) a c = 1 -> ~ hl_limit_point_of M a (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5438 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5438 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:25885 / COVERING_SPACE_COUNTABLE_SHEETS   (hash md5:d1e05af01c578dcec899006be5b8e9cf)
Theorem hlt_COVERING_SPACE_COUNTABLE_SHEETS : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall b :e hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> hl_COUNTABLE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5439 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5439 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:25893 / COVERING_SPACE_FINITE_EQ_COMPACT_FIBRE   (hash md5:fe5b884424e36192fd854d9e8f2cee5d)
Theorem hlt_COVERING_SPACE_FINITE_EQ_COMPACT_FIBRE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall b :e hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> (hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5442 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5442 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5443 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5443 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:25915 / COVERING_SPACE_CLOSED_MAP   (hash md5:18e4620b944704f3a2e987514e41cddf)
Theorem hlt_COVERING_SPACE_CLOSED_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ ((forall b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 -> hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5445 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5445 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1) /\ hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1) -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:25982 / COVERING_SPACE_FINITE_SHEETS_EQ_CLOSED_MAP_STRONG   (hash md5:7616d5736622afaed5b22da4881a1ed6)
Theorem hlt_COVERING_SPACE_FINITE_SHEETS_EQ_CLOSED_MAP_STRONG : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (forall b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 -> hl_limit_point_of N b s = 1) -> ((forall b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 -> hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5446 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5446 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1) <-> forall t :e 2 :^: hl_ty_cart R M, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p t) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:26095 / COVERING_SPACE_FINITE_SHEETS_EQ_CLOSED_MAP   (hash md5:abcb24894b02031f3d651af298df5b7d)
Theorem hlt_COVERING_SPACE_FINITE_SHEETS_EQ_CLOSED_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_connected N s = 1 /\ ~ (exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)))) -> ((forall b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 -> hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5447 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5447 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1) <-> forall t :e 2 :^: hl_ty_cart R M, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p t) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:26111 / COVERING_SPACE_FINITE_SHEETS_EQ_PROPER_MAP   (hash md5:f292407c60647f6de73f0e7571379e3f)
Theorem hlt_COVERING_SPACE_FINITE_SHEETS_EQ_PROPER_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> ((forall b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 -> hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5448 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5448 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1) <-> forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k s = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5449 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5449 (if hl_IN (hl_ty_cart R M) x c = 1 /\ hl_IN (hl_ty_cart R N) (p x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:26130 / COVERING_SPACE_FINITE_SHEETS   (hash md5:67f13f3d9a10109a0255d486de95ad8b)
Theorem hlt_COVERING_SPACE_FINITE_SHEETS : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall b :e hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ hl_compact M c = 1 -> hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5450 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5450 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26137 / COVERING_SPACE_COMPACT   (hash md5:001e5097d77a8a5c0389ddc5c667e90b)
Theorem hlt_COVERING_SPACE_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> (hl_compact M c = 1 <-> hl_compact N s = 1 /\ forall b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 -> hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5451 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5451 (if hl_IN (hl_ty_cart R M) x c = 1 /\ p x = b then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:26156 / PROPER_LOCAL_HOMEOMORPHISM_IMP_COVERING_MAP   (hash md5:9c7f9b12282ec91bf817097cbe98ee44)
Theorem hlt_PROPER_LOCAL_HOMEOMORPHISM_IMP_COVERING_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p c = s /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k s = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5466 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5466 (if hl_IN (hl_ty_cart R M) x c = 1 /\ hl_IN (hl_ty_cart R N) (p x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> exists t :e 2 :^: hl_ty_cart R M, exists u :e 2 :^: hl_ty_cart R N, exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1)))) -> hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26461 / CLOSED_LOCAL_HOMEOMORPHISM_IMP_COVERING_MAP   (hash md5:cc91992a5c366ac64415d7c4e60947a3)
Theorem hlt_CLOSED_LOCAL_HOMEOMORPHISM_IMP_COVERING_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R M, hl_connected_component M c x = hl_INSERT (hl_ty_cart R M) x (hl_EMPTY (hl_ty_cart R M)) -> c = hl_INSERT (hl_ty_cart R M) x (hl_EMPTY (hl_ty_cart R M))) /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p c = s /\ ((forall k :e 2 :^: hl_ty_cart R M, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) k = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p k) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> exists t :e 2 :^: hl_ty_cart R M, exists u :e 2 :^: hl_ty_cart R N, exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) p q) = 1))))) -> hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26479 / PROPER_LOCAL_HOMEOMORPHISM_GLOBAL   (hash md5:6467d7fc2579e9ec4c9dcb00ee55f7ca)
Theorem hlt_PROPER_LOCAL_HOMEOMORPHISM_GLOBAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_path_connected M s = 1 /\ (hl_simply_connected N t = 1 /\ ((s = hl_EMPTY (hl_ty_cart R M) -> t = hl_EMPTY (hl_ty_cart R N)) /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k t = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5467 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5467 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists u :e 2 :^: hl_ty_cart R M, exists v :e 2 :^: hl_ty_cart R N, exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_IN (hl_ty_cart R M) x u = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) v = 1 /\ hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) u v) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f q) = 1)))))) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26511 / CLOSED_LOCAL_HOMEOMORPHISM_GLOBAL   (hash md5:aa518ba9f336da1e62270d73a0b4aa0d)
Theorem hlt_CLOSED_LOCAL_HOMEOMORPHISM_GLOBAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_path_connected M s = 1 /\ (hl_simply_connected N t = 1 /\ ((s = hl_EMPTY (hl_ty_cart R M) -> t = hl_EMPTY (hl_ty_cart R N)) /\ ((forall c :e 2 :^: hl_ty_cart R M, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) c = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists u :e 2 :^: hl_ty_cart R M, exists v :e 2 :^: hl_ty_cart R N, exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_IN (hl_ty_cart R M) x u = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) v = 1 /\ hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) u v) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1)))))) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26544 / PROPER_LOCALLY_INJECTIVE_OPEN_IMP_COVERING_MAP   (hash md5:1c48cb74c0ee269df830ad7a009a0b7c)
Theorem hlt_PROPER_LOCALLY_INJECTIVE_OPEN_IMP_COVERING_MAP : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_continuous_on M N p c = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p c = s /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k s = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5468 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5468 (if hl_IN (hl_ty_cart R M) x c = 1 /\ hl_IN (hl_ty_cart R N) (p x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall u :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) u = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p u) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> exists t :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 /\ forall y z :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y t = 1 /\ (hl_IN (hl_ty_cart R M) z t = 1 /\ p y = p z) -> y = z))))) -> hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26573 / PROPER_LOCALLY_INJECTIVE_OPEN_IMP_COVERING_MAP_GEN   (hash md5:8436c3290bce1b784ddf5873da958b59)
Theorem hlt_PROPER_LOCALLY_INJECTIVE_OPEN_IMP_COVERING_MAP_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_continuous_on M N p c = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p c = s /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k s = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5469 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5469 (if hl_IN (hl_ty_cart R M) x c = 1 /\ hl_IN (hl_ty_cart R N) (p x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall u :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) u = 1 -> hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5470 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5470 (if hl_IN (hl_ty_cart R M) x c = 1 /\ hl_IN (hl_ty_cart R N) (p x) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) p u) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> exists t :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) t = 1 /\ forall y z :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y t = 1 /\ (hl_IN (hl_ty_cart R M) z t = 1 /\ p y = p z) -> y = z))))) -> hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26590 / PROPER_LOCALLY_INJECTIVE_OPEN_IMP_HOMEOMORPHISM   (hash md5:7f43adff2f393beea717a635e77d3aee)
Theorem hlt_PROPER_LOCALLY_INJECTIVE_OPEN_IMP_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_path_connected M s = 1 /\ (hl_simply_connected N t = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k t = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5471 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5471 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall u :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f u) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists u :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M) x u = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 /\ forall y z :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y u = 1 /\ (hl_IN (hl_ty_cart R M) z u = 1 /\ f y = f z) -> y = z))))))) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26606 / PROPER_LOCALLY_INJECTIVE_OPEN_IMP_HOMEOMORPHISM_GEN   (hash md5:cc8fae3d37fb19a31e53b009e27da9e5)
Theorem hlt_PROPER_LOCALLY_INJECTIVE_OPEN_IMP_HOMEOMORPHISM_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_path_connected M s = 1 /\ (hl_simply_connected N t = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k t = 1 /\ hl_compact N k = 1 -> hl_compact M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5472 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5472 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall u :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 -> hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5473 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5473 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f u) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists u :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M) x u = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 /\ forall y z :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y u = 1 /\ (hl_IN (hl_ty_cart R M) z u = 1 /\ f y = f z) -> y = z))))))) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26627 / UNIVERSAL_COVERING_SPACE   (hash md5:d787ac3e1446a38fbba49617a10b886c)
Theorem hlt_UNIVERSAL_COVERING_SPACE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall c :e 2 :^: hl_ty_cart R M, forall p :e hl_ty_cart R P :^: hl_ty_cart R M, forall c' :e 2 :^: hl_ty_cart R N, forall p' :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R P, hl_covering_space M P (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R P :^: hl_ty_cart R M) c p) s = 1 /\ (hl_covering_space N P (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R P :^: hl_ty_cart R N) c' p') s = 1 /\ (hl_locally M (hl_path_connected M) c = 1 /\ (hl_simply_connected M c = 1 /\ hl_connected N c' = 1))) -> exists q :e hl_ty_cart R N :^: hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c q) c' = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> p' (q x) = p x.
Admitted.

// HOL Light: Multivariate/paths.ml:26897 / CARD_EQ_FUNDAMENTAL_GROUP_COVERING_SPACE_ALT   (hash md5:8735a227e217c1d3bb3bff5c8ecbe893)
Theorem hlt_CARD_EQ_FUNDAMENTAL_GROUP_COVERING_SPACE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path_connected M c = 1 /\ hl_IN (hl_ty_cart R M) a c = 1) -> hl_sym_3d5f63 (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) (2 :^: (hl_ty_cart R M :^: hl_ty_cart R 1)) (hl_fundamental_group N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N) s (p a))) (hl_GSPEC (2 :^: (hl_ty_cart R M :^: hl_ty_cart R 1)) (fun GEN_PVAR_5489 :e 2 :^: (hl_ty_cart R M :^: hl_ty_cart R 1) => if exists g :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_SETSPEC (2 :^: (hl_ty_cart R M :^: hl_ty_cart R 1)) GEN_PVAR_5489 (if hl_path M g = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_path_image M g) c = 1 /\ (hl_pathstart M g = a /\ p (hl_pathfinish M g) = p a)) then 1 else 0) (hl_homotopic_paths M c g) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:26987 / CARD_EQ_FUNDAMENTAL_GROUP_COVERING_SPACE   (hash md5:6ff1eb6e2257ec5b755c74bfff16f4e7)
Theorem hlt_CARD_EQ_FUNDAMENTAL_GROUP_COVERING_SPACE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ (hl_path_connected M c = 1 /\ hl_IN (hl_ty_cart R M) a c = 1) -> hl_sym_3d5f63 (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) (2 :^: (hl_ty_cart R M :^: hl_ty_cart R 1) :*: hl_ty_cart R M) (hl_fundamental_group N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N) s (p a))) (hl_sym_2a5f63 (2 :^: (hl_ty_cart R M :^: hl_ty_cart R 1)) (hl_ty_cart R M) (hl_fundamental_group M (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R M) c a)) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5491 :e hl_ty_cart R M => if exists a' :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5491 (if hl_IN (hl_ty_cart R M) a' c = 1 /\ p a' = p a then 1 else 0) a' = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27116 / COVERING_SPACE_SELF_FINITE_FUNDAMENTAL_GROUP   (hash md5:d1bd140581f4f35672de1dbb15655ac4)
Theorem hlt_COVERING_SPACE_SELF_FINITE_FUNDAMENTAL_GROUP : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_covering_space N N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) s p) s = 1 /\ (hl_path_connected N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_FINITE (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) (hl_fundamental_group N (hl_pair (2 :^: hl_ty_cart R N) (hl_ty_cart R N) s a)) = 1)) -> exists q :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s s) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) p q) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27159 / HOMEOMORPHIC_SUBSPACE_EUCLIDEAN_SPACE   (hash md5:3b65609bad8f724557fc215c028fc5c5)
Theorem hlt_HOMEOMORPHIC_SUBSPACE_EUCLIDEAN_SPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, hl_subspace N s = 1 -> (hl_homeomorphic_space (hl_ty_cart R N) (R :^: omega) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_euclidean_space n) = 1 <-> hl_dim N s = n).
Admitted.

// HOL Light: Multivariate/paths.ml:27190 / HOMEOMORPHIC_SUBSPACE_EUCLIDEAN_SPACE_DIM   (hash md5:55625b3f7789d81e41fc0371d2a22bac)
Theorem hlt_HOMEOMORPHIC_SUBSPACE_EUCLIDEAN_SPACE_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> hl_homeomorphic_space (hl_ty_cart R N) (R :^: omega) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_euclidean_space (hl_dim N s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27196 / HOMEOMORPHIC_SUBSPACES_EQ   (hash md5:6b1f58ff40227c3c38d4ede6ebba1cef)
Theorem hlt_HOMEOMORPHIC_SUBSPACES_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_subspace M s = 1 /\ hl_subspace N t = 1 -> (hl_homeomorphic M N s t = 1 <-> hl_dim M s = hl_dim N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27211 / HOMEOMORPHIC_AFFINE_EUCLIDEAN_SPACE   (hash md5:e10c6bf3758cfd9b705c1ca92362f1b5)
Theorem hlt_HOMEOMORPHIC_AFFINE_EUCLIDEAN_SPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, hl_affine N s = 1 -> (hl_homeomorphic_space (hl_ty_cart R N) (R :^: omega) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_euclidean_space n) = 1 <-> hl_aff_dim N s = hl_int_of_num n).
Admitted.

// HOL Light: Multivariate/paths.ml:27240 / HOMEOMORPHIC_AFFINE_SETS_EQ   (hash md5:3f496709933f0a2279675c4ec5d31b16)
Theorem hlt_HOMEOMORPHIC_AFFINE_SETS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_affine M s = 1 /\ hl_affine N t = 1 -> (hl_homeomorphic M N s t = 1 <-> hl_aff_dim M s = hl_aff_dim N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27258 / INVARIANCE_OF_DOMAIN_SUBSPACES   (hash md5:01dbdbc9e3b028a24f91a9f8245605fd)
Theorem hlt_INVARIANCE_OF_DOMAIN_SUBSPACES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R M, forall v :e 2 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_subspace M u = 1 /\ (hl_subspace N v = 1 /\ (hl_le (hl_dim N v) (hl_dim M u) = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) v = 1 /\ ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y) /\ hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1))))) -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) v) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27312 / INVARIANCE_OF_DOMAIN   (hash md5:618ea7277ea4d7637e24207c74d41bb3)
Theorem hlt_INVARIANCE_OF_DOMAIN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_continuous_on N N f s = 1 /\ (hl_open N s = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ f x = f y) -> x = y)) -> hl_open N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27323 / INVARIANCE_OF_DIMENSION_SUBSPACES   (hash md5:2e8c480dc5b10ed0fc2cc963e9c1da7d)
Theorem hlt_INVARIANCE_OF_DIMENSION_SUBSPACES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R M, forall v :e 2 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_subspace M u = 1 /\ (hl_subspace N v = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R M) /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) v = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y)))))) -> hl_le (hl_dim M u) (hl_dim N v) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27360 / INVARIANCE_OF_DOMAIN_AFFINE_SETS   (hash md5:151b60295a455571510f7de3f251cc9f)
Theorem hlt_INVARIANCE_OF_DOMAIN_AFFINE_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R M, forall v :e 2 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_affine M u = 1 /\ (hl_affine N v = 1 /\ (hl_int_le (hl_aff_dim N v) (hl_aff_dim M u) = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) v = 1 /\ ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y) /\ hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1))))) -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) v) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27399 / INVARIANCE_OF_DIMENSION_AFFINE_SETS   (hash md5:a2c6fdb20fc0e55c378dc6b1fdcf8e96)
Theorem hlt_INVARIANCE_OF_DIMENSION_AFFINE_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R M, forall v :e 2 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_affine M u = 1 /\ (hl_affine N v = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R M) /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) v = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y)))))) -> hl_int_le (hl_aff_dim M u) (hl_aff_dim N v) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27436 / INVARIANCE_OF_DIMENSION   (hash md5:5e9f951ce17184fffea006c7ec6d5df9)
Theorem hlt_INVARIANCE_OF_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (hl_open M s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R M) /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y))) -> hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27447 / CONTINUOUS_INJECTIVE_IMAGE_SUBSPACE_DIM_LE   (hash md5:ad87799c8a249da3bcd922c15ddad27f)
Theorem hlt_CONTINUOUS_INJECTIVE_IMAGE_SUBSPACE_DIM_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_subspace M s = 1 /\ (hl_subspace N t = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y)))) -> hl_le (hl_dim M s) (hl_dim N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27457 / INVARIANCE_OF_DIMENSION_CONVEX_DOMAIN   (hash md5:63fae0321e83e1014183f24fa3b3c159)
Theorem hlt_INVARIANCE_OF_DIMENSION_CONVEX_DOMAIN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex M s = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) (hl_hull (hl_ty_cart R N) (hl_affine N) t) = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y))) -> hl_int_le (hl_aff_dim M s) (hl_aff_dim N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27475 / HOMEOMORPHIC_CONVEX_SETS   (hash md5:3a1f570ba7e3751ca44d202453aeb110)
Theorem hlt_HOMEOMORPHIC_CONVEX_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex M s = 1 /\ (hl_convex N t = 1 /\ hl_homeomorphic M N s t = 1) -> hl_aff_dim M s = hl_aff_dim N t.
Admitted.

// HOL Light: Multivariate/paths.ml:27487 / HOMEOMORPHIC_CONVEX_COMPACT_SETS_EQ   (hash md5:4c558d459262d5c80c74fb957b9e61eb)
Theorem hlt_HOMEOMORPHIC_CONVEX_COMPACT_SETS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex M s = 1 /\ (hl_compact M s = 1 /\ (hl_convex N t = 1 /\ hl_compact N t = 1)) -> (hl_homeomorphic M N s t = 1 <-> hl_aff_dim M s = hl_aff_dim N t).
Admitted.

// HOL Light: Multivariate/paths.ml:27493 / INVARIANCE_OF_DOMAIN_GEN   (hash md5:beb3c786cba34c605afc7ad8f7056703)
Theorem hlt_INVARIANCE_OF_DOMAIN_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_open M s = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y))) -> hl_open N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27504 / INJECTIVE_INTO_1D_IMP_OPEN_MAP_UNIV   (hash md5:4047231aec2e701510c5b0c16cb59596)
Theorem hlt_INJECTIVE_INTO_1D_IMP_OPEN_MAP_UNIV : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_continuous_on N 1 f s = 1 /\ ((forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ f x = f y) -> x = y) /\ (hl_open N t = 1 /\ hl_SUBSET (hl_ty_cart R N) t s = 1)) -> hl_open 1 (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27515 / CONTINUOUS_ON_INVERSE_OPEN   (hash md5:9f0c9619b9fedd28ca5c5e3f2cef0414)
Theorem hlt_CONTINUOUS_ON_INVERSE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_open M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x))) -> hl_continuous_on N M g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27532 / CONTINUOUS_ON_INVERSE_INTO_1D   (hash md5:a11c8cc5e1d7b37c65ed6f2fc0d7a299)
Theorem hlt_CONTINUOUS_ON_INVERSE_INTO_1D : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R 1, hl_continuous_on N 1 f s = 1 /\ ((hl_path_connected N s = 1 \/ (hl_connected N s = 1 /\ (hl_locally N (hl_compact N) s = 1 \/ hl_locally N (hl_connected N) s = 1) \/ (hl_compact N s = 1 \/ hl_open N s = 1))) /\ (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f s = t /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> g (f x) = x))) -> hl_continuous_on 1 N g t = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27684 / INVARIANCE_OF_DOMAIN_HOMEOMORPHISM   (hash md5:22c8c9c7f7342204e0a225003ac9ce7d)
Theorem hlt_INVARIANCE_OF_DOMAIN_HOMEOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_open M s = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y))) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27695 / INVARIANCE_OF_DOMAIN_HOMEOMORPHIC   (hash md5:b94f91355752531e202c87c63887b4ff)
Theorem hlt_INVARIANCE_OF_DOMAIN_HOMEOMORPHIC : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_open M s = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y))) -> hl_homeomorphic M N s (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27704 / HOMEOMORPHIC_INTERVALS_EQ   (hash md5:625423e1a23fdd448533a82dbd8486b3)
Theorem hlt_HOMEOMORPHIC_INTERVALS_EQ : forall M N:set, M <> Empty -> N <> Empty -> (forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_homeomorphic M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> hl_aff_dim M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_aff_dim N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) /\ ((forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_homeomorphic M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1 <-> hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) = hl_EMPTY (hl_ty_cart R N)) /\ ((forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_homeomorphic M N (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) = hl_EMPTY (hl_ty_cart R M) /\ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N)) /\ forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_homeomorphic M N (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1 <-> hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) = hl_EMPTY (hl_ty_cart R M) /\ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) = hl_EMPTY (hl_ty_cart R N) \/ ~ hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) = hl_EMPTY (hl_ty_cart R M) /\ (~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) = hl_EMPTY (hl_ty_cart R N) /\ hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N)))).
Admitted.

// HOL Light: Multivariate/paths.ml:27771 / CONTINUOUS_IMAGE_SUBSET_INTERIOR   (hash md5:5f636a800c5f5074ac41a63d958207fd)
Theorem hlt_CONTINUOUS_IMAGE_SUBSET_INTERIOR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (hl_le (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M)) = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y)) -> hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_interior M s)) (hl_interior N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27784 / HOMEOMORPHIC_INTERIORS_SAME_DIMENSION   (hash md5:1b7daf67d0dc7a85d69929495db3d079)
Theorem hlt_HOMEOMORPHIC_INTERIORS_SAME_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ hl_homeomorphic M N s t = 1 -> hl_homeomorphic M N (hl_interior M s) (hl_interior N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27807 / HOMEOMORPHIC_INTERIORS   (hash md5:300a111c12c256d93e87e9aa401c079e)
Theorem hlt_HOMEOMORPHIC_INTERIORS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 /\ (hl_interior M s = hl_EMPTY (hl_ty_cart R M) <-> hl_interior N t = hl_EMPTY (hl_ty_cart R N)) -> hl_homeomorphic M N (hl_interior M s) (hl_interior N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27824 / HOMEOMORPHIC_FRONTIERS_SAME_DIMENSION   (hash md5:94dcab57c2db32059d25598d9e3d2bba)
Theorem hlt_HOMEOMORPHIC_FRONTIERS_SAME_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ (hl_homeomorphic M N s t = 1 /\ (hl_closed M s = 1 /\ hl_closed N t = 1)) -> hl_homeomorphic M N (hl_frontier M s) (hl_frontier N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27853 / HOMEOMORPHIC_FRONTIERS   (hash md5:5e638578599985b51376949b2b1a90b8)
Theorem hlt_HOMEOMORPHIC_FRONTIERS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 /\ (hl_closed M s = 1 /\ (hl_closed N t = 1 /\ (hl_interior M s = hl_EMPTY (hl_ty_cart R M) <-> hl_interior N t = hl_EMPTY (hl_ty_cart R N)))) -> hl_homeomorphic M N (hl_frontier M s) (hl_frontier N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27871 / CONTINUOUS_IMAGE_SUBSET_RELATIVE_INTERIOR   (hash md5:896eba78dc3029ec6d1f5a1db062833f)
Theorem hlt_CONTINUOUS_IMAGE_SUBSET_RELATIVE_INTERIOR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_int_le (hl_aff_dim N t) (hl_aff_dim M s) = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y))) -> hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_relative_interior M s)) (hl_relative_interior N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27890 / HOMEOMORPHIC_RELATIVE_INTERIORS_SAME_DIMENSION   (hash md5:32422a0f1df8902566bf1be1fd747aea)
Theorem hlt_HOMEOMORPHIC_RELATIVE_INTERIORS_SAME_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_aff_dim M s = hl_aff_dim N t /\ hl_homeomorphic M N s t = 1 -> hl_homeomorphic M N (hl_relative_interior M s) (hl_relative_interior N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27916 / HOMEOMORPHIC_RELATIVE_INTERIORS   (hash md5:7911c01749be84f85b4890e99d3f97a6)
Theorem hlt_HOMEOMORPHIC_RELATIVE_INTERIORS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 /\ (hl_relative_interior M s = hl_EMPTY (hl_ty_cart R M) <-> hl_relative_interior N t = hl_EMPTY (hl_ty_cart R N)) -> hl_homeomorphic M N (hl_relative_interior M s) (hl_relative_interior N t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27942 / HOMEOMORPHIC_RELATIVE_BOUNDARIES_SAME_DIMENSION   (hash md5:b7e213558d09bc61b83c0b103039b4e4)
Theorem hlt_HOMEOMORPHIC_RELATIVE_BOUNDARIES_SAME_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_aff_dim M s = hl_aff_dim N t /\ hl_homeomorphic M N s t = 1 -> hl_homeomorphic M N (hl_DIFF (hl_ty_cart R M) s (hl_relative_interior M s)) (hl_DIFF (hl_ty_cart R N) t (hl_relative_interior N t)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27972 / HOMEOMORPHIC_RELATIVE_BOUNDARIES   (hash md5:51144985d907cad94024c2bf8f80a7d4)
Theorem hlt_HOMEOMORPHIC_RELATIVE_BOUNDARIES : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 /\ (hl_relative_interior M s = hl_EMPTY (hl_ty_cart R M) <-> hl_relative_interior N t = hl_EMPTY (hl_ty_cart R N)) -> hl_homeomorphic M N (hl_DIFF (hl_ty_cart R M) s (hl_relative_interior M s)) (hl_DIFF (hl_ty_cart R N) t (hl_relative_interior N t)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:27999 / UNIFORMLY_CONTINUOUS_HOMEOMORPHISM_UNIV_TRIVIAL   (hash md5:5a1fcb5af272ee34c2c8287f520950c3)
Theorem hlt_UNIFORMLY_CONTINUOUS_HOMEOMORPHISM_UNIV_TRIVIAL : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s (hl_UNIV (hl_ty_cart R N))) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ hl_uniformly_continuous_on N N f s = 1 -> s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:28026 / INVARIANCE_OF_DOMAIN_SPHERE_AFFINE_SET_GEN   (hash md5:a81e179dfe0b72181423ed329eeaa3ab)
Theorem hlt_INVARIANCE_OF_DOMAIN_SPHERE_AFFINE_SET_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y) /\ (hl_bounded M u = 1 /\ (hl_convex M u = 1 /\ (hl_affine N t = 1 /\ (hl_int_lt (hl_aff_dim N t) (hl_aff_dim M u) = 1 /\ hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_relative_frontier M u)) s = 1)))))) -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:28113 / INVARIANCE_OF_DOMAIN_SPHERE_AFFINE_SET   (hash md5:3c2cfd7bef4e7377a929b75ecb3f9333)
Theorem hlt_INVARIANCE_OF_DOMAIN_SPHERE_AFFINE_SET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, forall r :e R, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y) /\ (~ r = hl_real_of_num (hl_NUMERAL hl_zero) /\ (hl_affine N t = 1 /\ (hl_int_lt (hl_aff_dim N t) (hl_int_of_num (hl_dimindex M (hl_UNIV M))) = 1 /\ hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_sphere M (hl_pair (hl_ty_cart R M) R a r))) s = 1))))) -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:28131 / NO_EMBEDDING_SPHERE_LOWDIM   (hash md5:450b0eed1b69d207b190feab9bd823cc)
Theorem hlt_NO_EMBEDDING_SPHERE_LOWDIM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, forall r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_continuous_on M N f (hl_sphere M (hl_pair (hl_ty_cart R M) R a r)) = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_sphere M (hl_pair (hl_ty_cart R M) R a r)) = 1 /\ (hl_IN (hl_ty_cart R M) y (hl_sphere M (hl_pair (hl_ty_cart R M) R a r)) = 1 /\ f x = f y) -> x = y)) -> hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:28151 / EMPTY_INTERIOR_LOWDIM_GEN   (hash md5:42812217163293d75da24bc6cf6efd34)
Theorem hlt_EMPTY_INTERIOR_LOWDIM_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, hl_lt (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_homeomorphic N M s t = 1 -> hl_interior N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:28178 / EMPTY_INTERIOR_LOWDIM_GEN_LE   (hash md5:3a2358a34f87f8ac054c50e8dc88c4d0)
Theorem hlt_EMPTY_INTERIOR_LOWDIM_GEN_LE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_interior M t = hl_EMPTY (hl_ty_cart R M) /\ hl_homeomorphic N M s t = 1) -> hl_interior N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/paths.ml:28189 / HOMEOMORPHIC_HYPERPLANES_EQ   (hash md5:6c76dd5ac9306b6f717fa9a5f3ad73d5)
Theorem hlt_HOMEOMORPHIC_HYPERPLANES_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall a :e hl_ty_cart R M, forall b :e R, forall c :e hl_ty_cart R N, forall d :e R, ~ a = hl_vec M (hl_NUMERAL hl_zero) /\ ~ c = hl_vec N (hl_NUMERAL hl_zero) -> (hl_homeomorphic M N (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5508 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5508 (if hl_dot M a x = b then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5509 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5509 (if hl_dot N c x = d then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/paths.ml:28198 / HOMEOMORPHIC_UNIV_UNIV   (hash md5:3955a40a236e50f33f9980a21d493321)
Theorem hlt_HOMEOMORPHIC_UNIV_UNIV : forall M N:set, M <> Empty -> N <> Empty -> (hl_homeomorphic M N (hl_UNIV (hl_ty_cart R M)) (hl_UNIV (hl_ty_cart R N)) = 1 <-> hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/paths.ml:28202 / HOMEOMORPHIC_CBALLS_EQ   (hash md5:07d8ee03fd2350f8f30da2ae6a5295b1)
Theorem hlt_HOMEOMORPHIC_CBALLS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall a :e hl_ty_cart R M, forall b :e hl_ty_cart R N, forall r s :e R, hl_homeomorphic M N (hl_cball M (hl_pair (hl_ty_cart R M) R a r)) (hl_cball N (hl_pair (hl_ty_cart R N) R b s)) = 1 <-> hl_real_lt r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 /\ hl_real_lt s (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ (r = hl_real_of_num (hl_NUMERAL hl_zero) /\ s = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) s = 1 /\ hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N))).
Admitted.

// HOL Light: Multivariate/paths.ml:28245 / HOMEOMORPHIC_BALLS_EQ   (hash md5:cc7bd54c353bcd38ed03701f34159f14)
Theorem hlt_HOMEOMORPHIC_BALLS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall a :e hl_ty_cart R M, forall b :e hl_ty_cart R N, forall r s :e R, hl_homeomorphic M N (hl_ball M (hl_pair (hl_ty_cart R M) R a r)) (hl_ball N (hl_pair (hl_ty_cart R N) R b s)) = 1 <-> hl_real_le r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 /\ hl_real_le s (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) s = 1 /\ hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/paths.ml:28280 / CARD_EQ_COMPONENTS_COMPLEMENTS   (hash md5:15ce097f1f96a2f231d304ed777186b5)
Theorem hlt_CARD_EQ_COMPONENTS_COMPLEMENTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ hl_homeomorphic N N s t = 1) -> hl_sym_3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:28341 / JORDAN_CURVE_THEOREM_GEN   (hash md5:c9900a156d1d755ace277e6c9633eacc)
Theorem hlt_JORDAN_CURVE_THEOREM_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_homeomorphic N N s (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 -> exists ins out :e 2 :^: hl_ty_cart R N, ~ ins = hl_EMPTY (hl_ty_cart R N) /\ (hl_open N ins = 1 /\ (hl_connected N ins = 1 /\ (~ out = hl_EMPTY (hl_ty_cart R N) /\ (hl_open N out = 1 /\ (hl_connected N out = 1 /\ (hl_bounded N ins = 1 /\ (~ hl_bounded N out = 1 /\ (hl_INTER (hl_ty_cart R N) ins out = hl_EMPTY (hl_ty_cart R N) /\ (hl_UNION (hl_ty_cart R N) ins out = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s /\ (hl_frontier N ins = s /\ hl_frontier N out = s)))))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:28475 / JORDAN_INSIDE_OUTSIDE_GEN   (hash md5:32396a4741e7e841c9bcae03c6904e99)
Theorem hlt_JORDAN_INSIDE_OUTSIDE_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_homeomorphic N N s (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 -> ~ hl_inside N s = hl_EMPTY (hl_ty_cart R N) /\ (hl_open N (hl_inside N s) = 1 /\ (hl_connected N (hl_inside N s) = 1 /\ (~ hl_outside N s = hl_EMPTY (hl_ty_cart R N) /\ (hl_open N (hl_outside N s) = 1 /\ (hl_connected N (hl_outside N s) = 1 /\ (hl_bounded N (hl_inside N s) = 1 /\ (~ hl_bounded N (hl_outside N s) = 1 /\ (hl_INTER (hl_ty_cart R N) (hl_inside N s) (hl_outside N s) = hl_EMPTY (hl_ty_cart R N) /\ (hl_UNION (hl_ty_cart R N) (hl_inside N s) (hl_outside N s) = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s /\ (hl_frontier N (hl_inside N s) = s /\ hl_frontier N (hl_outside N s) = s)))))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:28504 / JORDAN_BROUWER_FRONTIER   (hash md5:878dca6b56cfeca38e73a519b4181573)
Theorem hlt_JORDAN_BROUWER_FRONTIER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_homeomorphic N N s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ hl_IN (2 :^: hl_ty_cart R N) t (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1) -> hl_frontier N t = s.
Admitted.

// HOL Light: Multivariate/paths.ml:28540 / JORDAN_BROUWER_NONSEPARATION   (hash md5:6009147f39323afeb5b37906d8e2115c)
Theorem hlt_JORDAN_BROUWER_NONSEPARATION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_homeomorphic N N s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ hl_PSUBSET (hl_ty_cart R N) t s = 1) -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:28554 / JORDAN_BROUWER_SEPARATION   (hash md5:e7a2af9e1466b9e672b2329c7bf6eaec)
Theorem hlt_JORDAN_BROUWER_SEPARATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_homeomorphic N N s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 -> ~ hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:28576 / JORDAN_CURVE_THEOREM   (hash md5:0ef1a772a8bf61823ed900b232320509)
Theorem hlt_JORDAN_CURVE_THEOREM : forall c :e hl_ty_cart R (idx_n (2 * dimindex 1)) :^: hl_ty_cart R 1, hl_simple_path (idx_n (2 * dimindex 1)) c = 1 /\ hl_pathfinish (idx_n (2 * dimindex 1)) c = hl_pathstart (idx_n (2 * dimindex 1)) c -> exists ins out :e 2 :^: hl_ty_cart R (idx_n (2 * dimindex 1)), ~ ins = hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))) /\ (hl_open (idx_n (2 * dimindex 1)) ins = 1 /\ (hl_connected (idx_n (2 * dimindex 1)) ins = 1 /\ (~ out = hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))) /\ (hl_open (idx_n (2 * dimindex 1)) out = 1 /\ (hl_connected (idx_n (2 * dimindex 1)) out = 1 /\ (hl_bounded (idx_n (2 * dimindex 1)) ins = 1 /\ (~ hl_bounded (idx_n (2 * dimindex 1)) out = 1 /\ (hl_INTER (hl_ty_cart R (idx_n (2 * dimindex 1))) ins out = hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))) /\ (hl_UNION (hl_ty_cart R (idx_n (2 * dimindex 1))) ins out = hl_DIFF (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_UNIV (hl_ty_cart R (idx_n (2 * dimindex 1)))) (hl_path_image (idx_n (2 * dimindex 1)) c) /\ (hl_frontier (idx_n (2 * dimindex 1)) ins = hl_path_image (idx_n (2 * dimindex 1)) c /\ hl_frontier (idx_n (2 * dimindex 1)) out = hl_path_image (idx_n (2 * dimindex 1)) c)))))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:28591 / JORDAN_DISCONNECTED   (hash md5:7de6b924da96a8ce5a80b2dbbf17500e)
Theorem hlt_JORDAN_DISCONNECTED : forall c :e hl_ty_cart R (idx_n (2 * dimindex 1)) :^: hl_ty_cart R 1, hl_simple_path (idx_n (2 * dimindex 1)) c = 1 /\ hl_pathfinish (idx_n (2 * dimindex 1)) c = hl_pathstart (idx_n (2 * dimindex 1)) c -> ~ hl_connected (idx_n (2 * dimindex 1)) (hl_DIFF (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_UNIV (hl_ty_cart R (idx_n (2 * dimindex 1)))) (hl_path_image (idx_n (2 * dimindex 1)) c)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:28599 / JORDAN_INSIDE_OUTSIDE   (hash md5:70a4c1a6e1082aa2672b8453143b21bd)
Theorem hlt_JORDAN_INSIDE_OUTSIDE : forall c :e hl_ty_cart R (idx_n (2 * dimindex 1)) :^: hl_ty_cart R 1, hl_simple_path (idx_n (2 * dimindex 1)) c = 1 /\ hl_pathfinish (idx_n (2 * dimindex 1)) c = hl_pathstart (idx_n (2 * dimindex 1)) c -> ~ hl_inside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c) = hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))) /\ (hl_open (idx_n (2 * dimindex 1)) (hl_inside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = 1 /\ (hl_connected (idx_n (2 * dimindex 1)) (hl_inside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = 1 /\ (~ hl_outside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c) = hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))) /\ (hl_open (idx_n (2 * dimindex 1)) (hl_outside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = 1 /\ (hl_connected (idx_n (2 * dimindex 1)) (hl_outside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = 1 /\ (hl_bounded (idx_n (2 * dimindex 1)) (hl_inside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = 1 /\ (~ hl_bounded (idx_n (2 * dimindex 1)) (hl_outside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = 1 /\ (hl_INTER (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_inside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) (hl_outside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))) /\ (hl_UNION (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_inside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) (hl_outside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = hl_DIFF (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_UNIV (hl_ty_cart R (idx_n (2 * dimindex 1)))) (hl_path_image (idx_n (2 * dimindex 1)) c) /\ (hl_frontier (idx_n (2 * dimindex 1)) (hl_inside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = hl_path_image (idx_n (2 * dimindex 1)) c /\ hl_frontier (idx_n (2 * dimindex 1)) (hl_outside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) c)) = hl_path_image (idx_n (2 * dimindex 1)) c)))))))))).
Admitted.

// HOL Light: Multivariate/paths.ml:28619 / JORDAN_COMPONENTS   (hash md5:e3d755b76706102457faabc6b4412ff0)
Theorem hlt_JORDAN_COMPONENTS : forall g :e hl_ty_cart R (idx_n (2 * dimindex 1)) :^: hl_ty_cart R 1, hl_simple_path (idx_n (2 * dimindex 1)) g = 1 /\ hl_pathfinish (idx_n (2 * dimindex 1)) g = hl_pathstart (idx_n (2 * dimindex 1)) g -> hl_components (idx_n (2 * dimindex 1)) (hl_DIFF (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_UNIV (hl_ty_cart R (idx_n (2 * dimindex 1)))) (hl_path_image (idx_n (2 * dimindex 1)) g)) = hl_INSERT (2 :^: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_inside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) g)) (hl_INSERT (2 :^: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_outside (idx_n (2 * dimindex 1)) (hl_path_image (idx_n (2 * dimindex 1)) g)) (hl_EMPTY (2 :^: hl_ty_cart R (idx_n (2 * dimindex 1))))).
Admitted.

// HOL Light: Multivariate/paths.ml:28631 / HOMEOMORPHIC_SEPARATION_SPHERE_CARD_EQ   (hash md5:0e4dd1c5cd78b555a7d9efef3fd67e93)
Theorem hlt_HOMEOMORPHIC_SEPARATION_SPHERE_CARD_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_SUBSET (hl_ty_cart R N) s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (hl_closed N s = 1 /\ (hl_closed N t = 1 /\ hl_homeomorphic N N s t = 1))) -> hl_sym_3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) s)) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) t)) = 1.
Admitted.

// HOL Light: Multivariate/paths.ml:28748 / HOMEOMORPHIC_SEPARATION_SPHERE_HAS_SIZE_EQ   (hash md5:2a842d95ae73dc2dfdea922b5e639240)
Theorem hlt_HOMEOMORPHIC_SEPARATION_SPHERE_HAS_SIZE_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, forall n :e omega, hl_SUBSET (hl_ty_cart R N) s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ hl_homeomorphic N N s t = 1) -> (hl_HAS_SIZE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) s)) n = 1 <-> hl_HAS_SIZE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) t)) n = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:28772 / HOMEOMORPHIC_SEPARATION_SPHERE   (hash md5:17465a5465dc23d872e9fcb994f4c0d9)
Theorem hlt_HOMEOMORPHIC_SEPARATION_SPHERE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_SUBSET (hl_ty_cart R N) s (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ hl_homeomorphic N N s t = 1) -> (hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) s) = 1 <-> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) t) = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:28782 / HAS_SIZE_EQ_COMPONENTS_COMPLEMENTS   (hash md5:328f4bb11ac46cc56df46505004ce238)
Theorem hlt_HAS_SIZE_EQ_COMPONENTS_COMPLEMENTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall n :e omega, (hl_closed N s = 1 /\ hl_closed N t = 1 \/ hl_bounded N s = 1 /\ hl_bounded N t = 1) /\ hl_homeomorphic N N s t = 1 -> (hl_HAS_SIZE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) n = 1 <-> hl_HAS_SIZE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t)) n = 1).
Admitted.

// HOL Light: Multivariate/paths.ml:28870 / HOMEOMORPHIC_SEPARATION   (hash md5:54ebf44ba28b5792476c20d64fe4ecde)
Theorem hlt_HOMEOMORPHIC_SEPARATION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_bounded N t = 1 /\ hl_homeomorphic N N s t = 1) -> (hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 <-> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t) = 1).
Admitted.

