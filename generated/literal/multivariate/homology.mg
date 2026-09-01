// hol2mg literal statements (private): shard homology of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/homology.ml:13 / standard_simplex   (hash md5:cf91fdd12d1c0d51baec93c170f355ea)
Theorem hlt_standard_simplex_thm : forall p :e omega, hl_standard_simplex p = hl_GSPEC (R :^: omega) (fun GEN_PVAR_2513 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2513 (if (forall i :e omega, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (x i) = 1 /\ hl_real_le (x i) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) /\ ((forall i :e omega, hl_lt p i = 1 -> x i = hl_real_of_num (hl_NUMERAL hl_zero)) /\ hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) p) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/homology.ml:19 / TOPSPACE_STANDARD_SIMPLEX   (hash md5:6e666b7b7a7627db405d4d48b9108219)
Theorem hlt_TOPSPACE_STANDARD_SIMPLEX : forall p :e omega, hl_topspace (R :^: omega) (hl_subtopology (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) (hl_standard_simplex p)) = hl_standard_simplex p.
Admitted.

// HOL Light: Multivariate/homology.ml:26 / BASIS_IN_STANDARD_SIMPLEX   (hash md5:962aba35e7ed1ec1d64e512b54d711bd)
Theorem hlt_BASIS_IN_STANDARD_SIMPLEX : forall p i :e omega, hl_IN (R :^: omega) (fun j :e omega => hl_COND R (if j = i then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_standard_simplex p) = 1 <-> hl_le i p = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:32 / NONEMPTY_STANDARD_SIMPLEX   (hash md5:e36f4c91369cabfbcc81b7331990d4d5)
Theorem hlt_NONEMPTY_STANDARD_SIMPLEX : forall p :e omega, ~ hl_standard_simplex p = hl_EMPTY (R :^: omega).
Admitted.

// HOL Light: Multivariate/homology.ml:38 / STANDARD_SIMPLEX_0   (hash md5:189de30d3251e91906e730d838df96f3)
Theorem hlt_STANDARD_SIMPLEX_0 : hl_standard_simplex (hl_NUMERAL hl_zero) = hl_INSERT (R :^: omega) (fun j :e omega => hl_COND R (if j = hl_NUMERAL hl_zero then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_EMPTY (R :^: omega)).
Admitted.

// HOL Light: Multivariate/homology.ml:47 / STANDARD_SIMPLEX_MONO   (hash md5:3ba75e764c852022ad6a8e4563dc5e37)
Theorem hlt_STANDARD_SIMPLEX_MONO : forall p q :e omega, hl_le p q = 1 -> hl_SUBSET (R :^: omega) (hl_standard_simplex p) (hl_standard_simplex q) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:55 / CLOSED_IN_STANDARD_SIMPLEX   (hash md5:b69eb959eda4a9de5716be753182a2c5)
Theorem hlt_CLOSED_IN_STANDARD_SIMPLEX : forall p :e omega, hl_closed_in (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) (hl_standard_simplex p) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:88 / COMPACT_IN_STANDARD_SIMPLEX   (hash md5:af76c3cdf4035e5ebf88dd38cf7bcb40)
Theorem hlt_COMPACT_IN_STANDARD_SIMPLEX : forall p :e omega, hl_compact_in (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) (hl_standard_simplex p) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:100 / CONVEX_STANDARD_SIMPLEX   (hash md5:5fd733c18ad7bcca7c55ccb8dee912d3)
Theorem hlt_CONVEX_STANDARD_SIMPLEX : forall p :e omega, forall x y :e R :^: omega, forall u :e R, hl_IN (R :^: omega) x (hl_standard_simplex p) = 1 /\ (hl_IN (R :^: omega) y (hl_standard_simplex p) = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1)) -> hl_IN (R :^: omega) (fun i :e omega => hl_real_add (hl_real_mul (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) (x i)) (hl_real_mul u (y i))) (hl_standard_simplex p) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:113 / PATH_CONNECTED_IN_STANDARD_SIMPLEX   (hash md5:1e482495f5c7d2fae162e460e38351b3)
Theorem hlt_PATH_CONNECTED_IN_STANDARD_SIMPLEX : forall p :e omega, hl_path_connected_in (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) (hl_standard_simplex p) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:135 / CONNECTED_IN_STANDARD_SIMPLEX   (hash md5:2423c9a3efdd2c82152f2f9c9f00e8ed)
Theorem hlt_CONNECTED_IN_STANDARD_SIMPLEX : forall p :e omega, hl_connected_in (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) (hl_standard_simplex p) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:145 / simplicial_face   (hash md5:5f3c3797160255a6a20c889163c45be0)
Theorem hlt_simplicial_face_thm : forall k :e omega, forall x :e R :^: omega, hl_simplicial_face k x = fun i :e omega => hl_COND R (hl_lt i k) (x i) (hl_COND R (if i = k then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (x (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/homology.ml:149 / SIMPLICIAL_FACE_IN_STANDARD_SIMPLEX   (hash md5:e328c266f882062f1bf53d13ae57adeb)
Theorem hlt_SIMPLICIAL_FACE_IN_STANDARD_SIMPLEX : forall p k :e omega, forall x :e R :^: omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) p = 1 /\ (hl_le k p = 1 /\ hl_IN (R :^: omega) x (hl_standard_simplex (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1) -> hl_IN (R :^: omega) (hl_simplicial_face k x) (hl_standard_simplex p) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:180 / singular_simplex   (hash md5:c8861af7645a8555bf4be00c077b2d4d)
Theorem hlt_singular_simplex_thm : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, forall p :e omega, forall f :e A :^: (R :^: omega), hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) f = 1 <-> hl_continuous_map (R :^: omega) A (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology A) (hl_subtopology (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) (hl_standard_simplex p)) top) f = 1 /\ hl_EXTENSIONAL (R :^: omega) A (hl_standard_simplex p) f = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:187 / SINGULAR_SIMPLEX_EMPTY   (hash md5:31883897ad3a18c85bffbfb2c2bc5b4b)
Theorem hlt_SINGULAR_SIMPLEX_EMPTY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall f :e A :^: (R :^: omega), hl_topspace A top = hl_EMPTY A -> ~ hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) f = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:194 / SINGULAR_SIMPLEX_MONO   (hash md5:169096545fa4e8fd288623844029af68)
Theorem hlt_SINGULAR_SIMPLEX_MONO : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, forall f :e A :^: (R :^: omega), hl_SUBSET A t s = 1 /\ hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top t)) f = 1 -> hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s)) f = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:201 / SINGULAR_SIMPLEX_SUBTOPOLOGY   (hash md5:4e86cb7ed25f6f87f9436070f19b34b4)
Theorem hlt_SINGULAR_SIMPLEX_SUBTOPOLOGY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall f :e A :^: (R :^: omega), hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s)) f = 1 <-> hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) f = 1 /\ hl_SUBSET A (hl_IMAGE (R :^: omega) A f (hl_standard_simplex p)) s = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:214 / singular_face   (hash md5:8fac1202e8a0fffe10d4ce58920fed75)
Theorem hlt_singular_face_thm : forall A:set, A <> Empty -> forall p :e omega, forall f :e A :^: (R :^: omega), forall k :e omega, hl_singular_face A p k f = hl_RESTRICTION (R :^: omega) A (hl_standard_simplex (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_o (R :^: omega) A (R :^: omega) f (hl_simplicial_face k)).
Admitted.

// HOL Light: Multivariate/homology.ml:218 / SINGULAR_SIMPLEX_SINGULAR_FACE   (hash md5:ed5db340bdf34f3aaa2f6972154fc12c)
Theorem hlt_SINGULAR_SIMPLEX_SINGULAR_FACE : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall k :e omega, forall f :e A :^: (R :^: omega), hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) f = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) p = 1 /\ hl_le k p = 1) -> hl_singular_simplex A (hl_pair omega (hl_ty_topology A) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) top) (hl_singular_face A p k f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:244 / singular_chain   (hash md5:a6a449a166710cb4df2647815e04080a)
Theorem hlt_singular_chain_thm : forall A:set, A <> Empty -> forall c :e hl_ty_frag (A :^: (R :^: omega)), forall p :e omega, forall top :e hl_ty_topology A, hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 <-> hl_SUBSET (A :^: (R :^: omega)) (hl_frag_support (A :^: (R :^: omega)) c) (hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:248 / SINGULAR_CHAIN_EMPTY   (hash md5:07af6a45e16ed9a589c4af4b9191746d)
Theorem hlt_SINGULAR_CHAIN_EMPTY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_topspace A top = hl_EMPTY A -> (hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 <-> c = hl_frag_0 (A :^: (R :^: omega))).
Admitted.

// HOL Light: Multivariate/homology.ml:258 / SINGULAR_CHAIN_MONO   (hash md5:f379607d965ebaf3afb1356eb37a18e7)
Theorem hlt_SINGULAR_CHAIN_MONO : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_SUBSET A t s = 1 /\ hl_singular_chain A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top t)) c = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s)) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:267 / SINGULAR_CHAIN_SUBTOPOLOGY   (hash md5:c55a1736c0d1cd166b80f67b51d4ff93)
Theorem hlt_SINGULAR_CHAIN_SUBTOPOLOGY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s)) c = 1 <-> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ forall f :e A :^: (R :^: omega), hl_IN (A :^: (R :^: omega)) f (hl_frag_support (A :^: (R :^: omega)) c) = 1 -> hl_SUBSET A (hl_IMAGE (R :^: omega) A f (hl_standard_simplex p)) s = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:275 / SINGULAR_CHAIN_0   (hash md5:52fa1d76adce7aa6d5438317fbd296ef)
Theorem hlt_SINGULAR_CHAIN_0 : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (hl_frag_0 (A :^: (R :^: omega))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:279 / SINGULAR_CHAIN_OF   (hash md5:2d3d6eb9a05a93b1ca36ffe4473995b8)
Theorem hlt_SINGULAR_CHAIN_OF : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e A :^: (R :^: omega), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (hl_frag_of (A :^: (R :^: omega)) c) = 1 <-> hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:284 / SINGULAR_CHAIN_CMUL   (hash md5:e7a13011625a24afc79950b00b4f36a5)
Theorem hlt_SINGULAR_CHAIN_CMUL : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall a :e hl_ty_int, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (hl_frag_cmul (A :^: (R :^: omega)) a c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:290 / SINGULAR_CHAIN_NEG   (hash md5:3d706bef15b62ff617102a03e4ade8a9)
Theorem hlt_SINGULAR_CHAIN_NEG : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (hl_frag_neg (A :^: (R :^: omega)) c) = 1 <-> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:295 / SINGULAR_CHAIN_ADD   (hash md5:202d9696522e289d381d4031bc444b27)
Theorem hlt_SINGULAR_CHAIN_ADD : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c1 = 1 /\ hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c2 = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (hl_frag_add (A :^: (R :^: omega)) c1 c2) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:302 / SINGULAR_CHAIN_SUB   (hash md5:45cb5b0f9bfb279854299e1e5508a225)
Theorem hlt_SINGULAR_CHAIN_SUB : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c1 = 1 /\ hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c2 = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:309 / SINGULAR_CHAIN_SUM   (hash md5:c542ed98f04d95234456f1d02ba7a44c)
Theorem hlt_SINGULAR_CHAIN_SUM : forall B A:set, B <> Empty -> A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall f :e hl_ty_frag (A :^: (R :^: omega)) :^: B, forall k :e 2 :^: B, (forall c :e B, hl_IN B c k = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (f c) = 1) -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (hl_iterate (hl_ty_frag (A :^: (R :^: omega))) B (hl_frag_add (A :^: (R :^: omega))) k f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:317 / SINGULAR_CHAIN_EXTEND   (hash md5:46ffb89e346a31c53a0634dadda19c65)
Theorem hlt_SINGULAR_CHAIN_EXTEND : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology B, forall f :e hl_ty_frag (B :^: (R :^: omega)) :^: (A :^: (R :^: omega)), forall x :e hl_ty_frag (A :^: (R :^: omega)), (forall c :e A :^: (R :^: omega), hl_IN (A :^: (R :^: omega)) c (hl_frag_support (A :^: (R :^: omega)) x) = 1 -> hl_singular_chain B (hl_pair omega (hl_ty_topology B) p top) (f c) = 1) -> hl_singular_chain B (hl_pair omega (hl_ty_topology B) p top) (hl_frag_extend (A :^: (R :^: omega)) (B :^: (R :^: omega)) f x) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:329 / chain_boundary   (hash md5:a50e8cb67e24b2cf2208fdcf123ebcd6)
Theorem hlt_chain_boundary_thm : forall A:set, A <> Empty -> forall p :e omega, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_boundary A p c = hl_COND (hl_ty_frag (A :^: (R :^: omega))) (if p = hl_NUMERAL hl_zero then 1 else 0) (hl_frag_0 (A :^: (R :^: omega))) (hl_frag_extend (A :^: (R :^: omega)) (A :^: (R :^: omega)) (fun f :e A :^: (R :^: omega) => hl_iterate (hl_ty_frag (A :^: (R :^: omega))) omega (hl_frag_add (A :^: (R :^: omega))) (hl_numseg (hl_NUMERAL hl_zero) p) (fun k :e omega => hl_frag_cmul (A :^: (R :^: omega)) (hl_int_pow (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) k) (hl_frag_of (A :^: (R :^: omega)) (hl_singular_face A p k f)))) c).
Admitted.

// HOL Light: Multivariate/homology.ml:337 / SINGULAR_CHAIN_BOUNDARY   (hash md5:a1be5d83c0dee7eee9c1ff9cc6000c29)
Theorem hlt_SINGULAR_CHAIN_BOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) top) (hl_chain_boundary A p c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:351 / SINGULAR_CHAIN_BOUNDARY_ALT   (hash md5:45263773559a1a97b040cbe6cca0cb49)
Theorem hlt_SINGULAR_CHAIN_BOUNDARY_ALT : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) top) c = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (hl_chain_boundary A (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:359 / CHAIN_BOUNDARY_0   (hash md5:82dd42f503faae75867476bbbb27b241)
Theorem hlt_CHAIN_BOUNDARY_0 : forall A:set, A <> Empty -> forall p :e omega, hl_chain_boundary A p (hl_frag_0 (A :^: (R :^: omega))) = hl_frag_0 (A :^: (R :^: omega)).
Admitted.

// HOL Light: Multivariate/homology.ml:365 / CHAIN_BOUNDARY_CMUL   (hash md5:ce3ad80e79a07b496e3e031be6799bf9)
Theorem hlt_CHAIN_BOUNDARY_CMUL : forall A:set, A <> Empty -> forall p :e omega, forall a :e hl_ty_int, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_boundary A p (hl_frag_cmul (A :^: (R :^: omega)) a c) = hl_frag_cmul (A :^: (R :^: omega)) a (hl_chain_boundary A p c).
Admitted.

// HOL Light: Multivariate/homology.ml:373 / CHAIN_BOUNDARY_NEG   (hash md5:c2ecf5dd9b3213d7d547e2cad4c38b38)
Theorem hlt_CHAIN_BOUNDARY_NEG : forall A:set, A <> Empty -> forall p :e omega, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_boundary A p (hl_frag_neg (A :^: (R :^: omega)) c) = hl_frag_neg (A :^: (R :^: omega)) (hl_chain_boundary A p c).
Admitted.

// HOL Light: Multivariate/homology.ml:379 / CHAIN_BOUNDARY_ADD   (hash md5:76ee595fb22e507595c1ca4181f4de93)
Theorem hlt_CHAIN_BOUNDARY_ADD : forall A:set, A <> Empty -> forall p :e omega, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_boundary A p (hl_frag_add (A :^: (R :^: omega)) c1 c2) = hl_frag_add (A :^: (R :^: omega)) (hl_chain_boundary A p c1) (hl_chain_boundary A p c2).
Admitted.

// HOL Light: Multivariate/homology.ml:387 / CHAIN_BOUNDARY_SUB   (hash md5:83858ddc56afc328442eb435605c02b4)
Theorem hlt_CHAIN_BOUNDARY_SUB : forall A:set, A <> Empty -> forall p :e omega, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_boundary A p (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = hl_frag_sub (A :^: (R :^: omega)) (hl_chain_boundary A p c1) (hl_chain_boundary A p c2).
Admitted.

// HOL Light: Multivariate/homology.ml:394 / CHAIN_BOUNDARY_SUM   (hash md5:067ac82e75962bda04d86bdf44e7ae96)
Theorem hlt_CHAIN_BOUNDARY_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall p :e omega, forall g :e hl_ty_frag (A :^: (R :^: omega)) :^: K, forall k :e 2 :^: K, hl_FINITE K k = 1 -> hl_chain_boundary A p (hl_iterate (hl_ty_frag (A :^: (R :^: omega))) K (hl_frag_add (A :^: (R :^: omega))) k g) = hl_iterate (hl_ty_frag (A :^: (R :^: omega))) K (hl_frag_add (A :^: (R :^: omega))) k (hl_o (hl_ty_frag (A :^: (R :^: omega))) (hl_ty_frag (A :^: (R :^: omega))) K (hl_chain_boundary A p) g).
Admitted.

// HOL Light: Multivariate/homology.ml:406 / CHAIN_BOUNDARY_OF   (hash md5:53391a04d3e4e4e037b29be5c46ccc35)
Theorem hlt_CHAIN_BOUNDARY_OF : forall A:set, A <> Empty -> forall p :e omega, forall f :e A :^: (R :^: omega), hl_chain_boundary A p (hl_frag_of (A :^: (R :^: omega)) f) = hl_COND (hl_ty_frag (A :^: (R :^: omega))) (if p = hl_NUMERAL hl_zero then 1 else 0) (hl_frag_0 (A :^: (R :^: omega))) (hl_iterate (hl_ty_frag (A :^: (R :^: omega))) omega (hl_frag_add (A :^: (R :^: omega))) (hl_numseg (hl_NUMERAL hl_zero) p) (fun k :e omega => hl_frag_cmul (A :^: (R :^: omega)) (hl_int_pow (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) k) (hl_frag_of (A :^: (R :^: omega)) (hl_singular_face A p k f)))).
Admitted.

// HOL Light: Multivariate/homology.ml:418 / mod_subset   (hash md5:c2a405bd3b873b0d010603876b5479f8)
Theorem hlt_mod_subset_thm : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_mod_subset A (hl_pair omega (hl_ty_topology A) p top) c1 c2 = 1 <-> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:421 / MOD_SUBSET_EMPTY   (hash md5:0061c51187acff98a342fb375bc6af72)
Theorem hlt_MOD_SUBSET_EMPTY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_sym_3d3d (hl_ty_frag (A :^: (R :^: omega))) c1 c2 (hl_mod_subset A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top (hl_EMPTY A)))) = 1 <-> c1 = c2.
Admitted.

// HOL Light: Multivariate/homology.ml:428 / MOD_SUBSET_REFL   (hash md5:17e32ae28b79665ee60e29fb90693931)
Theorem hlt_MOD_SUBSET_REFL : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_sym_3d3d (hl_ty_frag (A :^: (R :^: omega))) c c (hl_mod_subset A (hl_pair omega (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:433 / MOD_SUBSET_CMUL   (hash md5:cb921f639578c94c17e305baaa135c95)
Theorem hlt_MOD_SUBSET_CMUL : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall a :e hl_ty_int, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_sym_3d3d (hl_ty_frag (A :^: (R :^: omega))) c1 c2 (hl_mod_subset A (hl_pair omega (hl_ty_topology A) p top)) = 1 -> hl_sym_3d3d (hl_ty_frag (A :^: (R :^: omega))) (hl_frag_cmul (A :^: (R :^: omega)) a c1) (hl_frag_cmul (A :^: (R :^: omega)) a c2) (hl_mod_subset A (hl_pair omega (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:441 / MOD_SUBSET_ADD   (hash md5:be9265342b5edc68103864db0daf0804)
Theorem hlt_MOD_SUBSET_ADD : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c1 c2 d1 d2 :e hl_ty_frag (A :^: (R :^: omega)), hl_sym_3d3d (hl_ty_frag (A :^: (R :^: omega))) c1 c2 (hl_mod_subset A (hl_pair omega (hl_ty_topology A) p top)) = 1 /\ hl_sym_3d3d (hl_ty_frag (A :^: (R :^: omega))) d1 d2 (hl_mod_subset A (hl_pair omega (hl_ty_topology A) p top)) = 1 -> hl_sym_3d3d (hl_ty_frag (A :^: (R :^: omega))) (hl_frag_add (A :^: (R :^: omega)) c1 d1) (hl_frag_add (A :^: (R :^: omega)) c2 d2) (hl_mod_subset A (hl_pair omega (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:453 / singular_relcycle   (hash md5:1efb09db8d1d2b51efd6a803f2be3e29)
Theorem hlt_singular_relcycle_thm : forall A:set, A <> Empty -> forall c :e hl_ty_frag (A :^: (R :^: omega)), forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 <-> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ hl_sym_3d3d (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_boundary A p c) (hl_frag_0 (A :^: (R :^: omega))) (hl_mod_subset A (hl_pair omega (hl_ty_topology A) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_subtopology A top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:458 / SINGULAR_RELCYCLE_RESTRICT   (hash md5:f5488c8a34303028bfc7442993cc8caf)
Theorem hlt_SINGULAR_RELCYCLE_RESTRICT : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INTER A (hl_topspace A top) s))).
Admitted.

// HOL Light: Multivariate/homology.ml:464 / SINGULAR_RELCYCLE   (hash md5:62290ff54072bf14d46aeb91bea4f7d7)
Theorem hlt_SINGULAR_RELCYCLE : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 <-> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_subtopology A top s)) (hl_chain_boundary A p c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:472 / SINGULAR_RELCYCLE_0   (hash md5:7c1bd6582f411b1617900b752b42ab64)
Theorem hlt_SINGULAR_RELCYCLE_0 : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_0 (A :^: (R :^: omega))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:477 / SINGULAR_RELCYCLE_CMUL   (hash md5:16ff99cfbbd46cb921135427b2655fe3)
Theorem hlt_SINGULAR_RELCYCLE_CMUL : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall a :e hl_ty_int, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 -> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_cmul (A :^: (R :^: omega)) a c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:486 / SINGULAR_RELCYCLE_NEG   (hash md5:4190fbe227f21415f2445b06269e728f)
Theorem hlt_SINGULAR_RELCYCLE_NEG : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_neg (A :^: (R :^: omega)) c) = 1 <-> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:494 / SINGULAR_RELCYCLE_ADD   (hash md5:fc62f180e255f07c1971aae76aba4e44)
Theorem hlt_SINGULAR_RELCYCLE_ADD : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 = 1 /\ hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 = 1 -> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_add (A :^: (R :^: omega)) c1 c2) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:504 / SINGULAR_RELCYCLE_SUM   (hash md5:521c349b4f99fe2cb302087132786586)
Theorem hlt_SINGULAR_RELCYCLE_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall f :e hl_ty_frag (A :^: (R :^: omega)) :^: K, forall k :e 2 :^: K, hl_FINITE K k = 1 /\ (forall c :e K, hl_IN K c k = 1 -> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (f c) = 1) -> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_iterate (hl_ty_frag (A :^: (R :^: omega))) K (hl_frag_add (A :^: (R :^: omega))) k f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:514 / SINGULAR_RELCYCLE_SUB   (hash md5:8b80e0027213060c8ea39ac4b8fa51b6)
Theorem hlt_SINGULAR_RELCYCLE_SUB : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 = 1 /\ hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 = 1 -> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:521 / SINGULAR_CYCLE   (hash md5:3efe207e5df8e7f282a4e10dee480841)
Theorem hlt_SINGULAR_CYCLE : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))) c = 1 <-> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ hl_chain_boundary A p c = hl_frag_0 (A :^: (R :^: omega)).
Admitted.

// HOL Light: Multivariate/homology.ml:527 / SINGULAR_CYCLE_MONO   (hash md5:86935f53f79e778fff0286b8be7ee502)
Theorem hlt_SINGULAR_CYCLE_MONO : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_SUBSET A t s = 1 /\ hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top t) (hl_EMPTY A))) c = 1 -> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A))) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:537 / singular_relboundary   (hash md5:3c1005c0a76c3c794ca81441edb55190)
Theorem hlt_singular_relboundary_thm : forall A:set, A <> Empty -> forall c :e hl_ty_frag (A :^: (R :^: omega)), forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 <-> exists d :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) top) d = 1 /\ hl_sym_3d3d (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_boundary A (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) d) c (hl_mod_subset A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:542 / SINGULAR_RELBOUNDARY_RESTRICT   (hash md5:95ced77eacad6a88d91bd09f63c3a272)
Theorem hlt_SINGULAR_RELBOUNDARY_RESTRICT : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INTER A (hl_topspace A top) s))).
Admitted.

