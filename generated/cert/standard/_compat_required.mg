// Compatibility theorem statements generated from the mapping registry (docs/DESIGN.md §21.4)
// that are not yet proved in mglib/literal/compat.mg (or are stated differently there), and
// carrier nonemptiness theorems missing from mglib/literal/carriers.mg.

// floor : real->real (not in compat.mg)
Theorem hl_floor_compat : forall l1 :e R, hl_floor l1 = floor_R l1.
Admitted.

// CASEWISE : ((P->A)#(B->P->C)) list->B->A->C (not in compat.mg)
Theorem hl_CASEWISE_compat : forall P A B C:set, P <> Empty -> A <> Empty -> B <> Empty -> C <> Empty -> hl_CASEWISE P A B C = Empty.
Admitted.

// INJP : (num->A->bool)->(num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_INJP_compat : forall A:set, A <> Empty -> hl_INJP A = Empty.
Admitted.

// INJP : (num->A->bool)->(num->A->bool)->num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_INJP_compat_pow : forall A:set, A <> Empty -> hl_INJP (2 :^: A) = Empty.
Admitted.

// inverse_mod : num->num->num (not in compat.mg)
Theorem hl_inverse_mod_compat : forall l1 l2 :e omega, hl_inverse_mod l1 l2 = inverse_mod l1 l2.
Admitted.

// <=_c : (A->bool)->(B->bool)->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_sym_3c3d5f63_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: B), hl_sym_3c3d5f63 A (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep A l1) (hl_rep2 B l2).
Admitted.

// <=_c : (A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_3c3d5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_sym_3c3d5f63 (2 :^: A) (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep2 A l1) (hl_rep2 B l2).
Admitted.

// int_prime : int->bool (not in compat.mg)
Theorem hl_int_prime_compat : forall l1 :e int, hl_int_prime l1 = 1 <-> 1 < abs_SNo l1 /\ forall x :e int, divides_int x l1 -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo l1.
Admitted.

// frac : real->real (not in compat.mg)
Theorem hl_frac_compat : forall l1 :e R, hl_frac l1 = l1 + - floor_R l1.
Admitted.

// UNION_OF : (((A->bool)->bool)->bool)->((A->bool)->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_UNION_OF_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: (2 :^: A))), forall P1:set -> prop, (forall x :e 2 :^: (2 :^: (2 :^: A)), l1 x = 1 <-> P1 (hl_rep2 (2 :^: A) x)) -> forall l2 :e 2 :^: (2 :^: (2 :^: A)), forall P2:set -> prop, (forall x :e 2 :^: (2 :^: A), l2 x = 1 <-> P2 (hl_rep2 A x)) -> forall l3 :e 2 :^: (2 :^: A), hl_UNION_OF (2 :^: A) l1 l2 l3 = 1 <-> exists u c= Power (Power A), P1 u /\ (forall c :e u, P2 c) /\ Union u = hl_rep2 A l3.
Admitted.

// wqoset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_wqoset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_wqoset A l1 = 1 <-> wqoset_on A P1).
Admitted.

// wqoset : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_wqoset_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_wqoset (2 :^: A) l1 = 1 <-> wqoset_on (Power A) P1).
Admitted.

// order : num->num->num (not in compat.mg)
Theorem hl_order_compat : forall l1 l2 :e omega, hl_order l1 l2 = mult_order l1 l2.
Admitted.

// ALL : (A->bool)->A list->bool at A := A -> bool (not in compat.mg)
Theorem hl_ALL_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall P1:set -> prop, (forall x :e 2 :^: A, l1 x = 1 <-> P1 (hl_rep A x)) -> forall l2 :e finseq (2 :^: A), hl_ALL (2 :^: A) l1 l2 = 1 <-> seq_all P1 l2.
Admitted.

// chain : (A->A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_chain_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A, hl_chain A l1 l2 = 1 <-> chain_on A P1 (hl_rep A l2).
Admitted.

// chain : (A->A->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_chain_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> forall l2 :e 2 :^: (2 :^: A), hl_chain (2 :^: A) l1 l2 = 1 <-> chain_on (Power A) P1 (hl_rep2 A l2).
Admitted.

