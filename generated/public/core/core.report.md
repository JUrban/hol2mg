# hol2mg statement translation report: profile `core`

- HOL Light commit: `433477862bb90b328a593e012e09390e99b2439b`
- theorems: 2984 discovered, 2682 public
- automatic definitions: 2 generated, 7 not generated (NUM_REP: internal construction type ind; OUTL: specification-style definition (choice); OUTR: specification-style definition (choice); _22943: no carrier mapping for type constructor char (in char); ASCII: no carrier mapping for type constructor char (in char); _100512: unmapped constant _mk_tybit0 : (A,A)finite_sum recspace->A tybit0; _100531: unmapped constant _mk_tybit1 : ((A,A)finite_sum,1)finite_sum recspace->A tybit1)
- theorems using automatic definitions: 2
- mapping files: mappings/core.json, mappings/lists.json

## Status counts

| status | count |
|---|---|
| transport_required | 1793 |
| generalization_required | 659 |
| pending_mapping | 302 |
| exact_native | 156 |
| native_reuse | 74 |

## Public statements per shard

| shard | public | pending | error |
|---|---|---|---|
| arith | 259 | 0 | 0 |
| bool | 9 | 0 | 0 |
| calc_int | 11 | 0 | 0 |
| calc_num | 18 | 0 | 0 |
| calc_rat | 17 | 0 | 0 |
| cart | 103 | 0 | 0 |
| class | 42 | 0 | 0 |
| define | 1 | 36 | 0 |
| ind_types | 15 | 34 | 0 |
| int | 501 | 1 | 0 |
| iterate | 313 | 11 | 0 |
| lists | 129 | 2 | 0 |
| misc | 11 | 25 | 0 |
| nums | 11 | 10 | 0 |
| pair | 36 | 13 | 0 |
| real | 316 | 0 | 0 |
| realarith | 27 | 0 | 0 |
| realax | 36 | 158 | 0 |
| sets | 647 | 10 | 0 |
| tactics | 0 | 1 | 0 |
| theorems | 64 | 0 | 0 |
| trivia | 13 | 1 | 0 |
| wf | 29 | 0 | 0 |

## Top blockers (pending_mapping reasons)

| count | reason |
|---|---|
| 83 | internal construction type hreal |
| 73 | internal construction type nadd |
| 16 | internal constant admissible (HOL Light internal definition/datatype machinery) |
| 11 | internal constant iterato (HOL Light internal definition/datatype machinery) |
| 8 | internal constant superadmissible (HOL Light internal definition/datatype machinery) |
| 8 | internal construction type ind |
| 7 | internal construction type recspace |
| 6 | internal constant CASEWISE (HOL Light internal definition/datatype machinery) |
| 6 | internal constant mk_real (HOL Light internal definition/datatype machinery) |
| 5 | internal constant FINREC (HOL Light internal definition/datatype machinery) |
| 5 | internal constant nadd_eq (HOL Light internal construction) |
| 5 | internal constant tailadmissible (HOL Light internal definition/datatype machinery) |
| 5 | internal constant treal_eq (HOL Light internal construction) |
| 4 | internal constant ZRECSPACE (HOL Light internal definition/datatype machinery) |
| 4 | internal constant hashek (HOL Light internal definition/datatype machinery) |
| 3 | internal constant INJP (HOL Light internal definition/datatype machinery) |
| 3 | internal constant NUMPAIR (HOL Light internal definition/datatype machinery) |
| 3 | internal constant mk_pair (HOL Light internal construction) |
| 3 | no carrier mapping for type constructor char (in char) |
| 2 | internal constant FCONS (HOL Light internal definition/datatype machinery) |
| 2 | internal constant INJA (HOL Light internal definition/datatype machinery) |
| 2 | internal constant INJN (HOL Light internal definition/datatype machinery) |
| 2 | internal constant NUMSUM (HOL Light internal definition/datatype machinery) |
| 2 | internal constant _MATCH (HOL Light internal definition/datatype machinery) |
| 2 | internal constant dest_nadd (HOL Light internal construction) |
| 2 | internal constant is_nadd (HOL Light internal construction) |
| 2 | internal constant mk_num (HOL Light internal definition/datatype machinery) |
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
| 1 | unmapped constant == : A->A->(A->A->bool)->bool |
| 1 | unmapped constant @ : (((A->bool)->B)->bool)->(A->bool)->B |
| 1 | unmapped constant GABS : (A->bool)->A |
| 1 | unmapped constant GSPEC : (A->bool)->A->bool |
| 1 | unmapped constant OUTL : (A,B)sum->A |
| 1 | unmapped constant OUTR : (A,B)sum->B |
| 1 | unmapped constant PASSOC : ((A#B)#C->D)->A#B#C->D |
| 1 | unmapped constant one_REP : 1->bool |

## Bridges referenced

- hol_num_omega (1324)
- hol_real_R (692)
- empty_case:A (576)
- hol_int_int (485)
- hol_finite_finite (335)
- omega_Subq_R (315)
- omega_Subq_int (251)
- nat_le_SNoLe (214)
- add_nat_add_SNo (181)
- nat_lt_SNoLt (161)
- hol_list_finseq (149)
- mul_nat_mul_SNo (144)
- hol_prod_setprod (135)
- hol_sum_finsum (118)
- hol_card_finite_cardinality (98)
- empty_case:B (96)
- hol_nsum_finsum (91)
- choose_in_spec (71)
- hol_cart_setexp (54)
- hol_dimindex (50)
- hol_has_size_equip (48)
- hol_finite_sum_idx (47)
- hol_iterate (46)
- exp_nat_exp_SNo_nat (44)
- int_Subq_R (34)
- hol_one_1 (23)
- hol_fun_setexp (20)
- empty_case:K (18)
- hol_tybit_idx (18)
- empty_case:C (16)
- hol_finite_image_idx (11)
- hol_le_c_atleastp (6)
- hol_option_setsum (6)
- hol_fact_factorial (5)
- hol_itset (5)
- empty_case:D (4)
- hol_finite_diff_idx (4)
- hol_finite_prod_idx (4)
- hol_product_finprod (4)
- empty_case:N (3)
- hol_eq_c_equip (3)
- empty_case:M (2)
- empty_case:Z (2)
- hol_nproduct_finprod (2)
- hol_sum_setsum (2)
- hol_countable (1)
