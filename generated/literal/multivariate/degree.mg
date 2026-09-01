// hol2mg literal statements (private): shard degree of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/degree.ml:16 / brouwer_degree1   (hash md5:c08ebcbb0fac6a52a4184efafa521eae)
Theorem hlt_brouwer_degree1_thm : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall n :e omega, hl_brouwer_degree1 N n f = hl_COND hl_ty_int (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ hl_le n (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_brouwer_degree2 (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_o (hl_ty_cart R N) (R :^: omega) (R :^: omega) (fun x :e hl_ty_cart R N => fun i :e omega => hl_COND R (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i n = 1 then 1 else 0) (hl_vindex R N x i) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (R :^: omega) f (fun x :e R :^: omega => hl_lambda R N (fun i :e omega => hl_COND R (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i n = 1 then 1 else 0) (x i) (hl_real_of_num (hl_NUMERAL hl_zero))))))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/degree.ml:25 / brouwer_degree   (hash md5:2b65ab3af81ed77de5fa60844ccf7aa6)
Theorem hlt_brouwer_degree_thm : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_brouwer_degree N f = hl_brouwer_degree1 N (hl_dimindex N (hl_UNIV N)) f.
Admitted.

// HOL Light: Multivariate/degree.ml:28 / BROUWER_DEGREE1_EQ   (hash md5:6a3c3f6089ffd39158a9fddae3c87911)
Theorem hlt_BROUWER_DEGREE1_EQ : forall N:set, N <> Empty -> forall n :e omega, forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n)))) = 1 -> f x = g x) -> hl_brouwer_degree1 N n f = hl_brouwer_degree1 N n g.
Admitted.

// HOL Light: Multivariate/degree.ml:48 / BROUWER_DEGREE1_ID   (hash md5:e82b263382b6c81d77421a9f6d220904)
Theorem hlt_BROUWER_DEGREE1_ID : forall N:set, N <> Empty -> forall n :e omega, hl_brouwer_degree1 N n (fun x :e hl_ty_cart R N => x) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/degree.ml:61 / BROUWER_DEGREE1_COMPOSE   (hash md5:5f98bca3cc31efa4e64e611e82285db8)
Theorem hlt_BROUWER_DEGREE1_COMPOSE : forall N:set, N <> Empty -> forall n :e omega, forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N f (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n)))) = 1 /\ (hl_continuous_on N N g (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n)))) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n))))) (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n)))) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) g (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n))))) (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n)))) = 1)) -> hl_brouwer_degree1 N n (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f) = hl_int_mul (hl_brouwer_degree1 N n g) (hl_brouwer_degree1 N n f).
Admitted.

// HOL Light: Multivariate/degree.ml:90 / BROUWER_DEGREE1_HOMOTOPIC   (hash md5:3096dea6521f24b03bc0d88c68fe04db)
Theorem hlt_BROUWER_DEGREE1_HOMOTOPIC : forall N:set, N <> Empty -> forall n :e omega, forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n))))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n)))))) f g = 1 -> hl_brouwer_degree1 N n f = hl_brouwer_degree1 N n g.
Admitted.

// HOL Light: Multivariate/degree.ml:109 / BROUWER_DEGREE1_CONST   (hash md5:425a51bf47ae87c28c7f64a43f783f1a)
Theorem hlt_BROUWER_DEGREE1_CONST : forall N:set, N <> Empty -> forall n :e omega, forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ hl_le n (hl_dimindex N (hl_UNIV N)) = 1 -> hl_brouwer_degree1 N n (fun x :e hl_ty_cart R N => a) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/degree.ml:115 / BROUWER_DEGREE1_REFLECT_ALONG   (hash md5:dda91a759003bbe4ddbe2cf59356e761)
Theorem hlt_BROUWER_DEGREE1_REFLECT_ALONG : forall N:set, N <> Empty -> forall n :e omega, forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_IN (hl_ty_cart R N) a (hl_DELETE (hl_ty_cart R N) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n))) (hl_vec N (hl_NUMERAL hl_zero))) = 1) -> hl_brouwer_degree1 N n (hl_reflect_along N a) = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/degree.ml:150 / BROUWER_DEGREE1_NONSURJECTIVE   (hash md5:383088192dd440d1434d3e41688c0ddb)
Theorem hlt_BROUWER_DEGREE1_NONSURJECTIVE : forall N:set, N <> Empty -> forall n :e omega, forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_continuous_on N N f (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n)))) = 1 /\ hl_PSUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n))))) (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n)))) = 1)) -> hl_brouwer_degree1 N n f = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/degree.ml:177 / BROUWER_DEGREE_EQ   (hash md5:503c8bc982b97e14c6c104b065fd3cf2)
Theorem hlt_BROUWER_DEGREE_EQ : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 -> f x = g x) -> hl_brouwer_degree N f = hl_brouwer_degree N g.
Admitted.

// HOL Light: Multivariate/degree.ml:186 / BROUWER_DEGREE_ID   (hash md5:3c4d2565d090b725cd9fb359818ada88)
Theorem hlt_BROUWER_DEGREE_ID : forall N:set, N <> Empty -> hl_brouwer_degree N (fun x :e hl_ty_cart R N => x) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/degree.ml:190 / BROUWER_DEGREE_COMPOSE   (hash md5:0321885f49181dde520027fb3b95f82e)
Theorem hlt_BROUWER_DEGREE_COMPOSE : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 /\ (hl_continuous_on N N g (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) g (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1)) -> hl_brouwer_degree N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f) = hl_int_mul (hl_brouwer_degree N g) (hl_brouwer_degree N f).
Admitted.

// HOL Light: Multivariate/degree.ml:202 / BROUWER_DEGREE_HOMOTOPIC   (hash md5:2e761a1bb2616b2dc54518f40ee21afa)
Theorem hlt_BROUWER_DEGREE_HOMOTOPIC : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))))) f g = 1 -> hl_brouwer_degree N f = hl_brouwer_degree N g.
Admitted.

// HOL Light: Multivariate/degree.ml:214 / BROUWER_DEGREE_CONST   (hash md5:10c670aab5bc536e0dc97350fd669d18)
Theorem hlt_BROUWER_DEGREE_CONST : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_brouwer_degree N (fun x :e hl_ty_cart R N => a) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/degree.ml:220 / BROUWER_DEGREE_REFLECT_ALONG   (hash md5:38335ee9f39d464d87110dae8fdb5538)
Theorem hlt_BROUWER_DEGREE_REFLECT_ALONG : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) -> hl_brouwer_degree N (hl_reflect_along N a) = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/degree.ml:228 / BROUWER_DEGREE_NONSURJECTIVE   (hash md5:e53ea6c05784fa58eaac624bd8470fc1)
Theorem hlt_BROUWER_DEGREE_NONSURJECTIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 /\ hl_PSUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 -> hl_brouwer_degree N f = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/degree.ml:238 / BROUWER_DEGREE_ORTHOGONAL_TRANSFORMATION   (hash md5:83b8ae95cc5ac91d934005a7d3c75ddb)
Theorem hlt_BROUWER_DEGREE_ORTHOGONAL_TRANSFORMATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> hl_real_of_int (hl_brouwer_degree N f) = hl_det N (hl_matrix N N f).
Admitted.

// HOL Light: Multivariate/degree.ml:264 / HOMOTOPIC_ORTHOGONAL_TRANSFORMATIONS   (hash md5:505dff85564730fe04e78215e735af7c)
Theorem hlt_HOMOTOPIC_ORTHOGONAL_TRANSFORMATIONS : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ hl_orthogonal_transformation N g = 1 -> (hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))))) f g = 1 <-> hl_det N (hl_matrix N N f) = hl_det N (hl_matrix N N g)).
Admitted.

// HOL Light: Multivariate/degree.ml:278 / HOMOTOPIC_ORTHOGONAL_TRANSFORMATIONS_ALT   (hash md5:54f1e244f08d4eca77cab1e290807151)
Theorem hlt_HOMOTOPIC_ORTHOGONAL_TRANSFORMATIONS_ALT : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ hl_orthogonal_transformation N g = 1 -> (hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero)))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero))))) f g = 1 <-> hl_det N (hl_matrix N N f) = hl_det N (hl_matrix N N g)).
Admitted.

// HOL Light: Multivariate/degree.ml:320 / HOMOTOPIC_ORTHOGONAL_TRANSFORMATIONS_IMP   (hash md5:394d68544fb63fee4799c136e0c01b9d)
Theorem hlt_HOMOTOPIC_ORTHOGONAL_TRANSFORMATIONS_IMP : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (hl_orthogonal_transformation N g = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))))) f g = 1) -> hl_det N (hl_matrix N N f) = hl_det N (hl_matrix N N g).
Admitted.

// HOL Light: Multivariate/degree.ml:329 / HOMOTOPIC_LINEAR_MAPS_IMP   (hash md5:d42974f1c0d80124a8c02d7727d928f5)
Theorem hlt_HOMOTOPIC_LINEAR_MAPS_IMP : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (hl_linear N N g = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero)))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero))))) f g = 1) -> hl_real_sgn (hl_det N (hl_matrix N N f)) = hl_real_sgn (hl_det N (hl_matrix N N g)).
Admitted.

// HOL Light: Multivariate/degree.ml:383 / HOMOTOPIC_LINEAR_MAPS_ALT   (hash md5:05478388f1aca3e3542ff984cbd21f79)
Theorem hlt_HOMOTOPIC_LINEAR_MAPS_ALT : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (hl_linear N N g = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero)))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero))))) f g = 1) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul (hl_det N (hl_matrix N N f)) (hl_det N (hl_matrix N N g))) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:408 / FIXPOINT_HOMOTOPIC_IDENTITY_SPHERE   (hash md5:6d3dad98eb3967af96e386c7dbb389fc)
Theorem hlt_FIXPOINT_HOMOTOPIC_IDENTITY_SPHERE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_ODD (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))))) (fun x :e hl_ty_cart R N => x) f = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:438 / FIXPOINT_OR_NEG_MAPPING_SPHERE   (hash md5:e32f4015720d72724d0e85dc2800bea3)
Theorem hlt_FIXPOINT_OR_NEG_MAPPING_SPHERE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_ODD (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_continuous_on N N f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 /\ (f x = hl_vector_neg N x \/ f x = x).
Admitted.

// HOL Light: Multivariate/degree.ml:453 / HAIRY_BALL_THEOREM   (hash md5:58eaf5ce5e51a02cdb8380f1e531f76f)
Theorem hlt_HAIRY_BALL_THEOREM : forall N:set, N <> Empty -> forall r :e R, (exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r))) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) = 1 -> ~ f x = hl_vec N (hl_NUMERAL hl_zero) /\ hl_orthogonal N x (f x) = 1)) <-> hl_real_lt r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_EVEN (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:453 / HAIRY_BALL_THEOREM_ALT   (hash md5:2174667bc5fada601922d1a3dfc67f1e)
Theorem hlt_HAIRY_BALL_THEOREM_ALT : forall N:set, N <> Empty -> forall r :e R, (exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) = 1 -> ~ f x = hl_vec N (hl_NUMERAL hl_zero) /\ hl_orthogonal N x (f x) = 1) <-> hl_real_le r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ hl_EVEN (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:539 / CONTINUOUS_FUNCTION_HAS_EIGENVALUES_ODD_DIM   (hash md5:72b90e8144d6ad9030a780d1212dee4f)
Theorem hlt_CONTINUOUS_FUNCTION_HAS_EIGENVALUES_ODD_DIM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_ODD (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_continuous_on N N f (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 -> exists v :e hl_ty_cart R N, exists c :e R, hl_IN (hl_ty_cart R N) v (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 /\ f v = hl_vmul N c v.
Admitted.

// HOL Light: Multivariate/degree.ml:561 / EULER_ROTATION_THEOREM_GEN   (hash md5:14f06d0ddc6e67cfcff107db9d16b2ca)
Theorem hlt_EULER_ROTATION_THEOREM_GEN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_ODD (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_rotation_matrix N A = 1 -> exists v :e hl_ty_cart R N, hl_vector_norm N v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_matrix_vector_mul N N A v = v.
Admitted.

// HOL Light: Multivariate/degree.ml:594 / retraction   (hash md5:1bf228b27566fe3327be5ddd22883cd7)
Theorem hlt_retraction_thm : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1 <-> hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_continuous_on N N r s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) r s) t = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> r x = x)).
Admitted.

// HOL Light: Multivariate/degree.ml:599 / retract_of   (hash md5:a4855fba056079a5a6e2f69b48bf2ade)
Theorem hlt_retract_of_thm : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_retract_of A t s = 1 <-> exists r :e hl_ty_cart R A :^: hl_ty_cart R A, hl_retraction A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) s t) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:602 / RETRACTION_MAPS_EUCLIDEAN   (hash md5:a6ed0273d368a4ec8bac2bae6a8e755a)
Theorem hlt_RETRACTION_MAPS_EUCLIDEAN : forall N:set, N <> Empty -> forall r :e hl_ty_cart R N :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_retraction_maps (hl_ty_cart R N) (hl_ty_cart R N) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) r (hl_I (hl_ty_cart R N))) = 1 <-> hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:612 / RETRACT_OF_SPACE_EUCLIDEAN   (hash md5:e91adf72e1abb30f3df7aca13b61b310)
Theorem hlt_RETRACT_OF_SPACE_EUCLIDEAN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_retract_of_space (hl_ty_cart R N) t (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) = 1 <-> hl_retract_of N t s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:619 / RETRACTION   (hash md5:dc4961a866a139b9e5909a9e8d0477ba)
Theorem hlt_RETRACTION : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, forall r :e hl_ty_cart R A :^: hl_ty_cart R A, hl_retraction A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) s t) r = 1 <-> hl_SUBSET (hl_ty_cart R A) t s = 1 /\ (hl_continuous_on A A r s = 1 /\ (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) r s = t /\ forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x t = 1 -> r x = x)).
Admitted.

// HOL Light: Multivariate/degree.ml:627 / RETRACT_OF_IMP_EXTENSIBLE   (hash md5:4c3a2c1b7c77cedd2e277c9125341d6f)
Theorem hlt_RETRACT_OF_IMP_EXTENSIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R M, hl_retract_of M s t = 1 /\ (hl_continuous_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) u = 1) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g t) u = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/degree.ml:641 / RETRACTION_IDEMPOTENT   (hash md5:7b8e99fd78525493ae404100432c11e7)
Theorem hlt_RETRACTION_IDEMPOTENT : forall A:set, A <> Empty -> forall r :e hl_ty_cart R A :^: hl_ty_cart R A, forall s t :e 2 :^: hl_ty_cart R A, hl_retraction A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) s t) r = 1 -> forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> r (r x) = r x.
Admitted.

