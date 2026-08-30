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

// inverse_mod : num->num->num (not in compat.mg)
Theorem hl_inverse_mod_compat : forall l1 l2 :e omega, hl_inverse_mod l1 l2 = inverse_mod l1 l2.
Admitted.

// int_prime : int->bool (not in compat.mg)
Theorem hl_int_prime_compat : forall l1 :e int, hl_int_prime l1 = 1 <-> 1 < abs_SNo l1 /\ forall x :e int, divides_int x l1 -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo l1.
Admitted.

// frac : real->real (not in compat.mg)
Theorem hl_frac_compat : forall l1 :e R, hl_frac l1 = l1 + - floor_R l1.
Admitted.

// wqoset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_wqoset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_wqoset A l1 = 1 <-> wqoset_on A P1).
Admitted.

// order : num->num->num (not in compat.mg)
Theorem hl_order_compat : forall l1 l2 :e omega, hl_order l1 l2 = mult_order l1 l2.
Admitted.

// chain : (A->A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_chain_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A, hl_chain A l1 l2 = 1 <-> chain_on A P1 (hl_rep A l2).
Admitted.

// antichain : (A->A->bool)->(A->bool)->bool (not in compat.mg)
Theorem hl_antichain_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A, hl_antichain A l1 l2 = 1 <-> antichain_on A P1 (hl_rep A l2).
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

// hashek : bool (not in compat.mg)
Theorem hl_hashek_compat : hl_hashek = Empty.
Admitted.

// FINREC : (A->B->B)->B->(A->bool)->B->num->bool (not in compat.mg)
Theorem hl_FINREC_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_FINREC A B = Empty.
Admitted.

// iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A (not in compat.mg)
Theorem hl_iterato_compat : forall A K:set, A <> Empty -> K <> Empty -> hl_iterato A K = Empty.
Admitted.

// toset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_toset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_toset A l1 = 1 <-> toset_on A P1).
Admitted.

// FCONS : A->(num->A)->num->A (not in compat.mg)
Theorem hl_FCONS_compat : forall A:set, A <> Empty -> hl_FCONS A = Empty.
Admitted.

// INJF : (num->num->A->bool)->num->A->bool (not in compat.mg)
Theorem hl_INJF_compat : forall A:set, A <> Empty -> hl_INJF A = Empty.
Admitted.

// phi : num->num (not in compat.mg)
Theorem hl_phi_compat : forall l1 :e omega, hl_phi l1 = totient l1.
Admitted.

// fld : (A->A->bool)->A->bool (not in compat.mg)
Theorem hl_fld_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> hl_rep A (hl_fld A l1) = fld_on A P1.
Admitted.

// SING : (A->bool)->bool at A := A -> bool (not in compat.mg)
Theorem hl_SING_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_SING (2 :^: A) l1 = 1 <-> exists x :e Power A, hl_rep2 A l1 = {x}.
Admitted.

// ITER : num->(A->A)->A->A (not in compat.mg)
Theorem hl_ITER_compat : forall A:set, A <> Empty -> forall l1 :e omega, forall l2 :e A :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall l3 :e A, hl_ITER A l1 l2 l3 = iter_fun l1 f2 l3.
Admitted.

// _UNGUARDED_PATTERN : bool->bool->bool (not in compat.mg)
Theorem hl__UNGUARDED_PATTERN_compat : hl__UNGUARDED_PATTERN = Empty.
Admitted.

// inseg : (A->A->bool)->(A->A->bool)->bool (not in compat.mg)
Theorem hl_inseg_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A :^: A, forall P2:set -> set -> prop, (forall x y :e A, l2 x y = 1 <-> P2 x y) -> (hl_inseg A l1 l2 = 1 <-> inseg_on A P1 P2).
Admitted.

// +_c : (A->bool)->(B->bool)->(A,B)sum->bool (not in compat.mg)
Theorem hl_sym_2b5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_rep (A :+: B) (hl_sym_2b5f63 A B l1 l2) = hl_rep A l1 :+: hl_rep B l2.
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

// index : num->num->num (not in compat.mg)
Theorem hl_index_compat : forall l1 l2 :e omega, hl_index l1 l2 = prime_index l1 l2.
Admitted.

// _FUNCTION : (A->B->bool)->A->B (not in compat.mg)
Theorem hl__FUNCTION_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__FUNCTION A B = Empty.
Admitted.

// *_c : (A->bool)->(B->bool)->A#B->bool (not in compat.mg)
Theorem hl_sym_2a5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_rep (A :*: B) (hl_sym_2a5f63 A B l1 l2) = hl_rep A l1 :*: hl_rep B l2.
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

// MAP2 : (A->B->C)->A list->B list->C list (not in compat.mg)
Theorem hl_MAP2_compat : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l1 :e C :^: B :^: A, forall f1:set -> set -> set, (forall x :e A, forall y :e B, l1 x y = f1 x y) -> forall l2 :e finseq A, forall l3 :e finseq B, hl_MAP2 A B C l1 l2 l3 = seq_map2 f1 l2 l3.
Admitted.

// SETSPEC : A->bool->A->bool (not in compat.mg)
Theorem hl_SETSPEC_compat : forall A:set, A <> Empty -> hl_SETSPEC A = Empty.
Admitted.

// qoset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_qoset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_qoset A l1 = 1 <-> qoset_on A P1).
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

// NUMFST : num->num (not in compat.mg)
Theorem hl_NUMFST_compat : hl_NUMFST = Empty.
Admitted.

// OUTL : (A,B)sum->A (not in compat.mg)
Theorem hl_OUTL_compat : forall A B:set, A <> Empty -> B <> Empty -> hl_OUTL A B = OUTL A B.
Admitted.

// _GUARDED_PATTERN : bool->bool->bool->bool (not in compat.mg)
Theorem hl__GUARDED_PATTERN_compat : hl__GUARDED_PATTERN = Empty.
Admitted.

// INJN : num->num->A->bool (not in compat.mg)
Theorem hl_INJN_compat : forall A:set, A <> Empty -> hl_INJN A = Empty.
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

// woset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_woset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_woset A l1 = 1 <-> woset_on A P1).
Admitted.

// poset : (A->A->bool)->bool (not in compat.mg)
Theorem hl_poset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_poset A l1 = 1 <-> poset_on A P1).
Admitted.

// _FALSITY_ : bool (not in compat.mg)
Theorem hl__FALSITY__compat : hl__FALSITY_ = Empty.
Admitted.

// binom : num#num->num (not in compat.mg)
Theorem hl_binom_compat : forall l1 :e omega :*: omega, hl_binom l1 = binomial_coefficient (l1 0) (l1 1).
Admitted.

// _SEQPATTERN : (A->B->bool)->(A->B->bool)->A->B->bool (not in compat.mg)
Theorem hl__SEQPATTERN_compat : forall A B:set, A <> Empty -> B <> Empty -> hl__SEQPATTERN A B = Empty.
Admitted.

// ordinal : (A->A->bool)->bool (not in compat.mg)
Theorem hl_ordinal_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_ordinal A l1 = 1 <-> ordinal_on A P1).
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

