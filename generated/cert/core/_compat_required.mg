// Compatibility theorem statements generated from the mapping registry (docs/DESIGN.md §21.4)
// that are not yet proved in mglib/literal/compat.mg (or are stated differently there), and
// carrier nonemptiness theorems missing from mglib/literal/carriers.mg.

// CASEWISE : ((P->A)#(B->P->C)) list->B->A->C (not in compat.mg)
Theorem hl_CASEWISE_compat : forall P A B C:set, P <> Empty -> A <> Empty -> B <> Empty -> C <> Empty -> hl_CASEWISE P A B C = Empty.
Admitted.

// INJP : (num->A->bool)->(num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_INJP_compat : forall A:set, A <> Empty -> hl_INJP A = Empty.
Admitted.

// mk_finite_diff : num->(A,B)finite_diff (not in compat.mg)
Theorem hl_mk_finite_diff_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e omega, hl_mk_finite_diff A B l1 = l1.
Admitted.

// CARD : (A->bool)->num at A := A -> bool (not in compat.mg)
Theorem hl_CARD_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), finite (hl_rep2 A l1) -> hl_CARD (2 :^: A) l1 = finite_cardinality (hl_rep2 A l1).
Admitted.

// NUMSUM : bool->num->num (not in compat.mg)
Theorem hl_NUMSUM_compat : hl_NUMSUM = Empty.
Admitted.

// CHOICE : (A->bool)->A at A := A -> bool (not in compat.mg)
Theorem hl_CHOICE_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_CHOICE (2 :^: A) l1 = choose_in (Power A) (fun x:set => x :e hl_rep2 A l1).
Admitted.

// hashek : bool (not in compat.mg)
Theorem hl_hashek_compat : hl_hashek = Empty.
Admitted.

// FINREC : (A->B->B)->B->(A->bool)->B->num->bool (not in compat.mg)
Theorem hl_FINREC_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_FINREC A B = Empty.
Admitted.

// dest_finite_prod : (A,B)finite_prod->num (not in compat.mg)
Theorem hl_dest_finite_prod_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e idx_n (dimindex A * dimindex B), hl_dest_finite_prod A B l1 = l1.
Admitted.

// iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A (not in compat.mg)
Theorem hl_iterato_compat : forall A K:set, A <> Empty -> K <> Empty -> hl_iterato A K = Empty.
Admitted.

// FCONS : A->(num->A)->num->A (not in compat.mg)
Theorem hl_FCONS_compat : forall A:set, A <> Empty -> hl_FCONS A = Empty.
Admitted.

// INJF : (num->num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_INJF_compat : forall A:set, A <> Empty -> hl_INJF A = Empty.
Admitted.

// >_c : (A->bool)->(B->bool)->bool (not in compat.mg)
Theorem hl_sym_3e5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_sym_3e5f63 A B l1 l2 = 1 <-> atleastp (hl_rep B l2) (hl_rep A l1) /\ ~ equip (hl_rep B l2) (hl_rep A l1).
Admitted.

// SING : (A->bool)->bool (not in compat.mg)
Theorem hl_SING_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_SING A l1 = 1 <-> exists x :e A, hl_rep A l1 = {x}.
Admitted.

// SING : (A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_SING_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_SING (2 :^: A) l1 = 1 <-> exists x :e Power A, hl_rep2 A l1 = {x}.
Admitted.

// _UNGUARDED_PATTERN : bool->bool->bool (not in compat.mg)
Theorem hl__UNGUARDED_PATTERN_compat : hl__UNGUARDED_PATTERN = Empty.
Admitted.

// tailadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool (not in compat.mg)
Theorem hl_tailadmissible_compat : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_tailadmissible A B P = Empty.
Admitted.

// NUMSND : num->num (not in compat.mg)
Theorem hl_NUMSND_compat : hl_NUMSND = Empty.
Admitted.

// mk_pair : A->B->A->B->bool (not in compat.mg)
Theorem hl_mk_pair_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_mk_pair A B = Empty.
Admitted.

// _FUNCTION : (A->B->bool)->A->B (not in compat.mg)
Theorem hl__FUNCTION_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__FUNCTION A B = Empty.
Admitted.

// OUTR : (A,B)sum->B (not in compat.mg)
Theorem hl_OUTR_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_OUTR A B = OUTR A B.
Admitted.

// ZBOT : num->A->bool (not in compat.mg)
Theorem hl_ZBOT_compat : forall A:set, A <> Empty -> hl_ZBOT A = Empty.
Admitted.

// product_map : (K->bool)->(K->A->B)->(K->A)->K->B (not in compat.mg)
Theorem hl_product_map_compat : forall K A B:set, K <> Empty -> A <> Empty -> B <> Empty -> forall l1 :e 2 :^: K, forall l2 :e B :^: A :^: K, forall f2:set -> set -> set, (forall x :e K, forall y :e A, l2 x y = f2 x y) -> forall x :e A :^: K, hl_product_map K A B l1 l2 x = fun i:set => if i :e hl_rep K l1 then f2 i (x i) else choose_in B (fun y:set => False).
Admitted.

// FNIL : num->A (not in compat.mg)
Theorem hl_FNIL_compat : forall A:set, A <> Empty -> hl_FNIL A = Empty.
Admitted.