// HOL Light: Multivariate/degree.ml:645 / IDEMPOTENT_IMP_RETRACTION   (hash md5:26fd6a15149d2972eb35e9d79fb2e04a)
Theorem hlt_IDEMPOTENT_IMP_RETRACTION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_continuous_on N N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> f (f x) = f x)) -> hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s)) f = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:652 / RETRACTION_SUBSET   (hash md5:d4226d85f340091ad72f5ced6bf0eea8)
Theorem hlt_RETRACTION_SUBSET : forall A:set, A <> Empty -> forall r :e hl_ty_cart R A :^: hl_ty_cart R A, forall s s' t :e 2 :^: hl_ty_cart R A, hl_retraction A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) s t) r = 1 /\ (hl_SUBSET (hl_ty_cart R A) t s' = 1 /\ hl_SUBSET (hl_ty_cart R A) s' s = 1) -> hl_retraction A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) s' t) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:658 / RETRACT_OF_SUBSET   (hash md5:d455c9e1e2f9aa96b39b54a0db9d86e1)
Theorem hlt_RETRACT_OF_SUBSET : forall A:set, A <> Empty -> forall s s' t :e 2 :^: hl_ty_cart R A, hl_retract_of A t s = 1 /\ (hl_SUBSET (hl_ty_cart R A) t s' = 1 /\ hl_SUBSET (hl_ty_cart R A) s' s = 1) -> hl_retract_of A t s' = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:665 / RETRACT_OF_TRANSLATION   (hash md5:2a6445f5c0c3e0e446d0a7f1f069fb82)
Theorem hlt_RETRACT_OF_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall t s :e 2 :^: hl_ty_cart R N, hl_retract_of N t s = 1 -> hl_retract_of N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) t) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:683 / RETRACT_OF_TRANSLATION_EQ   (hash md5:1601d751ef5921909005985437b606f0)
Theorem hlt_RETRACT_OF_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall t s :e 2 :^: hl_ty_cart R N, hl_retract_of N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) t) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_retract_of N t s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:694 / RETRACT_OF_INJECTIVE_LINEAR_IMAGE   (hash md5:82b33771c54f1eba91c9fba18f9235d6)
Theorem hlt_RETRACT_OF_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ hl_retract_of M t s = 1) -> hl_retract_of N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:717 / RETRACT_OF_LINEAR_IMAGE_EQ   (hash md5:57fb575d6419f38ec09f8f8ee34e1fc3)
Theorem hlt_RETRACT_OF_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y)) -> (hl_retract_of N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_retract_of M t s = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:733 / RETRACTION_REFL   (hash md5:b8703a2cc02937417c50d0b4c0fcc5fe)
Theorem hlt_RETRACTION_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_retraction A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) s s) (fun x :e hl_ty_cart R A => x) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:737 / RETRACT_OF_REFL   (hash md5:13d4317a441897a95968338dc809d1d6)
Theorem hlt_RETRACT_OF_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_retract_of A s s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:741 / RETRACTION_CLOSEST_POINT   (hash md5:c00d424516efecc9a5aca14335c4075f)
Theorem hlt_RETRACTION_CLOSEST_POINT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N t = 1 /\ (hl_closed N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) t s = 1)) -> hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) (hl_closest_point N t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:749 / RETRACT_OF_IMP_SUBSET   (hash md5:5207ca70411572f8d880857559a82ed8)
Theorem hlt_RETRACT_OF_IMP_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_retract_of A s t = 1 -> hl_SUBSET (hl_ty_cart R A) s t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:753 / RETRACT_OF_EMPTY   (hash md5:09b8a84e93d63449aa8f3ed237fdb9df)
Theorem hlt_RETRACT_OF_EMPTY : forall N:set, N <> Empty -> (forall s :e 2 :^: hl_ty_cart R N, hl_retract_of N (hl_EMPTY (hl_ty_cart R N)) s = 1 <-> s = hl_EMPTY (hl_ty_cart R N)) /\ forall s :e 2 :^: hl_ty_cart R N, hl_retract_of N s (hl_EMPTY (hl_ty_cart R N)) = 1 <-> s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/degree.ml:762 / RETRACT_OF_SING   (hash md5:79d8d2535acb67ac482fbeb34e3498dd)
Theorem hlt_RETRACT_OF_SING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_retract_of N (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))) s = 1 <-> hl_IN (hl_ty_cart R N) x s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:769 / RETRACT_OF_OPEN_UNION   (hash md5:165983a5962516e14bbd7592e2c227e7)
Theorem hlt_RETRACT_OF_OPEN_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) t = 1 /\ (hl_DISJOINT (hl_ty_cart R N) s t = 1 /\ (s = hl_EMPTY (hl_ty_cart R N) -> t = hl_EMPTY (hl_ty_cart R N)))) -> hl_retract_of N s (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:788 / RETRACT_OF_SEPARATED_UNION   (hash md5:fcc958a5022f941e916db6b61c38cc7f)
Theorem hlt_RETRACT_OF_SEPARATED_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_INTER (hl_ty_cart R N) s (hl_closure N t) = hl_EMPTY (hl_ty_cart R N) /\ (hl_INTER (hl_ty_cart R N) t (hl_closure N s) = hl_EMPTY (hl_ty_cart R N) /\ (s = hl_EMPTY (hl_ty_cart R N) -> t = hl_EMPTY (hl_ty_cart R N))) -> hl_retract_of N s (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:796 / RETRACT_OF_CLOSED_UNION   (hash md5:8d881f14cf49e93d1379413665388dd0)
Theorem hlt_RETRACT_OF_CLOSED_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) t = 1 /\ (hl_DISJOINT (hl_ty_cart R N) s t = 1 /\ (s = hl_EMPTY (hl_ty_cart R N) -> t = hl_EMPTY (hl_ty_cart R N)))) -> hl_retract_of N s (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:806 / RETRACTION_o   (hash md5:33e14a3ea3b93135118506e89a4b78eb)
Theorem hlt_RETRACTION_o : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, forall s t u :e 2 :^: hl_ty_cart R N, hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) f = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t u) g = 1 -> hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s u) (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:817 / RETRACT_OF_TRANS   (hash md5:260ed500204de002daa40da71928a5e1)
Theorem hlt_RETRACT_OF_TRANS : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_retract_of N s t = 1 /\ hl_retract_of N t u = 1 -> hl_retract_of N s u = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:822 / CLOSED_IN_RETRACT   (hash md5:253255d01a872001ea273f4de4fa3721)
Theorem hlt_CLOSED_IN_RETRACT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_retract_of N s t = 1 -> hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:836 / RETRACT_OF_CONTRACTIBLE   (hash md5:959e15e84f5ed76552c9e04416dd65b7)
Theorem hlt_RETRACT_OF_CONTRACTIBLE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_contractible N t = 1 /\ hl_retract_of N s t = 1 -> hl_contractible N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:853 / RETRACT_OF_COMPACT   (hash md5:0abb9c869e301584558de0124bc5f0f3)
Theorem hlt_RETRACT_OF_COMPACT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N t = 1 /\ hl_retract_of N s t = 1 -> hl_compact N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:858 / RETRACT_OF_CLOSED   (hash md5:302ca14faf01581bbb704b886b8d2e9e)
Theorem hlt_RETRACT_OF_CLOSED : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_closed A t = 1 /\ hl_retract_of A s t = 1 -> hl_closed A s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:862 / RETRACT_OF_CONNECTED   (hash md5:12ed1cb338c3a631f4eb82081a9477a1)
Theorem hlt_RETRACT_OF_CONNECTED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_connected N t = 1 /\ hl_retract_of N s t = 1 -> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:867 / RETRACT_OF_PATH_CONNECTED   (hash md5:cb572fbde55fa1ba9f2378659c5ee72b)
Theorem hlt_RETRACT_OF_PATH_CONNECTED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_path_connected N t = 1 /\ hl_retract_of N s t = 1 -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:872 / RETRACT_OF_SIMPLY_CONNECTED   (hash md5:3e77edc72f6be064a0fce56f6c7aeb0a)
Theorem hlt_RETRACT_OF_SIMPLY_CONNECTED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_simply_connected N t = 1 /\ hl_retract_of N s t = 1 -> hl_simply_connected N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:883 / RETRACT_OF_HOMOTOPICALLY_TRIVIAL   (hash md5:f5c751d3d466af096cf8779415c02c93)
Theorem hlt_RETRACT_OF_HOMOTOPICALLY_TRIVIAL : forall M N:set, M <> Empty -> N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R M, hl_retract_of N t s = 1 /\ (forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f u) s = 1 /\ (hl_continuous_on M N g u = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g u) s = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) f g = 1) -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f u) t = 1 /\ (hl_continuous_on M N g u = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g u) t = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:903 / RETRACT_OF_HOMOTOPICALLY_TRIVIAL_NULL   (hash md5:dcb6d664a2141922ec20eddb8f79660d)
Theorem hlt_RETRACT_OF_HOMOTOPICALLY_TRIVIAL_NULL : forall M N:set, M <> Empty -> N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R M, hl_retract_of N t s = 1 /\ (forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f u = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f u) s = 1 -> exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) f (fun x :e hl_ty_cart R M => c) = 1) -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f u = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f u) t = 1 -> exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => c) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:923 / RETRACT_OF_COHOMOTOPICALLY_TRIVIAL   (hash md5:dea30eb97770d781b9ac454114a8b328)
Theorem hlt_RETRACT_OF_COHOMOTOPICALLY_TRIVIAL : forall M N:set, M <> Empty -> N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R M, hl_retract_of N t s = 1 /\ (forall f g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on N M f s = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) f s) u = 1 /\ (hl_continuous_on N M g s = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g s) u = 1)) -> hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R M) (fun x :e hl_ty_cart R M :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u)) f g = 1) -> forall f g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on N M f t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) f t) u = 1 /\ (hl_continuous_on N M g t = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t) u = 1)) -> hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R M) (fun x :e hl_ty_cart R M :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u)) f g = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:943 / RETRACT_OF_COHOMOTOPICALLY_TRIVIAL_NULL   (hash md5:97bc4ceed2cf78bdd431a7b592c08c3e)
Theorem hlt_RETRACT_OF_COHOMOTOPICALLY_TRIVIAL_NULL : forall M N:set, M <> Empty -> N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R M, hl_retract_of N t s = 1 /\ (forall f :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on N M f s = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) f s) u = 1 -> exists c :e hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R M) (fun x :e hl_ty_cart R M :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u)) f (fun x :e hl_ty_cart R N => c) = 1) -> forall f :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on N M f t = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) f t) u = 1 -> exists c :e hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R M) (fun x :e hl_ty_cart R M :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u)) f (fun x :e hl_ty_cart R N => c) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:963 / RETRACTION_IMP_QUOTIENT_MAP_EXPLICIT   (hash md5:04ef6bc20ef6d9211552db9b0ca7fbef)
Theorem hlt_RETRACTION_IMP_QUOTIENT_MAP_EXPLICIT : forall N:set, N <> Empty -> forall r :e hl_ty_cart R N :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1 -> forall u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) u t = 1 -> (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5924 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5924 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) (r x) u = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) u = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:974 / RETRACT_OF_LOCALLY_CONNECTED   (hash md5:6f3eda5d03a7dd25ab08954e8af00e84)
Theorem hlt_RETRACT_OF_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_retract_of N s t = 1 /\ hl_locally N (hl_connected N) t = 1 -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:985 / RETRACT_OF_LOCALLY_PATH_CONNECTED   (hash md5:1897d1f716bd11dc2f3864de475fc3c7)
Theorem hlt_RETRACT_OF_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_retract_of N s t = 1 /\ hl_locally N (hl_path_connected N) t = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:998 / RETRACT_OF_LOCALLY_COMPACT   (hash md5:a7f475846bbbd32614777bccd9b7ca8e)
Theorem hlt_RETRACT_OF_LOCALLY_COMPACT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_locally N (hl_compact N) s = 1 /\ hl_retract_of N t s = 1 -> hl_locally N (hl_compact N) t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:1003 / RETRACT_OF_PCROSS   (hash md5:c69e93b67a0a06fbcee8ddb63fc2ad47)
Theorem hlt_RETRACT_OF_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s s' :e 2 :^: hl_ty_cart R M, forall t t' :e 2 :^: hl_ty_cart R N, hl_retract_of M s s' = 1 /\ hl_retract_of N t t' = 1 -> hl_retract_of (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) (hl_PCROSS R M N s' t') = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:1025 / RETRACT_OF_PCROSS_EQ   (hash md5:cc771506a7eaf6133b2483510323c932)
Theorem hlt_RETRACT_OF_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s s' :e 2 :^: hl_ty_cart R M, forall t t' :e 2 :^: hl_ty_cart R N, hl_retract_of (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) (hl_PCROSS R M N s' t') = 1 <-> (s = hl_EMPTY (hl_ty_cart R M) \/ t = hl_EMPTY (hl_ty_cart R N)) /\ (s' = hl_EMPTY (hl_ty_cart R M) \/ t' = hl_EMPTY (hl_ty_cart R N)) \/ hl_retract_of M s s' = 1 /\ hl_retract_of N t t' = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:1081 / HOMOTOPIC_INTO_RETRACT   (hash md5:17a38b56e9b93364e9f87d9af6ec388a)
Theorem hlt_HOMOTOPIC_INTO_RETRACT : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) t = 1 /\ (hl_retract_of N t u = 1 /\ hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u)) f g = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:1106 / CONTRACTIBLE_SPHERE   (hash md5:f93830e619f8b8dfbcb6501fbc490e73)
Theorem hlt_CONTRACTIBLE_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_contractible N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 <-> hl_real_le r (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:1137 / NO_RETRACTION_CBALL   (hash md5:673ae5bd27f9b18e23de5f9a0cf5fe70)
Theorem hlt_NO_RETRACTION_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> ~ hl_retract_of N (hl_sphere N (hl_pair (hl_ty_cart R N) R a e1)) (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:1145 / BROUWER_BALL   (hash md5:c1aa2c45bf0779135b585903e58f310f)
Theorem hlt_BROUWER_BALL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_continuous_on N N f (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_cball N (hl_pair (hl_ty_cart R N) R a e1))) (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) = 1) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:1225 / BROUWER   (hash md5:acbe00a4e3a0b40193b448e7518d9909)
Theorem hlt_BROUWER : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_continuous_on N N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) s = 1))) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:1257 / BROUWER_WEAK   (hash md5:0b2676323acd84588de61ddb77f2a23e)
Theorem hlt_BROUWER_WEAK : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_convex N s = 1 /\ (~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) /\ (hl_continuous_on N N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) s = 1))) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:1265 / BROUWER_CUBE   (hash md5:12e710e7d75834243a080adaac0feb15)
Theorem hlt_BROUWER_CUBE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_vec N (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_vec N (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_vec N (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_vec N (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:1278 / DIMENSION_EQ_AFF_DIM   (hash md5:d739b1ac49399ed6ee156adb31ffe7b6)
Theorem hlt_DIMENSION_EQ_AFF_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_dimension N s = hl_aff_dim N s.
Admitted.

// HOL Light: Multivariate/degree.ml:1582 / AFF_DIM_DIMENSION   (hash md5:233fbd9952d84e93774ee9572b7ec038)
Theorem hlt_AFF_DIM_DIMENSION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N s = hl_dimension N (hl_hull (hl_ty_cart R N) (hl_affine N) s).
Admitted.

// HOL Light: Multivariate/degree.ml:1587 / AFF_DIM_DIMENSION_ALT   (hash md5:672eeaee254daf3e3fef61a0b84298c8)
Theorem hlt_AFF_DIM_DIMENSION_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N s = hl_dimension N (hl_hull (hl_ty_cart R N) (hl_convex N) s).
Admitted.

// HOL Light: Multivariate/degree.ml:1592 / DIMENSION_SUBSPACE   (hash md5:e65c756b52a67b8ed48900955b332371)
Theorem hlt_DIMENSION_SUBSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> hl_dimension N s = hl_int_of_num (hl_dim N s).
Admitted.

// HOL Light: Multivariate/degree.ml:1596 / DIM_DIMENSION   (hash md5:dab4f53a9dcf86a87af7c7c5ac1d475a)
Theorem hlt_DIM_DIMENSION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_of_num (hl_dim N s) = hl_dimension N (hl_span N s).
Admitted.

// HOL Light: Multivariate/degree.ml:1600 / DIMENSION_OPEN_IN_CONVEX   (hash md5:80d3ec8390a2e7206b7f5c692b0d8c61)
Theorem hlt_DIMENSION_OPEN_IN_CONVEX : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_convex N u = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 -> hl_dimension N s = hl_COND hl_ty_int (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_aff_dim N u).
Admitted.

// HOL Light: Multivariate/degree.ml:1635 / DIMENSION_OPEN   (hash md5:ee452500655777007b8cfd722d5f97e5)
Theorem hlt_DIMENSION_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_dimension N s = hl_COND hl_ty_int (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_dimindex N (hl_UNIV N))).
Admitted.

// HOL Light: Multivariate/degree.ml:1642 / DIMENSION_UNIV   (hash md5:534f80cc38bf5952045c1454687cc040)
Theorem hlt_DIMENSION_UNIV : forall N:set, N <> Empty -> hl_dimension N (hl_UNIV (hl_ty_cart R N)) = hl_int_of_num (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/degree.ml:1646 / DIMENSION_NONEMPTY_INTERIOR   (hash md5:b4840c4edfde86d0cc2eaf9f07b350fd)
Theorem hlt_DIMENSION_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> hl_dimension N s = hl_int_of_num (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/degree.ml:1654 / DIMENSION_ATMOST_RATIONAL_COORDINATES   (hash md5:c5dbf9915b31eabad2910810d26e5369)
Theorem hlt_DIMENSION_ATMOST_RATIONAL_COORDINATES : forall N:set, N <> Empty -> forall n :e omega, hl_le n (hl_dimindex N (hl_UNIV N)) = 1 -> hl_dimension N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5937 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5937 (hl_le (hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_5936 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_5936 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_rational (hl_vindex R N x i) = 1 then 1 else 0) i = 1 then 1 else 0))) n) x = 1 then 1 else 0)) = hl_int_of_num n.
Admitted.

