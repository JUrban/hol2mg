// hol2mg literal statements (private): shard derivatives of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/derivatives.ml:18 / has_derivative   (hash md5:df81f1fee9417b946834fb8faf68f613)
Theorem hlt_has_derivative_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f f' :e hl_ty_cart R A :^: hl_ty_cart R B, forall net1 :e hl_ty_net (hl_ty_cart R B), hl_has_derivative B A f f' net1 = 1 <-> hl_linear B A f' = 1 /\ hl_tendsto (hl_ty_cart R B) A (fun y :e hl_ty_cart R B => hl_vmul A (hl_real_inv (hl_vector_norm B (hl_vector_sub B y (hl_netlimit (hl_ty_cart R B) net1)))) (hl_vector_sub A (f y) (hl_vector_add A (f (hl_netlimit (hl_ty_cart R B) net1)) (f' (hl_vector_sub B y (hl_netlimit (hl_ty_cart R B) net1)))))) (hl_vec A (hl_NUMERAL hl_zero)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:29 / has_derivative_within   (hash md5:33236024836f5217e6b6f7835d8d2574)
Theorem hlt_has_derivative_within : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 <-> hl_linear M N f' = 1 /\ hl_tendsto (hl_ty_cart R M) N (fun y :e hl_ty_cart R M => hl_vmul N (hl_real_inv (hl_vector_norm M (hl_vector_sub M y x))) (hl_vector_sub N (f y) (hl_vector_add N (f x) (f' (hl_vector_sub M y x))))) (hl_vec N (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:39 / has_derivative_at   (hash md5:6c176423ae3b330e36a127ac006002a0)
Theorem hlt_has_derivative_at : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M x) = 1 <-> hl_linear M N f' = 1 /\ hl_tendsto (hl_ty_cart R M) N (fun y :e hl_ty_cart R M => hl_vmul N (hl_real_inv (hl_vector_norm M (hl_vector_sub M y x))) (hl_vector_sub N (f y) (hl_vector_add N (f x) (f' (hl_vector_sub M y x))))) (hl_vec N (hl_NUMERAL hl_zero)) (hl_at M x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:52 / HAS_DERIVATIVE_WITHIN   (hash md5:d24749c772378d1fde6c84fa146397cf)
Theorem hlt_HAS_DERIVATIVE_WITHIN : forall A B:set, A <> Empty -> B <> Empty -> forall f f' :e hl_ty_cart R A :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_has_derivative B A f f' (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1 <-> hl_linear B A f' = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x' :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x' s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vector_norm B (hl_vector_sub B x' x)) = 1 /\ hl_real_lt (hl_vector_norm B (hl_vector_sub B x' x)) d = 1) -> hl_real_lt (hl_real_div (hl_vector_norm A (hl_vector_sub A (hl_vector_sub A (f x') (f x)) (f' (hl_vector_sub B x' x)))) (hl_vector_norm B (hl_vector_sub B x' x))) e1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:66 / HAS_DERIVATIVE_AT   (hash md5:142a96245616205601990ee30109fb43)
Theorem hlt_HAS_DERIVATIVE_AT : forall A B:set, A <> Empty -> B <> Empty -> forall f f' :e hl_ty_cart R A :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, hl_has_derivative B A f f' (hl_at B x) = 1 <-> hl_linear B A f' = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x' :e hl_ty_cart R B, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vector_norm B (hl_vector_sub B x' x)) = 1 /\ hl_real_lt (hl_vector_norm B (hl_vector_sub B x' x)) d = 1 -> hl_real_lt (hl_real_div (hl_vector_norm A (hl_vector_sub A (hl_vector_sub A (f x') (f x)) (f' (hl_vector_sub B x' x)))) (hl_vector_norm B (hl_vector_sub B x' x))) e1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:77 / HAS_DERIVATIVE_AT_WITHIN   (hash md5:e0b3b5e9305d8ac0b987d9298a1dd714)
Theorem hlt_HAS_DERIVATIVE_AT_WITHIN : forall A B:set, A <> Empty -> B <> Empty -> forall f' f :e hl_ty_cart R A :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_has_derivative B A f f' (hl_at B x) = 1 -> hl_has_derivative B A f f' (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:82 / HAS_DERIVATIVE_WITHIN_OPEN   (hash md5:41a7992274d0124ee19e4622f899d095)
Theorem hlt_HAS_DERIVATIVE_WITHIN_OPEN : forall A B:set, A <> Empty -> B <> Empty -> forall f f' :e hl_ty_cart R A :^: hl_ty_cart R B, forall a :e hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_IN (hl_ty_cart R B) a s = 1 /\ hl_open B s = 1 -> (hl_has_derivative B A f f' (hl_within (hl_ty_cart R B) (hl_at B a) s) = 1 <-> hl_has_derivative B A f f' (hl_at B a) = 1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:89 / HAS_DERIVATIVE_WITHIN_OPEN_IN   (hash md5:d5d2895b801cfe8fe5de33097d8a80cb)
Theorem hlt_HAS_DERIVATIVE_WITHIN_OPEN_IN : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, forall s u :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M) a s = 1 /\ hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1 -> (hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 <-> hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M a) u) = 1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:101 / HAS_DERIVATIVE_LINEAR   (hash md5:647c4533cef32b1d61a9c458ca52ed09)
Theorem hlt_HAS_DERIVATIVE_LINEAR : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_linear A B f = 1 -> hl_has_derivative A B f f net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:108 / HAS_DERIVATIVE_ID   (hash md5:b1c6496c07264e5857995f02a51d6e7f)
Theorem hlt_HAS_DERIVATIVE_ID : forall A:set, A <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R A), hl_has_derivative A A (fun x :e hl_ty_cart R A => x) (fun h :e hl_ty_cart R A => h) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:112 / HAS_DERIVATIVE_CONST   (hash md5:7fbdeb9a273c3dabea1ef83c2af983d9)
Theorem hlt_HAS_DERIVATIVE_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall c :e hl_ty_cart R B, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_has_derivative A B (fun x :e hl_ty_cart R A => c) (fun h :e hl_ty_cart R A => hl_vec B (hl_NUMERAL hl_zero)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:117 / HAS_DERIVATIVE_LIFT_COMPONENT   (hash md5:a42fc0b7a74ee1972df67e3728a2b82a)
Theorem hlt_HAS_DERIVATIVE_LIFT_COMPONENT : forall N:set, N <> Empty -> forall i :e omega, forall net1 :e hl_ty_net (hl_ty_cart R N), hl_has_derivative N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_vindex R N x i)) (fun x :e hl_ty_cart R N => hl_lift (hl_vindex R N x i)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:123 / HAS_DERIVATIVE_CMUL   (hash md5:86c461efde813e715029b26b43ccd85c)
Theorem hlt_HAS_DERIVATIVE_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f f' :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), forall c :e R, hl_has_derivative A B f f' net1 = 1 -> hl_has_derivative A B (fun x :e hl_ty_cart R A => hl_vmul B c (f x)) (fun h :e hl_ty_cart R A => hl_vmul B c (f' h)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:133 / HAS_DERIVATIVE_CMUL_EQ   (hash md5:997c363842a70ce4756dfa7b7ca245e5)
Theorem hlt_HAS_DERIVATIVE_CMUL_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f f' :e hl_ty_cart R A :^: hl_ty_cart R B, forall net1 :e hl_ty_net (hl_ty_cart R B), forall c :e R, ~ c = hl_real_of_num (hl_NUMERAL hl_zero) -> (hl_has_derivative B A (fun x :e hl_ty_cart R B => hl_vmul A c (f x)) (fun h :e hl_ty_cart R B => hl_vmul A c (f' h)) net1 = 1 <-> hl_has_derivative B A f f' net1 = 1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:144 / HAS_DERIVATIVE_NEG   (hash md5:761c14a6d6c0822c97a815adac08cb48)
Theorem hlt_HAS_DERIVATIVE_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f f' :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_has_derivative A B f f' net1 = 1 -> hl_has_derivative A B (fun x :e hl_ty_cart R A => hl_vector_neg B (f x)) (fun h :e hl_ty_cart R A => hl_vector_neg B (f' h)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:150 / HAS_DERIVATIVE_NEG_EQ   (hash md5:12313960c895e0d18e48185e0175bfa4)
Theorem hlt_HAS_DERIVATIVE_NEG_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f f' :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_has_derivative A B (fun x :e hl_ty_cart R A => hl_vector_neg B (f x)) (fun h :e hl_ty_cart R A => hl_vector_neg B (f' h)) net1 = 1 <-> hl_has_derivative A B f f' net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:157 / HAS_DERIVATIVE_ADD   (hash md5:6eeca142f51b712815ff110ea5dd3281)
Theorem hlt_HAS_DERIVATIVE_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f f' g g' :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_has_derivative A B f f' net1 = 1 /\ hl_has_derivative A B g g' net1 = 1 -> hl_has_derivative A B (fun x :e hl_ty_cart R A => hl_vector_add B (f x) (g x)) (fun h :e hl_ty_cart R A => hl_vector_add B (f' h) (g' h)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:168 / HAS_DERIVATIVE_SUB   (hash md5:d97e54a0382a60d7cbbfe07b34d730d4)
Theorem hlt_HAS_DERIVATIVE_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f f' g g' :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_has_derivative A B f f' net1 = 1 /\ hl_has_derivative A B g g' net1 = 1 -> hl_has_derivative A B (fun x :e hl_ty_cart R A => hl_vector_sub B (f x) (g x)) (fun h :e hl_ty_cart R A => hl_vector_sub B (f' h) (g' h)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:174 / HAS_DERIVATIVE_VSUM   (hash md5:66446592711bcb078de1438c49de3fce)
Theorem hlt_HAS_DERIVATIVE_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f' f :e hl_ty_cart R B :^: hl_ty_cart R A :^: C, forall net1 :e hl_ty_net (hl_ty_cart R A), forall s :e 2 :^: C, hl_FINITE C s = 1 /\ (forall a :e C, hl_IN C a s = 1 -> hl_has_derivative A B (f a) (f' a) net1 = 1) -> hl_has_derivative A B (fun x :e hl_ty_cart R A => hl_vsum C B s (fun a :e C => f a x)) (fun h :e hl_ty_cart R A => hl_vsum C B s (fun a :e C => f' a h)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:186 / HAS_DERIVATIVE_VSUM_NUMSEG   (hash md5:919d3fbfb997d9c0d272e97b14345778)
Theorem hlt_HAS_DERIVATIVE_VSUM_NUMSEG : forall A B:set, A <> Empty -> B <> Empty -> forall f' f :e hl_ty_cart R B :^: hl_ty_cart R A :^: omega, forall net1 :e hl_ty_net (hl_ty_cart R A), forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> hl_has_derivative A B (f i) (f' i) net1 = 1) -> hl_has_derivative A B (fun x :e hl_ty_cart R A => hl_vsum omega B (hl_numseg m n) (fun i :e omega => f i x)) (fun h :e hl_ty_cart R A => hl_vsum omega B (hl_numseg m n) (fun i :e omega => f' i h)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:194 / HAS_DERIVATIVE_COMPONENTWISE_WITHIN   (hash md5:ddbf4b4ff6f588d99616c183e07c3711)
Theorem hlt_HAS_DERIVATIVE_COMPONENTWISE_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_has_derivative M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f' x) i)) (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:208 / HAS_DERIVATIVE_COMPONENTWISE_AT   (hash md5:5f78800e6185a538b365e0174ecf3d6c)
Theorem hlt_HAS_DERIVATIVE_COMPONENTWISE_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M a) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_has_derivative M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f' x) i)) (hl_at M a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:216 / HAS_DERIVATIVE_PASTECART_EQ   (hash md5:f691645a3610cb9366dea06e383d8f2c)
Theorem hlt_HAS_DERIVATIVE_PASTECART_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R M), forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R P :^: hl_ty_cart R M, hl_has_derivative M (hl_ty_finite_sum N P) (fun x :e hl_ty_cart R M => hl_pastecart R N P (f x) (g x)) (fun x :e hl_ty_cart R M => hl_pastecart R N P (f' x) (g' x)) net1 = 1 <-> hl_has_derivative M N f f' net1 = 1 /\ hl_has_derivative M P g g' net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:226 / HAS_DERIVATIVE_PASTECART   (hash md5:0846486b6a55a893c1edd1946ae84a62)
Theorem hlt_HAS_DERIVATIVE_PASTECART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R M), forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R P :^: hl_ty_cart R M, hl_has_derivative M N f f' net1 = 1 /\ hl_has_derivative M P g g' net1 = 1 -> hl_has_derivative M (hl_ty_finite_sum N P) (fun x :e hl_ty_cart R M => hl_pastecart R N P (f x) (g x)) (fun x :e hl_ty_cart R M => hl_pastecart R N P (f' x) (g' x)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:237 / HAS_DERIVATIVE_VMUL_COMPONENT   (hash md5:7230a76243e41091a84de8851e652cc9)
Theorem hlt_HAS_DERIVATIVE_VMUL_COMPONENT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R M), forall c c' :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e omega, forall v :e hl_ty_cart R P, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_has_derivative M N c c' net1 = 1) -> hl_has_derivative M P (fun x :e hl_ty_cart R M => hl_vmul P (hl_vindex R N (c x) k) v) (fun x :e hl_ty_cart R M => hl_vmul P (hl_vindex R N (c' x) k) v) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:257 / HAS_DERIVATIVE_VMUL_DROP   (hash md5:8fc528ec9ba61ea345ec1181c9d1f8b1)
Theorem hlt_HAS_DERIVATIVE_VMUL_DROP : forall A B:set, A <> Empty -> B <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R A), forall c c' :e hl_ty_cart R 1 :^: hl_ty_cart R A, forall v :e hl_ty_cart R B, hl_has_derivative A 1 c c' net1 = 1 -> hl_has_derivative A B (fun x :e hl_ty_cart R A => hl_vmul B (hl_drop (c x)) v) (fun x :e hl_ty_cart R A => hl_vmul B (hl_drop (c' x)) v) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:262 / HAS_DERIVATIVE_LIFT_DOT   (hash md5:29406107ab6879ecf1a08dec9edc1f1e)
Theorem hlt_HAS_DERIVATIVE_LIFT_DOT : forall M N:set, M <> Empty -> N <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R M), forall v :e hl_ty_cart R N, forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, hl_has_derivative M N f f' net1 = 1 -> hl_has_derivative M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_dot N v (f x))) (fun t :e hl_ty_cart R M => hl_lift (hl_dot N v (f' t))) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:280 / HAS_DERIVATIVE_TRANSFORM_WITHIN   (hash md5:9d5dba06847df83e2483691fe54dec34)
Theorem hlt_HAS_DERIVATIVE_TRANSFORM_WITHIN : forall A B:set, A <> Empty -> B <> Empty -> forall f f' g :e hl_ty_cart R A :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, forall d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_IN (hl_ty_cart R B) x s = 1 /\ ((forall x' :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x' s = 1 /\ hl_real_lt (hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) x' x)) d = 1 -> f x' = g x') /\ hl_has_derivative B A f f' (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1)) -> hl_has_derivative B A g f' (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:292 / HAS_DERIVATIVE_TRANSFORM_AT   (hash md5:1c7d88d6e912247282b32ec1b20fc35a)
Theorem hlt_HAS_DERIVATIVE_TRANSFORM_AT : forall A B:set, A <> Empty -> B <> Empty -> forall f f' g :e hl_ty_cart R A :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, forall d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ ((forall x' :e hl_ty_cart R B, hl_real_lt (hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) x' x)) d = 1 -> f x' = g x') /\ hl_has_derivative B A f f' (hl_at B x) = 1) -> hl_has_derivative B A g f' (hl_at B x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:300 / HAS_DERIVATIVE_TRANSFORM_WITHIN_OPEN   (hash md5:bf3f8f5f9e65777407ce5261b5e40982)
Theorem hlt_HAS_DERIVATIVE_TRANSFORM_WITHIN_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f' f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_open M s = 1 /\ (hl_IN (hl_ty_cart R M) x s = 1 /\ ((forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y s = 1 -> f y = g y) /\ hl_has_derivative M N f f' (hl_at M x) = 1)) -> hl_has_derivative M N g f' (hl_at M x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:320 / differentiable   (hash md5:92c8c5b28b47382cc8030fd99f5483e2)
Theorem hlt_differentiable_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall net1 :e hl_ty_net (hl_ty_cart R B), hl_differentiable B A f net1 = 1 <-> exists f' :e hl_ty_cart R A :^: hl_ty_cart R B, hl_has_derivative B A f f' net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:323 / differentiable_on   (hash md5:59b32ab026f8ab9f7dba64581a51fd47)
Theorem hlt_differentiable_on_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_differentiable_on B A f s = 1 <-> forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x s = 1 -> hl_differentiable B A f (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:326 / HAS_DERIVATIVE_IMP_DIFFERENTIABLE   (hash md5:964a868babf37d7aa5224aaf7365273d)
Theorem hlt_HAS_DERIVATIVE_IMP_DIFFERENTIABLE : forall A B:set, A <> Empty -> B <> Empty -> forall f f' :e hl_ty_cart R A :^: hl_ty_cart R B, forall net1 :e hl_ty_net (hl_ty_cart R B), hl_has_derivative B A f f' net1 = 1 -> hl_differentiable B A f net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:330 / DIFFERENTIABLE_AT_WITHIN   (hash md5:115c72592e656ceb18996b1b11591600)
Theorem hlt_DIFFERENTIABLE_AT_WITHIN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, hl_differentiable B A f (hl_at B x) = 1 -> hl_differentiable B A f (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:335 / DIFFERENTIABLE_WITHIN_OPEN   (hash md5:53a19c0ad79211bae838b13fa6a9d7b3)
Theorem hlt_DIFFERENTIABLE_WITHIN_OPEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a :e hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_IN (hl_ty_cart R B) a s = 1 /\ hl_open B s = 1 -> (hl_differentiable B A f (hl_within (hl_ty_cart R B) (hl_at B a) s) = 1 <-> hl_differentiable B A f (hl_at B a) = 1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:341 / DIFFERENTIABLE_AT_IMP_DIFFERENTIABLE_ON   (hash md5:94b41380a230ba26333b80143d8fb1da)
Theorem hlt_DIFFERENTIABLE_AT_IMP_DIFFERENTIABLE_ON : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, (forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x s = 1 -> hl_differentiable B A f (hl_at B x) = 1) -> hl_differentiable_on B A f s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:345 / DIFFERENTIABLE_ON_EQ_DIFFERENTIABLE_AT   (hash md5:b1ee3978cce7aefb519f24fbc33a782b)
Theorem hlt_DIFFERENTIABLE_ON_EQ_DIFFERENTIABLE_AT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_open B s = 1 -> (hl_differentiable_on B A f s = 1 <-> forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x s = 1 -> hl_differentiable B A f (hl_at B x) = 1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:350 / DIFFERENTIABLE_TRANSFORM_WITHIN   (hash md5:af400246747e5c0d82cb6460434bf6db)
Theorem hlt_DIFFERENTIABLE_TRANSFORM_WITHIN : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R A :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, forall d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_IN (hl_ty_cart R B) x s = 1 /\ ((forall x' :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x' s = 1 /\ hl_real_lt (hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) x' x)) d = 1 -> f x' = g x') /\ hl_differentiable B A f (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1)) -> hl_differentiable B A g (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:359 / DIFFERENTIABLE_TRANSFORM_AT   (hash md5:d0a8a1af7c230075f86dd2426198ab28)
Theorem hlt_DIFFERENTIABLE_TRANSFORM_AT : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R A :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, forall d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ ((forall x' :e hl_ty_cart R B, hl_real_lt (hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) x' x)) d = 1 -> f x' = g x') /\ hl_differentiable B A f (hl_at B x) = 1) -> hl_differentiable B A g (hl_at B x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:368 / DIFFERENTIABLE_ON_EQ   (hash md5:605b300cfe6d5c17e30c28c28ed7029b)
Theorem hlt_DIFFERENTIABLE_ON_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = g x) /\ hl_differentiable_on M N f s = 1 -> hl_differentiable_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:381 / frechet_derivative   (hash md5:ea68ae768f1912f0687dcf89206de35f)
Theorem hlt_frechet_derivative_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall net1 :e hl_ty_net (hl_ty_cart R B), hl_frechet_derivative B A f net1 = hl_select (hl_ty_cart R A :^: hl_ty_cart R B) (fun f' :e hl_ty_cart R A :^: hl_ty_cart R B => hl_has_derivative B A f f' net1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:384 / FRECHET_DERIVATIVE_WORKS   (hash md5:8bb7a35738d3bd4f7eb078f6a11ebff2)
Theorem hlt_FRECHET_DERIVATIVE_WORKS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_differentiable A B f net1 = 1 <-> hl_has_derivative A B f (hl_frechet_derivative A B f net1) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:390 / LINEAR_FRECHET_DERIVATIVE   (hash md5:8bca4baaab7a7eef1a80e3f92343fb25)
Theorem hlt_LINEAR_FRECHET_DERIVATIVE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall net1 :e hl_ty_net (hl_ty_cart R B), hl_differentiable B A f net1 = 1 -> hl_linear B A (hl_frechet_derivative B A f net1) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:394 / jacobian   (hash md5:6988cd33f65a45e47449a06e6ea70257)
Theorem hlt_jacobian_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_jacobian A B f net1 = hl_matrix A B (hl_frechet_derivative A B f net1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:397 / JACOBIAN_WORKS   (hash md5:142f57e74121ec0459882d62d9125b2d)
Theorem hlt_JACOBIAN_WORKS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_differentiable A B f net1 = 1 <-> hl_has_derivative A B f (fun h :e hl_ty_cart R A => hl_matrix_vector_mul A B (hl_jacobian A B f net1) h) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:408 / LIM_MUL_NORM_WITHIN   (hash md5:551908ef4288397030a80c2b1d198a9b)
Theorem hlt_LIM_MUL_NORM_WITHIN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a :e hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_tendsto (hl_ty_cart R B) A f (hl_vec A (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R B) (hl_at B a) s) = 1 -> hl_tendsto (hl_ty_cart R B) A (fun x :e hl_ty_cart R B => hl_vmul A (hl_vector_norm B (hl_vector_sub B x a)) (f x)) (hl_vec A (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R B) (hl_at B a) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:420 / DIFFERENTIABLE_IMP_CONTINUOUS_WITHIN   (hash md5:3245928fe3bbc29fe14feedb798a0f22)
Theorem hlt_DIFFERENTIABLE_IMP_CONTINUOUS_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable M N f (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 -> hl_continuous (hl_ty_cart R M) N f (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:444 / DIFFERENTIABLE_IMP_CONTINUOUS_AT   (hash md5:f90be277bbe6d927ff0be6bcc3bb3ea8)
Theorem hlt_DIFFERENTIABLE_IMP_CONTINUOUS_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_differentiable M N f (hl_at M x) = 1 -> hl_continuous (hl_ty_cart R M) N f (hl_at M x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:449 / DIFFERENTIABLE_IMP_CONTINUOUS_ON   (hash md5:7f1426165cdb1324075ec83d7391c89c)
Theorem hlt_DIFFERENTIABLE_IMP_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable_on M N f s = 1 -> hl_continuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:454 / HAS_DERIVATIVE_WITHIN_SUBSET   (hash md5:d0dc5aa3b1d56278a94ecfa53e3d9ed3)
Theorem hlt_HAS_DERIVATIVE_WITHIN_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall f' f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s t :e 2 :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, hl_has_derivative B A f f' (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1 /\ hl_SUBSET (hl_ty_cart R B) t s = 1 -> hl_has_derivative B A f f' (hl_within (hl_ty_cart R B) (hl_at B x) t) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:459 / DIFFERENTIABLE_WITHIN_SUBSET   (hash md5:9f8d889598b40395f970a4ca6b072794)
Theorem hlt_DIFFERENTIABLE_WITHIN_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_differentiable M N f (hl_within (hl_ty_cart R M) (hl_at M x) t) = 1 /\ hl_SUBSET (hl_ty_cart R M) s t = 1 -> hl_differentiable M N f (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:465 / DIFFERENTIABLE_ON_SUBSET   (hash md5:208b1aaa4f313d682e351a49837359d1)
Theorem hlt_DIFFERENTIABLE_ON_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_differentiable_on M N f t = 1 /\ hl_SUBSET (hl_ty_cart R M) s t = 1 -> hl_differentiable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:471 / DIFFERENTIABLE_ON_EMPTY   (hash md5:17a34de0b41bb6bbad65da312f6f8214)
Theorem hlt_DIFFERENTIABLE_ON_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, hl_differentiable_on B A f (hl_EMPTY (hl_ty_cart R B)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:480 / HAS_DERIVATIVE_WITHIN_ALT   (hash md5:7732935e6c6e93de60aa338c6190dd0d)
Theorem hlt_HAS_DERIVATIVE_WITHIN_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 <-> hl_linear M N f' = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y s = 1 /\ hl_real_lt (hl_vector_norm M (hl_vector_sub M y x)) d = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (hl_vector_sub N (f y) (f x)) (f' (hl_vector_sub M y x)))) (hl_real_mul e1 (hl_vector_norm M (hl_vector_sub M y x))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:515 / HAS_DERIVATIVE_AT_ALT   (hash md5:37836bd08fcd598fa8ef9447e61ca9b1)
Theorem hlt_HAS_DERIVATIVE_AT_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M x) = 1 <-> hl_linear M N f' = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall y :e hl_ty_cart R M, hl_real_lt (hl_vector_norm M (hl_vector_sub M y x)) d = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (hl_vector_sub N (f y) (f x)) (f' (hl_vector_sub M y x)))) (hl_real_mul e1 (hl_vector_norm M (hl_vector_sub M y x))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:530 / DIFF_CHAIN_WITHIN   (hash md5:8be48b1f9749482e8cbf5d4a083c3c0f)
Theorem hlt_DIFF_CHAIN_WITHIN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R P :^: hl_ty_cart R N, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ hl_has_derivative N P g g' (hl_within (hl_ty_cart R N) (hl_at N (f x)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) = 1 -> hl_has_derivative M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g' f') (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:605 / DIFF_CHAIN_AT   (hash md5:f166d775ba9cc9add44a84d90f0edc9b)
Theorem hlt_DIFF_CHAIN_AT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R P :^: hl_ty_cart R N, forall x :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M x) = 1 /\ hl_has_derivative N P g g' (hl_at N (f x)) = 1 -> hl_has_derivative M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g' f') (hl_at M x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:614 / HAS_DERIVATIVE_WITHIN_REFLECT   (hash md5:1944a186648ccb6a5994bf36e06ed334)
Theorem hlt_HAS_DERIVATIVE_WITHIN_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_has_derivative M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) (fun x :e hl_ty_cart R M => f' (hl_vector_neg M x)) (hl_within (hl_ty_cart R M) (hl_at M (hl_vector_neg M a)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) s)) = 1 <-> hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:629 / HAS_DERIVATIVE_AT_REFLECT   (hash md5:e2566e60fb6cd27b1db5a652493cadc3)
Theorem hlt_HAS_DERIVATIVE_AT_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_has_derivative M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) (fun x :e hl_ty_cart R M => f' (hl_vector_neg M x)) (hl_at M (hl_vector_neg M a)) = 1 <-> hl_has_derivative M N f f' (hl_at M a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:637 / DIFFERENTIABLE_ON_REFLECT   (hash md5:a636f67867efe0b46e2a68a23041b3a4)
Theorem hlt_DIFFERENTIABLE_ON_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) s) = 1 <-> hl_differentiable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:654 / DIFFERENTIABLE_LINEAR   (hash md5:de79ffdfe75bd443df61b306c0cd224c)
Theorem hlt_DIFFERENTIABLE_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R M), forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_differentiable M N f net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:658 / DIFFERENTIABLE_CONST   (hash md5:bfbbbbe7a1e4cc61b148f0dba2b4e32d)
Theorem hlt_DIFFERENTIABLE_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall c :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R B), hl_differentiable B A (fun z :e hl_ty_cart R B => c) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:662 / DIFFERENTIABLE_ID   (hash md5:3ef37f185411b02149586c55e8cdb5d3)
Theorem hlt_DIFFERENTIABLE_ID : forall A:set, A <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R A), hl_differentiable A A (fun z :e hl_ty_cart R A => z) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:666 / DIFFERENTIABLE_LIFT_COMPONENT   (hash md5:33a2e5b180dad318b58d5c62b99ac480)
Theorem hlt_DIFFERENTIABLE_LIFT_COMPONENT : forall N:set, N <> Empty -> forall i :e omega, forall net1 :e hl_ty_net (hl_ty_cart R N), hl_differentiable N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_vindex R N x i)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:670 / DIFFERENTIABLE_CMUL   (hash md5:79fef729e4a85e3b23327e9766bad437)
Theorem hlt_DIFFERENTIABLE_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R B), forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall c :e R, hl_differentiable B A f net1 = 1 -> hl_differentiable B A (fun x :e hl_ty_cart R B => hl_vmul A c (f x)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:674 / DIFFERENTIABLE_NEG   (hash md5:c73400a6f8b24d3a36cfa35090dd8069)
Theorem hlt_DIFFERENTIABLE_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_differentiable A B f net1 = 1 -> hl_differentiable A B (fun z :e hl_ty_cart R A => hl_vector_neg B (f z)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:678 / DIFFERENTIABLE_ADD   (hash md5:ae6fdc2a620303b5af60c50715bd3b56)
Theorem hlt_DIFFERENTIABLE_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_differentiable A B f net1 = 1 /\ hl_differentiable A B g net1 = 1 -> hl_differentiable A B (fun z :e hl_ty_cart R A => hl_vector_add B (f z) (g z)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:685 / DIFFERENTIABLE_SUB   (hash md5:4039e748b44b68b5eb230fe3c52d8f63)
Theorem hlt_DIFFERENTIABLE_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R A), hl_differentiable A B f net1 = 1 /\ hl_differentiable A B g net1 = 1 -> hl_differentiable A B (fun z :e hl_ty_cart R A => hl_vector_sub B (f z) (g z)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:692 / DIFFERENTIABLE_VSUM   (hash md5:246643dbf47b825600fe0cca9d4e140e)
Theorem hlt_DIFFERENTIABLE_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B :^: C, forall net1 :e hl_ty_net (hl_ty_cart R B), forall s :e 2 :^: C, hl_FINITE C s = 1 /\ (forall a :e C, hl_IN C a s = 1 -> hl_differentiable B A (f a) net1 = 1) -> hl_differentiable B A (fun x :e hl_ty_cart R B => hl_vsum C A s (fun a :e C => f a x)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:703 / DIFFERENTIABLE_VSUM_NUMSEG   (hash md5:d5fe504e938a4b1b93fbe0f1af99d707)
Theorem hlt_DIFFERENTIABLE_VSUM_NUMSEG : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_cart R B :^: hl_ty_cart R C :^: omega, forall net1 :e hl_ty_net (hl_ty_cart R C), forall m n :e omega, hl_FINITE A s = 1 /\ (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> hl_differentiable C B (f i) net1 = 1) -> hl_differentiable C B (fun x :e hl_ty_cart R C => hl_vsum omega B (hl_numseg m n) (fun a :e omega => f a x)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:710 / DIFFERENTIABLE_CHAIN_AT   (hash md5:3ecbdab5b628f7283b76e3ae3c0d4e81)
Theorem hlt_DIFFERENTIABLE_CHAIN_AT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R C, forall g :e hl_ty_cart R B :^: hl_ty_cart R A, forall x :e hl_ty_cart R C, hl_differentiable C A f (hl_at C x) = 1 /\ hl_differentiable A B g (hl_at A (f x)) = 1 -> hl_differentiable C B (hl_o (hl_ty_cart R A) (hl_ty_cart R B) (hl_ty_cart R C) g f) (hl_at C x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:717 / DIFFERENTIABLE_CHAIN_WITHIN   (hash md5:4811bfc0dd5fd4faa3d6ad2e089cbd2f)
Theorem hlt_DIFFERENTIABLE_CHAIN_WITHIN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R C, forall g :e hl_ty_cart R B :^: hl_ty_cart R A, forall x :e hl_ty_cart R C, forall s :e 2 :^: hl_ty_cart R C, hl_differentiable C A f (hl_within (hl_ty_cart R C) (hl_at C x) s) = 1 /\ hl_differentiable A B g (hl_within (hl_ty_cart R A) (hl_at A (f x)) (hl_IMAGE (hl_ty_cart R C) (hl_ty_cart R A) f s)) = 1 -> hl_differentiable C B (hl_o (hl_ty_cart R A) (hl_ty_cart R B) (hl_ty_cart R C) g f) (hl_within (hl_ty_cart R C) (hl_at C x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:724 / DIFFERENTIABLE_COMPONENTWISE_WITHIN   (hash md5:a6f73fb18a128460dcd7148dfc9e40a2)
Theorem hlt_DIFFERENTIABLE_COMPONENTWISE_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable M N f (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_differentiable M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:740 / DIFFERENTIABLE_COMPONENTWISE_AT   (hash md5:6613b9493472d3a2d380977bd6308956)
Theorem hlt_DIFFERENTIABLE_COMPONENTWISE_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_differentiable M N f (hl_at M a) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_differentiable M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) (hl_at M a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:752 / DIFFERENTIABLE_ON_LINEAR   (hash md5:b2b51bef2168ca9fdd9e23a1c8c5fd8b)
Theorem hlt_DIFFERENTIABLE_ON_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_differentiable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:756 / DIFFERENTIABLE_ON_CONST   (hash md5:7746644e4107d5ba3824af59e168e5cb)
Theorem hlt_DIFFERENTIABLE_ON_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R B, forall c :e hl_ty_cart R A, hl_differentiable_on B A (fun z :e hl_ty_cart R B => c) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:760 / DIFFERENTIABLE_ON_ID   (hash md5:926e801d61c62b10ab0a7c40ec7cc149)
Theorem hlt_DIFFERENTIABLE_ON_ID : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_differentiable_on A A (fun z :e hl_ty_cart R A => z) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:764 / DIFFERENTIABLE_ON_COMPOSE   (hash md5:d9cf3a6cd5de0f34045c30a9723f518d)
Theorem hlt_DIFFERENTIABLE_ON_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall g :e hl_ty_cart R C :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R B, hl_differentiable_on B A f s = 1 /\ hl_differentiable_on A C g (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1 -> hl_differentiable_on B C (hl_o (hl_ty_cart R A) (hl_ty_cart R C) (hl_ty_cart R B) g f) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:770 / DIFFERENTIABLE_ON_NEG   (hash md5:3f88e0292cd74d8277573057450f630a)
Theorem hlt_DIFFERENTIABLE_ON_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_differentiable_on A B f s = 1 -> hl_differentiable_on A B (fun z :e hl_ty_cart R A => hl_vector_neg B (f z)) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:774 / DIFFERENTIABLE_ON_ADD   (hash md5:060dd9d04f12b7435c996242e04ccb07)
Theorem hlt_DIFFERENTIABLE_ON_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_differentiable_on A B f s = 1 /\ hl_differentiable_on A B g s = 1 -> hl_differentiable_on A B (fun z :e hl_ty_cart R A => hl_vector_add B (f z) (g z)) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:780 / DIFFERENTIABLE_ON_SUB   (hash md5:d14311d58633b4b09a9e7ca2fe56f985)
Theorem hlt_DIFFERENTIABLE_ON_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_differentiable_on A B f s = 1 /\ hl_differentiable_on A B g s = 1 -> hl_differentiable_on A B (fun z :e hl_ty_cart R A => hl_vector_sub B (f z) (g z)) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:793 / FRECHET_DERIVATIVE_UNIQUE_WITHIN   (hash md5:1082cc736a48855ccfecfd4ef05eb1a7)
Theorem hlt_FRECHET_DERIVATIVE_UNIQUE_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f f' f'' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ (hl_has_derivative M N f f'' (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ (forall i :e omega, forall e1 :e R, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_abs d) = 1 /\ (hl_real_lt (hl_real_abs d) e1 = 1 /\ hl_IN (hl_ty_cart R M) (hl_vector_add M x (hl_vmul M d (hl_basis M i))) s = 1))) -> f' = f''.
Admitted.

// HOL Light: Multivariate/derivatives.ml:841 / FRECHET_DERIVATIVE_UNIQUE_AT   (hash md5:ebae4573372d80051a7be58e68714391)
Theorem hlt_FRECHET_DERIVATIVE_UNIQUE_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f f' f'' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M x) = 1 /\ hl_has_derivative M N f f'' (hl_at M x) = 1 -> f' = f''.
Admitted.

// HOL Light: Multivariate/derivatives.ml:851 / HAS_FRECHET_DERIVATIVE_UNIQUE_AT   (hash md5:33cdf401c52f4c3905a02e7e9a6ccca0)
Theorem hlt_HAS_FRECHET_DERIVATIVE_UNIQUE_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M x) = 1 -> hl_frechet_derivative M N f (hl_at M x) = f'.
Admitted.

// HOL Light: Multivariate/derivatives.ml:860 / FRECHET_DERIVATIVE_CONST_AT   (hash md5:ccc6fecc7983bf8ed876478c3e3c04d0)
Theorem hlt_FRECHET_DERIVATIVE_CONST_AT : forall M N:set, M <> Empty -> N <> Empty -> forall c :e hl_ty_cart R N, forall a :e hl_ty_cart R M, hl_frechet_derivative M N (fun x :e hl_ty_cart R M => c) (hl_at M a) = fun h :e hl_ty_cart R M => hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/derivatives.ml:865 / FRECHET_DERIVATIVE_UNIQUE_WITHIN_CLOSED_INTERVAL   (hash md5:44737626ec8711102c47ad305c1c01df)
Theorem hlt_FRECHET_DERIVATIVE_UNIQUE_WITHIN_CLOSED_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f f' f'' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x a b :e hl_ty_cart R M, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> hl_real_lt (hl_vindex R M a i) (hl_vindex R M b i) = 1) /\ (hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1 /\ hl_has_derivative M N f f'' (hl_within (hl_ty_cart R M) (hl_at M x) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1)) -> f' = f''.
Admitted.

// HOL Light: Multivariate/derivatives.ml:898 / FRECHET_DERIVATIVE_UNIQUE_WITHIN_OPEN_INTERVAL   (hash md5:cff868899e604500fb096e6bc8799df4)
Theorem hlt_FRECHET_DERIVATIVE_UNIQUE_WITHIN_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f f' f'' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x a b :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) = 1 /\ (hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b))) = 1 /\ hl_has_derivative M N f f'' (hl_within (hl_ty_cart R M) (hl_at M x) (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b))) = 1) -> f' = f''.
Admitted.

// HOL Light: Multivariate/derivatives.ml:932 / FRECHET_DERIVATIVE_AT   (hash md5:55e305e7bbf935deab29a4e958eaab64)
Theorem hlt_FRECHET_DERIVATIVE_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M x) = 1 -> f' = hl_frechet_derivative M N f (hl_at M x).
Admitted.

// HOL Light: Multivariate/derivatives.ml:938 / FRECHET_DERIVATIVE_WITHIN_CLOSED_INTERVAL   (hash md5:7aa2607a24330a25a5fda836a821a2bc)
Theorem hlt_FRECHET_DERIVATIVE_WITHIN_CLOSED_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x a b :e hl_ty_cart R M, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> hl_real_lt (hl_vindex R M a i) (hl_vindex R M b i) = 1) /\ (hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1) -> hl_frechet_derivative M N f (hl_within (hl_ty_cart R M) (hl_at M x) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = f'.
Admitted.

// HOL Light: Multivariate/derivatives.ml:953 / DIFFERENTIAL_COMPONENT_POS_AT_MINIMUM   (hash md5:986c1e841c62b73da72749534cd2be21)
Theorem hlt_DIFFERENTIAL_COMPONENT_POS_AT_MINIMUM : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, forall e1 :e R, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_convex M s = 1 /\ (hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (forall w :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) w (hl_INTER (hl_ty_cart R M) s (hl_ball M (hl_pair (hl_ty_cart R M) R x e1))) = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_vindex R N (f w) k) = 1)))))) -> forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (f' (hl_vector_sub M y x)) k) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1013 / DIFFERENTIAL_COMPONENT_NEG_AT_MAXIMUM   (hash md5:cd20815ca054bb252b9665996aec0789)
Theorem hlt_DIFFERENTIAL_COMPONENT_NEG_AT_MAXIMUM : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, forall e1 :e R, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_convex M s = 1 /\ (hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (forall w :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) w (hl_INTER (hl_ty_cart R M) s (hl_ball M (hl_pair (hl_ty_cart R M) R x e1))) = 1 -> hl_real_le (hl_vindex R N (f w) k) (hl_vindex R N (f x) k) = 1)))))) -> forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vindex R N (f' (hl_vector_sub M y x)) k) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1027 / DROP_DIFFERENTIAL_POS_AT_MINIMUM   (hash md5:9c02dd6db19f841903f589b3d87852a9)
Theorem hlt_DROP_DIFFERENTIAL_POS_AT_MINIMUM : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_convex N s = 1 /\ (hl_has_derivative N 1 f f' (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (forall w :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) w (hl_INTER (hl_ty_cart R N) s (hl_ball N (hl_pair (hl_ty_cart R N) R x e1))) = 1 -> hl_real_le (hl_drop (f x)) (hl_drop (f w)) = 1)))) -> forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f' (hl_vector_sub N y x))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1037 / DROP_DIFFERENTIAL_NEG_AT_MAXIMUM   (hash md5:afe597b7d7027e68e3dd20e5d2770e6a)
Theorem hlt_DROP_DIFFERENTIAL_NEG_AT_MAXIMUM : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_convex N s = 1 /\ (hl_has_derivative N 1 f f' (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (forall w :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) w (hl_INTER (hl_ty_cart R N) s (hl_ball N (hl_pair (hl_ty_cart R N) R x e1))) = 1 -> hl_real_le (hl_drop (f w)) (hl_drop (f x)) = 1)))) -> forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (hl_drop (f' (hl_vector_sub N y x))) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1047 / DIFFERENTIAL_COMPONENT_ZERO_AT_MAXMIN   (hash md5:338d7f3b4325aff6b892068ab9ffe925)
Theorem hlt_DIFFERENTIAL_COMPONENT_ZERO_AT_MAXMIN : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_open M s = 1 /\ (hl_has_derivative M N f f' (hl_at M x) = 1 /\ ((forall w :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) w s = 1 -> hl_real_le (hl_vindex R N (f w) k) (hl_vindex R N (f x) k) = 1) \/ (forall w :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) w s = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_vindex R N (f w) k) = 1)))))) -> forall h :e hl_ty_cart R M, hl_vindex R N (f' h) k = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1091 / DIFFERENTIAL_ZERO_MAXMIN_COMPONENT   (hash md5:8c117eef0bd262eab5751515fad53fb1)
Theorem hlt_DIFFERENTIAL_ZERO_MAXMIN_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, forall e1 :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (((forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y (hl_ball M (hl_pair (hl_ty_cart R M) R x e1)) = 1 -> hl_real_le (hl_vindex R N (f y) k) (hl_vindex R N (f x) k) = 1) \/ (forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y (hl_ball M (hl_pair (hl_ty_cart R M) R x e1)) = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_vindex R N (f y) k) = 1)) /\ hl_differentiable M N f (hl_at M x) = 1))) -> hl_vindex (hl_ty_cart R M) N (hl_jacobian M N f (hl_at M x)) k = hl_vec M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1106 / DIFFERENTIAL_ZERO_MAXMIN   (hash md5:e27027adb93cbf8671582ff0dfcbc34c)
Theorem hlt_DIFFERENTIAL_ZERO_MAXMIN : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_open N s = 1 /\ (hl_has_derivative N 1 f f' (hl_at N x) = 1 /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) \/ (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1)))) -> f' = fun v :e hl_ty_cart R N => hl_vec 1 (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1123 / ROLLE   (hash md5:ec6f403dbedee8eea517b2d6ae083ab7)
Theorem hlt_ROLLE : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_real_lt (hl_drop a) (hl_drop b) = 1 /\ (f a = f b /\ (hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 -> hl_has_derivative 1 1 f (f' x) (hl_at 1 x) = 1))) -> exists x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 /\ f' x = fun v :e hl_ty_cart R 1 => hl_vec 1 (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1143 / MVT   (hash md5:c8a85092a99726fac86f4758982856c4)
Theorem hlt_MVT : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_real_lt (hl_drop a) (hl_drop b) = 1 /\ (hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 -> hl_has_derivative 1 1 f (f' x) (hl_at 1 x) = 1)) -> exists x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 /\ hl_vector_sub 1 (f b) (f a) = f' x (hl_vector_sub 1 b a).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1168 / MVT_SIMPLE   (hash md5:1082e5d7f6968707638512ec5b04503f)
Theorem hlt_MVT_SIMPLE : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_real_lt (hl_drop a) (hl_drop b) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_derivative 1 1 f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) -> exists x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 /\ hl_vector_sub 1 (f b) (f a) = f' x (hl_vector_sub 1 b a).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1184 / MVT_VERY_SIMPLE   (hash md5:e7b1916ca15761bc15271fca5d61ed32)
Theorem hlt_MVT_VERY_SIMPLE : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_derivative 1 1 f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) -> exists x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_vector_sub 1 (f b) (f a) = f' x (hl_vector_sub 1 b a).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1200 / MVT_SEGMENT   (hash md5:3c2012aae1cca726e90aa3e265fe46ca)
Theorem hlt_MVT_SEGMENT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall f' :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, ~ a = b /\ (hl_continuous_on N 1 f (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 -> hl_has_derivative N 1 f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b))) = 1)) -> exists c :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) c (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 /\ hl_vector_sub 1 (f b) (f a) = f' c (hl_vector_sub N b a).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1246 / MVT_SEGMENT_SIMPLE   (hash md5:8e771a30701f324909cfdc13e4bf225f)
Theorem hlt_MVT_SEGMENT_SIMPLE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall f' :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, ~ a = b /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_has_derivative N 1 f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b))) = 1) -> exists c :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) c (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 /\ hl_vector_sub 1 (f b) (f a) = f' c (hl_vector_sub N b a).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1277 / MVT_GENERAL   (hash md5:c2fafb4819859e80fd0e1f708418fd2d)
Theorem hlt_MVT_GENERAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R N :^: hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_real_lt (hl_drop a) (hl_drop b) = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 -> hl_has_derivative 1 N f (f' x) (hl_at 1 x) = 1)) -> exists x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 /\ hl_real_le (hl_vector_norm N (hl_vector_sub N (f b) (f a))) (hl_vector_norm N (f' x (hl_vector_sub 1 b a))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1308 / DIFFERENTIABLE_BOUND   (hash md5:c538d90bba19f3f1a86abf2d4da54efa)
Theorem hlt_DIFFERENTIABLE_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_convex M s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (f' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_onorm M N (f' x)) B = 1)) -> forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1368 / ONORM_DERIVATIVES_LE   (hash md5:a70cd717ef35c82b313230035dbe8515)
Theorem hlt_ONORM_DERIVATIVES_LE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R P :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M x) = 1 /\ (hl_has_derivative M P g g' (hl_at M x) = 1 /\ hl_eventually (hl_ty_cart R M) (fun y :e hl_ty_cart R M => hl_real_le (hl_vector_norm N (hl_vector_sub N (f y) (f x))) (hl_vector_norm P (hl_vector_sub P (g y) (g x)))) (hl_at M x) = 1) -> hl_real_le (hl_onorm M N f') (hl_onorm M P g') = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1419 / HAS_DERIVATIVE_ZERO_CONSTANT   (hash md5:e360c7d424fb32c5e756bca0f9159768)
Theorem hlt_HAS_DERIVATIVE_ZERO_CONSTANT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_convex M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (fun h :e hl_ty_cart R M => hl_vec N (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) -> exists c :e hl_ty_cart R N, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = c.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1430 / HAS_DERIVATIVE_ZERO_UNIQUE   (hash md5:7da08a57102284727112061766ed0ece)
Theorem hlt_HAS_DERIVATIVE_ZERO_UNIQUE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, forall a :e hl_ty_cart R B, forall c :e hl_ty_cart R A, hl_convex B s = 1 /\ (hl_IN (hl_ty_cart R B) a s = 1 /\ (f a = c /\ (forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x s = 1 -> hl_has_derivative B A f (fun h :e hl_ty_cart R B => hl_vec A (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R B) (hl_at B x) s) = 1))) -> forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x s = 1 -> f x = c.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1436 / HAS_DERIVATIVE_ZERO_CONNECTED_CONSTANT   (hash md5:50e86d04c3974ba91687a23495607171)
Theorem hlt_HAS_DERIVATIVE_ZERO_CONNECTED_CONSTANT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_open M s = 1 /\ (hl_connected M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (fun h :e hl_ty_cart R M => hl_vec N (hl_NUMERAL hl_zero)) (hl_at M x) = 1)) -> exists c :e hl_ty_cart R N, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = c.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1463 / HAS_DERIVATIVE_ZERO_CONNECTED_UNIQUE   (hash md5:c92f8660209f09d0893d239ea19fbb7e)
Theorem hlt_HAS_DERIVATIVE_ZERO_CONNECTED_UNIQUE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, forall a :e hl_ty_cart R B, forall c :e hl_ty_cart R A, hl_open B s = 1 /\ (hl_connected B s = 1 /\ (hl_IN (hl_ty_cart R B) a s = 1 /\ (f a = c /\ (forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x s = 1 -> hl_has_derivative B A f (fun h :e hl_ty_cart R B => hl_vec A (hl_NUMERAL hl_zero)) (hl_at B x) = 1)))) -> forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x s = 1 -> f x = c.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1473 / DIFFERENTIABLE_DISCRETE_PREIMAGES   (hash md5:660be10942a9143e299df8834a6dce22)
Theorem hlt_DIFFERENTIABLE_DISCRETE_PREIMAGES : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall y :e hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y -> ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6035 :e hl_ty_cart R N => if exists l :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6035 (if hl_IN (hl_ty_cart R N) l s = 1 /\ hl_limit_point_of N l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6034 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6034 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1 then 1 else 0) l = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1522 / DIFFERENTIABLE_DISCRETE_PREIMAGES_CLOSED   (hash md5:0f332ca6cb41637d959ec54bfe4e4078)
Theorem hlt_DIFFERENTIABLE_DISCRETE_PREIMAGES_CLOSED : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall y :e hl_ty_cart R N, hl_closed N s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y -> ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero))) -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6039 :e hl_ty_cart R N => if exists l :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6039 (hl_limit_point_of N l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6038 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6038 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) l = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/derivatives.ml:1539 / DIFFERENTIABLE_COUNTABLE_PREIMAGES   (hash md5:a647d06df23596b7eebc308e9a803e69)
Theorem hlt_DIFFERENTIABLE_COUNTABLE_PREIMAGES : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall y :e hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y -> ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_COUNTABLE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6042 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6042 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1550 / DIFFERENTIABLE_FINITE_PREIMAGES   (hash md5:76b62b28dabb113b9f572d2d08af55d8)
Theorem hlt_DIFFERENTIABLE_FINITE_PREIMAGES : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall y :e hl_ty_cart R N, hl_compact N s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y -> ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero))) -> hl_FINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6043 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6043 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1562 / DIFFERENTIABLE_FINITE_PREIMAGES_GEN   (hash md5:f35dd89379fe604d63917e6a7742ae3a)
Theorem hlt_DIFFERENTIABLE_FINITE_PREIMAGES_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall y :e hl_ty_cart R N, hl_compact N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6047 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6047 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y -> ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero))) -> hl_FINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6048 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6048 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1581 / HAS_DERIVATIVE_INVERSE_WITHIN   (hash md5:5c364637a4bff8e56f9d2f65056ecdbe)
Theorem hlt_HAS_DERIVATIVE_INVERSE_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g g' :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) a s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x) /\ (hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 /\ (hl_linear N M g' = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g' f' = hl_I (hl_ty_cart R M) /\ hl_continuous (hl_ty_cart R N) M g (hl_within (hl_ty_cart R N) (hl_at N (f a)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) = 1)))) -> hl_has_derivative N M g g' (hl_within (hl_ty_cart R N) (hl_at N (f a)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1654 / HAS_DERIVATIVE_INVERSE_BASIC   (hash md5:a5a16227a1952732f8724440a66f199c)
Theorem hlt_HAS_DERIVATIVE_INVERSE_BASIC : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R N, forall y :e hl_ty_cart R N, hl_has_derivative M N f f' (hl_at M (g y)) = 1 /\ (hl_linear N M g' = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g' f' = hl_I (hl_ty_cart R M) /\ (hl_continuous (hl_ty_cart R N) M g (hl_at N y) = 1 /\ (hl_open N t = 1 /\ (hl_IN (hl_ty_cart R N) y t = 1 /\ (forall z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) z t = 1 -> f (g z) = z)))))) -> hl_has_derivative N M g g' (hl_at N y) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1745 / HAS_DERIVATIVE_INVERSE_BASIC_X   (hash md5:4e634a4aa61cfc3291aebd2a8726a95a)
Theorem hlt_HAS_DERIVATIVE_INVERSE_BASIC_X : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M x) = 1 /\ (hl_linear N M g' = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g' f' = hl_I (hl_ty_cart R M) /\ (hl_continuous (hl_ty_cart R N) M g (hl_at N (f x)) = 1 /\ (g (f x) = x /\ (hl_open N t = 1 /\ (hl_IN (hl_ty_cart R N) (f x) t = 1 /\ (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> f (g y) = y))))))) -> hl_has_derivative N M g g' (hl_at N (f x)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1757 / HAS_DERIVATIVE_INVERSE_DIEUDONNE   (hash md5:dc6312ba8a6876a57803e18e7d73f1e4)
Theorem hlt_HAS_DERIVATIVE_INVERSE_DIEUDONNE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_open M s = 1 /\ (hl_open N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_continuous_on N M g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x)))) -> forall f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R N, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_has_derivative M N f f' (hl_at M x) = 1 /\ (hl_linear N M g' = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g' f' = hl_I (hl_ty_cart R M))) -> hl_has_derivative N M g g' (hl_at N (f x)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1774 / HAS_DERIVATIVE_INVERSE   (hash md5:b581f5f5913b22c4e3c9c038310ddcad)
Theorem hlt_HAS_DERIVATIVE_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_compact M s = 1 /\ (hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R N) (f x) (hl_interior N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) = 1 /\ (hl_continuous_on M N f s = 1 /\ ((forall x1 :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x1 s = 1 -> g (f x1) = x1) /\ (hl_has_derivative M N f f' (hl_at M x) = 1 /\ (hl_linear N M g' = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g' f' = hl_I (hl_ty_cart R M))))))) -> hl_has_derivative N M g g' (hl_at N (f x)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1791 / BROUWER_SURJECTIVE   (hash md5:86457240c33259edadb93ca909236ee3)
Theorem hlt_BROUWER_SURJECTIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_compact N t = 1 /\ (hl_convex N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ (hl_continuous_on N N f t = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N x (hl_vector_sub N y (f y))) t = 1)))) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 /\ f y = x.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1802 / BROUWER_SURJECTIVE_CBALL   (hash md5:336b89737032b050fd88f9e3997bb462)
Theorem hlt_BROUWER_SURJECTIVE_CBALL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_continuous_on N N f (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N x (hl_vector_sub N y (f y))) (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) = 1)) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) = 1 /\ f y = x.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1816 / SUSSMANN_OPEN_MAPPING   (hash md5:85b710e93f9cf0e58040569f1253649a)
Theorem hlt_SUSSMANN_OPEN_MAPPING : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_open M s = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_has_derivative M N f f' (hl_at M x) = 1 /\ (hl_linear N M g' = 1 /\ hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f' g' = hl_I (hl_ty_cart R N))))) -> forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_IN (hl_ty_cart R M) x (hl_interior M t) = 1 -> hl_IN (hl_ty_cart R N) (f x) (hl_interior N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1910 / DIFFERENTIABLE_IMP_OPEN_MAP_GEN   (hash md5:0d8ae016b9b877054845ca0c4438c912)
Theorem hlt_DIFFERENTIABLE_IMP_OPEN_MAP_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_open M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (f' x) (hl_at M x) = 1 /\ (hl_linear N M (g' x) = 1 /\ hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) (f' x) (g' x) = hl_I (hl_ty_cart R N))) -> hl_open N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1931 / DIFFERENTIABLE_IMP_OPEN_MAP   (hash md5:7b08e1a67dac90a9839286ea4e2fc06c)
Theorem hlt_DIFFERENTIABLE_IMP_OPEN_MAP : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_open N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1942 / DIFFERENTIABLE_IMP_OPEN_MAP_ALT   (hash md5:22e5d6539266518a48e9709d9d46ad19)
Theorem hlt_DIFFERENTIABLE_IMP_OPEN_MAP_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero)) /\ (hl_open N t = 1 /\ hl_SUBSET (hl_ty_cart R N) t s = 1) -> hl_open N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:1966 / HAS_DERIVATIVE_INVERSE_STRONG   (hash md5:0980dce7cc6eb33d1b3c69bb968f099f)
Theorem hlt_HAS_DERIVATIVE_INVERSE_STRONG : forall N:set, N <> Empty -> forall f g f' g' :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_continuous_on N N f s = 1 /\ ((forall x1 :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x1 s = 1 -> g (f x1) = x1) /\ (hl_has_derivative N N f f' (hl_at N x) = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f' g' = hl_I (hl_ty_cart R N))))) -> hl_has_derivative N N g g' (hl_at N (f x)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2010 / HAS_DERIVATIVE_INVERSE_STRONG_X   (hash md5:04cc98bf73b4d4a7c6b2052835ac17ec)
Theorem hlt_HAS_DERIVATIVE_INVERSE_STRONG_X : forall N:set, N <> Empty -> forall f g f' g' :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall y :e hl_ty_cart R N, hl_open N s = 1 /\ (hl_IN (hl_ty_cart R N) (g y) s = 1 /\ (hl_continuous_on N N f s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> g (f x) = x) /\ (hl_has_derivative N N f f' (hl_at N (g y)) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f' g' = hl_I (hl_ty_cart R N) /\ f (g y) = y))))) -> hl_has_derivative N N g g' (hl_at N y) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2027 / HAS_DERIVATIVE_INVERSE_ON   (hash md5:576bfc9d0c26ff33580c7ab3292fedc8)
Theorem hlt_HAS_DERIVATIVE_INVERSE_ON : forall N:set, N <> Empty -> forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R N, forall g' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ (g (f x) = x /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' x) (g' x) = hl_I (hl_ty_cart R N))) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N g (g' x) (hl_at N (f x)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2043 / HAS_DERIVATIVE_SEQUENCE_LIPSCHITZ   (hash md5:4e1118a103ea39f094d93c25cc0d6d65)
Theorem hlt_HAS_DERIVATIVE_SEQUENCE_LIPSCHITZ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M :^: omega, forall g' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_convex M s = 1 /\ ((forall n :e omega, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N (f n) (f' n x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall n :e omega, forall x h :e hl_ty_cart R M, hl_ge n N1 = 1 /\ hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f' n x h) (g' x h))) (hl_real_mul e1 (hl_vector_norm M h)) = 1)) -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall m n :e omega, forall x y :e hl_ty_cart R M, hl_ge m N1 = 1 /\ (hl_ge n N1 = 1 /\ (hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1)) -> hl_real_le (hl_vector_norm N (hl_vector_sub N (hl_vector_sub N (f m x) (f n x)) (hl_vector_sub N (f m y) (f n y)))) (hl_real_mul e1 (hl_vector_norm M (hl_vector_sub M x y))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2075 / HAS_DERIVATIVE_SEQUENCE   (hash md5:e2772b29aacf7de506b60adc85aadca4)
Theorem hlt_HAS_DERIVATIVE_SEQUENCE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M :^: omega, forall g' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_convex M s = 1 /\ ((forall n :e omega, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N (f n) (f' n x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ ((forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall n :e omega, forall x h :e hl_ty_cart R M, hl_ge n N1 = 1 /\ hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f' n x h) (g' x h))) (hl_real_mul e1 (hl_vector_norm M h)) = 1) /\ (exists x :e hl_ty_cart R M, exists l :e hl_ty_cart R N, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_tendsto omega N (fun n :e omega => f n x) l hl_sequentially = 1))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_tendsto omega N (fun n :e omega => f n x) (g x) hl_sequentially = 1 /\ hl_has_derivative M N g (g' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2218 / HAS_ANTIDERIVATIVE_SEQUENCE   (hash md5:d52e67f0e16fe78418f94cffff89753a)
Theorem hlt_HAS_ANTIDERIVATIVE_SEQUENCE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M :^: omega, forall g' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_convex M s = 1 /\ ((forall n :e omega, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N (f n) (f' n x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall n :e omega, forall x h :e hl_ty_cart R M, hl_ge n N1 = 1 /\ hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f' n x h) (g' x h))) (hl_real_mul e1 (hl_vector_norm M h)) = 1)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N g (g' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2247 / HAS_ANTIDERIVATIVE_LIMIT   (hash md5:6832f65746d3a3754bf99974122582fa)
Theorem hlt_HAS_ANTIDERIVATIVE_LIMIT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall g' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_convex M s = 1 /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (f' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ forall h :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (hl_vector_sub N (f' x h) (g' x h))) (hl_real_mul e1 (hl_vector_norm M h)) = 1) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N g (g' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2282 / HAS_DERIVATIVE_SERIES   (hash md5:adb59276069e1ee8764300a645cae8d8)
Theorem hlt_HAS_DERIVATIVE_SERIES : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M :^: omega, forall g' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall k :e 2 :^: omega, hl_convex M s = 1 /\ ((forall n :e omega, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N (f n) (f' n x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ ((forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall n :e omega, forall x h :e hl_ty_cart R M, hl_ge n N1 = 1 /\ hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (hl_vsum omega N (hl_INTER omega k (hl_numseg (hl_NUMERAL hl_zero) n)) (fun i :e omega => f' i x h)) (g' x h))) (hl_real_mul e1 (hl_vector_norm M h)) = 1) /\ (exists x :e hl_ty_cart R M, exists l :e hl_ty_cart R N, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_sums N (fun n :e omega => f n x) l k = 1))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_sums N (fun n :e omega => f n x) (g x) k = 1 /\ hl_has_derivative M N g (g' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2303 / HAS_DERIVATIVE_BILINEAR_WITHIN   (hash md5:1c7449bd8ad2a242275ad10698315d28)
Theorem hlt_HAS_DERIVATIVE_BILINEAR_WITHIN : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall h :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R Q, forall g :e hl_ty_cart R N :^: hl_ty_cart R Q, forall f' :e hl_ty_cart R M :^: hl_ty_cart R Q, forall g' :e hl_ty_cart R N :^: hl_ty_cart R Q, forall x :e hl_ty_cart R Q, forall s :e 2 :^: hl_ty_cart R Q, hl_has_derivative Q M f f' (hl_within (hl_ty_cart R Q) (hl_at Q x) s) = 1 /\ (hl_has_derivative Q N g g' (hl_within (hl_ty_cart R Q) (hl_at Q x) s) = 1 /\ hl_bilinear M N P h = 1) -> hl_has_derivative Q P (fun x1 :e hl_ty_cart R Q => h (f x1) (g x1)) (fun d :e hl_ty_cart R Q => hl_vector_add P (h (f x) (g' d)) (h (f' d) (g x))) (hl_within (hl_ty_cart R Q) (hl_at Q x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2373 / HAS_DERIVATIVE_BILINEAR_AT   (hash md5:0cf7722e0e0f3f2a7bc61bb8cc7dd994)
Theorem hlt_HAS_DERIVATIVE_BILINEAR_AT : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall h :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R Q, forall g :e hl_ty_cart R N :^: hl_ty_cart R Q, forall f' :e hl_ty_cart R M :^: hl_ty_cart R Q, forall g' :e hl_ty_cart R N :^: hl_ty_cart R Q, forall x :e hl_ty_cart R Q, hl_has_derivative Q M f f' (hl_at Q x) = 1 /\ (hl_has_derivative Q N g g' (hl_at Q x) = 1 /\ hl_bilinear M N P h = 1) -> hl_has_derivative Q P (fun x1 :e hl_ty_cart R Q => h (f x1) (g x1)) (fun d :e hl_ty_cart R Q => hl_vector_add P (h (f x) (g' d)) (h (f' d) (g x))) (hl_at Q x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2384 / BILINEAR_DIFFERENTIABLE_AT_COMPOSE   (hash md5:383818b075e1c6a83ee5f202cc31d336)
Theorem hlt_BILINEAR_DIFFERENTIABLE_AT_COMPOSE : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall h :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall a :e hl_ty_cart R M, hl_differentiable M N f (hl_at M a) = 1 /\ (hl_differentiable M P g (hl_at M a) = 1 /\ hl_bilinear N P Q h = 1) -> hl_differentiable M Q (fun x :e hl_ty_cart R M => h (f x) (g x)) (hl_at M a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2393 / BILINEAR_DIFFERENTIABLE_WITHIN_COMPOSE   (hash md5:9953c9f44d30d1315527c3fc2130ab37)
Theorem hlt_BILINEAR_DIFFERENTIABLE_WITHIN_COMPOSE : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall h :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable M N f (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ (hl_differentiable M P g (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ hl_bilinear N P Q h = 1) -> hl_differentiable M Q (fun x1 :e hl_ty_cart R M => h (f x1) (g x1)) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2403 / BILINEAR_DIFFERENTIABLE_ON_COMPOSE   (hash md5:d0d2a346c7d3abfe6b2502e02e66d481)
Theorem hlt_BILINEAR_DIFFERENTIABLE_ON_COMPOSE : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall h :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable_on M N f s = 1 /\ (hl_differentiable_on M P g s = 1 /\ hl_bilinear N P Q h = 1) -> hl_differentiable_on M Q (fun x :e hl_ty_cart R M => h (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2410 / DIFFERENTIABLE_AT_LIFT_DOT2   (hash md5:987e82970c5f0c33f3751fa66857ad86)
Theorem hlt_DIFFERENTIABLE_AT_LIFT_DOT2 : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_differentiable M N f (hl_at M x) = 1 /\ hl_differentiable M N g (hl_at M x) = 1 -> hl_differentiable M 1 (fun x1 :e hl_ty_cart R M => hl_lift (hl_dot N (f x1) (g x1))) (hl_at M x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2418 / DIFFERENTIABLE_WITHIN_LIFT_DOT2   (hash md5:806e2cca007a719c0570b922554aaec5)
Theorem hlt_DIFFERENTIABLE_WITHIN_LIFT_DOT2 : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable M N f (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ hl_differentiable M N g (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 -> hl_differentiable M 1 (fun x1 :e hl_ty_cart R M => hl_lift (hl_dot N (f x1) (g x1))) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2426 / DIFFERENTIABLE_ON_LIFT_DOT2   (hash md5:7a4864f4380f17bd560445d1ff9411b0)
Theorem hlt_DIFFERENTIABLE_ON_LIFT_DOT2 : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable_on M N f s = 1 /\ hl_differentiable_on M N g s = 1 -> hl_differentiable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_dot N (f x) (g x))) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2434 / HAS_DERIVATIVE_MUL_WITHIN   (hash md5:378b696b05f438592063573530dc31c6)
Theorem hlt_HAS_DERIVATIVE_MUL_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e R :^: hl_ty_cart R M, forall g g' :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_has_derivative M 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R M) hl_lift f) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R M) hl_lift f') (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 /\ hl_has_derivative M N g g' (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 -> hl_has_derivative M N (fun x :e hl_ty_cart R M => hl_vmul N (f x) (g x)) (fun h :e hl_ty_cart R M => hl_vector_add N (hl_vmul N (f a) (g' h)) (hl_vmul N (f' h) (g a))) (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2445 / HAS_DERIVATIVE_MUL_AT   (hash md5:168b3d40471fcbf1122d2340b9e6d00b)
Theorem hlt_HAS_DERIVATIVE_MUL_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e R :^: hl_ty_cart R M, forall g g' :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_has_derivative M 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R M) hl_lift f) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R M) hl_lift f') (hl_at M a) = 1 /\ hl_has_derivative M N g g' (hl_at M a) = 1 -> hl_has_derivative M N (fun x :e hl_ty_cart R M => hl_vmul N (f x) (g x)) (fun h :e hl_ty_cart R M => hl_vector_add N (hl_vmul N (f a) (g' h)) (hl_vmul N (f' h) (g a))) (hl_at M a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2454 / HAS_DERIVATIVE_SQNORM_AT   (hash md5:64e6ff6e6d147bbb82c36116868c9882)
Theorem hlt_HAS_DERIVATIVE_SQNORM_AT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_has_derivative N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_pow (hl_vector_norm N x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (fun x :e hl_ty_cart R N => hl_vmul 1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lift (hl_dot N a x))) (hl_at N a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2465 / DIFFERENTIABLE_MUL_WITHIN   (hash md5:24060eb2d639448fcccc7ddc2eed84ee)
Theorem hlt_DIFFERENTIABLE_MUL_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: hl_ty_cart R M, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable M 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R M) hl_lift f) (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 /\ hl_differentiable M N g (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 -> hl_differentiable M N (fun x :e hl_ty_cart R M => hl_vmul N (f x) (g x)) (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2475 / DIFFERENTIABLE_MUL_AT   (hash md5:c793cc9952d30ac520dbd5bf6276c209)
Theorem hlt_DIFFERENTIABLE_MUL_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: hl_ty_cart R M, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_differentiable M 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R M) hl_lift f) (hl_at M a) = 1 /\ hl_differentiable M N g (hl_at M a) = 1 -> hl_differentiable M N (fun x :e hl_ty_cart R M => hl_vmul N (f x) (g x)) (hl_at M a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2482 / DIFFERENTIABLE_SQNORM_AT   (hash md5:2d74e02392970391027bbf13930df11f)
Theorem hlt_DIFFERENTIABLE_SQNORM_AT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_differentiable N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_pow (hl_vector_norm N x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_at N a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2486 / DIFFERENTIABLE_ON_MUL   (hash md5:c6bfe0a255d5b9a89bc82ef978f4cc11)
Theorem hlt_DIFFERENTIABLE_ON_MUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: hl_ty_cart R M, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_differentiable_on M 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R M) hl_lift f) s = 1 /\ hl_differentiable_on M N g s = 1 -> hl_differentiable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2495 / DIFFERENTIABLE_ON_SQNORM   (hash md5:125d4da3e8119d8853b6f197c3334519)
Theorem hlt_DIFFERENTIABLE_ON_SQNORM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_differentiable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_pow (hl_vector_norm N x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) s = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2504 / BAIRE1_PARTIAL_DERIVATIVES   (hash md5:f7f33b5e1156d41e035569d9fd9eabe0)
Theorem hlt_BAIRE1_PARTIAL_DERIVATIVES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i j :e omega, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (f' x) (hl_at M x) = 1) /\ (hl_open M s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex M (hl_UNIV M)) = 1)))) -> hl_baire M 1 (hl_NUMERAL (hl_BIT1 hl_zero)) s (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R M (hl_vindex (hl_ty_cart R M) N (hl_matrix M N (f' x)) i) j)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2601 / BAIRE1_DET_JACOBIAN   (hash md5:eb2497e406b145a91e226b8046c341a0)
Theorem hlt_BAIRE1_DET_JACOBIAN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1) /\ hl_open N s = 1 -> hl_baire N 1 (hl_NUMERAL (hl_BIT1 hl_zero)) s (fun x :e hl_ty_cart R N => hl_lift (hl_det N (hl_matrix N N (f' x)))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2621 / GATEAUX_DERIVATIVE_WITHIN   (hash md5:e97fe2864c04eb344c9d4d8ce18cb6f1)
Theorem hlt_GATEAUX_DERIVATIVE_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall x y :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 -> hl_tendsto (hl_ty_cart R 1) N (fun t :e hl_ty_cart R 1 => hl_vmul N (hl_real_inv (hl_drop t)) (hl_vector_sub N (f (hl_vector_add M x (hl_vmul M (hl_drop t) y))) (f x))) (f' y) (hl_within (hl_ty_cart R 1) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6050 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6050 (hl_IN (hl_ty_cart R M) (hl_vector_add M x (hl_vmul M (hl_drop t) y)) s) t = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2686 / GATEAUX_DERIVATIVE   (hash md5:c728cc29805370c8cd86ba20e6782136)
Theorem hlt_GATEAUX_DERIVATIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x y :e hl_ty_cart R M, hl_has_derivative M N f f' (hl_at M x) = 1 -> hl_tendsto (hl_ty_cart R 1) N (fun t :e hl_ty_cart R 1 => hl_vmul N (hl_real_inv (hl_drop t)) (hl_vector_sub N (f (hl_vector_add M x (hl_vmul M (hl_drop t) y))) (f x))) (f' y) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2695 / GATEAUX_DERIVATIVE_LIPSCHITZ   (hash md5:9af2c4d9fd8e7dd319bdf9990818f4e3)
Theorem hlt_GATEAUX_DERIVATIVE_LIPSCHITZ : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_open M s = 1 /\ ((exists B :e R, forall u v :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) u s = 1 /\ hl_IN (hl_ty_cart R M) v s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f u) (f v))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M u v))) = 1) /\ (hl_linear M N f' = 1 /\ (forall y :e hl_ty_cart R M, hl_tendsto (hl_ty_cart R 1) N (fun t :e hl_ty_cart R 1 => hl_vmul N (hl_real_inv (hl_drop t)) (hl_vector_sub N (f (hl_vector_add M x (hl_vmul M (hl_drop t) y))) (f x))) (f' y) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) = 1)))) -> hl_has_derivative M N f f' (hl_at M x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:2798 / INVERSE_FUNCTION_THEOREM   (hash md5:2454a0406f638c5ddbf28e562c66e83f)
Theorem hlt_INVERSE_FUNCTION_THEOREM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero))) -> exists t u :e 2 :^: hl_ty_cart R N, exists g :e hl_ty_cart R N :^: hl_ty_cart R N, exists g' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, hl_open N t = 1 /\ (hl_IN (hl_ty_cart R N) a t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_open N u = 1 /\ (hl_IN (hl_ty_cart R N) (f a) u = 1 /\ (hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' x) (g' (f x)) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' (f x)) (f' x) = hl_I (hl_ty_cart R N))) /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y u = 1 -> hl_has_derivative N N g (g' y) (hl_at N y) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' (g y)) (g' y) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' y) (f' (g y)) = hl_I (hl_ty_cart R N)))))))).
Admitted.

