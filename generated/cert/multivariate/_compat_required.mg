// Compatibility theorem statements generated from the mapping registry (docs/DESIGN.md §21.4)
// that are not yet proved in mglib/literal/compat.mg (or are stated differently there), and
// carrier nonemptiness theorems missing from mglib/literal/carriers.mg.

// vector_matrix_mul : (real,M)cart->((real,N)cart,M)cart->(real,N)cart (not in compat.mg)
Theorem hl_vector_matrix_mul_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx M, forall l2 :e R :^: idx N :^: idx M, hl_vector_matrix_mul M N l1 l2 = vector_matrix_mul M N l1 l2.
Admitted.

// tagged_division_of : ((real,?1349544)cart#((real,?1349544)cart->bool)->bool)->((real,?1349544)cart->bool)->bool (not in compat.mg)
Theorem hl_tagged_division_of_compat : forall T1349544:set, T1349544 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1349544 :*: 2 :^: (R :^: idx T1349544)), forall l2 :e 2 :^: (R :^: idx T1349544), hl_tagged_division_of T1349544 l1 l2 = 1 <-> tagged_division_of T1349544 (hl_rep (R :^: idx T1349544 :*: 2 :^: (R :^: idx T1349544)) l1) (hl_rep (R :^: idx T1349544) l2).
Admitted.

// path : ((real,1)cart->(real,N)cart)->bool (not in compat.mg)
Theorem hl_path_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> (hl_path N l1 = 1 <-> path N f1).
Admitted.

// equiintegrable_on : (((real,M)cart->(real,N)cart)->bool)->((real,M)cart->bool)->bool (not in compat.mg)
Theorem hl_equiintegrable_on_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e 2 :^: (R :^: idx N :^: (R :^: idx M)), forall l2 :e 2 :^: (R :^: idx M), hl_equiintegrable_on M N l1 l2 = 1 <-> equiintegrable_on M N (hl_rep (R :^: idx N :^: (R :^: idx M)) l1) (hl_rep (R :^: idx M) l2).
Admitted.

// continuous : (?793034->(real,?793032)cart)->?793034 net->bool (not in compat.mg)
Theorem hl_continuous_compat : forall T793034 T793032:set, T793034 <> Empty -> T793032 <> Empty -> forall l1 :e R :^: idx T793032 :^: T793034, forall f1:set -> set, (forall x :e T793034, l1 x = f1 x) -> forall l2 :e hl_ty_net T793034, hl_continuous T793034 T793032 l1 l2 = 1 <-> continuous T793032 T793034 f1 l2.
Admitted.

// real_closed : (real->bool)->bool (not in compat.mg)
Theorem hl_real_closed_compat : forall l1 :e 2 :^: R, hl_real_closed l1 = 1 <-> real_closed (hl_rep R l1).
Admitted.

// det : ((real,N)cart,N)cart->real (not in compat.mg)
Theorem hl_det_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: idx N, hl_det N l1 = det N l1.
Admitted.

// rank : ((real,M)cart,N)cart->num (not in compat.mg)
Theorem hl_rank_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx M :^: idx N, hl_rank M N l1 = rank M N l1.
Admitted.

// totally_bounded_in : A metric->(A->bool)->bool (not in compat.mg)
Theorem hl_totally_bounded_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e 2 :^: A, hl_totally_bounded_in A l1 l2 = 1 <-> totally_bounded_in A l1 (hl_rep A l2).
Admitted.

// totally_bounded_in : A metric->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_totally_bounded_in_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_totally_bounded_in (2 :^: A) l1 l2 = 1 <-> totally_bounded_in (Power A) l1 (hl_rep2 A l2).
Admitted.

// matroid_dim : A matroid->(A->bool)->num (not in compat.mg)
Theorem hl_matroid_dim_compat : forall A:set, A <> Empty -> hl_matroid_dim A = matroid_dim A.
Admitted.

// matroid_dim : A matroid->(A->bool)->num at A := A -> bool (not in compat.mg)
Theorem hl_matroid_dim_compat_pow : forall A:set, A <> Empty -> hl_matroid_dim (2 :^: A) = matroid_dim (Power A).
Admitted.

// group_image : A group#B group->(A->B)->B->bool (not in compat.mg)
Theorem hl_group_image_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A :*: hl_ty_group B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_rep B (hl_group_image A B l1 l2) = group_image A B l1 f2.
Admitted.

// group_image : A group#B group->(A->B)->B->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_group_image_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A :*: hl_ty_group (2 :^: B), forall l2 :e 2 :^: B :^: A, forall f2:set -> set, (forall x :e A, hl_rep B (l2 x) = f2 x) -> hl_rep2 B (hl_group_image A (2 :^: B) l1 l2) = group_image A (Power B) l1 f2.
Admitted.

// floor : real->real (not in compat.mg)
Theorem hl_floor_compat : forall l1 :e R, hl_floor l1 = floor_R l1.
Admitted.

// CASEWISE : ((P->A)#(B->P->C)) list->B->A->C (not in compat.mg)
Theorem hl_CASEWISE_compat : forall P A B C:set, P <> Empty -> A <> Empty -> B <> Empty -> C <> Empty -> hl_CASEWISE P A B C = Empty.
Admitted.

// weakly_locally_connected_at : ?482594->?482594 topology->bool (not in compat.mg)
Theorem hl_weakly_locally_connected_at_compat : forall T482594:set, T482594 <> Empty -> forall l1 :e T482594, forall l2 :e hl_ty_topology T482594, hl_weakly_locally_connected_at T482594 l1 l2 = 1 <-> weakly_locally_connected_at T482594 l1 l2.
Admitted.

// frag_cmul : int->A frag->A frag (not in compat.mg)
Theorem hl_frag_cmul_compat : forall A:set, A <> Empty -> forall l1 :e int, forall l2 :e hl_ty_frag A, hl_frag_cmul A l1 l2 = frag_cmul A l1 l2.
Admitted.

// at_neginfinity : real net (not in compat.mg)
Theorem hl_at_neginfinity_compat : hl_at_neginfinity = at_neginfinity.
Admitted.

// simplicial_chain : num#((num->real)->bool)->((num->real)->num->real) frag->bool (not in compat.mg)
Theorem hl_simplicial_chain_compat : forall l1 :e omega :*: 2 :^: (R :^: omega), forall l2 :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain l1 l2 = 1 <-> simplicial_chain l1 l2.
Admitted.

// polar_dual : ((real,N)cart->bool)->(real,N)cart->bool (not in compat.mg)
Theorem hl_polar_dual_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_rep (R :^: idx N) (hl_polar_dual N l1) = polar_dual N (hl_rep (R :^: idx N) l1).
Admitted.

// chain_map : num->(A->B)->((num->real)->A) frag->((num->real)->B) frag (not in compat.mg)
Theorem hl_chain_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e omega, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall l3 :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_map A B l1 l2 l3 = chain_map A B l1 f2 l3.
Admitted.

// netlimits : A net->A->bool (not in compat.mg)
Theorem hl_netlimits_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_net A, hl_rep A (hl_netlimits A l1) = netlimits A l1.
Admitted.

// netlimits : A net->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_netlimits_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_net (2 :^: A), hl_rep2 A (hl_netlimits (2 :^: A) l1) = netlimits (Power A) l1.
Admitted.

// rectifiable_path : ((real,1)cart->(real,N)cart)->bool (not in compat.mg)
Theorem hl_rectifiable_path_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> (hl_rectifiable_path N l1 = 1 <-> rectifiable_path N f1).
Admitted.

// sphere : (real,?757389)cart#real->(real,?757389)cart->bool (not in compat.mg)
Theorem hl_sphere_compat : forall T757389:set, T757389 <> Empty -> forall l1 :e R :^: idx T757389 :*: R, hl_rep (R :^: idx T757389) (hl_sphere T757389 l1) = sphere T757389 l1.
Admitted.

// INJP : (num->A->bool)->(num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_INJP_compat : forall A:set, A <> Empty -> hl_INJP A = Empty.
Admitted.

// INJP : (num->A->bool)->(num->A->bool)->num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_INJP_compat_pow : forall A:set, A <> Empty -> hl_INJP (2 :^: A) = Empty.
Admitted.

// barycentre : ((real,?1070140)cart->bool)->(real,?1070140)cart (not in compat.mg)
Theorem hl_barycentre_compat : forall T1070140:set, T1070140 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1070140), hl_barycentre T1070140 l1 = barycentre T1070140 (hl_rep (R :^: idx T1070140) l1).
Admitted.

// simplicial_face : num->(num->real)->num->real (not in compat.mg)
Theorem hl_simplicial_face_compat : forall l1 :e omega, forall l2 :e R :^: omega, forall f2:set -> set, (forall x :e omega, l2 x = f2 x) -> forall l3 :e omega, hl_simplicial_face l1 l2 l3 = simplicial_face l1 f2 l3.
Admitted.

// convex_cone : ((real,?1024250)cart->bool)->bool (not in compat.mg)
Theorem hl_convex_cone_compat : forall T1024250:set, T1024250 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1024250), hl_convex_cone T1024250 l1 = 1 <-> convex_cone T1024250 (hl_rep (R :^: idx T1024250) l1).
Admitted.

// <=_c : (A->bool)->(B->bool)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_sym_3c3d5f63_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: B), hl_sym_3c3d5f63 A (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep A l1) (hl_rep2 B l2).
Admitted.

// <=_c : (A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_3c3d5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_sym_3c3d5f63 (2 :^: A) (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep2 A l1) (hl_rep2 B l2).
Admitted.

// grade : num->(real,N multivector)cart->(real,N multivector)cart (not in compat.mg)
Theorem hl_grade_compat : forall N:set, N <> Empty -> forall l1 :e omega, forall l2 :e R :^: idx (hl_ty_multivector N), hl_grade N l1 l2 = grade N l1 l2.
Admitted.

// homotopic_with : ((?496001->?495998)->bool)->?496001 topology#?495998 topology->(?496001->?495998)->(?496001->?495998)->bool (not in compat.mg)
Theorem hl_homotopic_with_compat : forall T496001 T495998:set, T496001 <> Empty -> T495998 <> Empty -> forall l1 :e 2 :^: (T495998 :^: T496001), forall l2 :e hl_ty_topology T496001 :*: hl_ty_topology T495998, forall l3 :e T495998 :^: T496001, forall f3:set -> set, (forall x :e T496001, l3 x = f3 x) -> forall l4 :e T495998 :^: T496001, forall f4:set -> set, (forall x :e T496001, l4 x = f4 x) -> (hl_homotopic_with T496001 T495998 l1 l2 l3 l4 = 1 <-> homotopic_with T495998 T496001 (hl_rep (T495998 :^: T496001) l1) l2 f3 f4).
Admitted.

// vector_derivative : ((real,1)cart->(real,N)cart)->(real,1)cart net->(real,N)cart (not in compat.mg)
Theorem hl_vector_derivative_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> forall l2 :e hl_ty_net (R :^: idx 1), hl_vector_derivative N l1 l2 = vector_derivative N f1 l2.
Admitted.

// evenperm : (?199130->?199130)->bool (not in compat.mg)
Theorem hl_evenperm_compat : forall T199130:set, T199130 <> Empty -> forall l1 :e T199130 :^: T199130, forall f1:set -> set, (forall x :e T199130, l1 x = f1 x) -> (hl_evenperm T199130 l1 = 1 <-> evenperm T199130 f1).
Admitted.

// lindelof_space : A topology->bool (not in compat.mg)
Theorem hl_lindelof_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_lindelof_space A l1 = 1 <-> lindelof_space A l1.
Admitted.

// singular_subdivision : num->((num->real)->?602765) frag->((num->real)->?602765) frag (not in compat.mg)
Theorem hl_singular_subdivision_compat : forall T602765:set, T602765 <> Empty -> forall l1 :e omega, forall x :e hl_ty_frag (T602765 :^: (R :^: omega)), hl_singular_subdivision T602765 l1 x = singular_subdivision T602765 l1 x.
Admitted.

// suslin : ((?238025->bool)->bool)->(?238025->bool)->bool (not in compat.mg)
Theorem hl_suslin_compat : forall T238025:set, T238025 <> Empty -> forall l1 :e 2 :^: (2 :^: T238025), hl_rep2 T238025 (hl_suslin T238025 l1) = suslin T238025 (hl_rep2 T238025 l1).
Admitted.

// suslin : ((?238025->bool)->bool)->(?238025->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_suslin_compat_pow : forall T238025:set, T238025 <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: T238025)), hl_rep2 (2 :^: T238025) (hl_suslin (2 :^: T238025) l1) = suslin (Power T238025) (hl_rep2 (2 :^: T238025) l1).
Admitted.

// epigraph : ((real,N)cart->bool)->((real,N)cart->real)->(real,(N,1)finite_sum)cart->bool (not in compat.mg)
Theorem hl_epigraph_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), forall l2 :e R :^: (R :^: idx N), forall f2:set -> set, (forall x :e R :^: idx N, l2 x = f2 x) -> hl_rep (R :^: idx (idx_n (dimindex N + dimindex 1))) (hl_epigraph N l1 l2) = epigraph N (hl_rep (R :^: idx N) l1) f2.
Admitted.

// frac : real->real (not in compat.mg)
Theorem hl_frac_compat : forall l1 :e R, hl_frac l1 = l1 + - floor_R l1.
Admitted.

// measurable : ((real,?1486781)cart->bool)->bool (not in compat.mg)
Theorem hl_measurable_compat : forall T1486781:set, T1486781 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1486781), hl_measurable T1486781 l1 = 1 <-> measurable T1486781 (hl_rep (R :^: idx T1486781) l1).
Admitted.

// group_inv : A group->A->A (not in compat.mg)
Theorem hl_group_inv_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall x :e A, hl_group_inv A l1 x = group_inv A l1 x.
Admitted.

// distance : (real,N)cart#(real,N)cart->real (not in compat.mg)
Theorem hl_distance_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :*: R :^: idx N, hl_distance N l1 = distance N l1.
Admitted.

// path_image : ((real,1)cart->(real,N)cart)->(real,N)cart->bool (not in compat.mg)
Theorem hl_path_image_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> hl_rep (R :^: idx N) (hl_path_image N l1) = path_image N f1.
Admitted.

// matroid_spanning : A matroid->(A->bool)->bool (not in compat.mg)
Theorem hl_matroid_spanning_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid A, forall l2 :e 2 :^: A, hl_matroid_spanning A l1 l2 = 1 <-> matroid_spanning A l1 (hl_rep A l2).
Admitted.

// matroid_spanning : A matroid->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_matroid_spanning_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_matroid_spanning (2 :^: A) l1 l2 = 1 <-> matroid_spanning (Power A) l1 (hl_rep2 A l2).
Admitted.

// brouwer_degree1 : num->((real,N)cart->(real,N)cart)->int (not in compat.mg)
Theorem hl_brouwer_degree1_compat : forall N:set, N <> Empty -> forall l1 :e omega, forall l2 :e R :^: idx N :^: (R :^: idx N), forall f2:set -> set, (forall x :e R :^: idx N, l2 x = f2 x) -> hl_brouwer_degree1 N l1 l2 = brouwer_degree1 N l1 f2.
Admitted.

// matrix_neg : ((real,N)cart,M)cart->((real,N)cart,M)cart (not in compat.mg)
Theorem hl_matrix_neg_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e R :^: idx N :^: idx M, hl_matrix_neg N M l1 = matrix_neg M N l1.
Admitted.

// path_length : ((real,1)cart->(real,N)cart)->real (not in compat.mg)
Theorem hl_path_length_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> hl_path_length N l1 = path_length N f1.
Admitted.

// closest_point : ((real,?898692)cart->bool)->(real,?898692)cart->(real,?898692)cart (not in compat.mg)
Theorem hl_closest_point_compat : forall T898692:set, T898692 <> Empty -> forall l1 :e 2 :^: (R :^: idx T898692), forall l2 :e R :^: idx T898692, hl_closest_point T898692 l1 l2 = closest_point T898692 (hl_rep (R :^: idx T898692) l1) l2.
Admitted.

// retraction : ((real,N)cart->bool)#((real,N)cart->bool)->((real,N)cart->(real,N)cart)->bool (not in compat.mg)
Theorem hl_retraction_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N) :*: 2 :^: (R :^: idx N), forall l2 :e R :^: idx N :^: (R :^: idx N), forall f2:set -> set, (forall x :e R :^: idx N, l2 x = f2 x) -> (hl_retraction N l1 l2 = 1 <-> retraction N l1 f2).
Admitted.

// section_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_section_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_section_map A B l1 l2 = 1 <-> section_map A B l1 f2).
Admitted.

// vsum : (A->bool)->(A->(real,N)cart)->(real,N)cart (not in compat.mg)
Theorem hl_vsum_compat : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e 2 :^: A, forall l2 :e R :^: idx N :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_vsum A N l1 l2 = vsum A N (hl_rep A l1) f2.
Admitted.

// vsum : (A->bool)->(A->(real,N)cart)->(real,N)cart, nested at type variables 1 (not in compat.mg)
Theorem hl_vsum_compat_pow1 : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e R :^: idx N :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_vsum (2 :^: A) N l1 l2 = vsum (Power A) N (hl_rep2 A l1) f2.
Admitted.

// matroid_dimension : A matroid->num (not in compat.mg)
Theorem hl_matroid_dimension_compat : forall A:set, A <> Empty -> hl_matroid_dimension A = matroid_dimension A.
Admitted.

// subtopology : ?356067 topology->(?356067->bool)->?356067 topology (not in compat.mg)
Theorem hl_subtopology_compat : forall T356067:set, T356067 <> Empty -> forall l1 :e hl_ty_topology T356067, forall l2 :e 2 :^: T356067, hl_subtopology T356067 l1 l2 = subtopology T356067 l1 (hl_rep T356067 l2).
Admitted.

// subtopology : ?356067 topology->(?356067->bool)->?356067 topology at A := A -> bool (not in compat.mg)
Theorem hl_subtopology_compat_pow : forall T356067:set, T356067 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T356067), forall l2 :e 2 :^: (2 :^: T356067), hl_subtopology (2 :^: T356067) l1 l2 = subtopology (Power T356067) l1 (hl_rep2 T356067 l2).
Admitted.

// contractible : ((real,?1175435)cart->bool)->bool (not in compat.mg)
Theorem hl_contractible_compat : forall T1175435:set, T1175435 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1175435), hl_contractible T1175435 l1 = 1 <-> contractible T1175435 (hl_rep (R :^: idx T1175435) l1).
Admitted.

// midpoint : (real,?715518)cart#(real,?715518)cart->(real,?715518)cart (not in compat.mg)
Theorem hl_midpoint_compat : forall T715518:set, T715518 <> Empty -> forall l1 :e R :^: idx T715518 :*: R :^: idx T715518, hl_midpoint T715518 l1 = midpoint T715518 l1.
Admitted.

// geom_mul : (real,N multivector)cart->(real,N multivector)cart->(real,N multivector)cart (not in compat.mg)
Theorem hl_geom_mul_compat : forall N:set, N <> Empty -> forall l1 l2 :e R :^: idx (hl_ty_multivector N), hl_geom_mul N l1 l2 = geom_mul N l1 l2.
Admitted.

// continuous_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_continuous_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_continuous_map A B l1 l2 = 1 <-> continuous_map A B l1 f2).
Admitted.

// frag_neg : A frag->A frag (not in compat.mg)
Theorem hl_frag_neg_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_frag A, hl_frag_neg A l1 = frag_neg A l1.
Admitted.

// UNION_OF : (((A->bool)->bool)->bool)->((A->bool)->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_UNION_OF_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: (2 :^: A))), forall P1:set -> prop, (forall x :e 2 :^: (2 :^: (2 :^: A)), l1 x = 1 <-> P1 (hl_rep2 (2 :^: A) x)) -> forall l2 :e 2 :^: (2 :^: (2 :^: A)), forall P2:set -> prop, (forall x :e 2 :^: (2 :^: A), l2 x = 1 <-> P2 (hl_rep2 A x)) -> forall l3 :e 2 :^: (2 :^: A), hl_UNION_OF (2 :^: A) l1 l2 l3 = 1 <-> exists u c= Power (Power A), P1 u /\ (forall c :e u, P2 c) /\ Union u = hl_rep2 A l3.
Admitted.

// t0_space : A topology->bool (not in compat.mg)
Theorem hl_t0_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_t0_space A l1 = 1 <-> t0_space A l1.
Admitted.

// topology : ((A->bool)->bool)->A topology (not in compat.mg)
Theorem hl_topology_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_topology A l1 = hl_rep2 A l1.
Admitted.

// topology : ((A->bool)->bool)->A topology at A := A -> bool (not in compat.mg)
Theorem hl_topology_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), hl_topology (2 :^: A) l1 = hl_rep2 (2 :^: A) l1.
Admitted.

// mbounded : A metric->(A->bool)->bool (not in compat.mg)
Theorem hl_mbounded_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e 2 :^: A, hl_mbounded A l1 l2 = 1 <-> mbounded A l1 (hl_rep A l2).
Admitted.

// mbounded : A metric->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_mbounded_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_mbounded (2 :^: A) l1 l2 = 1 <-> mbounded (Power A) l1 (hl_rep2 A l2).
Admitted.

// vector_neg : (real,N)cart->(real,N)cart (not in compat.mg)
Theorem hl_vector_neg_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N, hl_vector_neg N l1 = vector_neg N l1.
Admitted.

// real_open : (real->bool)->bool (not in compat.mg)
Theorem hl_real_open_compat : forall l1 :e 2 :^: R, hl_real_open l1 = 1 <-> real_open (hl_rep R l1).
Admitted.

// covering_space : ((real,M)cart->bool)#((real,M)cart->(real,N)cart)->((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_covering_space_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e 2 :^: (R :^: idx M) :*: R :^: idx N :^: (R :^: idx M), forall l2 :e 2 :^: (R :^: idx N), hl_covering_space M N l1 l2 = 1 <-> covering_space M N l1 (hl_rep (R :^: idx N) l2).
Admitted.

// wqoset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_wqoset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_wqoset A l1 = 1 <-> wqoset_on A P1).
Admitted.

// wqoset : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_wqoset_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_wqoset (2 :^: A) l1 = 1 <-> wqoset_on (Power A) P1).
Admitted.

// cauchy_continuous_map : ?503300 metric#?503308 metric->(?503300->?503308)->bool (not in compat.mg)
Theorem hl_cauchy_continuous_map_compat : forall T503300 T503308:set, T503300 <> Empty -> T503308 <> Empty -> forall l1 :e hl_ty_metric T503300 :*: hl_ty_metric T503308, forall l2 :e T503308 :^: T503300, forall f2:set -> set, (forall x :e T503300, l2 x = f2 x) -> (hl_cauchy_continuous_map T503300 T503308 l1 l2 = 1 <-> cauchy_continuous_map T503300 T503308 l1 f2).
Admitted.

// group_carrier : A group->A->bool (not in compat.mg)
Theorem hl_group_carrier_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, hl_rep A (hl_group_carrier A l1) = group_carrier A l1.
Admitted.

// group_carrier : A group->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_group_carrier_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_group (2 :^: A), hl_rep2 A (hl_group_carrier (2 :^: A) l1) = group_carrier (Power A) l1.
Admitted.

// triangulation : (((real,N)cart->bool)->bool)->bool (not in compat.mg)
Theorem hl_triangulation_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (2 :^: (R :^: idx N)), hl_triangulation N l1 = 1 <-> triangulation N (hl_rep2 (R :^: idx N) l1).
Admitted.

// frontier_of : ?362289 topology->(?362289->bool)->?362289->bool (not in compat.mg)
Theorem hl_frontier_of_compat : forall T362289:set, T362289 <> Empty -> forall l1 :e hl_ty_topology T362289, forall l2 :e 2 :^: T362289, hl_rep T362289 (hl_frontier_of T362289 l1 l2) = frontier_of T362289 l1 (hl_rep T362289 l2).
Admitted.

// frontier_of : ?362289 topology->(?362289->bool)->?362289->bool at A := A -> bool (not in compat.mg)
Theorem hl_frontier_of_compat_pow : forall T362289:set, T362289 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T362289), forall l2 :e 2 :^: (2 :^: T362289), hl_rep2 T362289 (hl_frontier_of (2 :^: T362289) l1 l2) = frontier_of (Power T362289) l1 (hl_rep2 T362289 l2).
Admitted.

// sums : (num->(real,?885824)cart)->(real,?885824)cart->(num->bool)->bool (not in compat.mg)
Theorem hl_sums_compat : forall T885824:set, T885824 <> Empty -> forall l1 :e R :^: idx T885824 :^: omega, forall f1:set -> set, (forall x :e omega, l1 x = f1 x) -> forall l2 :e R :^: idx T885824, forall l3 :e 2 :^: omega, hl_sums T885824 l1 l2 l3 = 1 <-> sums T885824 f1 l2 (hl_rep omega l3).
Admitted.

// between : (real,?714347)cart->(real,?714347)cart#(real,?714347)cart->bool (not in compat.mg)
Theorem hl_between_compat : forall T714347:set, T714347 <> Empty -> forall l1 :e R :^: idx T714347, forall l2 :e R :^: idx T714347 :*: R :^: idx T714347, hl_between T714347 l1 l2 = 1 <-> between T714347 l1 l2.
Admitted.

// hull : ((?221254->bool)->bool)->(?221254->bool)->?221254->bool (not in compat.mg)
Theorem hl_hull_compat : forall T221254:set, T221254 <> Empty -> forall l1 :e 2 :^: (2 :^: T221254), forall l2 :e 2 :^: T221254, hl_rep T221254 (hl_hull T221254 l1 l2) = hull T221254 (hl_rep2 T221254 l1) (hl_rep T221254 l2).
Admitted.

// hull : ((?221254->bool)->bool)->(?221254->bool)->?221254->bool at A := A -> bool (not in compat.mg)
Theorem hl_hull_compat_pow : forall T221254:set, T221254 <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: T221254)), forall l2 :e 2 :^: (2 :^: T221254), hl_rep2 T221254 (hl_hull (2 :^: T221254) l1 l2) = hull (Power T221254) (hl_rep2 (2 :^: T221254) l1) (hl_rep2 T221254 l2).
Admitted.

// retraction_maps : A topology#B topology->(A->B)#(B->A)->bool (not in compat.mg)
Theorem hl_retraction_maps_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A :*: A :^: B, hl_retraction_maps A B l1 l2 = 1 <-> retraction_maps A B l1 l2.
Admitted.

// vectorize : ((A,N)cart,M)cart->(A,(M,N)finite_prod)cart (not in compat.mg)
Theorem hl_vectorize_compat : forall A N M:set, A <> Empty -> N <> Empty -> M <> Empty -> forall l1 :e A :^: idx N :^: idx M, hl_vectorize A N M l1 = vectorize A M N l1.
Admitted.

// homology_group : int#A topology->(((num->real)->A) frag->bool) group (not in compat.mg)
Theorem hl_homology_group_compat : forall A:set, A <> Empty -> forall l1 :e int :*: hl_ty_topology A, hl_homology_group A l1 = homology_group A l1.
Admitted.

// frag_sub : A frag->A frag->A frag (not in compat.mg)
Theorem hl_frag_sub_compat : forall A:set, A <> Empty -> forall l1 l2 :e hl_ty_frag A, hl_frag_sub A l1 l2 = frag_sub A l1 l2.
Admitted.

// cball : (real,?757296)cart#real->(real,?757296)cart->bool (not in compat.mg)
Theorem hl_cball_compat : forall T757296:set, T757296 <> Empty -> forall l1 :e R :^: idx T757296 :*: R, hl_rep (R :^: idx T757296) (hl_cball T757296 l1) = cball T757296 l1.
Admitted.

// closed : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_closed_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_closed N l1 = 1 <-> closed N (hl_rep (R :^: idx N) l1).
Admitted.

// isomorphic_group : A group->B group->bool (not in compat.mg)
Theorem hl_isomorphic_group_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e hl_ty_group B, hl_isomorphic_group A B l1 l2 = 1 <-> isomorphic_group A B l1 l2.
Admitted.

// homologous_rel : num#A topology#(A->bool)->((num->real)->A) frag->((num->real)->A) frag->bool (not in compat.mg)
Theorem hl_homologous_rel_compat : forall A:set, A <> Empty -> forall l1 :e omega :*: (hl_ty_topology A :*: 2 :^: A), forall l2 l3 :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A l1 l2 l3 = 1 <-> homologous_rel A l1 l2 l3.
Admitted.

// homologous_rel : num#A topology#(A->bool)->((num->real)->A) frag->((num->real)->A) frag->bool at A := A -> bool (not in compat.mg)
Theorem hl_homologous_rel_compat_pow : forall A:set, A <> Empty -> forall l1 :e omega :*: (hl_ty_topology (2 :^: A) :*: 2 :^: (2 :^: A)), forall l2 l3 :e hl_ty_frag (2 :^: A :^: (R :^: omega)), hl_homologous_rel (2 :^: A) l1 l2 l3 = 1 <-> homologous_rel (Power A) l1 l2 l3.
Admitted.

// absolutely_continuous_on : ((real,1)cart->(real,N)cart)->((real,1)cart->bool)->bool (not in compat.mg)
Theorem hl_absolutely_continuous_on_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx 1), hl_absolutely_continuous_on N l1 l2 = 1 <-> absolutely_continuous_on N f1 (hl_rep (R :^: idx 1) l2).
Admitted.