// HOL Light: Multivariate/degree.ml:1710 / DIMENSION_COMPLEMENT_RATIONAL_COORDINATES   (hash md5:b898c76185649ab5ccce6e4989f8b80b)
Theorem hlt_DIMENSION_COMPLEMENT_RATIONAL_COORDINATES : forall N:set, N <> Empty -> hl_dimension N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5941 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5941 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_rational (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0))) = hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/degree.ml:1731 / DIMENSION_EQ_FULL_GEN   (hash md5:72d6c84bcccceedf56a8ecd29d19979f)
Theorem hlt_DIMENSION_EQ_FULL_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dimension N s = hl_aff_dim N s <-> s = hl_EMPTY (hl_ty_cart R N) \/ ~ hl_relative_interior N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/degree.ml:1878 / DIMENSION_LT_FULL_GEN   (hash md5:a90d726cfd86d5051ba6475c98fc2b98)
Theorem hlt_DIMENSION_LT_FULL_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_lt (hl_dimension N s) (hl_aff_dim N s) = 1 <-> ~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_relative_interior N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/degree.ml:1885 / DIMENSION_EQ_FULL_ALT   (hash md5:23a724c10d0048922fc9541e9e9e7320)
Theorem hlt_DIMENSION_EQ_FULL_ALT : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_convex N u = 1 /\ hl_SUBSET (hl_ty_cart R N) s u = 1 -> (hl_dimension N s = hl_aff_dim N u <-> s = hl_EMPTY (hl_ty_cart R N) /\ u = hl_EMPTY (hl_ty_cart R N) \/ ~ hl_interior_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/degree.ml:1917 / DIMENSION_LT_FULL_ALT   (hash md5:7d7e377df9962c98ea98c71d99c4c9e4)
Theorem hlt_DIMENSION_LT_FULL_ALT : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_convex N u = 1 /\ hl_SUBSET (hl_ty_cart R N) s u = 1 -> (hl_int_lt (hl_dimension N s) (hl_aff_dim N u) = 1 <-> ~ u = hl_EMPTY (hl_ty_cart R N) /\ hl_interior_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/degree.ml:1928 / DIMENSION_EQ_FULL   (hash md5:aac864e118aa5d6c8a4c6fd9c5e49d02)
Theorem hlt_DIMENSION_EQ_FULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dimension N s = hl_int_of_num (hl_dimindex N (hl_UNIV N)) <-> ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/degree.ml:1942 / DIMENSION_LT_FULL   (hash md5:fba2875d758be7195e497d77002137c6)
Theorem hlt_DIMENSION_LT_FULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_lt (hl_dimension N s) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 <-> hl_interior N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/degree.ml:1946 / DIMENSION_RELATIVE_FRONTIER_BOUNDED_OPEN   (hash md5:3cb626e48fa359fd14925077c9de2206)
Theorem hlt_DIMENSION_RELATIVE_FRONTIER_BOUNDED_OPEN : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_affine N u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ hl_bounded N s = 1) -> hl_dimension N (hl_relative_frontier N s) = hl_COND hl_ty_int (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_sub (hl_aff_dim N u) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/degree.ml:2076 / DIMENSION_FRONTIER_BOUNDED_OPEN   (hash md5:bdcf85d14fb8f8e44c3345ebb96a644c)
Theorem hlt_DIMENSION_FRONTIER_BOUNDED_OPEN : forall N:set, N <> Empty -> forall u :e 2 :^: hl_ty_cart R N, hl_open N u = 1 /\ hl_bounded N u = 1 -> hl_dimension N (hl_frontier N u) = hl_COND hl_ty_int (if u = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/degree.ml:2087 / DIMENSION_RELATIVE_FRONTIER_NONDENSE_OPEN   (hash md5:1efc0d72ac96ff93126812ce86b863bd)
Theorem hlt_DIMENSION_RELATIVE_FRONTIER_NONDENSE_OPEN : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_affine N u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_closure_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = u)) -> hl_dimension N (hl_relative_frontier N s) = hl_int_sub (hl_aff_dim N u) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/degree.ml:2255 / DIMENSION_FRONTIER_NONDENSE_OPEN   (hash md5:6afd1630d74b10778507a534fa31f530)
Theorem hlt_DIMENSION_FRONTIER_NONDENSE_OPEN : forall N:set, N <> Empty -> forall u :e 2 :^: hl_ty_cart R N, hl_open N u = 1 /\ (~ u = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_closure N u = hl_UNIV (hl_ty_cart R N)) -> hl_dimension N (hl_frontier N u) = hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/degree.ml:2266 / DIMENSION_RELATIVE_FRONTIER_CONVEX   (hash md5:b1d96672d0e5eb71657c3748753be612)
Theorem hlt_DIMENSION_RELATIVE_FRONTIER_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N)) -> hl_dimension N (hl_relative_frontier N s) = hl_int_sub (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/degree.ml:2277 / DIMENSION_SPHERE_INTER_AFFINE   (hash md5:28fbb0ca12bf32cef0a8c6cbcbf9364b)
Theorem hlt_DIMENSION_SPHERE_INTER_AFFINE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall t :e 2 :^: hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_affine N t = 1 /\ hl_IN (hl_ty_cart R N) a t = 1) -> hl_dimension N (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) t) = hl_int_sub (hl_aff_dim N t) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/degree.ml:2304 / DIMENSION_SPHERE   (hash md5:dc3d6ed91f0f48bf383e5f04b2311c25)
Theorem hlt_DIMENSION_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_dimension N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = hl_COND hl_ty_int (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r) (hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_COND hl_ty_int (if r = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/degree.ml:2322 / CONNECTED_OPEN_IN_CONVEX_DIFF_LOWDIM   (hash md5:d3ddbd0ea39ccbb43b4acafb10420a8a)
Theorem hlt_CONNECTED_OPEN_IN_CONVEX_DIFF_LOWDIM : forall N:set, N <> Empty -> forall c s t :e 2 :^: hl_ty_cart R N, hl_convex N c = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) c) s = 1 /\ (hl_connected N s = 1 /\ hl_int_le (hl_dimension N t) (hl_int_sub (hl_aff_dim N c) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2541 / CONNECTED_CONVEX_DIFF_LOWDIM   (hash md5:8a5e12ed7c187cc4b7ec420356522368)
Theorem hlt_CONNECTED_CONVEX_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_int_le (hl_dimension N t) (hl_int_sub (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1 -> hl_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2548 / CONNECTED_OPEN_IN_DIFF_LOWDIM   (hash md5:ae6eb0003fa7c31448b9398103321a54)
Theorem hlt_CONNECTED_OPEN_IN_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ (hl_connected N s = 1 /\ hl_int_le (hl_dimension N t) (hl_int_sub (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2558 / CONNECTED_OPEN_DIFF_LOWDIM   (hash md5:5a7226e8c1640b492b88eb2bf0f9358d)
Theorem hlt_CONNECTED_OPEN_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ hl_int_le (hl_dimension N t) (hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2568 / CONNECTED_FULL_CONVEX_DIFF_LOWDIM   (hash md5:5209a21b1822cb45d68002f03751453a)
Theorem hlt_CONNECTED_FULL_CONVEX_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) /\ hl_int_le (hl_dimension N t) (hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2575 / CONNECTED_UNIV_DIFF_LOWDIM   (hash md5:0551f0f7b3ccfd80e5ac88346cb43592)
Theorem hlt_CONNECTED_UNIV_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_dimension N s) (hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1 -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2582 / CONNECTED_FULL_REGULAR_DIFF_LOWDIM   (hash md5:486ee9bea51f0811cc4bcfb7d8c8f647)
Theorem hlt_CONNECTED_FULL_REGULAR_DIFF_LOWDIM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s (hl_closure N (hl_interior N s)) = 1 /\ (hl_connected N (hl_interior N s) = 1 /\ hl_int_le (hl_dimension N t) (hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1) -> hl_connected N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2623 / AR   (hash md5:45eb2d5b120740c2d6558f0005176950)
Theorem hlt_AR_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 <-> forall u s' :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_homeomorphic N (hl_ty_finite_sum N 1) s s' = 1 /\ hl_closed_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) s' = 1 -> hl_retract_of (hl_ty_finite_sum N 1) s' u = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2629 / ANR   (hash md5:a9fec9fb39250a9430bae8521ec683b0)
Theorem hlt_ANR_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 <-> forall u s' :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_homeomorphic N (hl_ty_finite_sum N 1) s s' = 1 /\ hl_closed_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) s' = 1 -> exists t :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_open_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) t = 1 /\ hl_retract_of (hl_ty_finite_sum N 1) s' t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2636 / ENR   (hash md5:bbb5bc4278102ef1d85163aa02861244)
Theorem hlt_ENR_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_ENR A s = 1 <-> exists u :e 2 :^: hl_ty_cart R A, hl_open A u = 1 /\ hl_retract_of A s u = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2643 / AR_IMP_ABSOLUTE_EXTENSOR   (hash md5:c3e09ef71d91ea1b96ec3039d7d7037a)
Theorem hlt_AR_IMP_ABSOLUTE_EXTENSOR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u t :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 /\ (hl_continuous_on M N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) s = 1 /\ hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) t = 1)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g u) s = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/degree.ml:2694 / AR_IMP_ABSOLUTE_RETRACT   (hash md5:2cf66ae8de519204d46bd49d2269032c)
Theorem hlt_AR_IMP_ABSOLUTE_RETRACT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall u s' :e 2 :^: hl_ty_cart R M, hl_AR N s = 1 /\ (hl_homeomorphic N M s s' = 1 /\ hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s' = 1) -> hl_retract_of M s' u = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2716 / AR_IMP_ABSOLUTE_RETRACT_UNIV   (hash md5:79c0451259e14bb3ef938ee06ebe4f51)
Theorem hlt_AR_IMP_ABSOLUTE_RETRACT_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall s' :e 2 :^: hl_ty_cart R M, hl_AR N s = 1 /\ (hl_homeomorphic N M s s' = 1 /\ hl_closed M s' = 1) -> hl_retract_of M s' (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2722 / ABSOLUTE_EXTENSOR_IMP_AR   (hash md5:c6eea516f2cbedb4f0f5fa91de0ca377)
Theorem hlt_ABSOLUTE_EXTENSOR_IMP_AR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, (forall f :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum N 1), forall u t :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_continuous_on (hl_ty_finite_sum N 1) N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_ty_cart R N) f t) s = 1 /\ hl_closed_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) t = 1) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_continuous_on (hl_ty_finite_sum N 1) N g u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_ty_cart R N) g u) s = 1 /\ forall x :e hl_ty_cart R (hl_ty_finite_sum N 1), hl_IN (hl_ty_cart R (hl_ty_finite_sum N 1)) x t = 1 -> g x = f x)) -> hl_AR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2751 / AR_EQ_ABSOLUTE_EXTENSOR   (hash md5:87c9d10660da13a88b0087a9b7218e71)
Theorem hlt_AR_EQ_ABSOLUTE_EXTENSOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 <-> forall f :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum N 1), forall u t :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_continuous_on (hl_ty_finite_sum N 1) N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_ty_cart R N) f t) s = 1 /\ hl_closed_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) t = 1) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_continuous_on (hl_ty_finite_sum N 1) N g u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_ty_cart R N) g u) s = 1 /\ forall x :e hl_ty_cart R (hl_ty_finite_sum N 1), hl_IN (hl_ty_cart R (hl_ty_finite_sum N 1)) x t = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/degree.ml:2762 / AR_IMP_RETRACT   (hash md5:ac8c3ee4fb27b229ba16c05e46bdaa5d)
Theorem hlt_AR_IMP_RETRACT : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 /\ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 -> hl_retract_of N s u = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2767 / HOMEOMORPHIC_ARNESS   (hash md5:b4d04cf1d23afbeffb42a103fa5fef97)
Theorem hlt_HOMEOMORPHIC_ARNESS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 -> (hl_AR M s = 1 <-> hl_AR N t = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:2784 / AR_TRANSLATION   (hash md5:ad191fadf8722004916de2112365766f)
Theorem hlt_AR_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_AR N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_AR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2791 / AR_LINEAR_IMAGE_EQ   (hash md5:1831352353c5836916dd44e7f2b20d72)
Theorem hlt_AR_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_AR N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_AR M s = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:2800 / HOMEOMORPHISM_ARNESS   (hash md5:da83519efa521b95a189adf3b2c9e10a)
Theorem hlt_HOMEOMORPHISM_ARNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R M, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> (hl_AR N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f k) = 1 <-> hl_AR M k = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:2811 / ANR_IMP_ABSOLUTE_NEIGHBOURHOOD_EXTENSOR   (hash md5:e9730d316e7b0cc41b7be3b544d05500)
Theorem hlt_ANR_IMP_ABSOLUTE_NEIGHBOURHOOD_EXTENSOR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u t :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 /\ (hl_continuous_on M N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) s = 1 /\ hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) t = 1)) -> exists v :e 2 :^: hl_ty_cart R M, exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t v = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) v = 1 /\ (hl_continuous_on M N g v = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g v) s = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> g x = f x))).
Admitted.

// HOL Light: Multivariate/degree.ml:2870 / ANR_IMP_ABSOLUTE_NEIGHBOURHOOD_RETRACT   (hash md5:d24c8aba03a5db74c09f6a35112b7305)
Theorem hlt_ANR_IMP_ABSOLUTE_NEIGHBOURHOOD_RETRACT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall u s' :e 2 :^: hl_ty_cart R M, hl_ANR N s = 1 /\ (hl_homeomorphic N M s s' = 1 /\ hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s' = 1) -> exists v :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) v = 1 /\ hl_retract_of M s' v = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2894 / ANR_IMP_ABSOLUTE_NEIGHBOURHOOD_RETRACT_UNIV   (hash md5:ee8f24c773091a56f0b201569c5048b7)
Theorem hlt_ANR_IMP_ABSOLUTE_NEIGHBOURHOOD_RETRACT_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall s' :e 2 :^: hl_ty_cart R M, hl_ANR N s = 1 /\ (hl_homeomorphic N M s s' = 1 /\ hl_closed M s' = 1) -> exists v :e 2 :^: hl_ty_cart R M, hl_open M v = 1 /\ hl_retract_of M s' v = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2900 / ABSOLUTE_NEIGHBOURHOOD_EXTENSOR_IMP_ANR   (hash md5:a1e5dc10fabe9e05819f51b8ba1ed3ab)
Theorem hlt_ABSOLUTE_NEIGHBOURHOOD_EXTENSOR_IMP_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, (forall f :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum N 1), forall u t :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_continuous_on (hl_ty_finite_sum N 1) N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_ty_cart R N) f t) s = 1 /\ hl_closed_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) t = 1) -> exists v :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), exists g :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_SUBSET (hl_ty_cart R (hl_ty_finite_sum N 1)) t v = 1 /\ (hl_open_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) v = 1 /\ (hl_continuous_on (hl_ty_finite_sum N 1) N g v = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_ty_cart R N) g v) s = 1 /\ forall x :e hl_ty_cart R (hl_ty_finite_sum N 1), hl_IN (hl_ty_cart R (hl_ty_finite_sum N 1)) x t = 1 -> g x = f x)))) -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:2932 / ANR_EQ_ABSOLUTE_NEIGHBOURHOOD_EXTENSOR   (hash md5:49400afe1ed712fa1e04741ce15bf6ae)
Theorem hlt_ANR_EQ_ABSOLUTE_NEIGHBOURHOOD_EXTENSOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 <-> forall f :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum N 1), forall u t :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_continuous_on (hl_ty_finite_sum N 1) N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_ty_cart R N) f t) s = 1 /\ hl_closed_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) t = 1) -> exists v :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), exists g :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_SUBSET (hl_ty_cart R (hl_ty_finite_sum N 1)) t v = 1 /\ (hl_open_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) v = 1 /\ (hl_continuous_on (hl_ty_finite_sum N 1) N g v = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_ty_cart R N) g v) s = 1 /\ forall x :e hl_ty_cart R (hl_ty_finite_sum N 1), hl_IN (hl_ty_cart R (hl_ty_finite_sum N 1)) x t = 1 -> g x = f x))).
Admitted.

// HOL Light: Multivariate/degree.ml:2945 / ANR_IMP_ABSOLUTE_CLOSED_NEIGHBOURHOOD_RETRACT   (hash md5:59d417eb34496cc71d040968ec875b56)
Theorem hlt_ANR_IMP_ABSOLUTE_CLOSED_NEIGHBOURHOOD_RETRACT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall u s' :e 2 :^: hl_ty_cart R M, hl_ANR N s = 1 /\ (hl_homeomorphic N M s s' = 1 /\ hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s' = 1) -> exists v w :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) v = 1 /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) w = 1 /\ (hl_SUBSET (hl_ty_cart R M) s' v = 1 /\ (hl_SUBSET (hl_ty_cart R M) v w = 1 /\ hl_retract_of M s' w = 1))).
Admitted.

// HOL Light: Multivariate/degree.ml:2973 / ANR_IMP_ABSOLUTE_CLOSED_NEIGHBOURHOOD_EXTENSOR   (hash md5:9a6cabb1231a359fc882787960ebca78)
Theorem hlt_ANR_IMP_ABSOLUTE_CLOSED_NEIGHBOURHOOD_EXTENSOR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u t :e 2 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 /\ (hl_continuous_on M N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) s = 1 /\ hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) t = 1)) -> exists v w :e 2 :^: hl_ty_cart R M, exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) v = 1 /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) w = 1 /\ (hl_SUBSET (hl_ty_cart R M) t v = 1 /\ (hl_SUBSET (hl_ty_cart R M) v w = 1 /\ (hl_continuous_on M N g w = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g w) s = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> g x = f x))))).
Admitted.

// HOL Light: Multivariate/degree.ml:3008 / ANR_IMP_NEIGHBOURHOOD_RETRACT   (hash md5:1f1c1b597926f0bbb13b2e13820825e2)
Theorem hlt_ANR_IMP_NEIGHBOURHOOD_RETRACT : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 /\ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 -> exists v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) v = 1 /\ hl_retract_of N s v = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3015 / ANR_IMP_CLOSED_NEIGHBOURHOOD_RETRACT   (hash md5:19149712c93e945af204575c03986534)
Theorem hlt_ANR_IMP_CLOSED_NEIGHBOURHOOD_RETRACT : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 /\ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 -> exists v w :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) v = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) w = 1 /\ (hl_SUBSET (hl_ty_cart R N) s v = 1 /\ (hl_SUBSET (hl_ty_cart R N) v w = 1 /\ hl_retract_of N s w = 1))).
Admitted.