// HOL Light: Multivariate/derivatives.ml:3958 / JACOBIAN_SIGN_INVARIANCE   (hash md5:c016533f7476a7fa3539cd7974489d8a)
Theorem hlt_JACOBIAN_SIGN_INVARIANCE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero))) -> (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_det N (hl_matrix N N (f' x))) = 1) \/ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_det N (hl_matrix N N (f' x))) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:4434 / HAS_DERIVATIVE_LOCALLY_INJECTIVE   (hash md5:9d8be28984bc4ae1dfe12a3bd3f82e06)
Theorem hlt_HAS_DERIVATIVE_LOCALLY_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) a s = 1 /\ (hl_open M s = 1 /\ (hl_linear N M g' = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g' (f' a) = hl_I (hl_ty_cart R M) /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (f' x) (hl_at M x) = 1) /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x :e hl_ty_cart R M, hl_real_lt (hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a x)) d = 1 -> hl_real_lt (hl_onorm M N (fun v :e hl_ty_cart R M => hl_vector_sub N (f' x v) (f' a v))) e1 = 1))))) -> exists t :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M) a t = 1 /\ (hl_open M t = 1 /\ forall x x' :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_IN (hl_ty_cart R M) x' t = 1 /\ f x' = f x) -> x' = x).
Admitted.