// HOL Light: Multivariate/homology.ml:548 / SINGULAR_RELBOUNDARY_ALT   (hash md5:2c325141e6ba281d8291f6aaa6555821)
Theorem hlt_SINGULAR_RELBOUNDARY_ALT : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 <-> exists d e1 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) top) d = 1 /\ (hl_singular_chain A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s)) e1 = 1 /\ hl_chain_boundary A (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) d = hl_frag_add (A :^: (R :^: omega)) c e1).
Admitted.

// HOL Light: Multivariate/homology.ml:558 / SINGULAR_RELBOUNDARY   (hash md5:aa39c0ca8c8dcce9acbda2b6633f12be)
Theorem hlt_SINGULAR_RELBOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 <-> exists d e1 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) top) d = 1 /\ (hl_singular_chain A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s)) e1 = 1 /\ hl_frag_add (A :^: (R :^: omega)) (hl_chain_boundary A (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) d) e1 = c).
Admitted.

// HOL Light: Multivariate/homology.ml:568 / SINGULAR_BOUNDARY   (hash md5:8dfa0b9a709e2bbc9aae3d75aa8cceea)
Theorem hlt_SINGULAR_BOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))) c = 1 <-> exists d :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) top) d = 1 /\ hl_chain_boundary A (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) d = c.
Admitted.

// HOL Light: Multivariate/homology.ml:574 / SINGULAR_BOUNDARY_IMP_CHAIN   (hash md5:a8e5535fcc032172fe2be676f95d4f00)
Theorem hlt_SINGULAR_BOUNDARY_IMP_CHAIN : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))) c = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:583 / SINGULAR_BOUNDARY_MONO   (hash md5:c7e7d67ef66bb10e63abaaa5d16a9176)
Theorem hlt_SINGULAR_BOUNDARY_MONO : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_SUBSET A t s = 1 /\ hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top t) (hl_EMPTY A))) c = 1 -> hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A))) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:589 / SINGULAR_RELBOUNDARY_IMP_CHAIN   (hash md5:5397b8759696bee91579060fc39afd54)
Theorem hlt_SINGULAR_RELBOUNDARY_IMP_CHAIN : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:604 / SINGULAR_CHAIN_IMP_RELBOUNDARY   (hash md5:50689319b29357dc4d19c9112f955ded)
Theorem hlt_SINGULAR_CHAIN_IMP_RELBOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s)) c = 1 -> hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:614 / SINGULAR_RELBOUNDARY_0   (hash md5:885e3c08d46350c37cd5595eb59bda44)
Theorem hlt_SINGULAR_RELBOUNDARY_0 : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_0 (A :^: (R :^: omega))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:620 / SINGULAR_RELBOUNDARY_CMUL   (hash md5:5cfa9cdd81c95811038342ddcf3337a2)
Theorem hlt_SINGULAR_RELBOUNDARY_CMUL : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall a :e hl_ty_int, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 -> hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_cmul (A :^: (R :^: omega)) a c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:627 / SINGULAR_RELBOUNDARY_NEG   (hash md5:a4ce72844dadf538c1c886b184ea3626)
Theorem hlt_SINGULAR_RELBOUNDARY_NEG : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_neg (A :^: (R :^: omega)) c) = 1 <-> hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:635 / SINGULAR_RELBOUNDARY_ADD   (hash md5:e9dc601f362b6390b7790d985021468f)
Theorem hlt_SINGULAR_RELBOUNDARY_ADD : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 = 1 /\ hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 = 1 -> hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_add (A :^: (R :^: omega)) c1 c2) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:642 / SINGULAR_RELBOUNDARY_SUB   (hash md5:9fc3165c435e5b05b7141c7cb8254948)
Theorem hlt_SINGULAR_RELBOUNDARY_SUB : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 = 1 /\ hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 = 1 -> hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:653 / homologous_rel   (hash md5:5053a40190df8e30e7d093facfb1009d)
Theorem hlt_homologous_rel_thm : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 c2 = 1 <-> hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:657 / HOMOLOGOUS_REL_RESTRICT   (hash md5:0bba17c08b1212816b5fcd3c5a396ba9)
Theorem hlt_HOMOLOGOUS_REL_RESTRICT : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INTER A (hl_topspace A top) s))).
Admitted.

// HOL Light: Multivariate/homology.ml:664 / HOMOLOGOUS_REL_REFL   (hash md5:13c0927379cc1f8ba9f7959a80d547ed)
Theorem hlt_HOMOLOGOUS_REL_REFL : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:669 / HOMOLOGOUS_REL_SYM   (hash md5:a3326f8e7d251aeaae4676f5ff7f3f07)
Theorem hlt_HOMOLOGOUS_REL_SYM : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 c2 = 1 <-> hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 c1 = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:676 / HOMOLOGOUS_REL_TRANS   (hash md5:8e692a56614e0d1c7c2c233cca735787)
Theorem hlt_HOMOLOGOUS_REL_TRANS : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 c3 :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 c2 = 1 /\ hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 c3 = 1 -> hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 c3 = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:684 / HOMOLOGOUS_REL_EQ   (hash md5:30a391ce3d458d9339577039b6e61106)
Theorem hlt_HOMOLOGOUS_REL_EQ : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 = hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 <-> hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 c2 = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:691 / HOMOLOGOUS_REL_SINGULAR_CHAIN   (hash md5:bcd69793dbbb5b9ddd2309175d6f4bd1)
Theorem hlt_HOMOLOGOUS_REL_SINGULAR_CHAIN : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 c2 = 1 -> (hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c1 = 1 <-> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c2 = 1).
Admitted.

// HOL Light: Multivariate/homology.ml:706 / HOMOLOGOUS_REL_ADD   (hash md5:acb29be9489f8f3615bfcf1421efc088)
Theorem hlt_HOMOLOGOUS_REL_ADD : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c1' c2 c2' :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 c1' = 1 /\ hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 c2' = 1 -> hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_add (A :^: (R :^: omega)) c1 c2) (hl_frag_add (A :^: (R :^: omega)) c1' c2') = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:714 / HOMOLOGOUS_REL_SUB   (hash md5:65642740c84e593f671b663d73a597ef)
Theorem hlt_HOMOLOGOUS_REL_SUB : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c1' c2 c2' :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 c1' = 1 /\ hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 c2' = 1 -> hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_frag_sub (A :^: (R :^: omega)) c1 c2) (hl_frag_sub (A :^: (R :^: omega)) c1' c2') = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:722 / HOMOLOGOUS_REL_SUM   (hash md5:36d7f4c76797d2377882471f90d7f21e)
Theorem hlt_HOMOLOGOUS_REL_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall f g :e hl_ty_frag (A :^: (R :^: omega)) :^: K, forall k :e 2 :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (f i) (g i) = 1) /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_2524 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_2524 (if hl_IN K i k = 1 /\ ~ f i = hl_frag_0 (A :^: (R :^: omega)) then 1 else 0) i = 1 then 1 else 0)) = 1 /\ hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_2525 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_2525 (if hl_IN K i k = 1 /\ ~ g i = hl_frag_0 (A :^: (R :^: omega)) then 1 else 0) i = 1 then 1 else 0)) = 1) -> hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_iterate (hl_ty_frag (A :^: (R :^: omega))) K (hl_frag_add (A :^: (R :^: omega))) k f) (hl_iterate (hl_ty_frag (A :^: (R :^: omega))) K (hl_frag_add (A :^: (R :^: omega))) k g) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:750 / CHAIN_HOMOTOPIC_IMP_HOMOLOGOUS_REL   (hash md5:1532c0e474650de1a8de3904bd86fdd3)
Theorem hlt_CHAIN_HOMOTOPIC_IMP_HOMOLOGOUS_REL : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall h h' f g :e hl_ty_frag (B :^: (R :^: omega)) :^: hl_ty_frag (A :^: (R :^: omega)), (forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_singular_chain B (hl_pair omega (hl_ty_topology B) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) top') (h c) = 1) /\ ((forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_subtopology A top s)) c = 1 -> hl_singular_chain B (hl_pair omega (hl_ty_topology B) p (hl_subtopology B top' t)) (h' c) = 1) /\ (forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_frag_add (B :^: (R :^: omega)) (hl_chain_boundary B (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (h c)) (h' (hl_chain_boundary A p c)) = hl_frag_sub (B :^: (R :^: omega)) (f c) (g c))) -> forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 -> hl_homologous_rel B (hl_pair omega (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)) (f c) (g c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:776 / CHAIN_BOUNDARY_BOUNDARY   (hash md5:5ea7871455a897d462ee6787ff3ca53a)
Theorem hlt_CHAIN_BOUNDARY_BOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_chain_boundary A (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_chain_boundary A p c) = hl_frag_0 (A :^: (R :^: omega)).
Admitted.

// HOL Light: Multivariate/homology.ml:855 / CHAIN_BOUNDARY_BOUNDARY_ALT   (hash md5:45b105995601b1be021bedd8ba34db9d)
Theorem hlt_CHAIN_BOUNDARY_BOUNDARY_ALT : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) top) c = 1 -> hl_chain_boundary A p (hl_chain_boundary A (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) c) = hl_frag_0 (A :^: (R :^: omega)).
Admitted.

// HOL Light: Multivariate/homology.ml:863 / SINGULAR_RELBOUNDARY_IMP_RELCYCLE   (hash md5:72e8fe16a072c36fa213d3569e5eba45)
Theorem hlt_SINGULAR_RELBOUNDARY_IMP_RELCYCLE : forall A:set, A <> Empty -> forall p :e omega, forall s :e 2 :^: A, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 -> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:880 / HOMOLOGOUS_REL_SINGULAR_RELCYCLE   (hash md5:5b1d80ad16863b868ac88d4451d98ec7)
Theorem hlt_HOMOLOGOUS_REL_SINGULAR_RELCYCLE : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 c2 = 1 -> (hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c1 = 1 <-> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c2 = 1).
Admitted.

// HOL Light: Multivariate/homology.ml:904 / simplex_map   (hash md5:1545473ed6873fa385c778c3b51ec133)
Theorem hlt_simplex_map_thm : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall g :e B :^: A, forall c :e A :^: (R :^: omega), hl_simplex_map A B p g c = hl_RESTRICTION (R :^: omega) B (hl_standard_simplex p) (hl_o A B (R :^: omega) g c).
Admitted.

// HOL Light: Multivariate/homology.ml:908 / SINGULAR_SIMPLEX_SIMPLEX_MAP   (hash md5:6ab22cf463715fcab2d9531a16984b5a)
Theorem hlt_SINGULAR_SIMPLEX_SIMPLEX_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e A :^: (R :^: omega), forall g :e B :^: A, hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) f = 1 /\ hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') g = 1 -> hl_singular_simplex B (hl_pair omega (hl_ty_topology B) p top') (hl_simplex_map A B p g f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:917 / SIMPLEX_MAP_EQ   (hash md5:0e16265e3194cff4ec4a80dee725aa8f)
Theorem hlt_SIMPLEX_MAP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall f g :e B :^: A, forall top :e hl_ty_topology A, forall c :e A :^: (R :^: omega), hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ (forall x :e A, hl_IN A x (hl_topspace A top) = 1 -> f x = g x) -> hl_simplex_map A B p f c = hl_simplex_map A B p g c.
Admitted.

// HOL Light: Multivariate/homology.ml:929 / SIMPLEX_MAP_ID_GEN   (hash md5:dd9c4f04f0923c8bd3ced8cd332f4988)
Theorem hlt_SIMPLEX_MAP_ID_GEN : forall A:set, A <> Empty -> forall p :e omega, forall f :e A :^: A, forall top :e hl_ty_topology A, forall c :e A :^: (R :^: omega), hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ (forall x :e A, hl_IN A x (hl_topspace A top) = 1 -> f x = x) -> hl_simplex_map A A p f c = c.
Admitted.

// HOL Light: Multivariate/homology.ml:941 / SIMPLEX_MAP_I   (hash md5:27d3a80d3589907aa2e70cdd08805e15)
Theorem hlt_SIMPLEX_MAP_I : forall A:set, A <> Empty -> forall p :e omega, hl_simplex_map A A p (hl_I A) = hl_RESTRICTION (R :^: omega) A (hl_standard_simplex p).
Admitted.

// HOL Light: Multivariate/homology.ml:946 / SIMPLEX_MAP_COMPOSE   (hash md5:6003de3be11dd27726a2c30428ae0e2b)
Theorem hlt_SIMPLEX_MAP_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall p :e omega, forall g :e B :^: A, forall h :e C :^: B, hl_simplex_map A C p (hl_o B C A h g) = hl_o (B :^: (R :^: omega)) (C :^: (R :^: omega)) (A :^: (R :^: omega)) (hl_simplex_map B C p h) (hl_simplex_map A B p g).
Admitted.

// HOL Light: Multivariate/homology.ml:953 / SINGULAR_FACE_SIMPLEX_MAP   (hash md5:5eaa3c67fe3843a516f8789d253d0334)
Theorem hlt_SINGULAR_FACE_SIMPLEX_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p k :e omega, forall f :e B :^: A, forall c :e A :^: (R :^: omega), hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) p = 1 /\ hl_le k p = 1 -> hl_singular_face B p k (hl_simplex_map A B p f c) = hl_simplex_map A B (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) f (hl_o (R :^: omega) A (R :^: omega) c (hl_simplicial_face k)).
Admitted.

// HOL Light: Multivariate/homology.ml:961 / chain_map   (hash md5:596309eca7679785df4276fa5b366da9)
Theorem hlt_chain_map_thm : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall g :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_map A B p g c = hl_frag_extend (A :^: (R :^: omega)) (B :^: (R :^: omega)) (hl_o (B :^: (R :^: omega)) (hl_ty_frag (B :^: (R :^: omega))) (A :^: (R :^: omega)) (hl_frag_of (B :^: (R :^: omega))) (hl_simplex_map A B p g)) c.
Admitted.

// HOL Light: Multivariate/homology.ml:965 / SINGULAR_CHAIN_CHAIN_MAP   (hash md5:213a4218dee171e230e604eb28accb8e)
Theorem hlt_SINGULAR_CHAIN_CHAIN_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall g :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') g = 1 -> hl_singular_chain B (hl_pair omega (hl_ty_topology B) p top') (hl_chain_map A B p g c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:976 / CHAIN_MAP_0   (hash md5:22fb48f264196db8e94d5fb901bbc00b)
Theorem hlt_CHAIN_MAP_0 : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall g :e B :^: A, hl_chain_map A B p g (hl_frag_0 (A :^: (R :^: omega))) = hl_frag_0 (B :^: (R :^: omega)).
Admitted.

// HOL Light: Multivariate/homology.ml:980 / CHAIN_MAP_OF   (hash md5:fea033dfbdd91d7d96f5a378092b7746)
Theorem hlt_CHAIN_MAP_OF : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall g :e B :^: A, forall f :e A :^: (R :^: omega), hl_chain_map A B p g (hl_frag_of (A :^: (R :^: omega)) f) = hl_frag_of (B :^: (R :^: omega)) (hl_simplex_map A B p g f).
Admitted.

// HOL Light: Multivariate/homology.ml:984 / CHAIN_MAP_CMUL   (hash md5:8d78a74c6b86c26dc592917161aa1a86)
Theorem hlt_CHAIN_MAP_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall g :e B :^: A, forall a :e hl_ty_int, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_map A B p g (hl_frag_cmul (A :^: (R :^: omega)) a c) = hl_frag_cmul (B :^: (R :^: omega)) a (hl_chain_map A B p g c).
Admitted.

// HOL Light: Multivariate/homology.ml:990 / CHAIN_MAP_NEG   (hash md5:71e9c4cd0c323fe28cca2d68638f6cbb)
Theorem hlt_CHAIN_MAP_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall g :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_map A B p g (hl_frag_neg (A :^: (R :^: omega)) c) = hl_frag_neg (B :^: (R :^: omega)) (hl_chain_map A B p g c).
Admitted.

// HOL Light: Multivariate/homology.ml:995 / CHAIN_MAP_ADD   (hash md5:4bb44984aacd5904360a69b772c9773d)
Theorem hlt_CHAIN_MAP_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall g :e B :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_map A B p g (hl_frag_add (A :^: (R :^: omega)) c1 c2) = hl_frag_add (B :^: (R :^: omega)) (hl_chain_map A B p g c1) (hl_chain_map A B p g c2).
Admitted.

// HOL Light: Multivariate/homology.ml:1001 / CHAIN_MAP_SUB   (hash md5:f7dfeb5ff75c227f0e8965e1070925a1)
Theorem hlt_CHAIN_MAP_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall g :e B :^: A, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_chain_map A B p g (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = hl_frag_sub (B :^: (R :^: omega)) (hl_chain_map A B p g c1) (hl_chain_map A B p g c2).
Admitted.

// HOL Light: Multivariate/homology.ml:1007 / CHAIN_MAP_SUM   (hash md5:b3fabe92d8f570ad989bdfd142ed6b48)
Theorem hlt_CHAIN_MAP_SUM : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall p :e omega, forall g :e B :^: A, forall f :e hl_ty_frag (A :^: (R :^: omega)) :^: K, forall k :e 2 :^: K, hl_FINITE K k = 1 -> hl_chain_map A B p g (hl_iterate (hl_ty_frag (A :^: (R :^: omega))) K (hl_frag_add (A :^: (R :^: omega))) k f) = hl_iterate (hl_ty_frag (B :^: (R :^: omega))) K (hl_frag_add (B :^: (R :^: omega))) k (hl_o (hl_ty_frag (A :^: (R :^: omega))) (hl_ty_frag (B :^: (R :^: omega))) K (hl_chain_map A B p g) f).
Admitted.

// HOL Light: Multivariate/homology.ml:1014 / CHAIN_MAP_EQ   (hash md5:fc02fe78bfdc08676ec4e33ce1475b84)
Theorem hlt_CHAIN_MAP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall f g :e B :^: A, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ (forall x :e A, hl_IN A x (hl_topspace A top) = 1 -> f x = g x) -> hl_chain_map A B p f c = hl_chain_map A B p g c.
Admitted.

// HOL Light: Multivariate/homology.ml:1025 / CHAIN_MAP_ID_GEN   (hash md5:cc63be3742a208cb85e4fcf455107a39)
Theorem hlt_CHAIN_MAP_ID_GEN : forall A:set, A <> Empty -> forall p :e omega, forall f :e A :^: A, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ (forall x :e A, hl_IN A x (hl_topspace A top) = 1 -> f x = x) -> hl_chain_map A A p f c = c.
Admitted.

// HOL Light: Multivariate/homology.ml:1036 / CHAIN_MAP_ID   (hash md5:d48e092e891c7efb651e62bc4b48c212)
Theorem hlt_CHAIN_MAP_ID : forall B:set, B <> Empty -> forall p :e omega, forall top :e hl_ty_topology B, forall c :e hl_ty_frag (B :^: (R :^: omega)), hl_singular_chain B (hl_pair omega (hl_ty_topology B) p top) c = 1 -> hl_chain_map B B p (fun x :e B => x) c = c.
Admitted.

// HOL Light: Multivariate/homology.ml:1042 / CHAIN_MAP_I   (hash md5:78282b9ab28f5c6ad2104fbe82784d40)
Theorem hlt_CHAIN_MAP_I : forall A:set, A <> Empty -> forall p :e omega, hl_chain_map A A p (hl_I A) = hl_frag_extend (A :^: (R :^: omega)) (A :^: (R :^: omega)) (hl_o (A :^: (R :^: omega)) (hl_ty_frag (A :^: (R :^: omega))) (A :^: (R :^: omega)) (hl_frag_of (A :^: (R :^: omega))) (hl_RESTRICTION (R :^: omega) A (hl_standard_simplex p))).
Admitted.

// HOL Light: Multivariate/homology.ml:1047 / CHAIN_MAP_COMPOSE   (hash md5:8d61ad91c4931bcb9e9af8827fda5c3d)
Theorem hlt_CHAIN_MAP_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall p :e omega, forall g :e B :^: A, forall h :e C :^: B, hl_chain_map A C p (hl_o B C A h g) = hl_o (hl_ty_frag (B :^: (R :^: omega))) (hl_ty_frag (C :^: (R :^: omega))) (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_map B C p h) (hl_chain_map A B p g).
Admitted.

// HOL Light: Multivariate/homology.ml:1058 / SINGULAR_SIMPLEX_CHAIN_MAP_I   (hash md5:e55a7ac1e8210dd31c2db9d6c938d372)
Theorem hlt_SINGULAR_SIMPLEX_CHAIN_MAP_I : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall f :e A :^: (R :^: omega), hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) f = 1 -> hl_chain_map (R :^: omega) A p f (hl_frag_of (R :^: omega :^: (R :^: omega)) (hl_RESTRICTION (R :^: omega) (R :^: omega) (hl_standard_simplex p) (hl_I (R :^: omega)))) = hl_frag_of (A :^: (R :^: omega)) f.
Admitted.

// HOL Light: Multivariate/homology.ml:1071 / CHAIN_BOUNDARY_CHAIN_MAP   (hash md5:480fb9284b7d62b7268e7ecd90d5df68)
Theorem hlt_CHAIN_BOUNDARY_CHAIN_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall g :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_chain_boundary B p (hl_chain_map A B p g c) = hl_chain_map A B (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) g (hl_chain_boundary A p c).
Admitted.

// HOL Light: Multivariate/homology.ml:1093 / SINGULAR_RELCYCLE_CHAIN_MAP   (hash md5:78ceba4f01e5a0b97df65256407a8f97)
Theorem hlt_SINGULAR_RELCYCLE_CHAIN_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall g :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 /\ (hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') g = 1 /\ hl_SUBSET B (hl_IMAGE A B g s) t = 1) -> hl_singular_relcycle B (hl_pair omega (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)) (hl_chain_map A B p g c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1109 / SINGULAR_RELBOUNDARY_CHAIN_MAP   (hash md5:c3693307b8b64ddcd6ae376e7e7e9231)
Theorem hlt_SINGULAR_RELBOUNDARY_CHAIN_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall g :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 /\ (hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') g = 1 /\ hl_SUBSET B (hl_IMAGE A B g s) t = 1) -> hl_singular_relboundary B (hl_pair omega (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)) (hl_chain_map A B p g c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1131 / SINGULAR_SIMPLEX_SING   (hash md5:0cfaf6d9d65d3b47f95df6502a8f3f60)
Theorem hlt_SINGULAR_SIMPLEX_SING : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall a :e A, forall f :e A :^: (R :^: omega), hl_topspace A top = hl_INSERT A a (hl_EMPTY A) -> (hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top) f = 1 <-> f = hl_RESTRICTION (R :^: omega) A (hl_standard_simplex p) (fun x :e R :^: omega => a)).
Admitted.

// HOL Light: Multivariate/homology.ml:1150 / SINGULAR_CHAIN_SING   (hash md5:bcb609d965e174bac81aae25e4abd822)
Theorem hlt_SINGULAR_CHAIN_SING : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall a :e A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_topspace A top = hl_INSERT A a (hl_EMPTY A) -> (hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 <-> exists b :e hl_ty_int, c = hl_frag_cmul (A :^: (R :^: omega)) b (hl_frag_of (A :^: (R :^: omega)) (hl_RESTRICTION (R :^: omega) A (hl_standard_simplex p) (fun x :e R :^: omega => a)))).
Admitted.

// HOL Light: Multivariate/homology.ml:1170 / CHAIN_BOUNDARY_OF_SING   (hash md5:a5200ebdb758813c8646b6ec0f68e14a)
Theorem hlt_CHAIN_BOUNDARY_OF_SING : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall a :e A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_topspace A top = hl_INSERT A a (hl_EMPTY A) /\ hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_chain_boundary A p c = hl_COND (hl_ty_frag (A :^: (R :^: omega))) (if p = hl_NUMERAL hl_zero \/ hl_ODD p = 1 then 1 else 0) (hl_frag_0 (A :^: (R :^: omega))) (hl_frag_extend (A :^: (R :^: omega)) (A :^: (R :^: omega)) (fun f :e A :^: (R :^: omega) => hl_frag_of (A :^: (R :^: omega)) (hl_RESTRICTION (R :^: omega) A (hl_standard_simplex (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun x :e R :^: omega => a))) c).
Admitted.

// HOL Light: Multivariate/homology.ml:1216 / SINGULAR_CYCLE_SING   (hash md5:25f7aae19779c7cf662942b2901ae8e5)
Theorem hlt_SINGULAR_CYCLE_SING : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall a :e A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_topspace A top = hl_INSERT A a (hl_EMPTY A) -> (hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))) c = 1 <-> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ (p = hl_NUMERAL hl_zero \/ (hl_ODD p = 1 \/ c = hl_frag_0 (A :^: (R :^: omega))))).
Admitted.