// HOL Light: Multivariate/degree.ml:3024 / HOMEOMORPHIC_ANRNESS   (hash md5:46e8cb22014ad8f7a0914092f72165f1)
Theorem hlt_HOMEOMORPHIC_ANRNESS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 -> (hl_ANR M s = 1 <-> hl_ANR N t = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:3041 / ANR_TRANSLATION   (hash md5:6f7637f293b6c8aa7bc1e2cd77aed74c)
Theorem hlt_ANR_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_ANR N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3048 / ANR_LINEAR_IMAGE_EQ   (hash md5:cddaa8a611292d8bcd7a531f39a9739e)
Theorem hlt_ANR_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_ANR N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_ANR M s = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:3057 / HOMEOMORPHISM_ANRNESS   (hash md5:42d2a153bb7b5f677bf1f9257546e524)
Theorem hlt_HOMEOMORPHISM_ANRNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R M, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> (hl_ANR N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f k) = 1 <-> hl_ANR M k = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:3068 / HOMOTOPIC_ON_NEIGHBOURHOOD_INTO_ANR   (hash md5:ba0fb9a6566494b4c88ef6fb28c31f99)
Theorem hlt_HOMOTOPIC_ON_NEIGHBOURHOOD_INTO_ANR : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall v :e 2 :^: hl_ty_cart R N, hl_ANR N v = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) v = 1 /\ (hl_continuous_on M N g s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) v = 1 /\ (hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> f x = g x)))))) -> exists u :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 /\ (hl_SUBSET (hl_ty_cart R M) t u = 1 /\ hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun h :e hl_ty_cart R N :^: hl_ty_cart R M => if forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> h x = f x then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) v)) f g = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:3173 / ENR_IMP_ABSOLUTE_NEIGHBOURHOOD_RETRACT   (hash md5:e7c69f587356994bf378cd2cf2df244d)
Theorem hlt_ENR_IMP_ABSOLUTE_NEIGHBOURHOOD_RETRACT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall s' u :e 2 :^: hl_ty_cart R N, hl_ENR M s = 1 /\ (hl_homeomorphic M N s s' = 1 /\ hl_SUBSET (hl_ty_cart R N) s' u = 1) -> exists t' :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t' = 1 /\ hl_retract_of N s' t' = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3228 / ENR_IMP_ABSOLUTE_NEIGHBOURHOOD_RETRACT_UNIV   (hash md5:8554e9bffcd5e8997d449b81105dda4a)
Theorem hlt_ENR_IMP_ABSOLUTE_NEIGHBOURHOOD_RETRACT_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall s' :e 2 :^: hl_ty_cart R N, hl_ENR M s = 1 /\ hl_homeomorphic M N s s' = 1 -> exists t' :e 2 :^: hl_ty_cart R N, hl_open N t' = 1 /\ hl_retract_of N s' t' = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3236 / HOMEOMORPHIC_ENRNESS   (hash md5:8891e3e034229608c0fbef28dc4e257d)
Theorem hlt_HOMEOMORPHIC_ENRNESS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 -> (hl_ENR M s = 1 <-> hl_ENR N t = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:3248 / ENR_TRANSLATION   (hash md5:f6c6849493ba3976b6657bd4c2520b0a)
Theorem hlt_ENR_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_ENR N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3255 / ENR_LINEAR_IMAGE_EQ   (hash md5:65304535027b19a1d35869f7e75d8145)
Theorem hlt_ENR_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_ENR N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_ENR M s = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:3264 / HOMEOMORPHISM_ENRNESS   (hash md5:54f75d4b8aee199cf9c53217fc4f2f72)
Theorem hlt_HOMEOMORPHISM_ENRNESS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R M, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> (hl_ENR N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f k) = 1 <-> hl_ENR M k = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:3280 / AR_IMP_ANR   (hash md5:e346752b26e4469b4be0fa8b20be6263)
Theorem hlt_AR_IMP_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3284 / ENR_IMP_ANR   (hash md5:b5dfec302d4545f7d8b66872a347c3fe)
Theorem hlt_ENR_IMP_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3289 / ENR_ANR   (hash md5:50501ba7d55f546c63572fe9928598b5)
Theorem hlt_ENR_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 <-> hl_ANR N s = 1 /\ hl_locally N (hl_compact N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3305 / AR_ANR   (hash md5:917b5de0f7765f810c72738756574cfa)
Theorem hlt_AR_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 <-> hl_ANR N s = 1 /\ (hl_contractible N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/degree.ml:3384 / ANR_RETRACT_OF_ANR   (hash md5:8fd70c01f931c256f83cfdbdce65c77d)
Theorem hlt_ANR_RETRACT_OF_ANR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_ANR N t = 1 /\ hl_retract_of N s t = 1 -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3405 / AR_RETRACT_OF_AR   (hash md5:a20ceff653b9e82cbe7fc775a8000121)
Theorem hlt_AR_RETRACT_OF_AR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_AR N t = 1 /\ hl_retract_of N s t = 1 -> hl_AR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3410 / ENR_RETRACT_OF_ENR   (hash md5:8535e392a352abc22d390d0e4deee193)
Theorem hlt_ENR_RETRACT_OF_ENR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_ENR N t = 1 /\ hl_retract_of N s t = 1 -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3414 / RETRACT_OF_UNIV   (hash md5:b2a394855b2040079cf09d3d0e7dd035)
Theorem hlt_RETRACT_OF_UNIV : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_retract_of N s (hl_UNIV (hl_ty_cart R N)) = 1 <-> hl_AR N s = 1 /\ hl_closed N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3425 / COMPACT_AR   (hash md5:734fcb7aa746a5d295e4d463d124e4bc)
Theorem hlt_COMPACT_AR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_AR N s = 1 <-> hl_compact N s = 1 /\ hl_retract_of N s (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3433 / NOT_AR_EMPTY   (hash md5:16f88e68e0960d2c0b81aefa52680768)
Theorem hlt_NOT_AR_EMPTY : forall N:set, N <> Empty -> ~ hl_AR N (hl_EMPTY (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3437 / AR_IMP_NONEMPTY   (hash md5:fea915890a403639701161500557773d)
Theorem hlt_AR_IMP_NONEMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 -> ~ s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/degree.ml:3441 / ENR_EMPTY   (hash md5:20c921b71118e40dc77c5e1490674bf3)
Theorem hlt_ENR_EMPTY : forall A:set, A <> Empty -> hl_ENR A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3445 / ANR_EMPTY   (hash md5:6029f07e5f40a912a37452f67cec7b37)
Theorem hlt_ANR_EMPTY : forall A:set, A <> Empty -> hl_ANR A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3449 / CONVEX_IMP_AR   (hash md5:e60da5656f42b917cbdf797d32c0f681)
Theorem hlt_CONVEX_IMP_AR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_AR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3456 / CONVEX_IMP_ANR   (hash md5:a9534d91de55b54c33f1d5a363c7b72c)
Theorem hlt_CONVEX_IMP_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3460 / IS_INTERVAL_IMP_ENR   (hash md5:5e106f81d66671c5958ffe8071b37597)
Theorem hlt_IS_INTERVAL_IMP_ENR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_is_interval N s = 1 -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3465 / ENR_CONVEX_CLOSED   (hash md5:198db5bca3019720bad6a2cf81e0c9d2)
Theorem hlt_ENR_CONVEX_CLOSED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ hl_convex N s = 1 -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3469 / AR_UNIV   (hash md5:6bf04fcfc0356be1f0a312ca4a4532f1)
Theorem hlt_AR_UNIV : forall N:set, N <> Empty -> hl_AR N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3473 / ANR_UNIV   (hash md5:773c6bb259ed7026a5ef92b4d399b2fc)
Theorem hlt_ANR_UNIV : forall N:set, N <> Empty -> hl_ANR N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3477 / ENR_UNIV   (hash md5:a83c957f4dd42d46b74dacbf4263745e)
Theorem hlt_ENR_UNIV : forall N:set, N <> Empty -> hl_ENR N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3481 / AR_SING   (hash md5:b94ace4072f805b39d797c3df1861b04)
Theorem hlt_AR_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_AR N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3485 / ANR_SING   (hash md5:f5ba57b1ad33a9fd1ee2910d7a3509e2)
Theorem hlt_ANR_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_ANR N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3489 / ENR_SING   (hash md5:20c74de05b9156701de7e7ce14d4d5ce)
Theorem hlt_ENR_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_ENR N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3493 / ANR_OPEN_IN   (hash md5:afc87d3bd7ec208c103393cd0121dd68)
Theorem hlt_ANR_OPEN_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) s = 1 /\ hl_ANR N t = 1 -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3517 / ENR_OPEN_IN   (hash md5:1ea8eb6b9897d77c321e654df56531d3)
Theorem hlt_ENR_OPEN_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) s = 1 /\ hl_ENR N t = 1 -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3522 / ANR_NEIGHBORHOOD_RETRACT   (hash md5:aee491ee5d28321b5c86f84fcc0f4f51)
Theorem hlt_ANR_NEIGHBORHOOD_RETRACT : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_retract_of N s t = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ hl_ANR N u = 1) -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3528 / ENR_NEIGHBORHOOD_RETRACT   (hash md5:2c4012104fc2717a45680fe8b5528257)
Theorem hlt_ENR_NEIGHBORHOOD_RETRACT : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_retract_of N s t = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ hl_ENR N u = 1) -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3534 / ANR_RELATIVE_INTERIOR   (hash md5:4411529598dacf2c0e44bcf20adf49ea)
Theorem hlt_ANR_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_ANR A s = 1 -> hl_ANR A (hl_relative_interior A s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3538 / ANR_DELETE   (hash md5:b80578d670193ddab2e7e86e815fcad5)
Theorem hlt_ANR_DELETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_ANR N s = 1 -> hl_ANR N (hl_DELETE (hl_ty_cart R N) s a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3542 / ENR_RELATIVE_INTERIOR   (hash md5:c23ce00f50a3ac4151994059101a8746)
Theorem hlt_ENR_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_ENR A s = 1 -> hl_ENR A (hl_relative_interior A s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3546 / ENR_DELETE   (hash md5:c9f8666746ff95f203b8d12a44aab85b)
Theorem hlt_ENR_DELETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_ENR N s = 1 -> hl_ENR N (hl_DELETE (hl_ty_cart R N) s a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3550 / OPEN_IMP_ENR   (hash md5:0ee31ea4472e5659a3850140ead6168e)
Theorem hlt_OPEN_IMP_ENR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3556 / OPEN_IMP_ANR   (hash md5:a4b4c060f0053cfc5fb5223ffeb4ac4c)
Theorem hlt_OPEN_IMP_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3560 / ANR_BALL   (hash md5:7ec49c9b8838ac0ff7535396acab03e0)
Theorem hlt_ANR_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_ANR N (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3564 / ENR_BALL   (hash md5:92c0beb9b0272413b9e8d4f76b491b40)
Theorem hlt_ENR_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_ENR N (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3568 / AR_BALL   (hash md5:0f55d4de70af399cf88d06432c942000)
Theorem hlt_AR_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_AR N (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) = 1 <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3573 / ANR_CBALL   (hash md5:af3d661d108800d467a9c2a965e65418)
Theorem hlt_ANR_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_ANR N (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3577 / ENR_CBALL   (hash md5:ce5d5d7ae04a19d647d3f9dc076a9e6f)
Theorem hlt_ENR_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_ENR N (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3581 / AR_CBALL   (hash md5:9e1ee06292df5bb26ce90dba64f8c78f)
Theorem hlt_AR_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_AR N (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3586 / ANR_INTERVAL   (hash md5:776d4b4303e0f8698f71873f6ba9d3c9)
Theorem hlt_ANR_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_ANR N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_ANR N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3591 / ENR_INTERVAL   (hash md5:50cd6c79caca73af3b7897be36fb5fe6)
Theorem hlt_ENR_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_ENR N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_ENR N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3596 / AR_INTERVAL   (hash md5:ef6f51a96c1a32fc6ac4f8f0a4d5b709)
Theorem hlt_AR_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_AR N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N)) /\ forall a b :e hl_ty_cart R N, hl_AR N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> ~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/degree.ml:3601 / ANR_INTERIOR   (hash md5:28e74f4fc91e4ed8c3afb7b0fe10d4a5)
Theorem hlt_ANR_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_ANR A (hl_interior A s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3605 / ENR_INTERIOR   (hash md5:df363a5401503f6784fd440808523885)
Theorem hlt_ENR_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_ENR A (hl_interior A s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3609 / AR_IMP_CONTRACTIBLE   (hash md5:f70a0b7f0d171ef85b1a9653031d0745)
Theorem hlt_AR_IMP_CONTRACTIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 -> hl_contractible N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3613 / AR_IMP_PATH_CONNECTED   (hash md5:51dc430880636ae4e5fcb139e4875f49)
Theorem hlt_AR_IMP_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3617 / AR_IMP_CONNECTED   (hash md5:56770eacb4fdf62f006518873a1a7111)
Theorem hlt_AR_IMP_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 -> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3621 / ENR_IMP_LOCALLY_COMPACT   (hash md5:f8c10a392600b0b0d00565c88fc2bf2d)
Theorem hlt_ENR_IMP_LOCALLY_COMPACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> hl_locally N (hl_compact N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3625 / ANR_IMP_LOCALLY_PATH_CONNECTED   (hash md5:2c34d0746f9a4b11d7c655c792a6a936)
Theorem hlt_ANR_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3646 / ANR_IMP_LOCALLY_CONNECTED   (hash md5:c5b59c7fafe40bc830a99a4e002fd2af)
Theorem hlt_ANR_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3651 / AR_IMP_LOCALLY_PATH_CONNECTED   (hash md5:30a129238506320feed80e39f95e5b34)
Theorem hlt_AR_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3655 / AR_IMP_LOCALLY_CONNECTED   (hash md5:ce7a1e5ad8f9e076afd3f142ae6e29f6)
Theorem hlt_AR_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3660 / ENR_IMP_LOCALLY_PATH_CONNECTED   (hash md5:10922c8c18ebd47f2522e9868681a542)
Theorem hlt_ENR_IMP_LOCALLY_PATH_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3664 / ENR_IMP_LOCALLY_CONNECTED   (hash md5:c73b2d8e29baa89d112f6dc06efec3df)
Theorem hlt_ENR_IMP_LOCALLY_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> hl_locally N (hl_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3668 / COUNTABLE_ANR_COMPONENTS   (hash md5:780fcd7af974f09b7773caa2202e7670)
Theorem hlt_COUNTABLE_ANR_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_components N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3672 / COUNTABLE_ANR_CONNECTED_COMPONENTS   (hash md5:8945467a0777e80488fceda7b1d27e70)
Theorem hlt_COUNTABLE_ANR_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5954 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5954 (hl_IN (hl_ty_cart R N) x t) (hl_connected_component N s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3677 / COUNTABLE_ANR_PATH_COMPONENTS   (hash md5:93de286f6f0c20bc8c89778145cd2821)
Theorem hlt_COUNTABLE_ANR_PATH_COMPONENTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5955 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5955 (hl_IN (hl_ty_cart R N) x t) (hl_path_component N s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3682 / FINITE_ANR_COMPONENTS   (hash md5:5205e0653afd75b915e48ad15d3de8ef)
Theorem hlt_FINITE_ANR_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 /\ hl_compact N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3686 / FINITE_ENR_COMPONENTS   (hash md5:ab2ee0a3ab0ad294441e5bf9b71fc134)
Theorem hlt_FINITE_ENR_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 /\ hl_compact N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3690 / ANR_PCROSS   (hash md5:a5428cdeca8628bccc20f618b4909583)
Theorem hlt_ANR_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_ANR M s = 1 /\ hl_ANR N t = 1 -> hl_ANR (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3731 / ANR_PCROSS_EQ   (hash md5:64e1392395d6de93db134cf6c2a48e8a)
Theorem hlt_ANR_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_ANR (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_ANR M s = 1 /\ hl_ANR N t = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:3759 / AR_PCROSS   (hash md5:3b9a9f14a1ef98ea88f93b6d7abe99b0)
Theorem hlt_AR_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_AR M s = 1 /\ hl_AR N t = 1 -> hl_AR (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3763 / ENR_PCROSS   (hash md5:386c766a9941fc3466a755dfe7df009a)
Theorem hlt_ENR_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_ENR M s = 1 /\ hl_ENR N t = 1 -> hl_ENR (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3767 / ENR_PCROSS_EQ   (hash md5:6804baf9b163d64a65c7f0f2ee715471)
Theorem hlt_ENR_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_ENR (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_ENR M s = 1 /\ hl_ENR N t = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:3773 / AR_PCROSS_EQ   (hash md5:8b081007e06f65ef0cc836a9db225724)
Theorem hlt_AR_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_AR (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> hl_AR M s = 1 /\ (hl_AR N t = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R M) /\ ~ t = hl_EMPTY (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/degree.ml:3779 / AR_CLOSED_UNION_LOCAL   (hash md5:177b05e6db674af333df8fb72400fee0)
Theorem hlt_AR_CLOSED_UNION_LOCAL : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) t = 1 /\ (hl_AR N s = 1 /\ (hl_AR N t = 1 /\ hl_AR N (hl_INTER (hl_ty_cart R N) s t) = 1))) -> hl_AR N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:3950 / ANR_UNION_EXTENSION_LEMMA   (hash md5:4887ba15ebdd197f479f9627a0722568)
Theorem hlt_ANR_UNION_EXTENSION_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R N, forall s1 s2 :e 2 :^: hl_ty_cart R M, forall u1 u2 :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) u = 1 /\ (hl_ANR N u1 = 1 /\ (hl_ANR N u2 = 1 /\ (hl_ANR N (hl_INTER (hl_ty_cart R N) u1 u2) = 1 /\ (hl_UNION (hl_ty_cart R N) u1 u2 = u /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) t = 1 /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) s1 = 1 /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) s2 = 1 /\ (hl_UNION (hl_ty_cart R M) s1 s2 = s /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_INTER (hl_ty_cart R M) t s1)) u1 = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_INTER (hl_ty_cart R M) t s2)) u2 = 1)))))))))) -> exists v :e 2 :^: hl_ty_cart R M, exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t v = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) v = 1 /\ (hl_continuous_on M N g v = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g v) u = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> g x = f x))).
Admitted.

// HOL Light: Multivariate/degree.ml:4186 / ANR_CLOSED_UNION_LOCAL   (hash md5:2d461a0694f2a87c1c1b2309855f042a)
Theorem hlt_ANR_CLOSED_UNION_LOCAL : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_ANR N s = 1 /\ (hl_ANR N t = 1 /\ hl_ANR N (hl_INTER (hl_ty_cart R N) s t) = 1))) -> hl_ANR N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4275 / ENR_CLOSED_UNION_LOCAL   (hash md5:6737eff6a523da263ef30e9548acf439)
Theorem hlt_ENR_CLOSED_UNION_LOCAL : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_ENR N s = 1 /\ (hl_ENR N t = 1 /\ hl_ENR N (hl_INTER (hl_ty_cart R N) s t) = 1))) -> hl_ENR N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4284 / AR_CLOSED_UNION   (hash md5:00e20dfb80089e33669ca481a92def32)
Theorem hlt_AR_CLOSED_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ (hl_AR N s = 1 /\ (hl_AR N t = 1 /\ hl_AR N (hl_INTER (hl_ty_cart R N) s t) = 1))) -> hl_AR N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4290 / ANR_CLOSED_UNION   (hash md5:feb40e0647a8f83fd21743aabd6114d1)
Theorem hlt_ANR_CLOSED_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ (hl_ANR N s = 1 /\ (hl_ANR N t = 1 /\ hl_ANR N (hl_INTER (hl_ty_cart R N) s t) = 1))) -> hl_ANR N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4296 / ENR_CLOSED_UNION   (hash md5:214a3550cdbed03e07141cb5298efe87)
Theorem hlt_ENR_CLOSED_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ (hl_ENR N s = 1 /\ (hl_ENR N t = 1 /\ hl_ENR N (hl_INTER (hl_ty_cart R N) s t) = 1))) -> hl_ENR N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4302 / ABSOLUTE_RETRACT_UNION   (hash md5:84fa2352711fe8ab0b7a703c510f595c)
Theorem hlt_ABSOLUTE_RETRACT_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_retract_of N s (hl_UNIV (hl_ty_cart R N)) = 1 /\ (hl_retract_of N t (hl_UNIV (hl_ty_cart R N)) = 1 /\ hl_retract_of N (hl_INTER (hl_ty_cart R N) s t) (hl_UNIV (hl_ty_cart R N)) = 1) -> hl_retract_of N (hl_UNION (hl_ty_cart R N) s t) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4309 / RETRACT_FROM_UNION_AND_INTER   (hash md5:40aff31e01cc027414305533581b203b)
Theorem hlt_RETRACT_FROM_UNION_AND_INTER : forall N:set, N <> Empty -> forall u s t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) t = 1 /\ (hl_retract_of N (hl_UNION (hl_ty_cart R N) s t) u = 1 /\ hl_retract_of N (hl_INTER (hl_ty_cart R N) s t) t = 1)) -> hl_retract_of N s u = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4327 / AR_FROM_UNION_AND_INTER_LOCAL   (hash md5:f848a3265a41e2b9b0d7ade533a30ca1)
Theorem hlt_AR_FROM_UNION_AND_INTER_LOCAL : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) t = 1 /\ (hl_AR N (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_AR N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_AR N s = 1 /\ hl_AR N t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4348 / AR_FROM_UNION_AND_INTER   (hash md5:49b0862475a7feae678ec7f97ee02081)
Theorem hlt_AR_FROM_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ (hl_AR N (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_AR N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_AR N s = 1 /\ hl_AR N t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4356 / ANR_FROM_UNION_AND_INTER_LOCAL   (hash md5:d76fff441347d5222fc427d75c42abe6)
Theorem hlt_ANR_FROM_UNION_AND_INTER_LOCAL : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) t = 1 /\ (hl_ANR N (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_ANR N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_ANR N s = 1 /\ hl_ANR N t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4405 / ANR_FROM_UNION_AND_INTER   (hash md5:a5ffd0381ba506dd8526b4c8ad988532)
Theorem hlt_ANR_FROM_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ (hl_ANR N (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_ANR N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_ANR N s = 1 /\ hl_ANR N t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4413 / ANR_FINITE_UNIONS_CONVEX_CLOSED   (hash md5:fcb529f182453effbd1ff4667e2a6941)
Theorem hlt_ANR_FINITE_UNIONS_CONVEX_CLOSED : forall N:set, N <> Empty -> forall t :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) t = 1 /\ (forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c t = 1 -> hl_closed N c = 1 /\ hl_convex N c = 1) -> hl_ANR N (hl_UNIONS (hl_ty_cart R N) t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4433 / FINITE_IMP_ANR   (hash md5:ef5acb7fbf8acba71b010caee4e6653a)
Theorem hlt_FINITE_IMP_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4442 / ANR_INSERT   (hash md5:a1dfc764f2e9d293e1e115b09ca8d1ad)
Theorem hlt_ANR_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_closed N s = 1 /\ hl_ANR N s = 1 -> hl_ANR N (hl_INSERT (hl_ty_cart R N) a s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4450 / ANR_TRIANGULATION   (hash md5:49e87f98bf5907633b6dd706658b40c6)
Theorem hlt_ANR_TRIANGULATION : forall A:set, A <> Empty -> forall tr :e 2 :^: (2 :^: hl_ty_cart R A), hl_triangulation A tr = 1 -> hl_ANR A (hl_UNIONS (hl_ty_cart R A) tr) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4456 / ANR_SIMPLICIAL_COMPLEX   (hash md5:2a2e75448a1f65869298bea6477bb8b2)
Theorem hlt_ANR_SIMPLICIAL_COMPLEX : forall A:set, A <> Empty -> forall c :e 2 :^: (2 :^: hl_ty_cart R A), hl_simplicial_complex A c = 1 -> hl_ANR A (hl_UNIONS (hl_ty_cart R A) c) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4460 / ANR_PATH_COMPONENT_ANR   (hash md5:48d564a14673635bde902b39a6ac23ae)
Theorem hlt_ANR_PATH_COMPONENT_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_ANR N s = 1 -> hl_ANR N (hl_path_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4468 / ANR_CONNECTED_COMPONENT_ANR   (hash md5:4d9518bd35ab52dc56d2703d44ac8806)
Theorem hlt_ANR_CONNECTED_COMPONENT_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_ANR N s = 1 -> hl_ANR N (hl_connected_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4476 / ANR_COMPONENT_ANR   (hash md5:bdfbfc0b5478abf749d5772150d2e7ad)
Theorem hlt_ANR_COMPONENT_ANR : forall N:set, N <> Empty -> forall c s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_ANR N c = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4485 / ANR_OPEN_UNION   (hash md5:ed0f28e7841467f7250d38d5d205d22e)
Theorem hlt_ANR_OPEN_UNION : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_ANR N s = 1 /\ hl_ANR N t = 1)) -> hl_ANR N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4560 / ENR_OPEN_UNION   (hash md5:9abb7ce94618e0b0ad466e2f08a06098)
Theorem hlt_ENR_OPEN_UNION : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_ENR N s = 1 /\ hl_ENR N t = 1)) -> hl_ENR N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:4569 / ANR_OPEN_UNIONS   (hash md5:b66cc2511ebfd1b0443c6ed1946f6c17)
Theorem hlt_ANR_OPEN_UNIONS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall u :e 2 :^: hl_ty_cart R N, (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_ANR N s = 1) /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1) -> hl_ANR N (hl_UNIONS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5086 / ENR_OPEN_UNIONS   (hash md5:d416e4a83da71e87c7a5a71e2288b41d)
Theorem hlt_ENR_OPEN_UNIONS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall u :e 2 :^: hl_ty_cart R N, (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_ENR N s = 1) /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1) -> hl_ENR N (hl_UNIONS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5094 / LOCALLY_ANR_ALT   (hash md5:ff932a5bc064151d3ffdb78055b5c7a4)
Theorem hlt_LOCALLY_ANR_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_ANR N) s = 1 <-> forall v :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) x v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_ANR N u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ hl_SUBSET (hl_ty_cart R N) u v = 1)).
Admitted.

// HOL Light: Multivariate/degree.ml:5114 / LOCALLY_ANR   (hash md5:b19fd8fcd2fc73ac564cc2d108757412)
Theorem hlt_LOCALLY_ANR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_ANR N) s = 1 <-> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists v :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x v = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_ANR N v = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:5137 / ANR_LOCALLY   (hash md5:dd58e9c0c707ed03ba2b7c2c34eea821)
Theorem hlt_ANR_LOCALLY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_ANR N) s = 1 <-> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5151 / LOCALLY_ENR_ALT   (hash md5:adde5126601048655b07867b830b100c)
Theorem hlt_LOCALLY_ENR_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_ENR N) s = 1 <-> forall v :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_IN (hl_ty_cart R N) x v = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_ENR N u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ hl_SUBSET (hl_ty_cart R N) u v = 1)).
Admitted.

