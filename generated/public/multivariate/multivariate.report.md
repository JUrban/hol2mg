# hol2mg statement translation report: profile `multivariate`

- HOL Light commit: `433477862bb90b328a593e012e09390e99b2439b`
- theorems: 17526 discovered, 15007 public
- automatic definitions: 429 constants and 7 types generated, 57 not generated (NUM_REP: internal construction type ind; _22943: no carrier mapping for type constructor char (in char); ASCII: no carrier mapping for type constructor char (in char); _100512: unmapped constant _mk_tybit0 : (A,A)finite_sum recspace->A tybit0; _100531: unmapped constant _mk_tybit1 : ((A,A)finite_sum,1)finite_sum recspace->A tybit1; group_product: internal constant iterato (HOL Light internal definition/datatype machinery); group_sum: unmapped constant group_product : A group->(K->K->bool)->(K->bool)->(K->A)->A; reallim: unmapped constant ---> : (A->real)->real->A net->bool; real_sums: unmapped constant ---> : (num->real)->real->num net->bool; real_infsum: unmapped constant real_sums : (num->real)->real->(num->bool)->bool; real_summable: unmapped constant real_sums : (num->real)->real->(num->bool)->bool; cantor_map: unmapped constant real_infsum : (num->bool)->(num->real)->real)
- theorems using automatic definitions: 11181
- mapping files: mappings/core.json, mappings/lists.json, mappings/library.json, mappings/multivariate.json

## Status counts

| status | count |
|---|---|
| transport_required | 12723 |
| pending_mapping | 2506 |
| generalization_required | 1965 |
| exact_native | 319 |
| error | 13 |

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
| clifford | 34 | 78 | 0 |
| convex | 885 | 39 | 0 |
| define | 1 | 36 | 0 |
| degree | 325 | 63 | 0 |
| derivatives | 1 | 208 | 0 |
| determinants | 317 | 0 | 0 |
| floor | 100 | 0 | 0 |
| frag | 47 | 0 | 0 |
| grouptheory | 1148 | 87 | 3 |
| homology | 137 | 212 | 0 |
| ind_types | 17 | 32 | 0 |
| int | 513 | 1 | 0 |
| integration | 809 | 96 | 0 |
| iter | 13 | 0 | 0 |
| iterate | 319 | 11 | 0 |
| lists | 131 | 2 | 0 |
| matroids | 159 | 0 | 0 |
| measure | 348 | 383 | 0 |
| metric | 2522 | 39 | 6 |
| misc | 349 | 84 | 0 |
| nums | 11 | 10 | 0 |
| pair | 37 | 13 | 0 |
| paths | 909 | 144 | 2 |
| permutations | 148 | 0 | 0 |
| polytope | 342 | 20 | 0 |
| prime | 279 | 0 | 0 |
| products | 147 | 0 | 0 |
| real | 330 | 0 | 0 |
| realarith | 29 | 0 | 0 |
| realax | 30 | 158 | 0 |
| sets | 653 | 10 | 0 |
| tactics | 0 | 1 | 0 |
| theorems | 66 | 0 | 0 |
| topology | 1677 | 777 | 2 |
| trivia | 16 | 1 | 0 |
| vectors | 1197 | 1 | 0 |
| wf | 29 | 0 | 0 |
| wo | 148 | 0 | 0 |

## Top blockers (pending_mapping reasons)

