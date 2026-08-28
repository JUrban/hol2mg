# hol2mg statement translation report: profile `core`

- HOL Light commit: `433477862bb90b328a593e012e09390e99b2439b`
- theorems: 2984 discovered, 1797 public
- mapping files: mappings/core.json

## Status counts

| status | count |
|---|---|
| transport_required | 1396 |
| pending_mapping | 1187 |
| exact_native | 401 |

## Public statements per shard

| shard | public | pending | error |
|---|---|---|---|
| arith | 253 | 12 | 0 |
| bool | 10 | 0 | 0 |
| calc_int | 19 | 0 | 0 |
| calc_num | 1 | 17 | 0 |
| calc_rat | 16 | 1 | 0 |
| cart | 2 | 101 | 0 |
| class | 41 | 2 | 0 |
| define | 0 | 37 | 0 |
| ind_types | 3 | 46 | 0 |
| int | 359 | 155 | 0 |
| iterate | 30 | 300 | 0 |
| lists | 0 | 133 | 0 |
| misc | 20 | 25 | 0 |
| nums | 8 | 13 | 0 |
| pair | 24 | 26 | 0 |
| real | 331 | 0 | 0 |
| realarith | 29 | 0 | 0 |
| realax | 36 | 158 | 0 |
| sets | 531 | 132 | 0 |
| tactics | 0 | 1 | 0 |
| theorems | 66 | 0 | 0 |
| trivia | 16 | 1 | 0 |
| wf | 2 | 27 | 0 |

## Top blockers (pending_mapping reasons)

| count | reason |
|---|---|
| 152 | type mapping for list is pending |
| 82 | no carrier mapping for type constructor hreal (in hreal) |
| 73 | no carrier mapping for type constructor nadd (in nadd) |
| 65 | unmapped constant sum : (A->bool)->(A->real)->real |
| 55 | unmapped constant nsum : (A->bool)->(A->num)->num |
| 40 | unmapped constant rem : int->int->int |
| 39 | unmapped constant sum : (num->bool)->(num->real)->real |
| 30 | unmapped constant div : int->int->int |
| 26 | no carrier mapping for type constructor cart (in (A,M)cart) |
| 23 | unmapped constant iterate : (B->B->B)->(A->bool)->(A->B)->B |
| 22 | unmapped constant WF : (A->A->bool)->bool |
| 22 | unmapped constant real_zpow : real->int->real |
| 20 | unmapped constant nsum : (num->bool)->(num->num)->num |
| 18 | unmapped constant ARBITRARY : ((A->bool)->bool)->bool |
| 14 | unmapped constant cartesian_product : (K->bool)->(K->A->bool)->(K->A)->bool |
| 14 | unmapped constant polynomial_function : (real->real)->bool |
| 13 | unmapped constant int_of_real : real->int |
| 11 | unmapped constant == : int->int->(int->int->bool)->bool |
| 11 | unmapped constant BIT1 : num->num |
| 11 | unmapped constant RESTRICTION : (A->bool)->(A->B)->A->B |
| 10 | unmapped constant num_of_int : int->num |
| 9 | no carrier mapping for type constructor cart (in (A,(M,N)finite_sum)cart) |
| 9 | unmapped constant BIT0 : num->num |
| 9 | unmapped constant EXTENSIONAL : (A->bool)->(A->B)->bool |
| 9 | unmapped constant dimindex : (A->bool)->num |
| 9 | unmapped constant iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A |
| 8 | no carrier mapping for type constructor ind (in ind) |
| 8 | unmapped constant disjoint_union : (K->bool)->(K->A->bool)->K#A->bool |
| 8 | unmapped constant minimal : (num->bool)->num |
| 8 | unmapped constant sum : (B->bool)->(B->real)->real |
| 8 | unmapped constant support : (B->B->B)->(A->B)->(A->bool)->A->bool |
| 7 | no carrier mapping for type constructor cart (in (A,N)cart) |
| 7 | no carrier mapping for type constructor recspace (in A recspace) |
| 7 | unmapped constant has_inf : (real->bool)->real->bool |
| 7 | unmapped constant has_sup : (real->bool)->real->bool |
| 7 | unmapped constant nsum : (B->bool)->(B->num)->num |
| 6 | no carrier mapping for type constructor finite_image (in A finite_image) |
| 6 | type mapping for option is pending |
| 6 | unmapped constant mk_real : (hreal#hreal->bool)->real |
| 5 | unmapped constant == : num->num->(num->num->bool)->bool |
| 5 | unmapped constant FINREC : (A->B->B)->B->(A->bool)->B->num->bool |
| 5 | unmapped constant int_lcm : int#int->int |
| 5 | unmapped constant iterate : (A->A->A)->(num->bool)->(num->A)->A |
| 5 | unmapped constant iterate : (C->C->C)->(B->bool)->(B->C)->C |
| 5 | unmapped constant nadd_eq : nadd->nadd->bool |
| 5 | unmapped constant num_coprime : num#num->bool |
| 5 | unmapped constant superadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool |
| 5 | unmapped constant treal_eq : hreal#hreal->hreal#hreal->bool |
| 4 | no carrier mapping for type constructor cart (in (A,B)cart) |
| 4 | no carrier mapping for type constructor tybit1 (in A tybit1) |
| 4 | unmapped constant GABS : ((A#B->C)->bool)->A#B->C |
| 4 | unmapped constant GABS : ((A#B->bool)->bool)->A#B->bool |
| 4 | unmapped constant LENGTH : A list->num |
| 4 | unmapped constant ZRECSPACE : (num->A->bool)->bool |
| 4 | unmapped constant dimindex : (N->bool)->num |
| 4 | unmapped constant hashek : bool |
| 4 | unmapped constant int_gcd : int#int->int |
| 4 | unmapped constant neutral : (B->B->B)->B |
| 4 | unmapped constant prime : num->bool |
| 3 | GSPEC with 3 bound variables |

## Bridges referenced

- hol_num_omega (893)
- hol_real_R (502)
- hol_int_int (338)
- omega_Subq_R (243)
- hol_finite_finite (174)
- omega_Subq_int (165)
- nat_le_SNoLe (140)
- add_nat_add_SNo (117)
- nat_lt_SNoLt (117)
- mul_nat_mul_SNo (110)
- hol_prod_setprod (78)
- hol_card (68)
- exp_nat_exp_SNo_nat (39)
- hol_has_size_equip (34)
- int_Subq_R (21)
- choose_in_spec (16)
- hol_one_1 (12)
- hol_fact_factorial (5)
- hol_sum_setsum (2)