// HOL Light: Multivariate/degree.ml:5171 / LOCALLY_ENR   (hash md5:d8969c1819b28ea9220c9b9d3ec7ebd2)
Theorem hlt_LOCALLY_ENR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_ENR N) s = 1 <-> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists v :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x v = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ hl_ENR N v = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:5194 / ENR_LOCALLY   (hash md5:4d0967eb7d85b885faafef01f06d15fe)
Theorem hlt_ENR_LOCALLY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_ENR N) s = 1 <-> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5208 / ANR_COVERING_SPACE_EQ   (hash md5:cc76d7bcaa2e2d378f1af2da420158e8)
Theorem hlt_ANR_COVERING_SPACE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> (hl_ANR N s = 1 <-> hl_ANR M c = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:5218 / ANR_COVERING_SPACE   (hash md5:bc60b978ba854d236c5234fc2f53a18b)
Theorem hlt_ANR_COVERING_SPACE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ hl_ANR M c = 1 -> hl_ANR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5223 / ENR_COVERING_SPACE_EQ   (hash md5:39ad5b8afd44a5b412ba3338c5645895)
Theorem hlt_ENR_COVERING_SPACE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 -> (hl_ENR N s = 1 <-> hl_ENR M c = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:5229 / ENR_COVERING_SPACE   (hash md5:c9f6ded815c1a8f8c5f4d07f8b8f77a3)
Theorem hlt_ENR_COVERING_SPACE : forall M N:set, M <> Empty -> N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: hl_ty_cart R M, hl_covering_space M N (hl_pair (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) c p) s = 1 /\ hl_ENR M c = 1 -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5239 / ENR_BOUNDED   (hash md5:89968472382ad0259e662c929b9a0ce3)
Theorem hlt_ENR_BOUNDED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> (hl_ENR N s = 1 <-> exists u :e 2 :^: hl_ty_cart R N, hl_open N u = 1 /\ (hl_bounded N u = 1 /\ hl_retract_of N s u = 1)).
Admitted.

// HOL Light: Multivariate/degree.ml:5254 / ABSOLUTE_RETRACT_IMP_AR_GEN   (hash md5:9797302f86c31141932d0e766ec78ae3)
Theorem hlt_ABSOLUTE_RETRACT_IMP_AR_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall s' :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R N, hl_retract_of M s t = 1 /\ (hl_convex M t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R M) /\ (hl_homeomorphic M N s s' = 1 /\ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s' = 1))) -> hl_retract_of N s' u = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5263 / ABSOLUTE_RETRACT_IMP_AR   (hash md5:4778e2100f5ffb2619a07c38b845d29a)
Theorem hlt_ABSOLUTE_RETRACT_IMP_AR : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall s' :e 2 :^: hl_ty_cart R N, hl_retract_of M s (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_homeomorphic M N s s' = 1 /\ hl_closed N s' = 1) -> hl_retract_of N s' (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5271 / HOMEOMORPHIC_COMPACT_ARNESS   (hash md5:f7572b3b2b8534421e2892cd62df6e86)
Theorem hlt_HOMEOMORPHIC_COMPACT_ARNESS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall s' :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s s' = 1 -> (hl_compact M s = 1 /\ hl_retract_of M s (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_compact N s' = 1 /\ hl_retract_of N s' (hl_UNIV (hl_ty_cart R N)) = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:5282 / EXTENSION_INTO_AR_LOCAL   (hash md5:02fce812d43ba40214b0e1c87b255273)
Theorem hlt_EXTENSION_INTO_AR_LOCAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f c = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) t = 1 /\ (hl_retract_of N t (hl_UNIV (hl_ty_cart R N)) = 1 /\ hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) c = 1)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_UNIV (hl_ty_cart R M))) t = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/degree.ml:5305 / EXTENSION_INTO_AR   (hash md5:2f434dc25f0be9e24cfb9f6b76654ff2)
Theorem hlt_EXTENSION_INTO_AR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_retract_of N t (hl_UNIV (hl_ty_cart R N)) = 1 /\ hl_closed M s = 1)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_UNIV (hl_ty_cart R M))) t = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/degree.ml:5317 / NEIGHBOURHOOD_EXTENSION_INTO_ANR   (hash md5:e1505365c8e9db050c92cddbeea5db8e)
Theorem hlt_NEIGHBOURHOOD_EXTENSION_INTO_ANR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_ANR N t = 1 /\ hl_closed M s = 1)) -> exists v :e 2 :^: hl_ty_cart R M, exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) s v = 1 /\ (hl_open M v = 1 /\ (hl_continuous_on M N g v = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g v) t = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x))).
Admitted.