// HOL Light: Multivariate/homology.ml:1234 / SINGULAR_BOUNDARY_SING   (hash md5:d0c565a3d749bd0792aac26a2fd6218e)
Theorem hlt_SINGULAR_BOUNDARY_SING : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall a :e A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_topspace A top = hl_INSERT A a (hl_EMPTY A) -> (hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))) c = 1 <-> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 /\ (hl_ODD p = 1 \/ c = hl_frag_0 (A :^: (R :^: omega)))).
Admitted.

// HOL Light: Multivariate/homology.ml:1255 / SINGULAR_BOUNDARY_EQ_CYCLE_SING   (hash md5:dfc8dd141b2f957b90e3a89be2b5a3dd)
Theorem hlt_SINGULAR_BOUNDARY_EQ_CYCLE_SING : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall a :e A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_topspace A top = hl_INSERT A a (hl_EMPTY A) /\ hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) p = 1 -> (hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))) c = 1 <-> hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))) c = 1).
Admitted.

// HOL Light: Multivariate/homology.ml:1269 / oriented_simplex   (hash md5:7b82cb1b627cf2bb06c75d11a5794b12)
Theorem hlt_oriented_simplex_thm : forall p :e omega, forall l :e R :^: omega :^: omega, hl_oriented_simplex p l = hl_RESTRICTION (R :^: omega) (R :^: omega) (hl_standard_simplex p) (fun x :e R :^: omega => fun i :e omega => hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) p) (fun j :e omega => hl_real_mul (l j i) (x j))).
Admitted.

// HOL Light: Multivariate/homology.ml:1274 / simplicial_simplex   (hash md5:35bc367f562d5cb8bf91d005d9f082f3)
Theorem hlt_simplicial_simplex_thm : forall s :e 2 :^: (R :^: omega), forall f :e R :^: omega :^: (R :^: omega), forall p :e omega, hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s) f = 1 <-> hl_singular_simplex (R :^: omega) (hl_pair omega (hl_ty_topology (R :^: omega)) p (hl_subtopology (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) s)) f = 1 /\ exists l :e R :^: omega :^: omega, f = hl_oriented_simplex p l.
Admitted.

// HOL Light: Multivariate/homology.ml:1280 / SIMPLICIAL_SIMPLEX   (hash md5:0fa80f8d8c2a4a79ecd4d1a65dd65e1e)
Theorem hlt_SIMPLICIAL_SIMPLEX : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall f :e R :^: omega :^: (R :^: omega), hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s) f = 1 <-> hl_SUBSET (R :^: omega) (hl_IMAGE (R :^: omega) (R :^: omega) f (hl_standard_simplex p)) s = 1 /\ exists l :e R :^: omega :^: omega, f = hl_oriented_simplex p l.
Admitted.

// HOL Light: Multivariate/homology.ml:1300 / SIMPLICIAL_SIMPLEX_EMPTY   (hash md5:c84da7156227e0830820f475fb0b42e9)
Theorem hlt_SIMPLICIAL_SIMPLEX_EMPTY : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), ~ hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p (hl_EMPTY (R :^: omega))) f = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1305 / simplicial_chain   (hash md5:0e97897e55c30921a79effed58642143)
Theorem hlt_simplicial_chain_thm : forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), forall p :e omega, forall s :e 2 :^: (R :^: omega), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 <-> hl_SUBSET (R :^: omega :^: (R :^: omega)) (hl_frag_support (R :^: omega :^: (R :^: omega)) c) (hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1309 / SIMPLICIAL_CHAIN_0   (hash md5:c78ffe9b17d69ec16e1c5de68f57b4d6)
Theorem hlt_SIMPLICIAL_CHAIN_0 : forall p :e omega, forall s :e 2 :^: (R :^: omega), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) (hl_frag_0 (R :^: omega :^: (R :^: omega))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1313 / SIMPLICIAL_CHAIN_OF   (hash md5:e65607d60313824a93a319e31c9d0d46)
Theorem hlt_SIMPLICIAL_CHAIN_OF : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall c :e R :^: omega :^: (R :^: omega), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) (hl_frag_of (R :^: omega :^: (R :^: omega)) c) = 1 <-> hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1317 / SIMPLICIAL_CHAIN_CMUL   (hash md5:897327ff8b46df8c05ff29abb50e690c)
Theorem hlt_SIMPLICIAL_CHAIN_CMUL : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall a :e hl_ty_int, forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 -> hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) (hl_frag_cmul (R :^: omega :^: (R :^: omega)) a c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1323 / SIMPLICIAL_CHAIN_SUB   (hash md5:5cff53d18463442b3e6c412c6086a84b)
Theorem hlt_SIMPLICIAL_CHAIN_SUB : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall c1 c2 :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c1 = 1 /\ hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c2 = 1 -> hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) (hl_frag_sub (R :^: omega :^: (R :^: omega)) c1 c2) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1330 / SIMPLICIAL_CHAIN_SUM   (hash md5:2c88a6fc4f0c60e28ddf4bb0556bcd86)
Theorem hlt_SIMPLICIAL_CHAIN_SUM : forall A:set, A <> Empty -> forall p :e omega, forall s :e 2 :^: (R :^: omega), forall f :e hl_ty_frag (R :^: omega :^: (R :^: omega)) :^: A, forall k :e 2 :^: A, (forall c :e A, hl_IN A c k = 1 -> hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) (f c) = 1) -> hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) (hl_iterate (hl_ty_frag (R :^: omega :^: (R :^: omega))) A (hl_frag_add (R :^: omega :^: (R :^: omega))) k f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1338 / SIMPLICIAL_SIMPLEX_ORIENTED_SIMPLEX   (hash md5:6aa63f9cffc682382a8ab66b9361d8fc)
Theorem hlt_SIMPLICIAL_SIMPLEX_ORIENTED_SIMPLEX : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall l :e R :^: omega :^: omega, hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s) (hl_oriented_simplex p l) = 1 <-> hl_SUBSET (R :^: omega) (hl_IMAGE (R :^: omega) (R :^: omega) (fun x :e R :^: omega => fun i :e omega => hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) p) (fun j :e omega => hl_real_mul (l j i) (x j))) (hl_standard_simplex p)) s = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1347 / SIMPLICIAL_IMP_SINGULAR_SIMPLEX   (hash md5:dc8b09f51817220436eb44fbb496dac5)
Theorem hlt_SIMPLICIAL_IMP_SINGULAR_SIMPLEX : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall f :e R :^: omega :^: (R :^: omega), hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s) f = 1 -> hl_singular_simplex (R :^: omega) (hl_pair omega (hl_ty_topology (R :^: omega)) p (hl_subtopology (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) s)) f = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1354 / SIMPLICIAL_IMP_SINGULAR_CHAIN   (hash md5:2b60c8df64764733d77943ad70746c46)
Theorem hlt_SIMPLICIAL_IMP_SINGULAR_CHAIN : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 -> hl_singular_chain (R :^: omega) (hl_pair omega (hl_ty_topology (R :^: omega)) p (hl_subtopology (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) s)) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1361 / ORIENTED_SIMPLEX_EQ   (hash md5:cbe5637a10f5c74741b38734b45e2f38)
Theorem hlt_ORIENTED_SIMPLEX_EQ : forall p :e omega, forall l l' :e R :^: omega :^: omega, hl_oriented_simplex p l = hl_oriented_simplex p l' <-> forall i :e omega, hl_le i p = 1 -> l i = l' i.
Admitted.

// HOL Light: Multivariate/homology.ml:1373 / SINGULAR_FACE_ORIENTED_SIMPLEX   (hash md5:a6ab6635de55a0933fba3a422723b749)
Theorem hlt_SINGULAR_FACE_ORIENTED_SIMPLEX : forall p k :e omega, forall l :e R :^: omega :^: omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) p = 1 /\ hl_le k p = 1 -> hl_singular_face (R :^: omega) p k (hl_oriented_simplex p l) = hl_oriented_simplex (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (fun j :e omega => hl_COND (R :^: omega) (hl_lt j k) (l j) (l (hl_add j (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/homology.ml:1402 / SIMPLICIAL_SIMPLEX_SINGULAR_FACE   (hash md5:bda74633c2ff862a51d615931764ceeb)
Theorem hlt_SIMPLICIAL_SIMPLEX_SINGULAR_FACE : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall k :e omega, forall f :e R :^: omega :^: (R :^: omega), hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s) f = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) p = 1 /\ hl_le k p = 1) -> hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) s) (hl_singular_face (R :^: omega) p k f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1430 / SIMPLICIAL_CHAIN_BOUNDARY   (hash md5:27343626638bd157c4efc334554638b8)
Theorem hlt_SIMPLICIAL_CHAIN_BOUNDARY : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 -> hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) s) (hl_chain_boundary (R :^: omega) p c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1454 / simplex_cone   (hash md5:2764c8b30799b628d0c4ef7ee09f7ab0)
Theorem hlt_simplex_cone_thm : forall p :e omega, forall v :e R :^: omega, forall l :e R :^: omega :^: omega, hl_simplex_cone p v (hl_oriented_simplex p l) = hl_oriented_simplex (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (fun i :e omega => hl_COND (R :^: omega) (if i = hl_NUMERAL hl_zero then 1 else 0) v (l (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/homology.ml:1469 / SIMPLICIAL_SIMPLEX_SIMPLEX_CONE   (hash md5:7bb093caa7c28610e325652a361eea3f)
Theorem hlt_SIMPLICIAL_SIMPLEX_SIMPLEX_CONE : forall p :e omega, forall s t :e 2 :^: (R :^: omega), forall v :e R :^: omega, forall f :e R :^: omega :^: (R :^: omega), hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s) f = 1 /\ (forall x :e R :^: omega, forall u :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_IN (R :^: omega) x s = 1) -> hl_IN (R :^: omega) (fun i :e omega => hl_real_add (hl_real_mul (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) (v i)) (hl_real_mul u (x i))) t = 1) -> hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) t) (hl_simplex_cone p v f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1527 / simplicial_cone   (hash md5:8df13432ff3ea2994953fba9319e52d5)
Theorem hlt_simplicial_cone_thm : forall p :e omega, forall v :e R :^: omega, hl_simplicial_cone p v = hl_frag_extend (R :^: omega :^: (R :^: omega)) (R :^: omega :^: (R :^: omega)) (hl_o (R :^: omega :^: (R :^: omega)) (hl_ty_frag (R :^: omega :^: (R :^: omega))) (R :^: omega :^: (R :^: omega)) (hl_frag_of (R :^: omega :^: (R :^: omega))) (hl_simplex_cone p v)).
Admitted.

// HOL Light: Multivariate/homology.ml:1530 / SIMPLICIAL_CHAIN_SIMPLICIAL_CONE   (hash md5:bdab16f180197f52803e0be29c248fda)
Theorem hlt_SIMPLICIAL_CHAIN_SIMPLICIAL_CONE : forall p :e omega, forall s t :e 2 :^: (R :^: omega), forall v :e R :^: omega, forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 /\ (forall x :e R :^: omega, forall u :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_IN (R :^: omega) x s = 1) -> hl_IN (R :^: omega) (fun i :e omega => hl_real_add (hl_real_mul (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) (v i)) (hl_real_mul u (x i))) t = 1) -> hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) t) (hl_simplicial_cone p v c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1547 / CHAIN_BOUNDARY_SIMPLICIAL_CONE_OF   (hash md5:3ed0203af3209040ce1183525f33f20c)
Theorem hlt_CHAIN_BOUNDARY_SIMPLICIAL_CONE_OF : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall v :e R :^: omega, forall f :e R :^: omega :^: (R :^: omega), hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s) f = 1 -> hl_chain_boundary (R :^: omega) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_simplicial_cone p v (hl_frag_of (R :^: omega :^: (R :^: omega)) f)) = hl_frag_sub (R :^: omega :^: (R :^: omega)) (hl_frag_of (R :^: omega :^: (R :^: omega)) f) (hl_COND (hl_ty_frag (R :^: omega :^: (R :^: omega))) (if p = hl_NUMERAL hl_zero then 1 else 0) (hl_frag_of (R :^: omega :^: (R :^: omega)) (hl_RESTRICTION (R :^: omega) (R :^: omega) (hl_standard_simplex p) (fun u :e R :^: omega => v))) (hl_simplicial_cone (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) v (hl_chain_boundary (R :^: omega) p (hl_frag_of (R :^: omega :^: (R :^: omega)) f)))).
Admitted.

// HOL Light: Multivariate/homology.ml:1600 / CHAIN_BOUNDARY_SIMPLICIAL_CONE   (hash md5:06a68cc9f2e41d123b43c4be78d01400)
Theorem hlt_CHAIN_BOUNDARY_SIMPLICIAL_CONE : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall v :e R :^: omega, forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 -> hl_chain_boundary (R :^: omega) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_simplicial_cone p v c) = hl_frag_sub (R :^: omega :^: (R :^: omega)) c (hl_COND (hl_ty_frag (R :^: omega :^: (R :^: omega))) (if p = hl_NUMERAL hl_zero then 1 else 0) (hl_frag_extend (R :^: omega :^: (R :^: omega)) (R :^: omega :^: (R :^: omega)) (fun f :e R :^: omega :^: (R :^: omega) => hl_frag_of (R :^: omega :^: (R :^: omega)) (hl_RESTRICTION (R :^: omega) (R :^: omega) (hl_standard_simplex p) (fun u :e R :^: omega => v))) c) (hl_simplicial_cone (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) v (hl_chain_boundary (R :^: omega) p c))).
Admitted.

// HOL Light: Multivariate/homology.ml:1623 / SIMPLEX_MAP_ORIENTED_SIMPLEX   (hash md5:26cf671012341abf8a2e0b0a3c3b63ab)
Theorem hlt_SIMPLEX_MAP_ORIENTED_SIMPLEX : forall p q r :e omega, forall g :e R :^: omega :^: (R :^: omega), forall l :e R :^: omega :^: omega, forall s :e 2 :^: (R :^: omega), hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p (hl_standard_simplex q)) (hl_oriented_simplex p l) = 1 /\ (hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) r s) g = 1 /\ hl_le q r = 1) -> hl_simplex_map (R :^: omega) (R :^: omega) p g (hl_oriented_simplex p l) = hl_oriented_simplex p (hl_o (R :^: omega) (R :^: omega) omega g l).
Admitted.

// HOL Light: Multivariate/homology.ml:1657 / CHAIN_MAP_SIMPLICIAL_CONE   (hash md5:4bdfd9e5c3331662e0c3e8e520a0bd36)
Theorem hlt_CHAIN_MAP_SIMPLICIAL_CONE : forall s :e 2 :^: (R :^: omega), forall p q r :e omega, forall v :e R :^: omega, forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), forall g :e R :^: omega :^: (R :^: omega), hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) r s) g = 1 /\ (hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p (hl_standard_simplex q)) c = 1 /\ (hl_IN (R :^: omega) v (hl_standard_simplex q) = 1 /\ hl_le q r = 1)) -> hl_chain_map (R :^: omega) (R :^: omega) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) g (hl_simplicial_cone p v c) = hl_simplicial_cone p (g v) (hl_chain_map (R :^: omega) (R :^: omega) p g c).
Admitted.

// HOL Light: Multivariate/homology.ml:1701 / simplicial_vertex   (hash md5:898773ba07cafb3bef0e6b46115510ee)
Theorem hlt_simplicial_vertex_thm : forall f :e R :^: omega :^: (R :^: omega), forall i :e omega, hl_simplicial_vertex i f = f (fun j :e omega => hl_COND R (if j = i then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Multivariate/homology.ml:1705 / SIMPLICIAL_VERTEX_ORIENTED_SIMPLEX   (hash md5:4199009c79468ef84cca67f414e13c96)
Theorem hlt_SIMPLICIAL_VERTEX_ORIENTED_SIMPLEX : forall i p :e omega, forall l :e R :^: omega :^: omega, hl_simplicial_vertex i (hl_oriented_simplex p l) = hl_COND (R :^: omega) (hl_le i p) (l i) (hl_ARB (R :^: omega)).
Admitted.

// HOL Light: Multivariate/homology.ml:1715 / simplicial_subdivision   (hash md5:16f6b927aa711289a01866609777cb2b)
Theorem hlt_simplicial_subdivision_thm : forall p :e omega, hl_simplicial_subdivision (hl_NUMERAL hl_zero) = hl_I (hl_ty_frag (R :^: omega :^: (R :^: omega))) /\ hl_simplicial_subdivision (hl_SUC p) = hl_frag_extend (R :^: omega :^: (R :^: omega)) (R :^: omega :^: (R :^: omega)) (fun f :e R :^: omega :^: (R :^: omega) => hl_simplicial_cone p (fun i :e omega => hl_real_div (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_SUC p)) (fun j :e omega => hl_simplicial_vertex j f i)) (hl_real_add (hl_real_of_num p) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (hl_simplicial_subdivision p (hl_chain_boundary (R :^: omega) (hl_SUC p) (hl_frag_of (R :^: omega :^: (R :^: omega)) f)))).
Admitted.

// HOL Light: Multivariate/homology.ml:1723 / SIMPLICIAL_SUBDIVISION_0   (hash md5:c814f62741481c434790ab1ecb70ff32)
Theorem hlt_SIMPLICIAL_SUBDIVISION_0 : forall p :e omega, hl_simplicial_subdivision p (hl_frag_0 (R :^: omega :^: (R :^: omega))) = hl_frag_0 (R :^: omega :^: (R :^: omega)).
Admitted.

// HOL Light: Multivariate/homology.ml:1727 / SIMPLICIAL_SUBDIVISION_SUB   (hash md5:b0a44bfecfa0c7e2719a79e2bea9fb33)
Theorem hlt_SIMPLICIAL_SUBDIVISION_SUB : forall p :e omega, forall c1 c2 :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_subdivision p (hl_frag_sub (R :^: omega :^: (R :^: omega)) c1 c2) = hl_frag_sub (R :^: omega :^: (R :^: omega)) (hl_simplicial_subdivision p c1) (hl_simplicial_subdivision p c2).
Admitted.

// HOL Light: Multivariate/homology.ml:1735 / SIMPLICIAL_SUBDIVISION_OF   (hash md5:fecae0a2c0973bd0dc2920140d3e7a99)
Theorem hlt_SIMPLICIAL_SUBDIVISION_OF : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), hl_simplicial_subdivision p (hl_frag_of (R :^: omega :^: (R :^: omega)) f) = hl_COND (hl_ty_frag (R :^: omega :^: (R :^: omega))) (if p = hl_NUMERAL hl_zero then 1 else 0) (hl_frag_of (R :^: omega :^: (R :^: omega)) f) (hl_simplicial_cone (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (fun i :e omega => hl_real_div (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) p) (fun j :e omega => hl_simplicial_vertex j f i)) (hl_real_add (hl_real_of_num p) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_simplicial_subdivision (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_chain_boundary (R :^: omega) p (hl_frag_of (R :^: omega :^: (R :^: omega)) f)))).
Admitted.

// HOL Light: Multivariate/homology.ml:1746 / SIMPLICIAL_CHAIN_SIMPLICIAL_SUBDIVISION   (hash md5:6adb25f6e3522aba0bc509507db522d9)
Theorem hlt_SIMPLICIAL_CHAIN_SIMPLICIAL_SUBDIVISION : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 -> hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) (hl_simplicial_subdivision p c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:1796 / CHAIN_BOUNDARY_SIMPLICIAL_SUBDIVISION   (hash md5:d7cb4107cc284a250dcc7508b366821e)
Theorem hlt_CHAIN_BOUNDARY_SIMPLICIAL_SUBDIVISION : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 -> hl_chain_boundary (R :^: omega) p (hl_simplicial_subdivision p c) = hl_simplicial_subdivision (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_chain_boundary (R :^: omega) p c).
Admitted.

// HOL Light: Multivariate/homology.ml:1846 / SIMPLICIAL_SUBDIVISION_SHRINKS   (hash md5:39653c2902d1e96765c179192ed74fe0)
Theorem hlt_SIMPLICIAL_SUBDIVISION_SHRINKS : forall s :e 2 :^: (R :^: omega), forall k p :e omega, forall d :e R, forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 /\ (forall f :e R :^: omega :^: (R :^: omega), forall x y :e R :^: omega, hl_IN (R :^: omega :^: (R :^: omega)) f (hl_frag_support (R :^: omega :^: (R :^: omega)) c) = 1 /\ (hl_IN (R :^: omega) x (hl_standard_simplex p) = 1 /\ hl_IN (R :^: omega) y (hl_standard_simplex p) = 1) -> hl_real_le (hl_real_abs (hl_real_sub (f x k) (f y k))) d = 1) -> forall f :e R :^: omega :^: (R :^: omega), forall x y :e R :^: omega, hl_IN (R :^: omega :^: (R :^: omega)) f (hl_frag_support (R :^: omega :^: (R :^: omega)) (hl_simplicial_subdivision p c)) = 1 /\ (hl_IN (R :^: omega) x (hl_standard_simplex p) = 1 /\ hl_IN (R :^: omega) y (hl_standard_simplex p) = 1) -> hl_real_le (hl_real_abs (hl_real_sub (f x k) (f y k))) (hl_real_mul (hl_real_div (hl_real_of_num p) (hl_real_add (hl_real_of_num p) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) d) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:2030 / singular_subdivision   (hash md5:3a3651584d42f8eaf3d66d9c5f1d10e9)
Theorem hlt_singular_subdivision_thm : forall A:set, A <> Empty -> forall p :e omega, hl_singular_subdivision A p = hl_frag_extend (A :^: (R :^: omega)) (A :^: (R :^: omega)) (fun f :e A :^: (R :^: omega) => hl_chain_map (R :^: omega) A p f (hl_simplicial_subdivision p (hl_frag_of (R :^: omega :^: (R :^: omega)) (hl_RESTRICTION (R :^: omega) (R :^: omega) (hl_standard_simplex p) (hl_I (R :^: omega)))))).
Admitted.

// HOL Light: Multivariate/homology.ml:2037 / SINGULAR_SUBDIVISION_0   (hash md5:97070bde26fe3e0c2d36286531e6355c)
Theorem hlt_SINGULAR_SUBDIVISION_0 : forall A:set, A <> Empty -> forall p :e omega, hl_singular_subdivision A p (hl_frag_0 (A :^: (R :^: omega))) = hl_frag_0 (A :^: (R :^: omega)).
Admitted.

// HOL Light: Multivariate/homology.ml:2041 / SINGULAR_SUBDIVISION_SUB   (hash md5:4297935787b8cf7cc2f66ca024d902d4)
Theorem hlt_SINGULAR_SUBDIVISION_SUB : forall A:set, A <> Empty -> forall p :e omega, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_subdivision A p (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = hl_frag_sub (A :^: (R :^: omega)) (hl_singular_subdivision A p c1) (hl_singular_subdivision A p c2).
Admitted.

// HOL Light: Multivariate/homology.ml:2046 / SINGULAR_SUBDIVISION_ADD   (hash md5:42ef4f26597b051b5b1c3149f414bc35)
Theorem hlt_SINGULAR_SUBDIVISION_ADD : forall A:set, A <> Empty -> forall p :e omega, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_subdivision A p (hl_frag_add (A :^: (R :^: omega)) c1 c2) = hl_frag_add (A :^: (R :^: omega)) (hl_singular_subdivision A p c1) (hl_singular_subdivision A p c2).
Admitted.

// HOL Light: Multivariate/homology.ml:2051 / SIMPLICIAL_SIMPLEX_I   (hash md5:a34cc0c829428b063bb2afe9aa7b001c)
Theorem hlt_SIMPLICIAL_SIMPLEX_I : forall p :e omega, forall s :e 2 :^: (R :^: omega), hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) p s) (hl_RESTRICTION (R :^: omega) (R :^: omega) (hl_standard_simplex p) (hl_I (R :^: omega))) = 1 <-> hl_SUBSET (R :^: omega) (hl_standard_simplex p) s = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:2069 / SINGULAR_CHAIN_SINGULAR_SUBDIVISION   (hash md5:ae60ed1b70e86ff07ec3a74b615a9571)
Theorem hlt_SINGULAR_CHAIN_SINGULAR_SUBDIVISION : forall A:set, A <> Empty -> forall p :e omega, forall s :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p s) c = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) p s) (hl_singular_subdivision A p c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:2087 / NATURALITY_SINGULAR_SUBDIVISION   (hash md5:c05683f751eb17ddd1a155ced4776dbd)
Theorem hlt_NATURALITY_SINGULAR_SUBDIVISION : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall s :e hl_ty_topology A, forall g :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p s) c = 1 -> hl_singular_subdivision B p (hl_chain_map A B p g c) = hl_chain_map A B p g (hl_singular_subdivision A p c).
Admitted.