// gdelta : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_gdelta_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_gdelta N l1 = 1 <-> gdelta N (hl_rep (R :^: idx N) l1).
Admitted.

// setdist : ((real,?899664)cart->bool)#((real,?899664)cart->bool)->real (not in compat.mg)
Theorem hl_setdist_compat : forall T899664:set, T899664 <> Empty -> forall l1 :e 2 :^: (R :^: idx T899664) :*: 2 :^: (R :^: idx T899664), hl_setdist T899664 l1 = setdist T899664 l1.
Admitted.

// vector_sub : (real,N)cart->(real,N)cart->(real,N)cart (not in compat.mg)
Theorem hl_vector_sub_compat : forall N:set, N <> Empty -> forall l1 l2 :e R :^: idx N, hl_vector_sub N l1 l2 = vector_sub N l1 l2.
Admitted.

// affine_dependent : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_affine_dependent_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_affine_dependent N l1 = 1 <-> affine_dependent N (hl_rep (R :^: idx N) l1).
Admitted.

// --> : (?773916->(real,?773911)cart)->(real,?773911)cart->?773916 net->bool (not in compat.mg)
Theorem hl_tendsto_compat : forall T773916 T773911:set, T773916 <> Empty -> T773911 <> Empty -> forall l1 :e R :^: idx T773911 :^: T773916, forall f1:set -> set, (forall x :e T773916, l1 x = f1 x) -> forall l2 :e R :^: idx T773911, forall l3 :e hl_ty_net T773916, hl_tendsto T773916 T773911 l1 l2 l3 = 1 <-> tendsto T773911 T773916 f1 l2 l3.
Admitted.

// contractible_space : A topology->bool (not in compat.mg)
Theorem hl_contractible_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_contractible_space A l1 = 1 <-> contractible_space A l1.
Admitted.

// homeomorphic : ((real,?853364)cart->bool)->((real,?853363)cart->bool)->bool (not in compat.mg)
Theorem hl_homeomorphic_compat : forall T853364 T853363:set, T853364 <> Empty -> T853363 <> Empty -> forall l1 :e 2 :^: (R :^: idx T853364), forall l2 :e 2 :^: (R :^: idx T853363), hl_homeomorphic T853364 T853363 l1 l2 = 1 <-> homeomorphic T853363 T853364 (hl_rep (R :^: idx T853364) l1) (hl_rep (R :^: idx T853363) l2).
Admitted.

// matrix_vector_mul : ((real,N)cart,M)cart->(real,N)cart->(real,M)cart (not in compat.mg)
Theorem hl_matrix_vector_mul_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e R :^: idx N :^: idx M, forall l2 :e R :^: idx N, hl_matrix_vector_mul N M l1 l2 = matrix_vector_mul M N l1 l2.
Admitted.

// real_bounded : (real->bool)->bool (not in compat.mg)
Theorem hl_real_bounded_compat : forall l1 :e 2 :^: R, hl_real_bounded l1 = 1 <-> real_bounded (hl_rep R l1).
Admitted.

// group_element_order : A group->A->num (not in compat.mg)
Theorem hl_group_element_order_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e A, hl_group_element_order A l1 l2 = group_element_order_hl A l1 l2.
Admitted.

// ALL : (A->bool)->A list->bool at A := A -> bool (not in compat.mg)
Theorem hl_ALL_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall P1:set -> prop, (forall x :e 2 :^: A, l1 x = 1 <-> P1 (hl_rep A x)) -> forall l2 :e finseq (2 :^: A), hl_ALL (2 :^: A) l1 l2 = 1 <-> seq_all P1 l2.
Admitted.

// positive_definite : ((real,N)cart,N)cart->bool (not in compat.mg)
Theorem hl_positive_definite_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: idx N, hl_positive_definite N l1 = 1 <-> positive_definite N l1.
Admitted.

// fine : (?1351151->?1351150->bool)->(?1351151#(?1351150->bool)->bool)->bool (not in compat.mg)
Theorem hl_fine_compat : forall T1351151 T1351150:set, T1351151 <> Empty -> T1351150 <> Empty -> forall l1 :e 2 :^: T1351150 :^: T1351151, forall P1:set -> set -> prop, (forall x :e T1351151, forall y :e T1351150, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: (T1351151 :*: 2 :^: T1351150), hl_fine T1351151 T1351150 l1 l2 = 1 <-> fine T1351150 T1351151 P1 (hl_rep (T1351151 :*: 2 :^: T1351150) l2).
Admitted.

// fine : (?1351151->?1351150->bool)->(?1351151#(?1351150->bool)->bool)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_fine_compat_pow2 : forall T1351151 T1351150:set, T1351151 <> Empty -> T1351150 <> Empty -> forall l1 :e 2 :^: (2 :^: T1351150) :^: T1351151, forall P1:set -> set -> prop, (forall x :e T1351151, forall y :e 2 :^: T1351150, l1 x y = 1 <-> P1 x (hl_rep T1351150 y)) -> forall l2 :e 2 :^: (T1351151 :*: 2 :^: (2 :^: T1351150)), hl_fine T1351151 (2 :^: T1351150) l1 l2 = 1 <-> fine (Power T1351150) T1351151 P1 (hl_rep (T1351151 :*: 2 :^: (2 :^: T1351150)) l2).
Admitted.

// simplex : int->((real,?1249511)cart->bool)->bool (not in compat.mg)
Theorem hl_simplex_compat : forall T1249511:set, T1249511 <> Empty -> forall l1 :e int, forall l2 :e 2 :^: (R :^: idx T1249511), hl_simplex T1249511 l1 l2 = 1 <-> simplex T1249511 l1 (hl_rep (R :^: idx T1249511) l2).
Admitted.

// sequentially : num net (not in compat.mg)
Theorem hl_sequentially_compat : hl_sequentially = sequentially.
Admitted.

// chain : (A->A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_chain_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A, hl_chain A l1 l2 = 1 <-> chain_on A P1 (hl_rep A l2).
Admitted.

// chain : (A->A->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_chain_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> forall l2 :e 2 :^: (2 :^: A), hl_chain (2 :^: A) l1 l2 = 1 <-> chain_on (Power A) P1 (hl_rep2 A l2).
Admitted.

// cantor_space : (num->bool) topology (not in compat.mg)
Theorem hl_cantor_space_compat : hl_cantor_space = cantor_space.
Admitted.

// measure : ((real,?1486793)cart->bool)->real (not in compat.mg)
Theorem hl_measure_compat : forall T1486793:set, T1486793 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1486793), hl_measure T1486793 l1 = measure T1486793 (hl_rep (R :^: idx T1486793) l1).
Admitted.

// orthogonal_matrix : ((real,N)cart,N)cart->bool (not in compat.mg)
Theorem hl_orthogonal_matrix_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: idx N, hl_orthogonal_matrix N l1 = 1 <-> orthogonal_matrix_hl N l1.
Admitted.

// rotoinversion_matrix : ((real,?747479)cart,?747479)cart->bool (not in compat.mg)
Theorem hl_rotoinversion_matrix_compat : forall T747479:set, T747479 <> Empty -> forall l1 :e R :^: idx T747479 :^: idx T747479, hl_rotoinversion_matrix T747479 l1 = 1 <-> rotoinversion_matrix T747479 l1.
Admitted.

// integer_group : int group (not in compat.mg)
Theorem hl_integer_group_compat : hl_integer_group = integer_group.
Admitted.

// antichain : (A->A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_antichain_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A, hl_antichain A l1 l2 = 1 <-> antichain_on A P1 (hl_rep A l2).
Admitted.

// antichain : (A->A->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_antichain_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> forall l2 :e 2 :^: (2 :^: A), hl_antichain (2 :^: A) l1 l2 = 1 <-> antichain_on (Power A) P1 (hl_rep2 A l2).
Admitted.

// metric : (A->bool)#(A#A->real)->A metric (not in compat.mg)
Theorem hl_metric_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :*: R :^: (A :*: A), hl_metric A l1 = l1.
Admitted.

// metric : (A->bool)#(A#A->real)->A metric at A := A -> bool (not in compat.mg)
Theorem hl_metric_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :*: R :^: (2 :^: A :*: 2 :^: A), hl_metric (2 :^: A) l1 = l1.
Admitted.

// NUMSUM : bool->num->num (not in compat.mg)
Theorem hl_NUMSUM_compat : hl_NUMSUM = Empty.
Admitted.

// cyclic_group : ?312405 group->bool (not in compat.mg)
Theorem hl_cyclic_group_compat : forall T312405:set, T312405 <> Empty -> forall l1 :e hl_ty_group T312405, hl_cyclic_group T312405 l1 = 1 <-> cyclic_group_hl T312405 l1.
Admitted.

// has_bounded_variation_on : ((real,1)cart->(real,N)cart)->((real,1)cart->bool)->bool (not in compat.mg)
Theorem hl_has_bounded_variation_on_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx 1), hl_has_bounded_variation_on N l1 l2 = 1 <-> has_bounded_variation_on N f1 (hl_rep (R :^: idx 1) l2).
Admitted.

// CHOICE : (A->bool)->A at A := A -> bool (not in compat.mg)
Theorem hl_CHOICE_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_CHOICE (2 :^: A) l1 = choose_in (Power A) (fun x:set => x :e hl_rep2 A l1).
Admitted.

// hausdorff_space : A topology->bool (not in compat.mg)
Theorem hl_hausdorff_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_hausdorff_space A l1 = 1 <-> hausdorff_space A l1.
Admitted.

// group : (A->bool)#A#(A->A)#(A->A->A)->A group (not in compat.mg)
Theorem hl_group_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :*: (A :*: (A :^: A :*: A :^: A :^: A)), hl_group A l1 = l1.
Admitted.

// group : (A->bool)#A#(A->A)#(A->A->A)->A group at A := A -> bool (not in compat.mg)
Theorem hl_group_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :*: (2 :^: A :*: (2 :^: A :^: (2 :^: A) :*: 2 :^: A :^: (2 :^: A) :^: (2 :^: A))), hl_group (2 :^: A) l1 = l1.
Admitted.

// compact_space : A topology->bool (not in compat.mg)
Theorem hl_compact_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_compact_space A l1 = 1 <-> compact_space A l1.
Admitted.

// EXTENSIONAL : (A->bool)->(A->B)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_EXTENSIONAL_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e B :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> (hl_EXTENSIONAL (2 :^: A) B l1 l2 = 1 <-> forall x :e Power A, ~ x :e hl_rep2 A l1 -> f2 x = choose_in B (fun y:set => False)).
Admitted.

// fccoverable_space : A metric->bool (not in compat.mg)
Theorem hl_fccoverable_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, hl_fccoverable_space A l1 = 1 <-> fccoverable_space A l1.
Admitted.

// frechet_derivative : ((real,?1302266)cart->(real,?1302265)cart)->(real,?1302266)cart net->(real,?1302266)cart->(real,?1302265)cart (not in compat.mg)
Theorem hl_frechet_derivative_compat : forall T1302266 T1302265:set, T1302266 <> Empty -> T1302265 <> Empty -> forall l1 :e R :^: idx T1302265 :^: (R :^: idx T1302266), forall f1:set -> set, (forall x :e R :^: idx T1302266, l1 x = f1 x) -> forall l2 :e hl_ty_net (R :^: idx T1302266), forall x :e R :^: idx T1302266, hl_frechet_derivative T1302266 T1302265 l1 l2 x = frechet_derivative T1302265 T1302266 f1 l2 x.
Admitted.

// nsphere : num->(num->real) topology (not in compat.mg)
Theorem hl_nsphere_compat : forall l1 :e omega, hl_nsphere l1 = nsphere l1.
Admitted.

// nsum : (A->bool)->(A->num)->num at A := A -> bool (not in compat.mg)
Theorem hl_nsum_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e omega :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_nsum (2 :^: A) l1 l2 = finsum (hl_rep2 A l1) f2.
Admitted.

// ---> : (A->real)->real->A net->bool (not in compat.mg)
Theorem hl_tendsto_real_compat : forall A:set, A <> Empty -> forall l1 :e R :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e R, forall l3 :e hl_ty_net A, hl_tendsto_real A l1 l2 l3 = 1 <-> tendsto_real A f1 l2 l3.
Admitted.

// sigma_locally_finite_in : A topology->((A->bool)->bool)->bool (not in compat.mg)
Theorem hl_sigma_locally_finite_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e 2 :^: (2 :^: A), hl_sigma_locally_finite_in A l1 l2 = 1 <-> sigma_locally_finite_in A l1 (hl_rep2 A l2).
Admitted.

// sigma_locally_finite_in : A topology->((A->bool)->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_sigma_locally_finite_in_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), forall l2 :e 2 :^: (2 :^: (2 :^: A)), hl_sigma_locally_finite_in (2 :^: A) l1 l2 = 1 <-> sigma_locally_finite_in (Power A) l1 (hl_rep2 (2 :^: A) l2).
Admitted.

// group_homomorphism : A group#B group->(A->B)->bool (not in compat.mg)
Theorem hl_group_homomorphism_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A :*: hl_ty_group B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_group_homomorphism A B l1 l2 = 1 <-> group_homomorphism_hl A B l1 f2).
Admitted.

// BIJ : (A->B)->(A->bool)->(B->bool)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_BIJ_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: (2 :^: A), forall f1:set -> set, (forall x :e 2 :^: A, l1 x = f1 (hl_rep A x)) -> forall l2 :e 2 :^: (2 :^: A), forall l3 :e 2 :^: B, hl_BIJ (2 :^: A) B l1 l2 l3 = 1 <-> bij (hl_rep2 A l2) (hl_rep B l3) f1.
Admitted.

// BIJ : (A->B)->(A->bool)->(B->bool)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_BIJ_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: B :^: A, forall f1:set -> set, (forall x :e A, hl_rep B (l1 x) = f1 x) -> forall l2 :e 2 :^: A, forall l3 :e 2 :^: (2 :^: B), hl_BIJ A (2 :^: B) l1 l2 l3 = 1 <-> bij (hl_rep A l2) (hl_rep2 B l3) f1.
Admitted.

// BIJ : (A->B)->(A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_BIJ_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: B :^: (2 :^: A), forall f1:set -> set, (forall x :e 2 :^: A, hl_rep B (l1 x) = f1 (hl_rep A x)) -> forall l2 :e 2 :^: (2 :^: A), forall l3 :e 2 :^: (2 :^: B), hl_BIJ (2 :^: A) (2 :^: B) l1 l2 l3 = 1 <-> bij (hl_rep2 A l2) (hl_rep2 B l3) f1.
Admitted.

// transp : ((real,N)cart,M)cart->((real,M)cart,N)cart (not in compat.mg)
Theorem hl_transp_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e R :^: idx N :^: idx M, hl_transp N M l1 = transp M N l1.
Admitted.

// hashek : bool (not in compat.mg)
Theorem hl_hashek_compat : hl_hashek = Empty.
Admitted.

// connected_components_of : ?428487 topology->(?428487->bool)->bool (not in compat.mg)
Theorem hl_connected_components_of_compat : forall T428487:set, T428487 <> Empty -> forall l1 :e hl_ty_topology T428487, hl_rep2 T428487 (hl_connected_components_of T428487 l1) = connected_components_of T428487 l1.
Admitted.

// connected_components_of : ?428487 topology->(?428487->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_connected_components_of_compat_pow : forall T428487:set, T428487 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T428487), hl_rep2 (2 :^: T428487) (hl_connected_components_of (2 :^: T428487) l1) = connected_components_of (Power T428487) l1.
Admitted.

// funspace : (A->bool)->B metric->(A->B) metric (not in compat.mg)
Theorem hl_funspace_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e hl_ty_metric B, hl_funspace A B l1 l2 = funspace A B (hl_rep A l1) l2.
Admitted.

// funspace : (A->bool)->B metric->(A->B) metric, nested at type variables 1 (not in compat.mg)
Theorem hl_funspace_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e hl_ty_metric B, hl_funspace (2 :^: A) B l1 l2 = funspace (Power A) B (hl_rep2 A l1) l2.
Admitted.

// matroid_independent : A matroid->(A->bool)->bool (not in compat.mg)
Theorem hl_matroid_independent_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid A, forall l2 :e 2 :^: A, hl_matroid_independent A l1 l2 = 1 <-> matroid_independent A l1 (hl_rep A l2).
Admitted.

// matroid_independent : A matroid->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_matroid_independent_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_matroid_independent (2 :^: A) l1 l2 = 1 <-> matroid_independent (Power A) l1 (hl_rep2 A l2).
Admitted.

// sign : (?200054->?200054)->real (not in compat.mg)
Theorem hl_sign_compat : forall T200054:set, T200054 <> Empty -> forall l1 :e T200054 :^: T200054, forall f1:set -> set, (forall x :e T200054, l1 x = f1 x) -> hl_sign T200054 l1 = sign T200054 f1.
Admitted.

// brouwer_degree : ((real,N)cart->(real,N)cart)->int (not in compat.mg)
Theorem hl_brouwer_degree_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx N), forall f1:set -> set, (forall x :e R :^: idx N, l1 x = f1 x) -> hl_brouwer_degree N l1 = brouwer_degree N f1.
Admitted.

// matrify : (A,(M,N)finite_prod)cart->((A,N)cart,M)cart (not in compat.mg)
Theorem hl_matrify_compat : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall l1 :e A :^: idx (idx_n (dimindex M * dimindex N)), hl_matrify A M N l1 = matrify A M N l1.
Admitted.

// operative : (A->A->A)->(((real,N)cart->bool)->A)->bool (not in compat.mg)
Theorem hl_operative_compat : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e A :^: A :^: A, forall f1:set -> set -> set, (forall x y :e A, l1 x y = f1 x y) -> forall l2 :e A :^: (2 :^: (R :^: idx N)), forall f2:set -> set, (forall x :e 2 :^: (R :^: idx N), l2 x = f2 (hl_rep (R :^: idx N) x)) -> (hl_operative A N l1 l2 = 1 <-> operative A N f1 f2).
Admitted.

// FINREC : (A->B->B)->B->(A->bool)->B->num->bool (not in compat.mg)
Theorem hl_FINREC_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_FINREC A B = Empty.
Admitted.

// FINREC : (A->B->B)->B->(A->bool)->B->num->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_FINREC_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> hl_FINREC (2 :^: A) B = Empty.
Admitted.

// tagged_partial_division_of : ((real,?1349533)cart#((real,?1349533)cart->bool)->bool)->((real,?1349533)cart->bool)->bool (not in compat.mg)
Theorem hl_tagged_partial_division_of_compat : forall T1349533:set, T1349533 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1349533 :*: 2 :^: (R :^: idx T1349533)), forall l2 :e 2 :^: (R :^: idx T1349533), hl_tagged_partial_division_of T1349533 l1 l2 = 1 <-> tagged_partial_division_of T1349533 (hl_rep (R :^: idx T1349533 :*: 2 :^: (R :^: idx T1349533)) l1) (hl_rep (R :^: idx T1349533) l2).
Admitted.

// codeset : num->num->bool (not in compat.mg)
Theorem hl_codeset_compat : forall l1 :e omega, hl_rep omega (hl_codeset l1) = codeset l1.
Admitted.

// first_countable : A topology->bool (not in compat.mg)
Theorem hl_first_countable_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_first_countable A l1 = 1 <-> first_countable A l1.
Admitted.

// singular_relboundary : num#?589171 topology#(?589171->bool)->((num->real)->?589171) frag->bool (not in compat.mg)
Theorem hl_singular_relboundary_compat : forall T589171:set, T589171 <> Empty -> forall l1 :e omega :*: (hl_ty_topology T589171 :*: 2 :^: T589171), forall l2 :e hl_ty_frag (T589171 :^: (R :^: omega)), hl_singular_relboundary T589171 l1 l2 = 1 <-> singular_relboundary T589171 l1 l2.
Admitted.

// singular_relboundary : num#?589171 topology#(?589171->bool)->((num->real)->?589171) frag->bool at A := A -> bool (not in compat.mg)
Theorem hl_singular_relboundary_compat_pow : forall T589171:set, T589171 <> Empty -> forall l1 :e omega :*: (hl_ty_topology (2 :^: T589171) :*: 2 :^: (2 :^: T589171)), forall l2 :e hl_ty_frag (2 :^: T589171 :^: (R :^: omega)), hl_singular_relboundary (2 :^: T589171) l1 l2 = 1 <-> singular_relboundary (Power T589171) l1 l2.
Admitted.

// matroid : (A->bool)#((A->bool)->A->bool)->A matroid (not in compat.mg)
Theorem hl_matroid_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :*: 2 :^: A :^: (2 :^: A), hl_matroid A l1 = l1.
Admitted.

// matroid : (A->bool)#((A->bool)->A->bool)->A matroid at A := A -> bool (not in compat.mg)
Theorem hl_matroid_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :*: 2 :^: (2 :^: A) :^: (2 :^: (2 :^: A)), hl_matroid (2 :^: A) l1 = l1.
Admitted.

// iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A (not in compat.mg)
Theorem hl_iterato_compat : forall A K:set, A <> Empty -> K <> Empty -> hl_iterato A K = Empty.
Admitted.

// iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A, nested at type variables 1 (not in compat.mg)
Theorem hl_iterato_compat_pow1 : forall A K:set, A <> Empty -> K <> Empty -> hl_iterato (2 :^: A) K = Empty.
Admitted.

// iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A, nested at type variables 2 (not in compat.mg)
Theorem hl_iterato_compat_pow2 : forall A K:set, A <> Empty -> K <> Empty -> hl_iterato A (2 :^: K) = Empty.
Admitted.

// iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A, nested at type variables 1,2 (not in compat.mg)
Theorem hl_iterato_compat_pow12 : forall A K:set, A <> Empty -> K <> Empty -> hl_iterato (2 :^: A) (2 :^: K) = Empty.
Admitted.

// group_exactness : A group#B group#C group->(A->B)#(B->C)->bool (not in compat.mg)
Theorem hl_group_exactness_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e hl_ty_group A :*: (hl_ty_group B :*: hl_ty_group C), forall l2 :e B :^: A :*: C :^: B, hl_group_exactness A B C l1 l2 = 1 <-> group_exactness A B C l1 l2.
Admitted.

// singleton_group : A->A group (not in compat.mg)
Theorem hl_singleton_group_compat : forall A:set, A <> Empty -> forall l1 :e A, hl_singleton_group A l1 = singleton_group A l1.
Admitted.

// chain_group : num#A topology->((num->real)->A) frag group (not in compat.mg)
Theorem hl_chain_group_compat : forall A:set, A <> Empty -> forall l1 :e omega :*: hl_ty_topology A, hl_chain_group A l1 = chain_group A l1.
Admitted.

// toset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_toset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_toset A l1 = 1 <-> toset_on A P1).
Admitted.

// toset : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_toset_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_toset (2 :^: A) l1 = 1 <-> toset_on (Power A) P1).
Admitted.

// group_stabilizer : A group->(A->X->X)->X->A->bool (not in compat.mg)
Theorem hl_group_stabilizer_compat : forall A X:set, A <> Empty -> X <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e X :^: X :^: A, forall f2:set -> set -> set, (forall x :e A, forall y :e X, l2 x y = f2 x y) -> forall l3 :e X, hl_rep A (hl_group_stabilizer A X l1 l2 l3) = group_stabilizer A X l1 f2 l3.
Admitted.

// group_stabilizer : A group->(A->X->X)->X->A->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_group_stabilizer_compat_pow1 : forall A X:set, A <> Empty -> X <> Empty -> forall l1 :e hl_ty_group (2 :^: A), forall l2 :e X :^: X :^: (2 :^: A), forall f2:set -> set -> set, (forall x :e 2 :^: A, forall y :e X, l2 x y = f2 x y) -> forall l3 :e X, hl_rep2 A (hl_group_stabilizer (2 :^: A) X l1 l2 l3) = group_stabilizer (Power A) X l1 f2 l3.
Admitted.

// uniformly_continuous_map : ?502552 metric#?502547 metric->(?502552->?502547)->bool (not in compat.mg)
Theorem hl_uniformly_continuous_map_compat : forall T502552 T502547:set, T502552 <> Empty -> T502547 <> Empty -> forall l1 :e hl_ty_metric T502552 :*: hl_ty_metric T502547, forall l2 :e T502547 :^: T502552, forall f2:set -> set, (forall x :e T502552, l2 x = f2 x) -> (hl_uniformly_continuous_map T502552 T502547 l1 l2 = 1 <-> uniformly_continuous_map T502547 T502552 l1 f2).
Admitted.

// fsigma_in : A topology->(A->bool)->bool (not in compat.mg)
Theorem hl_fsigma_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_rep2 A (hl_fsigma_in A l1) = fsigma_in A l1.
Admitted.

// fsigma_in : A topology->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_fsigma_in_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), hl_rep2 (2 :^: A) (hl_fsigma_in (2 :^: A) l1) = fsigma_in (Power A) l1.
Admitted.

// matrix_add : ((real,N)cart,M)cart->((real,N)cart,M)cart->((real,N)cart,M)cart (not in compat.mg)
Theorem hl_matrix_add_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 l2 :e R :^: idx N :^: idx M, hl_matrix_add N M l1 l2 = matrix_add M N l1 l2.
Admitted.

// binarysum : (num->bool)->num (not in compat.mg)
Theorem hl_binarysum_compat : forall l1 :e 2 :^: omega, hl_binarysum l1 = binarysum (hl_rep omega l1).
Admitted.

// differentiable : ((real,?1301888)cart->(real,?1301887)cart)->(real,?1301888)cart net->bool (not in compat.mg)
Theorem hl_differentiable_compat : forall T1301888 T1301887:set, T1301888 <> Empty -> T1301887 <> Empty -> forall l1 :e R :^: idx T1301887 :^: (R :^: idx T1301888), forall f1:set -> set, (forall x :e R :^: idx T1301888, l1 x = f1 x) -> forall l2 :e hl_ty_net (R :^: idx T1301888), hl_differentiable T1301888 T1301887 l1 l2 = 1 <-> differentiable T1301887 T1301888 f1 l2.
Admitted.

// short_exact_sequence : A group#B group#C group->(A->B)#(B->C)->bool (not in compat.mg)
Theorem hl_short_exact_sequence_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e hl_ty_group A :*: (hl_ty_group B :*: hl_ty_group C), forall l2 :e B :^: A :*: C :^: B, hl_short_exact_sequence A B C l1 l2 = 1 <-> short_exact_sequence A B C l1 l2.
Admitted.

// left_coset : ?290326 group->?290326->(?290326->bool)->?290326->bool (not in compat.mg)
Theorem hl_left_coset_compat : forall T290326:set, T290326 <> Empty -> forall l1 :e hl_ty_group T290326, forall l2 :e T290326, forall l3 :e 2 :^: T290326, hl_rep T290326 (hl_left_coset T290326 l1 l2 l3) = left_coset_hl T290326 l1 l2 (hl_rep T290326 l3).
Admitted.

// left_coset : ?290326 group->?290326->(?290326->bool)->?290326->bool at A := A -> bool (not in compat.mg)
Theorem hl_left_coset_compat_pow : forall T290326:set, T290326 <> Empty -> forall l1 :e hl_ty_group (2 :^: T290326), forall l2 :e 2 :^: T290326, forall l3 :e 2 :^: (2 :^: T290326), hl_rep2 T290326 (hl_left_coset (2 :^: T290326) l1 l2 l3) = left_coset_hl (Power T290326) l1 (hl_rep T290326 l2) (hl_rep2 T290326 l3).
Admitted.

// completely_regular_space : A topology->bool (not in compat.mg)
Theorem hl_completely_regular_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_completely_regular_space A l1 = 1 <-> completely_regular_space A l1.
Admitted.

// quotient_group : A group->(A->bool)->(A->bool) group (not in compat.mg)
Theorem hl_quotient_group_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e 2 :^: A, hl_quotient_group A l1 l2 = quotient_group A l1 (hl_rep A l2).
Admitted.