// HOL Light: Multivariate/derivatives.ml:4520 / INVERSE_FUNCTION_THEOREM_C1_POINTWISE   (hash md5:3a888084b06cda41148bffd8141ce2dc)
Theorem hlt_INVERSE_FUNCTION_THEOREM_C1_POINTWISE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_open N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1) /\ (~ hl_det N (hl_matrix N N (f' a)) = hl_real_of_num (hl_NUMERAL hl_zero) /\ (forall h :e hl_ty_cart R N, hl_continuous (hl_ty_cart R N) N (fun x :e hl_ty_cart R N => f' x h) (hl_at N a) = 1)))) -> exists t u :e 2 :^: hl_ty_cart R N, exists g :e hl_ty_cart R N :^: hl_ty_cart R N, exists g' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, hl_open N t = 1 /\ (hl_IN (hl_ty_cart R N) a t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_open N u = 1 /\ (hl_IN (hl_ty_cart R N) (f a) u = 1 /\ (hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' x) (g' (f x)) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' (f x)) (f' x) = hl_I (hl_ty_cart R N))) /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y u = 1 -> hl_has_derivative N N g (g' y) (hl_at N y) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' (g y)) (g' y) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' y) (f' (g y)) = hl_I (hl_ty_cart R N))) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 /\ (forall h :e hl_ty_cart R N, hl_continuous (hl_ty_cart R N) N (fun y :e hl_ty_cart R N => f' y h) (hl_at N x) = 1) -> forall h :e hl_ty_cart R N, hl_continuous (hl_ty_cart R N) N (fun z :e hl_ty_cart R N => g' z h) (hl_at N (f x)) = 1))))))).
Admitted.

