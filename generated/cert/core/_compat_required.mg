// Compatibility theorem statements generated from the mapping registry (docs/DESIGN.md §21.4)
// that are not yet proved in mglib/literal/compat.mg (or are stated differently there), and
// carrier nonemptiness theorems missing from mglib/literal/carriers.mg.

// NUMRIGHT : bool->num->num (not in compat.mg)
Theorem hl_NUMRIGHT_compat : hl_NUMRIGHT = Empty.
Admitted.

// INFINITE : (A->bool)->bool (not in compat.mg)
Theorem hl_INFINITE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_INFINITE A l1 = 1 <-> infinite (hl_rep A l1).
Admitted.

// pastecart : (A,M)cart->(A,N)cart->(A,(M,N)finite_sum)cart (not in compat.mg)
Theorem hl_pastecart_compat : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall l1 :e hl_ty_cart A M, forall l2 :e hl_ty_cart A N, hl_pastecart A M N l1 l2 = pastecart M N l1 l2.
Admitted.

// int_min : int->int->int (not in compat.mg)
Theorem hl_int_min_compat : forall l1 l2 :e int, hl_int_min l1 l2 = if l1 <= l2 then l1 else l2.
Admitted.

// CASEWISE : ((P->A)#(B->P->C)) list->B->A->C (not in compat.mg)
Theorem hl_CASEWISE_compat : forall P A B C:set, P <> Empty -> A <> Empty -> B <> Empty -> C <> Empty -> hl_CASEWISE P A B C = Empty.
Admitted.

// mk_cart : (N finite_image->A)->(A,N)cart (not in compat.mg)
Theorem hl_mk_cart_compat : forall N A:set, N <> Empty -> A <> Empty -> forall l1 :e A :^: hl_ty_finite_image N, hl_mk_cart N A l1 = l1.
Admitted.

// INJP : (num->A->bool)->(num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_INJP_compat : forall A:set, A <> Empty -> hl_INJP A = Empty.
Admitted.

// HD : A list->A (not in compat.mg)
Theorem hl_HD_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_HD A l1 = seq_hd l1.
Admitted.

// int_max : int->int->int (not in compat.mg)
Theorem hl_int_max_compat : forall l1 l2 :e int, hl_int_max l1 l2 = if l1 <= l2 then l2 else l1.
Admitted.

// <=_c : (A->bool)->(B->bool)->bool (not in compat.mg)
Theorem hl_sym_3c3d5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_sym_3c3d5f63 A B l1 l2 = 1 <-> atleastp (hl_rep A l1) (hl_rep B l2).
Admitted.

// mk_finite_diff : num->(A,B)finite_diff (not in compat.mg)
Theorem hl_mk_finite_diff_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e omega, hl_mk_finite_diff A B l1 = l1.
Admitted.

// APPEND : A list->A list->A list (not in compat.mg)
Theorem hl_APPEND_compat : forall A:set, A <> Empty -> forall l1 l2 :e finseq A, hl_APPEND A l1 l2 = seq_append l1 l2.
Admitted.

// UNION_OF : (((A->bool)->bool)->bool)->((A->bool)->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_UNION_OF_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), forall P1:set -> prop, (forall x :e 2 :^: (2 :^: A), l1 x = 1 <-> P1 x) -> forall l2 :e 2 :^: (2 :^: A), forall P2:set -> prop, (forall x :e 2 :^: A, l2 x = 1 <-> P2 x) -> forall l3 :e 2 :^: A, hl_UNION_OF A l1 l2 l3 = 1 <-> exists u c= Power A, P1 u /\ (forall c :e u, P2 c) /\ Union u = hl_rep A l3.
Admitted.

// CARD : (A->bool)->num (not in compat.mg)
Theorem hl_CARD_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_CARD A l1 = finite_cardinality (hl_rep A l1).
Admitted.

// nadd_mul : nadd->nadd->nadd (not in compat.mg)
Theorem hl_nadd_mul_compat : hl_nadd_mul = Empty.
Admitted.

// hreal_of_num : num->hreal (not in compat.mg)
Theorem hl_hreal_of_num_compat : hl_hreal_of_num = Empty.
Admitted.

// , : A->B->A#B (not in compat.mg)
Theorem hl_pair_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A, forall l2 :e B, hl_pair A B l1 l2 = (l1,l2).
Admitted.

// mk_hreal : (nadd->bool)->hreal (not in compat.mg)
Theorem hl_mk_hreal_compat : hl_mk_hreal = Empty.
Admitted.

// lambda : (num->A)->(A,N)cart (not in compat.mg)
Theorem hl_lambda_compat : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e A :^: omega, forall f1:set -> set, (forall x :e omega, l1 x = f1 x) -> hl_lambda A N l1 = fun i :e idx N => f1 i.
Admitted.

// mk_real : (hreal#hreal->bool)->real (not in compat.mg)
Theorem hl_mk_real_compat : hl_mk_real = Empty.
Admitted.

// ITLIST : (A->B->B)->A list->B->B (not in compat.mg)
Theorem hl_ITLIST_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e finseq A, forall l3 :e B, hl_ITLIST A B l1 l2 l3 = seq_foldr f1 l2 l3.
Admitted.

// ARB : A (not in compat.mg)
Theorem hl_ARB_compat : forall A:set, A <> Empty -> hl_ARB A = choose_in A (fun x:set => True).
Admitted.

// div : int->int->int (not in compat.mg)
Theorem hl_div_compat : forall l1 l2 :e int, hl_div l1 l2 = div_int l1 l2.
Admitted.

// EL : num->A list->A (not in compat.mg)
Theorem hl_EL_compat : forall A:set, A <> Empty -> forall l1 :e omega, forall l2 :e finseq A, hl_EL A l1 l2 = seq_nth l2 l1.
Admitted.

// PCROSS : ((A,M)cart->bool)->((A,N)cart->bool)->(A,(M,N)finite_sum)cart->bool (not in compat.mg)
Theorem hl_PCROSS_compat : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall l1 :e 2 :^: hl_ty_cart A M, forall l2 :e 2 :^: hl_ty_cart A N, hl_rep (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N l1 l2) = \/_ x :e hl_rep (hl_ty_cart A M) l1, {pastecart M N x y | y :e hl_rep (hl_ty_cart A N) l2}.
Admitted.

