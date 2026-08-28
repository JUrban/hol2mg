# hol2mg statement translation report: profile `core`

- HOL Light commit: `433477862bb90b328a593e012e09390e99b2439b`
- theorems: 2984 discovered, 2378 public
- mapping files: mappings/core.json, mappings/lists.json

## Status counts

| status | count |
|---|---|
| transport_required | 1597 |
| pending_mapping | 606 |
| generalization_required | 560 |
| exact_native | 152 |
| native_reuse | 69 |

## Public statements per shard

| shard | public | pending | error |
|---|---|---|---|
| arith | 258 | 4 | 0 |
| bool | 9 | 0 | 0 |
| calc_int | 11 | 0 | 0 |
| calc_num | 1 | 17 | 0 |
| calc_rat | 16 | 1 | 0 |
| cart | 2 | 101 | 0 |
| class | 40 | 2 | 0 |
| define | 1 | 36 | 0 |
| ind_types | 5 | 44 | 0 |
| int | 459 | 43 | 0 |
| iterate | 247 | 79 | 0 |
| lists | 124 | 7 | 0 |
| misc | 11 | 25 | 0 |
| nums | 8 | 13 | 0 |
| pair | 23 | 26 | 0 |
| real | 316 | 0 | 0 |
| realarith | 27 | 0 | 0 |
| realax | 36 | 158 | 0 |
| sets | 615 | 42 | 0 |
| tactics | 0 | 1 | 0 |
| theorems | 64 | 0 | 0 |
| trivia | 13 | 1 | 0 |
| wf | 23 | 6 | 0 |

## Top blockers (pending_mapping reasons)

| count | reason |
|---|---|
| 82 | internal construction type hreal |
| 73 | internal construction type nadd |
| 26 | no carrier mapping for type constructor cart (in (A,M)cart) |
| 24 | unmapped constant monoidal : (B->B->B)->bool |
| 15 | unmapped constant polynomial_function : (real->real)->bool |
| 13 | unmapped constant int_mod : int->int->int->bool |
| 11 | unmapped constant BIT1 : num->num |
| 10 | unmapped constant iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A |
| 9 | no carrier mapping for type constructor cart (in (A,(M,N)finite_sum)cart) |
| 9 | unmapped constant BIT0 : num->num |
| 9 | unmapped constant dimindex : (A->bool)->num |
| 8 | internal construction type ind |
| 8 | no carrier mapping for type constructor cart (in (A,N)cart) |
| 8 | unmapped constant disjoint_union : (K->bool)->(K->A->bool)->K#A->bool |
| 7 | internal construction type recspace |
| 7 | unmapped constant monoidal : (A->A->A)->bool |
| 7 | unmapped constant monoidal : (C->C->C)->bool |
| 6 | no carrier mapping for type constructor finite_image (in A finite_image) |
| 6 | type mapping for option is pending |
| 6 | unmapped constant int_gcd : int#int->int |
| 6 | unmapped constant int_lcm : int#int->int |
| 6 | unmapped constant mk_real : (hreal#hreal->bool)->real |
| 5 | unmapped constant == : num->num->(num->num->bool)->bool |
| 5 | unmapped constant FINREC : (A->B->B)->B->(A->bool)->B->num->bool |
| 5 | unmapped constant GABS : ((A#B->C)->bool)->A#B->C |
| 5 | unmapped constant nadd_eq : nadd->nadd->bool |
| 5 | unmapped constant num_coprime : num#num->bool |
| 5 | unmapped constant superadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool |
| 5 | unmapped constant treal_eq : hreal#hreal->hreal#hreal->bool |
| 4 | no carrier mapping for type constructor cart (in (A,B)cart) |
| 4 | no carrier mapping for type constructor tybit1 (in A tybit1) |
| 4 | unmapped constant GABS : ((A#B->bool)->bool)->A#B->bool |
| 4 | unmapped constant ITSET : (A->B->B)->(A->bool)->B->B |
| 4 | unmapped constant ZRECSPACE : (num->A->bool)->bool |
| 4 | unmapped constant dimindex : (N->bool)->num |
| 4 | unmapped constant hashek : bool |
| 4 | unmapped constant prime : num->bool |
| 3 | GSPEC with 3 bound variables |
| 3 | GSPEC with 4 bound variables |
| 3 | no carrier mapping for type constructor cart (in (real,M)cart) |
| 3 | no carrier mapping for type constructor char (in char) |
| 3 | no carrier mapping for type constructor tybit0 (in A tybit0) |
| 3 | non-literal NUMERAL |
| 3 | unmapped constant <=_c : (B->bool)->(A->bool)->bool |
| 3 | unmapped constant ALLPAIRS : (A->B->bool)->A list->B list->bool |
| 3 | unmapped constant GABS : ((A#B->A#B->bool)->bool)->A#B->A#B->bool |
| 3 | unmapped constant GSPEC : (A->bool)->A->bool |
| 3 | unmapped constant INJP : (num->A->bool)->(num->A->bool)->num->A->bool |
| 3 | unmapped constant MEASURE : (A->num)->A->A->bool |
| 3 | unmapped constant NUMPAIR : num->num->num |
| 3 | unmapped constant mk_pair : A->B->A->B->bool |
| 3 | unmapped constant product_map : (K->bool)->(K->A->B)->(K->A)->K->B |
| 2 | unmapped constant COND : bool->(A->B)->(A->B)->A->B |
| 2 | unmapped constant FCONS : A->(num->A)->num->A |
| 2 | unmapped constant GABS : (((?142053->?142033)#((?142033->?142049)->?142053->?142049)->bool)->bool)->(?142053->?142033)#((?142033->?142049)->?142053->?142049)->bool |
| 2 | unmapped constant GABS : ((A#B#C->D)->bool)->A#B#C->D |
| 2 | unmapped constant GABS : ((A#B#C->bool)->bool)->A#B#C->bool |
| 2 | unmapped constant INJA : A->num->A->bool |
| 2 | unmapped constant INJN : num->num->A->bool |
| 2 | unmapped constant ISO : (A->B)->(B->A)->bool |

## Bridges referenced

- hol_num_omega (1194)
- hol_real_R (669)
- empty_case:A (511)
- hol_int_int (452)
- omega_Subq_R (314)
- hol_finite_finite (293)
- omega_Subq_int (235)
- nat_le_SNoLe (190)
- add_nat_add_SNo (162)
- nat_lt_SNoLt (148)
- hol_list_finseq (143)
- mul_nat_mul_SNo (126)
- hol_sum_finsum (113)
- hol_card_finite_cardinality (94)
- hol_nsum_finsum (89)
- hol_prod_setprod (85)
- empty_case:B (70)
- choose_in_spec (64)
- exp_nat_exp_SNo_nat (40)
- hol_has_size_equip (35)
- int_Subq_R (33)
- hol_fun_setexp (19)
- hol_one_1 (12)
- empty_case:K (8)
- empty_case:C (6)
- hol_iterate (6)
- hol_fact_factorial (5)
- hol_nproduct_finprod (2)
- hol_product_finprod (2)
- hol_sum_setsum (2)
- empty_case:D (1)
- empty_case:T141447 (1)
- empty_case:T98960 (1)
- empty_case:T98973 (1)
- empty_case:Z (1)