// HOL Light: Multivariate/degree.ml:5329 / EXTENSION_FROM_COMPONENT   (hash md5:36b8f02ba4d755b86dab2dda30cf439d)
Theorem hlt_EXTENSION_FROM_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s c :e 2 :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R N, (hl_locally M (hl_connected M) s = 1 \/ hl_compact M s = 1 /\ hl_ANR N u = 1) /\ (hl_IN (2 :^: hl_ty_cart R M) c (hl_components M s) = 1 /\ (hl_continuous_on M N f c = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) u = 1)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) u = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x c = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/degree.ml:5381 / ABSOLUTE_RETRACT_FROM_UNION_AND_INTER   (hash md5:94cdfbab7834a7124720a532cf02eae4)
Theorem hlt_ABSOLUTE_RETRACT_FROM_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_retract_of N (hl_UNION (hl_ty_cart R N) s t) (hl_UNIV (hl_ty_cart R N)) = 1 /\ (hl_retract_of N (hl_INTER (hl_ty_cart R N) s t) (hl_UNIV (hl_ty_cart R N)) = 1 /\ (hl_closed N s = 1 /\ hl_closed N t = 1)) -> hl_retract_of N s (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5388 / COUNTABLE_ENR_COMPONENTS   (hash md5:019ffa50633545c0f1416886b3533fac)
Theorem hlt_COUNTABLE_ENR_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_components N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5392 / COUNTABLE_ENR_CONNECTED_COMPONENTS   (hash md5:a3ad49486e6b0083a6ff95c52c7def4f)
Theorem hlt_COUNTABLE_ENR_CONNECTED_COMPONENTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6002 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6002 (hl_IN (hl_ty_cart R N) x t) (hl_connected_component N s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5397 / COUNTABLE_ENR_PATH_COMPONENTS   (hash md5:c3a8ba710b7867b3e0518d6fa1b14d6e)
Theorem hlt_COUNTABLE_ENR_PATH_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6003 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6003 (hl_IN (hl_ty_cart R N) x s) (hl_path_component N s x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5402 / ENR_FROM_UNION_AND_INTER_GEN   (hash md5:d594d53c847b6265e1b363c752572f06)
Theorem hlt_ENR_FROM_UNION_AND_INTER_GEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_UNION (hl_ty_cart R N) s t)) t = 1 /\ (hl_ENR N (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_ENR N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5411 / ENR_FROM_UNION_AND_INTER   (hash md5:bcec15bf09bae27bf24e27395e1a1de9)
Theorem hlt_ENR_FROM_UNION_AND_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_closed N t = 1 /\ (hl_ENR N (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_ENR N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5419 / ENR_CLOSURE_FROM_FRONTIER   (hash md5:569d960a9d18af28beb15870f563df40)
Theorem hlt_ENR_CLOSURE_FROM_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N (hl_frontier N s) = 1 -> hl_ENR N (hl_closure N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5432 / ANR_CLOSURE_FROM_FRONTIER   (hash md5:ecf05cbd609e1f9e5cfe7be5de7c7304)
Theorem hlt_ANR_CLOSURE_FROM_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ANR N (hl_frontier N s) = 1 -> hl_ANR N (hl_closure N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5438 / ENR_FINITE_UNIONS_CONVEX_CLOSED   (hash md5:a1ebbb43c28a1b6c15a678564b1f7496)
Theorem hlt_ENR_FINITE_UNIONS_CONVEX_CLOSED : forall N:set, N <> Empty -> forall t :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) t = 1 /\ (forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c t = 1 -> hl_closed N c = 1 /\ hl_convex N c = 1) -> hl_ENR N (hl_UNIONS (hl_ty_cart R N) t) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5444 / FINITE_IMP_ENR   (hash md5:abea22d05056cfe52917c78e2a6db8ec)
Theorem hlt_FINITE_IMP_ENR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_ENR N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5449 / ENR_INSERT   (hash md5:d58175805edf1fe5832bf988f499268a)
Theorem hlt_ENR_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_closed N s = 1 /\ hl_ENR N s = 1 -> hl_ENR N (hl_INSERT (hl_ty_cart R N) a s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5457 / ENR_TRIANGULATION   (hash md5:65c04bf79cdd371bd4824902f84abbf5)
Theorem hlt_ENR_TRIANGULATION : forall A:set, A <> Empty -> forall tr :e 2 :^: (2 :^: hl_ty_cart R A), hl_triangulation A tr = 1 -> hl_ENR A (hl_UNIONS (hl_ty_cart R A) tr) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5463 / ENR_SIMPLICIAL_COMPLEX   (hash md5:ad5cecd8e878bea692ae1373fc5ef98f)
Theorem hlt_ENR_SIMPLICIAL_COMPLEX : forall A:set, A <> Empty -> forall c :e 2 :^: (2 :^: hl_ty_cart R A), hl_simplicial_complex A c = 1 -> hl_ENR A (hl_UNIONS (hl_ty_cart R A) c) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5467 / ENR_PATH_COMPONENT_ENR   (hash md5:2f884f6ee3f6eaedb76356ef10b5e8cb)
Theorem hlt_ENR_PATH_COMPONENT_ENR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_ENR N s = 1 -> hl_ENR N (hl_path_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5476 / ENR_CONNECTED_COMPONENT_ENR   (hash md5:e2cab11eb86351e309e4e9e66ff2e63d)
Theorem hlt_ENR_CONNECTED_COMPONENT_ENR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_ENR N s = 1 -> hl_ENR N (hl_connected_component N s x) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5485 / ENR_COMPONENT_ENR   (hash md5:35b4dc7787f60a01690738fffbf55738)
Theorem hlt_ENR_COMPONENT_ENR : forall N:set, N <> Empty -> forall c s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_ENR N c = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5490 / ENR_INTER_CLOSED_OPEN   (hash md5:65e90a065ad5652527bb88b6686c94ba)
Theorem hlt_ENR_INTER_CLOSED_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> exists t u :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 /\ (hl_open N u = 1 /\ s = hl_INTER (hl_ty_cart R N) t u).
Admitted.

// HOL Light: Multivariate/degree.ml:5497 / ENR_IMP_FSGIMA   (hash md5:715ec4e0040650d8c66090996d83c1cc)
Theorem hlt_ENR_IMP_FSGIMA : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> hl_fsigma N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5503 / ENR_IMP_GDELTA   (hash md5:4ad5f9a51d4dd932716beef1e33bbda6)
Theorem hlt_ENR_IMP_GDELTA : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 -> hl_gdelta N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5509 / IS_INTERVAL_IMP_FSIGMA   (hash md5:f77e69da2f27e522eb9a9463efb2ab50)
Theorem hlt_IS_INTERVAL_IMP_FSIGMA : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_is_interval N s = 1 -> hl_fsigma N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5513 / IS_INTERVAL_IMP_GDELTA   (hash md5:1f9cc3982fec7ace9961650353162298)
Theorem hlt_IS_INTERVAL_IMP_GDELTA : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_is_interval N s = 1 -> hl_gdelta N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5517 / IS_INTERVAL_IMP_BAIRE1_INDICATOR   (hash md5:8ea58c8c21c6d88788fcf248792889e8)
Theorem hlt_IS_INTERVAL_IMP_BAIRE1_INDICATOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_is_interval N s = 1 -> hl_baire N 1 (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_UNIV (hl_ty_cart R N)) (hl_indicator N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5521 / ANR_COMPONENTWISE   (hash md5:8ba0e0820772e910029cf25a04f53357)
Theorem hlt_ANR_COMPONENTWISE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 <-> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_components N s) = 1 /\ forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1 /\ hl_ANR N c = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5536 / ENR_COMPONENTWISE   (hash md5:877eb837cf400fe10c05ab9483a3d457)
Theorem hlt_ENR_COMPONENTWISE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_ENR N s = 1 <-> hl_COUNTABLE (2 :^: hl_ty_cart R N) (hl_components N s) = 1 /\ forall c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) c = 1 /\ hl_ENR N c = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5551 / ABSOLUTE_RETRACT_HOMEOMORPHIC_CONVEX_COMPACT   (hash md5:25ae997280a9858b6f3e28d14f651b00)
Theorem hlt_ABSOLUTE_RETRACT_HOMEOMORPHIC_CONVEX_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R M, hl_homeomorphic N M s u = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_convex M u = 1 /\ hl_compact M u = 1))) -> hl_retract_of N s t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5562 / ABSOLUTE_RETRACT_PATH_IMAGE_ARC   (hash md5:e8c67ba952d786ef8fca40b902ce75ec)
Theorem hlt_ABSOLUTE_RETRACT_PATH_IMAGE_ARC : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_arc N g = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 -> hl_retract_of N (hl_path_image N g) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5577 / AR_ARC_IMAGE   (hash md5:ebe02b68b925dc56b40488c7123c0408)
Theorem hlt_AR_ARC_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 -> hl_AR N (hl_path_image N g) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5581 / RELATIVE_FRONTIER_DEFORMATION_RETRACT_OF_PUNCTURED_CONVEX   (hash md5:a4f0217d697765c0211e2b1375f755c8)
Theorem hlt_RELATIVE_FRONTIER_DEFORMATION_RETRACT_OF_PUNCTURED_CONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (hl_bounded N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_relative_frontier N s) t = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1)))) -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) t a)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DELETE (hl_ty_cart R N) t a))) (fun x :e hl_ty_cart R N => x) r = 1 /\ (hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_DELETE (hl_ty_cart R N) t a) (hl_relative_frontier N s)) r = 1 /\ forall x :e hl_ty_cart R N, exists c :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_vector_sub N (r x) a = hl_vmul N c (hl_vector_sub N x a)).
Admitted.

// HOL Light: Multivariate/degree.ml:5757 / RELATIVE_FRONTIER_RETRACT_OF_PUNCTURED_AFFINE_HULL   (hash md5:60d09316799330f6a3dc7a55710a061c)
Theorem hlt_RELATIVE_FRONTIER_RETRACT_OF_PUNCTURED_AFFINE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1) -> hl_retract_of N (hl_relative_frontier N s) (hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5770 / RELATIVE_BOUNDARY_RETRACT_OF_PUNCTURED_AFFINE_HULL   (hash md5:7fa56fd4ce6e4c6df80eec0fca928b25)
Theorem hlt_RELATIVE_BOUNDARY_RETRACT_OF_PUNCTURED_AFFINE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_compact N s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1) -> hl_retract_of N (hl_DIFF (hl_ty_cart R N) s (hl_relative_interior N s)) (hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5781 / PATH_CONNECTED_SPHERE_GEN   (hash md5:43b8dd63ebdbc06c27c39c5685bfae62)
Theorem hlt_PATH_CONNECTED_SPHERE_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ ~ hl_aff_dim N s = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_path_connected N (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5797 / CONNECTED_SPHERE_GEN   (hash md5:cddb712d51e6b82a940372c5fba67b1f)
Theorem hlt_CONNECTED_SPHERE_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ ~ hl_aff_dim N s = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_connected N (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5803 / ENR_RELATIVE_FRONTIER_CONVEX   (hash md5:da56808faad848371a207e7370d634fd)
Theorem hlt_ENR_RELATIVE_FRONTIER_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_convex N s = 1 -> hl_ENR N (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5834 / ANR_RELATIVE_FRONTIER_CONVEX   (hash md5:85ab92768bca392f9360e56dd6860dfe)
Theorem hlt_ANR_RELATIVE_FRONTIER_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_convex N s = 1 -> hl_ANR N (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5838 / FRONTIER_RETRACT_OF_PUNCTURED_UNIVERSE   (hash md5:04e7b53637ff7068134cb0ea83e7b433)
Theorem hlt_FRONTIER_RETRACT_OF_PUNCTURED_UNIVERSE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1) -> hl_retract_of N (hl_frontier N s) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5849 / SPHERE_RETRACT_OF_PUNCTURED_UNIVERSE_GEN   (hash md5:4f16c8e3dc7a9101a199ce7df6be1e4c)
Theorem hlt_SPHERE_RETRACT_OF_PUNCTURED_UNIVERSE_GEN : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) = 1 -> hl_retract_of N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) b) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5856 / SPHERE_RETRACT_OF_PUNCTURED_UNIVERSE   (hash md5:f253c4dfef2d8c993f9c59add45ef0f1)
Theorem hlt_SPHERE_RETRACT_OF_PUNCTURED_UNIVERSE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 -> hl_retract_of N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5862 / ENR_SPHERE   (hash md5:52cada1608d89ce5d79c97ddf1807e25)
Theorem hlt_ENR_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_ENR N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5870 / ANR_SPHERE   (hash md5:8333f7932a301ff334ba0d03062655dc)
Theorem hlt_ANR_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_ANR N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5874 / LOCALLY_PATH_CONNECTED_SPHERE_GEN   (hash md5:5dff360479db067e793803b2a7ec309b)
Theorem hlt_LOCALLY_PATH_CONNECTED_SPHERE_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_convex N s = 1 -> hl_locally N (hl_path_connected N) (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5893 / LOCALLY_CONNECTED_SPHERE_GEN   (hash md5:2899c7a6efd39c391b47cd45d4c5a042)
Theorem hlt_LOCALLY_CONNECTED_SPHERE_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_convex N s = 1 -> hl_locally N (hl_connected N) (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5899 / ABSOLUTE_RETRACTION_CONVEX_CLOSED_RELATIVE   (hash md5:933b6562270ac7dc973fa88b8683155e)
Theorem hlt_ABSOLUTE_RETRACTION_CONVEX_CLOSED_RELATIVE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) s t = 1)) -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t s) r = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_relative_interior N s)) = 1 -> hl_IN (hl_ty_cart R N) (r x) (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5912 / ABSOLUTE_RETRACTION_CONVEX_CLOSED   (hash md5:b8a12137a81a169932de249853a20299)
Theorem hlt_ABSOLUTE_RETRACTION_CONVEX_CLOSED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) s t = 1)) -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t s) r = 1 /\ forall x :e hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) x s = 1 -> hl_IN (hl_ty_cart R N) (r x) (hl_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5924 / ABSOLUTE_RETRACT_CONVEX_CLOSED   (hash md5:3f40c32ed66b04b2d11cf5419b6b5834)
Theorem hlt_ABSOLUTE_RETRACT_CONVEX_CLOSED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) s t = 1)) -> hl_retract_of N s t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5930 / ABSOLUTE_RETRACT_CONVEX   (hash md5:7f9adb11154a36a42d9e7ae9a6a70de2)
Theorem hlt_ABSOLUTE_RETRACT_CONVEX : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1) -> hl_retract_of N s u = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5940 / ENR_PATH_IMAGE_SIMPLE_PATH   (hash md5:4d74296bde85e1407a5e373f9bb42654)
Theorem hlt_ENR_PATH_IMAGE_SIMPLE_PATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 -> hl_ENR N (hl_path_image N g) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5954 / ANR_PATH_IMAGE_SIMPLE_PATH   (hash md5:7015ed8267d8e37c55ceb2a65e4a38af)
Theorem hlt_ANR_PATH_IMAGE_SIMPLE_PATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 -> hl_ANR N (hl_path_image N g) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:5963 / BORSUK_HOMOTOPY_EXTENSION_HOMOTOPIC   (hash md5:c6c52a2c3e3adb15c7bbfb467697e7e9)
Theorem hlt_BORSUK_HOMOTOPY_EXTENSION_HOMOTOPIC : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) t) s = 1 /\ ((hl_ANR M s = 1 /\ hl_ANR M t = 1 \/ hl_ANR N u = 1) /\ (hl_continuous_on M N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) u = 1 /\ hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u)) f g = 1))) -> exists g' :e hl_ty_cart R N :^: hl_ty_cart R M, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u)) f g' = 1 /\ (hl_continuous_on M N g' t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g' t) u = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g' x = g x)).
Admitted.

// HOL Light: Multivariate/degree.ml:6170 / BORSUK_HOMOTOPY_EXTENSION   (hash md5:77e8a4ec20747d1a4a8df4d472cb759b)
Theorem hlt_BORSUK_HOMOTOPY_EXTENSION : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) t) s = 1 /\ ((hl_ANR M s = 1 /\ hl_ANR M t = 1 \/ hl_ANR N u = 1) /\ (hl_continuous_on M N f t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) u = 1 /\ hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u)) f g = 1))) -> exists g' :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g' t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g' t) u = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g' x = g x).
Admitted.

// HOL Light: Multivariate/degree.ml:6183 / NULLHOMOTOPIC_INTO_ANR_EXTENSION   (hash md5:2c179686532335a2b3464e96e72fa68a)
Theorem hlt_NULLHOMOTOPIC_INTO_ANR_EXTENSION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_closed M s = 1 /\ (hl_continuous_on M N f s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R M) /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ hl_ANR N t = 1))) -> ((exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => c) = 1) <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_UNIV (hl_ty_cart R M))) t = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x)).
Admitted.

// HOL Light: Multivariate/degree.ml:6210 / NULLHOMOTOPIC_INTO_RELATIVE_FRONTIER_EXTENSION   (hash md5:b14e3cf88f50bb65f7f2a8fc7d62324b)
Theorem hlt_NULLHOMOTOPIC_INTO_RELATIVE_FRONTIER_EXTENSION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_closed M s = 1 /\ (hl_continuous_on M N f s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R M) /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) (hl_relative_frontier N t) = 1 /\ (hl_convex N t = 1 /\ hl_bounded N t = 1)))) -> ((exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_relative_frontier N t))) f (fun x :e hl_ty_cart R M => c) = 1) <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_UNIV (hl_ty_cart R M))) (hl_relative_frontier N t) = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x)).
Admitted.

// HOL Light: Multivariate/degree.ml:6224 / NULLHOMOTOPIC_INTO_SPHERE_EXTENSION   (hash md5:055702b0bba4bda8d26ff815333c6507)
Theorem hlt_NULLHOMOTOPIC_INTO_SPHERE_EXTENSION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R N, forall r :e R, hl_closed M s = 1 /\ (hl_continuous_on M N f s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R M) /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1)) -> ((exists c :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)))) f (fun x :e hl_ty_cart R M => c) = 1) <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_UNIV (hl_ty_cart R M))) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x)).
Admitted.

// HOL Light: Multivariate/degree.ml:6247 / ABSOLUTE_RETRACT_CONTRACTIBLE_ANR   (hash md5:6ffe03f180e7881c76e05f5abc8f0747)
Theorem hlt_ABSOLUTE_RETRACT_CONTRACTIBLE_ANR : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_contractible N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_ANR N s = 1)) -> hl_retract_of N s u = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6259 / HOMOTOPIC_ON_COMPONENTS   (hash md5:392f2720857edd93cf6afab98cd999e9)
Theorem hlt_HOMOTOPIC_ON_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_locally M (hl_connected M) s = 1 /\ (forall c :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) c (hl_components M s) = 1 -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6275 / INESSENTIAL_ON_COMPONENTS   (hash md5:7f8655d9d294c01c77f7311edbc27451)
Theorem hlt_INESSENTIAL_ON_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_locally M (hl_connected M) s = 1 /\ (hl_path_connected N t = 1 /\ (forall c :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) c (hl_components M s) = 1 -> exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => a) = 1)) -> exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6312 / HOMOTOPIC_NEIGHBOURHOOD_EXTENSION   (hash md5:928a44d9f5985c2f97849c1e7881bdf8)
Theorem hlt_HOMOTOPIC_NEIGHBOURHOOD_EXTENSION : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) u = 1 /\ (hl_continuous_on M N g s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) u = 1 /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) t = 1 /\ (hl_ANR N u = 1 /\ hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u)) f g = 1))))) -> exists v :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t v = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) v = 1 /\ hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) v) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u)) f g = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:6407 / HOMOTOPIC_ON_COMPONENTS_EQ   (hash md5:a74e45f881a42a6618009dd3dc20a554)
Theorem hlt_HOMOTOPIC_ON_COMPONENTS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_locally M (hl_connected M) s = 1 \/ hl_compact M s = 1 /\ hl_ANR N t = 1 -> (hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1 <-> hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on M N g s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) t = 1 /\ forall c :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) c (hl_components M s) = 1 -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1)))).
Admitted.

// HOL Light: Multivariate/degree.ml:6480 / INESSENTIAL_ON_COMPONENTS_EQ   (hash md5:a5331dbb41e68e25e89061e4da38a6f5)
Theorem hlt_INESSENTIAL_ON_COMPONENTS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (hl_locally M (hl_connected M) s = 1 \/ hl_compact M s = 1 /\ hl_ANR N t = 1) /\ hl_path_connected N t = 1 -> ((exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => a) = 1) <-> hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ forall c :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) c (hl_components M s) = 1 -> exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => a) = 1)).
Admitted.