// HOL Light: Multivariate/derivatives.ml:4636 / INVERSE_FUNCTION_C1   (hash md5:f3469debe93360f82ae0f521c8991119)
Theorem hlt_INVERSE_FUNCTION_C1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_open N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ forall h :e hl_ty_cart R N, hl_continuous (hl_ty_cart R N) N (fun y :e hl_ty_cart R N => f' y h) (hl_at N x) = 1) /\ ~ hl_det N (hl_matrix N N (f' a)) = hl_real_of_num (hl_NUMERAL hl_zero))) -> exists t u :e 2 :^: hl_ty_cart R N, exists g :e hl_ty_cart R N :^: hl_ty_cart R N, exists g' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, hl_open N t = 1 /\ (hl_IN (hl_ty_cart R N) a t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_open N u = 1 /\ (hl_IN (hl_ty_cart R N) (f a) u = 1 /\ (hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' x) (g' (f x)) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' (f x)) (f' x) = hl_I (hl_ty_cart R N))) /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y u = 1 -> hl_has_derivative N N g (g' y) (hl_at N y) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' (g y)) (g' y) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' y) (f' (g y)) = hl_I (hl_ty_cart R N))) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> forall h :e hl_ty_cart R N, hl_continuous (hl_ty_cart R N) N (fun z :e hl_ty_cart R N => g' z h) (hl_at N (f x)) = 1))))))).
Admitted.

// HOL Light: Multivariate/derivatives.ml:4666 / INVERSE_FUNCTION_THEOREM_GLOBAL   (hash md5:f6c78ac9f1684c5098bb32f21de1027e)
Theorem hlt_INVERSE_FUNCTION_THEOREM_GLOBAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (hl_simply_connected N t = 1 /\ ((s = hl_EMPTY (hl_ty_cart R N) -> t = hl_EMPTY (hl_ty_cart R N)) /\ ((forall c :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f c) = 1) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero)))))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R N, exists g' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> hl_has_derivative N N g (g' y) (hl_at N y) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' (g y)) (g' y) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' y) (f' (g y)) = hl_I (hl_ty_cart R N))) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' x) (g' (f x)) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' (f x)) (f' x) = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/derivatives.ml:4723 / INVERSE_FUNCTION_THEOREM_SUBSPACE   (hash md5:d602ce276712e16ce40860eb6f29c33a)
Theorem hlt_INVERSE_FUNCTION_THEOREM_SUBSPACE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s p :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_subspace N p = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) p) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) p = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) p) = 1 /\ hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (f' x) p = p)))) -> exists t u :e 2 :^: hl_ty_cart R N, exists g :e hl_ty_cart R N :^: hl_ty_cart R N, exists g' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) p) t = 1 /\ (hl_IN (hl_ty_cart R N) a t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) p) u = 1 /\ (hl_IN (hl_ty_cart R N) (f a) u = 1 /\ (hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) p) = 1 /\ forall h :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) h p = 1 -> f' x (g' (f x) h) = h /\ g' (f x) (f' x h) = h) /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y u = 1 -> hl_has_derivative N N g (g' y) (hl_within (hl_ty_cart R N) (hl_at N y) p) = 1 /\ forall h :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) h p = 1 -> f' (g y) (g' y h) = h /\ g' y (f' (g y) h) = h)))))).
Admitted.

// HOL Light: Multivariate/derivatives.ml:4934 / INVERSE_FUNCTION_THEOREM_AFFINE   (hash md5:56580e8bcf02009cedefa2a9460bf430)
Theorem hlt_INVERSE_FUNCTION_THEOREM_AFFINE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s p :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_affine N p = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) p) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) p = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) p) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero))))) -> exists t u :e 2 :^: hl_ty_cart R N, exists g :e hl_ty_cart R N :^: hl_ty_cart R N, exists g' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) p) t = 1 /\ (hl_IN (hl_ty_cart R N) a t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) p) u = 1 /\ (hl_IN (hl_ty_cart R N) (f a) u = 1 /\ (hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t u) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) p) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' x) (g' (f x)) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' (f x)) (f' x) = hl_I (hl_ty_cart R N))) /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y u = 1 -> hl_has_derivative N N g (g' y) (hl_within (hl_ty_cart R N) (hl_at N y) p) = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (f' (g y)) (g' y) = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (g' y) (f' (g y)) = hl_I (hl_ty_cart R N)))))))).
Admitted.