// quotient_group : A group->(A->bool)->(A->bool) group at A := A -> bool (not in compat.mg)
Theorem hl_quotient_group_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_group (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_quotient_group (2 :^: A) l1 l2 = quotient_group (Power A) l1 (hl_rep2 A l2).
Admitted.

// FCONS : A->(num->A)->num->A (not in compat.mg)
Theorem hl_FCONS_compat : forall A:set, A <> Empty -> hl_FCONS A = Empty.
Admitted.

// dest_net : A net->((A->bool)->bool)#(A->bool) (not in compat.mg)
Theorem hl_dest_net_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_net A, hl_dest_net A l1 = l1.
Admitted.

// dest_net : A net->((A->bool)->bool)#(A->bool) at A := A -> bool (not in compat.mg)
Theorem hl_dest_net_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_net (2 :^: A), hl_dest_net (2 :^: A) l1 = l1.
Admitted.

// dimindex : (N->bool)->num at A := A -> bool (not in compat.mg)
Theorem hl_dimindex_compat_pow : forall N:set, N <> Empty -> forall l1 :e 2 :^: (2 :^: N), hl_dimindex (2 :^: N) l1 = dimindex (Power N).
Admitted.

// INJF : (num->num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_INJF_compat : forall A:set, A <> Empty -> hl_INJF A = Empty.
Admitted.

// INJF : (num->num->A->bool)->num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_INJF_compat_pow : forall A:set, A <> Empty -> hl_INJF (2 :^: A) = Empty.
Admitted.

// frontier : ((real,?770017)cart->bool)->(real,?770017)cart->bool (not in compat.mg)
Theorem hl_frontier_compat : forall T770017:set, T770017 <> Empty -> forall l1 :e 2 :^: (R :^: idx T770017), hl_rep (R :^: idx T770017) (hl_frontier T770017 l1) = frontier T770017 (hl_rep (R :^: idx T770017) l1).
Admitted.

// submatroid : A matroid->(A->bool)->A matroid (not in compat.mg)
Theorem hl_submatroid_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid A, forall l2 :e 2 :^: A, hl_submatroid A l1 l2 = submatroid A l1 (hl_rep A l2).
Admitted.

// submatroid : A matroid->(A->bool)->A matroid at A := A -> bool (not in compat.mg)
Theorem hl_submatroid_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_submatroid (2 :^: A) l1 l2 = submatroid (Power A) l1 (hl_rep2 A l2).
Admitted.

// euclidean : (real,?755451)cart topology (not in compat.mg)
Theorem hl_euclidean_compat : forall T755451:set, T755451 <> Empty -> hl_euclidean T755451 = euclidean T755451.
Admitted.

// INTERS : ((A->bool)->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_INTERS_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), hl_rep2 A (hl_INTERS (2 :^: A) l1) = {x :e Power A | forall Y :e hl_rep2 (2 :^: A) l1, x :e Y}.
Admitted.

// group_automorphism : A group->(A->A)->bool (not in compat.mg)
Theorem hl_group_automorphism_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e A :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_group_automorphism A l1 l2 = 1 <-> group_automorphism_hl A l1 f2).
Admitted.

// cfunspace : A topology->B metric->(A->B) metric (not in compat.mg)
Theorem hl_cfunspace_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e hl_ty_metric B, hl_cfunspace A B l1 l2 = cfunspace A B l1 l2.
Admitted.

// multivector : num->(real,N multivector)cart->bool (not in compat.mg)
Theorem hl_multivector_compat : forall N:set, N <> Empty -> forall l1 :e omega, forall l2 :e R :^: idx (hl_ty_multivector N), hl_multivector N l1 l2 = 1 <-> multivector_hl N l1 l2.
Admitted.

// iproduct : (A->bool)->(A->int)->int at A := A -> bool (not in compat.mg)
Theorem hl_iproduct_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e int :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_iproduct (2 :^: A) l1 l2 = finprod (hl_rep2 A l1) f2.
Admitted.

// mbasis : (num->bool)->(real,?1337517 multivector)cart (not in compat.mg)
Theorem hl_mbasis_compat : forall T1337517:set, T1337517 <> Empty -> forall l1 :e 2 :^: omega, hl_mbasis T1337517 l1 = mbasis T1337517 (hl_rep omega l1).
Admitted.

// fundamental_group : ((real,N)cart->bool)#(real,N)cart->(((real,1)cart->(real,N)cart)->bool)->bool (not in compat.mg)
Theorem hl_fundamental_group_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N) :*: R :^: idx N, hl_rep2 (R :^: idx N :^: (R :^: idx 1)) (hl_fundamental_group N l1) = fundamental_group N l1.
Admitted.

// absolutely_setcontinuous_on : (((real,M)cart->bool)->(real,N)cart)->((real,M)cart->bool)->bool (not in compat.mg)
Theorem hl_absolutely_setcontinuous_on_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx N :^: (2 :^: (R :^: idx M)), forall f1:set -> set, (forall x :e 2 :^: (R :^: idx M), l1 x = f1 (hl_rep (R :^: idx M) x)) -> forall l2 :e 2 :^: (R :^: idx M), hl_absolutely_setcontinuous_on M N l1 l2 = 1 <-> absolutely_setcontinuous_on M N f1 (hl_rep (R :^: idx M) l2).
Admitted.

// product_group : (K->bool)->(K->A group)->(K->A) group (not in compat.mg)
Theorem hl_product_group_compat : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: K, forall l2 :e hl_ty_group A :^: K, forall f2:set -> set, (forall x :e K, l2 x = f2 x) -> hl_product_group K A l1 l2 = product_group A K (hl_rep K l1) f2.
Admitted.

// product_group : (K->bool)->(K->A group)->(K->A) group, nested at type variables 1 (not in compat.mg)
Theorem hl_product_group_compat_pow1 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: K), forall l2 :e hl_ty_group A :^: (2 :^: K), forall f2:set -> set, (forall x :e 2 :^: K, l2 x = f2 (hl_rep K x)) -> hl_product_group (2 :^: K) A l1 l2 = product_group A (Power K) (hl_rep2 K l1) f2.
Admitted.

// open_segment : (real,?760717)cart#(real,?760717)cart->(real,?760717)cart->bool (not in compat.mg)
Theorem hl_open_segment_compat : forall T760717:set, T760717 <> Empty -> forall l1 :e R :^: idx T760717 :*: R :^: idx T760717, hl_rep (R :^: idx T760717) (hl_open_segment T760717 l1) = open_segment T760717 l1.
Admitted.

// path_components : ((real,?1087141)cart->bool)->((real,?1087141)cart->bool)->bool (not in compat.mg)
Theorem hl_path_components_compat : forall T1087141:set, T1087141 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1087141), hl_rep2 (R :^: idx T1087141) (hl_path_components T1087141 l1) = path_components T1087141 (hl_rep (R :^: idx T1087141) l1).
Admitted.

// simplicial_vertex : num->((num->real)->num->real)->num->real (not in compat.mg)
Theorem hl_simplicial_vertex_compat : forall l1 :e omega, forall l2 :e R :^: omega :^: (R :^: omega), forall f2:set -> set -> set, (forall x :e R :^: omega, forall y :e omega, l2 x y = f2 x y) -> forall x :e omega, hl_simplicial_vertex l1 l2 x = simplicial_vertex l1 f2 x.
Admitted.

// mspace : A metric->A->bool (not in compat.mg)
Theorem hl_mspace_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, hl_rep A (hl_mspace A l1) = mspace A l1.
Admitted.

// mspace : A metric->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_mspace_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), hl_rep2 A (hl_mspace (2 :^: A) l1) = mspace (Power A) l1.
Admitted.

// lebesgue_measurable : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_lebesgue_measurable_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_lebesgue_measurable N l1 = 1 <-> lebesgue_measurable N (hl_rep (R :^: idx N) l1).
Admitted.

// simplex_cone : num->(num->real)->((num->real)->num->real)->(num->real)->num->real (not in compat.mg)
Theorem hl_simplex_cone_compat : hl_simplex_cone = simplex_cone.
Admitted.

// fld : (A->A->bool)->A->bool (not in compat.mg)
Theorem hl_fld_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> hl_rep A (hl_fld A l1) = fld_on A P1.
Admitted.

// fld : (A->A->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_fld_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> hl_rep2 A (hl_fld (2 :^: A) l1) = fld_on (Power A) P1.
Admitted.

// gauge : ((real,?1343674)cart->(real,?1343674)cart->bool)->bool (not in compat.mg)
Theorem hl_gauge_compat : forall T1343674:set, T1343674 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1343674) :^: (R :^: idx T1343674), forall P1:set -> set -> prop, (forall x y :e R :^: idx T1343674, l1 x y = 1 <-> P1 x y) -> (hl_gauge T1343674 l1 = 1 <-> gauge T1343674 P1).
Admitted.

// extreme_point_of : (real,?1220830)cart->((real,?1220830)cart->bool)->bool (not in compat.mg)
Theorem hl_extreme_point_of_compat : forall T1220830:set, T1220830 <> Empty -> forall l1 :e R :^: idx T1220830, forall l2 :e 2 :^: (R :^: idx T1220830), hl_extreme_point_of T1220830 l1 l2 = 1 <-> extreme_point_of T1220830 l1 (hl_rep (R :^: idx T1220830) l2).
Admitted.

// limit_point_of : (real,?765763)cart->((real,?765763)cart->bool)->bool (not in compat.mg)
Theorem hl_limit_point_of_compat : forall T765763:set, T765763 <> Empty -> forall l1 :e R :^: idx T765763, forall l2 :e 2 :^: (R :^: idx T765763), hl_limit_point_of T765763 l1 l2 = 1 <-> limit_point_of T765763 l1 (hl_rep (R :^: idx T765763) l2).
Admitted.

// >_c : (A->bool)->(B->bool)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_sym_3e5f63_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: B, hl_sym_3e5f63 (2 :^: A) B l1 l2 = 1 <-> atleastp (hl_rep B l2) (hl_rep2 A l1) /\ ~ equip (hl_rep B l2) (hl_rep2 A l1).
Admitted.

// >_c : (A->bool)->(B->bool)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_sym_3e5f63_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: B), hl_sym_3e5f63 A (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep2 B l2) (hl_rep A l1) /\ ~ equip (hl_rep2 B l2) (hl_rep A l1).
Admitted.

// >_c : (A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_3e5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_sym_3e5f63 (2 :^: A) (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep2 B l2) (hl_rep2 A l1) /\ ~ equip (hl_rep2 B l2) (hl_rep2 A l1).
Admitted.

// real_infsum : (num->bool)->(num->real)->real (not in compat.mg)
Theorem hl_real_infsum_compat : forall l1 :e 2 :^: omega, forall l2 :e R :^: omega, forall f2:set -> set, (forall x :e omega, l2 x = f2 x) -> hl_real_infsum l1 l2 = real_infsum (hl_rep omega l1) f2.
Admitted.

// dropout : num->(real,M)cart->(real,N)cart (not in compat.mg)
Theorem hl_dropout_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e omega, forall l2 :e R :^: idx M, hl_dropout M N l1 l2 = dropout M N l1 l2.
Admitted.

// group_endomorphism : A group->(A->A)->bool (not in compat.mg)
Theorem hl_group_endomorphism_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e A :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_group_endomorphism A l1 l2 = 1 <-> group_endomorphism A l1 f2).
Admitted.

// MEASURE : (A->num)->A->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_MEASURE_compat_pow : forall A:set, A <> Empty -> forall l1 :e omega :^: (2 :^: A), forall f1:set -> set, (forall x :e 2 :^: A, l1 x = f1 (hl_rep A x)) -> forall l2 l3 :e 2 :^: A, hl_MEASURE (2 :^: A) l1 l2 l3 = 1 <-> f1 (hl_rep A l2) < f1 (hl_rep A l3).
Admitted.

// SING : (A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_SING_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_SING (2 :^: A) l1 = 1 <-> exists x :e Power A, hl_rep2 A l1 = {x}.
Admitted.

// reduced_homology_group : int#A topology->(((num->real)->A) frag->bool) group (not in compat.mg)
Theorem hl_reduced_homology_group_compat : forall A:set, A <> Empty -> forall l1 :e int :*: hl_ty_topology A, hl_reduced_homology_group A l1 = reduced_homology_group A l1.
Admitted.

// group_centralizer : A group->(A->bool)->A->bool (not in compat.mg)
Theorem hl_group_centralizer_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e 2 :^: A, hl_rep A (hl_group_centralizer A l1 l2) = group_centralizer A l1 (hl_rep A l2).
Admitted.

// group_centralizer : A group->(A->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_group_centralizer_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_group (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_rep2 A (hl_group_centralizer (2 :^: A) l1 l2) = group_centralizer (Power A) l1 (hl_rep2 A l2).
Admitted.

// locally : (((real,N)cart->bool)->bool)->((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_locally_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (2 :^: (R :^: idx N)), forall l2 :e 2 :^: (R :^: idx N), hl_locally N l1 l2 = 1 <-> locally N (hl_rep2 (R :^: idx N) l1) (hl_rep (R :^: idx N) l2).
Admitted.

// has_integral_compact_interval : ((real,?1351404)cart->(real,?1351436)cart)->(real,?1351436)cart->((real,?1351404)cart->bool)->bool (not in compat.mg)
Theorem hl_has_integral_compact_interval_compat : forall T1351404 T1351436:set, T1351404 <> Empty -> T1351436 <> Empty -> forall l1 :e R :^: idx T1351436 :^: (R :^: idx T1351404), forall f1:set -> set, (forall x :e R :^: idx T1351404, l1 x = f1 x) -> forall l2 :e R :^: idx T1351436, forall l3 :e 2 :^: (R :^: idx T1351404), hl_has_integral_compact_interval T1351404 T1351436 l1 l2 l3 = 1 <-> has_integral_compact_interval T1351404 T1351436 f1 l2 (hl_rep (R :^: idx T1351404) l3).
Admitted.

// ITER : num->(A->A)->A->A (not in compat.mg)
Theorem hl_ITER_compat : forall A:set, A <> Empty -> forall l1 :e omega, forall l2 :e A :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall l3 :e A, hl_ITER A l1 l2 l3 = iter_fun l1 f2 l3.
Admitted.

// hom_boundary : int->A topology#(A->bool)->(((num->real)->A) frag->bool)->((num->real)->A) frag->bool (not in compat.mg)
Theorem hl_hom_boundary_compat : forall A:set, A <> Empty -> hl_hom_boundary A = hom_boundary A.
Admitted.

// hom_boundary : int->A topology#(A->bool)->(((num->real)->A) frag->bool)->((num->real)->A) frag->bool at A := A -> bool (not in compat.mg)
Theorem hl_hom_boundary_compat_pow : forall A:set, A <> Empty -> hl_hom_boundary (2 :^: A) = hom_boundary (Power A).
Admitted.

// frag_add : A frag->A frag->A frag (not in compat.mg)
Theorem hl_frag_add_compat : forall A:set, A <> Empty -> forall l1 l2 :e hl_ty_frag A, hl_frag_add A l1 l2 = frag_add A l1 l2.
Admitted.

// negligible : ((real,?1366825)cart->bool)->bool (not in compat.mg)
Theorem hl_negligible_compat : forall T1366825:set, T1366825 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1366825), hl_negligible T1366825 l1 = 1 <-> negligible T1366825 (hl_rep (R :^: idx T1366825) l1).
Admitted.

// == : A->A->(A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_sym_3d3d_compat2_pow : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, forall l3 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P3:set -> set -> prop, (forall x y :e 2 :^: A, l3 x y = 1 <-> P3 (hl_rep A x) (hl_rep A y)) -> (hl_sym_3d3d (2 :^: A) l1 l2 l3 = 1 <-> P3 (hl_rep A l1) (hl_rep A l2)).
Admitted.

// abelian_group : A group->bool (not in compat.mg)
Theorem hl_abelian_group_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, hl_abelian_group A l1 = 1 <-> abelian_group_hl A l1.
Admitted.

// >=_c : (A->bool)->(B->bool)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_sym_3e3d5f63_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: B, hl_sym_3e3d5f63 (2 :^: A) B l1 l2 = 1 <-> atleastp (hl_rep B l2) (hl_rep2 A l1).
Admitted.

// >=_c : (A->bool)->(B->bool)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_sym_3e3d5f63_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: B), hl_sym_3e3d5f63 A (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep2 B l2) (hl_rep A l1).
Admitted.

// >=_c : (A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_3e3d5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_sym_3e3d5f63 (2 :^: A) (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep2 B l2) (hl_rep2 A l1).
Admitted.

// %% : real->((real,N)cart,M)cart->((real,N)cart,M)cart (not in compat.mg)
Theorem hl_mcmul_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e R, forall l2 :e R :^: idx N :^: idx M, hl_mcmul N M l1 l2 = matrix_cmul M N l1 l2.
Admitted.

// separated_in : ?392782 topology->(?392782->bool)->(?392782->bool)->bool (not in compat.mg)
Theorem hl_separated_in_compat : forall T392782:set, T392782 <> Empty -> forall l1 :e hl_ty_topology T392782, forall l2 l3 :e 2 :^: T392782, hl_separated_in T392782 l1 l2 l3 = 1 <-> separated_in T392782 l1 (hl_rep T392782 l2) (hl_rep T392782 l3).
Admitted.

// separated_in : ?392782 topology->(?392782->bool)->(?392782->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_separated_in_compat_pow : forall T392782:set, T392782 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T392782), forall l2 l3 :e 2 :^: (2 :^: T392782), hl_separated_in (2 :^: T392782) l1 l2 l3 = 1 <-> separated_in (Power T392782) l1 (hl_rep2 T392782 l2) (hl_rep2 T392782 l3).
Admitted.

// standard_simplex : num->(num->real)->bool (not in compat.mg)
Theorem hl_standard_simplex_compat : forall l1 :e omega, hl_rep (R :^: omega) (hl_standard_simplex l1) = standard_simplex l1.
Admitted.

// reversepath : ((real,1)cart->(real,N)cart)->(real,1)cart->(real,N)cart (not in compat.mg)
Theorem hl_reversepath_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> forall l2 :e R :^: idx 1, hl_reversepath N l1 l2 = reversepath N f1 l2.
Admitted.

// infsum : (num->bool)->(num->(real,?885843)cart)->(real,?885843)cart (not in compat.mg)
Theorem hl_infsum_compat : forall T885843:set, T885843 <> Empty -> forall l1 :e 2 :^: omega, forall l2 :e R :^: idx T885843 :^: omega, forall f2:set -> set, (forall x :e omega, l2 x = f2 x) -> hl_infsum T885843 l1 l2 = infsum T885843 (hl_rep omega l1) f2.
Admitted.

// simplex_map : num->(A->B)->((num->real)->A)->(num->real)->B (not in compat.mg)
Theorem hl_simplex_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e omega, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall l3 :e A :^: (R :^: omega), forall f3:set -> set, (forall x :e R :^: omega, l3 x = f3 x) -> forall x :e R :^: omega, hl_simplex_map A B l1 l2 l3 x = simplex_map A B l1 f2 f3 x.
Admitted.

// sum_group : (K->bool)->(K->A group)->(K->A) group (not in compat.mg)
Theorem hl_sum_group_compat : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: K, forall l2 :e hl_ty_group A :^: K, forall f2:set -> set, (forall x :e K, l2 x = f2 x) -> hl_sum_group K A l1 l2 = sum_group A K (hl_rep K l1) f2.
Admitted.

// sum_group : (K->bool)->(K->A group)->(K->A) group, nested at type variables 1 (not in compat.mg)
Theorem hl_sum_group_compat_pow1 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: K), forall l2 :e hl_ty_group A :^: (2 :^: K), forall f2:set -> set, (forall x :e 2 :^: K, l2 x = f2 (hl_rep K x)) -> hl_sum_group (2 :^: K) A l1 l2 = sum_group A (Power K) (hl_rep2 K l1) f2.
Admitted.

// _UNGUARDED_PATTERN : bool->bool->bool (not in compat.mg)
Theorem hl__UNGUARDED_PATTERN_compat : hl__UNGUARDED_PATTERN = Empty.
Admitted.

// cartesian_product : (K->bool)->(K->A->bool)->(K->A)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_cartesian_product_compat_pow1 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: K), forall l2 :e 2 :^: A :^: (2 :^: K), forall f2:set -> set, (forall x :e 2 :^: K, hl_rep A (l2 x) = f2 (hl_rep K x)) -> hl_rep (A :^: (2 :^: K)) (hl_cartesian_product (2 :^: K) A l1 l2) = {f :e A :^: Power K | (forall i :e hl_rep2 K l1, f i :e f2 i) /\ forall i :e Power K, ~ i :e hl_rep2 K l1 -> f i = choose_in A (fun y:set => False)}.
Admitted.

// cartesian_product : (K->bool)->(K->A->bool)->(K->A)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_cartesian_product_compat_pow2 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: K, forall l2 :e 2 :^: (2 :^: A) :^: K, forall f2:set -> set, (forall x :e K, hl_rep2 A (l2 x) = f2 x) -> hl_rep (2 :^: A :^: K) (hl_cartesian_product K (2 :^: A) l1 l2) = {f :e Power A :^: K | (forall i :e hl_rep K l1, f i :e f2 i) /\ forall i :e K, ~ i :e hl_rep K l1 -> f i = choose_in (Power A) (fun y:set => False)}.
Admitted.

// cartesian_product : (K->bool)->(K->A->bool)->(K->A)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_cartesian_product_compat_pow12 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: K), forall l2 :e 2 :^: (2 :^: A) :^: (2 :^: K), forall f2:set -> set, (forall x :e 2 :^: K, hl_rep2 A (l2 x) = f2 (hl_rep K x)) -> hl_rep (2 :^: A :^: (2 :^: K)) (hl_cartesian_product (2 :^: K) (2 :^: A) l1 l2) = {f :e Power A :^: Power K | (forall i :e hl_rep2 K l1, f i :e f2 i) /\ forall i :e Power K, ~ i :e hl_rep2 K l1 -> f i = choose_in (Power A) (fun y:set => False)}.
Admitted.

// mod_subset : num#?588333 topology->((num->real)->?588333) frag->((num->real)->?588333) frag->bool (not in compat.mg)
Theorem hl_mod_subset_compat : forall T588333:set, T588333 <> Empty -> forall l1 :e omega :*: hl_ty_topology T588333, forall l2 l3 :e hl_ty_frag (T588333 :^: (R :^: omega)), hl_mod_subset T588333 l1 l2 l3 = 1 <-> mod_subset T588333 l1 l2 l3.
Admitted.

// facet_of : ((real,?1225784)cart->bool)->((real,?1225784)cart->bool)->bool (not in compat.mg)
Theorem hl_facet_of_compat : forall T1225784:set, T1225784 <> Empty -> forall l1 l2 :e 2 :^: (R :^: idx T1225784), hl_facet_of T1225784 l1 l2 = 1 <-> facet_of T1225784 (hl_rep (R :^: idx T1225784) l1) (hl_rep (R :^: idx T1225784) l2).
Admitted.

// nproduct : (A->bool)->(A->num)->num at A := A -> bool (not in compat.mg)
Theorem hl_nproduct_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e omega :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_nproduct (2 :^: A) l1 l2 = finprod (hl_rep2 A l1) f2.
Admitted.

// discrete_topology : (A->bool)->A topology (not in compat.mg)
Theorem hl_discrete_topology_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_discrete_topology A l1 = discrete_topology A (hl_rep A l1).
Admitted.

// discrete_topology : (A->bool)->A topology at A := A -> bool (not in compat.mg)
Theorem hl_discrete_topology_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_discrete_topology (2 :^: A) l1 = discrete_topology (Power A) (hl_rep2 A l1).
Admitted.

// inseg : (A->A->bool)->(A->A->bool)->bool (not in compat.mg)
Theorem hl_inseg_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A :^: A, forall P2:set -> set -> prop, (forall x y :e A, l2 x y = 1 <-> P2 x y) -> (hl_inseg A l1 l2 = 1 <-> inseg_on A P1 P2).
Admitted.

// inseg : (A->A->bool)->(A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_inseg_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> forall l2 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P2:set -> set -> prop, (forall x y :e 2 :^: A, l2 x y = 1 <-> P2 (hl_rep A x) (hl_rep A y)) -> (hl_inseg (2 :^: A) l1 l2 = 1 <-> inseg_on (Power A) P1 P2).
Admitted.

// proper_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_proper_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_proper_map A B l1 l2 = 1 <-> proper_map A B l1 f2).
Admitted.

// +_c : (A->bool)->(B->bool)->(A,B)sum->bool (not in compat.mg)
Theorem hl_sym_2b5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_rep (A :+: B) (hl_sym_2b5f63 A B l1 l2) = hl_rep A l1 :+: hl_rep B l2.
Admitted.

// +_c : (A->bool)->(B->bool)->(A,B)sum->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_sym_2b5f63_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: B, hl_rep (2 :^: A :+: B) (hl_sym_2b5f63 (2 :^: A) B l1 l2) = hl_rep2 A l1 :+: hl_rep B l2.
Admitted.

// +_c : (A->bool)->(B->bool)->(A,B)sum->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_sym_2b5f63_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: B), hl_rep (A :+: 2 :^: B) (hl_sym_2b5f63 A (2 :^: B) l1 l2) = hl_rep A l1 :+: hl_rep2 B l2.
Admitted.

// +_c : (A->bool)->(B->bool)->(A,B)sum->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_2b5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_rep (2 :^: A :+: 2 :^: B) (hl_sym_2b5f63 (2 :^: A) (2 :^: B) l1 l2) = hl_rep2 A l1 :+: hl_rep2 B l2.
Admitted.

// $$ : (real,N multivector)cart->(num->bool)->real (not in compat.mg)
Theorem hl_sym_2424_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx (hl_ty_multivector N), forall l2 :e 2 :^: omega, hl_sym_2424 N l1 l2 = multivector_index N l1 (hl_rep omega l2).
Admitted.

// tailadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool (not in compat.mg)
Theorem hl_tailadmissible_compat : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_tailadmissible A B P = Empty.
Admitted.

// tailadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_tailadmissible_compat_pow1 : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_tailadmissible (2 :^: A) B P = Empty.
Admitted.

// tailadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool, nested at type variables 3 (not in compat.mg)
Theorem hl_tailadmissible_compat_pow3 : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_tailadmissible A B (2 :^: P) = Empty.
Admitted.

// tailadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool, nested at type variables 1,3 (not in compat.mg)
Theorem hl_tailadmissible_compat_pow13 : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_tailadmissible (2 :^: A) B (2 :^: P) = Empty.
Admitted.

// normal_space : A topology->bool (not in compat.mg)
Theorem hl_normal_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_normal_space A l1 = 1 <-> normal_space A l1.
Admitted.

// continuous_on : ((real,?794267)cart->(real,?794276)cart)->((real,?794267)cart->bool)->bool (not in compat.mg)
Theorem hl_continuous_on_compat : forall T794267 T794276:set, T794267 <> Empty -> T794276 <> Empty -> forall l1 :e R :^: idx T794276 :^: (R :^: idx T794267), forall f1:set -> set, (forall x :e R :^: idx T794267, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx T794267), hl_continuous_on T794267 T794276 l1 l2 = 1 <-> continuous_on_hl T794267 T794276 f1 (hl_rep (R :^: idx T794267) l2).
Admitted.

// rows : ((real,N)cart,M)cart->(real,N)cart->bool (not in compat.mg)
Theorem hl_rows_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e R :^: idx N :^: idx M, hl_rep (R :^: idx N) (hl_rows N M l1) = rows M N l1.
Admitted.

// NUMSND : num->num (not in compat.mg)
Theorem hl_NUMSND_compat : hl_NUMSND = Empty.
Admitted.

// singular_face : num->num->((num->real)->?587375)->(num->real)->?587375 (not in compat.mg)
Theorem hl_singular_face_compat : forall T587375:set, T587375 <> Empty -> forall l1 l2 :e omega, forall l3 :e T587375 :^: (R :^: omega), forall f3:set -> set, (forall x :e R :^: omega, l3 x = f3 x) -> forall x :e R :^: omega, hl_singular_face T587375 l1 l2 l3 x = singular_face T587375 l1 l2 f3 x.
Admitted.

// right_coset : ?290311 group->(?290311->bool)->?290311->?290311->bool (not in compat.mg)
Theorem hl_right_coset_compat : forall T290311:set, T290311 <> Empty -> forall l1 :e hl_ty_group T290311, forall l2 :e 2 :^: T290311, forall l3 :e T290311, hl_rep T290311 (hl_right_coset T290311 l1 l2 l3) = right_coset_hl T290311 l1 (hl_rep T290311 l2) l3.
Admitted.

// right_coset : ?290311 group->(?290311->bool)->?290311->?290311->bool at A := A -> bool (not in compat.mg)
Theorem hl_right_coset_compat_pow : forall T290311:set, T290311 <> Empty -> forall l1 :e hl_ty_group (2 :^: T290311), forall l2 :e 2 :^: (2 :^: T290311), forall l3 :e 2 :^: T290311, hl_rep2 T290311 (hl_right_coset (2 :^: T290311) l1 l2 l3) = right_coset_hl (Power T290311) l1 (hl_rep2 T290311 l2) (hl_rep T290311 l3).
Admitted.

// AR : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_AR_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_AR N l1 = 1 <-> AR N (hl_rep (R :^: idx N) l1).
Admitted.

// mdiameter : A metric->(A->bool)->real (not in compat.mg)
Theorem hl_mdiameter_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e 2 :^: A, hl_mdiameter A l1 l2 = mdiameter A l1 (hl_rep A l2).
Admitted.

// mdiameter : A metric->(A->bool)->real at A := A -> bool (not in compat.mg)
Theorem hl_mdiameter_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_mdiameter (2 :^: A) l1 l2 = mdiameter (Power A) l1 (hl_rep2 A l2).
Admitted.

// quasi_components_of : ?484338 topology->(?484338->bool)->bool (not in compat.mg)
Theorem hl_quasi_components_of_compat : forall T484338:set, T484338 <> Empty -> forall l1 :e hl_ty_topology T484338, hl_rep2 T484338 (hl_quasi_components_of T484338 l1) = quasi_components_of T484338 l1.
Admitted.

// quasi_components_of : ?484338 topology->(?484338->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_quasi_components_of_compat_pow : forall T484338:set, T484338 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T484338), hl_rep2 (2 :^: T484338) (hl_quasi_components_of (2 :^: T484338) l1) = quasi_components_of (Power T484338) l1.
Admitted.