// HOL Light: Multivariate/degree.ml:6526 / COHOMOTOPICALLY_TRIVIAL_ON_COMPONENTS   (hash md5:175788a9e4360035a03dcdeda93336f1)
Theorem hlt_COHOMOTOPICALLY_TRIVIAL_ON_COMPONENTS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_locally M (hl_connected M) s = 1 \/ hl_compact M s = 1 /\ hl_ANR N t = 1 -> ((forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on M N g s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) t = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1) <-> forall c :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) c (hl_components M s) = 1 -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f c = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) t = 1 /\ (hl_continuous_on M N g c = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g c) t = 1)) -> hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f g = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:6569 / COHOMOTOPICALLY_TRIVIAL_ON_COMPONENTS_NULL   (hash md5:8c6e05d544a9c1d8828771d55d71ac82)
Theorem hlt_COHOMOTOPICALLY_TRIVIAL_ON_COMPONENTS_NULL : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, (hl_locally M (hl_connected M) s = 1 \/ hl_compact M s = 1 /\ hl_ANR N t = 1) /\ hl_path_connected N t = 1 -> ((forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 -> exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => a) = 1) <-> forall c :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) c (hl_components M s) = 1 -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f c = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f c) t = 1 -> exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) c) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => a) = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:6586 / COHOMOTOPICALLY_TRIVIAL_1D   (hash md5:6c59c256720d43cc04c06f4336740ed5)
Theorem hlt_COHOMOTOPICALLY_TRIVIAL_1D : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_ANR N t = 1 /\ (hl_connected N t = 1 /\ (hl_dimindex M (hl_UNIV M) = hl_NUMERAL (hl_BIT1 hl_zero) \/ (exists r :e 2 :^: hl_ty_cart R 1, hl_homeomorphic M 1 s r = 1))))) -> exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) f (fun x :e hl_ty_cart R M => a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6684 / DEFORMATION_RETRACTION_COMPOSE   (hash md5:1026991e636cfb494ab596bc7e12dd43)
Theorem hlt_DEFORMATION_RETRACTION_COMPOSE : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, forall r1 r2 :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r1 = 1 /\ (hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r1 = 1 /\ (hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (fun x :e hl_ty_cart R N => x) r2 = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t u) r2 = 1)) -> hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) r2 r1) = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s u) (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) r2 r1) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6708 / DEFORMATION_RETRACT_TRANS   (hash md5:4cb513903598e5f8916554b3543810ea)
Theorem hlt_DEFORMATION_RETRACT_TRANS : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, (exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1) /\ (exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) t u) r = 1) -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s u) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6721 / DEFORMATION_RETRACT_IMP_HOMOTOPY_EQUIVALENT   (hash md5:7b020a9f426a10643680549a86cc2458)
Theorem hlt_DEFORMATION_RETRACT_IMP_HOMOTOPY_EQUIVALENT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, (exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1) -> hl_homotopy_equivalent N N s t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6733 / DEFORMATION_RETRACT   (hash md5:e7e14b53c4b1447b0ecd7292dc799ef1)
Theorem hlt_DEFORMATION_RETRACT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, (exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1) <-> hl_retract_of N t s = 1 /\ exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) f = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6752 / ANR_STRONG_DEFORMATION_RETRACTION   (hash md5:db8c55e079dc5b8cf4435a7f42644b67)
Theorem hlt_ANR_STRONG_DEFORMATION_RETRACTION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_ANR N s = 1 /\ (exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1) -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun h :e hl_ty_cart R N :^: hl_ty_cart R N => if forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> h x = x then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6968 / DEFORMATION_RETRACT_OF_CONTRACTIBLE   (hash md5:9762193975aa8b0c103712ba36ff57f8)
Theorem hlt_DEFORMATION_RETRACT_OF_CONTRACTIBLE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_contractible N s = 1 /\ hl_retract_of N t s = 1 -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:6998 / AR_DEFORMATION_RETRACT_OF_CONTRACTIBLE   (hash md5:fd82edda903a02cb8391d13dc0ff2e55)
Theorem hlt_AR_DEFORMATION_RETRACT_OF_CONTRACTIBLE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_contractible N s = 1 /\ (hl_AR N t = 1 /\ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1) -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7006 / DEFORMATION_RETRACT_OF_CONTRACTIBLE_SING   (hash md5:406cdeb177ef315ffb0293fdc429ac6e)
Theorem hlt_DEFORMATION_RETRACT_OF_CONTRACTIBLE_SING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_contractible N s = 1 /\ hl_IN (hl_ty_cart R N) a s = 1 -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)))) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7016 / STRONG_DEFORMATION_RETRACT_OF_AR   (hash md5:45d777d28aae108a9a9dcd196eb48fbb)
Theorem hlt_STRONG_DEFORMATION_RETRACT_OF_AR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 /\ hl_retract_of N t s = 1 -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun h :e hl_ty_cart R N :^: hl_ty_cart R N => if forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> h x = x then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7028 / AR_STRONG_DEFORMATION_RETRACT_OF_AR   (hash md5:4f8c8d9069748405d91b245f972d86ca)
Theorem hlt_AR_STRONG_DEFORMATION_RETRACT_OF_AR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 /\ (hl_AR N t = 1 /\ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1) -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun h :e hl_ty_cart R N :^: hl_ty_cart R N => if forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> h x = x then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7040 / SING_STRONG_DEFORMATION_RETRACT_OF_AR   (hash md5:cc1849b240df787fd17ffd8d6900c36c)
Theorem hlt_SING_STRONG_DEFORMATION_RETRACT_OF_AR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_AR N s = 1 /\ hl_IN (hl_ty_cart R N) a s = 1 -> exists r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun h :e hl_ty_cart R N :^: hl_ty_cart R N => if h a = a then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) (fun x :e hl_ty_cart R N => x) r = 1 /\ hl_retraction N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)))) r = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7052 / HOMOTOPY_EQUIVALENT_RELATIVE_FRONTIER_PUNCTURED_CONVEX   (hash md5:766de69015908bf1cff80f0d5d945aa4)
Theorem hlt_HOMOTOPY_EQUIVALENT_RELATIVE_FRONTIER_PUNCTURED_CONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1 /\ (hl_convex N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_relative_frontier N s) t = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1)))) -> hl_homotopy_equivalent N N (hl_relative_frontier N s) (hl_DELETE (hl_ty_cart R N) t a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7061 / HOMOTOPY_EQUIVALENT_RELATIVE_FRONTIER_PUNCTURED_AFFINE_HULL   (hash md5:715b9b80768145fb8bc31000066cbf76)
Theorem hlt_HOMOTOPY_EQUIVALENT_RELATIVE_FRONTIER_PUNCTURED_AFFINE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1) -> hl_homotopy_equivalent N N (hl_relative_frontier N s) (hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) a) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7072 / HOMOTOPY_EQUIVALENT_PUNCTURED_UNIV_SPHERE   (hash md5:7dbbb4074a7eb274588cab84f4774375)
Theorem hlt_HOMOTOPY_EQUIVALENT_PUNCTURED_UNIV_SPHERE : forall N:set, N <> Empty -> forall c a :e hl_ty_cart R N, forall r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 -> hl_homotopy_equivalent N N (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) c) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7090 / INVERTIBLE_FIXPOINT_PROPERTY   (hash md5:0f5e4a698763b1b0a80f4d3dc3f806c8)
Theorem hlt_INVERTIBLE_FIXPOINT_PROPERTY : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall i :e hl_ty_cart R M :^: hl_ty_cart R N, forall r :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on N M i t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) i t) s = 1 /\ (hl_continuous_on M N r s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) r s) t = 1 /\ (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> r (i y) = y)))) -> (forall f :e hl_ty_cart R M :^: hl_ty_cart R M, hl_continuous_on M M f s = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) f s) s = 1 -> exists x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ f x = x) -> forall g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N g t = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) g t) t = 1 -> exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 /\ g y = y.
Admitted.

// HOL Light: Multivariate/degree.ml:7108 / HOMEOMORPHIC_FIXPOINT_PROPERTY   (hash md5:50bdab4c0e5a261bb9ea5c97de88d902)
Theorem hlt_HOMEOMORPHIC_FIXPOINT_PROPERTY : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall t :e 2 :^: hl_ty_cart R B, hl_homeomorphic A B s t = 1 -> ((forall f :e hl_ty_cart R A :^: hl_ty_cart R A, hl_continuous_on A A f s = 1 /\ hl_SUBSET (hl_ty_cart R A) (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) f s) s = 1 -> exists x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 /\ f x = x) <-> forall g :e hl_ty_cart R B :^: hl_ty_cart R B, hl_continuous_on B B g t = 1 /\ hl_SUBSET (hl_ty_cart R B) (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R B) g t) t = 1 -> exists y :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) y t = 1 /\ g y = y).
Admitted.

// HOL Light: Multivariate/degree.ml:7118 / RETRACT_FIXPOINT_PROPERTY   (hash md5:345634d3d68cc831f301b868a64ffe81)
Theorem hlt_RETRACT_FIXPOINT_PROPERTY : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_retract_of N t s = 1 /\ (forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) s = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x) -> forall g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N g t = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) g t) t = 1 -> exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 /\ g y = y.
Admitted.

// HOL Light: Multivariate/degree.ml:7132 / FRONTIER_SUBSET_RETRACTION   (hash md5:defed8315a091bf1180a87dbb53804e2)
Theorem hlt_FRONTIER_SUBSET_RETRACTION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall r :e hl_ty_cart R N :^: hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_frontier N s) t = 1 /\ (hl_continuous_on N N r (hl_closure N s) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) r s) t = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> r x = x)))) -> hl_SUBSET (hl_ty_cart R N) s t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7207 / NO_RETRACTION_FRONTIER_BOUNDED   (hash md5:acb62e1f3c1b4da907e5f669d0d03db9)
Theorem hlt_NO_RETRACTION_FRONTIER_BOUNDED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> ~ hl_retract_of N (hl_frontier N s) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7218 / COMPACT_SUBSET_FRONTIER_RETRACTION   (hash md5:7b9608e41b3662a098ab0952195efaea)
Theorem hlt_COMPACT_SUBSET_FRONTIER_RETRACTION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_continuous_on N N f s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_frontier N s) = 1 -> f x = x)) -> hl_SUBSET (hl_ty_cart R N) s (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7274 / NOT_ABSOLUTE_RETRACT_COBOUNDED   (hash md5:bdcc38fd9e3e0e4254aa23ca9b07454d)
Theorem hlt_NOT_ABSOLUTE_RETRACT_COBOUNDED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_retract_of N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) (hl_UNIV (hl_ty_cart R N)) = 1 -> s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/degree.ml:7299 / BOHL   (hash md5:924d120dfd2b4a482d8d3ac3e4018282)
Theorem hlt_BOHL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_continuous_on N N f s = 1 /\ (hl_convex N s = 1 /\ (hl_compact N s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1)) -> (exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x) \/ exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a (f x))) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7374 / BOHL_ALT   (hash md5:f86b2be24bf89eaebba94fd995e05f6b)
Theorem hlt_BOHL_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_continuous_on N N f s = 1 /\ (hl_convex N s = 1 /\ (hl_compact N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) a) = 1))) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) a (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x (f x))) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7395 / BOHL_SIMPLE   (hash md5:ad8cb98a5cc2fa13d1bac8a48d333f38)
Theorem hlt_BOHL_SIMPLE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_compact N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_continuous_on N N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) a) = 1)) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_frontier N s) = 1 /\ ~ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7409 / BOUNDED_COMPONENT_RETRACT_COMPLEMENT_MEETS   (hash md5:9581851cd4f5d6ea4aaef80df2b10552)
Theorem hlt_BOUNDED_COMPONENT_RETRACT_COMPLEMENT_MEETS : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_retract_of N s t = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 /\ hl_bounded N c = 1)) -> ~ hl_SUBSET (hl_ty_cart R N) c t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7434 / COMPONENT_RETRACT_COMPLEMENT_MEETS   (hash md5:94701244a6e26ccdd4301dc3b558c8cb)
Theorem hlt_COMPONENT_RETRACT_COMPLEMENT_MEETS : forall N:set, N <> Empty -> forall s t c :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_retract_of N s t = 1 /\ (hl_bounded N t = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1)) -> ~ hl_SUBSET (hl_ty_cart R N) c t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7444 / FINITE_COMPLEMENT_ENR_COMPONENTS   (hash md5:e2e23ffc332a2e68436b60635a26a4eb)
Theorem hlt_FINITE_COMPLEMENT_ENR_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_ENR N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7500 / FINITE_COMPLEMENT_ANR_COMPONENTS   (hash md5:8dca2d968684a64b149f3a3bbf17c960)
Theorem hlt_FINITE_COMPLEMENT_ANR_COMPONENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_ANR N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7505 / CARD_LE_RETRACT_COMPLEMENT_COMPONENTS   (hash md5:c6f1cf165beecaed446429a5e72a1754)
Theorem hlt_CARD_LE_RETRACT_COMPLEMENT_COMPONENTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_retract_of N s t = 1 /\ hl_bounded N t = 1) -> hl_sym_3c3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7541 / CONNECTED_RETRACT_COMPLEMENT   (hash md5:763b081918d14a186e3cb784068d40a4)
Theorem hlt_CONNECTED_RETRACT_COMPLEMENT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_retract_of N s t = 1 /\ (hl_bounded N t = 1 /\ hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t) = 1)) -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7573 / BROUWER_INESSENTIAL_ANR   (hash md5:064457f3b17a51b33db0628291e3d5f0)
Theorem hlt_BROUWER_INESSENTIAL_ANR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_ANR N s = 1 /\ (hl_continuous_on N N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) s = 1 /\ (exists a :e hl_ty_cart R N, hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s)) f (fun x :e hl_ty_cart R N => a) = 1))))) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7597 / BROUWER_CONTRACTIBLE_ANR   (hash md5:673407d5f00353b3eea72bb40405010a)
Theorem hlt_BROUWER_CONTRACTIBLE_ANR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_contractible N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_ANR N s = 1 /\ (hl_continuous_on N N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) s = 1)))) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7606 / FIXED_POINT_INESSENTIAL_SPHERE_MAP   (hash md5:08f772bb4b9c7eec905dc6efbc8922f3)
Theorem hlt_FIXED_POINT_INESSENTIAL_SPHERE_MAP : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, forall c :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r))) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)))) f (fun x :e hl_ty_cart R N => c) = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7620 / BROUWER_AR   (hash md5:bb65e6b2074e1c37f95e756aab8d824e)
Theorem hlt_BROUWER_AR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_AR N s = 1 /\ (hl_continuous_on N N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) s = 1)) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7628 / BROUWER_ABSOLUTE_RETRACT   (hash md5:36ce3377da94554e7618bb2ad9495c9c)
Theorem hlt_BROUWER_ABSOLUTE_RETRACT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_retract_of N s (hl_UNIV (hl_ty_cart R N)) = 1 /\ (hl_continuous_on N N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) s = 1)) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7640 / SCHAUDER_PROJECTION   (hash md5:7d4ab9467005281df3938f0a061270c3)
Theorem hlt_SCHAUDER_PROJECTION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_compact N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t :e 2 :^: hl_ty_cart R N, exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_continuous_on N N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) (hl_hull (hl_ty_cart R N) (hl_convex N) t) = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (f x) x)) e1 = 1))).
Admitted.

// HOL Light: Multivariate/degree.ml:7708 / BROUWER_FACTOR_THROUGH_AR   (hash md5:8d8d4420db0f3b67bfb4f47b53d6f7fc)
Theorem hlt_BROUWER_FACTOR_THROUGH_AR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_continuous_on N M g t = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t) s = 1 /\ (hl_compact M s = 1 /\ hl_AR N t = 1)))) -> exists x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ g (f x) = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7731 / BROUWER_ABSOLUTE_RETRACT_GEN   (hash md5:8c3b69b2439e94ec98f68b35ff82c8a8)
Theorem hlt_BROUWER_ABSOLUTE_RETRACT_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_retract_of N s (hl_UNIV (hl_ty_cart R N)) = 1 /\ (hl_continuous_on N N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) s = 1 /\ hl_bounded N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1)) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7746 / SCHAUDER_GEN   (hash md5:5d2678a0d6937c12da45b6a0b166486b)
Theorem hlt_SCHAUDER_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_AR N s = 1 /\ (hl_continuous_on N N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_compact N t = 1))) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7756 / SCHAUDER   (hash md5:f3be30122822e389d0a1c734ee58ed89)
Theorem hlt_SCHAUDER : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_compact N t = 1 /\ (hl_continuous_on N N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) t = 1)))) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7766 / SCHAUDER_UNIV   (hash md5:8c83fac818a1a276fa4cdbbc1cfb5a94)
Theorem hlt_SCHAUDER_UNIV : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N f (hl_UNIV (hl_ty_cart R N)) = 1 /\ hl_bounded N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_UNIV (hl_ty_cart R N))) = 1 -> exists x :e hl_ty_cart R N, f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7776 / ROTHE   (hash md5:cf097587aacd9e4bfd2d8d97e2403597)
Theorem hlt_ROTHE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_continuous_on N N f s = 1 /\ (hl_bounded N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_frontier N s)) s = 1)))) -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ f x = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7805 / PERRON_FROBENIUS   (hash md5:49100c81d0f4b5ca5c7cf91e14de3454)
Theorem hlt_PERRON_FROBENIUS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j) = 1) -> exists v :e hl_ty_cart R N, exists c :e R, hl_vector_norm N v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_matrix_vector_mul N N A v = hl_vmul N c v).
Admitted.

// HOL Light: Multivariate/degree.ml:7904 / interval_bij   (hash md5:b0393a8fb25c5ec6d0dd54339100d628)
Theorem hlt_interval_bij_thm : forall N:set, N <> Empty -> forall x b a v u :e hl_ty_cart R N, hl_interval_bij N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) x = hl_lambda R N (fun i :e omega => hl_real_add (hl_vindex R N u i) (hl_real_mul (hl_real_div (hl_real_sub (hl_vindex R N x i) (hl_vindex R N a i)) (hl_real_sub (hl_vindex R N b i) (hl_vindex R N a i))) (hl_real_sub (hl_vindex R N v i) (hl_vindex R N u i)))).
Admitted.