// HOL Light: Multivariate/homology.ml:2116 / SIMPLICIAL_CHAIN_CHAIN_MAP   (hash md5:cb2b979c0f7c612ac83b47ab8c1d91f9)
Theorem hlt_SIMPLICIAL_CHAIN_CHAIN_MAP : forall p q :e omega, forall s :e 2 :^: (R :^: omega), forall f :e R :^: omega :^: (R :^: omega), forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) q s) f = 1 /\ hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p (hl_standard_simplex q)) c = 1 -> hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) (hl_chain_map (R :^: omega) (R :^: omega) p f c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:2160 / SINGULAR_SUBDIVISION_SIMPLICIAL_SIMPLEX   (hash md5:18f0e1af410c062d08c6f93e39d5b013)
Theorem hlt_SINGULAR_SUBDIVISION_SIMPLICIAL_SIMPLEX : forall p :e omega, forall s :e 2 :^: (R :^: omega), forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p s) c = 1 -> hl_singular_subdivision (R :^: omega) p c = hl_simplicial_subdivision p c.
Admitted.

// HOL Light: Multivariate/homology.ml:2273 / NATURALITY_SIMPLICIAL_SUBDIVISION   (hash md5:749e1a41a76a2e121edb4521767c3526)
Theorem hlt_NATURALITY_SIMPLICIAL_SUBDIVISION : forall p q :e omega, forall s :e 2 :^: (R :^: omega), forall g :e R :^: omega :^: (R :^: omega), forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p (hl_standard_simplex q)) c = 1 /\ hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) q s) g = 1 -> hl_simplicial_subdivision p (hl_chain_map (R :^: omega) (R :^: omega) p g c) = hl_chain_map (R :^: omega) (R :^: omega) p g (hl_simplicial_subdivision p c).
Admitted.

// HOL Light: Multivariate/homology.ml:2292 / CHAIN_BOUNDARY_SINGULAR_SUBDIVISION   (hash md5:37acc6361d28f4daab3703f83bd33e20)
Theorem hlt_CHAIN_BOUNDARY_SINGULAR_SUBDIVISION : forall A:set, A <> Empty -> forall p :e omega, forall s :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p s) c = 1 -> hl_chain_boundary A p (hl_singular_subdivision A p c) = hl_singular_subdivision A (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_chain_boundary A p c).
Admitted.

// HOL Light: Multivariate/homology.ml:2353 / SINGULAR_SUBDIVISION_ZERO   (hash md5:4926ac91282b3d1a25053400153686b9)
Theorem hlt_SINGULAR_SUBDIVISION_ZERO : forall A:set, A <> Empty -> forall s :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_NUMERAL hl_zero) s) c = 1 -> hl_singular_subdivision A (hl_NUMERAL hl_zero) c = c.
Admitted.

// HOL Light: Multivariate/homology.ml:2367 / CHAIN_HOMOTOPIC_SIMPLICIAL_SUBDIVISION   (hash md5:5c93edd35ed1cd65ded4453363f0eeb2)
Theorem hlt_CHAIN_HOMOTOPIC_SIMPLICIAL_SUBDIVISION : exists h :e hl_ty_frag (R :^: omega :^: (R :^: omega)) :^: hl_ty_frag (R :^: omega :^: (R :^: omega)) :^: omega, (forall p :e omega, h p (hl_frag_0 (R :^: omega :^: (R :^: omega))) = hl_frag_0 (R :^: omega :^: (R :^: omega))) /\ ((forall p :e omega, forall c1 c2 :e hl_ty_frag (R :^: omega :^: (R :^: omega)), h p (hl_frag_sub (R :^: omega :^: (R :^: omega)) c1 c2) = hl_frag_sub (R :^: omega :^: (R :^: omega)) (h p c1) (h p c2)) /\ ((forall p q r :e omega, forall g :e R :^: omega :^: (R :^: omega), forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p (hl_standard_simplex q)) c = 1 /\ hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) q (hl_standard_simplex r)) g = 1 -> hl_chain_map (R :^: omega) (R :^: omega) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) g (h p c) = h p (hl_chain_map (R :^: omega) (R :^: omega) p g c)) /\ ((forall p q :e omega, forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p (hl_standard_simplex q)) c = 1 -> hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_standard_simplex q)) (h p c) = 1) /\ forall p q :e omega, forall c :e hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_simplicial_chain (hl_pair omega (2 :^: (R :^: omega)) p (hl_standard_simplex q)) c = 1 -> hl_frag_add (R :^: omega :^: (R :^: omega)) (hl_chain_boundary (R :^: omega) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (h p c)) (h (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_chain_boundary (R :^: omega) p c)) = hl_frag_sub (R :^: omega :^: (R :^: omega)) (hl_simplicial_subdivision p c) c))).
Admitted.

// HOL Light: Multivariate/homology.ml:2597 / CHAIN_HOMOTOPIC_SINGULAR_SUBDIVISION   (hash md5:4d60815cd5c777cc99fa55249ecb5e81)
Theorem hlt_CHAIN_HOMOTOPIC_SINGULAR_SUBDIVISION : forall A:set, A <> Empty -> exists h :e hl_ty_frag (A :^: (R :^: omega)) :^: hl_ty_frag (A :^: (R :^: omega)) :^: omega, (forall p :e omega, h p (hl_frag_0 (A :^: (R :^: omega))) = hl_frag_0 (A :^: (R :^: omega))) /\ ((forall p :e omega, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), h p (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = hl_frag_sub (A :^: (R :^: omega)) (h p c1) (h p c2)) /\ ((forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) top) (h p c) = 1) /\ forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_frag_add (A :^: (R :^: omega)) (hl_chain_boundary A (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (h p c)) (h (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_chain_boundary A p c)) = hl_frag_sub (A :^: (R :^: omega)) (hl_singular_subdivision A p c) c)).
Admitted.

// HOL Light: Multivariate/homology.ml:2774 / HOMOLOGOUS_REL_SINGULAR_SUBDIVISION   (hash md5:a643eac8d0094e6f279df43fd1aca8a0)
Theorem hlt_HOMOLOGOUS_REL_SINGULAR_SUBDIVISION : forall A:set, A <> Empty -> forall p :e omega, forall s :e hl_ty_topology A, forall t :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) s t)) c = 1 -> hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) s t)) (hl_singular_subdivision A p c) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:2794 / ITERATED_SINGULAR_SUBDIVISION   (hash md5:b8242fab999b69f07d9cc933df90ae29)
Theorem hlt_ITERATED_SINGULAR_SUBDIVISION : forall A:set, A <> Empty -> forall p :e omega, forall s :e hl_ty_topology A, forall n :e omega, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p s) c = 1 -> hl_ITER (hl_ty_frag (A :^: (R :^: omega))) n (hl_singular_subdivision A p) c = hl_frag_extend (A :^: (R :^: omega)) (A :^: (R :^: omega)) (fun f :e A :^: (R :^: omega) => hl_chain_map (R :^: omega) A p f (hl_ITER (hl_ty_frag (R :^: omega :^: (R :^: omega))) n (hl_simplicial_subdivision p) (hl_frag_of (R :^: omega :^: (R :^: omega)) (hl_RESTRICTION (R :^: omega) (R :^: omega) (hl_standard_simplex p) (hl_I (R :^: omega)))))) c.
Admitted.

// HOL Light: Multivariate/homology.ml:2849 / CHAIN_HOMOTOPIC_ITERATED_SINGULAR_SUBDIVISION   (hash md5:4e548cbee6d2e532e591050fedc6610a)
Theorem hlt_CHAIN_HOMOTOPIC_ITERATED_SINGULAR_SUBDIVISION : forall A:set, A <> Empty -> forall n :e omega, exists h :e hl_ty_frag (A :^: (R :^: omega)) :^: hl_ty_frag (A :^: (R :^: omega)) :^: omega, (forall p :e omega, h p (hl_frag_0 (A :^: (R :^: omega))) = hl_frag_0 (A :^: (R :^: omega))) /\ ((forall p :e omega, forall c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), h p (hl_frag_sub (A :^: (R :^: omega)) c1 c2) = hl_frag_sub (A :^: (R :^: omega)) (h p c1) (h p c2)) /\ ((forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_singular_chain A (hl_pair omega (hl_ty_topology A) (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) top) (h p c) = 1) /\ forall p :e omega, forall top :e hl_ty_topology A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1 -> hl_frag_add (A :^: (R :^: omega)) (hl_chain_boundary A (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (h p c)) (h (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_chain_boundary A p c)) = hl_frag_sub (A :^: (R :^: omega)) (hl_ITER (hl_ty_frag (A :^: (R :^: omega))) n (hl_singular_subdivision A p) c) c)).
Admitted.

// HOL Light: Multivariate/homology.ml:2916 / SUFFICIENT_ITERATED_SINGULAR_SUBDIVISION_EXISTS   (hash md5:aa15ee52d041c3bdc6d6dfafdacf826b)
Theorem hlt_SUFFICIENT_ITERATED_SINGULAR_SUBDIVISION_EXISTS : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall u :e 2 :^: (2 :^: A), forall c :e hl_ty_frag (A :^: (R :^: omega)), (forall v :e 2 :^: A, hl_IN (2 :^: A) v u = 1 -> hl_open_in A top v = 1) /\ (hl_SUBSET A (hl_topspace A top) (hl_UNIONS A u) = 1 /\ hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top) c = 1) -> exists n :e omega, forall m :e omega, forall f :e A :^: (R :^: omega), hl_le n m = 1 /\ hl_IN (A :^: (R :^: omega)) f (hl_frag_support (A :^: (R :^: omega)) (hl_ITER (hl_ty_frag (A :^: (R :^: omega))) m (hl_singular_subdivision A p) c)) = 1 -> exists v :e 2 :^: A, hl_IN (2 :^: A) v u = 1 /\ hl_SUBSET A (hl_IMAGE (R :^: omega) A f (hl_standard_simplex p)) v = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:3189 / SMALL_HOMOLOGOUS_REL_RELCYCLE_EXISTS   (hash md5:ef1934e7b0b8b712797aa34365b85fa0)
Theorem hlt_SMALL_HOMOLOGOUS_REL_RELCYCLE_EXISTS : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall u :e 2 :^: (2 :^: A), forall c :e hl_ty_frag (A :^: (R :^: omega)), (forall v :e 2 :^: A, hl_IN (2 :^: A) v u = 1 -> hl_open_in A top v = 1) /\ (hl_SUBSET A (hl_topspace A top) (hl_UNIONS A u) = 1 /\ hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1) -> exists c' :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c' = 1 /\ (hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c c' = 1 /\ forall f :e A :^: (R :^: omega), hl_IN (A :^: (R :^: omega)) f (hl_frag_support (A :^: (R :^: omega)) c') = 1 -> exists v :e 2 :^: A, hl_IN (2 :^: A) v u = 1 /\ hl_SUBSET A (hl_IMAGE (R :^: omega) A f (hl_standard_simplex p)) v = 1).
Admitted.

// HOL Light: Multivariate/homology.ml:3217 / EXCISED_CHAIN_EXISTS   (hash md5:d652b12b756517667a72e4007e0d38ef)
Theorem hlt_EXCISED_CHAIN_EXISTS : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s t u :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_SUBSET A (hl_closure_of A top u) (hl_interior_of A top t) = 1 /\ (hl_SUBSET A t s = 1 /\ hl_singular_chain A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s)) c = 1) -> exists n :e omega, exists d e1 :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_chain A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top (hl_DIFF A s u))) d = 1 /\ (hl_singular_chain A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top t)) e1 = 1 /\ hl_ITER (hl_ty_frag (A :^: (R :^: omega))) n (hl_singular_subdivision A p) c = hl_frag_add (A :^: (R :^: omega)) d e1).
Admitted.

// HOL Light: Multivariate/homology.ml:3274 / EXCISED_RELCYCLE_EXISTS   (hash md5:edb5f83700524b8b22f3b15c3fe1411d)
Theorem hlt_EXCISED_RELCYCLE_EXISTS : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s t u :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_SUBSET A (hl_closure_of A top u) (hl_interior_of A top t) = 1 /\ (hl_SUBSET A t s = 1 /\ hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t)) c = 1) -> exists c' :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top (hl_DIFF A s u)) (hl_DIFF A t u))) c' = 1 /\ hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t)) c c' = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:3341 / HOMOTOPIC_IMP_HOMOLOGOUS_REL_CHAIN_MAPS   (hash md5:f9923af1377ccbc03c4d2f3ae2217139)
Theorem hlt_HOMOTOPIC_IMP_HOMOLOGOUS_REL_CHAIN_MAPS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall f g :e B :^: A, forall s :e hl_ty_topology A, forall t :e 2 :^: A, forall u :e hl_ty_topology B, forall v :e 2 :^: B, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_homotopic_with A B (fun h :e B :^: A => hl_SUBSET B (hl_IMAGE A B h t) v) (hl_pair (hl_ty_topology A) (hl_ty_topology B) s u) f g = 1 /\ hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) s t)) c = 1 -> hl_homologous_rel B (hl_pair omega (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) u v)) (hl_chain_map A B p f c) (hl_chain_map A B p g c) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:3972 / chain_group   (hash md5:fa9dc9e0921ca0d21ce26570b9cb630d)
Theorem hlt_chain_group_thm : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, hl_chain_group A (hl_pair omega (hl_ty_topology A) p top) = hl_free_abelian_group (A :^: (R :^: omega)) (hl_singular_simplex A (hl_pair omega (hl_ty_topology A) p top)).
Admitted.

// HOL Light: Multivariate/homology.ml:3976 / CHAIN_GROUP   (hash md5:d146bfcbdba8c1a1b2d7d2211e7d909d)
Theorem hlt_CHAIN_GROUP : forall A:set, A <> Empty -> (forall p :e omega, forall top :e hl_ty_topology A, hl_group_carrier (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) p top)) = hl_singular_chain A (hl_pair omega (hl_ty_topology A) p top)) /\ ((forall p :e omega, forall top :e hl_ty_topology A, hl_group_id (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) p top)) = hl_frag_0 (A :^: (R :^: omega))) /\ ((forall p :e omega, forall top :e hl_ty_topology A, hl_group_inv (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) p top)) = hl_frag_neg (A :^: (R :^: omega))) /\ forall p :e omega, forall top :e hl_ty_topology A, hl_group_mul (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) p top)) = hl_frag_add (A :^: (R :^: omega)))).
Admitted.

// HOL Light: Multivariate/homology.ml:3985 / ABELIAN_CHAIN_GROUP   (hash md5:0bbfeaf6aa043d1efb5466aefd7f6d6d)
Theorem hlt_ABELIAN_CHAIN_GROUP : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, hl_abelian_group (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:3989 / SUBGROUP_SINGULAR_RELCYCLE   (hash md5:97e01fc59871631742bdc5eac056f3ec)
Theorem hlt_SUBGROUP_SINGULAR_RELCYCLE : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_subgroup_of (hl_ty_frag (A :^: (R :^: omega))) (hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:3998 / relcycle_group   (hash md5:0ea30a81e8ddaf04e2fc640553e906e3)
Theorem hlt_relcycle_group_thm : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = hl_subgroup_generated (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) p top)) (hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))).
Admitted.

// HOL Light: Multivariate/homology.ml:4002 / RELCYCLE_GROUP   (hash md5:7a72c3c6f720d49878ae8409b3db27fb)
Theorem hlt_RELCYCLE_GROUP : forall A:set, A <> Empty -> (forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_carrier (hl_ty_frag (A :^: (R :^: omega))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) /\ ((forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_id (hl_ty_frag (A :^: (R :^: omega))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = hl_frag_0 (A :^: (R :^: omega))) /\ ((forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_inv (hl_ty_frag (A :^: (R :^: omega))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = hl_frag_neg (A :^: (R :^: omega))) /\ forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_mul (hl_ty_frag (A :^: (R :^: omega))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = hl_frag_add (A :^: (R :^: omega)))).
Admitted.

// HOL Light: Multivariate/homology.ml:4012 / ABELIAN_RELCYCLE_GROUP   (hash md5:953dfef8ad0a714b1e1b1fab6082d9ed)
Theorem hlt_ABELIAN_RELCYCLE_GROUP : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_abelian_group (hl_ty_frag (A :^: (R :^: omega))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4017 / RELCYCLE_GROUP_RESTRICT   (hash md5:13dbda0bdcf11886b4a53a42e56e54e8)
Theorem hlt_RELCYCLE_GROUP_RESTRICT : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INTER A (hl_topspace A top) s))).
Admitted.

// HOL Light: Multivariate/homology.ml:4023 / relative_homology_group   (hash md5:efe676f9c87d90d95d776cdf7e5edbd5)
Theorem hlt_relative_homology_group_thm : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = hl_COND (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_int_lt p (hl_int_of_num (hl_NUMERAL hl_zero))) (hl_singleton_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_ARB (2 :^: hl_ty_frag (A :^: (R :^: omega))))) (hl_quotient_group (hl_ty_frag (A :^: (R :^: omega))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_num_of_int p) (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_num_of_int p) (hl_pair (hl_ty_topology A) (2 :^: A) top s)))).
Admitted.

// HOL Light: Multivariate/homology.ml:4029 / homology_group   (hash md5:d419e1dffb36cb36041a64f29520d994)
Theorem hlt_homology_group_thm : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top) = hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))).
Admitted.

// HOL Light: Multivariate/homology.ml:4032 / RELATIVE_HOMOLOGY_GROUP_RESTRICT   (hash md5:37ad61f3e4fd4a882396254792752f76)
Theorem hlt_RELATIVE_HOMOLOGY_GROUP_RESTRICT : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INTER A (hl_topspace A top) s))).
Admitted.

// HOL Light: Multivariate/homology.ml:4041 / NONTRIVIAL_RELATIVE_HOMOLOGY_GROUP   (hash md5:0ceba1cd826e66129cc236132d7fc10b)
Theorem hlt_NONTRIVIAL_RELATIVE_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = hl_quotient_group (hl_ty_frag (A :^: (R :^: omega))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))).
Admitted.