// pairwise : (A->A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_pairwise_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A, hl_pairwise A l1 l2 = 1 <-> forall x y :e hl_rep A l2, x <> y -> P1 x y.
Admitted.

// ALL : (A->bool)->A list->bool (not in compat.mg)
Theorem hl_ALL_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall P1:set -> prop, (forall x :e A, l1 x = 1 <-> P1 x) -> forall l2 :e finseq A, hl_ALL A l1 l2 = 1 <-> seq_all P1 l2.
Admitted.

// one : 1 (not in compat.mg)
Theorem hl_one_compat : hl_one = 0.
Admitted.

// NUMSUM : bool->num->num (not in compat.mg)
Theorem hl_NUMSUM_compat : hl_NUMSUM = Empty.
Admitted.

// CHOICE : (A->bool)->A (not in compat.mg)
Theorem hl_CHOICE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_CHOICE A l1 = choose_in A (fun x:set => x :e hl_rep A l1).
Admitted.

// EXTENSIONAL : (A->bool)->(A->B)->bool (not in compat.mg)
Theorem hl_EXTENSIONAL_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_EXTENSIONAL A B l1 l2 = 1 <-> forall x :e A, ~ x :e hl_rep A l1 -> f2 x = choose_in B (fun y:set => True)).
Admitted.

// treal_add : hreal#hreal->hreal#hreal->hreal#hreal (not in compat.mg)
Theorem hl_treal_add_compat : hl_treal_add = Empty.
Admitted.

// nsum : (A->bool)->(A->num)->num (not in compat.mg)
Theorem hl_nsum_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e omega :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_nsum A l1 l2 = finsum (hl_rep A l1) f2.
Admitted.

// BIJ : (A->B)->(A->bool)->(B->bool)->bool (not in compat.mg)
Theorem hl_BIJ_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e 2 :^: A, forall l3 :e 2 :^: B, hl_BIJ A B l1 l2 l3 = 1 <-> bij (hl_rep A l2) (hl_rep B l3) f1.
Admitted.

// nadd_le : nadd->nadd->bool (not in compat.mg)
Theorem hl_nadd_le_compat : hl_nadd_le = Empty.
Admitted.

// hashek : bool (not in compat.mg)
Theorem hl_hashek_compat : hl_hashek = Empty.
Admitted.

// NIL : A list (not in compat.mg)
Theorem hl_NIL_compat : forall A:set, A <> Empty -> hl_NIL A = seq_nil.
Admitted.

// .. : num->num->num->bool (not in compat.mg)
Theorem hl_numseg_compat : forall l1 l2 :e omega, hl_rep omega (hl_numseg l1 l2) = {i :e omega | l1 <= i /\ i <= l2}.
Admitted.

// FINREC : (A->B->B)->B->(A->bool)->B->num->bool (not in compat.mg)
Theorem hl_FINREC_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_FINREC A B = Empty.
Admitted.

// dest_finite_prod : (A,B)finite_prod->num (not in compat.mg)
Theorem hl_dest_finite_prod_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_finite_prod A B, hl_dest_finite_prod A B l1 = l1.
Admitted.

// MEM : A->A list->bool (not in compat.mg)
Theorem hl_MEM_compat : forall A:set, A <> Empty -> forall l1 :e A, forall l2 :e finseq A, hl_MEM A l1 l2 = 1 <-> seq_mem l1 l2.
Admitted.

// iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A (not in compat.mg)
Theorem hl_iterato_compat : forall A K:set, A <> Empty -> K <> Empty -> hl_iterato A K = Empty.
Admitted.

// has_sup : (real->bool)->real->bool (not in compat.mg)
Theorem hl_has_sup_compat : forall l1 :e 2 :^: R, forall l2 :e R, hl_has_sup l1 l2 = 1 <-> is_lub (hl_rep R l1) l2.
Admitted.

// FCONS : A->(num->A)->num->A (not in compat.mg)
Theorem hl_FCONS_compat : forall A:set, A <> Empty -> hl_FCONS A = Empty.
Admitted.

// dimindex : (N->bool)->num (not in compat.mg)
Theorem hl_dimindex_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: N, hl_dimindex N l1 = dimindex N.
Admitted.

// INJF : (num->num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_INJF_compat : forall A:set, A <> Empty -> hl_INJF A = Empty.
Admitted.

// dest_hreal : hreal->nadd->bool (not in compat.mg)
Theorem hl_dest_hreal_compat : hl_dest_hreal = Empty.
Admitted.

// INTERS : ((A->bool)->bool)->A->bool (not in compat.mg)
Theorem hl_INTERS_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_rep A (hl_INTERS A l1) = {x :e A | forall Y :e hl_rep (2 :^: A) l1, x :e Y}.
Admitted.

// iproduct : (A->bool)->(A->int)->int (not in compat.mg)
Theorem hl_iproduct_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e int :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_iproduct A l1 l2 = finprod (hl_rep A l1) f2.
Admitted.

// dest_nadd : nadd->num->num (not in compat.mg)
Theorem hl_dest_nadd_compat : hl_dest_nadd = Empty.
Admitted.

// int_gt : int->int->bool (not in compat.mg)
Theorem hl_int_gt_compat : forall l1 l2 :e int, hl_int_gt l1 l2 = 1 <-> l2 < l1.
Admitted.

// COUNTABLE : (A->bool)->bool (not in compat.mg)
Theorem hl_COUNTABLE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_COUNTABLE A l1 = 1 <-> countable (hl_rep A l1).
Admitted.

// >_c : (A->bool)->(B->bool)->bool (not in compat.mg)
Theorem hl_sym_3e5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_sym_3e5f63 A B l1 l2 = 1 <-> atleastp (hl_rep B l2) (hl_rep A l1) /\ ~ equip (hl_rep B l2) (hl_rep A l1).
Admitted.

// MEASURE : (A->num)->A->A->bool (not in compat.mg)
Theorem hl_MEASURE_compat : forall A:set, A <> Empty -> forall l1 :e omega :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 l3 :e A, hl_MEASURE A l1 l2 l3 = 1 <-> f1 l2 < f1 l3.
Admitted.