// HOL Light: Multivariate/degree.ml:7908 / INTERVAL_BIJ_AFFINE   (hash md5:62443890a6f96ad95adfca014af63229)
Theorem hlt_INTERVAL_BIJ_AFFINE : forall A:set, A <> Empty -> forall a b u v :e hl_ty_cart R A, hl_interval_bij A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) u v) = fun x :e hl_ty_cart R A => hl_vector_add A (hl_lambda R A (fun i :e omega => hl_real_mul (hl_real_div (hl_real_sub (hl_vindex R A v i) (hl_vindex R A u i)) (hl_real_sub (hl_vindex R A b i) (hl_vindex R A a i))) (hl_vindex R A x i))) (hl_lambda R A (fun i :e omega => hl_real_sub (hl_vindex R A u i) (hl_real_mul (hl_real_div (hl_real_sub (hl_vindex R A v i) (hl_vindex R A u i)) (hl_real_sub (hl_vindex R A b i) (hl_vindex R A a i))) (hl_vindex R A a i)))).
Admitted.

// HOL Light: Multivariate/degree.ml:7916 / CONTINUOUS_INTERVAL_BIJ   (hash md5:497ccb94c84ffed443784a0eb19ff0ea)
Theorem hlt_CONTINUOUS_INTERVAL_BIJ : forall N:set, N <> Empty -> forall a b u v x :e hl_ty_cart R N, hl_continuous (hl_ty_cart R N) N (hl_interval_bij N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v)) (hl_at N x) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7926 / CONTINUOUS_ON_INTERVAL_BIJ   (hash md5:91ed74767c312649c7955b2654c34267)
Theorem hlt_CONTINUOUS_ON_INTERVAL_BIJ : forall A:set, A <> Empty -> forall a b u v :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_continuous_on A A (hl_interval_bij A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) u v)) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7931 / IN_INTERVAL_INTERVAL_BIJ   (hash md5:64071316262353dd76fb60eaa5ea1f95)
Theorem hlt_IN_INTERVAL_INTERVAL_BIJ : forall N:set, N <> Empty -> forall a b u v x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) -> hl_IN (hl_ty_cart R N) (hl_interval_bij N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) x) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7951 / INTERVAL_BIJ_BIJ   (hash md5:0f323b2145c332594d63f4164df9d53d)
Theorem hlt_INTERVAL_BIJ_BIJ : forall N:set, N <> Empty -> forall a b u v x :e hl_ty_cart R N, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N b i) = 1 /\ hl_real_lt (hl_vindex R N u i) (hl_vindex R N v i) = 1) -> hl_interval_bij N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_interval_bij N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) x) = x.
Admitted.

// HOL Light: Multivariate/degree.ml:7964 / INFNORM_2   (hash md5:db2c9d4c5bf79b92764ce1cf221aa625)
Theorem hlt_INFNORM_2 : forall x :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_infnorm (idx_n (2 * dimindex 1)) x = hl_real_max (hl_real_abs (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_abs (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/degree.ml:7969 / INFNORM_EQ_1_2   (hash md5:29cee215bd1075d8a0b478ce39e7a98c)
Theorem hlt_INFNORM_EQ_1_2 : forall x :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_infnorm (idx_n (2 * dimindex 1)) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_real_le (hl_real_abs (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_le (hl_real_abs (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) \/ (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) \/ hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))).
Admitted.

// HOL Light: Multivariate/degree.ml:7975 / INFNORM_EQ_1_IMP   (hash md5:acf21fe3095c6a7e40d4d4d39f209322)
Theorem hlt_INFNORM_EQ_1_IMP : forall x :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_infnorm (idx_n (2 * dimindex 1)) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_real_le (hl_real_abs (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_le (hl_real_abs (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:7979 / FASHODA_UNIT   (hash md5:6387fbde067f7a9d0e1d54c36bbf683d)
Theorem hlt_FASHODA_UNIT : forall f g :e hl_ty_cart R (idx_n (2 * dimindex 1)) :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R (idx_n (2 * dimindex 1))) f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_vector_neg (idx_n (2 * dimindex 1)) (hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 /\ (hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R (idx_n (2 * dimindex 1))) g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_vector_neg (idx_n (2 * dimindex 1)) (hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 /\ (hl_continuous_on 1 (idx_n (2 * dimindex 1)) f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_continuous_on 1 (idx_n (2 * dimindex 1)) g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_vindex R (idx_n (2 * dimindex 1)) (f (hl_vector_neg 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (f (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (g (hl_vector_neg 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_vindex R (idx_n (2 * dimindex 1)) (g (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))))) -> exists s t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) s (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ f s = g t).
Admitted.

// HOL Light: Multivariate/degree.ml:8118 / FASHODA_UNIT_PATH   (hash md5:cce4b19432c257594bf1623e5a747b7d)
Theorem hlt_FASHODA_UNIT_PATH : forall f g :e hl_ty_cart R (idx_n (2 * dimindex 1)) :^: hl_ty_cart R 1, hl_path (idx_n (2 * dimindex 1)) f = 1 /\ (hl_path (idx_n (2 * dimindex 1)) g = 1 /\ (hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_path_image (idx_n (2 * dimindex 1)) f) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_vector_neg (idx_n (2 * dimindex 1)) (hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 /\ (hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_path_image (idx_n (2 * dimindex 1)) g) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_vector_neg (idx_n (2 * dimindex 1)) (hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathstart (idx_n (2 * dimindex 1)) f) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathfinish (idx_n (2 * dimindex 1)) f) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathstart (idx_n (2 * dimindex 1)) g) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathfinish (idx_n (2 * dimindex 1)) g) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))))) -> exists z :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_IN (hl_ty_cart R (idx_n (2 * dimindex 1))) z (hl_path_image (idx_n (2 * dimindex 1)) f) = 1 /\ hl_IN (hl_ty_cart R (idx_n (2 * dimindex 1))) z (hl_path_image (idx_n (2 * dimindex 1)) g) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8157 / FASHODA   (hash md5:4dd150dda1f0508cd032e8016593c231)
Theorem hlt_FASHODA : forall f g :e hl_ty_cart R (idx_n (2 * dimindex 1)) :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_path (idx_n (2 * dimindex 1)) f = 1 /\ (hl_path (idx_n (2 * dimindex 1)) g = 1 /\ (hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_path_image (idx_n (2 * dimindex 1)) f) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 /\ (hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_path_image (idx_n (2 * dimindex 1)) g) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathstart (idx_n (2 * dimindex 1)) f) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathfinish (idx_n (2 * dimindex 1)) f) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathstart (idx_n (2 * dimindex 1)) g) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) /\ hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathfinish (idx_n (2 * dimindex 1)) g) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))))) -> exists z :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_IN (hl_ty_cart R (idx_n (2 * dimindex 1))) z (hl_path_image (idx_n (2 * dimindex 1)) f) = 1 /\ hl_IN (hl_ty_cart R (idx_n (2 * dimindex 1))) z (hl_path_image (idx_n (2 * dimindex 1)) g) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8261 / SEGMENT_VERTICAL   (hash md5:c99d073d5892ea886b3ef3434e0c4371)
Theorem hlt_SEGMENT_VERTICAL : forall a b x :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero)) -> (hl_IN (hl_ty_cart R (idx_n (2 * dimindex 1))) x (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 <-> hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 \/ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1))).
Admitted.

// HOL Light: Multivariate/degree.ml:8279 / SEGMENT_HORIZONTAL   (hash md5:3ed87bb77907158cf0a7da5ce13909b1)
Theorem hlt_SEGMENT_HORIZONTAL : forall a b x :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) -> (hl_IN (hl_ty_cart R (idx_n (2 * dimindex 1))) x (hl_closed_segment (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 <-> hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) /\ (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) /\ (hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 \/ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) = 1))).
Admitted.

// HOL Light: Multivariate/degree.ml:8301 / FASHODA_INTERLACE   (hash md5:4a108c07f6d2a2c48c2e4fa414e2a4a3)
Theorem hlt_FASHODA_INTERLACE : forall f g :e hl_ty_cart R (idx_n (2 * dimindex 1)) :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_path (idx_n (2 * dimindex 1)) f = 1 /\ (hl_path (idx_n (2 * dimindex 1)) g = 1 /\ (hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_path_image (idx_n (2 * dimindex 1)) f) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 /\ (hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_path_image (idx_n (2 * dimindex 1)) g) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = 1 /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathstart (idx_n (2 * dimindex 1)) f) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathfinish (idx_n (2 * dimindex 1)) f) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathstart (idx_n (2 * dimindex 1)) g) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathfinish (idx_n (2 * dimindex 1)) g) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) /\ (hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathstart (idx_n (2 * dimindex 1)) f) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathstart (idx_n (2 * dimindex 1)) g) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathstart (idx_n (2 * dimindex 1)) g) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathfinish (idx_n (2 * dimindex 1)) f) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathfinish (idx_n (2 * dimindex 1)) f) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) (hl_pathfinish (idx_n (2 * dimindex 1)) g) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1))))))))) -> exists z :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_IN (hl_ty_cart R (idx_n (2 * dimindex 1))) z (hl_path_image (idx_n (2 * dimindex 1)) f) = 1 /\ hl_IN (hl_ty_cart R (idx_n (2 * dimindex 1))) z (hl_path_image (idx_n (2 * dimindex 1)) g) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8398 / UNBOUNDED_COMPONENTS_COMPLEMENT_ABSOLUTE_RETRACT   (hash md5:9fb0fc0f65deecbaa7fa2ee9423b9e89)
Theorem hlt_UNBOUNDED_COMPONENTS_COMPLEMENT_ABSOLUTE_RETRACT : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_AR N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1) -> ~ hl_bounded N c = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8429 / CONNECTED_COMPLEMENT_ABSOLUTE_RETRACT   (hash md5:b76adb297b6a60fb2482ea0664a6014b)
Theorem hlt_CONNECTED_COMPLEMENT_ABSOLUTE_RETRACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_compact N s = 1 /\ hl_AR N s = 1) -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8441 / PATH_CONNECTED_COMPLEMENT_ABSOLUTE_RETRACT   (hash md5:805b364853e96b06d9f700d66c6c6e74)
Theorem hlt_PATH_CONNECTED_COMPLEMENT_ABSOLUTE_RETRACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_compact N s = 1 /\ hl_AR N s = 1) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8453 / CONNECTED_COMPLEMENT_HOMEOMORPHIC_CONVEX_COMPACT   (hash md5:641c890fea595edc6a522ad210dd7cab)
Theorem hlt_CONNECTED_COMPLEMENT_HOMEOMORPHIC_CONVEX_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_homeomorphic N M s t = 1 /\ (hl_convex M t = 1 /\ hl_compact M t = 1)) -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8466 / PATH_CONNECTED_COMPLEMENT_HOMEOMORPHIC_CONVEX_COMPACT   (hash md5:3e004d1a06e049a4dcb7afaad0189cb8)
Theorem hlt_PATH_CONNECTED_COMPLEMENT_HOMEOMORPHIC_CONVEX_COMPACT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_homeomorphic N M s t = 1 /\ (hl_convex M t = 1 /\ hl_compact M t = 1)) -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8482 / RETRACTION_ARC   (hash md5:9fddc1a793ee0de103ad28a67b4dd075)
Theorem hlt_RETRACTION_ARC : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N p = 1 -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_continuous_on N N f (hl_UNIV (hl_ty_cart R N)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_UNIV (hl_ty_cart R N))) (hl_path_image N p) = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_path_image N p) = 1 -> f x = x).
Admitted.

// HOL Light: Multivariate/degree.ml:8492 / PATH_CONNECTED_ARC_COMPLEMENT   (hash md5:f8af714dc996ab06cc62fff5e894cb5d)
Theorem hlt_PATH_CONNECTED_ARC_COMPLEMENT : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_arc N p = 1 -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_path_image N p)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8503 / CONNECTED_ARC_COMPLEMENT   (hash md5:69ae6594415c46c053506ce7de679608)
Theorem hlt_CONNECTED_ARC_COMPLEMENT : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_arc N p = 1 -> hl_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_path_image N p)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8508 / INSIDE_ARC_EMPTY   (hash md5:c05a7581bca65b062dc3b22d78649493)
Theorem hlt_INSIDE_ARC_EMPTY : forall N:set, N <> Empty -> forall p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N p = 1 -> hl_inside N (hl_path_image N p) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/degree.ml:8519 / INSIDE_SIMPLE_CURVE_IMP_CLOSED   (hash md5:772658bbedf1a29d1ef897aba716c184)
Theorem hlt_INSIDE_SIMPLE_CURVE_IMP_CLOSED : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall x :e hl_ty_cart R N, hl_simple_path N g = 1 /\ hl_IN (hl_ty_cart R N) x (hl_inside N (hl_path_image N g)) = 1 -> hl_pathfinish N g = hl_pathstart N g.
Admitted.

// HOL Light: Multivariate/degree.ml:8530 / FINITE_ANR_COMPLEMENT_COMPONENTS_CONCENTRIC   (hash md5:5b976fa1b01feabdf14bed6a3d7f811e)
Theorem hlt_FINITE_ANR_COMPLEMENT_COMPONENTS_CONCENTRIC : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall p :e hl_ty_cart R N, forall a b :e R, hl_compact N s = 1 /\ (hl_ANR N s = 1 /\ hl_real_lt a b = 1) -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6018 :e 2 :^: hl_ty_cart R N => if exists c :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6018 (if hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R p b)) s)) = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_closure N c) (hl_cball N (hl_pair (hl_ty_cart R N) R p a)) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) c = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:8780 / ACCESSIBLE_FRONTIER_ANR_INTER_COMPLEMENT_COMPONENT   (hash md5:47e21e6cff84774f38347b83619e2c55)
Theorem hlt_ACCESSIBLE_FRONTIER_ANR_INTER_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, forall p :e hl_ty_cart R N, forall b :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_ANR N s = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) b s)) = 1 /\ (hl_IN (hl_ty_cart R N) p (hl_frontier N c) = 1 /\ hl_IN (hl_ty_cart R N) p (hl_interior N b) = 1))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_pathfinish N g = p /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_DELETE (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 -> hl_IN (hl_ty_cart R N) (g t) c = 1).
Admitted.

// HOL Light: Multivariate/degree.ml:9221 / ACCESSIBLE_FRONTIER_ANR_COMPLEMENT_COMPONENT   (hash md5:26926aa682ea480512823ce986a81ac6)
Theorem hlt_ACCESSIBLE_FRONTIER_ANR_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_compact N s = 1 /\ (hl_ANR N s = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 /\ (hl_IN (hl_ty_cart R N) x c = 1 /\ hl_IN (hl_ty_cart R N) y (hl_frontier N c) = 1))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_arc N g = 1 /\ (hl_pathstart N g = x /\ (hl_pathfinish N g = y /\ forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_DELETE (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 -> hl_IN (hl_ty_cart R N) (g t) c = 1)).
Admitted.

// HOL Light: Multivariate/degree.ml:9297 / LPC_INTERMEDIATE_CLOSURE_ANR_COMPLEMENT_COMPONENT   (hash md5:e4fa73a5ddd53a2e0dc722d98cb08715)
Theorem hlt_LPC_INTERMEDIATE_CLOSURE_ANR_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall s c t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_ANR N s = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) c t = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_closure N c) = 1))) -> hl_locally N (hl_path_connected N) t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:9480 / LPC_INTERMEDIATE_CLOSURE_ANR_COMPLEMENT   (hash md5:2894145212ceaf8795aee6f1478a5e8d)
Theorem hlt_LPC_INTERMEDIATE_CLOSURE_ANR_COMPLEMENT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_ANR N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) t = 1 /\ hl_DISJOINT (hl_ty_cart R N) t (hl_interior N s) = 1)) -> hl_locally N (hl_path_connected N) t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:9642 / LPC_SUPERSET_COMPLEMENT_SIMPLE_PATH_IMAGE   (hash md5:fc2e33dc40f7510b57412f7f83648a7a)
Theorem hlt_LPC_SUPERSET_COMPLEMENT_SIMPLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_simple_path N g = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_path_image N g)) s = 1) -> hl_locally N (hl_path_connected N) s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:9654 / LPC_OPEN_SIMPLE_PATH_COMPLEMENT   (hash md5:8182fc51f07a15b5438ccc62c0991e0b)
Theorem hlt_LPC_OPEN_SIMPLE_PATH_COMPLEMENT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_simple_path N g = 1 -> hl_locally N (hl_path_connected N) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_DIFF (hl_ty_cart R N) (hl_path_image N g) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N)))))) = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:9669 / PATH_CONNECTED_INTERMEDIATE_CLOSURE_ANR_COMPLEMENT_COMPONENT   (hash md5:7790893a818efe93e9625de919900a43)
Theorem hlt_PATH_CONNECTED_INTERMEDIATE_CLOSURE_ANR_COMPLEMENT_COMPONENT : forall N:set, N <> Empty -> forall s c t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_ANR N s = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) c t = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_closure N c) = 1))) -> hl_path_connected N t = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:9683 / PATH_CONNECTED_SUPERSET_COMPLEMENT_ARC_IMAGE   (hash md5:9b9c51c4f5d6b9914dd801757352740e)
Theorem hlt_PATH_CONNECTED_SUPERSET_COMPLEMENT_ARC_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_arc N g = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_path_image N g)) s = 1) -> hl_path_connected N s = 1.
Admitted.

// HOL Light: Multivariate/degree.ml:9699 / PATH_CONNECTED_OPEN_ARC_COMPLEMENT   (hash md5:901f1b58b3f834cbef74e43885152eef)
Theorem hlt_PATH_CONNECTED_OPEN_ARC_COMPLEMENT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_arc N g = 1 -> hl_path_connected N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_DIFF (hl_ty_cart R N) (hl_path_image N g) (hl_INSERT (hl_ty_cart R N) (hl_pathstart N g) (hl_INSERT (hl_ty_cart R N) (hl_pathfinish N g) (hl_EMPTY (hl_ty_cart R N)))))) = 1.
Admitted.