// HOL Light: Multivariate/homology.ml:4049 / TRIVIAL_RELATIVE_HOMOLOGY_GROUP   (hash md5:cc9b847b7c8d819c474987f2d265f9da)
Theorem hlt_TRIVIAL_RELATIVE_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_int_lt p (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4054 / SUBGROUP_SINGULAR_RELBOUNDARY   (hash md5:6df271b061c458c82c54dc431fce9728)
Theorem hlt_SUBGROUP_SINGULAR_RELBOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_subgroup_of (hl_ty_frag (A :^: (R :^: omega))) (hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4063 / SUBGROUP_SINGULAR_RELBOUNDARY_RELCYCLE   (hash md5:db6fe99467e46824520b73c69fd6360f)
Theorem hlt_SUBGROUP_SINGULAR_RELBOUNDARY_RELCYCLE : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_subgroup_of (hl_ty_frag (A :^: (R :^: omega))) (hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4071 / NORMAL_SUBGROUP_SINGULAR_RELBOUNDARY_RELCYCLE   (hash md5:a98180b137de9ca8d77bdb3e7df2799d)
Theorem hlt_NORMAL_SUBGROUP_SINGULAR_RELBOUNDARY_RELCYCLE : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_normal_subgroup_of (hl_ty_frag (A :^: (R :^: omega))) (hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4077 / RIGHT_COSET_SINGULAR_RELBOUNDARY   (hash md5:46f57de2ea8ac580a59938b51cec9c33)
Theorem hlt_RIGHT_COSET_SINGULAR_RELBOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_right_coset (hl_ty_frag (A :^: (R :^: omega))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)).
Admitted.

// HOL Light: Multivariate/homology.ml:4092 / RELATIVE_HOMOLOGY_GROUP   (hash md5:c0f2d357b842d7771ea9896e75080590)
Theorem hlt_RELATIVE_HOMOLOGY_GROUP : forall A:set, A <> Empty -> (forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = hl_GSPEC (2 :^: hl_ty_frag (A :^: (R :^: omega))) (fun GEN_PVAR_2565 :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) => if exists c :e hl_ty_frag (A :^: (R :^: omega)), hl_SETSPEC (2 :^: hl_ty_frag (A :^: (R :^: omega))) GEN_PVAR_2565 (hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c) (hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c) = 1 then 1 else 0)) /\ ((forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_id (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) /\ ((forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_inv (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = fun r :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) => hl_GSPEC (hl_ty_frag (A :^: (R :^: omega))) (fun GEN_PVAR_2566 :e hl_ty_frag (A :^: (R :^: omega)) => if exists c :e hl_ty_frag (A :^: (R :^: omega)), hl_SETSPEC (hl_ty_frag (A :^: (R :^: omega))) GEN_PVAR_2566 (hl_IN (hl_ty_frag (A :^: (R :^: omega))) c r) (hl_frag_neg (A :^: (R :^: omega)) c) = 1 then 1 else 0)) /\ forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_mul (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = fun r1 :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) => fun r2 :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) => hl_GSPEC (hl_ty_frag (A :^: (R :^: omega))) (fun GEN_PVAR_2567 :e hl_ty_frag (A :^: (R :^: omega)) => if exists c1 c2 :e hl_ty_frag (A :^: (R :^: omega)), hl_SETSPEC (hl_ty_frag (A :^: (R :^: omega))) GEN_PVAR_2567 (if hl_IN (hl_ty_frag (A :^: (R :^: omega))) c1 r1 = 1 /\ hl_IN (hl_ty_frag (A :^: (R :^: omega))) c2 r2 = 1 then 1 else 0) (hl_frag_add (A :^: (R :^: omega)) c1 c2) = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/homology.ml:4112 / HOMOLOGOUS_REL_EQ_RELBOUNDARY   (hash md5:d9676ca801b6b79afbcdb242164dc783)
Theorem hlt_HOMOLOGOUS_REL_EQ_RELBOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) <-> hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4127 / GROUP_HOMOMORPHISM_CHAIN_BOUNDARY   (hash md5:208790d2a19f87f0a4f134f488de206c)
Theorem hlt_GROUP_HOMOMORPHISM_CHAIN_BOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_homomorphism (hl_ty_frag (A :^: (R :^: omega))) (hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (hl_ty_frag (A :^: (R :^: omega)))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A))))) (hl_chain_boundary A p) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4295 / GROUP_HOMOMORPHISM_CHAIN_MAP   (hash md5:d21aba98b80d7d6adb13d0fce1828656)
Theorem hlt_GROUP_HOMOMORPHISM_CHAIN_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ hl_SUBSET B (hl_IMAGE A B f s) t = 1 -> hl_group_homomorphism (hl_ty_frag (A :^: (R :^: omega))) (hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (hl_ty_frag (B :^: (R :^: omega)))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relcycle_group B (hl_pair omega (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) (hl_chain_map A B p f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4477 / HOM_INDUCED_CHAIN_MAP   (hash md5:16233d602be6622f9df1e63d52288e1e)
Theorem hlt_HOM_INDUCED_CHAIN_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1) -> hl_hom_induced A B (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f (hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c) = hl_homologous_rel B (hl_pair omega (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)) (hl_chain_map A B p f c).
Admitted.

// HOL Light: Multivariate/homology.ml:4488 / HOM_INDUCED_EQ   (hash md5:b0cec0d86c1ccf8f94506a92cb6d536e)
Theorem hlt_HOM_INDUCED_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f g :e B :^: A, (forall x :e A, hl_IN A x (hl_topspace A top) = 1 -> f x = g x) -> hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f = hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) g.
Admitted.

// HOL Light: Multivariate/homology.ml:4545 / ABELIAN_RELATIVE_HOMOLOGY_GROUP   (hash md5:b7b548e6679d5afc0ad4a98546c59962)
Theorem hlt_ABELIAN_RELATIVE_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_abelian_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4552 / HOM_INDUCED_ID_GEN   (hash md5:4ff2a56d6413bba0160c158d8308a709)
Theorem hlt_HOM_INDUCED_ID_GEN : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall f :e A :^: A, forall s :e 2 :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_continuous_map A A (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) f = 1 /\ ((forall x :e A, hl_IN A x (hl_topspace A top) = 1 -> f x = x) /\ hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) c (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) = 1) -> hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology A) (2 :^: A) top s) f c = c.
Admitted.

// HOL Light: Multivariate/homology.ml:4575 / HOM_INDUCED_ID   (hash md5:52538d69bda92bb14f9dddc4cdaad821)
Theorem hlt_HOM_INDUCED_ID : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) c (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) = 1 -> hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x) c = c.
Admitted.

// HOL Light: Multivariate/homology.ml:4583 / HOM_INDUCED_COMPOSE   (hash md5:3619bdf5e1c19d34e9b0cda7fdc7a0d6)
Theorem hlt_HOM_INDUCED_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall top'' :e hl_ty_topology C, forall u :e 2 :^: C, forall f :e B :^: A, forall g :e C :^: B, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ (hl_continuous_map B C (hl_pair (hl_ty_topology B) (hl_ty_topology C) top' top'') g = 1 /\ hl_SUBSET C (hl_IMAGE B C g t) u = 1)) -> hl_hom_induced A C p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology C) (2 :^: C) top'' u) (hl_o B C A g f) = hl_o (2 :^: hl_ty_frag (B :^: (R :^: omega))) (2 :^: hl_ty_frag (C :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_induced B C p (hl_pair (hl_ty_topology B) (2 :^: B) top' t) (hl_pair (hl_ty_topology C) (2 :^: C) top'' u) g) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f).
Admitted.

// HOL Light: Multivariate/homology.ml:4613 / NATURALITY_HOM_INDUCED   (hash md5:76e853008a6456c7e5d8017d0233dc0a)
Theorem hlt_NATURALITY_HOM_INDUCED : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ hl_SUBSET B (hl_IMAGE A B f s) t = 1 -> hl_o (2 :^: hl_ty_frag (B :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_boundary B p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f) = hl_o (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_induced A B (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) (hl_subtopology B top' t) (hl_EMPTY B)) f) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)).
Admitted.

// HOL Light: Multivariate/homology.ml:4660 / HOMOLOGY_EXACTNESS_AXIOM_1   (hash md5:24c328c8c149cc2590728c4b43a1249e)
Theorem hlt_HOMOLOGY_EXACTNESS_AXIOM_1 : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_exactness (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s))))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4764 / HOMOLOGY_EXACTNESS_AXIOM_2   (hash md5:e1ce48f303c00dea3b28a28a0fb4f314)
Theorem hlt_HOMOLOGY_EXACTNESS_AXIOM_2 : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_exactness (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) top)))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_hom_induced A A (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4833 / HOMOLOGY_EXACTNESS_AXIOM_3   (hash md5:1695b4cd468024e1508f2bcd4d49d051)
Theorem hlt_HOMOLOGY_EXACTNESS_AXIOM_3 : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_exactness (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x)) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4915 / HOMOLOGY_DIMENSION_AXIOM   (hash md5:b29e4a228c0fe3d604c0cfbc7301b999)
Theorem hlt_HOMOLOGY_DIMENSION_AXIOM : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall a :e A, hl_topspace A top = hl_INSERT A a (hl_EMPTY A) /\ ~ p = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:4928 / HOMOLOGY_HOMOTOPY_AXIOM   (hash md5:33a53416c086e69762801a265783a5e4)
Theorem hlt_HOMOLOGY_HOMOTOPY_AXIOM : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f g :e B :^: A, hl_homotopic_with A B (fun h :e B :^: A => hl_SUBSET B (hl_IMAGE A B h s) t) (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f g = 1 -> hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f = hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) g.
Admitted.

// HOL Light: Multivariate/homology.ml:4951 / HOMOLOGY_EXCISION_AXIOM   (hash md5:478151d5c2f3972057f9af602364ddd2)
Theorem hlt_HOMOLOGY_EXCISION_AXIOM : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t u :e 2 :^: A, hl_SUBSET A (hl_closure_of A top u) (hl_interior_of A top t) = 1 /\ hl_SUBSET A t s = 1 -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top (hl_DIFF A s u)) (hl_DIFF A t u)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top (hl_DIFF A s u)) (hl_DIFF A t u)) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5095 / GROUP_ISOMORPHISM_CHAIN_GROUP_SUM   (hash md5:27e1ad9179bb705faad56a90eac60e7f)
Theorem hlt_GROUP_ISOMORPHISM_CHAIN_GROUP_SUM : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall u :e 2 :^: (2 :^: A), hl_pairwise (2 :^: A) (hl_DISJOINT A) u = 1 /\ (hl_UNIONS A u = hl_topspace A top /\ (forall c t :e 2 :^: A, hl_compact_in A top c = 1 /\ (hl_path_connected_in A top c = 1 /\ (hl_IN (2 :^: A) t u = 1 /\ ~ hl_DISJOINT A c t = 1)) -> hl_SUBSET A c t = 1)) -> hl_group_isomorphism (hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A)) (hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A))) (hl_ty_group (hl_ty_frag (A :^: (R :^: omega)))) (hl_sum_group (2 :^: A) (hl_ty_frag (A :^: (R :^: omega))) u (fun s :e 2 :^: A => hl_chain_group A (hl_pair omega (hl_ty_topology A) p (hl_subtopology A top s)))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) p top))) (hl_iterate (hl_ty_frag (A :^: (R :^: omega))) (2 :^: A) (hl_frag_add (A :^: (R :^: omega))) u) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5148 / GROUP_ISOMORPHISM_CYCLE_GROUP_SUM   (hash md5:6a5864ee1428904cffb79aa538ac74a4)
Theorem hlt_GROUP_ISOMORPHISM_CYCLE_GROUP_SUM : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall u :e 2 :^: (2 :^: A), hl_pairwise (2 :^: A) (hl_DISJOINT A) u = 1 /\ (hl_UNIONS A u = hl_topspace A top /\ (forall c t :e 2 :^: A, hl_compact_in A top c = 1 /\ (hl_path_connected_in A top c = 1 /\ (hl_IN (2 :^: A) t u = 1 /\ ~ hl_DISJOINT A c t = 1)) -> hl_SUBSET A c t = 1)) -> hl_group_isomorphism (hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A)) (hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A))) (hl_ty_group (hl_ty_frag (A :^: (R :^: omega)))) (hl_sum_group (2 :^: A) (hl_ty_frag (A :^: (R :^: omega))) u (fun t :e 2 :^: A => hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top t) (hl_EMPTY A))))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))))) (hl_iterate (hl_ty_frag (A :^: (R :^: omega))) (2 :^: A) (hl_frag_add (A :^: (R :^: omega))) u) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5232 / HOMOLOGY_ADDITIVITY_AXIOM_GEN   (hash md5:5f01561039df638e01c7018b25623182)
Theorem hlt_HOMOLOGY_ADDITIVITY_AXIOM_GEN : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall u :e 2 :^: (2 :^: A), hl_pairwise (2 :^: A) (hl_DISJOINT A) u = 1 /\ (hl_UNIONS A u = hl_topspace A top /\ (forall c t :e 2 :^: A, hl_compact_in A top c = 1 /\ (hl_path_connected_in A top c = 1 /\ (hl_IN (2 :^: A) t u = 1 /\ ~ hl_DISJOINT A c t = 1)) -> hl_SUBSET A c t = 1)) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A)) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_sum_group (2 :^: A) (2 :^: hl_ty_frag (A :^: (R :^: omega))) u (fun s :e 2 :^: A => hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) (fun x :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A) => hl_iterate (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: A) (hl_group_add (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) u (fun v :e 2 :^: A => hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top v) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun z :e A => z) (x v))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5488 / HOMOLOGY_ADDITIVITY_AXIOM   (hash md5:c354dc7a80c7b91ffcd5f2e6e4b83a15)
Theorem hlt_HOMOLOGY_ADDITIVITY_AXIOM : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall u :e 2 :^: (2 :^: A), (forall v :e 2 :^: A, hl_IN (2 :^: A) v u = 1 -> hl_open_in A top v = 1) /\ (hl_pairwise (2 :^: A) (hl_DISJOINT A) u = 1 /\ hl_UNIONS A u = hl_topspace A top) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A)) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_sum_group (2 :^: A) (2 :^: hl_ty_frag (A :^: (R :^: omega))) u (fun s :e 2 :^: A => hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) (fun x :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: A) => hl_iterate (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: A) (hl_group_add (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) u (fun v :e 2 :^: A => hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top v) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun z :e A => z) (x v))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5517 / GROUP_ISOMORPHISM_INTEGER_ZEROTH_HOMOLOGY_GROUP   (hash md5:af9302266a8914630adedb55793e0cf2)
Theorem hlt_GROUP_ISOMORPHISM_INTEGER_ZEROTH_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, forall f :e A :^: (R :^: omega), hl_path_connected_space A top = 1 /\ hl_singular_simplex A (hl_pair omega (hl_ty_topology A) (hl_NUMERAL hl_zero) top) f = 1 -> hl_group_isomorphism hl_ty_int (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group hl_ty_int) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) hl_integer_group (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_of_num (hl_NUMERAL hl_zero)) top))) (hl_group_zpow (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_of_num (hl_NUMERAL hl_zero)) top)) (hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_NUMERAL hl_zero) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A))) (hl_frag_of (A :^: (R :^: omega)) f))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5657 / ISOMORPHIC_GROUP_INTEGER_ZEROTH_HOMOLOGY_GROUP   (hash md5:e08aaf79ad1bff36d82c6665ea171c18)
Theorem hlt_ISOMORPHIC_GROUP_INTEGER_ZEROTH_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_path_connected_space A top = 1 /\ ~ hl_topspace A top = hl_EMPTY A -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) hl_ty_int (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_of_num (hl_NUMERAL hl_zero)) top)) hl_integer_group = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5675 / HOMOLOGY_COEFFICIENTS   (hash md5:be126427ced9d8c49d8371c4502d237b)
Theorem hlt_HOMOLOGY_COEFFICIENTS : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, forall a :e A, hl_topspace A top = hl_INSERT A a (hl_EMPTY A) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) hl_ty_int (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_of_num (hl_NUMERAL hl_zero)) top)) hl_integer_group = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5684 / ZEROTH_HOMOLOGY_GROUP   (hash md5:fde820fcf74db063a5d6f405b061f641)
Theorem hlt_ZEROTH_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_ty_frag (2 :^: A)) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_of_num (hl_NUMERAL hl_zero)) top)) (hl_free_abelian_group (2 :^: A) (hl_path_components_of A top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5712 / ISOMORPHIC_HOMOLOGY_IMP_PATH_COMPONENTS   (hash md5:e8f50f569d2c511f0e29e631d555af0b)
Theorem hlt_ISOMORPHIC_HOMOLOGY_IMP_PATH_COMPONENTS : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_of_num (hl_NUMERAL hl_zero)) top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) (hl_int_of_num (hl_NUMERAL hl_zero)) top')) = 1 -> hl_sym_3d5f63 (2 :^: A) (2 :^: B) (hl_path_components_of A top) (hl_path_components_of B top') = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5725 / ISOMORPHIC_HOMOLOGY_IMP_PATH_CONNECTEDNESS   (hash md5:bab756c8b8a8eee4fa2604ffa82a7dcc)
Theorem hlt_ISOMORPHIC_HOMOLOGY_IMP_PATH_CONNECTEDNESS : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_of_num (hl_NUMERAL hl_zero)) top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) (hl_int_of_num (hl_NUMERAL hl_zero)) top')) = 1 -> (hl_path_connected_space A top = 1 <-> hl_path_connected_space B top' = 1).
Admitted.

