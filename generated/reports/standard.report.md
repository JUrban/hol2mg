# hol2mg statement translation report: profile `standard`

- HOL Light commit: `433477862bb90b328a593e012e09390e99b2439b`
- theorems: 4590 discovered, 4283 public
- mapping files: mappings/core.json, mappings/lists.json, mappings/library.json

## Status counts

| status | count |
|---|---|
| transport_required | 3014 |
| generalization_required | 947 |
| pending_mapping | 307 |
| exact_native | 235 |
| native_reuse | 87 |

## Public statements per shard

| shard | public | pending | error |
|---|---|---|---|
| agm | 7 | 0 | 0 |
| arith | 259 | 0 | 0 |
| binomial | 26 | 0 | 0 |
| bool | 9 | 0 | 0 |
| calc_int | 11 | 0 | 0 |
| calc_num | 18 | 0 | 0 |
| calc_rat | 17 | 0 | 0 |
| card | 229 | 0 | 0 |
| cart | 102 | 1 | 0 |
| class | 42 | 0 | 0 |
| define | 1 | 36 | 0 |
| floor | 100 | 0 | 0 |
| ind_types | 15 | 34 | 0 |
| int | 497 | 2 | 0 |
| integer | 214 | 0 | 0 |
| isum | 92 | 1 | 0 |
| iter | 12 | 0 | 0 |
| iterate | 313 | 11 | 0 |
| lists | 130 | 2 | 0 |
| misc | 24 | 25 | 0 |
| nums | 11 | 10 | 0 |
| pair | 36 | 13 | 0 |
| pocklington | 199 | 0 | 0 |
| prime | 277 | 0 | 0 |
| products | 144 | 0 | 0 |
| real | 316 | 0 | 0 |
| realarith | 27 | 0 | 0 |
| realax | 36 | 158 | 0 |
| rstc | 133 | 0 | 0 |
| sets | 645 | 12 | 0 |
| tactics | 0 | 1 | 0 |
| theorems | 64 | 0 | 0 |
| trivia | 13 | 1 | 0 |
| wf | 29 | 0 | 0 |
| wo | 148 | 0 | 0 |

## Top blockers (pending_mapping reasons)

| count | reason |
|---|---|
| 83 | internal construction type hreal |
| 73 | internal construction type nadd |
| 17 | internal constant admissible (HOL Light internal definition/datatype machinery) |
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
| 3 | unmapped constant GSPEC : (A->bool)->A->bool |
| 2 | internal constant FCONS (HOL Light internal definition/datatype machinery) |
| 2 | internal constant INJA (HOL Light internal definition/datatype machinery) |
| 2 | internal constant INJN (HOL Light internal definition/datatype machinery) |
| 2 | internal constant NUMSUM (HOL Light internal definition/datatype machinery) |
| 2 | internal constant _MATCH (HOL Light internal definition/datatype machinery) |
| 2 | internal constant dest_nadd (HOL Light internal construction) |
| 2 | internal constant is_nadd (HOL Light internal construction) |
| 2 | internal constant mk_num (HOL Light internal definition/datatype machinery) |
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
| 1 | unmapped constant GSPEC : ((A->B)->bool)->(A->B)->bool |
| 1 | unmapped constant OUTL : (A,B)sum->A |
| 1 | unmapped constant OUTR : (A,B)sum->B |
| 1 | unmapped constant PASSOC : ((A#B)#C->D)->A#B#C->D |
| 1 | unmapped constant one_REP : 1->bool |
| 1 | unmapped constant real_mod : real->real->real->bool |
| 1 | unmapped constant vector : A list->(A,N)cart |

## Bridges referenced

- hol_num_omega (2227)
- hol_real_R (857)
- empty_case:A (853)
- hol_int_int (850)
- hol_finite_finite (554)
- hol_prod_setprod (543)
- omega_Subq_R (412)
- omega_Subq_int (385)
- nat_le_SNoLe (356)
- mul_nat_mul_SNo (332)
- add_nat_add_SNo (268)
- nat_lt_SNoLt (236)
- hol_sum_finsum (216)
- exp_nat_exp_SNo_nat (176)
- hol_list_finseq (156)
- hol_card_finite_cardinality (129)
- hol_product_finprod (108)
- empty_case:B (107)
- hol_nsum_finsum (103)
- int_Subq_R (96)
- hol_eq_c_equip (95)
- choose_in_spec (87)
- hol_le_c_atleastp (80)
- hol_countable (77)
- hol_iterate (66)
- hol_has_size_equip (61)
- hol_cart_setexp (60)
- hol_nproduct_finprod (58)
- hol_dimindex (53)
- hol_finite_sum_idx (50)
- hol_sum_setsum (41)
- hol_binom_binomial_coefficient (28)
- hol_one_1 (23)
- empty_case:K (22)
- hol_fact_factorial (20)
- hol_fun_setexp (20)
- hol_tybit_idx (18)
- empty_case:C (17)
- hol_finite_image_idx (11)
- hol_option_setsum (6)
- hol_itset (5)
- empty_case:D (4)
- hol_finite_diff_idx (4)
- hol_finite_prod_idx (4)
- empty_case:N (3)
- empty_case:M (2)
- empty_case:Z (2)
