# hol2mg statement translation report: profile `multivariate`

- HOL Light commit: `433477862bb90b328a593e012e09390e99b2439b`
- theorems: 17526 discovered, 17128 public
- automatic definitions: 480 constants and 7 types generated, 7 not generated (NUM_REP: internal construction type ind; _22943: no carrier mapping for type constructor char (in char); ASCII: no carrier mapping for type constructor char (in char); _100512: unmapped constant _mk_tybit0 : (A,A)finite_sum recspace->A tybit0; _100531: unmapped constant _mk_tybit1 : ((A,A)finite_sum,1)finite_sum recspace->A tybit1; group_product: internal constant iterato (HOL Light internal definition/datatype machinery); group_sum: unmapped constant group_product : A group->(K->K->bool)->(K->bool)->(K->A)->A)
- theorems using automatic definitions: 13272
- mapping files: mappings/core.json, mappings/lists.json, mappings/library.json, mappings/multivariate.json

## Status counts

| status | count |
|---|---|
| transport_required | 14796 |
| generalization_required | 2013 |
| pending_mapping | 398 |
| exact_native | 319 |

## Public statements per shard

| shard | public | pending | error |
|---|---|---|---|
| arith | 265 | 0 | 0 |
| binary | 20 | 0 | 0 |
| bool | 10 | 0 | 0 |
| calc_int | 19 | 0 | 0 |
| calc_num | 18 | 0 | 0 |
| calc_rat | 17 | 0 | 0 |
| card | 289 | 0 | 0 |
| cart | 103 | 0 | 0 |
| class | 43 | 0 | 0 |
| clifford | 112 | 0 | 0 |
| convex | 924 | 0 | 0 |
| define | 1 | 36 | 0 |
| degree | 388 | 0 | 0 |
| derivatives | 208 | 1 | 0 |
| determinants | 317 | 0 | 0 |
| floor | 100 | 0 | 0 |
| frag | 47 | 0 | 0 |
| grouptheory | 1151 | 87 | 0 |
| homology | 349 | 0 | 0 |
| ind_types | 17 | 32 | 0 |
| int | 514 | 0 | 0 |
| integration | 895 | 10 | 0 |
| iter | 13 | 0 | 0 |
| iterate | 319 | 11 | 0 |
| lists | 131 | 2 | 0 |
| matroids | 159 | 0 | 0 |
| measure | 731 | 0 | 0 |
| metric | 2567 | 0 | 0 |
| misc | 408 | 25 | 0 |
| nums | 11 | 10 | 0 |
| pair | 37 | 13 | 0 |
| paths | 1055 | 0 | 0 |
| permutations | 148 | 0 | 0 |
| polytope | 362 | 0 | 0 |
| prime | 279 | 0 | 0 |
| products | 147 | 0 | 0 |
| real | 330 | 0 | 0 |
| realarith | 29 | 0 | 0 |
| realax | 30 | 158 | 0 |
| sets | 653 | 10 | 0 |
| tactics | 0 | 1 | 0 |
| theorems | 66 | 0 | 0 |
| topology | 2456 | 0 | 0 |
| trivia | 16 | 1 | 0 |
| vectors | 1197 | 1 | 0 |
| wf | 29 | 0 | 0 |
| wo | 148 | 0 | 0 |

## Top blockers (pending_mapping reasons)