// arc : ((real,1)cart->(real,N)cart)->bool (not in compat.mg)
Theorem hl_arc_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> (hl_arc N l1 = 1 <-> arc N f1).
Admitted.

// dot : (real,N)cart->(real,N)cart->real (not in compat.mg)
Theorem hl_dot_compat : forall N:set, N <> Empty -> forall l1 l2 :e R :^: idx N, hl_dot N l1 l2 = dot N l1 l2.
Admitted.

// group_isomorphisms : A group#B group->(A->B)#(B->A)->bool (not in compat.mg)
Theorem hl_group_isomorphisms_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A :*: hl_ty_group B, forall l2 :e B :^: A :*: A :^: B, hl_group_isomorphisms A B l1 l2 = 1 <-> group_isomorphisms A B l1 l2.
Admitted.

// locally_connected_space : ?482622 topology->bool (not in compat.mg)
Theorem hl_locally_connected_space_compat : forall T482622:set, T482622 <> Empty -> forall l1 :e hl_ty_topology T482622, hl_locally_connected_space T482622 l1 = 1 <-> locally_connected_space T482622 l1.
Admitted.

// mcball : A metric->A#real->A->bool (not in compat.mg)
Theorem hl_mcball_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e A :*: R, hl_rep A (hl_mcball A l1 l2) = mcball A l1 l2.
Admitted.

// mcball : A metric->A#real->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_mcball_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), forall l2 :e 2 :^: A :*: R, hl_rep2 A (hl_mcball (2 :^: A) l1 l2) = mcball (Power A) l1 l2.
Admitted.

// eventually : (A->bool)->A net->bool (not in compat.mg)
Theorem hl_eventually_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e hl_ty_net A, hl_eventually A l1 l2 = 1 <-> eventually A (hl_rep A l1) l2.
Admitted.

// eventually : (A->bool)->A net->bool at A := A -> bool (not in compat.mg)
Theorem hl_eventually_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e hl_ty_net (2 :^: A), hl_eventually (2 :^: A) l1 l2 = 1 <-> eventually (Power A) (hl_rep2 A l1) l2.
Admitted.

// relcycle_group : num#A topology#(A->bool)->((num->real)->A) frag group (not in compat.mg)
Theorem hl_relcycle_group_compat : forall A:set, A <> Empty -> forall l1 :e omega :*: (hl_ty_topology A :*: 2 :^: A), hl_relcycle_group A l1 = relcycle_group A l1.
Admitted.

// relcycle_group : num#A topology#(A->bool)->((num->real)->A) frag group at A := A -> bool (not in compat.mg)
Theorem hl_relcycle_group_compat_pow : forall A:set, A <> Empty -> forall l1 :e omega :*: (hl_ty_topology (2 :^: A) :*: 2 :^: (2 :^: A)), hl_relcycle_group (2 :^: A) l1 = relcycle_group (Power A) l1.
Admitted.

// subpath : (real,1)cart->(real,1)cart->((real,1)cart->?1080743)->(real,1)cart->?1080743 (not in compat.mg)
Theorem hl_subpath_compat : forall T1080743:set, T1080743 <> Empty -> forall l1 l2 :e R :^: idx 1, forall l3 :e T1080743 :^: (R :^: idx 1), forall f3:set -> set, (forall x :e R :^: idx 1, l3 x = f3 x) -> forall l4 :e R :^: idx 1, hl_subpath T1080743 l1 l2 l3 l4 = subpath T1080743 l1 l2 f3 l4.
Admitted.

// pathstart : ((real,1)cart->(real,N)cart)->(real,N)cart (not in compat.mg)
Theorem hl_pathstart_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> hl_pathstart N l1 = pathstart N f1.
Admitted.

// group_id : A group->A (not in compat.mg)
Theorem hl_group_id_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, hl_group_id A l1 = group_id A l1.
Admitted.

// gdelta_in : A topology->(A->bool)->bool (not in compat.mg)
Theorem hl_gdelta_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_rep2 A (hl_gdelta_in A l1) = gdelta_in A l1.
Admitted.

// gdelta_in : A topology->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_gdelta_in_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), hl_rep2 (2 :^: A) (hl_gdelta_in (2 :^: A) l1) = gdelta_in (Power A) l1.
Admitted.

// interval_lowerbound : ((real,M)cart->bool)->(real,M)cart (not in compat.mg)
Theorem hl_interval_lowerbound_compat : forall M:set, M <> Empty -> forall l1 :e 2 :^: (R :^: idx M), hl_interval_lowerbound M l1 = interval_lowerbound M (hl_rep (R :^: idx M) l1).
Admitted.

// mat : num->((real,N)cart,M)cart (not in compat.mg)
Theorem hl_mat_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e omega, hl_mat N M l1 = mat M N l1.
Admitted.

// trivial_limit : ?410534 net->bool (not in compat.mg)
Theorem hl_trivial_limit_compat : forall T410534:set, T410534 <> Empty -> forall l1 :e hl_ty_net T410534, hl_trivial_limit T410534 l1 = 1 <-> trivial_limit T410534 l1.
Admitted.

// hom_induced : int->A topology#(A->bool)->B topology#(B->bool)->(A->B)->(((num->real)->A) frag->bool)->((num->real)->B) frag->bool (not in compat.mg)
Theorem hl_hom_induced_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_hom_induced A B = hom_induced A B.
Admitted.

// hom_induced : int->A topology#(A->bool)->B topology#(B->bool)->(A->B)->(((num->real)->A) frag->bool)->((num->real)->B) frag->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_hom_induced_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> hl_hom_induced (2 :^: A) B = hom_induced (Power A) B.
Admitted.

// hom_induced : int->A topology#(A->bool)->B topology#(B->bool)->(A->B)->(((num->real)->A) frag->bool)->((num->real)->B) frag->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_hom_induced_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> hl_hom_induced A (2 :^: B) = hom_induced A (Power B).
Admitted.

// hom_induced : int->A topology#(A->bool)->B topology#(B->bool)->(A->B)->(((num->real)->A) frag->bool)->((num->real)->B) frag->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_hom_induced_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> hl_hom_induced (2 :^: A) (2 :^: B) = hom_induced (Power A) (Power B).
Admitted.

// cofactor : ((real,N)cart,N)cart->((real,N)cart,N)cart (not in compat.mg)
Theorem hl_cofactor_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: idx N, hl_cofactor N l1 = cofactor N l1.
Admitted.

// inverse : (?173379->?173376)->?173376->?173379 (not in compat.mg)
Theorem hl_inverse_compat : forall T173379 T173376:set, T173379 <> Empty -> T173376 <> Empty -> forall l1 :e T173376 :^: T173379, forall f1:set -> set, (forall x :e T173379, l1 x = f1 x) -> forall l2 :e T173376, hl_inverse T173379 T173376 l1 l2 = inverse T173376 T173379 f1 l2.
Admitted.

// REST : (A->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_REST_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_rep2 A (hl_REST (2 :^: A) l1) = hl_rep2 A l1 :\: {choose_in (Power A) (fun x:set => x :e hl_rep2 A l1)}.
Admitted.

// oriented_simplex : num->(num->num->real)->(num->real)->num->real (not in compat.mg)
Theorem hl_oriented_simplex_compat : forall l1 :e omega, forall l2 :e R :^: omega :^: omega, forall f2:set -> set -> set, (forall x y :e omega, l2 x y = f2 x y) -> forall x :e R :^: omega, hl_oriented_simplex l1 l2 x = oriented_simplex l1 f2 x.
Admitted.

// mk_pair : A->B->A->B->bool (not in compat.mg)
Theorem hl_mk_pair_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_mk_pair A B = Empty.
Admitted.

// mk_pair : A->B->A->B->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_mk_pair_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> hl_mk_pair A (2 :^: B) = Empty.
Admitted.

// columnvector : (real,N)cart->((real,1)cart,N)cart (not in compat.mg)
Theorem hl_columnvector_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N, hl_columnvector N l1 = columnvector N l1.
Admitted.

// index : num->num->num (not in compat.mg)
Theorem hl_index_compat : forall l1 l2 :e omega, hl_index l1 l2 = prime_index l1 l2.
Admitted.

// kolmogorov_quotient : A topology->A->A (not in compat.mg)
Theorem hl_kolmogorov_quotient_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e A, hl_kolmogorov_quotient A l1 l2 = kolmogorov_quotient A l1 l2.
Admitted.

// _FUNCTION : (A->B->bool)->A->B (not in compat.mg)
Theorem hl__FUNCTION_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__FUNCTION A B = Empty.
Admitted.

// _FUNCTION : (A->B->bool)->A->B, nested at type variables 2 (not in compat.mg)
Theorem hl__FUNCTION_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> hl__FUNCTION A (2 :^: B) = Empty.
Admitted.

// homotopy_equivalent : ((real,M)cart->bool)->((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_homotopy_equivalent_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e 2 :^: (R :^: idx M), forall l2 :e 2 :^: (R :^: idx N), hl_homotopy_equivalent M N l1 l2 = 1 <-> homotopy_equivalent M N (hl_rep (R :^: idx M) l1) (hl_rep (R :^: idx N) l2).
Admitted.

// path_connected : ((real,?1087639)cart->bool)->bool (not in compat.mg)
Theorem hl_path_connected_compat : forall T1087639:set, T1087639 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1087639), hl_path_connected T1087639 l1 = 1 <-> path_connected T1087639 (hl_rep (R :^: idx T1087639) l1).
Admitted.

// coplanar : ((real,?976949)cart->bool)->bool (not in compat.mg)
Theorem hl_coplanar_compat : forall T976949:set, T976949 <> Empty -> forall l1 :e 2 :^: (R :^: idx T976949), hl_coplanar T976949 l1 = 1 <-> coplanar T976949 (hl_rep (R :^: idx T976949) l1).
Admitted.

// compact : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_compact_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_compact N l1 = 1 <-> compact N (hl_rep (R :^: idx N) l1).
Admitted.

// simply_connected : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_simply_connected_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_simply_connected N l1 = 1 <-> simply_connected N (hl_rep (R :^: idx N) l1).
Admitted.

// product_topology : (K->bool)->(K->A topology)->(K->A) topology (not in compat.mg)
Theorem hl_product_topology_compat : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: K, forall l2 :e hl_ty_topology A :^: K, forall f2:set -> set, (forall x :e K, l2 x = f2 x) -> hl_product_topology K A l1 l2 = product_topology A K (hl_rep K l1) f2.
Admitted.

// product_topology : (K->bool)->(K->A topology)->(K->A) topology, nested at type variables 1 (not in compat.mg)
Theorem hl_product_topology_compat_pow1 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: K), forall l2 :e hl_ty_topology A :^: (2 :^: K), forall f2:set -> set, (forall x :e 2 :^: K, l2 x = f2 (hl_rep K x)) -> hl_product_topology (2 :^: K) A l1 l2 = product_topology A (Power K) (hl_rep2 K l1) f2.
Admitted.

// swapseq : num->(?198413->?198413)->bool (not in compat.mg)
Theorem hl_swapseq_compat : forall T198413:set, T198413 <> Empty -> forall l1 :e omega, forall l2 :e T198413 :^: T198413, forall f2:set -> set, (forall x :e T198413, l2 x = f2 x) -> (hl_swapseq T198413 l1 l2 = 1 <-> swapseq T198413 l1 f2).
Admitted.

// *_c : (A->bool)->(B->bool)->A#B->bool (not in compat.mg)
Theorem hl_sym_2a5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_rep (A :*: B) (hl_sym_2a5f63 A B l1 l2) = hl_rep A l1 :*: hl_rep B l2.
Admitted.

// *_c : (A->bool)->(B->bool)->A#B->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_sym_2a5f63_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: B, hl_rep (2 :^: A :*: B) (hl_sym_2a5f63 (2 :^: A) B l1 l2) = hl_rep2 A l1 :*: hl_rep B l2.
Admitted.

// *_c : (A->bool)->(B->bool)->A#B->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_sym_2a5f63_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: B), hl_rep (A :*: 2 :^: B) (hl_sym_2a5f63 A (2 :^: B) l1 l2) = hl_rep A l1 :*: hl_rep2 B l2.
Admitted.

// *_c : (A->bool)->(B->bool)->A#B->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_2a5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_rep (2 :^: A :*: 2 :^: B) (hl_sym_2a5f63 (2 :^: A) (2 :^: B) l1 l2) = hl_rep2 A l1 :*: hl_rep2 B l2.
Admitted.

// compact_in : A topology->(A->bool)->bool (not in compat.mg)
Theorem hl_compact_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e 2 :^: A, hl_compact_in A l1 l2 = 1 <-> compact_in A l1 (hl_rep A l2).
Admitted.

// compact_in : A topology->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_compact_in_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_compact_in (2 :^: A) l1 l2 = 1 <-> compact_in (Power A) l1 (hl_rep2 A l2).
Admitted.

// row : num->((real,N)cart,M)cart->(real,N)cart (not in compat.mg)
Theorem hl_row_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e omega, forall l2 :e R :^: idx N :^: idx M, hl_row N M l1 l2 = row M N l1 l2.
Admitted.

// lambdas : ((num->bool)->real)->(real,N multivector)cart (not in compat.mg)
Theorem hl_lambdas_compat : forall N:set, N <> Empty -> forall l1 :e R :^: (2 :^: omega), forall f1:set -> set, (forall x :e 2 :^: omega, l1 x = f1 (hl_rep omega x)) -> hl_lambdas N l1 = lambdas N f1.
Admitted.

// open_real_interval : real#real->real->bool (not in compat.mg)
Theorem hl_open_real_interval_compat : forall l1 :e R :*: R, hl_rep R (hl_open_real_interval l1) = open_real_interval l1.
Admitted.

// second_countable : A topology->bool (not in compat.mg)
Theorem hl_second_countable_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_second_countable A l1 = 1 <-> second_countable A l1.
Admitted.

// relative_interior : ((real,?1032880)cart->bool)->(real,?1032880)cart->bool (not in compat.mg)
Theorem hl_relative_interior_compat : forall T1032880:set, T1032880 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1032880), hl_rep (R :^: idx T1032880) (hl_relative_interior T1032880 l1) = relative_interior T1032880 (hl_rep (R :^: idx T1032880) l1).
Admitted.

// has_vector_derivative : ((real,1)cart->(real,?1331411)cart)->(real,?1331411)cart->(real,1)cart net->bool (not in compat.mg)
Theorem hl_has_vector_derivative_compat : forall T1331411:set, T1331411 <> Empty -> forall l1 :e R :^: idx T1331411 :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> forall l2 :e R :^: idx T1331411, forall l3 :e hl_ty_net (R :^: idx 1), hl_has_vector_derivative T1331411 l1 l2 l3 = 1 <-> has_vector_derivative T1331411 f1 l2 l3.
Admitted.

// bounded : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_bounded_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_bounded N l1 = 1 <-> bounded_hl N (hl_rep (R :^: idx N) l1).
Admitted.

// OUTR : (A,B)sum->B (not in compat.mg)
Theorem hl_OUTR_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_OUTR A B = OUTR A B.
Admitted.

// conic : ((real,?974235)cart->bool)->bool (not in compat.mg)
Theorem hl_conic_compat : forall T974235:set, T974235 <> Empty -> forall l1 :e 2 :^: (R :^: idx T974235), hl_conic T974235 l1 = 1 <-> conic T974235 (hl_rep (R :^: idx T974235) l1).
Admitted.

// dimension_le : A topology->int->bool (not in compat.mg)
Theorem hl_dimension_le_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e int, hl_dimension_le A l1 l2 = 1 <-> dimension_le A l1 l2.
Admitted.

// kification : A topology->A topology (not in compat.mg)
Theorem hl_kification_compat : forall A:set, A <> Empty -> hl_kification A = kification A.
Admitted.

// affine : ((real,?965405)cart->bool)->bool (not in compat.mg)
Theorem hl_affine_compat : forall T965405:set, T965405 <> Empty -> forall l1 :e 2 :^: (R :^: idx T965405), hl_affine T965405 l1 = 1 <-> affine T965405 (hl_rep (R :^: idx T965405) l1).
Admitted.

// vector_add : (real,N)cart->(real,N)cart->(real,N)cart (not in compat.mg)
Theorem hl_vector_add_compat : forall N:set, N <> Empty -> forall l1 l2 :e R :^: idx N, hl_vector_add N l1 l2 = vector_add N l1 l2.
Admitted.

// SURJ : (A->B)->(A->bool)->(B->bool)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_SURJ_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: (2 :^: A), forall f1:set -> set, (forall x :e 2 :^: A, l1 x = f1 (hl_rep A x)) -> forall l2 :e 2 :^: (2 :^: A), forall l3 :e 2 :^: B, hl_SURJ (2 :^: A) B l1 l2 l3 = 1 <-> (forall x :e hl_rep2 A l2, f1 x :e hl_rep B l3) /\ forall y :e hl_rep B l3, exists x :e hl_rep2 A l2, f1 x = y.
Admitted.

// SURJ : (A->B)->(A->bool)->(B->bool)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_SURJ_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: B :^: A, forall f1:set -> set, (forall x :e A, hl_rep B (l1 x) = f1 x) -> forall l2 :e 2 :^: A, forall l3 :e 2 :^: (2 :^: B), hl_SURJ A (2 :^: B) l1 l2 l3 = 1 <-> (forall x :e hl_rep A l2, f1 x :e hl_rep2 B l3) /\ forall y :e hl_rep2 B l3, exists x :e hl_rep A l2, f1 x = y.
Admitted.

// SURJ : (A->B)->(A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_SURJ_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: B :^: (2 :^: A), forall f1:set -> set, (forall x :e 2 :^: A, hl_rep B (l1 x) = f1 (hl_rep A x)) -> forall l2 :e 2 :^: (2 :^: A), forall l3 :e 2 :^: (2 :^: B), hl_SURJ (2 :^: A) (2 :^: B) l1 l2 l3 = 1 <-> (forall x :e hl_rep2 A l2, f1 x :e hl_rep2 B l3) /\ forall y :e hl_rep2 B l3, exists x :e hl_rep2 A l2, f1 x = y.
Admitted.

// connected : ((real,?763186)cart->bool)->bool (not in compat.mg)
Theorem hl_connected_compat : forall T763186:set, T763186 <> Empty -> forall l1 :e 2 :^: (R :^: idx T763186), hl_connected T763186 l1 = 1 <-> connected T763186 (hl_rep (R :^: idx T763186) l1).
Admitted.

// WF : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_WF_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_WF (2 :^: A) l1 = 1 <-> forall P c= Power A, P <> Empty -> exists x :e P, forall y :e P, ~ P1 y x).
Admitted.

// lifted : (?1360870->?1360870->?1360868)->?1360870 option->?1360870 option->?1360868 option (not in compat.mg)
Theorem hl_lifted_compat : forall T1360870 T1360868:set, T1360870 <> Empty -> T1360868 <> Empty -> hl_lifted T1360870 T1360868 = lifted T1360868 T1360870.
Admitted.

// adjoint : ((real,M)cart->(real,N)cart)->(real,N)cart->(real,M)cart (not in compat.mg)
Theorem hl_adjoint_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx M), forall f1:set -> set, (forall x :e R :^: idx M, l1 x = f1 x) -> forall x :e R :^: idx N, hl_adjoint M N l1 x = adjoint M N f1 x.
Admitted.

// path_component_of : ?467417 topology->?467417->?467417->bool (not in compat.mg)
Theorem hl_path_component_of_compat : forall T467417:set, T467417 <> Empty -> forall l1 :e hl_ty_topology T467417, forall l2 l3 :e T467417, hl_path_component_of T467417 l1 l2 l3 = 1 <-> path_component_of T467417 l1 l2 l3.
Admitted.

// path_component_of : ?467417 topology->?467417->?467417->bool at A := A -> bool (not in compat.mg)
Theorem hl_path_component_of_compat_pow : forall T467417:set, T467417 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T467417), forall l2 l3 :e 2 :^: T467417, hl_path_component_of (2 :^: T467417) l1 l2 l3 = 1 <-> path_component_of (Power T467417) l1 (hl_rep T467417 l2) (hl_rep T467417 l3).
Admitted.

// group_kernel : A group#B group->(A->B)->A->bool (not in compat.mg)
Theorem hl_group_kernel_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A :*: hl_ty_group B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_rep A (hl_group_kernel A B l1 l2) = group_kernel A B l1 f2.
Admitted.

// group_kernel : A group#B group->(A->B)->A->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_group_kernel_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group (2 :^: A) :*: hl_ty_group B, forall l2 :e B :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_rep2 A (hl_group_kernel (2 :^: A) B l1 l2) = group_kernel (Power A) B l1 f2.
Admitted.

// locally_finite_in : ?364017 topology->((?364017->bool)->bool)->bool (not in compat.mg)
Theorem hl_locally_finite_in_compat : forall T364017:set, T364017 <> Empty -> forall l1 :e hl_ty_topology T364017, forall l2 :e 2 :^: (2 :^: T364017), hl_locally_finite_in T364017 l1 l2 = 1 <-> locally_finite_in T364017 l1 (hl_rep2 T364017 l2).
Admitted.

// locally_finite_in : ?364017 topology->((?364017->bool)->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_locally_finite_in_compat_pow : forall T364017:set, T364017 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T364017), forall l2 :e 2 :^: (2 :^: (2 :^: T364017)), hl_locally_finite_in (2 :^: T364017) l1 l2 = 1 <-> locally_finite_in (Power T364017) l1 (hl_rep2 (2 :^: T364017) l2).
Admitted.

// trivial_group : ?257863 group->bool (not in compat.mg)
Theorem hl_trivial_group_compat : forall T257863:set, T257863 <> Empty -> forall l1 :e hl_ty_group T257863, hl_trivial_group T257863 l1 = 1 <-> trivial_group T257863 l1.
Admitted.

// dest_multivector : N multivector->num->bool (not in compat.mg)
Theorem hl_dest_multivector_compat : forall N:set, N <> Empty -> forall l1 :e hl_ty_multivector N, hl_dest_multivector N l1 = l1.
Admitted.

// has_integral : ((real,?1351573)cart->(real,?1351577)cart)->(real,?1351577)cart->((real,?1351573)cart->bool)->bool (not in compat.mg)
Theorem hl_has_integral_compat : forall T1351573 T1351577:set, T1351573 <> Empty -> T1351577 <> Empty -> forall l1 :e R :^: idx T1351577 :^: (R :^: idx T1351573), forall f1:set -> set, (forall x :e R :^: idx T1351573, l1 x = f1 x) -> forall l2 :e R :^: idx T1351577, forall l3 :e 2 :^: (R :^: idx T1351573), hl_has_integral T1351573 T1351577 l1 l2 l3 = 1 <-> has_integral T1351573 T1351577 f1 l2 (hl_rep (R :^: idx T1351573) l3).
Admitted.

// ZBOT : num->A->bool (not in compat.mg)
Theorem hl_ZBOT_compat : forall A:set, A <> Empty -> hl_ZBOT A = Empty.
Admitted.

// ZBOT : num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_ZBOT_compat_pow : forall A:set, A <> Empty -> hl_ZBOT (2 :^: A) = Empty.
Admitted.

// euclidean_space : num->(num->real) topology (not in compat.mg)
Theorem hl_euclidean_space_compat : forall l1 :e omega, hl_euclidean_space l1 = euclidean_space l1.
Admitted.

// mball : A metric->A#real->A->bool (not in compat.mg)
Theorem hl_mball_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e A :*: R, hl_rep A (hl_mball A l1 l2) = mball A l1 l2.
Admitted.

// mball : A metric->A#real->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_mball_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), forall l2 :e 2 :^: A :*: R, hl_rep2 A (hl_mball (2 :^: A) l1 l2) = mball (Power A) l1 l2.
Admitted.

// interior : ((real,?767052)cart->bool)->(real,?767052)cart->bool (not in compat.mg)
Theorem hl_interior_compat : forall T767052:set, T767052 <> Empty -> forall l1 :e 2 :^: (R :^: idx T767052), hl_rep (R :^: idx T767052) (hl_interior T767052 l1) = interior T767052 (hl_rep (R :^: idx T767052) l1).
Admitted.

// group_mul : A group->A->A->A (not in compat.mg)
Theorem hl_group_mul_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall x :e A, hl_group_mul A l1 x = group_mul A l1 x.
Admitted.

// iterate : (B->B->B)->(A->bool)->(A->B)->B, nested at type variables 2 (not in compat.mg)
Theorem hl_iterate_compat_pow2 : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e B :^: B :^: B, forall f1:set -> set -> set, (forall x y :e B, l1 x y = f1 x y) -> forall l2 :e 2 :^: (2 :^: A), forall l3 :e B :^: (2 :^: A), forall f3:set -> set, (forall x :e 2 :^: A, l3 x = f3 (hl_rep A x)) -> (forall x y :e B, f1 x y = f1 y x) /\ (forall x y z :e B, f1 x (f1 y z) = f1 (f1 x y) z) /\ (forall x :e B, f1 (neutral_of B (fun a:set => fun b:set => f1 a b)) x = x) -> hl_iterate B (2 :^: A) l1 l2 l3 = iterate_op B (fun a:set => fun b:set => f1 a b) (hl_rep2 A l2) f3.
Admitted.

// matrix_inv : ((real,M)cart,N)cart->((real,N)cart,M)cart (not in compat.mg)
Theorem hl_matrix_inv_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx M :^: idx N, hl_matrix_inv M N l1 = matrix_inv M N l1.
Admitted.

// pgroup : (num->bool)->A group->bool (not in compat.mg)
Theorem hl_pgroup_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: omega, forall l2 :e hl_ty_group A, hl_pgroup A l1 l2 = 1 <-> pgroup A (hl_rep omega l1) l2.
Admitted.

// subgroup_of : (A->bool)->A group->bool (not in compat.mg)
Theorem hl_subgroup_of_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e hl_ty_group A, hl_subgroup_of A l1 l2 = 1 <-> subgroup_of A (hl_rep A l1) l2.
Admitted.

// subgroup_of : (A->bool)->A group->bool at A := A -> bool (not in compat.mg)
Theorem hl_subgroup_of_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e hl_ty_group (2 :^: A), hl_subgroup_of (2 :^: A) l1 l2 = 1 <-> subgroup_of (Power A) (hl_rep2 A l1) l2.
Admitted.

// alexandroff_compactification : A topology->(A,1)sum topology (not in compat.mg)
Theorem hl_alexandroff_compactification_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_alexandroff_compactification A l1 = alexandroff_compactification A l1.
Admitted.

// neighbourhood_base_of : ((?432325->bool)->bool)->?432325 topology->bool (not in compat.mg)
Theorem hl_neighbourhood_base_of_compat : forall T432325:set, T432325 <> Empty -> forall l1 :e 2 :^: (2 :^: T432325), forall l2 :e hl_ty_topology T432325, hl_neighbourhood_base_of T432325 l1 l2 = 1 <-> neighbourhood_base_of T432325 (hl_rep2 T432325 l1) l2.
Admitted.

// neighbourhood_base_of : ((?432325->bool)->bool)->?432325 topology->bool at A := A -> bool (not in compat.mg)
Theorem hl_neighbourhood_base_of_compat_pow : forall T432325:set, T432325 <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: T432325)), forall l2 :e hl_ty_topology (2 :^: T432325), hl_neighbourhood_base_of (2 :^: T432325) l1 l2 = 1 <-> neighbourhood_base_of (Power T432325) (hl_rep2 (2 :^: T432325) l1) l2.
Admitted.

// cantor_map : (num->bool)->real (not in compat.mg)
Theorem hl_cantor_map_compat : forall l1 :e 2 :^: omega, hl_cantor_map l1 = cantor_map (hl_rep omega l1).
Admitted.

// brouwer_degree2 : num->((num->real)->num->real)->int (not in compat.mg)
Theorem hl_brouwer_degree2_compat : forall l1 :e omega, forall l2 :e R :^: omega :^: (R :^: omega), forall f2:set -> set -> set, (forall x :e R :^: omega, forall y :e omega, l2 x y = f2 x y) -> hl_brouwer_degree2 l1 l2 = brouwer_degree2 l1 f2.
Admitted.

// normal_subgroup_of : (A->bool)->A group->bool (not in compat.mg)
Theorem hl_normal_subgroup_of_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e hl_ty_group A, hl_normal_subgroup_of A l1 l2 = 1 <-> normal_subgroup_of A (hl_rep A l1) l2.
Admitted.

// normal_subgroup_of : (A->bool)->A group->bool at A := A -> bool (not in compat.mg)
Theorem hl_normal_subgroup_of_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e hl_ty_group (2 :^: A), hl_normal_subgroup_of (2 :^: A) l1 l2 = 1 <-> normal_subgroup_of (Power A) (hl_rep2 A l1) l2.
Admitted.

// path_in : A topology->(real->A)->bool (not in compat.mg)
Theorem hl_path_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e A :^: R, forall f2:set -> set, (forall x :e R, l2 x = f2 x) -> (hl_path_in A l1 l2 = 1 <-> path_in A l1 f2).
Admitted.

// singular_chain : num#A topology->((num->real)->A) frag->bool (not in compat.mg)
Theorem hl_singular_chain_compat : forall A:set, A <> Empty -> forall l1 :e omega :*: hl_ty_topology A, forall l2 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A l1 l2 = 1 <-> singular_chain A l1 l2.
Admitted.