// SING : (A->bool)->bool (not in compat.mg)
Theorem hl_SING_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_SING A l1 = 1 <-> exists x :e A, hl_rep A l1 = {x}.
Admitted.

// dest_real : real->hreal#hreal->bool (not in compat.mg)
Theorem hl_dest_real_compat : hl_dest_real = Empty.
Admitted.

// == : int->int->(int->int->bool)->bool (not in compat.mg)
Theorem hl_sym_3d3d_compat : forall l1 l2 :e int, forall l3 :e 2 :^: int :^: int, forall P3:set -> set -> prop, (forall x y :e int, l3 x y = 1 <-> P3 x y) -> (hl_sym_3d3d l1 l2 l3 = 1 <-> P3 l1 l2).
Admitted.

// == : num->num->(num->num->bool)->bool (not in compat.mg)
Theorem hl_sym_3d3d_compat1 : forall l1 l2 :e omega, forall l3 :e 2 :^: omega :^: omega, forall P3:set -> set -> prop, (forall x y :e omega, l3 x y = 1 <-> P3 x y) -> (hl_sym_3d3d l1 l2 l3 = 1 <-> P3 l1 l2).
Admitted.

// == : A->A->(A->A->bool)->bool (not in compat.mg)
Theorem hl_sym_3d3d_compat2 : forall A:set, A <> Empty -> forall l1 l2 :e A, forall l3 :e 2 :^: A :^: A, forall P3:set -> set -> prop, (forall x y :e A, l3 x y = 1 <-> P3 x y) -> (hl_sym_3d3d A l1 l2 l3 = 1 <-> P3 l1 l2).
Admitted.

// SND : A#B->B (not in compat.mg)
Theorem hl_SND_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A :*: B, hl_SND A B l1 = l1 1.
Admitted.

// >=_c : (A->bool)->(B->bool)->bool (not in compat.mg)
Theorem hl_sym_3e3d5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_sym_3e3d5f63 A B l1 l2 = 1 <-> atleastp (hl_rep B l2) (hl_rep A l1).
Admitted.

// hreal_le : hreal->hreal->bool (not in compat.mg)
Theorem hl_hreal_le_compat : hl_hreal_le = Empty.
Admitted.

// ABS_prod : (A->B->bool)->A#B (not in compat.mg)
Theorem hl_ABS_prod_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_ABS_prod A B = Empty.
Admitted.

// hreal_mul : hreal->hreal->hreal (not in compat.mg)
Theorem hl_hreal_mul_compat : hl_hreal_mul = Empty.
Admitted.

// mk_num : ind->num (not in compat.mg)
Theorem hl_mk_num_compat : hl_mk_num = Empty.
Admitted.

// _UNGUARDED_PATTERN : bool->bool->bool (not in compat.mg)
Theorem hl__UNGUARDED_PATTERN_compat : hl__UNGUARDED_PATTERN = Empty.
Admitted.

// cartesian_product : (K->bool)->(K->A->bool)->(K->A)->bool (not in compat.mg)
Theorem hl_cartesian_product_compat : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: K, forall l2 :e 2 :^: A :^: K, forall f2:set -> set, (forall x :e K, l2 x = f2 x) -> hl_rep (A :^: K) (hl_cartesian_product K A l1 l2) = {f :e A :^: K | (forall i :e hl_rep K l1, f i :e f2 i) /\ forall i :e K, ~ i :e hl_rep K l1 -> f i = choose_in A (fun y:set => True)}.
Admitted.

// nproduct : (A->bool)->(A->num)->num (not in compat.mg)
Theorem hl_nproduct_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e omega :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_nproduct A l1 l2 = finprod (hl_rep A l1) f2.
Admitted.

// dest_num : num->ind (not in compat.mg)
Theorem hl_dest_num_compat : hl_dest_num = Empty.
Admitted.

// dest_cart : (A,N)cart->N finite_image->A (not in compat.mg)
Theorem hl_dest_cart_compat : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e hl_ty_cart A N, hl_dest_cart A N l1 = l1.
Admitted.

// tailadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool (not in compat.mg)
Theorem hl_tailadmissible_compat : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_tailadmissible A B P = Empty.
Admitted.

// NUMSND : num->num (not in compat.mg)
Theorem hl_NUMSND_compat : hl_NUMSND = Empty.
Admitted.

// ZIP : A list->B list->(A#B) list (not in compat.mg)
Theorem hl_ZIP_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e finseq A, forall l2 :e finseq B, hl_ZIP A B l1 l2 = seq_zip l1 l2.
Admitted.

// int_mod : int->int->int->bool (not in compat.mg)
Theorem hl_int_mod_compat : forall l1 l2 l3 :e int, hl_int_mod l1 l2 l3 = 1 <-> divides_int l1 (l2 + - l3).
Admitted.

// mktybit1 : ((A,A)finite_sum,1)finite_sum->A tybit1 (not in compat.mg)
Theorem hl_mktybit1_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_finite_sum (hl_ty_finite_sum A A) 1, hl_mktybit1 A l1 = l1.
Admitted.

// FINITE : (A->bool)->bool (not in compat.mg)
Theorem hl_FINITE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_FINITE A l1 = 1 <-> finite (hl_rep A l1).
Admitted.

// $ : (A,N)cart->num->A (not in compat.mg)
Theorem hl_vindex_compat : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e hl_ty_cart A N, forall l2 :e omega, hl_vindex A N l1 l2 = l1 l2.
Admitted.

// _dest_rec : A recspace->num->A->bool (not in compat.mg)
Theorem hl__dest_rec_compat : forall A:set, A <> Empty -> hl__dest_rec A = Empty.
Admitted.

// REST : (A->bool)->A->bool (not in compat.mg)
Theorem hl_REST_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_rep A (hl_REST A l1) = hl_rep A l1 :\: {choose_in A (fun x:set => x :e hl_rep A l1)}.
Admitted.

// mk_pair : A->B->A->B->bool (not in compat.mg)
Theorem hl_mk_pair_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_mk_pair A B = Empty.
Admitted.

// _FUNCTION : (A->B->bool)->A->B (not in compat.mg)
Theorem hl__FUNCTION_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__FUNCTION A B = Empty.
Admitted.

