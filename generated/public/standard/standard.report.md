# hol2mg statement translation report: profile `standard`

- HOL Light commit: `433477862bb90b328a593e012e09390e99b2439b`
- theorems: 4590 discovered, 3588 public
- mapping files: mappings/core.json, mappings/lists.json

## Status counts

| status | count |
|---|---|
| transport_required | 2620 |
| pending_mapping | 1002 |
| generalization_required | 726 |
| exact_native | 159 |
| native_reuse | 83 |

## Public statements per shard

| shard | public | pending | error |
|---|---|---|---|
| agm | 7 | 0 | 0 |
| arith | 259 | 0 | 0 |
| binomial | 0 | 28 | 0 |
| bool | 9 | 0 | 0 |
| calc_int | 11 | 0 | 0 |
| calc_num | 18 | 0 | 0 |
| calc_rat | 17 | 0 | 0 |
| card | 95 | 135 | 0 |
| cart | 102 | 1 | 0 |
| class | 42 | 0 | 0 |
| define | 1 | 36 | 0 |
| floor | 44 | 56 | 0 |
| ind_types | 15 | 34 | 0 |
| int | 497 | 2 | 0 |
| integer | 181 | 33 | 0 |
| isum | 92 | 1 | 0 |
| iter | 1 | 12 | 0 |
| iterate | 313 | 11 | 0 |
| lists | 130 | 2 | 0 |
| misc | 13 | 36 | 0 |
| nums | 11 | 10 | 0 |
| pair | 36 | 13 | 0 |
| pocklington | 91 | 108 | 0 |
| prime | 237 | 40 | 0 |
| products | 144 | 0 | 0 |
| real | 316 | 0 | 0 |
| realarith | 27 | 0 | 0 |
| realax | 36 | 158 | 0 |
| rstc | 2 | 131 | 0 |
| sets | 644 | 13 | 0 |
| tactics | 0 | 1 | 0 |
| theorems | 64 | 0 | 0 |
| trivia | 13 | 1 | 0 |
| wf | 29 | 0 | 0 |
| wo | 8 | 140 | 0 |

## Top blockers (pending_mapping reasons)

| count | reason |
|---|---|
| 82 | internal construction type hreal |
| 73 | internal construction type nadd |
| 59 | unmapped constant fld : (A->A->bool)->A->bool |
| 42 | unmapped constant index : num->num->num |
| 33 | unmapped constant int_prime : int->bool |
| 30 | unmapped constant phi : num->num |
| 29 | unmapped constant order : num->num->num |
| 28 | unmapped constant binom : num#num->num |
| 25 | unmapped constant rational : real->bool |
| 25 | unmapped constant squarefree : num->bool |
| 23 | unmapped constant COUNTABLE : ((A->bool)->bool)->bool |
| 21 | unmapped constant floor : real->real |
| 20 | unmapped constant RSTC : (A->A->bool)->A->A->bool |
| 20 | unmapped constant TC : (A->A->bool)->A->A->bool |
| 18 | unmapped constant COUNTABLE : (A->bool)->bool |
| 18 | unmapped constant RTC : (A->A->bool)->A->A->bool |
| 17 | internal constant admissible (HOL Light internal definition/datatype machinery) |
| 17 | unmapped constant inverse_mod : num->num->num |
| 16 | unmapped constant RC : (A->A->bool)->A->A->bool |
| 15 | unmapped constant STC : (A->A->bool)->A->A->bool |
| 15 | unmapped constant properly : (A->A->bool)->A->A->bool |
| 14 | unmapped constant +_c : (A->bool)->(B->bool)->(A,B)sum->bool |
| 13 | unmapped constant inseg : (A->A->bool)->(A->A->bool)->bool |
| 11 | internal constant iterato (HOL Light internal definition/datatype machinery) |
| 11 | unmapped constant SC : (A->A->bool)->A->A->bool |
| 10 | unmapped constant *_c : (A->bool)->(B->bool)->A#B->bool |
| 10 | unmapped constant RSC : (A->A->bool)->A->A->bool |
| 10 | unmapped constant frac : real->real |
| 10 | unmapped constant strictly : (A->A->bool)->A->A->bool |
| 9 | unmapped constant qoset : (A->A->bool)->bool |
| 8 | internal constant superadmissible (HOL Light internal definition/datatype machinery) |
| 8 | internal construction type ind |
| 8 | unmapped constant +_c : (A->bool)->(C->bool)->(A,C)sum->bool |
| 8 | unmapped constant woset : (A->A->bool)->bool |
| 7 | internal construction type recspace |
| 6 | internal constant CASEWISE (HOL Light internal definition/datatype machinery) |
| 6 | internal constant mk_real (HOL Light internal definition/datatype machinery) |
| 6 | unmapped constant RELPOW : num->(A->A->bool)->A->A->bool |
| 6 | unmapped constant poset : (A->A->bool)->bool |
| 5 | internal constant FINREC (HOL Light internal definition/datatype machinery) |
| 5 | internal constant nadd_eq (HOL Light internal construction) |
| 5 | internal constant tailadmissible (HOL Light internal definition/datatype machinery) |
| 5 | internal constant treal_eq (HOL Light internal construction) |
| 5 | unmapped constant wqoset : (A->A->bool)->bool |
| 4 | internal constant ZRECSPACE (HOL Light internal definition/datatype machinery) |
| 4 | internal constant hashek (HOL Light internal definition/datatype machinery) |
| 4 | unmapped constant COUNTABLE : (B->bool)->bool |
| 4 | unmapped constant chain : (A->A->bool)->(A->bool)->bool |
| 4 | unmapped constant primefact : num list->num->bool |
| 3 | internal constant INJP (HOL Light internal definition/datatype machinery) |
| 3 | internal constant NUMPAIR (HOL Light internal definition/datatype machinery) |
| 3 | internal constant mk_pair (HOL Light internal construction) |
| 3 | no carrier mapping for type constructor char (in char) |
| 3 | unmapped constant +_c : (A->bool)->(A->bool)->(A,A)sum->bool |
| 3 | unmapped constant GSPEC : (A->bool)->A->bool |
| 3 | unmapped constant ITER : num->(A->A)->A->A |
| 3 | unmapped constant ordinal : (A->A->bool)->bool |
| 3 | unmapped constant toset : (A->A->bool)->bool |
| 2 | internal constant FCONS (HOL Light internal definition/datatype machinery) |
| 2 | internal constant INJA (HOL Light internal definition/datatype machinery) |