// HOL Light: Multivariate/derivatives.ml:5148 / has_vector_derivative   (hash md5:f33cace4a1a67558a08fb629feb6d73d)
Theorem hlt_has_vector_derivative_thm : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_has_vector_derivative A f f' net1 = 1 <-> hl_has_derivative 1 A f (fun x :e hl_ty_cart R 1 => hl_vmul A (hl_drop x) f') net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5152 / vector_derivative   (hash md5:60616e379ba12becaa6aecac234ffff4)
Theorem hlt_vector_derivative_thm : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_vector_derivative N f net1 = hl_select (hl_ty_cart R N) (fun f' :e hl_ty_cart R N => hl_has_vector_derivative N f f' net1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:5156 / VECTOR_DERIVATIVE_WORKS   (hash md5:cabc637e26e6f0a9c4f94919d3bd9a22)
Theorem hlt_VECTOR_DERIVATIVE_WORKS : forall N:set, N <> Empty -> forall net1 :e hl_ty_net (hl_ty_cart R 1), forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_differentiable 1 N f net1 = 1 <-> hl_has_vector_derivative N f (hl_vector_derivative N f net1) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5170 / VECTOR_DIFFERENTIABLE   (hash md5:8706fbfc6c77e82f981ab301971825f0)
Theorem hlt_VECTOR_DIFFERENTIABLE : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_differentiable 1 A f net1 = 1 <-> exists f' :e hl_ty_cart R A, hl_has_vector_derivative A f f' net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5174 / HAS_VECTOR_DERIVATIVE_IMP_DIFFERENTIABLE   (hash md5:ebf96db410d597eb4191e27c2f166a27)
Theorem hlt_HAS_VECTOR_DERIVATIVE_IMP_DIFFERENTIABLE : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_has_vector_derivative A f f' net1 = 1 -> hl_differentiable 1 A f net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5178 / VECTOR_DERIVATIVE_UNIQUE_AT   (hash md5:11fba2af3ca27ad5066fff4020a64f94)
Theorem hlt_VECTOR_DERIVATIVE_UNIQUE_AT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, forall f' f'' :e hl_ty_cart R N, hl_has_vector_derivative N f f' (hl_at 1 x) = 1 /\ hl_has_vector_derivative N f f'' (hl_at 1 x) = 1 -> f' = f''.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5191 / VECTOR_DERIVATIVE_AT   (hash md5:52c62b951a6eabc4468fd23feb1e88df)
Theorem hlt_VECTOR_DERIVATIVE_AT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R N, forall x :e hl_ty_cart R 1, hl_has_vector_derivative N f f' (hl_at 1 x) = 1 -> hl_vector_derivative N f (hl_at 1 x) = f'.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5200 / HAS_VECTOR_DERIVATIVE_COMPONENTWISE_WITHIN   (hash md5:1ef6576176109813f80205869614c678)
Theorem hlt_HAS_VECTOR_DERIVATIVE_COMPONENTWISE_WITHIN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R N, forall a :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_vector_derivative N f f' (hl_within (hl_ty_cart R 1) (hl_at 1 a) s) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_has_vector_derivative 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vindex R N (f x) i)) (hl_lift (hl_vindex R N f' i)) (hl_within (hl_ty_cart R 1) (hl_at 1 a) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5210 / HAS_VECTOR_DERIVATIVE_COMPONENTWISE_AT   (hash md5:db419a4ccaa6c6be93d385271dcbf9ac)
Theorem hlt_HAS_VECTOR_DERIVATIVE_COMPONENTWISE_AT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R N, forall a :e hl_ty_cart R 1, hl_has_vector_derivative N f f' (hl_at 1 a) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_has_vector_derivative 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vindex R N (f x) i)) (hl_lift (hl_vindex R N f' i)) (hl_at 1 a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5219 / HAS_VECTOR_DERIVATIVE_LIFT_COMPONENT_WITHIN   (hash md5:a84a4656f6b252a058f83ff1fd36cfa9)
Theorem hlt_HAS_VECTOR_DERIVATIVE_LIFT_COMPONENT_WITHIN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R N, forall a :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall i :e omega, hl_has_vector_derivative N f f' (hl_within (hl_ty_cart R 1) (hl_at 1 a) s) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_has_vector_derivative 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vindex R N (f x) i)) (hl_lift (hl_vindex R N f' i)) (hl_within (hl_ty_cart R 1) (hl_at 1 a) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5227 / HAS_VECTOR_DERIVATIVE_LIFT_COMPONENT_AT   (hash md5:057644456d6bde87b69e3ad49dcfcc6f)
Theorem hlt_HAS_VECTOR_DERIVATIVE_LIFT_COMPONENT_AT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R N, forall a :e hl_ty_cart R 1, forall i :e omega, hl_has_vector_derivative N f f' (hl_at 1 a) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_has_vector_derivative 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vindex R N (f x) i)) (hl_lift (hl_vindex R N f' i)) (hl_at 1 a) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5234 / HAS_VECTOR_DERIVATIVE_WITHIN_1D   (hash md5:cea5984654691f9f5d0c5637149b5f70)
Theorem hlt_HAS_VECTOR_DERIVATIVE_WITHIN_1D : forall N:set, N <> Empty -> forall f' :e hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, hl_has_vector_derivative N f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 <-> hl_tendsto (hl_ty_cart R 1) N (fun y :e hl_ty_cart R 1 => hl_vmul N (hl_real_inv (hl_drop (hl_vector_sub 1 y x))) (hl_vector_sub N (f y) (f x))) f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5254 / HAS_VECTOR_DERIVATIVE_AT_1D   (hash md5:34163a2b2a33a594d6b1e6413b5b9526)
Theorem hlt_HAS_VECTOR_DERIVATIVE_AT_1D : forall N:set, N <> Empty -> forall f' :e hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, hl_has_vector_derivative N f f' (hl_at 1 x) = 1 <-> hl_tendsto (hl_ty_cart R 1) N (fun y :e hl_ty_cart R 1 => hl_vmul N (hl_real_inv (hl_drop (hl_vector_sub 1 y x))) (hl_vector_sub N (f y) (f x))) f' (hl_at 1 x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5261 / VECTOR_DERIVATIVE_UNIQUE_WITHIN   (hash md5:0b0e3dc43891e454763cb5023acf8d50)
Theorem hlt_VECTOR_DERIVATIVE_UNIQUE_WITHIN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall f' f'' :e hl_ty_cart R N, ~ hl_trivial_limit (hl_ty_cart R 1) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 /\ (hl_has_vector_derivative N f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 /\ hl_has_vector_derivative N f f'' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1) -> f' = f''.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5269 / VECTOR_DERIVATIVE_UNIQUE_WITHIN_CLOSED_INTERVAL   (hash md5:54dc54d0155c8aa98601aa3d80618636)
Theorem hlt_VECTOR_DERIVATIVE_UNIQUE_WITHIN_CLOSED_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b x :e hl_ty_cart R 1, forall f' f'' :e hl_ty_cart R N, hl_real_lt (hl_drop a) (hl_drop b) = 1 /\ (hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_has_vector_derivative N f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ hl_has_vector_derivative N f f'' (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1)) -> f' = f''.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5283 / VECTOR_DERIVATIVE_WITHIN_CLOSED_INTERVAL   (hash md5:56efef0f3c03e06ded29d97252edc7f0)
Theorem hlt_VECTOR_DERIVATIVE_WITHIN_CLOSED_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R N, forall x a b :e hl_ty_cart R 1, hl_real_lt (hl_drop a) (hl_drop b) = 1 /\ (hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_vector_derivative N f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) -> hl_vector_derivative N f (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = f'.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5291 / HAS_VECTOR_DERIVATIVE_WITHIN_SUBSET   (hash md5:a87066c836cf221cd0efe8d2c97de564)
Theorem hlt_HAS_VECTOR_DERIVATIVE_WITHIN_SUBSET : forall A:set, A <> Empty -> forall f' :e hl_ty_cart R A, forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, hl_has_vector_derivative A f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1 -> hl_has_vector_derivative A f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) t) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5296 / HAS_VECTOR_DERIVATIVE_CONST   (hash md5:ee987a8a5e5ff80aa97e8ee509097700)
Theorem hlt_HAS_VECTOR_DERIVATIVE_CONST : forall A:set, A <> Empty -> forall c :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_has_vector_derivative A (fun x :e hl_ty_cart R 1 => c) (hl_vec A (hl_NUMERAL hl_zero)) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5301 / VECTOR_DERIVATIVE_CONST_AT   (hash md5:c9945a1ca2eb94de547dca39502ee425)
Theorem hlt_VECTOR_DERIVATIVE_CONST_AT : forall N:set, N <> Empty -> forall c :e hl_ty_cart R N, forall a :e hl_ty_cart R 1, hl_vector_derivative N (fun x :e hl_ty_cart R 1 => c) (hl_at 1 a) = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/derivatives.ml:5306 / HAS_VECTOR_DERIVATIVE_ID   (hash md5:45f51e5c3796a63014842c937000e45f)
Theorem hlt_HAS_VECTOR_DERIVATIVE_ID : forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_has_vector_derivative 1 (fun x :e hl_ty_cart R 1 => x) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5314 / HAS_VECTOR_DERIVATIVE_CMUL   (hash md5:fad10160fcac24dd6509221acc1434dd)
Theorem hlt_HAS_VECTOR_DERIVATIVE_CMUL : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R 1), forall c :e R, hl_has_vector_derivative A f f' net1 = 1 -> hl_has_vector_derivative A (fun x :e hl_ty_cart R 1 => hl_vmul A c (f x)) (hl_vmul A c f') net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5321 / HAS_VECTOR_DERIVATIVE_CMUL_EQ   (hash md5:b9ce11f629ccf371d293f95a0277cc65)
Theorem hlt_HAS_VECTOR_DERIVATIVE_CMUL_EQ : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R 1), forall c :e R, ~ c = hl_real_of_num (hl_NUMERAL hl_zero) -> (hl_has_vector_derivative A (fun x :e hl_ty_cart R 1 => hl_vmul A c (f x)) (hl_vmul A c f') net1 = 1 <-> hl_has_vector_derivative A f f' net1 = 1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:5332 / HAS_VECTOR_DERIVATIVE_NEG   (hash md5:f13ba07258d5ef14c7145407898ba447)
Theorem hlt_HAS_VECTOR_DERIVATIVE_NEG : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_has_vector_derivative A f f' net1 = 1 -> hl_has_vector_derivative A (fun x :e hl_ty_cart R 1 => hl_vector_neg A (f x)) (hl_vector_neg A f') net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5337 / HAS_VECTOR_DERIVATIVE_NEG_EQ   (hash md5:04f0080198c3fb13beb485d77156a934)
Theorem hlt_HAS_VECTOR_DERIVATIVE_NEG_EQ : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_has_vector_derivative A (fun x :e hl_ty_cart R 1 => hl_vector_neg A (f x)) (hl_vector_neg A f') net1 = 1 <-> hl_has_vector_derivative A f f' net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5342 / HAS_VECTOR_DERIVATIVE_ADD   (hash md5:b8aa2d011bc95a9c8089c93b15b78873)
Theorem hlt_HAS_VECTOR_DERIVATIVE_ADD : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall g' :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_has_vector_derivative A f f' net1 = 1 /\ hl_has_vector_derivative A g g' net1 = 1 -> hl_has_vector_derivative A (fun x :e hl_ty_cart R 1 => hl_vector_add A (f x) (g x)) (hl_vector_add A f' g') net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5348 / HAS_VECTOR_DERIVATIVE_SUB   (hash md5:f23c4daa14ea769dc6e2f5331ffef577)
Theorem hlt_HAS_VECTOR_DERIVATIVE_SUB : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall g' :e hl_ty_cart R A, forall net1 :e hl_ty_net (hl_ty_cart R 1), hl_has_vector_derivative A f f' net1 = 1 /\ hl_has_vector_derivative A g g' net1 = 1 -> hl_has_vector_derivative A (fun x :e hl_ty_cart R 1 => hl_vector_sub A (f x) (g x)) (hl_vector_sub A f' g') net1 = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5354 / HAS_VECTOR_DERIVATIVE_BILINEAR_WITHIN   (hash md5:d241653617754720c28b67ad688d774e)
Theorem hlt_HAS_VECTOR_DERIVATIVE_BILINEAR_WITHIN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall h :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M, forall g' :e hl_ty_cart R N, forall x :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_vector_derivative M f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 /\ (hl_has_vector_derivative N g g' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 /\ hl_bilinear M N P h = 1) -> hl_has_vector_derivative P (fun x1 :e hl_ty_cart R 1 => h (f x1) (g x1)) (hl_vector_add P (h (f x) g') (h f' (g x))) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5367 / HAS_VECTOR_DERIVATIVE_BILINEAR_AT   (hash md5:5410ff17518149b1cf1be68e3fb3ae9a)
Theorem hlt_HAS_VECTOR_DERIVATIVE_BILINEAR_AT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall h :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M, forall g' :e hl_ty_cart R N, forall x :e hl_ty_cart R 1, hl_has_vector_derivative M f f' (hl_at 1 x) = 1 /\ (hl_has_vector_derivative N g g' (hl_at 1 x) = 1 /\ hl_bilinear M N P h = 1) -> hl_has_vector_derivative P (fun x1 :e hl_ty_cart R 1 => h (f x1) (g x1)) (hl_vector_add P (h (f x) g') (h f' (g x))) (hl_at 1 x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5380 / HAS_VECTOR_DERIVATIVE_AT_WITHIN   (hash md5:ed22ddf77dda53103e39250c5da79f76)
Theorem hlt_HAS_VECTOR_DERIVATIVE_AT_WITHIN : forall A:set, A <> Empty -> forall f' :e hl_ty_cart R A, forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_vector_derivative A f f' (hl_at 1 x) = 1 -> hl_has_vector_derivative A f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5385 / HAS_VECTOR_DERIVATIVE_TRANSFORM_WITHIN   (hash md5:ea09fe7179cd1cd85d24ed155d540c2c)
Theorem hlt_HAS_VECTOR_DERIVATIVE_TRANSFORM_WITHIN : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_IN (hl_ty_cart R 1) x s = 1 /\ ((forall x' :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x' s = 1 /\ hl_real_lt (hl_distance 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x' x)) d = 1 -> f x' = g x') /\ hl_has_vector_derivative A f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1)) -> hl_has_vector_derivative A g f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5393 / HAS_VECTOR_DERIVATIVE_TRANSFORM_AT   (hash md5:303cd61b3389d2124222ef4e1c06a119)
Theorem hlt_HAS_VECTOR_DERIVATIVE_TRANSFORM_AT : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, forall d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ ((forall x' :e hl_ty_cart R 1, hl_real_lt (hl_distance 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x' x)) d = 1 -> f x' = g x') /\ hl_has_vector_derivative A f f' (hl_at 1 x) = 1) -> hl_has_vector_derivative A g f' (hl_at 1 x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5400 / HAS_VECTOR_DERIVATIVE_TRANSFORM_WITHIN_OPEN   (hash md5:af569e965021577713ede43439ae6985)
Theorem hlt_HAS_VECTOR_DERIVATIVE_TRANSFORM_WITHIN_OPEN : forall A:set, A <> Empty -> forall f' :e hl_ty_cart R A, forall f g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, hl_open 1 s = 1 /\ (hl_IN (hl_ty_cart R 1) x s = 1 /\ ((forall y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) y s = 1 -> f y = g y) /\ hl_has_vector_derivative A f f' (hl_at 1 x) = 1)) -> hl_has_vector_derivative A g f' (hl_at 1 x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5408 / VECTOR_DIFF_CHAIN_AT   (hash md5:0ee746a886a7d61c5a1b91da30ab0c28)
Theorem hlt_VECTOR_DIFF_CHAIN_AT : forall A:set, A <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R 1, forall g' :e hl_ty_cart R A, forall x :e hl_ty_cart R 1, hl_has_vector_derivative 1 f f' (hl_at 1 x) = 1 /\ hl_has_vector_derivative A g g' (hl_at 1 (f x)) = 1 -> hl_has_vector_derivative A (hl_o (hl_ty_cart R 1) (hl_ty_cart R A) (hl_ty_cart R 1) g f) (hl_vmul A (hl_drop f') g') (hl_at 1 x) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5417 / VECTOR_DIFF_CHAIN_WITHIN   (hash md5:b871a8f5f424b74a9f29b2a129c9ece7)
Theorem hlt_VECTOR_DIFF_CHAIN_WITHIN : forall A:set, A <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R 1, forall g' :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, hl_has_vector_derivative 1 f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 /\ hl_has_vector_derivative A g g' (hl_within (hl_ty_cart R 1) (hl_at 1 (f x)) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s)) = 1 -> hl_has_vector_derivative A (hl_o (hl_ty_cart R 1) (hl_ty_cart R A) (hl_ty_cart R 1) g f) (hl_vmul A (hl_drop f') g') (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5426 / VECTOR_DIFFERENTIABLE_BOUND   (hash md5:f255a6d7c92b221a16e3766b463514a2)
Theorem hlt_VECTOR_DIFFERENTIABLE_BOUND : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall B :e R, hl_convex 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1) /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_real_le (hl_vector_norm N (f' x)) B = 1)) -> forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5451 / HAS_BOUNDED_VECTOR_DERIVATIVE_IMP_LIPSCHITZ   (hash md5:c8505c5f314ef2fdaaaa695e3e8424ce)
Theorem hlt_HAS_BOUNDED_VECTOR_DERIVATIVE_IMP_LIPSCHITZ : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1) /\ (hl_convex 1 s = 1 /\ hl_bounded N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f' s) = 1) -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5463 / RESTRICTION_HAS_DERIVATIVE   (hash md5:939f3a0d88d9a2f7e7421d06065cf3f8)
Theorem hlt_RESTRICTION_HAS_DERIVATIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> (hl_has_vector_derivative N (hl_RESTRICTION (hl_ty_cart R 1) (hl_ty_cart R N) s f) f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 <-> hl_has_vector_derivative N f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:5480 / BAIRE1_VECTOR_DERIVATIVE   (hash md5:8a5c9dd35bc836c2181f4495bd06aa05)
Theorem hlt_BAIRE1_VECTOR_DERIVATIVE : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative N f (f' x) (hl_at 1 x) = 1) /\ hl_open 1 s = 1 -> hl_baire 1 N (hl_NUMERAL (hl_BIT1 hl_zero)) s f' = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5504 / VECTOR_DERIVATIVE_INCREASING_WITHIN   (hash md5:87cfbddc6d30c2e05b649487ea8c769f)
Theorem hlt_VECTOR_DERIVATIVE_INCREASING_WITHIN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) /\ (hl_IN (hl_ty_cart R 1) a s = 1 /\ (hl_limit_point_of 1 a s = 1 /\ hl_has_vector_derivative 1 f f' (hl_within (hl_ty_cart R 1) (hl_at 1 a) s) = 1)) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop f') = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5524 / NORM_VECTOR_DERIVATIVES_LE_WITHIN   (hash md5:7e1f07bf324840e8c4353c2586de8c5b)
Theorem hlt_NORM_VECTOR_DERIVATIVES_LE_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M, forall g' :e hl_ty_cart R N, forall x :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_limit_point_of 1 x s = 1 /\ (hl_has_vector_derivative M f f' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 /\ (hl_has_vector_derivative N g g' (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 /\ hl_eventually (hl_ty_cart R 1) (fun y :e hl_ty_cart R 1 => hl_real_le (hl_vector_norm M (hl_vector_sub M (f y) (f x))) (hl_vector_norm N (hl_vector_sub N (g y) (g x)))) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1)) -> hl_real_le (hl_vector_norm M f') (hl_vector_norm N g') = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5543 / NORM_VECTOR_DERIVATIVES_LE_AT   (hash md5:cea03a7f5ba23dbe018e594364183b9d)
Theorem hlt_NORM_VECTOR_DERIVATIVES_LE_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M, forall g' :e hl_ty_cart R N, forall x :e hl_ty_cart R 1, hl_has_vector_derivative M f f' (hl_at 1 x) = 1 /\ (hl_has_vector_derivative N g g' (hl_at 1 x) = 1 /\ hl_eventually (hl_ty_cart R 1) (fun y :e hl_ty_cart R 1 => hl_real_le (hl_vector_norm M (hl_vector_sub M (f y) (f x))) (hl_vector_norm N (hl_vector_sub N (g y) (g x)))) (hl_at 1 x) = 1) -> hl_real_le (hl_vector_norm M f') (hl_vector_norm N g') = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5558 / CONVEX_ON_DERIVATIVE_SECANT_IMP   (hash md5:2781f9c24f802bfca740f1d383861ddb)
Theorem hlt_CONVEX_ON_DERIVATIVE_SECANT_IMP : forall N:set, N <> Empty -> forall f f' :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1 /\ hl_has_derivative N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f') (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) -> hl_real_le (f' (hl_vector_sub N y x)) (hl_real_sub (f y) (f x)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5622 / CONVEX_ON_SECANT_DERIVATIVE_IMP   (hash md5:a6f32f1ca596b1c971ca8ad707716dce)
Theorem hlt_CONVEX_ON_SECANT_DERIVATIVE_IMP : forall N:set, N <> Empty -> forall f f' :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1 /\ hl_has_derivative N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f') (hl_within (hl_ty_cart R N) (hl_at N y) s) = 1) -> hl_real_le (hl_real_sub (f y) (f x)) (f' (hl_vector_sub N y x)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5640 / CONVEX_ON_DERIVATIVES_IMP   (hash md5:51399223078ea6985d12e277f15476cc)
Theorem hlt_CONVEX_ON_DERIVATIVES_IMP : forall N:set, N <> Empty -> forall f f'x f'y :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1 /\ (hl_has_derivative N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f'x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 /\ hl_has_derivative N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f'y) (hl_within (hl_ty_cart R N) (hl_at N y) s) = 1)) -> hl_real_le (f'x (hl_vector_sub N y x)) (f'y (hl_vector_sub N y x)) = 1.
Admitted.

// HOL Light: Multivariate/derivatives.ml:5650 / CONVEX_ON_DERIVATIVES   (hash md5:7d2454571de9c6105191b73e9cc54262)
Theorem hlt_CONVEX_ON_DERIVATIVES : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall f' :e R :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift (f' x)) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) -> (hl_convex_on N f s = 1 <-> forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f' x (hl_vector_sub N y x)) (f' y (hl_vector_sub N y x)) = 1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:5650 / CONVEX_ON_DERIVATIVE_SECANT   (hash md5:dad5b7a0196a529dca0832a70d7a78df)
Theorem hlt_CONVEX_ON_DERIVATIVE_SECANT : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall f' :e R :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift (f' x)) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) -> (hl_convex_on N f s = 1 <-> forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f' x (hl_vector_sub N y x)) (hl_real_sub (f y) (f x)) = 1).
Admitted.

// HOL Light: Multivariate/derivatives.ml:5774 / CONVEX_ON_SECANT_DERIVATIVE   (hash md5:5587e01b6f31d3643e73f9d868d74443)
Theorem hlt_CONVEX_ON_SECANT_DERIVATIVE : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall f' :e R :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift (f' x)) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) -> (hl_convex_on N f s = 1 <-> forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (hl_real_sub (f y) (f x)) (f' y (hl_vector_sub N y x)) = 1).
Admitted.