| count | reason |
|---|---|
| 311 | unmapped constant compact : ((real,N)cart->bool)->bool |
| 90 | unmapped constant lebesgue_measurable : ((real,N)cart->bool)->bool |
| 83 | internal construction type hreal |
| 73 | internal construction type nadd |
| 69 | unmapped constant compact : ((real,M)cart->bool)->bool |
| 64 | unmapped constant lebesgue_measurable : ((real,M)cart->bool)->bool |
| 64 | unmapped constant measurable_on : ((real,M)cart->(real,N)cart)->((real,M)cart->bool)->bool |
| 55 | unmapped constant --> : (num->(real,N)cart)->(real,N)cart->num net->bool |
| 49 | unmapped constant group_sum : A group->(K->bool)->(K->A)->A |
| 46 | unmapped constant baire : num->((real,N)cart->bool)->((real,N)cart->(real,1)cart)->bool |
| 44 | unmapped constant relative_homology_group : int#A topology#(A->bool)->(((num->real)->A) frag->bool) group |
| 42 | unmapped constant --> : (num->(real,1)cart)->(real,1)cart->num net->bool |
| 42 | unmapped constant homology_group : int#A topology->(((num->real)->A) frag->bool) group |
| 39 | unmapped constant ++ : ((real,1)cart->(real,N)cart)->((real,1)cart->(real,N)cart)->(real,1)cart->(real,N)cart |
| 39 | unmapped constant --> : (A->(real,N)cart)->(real,N)cart->A net->bool |
| 36 | unmapped constant has_vector_derivative : ((real,1)cart->(real,N)cart)->(real,N)cart->(real,1)cart net->bool |
| 34 | unmapped constant has_derivative : ((real,M)cart->(real,N)cart)->((real,M)cart->(real,N)cart)->(real,M)cart net->bool |
| 31 | unmapped constant continuous : ((real,M)cart->(real,N)cart)->(real,M)cart net->bool |
| 29 | unmapped constant --> : ((real,M)cart->(real,N)cart)->(real,N)cart->(real,M)cart net->bool |
| 28 | unmapped constant has_derivative : ((real,N)cart->(real,N)cart)->((real,N)cart->(real,N)cart)->(real,N)cart net->bool |
| 25 | unmapped constant baire : num->((real,M)cart->bool)->((real,M)cart->(real,N)cart)->bool |
| 25 | unmapped constant has_vector_derivative : ((real,1)cart->(real,1)cart)->(real,1)cart->(real,1)cart net->bool |
| 21 | unmapped constant analytic : ((real,N)cart->bool)->bool |
| 21 | unmapped constant group_product : A group->(K->K->bool)->(K->bool)->(K->A)->A |
| 20 | unmapped constant baire : num->((real,M)cart->bool)->((real,M)cart->(real,1)cart)->bool |
| 20 | unmapped constant borel_measurable_on : ((real,M)cart->(real,N)cart)->((real,M)cart->bool)->bool |
| 20 | unmapped constant sums : (num->(real,N)cart)->(real,N)cart->(num->bool)->bool |
| 19 | unmapped constant singular_relboundary : num#A topology#(A->bool)->((num->real)->A) frag->bool |
| 18 | unmapped constant brouwer_degree2 : num->((num->real)->num->real)->int |
| 17 | unmapped constant --> : (A->(real,1)cart)->(real,1)cart->A net->bool |
| 17 | unmapped constant reduced_homology_group : int#A topology->(((num->real)->A) frag->bool) group |
| 16 | internal constant admissible (HOL Light internal definition/datatype machinery) |
| 16 | unmapped constant singular_relcycle : num#A topology#(A->bool)->((num->real)->A) frag->bool |
| 15 | unmapped constant $$ : (real,N multivector)cart->(num->bool)->real |
| 14 | unmapped constant --> : ((real,1)cart->(real,1)cart)->(real,1)cart->(real,1)cart net->bool |
| 14 | unmapped constant continuous : (A->(real,1)cart)->A net->bool |
| 14 | unmapped constant homologous_rel : num#A topology#(A->bool)->((num->real)->A) frag->((num->real)->A) frag->bool |
| 14 | unmapped constant measurable_on : ((real,M)cart->(real,P)cart)->((real,M)cart->bool)->bool |
| 13 | unmapped constant --> : ((real,1)cart->(real,N)cart)->(real,N)cart->(real,1)cart net->bool |
| 13 | unmapped constant cantor_map : (num->bool)->real |
| 13 | unmapped constant has_derivative : ((real,N)cart->(real,1)cart)->((real,N)cart->(real,1)cart)->(real,N)cart net->bool |
| 13 | unmapped constant measurable_on : ((real,N)cart->(real,1)cart)->((real,N)cart->bool)->bool |
| 13 | unmapped constant summable : (num->bool)->(num->(real,N)cart)->bool |
| 12 | internal constant iterato (HOL Light internal definition/datatype machinery) |
| 12 | unmapped constant differentiable : ((real,M)cart->(real,N)cart)->(real,M)cart net->bool |
| 10 | unmapped constant /\ : bool->bool->bool |
| 10 | unmapped constant continuous : ((real,1)cart->(real,N)cart)->(real,1)cart net->bool |
| 10 | unmapped constant lebesgue_measurable : ((real,(M,N)finite_sum)cart->bool)->bool |
| 9 | unmapped constant Product : ((num->bool)->(num->bool)->real)->((num->bool)->(num->bool)->num->bool)->(real,?1338358 multivector)cart->(real,?1338358 multivector)cart->(real,?1338358 multivector)cart |
| 9 | unmapped constant complete : ((real,N)cart->bool)->bool |
| 9 | unmapped constant continuous : ((real,N)cart->(real,1)cart)->(real,N)cart net->bool |
| 9 | unmapped constant geom_mul : (real,?1338672 multivector)cart->(real,?1338672 multivector)cart->(real,?1338672 multivector)cart |
| 9 | unmapped constant inner : (real,?1339209 multivector)cart->(real,?1339209 multivector)cart->(real,?1339209 multivector)cart |
| 9 | unmapped constant outer : (real,?1338979 multivector)cart->(real,?1338979 multivector)cart->(real,?1338979 multivector)cart |
| 9 | unmapped constant vector_derivative : ((real,1)cart->(real,N)cart)->(real,1)cart net->(real,N)cart |
| 8 | internal constant superadmissible (HOL Light internal definition/datatype machinery) |
| 8 | internal construction type ind |
| 8 | unmapped constant ---> : (A->real)->real->A net->bool |
| 8 | unmapped constant brouwer_degree : ((real,N)cart->(real,N)cart)->int |
| 8 | unmapped constant brouwer_degree1 : num->((real,N)cart->(real,N)cart)->int |