// antichain : (A->A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_antichain_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A, hl_antichain A l1 l2 = 1 <-> antichain_on A P1 (hl_rep A l2).
Admitted.

// antichain : (A->A->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_antichain_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> forall l2 :e 2 :^: (2 :^: A), hl_antichain (2 :^: A) l1 l2 = 1 <-> antichain_on (Power A) P1 (hl_rep2 A l2).
Admitted.

// NUMSUM : bool->num->num (not in compat.mg)
Theorem hl_NUMSUM_compat : hl_NUMSUM = Empty.
Admitted.

// CHOICE : (A->bool)->A at A := A -> bool (not in compat.mg)
Theorem hl_CHOICE_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_CHOICE (2 :^: A) l1 = choose_in (Power A) (fun x:set => x :e hl_rep2 A l1).
Admitted.

// squarefree : num->bool (not in compat.mg)
Theorem hl_squarefree_compat : forall l1 :e omega, hl_squarefree l1 = 1 <-> forall m :e omega, divides_nat (m ^ 2) l1 -> m = 1.
Admitted.

// EXTENSIONAL : (A->bool)->(A->B)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_EXTENSIONAL_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e B :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> (hl_EXTENSIONAL (2 :^: A) B l1 l2 = 1 <-> forall x :e Power A, ~ x :e hl_rep2 A l1 -> f2 x = choose_in B (fun y:set => False)).
Admitted.

// nsum : (A->bool)->(A->num)->num at A := A -> bool (not in compat.mg)
Theorem hl_nsum_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e omega :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_nsum (2 :^: A) l1 l2 = finsum (hl_rep2 A l1) f2.
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

// hashek : bool (not in compat.mg)
Theorem hl_hashek_compat : hl_hashek = Empty.
Admitted.

// FINREC : (A->B->B)->B->(A->bool)->B->num->bool (not in compat.mg)
Theorem hl_FINREC_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_FINREC A B = Empty.
Admitted.

// FINREC : (A->B->B)->B->(A->bool)->B->num->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_FINREC_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> hl_FINREC (2 :^: A) B = Empty.
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

// toset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_toset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_toset A l1 = 1 <-> toset_on A P1).
Admitted.

// toset : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_toset_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_toset (2 :^: A) l1 = 1 <-> toset_on (Power A) P1).
Admitted.

// FCONS : A->(num->A)->num->A (not in compat.mg)
Theorem hl_FCONS_compat : forall A:set, A <> Empty -> hl_FCONS A = Empty.
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

// INTERS : ((A->bool)->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_INTERS_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), hl_rep2 A (hl_INTERS (2 :^: A) l1) = {x :e Power A | forall Y :e hl_rep2 (2 :^: A) l1, x :e Y}.
Admitted.

// iproduct : (A->bool)->(A->int)->int at A := A -> bool (not in compat.mg)
Theorem hl_iproduct_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e int :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_iproduct (2 :^: A) l1 l2 = finprod (hl_rep2 A l1) f2.
Admitted.

// phi : num->num (not in compat.mg)
Theorem hl_phi_compat : forall l1 :e omega, hl_phi l1 = totient l1.
Admitted.

// fld : (A->A->bool)->A->bool (not in compat.mg)
Theorem hl_fld_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> hl_rep A (hl_fld A l1) = fld_on A P1.
Admitted.

// fld : (A->A->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_fld_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> hl_rep2 A (hl_fld (2 :^: A) l1) = fld_on (Power A) P1.
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

// MEASURE : (A->num)->A->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_MEASURE_compat_pow : forall A:set, A <> Empty -> forall l1 :e omega :^: (2 :^: A), forall f1:set -> set, (forall x :e 2 :^: A, l1 x = f1 (hl_rep A x)) -> forall l2 l3 :e 2 :^: A, hl_MEASURE (2 :^: A) l1 l2 l3 = 1 <-> f1 (hl_rep A l2) < f1 (hl_rep A l3).
Admitted.

// SING : (A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_SING_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_SING (2 :^: A) l1 = 1 <-> exists x :e Power A, hl_rep2 A l1 = {x}.
Admitted.