// HOL Light: Multivariate/homology.ml:5740 / TRIVIAL_HOMOLOGY_GROUP   (hash md5:fbbd9975e2231588d6044f8c81a79db8)
Theorem hlt_TRIVIAL_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_int_lt p (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5744 / ABELIAN_HOMOLOGY_GROUP   (hash md5:83caf3592bc695f2ebacc57ce5abec3f)
Theorem hlt_ABELIAN_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_abelian_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5748 / GROUP_HOMOMORPHISM_HOM_INDUCED_EMPTY   (hash md5:2a677920bf822eb3738ccd9dffed17aa)
Theorem hlt_GROUP_HOMOMORPHISM_HOM_INDUCED_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_group_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top'))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5755 / HOM_INDUCED_COMPOSE_EMPTY   (hash md5:e2496ce299fbf67063c3fc7c0e705613)
Theorem hlt_HOM_INDUCED_COMPOSE_EMPTY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall top'' :e hl_ty_topology C, forall f :e B :^: A, forall g :e C :^: B, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ hl_continuous_map B C (hl_pair (hl_ty_topology B) (hl_ty_topology C) top' top'') g = 1 -> hl_hom_induced A C p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology C) (2 :^: C) top'' (hl_EMPTY C)) (hl_o B C A g f) = hl_o (2 :^: hl_ty_frag (B :^: (R :^: omega))) (2 :^: hl_ty_frag (C :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_induced B C p (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) (hl_pair (hl_ty_topology C) (2 :^: C) top'' (hl_EMPTY C)) g) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f).
Admitted.

// HOL Light: Multivariate/homology.ml:5766 / HOMOLOGY_HOMOTOPY_EMPTY   (hash md5:3be20a60f4d902b3f0ab1299101dea9a)
Theorem hlt_HOMOLOGY_HOMOTOPY_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f g :e B :^: A, hl_homotopic_with A B (fun h :e B :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f g = 1 -> hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f = hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) g.
Admitted.

// HOL Light: Multivariate/homology.ml:5774 / HOMOTOPY_EQUIVALENCE_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISMS   (hash md5:beb25c9db9dd1c388ba587e9f83f2fa3)
Theorem hlt_HOMOTOPY_EQUIVALENCE_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISMS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, forall g :e A :^: B, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ (hl_continuous_map B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) top' top) g = 1 /\ (hl_SUBSET A (hl_IMAGE B A g t) s = 1 /\ (hl_homotopic_with A A (fun h :e A :^: A => hl_SUBSET A (hl_IMAGE A A h s) s) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_o B A A g f) (hl_I A) = 1 /\ hl_homotopic_with B B (fun k :e B :^: B => hl_SUBSET B (hl_IMAGE B B k t) t) (hl_pair (hl_ty_topology B) (hl_ty_topology B) top' top') (hl_o A B B f g) (hl_I B) = 1)))) -> hl_group_isomorphisms (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) (hl_pair (2 :^: hl_ty_frag (B :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f) (hl_hom_induced B A p (hl_pair (hl_ty_topology B) (2 :^: B) top' t) (hl_pair (hl_ty_topology A) (2 :^: A) top s) g)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5799 / HOMOTOPY_EQUIVALENCE_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISM   (hash md5:a26d2b98ccaf7f65f4a720e6deed2532)
Theorem hlt_HOMOTOPY_EQUIVALENCE_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, forall g :e A :^: B, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ (hl_continuous_map B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) top' top) g = 1 /\ (hl_SUBSET A (hl_IMAGE B A g t) s = 1 /\ (hl_homotopic_with A A (fun h :e A :^: A => hl_SUBSET A (hl_IMAGE A A h s) s) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_o B A A g f) (hl_I A) = 1 /\ hl_homotopic_with B B (fun k :e B :^: B => hl_SUBSET B (hl_IMAGE B B k t) t) (hl_pair (hl_ty_topology B) (hl_ty_topology B) top' top') (hl_o A B B f g) (hl_I B) = 1)))) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5812 / HOMOTOPY_EQUIVALENCE_HOMOLOGY_GROUP_ISOMORPHISM   (hash md5:73f4840f0708d73b05412bab5be57abb)
Theorem hlt_HOMOTOPY_EQUIVALENCE_HOMOLOGY_GROUP_ISOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, forall g :e A :^: B, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_continuous_map B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) top' top) g = 1 /\ (hl_homotopic_with A A (fun h :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_o B A A g f) (hl_I A) = 1 /\ hl_homotopic_with B B (fun k :e B :^: B => if True then 1 else 0) (hl_pair (hl_ty_topology B) (hl_ty_topology B) top' top') (hl_o A B B f g) (hl_I B) = 1)) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top'))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5823 / HOMOTOPY_EQUIVALENT_SPACE_IMP_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS   (hash md5:9285784746a44f7710f137944d462604)
Theorem hlt_HOMOTOPY_EQUIVALENT_SPACE_IMP_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, forall g :e A :^: B, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ (hl_continuous_map B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) top' top) g = 1 /\ (hl_SUBSET A (hl_IMAGE B A g t) s = 1 /\ (hl_homotopic_with A A (fun h :e A :^: A => hl_SUBSET A (hl_IMAGE A A h s) s) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_o B A A g f) (hl_I A) = 1 /\ hl_homotopic_with B B (fun k :e B :^: B => hl_SUBSET B (hl_IMAGE B B k t) t) (hl_pair (hl_ty_topology B) (hl_ty_topology B) top' top') (hl_o A B B f g) (hl_I B) = 1)))) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5835 / HOMOTOPY_EQUIVALENT_SPACE_IMP_ISOMORPHIC_HOMOLOGY_GROUPS   (hash md5:2349edc26224291d6906b2d152a71a94)
Theorem hlt_HOMOTOPY_EQUIVALENT_SPACE_IMP_ISOMORPHIC_HOMOLOGY_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, hl_homotopy_equivalent_space A B top top' = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top')) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5844 / HOMEOMORPHIC_SPACE_IMP_ISOMORPHIC_HOMOLOGY_GROUPS   (hash md5:71aacd2fcc2662abab85a1428aa2c79c)
Theorem hlt_HOMEOMORPHIC_SPACE_IMP_ISOMORPHIC_HOMOLOGY_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, hl_homeomorphic_space A B top top' = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top')) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5851 / TRIVIAL_RELATIVE_HOMOLOGY_GROUP_GEN   (hash md5:2f802eaef2588e36107628edb5065917)
Theorem hlt_TRIVIAL_RELATIVE_HOMOLOGY_GROUP_GEN : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall f :e A :^: A, hl_continuous_map A A (hl_pair (hl_ty_topology A) (hl_ty_topology A) top (hl_subtopology A top s)) f = 1 /\ (hl_homotopic_with A A (fun h :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) (hl_subtopology A top s) (hl_subtopology A top s)) f (hl_I A) = 1 /\ hl_homotopic_with A A (fun k :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) f (hl_I A) = 1) -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5878 / TRIVIAL_RELATIVE_HOMOLOGY_GROUP_TOPSPACE   (hash md5:776801ce2928a926c4b80f31f87e20ce)
Theorem hlt_TRIVIAL_RELATIVE_HOMOLOGY_GROUP_TOPSPACE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_topspace A top)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5886 / TRIVIAL_RELATIVE_HOMOLOGY_GROUP_EMPTY   (hash md5:a24817548275731a8ece4f1a1cef08b3)
Theorem hlt_TRIVIAL_RELATIVE_HOMOLOGY_GROUP_EMPTY : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_topspace A top = hl_EMPTY A -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5894 / TRIVIAL_HOMOLOGY_GROUP_EMPTY   (hash md5:7c5a8cd47ad7f63c4b954beb5c658560)
Theorem hlt_TRIVIAL_HOMOLOGY_GROUP_EMPTY : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_topspace A top = hl_EMPTY A -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5899 / TRIVIAL_HOMOLOGY_GROUP_CONTRACTIBLE_SPACE   (hash md5:3c8d211f746c64e940eb944a4a120ffb)
Theorem hlt_TRIVIAL_HOMOLOGY_GROUP_CONTRACTIBLE_SPACE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_contractible_space A top = 1 /\ ~ p = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5913 / HOMEOMORPHIC_MAPS_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISMS   (hash md5:2cebdbbd1cbe0dd9fe82047c301ef86d)
Theorem hlt_HOMEOMORPHIC_MAPS_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISMS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, forall g :e A :^: B, hl_homeomorphic_maps A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') (hl_pair (B :^: A) (A :^: B) f g) = 1 /\ (hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ hl_SUBSET A (hl_IMAGE B A g t) s = 1) -> hl_group_isomorphisms (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) (hl_pair (2 :^: hl_ty_frag (B :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f) (hl_hom_induced B A p (hl_pair (hl_ty_topology B) (2 :^: B) top' t) (hl_pair (hl_ty_topology A) (2 :^: A) top s) g)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5930 / HOMEOMORPHIC_MAP_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISM   (hash md5:ded9564825656859f5fe24b3ec08190e)
Theorem hlt_HOMEOMORPHIC_MAP_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, hl_homeomorphic_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET A s (hl_topspace A top) = 1 /\ hl_IMAGE A B f s = t) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5945 / GROUP_MONOMORPHISM_HOM_INDUCED_SECTION_MAP   (hash md5:e63ca8bcec822024fda9b5e97eeb3afd)
Theorem hlt_GROUP_MONOMORPHISM_HOM_INDUCED_SECTION_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_section_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 -> hl_group_monomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top'))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5967 / GROUP_EPIMORPHISM_HOM_INDUCED_RETRACTION_MAP   (hash md5:9675f196c1bd7c2aaf8ac9813d6c86dd)
Theorem hlt_GROUP_EPIMORPHISM_HOM_INDUCED_RETRACTION_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_retraction_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 -> hl_group_epimorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top'))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:5989 / HOMEOMORPHIC_MAP_HOMOLOGY_GROUP_ISOMORPHISM   (hash md5:4554d0debfc842f1a9d49cc0509854cd)
Theorem hlt_HOMEOMORPHIC_MAP_HOMOLOGY_GROUP_ISOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_homeomorphic_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top'))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6000 / GROUP_MONOMORPHISM_HOM_INDUCED_INCLUSION   (hash md5:6070ce65618f9e27abb31c18bbb756e9)
Theorem hlt_GROUP_MONOMORPHISM_HOM_INDUCED_INCLUSION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, s = hl_EMPTY A \/ hl_retract_of_space A s top = 1 -> hl_group_monomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6017 / TRIVIAL_HOMOMORPHISM_HOM_BOUNDARY_INCLUSION   (hash md5:2bd7c2474308d7435b8329127647f411)
Theorem hlt_TRIVIAL_HOMOMORPHISM_HOM_BOUNDARY_INCLUSION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, s = hl_EMPTY A \/ hl_retract_of_space A s top = 1 -> hl_trivial_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s)))) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6033 / GROUP_EPIMORPHISM_HOM_INDUCED_RELATIVIZATION   (hash md5:8c51e777c4e9f88f98d766119121b522)
Theorem hlt_GROUP_EPIMORPHISM_HOM_INDUCED_RELATIVIZATION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, s = hl_EMPTY A \/ hl_retract_of_space A s top = 1 -> hl_group_epimorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6048 / SHORT_EXACT_SEQUENCE_HOM_INDUCED_INCLUSION   (hash md5:79a03ce4c76ba5eee1393ba722d9761d)
Theorem hlt_SHORT_EXACT_SEQUENCE_HOM_INDUCED_INCLUSION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, s = hl_EMPTY A \/ hl_retract_of_space A s top = 1 -> hl_short_exact_sequence (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x)) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6061 / GROUP_ISOMORPHISMS_HOMOLOGY_GROUP_PROD_RETRACT   (hash md5:997b95d85b45bdc707659386991e22af)
Theorem hlt_GROUP_ISOMORPHISMS_HOMOLOGY_GROUP_PROD_RETRACT : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, s = hl_EMPTY A \/ hl_retract_of_space A s top = 1 -> exists h k :e 2 :^: (2 :^: hl_ty_frag (A :^: (R :^: omega))), hl_subgroup_of (2 :^: hl_ty_frag (A :^: (R :^: omega))) h (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1 /\ (hl_subgroup_of (2 :^: hl_ty_frag (A :^: (R :^: omega))) k (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1 /\ (hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_prod_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) h) (hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) k)) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) (hl_GABS (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega)))) (fun f :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) => if forall x y :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_GEQ (2 :^: hl_ty_frag (A :^: (R :^: omega))) (f (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) x y)) (hl_group_mul (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) x y) = 1 then 1 else 0)) = 1 /\ (hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) h)) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x)) = 1 /\ hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) k) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)) = 1))).
Admitted.

// HOL Light: Multivariate/homology.ml:6113 / ISOMORPHIC_GROUP_HOMOLOGY_GROUP_PROD_RETRACT   (hash md5:6ee4ffe50b7057e0175819fdd5c7404d)
Theorem hlt_ISOMORPHIC_GROUP_HOMOLOGY_GROUP_PROD_RETRACT : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, s = hl_EMPTY A \/ hl_retract_of_space A s top = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_prod_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6135 / HOMOLOGY_ADDITIVITY_EXPLICIT   (hash md5:01dab03537e307a72724e27b2b9a64b7)
Theorem hlt_HOMOLOGY_ADDITIVITY_EXPLICIT : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_open_in A top s = 1 /\ (hl_open_in A top t = 1 /\ (hl_DISJOINT A s t = 1 /\ hl_UNION A s t = hl_topspace A top)) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_prod_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top t)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) (hl_GABS (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega)))) (fun f :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) => if forall a b :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_GEQ (2 :^: hl_ty_frag (A :^: (R :^: omega))) (f (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) a b)) (hl_group_mul (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x) a) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top t) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x) b)) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6189 / hom_relboundary   (hash md5:4a7be715af2c4175e52129c36a66e988)
Theorem hlt_hom_relboundary_thm : forall A:set, A <> Empty -> forall t :e 2 :^: A, forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_hom_relboundary A p (hl_pair (hl_ty_topology A) (2 :^: A :*: 2 :^: A) top (hl_pair (2 :^: A) (2 :^: A) s t)) = hl_o (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_induced A A (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t) (fun x :e A => x)) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)).
Admitted.

// HOL Light: Multivariate/homology.ml:6194 / GROUP_HOMOMORPHISM_HOM_RELBOUNDARY   (hash md5:613e589036e4dba5c81bbb23f699a4c4)
Theorem hlt_GROUP_HOMOMORPHISM_HOM_RELBOUNDARY : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_group_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t)))) (hl_hom_relboundary A p (hl_pair (hl_ty_topology A) (2 :^: A :*: 2 :^: A) top (hl_pair (2 :^: A) (2 :^: A) s t))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6206 / HOM_RELBOUNDARY   (hash md5:0376ea646249b3ce691c70029b2a6fd7)
Theorem hlt_HOM_RELBOUNDARY : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_relboundary A p (hl_pair (hl_ty_topology A) (2 :^: A :*: 2 :^: A) top (hl_pair (2 :^: A) (2 :^: A) s t)) c) (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6212 / HOM_RELBOUNDARY_EMPTY   (hash md5:6285af1f3a8d683bc66d60efea21197e)
Theorem hlt_HOM_RELBOUNDARY_EMPTY : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_hom_relboundary A p (hl_pair (hl_ty_topology A) (2 :^: A :*: 2 :^: A) top (hl_pair (2 :^: A) (2 :^: A) s (hl_EMPTY A))) = hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s).
Admitted.

// HOL Light: Multivariate/homology.ml:6218 / NATURALITY_HOM_INDUCED_RELBOUNDARY   (hash md5:415bba5bb660a3e8a2cef6484b46a31e)
Theorem hlt_NATURALITY_HOM_INDUCED_RELBOUNDARY : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, forall top' :e hl_ty_topology B, forall u v :e 2 :^: B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f s) u = 1 /\ hl_SUBSET B (hl_IMAGE A B f t) v = 1) -> hl_o (2 :^: hl_ty_frag (B :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_relboundary B p (hl_pair (hl_ty_topology B) (2 :^: B :*: 2 :^: B) top' (hl_pair (2 :^: B) (2 :^: B) u v))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' u) f) = hl_o (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_induced A B (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t) (hl_pair (hl_ty_topology B) (2 :^: B) (hl_subtopology B top' u) v) f) (hl_hom_relboundary A p (hl_pair (hl_ty_topology A) (2 :^: A :*: 2 :^: A) top (hl_pair (2 :^: A) (2 :^: A) s t))).
Admitted.

// HOL Light: Multivariate/homology.ml:6237 / HOMOLOGY_EXACTNESS_TRIPLE_1   (hash md5:8d43673a138a328828ef932e564f7b49)
Theorem hlt_HOMOLOGY_EXACTNESS_TRIPLE_1 : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_SUBSET A t s = 1 -> hl_group_exactness (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top t))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t))))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top t) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)) (hl_hom_relboundary A p (hl_pair (hl_ty_topology A) (2 :^: A :*: 2 :^: A) top (hl_pair (2 :^: A) (2 :^: A) s t)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6350 / HOMOLOGY_EXACTNESS_TRIPLE_2   (hash md5:606f161c9766354887f657dd4d8edeb6)
Theorem hlt_HOMOLOGY_EXACTNESS_TRIPLE_2 : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_SUBSET A t s = 1 -> hl_group_exactness (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) top t))))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_relboundary A p (hl_pair (hl_ty_topology A) (2 :^: A :*: 2 :^: A) top (hl_pair (2 :^: A) (2 :^: A) s t))) (hl_hom_induced A A (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t) (hl_pair (hl_ty_topology A) (2 :^: A) top t) (fun x :e A => x))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6489 / HOMOLOGY_EXACTNESS_TRIPLE_3   (hash md5:57cf37e7e608fce957ca8a321df1b0a6)
Theorem hlt_HOMOLOGY_EXACTNESS_TRIPLE_3 : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_SUBSET A t s = 1 -> hl_group_exactness (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top t))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t) (hl_pair (hl_ty_topology A) (2 :^: A) top t) (fun x :e A => x)) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top t) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6625 / reduced_homology_group   (hash md5:af7fba1b1ab3230de76092c04ae36256)
Theorem hlt_reduced_homology_group_thm : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top) = hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_group_kernel (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (1 :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (1 :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group 1 (hl_pair hl_ty_int (hl_ty_topology 1) p (hl_discrete_topology 1 (hl_INSERT 1 hl_one (hl_EMPTY 1)))))) (hl_hom_induced A 1 p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology 1) (2 :^: 1) (hl_discrete_topology 1 (hl_INSERT 1 hl_one (hl_EMPTY 1))) (hl_EMPTY 1)) (fun x :e A => hl_one))).
Admitted.

// HOL Light: Multivariate/homology.ml:6633 / GROUP_CARRIER_REDUCED_HOMOLOGY_GROUP   (hash md5:149c13a016689cc1de74498fa579f8c8)
Theorem hlt_GROUP_CARRIER_REDUCED_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = hl_group_kernel (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (1 :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (1 :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group 1 (hl_pair hl_ty_int (hl_ty_topology 1) p (hl_discrete_topology 1 (hl_INSERT 1 hl_one (hl_EMPTY 1)))))) (hl_hom_induced A 1 p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology 1) (2 :^: 1) (hl_discrete_topology 1 (hl_INSERT 1 hl_one (hl_EMPTY 1))) (hl_EMPTY 1)) (fun x :e A => hl_one)).
Admitted.

// HOL Light: Multivariate/homology.ml:6643 / GROUP_CARRIER_REDUCED_HOMOLOGY_GROUP_SUBSET   (hash md5:414d1e8fa8f5b7a6b656d06a196f8907)
Theorem hlt_GROUP_CARRIER_REDUCED_HOMOLOGY_GROUP_SUBSET : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_SUBSET (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6650 / UN_REDUCED_HOMOLOGY_GROUP   (hash md5:dad5ac0e7f9293f7cbf331266c5e9027)
Theorem hlt_UN_REDUCED_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, ~ p = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top) = hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top).
Admitted.

// HOL Light: Multivariate/homology.ml:6663 / TRIVIAL_REDUCED_HOMOLOGY_GROUP   (hash md5:6d497f18cee8543b6040b9a49dfcabd1)
Theorem hlt_TRIVIAL_REDUCED_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_int_lt p (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6669 / GROUP_HOMOMORPHISM_HOM_INDUCED_REDUCED   (hash md5:0d50b1d9cda950aef032e2eb917b2c41)
Theorem hlt_GROUP_HOMOMORPHISM_HOM_INDUCED_REDUCED : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_group_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_reduced_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top'))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6701 / HOM_INDUCED_REDUCED   (hash md5:97024f5cc02a8dadfeefe4d9ea79eeff)
Theorem hlt_HOM_INDUCED_REDUCED : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) c (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) = 1 -> hl_IN (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f c) (hl_group_carrier (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_reduced_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top'))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6709 / GROUP_HOMOMORPHISM_HOM_BOUNDARY_REDUCED   (hash md5:499eeaf0de786336fa97ffbb1110989a)
Theorem hlt_GROUP_HOMOMORPHISM_HOM_BOUNDARY_REDUCED : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s)))) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6743 / HOMOTOPY_EQUIVALENCE_REDUCED_HOMOLOGY_GROUP_ISOMORPHISMS   (hash md5:3745c81c684036e3c5081c742b6d8d0f)
Theorem hlt_HOMOTOPY_EQUIVALENCE_REDUCED_HOMOLOGY_GROUP_ISOMORPHISMS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, forall g :e A :^: B, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_continuous_map B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) top' top) g = 1 /\ (hl_homotopic_with A A (fun h :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_o B A A g f) (hl_I A) = 1 /\ hl_homotopic_with B B (fun k :e B :^: B => if True then 1 else 0) (hl_pair (hl_ty_topology B) (hl_ty_topology B) top' top') (hl_o A B B f g) (hl_I B) = 1)) -> hl_group_isomorphisms (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_reduced_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top'))) (hl_pair (2 :^: hl_ty_frag (B :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f) (hl_hom_induced B A p (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) g)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6770 / HOMOTOPY_EQUIVALENCE_REDUCED_HOMOLOGY_GROUP_ISOMORPHISM   (hash md5:600bc0bbe7cdf82fc21e27986da0fe5a)
Theorem hlt_HOMOTOPY_EQUIVALENCE_REDUCED_HOMOLOGY_GROUP_ISOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, forall g :e A :^: B, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_continuous_map B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) top' top) g = 1 /\ (hl_homotopic_with A A (fun h :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_o B A A g f) (hl_I A) = 1 /\ hl_homotopic_with B B (fun k :e B :^: B => if True then 1 else 0) (hl_pair (hl_ty_topology B) (hl_ty_topology B) top' top') (hl_o A B B f g) (hl_I B) = 1)) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_reduced_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top'))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_EMPTY B)) f) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6782 / HOMOTOPY_EQUIVALENT_SPACE_IMP_ISOMORPHIC_REDUCED_HOMOLOGY_GROUPS   (hash md5:bc663c162aa8ddd738bfca85738e6bc1)
Theorem hlt_HOMOTOPY_EQUIVALENT_SPACE_IMP_ISOMORPHIC_REDUCED_HOMOLOGY_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, hl_homotopy_equivalent_space A B top top' = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_reduced_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top')) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6795 / HOMEOMORPHIC_SPACE_IMP_ISOMORPHIC_REDUCED_HOMOLOGY_GROUPS   (hash md5:09375469e1d2fedb292615bfb69e79bd)
Theorem hlt_HOMEOMORPHIC_SPACE_IMP_ISOMORPHIC_REDUCED_HOMOLOGY_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, hl_homeomorphic_space A B top top' = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_reduced_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top')) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6803 / TRIVIAL_REDUCED_HOMOLOGY_GROUP_EMPTY   (hash md5:b83a604bd4660a28e0ba5fb51afc3755)
Theorem hlt_TRIVIAL_REDUCED_HOMOLOGY_GROUP_EMPTY : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_topspace A top = hl_EMPTY A -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6809 / HOMOLOGY_DIMENSION_REDUCED   (hash md5:524bd0b0814933fac4ed0f26e276adc2)
Theorem hlt_HOMOLOGY_DIMENSION_REDUCED : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall a :e A, hl_topspace A top = hl_INSERT A a (hl_EMPTY A) -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6823 / TRIVIAL_REDUCED_HOMOLOGY_GROUP_CONTRACTIBLE_SPACE   (hash md5:cdd20262e28c7def1fc51f5c85d25909)
Theorem hlt_TRIVIAL_REDUCED_HOMOLOGY_GROUP_CONTRACTIBLE_SPACE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, hl_contractible_space A top = 1 -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6838 / GROUP_IMAGE_REDUCED_HOMOLOGY_GROUP   (hash md5:7cac13a729fc77c7a170b79e41c615da)
Theorem hlt_GROUP_IMAGE_REDUCED_HOMOLOGY_GROUP : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A -> hl_group_image (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)) = hl_group_image (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)).
Admitted.