// mk_finite_sum : num->(A,B)finite_sum (not in compat.mg)
Theorem hl_mk_finite_sum_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e omega, hl_mk_finite_sum A B l1 = l1.
Admitted.

// num_coprime : num#num->bool (not in compat.mg)
Theorem hl_num_coprime_compat : forall l1 :e omega :*: omega, hl_num_coprime l1 = 1 <-> gcd_int (l1 0) (l1 1) = 1.
Admitted.

// DISJOINT : (A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_DISJOINT_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_DISJOINT A l1 l2 = 1 <-> hl_rep A l1 :/\: hl_rep A l2 = Empty.
Admitted.

// treal_inv : hreal#hreal->hreal#hreal (not in compat.mg)
Theorem hl_treal_inv_compat : hl_treal_inv = Empty.
Admitted.

// CONS : A->A list->A list (not in compat.mg)
Theorem hl_CONS_compat : forall A:set, A <> Empty -> forall l1 :e A, forall l2 :e finseq A, hl_CONS A l1 l2 = seq_cons l1 l2.
Admitted.

// OUTR : (A,B)sum->B (not in compat.mg)
Theorem hl_OUTR_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_OUTR A B = OUTR A B.
Admitted.

// NONE : A option (not in compat.mg)
Theorem hl_NONE_compat : forall A:set, A <> Empty -> hl_NONE A = Inj0 0.
Admitted.

// SURJ : (A->B)->(A->bool)->(B->bool)->bool (not in compat.mg)
Theorem hl_SURJ_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e 2 :^: A, forall l3 :e 2 :^: B, hl_SURJ A B l1 l2 l3 = 1 <-> (forall x :e hl_rep A l2, f1 x :e hl_rep B l3) /\ forall y :e hl_rep B l3, exists x :e hl_rep A l2, f1 x = y.
Admitted.

// WF : (A->A->bool)->bool (not in compat.mg)
Theorem hl_WF_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_WF A l1 = 1 <-> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ P1 y x).
Admitted.

// DELETE : (A->bool)->A->A->bool (not in compat.mg)
Theorem hl_DELETE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e A, hl_rep A (hl_DELETE A l1 l2) = hl_rep A l1 :\: {l2}.
Admitted.

// FST : A#B->A (not in compat.mg)
Theorem hl_FST_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A :*: B, hl_FST A B l1 = l1 0.
Admitted.

// ZBOT : num->A->bool (not in compat.mg)
Theorem hl_ZBOT_compat : forall A:set, A <> Empty -> hl_ZBOT A = Empty.
Admitted.

// iterate : (B->B->B)->(A->bool)->(A->B)->B (not in compat.mg)
Theorem hl_iterate_compat : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e B :^: B :^: B, forall f1:set -> set -> set, (forall x y :e B, l1 x y = f1 x y) -> forall l2 :e 2 :^: A, forall l3 :e B :^: A, forall f3:set -> set, (forall x :e A, l3 x = f3 x) -> hl_iterate B A l1 l2 l3 = iterate_op B (fun a:set => fun b:set => f1 a b) (hl_rep A l2) f3.
Admitted.

// DIV : num->num->num (not in compat.mg)
Theorem hl_DIV_compat : forall l1 l2 :e omega, hl_DIV l1 l2 = div_nat l1 l2.
Admitted.

// num_of_int : int->num (not in compat.mg)
Theorem hl_num_of_int_compat : forall l1 :e int, hl_num_of_int l1 = if l1 :e omega then l1 else 0.
Admitted.

// dest_finite_sum : (A,B)finite_sum->num (not in compat.mg)
Theorem hl_dest_finite_sum_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_finite_sum A B, hl_dest_finite_sum A B l1 = l1.
Admitted.

// FNIL : num->A (not in compat.mg)
Theorem hl_FNIL_compat : forall A:set, A <> Empty -> hl_FNIL A = Empty.
Admitted.

// product : (A->bool)->(A->real)->real (not in compat.mg)
Theorem hl_product_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e R :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_product A l1 l2 = finprod (hl_rep A l1) f2.
Admitted.

// TL : A list->A list (not in compat.mg)
Theorem hl_TL_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_TL A l1 = seq_tl l1.
Admitted.

// ZRECSPACE : (num->A->bool)->bool (not in compat.mg)
Theorem hl_ZRECSPACE_compat : forall A:set, A <> Empty -> hl_ZRECSPACE A = Empty.
Admitted.

// admissible : (A->A->bool)->((B->C)->P->bool)->(P->A)->((B->C)->P->D)->bool (not in compat.mg)
Theorem hl_admissible_compat : forall A B C P D:set, A <> Empty -> B <> Empty -> C <> Empty -> P <> Empty -> D <> Empty -> hl_admissible A B C P D = Empty.
Admitted.

// UNIONS : ((A->bool)->bool)->A->bool (not in compat.mg)
Theorem hl_UNIONS_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_rep A (hl_UNIONS A l1) = Union (hl_rep (2 :^: A) l1).
Admitted.

// mk_nadd : (num->num)->nadd (not in compat.mg)
Theorem hl_mk_nadd_compat : hl_mk_nadd = Empty.
Admitted.

// EX : (A->bool)->A list->bool (not in compat.mg)
Theorem hl_EX_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall P1:set -> prop, (forall x :e A, l1 x = 1 <-> P1 x) -> forall l2 :e finseq A, hl_EX A l1 l2 = 1 <-> seq_ex P1 l2.
Admitted.

// superadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool (not in compat.mg)
Theorem hl_superadmissible_compat : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_superadmissible A B P = Empty.
Admitted.

// LENGTH : A list->num (not in compat.mg)
Theorem hl_LENGTH_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_LENGTH A l1 = seq_len l1.
Admitted.

// int_coprime : int#int->bool (not in compat.mg)
Theorem hl_int_coprime_compat : forall l1 :e int :*: int, hl_int_coprime l1 = 1 <-> gcd_int (l1 0) (l1 1) = 1.
Admitted.

// dest_finite_diff : (A,B)finite_diff->num (not in compat.mg)
Theorem hl_dest_finite_diff_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e hl_ty_finite_diff A B, hl_dest_finite_diff A B l1 = l1.
Admitted.