// ITER : num->(A->A)->A->A (not in compat.mg)
Theorem hl_ITER_compat : forall A:set, A <> Empty -> forall l1 :e omega, forall l2 :e A :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall l3 :e A, hl_ITER A l1 l2 l3 = iter_fun l1 f2 l3.
Admitted.

// == : A->A->(A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_sym_3d3d_compat2_pow : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, forall l3 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P3:set -> set -> prop, (forall x y :e 2 :^: A, l3 x y = 1 <-> P3 (hl_rep A x) (hl_rep A y)) -> (hl_sym_3d3d (2 :^: A) l1 l2 l3 = 1 <-> P3 (hl_rep A l1) (hl_rep A l2)).
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

// nproduct : (A->bool)->(A->num)->num at A := A -> bool (not in compat.mg)
Theorem hl_nproduct_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e omega :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_nproduct (2 :^: A) l1 l2 = finprod (hl_rep2 A l1) f2.
Admitted.

// inseg : (A->A->bool)->(A->A->bool)->bool (not in compat.mg)
Theorem hl_inseg_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A :^: A, forall P2:set -> set -> prop, (forall x y :e A, l2 x y = 1 <-> P2 x y) -> (hl_inseg A l1 l2 = 1 <-> inseg_on A P1 P2).
Admitted.

// inseg : (A->A->bool)->(A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_inseg_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> forall l2 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P2:set -> set -> prop, (forall x y :e 2 :^: A, l2 x y = 1 <-> P2 (hl_rep A x) (hl_rep A y)) -> (hl_inseg (2 :^: A) l1 l2 = 1 <-> inseg_on (Power A) P1 P2).
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

// NUMSND : num->num (not in compat.mg)
Theorem hl_NUMSND_compat : hl_NUMSND = Empty.
Admitted.

// REST : (A->bool)->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_REST_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_rep2 A (hl_REST (2 :^: A) l1) = hl_rep2 A l1 :\: {choose_in (Power A) (fun x:set => x :e hl_rep2 A l1)}.
Admitted.

// mk_pair : A->B->A->B->bool (not in compat.mg)
Theorem hl_mk_pair_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_mk_pair A B = Empty.
Admitted.

// mk_pair : A->B->A->B->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_mk_pair_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> hl_mk_pair A (2 :^: B) = Empty.
Admitted.

// index : num->num->num (not in compat.mg)
Theorem hl_index_compat : forall l1 l2 :e omega, hl_index l1 l2 = prime_index l1 l2.
Admitted.

// _FUNCTION : (A->B->bool)->A->B (not in compat.mg)
Theorem hl__FUNCTION_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__FUNCTION A B = Empty.
Admitted.

// _FUNCTION : (A->B->bool)->A->B, nested at type variables 2 (not in compat.mg)
Theorem hl__FUNCTION_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> hl__FUNCTION A (2 :^: B) = Empty.
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

// OUTR : (A,B)sum->B (not in compat.mg)
Theorem hl_OUTR_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_OUTR A B = OUTR A B.
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

// WF : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_WF_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_WF (2 :^: A) l1 = 1 <-> forall P c= Power A, P <> Empty -> exists x :e P, forall y :e P, ~ P1 y x).
Admitted.

// ZBOT : num->A->bool (not in compat.mg)
Theorem hl_ZBOT_compat : forall A:set, A <> Empty -> hl_ZBOT A = Empty.
Admitted.

// ZBOT : num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_ZBOT_compat_pow : forall A:set, A <> Empty -> hl_ZBOT (2 :^: A) = Empty.
Admitted.

// iterate : (B->B->B)->(A->bool)->(A->B)->B, nested at type variables 2 (not in compat.mg)
Theorem hl_iterate_compat_pow2 : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e B :^: B :^: B, forall f1:set -> set -> set, (forall x y :e B, l1 x y = f1 x y) -> forall l2 :e 2 :^: (2 :^: A), forall l3 :e B :^: (2 :^: A), forall f3:set -> set, (forall x :e 2 :^: A, l3 x = f3 (hl_rep A x)) -> (forall x y :e B, f1 x y = f1 y x) /\ (forall x y z :e B, f1 x (f1 y z) = f1 (f1 x y) z) /\ (forall x :e B, f1 (neutral_of B (fun a:set => fun b:set => f1 a b)) x = x) -> hl_iterate B (2 :^: A) l1 l2 l3 = iterate_op B (fun a:set => fun b:set => f1 a b) (hl_rep2 A l2) f3.
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