// HOL Light: Multivariate/homology.ml:6933 / HOMOLOGY_EXACTNESS_REDUCED_1   (hash md5:1a7157238d85f5a6789275bab107f045)
Theorem hlt_HOMOLOGY_EXACTNESS_REDUCED_1 : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A -> hl_group_exactness (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s))))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6958 / HOMOLOGY_EXACTNESS_REDUCED_2   (hash md5:982f01ade4cbd4ee867629aed71ea907)
Theorem hlt_HOMOLOGY_EXACTNESS_REDUCED_2 : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_exactness (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) top)))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_hom_induced A A (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:6986 / HOMOLOGY_EXACTNESS_REDUCED_3   (hash md5:7867c296f3a5feea1541b5f865fa2498)
Theorem hlt_HOMOLOGY_EXACTNESS_REDUCED_3 : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_exactness (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x)) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7048 / GROUP_ISOMORPHISM_RELATIVE_HOMOLOGY_OF_CONTRACTIBLE   (hash md5:bd223c3623a5ca11438d0531873fea64)
Theorem hlt_GROUP_ISOMORPHISM_RELATIVE_HOMOLOGY_OF_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_contractible_space A top = 1 /\ ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s)))) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7068 / ISOMORPHIC_GROUP_RELATIVE_HOMOLOGY_OF_CONTRACTIBLE   (hash md5:6a6408cc5e976b3cf363f30c7c26ff43)
Theorem hlt_ISOMORPHIC_GROUP_RELATIVE_HOMOLOGY_OF_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_contractible_space A top = 1 /\ ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7077 / ISOMORPHIC_GROUP_REDUCED_HOMOLOGY_OF_CONTRACTIBLE   (hash md5:01f1414484d55179ec06937c265f8599)
Theorem hlt_ISOMORPHIC_GROUP_REDUCED_HOMOLOGY_OF_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_contractible_space A top = 1 /\ ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7087 / GROUP_ISOMORPHISM_REDUCED_HOMOLOGY_BY_CONTRACTIBLE   (hash md5:bc68e8c07cf8d28d9a069afebdf3790a)
Theorem hlt_GROUP_ISOMORPHISM_REDUCED_HOMOLOGY_BY_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_contractible_space A (hl_subtopology A top s) = 1 /\ ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7107 / ISOMORPHIC_GROUP_REDUCED_HOMOLOGY_BY_CONTRACTIBLE   (hash md5:06db134140337c047c7195b5917db7a7)
Theorem hlt_ISOMORPHIC_GROUP_REDUCED_HOMOLOGY_BY_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_contractible_space A (hl_subtopology A top s) = 1 /\ ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7116 / ISOMORPHIC_GROUP_RELATIVE_HOMOLOGY_BY_CONTRACTIBLE   (hash md5:e60ff37b9609e5ba566ad1b7655e87f0)
Theorem hlt_ISOMORPHIC_GROUP_RELATIVE_HOMOLOGY_BY_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_contractible_space A (hl_subtopology A top s) = 1 /\ ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7124 / ISOMORPHIC_GROUP_REDUCED_HOMOLOGY_BY_SING   (hash md5:02dac516d0025696f060bcb7f3621710)
Theorem hlt_ISOMORPHIC_GROUP_REDUCED_HOMOLOGY_BY_SING : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall a :e A, hl_IN A a (hl_topspace A top) = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INSERT A a (hl_EMPTY A))))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7133 / ISOMORPHIC_GROUP_RELATIVE_HOMOLOGY_BY_SING   (hash md5:b89870f6563dfff68fa1d18ad2011a34)
Theorem hlt_ISOMORPHIC_GROUP_RELATIVE_HOMOLOGY_BY_SING : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall a :e A, hl_IN A a (hl_topspace A top) = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INSERT A a (hl_EMPTY A))))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7141 / REDUCED_HOMOLOGY_GROUP_PAIR   (hash md5:8a28171e2edb3a8286701e9bb58180e4)
Theorem hlt_REDUCED_HOMOLOGY_GROUP_PAIR : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall a b :e A, hl_t1_space A top = 1 /\ (hl_IN A a (hl_topspace A top) = 1 /\ (hl_IN A b (hl_topspace A top) = 1 /\ ~ a = b)) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_reduced_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top (hl_INSERT A a (hl_INSERT A b (hl_EMPTY A)))))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top (hl_INSERT A a (hl_EMPTY A))))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7168 / DEFORMATION_RETRACTION_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISMS   (hash md5:eac0751fe634e471447edd7b4aa59a43)
Theorem hlt_DEFORMATION_RETRACTION_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISMS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall u :e 2 :^: A, forall v :e 2 :^: B, forall r :e B :^: A, forall s :e A :^: B, hl_retraction_maps A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') (hl_pair (B :^: A) (A :^: B) r s) = 1 /\ (hl_SUBSET B (hl_IMAGE A B r u) v = 1 /\ (hl_SUBSET A (hl_IMAGE B A s v) u = 1 /\ hl_homotopic_with A A (fun h :e A :^: A => hl_SUBSET A (hl_IMAGE A A h u) u) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_o B A A s r) (hl_I A) = 1)) -> hl_group_isomorphisms (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top u))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' v)))) (hl_pair (2 :^: hl_ty_frag (B :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top u) (hl_pair (hl_ty_topology B) (2 :^: B) top' v) r) (hl_hom_induced B A p (hl_pair (hl_ty_topology B) (2 :^: B) top' v) (hl_pair (hl_ty_topology A) (2 :^: A) top u) s)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7184 / DEFORMATION_RETRACT_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISMS   (hash md5:560a9064349bec6fb0e89c40ae045775)
Theorem hlt_DEFORMATION_RETRACT_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISMS : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top top' :e hl_ty_topology A, forall u v :e 2 :^: A, forall r :e A :^: A, hl_retraction_maps A A (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top') (hl_pair (A :^: A) (A :^: A) r (hl_I A)) = 1 /\ (hl_SUBSET A v u = 1 /\ (hl_SUBSET A (hl_IMAGE A A r u) v = 1 /\ hl_homotopic_with A A (fun h :e A :^: A => hl_SUBSET A (hl_IMAGE A A h u) u) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) r (hl_I A) = 1)) -> hl_group_isomorphisms (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top u))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top' v)))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top u) (hl_pair (hl_ty_topology A) (2 :^: A) top' v) r) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top' v) (hl_pair (hl_ty_topology A) (2 :^: A) top u) (fun x :e A => x))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7197 / DEFORMATION_RETRACT_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISM   (hash md5:ff5f95c5a71949b24b648060407fc5cf)
Theorem hlt_DEFORMATION_RETRACT_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISM : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top top' :e hl_ty_topology A, forall u v :e 2 :^: A, forall r :e A :^: A, hl_retraction_maps A A (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top') (hl_pair (A :^: A) (A :^: A) r (hl_I A)) = 1 /\ (hl_SUBSET A v u = 1 /\ (hl_SUBSET A (hl_IMAGE A A r u) v = 1 /\ hl_homotopic_with A A (fun h :e A :^: A => hl_SUBSET A (hl_IMAGE A A h u) u) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) r (hl_I A) = 1)) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top u))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top' v)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top u) (hl_pair (hl_ty_topology A) (2 :^: A) top' v) r) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7209 / DEFORMATION_RETRACT_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISM_ID   (hash md5:bb30a9911a210da8fdbe9232f2aa0332)
Theorem hlt_DEFORMATION_RETRACT_RELATIVE_HOMOLOGY_GROUP_ISOMORPHISM_ID : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top top' :e hl_ty_topology A, forall u v :e 2 :^: A, forall r :e A :^: A, hl_retraction_maps A A (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top') (hl_pair (A :^: A) (A :^: A) r (hl_I A)) = 1 /\ (hl_SUBSET A v u = 1 /\ (hl_SUBSET A (hl_IMAGE A A r u) v = 1 /\ hl_homotopic_with A A (fun h :e A :^: A => hl_SUBSET A (hl_IMAGE A A h u) u) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) r (hl_I A) = 1)) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top' v))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top u)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top' v) (hl_pair (hl_ty_topology A) (2 :^: A) top u) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7221 / DEFORMATION_RETRACTION_IMP_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS   (hash md5:c4462cb492a39f5f87898dc8d88491d4)
Theorem hlt_DEFORMATION_RETRACTION_IMP_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall u :e 2 :^: A, forall v :e 2 :^: B, forall r :e B :^: A, forall s :e A :^: B, hl_retraction_maps A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') (hl_pair (B :^: A) (A :^: B) r s) = 1 /\ (hl_SUBSET B (hl_IMAGE A B r u) v = 1 /\ (hl_SUBSET A (hl_IMAGE B A s v) u = 1 /\ hl_homotopic_with A A (fun h :e A :^: A => hl_SUBSET A (hl_IMAGE A A h u) u) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_o B A A s r) (hl_I A) = 1)) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top u))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' v))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7232 / DEFORMATION_RETRACTION_IMP_ISOMORPHIC_HOMOLOGY_GROUPS   (hash md5:51ef984ca48cc5f6d676bff0f7d0251f)
Theorem hlt_DEFORMATION_RETRACTION_IMP_ISOMORPHIC_HOMOLOGY_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall r :e B :^: A, forall s :e A :^: B, hl_retraction_maps A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') (hl_pair (B :^: A) (A :^: B) r s) = 1 /\ hl_homotopic_with A A (fun h :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_o B A A s r) (hl_I A) = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p top')) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7242 / DEFORMATION_RETRACT_IMP_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS   (hash md5:47d22b5a9b15d3305f797d4291adadee)
Theorem hlt_DEFORMATION_RETRACT_IMP_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top top' :e hl_ty_topology A, forall u v :e 2 :^: A, forall r :e A :^: A, hl_retraction_maps A A (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top') (hl_pair (A :^: A) (A :^: A) r (hl_I A)) = 1 /\ (hl_SUBSET A v u = 1 /\ (hl_SUBSET A (hl_IMAGE A A r u) v = 1 /\ hl_homotopic_with A A (fun h :e A :^: A => hl_SUBSET A (hl_IMAGE A A h u) u) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) r (hl_I A) = 1)) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top u))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top' v))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7252 / DEFORMATION_RETRACT_IMP_ISOMORPHIC_HOMOLOGY_GROUPS   (hash md5:5f24e63b840883bdff948ea529593b80)
Theorem hlt_DEFORMATION_RETRACT_IMP_ISOMORPHIC_HOMOLOGY_GROUPS : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top top' :e hl_ty_topology A, forall r :e A :^: A, hl_retraction_maps A A (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top') (hl_pair (A :^: A) (A :^: A) r (hl_I A)) = 1 /\ hl_homotopic_with A A (fun h :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) r (hl_I A) = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top')) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7262 / ISOMORPHIC_GROUP_HOMOLOGY_BY_SING   (hash md5:63d4c5b33dab774dc6da042a54bb7322)
Theorem hlt_ISOMORPHIC_GROUP_HOMOLOGY_BY_SING : forall A:set, A <> Empty -> (forall top :e hl_ty_topology A, forall a :e A, hl_IN A a (hl_topspace A top) = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_ty_int :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_of_num (hl_NUMERAL hl_zero)) top)) (hl_prod_group hl_ty_int (2 :^: hl_ty_frag (A :^: (R :^: omega))) hl_integer_group (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INSERT A a (hl_EMPTY A)))))) = 1) /\ forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall a :e A, hl_IN A a (hl_topspace A top) = 1 /\ ~ p = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INSERT A a (hl_EMPTY A))))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7284 / GROUP_EPIMORPHISM_HOM_INDUCED_INCLUSION   (hash md5:705be4601746a9b6ff679d25ba8d531d)
Theorem hlt_GROUP_EPIMORPHISM_HOM_INDUCED_INCLUSION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, (exists f :e A :^: A, hl_homotopic_with A A (fun x :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_I A) f = 1 /\ hl_SUBSET A (hl_IMAGE A A f (hl_topspace A top)) s = 1) -> hl_group_epimorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7306 / TRIVIAL_HOMOMORPHISM_HOM_INDUCED_RELATIVIZATION   (hash md5:b1fce98ea38ce0f2bfe8b5c70d2792df)
Theorem hlt_TRIVIAL_HOMOMORPHISM_HOM_INDUCED_RELATIVIZATION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, (exists f :e A :^: A, hl_homotopic_with A A (fun x :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_I A) f = 1 /\ hl_SUBSET A (hl_IMAGE A A f (hl_topspace A top)) s = 1) -> hl_trivial_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7324 / GROUP_MONOMORPHISM_HOM_BOUNDARY_INCLUSION   (hash md5:b723ac4d6b379b4170d545711ac269be)
Theorem hlt_GROUP_MONOMORPHISM_HOM_BOUNDARY_INCLUSION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, (exists f :e A :^: A, hl_homotopic_with A A (fun x :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_I A) f = 1 /\ hl_SUBSET A (hl_IMAGE A A f (hl_topspace A top)) s = 1) -> hl_group_monomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s)))) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7344 / SHORT_EXACT_SEQUENCE_HOM_INDUCED_RELATIVIZATION   (hash md5:b2cebd9460e6c8d67a88d335687b7345)
Theorem hlt_SHORT_EXACT_SEQUENCE_HOM_INDUCED_RELATIVIZATION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, (exists f :e A :^: A, hl_homotopic_with A A (fun x :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_I A) f = 1 /\ hl_SUBSET A (hl_IMAGE A A f (hl_topspace A top)) s = 1) -> hl_short_exact_sequence (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) :*: hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) top)))) (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) (hl_hom_induced A A (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7358 / GROUP_ISOMORPHISMS_HOMOLOGY_GROUP_PROD_DEFORMATION   (hash md5:450567690c1b76c1c1028e7c80253f55)
Theorem hlt_GROUP_ISOMORPHISMS_HOMOLOGY_GROUP_PROD_DEFORMATION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, (exists f :e A :^: A, hl_homotopic_with A A (fun x :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_I A) f = 1 /\ hl_SUBSET A (hl_IMAGE A A f (hl_topspace A top)) s = 1) -> exists h k :e 2 :^: (2 :^: hl_ty_frag (A :^: (R :^: omega))), hl_subgroup_of (2 :^: hl_ty_frag (A :^: (R :^: omega))) h (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) = 1 /\ (hl_subgroup_of (2 :^: hl_ty_frag (A :^: (R :^: omega))) k (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) = 1 /\ (hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_prod_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) h) (hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) k)) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s)))) (hl_GABS (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega)))) (fun f :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) => if forall x y :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_GEQ (2 :^: hl_ty_frag (A :^: (R :^: omega))) (f (hl_pair (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) x y)) (hl_group_mul (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) x y) = 1 then 1 else 0)) = 1 /\ (hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) h)) (hl_hom_boundary A (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = 1 /\ hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) k) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_EMPTY A)) (fun x :e A => x)) = 1))).
Admitted.

// HOL Light: Multivariate/homology.ml:7405 / ISOMORPHIC_GROUP_HOMOLOGY_GROUP_PROD_DEFORMATION   (hash md5:254cbabda0da5c1069ef179becede69d)
Theorem hlt_ISOMORPHIC_GROUP_HOMOLOGY_GROUP_PROD_DEFORMATION : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, (exists f :e A :^: A, hl_homotopic_with A A (fun x :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) (hl_I A) f = 1 /\ hl_SUBSET A (hl_IMAGE A A f (hl_topspace A top)) s = 1) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega)) :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_prod_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p top)) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7431 / ISOMORPHIC_GROUP_HOMOLOGY_CONTRACTIBLE_SPACE_SUBTOPOLOGY   (hash md5:05b4a35d5041681b4c44f0b0ccbedc66)
Theorem hlt_ISOMORPHIC_GROUP_HOMOLOGY_CONTRACTIBLE_SPACE_SUBTOPOLOGY : forall A:set, A <> Empty -> (forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_contractible_space A top = 1 /\ (hl_SUBSET A s (hl_topspace A top) = 1 /\ ~ s = hl_EMPTY A) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_ty_int :*: 2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_subtopology A top s))) (hl_prod_group hl_ty_int (2 :^: hl_ty_frag (A :^: (R :^: omega))) hl_integer_group (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) = 1) /\ forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, ~ p = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_contractible_space A top = 1 /\ (hl_SUBSET A s (hl_topspace A top) = 1 /\ ~ s = hl_EMPTY A)) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7459 / TRIVIAL_RELATIVE_HOMOLOGY_GROUP_CONTRACTIBLE_SPACES   (hash md5:094d241973f87fd07b92e47507c58e4d)
Theorem hlt_TRIVIAL_RELATIVE_HOMOLOGY_GROUP_CONTRACTIBLE_SPACES : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_contractible_space A top = 1 /\ (hl_contractible_space A (hl_subtopology A top s) = 1 /\ ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A) -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7471 / TRIVIAL_RELATIVE_HOMOLOGY_GROUP_ALT   (hash md5:65eb08de874838068945656799bb0a4e)
Theorem hlt_TRIVIAL_RELATIVE_HOMOLOGY_GROUP_ALT : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall f :e A :^: A, hl_continuous_map A A (hl_pair (hl_ty_topology A) (hl_ty_topology A) top (hl_subtopology A top s)) f = 1 /\ hl_homotopic_with A A (fun k :e A :^: A => hl_SUBSET A (hl_IMAGE A A k s) s) (hl_pair (hl_ty_topology A) (hl_ty_topology A) top top) f (hl_I A) = 1 -> hl_trivial_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7486 / GROUP_ISOMORPHISM_HOM_INDUCED_RELATIVIZATION_CONTRACTIBLE   (hash md5:658fd070a094cd85ec0a02a3854fb614)
Theorem hlt_GROUP_ISOMORPHISM_HOM_INDUCED_RELATIVIZATION_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_contractible_space A (hl_subtopology A top s) = 1 /\ (hl_contractible_space A (hl_subtopology A top t) = 1 /\ (hl_SUBSET A t s = 1 /\ ~ hl_INTER A (hl_topspace A top) t = hl_EMPTY A)) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top t))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) top t) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7512 / ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS_RELATIVIZATION_CONTRACTIBLE   (hash md5:810e35a7eba2536f3a1ecb862d32a7be)
Theorem hlt_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS_RELATIVIZATION_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_contractible_space A (hl_subtopology A top s) = 1 /\ (hl_contractible_space A (hl_subtopology A top t) = 1 /\ (hl_SUBSET A t s = 1 /\ ~ hl_INTER A (hl_topspace A top) t = hl_EMPTY A)) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top t))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7523 / GROUP_ISOMORPHISM_HOM_INDUCED_INCLUSION_CONTRACTIBLE   (hash md5:3b9f7e63f4df4fdd66e77ebc55267d79)
Theorem hlt_GROUP_ISOMORPHISM_HOM_INDUCED_INCLUSION_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_contractible_space A top = 1 /\ (hl_contractible_space A (hl_subtopology A top s) = 1 /\ (hl_SUBSET A t s = 1 /\ ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A)) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top t)))) (hl_hom_induced A A p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t) (hl_pair (hl_ty_topology A) (2 :^: A) top t) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7552 / ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS_INCLUSION_CONTRACTIBLE   (hash md5:4cc974363eeadff92520bc45c7430081)
Theorem hlt_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS_INCLUSION_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_contractible_space A top = 1 /\ (hl_contractible_space A (hl_subtopology A top s) = 1 /\ (hl_SUBSET A t s = 1 /\ ~ hl_INTER A (hl_topspace A top) s = hl_EMPTY A)) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top t))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7563 / GROUP_ISOMORPHISM_HOM_RELBOUNDARY_CONTRACTIBLE   (hash md5:a0cc55ee88dc2493f16b6129fbbd73f8)
Theorem hlt_GROUP_ISOMORPHISM_HOM_RELBOUNDARY_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_contractible_space A top = 1 /\ (hl_contractible_space A (hl_subtopology A top t) = 1 /\ (hl_SUBSET A t s = 1 /\ ~ hl_INTER A (hl_topspace A top) t = hl_EMPTY A)) -> hl_group_isomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t)))) (hl_hom_relboundary A p (hl_pair (hl_ty_topology A) (2 :^: A :*: 2 :^: A) top (hl_pair (2 :^: A) (2 :^: A) s t))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7588 / ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS_RELBOUNDARY_CONTRACTIBLE   (hash md5:21574fc384ee92508e2a3d8e9083f1a3)
Theorem hlt_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS_RELBOUNDARY_CONTRACTIBLE : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s t :e 2 :^: A, hl_contractible_space A top = 1 /\ (hl_contractible_space A (hl_subtopology A top t) = 1 /\ (hl_SUBSET A t s = 1 /\ ~ hl_INTER A (hl_topspace A top) t = hl_EMPTY A)) -> hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) t))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7599 / ISOMORPHIC_RELATIVE_CONTRACTIBLE_SPACE_IMP_HOMOLOGY_GROUPS   (hash md5:d776fcb477410ae44eca203875860aef)
Theorem hlt_ISOMORPHIC_RELATIVE_CONTRACTIBLE_SPACE_IMP_HOMOLOGY_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_contractible_space A top = 1 /\ (hl_contractible_space B top' = 1 /\ (hl_SUBSET A s (hl_topspace A top) = 1 /\ (hl_SUBSET B t (hl_topspace B top') = 1 /\ ((s = hl_EMPTY A <-> t = hl_EMPTY B) /\ (forall p :e hl_ty_int, hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t))) = 1))))) -> forall p :e hl_ty_int, hl_isomorphic_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) p (hl_subtopology A top s))) (hl_homology_group B (hl_pair hl_ty_int (hl_ty_topology B) p (hl_subtopology B top' t))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7629 / GROUP_ISOMORPHISM_REDUCED_HOMOLOGY_GROUP_LOWER_HEMISPHERE   (hash md5:cd9fa563302998025f69cac169f65d94)
Theorem hlt_GROUP_ISOMORPHISM_REDUCED_HOMOLOGY_GROUP_LOWER_HEMISPHERE : forall p :e hl_ty_int, forall n k :e omega, hl_IN omega k (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 -> hl_group_isomorphism (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_nsphere n))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2628 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2628 (hl_real_le (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0)))))) (hl_hom_induced (R :^: omega) (R :^: omega) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2629 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2629 (hl_real_le (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (fun x :e R :^: omega => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7648 / GROUP_ISOMORPHISM_RELATIVE_HOMOLOGY_GROUP_UPPER_HEMISPHERE   (hash md5:96204b75c8e237264a4cbf03cfaf067d)
Theorem hlt_GROUP_ISOMORPHISM_RELATIVE_HOMOLOGY_GROUP_UPPER_HEMISPHERE : forall p :e hl_ty_int, forall n k :e omega, hl_group_isomorphism (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_subtopology (R :^: omega) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2655 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2655 (hl_real_ge (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2656 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2656 (if x k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2657 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2657 (hl_real_le (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0)))))) (hl_hom_induced (R :^: omega) (R :^: omega) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_subtopology (R :^: omega) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2658 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2658 (hl_real_ge (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2659 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2659 (if x k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2660 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2660 (hl_real_le (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (fun x :e R :^: omega => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7947 / GROUP_ISOMORPHISM_UPPER_HEMISPHERE_REDUCED_HOMOLOGY_GROUP   (hash md5:2711bfe248a9d598277e339146e8183e)
Theorem hlt_GROUP_ISOMORPHISM_UPPER_HEMISPHERE_REDUCED_HOMOLOGY_GROUP : forall p :e hl_ty_int, forall n :e omega, hl_group_isomorphism (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_subtopology (R :^: omega) (hl_nsphere (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2663 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2663 (hl_real_ge (x (hl_add n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2664 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2664 (if x (hl_add n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_nsphere n)))) (hl_hom_boundary (R :^: omega) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_subtopology (R :^: omega) (hl_nsphere (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2665 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2665 (hl_real_ge (x (hl_add n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2666 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2666 (if x (hl_add n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:7987 / GROUP_ISOMORPHISM_REDUCED_HOMOLOGY_GROUP_UPPER_HEMISPHERE   (hash md5:d35408ded226519c25469f3dcf5f53ae)
Theorem hlt_GROUP_ISOMORPHISM_REDUCED_HOMOLOGY_GROUP_UPPER_HEMISPHERE : forall p :e hl_ty_int, forall n k :e omega, hl_IN omega k (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 -> hl_group_isomorphism (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_nsphere n))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2667 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2667 (hl_real_ge (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0)))))) (hl_hom_induced (R :^: omega) (R :^: omega) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2668 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2668 (hl_real_ge (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (fun x :e R :^: omega => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:8006 / GROUP_ISOMORPHISM_RELATIVE_HOMOLOGY_GROUP_LOWER_HEMISPHERE   (hash md5:cc7386b940ecd69be4cfe671c7421991)
Theorem hlt_GROUP_ISOMORPHISM_RELATIVE_HOMOLOGY_GROUP_LOWER_HEMISPHERE : forall p :e hl_ty_int, forall n k :e omega, hl_group_isomorphism (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_subtopology (R :^: omega) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2675 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2675 (hl_real_le (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2676 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2676 (if x k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2677 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2677 (hl_real_ge (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0)))))) (hl_hom_induced (R :^: omega) (R :^: omega) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_subtopology (R :^: omega) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2678 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2678 (hl_real_le (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2679 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2679 (if x k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2680 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2680 (hl_real_ge (x k) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (fun x :e R :^: omega => x)) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:8067 / GROUP_ISOMORPHISM_LOWER_HEMISPHERE_REDUCED_HOMOLOGY_GROUP   (hash md5:7d0e98b7b8e7f9baf69f62284fd31a44)
Theorem hlt_GROUP_ISOMORPHISM_LOWER_HEMISPHERE_REDUCED_HOMOLOGY_GROUP : forall p :e hl_ty_int, forall n :e omega, hl_group_isomorphism (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_subtopology (R :^: omega) (hl_nsphere (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2683 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2683 (hl_real_le (x (hl_add n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2684 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2684 (if x (hl_add n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_nsphere n)))) (hl_hom_boundary (R :^: omega) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_subtopology (R :^: omega) (hl_nsphere (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2685 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2685 (hl_real_le (x (hl_add n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2686 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2686 (if x (hl_add n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:8115 / REDUCED_HOMOLOGY_GROUP_NSPHERE_STEP   (hash md5:f65d3d6aad8b4de0780b730771c46de7)
Theorem hlt_REDUCED_HOMOLOGY_GROUP_NSPHERE_STEP : forall p :e hl_ty_int, forall n :e omega, exists f :e 2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))), hl_group_isomorphism (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_nsphere n))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_nsphere (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))))))) f = 1 /\ forall c :e 2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) c (hl_group_carrier (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_nsphere n)))) = 1 -> hl_hom_induced (R :^: omega) (R :^: omega) (hl_int_add p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_EMPTY (R :^: omega))) (fun x :e R :^: omega => fun i :e omega => hl_COND R (if i = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) (hl_real_neg (x i)) (x i)) (f c) = f (hl_hom_induced (R :^: omega) (R :^: omega) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere n) (hl_EMPTY (R :^: omega))) (fun x :e R :^: omega => fun i :e omega => hl_COND R (if i = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) (hl_real_neg (x i)) (x i)) c).
Admitted.

// HOL Light: Multivariate/homology.ml:8246 / REDUCED_HOMOLOGY_GROUP_NSPHERE   (hash md5:dd6a2b376495d8706f9f95d503542e9b)
Theorem hlt_REDUCED_HOMOLOGY_GROUP_NSPHERE : (forall n :e omega, hl_isomorphic_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) hl_ty_int (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num n) (hl_nsphere n))) hl_integer_group = 1) /\ forall n :e omega, forall p :e hl_ty_int, ~ p = hl_int_of_num n -> hl_trivial_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_nsphere n))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:8313 / CYCLIC_REDUCED_HOMOLOGY_GROUP_NSPHERE   (hash md5:f9310739f2cdf976f6ad2a40b80c8824)
Theorem hlt_CYCLIC_REDUCED_HOMOLOGY_GROUP_NSPHERE : forall p :e hl_ty_int, forall n :e omega, hl_cyclic_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_nsphere n))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:8319 / TRIVIAL_REDUCED_HOMOLOGY_GROUP_NSPHERE   (hash md5:8f31b202f304f5078749a931bed3ee52)
Theorem hlt_TRIVIAL_REDUCED_HOMOLOGY_GROUP_NSPHERE : forall p :e hl_ty_int, forall n :e omega, hl_trivial_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_nsphere n))) = 1 <-> ~ p = hl_int_of_num n.
Admitted.

// HOL Light: Multivariate/homology.ml:8324 / NON_CONTRACTIBLE_SPACE_NSPHERE   (hash md5:b8e1ac59737a2dc199e7dfe69d932b6b)
Theorem hlt_NON_CONTRACTIBLE_SPACE_NSPHERE : forall n :e omega, ~ hl_contractible_space (R :^: omega) (hl_nsphere n) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:8340 / brouwer_degree2   (hash md5:562590fa468c81a1da2e53b173ee389e)
Theorem hlt_brouwer_degree2_thm : forall f :e R :^: omega :^: (R :^: omega), forall p :e omega, hl_brouwer_degree2 p f = hl_select hl_ty_int (fun d :e hl_ty_int => if forall x :e 2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) x (hl_group_carrier (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p)))) = 1 -> hl_hom_induced (R :^: omega) (R :^: omega) (hl_int_of_num p) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) f x = hl_group_zpow (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p))) x d then 1 else 0).
Admitted.

// HOL Light: Multivariate/homology.ml:8346 / BROUWER_DEGREE2_EQ   (hash md5:6ef1e7a51658877c65dec3de2cecd0db)
Theorem hlt_BROUWER_DEGREE2_EQ : forall p :e omega, forall f g :e R :^: omega :^: (R :^: omega), (forall x :e R :^: omega, hl_IN (R :^: omega) x (hl_topspace (R :^: omega) (hl_nsphere p)) = 1 -> f x = g x) -> hl_brouwer_degree2 p f = hl_brouwer_degree2 p g.
Admitted.

// HOL Light: Multivariate/homology.ml:8354 / BROUWER_DEGREE2   (hash md5:162f85d3e09da8057781a75df4946b6d)
Theorem hlt_BROUWER_DEGREE2 : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), forall x :e 2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) x (hl_group_carrier (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p)))) = 1 -> hl_hom_induced (R :^: omega) (R :^: omega) (hl_int_of_num p) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) f x = hl_group_zpow (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p))) x (hl_brouwer_degree2 p f).
Admitted.