// has_inf : (real->bool)->real->bool (not in compat.mg)
Theorem hl_has_inf_compat : forall l1 :e 2 :^: R, forall l2 :e R, hl_has_inf l1 l2 = 1 <-> is_glb (hl_rep R l1) l2.
Admitted.

// DECIMAL : num->num->real (not in compat.mg)
Theorem hl_DECIMAL_compat : forall l1 l2 :e omega, hl_DECIMAL l1 l2 = l1 :/: l2.
Admitted.

// MAP2 : (A->B->C)->A list->B list->C list (not in compat.mg)
Theorem hl_MAP2_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e C :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e finseq A, forall l3 :e finseq B, hl_MAP2 A B C l1 l2 l3 = seq_map2 f1 l2 l3.
Admitted.

// SETSPEC : A->bool->A->bool (not in compat.mg)
Theorem hl_SETSPEC_compat : forall A:set, A <> Empty -> hl_SETSPEC A = Empty.
Admitted.

// DIFF : (A->bool)->(A->bool)->A->bool (not in compat.mg)
Theorem hl_DIFF_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_rep A (hl_DIFF A l1 l2) = hl_rep A l1 :\: hl_rep A l2.
Admitted.

// sqrt : real->real (not in compat.mg)
Theorem hl_sqrt_compat : forall l1 :e R, hl_sqrt l1 = if 0 <= l1 then sqrt_SNo_nonneg l1 else - sqrt_SNo_nonneg (- l1).
Admitted.

// REPLICATE : num->A->A list (not in compat.mg)
Theorem hl_REPLICATE_compat : forall A:set, A <> Empty -> forall l1 :e omega, forall l2 :e A, hl_REPLICATE A l1 l2 = seq_replicate l1 l2.
Admitted.

// is_nadd : (num->num)->bool (not in compat.mg)
Theorem hl_is_nadd_compat : hl_is_nadd = Empty.
Admitted.

// prime : num->bool (not in compat.mg)
Theorem hl_prime_compat : forall l1 :e omega, hl_prime l1 = 1 <-> prime_nat l1.
Admitted.

// IND_SUC : ind->ind (not in compat.mg)
Theorem hl_IND_SUC_compat : hl_IND_SUC = Empty.
Admitted.

// LET_END : A->A (not in compat.mg)
Theorem hl_LET_END_compat : forall A:set, A <> Empty -> forall l1 :e A, hl_LET_END A l1 = l1.
Admitted.

// finite_index : num->N finite_image (not in compat.mg)
Theorem hl_finite_index_compat : forall N:set, N <> Empty -> forall l1 :e omega, hl_finite_index N l1 = l1.
Admitted.

// num_mod : num->num->num->bool (not in compat.mg)
Theorem hl_num_mod_compat : forall l1 l2 l3 :e omega, hl_num_mod l1 l2 l3 = 1 <-> exists q1 q2 :e omega, l2 + l1 * q1 = l3 + l1 * q2.
Admitted.

// NUMPAIR : num->num->num (not in compat.mg)
Theorem hl_NUMPAIR_compat : hl_NUMPAIR = Empty.
Admitted.

// IND_0 : ind (not in compat.mg)
Theorem hl_IND_0_compat : hl_IND_0 = Empty.
Admitted.

// _MATCH : A->(A->B->bool)->B (not in compat.mg)
Theorem hl__MATCH_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__MATCH A B = Empty.
Admitted.

// NUMFST : num->num (not in compat.mg)
Theorem hl_NUMFST_compat : hl_NUMFST = Empty.
Admitted.

// OUTL : (A,B)sum->A (not in compat.mg)
Theorem hl_OUTL_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_OUTL A B = OUTL A B.
Admitted.

// int_gcd : int#int->int (not in compat.mg)
Theorem hl_int_gcd_compat : forall l1 :e int :*: int, hl_int_gcd l1 = gcd_int (l1 0) (l1 1).
Admitted.

// nadd_inv : nadd->nadd (not in compat.mg)
Theorem hl_nadd_inv_compat : hl_nadd_inv = Empty.
Admitted.

// set_of_list : A list->A->bool (not in compat.mg)
Theorem hl_set_of_list_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_rep A (hl_set_of_list A l1) = seq_set l1.
Admitted.

// int_pow : int->num->int (not in compat.mg)
Theorem hl_int_pow_compat : forall l1 :e int, forall l2 :e omega, hl_int_pow l1 l2 = l1 ^ l2.
Admitted.

// INTER : (A->bool)->(A->bool)->A->bool (not in compat.mg)
Theorem hl_INTER_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_rep A (hl_INTER A l1 l2) = hl_rep A l1 :/\: hl_rep A l2.
Admitted.

// num_lcm : num#num->num (not in compat.mg)
Theorem hl_num_lcm_compat : forall l1 :e omega :*: omega, hl_num_lcm l1 = lcm_int (l1 0) (l1 1).
Admitted.

// UNCURRY : (A->B->C)->A#B->C (not in compat.mg)
Theorem hl_UNCURRY_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e C :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e A :*: B, hl_UNCURRY A B C l1 l2 = f1 (l2 0) (l2 1).
Admitted.

// num_gcd : num#num->num (not in compat.mg)
Theorem hl_num_gcd_compat : forall l1 :e omega :*: omega, hl_num_gcd l1 = gcd_int (l1 0) (l1 1).
Admitted.

// REVERSE : A list->A list (not in compat.mg)
Theorem hl_REVERSE_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_REVERSE A l1 = seq_rev l1.
Admitted.

// real_sgn : real->real (not in compat.mg)
Theorem hl_real_sgn_compat : forall l1 :e R, hl_real_sgn l1 = if 0 < l1 then 1 else if l1 < 0 then - 1 else 0.
Admitted.

// SOME : A->A option (not in compat.mg)
Theorem hl_SOME_compat : forall A:set, A <> Empty -> forall l1 :e A, hl_SOME A l1 = Inj1 l1.
Admitted.

// CROSS : (A->bool)->(B->bool)->A#B->bool (not in compat.mg)
Theorem hl_CROSS_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_rep (A :*: B) (hl_CROSS A B l1 l2) = hl_rep A l1 :*: hl_rep B l2.
Admitted.