// homeomorphism : ((real,?853346)cart->bool)#((real,?853347)cart->bool)->((real,?853346)cart->(real,?853347)cart)#((real,?853347)cart->(real,?853346)cart)->bool (not in compat.mg)
Theorem hl_homeomorphism_compat : forall T853346 T853347:set, T853346 <> Empty -> T853347 <> Empty -> forall l1 :e 2 :^: (R :^: idx T853346) :*: 2 :^: (R :^: idx T853347), forall l2 :e R :^: idx T853347 :^: (R :^: idx T853346) :*: R :^: idx T853346 :^: (R :^: idx T853347), hl_homeomorphism T853346 T853347 l1 l2 = 1 <-> homeomorphism T853346 T853347 l1 l2.
Admitted.

// ANR : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_ANR_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_ANR N l1 = 1 <-> ANR N (hl_rep (R :^: idx N) l1).
Admitted.

// singular_simplex : num#A topology->((num->real)->A)->bool (not in compat.mg)
Theorem hl_singular_simplex_compat : forall A:set, A <> Empty -> forall l1 :e omega :*: hl_ty_topology A, forall l2 :e A :^: (R :^: omega), forall f2:set -> set, (forall x :e R :^: omega, l2 x = f2 x) -> (hl_singular_simplex A l1 l2 = 1 <-> singular_simplex A l1 f2).
Admitted.

// simplicial_complex : (((real,?1251739)cart->bool)->bool)->bool (not in compat.mg)
Theorem hl_simplicial_complex_compat : forall T1251739:set, T1251739 <> Empty -> forall l1 :e 2 :^: (2 :^: (R :^: idx T1251739)), hl_simplicial_complex T1251739 l1 = 1 <-> simplicial_complex T1251739 (hl_rep2 (R :^: idx T1251739) l1).
Admitted.

// drop : (real,1)cart->real (not in compat.mg)
Theorem hl_drop_compat : forall l1 :e R :^: idx 1, hl_drop l1 = drop l1.
Admitted.

// separable_space : A topology->bool (not in compat.mg)
Theorem hl_separable_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_separable_space A l1 = 1 <-> separable_space A l1.
Admitted.

// path_connected_in : A topology->(A->bool)->bool (not in compat.mg)
Theorem hl_path_connected_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e 2 :^: A, hl_path_connected_in A l1 l2 = 1 <-> path_connected_in A l1 (hl_rep A l2).
Admitted.

// path_connected_in : A topology->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_path_connected_in_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_path_connected_in (2 :^: A) l1 l2 = 1 <-> path_connected_in (Power A) l1 (hl_rep2 A l2).
Admitted.

// reallim : A net->(A->real)->real (not in compat.mg)
Theorem hl_reallim_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_net A, forall l2 :e R :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_reallim A l1 l2 = reallim A l1 f2.
Admitted.

// mk_net : ((A->bool)->bool)#(A->bool)->A net (not in compat.mg)
Theorem hl_mk_net_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :*: 2 :^: A, hl_mk_net A l1 = l1.
Admitted.

// mk_net : ((A->bool)->bool)#(A->bool)->A net at A := A -> bool (not in compat.mg)
Theorem hl_mk_net_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)) :*: 2 :^: (2 :^: A), hl_mk_net (2 :^: A) l1 = l1.
Admitted.

// product_map : (K->bool)->(K->A->B)->(K->A)->K->B (not in compat.mg)
Theorem hl_product_map_compat : forall K A B:set, K <> Empty -> A <> Empty -> B <> Empty -> forall l1 :e 2 :^: K, forall l2 :e B :^: A :^: K, forall f2:set -> set -> set, (forall x :e K, forall y :e A, l2 x y = f2 x y) -> forall x :e A :^: K, hl_product_map K A B l1 l2 x = fun i:set => if i :e hl_rep K l1 then f2 i (x i) else choose_in B (fun y:set => False).
Admitted.

// product_map : (K->bool)->(K->A->B)->(K->A)->K->B, nested at type variables 1 (not in compat.mg)
Theorem hl_product_map_compat_pow1 : forall K A B:set, K <> Empty -> A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: K), forall l2 :e B :^: A :^: (2 :^: K), forall f2:set -> set -> set, (forall x :e 2 :^: K, forall y :e A, l2 x y = f2 x y) -> forall x :e A :^: (2 :^: K), hl_product_map (2 :^: K) A B l1 l2 x = fun i:set => if i :e hl_rep2 K l1 then f2 i (x i) else choose_in B (fun y:set => False).
Admitted.

// FNIL : num->A (not in compat.mg)
Theorem hl_FNIL_compat : forall A:set, A <> Empty -> hl_FNIL A = Empty.
Admitted.

// polyhedron : ((real,?1235070)cart->bool)->bool (not in compat.mg)
Theorem hl_polyhedron_compat : forall T1235070:set, T1235070 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1235070), hl_polyhedron T1235070 l1 = 1 <-> polyhedron T1235070 (hl_rep (R :^: idx T1235070) l1).
Admitted.

// product : (A->bool)->(A->real)->real at A := A -> bool (not in compat.mg)
Theorem hl_product_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e R :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_product (2 :^: A) l1 l2 = finprod (hl_rep2 A l1) f2.
Admitted.

// infnorm : (real,N)cart->real (not in compat.mg)
Theorem hl_infnorm_compat : forall N:set, N <> Empty -> hl_infnorm N = infnorm N.
Admitted.

// locally_path_connected_space : ?480869 topology->bool (not in compat.mg)
Theorem hl_locally_path_connected_space_compat : forall T480869:set, T480869 <> Empty -> forall l1 :e hl_ty_topology T480869, hl_locally_path_connected_space T480869 l1 = 1 <-> locally_path_connected_space T480869 l1.
Admitted.

// locally_compact_space : ?438604 topology->bool (not in compat.mg)
Theorem hl_locally_compact_space_compat : forall T438604:set, T438604 <> Empty -> forall l1 :e hl_ty_topology T438604, hl_locally_compact_space T438604 l1 = 1 <-> locally_compact_space T438604 l1.
Admitted.

// seqiterate : (?1340862->?1340862->?1340862)->(num->bool)->(num->?1340862)->?1340862 (not in compat.mg)
Theorem hl_seqiterate_compat : forall T1340862:set, T1340862 <> Empty -> hl_seqiterate T1340862 = seqiterate T1340862.
Admitted.

// exposed_face_of : ((real,?1219232)cart->bool)->((real,?1219232)cart->bool)->bool (not in compat.mg)
Theorem hl_exposed_face_of_compat : forall T1219232:set, T1219232 <> Empty -> forall l1 l2 :e 2 :^: (R :^: idx T1219232), hl_exposed_face_of T1219232 l1 l2 = 1 <-> exposed_face_of T1219232 (hl_rep (R :^: idx T1219232) l1) (hl_rep (R :^: idx T1219232) l2).
Admitted.

// ZRECSPACE : (num->A->bool)->bool (not in compat.mg)
Theorem hl_ZRECSPACE_compat : forall A:set, A <> Empty -> hl_ZRECSPACE A = Empty.
Admitted.

// ZRECSPACE : (num->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_ZRECSPACE_compat_pow : forall A:set, A <> Empty -> hl_ZRECSPACE (2 :^: A) = Empty.
Admitted.

// UNIONS : ((A->bool)->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_UNIONS_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), hl_rep2 A (hl_UNIONS (2 :^: A) l1) = Union (hl_rep2 (2 :^: A) l1).
Admitted.

// kc_space : A topology->bool (not in compat.mg)
Theorem hl_kc_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_kc_space A l1 = 1 <-> kc_space A l1.
Admitted.

// prod_metric : A metric->B metric->(A#B) metric (not in compat.mg)
Theorem hl_prod_metric_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e hl_ty_metric B, hl_prod_metric A B l1 l2 = prod_metric A B l1 l2.
Admitted.

// connected_in : ?422034 topology->(?422034->bool)->bool (not in compat.mg)
Theorem hl_connected_in_compat : forall T422034:set, T422034 <> Empty -> forall l1 :e hl_ty_topology T422034, forall l2 :e 2 :^: T422034, hl_connected_in T422034 l1 l2 = 1 <-> connected_in T422034 l1 (hl_rep T422034 l2).
Admitted.

// connected_in : ?422034 topology->(?422034->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_connected_in_compat_pow : forall T422034:set, T422034 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T422034), forall l2 :e 2 :^: (2 :^: T422034), hl_connected_in (2 :^: T422034) l1 l2 = 1 <-> connected_in (Power T422034) l1 (hl_rep2 T422034 l2).
Admitted.

// EX : (A->bool)->A list->bool at A := A -> bool (not in compat.mg)
Theorem hl_EX_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall P1:set -> prop, (forall x :e 2 :^: A, l1 x = 1 <-> P1 (hl_rep A x)) -> forall l2 :e finseq (2 :^: A), hl_EX (2 :^: A) l1 l2 = 1 <-> seq_ex P1 l2.
Admitted.

// dimension : ((real,N)cart->bool)->int (not in compat.mg)
Theorem hl_dimension_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_dimension N l1 = dimension N (hl_rep (R :^: idx N) l1).
Admitted.

// homotopic_loops : ((real,?1163318)cart->bool)->((real,1)cart->(real,?1163318)cart)->((real,1)cart->(real,?1163318)cart)->bool (not in compat.mg)
Theorem hl_homotopic_loops_compat : forall T1163318:set, T1163318 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1163318), forall l2 :e R :^: idx T1163318 :^: (R :^: idx 1), forall f2:set -> set, (forall x :e R :^: idx 1, l2 x = f2 x) -> forall l3 :e R :^: idx T1163318 :^: (R :^: idx 1), forall f3:set -> set, (forall x :e R :^: idx 1, l3 x = f3 x) -> (hl_homotopic_loops T1163318 l1 l2 l3 = 1 <-> homotopic_loops T1163318 (hl_rep (R :^: idx T1163318) l1) f2 f3).
Admitted.

// prod_group : A group->B group->(A#B) group (not in compat.mg)
Theorem hl_prod_group_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e hl_ty_group B, hl_prod_group A B l1 l2 = prod_group A B l1 l2.
Admitted.

// interior_of : ?360953 topology->(?360953->bool)->?360953->bool (not in compat.mg)
Theorem hl_interior_of_compat : forall T360953:set, T360953 <> Empty -> forall l1 :e hl_ty_topology T360953, forall l2 :e 2 :^: T360953, hl_rep T360953 (hl_interior_of T360953 l1 l2) = interior_of T360953 l1 (hl_rep T360953 l2).
Admitted.

// interior_of : ?360953 topology->(?360953->bool)->?360953->bool at A := A -> bool (not in compat.mg)
Theorem hl_interior_of_compat_pow : forall T360953:set, T360953 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T360953), forall l2 :e 2 :^: (2 :^: T360953), hl_rep2 T360953 (hl_interior_of (2 :^: T360953) l1 l2) = interior_of (Power T360953) l1 (hl_rep2 T360953 l2).
Admitted.

// is_metric_space : (A->bool)#(A#A->real)->bool (not in compat.mg)
Theorem hl_is_metric_space_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :*: R :^: (A :*: A), hl_is_metric_space A l1 = 1 <-> is_metric_space A l1.
Admitted.

// is_metric_space : (A->bool)#(A#A->real)->bool at A := A -> bool (not in compat.mg)
Theorem hl_is_metric_space_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :*: R :^: (2 :^: A :*: 2 :^: A), hl_is_metric_space (2 :^: A) l1 = 1 <-> is_metric_space (Power A) l1.
Admitted.

// differentiable_on : ((real,?1301911)cart->(real,?1301905)cart)->((real,?1301911)cart->bool)->bool (not in compat.mg)
Theorem hl_differentiable_on_compat : forall T1301911 T1301905:set, T1301911 <> Empty -> T1301905 <> Empty -> forall l1 :e R :^: idx T1301905 :^: (R :^: idx T1301911), forall f1:set -> set, (forall x :e R :^: idx T1301911, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx T1301911), hl_differentiable_on T1301911 T1301905 l1 l2 = 1 <-> differentiable_on_hl T1301905 T1301911 f1 (hl_rep (R :^: idx T1301911) l2).
Admitted.

// closed_interval : ((real,N)cart#(real,N)cart) list->(real,N)cart->bool (not in compat.mg)
Theorem hl_closed_interval_compat : forall N:set, N <> Empty -> forall l1 :e finseq (R :^: idx N :*: R :^: idx N), hl_rep (R :^: idx N) (hl_closed_interval N l1) = closed_interval N l1.
Admitted.

// opposite_group : A group->A group (not in compat.mg)
Theorem hl_opposite_group_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, hl_opposite_group A l1 = opposite_group A l1.
Admitted.

// superadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool (not in compat.mg)
Theorem hl_superadmissible_compat : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_superadmissible A B P = Empty.
Admitted.

// superadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_superadmissible_compat_pow1 : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_superadmissible (2 :^: A) B P = Empty.
Admitted.

// superadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool, nested at type variables 3 (not in compat.mg)
Theorem hl_superadmissible_compat_pow3 : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_superadmissible A B (2 :^: P) = Empty.
Admitted.

// superadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool, nested at type variables 1,3 (not in compat.mg)
Theorem hl_superadmissible_compat_pow13 : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_superadmissible (2 :^: A) B (2 :^: P) = Empty.
Admitted.

// perfect_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_perfect_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_perfect_map A B l1 l2 = 1 <-> perfect_map A B l1 f2).
Admitted.

// interval_upperbound : ((real,M)cart->bool)->(real,M)cart (not in compat.mg)
Theorem hl_interval_upperbound_compat : forall M:set, M <> Empty -> forall l1 :e 2 :^: (R :^: idx M), hl_interval_upperbound M l1 = interval_upperbound M (hl_rep (R :^: idx M) l1).
Admitted.

// matroid_dependent : A matroid->(A->bool)->bool (not in compat.mg)
Theorem hl_matroid_dependent_compat : forall A:set, A <> Empty -> hl_matroid_dependent A = matroid_dependent A.
Admitted.

// matroid_dependent : A matroid->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_matroid_dependent_compat_pow : forall A:set, A <> Empty -> hl_matroid_dependent (2 :^: A) = matroid_dependent (Power A).
Admitted.

// simplicial_simplex : num#((num->real)->bool)->((num->real)->num->real)->bool (not in compat.mg)
Theorem hl_simplicial_simplex_compat : forall l1 :e omega :*: 2 :^: (R :^: omega), forall l2 :e R :^: omega :^: (R :^: omega), forall f2:set -> set -> set, (forall x :e R :^: omega, forall y :e omega, l2 x y = f2 x y) -> (hl_simplicial_simplex l1 l2 = 1 <-> simplicial_simplex l1 f2).
Admitted.

// group_monomorphism : A group#B group->(A->B)->bool (not in compat.mg)
Theorem hl_group_monomorphism_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A :*: hl_ty_group B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_group_monomorphism A B l1 l2 = 1 <-> group_monomorphism A B l1 f2).
Admitted.

// group_div : ?258236 group->?258236->?258236->?258236 (not in compat.mg)
Theorem hl_group_div_compat : forall T258236:set, T258236 <> Empty -> forall l1 :e hl_ty_group T258236, forall l2 l3 :e T258236, hl_group_div T258236 l1 l2 l3 = group_div T258236 l1 l2 l3.
Admitted.

// is_realinterval : (real->bool)->bool (not in compat.mg)
Theorem hl_is_realinterval_compat : forall l1 :e 2 :^: R, hl_is_realinterval l1 = 1 <-> is_realinterval (hl_rep R l1).
Admitted.

// k_space : A topology->bool (not in compat.mg)
Theorem hl_k_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_k_space A l1 = 1 <-> k_space A l1.
Admitted.

// aff_dim : ((real,?990983)cart->bool)->int (not in compat.mg)
Theorem hl_aff_dim_compat : forall T990983:set, T990983 <> Empty -> forall l1 :e 2 :^: (R :^: idx T990983), hl_aff_dim T990983 l1 = aff_dim T990983 (hl_rep (R :^: idx T990983) l1).
Admitted.

// matroid_set : A matroid->A->bool (not in compat.mg)
Theorem hl_matroid_set_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid A, hl_rep A (hl_matroid_set A l1) = matroid_set A l1.
Admitted.

// matroid_set : A matroid->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_matroid_set_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid (2 :^: A), hl_rep2 A (hl_matroid_set (2 :^: A) l1) = matroid_set (Power A) l1.
Admitted.

// locally_connected_at : ?482602->?482602 topology->bool (not in compat.mg)
Theorem hl_locally_connected_at_compat : forall T482602:set, T482602 <> Empty -> forall l1 :e T482602, forall l2 :e hl_ty_topology T482602, hl_locally_connected_at T482602 l1 l2 = 1 <-> locally_connected_at T482602 l1 l2.
Admitted.

// shiftpath : (real,1)cart->((real,1)cart->(real,N)cart)->(real,1)cart->(real,N)cart (not in compat.mg)
Theorem hl_shiftpath_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx 1, forall l2 :e R :^: idx N :^: (R :^: idx 1), forall f2:set -> set, (forall x :e R :^: idx 1, l2 x = f2 x) -> forall l3 :e R :^: idx 1, hl_shiftpath N l1 l2 l3 = shiftpath N l1 f2 l3.
Admitted.

// permutes : (?173361->?173361)->(?173361->bool)->bool (not in compat.mg)
Theorem hl_permutes_compat : forall T173361:set, T173361 <> Empty -> forall l1 :e T173361 :^: T173361, forall f1:set -> set, (forall x :e T173361, l1 x = f1 x) -> forall l2 :e 2 :^: T173361, hl_permutes T173361 l1 l2 = 1 <-> permutes T173361 f1 (hl_rep T173361 l2).
Admitted.

// permutes : (?173361->?173361)->(?173361->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_permutes_compat_pow : forall T173361:set, T173361 <> Empty -> forall l1 :e 2 :^: T173361 :^: (2 :^: T173361), forall f1:set -> set, (forall x :e 2 :^: T173361, hl_rep T173361 (l1 x) = f1 (hl_rep T173361 x)) -> forall l2 :e 2 :^: (2 :^: T173361), hl_permutes (2 :^: T173361) l1 l2 = 1 <-> permutes (Power T173361) f1 (hl_rep2 T173361 l2).
Admitted.

// MAP2 : (A->B->C)->A list->B list->C list (not in compat.mg)
Theorem hl_MAP2_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e C :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e finseq A, forall l3 :e finseq B, hl_MAP2 A B C l1 l2 l3 = seq_map2 f1 l2 l3.
Admitted.

// starlike : ((real,?1029231)cart->bool)->bool (not in compat.mg)
Theorem hl_starlike_compat : forall T1029231:set, T1029231 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1029231), hl_starlike T1029231 l1 = 1 <-> starlike T1029231 (hl_rep (R :^: idx T1029231) l1).
Admitted.

// column : num->((real,N)cart,M)cart->(real,M)cart (not in compat.mg)
Theorem hl_column_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e omega, forall l2 :e R :^: idx N :^: idx M, hl_column N M l1 l2 = column M N l1 l2.
Admitted.

// integer_mod_group : num->int group (not in compat.mg)
Theorem hl_integer_mod_group_compat : forall l1 :e omega, hl_integer_mod_group l1 = integer_mod_group l1.
Admitted.

// SETSPEC : A->bool->A->bool (not in compat.mg)
Theorem hl_SETSPEC_compat : forall A:set, A <> Empty -> hl_SETSPEC A = Empty.
Admitted.

// SETSPEC : A->bool->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_SETSPEC_compat_pow : forall A:set, A <> Empty -> hl_SETSPEC (2 :^: A) = Empty.
Admitted.

// convex : ((real,?971243)cart->bool)->bool (not in compat.mg)
Theorem hl_convex_compat : forall T971243:set, T971243 <> Empty -> forall l1 :e 2 :^: (R :^: idx T971243), hl_convex T971243 l1 = 1 <-> convex T971243 (hl_rep (R :^: idx T971243) l1).
Admitted.

// hereditarily : (A topology->bool)->A topology->bool (not in compat.mg)
Theorem hl_hereditarily_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: hl_ty_topology A, forall l2 :e hl_ty_topology A, hl_hereditarily A l1 l2 = 1 <-> hereditarily A (hl_rep (hl_ty_topology A) l1) l2.
Admitted.

// netlimit : A net->A (not in compat.mg)
Theorem hl_netlimit_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_net A, hl_netlimit A l1 = netlimit A l1.
Admitted.

// qoset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_qoset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_qoset A l1 = 1 <-> qoset_on A P1).
Admitted.

// qoset : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_qoset_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_qoset (2 :^: A) l1 = 1 <-> qoset_on (Power A) P1).
Admitted.

// monotone_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_monotone_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_monotone_map A B l1 l2 = 1 <-> monotone_map A B l1 f2).
Admitted.

// condensation_point_of : (real,?776809)cart->((real,?776809)cart->bool)->bool (not in compat.mg)
Theorem hl_condensation_point_of_compat : forall T776809:set, T776809 <> Empty -> forall l1 :e R :^: idx T776809, forall l2 :e 2 :^: (R :^: idx T776809), hl_condensation_point_of T776809 l1 l2 = 1 <-> condensation_point_of T776809 l1 (hl_rep (R :^: idx T776809) l2).
Admitted.

// is_nadd : (num->num)->bool (not in compat.mg)
Theorem hl_is_nadd_compat : hl_is_nadd = Empty.
Admitted.

// matroid_basis : A matroid->(A->bool)->bool (not in compat.mg)
Theorem hl_matroid_basis_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid A, forall l2 :e 2 :^: A, hl_matroid_basis A l1 l2 = 1 <-> matroid_basis A l1 (hl_rep A l2).
Admitted.

// matroid_basis : A matroid->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_matroid_basis_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_matroid_basis (2 :^: A) l1 l2 = 1 <-> matroid_basis (Power A) l1 (hl_rep2 A l2).
Admitted.

// frag_extend : (A->B frag)->A frag->B frag (not in compat.mg)
Theorem hl_frag_extend_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_frag B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e hl_ty_frag A, hl_frag_extend A B l1 l2 = frag_extend A B f1 l2.
Admitted.

// separated_between : A topology->(A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_separated_between_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 l3 :e 2 :^: A, hl_separated_between A l1 l2 l3 = 1 <-> separated_between A l1 (hl_rep A l2) (hl_rep A l3).
Admitted.

// separated_between : A topology->(A->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_separated_between_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), forall l2 l3 :e 2 :^: (2 :^: A), hl_separated_between (2 :^: A) l1 l2 l3 = 1 <-> separated_between (Power A) l1 (hl_rep2 A l2) (hl_rep2 A l3).
Admitted.

// closure : ((real,?767686)cart->bool)->(real,?767686)cart->bool (not in compat.mg)
Theorem hl_closure_compat : forall T767686:set, T767686 <> Empty -> forall l1 :e 2 :^: (R :^: idx T767686), hl_rep (R :^: idx T767686) (hl_closure T767686 l1) = closure T767686 (hl_rep (R :^: idx T767686) l1).
Admitted.

// matrix_mul : ((real,N)cart,M)cart->((real,P)cart,N)cart->((real,P)cart,M)cart (not in compat.mg)
Theorem hl_matrix_mul_compat : forall N M P:set, N <> Empty -> M <> Empty -> P <> Empty -> forall l1 :e R :^: idx N :^: idx M, forall l2 :e R :^: idx P :^: idx N, hl_matrix_mul N M P l1 l2 = matrix_mul M N P l1 l2.
Admitted.

// group_add : A group->A->A->A (not in compat.mg)
Theorem hl_group_add_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 l3 :e A, hl_group_add A l1 l2 l3 = group_add A l1 l2 l3.
Admitted.

// IND_SUC : ind->ind (not in compat.mg)
Theorem hl_IND_SUC_compat : hl_IND_SUC = Empty.
Admitted.

// multivec : (real,N)cart->(real,N multivector)cart (not in compat.mg)
Theorem hl_multivec_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N, hl_multivec N l1 = multivec N l1.
Admitted.

// msphere : A metric->A#real->A->bool (not in compat.mg)
Theorem hl_msphere_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e A :*: R, hl_rep A (hl_msphere A l1 l2) = msphere A l1 l2.
Admitted.

// msphere : A metric->A#real->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_msphere_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), forall l2 :e 2 :^: A :*: R, hl_rep2 A (hl_msphere (2 :^: A) l1 l2) = msphere (Power A) l1 l2.
Admitted.

// % : real->(real,N)cart->(real,N)cart (not in compat.mg)
Theorem hl_vmul_compat : forall N:set, N <> Empty -> forall l1 :e R, forall l2 :e R :^: idx N, hl_vmul N l1 l2 = vector_mul N l1 l2.
Admitted.

// at_posinfinity : real net (not in compat.mg)
Theorem hl_at_posinfinity_compat : hl_at_posinfinity = at_posinfinity.
Admitted.

// positive_semidefinite : ((real,N)cart,N)cart->bool (not in compat.mg)
Theorem hl_positive_semidefinite_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: idx N, hl_positive_semidefinite N l1 = 1 <-> positive_semidefinite N l1.
Admitted.

// connected_component : ((real,?821239)cart->bool)->(real,?821239)cart->(real,?821239)cart->bool (not in compat.mg)
Theorem hl_connected_component_compat : forall T821239:set, T821239 <> Empty -> forall l1 :e 2 :^: (R :^: idx T821239), forall l2 l3 :e R :^: idx T821239, hl_connected_component T821239 l1 l2 l3 = 1 <-> connected_component T821239 (hl_rep (R :^: idx T821239) l1) l2 l3.
Admitted.

// complete : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_complete_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_complete N l1 = 1 <-> complete N (hl_rep (R :^: idx N) l1).
Admitted.

// prod_topology : A topology->B topology->(A#B) topology (not in compat.mg)
Theorem hl_prod_topology_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e hl_ty_topology B, hl_prod_topology A B l1 l2 = prod_topology A B l1 l2.
Admitted.

// linepath : (real,?1084934)cart#(real,?1084934)cart->(real,1)cart->(real,?1084934)cart (not in compat.mg)
Theorem hl_linepath_compat : forall T1084934:set, T1084934 <> Empty -> forall l1 :e R :^: idx T1084934 :*: R :^: idx T1084934, forall l2 :e R :^: idx 1, hl_linepath T1084934 l1 l2 = linepath T1084934 l1 l2.
Admitted.

// frag_support : A frag->A->bool (not in compat.mg)
Theorem hl_frag_support_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_frag A, hl_rep A (hl_frag_support A l1) = frag_support A l1.
Admitted.

// frag_support : A frag->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_frag_support_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_frag (2 :^: A), hl_rep2 A (hl_frag_support (2 :^: A) l1) = frag_support (Power A) l1.
Admitted.

// borel_in : A topology->(A->bool)->bool (not in compat.mg)
Theorem hl_borel_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e 2 :^: A, hl_borel_in A l1 l2 = 1 <-> borel_in A l1 (hl_rep A l2).
Admitted.

// borel_in : A topology->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_borel_in_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_borel_in (2 :^: A) l1 l2 = 1 <-> borel_in (Power A) l1 (hl_rep2 A l2).
Admitted.

// borel_measurable_on : ((real,M)cart->(real,N)cart)->((real,M)cart->bool)->bool (not in compat.mg)
Theorem hl_borel_measurable_on_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx M), forall f1:set -> set, (forall x :e R :^: idx M, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx M), hl_borel_measurable_on M N l1 l2 = 1 <-> borel_measurable_on M N f1 (hl_rep (R :^: idx M) l2).
Admitted.

// has_derivative : ((real,?1299934)cart->(real,?1299931)cart)->((real,?1299934)cart->(real,?1299931)cart)->(real,?1299934)cart net->bool (not in compat.mg)
Theorem hl_has_derivative_compat : forall T1299934 T1299931:set, T1299934 <> Empty -> T1299931 <> Empty -> forall l1 :e R :^: idx T1299931 :^: (R :^: idx T1299934), forall f1:set -> set, (forall x :e R :^: idx T1299934, l1 x = f1 x) -> forall l2 :e R :^: idx T1299931 :^: (R :^: idx T1299934), forall f2:set -> set, (forall x :e R :^: idx T1299934, l2 x = f2 x) -> forall l3 :e hl_ty_net (R :^: idx T1299934), hl_has_derivative T1299934 T1299931 l1 l2 l3 = 1 <-> has_derivative T1299931 T1299934 f1 f2 l3.
Admitted.

// NUMPAIR : num->num->num (not in compat.mg)
Theorem hl_NUMPAIR_compat : hl_NUMPAIR = Empty.
Admitted.

// dest_metric : A metric->(A->bool)#(A#A->real) (not in compat.mg)
Theorem hl_dest_metric_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, hl_dest_metric A l1 = l1.
Admitted.

// dest_metric : A metric->(A->bool)#(A#A->real) at A := A -> bool (not in compat.mg)
Theorem hl_dest_metric_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), hl_dest_metric (2 :^: A) l1 = l1.
Admitted.

// rational : real->bool (not in compat.mg)
Theorem hl_rational_compat : forall l1 :e R, hl_rational l1 = 1 <-> l1 :e rational.
Admitted.

// IND_0 : ind (not in compat.mg)
Theorem hl_IND_0_compat : hl_IND_0 = Empty.
Admitted.