## Internal errors

- `CONNECTED_COMPONENT_FINITE`: elab: coerce: cannot convert prop to subset(R :^: idx N)
- `CONNECTED_COMPONENT_INSIDE`: elab: coerce: cannot convert prop to subset(R :^: idx N)
- `CONNECTED_COMPONENT_OF_DISCRETE_TOPOLOGY`: elab: coerce: cannot convert prop to subset(A)
- `CONNECTED_COMPONENT_OF_PRODUCT_TOPOLOGY`: elab: coerce: cannot convert prop to subset(A :^: K)
- `CONNECTED_COMPONENT_OUTSIDE`: elab: coerce: cannot convert prop to subset(R :^: idx N)
- `CONNECTED_COMPONENT_SEPARATED_UNION`: elab: coerce: cannot convert prop to subset(R :^: idx N)
- `GROUP_ORBIT`: elab: coerce: cannot convert prop to subset(X)
- `GROUP_ORBIT_CONJUGATION`: elab: coerce: cannot convert prop to subset(A)
- `GROUP_ORBIT_CONJUGATION_GEN`: elab: coerce: cannot convert prop to subset(A)
- `PATH_COMPONENT_OF_DISCRETE_TOPOLOGY`: elab: coerce: cannot convert prop to subset(A)
- `PATH_COMPONENT_OF_PRODUCT_TOPOLOGY`: elab: coerce: cannot convert prop to subset(A :^: K)
- `QUASI_COMPONENT_OF_DISCRETE_TOPOLOGY`: elab: coerce: cannot convert prop to subset(A)
- `QUASI_COMPONENT_OF_SET`: elab: coerce: cannot convert prop to subset(A)

## Bridges referenced

- hol_real_R (8459)
- hol_cart_setexp (6895)
- hol_num_omega (5161)
- hol_prod_setprod (3404)
- hol_typedef_topology (2818)
- empty_case:A (1670)
- omega_Subq_R (1657)
- hol_finite_finite (1277)
- hol_typedef_group (1173)
- hol_one_1 (1019)
- hol_int_int (949)
- hol_list_finseq (883)
- nat_le_SNoLe (879)
- hol_dimindex (675)
- hol_typedef_metric (519)
- omega_Subq_int (511)
- add_nat_add_SNo (346)
- hol_card_finite_cardinality (335)
- hol_sum_finsum (307)
- nat_lt_SNoLt (299)
- mul_nat_mul_SNo (292)
- hol_countable (264)
- hol_finite_sum_idx (261)
- hol_typedef_net (229)
- hol_eq_c_equip (214)
- empty_case:B (190)
- exp_nat_exp_SNo_nat (180)
- hol_typedef_matroid (178)
- choose_in_spec (163)
- hol_typedef_frag (148)
- hol_product_finprod (130)
- hol_has_size_equip (127)
- hol_le_c_atleastp (126)
- hol_nsum_finsum (108)
- int_Subq_R (105)
- hol_fun_setexp (89)
- hol_tybit_idx (89)
- hol_iterate (86)
- hol_sum_setsum (65)
- empty_case:X (56)
- empty_case:K (54)
- hol_nproduct_finprod (53)
- hol_finite_prod_idx (44)
- hol_fact_factorial (21)
- empty_case:C (19)
- hol_typedef_multivector (16)
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