| count | reason |
|---|---|
| 83 | internal construction type hreal |
| 73 | internal construction type nadd |
| 49 | unmapped constant group_sum : A group->(K->bool)->(K->A)->A |
| 21 | unmapped constant group_product : A group->(K->K->bool)->(K->bool)->(K->A)->A |
| 16 | internal constant admissible (HOL Light internal definition/datatype machinery) |
| 12 | internal constant iterato (HOL Light internal definition/datatype machinery) |
| 10 | unmapped constant /\ : bool->bool->bool |
| 8 | internal constant superadmissible (HOL Light internal definition/datatype machinery) |
| 8 | internal construction type ind |
| 7 | internal construction type recspace |
| 6 | internal constant CASEWISE (HOL Light internal definition/datatype machinery) |
| 6 | internal constant mk_real (HOL Light internal definition/datatype machinery) |
| 5 | internal constant FINREC (HOL Light internal definition/datatype machinery) |
| 5 | internal constant nadd_eq (HOL Light internal construction) |
| 5 | internal constant tailadmissible (HOL Light internal definition/datatype machinery) |
| 5 | internal constant treal_eq (HOL Light internal construction) |
| 5 | unmapped constant group_sum : A group->(A->bool)->(A->A)->A |
| 4 | internal constant ZRECSPACE (HOL Light internal definition/datatype machinery) |
| 4 | internal constant hashek (HOL Light internal definition/datatype machinery) |
| 4 | unmapped constant group_sum : A group->((A->bool)->bool)->((A->bool)->A)->A |
| 3 | internal constant INJP (HOL Light internal definition/datatype machinery) |
| 3 | internal constant NUMPAIR (HOL Light internal definition/datatype machinery) |
| 3 | internal constant mk_pair (HOL Light internal construction) |
| 3 | no carrier mapping for type constructor char (in char) |
| 3 | unmapped constant group_product : A group->(num->num->bool)->(num->bool)->(num->A)->A |
| 2 | internal constant FCONS (HOL Light internal definition/datatype machinery) |
| 2 | internal constant INJA (HOL Light internal definition/datatype machinery) |
| 2 | internal constant INJN (HOL Light internal definition/datatype machinery) |
| 2 | internal constant NUMSUM (HOL Light internal definition/datatype machinery) |
| 2 | internal constant _MATCH (HOL Light internal definition/datatype machinery) |
| 2 | internal constant dest_nadd (HOL Light internal construction) |
| 2 | internal constant is_nadd (HOL Light internal construction) |
| 2 | internal constant mk_num (HOL Light internal definition/datatype machinery) |
| 2 | unmapped constant group_sum : A group->(num->bool)->(num->A)->A |
| 2 | unmapped constant group_sum : B group->(K->bool)->(K->B)->B |
| 1 | GSPEC not in set-comprehension form |
| 1 | internal constant ABS_prod (HOL Light internal construction) |
| 1 | internal constant FNIL (HOL Light internal definition/datatype machinery) |
| 1 | internal constant GEQ (HOL Light internal definition/datatype machinery) |
| 1 | internal constant INJF (HOL Light internal definition/datatype machinery) |
| 1 | internal constant NUMFST (HOL Light internal definition/datatype machinery) |
| 1 | internal constant NUMLEFT (HOL Light internal definition/datatype machinery) |
| 1 | internal constant NUMRIGHT (HOL Light internal definition/datatype machinery) |
| 1 | internal constant NUMSND (HOL Light internal definition/datatype machinery) |
| 1 | internal constant REP_prod (HOL Light internal construction) |
| 1 | internal constant SETSPEC (HOL Light internal construction) |
| 1 | internal constant ZBOT (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _FALSITY_ (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _FUNCTION (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _GUARDED_PATTERN (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _SEQPATTERN (HOL Light internal definition/datatype machinery) |
| 1 | internal constant _UNGUARDED_PATTERN (HOL Light internal definition/datatype machinery) |
| 1 | internal constant hreal_le (HOL Light internal construction) |
| 1 | internal constant nadd_le (HOL Light internal construction) |
| 1 | internal constant treal_le (HOL Light internal construction) |
| 1 | unmapped constant @ : (((A->bool)->B)->bool)->(A->bool)->B |
| 1 | unmapped constant @ : (((real,?1302266)cart->(real,?1302265)cart)->bool)->(real,?1302266)cart->(real,?1302265)cart |
| 1 | unmapped constant @ : (((real,N)cart->(real,M)cart)->bool)->(real,N)cart->(real,M)cart |
| 1 | unmapped constant GABS : (A->bool)->A |
| 1 | unmapped constant GSPEC : (A->bool)->A->bool |

## Bridges referenced

- hol_real_R (10570)
- hol_cart_setexp (8743)
- hol_num_omega (6212)
- hol_prod_setprod (3922)
- hol_typedef_topology (3156)
- omega_Subq_R (1907)
- empty_case:A (1716)
- hol_one_1 (1567)
- hol_finite_finite (1376)
- hol_typedef_group (1318)
- hol_int_int (1137)
- nat_le_SNoLe (1039)
- hol_list_finseq (998)
- hol_typedef_net (958)
- hol_dimindex (797)
- omega_Subq_int (593)
- hol_typedef_metric (522)
- add_nat_add_SNo (395)
- hol_typedef_frag (358)
- hol_countable (356)
- hol_card_finite_cardinality (348)
- nat_lt_SNoLt (345)
- hol_sum_finsum (317)
- hol_finite_sum_idx (313)
- mul_nat_mul_SNo (299)
- hol_eq_c_equip (220)
- empty_case:B (190)
- exp_nat_exp_SNo_nat (180)
- hol_typedef_matroid (178)
- choose_in_spec (175)
- hol_product_finprod (135)
- hol_has_size_equip (132)
- hol_le_c_atleastp (128)
- hol_nsum_finsum (108)
- int_Subq_R (106)
- hol_typedef_multivector (94)
- hol_fun_setexp (91)
- hol_iterate (91)
- hol_tybit_idx (89)
- hol_sum_setsum (65)
- empty_case:X (57)
- empty_case:K (54)
- hol_nproduct_finprod (53)
- hol_finite_prod_idx (51)
- hol_fact_factorial (21)
- empty_case:C (19)
- hol_option_setsum (15)
- hol_finite_image_idx (11)
- hol_itset (5)
- empty_case:D (4)
- empty_case:N (4)
- hol_finite_diff_idx (4)
- empty_case:M (2)
- empty_case:Z (2)
- empty_case:a (2)
- empty_case:W (1)