// neighbourhood_base_at : A->((A->bool)->bool)->A topology->bool (not in compat.mg)
Theorem hl_neighbourhood_base_at_compat : forall A:set, A <> Empty -> forall l1 :e A, forall l2 :e 2 :^: (2 :^: A), forall l3 :e hl_ty_topology A, hl_neighbourhood_base_at A l1 l2 l3 = 1 <-> neighbourhood_base_at A l1 (hl_rep2 A l2) l3.
Admitted.

// neighbourhood_base_at : A->((A->bool)->bool)->A topology->bool at A := A -> bool (not in compat.mg)
Theorem hl_neighbourhood_base_at_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: (2 :^: A)), forall l3 :e hl_ty_topology (2 :^: A), hl_neighbourhood_base_at (2 :^: A) l1 l2 l3 = 1 <-> neighbourhood_base_at (Power A) (hl_rep A l1) (hl_rep2 (2 :^: A) l2) l3.
Admitted.

// orthogonal : (real,?661980)cart->(real,?661980)cart->bool (not in compat.mg)
Theorem hl_orthogonal_compat : forall T661980:set, T661980 <> Empty -> forall l1 l2 :e R :^: idx T661980, hl_orthogonal T661980 l1 l2 = 1 <-> orthogonal T661980 l1 l2.
Admitted.

// ++ : ((real,1)cart->?1074593)->((real,1)cart->?1074593)->(real,1)cart->?1074593 (not in compat.mg)
Theorem hl_poly_add_compat : forall T1074593:set, T1074593 <> Empty -> forall l1 :e T1074593 :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> forall l2 :e T1074593 :^: (R :^: idx 1), forall f2:set -> set, (forall x :e R :^: idx 1, l2 x = f2 x) -> forall l3 :e R :^: idx 1, hl_poly_add T1074593 l1 l2 l3 = poly_add T1074593 f1 f2 l3.
Admitted.

// cantor_term : (num->bool)->num->real (not in compat.mg)
Theorem hl_cantor_term_compat : forall l1 :e 2 :^: omega, forall l2 :e omega, hl_cantor_term l1 l2 = cantor_term (hl_rep omega l1) l2.
Admitted.

// embedding_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_embedding_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_embedding_map A B l1 l2 = 1 <-> embedding_map A B l1 f2).
Admitted.

// real_summable : (num->bool)->(num->real)->bool (not in compat.mg)
Theorem hl_real_summable_compat : forall l1 :e 2 :^: omega, forall l2 :e R :^: omega, forall f2:set -> set, (forall x :e omega, l2 x = f2 x) -> (hl_real_summable l1 l2 = 1 <-> real_summable (hl_rep omega l1) f2).
Admitted.

// _MATCH : A->(A->B->bool)->B (not in compat.mg)
Theorem hl__MATCH_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__MATCH A B = Empty.
Admitted.

// _MATCH : A->(A->B->bool)->B, nested at type variables 2 (not in compat.mg)
Theorem hl__MATCH_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> hl__MATCH A (2 :^: B) = Empty.
Admitted.

// NUMFST : num->num (not in compat.mg)
Theorem hl_NUMFST_compat : hl_NUMFST = Empty.
Admitted.

// bitset : num->num->bool (not in compat.mg)
Theorem hl_bitset_compat : forall l1 :e omega, hl_rep omega (hl_bitset l1) = bitset l1.
Admitted.

// OUTL : (A,B)sum->A (not in compat.mg)
Theorem hl_OUTL_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_OUTL A B = OUTL A B.
Admitted.

// permutation : (?198427->?198427)->bool (not in compat.mg)
Theorem hl_permutation_compat : forall T198427:set, T198427 <> Empty -> forall l1 :e T198427 :^: T198427, forall f1:set -> set, (forall x :e T198427, l1 x = f1 x) -> (hl_permutation T198427 l1 = 1 <-> permutation T198427 f1).
Admitted.

// suslin_operation : (num list->A->bool)->A->bool (not in compat.mg)
Theorem hl_suslin_operation_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: finseq omega, forall P1:set -> set -> prop, (forall x :e finseq omega, forall y :e A, l1 x y = 1 <-> P1 x y) -> hl_rep A (hl_suslin_operation A l1) = suslin_operation A P1.
Admitted.

// suslin_operation : (num list->A->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_suslin_operation_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: finseq omega, forall P1:set -> set -> prop, (forall x :e finseq omega, forall y :e 2 :^: A, l1 x y = 1 <-> P1 x (hl_rep A y)) -> hl_rep2 A (hl_suslin_operation (2 :^: A) l1) = suslin_operation (Power A) P1.
Admitted.

// diameter : ((real,?830995)cart->bool)->real (not in compat.mg)
Theorem hl_diameter_compat : forall T830995:set, T830995 <> Empty -> forall l1 :e 2 :^: (R :^: idx T830995), hl_diameter T830995 l1 = diameter T830995 (hl_rep (R :^: idx T830995) l1).
Admitted.

// set_of_list : A list->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_set_of_list_compat_pow : forall A:set, A <> Empty -> forall l1 :e finseq (2 :^: A), hl_rep2 A (hl_set_of_list (2 :^: A) l1) = seq_set l1.
Admitted.

// euclidean_matroid : (real,N)cart matroid (not in compat.mg)
Theorem hl_euclidean_matroid_compat : forall N:set, N <> Empty -> hl_euclidean_matroid N = euclidean_matroid N.
Admitted.

// onorm : ((real,M)cart->(real,N)cart)->real (not in compat.mg)
Theorem hl_onorm_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx M), forall f1:set -> set, (forall x :e R :^: idx M, l1 x = f1 x) -> hl_onorm M N l1 = onorm M N f1.
Admitted.

// discrete_metric : (?420635->bool)->?420635 metric (not in compat.mg)
Theorem hl_discrete_metric_compat : forall T420635:set, T420635 <> Empty -> forall l1 :e 2 :^: T420635, hl_discrete_metric T420635 l1 = discrete_metric T420635 (hl_rep T420635 l1).
Admitted.

// discrete_metric : (?420635->bool)->?420635 metric at A := A -> bool (not in compat.mg)
Theorem hl_discrete_metric_compat_pow : forall T420635:set, T420635 <> Empty -> forall l1 :e 2 :^: (2 :^: T420635), hl_discrete_metric (2 :^: T420635) l1 = discrete_metric (Power T420635) (hl_rep2 T420635 l1).
Admitted.

// outermorphism : ((real,N)cart->(real,P)cart)->(real,N multivector)cart->(real,P multivector)cart (not in compat.mg)
Theorem hl_outermorphism_compat : forall N P:set, N <> Empty -> P <> Empty -> forall l1 :e R :^: idx P :^: (R :^: idx N), forall f1:set -> set, (forall x :e R :^: idx N, l1 x = f1 x) -> forall l2 :e R :^: idx (hl_ty_multivector N), hl_outermorphism N P l1 l2 = outermorphism N P f1 l2.
Admitted.

// symmetric_matrix : ((real,N)cart,N)cart->bool (not in compat.mg)
Theorem hl_symmetric_matrix_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: idx N, hl_symmetric_matrix N l1 = 1 <-> symmetric_matrix_hl N l1.
Admitted.

// inner : (real,N multivector)cart->(real,N multivector)cart->(real,N multivector)cart (not in compat.mg)
Theorem hl_inner_compat : forall N:set, N <> Empty -> forall l1 l2 :e R :^: idx (hl_ty_multivector N), hl_inner N l1 l2 = inner N l1 l2.
Admitted.

// cauchy : (num->(real,N)cart)->bool (not in compat.mg)
Theorem hl_cauchy_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: omega, forall f1:set -> set, (forall x :e omega, l1 x = f1 x) -> (hl_cauchy N l1 = 1 <-> cauchy N f1).
Admitted.

// homotopic_paths : ((real,?1160715)cart->bool)->((real,1)cart->(real,?1160715)cart)->((real,1)cart->(real,?1160715)cart)->bool (not in compat.mg)
Theorem hl_homotopic_paths_compat : forall T1160715:set, T1160715 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1160715), forall l2 :e R :^: idx T1160715 :^: (R :^: idx 1), forall f2:set -> set, (forall x :e R :^: idx 1, l2 x = f2 x) -> forall l3 :e R :^: idx T1160715 :^: (R :^: idx 1), forall f3:set -> set, (forall x :e R :^: idx 1, l3 x = f3 x) -> (hl_homotopic_paths T1160715 l1 l2 l3 = 1 <-> homotopic_paths T1160715 (hl_rep (R :^: idx T1160715) l1) f2 f3).
Admitted.

// division_of : (((real,?1343978)cart->bool)->bool)->((real,?1343978)cart->bool)->bool (not in compat.mg)
Theorem hl_division_of_compat : forall T1343978:set, T1343978 <> Empty -> forall l1 :e 2 :^: (2 :^: (R :^: idx T1343978)), forall l2 :e 2 :^: (R :^: idx T1343978), hl_division_of T1343978 l1 l2 = 1 <-> division_of T1343978 (hl_rep2 (R :^: idx T1343978) l1) (hl_rep (R :^: idx T1343978) l2).
Admitted.

// rotation_matrix : ((real,?747464)cart,?747464)cart->bool (not in compat.mg)
Theorem hl_rotation_matrix_compat : forall T747464:set, T747464 <> Empty -> forall l1 :e R :^: idx T747464 :^: idx T747464, hl_rotation_matrix T747464 l1 = 1 <-> rotation_matrix T747464 l1.
Admitted.

// face_of : ((real,?1212817)cart->bool)->((real,?1212817)cart->bool)->bool (not in compat.mg)
Theorem hl_face_of_compat : forall T1212817:set, T1212817 <> Empty -> forall l1 l2 :e 2 :^: (R :^: idx T1212817), hl_face_of T1212817 l1 l2 = 1 <-> face_of T1212817 (hl_rep (R :^: idx T1212817) l1) (hl_rep (R :^: idx T1212817) l2).
Admitted.

// dependent : ((real,?679334)cart->bool)->bool (not in compat.mg)
Theorem hl_dependent_compat : forall T679334:set, T679334 <> Empty -> forall l1 :e 2 :^: (R :^: idx T679334), hl_dependent T679334 l1 = 1 <-> dependent T679334 (hl_rep (R :^: idx T679334) l1).
Admitted.

// pathfinish : ((real,1)cart->(real,N)cart)->(real,N)cart (not in compat.mg)
Theorem hl_pathfinish_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> hl_pathfinish N l1 = pathfinish N f1.
Admitted.

// summable : (num->bool)->(num->(real,?885857)cart)->bool (not in compat.mg)
Theorem hl_summable_compat : forall T885857:set, T885857 <> Empty -> forall l1 :e 2 :^: omega, forall l2 :e R :^: idx T885857 :^: omega, forall f2:set -> set, (forall x :e omega, l2 x = f2 x) -> (hl_summable T885857 l1 l2 = 1 <-> summable T885857 (hl_rep omega l1) f2).
Admitted.

// istopology : ((?354366->bool)->bool)->bool (not in compat.mg)
Theorem hl_istopology_compat : forall T354366:set, T354366 <> Empty -> forall l1 :e 2 :^: (2 :^: T354366), hl_istopology T354366 l1 = 1 <-> istopology T354366 (hl_rep2 T354366 l1).
Admitted.

// istopology : ((?354366->bool)->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_istopology_compat_pow : forall T354366:set, T354366 <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: T354366)), hl_istopology (2 :^: T354366) l1 = 1 <-> istopology (Power T354366) (hl_rep2 (2 :^: T354366) l1).
Admitted.

// CROSS : (A->bool)->(B->bool)->A#B->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_CROSS_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: B, hl_rep (2 :^: A :*: B) (hl_CROSS (2 :^: A) B l1 l2) = hl_rep2 A l1 :*: hl_rep B l2.
Admitted.

// CROSS : (A->bool)->(B->bool)->A#B->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_CROSS_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: B), hl_rep (A :*: 2 :^: B) (hl_CROSS A (2 :^: B) l1 l2) = hl_rep A l1 :*: hl_rep2 B l2.
Admitted.

// CROSS : (A->bool)->(B->bool)->A#B->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_CROSS_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_rep (2 :^: A :*: 2 :^: B) (hl_CROSS (2 :^: A) (2 :^: B) l1 l2) = hl_rep2 A l1 :*: hl_rep2 B l2.
Admitted.

// columns : ((real,N)cart,M)cart->(real,M)cart->bool (not in compat.mg)
Theorem hl_columns_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e R :^: idx N :^: idx M, hl_rep (R :^: idx M) (hl_columns N M l1) = columns M N l1.
Admitted.

// dest_frag : A frag->A->int (not in compat.mg)
Theorem hl_dest_frag_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_frag A, hl_dest_frag A l1 = l1.
Admitted.

// open_interval : (real,N)cart#(real,N)cart->(real,N)cart->bool (not in compat.mg)
Theorem hl_open_interval_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :*: R :^: idx N, hl_rep (R :^: idx N) (hl_open_interval N l1) = open_interval N l1.
Admitted.

// _GUARDED_PATTERN : bool->bool->bool->bool (not in compat.mg)
Theorem hl__GUARDED_PATTERN_compat : hl__GUARDED_PATTERN = Empty.
Admitted.

// lift : real->(real,1)cart (not in compat.mg)
Theorem hl_lift_compat : forall l1 :e R, hl_lift l1 = lift l1.
Admitted.

// matrix_sub : ((real,N)cart,M)cart->((real,N)cart,M)cart->((real,N)cart,M)cart (not in compat.mg)
Theorem hl_matrix_sub_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 l2 :e R :^: idx N :^: idx M, hl_matrix_sub N M l1 l2 = matrix_sub M N l1 l2.
Admitted.

// relative_homology_group : int#A topology#(A->bool)->(((num->real)->A) frag->bool) group (not in compat.mg)
Theorem hl_relative_homology_group_compat : forall A:set, A <> Empty -> forall l1 :e int :*: (hl_ty_topology A :*: 2 :^: A), hl_relative_homology_group A l1 = relative_homology_group A l1.
Admitted.

// relative_homology_group : int#A topology#(A->bool)->(((num->real)->A) frag->bool) group at A := A -> bool (not in compat.mg)
Theorem hl_relative_homology_group_compat_pow : forall A:set, A <> Empty -> forall l1 :e int :*: (hl_ty_topology (2 :^: A) :*: 2 :^: (2 :^: A)), hl_relative_homology_group (2 :^: A) l1 = relative_homology_group (Power A) l1.
Admitted.

// homotopy_equivalent_space : A topology->B topology->bool (not in compat.mg)
Theorem hl_homotopy_equivalent_space_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e hl_ty_topology B, hl_homotopy_equivalent_space A B l1 l2 = 1 <-> homotopy_equivalent_space A B l1 l2.
Admitted.

// topcontinuous_at : A topology->B topology->(A->B)->A->bool (not in compat.mg)
Theorem hl_topcontinuous_at_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e hl_ty_topology B, forall l3 :e B :^: A, forall f3:set -> set, (forall x :e A, l3 x = f3 x) -> forall l4 :e A, hl_topcontinuous_at A B l1 l2 l3 l4 = 1 <-> topcontinuous_at A B l1 l2 f3 l4.
Admitted.

// topcontinuous_at : A topology->B topology->(A->B)->A->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_topcontinuous_at_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), forall l2 :e hl_ty_topology B, forall l3 :e B :^: (2 :^: A), forall f3:set -> set, (forall x :e 2 :^: A, l3 x = f3 (hl_rep A x)) -> forall l4 :e 2 :^: A, hl_topcontinuous_at (2 :^: A) B l1 l2 l3 l4 = 1 <-> topcontinuous_at (Power A) B l1 l2 f3 (hl_rep A l4).
Admitted.

// inside : ((real,N)cart->bool)->(real,N)cart->bool (not in compat.mg)
Theorem hl_inside_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_rep (R :^: idx N) (hl_inside N l1) = inside N (hl_rep (R :^: idx N) l1).
Admitted.

// relative_to : ((?233683->bool)->bool)->(?233683->bool)->(?233683->bool)->bool (not in compat.mg)
Theorem hl_relative_to_compat : forall T233683:set, T233683 <> Empty -> hl_relative_to T233683 = relative_to T233683.
Admitted.

// relative_to : ((?233683->bool)->bool)->(?233683->bool)->(?233683->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_relative_to_compat_pow : forall T233683:set, T233683 <> Empty -> hl_relative_to (2 :^: T233683) = relative_to (Power T233683).
Admitted.

// diagonal_matrix : ((real,N)cart,M)cart->bool (not in compat.mg)
Theorem hl_diagonal_matrix_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e R :^: idx N :^: idx M, hl_diagonal_matrix N M l1 = 1 <-> diagonal_matrix_hl M N l1.
Admitted.

// group_epimorphism : A group#B group->(A->B)->bool (not in compat.mg)
Theorem hl_group_epimorphism_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A :*: hl_ty_group B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_group_epimorphism A B l1 l2 = 1 <-> group_epimorphism A B l1 f2).
Admitted.

// INJN : num->num->A->bool (not in compat.mg)
Theorem hl_INJN_compat : forall A:set, A <> Empty -> hl_INJN A = Empty.
Admitted.

// INJN : num->num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_INJN_compat_pow : forall A:set, A <> Empty -> hl_INJN (2 :^: A) = Empty.
Admitted.

// cantor_set : real->bool (not in compat.mg)
Theorem hl_cantor_set_compat : hl_rep R hl_cantor_set = cantor_set.
Admitted.

// group_normalizer : A group->(A->bool)->A->bool (not in compat.mg)
Theorem hl_group_normalizer_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e 2 :^: A, hl_rep A (hl_group_normalizer A l1 l2) = group_normalizer A l1 (hl_rep A l2).
Admitted.

// group_normalizer : A group->(A->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_group_normalizer_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_group (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_rep2 A (hl_group_normalizer (2 :^: A) l1 l2) = group_normalizer (Power A) l1 (hl_rep2 A l2).
Admitted.

// span : ((real,?679316)cart->bool)->(real,?679316)cart->bool (not in compat.mg)
Theorem hl_span_compat : forall T679316:set, T679316 <> Empty -> forall l1 :e 2 :^: (R :^: idx T679316), hl_rep (R :^: idx T679316) (hl_span T679316 l1) = span T679316 (hl_rep (R :^: idx T679316) l1).
Admitted.

// indicator : ((real,M)cart->bool)->(real,M)cart->(real,1)cart (not in compat.mg)
Theorem hl_indicator_compat : forall M:set, M <> Empty -> forall l1 :e 2 :^: (R :^: idx M), forall l2 :e R :^: idx M, hl_indicator M l1 l2 = indicator M (hl_rep (R :^: idx M) l1) l2.
Admitted.

// mcomplete : A metric->bool (not in compat.mg)
Theorem hl_mcomplete_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, hl_mcomplete A l1 = 1 <-> mcomplete A l1.
Admitted.

// uniformly_continuous_on : ((real,?794338)cart->(real,?794347)cart)->((real,?794338)cart->bool)->bool (not in compat.mg)
Theorem hl_uniformly_continuous_on_compat : forall T794338 T794347:set, T794338 <> Empty -> T794347 <> Empty -> forall l1 :e R :^: idx T794347 :^: (R :^: idx T794338), forall f1:set -> set, (forall x :e R :^: idx T794338, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx T794338), hl_uniformly_continuous_on T794338 T794347 l1 l2 = 1 <-> uniformly_continuous_on_hl T794338 T794347 f1 (hl_rep (R :^: idx T794338) l2).
Admitted.

// relative_frontier : ((real,?1032900)cart->bool)->(real,?1032900)cart->bool (not in compat.mg)
Theorem hl_relative_frontier_compat : forall T1032900:set, T1032900 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1032900), hl_rep (R :^: idx T1032900) (hl_relative_frontier T1032900 l1) = relative_frontier T1032900 (hl_rep (R :^: idx T1032900) l1).
Admitted.

// ulc_space : A metric->bool (not in compat.mg)
Theorem hl_ulc_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, hl_ulc_space A l1 = 1 <-> ulc_space A l1.
Admitted.

// real_sums : (num->real)->real->(num->bool)->bool (not in compat.mg)
Theorem hl_real_sums_compat : forall l1 :e R :^: omega, forall f1:set -> set, (forall x :e omega, l1 x = f1 x) -> forall l2 :e R, forall l3 :e 2 :^: omega, hl_real_sums l1 l2 l3 = 1 <-> real_sums f1 l2 (hl_rep omega l3).
Admitted.

// regular_space : A topology->bool (not in compat.mg)
Theorem hl_regular_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_regular_space A l1 = 1 <-> regular_space A l1.
Admitted.

// pushin : num->?678191->(?678191,?678202)cart->(?678191,?678190)cart (not in compat.mg)
Theorem hl_pushin_compat : forall T678191 T678202 T678190:set, T678191 <> Empty -> T678202 <> Empty -> T678190 <> Empty -> forall l1 :e omega, forall l2 :e T678191, forall l3 :e T678191 :^: idx T678202, hl_pushin T678191 T678202 T678190 l1 l2 l3 = pushin T678190 T678191 T678202 l1 l2 l3.
Admitted.

// connected_component_of : ?428457 topology->?428457->?428457->bool (not in compat.mg)
Theorem hl_connected_component_of_compat : forall T428457:set, T428457 <> Empty -> forall l1 :e hl_ty_topology T428457, forall l2 l3 :e T428457, hl_connected_component_of T428457 l1 l2 l3 = 1 <-> connected_component_of T428457 l1 l2 l3.
Admitted.

// connected_component_of : ?428457 topology->?428457->?428457->bool at A := A -> bool (not in compat.mg)
Theorem hl_connected_component_of_compat_pow : forall T428457:set, T428457 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T428457), forall l2 l3 :e 2 :^: T428457, hl_connected_component_of (2 :^: T428457) l1 l2 l3 = 1 <-> connected_component_of (Power T428457) l1 (hl_rep T428457 l2) (hl_rep T428457 l3).
Admitted.

// closure_of : A topology->(A->bool)->A->bool (not in compat.mg)
Theorem hl_closure_of_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e 2 :^: A, hl_rep A (hl_closure_of A l1 l2) = closure_of A l1 (hl_rep A l2).
Admitted.

// closure_of : A topology->(A->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_closure_of_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_rep2 A (hl_closure_of (2 :^: A) l1 l2) = closure_of (Power A) l1 (hl_rep2 A l2).
Admitted.

// closed_segment : ((real,?760700)cart#(real,?760700)cart) list->(real,?760700)cart->bool (not in compat.mg)
Theorem hl_closed_segment_compat : forall T760700:set, T760700 <> Empty -> hl_closed_segment T760700 = closed_segment T760700.
Admitted.

// matroid_subspace : A matroid->(A->bool)->bool (not in compat.mg)
Theorem hl_matroid_subspace_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid A, forall l2 :e 2 :^: A, hl_matroid_subspace A l1 l2 = 1 <-> matroid_subspace A l1 (hl_rep A l2).
Admitted.

// matroid_subspace : A matroid->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_matroid_subspace_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_matroid_subspace (2 :^: A) l1 l2 = 1 <-> matroid_subspace (Power A) l1 (hl_rep2 A l2).
Admitted.

// mk_multivector : (num->bool)->N multivector (not in compat.mg)
Theorem hl_mk_multivector_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: omega, hl_mk_multivector N l1 = hl_rep omega l1.
Admitted.

// invertible : ((real,N)cart,M)cart->bool (not in compat.mg)
Theorem hl_invertible_compat : forall N M:set, N <> Empty -> M <> Empty -> forall l1 :e R :^: idx N :^: idx M, hl_invertible N M l1 = 1 <-> invertible M N l1.
Admitted.

// lipschitz_continuous_map : ?501997 metric#?501985 metric->(?501997->?501985)->bool (not in compat.mg)
Theorem hl_lipschitz_continuous_map_compat : forall T501997 T501985:set, T501997 <> Empty -> T501985 <> Empty -> forall l1 :e hl_ty_metric T501997 :*: hl_ty_metric T501985, forall l2 :e T501985 :^: T501997, forall f2:set -> set, (forall x :e T501997, l2 x = f2 x) -> (hl_lipschitz_continuous_map T501997 T501985 l1 l2 = 1 <-> lipschitz_continuous_map T501985 T501997 l1 f2).
Admitted.

// simple_path : ((real,1)cart->(real,N)cart)->bool (not in compat.mg)
Theorem hl_simple_path_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx 1), forall f1:set -> set, (forall x :e R :^: idx 1, l1 x = f1 x) -> (hl_simple_path N l1 = 1 <-> simple_path N f1).
Admitted.

// hausdist : ((real,N)cart->bool)#((real,N)cart->bool)->real (not in compat.mg)
Theorem hl_hausdist_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N) :*: 2 :^: (R :^: idx N), hl_hausdist N l1 = hausdist N l1.
Admitted.

// sum : (A->bool)->(A->real)->real at A := A -> bool (not in compat.mg)
Theorem hl_sum_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e R :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_sum (2 :^: A) l1 l2 = finsum (hl_rep2 A l1) f2.
Admitted.

// collinear : ((real,?712660)cart->bool)->bool (not in compat.mg)
Theorem hl_collinear_compat : forall T712660:set, T712660 <> Empty -> forall l1 :e 2 :^: (R :^: idx T712660), hl_collinear T712660 l1 = 1 <-> collinear T712660 (hl_rep (R :^: idx T712660) l1).
Admitted.

// disjoint_union : (K->bool)->(K->A->bool)->K#A->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_disjoint_union_compat_pow1 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: K), forall l2 :e 2 :^: A :^: (2 :^: K), forall f2:set -> set, (forall x :e 2 :^: K, hl_rep A (l2 x) = f2 (hl_rep K x)) -> hl_rep (2 :^: K :*: A) (hl_disjoint_union (2 :^: K) A l1 l2) = {p :e Power K :*: A | p 0 :e hl_rep2 K l1 /\ p 1 :e f2 (p 0)}.
Admitted.

// disjoint_union : (K->bool)->(K->A->bool)->K#A->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_disjoint_union_compat_pow2 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: K, forall l2 :e 2 :^: (2 :^: A) :^: K, forall f2:set -> set, (forall x :e K, hl_rep2 A (l2 x) = f2 x) -> hl_rep (K :*: 2 :^: A) (hl_disjoint_union K (2 :^: A) l1 l2) = {p :e K :*: Power A | p 0 :e hl_rep K l1 /\ p 1 :e f2 (p 0)}.
Admitted.

// disjoint_union : (K->bool)->(K->A->bool)->K#A->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_disjoint_union_compat_pow12 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: K), forall l2 :e 2 :^: (2 :^: A) :^: (2 :^: K), forall f2:set -> set, (forall x :e 2 :^: K, hl_rep2 A (l2 x) = f2 (hl_rep K x)) -> hl_rep (2 :^: K :*: 2 :^: A) (hl_disjoint_union (2 :^: K) (2 :^: A) l1 l2) = {p :e Power K :*: Power A | p 0 :e hl_rep2 K l1 /\ p 1 :e f2 (p 0)}.
Admitted.

// sum_topology : (K->bool)->(K->A topology)->(K#A) topology (not in compat.mg)
Theorem hl_sum_topology_compat : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: K, forall l2 :e hl_ty_topology A :^: K, forall f2:set -> set, (forall x :e K, l2 x = f2 x) -> hl_sum_topology K A l1 l2 = sum_topology A K (hl_rep K l1) f2.
Admitted.

// sum_topology : (K->bool)->(K->A topology)->(K#A) topology, nested at type variables 1 (not in compat.mg)
Theorem hl_sum_topology_compat_pow1 : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: K), forall l2 :e hl_ty_topology A :^: (2 :^: K), forall f2:set -> set, (forall x :e 2 :^: K, l2 x = f2 (hl_rep K x)) -> hl_sum_topology (2 :^: K) A l1 l2 = sum_topology A (Power K) (hl_rep2 K l1) f2.
Admitted.

// reversion : (real,N multivector)cart->(real,N multivector)cart (not in compat.mg)
Theorem hl_reversion_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx (hl_ty_multivector N), hl_reversion N l1 = reversion N l1.
Admitted.

// retract_of : ((real,?1260224)cart->bool)->((real,?1260224)cart->bool)->bool (not in compat.mg)
Theorem hl_retract_of_compat : forall T1260224:set, T1260224 <> Empty -> forall l1 l2 :e 2 :^: (R :^: idx T1260224), hl_retract_of T1260224 l1 l2 = 1 <-> retract_of T1260224 (hl_rep (R :^: idx T1260224) l1) (hl_rep (R :^: idx T1260224) l2).
Admitted.

// paracompact_space : A topology->bool (not in compat.mg)
Theorem hl_paracompact_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_paracompact_space A l1 = 1 <-> paracompact_space A l1.
Admitted.

// three_cycle : A->A->A->A->A (not in compat.mg)
Theorem hl_three_cycle_compat : forall A:set, A <> Empty -> forall l1 l2 l3 l4 :e A, hl_three_cycle A l1 l2 l3 l4 = three_cycle A l1 l2 l3 l4.
Admitted.

// o : (B->bool)->(A->B)->A->bool (not in compat.mg)
Theorem hl_o_compat : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e 2 :^: B, forall P1:set -> prop, (forall x :e B, l1 x = 1 <-> P1 x) -> forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall x :e A, hl_o B 2 A l1 l2 x = 1 <-> P1 (f2 x).
Admitted.