// INL : A->(A,B)sum (not in compat.mg)
Theorem hl_INL_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A, hl_INL A B l1 = Inj0 l1.
Admitted.

// _GUARDED_PATTERN : bool->bool->bool->bool (not in compat.mg)
Theorem hl__GUARDED_PATTERN_compat : hl__GUARDED_PATTERN = Empty.
Admitted.

// dist : num#num->num (not in compat.mg)
Theorem hl_dist_compat : forall l1 :e omega :*: omega, hl_dist l1 = abs_SNo (l1 0 + - l1 1).
Admitted.

// polynomial_function : (real->real)->bool (not in compat.mg)
Theorem hl_polynomial_function_compat : forall l1 :e R :^: R, forall f1:set -> set, (forall x :e R, l1 x = f1 x) -> (hl_polynomial_function l1 = 1 <-> polynomial_function_R f1).
Admitted.

// UNION : (A->bool)->(A->bool)->A->bool (not in compat.mg)
Theorem hl_UNION_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_rep A (hl_UNION A l1 l2) = hl_rep A l1 :\/: hl_rep A l2.
Admitted.

// int_ge : int->int->bool (not in compat.mg)
Theorem hl_int_ge_compat : forall l1 l2 :e int, hl_int_ge l1 l2 = 1 <-> l2 <= l1.
Admitted.

// nadd_of_num : num->nadd (not in compat.mg)
Theorem hl_nadd_of_num_compat : hl_nadd_of_num = Empty.
Admitted.

// treal_neg : hreal#hreal->hreal#hreal (not in compat.mg)
Theorem hl_treal_neg_compat : hl_treal_neg = Empty.
Admitted.

// INJN : num->num->A->bool (not in compat.mg)
Theorem hl_INJN_compat : forall A:set, A <> Empty -> hl_INJN A = Empty.
Admitted.

// neutral : (A->A->A)->A (not in compat.mg)
Theorem hl_neutral_compat : forall A:set, A <> Empty -> forall l1 :e A :^: A :^: A, forall f1:set -> set -> set, (forall x y :e A, l1 x y = f1 x y) -> hl_neutral A l1 = neutral_of A (fun a:set => fun b:set => f1 a b).
Admitted.

// list_of_seq : (num->A)->num->A list (not in compat.mg)
Theorem hl_list_of_seq_compat : forall A:set, A <> Empty -> forall l1 :e A :^: omega, forall f1:set -> set, (forall x :e omega, l1 x = f1 x) -> forall l2 :e omega, hl_list_of_seq A l1 l2 = seq_mk l2 f1.
Admitted.

// NULL : A list->bool (not in compat.mg)
Theorem hl_NULL_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_NULL A l1 = 1 <-> seq_len l1 = 0.
Admitted.

// PSUBSET : (A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_PSUBSET_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_PSUBSET A l1 l2 = 1 <-> hl_rep A l1 c= hl_rep A l2 /\ hl_rep A l1 <> hl_rep A l2.
Admitted.

// mktybit0 : (A,A)finite_sum->A tybit0 (not in compat.mg)
Theorem hl_mktybit0_compat : forall A:set, A <> Empty -> forall l1 :e hl_ty_finite_sum A A, hl_mktybit0 A l1 = l1.
Admitted.

// sndcart : (A,(M,N)finite_sum)cart->(A,N)cart (not in compat.mg)
Theorem hl_sndcart_compat : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall l1 :e hl_ty_cart A (hl_ty_finite_sum M N), hl_sndcart A M N l1 = sndcart M N l1.
Admitted.

// fstcart : (A,(M,N)finite_sum)cart->(A,M)cart (not in compat.mg)
Theorem hl_fstcart_compat : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall l1 :e hl_ty_cart A (hl_ty_finite_sum M N), hl_fstcart A M N l1 = fstcart M l1.
Admitted.

// dest_finite_image : N finite_image->num (not in compat.mg)
Theorem hl_dest_finite_image_compat : forall N:set, N <> Empty -> forall l1 :e hl_ty_finite_image N, hl_dest_finite_image N l1 = l1.
Admitted.

// sum : (A->bool)->(A->real)->real (not in compat.mg)
Theorem hl_sum_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e R :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_sum A l1 l2 = finsum (hl_rep A l1) f2.
Admitted.

// sup : (real->bool)->real (not in compat.mg)
Theorem hl_sup_compat : forall l1 :e 2 :^: R, hl_sup l1 = sup (hl_rep R l1).
Admitted.

// disjoint_union : (K->bool)->(K->A->bool)->K#A->bool (not in compat.mg)
Theorem hl_disjoint_union_compat : forall K A:set, K <> Empty -> A <> Empty -> forall l1 :e 2 :^: K, forall l2 :e 2 :^: A :^: K, forall f2:set -> set, (forall x :e K, l2 x = f2 x) -> hl_rep (K :*: A) (hl_disjoint_union K A l1 l2) = {p :e K :*: A | p 0 :e hl_rep K l1 /\ p 1 :e f2 (p 0)}.
Admitted.

// IMAGE : (A->B)->(A->bool)->B->bool (not in compat.mg)
Theorem hl_IMAGE_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e 2 :^: A, hl_rep B (hl_IMAGE A B l1 l2) = {f1 x | x :e hl_rep A l2}.
Admitted.

// ISO : (A->B)->(B->A)->bool (not in compat.mg)
Theorem hl_ISO_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e A :^: B, forall f2:set -> set, (forall x :e B, l2 x = f2 x) -> (hl_ISO A B l1 l2 = 1 <-> (forall x :e B, f1 (f2 x) = x) /\ forall y :e A, f2 (f1 y) = y).
Admitted.

// ASSOC : A->(A#B) list->B (not in compat.mg)
Theorem hl_ASSOC_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A, forall l2 :e finseq (A :*: B), hl_ASSOC A B l1 l2 = seq_assoc l1 l2.
Admitted.