// ZRECSPACE : (num->A->bool)->bool (not in compat.mg)
Theorem hl_ZRECSPACE_compat : forall A:set, A <> Empty -> hl_ZRECSPACE A = Empty.
Admitted.

// superadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool (not in compat.mg)
Theorem hl_superadmissible_compat : forall A B P:set, A <> Empty -> B <> Empty -> P <> Empty -> hl_superadmissible A B P = Empty.
Admitted.

// dest_finite_diff : (A,B)finite_diff->num (not in compat.mg)
Theorem hl_dest_finite_diff_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e idx_n (if dimindex B < dimindex A then minus_nat (dimindex A) (dimindex B) else 1), hl_dest_finite_diff A B l1 = l1.
Admitted.

// MAP2 : (A->B->C)->A list->B list->C list (not in compat.mg)
Theorem hl_MAP2_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e C :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e finseq A, forall l3 :e finseq B, hl_MAP2 A B C l1 l2 l3 = seq_map2 f1 l2 l3.
Admitted.

// SETSPEC : A->bool->A->bool (not in compat.mg)
Theorem hl_SETSPEC_compat : forall A:set, A <> Empty -> hl_SETSPEC A = Empty.
Admitted.

// is_nadd : (num->num)->bool (not in compat.mg)
Theorem hl_is_nadd_compat : hl_is_nadd = Empty.
Admitted.

// IND_SUC : ind->ind (not in compat.mg)
Theorem hl_IND_SUC_compat : hl_IND_SUC = Empty.
Admitted.

// LET_END : A->A (not in compat.mg)
Theorem hl_LET_END_compat : forall A:set, A <> Empty -> forall l1 :e A, hl_LET_END A l1 = l1.
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

// UNCURRY : (A->B->C)->A#B->C (not in compat.mg)
Theorem hl_UNCURRY_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e C :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e A :*: B, hl_UNCURRY A B C l1 l2 = f1 (l2 0) (l2 1).
Admitted.

// _GUARDED_PATTERN : bool->bool->bool->bool (not in compat.mg)
Theorem hl__GUARDED_PATTERN_compat : hl__GUARDED_PATTERN = Empty.
Admitted.

// INJN : num->num->A->bool (not in compat.mg)
Theorem hl_INJN_compat : forall A:set, A <> Empty -> hl_INJN A = Empty.
Admitted.

// NULL : A list->bool (not in compat.mg)
Theorem hl_NULL_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_NULL A l1 = 1 <-> seq_len l1 = 0.
Admitted.

// o : (B->bool)->(A->B)->A->bool (not in compat.mg)
Theorem hl_o_compat : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e 2 :^: B, forall P1:set -> prop, (forall x :e B, l1 x = 1 <-> P1 x) -> forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall x :e A, hl_o B 2 A l1 l2 x = 1 <-> P1 (f2 x).
Admitted.

// o : (B->C)->(A->B)->A->C (not in compat.mg)
Theorem hl_o_compat1 : forall B C A:set, B <> Empty -> C <> Empty -> A <> Empty -> forall l1 :e C :^: B, forall f1:set -> set, (forall x :e B, l1 x = f1 x) -> forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall x :e A, hl_o B C A l1 l2 x = f1 (f2 x).
Admitted.

// ASSOC : A->(A#B) list->B (not in compat.mg)
Theorem hl_ASSOC_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A, forall l2 :e finseq (A :*: B), hl_ASSOC A B l1 l2 = seq_assoc l1 l2.
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

// ZCONSTR : num->A->(num->num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_ZCONSTR_compat : forall A:set, A <> Empty -> hl_ZCONSTR A = Empty.
Admitted.

// ITSET : (A->B->B)->(A->bool)->B->B (not in compat.mg)
Theorem hl_ITSET_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e 2 :^: A, forall l3 :e B, hl_ITSET A B l1 l2 l3 = set_foldr f1 (hl_rep A l2) l3.
Admitted.

// mk_finite_prod : num->(A,B)finite_prod (not in compat.mg)
Theorem hl_mk_finite_prod_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e omega, hl_mk_finite_prod A B l1 = l1.
Admitted.

// _FALSITY_ : bool (not in compat.mg)
Theorem hl__FALSITY__compat : hl__FALSITY_ = Empty.
Admitted.

// _SEQPATTERN : (A->B->bool)->(A->B->bool)->A->B->bool (not in compat.mg)
Theorem hl__SEQPATTERN_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__SEQPATTERN A B = Empty.
Admitted.

// real_mod : real->real->real->bool (not in compat.mg)
Theorem hl_real_mod_compat : forall l1 l2 l3 :e R, hl_real_mod l1 l2 l3 = 1 <-> real_mod l1 l2 l3.
Admitted.

// HAS_SIZE : (A->bool)->num->bool at A := A -> bool (not in compat.mg)
Theorem hl_HAS_SIZE_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e omega, hl_HAS_SIZE (2 :^: A) l1 l2 = 1 <-> equip (hl_rep2 A l1) l2.
Admitted.

// vector : A list->(A,N)cart (not in compat.mg)
Theorem hl_vector_compat : forall A N:set, A <> Empty -> N <> Empty -> forall l1 :e finseq A, hl_vector A N l1 = vector A N l1.
Admitted.

// GEQ : A->A->bool (not in compat.mg)
Theorem hl_GEQ_compat : forall A:set, A <> Empty -> hl_GEQ A = Empty.
Admitted.