// o : (B->bool)->(A->B)->A->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_o_compat_pow1 : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: B), forall P1:set -> prop, (forall x :e 2 :^: B, l1 x = 1 <-> P1 (hl_rep B x)) -> forall l2 :e 2 :^: B :^: A, forall f2:set -> set, (forall x :e A, hl_rep B (l2 x) = f2 x) -> forall x :e A, hl_o (2 :^: B) 2 A l1 l2 x = 1 <-> P1 (f2 x).
Admitted.

// o : (B->bool)->(A->B)->A->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_o_compat_pow2 : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e 2 :^: B, forall P1:set -> prop, (forall x :e B, l1 x = 1 <-> P1 x) -> forall l2 :e B :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> forall x :e 2 :^: A, hl_o B 2 (2 :^: A) l1 l2 x = 1 <-> P1 (f2 x).
Admitted.

// o : (B->bool)->(A->B)->A->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_o_compat_pow12 : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e 2 :^: (2 :^: B), forall P1:set -> prop, (forall x :e 2 :^: B, l1 x = 1 <-> P1 (hl_rep B x)) -> forall l2 :e 2 :^: B :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, hl_rep B (l2 x) = f2 (hl_rep A x)) -> forall x :e 2 :^: A, hl_o (2 :^: B) 2 (2 :^: A) l1 l2 x = 1 <-> P1 (f2 x).
Admitted.

// o : (B->C)->(A->B)->A->C (not in compat.mg)
Theorem hl_o_compat1 : forall B C A:set, B <> Empty -> C <> Empty -> A <> Empty -> forall l1 :e C :^: B, forall f1:set -> set, (forall x :e B, l1 x = f1 x) -> forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall x :e A, hl_o B C A l1 l2 x = f1 (f2 x).
Admitted.

// subgroup_generated : A group->(A->bool)->A group (not in compat.mg)
Theorem hl_subgroup_generated_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e 2 :^: A, hl_subgroup_generated A l1 l2 = subgroup_generated A l1 (hl_rep A l2).
Admitted.

// subgroup_generated : A group->(A->bool)->A group at A := A -> bool (not in compat.mg)
Theorem hl_subgroup_generated_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_group (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_subgroup_generated (2 :^: A) l1 l2 = subgroup_generated (Power A) l1 (hl_rep2 A l2).
Admitted.

// limit : B topology->(A->B)->B->A net->bool (not in compat.mg)
Theorem hl_limit_compat : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall l3 :e B, forall l4 :e hl_ty_net A, hl_limit B A l1 l2 l3 l4 = 1 <-> limit A B l1 f2 l3 l4.
Admitted.

// group_operations : A group->(A->bool)#A#(A->A)#(A->A->A) (not in compat.mg)
Theorem hl_group_operations_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, hl_group_operations A l1 = l1.
Admitted.

// group_operations : A group->(A->bool)#A#(A->A)#(A->A->A) at A := A -> bool (not in compat.mg)
Theorem hl_group_operations_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_group (2 :^: A), hl_group_operations (2 :^: A) l1 = l1.
Admitted.

// weakly_locally_path_connected_at : ?480841->?480841 topology->bool (not in compat.mg)
Theorem hl_weakly_locally_path_connected_at_compat : forall T480841:set, T480841 <> Empty -> forall l1 :e T480841, forall l2 :e hl_ty_topology T480841, hl_weakly_locally_path_connected_at T480841 l1 l2 = 1 <-> weakly_locally_path_connected_at T480841 l1 l2.
Admitted.

// ASSOC : A->(A#B) list->B (not in compat.mg)
Theorem hl_ASSOC_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A, forall l2 :e finseq (A :*: B), hl_ASSOC A B l1 l2 = seq_assoc l1 l2.
Admitted.

// group_setinv : ?283516 group->(?283516->bool)->?283516->bool (not in compat.mg)
Theorem hl_group_setinv_compat : forall T283516:set, T283516 <> Empty -> forall l1 :e hl_ty_group T283516, forall l2 :e 2 :^: T283516, hl_rep T283516 (hl_group_setinv T283516 l1 l2) = group_setinv T283516 l1 (hl_rep T283516 l2).
Admitted.

// group_setinv : ?283516 group->(?283516->bool)->?283516->bool at A := A -> bool (not in compat.mg)
Theorem hl_group_setinv_compat_pow : forall T283516:set, T283516 <> Empty -> forall l1 :e hl_ty_group (2 :^: T283516), forall l2 :e 2 :^: (2 :^: T283516), hl_rep2 T283516 (hl_group_setinv (2 :^: T283516) l1 l2) = group_setinv (Power T283516) l1 (hl_rep2 T283516 l2).
Admitted.

// closed_real_interval : (real#real) list->real->bool (not in compat.mg)
Theorem hl_closed_real_interval_compat : hl_closed_real_interval = closed_real_interval.
Admitted.

// netfilter : A net->(A->bool)->bool (not in compat.mg)
Theorem hl_netfilter_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_net A, hl_rep2 A (hl_netfilter A l1) = netfilter A l1.
Admitted.

// netfilter : A net->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_netfilter_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_net (2 :^: A), hl_rep2 (2 :^: A) (hl_netfilter (2 :^: A) l1) = netfilter (Power A) l1.
Admitted.

// outer : (real,N multivector)cart->(real,N multivector)cart->(real,N multivector)cart (not in compat.mg)
Theorem hl_outer_compat : forall N:set, N <> Empty -> forall l1 l2 :e R :^: idx (hl_ty_multivector N), hl_outer N l1 l2 = outer N l1 l2.
Admitted.

// matrix : ((real,M)cart->(real,N)cart)->((real,M)cart,N)cart (not in compat.mg)
Theorem hl_matrix_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx M), forall f1:set -> set, (forall x :e R :^: idx M, l1 x = f1 x) -> hl_matrix M N l1 = matrix M N f1.
Admitted.

// at_infinity : (real,?771818)cart net (not in compat.mg)
Theorem hl_at_infinity_compat : forall T771818:set, T771818 <> Empty -> hl_at_infinity T771818 = at_infinity T771818.
Admitted.

// at : (real,?771775)cart->(real,?771775)cart net (not in compat.mg)
Theorem hl_at_compat : forall T771775:set, T771775 <> Empty -> forall l1 :e R :^: idx T771775, hl_at T771775 l1 = at_hl T771775 l1.
Admitted.

// convex_on : ((real,?978143)cart->real)->((real,?978143)cart->bool)->bool (not in compat.mg)
Theorem hl_convex_on_compat : forall T978143:set, T978143 <> Empty -> forall l1 :e R :^: (R :^: idx T978143), forall f1:set -> set, (forall x :e R :^: idx T978143, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx T978143), hl_convex_on T978143 l1 l2 = 1 <-> convex_on T978143 f1 (hl_rep (R :^: idx T978143) l2).
Admitted.

// manhattan : (real,N)cart metric (not in compat.mg)
Theorem hl_manhattan_compat : forall N:set, N <> Empty -> hl_manhattan N = manhattan N.
Admitted.

// independent : ((real,?679344)cart->bool)->bool (not in compat.mg)
Theorem hl_independent_compat : forall T679344:set, T679344 <> Empty -> forall l1 :e 2 :^: (R :^: idx T679344), hl_independent T679344 l1 = 1 <-> independent T679344 (hl_rep (R :^: idx T679344) l1).
Admitted.

// within : ?410361 net->(?410361->bool)->?410361 net (not in compat.mg)
Theorem hl_within_compat : forall T410361:set, T410361 <> Empty -> forall l1 :e hl_ty_net T410361, forall l2 :e 2 :^: T410361, hl_within T410361 l1 l2 = within T410361 l1 (hl_rep T410361 l2).
Admitted.

// within : ?410361 net->(?410361->bool)->?410361 net at A := A -> bool (not in compat.mg)
Theorem hl_within_compat_pow : forall T410361:set, T410361 <> Empty -> forall l1 :e hl_ty_net (2 :^: T410361), forall l2 :e 2 :^: (2 :^: T410361), hl_within (2 :^: T410361) l1 l2 = within (Power T410361) l1 (hl_rep2 T410361 l2).
Admitted.

// INJA : A->num->A->bool (not in compat.mg)
Theorem hl_INJA_compat : forall A:set, A <> Empty -> hl_INJA A = Empty.
Admitted.

// INJA : A->num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_INJA_compat_pow : forall A:set, A <> Empty -> hl_INJA (2 :^: A) = Empty.
Admitted.

// path_component : ((real,?1087099)cart->bool)->(real,?1087099)cart->(real,?1087099)cart->bool (not in compat.mg)
Theorem hl_path_component_compat : forall T1087099:set, T1087099 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1087099), forall l2 l3 :e R :^: idx T1087099, hl_path_component T1087099 l1 l2 l3 = 1 <-> path_component T1087099 (hl_rep (R :^: idx T1087099) l1) l2 l3.
Admitted.

// NUMLEFT : num->bool (not in compat.mg)
Theorem hl_NUMLEFT_compat : hl_NUMLEFT = Empty.
Admitted.

// euclideanreal : real topology (not in compat.mg)
Theorem hl_euclideanreal_compat : hl_euclideanreal = euclideanreal.
Admitted.

// finitely_generated_group : A group->bool (not in compat.mg)
Theorem hl_finitely_generated_group_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, hl_finitely_generated_group A l1 = 1 <-> finitely_generated_group_hl A l1.
Admitted.

// borel : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_borel_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_borel N l1 = 1 <-> borel N (hl_rep (R :^: idx N) l1).
Admitted.

// <_c : (A->bool)->(B->bool)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_sym_3c5f63_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: B, hl_sym_3c5f63 (2 :^: A) B l1 l2 = 1 <-> atleastp (hl_rep2 A l1) (hl_rep B l2) /\ ~ equip (hl_rep2 A l1) (hl_rep B l2).
Admitted.

// <_c : (A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_3c5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_sym_3c5f63 (2 :^: A) (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep2 A l1) (hl_rep2 B l2) /\ ~ equip (hl_rep2 A l1) (hl_rep2 B l2).
Admitted.

// basis : num->(real,?661278)cart (not in compat.mg)
Theorem hl_basis_compat : forall T661278:set, T661278 <> Empty -> forall l1 :e omega, hl_basis T661278 l1 = basis T661278 l1.
Admitted.

// group_zpow : A group->A->int->A (not in compat.mg)
Theorem hl_group_zpow_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e A, forall l3 :e int, hl_group_zpow A l1 l2 l3 = group_zpow A l1 l2 l3.
Admitted.

// =_c : (A->bool)->(B->bool)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_sym_3d5f63_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: B, hl_sym_3d5f63 (2 :^: A) B l1 l2 = 1 <-> equip (hl_rep2 A l1) (hl_rep B l2).
Admitted.

// =_c : (A->bool)->(B->bool)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_sym_3d5f63_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: B), hl_sym_3d5f63 A (2 :^: B) l1 l2 = 1 <-> equip (hl_rep A l1) (hl_rep2 B l2).
Admitted.

// =_c : (A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_3d5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_sym_3d5f63 (2 :^: A) (2 :^: B) l1 l2 = 1 <-> equip (hl_rep2 A l1) (hl_rep2 B l2).
Admitted.

// from : num->num->bool (not in compat.mg)
Theorem hl_from_compat : forall l1 :e omega, hl_rep omega (hl_from l1) = from l1.
Admitted.

// reflect_along : (real,N)cart->(real,N)cart->(real,N)cart (not in compat.mg)
Theorem hl_reflect_along_compat : forall N:set, N <> Empty -> forall l1 l2 :e R :^: idx N, hl_reflect_along N l1 l2 = reflect_along N l1 l2.
Admitted.

// solvable_group : A group->bool (not in compat.mg)
Theorem hl_solvable_group_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, hl_solvable_group A l1 = 1 <-> solvable_group A l1.
Admitted.

// list_of_set : (A->bool)->A list at A := A -> bool (not in compat.mg)
Theorem hl_list_of_set_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_list_of_set (2 :^: A) l1 = choose_in (finseq (Power A)) (fun l:set => seq_set l = hl_rep2 A l1 /\ seq_len l = finite_cardinality (hl_rep2 A l1)).
Admitted.

// group_setmul : ?283545 group->(?283545->bool)->(?283545->bool)->?283545->bool (not in compat.mg)
Theorem hl_group_setmul_compat : forall T283545:set, T283545 <> Empty -> forall l1 :e hl_ty_group T283545, forall l2 l3 :e 2 :^: T283545, hl_rep T283545 (hl_group_setmul T283545 l1 l2 l3) = group_setmul T283545 l1 (hl_rep T283545 l2) (hl_rep T283545 l3).
Admitted.

// group_setmul : ?283545 group->(?283545->bool)->(?283545->bool)->?283545->bool at A := A -> bool (not in compat.mg)
Theorem hl_group_setmul_compat_pow : forall T283545:set, T283545 <> Empty -> forall l1 :e hl_ty_group (2 :^: T283545), forall l2 l3 :e 2 :^: (2 :^: T283545), hl_rep2 T283545 (hl_group_setmul (2 :^: T283545) l1 l2 l3) = group_setmul (Power T283545) l1 (hl_rep2 T283545 l2) (hl_rep2 T283545 l3).
Admitted.

// ^_c : (A->bool)->(B->bool)->(B->A)->bool (not in compat.mg)
Theorem hl_sym_5e5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_rep (A :^: B) (hl_sym_5e5f63 A B l1 l2) = {f :e A :^: B | (forall x :e hl_rep B l2, f x :e hl_rep A l1) /\ forall x :e B, ~ x :e hl_rep B l2 -> f x = choose_in A (fun y:set => False)}.
Admitted.

// ^_c : (A->bool)->(B->bool)->(B->A)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_sym_5e5f63_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: B, hl_rep (2 :^: A :^: B) (hl_sym_5e5f63 (2 :^: A) B l1 l2) = {f :e Power A :^: B | (forall x :e hl_rep B l2, f x :e hl_rep2 A l1) /\ forall x :e B, ~ x :e hl_rep B l2 -> f x = choose_in (Power A) (fun y:set => False)}.
Admitted.

// ^_c : (A->bool)->(B->bool)->(B->A)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_sym_5e5f63_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: B), hl_rep (A :^: (2 :^: B)) (hl_sym_5e5f63 A (2 :^: B) l1 l2) = {f :e A :^: Power B | (forall x :e hl_rep2 B l2, f x :e hl_rep A l1) /\ forall x :e Power B, ~ x :e hl_rep2 B l2 -> f x = choose_in A (fun y:set => False)}.
Admitted.

// ^_c : (A->bool)->(B->bool)->(B->A)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_5e5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_rep (2 :^: A :^: (2 :^: B)) (hl_sym_5e5f63 (2 :^: A) (2 :^: B) l1 l2) = {f :e Power A :^: Power B | (forall x :e hl_rep2 B l2, f x :e hl_rep2 A l1) /\ forall x :e Power B, ~ x :e hl_rep2 B l2 -> f x = choose_in (Power A) (fun y:set => False)}.
Admitted.

// RESTRICTION : (A->bool)->(A->B)->A->B, nested at type variables 1 (not in compat.mg)
Theorem hl_RESTRICTION_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e B :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> forall x :e 2 :^: A, hl_RESTRICTION (2 :^: A) B l1 l2 x = if x :e hl_rep2 A l1 then f2 x else choose_in B (fun y:set => False).
Admitted.

// completely_metrizable_space : ?499501 topology->bool (not in compat.mg)
Theorem hl_completely_metrizable_space_compat : forall T499501:set, T499501 <> Empty -> forall l1 :e hl_ty_topology T499501, hl_completely_metrizable_space T499501 l1 = 1 <-> completely_metrizable_space T499501 l1.
Admitted.

// retract_of_space : (A->bool)->A topology->bool (not in compat.mg)
Theorem hl_retract_of_space_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e hl_ty_topology A, hl_retract_of_space A l1 l2 = 1 <-> retract_of_space A (hl_rep A l1) l2.
Admitted.

// retract_of_space : (A->bool)->A topology->bool at A := A -> bool (not in compat.mg)
Theorem hl_retract_of_space_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e hl_ty_topology (2 :^: A), hl_retract_of_space (2 :^: A) l1 l2 = 1 <-> retract_of_space (Power A) (hl_rep2 A l1) l2.
Admitted.

// matroid_finite_dimensional : A matroid->bool (not in compat.mg)
Theorem hl_matroid_finite_dimensional_compat : forall A:set, A <> Empty -> hl_matroid_finite_dimensional A = matroid_finite_dimensional A.
Admitted.

// euclidean_metric : (real,N)cart metric (not in compat.mg)
Theorem hl_euclidean_metric_compat : forall N:set, N <> Empty -> hl_euclidean_metric N = euclidean_metric N.
Admitted.

// quotient_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_quotient_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_quotient_map A B l1 l2 = 1 <-> quotient_map A B l1 f2).
Admitted.

// group_neg : ?261264 group->?261264->?261264 (not in compat.mg)
Theorem hl_group_neg_compat : forall T261264:set, T261264 <> Empty -> forall l1 :e hl_ty_group T261264, forall l2 :e T261264, hl_group_neg T261264 l1 l2 = group_neg T261264 l1 l2.
Admitted.

// rowvector : (real,N)cart->((real,N)cart,1)cart (not in compat.mg)
Theorem hl_rowvector_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N, hl_rowvector N l1 = rowvector N l1.
Admitted.

// frag_of : A->A frag (not in compat.mg)
Theorem hl_frag_of_compat : forall A:set, A <> Empty -> forall l1 :e A, hl_frag_of A l1 = frag_of A l1.
Admitted.

// in_direction : (real,?771951)cart->(real,?771951)cart->(real,?771951)cart net (not in compat.mg)
Theorem hl_in_direction_compat : forall T771951:set, T771951 <> Empty -> forall l1 l2 :e R :^: idx T771951, hl_in_direction T771951 l1 l2 = in_direction T771951 l1 l2.
Admitted.

// matroid_finite_dim : A matroid->(A->bool)->bool (not in compat.mg)
Theorem hl_matroid_finite_dim_compat : forall A:set, A <> Empty -> hl_matroid_finite_dim A = matroid_finite_dim A.
Admitted.

// matroid_finite_dim : A matroid->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_matroid_finite_dim_compat_pow : forall A:set, A <> Empty -> hl_matroid_finite_dim (2 :^: A) = matroid_finite_dim (Power A).
Admitted.

// group_isomorphism : A group#B group->(A->B)->bool (not in compat.mg)
Theorem hl_group_isomorphism_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A :*: hl_ty_group B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_group_isomorphism A B l1 l2 = 1 <-> group_isomorphism_hl A B l1 f2).
Admitted.

// ALL2 : (A->B->bool)->A list->B list->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_ALL2_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: B) :^: A, forall P1:set -> set -> prop, (forall x :e A, forall y :e 2 :^: B, l1 x y = 1 <-> P1 x (hl_rep B y)) -> forall l2 :e finseq A, forall l3 :e finseq (2 :^: B), hl_ALL2 A (2 :^: B) l1 l2 l3 = 1 <-> seq_all2 P1 l2 l3.
Admitted.

// isum : (A->bool)->(A->int)->int at A := A -> bool (not in compat.mg)
Theorem hl_isum_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e int :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_isum (2 :^: A) l1 l2 = finsum (hl_rep2 A l1) f2.
Admitted.

// jacobian : ((real,?1302324)cart->(real,?1302325)cart)->(real,?1302324)cart net->((real,?1302324)cart,?1302325)cart (not in compat.mg)
Theorem hl_jacobian_compat : forall T1302324 T1302325:set, T1302324 <> Empty -> T1302325 <> Empty -> forall l1 :e R :^: idx T1302325 :^: (R :^: idx T1302324), forall f1:set -> set, (forall x :e R :^: idx T1302324, l1 x = f1 x) -> forall l2 :e hl_ty_net (R :^: idx T1302324), hl_jacobian T1302324 T1302325 l1 l2 = jacobian T1302324 T1302325 f1 l2.
Admitted.

// metrizable_space : ?420813 topology->bool (not in compat.mg)
Theorem hl_metrizable_space_compat : forall T420813:set, T420813 <> Empty -> forall l1 :e hl_ty_topology T420813, hl_metrizable_space T420813 l1 = 1 <-> metrizable_space T420813 l1.
Admitted.

// ZCONSTR : num->A->(num->num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_ZCONSTR_compat : forall A:set, A <> Empty -> hl_ZCONSTR A = Empty.
Admitted.

// ZCONSTR : num->A->(num->num->A->bool)->num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_ZCONSTR_compat_pow : forall A:set, A <> Empty -> hl_ZCONSTR (2 :^: A) = Empty.
Admitted.

// topspace : ?354428 topology->?354428->bool (not in compat.mg)
Theorem hl_topspace_compat : forall T354428:set, T354428 <> Empty -> forall l1 :e hl_ty_topology T354428, hl_rep T354428 (hl_topspace T354428 l1) = topspace T354428 l1.
Admitted.

// topspace : ?354428 topology->?354428->bool at A := A -> bool (not in compat.mg)
Theorem hl_topspace_compat_pow : forall T354428:set, T354428 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T354428), hl_rep2 T354428 (hl_topspace (2 :^: T354428) l1) = topspace (Power T354428) l1.
Admitted.

// content : ((real,M)cart->bool)->real (not in compat.mg)
Theorem hl_content_compat : forall M:set, M <> Empty -> forall l1 :e 2 :^: (R :^: idx M), hl_content M l1 = content M (hl_rep (R :^: idx M) l1).
Admitted.

// frag_0 : A frag (not in compat.mg)
Theorem hl_frag_0_compat : forall A:set, A <> Empty -> hl_frag_0 A = frag_0 A.
Admitted.

// trace : ((real,N)cart,N)cart->real (not in compat.mg)
Theorem hl_trace_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: idx N, hl_trace N l1 = trace N l1.
Admitted.

// ITSET : (A->B->B)->(A->bool)->B->B (not in compat.mg)
Theorem hl_ITSET_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e 2 :^: A, forall l3 :e B, hl_ITSET A B l1 l2 l3 = set_foldr f1 (hl_rep A l2) l3.
Admitted.

// ITSET : (A->B->B)->(A->bool)->B->B, nested at type variables 1 (not in compat.mg)
Theorem hl_ITSET_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: B :^: (2 :^: A), forall f1:set -> set -> set, (forall x :e 2 :^: A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e 2 :^: (2 :^: A), forall l3 :e B, hl_ITSET (2 :^: A) B l1 l2 l3 = set_foldr f1 (hl_rep2 A l2) l3.
Admitted.

// PAIRWISE : (A->A->bool)->A list->bool at A := A -> bool (not in compat.mg)
Theorem hl_PAIRWISE_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> forall l2 :e finseq (2 :^: A), hl_PAIRWISE (2 :^: A) l1 l2 = 1 <-> seq_pairwise P1 l2.
Admitted.

// borel_measurable_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_borel_measurable_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_borel_measurable_map A B l1 l2 = 1 <-> borel_measurable_map A B l1 f2).
Admitted.

// group_conjugation : ?267893 group->?267893->?267893->?267893 (not in compat.mg)
Theorem hl_group_conjugation_compat : forall T267893:set, T267893 <> Empty -> forall l1 :e hl_ty_group T267893, forall l2 l3 :e T267893, hl_group_conjugation T267893 l1 l2 l3 = group_conjugation T267893 l1 l2 l3.
Admitted.

// FILTER : (A->bool)->A list->A list at A := A -> bool (not in compat.mg)
Theorem hl_FILTER_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall P1:set -> prop, (forall x :e 2 :^: A, l1 x = 1 <-> P1 (hl_rep A x)) -> forall l2 :e finseq (2 :^: A), hl_FILTER (2 :^: A) l1 l2 = seq_filter P1 l2.
Admitted.

// closed_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_closed_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_closed_map A B l1 l2 = 1 <-> closed_map A B l1 f2).
Admitted.

// ALLPAIRS : (A->B->bool)->A list->B list->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_ALLPAIRS_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: B) :^: A, forall P1:set -> set -> prop, (forall x :e A, forall y :e 2 :^: B, l1 x y = 1 <-> P1 x (hl_rep B y)) -> forall l2 :e finseq A, forall l3 :e finseq (2 :^: B), hl_ALLPAIRS A (2 :^: B) l1 l2 l3 = 1 <-> forall i :e seq_len l2, forall j :e seq_len l3, P1 (seq_nth l2 i) (seq_nth l3 j).
Admitted.

// setcode : (num->bool)->num (not in compat.mg)
Theorem hl_setcode_compat : forall l1 :e 2 :^: omega, hl_setcode l1 = setcode (hl_rep omega l1).
Admitted.

// INTERSECTION_OF : (((A->bool)->bool)->bool)->((A->bool)->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_INTERSECTION_OF_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: (2 :^: A))), forall P1:set -> prop, (forall x :e 2 :^: (2 :^: (2 :^: A)), l1 x = 1 <-> P1 (hl_rep2 (2 :^: A) x)) -> forall l2 :e 2 :^: (2 :^: (2 :^: A)), forall P2:set -> prop, (forall x :e 2 :^: (2 :^: A), l2 x = 1 <-> P2 (hl_rep2 A x)) -> forall l3 :e 2 :^: (2 :^: A), hl_INTERSECTION_OF (2 :^: A) l1 l2 l3 = 1 <-> exists u c= Power (Power A), P1 u /\ (forall c :e u, P2 c) /\ {x :e Power A | forall Y :e u, x :e Y} = hl_rep2 A l3.
Admitted.

// cauchy_in : A metric->(num->A)->bool (not in compat.mg)
Theorem hl_cauchy_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e A :^: omega, forall f2:set -> set, (forall x :e omega, l2 x = f2 x) -> (hl_cauchy_in A l1 l2 = 1 <-> cauchy_in A l1 f2).
Admitted.

// hom_relboundary : int->A topology#(A->bool)#(A->bool)->(((num->real)->A) frag->bool)->((num->real)->A) frag->bool (not in compat.mg)
Theorem hl_hom_relboundary_compat : forall A:set, A <> Empty -> forall l1 :e int, forall l2 :e hl_ty_topology A :*: (2 :^: A :*: 2 :^: A), forall x :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_hom_relboundary A l1 l2 x = hom_relboundary A l1 l2 x.
Admitted.

// hom_relboundary : int->A topology#(A->bool)#(A->bool)->(((num->real)->A) frag->bool)->((num->real)->A) frag->bool at A := A -> bool (not in compat.mg)
Theorem hl_hom_relboundary_compat_pow : forall A:set, A <> Empty -> forall l1 :e int, forall l2 :e hl_ty_topology (2 :^: A) :*: (2 :^: (2 :^: A) :*: 2 :^: (2 :^: A)), forall x :e 2 :^: hl_ty_frag (2 :^: A :^: (R :^: omega)), hl_hom_relboundary (2 :^: A) l1 l2 x = hom_relboundary (Power A) l1 l2 x.
Admitted.

// mdist : A metric->A#A->real (not in compat.mg)
Theorem hl_mdist_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall x :e A :*: A, hl_mdist A l1 x = mdist A l1 x.
Admitted.

// dim : ((real,N)cart->bool)->num (not in compat.mg)
Theorem hl_dim_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_dim N l1 = dim N (hl_rep (R :^: idx N) l1).
Admitted.

// linear : ((real,M)cart->(real,N)cart)->bool (not in compat.mg)
Theorem hl_linear_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx M), forall f1:set -> set, (forall x :e R :^: idx M, l1 x = f1 x) -> (hl_linear M N l1 = 1 <-> linear M N f1).
Admitted.

// support : (B->B->B)->(A->B)->(A->bool)->A->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_support_compat_pow2 : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e B :^: B :^: B, forall f1:set -> set -> set, (forall x y :e B, l1 x y = f1 x y) -> forall l2 :e B :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> forall l3 :e 2 :^: (2 :^: A), hl_rep2 A (hl_support B (2 :^: A) l1 l2 l3) = {x :e hl_rep2 A l3 | f2 x <> neutral_of B (fun a:set => fun b:set => f1 a b)}.
Admitted.

// set_variation : ((real,M)cart->bool)->(((real,M)cart->bool)->(real,N)cart)->real (not in compat.mg)
Theorem hl_set_variation_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e 2 :^: (R :^: idx M), forall l2 :e R :^: idx N :^: (2 :^: (R :^: idx M)), forall f2:set -> set, (forall x :e 2 :^: (R :^: idx M), l2 x = f2 (hl_rep (R :^: idx M) x)) -> hl_set_variation M N l1 l2 = set_variation M N (hl_rep (R :^: idx M) l1) f2.
Admitted.

// woset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_woset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_woset A l1 = 1 <-> woset_on A P1).
Admitted.

// woset : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_woset_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_woset (2 :^: A) l1 = 1 <-> woset_on (Power A) P1).
Admitted.

// poset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_poset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_poset A l1 = 1 <-> poset_on A P1).
Admitted.

// poset : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_poset_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_poset (2 :^: A) l1 = 1 <-> poset_on (Power A) P1).
Admitted.

