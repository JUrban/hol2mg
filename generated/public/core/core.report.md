# hol2mg statement translation report: profile `core`

- HOL Light commit: `433477862bb90b328a593e012e09390e99b2439b`
- theorems: 2984 discovered, 2613 public
- mapping files: mappings/core.json, mappings/lists.json

## Status counts

| status | count |
|---|---|
| transport_required | 1761 |
| generalization_required | 626 |
| pending_mapping | 371 |
| exact_native | 152 |
| native_reuse | 74 |

## Public statements per shard

| shard | public | pending | error |
|---|---|---|---|
| arith | 259 | 0 | 0 |
| bool | 9 | 0 | 0 |
| calc_int | 11 | 0 | 0 |
| calc_num | 18 | 0 | 0 |
| calc_rat | 16 | 1 | 0 |
| cart | 67 | 36 | 0 |
| class | 40 | 2 | 0 |
| define | 1 | 36 | 0 |
| ind_types | 11 | 38 | 0 |
| int | 500 | 2 | 0 |
| iterate | 309 | 15 | 0 |
| lists | 124 | 7 | 0 |
| misc | 11 | 25 | 0 |
| nums | 11 | 10 | 0 |
| pair | 36 | 13 | 0 |
| real | 316 | 0 | 0 |
| realarith | 27 | 0 | 0 |
| realax | 36 | 158 | 0 |
| sets | 634 | 23 | 0 |
| tactics | 0 | 1 | 0 |
| theorems | 64 | 0 | 0 |
| trivia | 13 | 1 | 0 |
| wf | 26 | 3 | 0 |

## Top blockers (pending_mapping reasons)