// minimal : (num->bool)->num (not in compat.mg)
Theorem hl_minimal_compat : forall l1 :e 2 :^: omega, forall P1:set -> prop, (forall x :e omega, l1 x = 1 <-> P1 x) -> hl_minimal l1 = choose_in omega (fun n:set => P1 n /\ forall m :e omega, P1 m -> n <= m).
Admitted.

// LET : (A->B)->A->B (not in compat.mg)
Theorem hl_LET_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e A, hl_LET A B l1 l2 = f1 l2.
Admitted.

// INJA : A->num->A->bool (not in compat.mg)
Theorem hl_INJA_compat : forall A:set, A <> Empty -> hl_INJA A = Empty.
Admitted.

// NUMLEFT : num->bool (not in compat.mg)
Theorem hl_NUMLEFT_compat : hl_NUMLEFT = Empty.
Admitted.

// <_c : (A->bool)->(B->bool)->bool (not in compat.mg)
Theorem hl_sym_3c5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_sym_3c5f63 A B l1 l2 = 1 <-> atleastp (hl_rep A l1) (hl_rep B l2) /\ ~ equip (hl_rep A l1) (hl_rep B l2).
Admitted.

// =_c : (A->bool)->(B->bool)->bool (not in compat.mg)
Theorem hl_sym_3d5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_sym_3d5f63 A B l1 l2 = 1 <-> equip (hl_rep A l1) (hl_rep B l2).
Admitted.

// hreal_inv : hreal->hreal (not in compat.mg)
Theorem hl_hreal_inv_compat : hl_hreal_inv = Empty.
Admitted.

// monoidal : (A->A->A)->bool (not in compat.mg)
Theorem hl_monoidal_compat : forall A:set, A <> Empty -> forall l1 :e A :^: A :^: A, forall f1:set -> set -> set, (forall x y :e A, l1 x y = f1 x y) -> (hl_monoidal A l1 = 1 <-> (forall x y :e A, f1 x y = f1 y x) /\ (forall x y z :e A, f1 x (f1 y z) = f1 (f1 x y) z) /\ forall x :e A, f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x = x).
Admitted.

// list_of_set : (A->bool)->A list (not in compat.mg)
Theorem hl_list_of_set_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_list_of_set A l1 = choose_in (finseq A) (fun l:set => seq_set l = hl_rep A l1 /\ seq_len l = finite_cardinality (hl_rep A l1)).
Admitted.

// nadd_add : nadd->nadd->nadd (not in compat.mg)
Theorem hl_nadd_add_compat : hl_nadd_add = Empty.
Admitted.

// treal_le : hreal#hreal->hreal#hreal->bool (not in compat.mg)
Theorem hl_treal_le_compat : hl_treal_le = Empty.
Admitted.

// rem : int->int->int (not in compat.mg)
Theorem hl_rem_compat : forall l1 l2 :e int, hl_rem l1 l2 = rem_int l1 l2.
Admitted.

// int_lcm : int#int->int (not in compat.mg)
Theorem hl_int_lcm_compat : forall l1 :e int :*: int, hl_int_lcm l1 = lcm_int (l1 0) (l1 1).
Admitted.

// ALL2 : (A->B->bool)->A list->B list->bool (not in compat.mg)
Theorem hl_ALL2_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: B :^: A, forall P1:set -> set -> prop, (forall x :e A, forall y :e B, l1 x y = 1 <-> P1 x y) -> forall l2 :e finseq A, forall l3 :e finseq B, hl_ALL2 A B l1 l2 l3 = 1 <-> seq_all2 P1 l2 l3.
Admitted.

// isum : (A->bool)->(A->int)->int (not in compat.mg)
Theorem hl_isum_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e int :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_isum A l1 l2 = finsum (hl_rep A l1) f2.
Admitted.

// ZCONSTR : num->A->(num->num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_ZCONSTR_compat : forall A:set, A <> Empty -> hl_ZCONSTR A = Empty.
Admitted.

// _mk_rec : (num->A->bool)->A recspace (not in compat.mg)
Theorem hl__mk_rec_compat : forall A:set, A <> Empty -> hl__mk_rec A = Empty.
Admitted.

// ITSET : (A->B->B)->(A->bool)->B->B (not in compat.mg)
Theorem hl_ITSET_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e 2 :^: A, forall l3 :e B, hl_ITSET A B l1 l2 l3 = set_foldr f1 (hl_rep A l2) l3.
Admitted.

// PAIRWISE : (A->A->bool)->A list->bool (not in compat.mg)
Theorem hl_PAIRWISE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e finseq A, hl_PAIRWISE A l1 l2 = 1 <-> seq_pairwise P1 l2.
Admitted.

// mk_finite_prod : num->(A,B)finite_prod (not in compat.mg)
Theorem hl_mk_finite_prod_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e omega, hl_mk_finite_prod A B l1 = l1.
Admitted.

// FILTER : (A->bool)->A list->A list (not in compat.mg)
Theorem hl_FILTER_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall P1:set -> prop, (forall x :e A, l1 x = 1 <-> P1 x) -> forall l2 :e finseq A, hl_FILTER A l1 l2 = seq_filter P1 l2.
Admitted.

// hreal_add : hreal->hreal->hreal (not in compat.mg)
Theorem hl_hreal_add_compat : hl_hreal_add = Empty.
Admitted.

// ALLPAIRS : (A->B->bool)->A list->B list->bool (not in compat.mg)
Theorem hl_ALLPAIRS_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: B :^: A, forall P1:set -> set -> prop, (forall x :e A, forall y :e B, l1 x y = 1 <-> P1 x y) -> forall l2 :e finseq A, forall l3 :e finseq B, hl_ALLPAIRS A B l1 l2 l3 = 1 <-> forall i :e seq_len l2, forall j :e seq_len l3, P1 (seq_nth l2 i) (seq_nth l3 j).
Admitted.

// BOTTOM : A recspace (not in compat.mg)
Theorem hl_BOTTOM_compat : forall A:set, A <> Empty -> hl_BOTTOM A = Empty.
Admitted.