// product : (A->bool)->(A->real)->real at A := A -> bool (not in compat.mg)
Theorem hl_product_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e R :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_product (2 :^: A) l1 l2 = finprod (hl_rep2 A l1) f2.
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

// EX : (A->bool)->A list->bool at A := A -> bool (not in compat.mg)
Theorem hl_EX_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall P1:set -> prop, (forall x :e 2 :^: A, l1 x = 1 <-> P1 (hl_rep A x)) -> forall l2 :e finseq (2 :^: A), hl_EX (2 :^: A) l1 l2 = 1 <-> seq_ex P1 l2.
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

// MAP2 : (A->B->C)->A list->B list->C list (not in compat.mg)
Theorem hl_MAP2_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e C :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e finseq A, forall l3 :e finseq B, hl_MAP2 A B C l1 l2 l3 = seq_map2 f1 l2 l3.
Admitted.

// SETSPEC : A->bool->A->bool (not in compat.mg)
Theorem hl_SETSPEC_compat : forall A:set, A <> Empty -> hl_SETSPEC A = Empty.
Admitted.

// SETSPEC : A->bool->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_SETSPEC_compat_pow : forall A:set, A <> Empty -> hl_SETSPEC (2 :^: A) = Empty.
Admitted.

// qoset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_qoset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_qoset A l1 = 1 <-> qoset_on A P1).
Admitted.

// qoset : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_qoset_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_qoset (2 :^: A) l1 = 1 <-> qoset_on (Power A) P1).
Admitted.

// is_nadd : (num->num)->bool (not in compat.mg)
Theorem hl_is_nadd_compat : hl_is_nadd = Empty.
Admitted.

// IND_SUC : ind->ind (not in compat.mg)
Theorem hl_IND_SUC_compat : hl_IND_SUC = Empty.
Admitted.

// NUMPAIR : num->num->num (not in compat.mg)
Theorem hl_NUMPAIR_compat : hl_NUMPAIR = Empty.
Admitted.

// rational : real->bool (not in compat.mg)
Theorem hl_rational_compat : forall l1 :e R, hl_rational l1 = 1 <-> l1 :e rational.
Admitted.

// IND_0 : ind (not in compat.mg)
Theorem hl_IND_0_compat : hl_IND_0 = Empty.
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

// OUTL : (A,B)sum->A (not in compat.mg)
Theorem hl_OUTL_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_OUTL A B = OUTL A B.
Admitted.

// set_of_list : A list->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_set_of_list_compat_pow : forall A:set, A <> Empty -> forall l1 :e finseq (2 :^: A), hl_rep2 A (hl_set_of_list (2 :^: A) l1) = seq_set l1.
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

// _GUARDED_PATTERN : bool->bool->bool->bool (not in compat.mg)
Theorem hl__GUARDED_PATTERN_compat : hl__GUARDED_PATTERN = Empty.
Admitted.

// INJN : num->num->A->bool (not in compat.mg)
Theorem hl_INJN_compat : forall A:set, A <> Empty -> hl_INJN A = Empty.
Admitted.

// INJN : num->num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_INJN_compat_pow : forall A:set, A <> Empty -> hl_INJN (2 :^: A) = Empty.
Admitted.

// sum : (A->bool)->(A->real)->real at A := A -> bool (not in compat.mg)
Theorem hl_sum_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e R :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_sum (2 :^: A) l1 l2 = finsum (hl_rep2 A l1) f2.
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

// ASSOC : A->(A#B) list->B (not in compat.mg)
Theorem hl_ASSOC_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A, forall l2 :e finseq (A :*: B), hl_ASSOC A B l1 l2 = seq_assoc l1 l2.
Admitted.