| count | reason |
|---|---|
| 82 | internal construction type hreal |
| 73 | internal construction type nadd |
| 22 | unmapped constant PCROSS : ((A,M)cart->bool)->((A,N)cart->bool)->(A,(M,N)finite_sum)cart->bool |
| 11 | internal constant iterato (HOL Light internal definition/datatype machinery) |
| 8 | internal constant superadmissible (HOL Light internal definition/datatype machinery) |
| 8 | internal construction type ind |
| 7 | internal construction type recspace |
| 6 | internal constant CASEWISE (HOL Light internal definition/datatype machinery) |
| 6 | internal constant mk_real (HOL Light internal definition/datatype machinery) |
| 5 | internal constant FINREC (HOL Light internal definition/datatype machinery) |
| 5 | internal constant admissible (HOL Light internal definition/datatype machinery) |
| 5 | internal constant tailadmissible (HOL Light internal definition/datatype machinery) |
| 5 | unmapped constant nadd_eq : nadd->nadd->bool |
| 5 | unmapped constant treal_eq : hreal#hreal->hreal#hreal->bool |
| 4 | internal constant ZRECSPACE (HOL Light internal definition/datatype machinery) |
| 4 | internal constant hashek (HOL Light internal definition/datatype machinery) |
| 3 | internal constant INJP (HOL Light internal definition/datatype machinery) |
| 3 | internal constant NUMPAIR (HOL Light internal definition/datatype machinery) |
| 3 | no carrier mapping for type constructor char (in char) |
| 3 | unmapped constant <=_c : (B->bool)->(A->bool)->bool |
| 3 | unmapped constant ALLPAIRS : (A->B->bool)->A list->B list->bool |
| 3 | unmapped constant GSPEC : (A->bool)->A->bool |
| 3 | unmapped constant MEASURE : (A->num)->A->A->bool |
| 3 | unmapped constant PCROSS : ((real,M)cart->bool)->((real,N)cart->bool)->(real,(M,N)finite_sum)cart->bool |
| 3 | unmapped constant mk_pair : A->B->A->B->bool |
| 3 | unmapped constant product_map : (K->bool)->(K->A->B)->(K->A)->K->B |
| 2 | internal constant FCONS (HOL Light internal definition/datatype machinery) |
| 2 | internal constant INJA (HOL Light internal definition/datatype machinery) |
| 2 | internal constant INJN (HOL Light internal definition/datatype machinery) |
| 2 | internal constant NUMSUM (HOL Light internal definition/datatype machinery) |
| 2 | internal constant _MATCH (HOL Light internal definition/datatype machinery) |
| 2 | internal constant mk_num (HOL Light internal definition/datatype machinery) |
| 2 | unmapped constant COND : bool->(A->B)->(A->B)->A->B |
| 2 | unmapped constant ISO : (A->B)->(B->A)->bool |
| 2 | unmapped constant dest_nadd : nadd->num->num |
| 2 | unmapped constant is_nadd : (num->num)->bool |
| 2 | unmapped constant mktybit0 : (A,A)finite_sum->A tybit0 |
| 2 | unmapped constant mktybit1 : ((A,A)finite_sum,1)finite_sum->A tybit1 |
| 1 | choice over a function/predicate type (bool) |
| 1 | internal constant FNIL (HOL Light internal definition/datatype machinery) |
| 1 | internal constant GEQ (HOL Light internal definition/datatype machinery) |
| 1 | internal constant INJF (HOL Light internal definition/datatype machinery) |
| 1 | internal constant NUMFST (HOL Light internal definition/datatype machinery) |
| 1 | internal constant NUMLEFT (HOL Light internal definition/datatype machinery) |
| 1 | internal constant NUMSND (HOL Light internal definition/datatype machinery) |
| 1 | internal constant ZBOT (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _FALSITY_ (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _FUNCTION (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _GUARDED_PATTERN (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _SEQPATTERN (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _UNGUARDED_PATTERN (HOL Light internal definition/datatype machinery) |
| 1 | unmapped constant <=_c : (A->bool)->(B->bool)->bool |
| 1 | unmapped constant <_c : (B->bool)->(A->bool)->bool |
| 1 | unmapped constant == : A->A->(A->A->bool)->bool |
| 1 | unmapped constant =_c : (A->bool)->(B->bool)->bool |
| 1 | unmapped constant >=_c : (A->bool)->(B->bool)->bool |
| 1 | unmapped constant >=_c : (num->bool)->(A->bool)->bool |
| 1 | unmapped constant @ : (((A->bool)->B)->bool)->(A->bool)->B |
| 1 | unmapped constant ABS_prod : (A->B->bool)->A#B |
| 1 | unmapped constant ALLPAIRS : (A->C->bool)->A list->C list->bool |

## Bridges referenced

- hol_num_omega (1309)
- hol_real_R (687)
- empty_case:A (548)
- hol_int_int (481)
- hol_finite_finite (331)
- omega_Subq_R (314)
- omega_Subq_int (249)
- nat_le_SNoLe (213)
- add_nat_add_SNo (179)
- nat_lt_SNoLt (158)
- hol_list_finseq (143)
- mul_nat_mul_SNo (141)
- hol_prod_setprod (135)
- hol_sum_finsum (116)
- hol_card_finite_cardinality (98)
- hol_nsum_finsum (91)
- empty_case:B (86)
- choose_in_spec (67)
- hol_has_size_equip (47)
- exp_nat_exp_SNo_nat (44)
- hol_dimindex (44)
- hol_iterate (44)
- int_Subq_R (33)
- hol_cart_setexp (28)
- hol_one_1 (21)
- hol_fun_setexp (19)
- empty_case:K (16)
- hol_finite_sum_idx (16)
- empty_case:C (15)
- hol_tybit_idx (14)
- hol_finite_image_idx (11)
- empty_case:N (6)
- hol_option_setsum (6)
- empty_case:M (5)
- hol_fact_factorial (5)
- hol_itset (5)
- empty_case:D (3)
- empty_case:Z (2)
- hol_finite_diff_idx (2)
- hol_finite_prod_idx (2)
- hol_nproduct_finprod (2)
- hol_product_finprod (2)
- hol_sum_setsum (2)
- empty_case:T141447 (1)
- empty_case:T98960 (1)
- empty_case:T98973 (1)