// HOL Light: Multivariate/homology.ml:8387 / BROUWER_DEGREE2_IFF   (hash md5:8d65fbd014586ebe31e75710a22f6af1)
Theorem hlt_BROUWER_DEGREE2_IFF : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), forall x :e 2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)), forall d :e hl_ty_int, hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f = 1 /\ hl_IN (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) x (hl_group_carrier (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p)))) = 1 -> (hl_hom_induced (R :^: omega) (R :^: omega) (hl_int_of_num p) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) f x = hl_group_zpow (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p))) x d <-> x = hl_group_id (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p))) \/ hl_brouwer_degree2 p f = d).
Admitted.

// HOL Light: Multivariate/homology.ml:8414 / BROUWER_DEGREE2_UNIQUE   (hash md5:1a2dfc39e7b4310d1811996319ee61fd)
Theorem hlt_BROUWER_DEGREE2_UNIQUE : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), forall d :e hl_ty_int, hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f = 1 /\ (forall x :e 2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) x (hl_group_carrier (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p)))) = 1 -> hl_hom_induced (R :^: omega) (R :^: omega) (hl_int_of_num p) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) f x = hl_group_zpow (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p))) x d) -> hl_brouwer_degree2 p f = d.
Admitted.

// HOL Light: Multivariate/homology.ml:8432 / BROUWER_DEGREE2_UNIQUE_GENERATOR   (hash md5:1ffca7d0a480bd46dfd719d897df53fd)
Theorem hlt_BROUWER_DEGREE2_UNIQUE_GENERATOR : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), forall d :e hl_ty_int, forall a :e 2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f = 1 /\ (hl_subgroup_generated (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p))) (hl_INSERT (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) a (hl_EMPTY (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))))) = hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p)) /\ hl_hom_induced (R :^: omega) (R :^: omega) (hl_int_of_num p) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere p) (hl_EMPTY (R :^: omega))) f a = hl_group_zpow (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num p) (hl_nsphere p))) a d) -> hl_brouwer_degree2 p f = d.
Admitted.

// HOL Light: Multivariate/homology.ml:8458 / BROUWER_DEGREE2_HOMOTOPIC   (hash md5:1dae88fc7928b6122fc28d646d865ab6)
Theorem hlt_BROUWER_DEGREE2_HOMOTOPIC : forall p :e omega, forall f g :e R :^: omega :^: (R :^: omega), hl_homotopic_with (R :^: omega) (R :^: omega) (fun x :e R :^: omega :^: (R :^: omega) => if True then 1 else 0) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f g = 1 -> hl_brouwer_degree2 p f = hl_brouwer_degree2 p g.
Admitted.

// HOL Light: Multivariate/homology.ml:8471 / BROUWER_DEGREE2_ID   (hash md5:5a14655a684a673e90d3850ac6ada9ee)
Theorem hlt_BROUWER_DEGREE2_ID : forall p :e omega, hl_brouwer_degree2 p (fun x :e R :^: omega => x) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/homology.ml:8479 / BROUWER_DEGREE2_COMPOSE   (hash md5:63f2cfb247993b2b8396cd7e0dc9ab9d)
Theorem hlt_BROUWER_DEGREE2_COMPOSE : forall p :e omega, forall f g :e R :^: omega :^: (R :^: omega), hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f = 1 /\ hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) g = 1 -> hl_brouwer_degree2 p (hl_o (R :^: omega) (R :^: omega) (R :^: omega) g f) = hl_int_mul (hl_brouwer_degree2 p g) (hl_brouwer_degree2 p f).
Admitted.

// HOL Light: Multivariate/homology.ml:8493 / BROUWER_DEGREE2_HOMOTOPY_EQUIVALENCE   (hash md5:f8b2a7a867e310f39682886b14efc2b5)
Theorem hlt_BROUWER_DEGREE2_HOMOTOPY_EQUIVALENCE : forall p :e omega, forall f g :e R :^: omega :^: (R :^: omega), hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f = 1 /\ (hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) g = 1 /\ hl_homotopic_with (R :^: omega) (R :^: omega) (fun x :e R :^: omega :^: (R :^: omega) => if True then 1 else 0) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) (hl_o (R :^: omega) (R :^: omega) (R :^: omega) f g) (hl_I (R :^: omega)) = 1) -> hl_int_abs (hl_brouwer_degree2 p f) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_int_abs (hl_brouwer_degree2 p g) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_brouwer_degree2 p g = hl_brouwer_degree2 p f).
Admitted.

// HOL Light: Multivariate/homology.ml:8505 / BROUWER_DEGREE2_HOMEOMORPHIC_MAPS   (hash md5:a594fb2b9814449b381e36ae6b302483)
Theorem hlt_BROUWER_DEGREE2_HOMEOMORPHIC_MAPS : forall p :e omega, forall f g :e R :^: omega :^: (R :^: omega), hl_homeomorphic_maps (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) (hl_pair (R :^: omega :^: (R :^: omega)) (R :^: omega :^: (R :^: omega)) f g) = 1 -> hl_int_abs (hl_brouwer_degree2 p f) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_int_abs (hl_brouwer_degree2 p g) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_brouwer_degree2 p g = hl_brouwer_degree2 p f).
Admitted.

// HOL Light: Multivariate/homology.ml:8515 / BROUWER_DEGREE2_RETRACTION_MAP   (hash md5:27f35736b20cbec2d1ae6c574cd86d7a)
Theorem hlt_BROUWER_DEGREE2_RETRACTION_MAP : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), hl_retraction_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f = 1 -> hl_int_abs (hl_brouwer_degree2 p f) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/homology.ml:8528 / BROUWER_DEGREE2_SECTION_MAP   (hash md5:e312cc7cd64f7e7364afd34284719104)
Theorem hlt_BROUWER_DEGREE2_SECTION_MAP : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), hl_section_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f = 1 -> hl_int_abs (hl_brouwer_degree2 p f) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/homology.ml:8541 / BROUWER_DEGREE2_HOMEOMORPHIC_MAP   (hash md5:3a08ad4799f73bfee5657ffd7cdd295a)
Theorem hlt_BROUWER_DEGREE2_HOMEOMORPHIC_MAP : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), hl_homeomorphic_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f = 1 -> hl_int_abs (hl_brouwer_degree2 p f) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/homology.ml:8547 / BROUWER_DEGREE2_NULLHOMOTOPIC   (hash md5:6b74b8fa4d7b9a03e506635cb3673131)
Theorem hlt_BROUWER_DEGREE2_NULLHOMOTOPIC : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), forall a :e R :^: omega, hl_homotopic_with (R :^: omega) (R :^: omega) (fun x :e R :^: omega :^: (R :^: omega) => if True then 1 else 0) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f (fun x :e R :^: omega => a) = 1 -> hl_brouwer_degree2 p f = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/homology.ml:8583 / BROUWER_DEGREE2_CONST   (hash md5:1038fd1fb8693818d0cf562188c1483d)
Theorem hlt_BROUWER_DEGREE2_CONST : forall p :e omega, forall a :e R :^: omega, hl_brouwer_degree2 p (fun x :e R :^: omega => a) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/homology.ml:8613 / BROUWER_DEGREE2_NONSURJECTIVE   (hash md5:987553cfceb5a2c19063186a293ff1d8)
Theorem hlt_BROUWER_DEGREE2_NONSURJECTIVE : forall p :e omega, forall f :e R :^: omega :^: (R :^: omega), hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere p) (hl_nsphere p)) f = 1 /\ ~ hl_IMAGE (R :^: omega) (R :^: omega) f (hl_topspace (R :^: omega) (hl_nsphere p)) = hl_topspace (R :^: omega) (hl_nsphere p) -> hl_brouwer_degree2 p f = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/homology.ml:8622 / BROUWER_DEGREE2_REFLECTION   (hash md5:6f37e9bb946118fe0b0f8aba39b7a865)
Theorem hlt_BROUWER_DEGREE2_REFLECTION : forall p :e omega, hl_brouwer_degree2 p (fun x :e R :^: omega => fun i :e omega => hl_COND R (if i = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) (hl_real_neg (x i)) (x i)) = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/homology.ml:8821 / BORSUK_ODD_MAPPING_DEGREE_STEP   (hash md5:47a8e0b1ce2ae9e8781c300ff5211d85)
Theorem hlt_BORSUK_ODD_MAPPING_DEGREE_STEP : forall f :e R :^: omega :^: (R :^: omega), forall n :e omega, hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_nsphere n) (hl_nsphere n)) f = 1 /\ ((forall x :e R :^: omega, hl_IN (R :^: omega) x (hl_topspace (R :^: omega) (hl_nsphere n)) = 1 -> hl_o (R :^: omega) (R :^: omega) (R :^: omega) f (fun x1 :e R :^: omega => fun i :e omega => hl_real_neg (x1 i)) x = hl_o (R :^: omega) (R :^: omega) (R :^: omega) (fun x1 :e R :^: omega => fun i :e omega => hl_real_neg (x1 i)) f x) /\ hl_SUBSET (R :^: omega) (hl_IMAGE (R :^: omega) (R :^: omega) f (hl_topspace (R :^: omega) (hl_nsphere (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_topspace (R :^: omega) (hl_nsphere (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1) -> hl_sym_3d3d hl_ty_int (hl_brouwer_degree2 n f) (hl_brouwer_degree2 (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) f) (hl_int_mod (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:9441 / RELATIVE_HOMOLOGY_GROUP_EUCLIDEAN_COMPLEMENT_STEP   (hash md5:448f0479e1153d4b950921d07cf1319c)
Theorem hlt_RELATIVE_HOMOLOGY_GROUP_EUCLIDEAN_COMPLEMENT_STEP : forall p :e hl_ty_int, forall n k :e omega, forall s :e 2 :^: (R :^: omega), hl_closed_in (R :^: omega) (hl_euclidean_space n) s = 1 -> hl_isomorphic_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) s)))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) (hl_int_add p (hl_int_of_num k)) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_euclidean_space (hl_add n k)) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space (hl_add n k))) s)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:9973 / ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS_EUCLIDEAN_COMPLEMENTS   (hash md5:bde60df479cb30e7d0247b9dde8fb926)
Theorem hlt_ISOMORPHIC_RELATIVE_HOMOLOGY_GROUPS_EUCLIDEAN_COMPLEMENTS : forall p :e hl_ty_int, forall n :e omega, forall s t :e 2 :^: (R :^: omega), hl_closed_in (R :^: omega) (hl_euclidean_space n) s = 1 /\ (hl_closed_in (R :^: omega) (hl_euclidean_space n) t = 1 /\ hl_homeomorphic_space (R :^: omega) (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) s) (hl_subtopology (R :^: omega) (hl_euclidean_space n) t) = 1) -> hl_isomorphic_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) s)))) (hl_relative_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega) :*: 2 :^: (R :^: omega)) p (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) t)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:10252 / INVARIANCE_OF_DIMENSION_CLOSED_IN_EUCLIDEAN_SPACE   (hash md5:b0b761b11e53e9bde945bf781ca65bd7)
Theorem hlt_INVARIANCE_OF_DIMENSION_CLOSED_IN_EUCLIDEAN_SPACE : forall n :e omega, forall s :e 2 :^: (R :^: omega), hl_closed_in (R :^: omega) (hl_euclidean_space n) s = 1 -> (hl_homeomorphic_space (R :^: omega) (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) s) (hl_euclidean_space n) = 1 <-> s = hl_topspace (R :^: omega) (hl_euclidean_space n)).
Admitted.

// HOL Light: Multivariate/homology.ml:10435 / ISOMORPHIC_HOMOLOGY_GROUPS_EUCLIDEAN_COMPLEMENTS   (hash md5:d3660689c7ba791fb40681d11f1b16c3)
Theorem hlt_ISOMORPHIC_HOMOLOGY_GROUPS_EUCLIDEAN_COMPLEMENTS : forall p :e hl_ty_int, forall n :e omega, forall s t :e 2 :^: (R :^: omega), hl_closed_in (R :^: omega) (hl_euclidean_space n) s = 1 /\ (hl_closed_in (R :^: omega) (hl_euclidean_space n) t = 1 /\ hl_homeomorphic_space (R :^: omega) (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) s) (hl_subtopology (R :^: omega) (hl_euclidean_space n) t) = 1) -> hl_isomorphic_group (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_subtopology (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) s)))) (hl_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) p (hl_subtopology (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) t)))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:10458 / CARD_EQ_PATH_COMPONENTS_EUCLIDEAN_COMPLEMENTS   (hash md5:87f0d7e1837c3ef4dd76023c9759e612)
Theorem hlt_CARD_EQ_PATH_COMPONENTS_EUCLIDEAN_COMPLEMENTS : forall n :e omega, forall s t :e 2 :^: (R :^: omega), hl_closed_in (R :^: omega) (hl_euclidean_space n) s = 1 /\ (hl_closed_in (R :^: omega) (hl_euclidean_space n) t = 1 /\ hl_homeomorphic_space (R :^: omega) (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) s) (hl_subtopology (R :^: omega) (hl_euclidean_space n) t) = 1) -> hl_sym_3d5f63 (2 :^: (R :^: omega)) (2 :^: (R :^: omega)) (hl_path_components_of (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) s))) (hl_path_components_of (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) t))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:10473 / PATH_CONNECTED_IN_EUCLIDEAN_COMPLEMENTS   (hash md5:5cfd5470baa4f97ed28a22497be917d4)
Theorem hlt_PATH_CONNECTED_IN_EUCLIDEAN_COMPLEMENTS : forall n :e omega, forall s t :e 2 :^: (R :^: omega), hl_closed_in (R :^: omega) (hl_euclidean_space n) s = 1 /\ (hl_closed_in (R :^: omega) (hl_euclidean_space n) t = 1 /\ hl_homeomorphic_space (R :^: omega) (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) s) (hl_subtopology (R :^: omega) (hl_euclidean_space n) t) = 1) -> (hl_path_connected_in (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) s) = 1 <-> hl_path_connected_in (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) t) = 1).
Admitted.

// HOL Light: Multivariate/homology.ml:10488 / CARD_EQ_CONNECTED_COMPONENTS_EUCLIDEAN_COMPLEMENTS   (hash md5:aa1a3db7a64cd5122fc7ba571a0f6f30)
Theorem hlt_CARD_EQ_CONNECTED_COMPONENTS_EUCLIDEAN_COMPLEMENTS : forall n :e omega, forall s t :e 2 :^: (R :^: omega), hl_closed_in (R :^: omega) (hl_euclidean_space n) s = 1 /\ (hl_closed_in (R :^: omega) (hl_euclidean_space n) t = 1 /\ hl_homeomorphic_space (R :^: omega) (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) s) (hl_subtopology (R :^: omega) (hl_euclidean_space n) t) = 1) -> hl_sym_3d5f63 (2 :^: (R :^: omega)) (2 :^: (R :^: omega)) (hl_connected_components_of (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) s))) (hl_connected_components_of (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) t))) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:10508 / CONNECTED_IN_EUCLIDEAN_COMPLEMENTS   (hash md5:fbe3bfa3793fe2d232c25f59c9a26bfb)
Theorem hlt_CONNECTED_IN_EUCLIDEAN_COMPLEMENTS : forall n :e omega, forall s t :e 2 :^: (R :^: omega), hl_closed_in (R :^: omega) (hl_euclidean_space n) s = 1 /\ (hl_closed_in (R :^: omega) (hl_euclidean_space n) t = 1 /\ hl_homeomorphic_space (R :^: omega) (R :^: omega) (hl_subtopology (R :^: omega) (hl_euclidean_space n) s) (hl_subtopology (R :^: omega) (hl_euclidean_space n) t) = 1) -> (hl_connected_in (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) s) = 1 <-> hl_connected_in (R :^: omega) (hl_euclidean_space n) (hl_DIFF (R :^: omega) (hl_topspace (R :^: omega) (hl_euclidean_space n)) t) = 1).
Admitted.

// HOL Light: Multivariate/homology.ml:10525 / INVARIANCE_OF_DIMENSION_EUCLIDEAN_SPACE   (hash md5:42b81c1b1a0d64dc9e70269426a68d30)
Theorem hlt_INVARIANCE_OF_DIMENSION_EUCLIDEAN_SPACE : forall m n :e omega, hl_homeomorphic_space (R :^: omega) (R :^: omega) (hl_euclidean_space m) (hl_euclidean_space n) = 1 <-> m = n.
Admitted.

// HOL Light: Multivariate/homology.ml:10553 / INVARIANCE_OF_DOMAIN_EUCLIDEAN_SPACE   (hash md5:e76a6a0bb85350564b26c28d1591cbd2)
Theorem hlt_INVARIANCE_OF_DOMAIN_EUCLIDEAN_SPACE : forall n :e omega, forall u :e 2 :^: (R :^: omega), forall f :e R :^: omega :^: (R :^: omega), hl_open_in (R :^: omega) (hl_euclidean_space n) u = 1 /\ (hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_subtopology (R :^: omega) (hl_euclidean_space n) u) (hl_euclidean_space n)) f = 1 /\ (forall x y :e R :^: omega, hl_IN (R :^: omega) x u = 1 /\ (hl_IN (R :^: omega) y u = 1 /\ f x = f y) -> x = y)) -> hl_open_in (R :^: omega) (hl_euclidean_space n) (hl_IMAGE (R :^: omega) (R :^: omega) f u) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:11382 / INVARIANCE_OF_DOMAIN_EUCLIDEAN_SPACE_EMBEDDING_MAP   (hash md5:7d2da20a838505749cbad9b8f9643370)
Theorem hlt_INVARIANCE_OF_DOMAIN_EUCLIDEAN_SPACE_EMBEDDING_MAP : forall n :e omega, forall u :e 2 :^: (R :^: omega), forall f :e R :^: omega :^: (R :^: omega), hl_open_in (R :^: omega) (hl_euclidean_space n) u = 1 /\ (hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_subtopology (R :^: omega) (hl_euclidean_space n) u) (hl_euclidean_space n)) f = 1 /\ (forall x y :e R :^: omega, hl_IN (R :^: omega) x u = 1 /\ (hl_IN (R :^: omega) y u = 1 /\ f x = f y) -> x = y)) -> hl_embedding_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_subtopology (R :^: omega) (hl_euclidean_space n) u) (hl_euclidean_space n)) f = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:11398 / INVARIANCE_OF_DOMAIN_EUCLIDEAN_SPACE_GEN   (hash md5:8e41ddc2618986a1cf25d4a527589b57)
Theorem hlt_INVARIANCE_OF_DOMAIN_EUCLIDEAN_SPACE_GEN : forall m n :e omega, forall u :e 2 :^: (R :^: omega), forall f :e R :^: omega :^: (R :^: omega), hl_le n m = 1 /\ (hl_open_in (R :^: omega) (hl_euclidean_space m) u = 1 /\ (hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_subtopology (R :^: omega) (hl_euclidean_space m) u) (hl_euclidean_space n)) f = 1 /\ (forall x y :e R :^: omega, hl_IN (R :^: omega) x u = 1 /\ (hl_IN (R :^: omega) y u = 1 /\ f x = f y) -> x = y))) -> hl_open_in (R :^: omega) (hl_euclidean_space n) (hl_IMAGE (R :^: omega) (R :^: omega) f u) = 1.
Admitted.

// HOL Light: Multivariate/homology.ml:11420 / INVARIANCE_OF_DOMAIN_EUCLIDEAN_SPACE_EMBEDDING_MAP_GEN   (hash md5:9c6473bf5517d8a66eb82e2b0ab2c91d)
Theorem hlt_INVARIANCE_OF_DOMAIN_EUCLIDEAN_SPACE_EMBEDDING_MAP_GEN : forall m n :e omega, forall u :e 2 :^: (R :^: omega), forall f :e R :^: omega :^: (R :^: omega), hl_le n m = 1 /\ (hl_open_in (R :^: omega) (hl_euclidean_space m) u = 1 /\ (hl_continuous_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_subtopology (R :^: omega) (hl_euclidean_space m) u) (hl_euclidean_space n)) f = 1 /\ (forall x y :e R :^: omega, hl_IN (R :^: omega) x u = 1 /\ (hl_IN (R :^: omega) y u = 1 /\ f x = f y) -> x = y))) -> hl_embedding_map (R :^: omega) (R :^: omega) (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology (R :^: omega)) (hl_subtopology (R :^: omega) (hl_euclidean_space m) u) (hl_euclidean_space n)) f = 1.
Admitted.