## Bridges referenced

- hol_num_omega (1952)
- hol_int_int (816)
- hol_real_R (795)
- empty_case:A (615)
- hol_finite_finite (496)
- hol_prod_setprod (427)
- omega_Subq_R (374)
- omega_Subq_int (371)
- nat_le_SNoLe (311)
- mul_nat_mul_SNo (291)
- add_nat_add_SNo (245)
- hol_sum_finsum (213)
- nat_lt_SNoLt (209)
- hol_list_finseq (152)
- exp_nat_exp_SNo_nat (122)
- hol_card_finite_cardinality (121)
- hol_product_finprod (108)
- empty_case:B (98)
- hol_nsum_finsum (98)
- int_Subq_R (77)
- choose_in_spec (70)
- hol_iterate (66)
- hol_eq_c_equip (61)
- hol_has_size_equip (59)
- hol_cart_setexp (56)
- hol_nproduct_finprod (53)
- hol_dimindex (52)
- hol_le_c_atleastp (48)
- hol_finite_sum_idx (47)
- hol_one_1 (23)
- empty_case:K (22)
- hol_fun_setexp (20)
- hol_tybit_idx (18)
- empty_case:C (15)
- hol_fact_factorial (11)
- hol_finite_image_idx (11)
- hol_sum_setsum (7)
- hol_option_setsum (6)
- hol_itset (5)
- hol_finite_diff_idx (4)
- hol_finite_prod_idx (4)
- empty_case:D (3)
- empty_case:N (3)
- empty_case:M (2)
- empty_case:Z (2)
- empty_case:T141447 (1)
- empty_case:T163130 (1)
- empty_case:T163510 (1)
- empty_case:T164891 (1)
- empty_case:T164951 (1)
- empty_case:T165821 (1)
- empty_case:T166292 (1)
- empty_case:T167893 (1)
- empty_case:T167934 (1)
- empty_case:T168154 (1)
- empty_case:T168625 (1)
- empty_case:T170333 (1)
- empty_case:T170374 (1)
- empty_case:T176019 (1)
- empty_case:T176055 (1)
- empty_case:T176257 (1)
- empty_case:T179388 (1)
- empty_case:T179404 (1)
- empty_case:T188037 (1)
- empty_case:T188205 (1)
- empty_case:T188312 (1)
- empty_case:T189593 (1)
- empty_case:T189594 (1)
- empty_case:T209303 (1)
- empty_case:T98960 (1)
- empty_case:T98973 (1)