// interval_bij : (real,N)cart#(real,N)cart->(real,N)cart#(real,N)cart->(real,N)cart->(real,N)cart (not in compat.mg)
Theorem hl_interval_bij_compat : forall N:set, N <> Empty -> forall l1 l2 :e R :^: idx N :*: R :^: idx N, forall l3 :e R :^: idx N, hl_interval_bij N l1 l2 l3 = interval_bij N l1 l2 l3.
Admitted.

// simplicial_subdivision : num->((num->real)->num->real) frag->((num->real)->num->real) frag (not in compat.mg)
Theorem hl_simplicial_subdivision_compat : hl_simplicial_subdivision = simplicial_subdivision.
Admitted.

// real_compact : (real->bool)->bool (not in compat.mg)
Theorem hl_real_compact_compat : forall l1 :e 2 :^: R, hl_real_compact l1 = 1 <-> real_compact (hl_rep R l1).
Admitted.

// integrable_on : ((real,?1351842)cart->(real,?1351841)cart)->((real,?1351842)cart->bool)->bool (not in compat.mg)
Theorem hl_integrable_on_compat : forall T1351842 T1351841:set, T1351842 <> Empty -> T1351841 <> Empty -> forall l1 :e R :^: idx T1351841 :^: (R :^: idx T1351842), forall f1:set -> set, (forall x :e R :^: idx T1351842, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx T1351842), hl_integrable_on T1351842 T1351841 l1 l2 = 1 <-> integrable_on T1351841 T1351842 f1 (hl_rep (R :^: idx T1351842) l2).
Admitted.

// group_pow : ?259428 group->?259428->num->?259428 (not in compat.mg)
Theorem hl_group_pow_compat : forall T259428:set, T259428 <> Empty -> hl_group_pow T259428 = group_pow T259428.
Admitted.

// _FALSITY_ : bool (not in compat.mg)
Theorem hl__FALSITY__compat : hl__FALSITY_ = Empty.
Admitted.

// group_conjugate : A group->(A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_group_conjugate_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_group A, forall l2 l3 :e 2 :^: A, hl_group_conjugate A l1 l2 l3 = 1 <-> group_conjugate A l1 (hl_rep A l2) (hl_rep A l3).
Admitted.

// group_conjugate : A group->(A->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_group_conjugate_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_group (2 :^: A), forall l2 l3 :e 2 :^: (2 :^: A), hl_group_conjugate (2 :^: A) l1 l2 l3 = 1 <-> group_conjugate (Power A) l1 (hl_rep2 A l2) (hl_rep2 A l3).
Admitted.

// INJ : (A->B)->(A->bool)->(B->bool)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_INJ_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: (2 :^: A), forall f1:set -> set, (forall x :e 2 :^: A, l1 x = f1 (hl_rep A x)) -> forall l2 :e 2 :^: (2 :^: A), forall l3 :e 2 :^: B, hl_INJ (2 :^: A) B l1 l2 l3 = 1 <-> inj (hl_rep2 A l2) (hl_rep B l3) f1.
Admitted.

// INJ : (A->B)->(A->bool)->(B->bool)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_INJ_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: B :^: A, forall f1:set -> set, (forall x :e A, hl_rep B (l1 x) = f1 x) -> forall l2 :e 2 :^: A, forall l3 :e 2 :^: (2 :^: B), hl_INJ A (2 :^: B) l1 l2 l3 = 1 <-> inj (hl_rep A l2) (hl_rep2 B l3) f1.
Admitted.

// INJ : (A->B)->(A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_INJ_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: B :^: (2 :^: A), forall f1:set -> set, (forall x :e 2 :^: A, hl_rep B (l1 x) = f1 (hl_rep A x)) -> forall l2 :e 2 :^: (2 :^: A), forall l3 :e 2 :^: (2 :^: B), hl_INJ (2 :^: A) (2 :^: B) l1 l2 l3 = 1 <-> inj (hl_rep2 A l2) (hl_rep2 B l3) f1.
Admitted.

// path_connected_space : A topology->bool (not in compat.mg)
Theorem hl_path_connected_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_path_connected_space A l1 = 1 <-> path_connected_space A l1.
Admitted.

// analytic : ((real,?959344)cart->bool)->bool (not in compat.mg)
Theorem hl_analytic_compat : forall T959344:set, T959344 <> Empty -> forall l1 :e 2 :^: (R :^: idx T959344), hl_analytic T959344 l1 = 1 <-> analytic T959344 (hl_rep (R :^: idx T959344) l1).
Admitted.

// t1_space : ?393963 topology->bool (not in compat.mg)
Theorem hl_t1_space_compat : forall T393963:set, T393963 <> Empty -> forall l1 :e hl_ty_topology T393963, hl_t1_space T393963 l1 = 1 <-> t1_space T393963 l1.
Admitted.

// fccoverable_in : A metric->(A->bool)->bool (not in compat.mg)
Theorem hl_fccoverable_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e 2 :^: A, hl_fccoverable_in A l1 l2 = 1 <-> fccoverable_in A l1 (hl_rep A l2).
Admitted.

// fccoverable_in : A metric->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_fccoverable_in_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_fccoverable_in (2 :^: A) l1 l2 = 1 <-> fccoverable_in (Power A) l1 (hl_rep2 A l2).
Admitted.

// mtopology : A metric->A topology (not in compat.mg)
Theorem hl_mtopology_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, hl_mtopology A l1 = mtopology A l1.
Admitted.

// ball : (real,?757203)cart#real->(real,?757203)cart->bool (not in compat.mg)
Theorem hl_ball_compat : forall T757203:set, T757203 <> Empty -> forall l1 :e R :^: idx T757203 :*: R, hl_rep (R :^: idx T757203) (hl_ball T757203 l1) = ball T757203 l1.
Admitted.

// _SEQPATTERN : (A->B->bool)->(A->B->bool)->A->B->bool (not in compat.mg)
Theorem hl__SEQPATTERN_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__SEQPATTERN A B = Empty.
Admitted.

// _SEQPATTERN : (A->B->bool)->(A->B->bool)->A->B->bool, nested at type variables 2 (not in compat.mg)
Theorem hl__SEQPATTERN_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> hl__SEQPATTERN A (2 :^: B) = Empty.
Admitted.

// open_in : A topology->(A->bool)->bool (not in compat.mg)
Theorem hl_open_in_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_open_in A l1 = l1.
Admitted.

// open_in : A topology->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_open_in_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), hl_open_in (2 :^: A) l1 = l1.
Admitted.

// retraction_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_retraction_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_retraction_map A B l1 l2 = 1 <-> retraction_map A B l1 f2).
Admitted.

// open : ((real,?755435)cart->bool)->bool (not in compat.mg)
Theorem hl_open_compat : forall T755435:set, T755435 <> Empty -> forall l1 :e 2 :^: (R :^: idx T755435), hl_open T755435 l1 = 1 <-> open T755435 (hl_rep (R :^: idx T755435) l1).
Admitted.

// free_abelian_group : (A->bool)->A frag group (not in compat.mg)
Theorem hl_free_abelian_group_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_free_abelian_group A l1 = free_abelian_group A (hl_rep A l1).
Admitted.

// free_abelian_group : (A->bool)->A frag group at A := A -> bool (not in compat.mg)
Theorem hl_free_abelian_group_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_free_abelian_group (2 :^: A) l1 = free_abelian_group (Power A) (hl_rep2 A l1).
Admitted.

// ordinal : (A->A->bool)->bool (not in compat.mg)
Theorem hl_ordinal_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_ordinal A l1 = 1 <-> ordinal_on A P1).
Admitted.

// ordinal : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_ordinal_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_ordinal (2 :^: A) l1 = 1 <-> ordinal_on (Power A) P1).
Admitted.

// closed_in : ?354731 topology->(?354731->bool)->bool (not in compat.mg)
Theorem hl_closed_in_compat : forall T354731:set, T354731 <> Empty -> forall l1 :e hl_ty_topology T354731, forall l2 :e 2 :^: T354731, hl_closed_in T354731 l1 l2 = 1 <-> closed_in T354731 l1 (hl_rep T354731 l2).
Admitted.

// closed_in : ?354731 topology->(?354731->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_closed_in_compat_pow : forall T354731:set, T354731 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T354731), forall l2 :e 2 :^: (2 :^: T354731), hl_closed_in (2 :^: T354731) l1 l2 = 1 <-> closed_in (Power T354731) l1 (hl_rep2 T354731 l2).
Admitted.

// atpointof : ?445254 topology->?445254->?445254 net (not in compat.mg)
Theorem hl_atpointof_compat : forall T445254:set, T445254 <> Empty -> forall l1 :e hl_ty_topology T445254, forall l2 :e T445254, hl_atpointof T445254 l1 l2 = atpointof T445254 l1 l2.
Admitted.

// homeomorphic_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_homeomorphic_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_homeomorphic_map A B l1 l2 = 1 <-> homeomorphic_map A B l1 f2).
Admitted.

// group_orbit : A group->(X->bool)->(A->X->X)->X->X->bool (not in compat.mg)
Theorem hl_group_orbit_compat : forall A X:set, A <> Empty -> X <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e 2 :^: X, forall l3 :e X :^: X :^: A, forall f3:set -> set -> set, (forall x :e A, forall y :e X, l3 x y = f3 x y) -> forall l4 l5 :e X, hl_group_orbit A X l1 l2 l3 l4 l5 = 1 <-> group_orbit A X l1 (hl_rep X l2) f3 l4 l5.
Admitted.

// group_orbit : A group->(X->bool)->(A->X->X)->X->X->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_group_orbit_compat_pow2 : forall A X:set, A <> Empty -> X <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e 2 :^: (2 :^: X), forall l3 :e 2 :^: X :^: (2 :^: X) :^: A, forall f3:set -> set -> set, (forall x :e A, forall y :e 2 :^: X, l3 x y = f3 x y) -> forall l4 l5 :e 2 :^: X, hl_group_orbit A (2 :^: X) l1 l2 l3 l4 l5 = 1 <-> group_orbit A (Power X) l1 (hl_rep2 X l2) f3 (hl_rep X l4) (hl_rep X l5).
Admitted.

// absolutely_integrable_on : ((real,?1400469)cart->(real,?1400464)cart)->((real,?1400469)cart->bool)->bool (not in compat.mg)
Theorem hl_absolutely_integrable_on_compat : forall T1400469 T1400464:set, T1400469 <> Empty -> T1400464 <> Empty -> forall l1 :e R :^: idx T1400464 :^: (R :^: idx T1400469), forall f1:set -> set, (forall x :e R :^: idx T1400469, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx T1400469), hl_absolutely_integrable_on T1400469 T1400464 l1 l2 = 1 <-> absolutely_integrable_on T1400464 T1400469 f1 (hl_rep (R :^: idx T1400469) l2).
Admitted.

// has_measure : ((real,?1486765)cart->bool)->real->bool (not in compat.mg)
Theorem hl_has_measure_compat : forall T1486765:set, T1486765 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1486765), forall l2 :e R, hl_has_measure T1486765 l1 l2 = 1 <-> has_measure T1486765 (hl_rep (R :^: idx T1486765) l1) l2.
Admitted.

// ARBITRARY : ((A->bool)->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_ARBITRARY_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), hl_ARBITRARY (2 :^: A) l1 = 1 <-> True.
Admitted.

// polytope : ((real,?1233346)cart->bool)->bool (not in compat.mg)
Theorem hl_polytope_compat : forall T1233346:set, T1233346 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1233346), hl_polytope T1233346 l1 = 1 <-> polytope T1233346 (hl_rep (R :^: idx T1233346) l1).
Admitted.

// integral : ((real,?1351857)cart->bool)->((real,?1351857)cart->(real,?1351856)cart)->(real,?1351856)cart (not in compat.mg)
Theorem hl_integral_compat : forall T1351857 T1351856:set, T1351857 <> Empty -> T1351856 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1351857), forall l2 :e R :^: idx T1351856 :^: (R :^: idx T1351857), forall f2:set -> set, (forall x :e R :^: idx T1351857, l2 x = f2 x) -> hl_integral T1351857 T1351856 l1 l2 = integral T1351856 T1351857 (hl_rep (R :^: idx T1351857) l1) f2.
Admitted.

// quasi_component_of : ?484315 topology->?484315->?484315->bool (not in compat.mg)
Theorem hl_quasi_component_of_compat : forall T484315:set, T484315 <> Empty -> forall l1 :e hl_ty_topology T484315, forall l2 l3 :e T484315, hl_quasi_component_of T484315 l1 l2 l3 = 1 <-> quasi_component_of T484315 l1 l2 l3.
Admitted.

// quasi_component_of : ?484315 topology->?484315->?484315->bool at A := A -> bool (not in compat.mg)
Theorem hl_quasi_component_of_compat_pow : forall T484315:set, T484315 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T484315), forall l2 l3 :e 2 :^: T484315, hl_quasi_component_of (2 :^: T484315) l1 l2 l3 = 1 <-> quasi_component_of (Power T484315) l1 (hl_rep T484315 l2) (hl_rep T484315 l3).
Admitted.

// open_map : A topology#B topology->(A->B)->bool (not in compat.mg)
Theorem hl_open_map_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_open_map A B l1 l2 = 1 <-> open_map A B l1 f2).
Admitted.

// ENR : ((real,?1269272)cart->bool)->bool (not in compat.mg)
Theorem hl_ENR_compat : forall T1269272:set, T1269272 <> Empty -> forall l1 :e 2 :^: (R :^: idx T1269272), hl_ENR T1269272 l1 = 1 <-> ENR T1269272 (hl_rep (R :^: idx T1269272) l1).
Admitted.

// normal_matrix : ((real,N)cart,N)cart->bool (not in compat.mg)
Theorem hl_normal_matrix_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: idx N, hl_normal_matrix N l1 = 1 <-> normal_matrix_hl N l1.
Admitted.

// path_components_of : ?467444 topology->(?467444->bool)->bool (not in compat.mg)
Theorem hl_path_components_of_compat : forall T467444:set, T467444 <> Empty -> forall l1 :e hl_ty_topology T467444, hl_rep2 T467444 (hl_path_components_of T467444 l1) = path_components_of T467444 l1.
Admitted.

// path_components_of : ?467444 topology->(?467444->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_path_components_of_compat_pow : forall T467444:set, T467444 <> Empty -> forall l1 :e hl_ty_topology (2 :^: T467444), hl_rep2 (2 :^: T467444) (hl_path_components_of (2 :^: T467444) l1) = path_components_of (Power T467444) l1.
Admitted.

// singular_relcycle : num#?588564 topology#(?588564->bool)->((num->real)->?588564) frag->bool (not in compat.mg)
Theorem hl_singular_relcycle_compat : forall T588564:set, T588564 <> Empty -> forall l1 :e omega :*: (hl_ty_topology T588564 :*: 2 :^: T588564), forall l2 :e hl_ty_frag (T588564 :^: (R :^: omega)), hl_singular_relcycle T588564 l1 l2 = 1 <-> singular_relcycle T588564 l1 l2.
Admitted.

// singular_relcycle : num#?588564 topology#(?588564->bool)->((num->real)->?588564) frag->bool at A := A -> bool (not in compat.mg)
Theorem hl_singular_relcycle_compat_pow : forall T588564:set, T588564 <> Empty -> forall l1 :e omega :*: (hl_ty_topology (2 :^: T588564) :*: 2 :^: (2 :^: T588564)), forall l2 :e hl_ty_frag (2 :^: T588564 :^: (R :^: omega)), hl_singular_relcycle (2 :^: T588564) l1 l2 = 1 <-> singular_relcycle (Power T588564) l1 l2.
Admitted.

// mk_frag : (A->int)->A frag (not in compat.mg)
Theorem hl_mk_frag_compat : forall A:set, A <> Empty -> forall l1 :e int :^: A, hl_mk_frag A l1 = l1.
Admitted.

// has_bounded_setvariation_on : (((real,M)cart->bool)->(real,N)cart)->((real,M)cart->bool)->bool (not in compat.mg)
Theorem hl_has_bounded_setvariation_on_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx N :^: (2 :^: (R :^: idx M)), forall f1:set -> set, (forall x :e 2 :^: (R :^: idx M), l1 x = f1 (hl_rep (R :^: idx M) x)) -> forall l2 :e 2 :^: (R :^: idx M), hl_has_bounded_setvariation_on M N l1 l2 = 1 <-> has_bounded_setvariation_on M N f1 (hl_rep (R :^: idx M) l2).
Admitted.

// swap : ?173622#?173622->?173622->?173622 (not in compat.mg)
Theorem hl_swap_compat : forall T173622:set, T173622 <> Empty -> forall l1 :e T173622 :*: T173622, forall l2 :e T173622, hl_swap T173622 l1 l2 = swap T173622 l1 l2.
Admitted.

// bilinear : ((real,?664164)cart->(real,?664153)cart->(real,?664154)cart)->bool (not in compat.mg)
Theorem hl_bilinear_compat : forall T664164 T664153 T664154:set, T664164 <> Empty -> T664153 <> Empty -> T664154 <> Empty -> forall l1 :e R :^: idx T664154 :^: (R :^: idx T664153) :^: (R :^: idx T664164), forall f1:set -> set -> set, (forall x :e R :^: idx T664164, forall y :e R :^: idx T664153, l1 x y = f1 x y) -> (hl_bilinear T664164 T664153 T664154 l1 = 1 <-> bilinear T664153 T664154 T664164 f1).
Admitted.

// group_nmul : ?261345 group->num->?261345->?261345 (not in compat.mg)
Theorem hl_group_nmul_compat : forall T261345:set, T261345 <> Empty -> hl_group_nmul T261345 = group_nmul T261345.
Admitted.

// simplicial_cone : num->(num->real)->((num->real)->num->real) frag->((num->real)->num->real) frag (not in compat.mg)
Theorem hl_simplicial_cone_compat : forall l1 :e omega, forall l2 :e R :^: omega, forall f2:set -> set, (forall x :e omega, l2 x = f2 x) -> forall x :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_cone l1 l2 x = simplicial_cone l1 f2 x.
Admitted.

// locally_path_connected_at : ?480849->?480849 topology->bool (not in compat.mg)
Theorem hl_locally_path_connected_at_compat : forall T480849:set, T480849 <> Empty -> forall l1 :e T480849, forall l2 :e hl_ty_topology T480849, hl_locally_path_connected_at T480849 l1 l2 = 1 <-> locally_path_connected_at T480849 l1 l2.
Admitted.

// lim : ?773960 net->(?773960->(real,?773959)cart)->(real,?773959)cart (not in compat.mg)
Theorem hl_lim_compat : forall T773960 T773959:set, T773960 <> Empty -> T773959 <> Empty -> forall l1 :e hl_ty_net T773960, forall l2 :e R :^: idx T773959 :^: T773960, forall f2:set -> set, (forall x :e T773960, l2 x = f2 x) -> hl_lim T773960 T773959 l1 l2 = lim T773959 T773960 l1 f2.
Admitted.

// homeomorphic_space : A topology->B topology->bool (not in compat.mg)
Theorem hl_homeomorphic_space_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e hl_ty_topology B, hl_homeomorphic_space A B l1 l2 = 1 <-> homeomorphic_space A B l1 l2.
Admitted.

// vector_variation : ((real,1)cart->bool)->((real,1)cart->(real,N)cart)->real (not in compat.mg)
Theorem hl_vector_variation_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx 1), forall l2 :e R :^: idx N :^: (R :^: idx 1), forall f2:set -> set, (forall x :e R :^: idx 1, l2 x = f2 x) -> hl_vector_variation N l1 l2 = vector_variation N (hl_rep (R :^: idx 1) l1) f2.
Admitted.

// discrete_space : A topology->bool (not in compat.mg)
Theorem hl_discrete_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_discrete_space A l1 = 1 <-> discrete_space A l1.
Admitted.

// fsigma : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_fsigma_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_fsigma N l1 = 1 <-> fsigma N (hl_rep (R :^: idx N) l1).
Admitted.

// submetric : A metric->(A->bool)->A metric (not in compat.mg)
Theorem hl_submetric_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric A, forall l2 :e 2 :^: A, hl_submetric A l1 l2 = submetric A l1 (hl_rep A l2).
Admitted.

// submetric : A metric->(A->bool)->A metric at A := A -> bool (not in compat.mg)
Theorem hl_submetric_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_metric (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_submetric (2 :^: A) l1 l2 = submetric (Power A) l1 (hl_rep2 A l2).
Admitted.

// derived_set_of : A topology->(A->bool)->A->bool (not in compat.mg)
Theorem hl_derived_set_of_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, forall l2 :e 2 :^: A, hl_rep A (hl_derived_set_of A l1 l2) = derived_set_of A l1 (hl_rep A l2).
Admitted.

// derived_set_of : A topology->(A->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_derived_set_of_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology (2 :^: A), forall l2 :e 2 :^: (2 :^: A), hl_rep2 A (hl_derived_set_of (2 :^: A) l1 l2) = derived_set_of (Power A) l1 (hl_rep2 A l2).
Admitted.

// chain_boundary : num->((num->real)->A) frag->((num->real)->A) frag (not in compat.mg)
Theorem hl_chain_boundary_compat : forall A:set, A <> Empty -> forall l1 :e omega, forall l2 :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_boundary A l1 l2 = chain_boundary A l1 l2.
Admitted.

// vector : A list->(A,N)cart (not in compat.mg)
Theorem hl_vector_compat : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e finseq A, hl_vector A N l1 = vector A N l1.
Admitted.

// homeomorphic_maps : A topology#B topology->(A->B)#(B->A)->bool (not in compat.mg)
Theorem hl_homeomorphic_maps_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_topology A :*: hl_ty_topology B, forall l2 :e B :^: A :*: A :^: B, hl_homeomorphic_maps A B l1 l2 = 1 <-> homeomorphic_maps A B l1 l2.
Admitted.

// is_interval : ((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_is_interval_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_is_interval N l1 = 1 <-> is_interval N (hl_rep (R :^: idx N) l1).
Admitted.

// real_euclidean_metric : real metric (not in compat.mg)
Theorem hl_real_euclidean_metric_compat : hl_real_euclidean_metric = real_euclidean_metric.
Admitted.

// edge_of : ((real,?1227028)cart->bool)->((real,?1227028)cart->bool)->bool (not in compat.mg)
Theorem hl_edge_of_compat : forall T1227028:set, T1227028 <> Empty -> forall l1 l2 :e 2 :^: (R :^: idx T1227028), hl_edge_of T1227028 l1 l2 = 1 <-> edge_of T1227028 (hl_rep (R :^: idx T1227028) l1) (hl_rep (R :^: idx T1227028) l2).
Admitted.

// capped_metric : real->A metric->A metric (not in compat.mg)
Theorem hl_capped_metric_compat : forall A:set, A <> Empty -> forall l1 :e R, forall l2 :e hl_ty_metric A, hl_capped_metric A l1 l2 = capped_metric A l1 l2.
Admitted.

// outside : ((real,N)cart->bool)->(real,N)cart->bool (not in compat.mg)
Theorem hl_outside_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_rep (R :^: idx N) (hl_outside N l1) = outside N (hl_rep (R :^: idx N) l1).
Admitted.

// dest_matroid : A matroid->(A->bool)#((A->bool)->A->bool) (not in compat.mg)
Theorem hl_dest_matroid_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid A, hl_dest_matroid A l1 = l1.
Admitted.

// dest_matroid : A matroid->(A->bool)#((A->bool)->A->bool) at A := A -> bool (not in compat.mg)
Theorem hl_dest_matroid_compat_pow : forall A:set, A <> Empty -> forall l1 :e hl_ty_matroid (2 :^: A), hl_dest_matroid (2 :^: A) l1 = l1.
Admitted.

// vector_norm : (real,N)cart->real (not in compat.mg)
Theorem hl_vector_norm_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N, hl_vector_norm N l1 = vector_norm N l1.
Admitted.

// GEQ : A->A->bool (not in compat.mg)
Theorem hl_GEQ_compat : forall A:set, A <> Empty -> hl_GEQ A = Empty.
Admitted.

// GEQ : A->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_GEQ_compat_pow : forall A:set, A <> Empty -> hl_GEQ (2 :^: A) = Empty.
Admitted.

// baire : num->((real,M)cart->bool)->((real,M)cart->(real,N)cart)->bool (not in compat.mg)
Theorem hl_baire_compat : forall M N:set, M <> Empty -> N <> Empty -> hl_baire M N = baire M N.
Admitted.

// trivial_homomorphism : A group#B group->(A->B)->bool (not in compat.mg)
Theorem hl_trivial_homomorphism_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_group A :*: hl_ty_group B, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_trivial_homomorphism A B l1 l2 = 1 <-> trivial_homomorphism A B l1 f2).
Admitted.

// components : ((real,N)cart->bool)->((real,N)cart->bool)->bool (not in compat.mg)
Theorem hl_components_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), hl_rep2 (R :^: idx N) (hl_components N l1) = components N (hl_rep (R :^: idx N) l1).
Admitted.

// division_points : ((real,N)cart->bool)->(((real,N)cart->bool)->bool)->num#real->bool (not in compat.mg)
Theorem hl_division_points_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: (R :^: idx N), forall l2 :e 2 :^: (2 :^: (R :^: idx N)), hl_rep (omega :*: R) (hl_division_points N l1 l2) = division_points N (hl_rep (R :^: idx N) l1) (hl_rep2 (R :^: idx N) l2).
Admitted.

// orthogonal_transformation : ((real,N)cart->(real,N)cart)->bool (not in compat.mg)
Theorem hl_orthogonal_transformation_compat : forall N:set, N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx N), forall f1:set -> set, (forall x :e R :^: idx N, l1 x = f1 x) -> (hl_orthogonal_transformation N l1 = 1 <-> orthogonal_transformation N f1).
Admitted.

// connected_space : A topology->bool (not in compat.mg)
Theorem hl_connected_space_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_topology A, hl_connected_space A l1 = 1 <-> connected_space A l1.
Admitted.

// subspace : ((real,?679304)cart->bool)->bool (not in compat.mg)
Theorem hl_subspace_compat : forall T679304:set, T679304 <> Empty -> forall l1 :e 2 :^: (R :^: idx T679304), hl_subspace T679304 l1 = 1 <-> subspace T679304 (hl_rep (R :^: idx T679304) l1).
Admitted.

// measurable_on : ((real,M)cart->(real,N)cart)->((real,M)cart->bool)->bool (not in compat.mg)
Theorem hl_measurable_on_compat : forall M N:set, M <> Empty -> N <> Empty -> forall l1 :e R :^: idx N :^: (R :^: idx M), forall f1:set -> set, (forall x :e R :^: idx M, l1 x = f1 x) -> forall l2 :e 2 :^: (R :^: idx M), hl_measurable_on M N l1 l2 = 1 <-> measurable_on M N f1 (hl_rep (R :^: idx M) l2).
Admitted.

// group_action : A group->(X->bool)->(A->X->X)->bool (not in compat.mg)
Theorem hl_group_action_compat : forall A X:set, A <> Empty -> X <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e 2 :^: X, forall l3 :e X :^: X :^: A, forall f3:set -> set -> set, (forall x :e A, forall y :e X, l3 x y = f3 x y) -> (hl_group_action A X l1 l2 l3 = 1 <-> group_action_hl A X l1 (hl_rep X l2) f3).
Admitted.

// group_action : A group->(X->bool)->(A->X->X)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_group_action_compat_pow2 : forall A X:set, A <> Empty -> X <> Empty -> forall l1 :e hl_ty_group A, forall l2 :e 2 :^: (2 :^: X), forall l3 :e 2 :^: X :^: (2 :^: X) :^: A, forall f3:set -> set -> set, (forall x :e A, forall y :e 2 :^: X, l3 x y = f3 x y) -> (hl_group_action A (2 :^: X) l1 l2 l3 = 1 <-> group_action_hl A (Power X) l1 (hl_rep2 X l2) f3).
Admitted.

// nonemptiness of the carrier of type definition group (prove in mglib/literal/carriers.mg)
Theorem hl_ty_group_nonempty : forall A:set, A <> Empty -> hl_ty_group A <> Empty.
Admitted.

// nonemptiness of the carrier of type definition net (prove in mglib/literal/carriers.mg)
Theorem hl_ty_net_nonempty : forall A:set, A <> Empty -> hl_ty_net A <> Empty.
Admitted.

// nonemptiness of the carrier of type definition frag (prove in mglib/literal/carriers.mg)
Theorem hl_ty_frag_nonempty : forall A:set, A <> Empty -> hl_ty_frag A <> Empty.
Admitted.

// nonemptiness of the carrier of type definition matroid (prove in mglib/literal/carriers.mg)
Theorem hl_ty_matroid_nonempty : forall A:set, A <> Empty -> hl_ty_matroid A <> Empty.
Admitted.

// nonemptiness of the carrier of type definition multivector (prove in mglib/literal/carriers.mg)
Theorem hl_ty_multivector_nonempty : forall N:set, N <> Empty -> hl_ty_multivector N <> Empty.
Admitted.

// nonemptiness of the carrier of type definition topology (prove in mglib/literal/carriers.mg)
Theorem hl_ty_topology_nonempty : forall A:set, A <> Empty -> hl_ty_topology A <> Empty.
Admitted.

// nonemptiness of the carrier of type definition metric (prove in mglib/literal/carriers.mg)
Theorem hl_ty_metric_nonempty : forall A:set, A <> Empty -> hl_ty_metric A <> Empty.
Admitted.