// INTERSECTION_OF : (((A->bool)->bool)->bool)->((A->bool)->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_INTERSECTION_OF_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), forall P1:set -> prop, (forall x :e 2 :^: (2 :^: A), l1 x = 1 <-> P1 x) -> forall l2 :e 2 :^: (2 :^: A), forall P2:set -> prop, (forall x :e 2 :^: A, l2 x = 1 <-> P2 x) -> forall l3 :e 2 :^: A, hl_INTERSECTION_OF A l1 l2 l3 = 1 <-> exists u c= Power A, P1 u /\ (forall c :e u, P2 c) /\ {x :e A | forall Y :e u, x :e Y} = hl_rep A l3.
Admitted.

// BUTLAST : A list->A list (not in compat.mg)
Theorem hl_BUTLAST_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_BUTLAST A l1 = seq_butlast l1.
Admitted.

// treal_of_num : num->hreal#hreal (not in compat.mg)
Theorem hl_treal_of_num_compat : hl_treal_of_num = Empty.
Admitted.

// support : (B->B->B)->(A->B)->(A->bool)->A->bool (not in compat.mg)
Theorem hl_support_compat : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e B :^: B :^: B, forall f1:set -> set -> set, (forall x y :e B, l1 x y = f1 x y) -> forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall l3 :e 2 :^: A, hl_rep A (hl_support B A l1 l2 l3) = {x :e hl_rep A l3 | f2 x <> neutral_of B (fun a:set => fun b:set => f1 a b)}.
Admitted.

// CONSTR : num->A->(num->A recspace)->A recspace (not in compat.mg)
Theorem hl_CONSTR_compat : forall A:set, A <> Empty -> hl_CONSTR A = Empty.
Admitted.

// MAP : (A->B)->A list->B list (not in compat.mg)
Theorem hl_MAP_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e finseq A, hl_MAP A B l1 l2 = seq_map f1 l2.
Admitted.

// nadd_eq : nadd->nadd->bool (not in compat.mg)
Theorem hl_nadd_eq_compat : hl_nadd_eq = Empty.
Admitted.

// _FALSITY_ : bool (not in compat.mg)
Theorem hl__FALSITY__compat : hl__FALSITY_ = Empty.
Admitted.

// INJ : (A->B)->(A->bool)->(B->bool)->bool (not in compat.mg)
Theorem hl_INJ_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e 2 :^: A, forall l3 :e 2 :^: B, hl_INJ A B l1 l2 l3 = 1 <-> inj (hl_rep A l2) (hl_rep B l3) f1.
Admitted.

// _SEQPATTERN : (A->B->bool)->(A->B->bool)->A->B->bool (not in compat.mg)
Theorem hl__SEQPATTERN_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__SEQPATTERN A B = Empty.
Admitted.

// real_mod : real->real->real->bool (not in compat.mg)
Theorem hl_real_mod_compat : forall l1 l2 l3 :e R, hl_real_mod l1 l2 l3 = 1 <-> real_mod l1 l2 l3.
Admitted.

// real_zpow : real->int->real (not in compat.mg)
Theorem hl_real_zpow_compat : forall l1 :e R, forall l2 :e int, hl_real_zpow l1 l2 = if 0 <= l2 then l1 ^ l2 else recip_SNo (l1 ^ (- l2)).
Admitted.

// int_sgn : int->int (not in compat.mg)
Theorem hl_int_sgn_compat : forall l1 :e int, hl_int_sgn l1 = if 0 < l1 then 1 else if l1 < 0 then - 1 else 0.
Admitted.

// treal_mul : hreal#hreal->hreal#hreal->hreal#hreal (not in compat.mg)
Theorem hl_treal_mul_compat : hl_treal_mul = Empty.
Admitted.

// ARBITRARY : ((A->bool)->bool)->bool (not in compat.mg)
Theorem hl_ARBITRARY_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_ARBITRARY A l1 = 1 <-> True.
Admitted.

// nadd_rinv : nadd->num->num (not in compat.mg)
Theorem hl_nadd_rinv_compat : hl_nadd_rinv = Empty.
Admitted.

// num_divides : num->num->bool (not in compat.mg)
Theorem hl_num_divides_compat : forall l1 l2 :e omega, hl_num_divides l1 l2 = 1 <-> divides_nat l1 l2.
Admitted.

// LAST : A list->A (not in compat.mg)
Theorem hl_LAST_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_LAST A l1 = seq_last l1.
Admitted.

// REP_prod : A#B->A->B->bool (not in compat.mg)
Theorem hl_REP_prod_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_REP_prod A B = Empty.
Admitted.

// HAS_SIZE : (A->bool)->num->bool (not in compat.mg)
Theorem hl_HAS_SIZE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e omega, hl_HAS_SIZE A l1 l2 = 1 <-> equip (hl_rep A l1) l2.
Admitted.

// treal_eq : hreal#hreal->hreal#hreal->bool (not in compat.mg)
Theorem hl_treal_eq_compat : hl_treal_eq = Empty.
Admitted.

// vector : A list->(A,N)cart (not in compat.mg)
Theorem hl_vector_compat : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e finseq A, hl_vector A N l1 = vector A N l1.
Admitted.

// MOD : num->num->num (not in compat.mg)
Theorem hl_MOD_compat : forall l1 l2 :e omega, hl_MOD l1 l2 = mod_nat l1 l2.
Admitted.

// GEQ : A->A->bool (not in compat.mg)
Theorem hl_GEQ_compat : forall A:set, A <> Empty -> hl_GEQ A = Empty.
Admitted.

// int_divides : int->int->bool (not in compat.mg)
Theorem hl_int_divides_compat : forall l1 l2 :e int, hl_int_divides l1 l2 = 1 <-> divides_int l1 l2.
Admitted.

// inf : (real->bool)->real (not in compat.mg)
Theorem hl_inf_compat : forall l1 :e 2 :^: R, hl_inf l1 = inf (hl_rep R l1).
Admitted.

// CURRY : (A#B->C)->A->B->C (not in compat.mg)
Theorem hl_CURRY_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e C :^: (A :*: B), forall f1:set -> set, (forall x :e A :*: B, l1 x = f1 x) -> forall l2 :e A, forall l3 :e B, hl_CURRY A B C l1 l2 l3 = f1 (l2,l3).
Admitted.

// INR : B->(A,B)sum (not in compat.mg)
Theorem hl_INR_compat : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e B, hl_INR B A l1 = Inj1 l1.
Admitted.