// INJA : A->num->A->bool (not in compat.mg)
Theorem hl_INJA_compat : forall A:set, A <> Empty -> hl_INJA A = Empty.
Admitted.

// INJA : A->num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_INJA_compat_pow : forall A:set, A <> Empty -> hl_INJA (2 :^: A) = Empty.
Admitted.

// NUMLEFT : num->bool (not in compat.mg)
Theorem hl_NUMLEFT_compat : hl_NUMLEFT = Empty.
Admitted.

// <_c : (A->bool)->(B->bool)->bool, nested at type variables 1 (not in compat.mg)
Theorem hl_sym_3c5f63_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: B, hl_sym_3c5f63 (2 :^: A) B l1 l2 = 1 <-> atleastp (hl_rep2 A l1) (hl_rep B l2) /\ ~ equip (hl_rep2 A l1) (hl_rep B l2).
Admitted.

// <_c : (A->bool)->(B->bool)->bool, nested at type variables 1,2 (not in compat.mg)
Theorem hl_sym_3c5f63_compat_pow12 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: (2 :^: B), hl_sym_3c5f63 (2 :^: A) (2 :^: B) l1 l2 = 1 <-> atleastp (hl_rep2 A l1) (hl_rep2 B l2) /\ ~ equip (hl_rep2 A l1) (hl_rep2 B l2).
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

// list_of_set : (A->bool)->A list at A := A -> bool (not in compat.mg)
Theorem hl_list_of_set_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_list_of_set (2 :^: A) l1 = choose_in (finseq (Power A)) (fun l:set => seq_set l = hl_rep2 A l1 /\ seq_len l = finite_cardinality (hl_rep2 A l1)).
Admitted.

// RESTRICTION : (A->bool)->(A->B)->A->B, nested at type variables 1 (not in compat.mg)
Theorem hl_RESTRICTION_compat_pow1 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e B :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> forall x :e 2 :^: A, hl_RESTRICTION (2 :^: A) B l1 l2 x = if x :e hl_rep2 A l1 then f2 x else choose_in B (fun y:set => False).
Admitted.

// ALL2 : (A->B->bool)->A list->B list->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_ALL2_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: B) :^: A, forall P1:set -> set -> prop, (forall x :e A, forall y :e 2 :^: B, l1 x y = 1 <-> P1 x (hl_rep B y)) -> forall l2 :e finseq A, forall l3 :e finseq (2 :^: B), hl_ALL2 A (2 :^: B) l1 l2 l3 = 1 <-> seq_all2 P1 l2 l3.
Admitted.

// isum : (A->bool)->(A->int)->int at A := A -> bool (not in compat.mg)
Theorem hl_isum_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e int :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> hl_isum (2 :^: A) l1 l2 = finsum (hl_rep2 A l1) f2.
Admitted.

// ZCONSTR : num->A->(num->num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_ZCONSTR_compat : forall A:set, A <> Empty -> hl_ZCONSTR A = Empty.
Admitted.

// ZCONSTR : num->A->(num->num->A->bool)->num->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_ZCONSTR_compat_pow : forall A:set, A <> Empty -> hl_ZCONSTR (2 :^: A) = Empty.
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

// FILTER : (A->bool)->A list->A list at A := A -> bool (not in compat.mg)
Theorem hl_FILTER_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall P1:set -> prop, (forall x :e 2 :^: A, l1 x = 1 <-> P1 (hl_rep A x)) -> forall l2 :e finseq (2 :^: A), hl_FILTER (2 :^: A) l1 l2 = seq_filter P1 l2.
Admitted.

// ALLPAIRS : (A->B->bool)->A list->B list->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_ALLPAIRS_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: (2 :^: B) :^: A, forall P1:set -> set -> prop, (forall x :e A, forall y :e 2 :^: B, l1 x y = 1 <-> P1 x (hl_rep B y)) -> forall l2 :e finseq A, forall l3 :e finseq (2 :^: B), hl_ALLPAIRS A (2 :^: B) l1 l2 l3 = 1 <-> forall i :e seq_len l2, forall j :e seq_len l3, P1 (seq_nth l2 i) (seq_nth l3 j).
Admitted.

// INTERSECTION_OF : (((A->bool)->bool)->bool)->((A->bool)->bool)->(A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_INTERSECTION_OF_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: (2 :^: A))), forall P1:set -> prop, (forall x :e 2 :^: (2 :^: (2 :^: A)), l1 x = 1 <-> P1 (hl_rep2 (2 :^: A) x)) -> forall l2 :e 2 :^: (2 :^: (2 :^: A)), forall P2:set -> prop, (forall x :e 2 :^: (2 :^: A), l2 x = 1 <-> P2 (hl_rep2 A x)) -> forall l3 :e 2 :^: (2 :^: A), hl_INTERSECTION_OF (2 :^: A) l1 l2 l3 = 1 <-> exists u c= Power (Power A), P1 u /\ (forall c :e u, P2 c) /\ {x :e Power A | forall Y :e u, x :e Y} = hl_rep2 A l3.
Admitted.

// support : (B->B->B)->(A->B)->(A->bool)->A->bool, nested at type variables 2 (not in compat.mg)
Theorem hl_support_compat_pow2 : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e B :^: B :^: B, forall f1:set -> set -> set, (forall x y :e B, l1 x y = f1 x y) -> forall l2 :e B :^: (2 :^: A), forall f2:set -> set, (forall x :e 2 :^: A, l2 x = f2 (hl_rep A x)) -> forall l3 :e 2 :^: (2 :^: A), hl_rep2 A (hl_support B (2 :^: A) l1 l2 l3) = {x :e hl_rep2 A l3 | f2 x <> neutral_of B (fun a:set => fun b:set => f1 a b)}.
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

// _FALSITY_ : bool (not in compat.mg)
Theorem hl__FALSITY__compat : hl__FALSITY_ = Empty.
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

// binom : num#num->num (not in compat.mg)
Theorem hl_binom_compat : forall l1 :e omega :*: omega, hl_binom l1 = binomial_coefficient (l1 0) (l1 1).
Admitted.

// _SEQPATTERN : (A->B->bool)->(A->B->bool)->A->B->bool (not in compat.mg)
Theorem hl__SEQPATTERN_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__SEQPATTERN A B = Empty.
Admitted.

// _SEQPATTERN : (A->B->bool)->(A->B->bool)->A->B->bool, nested at type variables 2 (not in compat.mg)
Theorem hl__SEQPATTERN_compat_pow2 : forall A B:set, A <> Empty -> B <> Empty -> hl__SEQPATTERN A (2 :^: B) = Empty.
Admitted.

// ordinal : (A->A->bool)->bool (not in compat.mg)
Theorem hl_ordinal_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_ordinal A l1 = 1 <-> ordinal_on A P1).
Admitted.

// ordinal : (A->A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_ordinal_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A) :^: (2 :^: A), forall P1:set -> set -> prop, (forall x y :e 2 :^: A, l1 x y = 1 <-> P1 (hl_rep A x) (hl_rep A y)) -> (hl_ordinal (2 :^: A) l1 = 1 <-> ordinal_on (Power A) P1).
Admitted.

// ARBITRARY : ((A->bool)->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_ARBITRARY_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), hl_ARBITRARY (2 :^: A) l1 = 1 <-> True.
Admitted.

// primefact : num list->num->bool (not in compat.mg)
Theorem hl_primefact_compat : forall l1 :e finseq omega, forall l2 :e omega, hl_primefact l1 l2 = 1 <-> seq_foldr (fun p:set => fun acc:set => p * acc) l1 1 = l2 /\ forall p :e omega, seq_mem p l1 -> prime_nat p.
Admitted.

// vector : A list->(A,N)cart (not in compat.mg)
Theorem hl_vector_compat : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e finseq A, hl_vector A N l1 = vector A N l1.
Admitted.

// GEQ : A->A->bool (not in compat.mg)
Theorem hl_GEQ_compat : forall A:set, A <> Empty -> hl_GEQ A = Empty.
Admitted.

// GEQ : A->A->bool at A := A -> bool (not in compat.mg)
Theorem hl_GEQ_compat_pow : forall A:set, A <> Empty -> hl_GEQ (2 :^: A) = Empty.
Admitted.

