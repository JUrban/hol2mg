// hol2mg literal statements (private): shard vectors of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/vectors.ml:16 / FORALL_1   (hash md5:793137e9b60afb6f0e4e2d757cbc4d55)
Theorem hlt_FORALL_1 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:20 / FORALL_2   (hash md5:e5da14454c335a8fb57a62c90d3c7d19)
Theorem hlt_FORALL_2 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:24 / FORALL_3   (hash md5:91d009fa5e70a2637db647aede2169c7)
Theorem hlt_FORALL_3 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:28 / FORALL_4   (hash md5:3bd403e27b7a67ac3f9f664061f631ee)
Theorem hlt_FORALL_4 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ (P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 /\ P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:33 / SUM_1   (hash md5:c561d0e95cc675b58c437827a4afa06b)
Theorem hlt_SUM_1 : forall f :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) f = f (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:37 / SUM_2   (hash md5:a5be32c108a2f8710fe4ea7441243ec0)
Theorem hlt_SUM_2 : forall t :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:42 / SUM_3   (hash md5:25f0a754b3c8e96a1ca906ec50c73709)
Theorem hlt_SUM_3 : forall t :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:47 / SUM_4   (hash md5:f8d253458c648e505c0422da1e5821fb)
Theorem hlt_SUM_4 : forall t :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:56 / vector_add   (hash md5:1427eb9edfcababec34fffc2fe0271c5)
Theorem hlt_vector_add_thm : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_add N x y = hl_lambda R N (fun i :e omega => hl_real_add (hl_vindex R N x i) (hl_vindex R N y i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:59 / vector_sub   (hash md5:58f50b99c645012123a478bdad799f1b)
Theorem hlt_vector_sub_thm : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_sub N x y = hl_lambda R N (fun i :e omega => hl_real_sub (hl_vindex R N x i) (hl_vindex R N y i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:62 / vector_neg   (hash md5:a93a3f398de9d1f5fd5cfb4e862164b6)
Theorem hlt_vector_neg_thm : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_vector_neg N x = hl_lambda R N (fun i :e omega => hl_real_neg (hl_vindex R N x i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:80 / vector_mul   (hash md5:1545ed4da663ad72832d5688d915a24e)
Theorem hlt_vector_mul_thm : forall N:set, N <> Empty -> forall c :e R, forall x :e hl_ty_cart R N, hl_vmul N c x = hl_lambda R N (fun i :e omega => hl_real_mul c (hl_vindex R N x i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:87 / vec   (hash md5:30096d8f13cf1131dafdc22864d253b6)
Theorem hlt_vec_thm : forall N:set, N <> Empty -> forall n :e omega, hl_vec N n = hl_lambda R N (fun i :e omega => hl_real_of_num n).
Admitted.

// HOL Light: Multivariate/vectors.ml:96 / dot   (hash md5:f77bdce32f07ee2346fb807f2448c783)
Theorem hlt_dot_thm : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_dot N x y = hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_real_mul (hl_vindex R N x i) (hl_vindex R N y i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:99 / DOT_1   (hash md5:caa61fb1c150773f7616c9f33bc0ed5c)
Theorem hlt_DOT_1 : forall x y :e hl_ty_cart R 1, hl_dot 1 x y = hl_real_mul (hl_vindex R 1 x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R 1 y (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:103 / DOT_2   (hash md5:ab6403e64afff6ff563de0637222c45e)
Theorem hlt_DOT_2 : forall x y :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_dot (idx_n (2 * dimindex 1)) x y = hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) y (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:107 / DOT_3   (hash md5:33eea789d726f74e2c86ed25397da39b)
Theorem hlt_DOT_3 : forall x y :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_dot (idx_n (2 * dimindex 1 + 1)) x y = hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) y (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) x (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) y (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:111 / DOT_4   (hash md5:bb86530031c76a9d5bbc69bb8f52dded)
Theorem hlt_DOT_4 : forall x y :e hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), hl_dot (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) x y = hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) y (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) x (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) y (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) x (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) y (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:145 / VEC_COMPONENT   (hash md5:9cab83285093ceaafc86bda37811bcce)
Theorem hlt_VEC_COMPONENT : forall N:set, N <> Empty -> forall k i :e omega, hl_vindex R N (hl_vec N k) i = hl_real_of_num k.
Admitted.

// HOL Light: Multivariate/vectors.ml:153 / VECTOR_ADD_COMPONENT   (hash md5:8148fbb45297dd3ffceac8d2c671b6bd)
Theorem hlt_VECTOR_ADD_COMPONENT : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, forall i :e omega, hl_vindex R N (hl_vector_add N x y) i = hl_real_add (hl_vindex R N x i) (hl_vindex R N y i).
Admitted.

// HOL Light: Multivariate/vectors.ml:161 / VECTOR_SUB_COMPONENT   (hash md5:92fbb841ab8f2e3a6dd26e90c83713be)
Theorem hlt_VECTOR_SUB_COMPONENT : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, forall i :e omega, hl_vindex R N (hl_vector_sub N x y) i = hl_real_sub (hl_vindex R N x i) (hl_vindex R N y i).
Admitted.

// HOL Light: Multivariate/vectors.ml:169 / VECTOR_NEG_COMPONENT   (hash md5:9db15251cd9e36440f29de3d24ace049)
Theorem hlt_VECTOR_NEG_COMPONENT : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall i :e omega, hl_vindex R N (hl_vector_neg N x) i = hl_real_neg (hl_vindex R N x i).
Admitted.

// HOL Light: Multivariate/vectors.ml:177 / VECTOR_MUL_COMPONENT   (hash md5:2acc76a3f490451716675a700a38f786)
Theorem hlt_VECTOR_MUL_COMPONENT : forall N:set, N <> Empty -> forall c :e R, forall x :e hl_ty_cart R N, forall i :e omega, hl_vindex R N (hl_vmul N c x) i = hl_real_mul c (hl_vindex R N x i).
Admitted.

// HOL Light: Multivariate/vectors.ml:185 / COND_COMPONENT   (hash md5:fe8deb5afa569c3d017b30fc27deeb8a)
Theorem hlt_COND_COMPONENT : forall A B:set, A <> Empty -> B <> Empty -> forall b :e 2, forall x y :e hl_ty_cart A B, forall i :e omega, hl_vindex A B (hl_COND (hl_ty_cart A B) b x y) i = hl_COND A b (hl_vindex A B x i) (hl_vindex A B y i).
Admitted.

// HOL Light: Multivariate/vectors.ml:193 / VECTOR_ADD_SYM   (hash md5:c46c544694035afa1b3adf36e9200ac4)
Theorem hlt_VECTOR_ADD_SYM : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_add N x y = hl_vector_add N y x.
Admitted.

// HOL Light: Multivariate/vectors.ml:195 / VECTOR_ADD_LID   (hash md5:de39fe96ba91d73ff9802334df751fa4)
Theorem hlt_VECTOR_ADD_LID : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_add A (hl_vec A (hl_NUMERAL hl_zero)) x = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:197 / VECTOR_ADD_RID   (hash md5:01080a748c3dc79d38d6387aa50f5e58)
Theorem hlt_VECTOR_ADD_RID : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_add A x (hl_vec A (hl_NUMERAL hl_zero)) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:199 / VECTOR_SUB_REFL   (hash md5:95204390b47cc4608105dbf91ed2982d)
Theorem hlt_VECTOR_SUB_REFL : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_sub A x x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:201 / VECTOR_ADD_LINV   (hash md5:db4ed02ad3617b12910838b3e25e6d70)
Theorem hlt_VECTOR_ADD_LINV : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_add A (hl_vector_neg A x) x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:203 / VECTOR_ADD_RINV   (hash md5:511b05a24ebd316a92ccfc826e48d0b7)
Theorem hlt_VECTOR_ADD_RINV : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_add A x (hl_vector_neg A x) = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:205 / VECTOR_SUB_RADD   (hash md5:94c8162c02a4ed74a8a14955169355da)
Theorem hlt_VECTOR_SUB_RADD : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_sub N x (hl_vector_add N x y) = hl_vector_neg N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:207 / VECTOR_NEG_SUB   (hash md5:70b6d3d5f205e42d4f1136d933310e3e)
Theorem hlt_VECTOR_NEG_SUB : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_neg N (hl_vector_sub N x y) = hl_vector_sub N y x.
Admitted.

// HOL Light: Multivariate/vectors.ml:209 / VECTOR_SUB_EQ   (hash md5:24d31beb31c888fe0050bb222ae9932d)
Theorem hlt_VECTOR_SUB_EQ : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_vector_sub A x y = hl_vec A (hl_NUMERAL hl_zero) <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:211 / VECTOR_MUL_ASSOC   (hash md5:d726051f9bfb00643dbeec292db179a2)
Theorem hlt_VECTOR_MUL_ASSOC : forall A:set, A <> Empty -> forall a b :e R, forall x :e hl_ty_cart R A, hl_vmul A a (hl_vmul A b x) = hl_vmul A (hl_real_mul a b) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:213 / VECTOR_MUL_LID   (hash md5:8a9aebf991b2a393f31da9a9f96a1d26)
Theorem hlt_VECTOR_MUL_LID : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vmul A (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:215 / VECTOR_MUL_LZERO   (hash md5:64185c702259a4be0036b7006c0b6d97)
Theorem hlt_VECTOR_MUL_LZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vmul A (hl_real_of_num (hl_NUMERAL hl_zero)) x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:217 / VECTOR_SUB_ADD   (hash md5:844e62d210d33348cbc8c895905205d2)
Theorem hlt_VECTOR_SUB_ADD : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_add N (hl_vector_sub N x y) y = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:219 / VECTOR_SUB_ADD2   (hash md5:2022d3aa246b9bdb36e0ddcaff42265c)
Theorem hlt_VECTOR_SUB_ADD2 : forall N:set, N <> Empty -> forall y x :e hl_ty_cart R N, hl_vector_add N y (hl_vector_sub N x y) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:221 / VECTOR_ADD_LDISTRIB   (hash md5:506e3a73f770e00ac7a11c814208c2e8)
Theorem hlt_VECTOR_ADD_LDISTRIB : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R A, hl_vmul A c (hl_vector_add A x y) = hl_vector_add A (hl_vmul A c x) (hl_vmul A c y).
Admitted.

// HOL Light: Multivariate/vectors.ml:223 / VECTOR_SUB_LDISTRIB   (hash md5:3021b98f047da2a21b88534d29f2e6da)
Theorem hlt_VECTOR_SUB_LDISTRIB : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R A, hl_vmul A c (hl_vector_sub A x y) = hl_vector_sub A (hl_vmul A c x) (hl_vmul A c y).
Admitted.

// HOL Light: Multivariate/vectors.ml:225 / VECTOR_ADD_RDISTRIB   (hash md5:cd2f7ee01d45f55fce14d832487d06f2)
Theorem hlt_VECTOR_ADD_RDISTRIB : forall A:set, A <> Empty -> forall a b :e R, forall x :e hl_ty_cart R A, hl_vmul A (hl_real_add a b) x = hl_vector_add A (hl_vmul A a x) (hl_vmul A b x).
Admitted.

// HOL Light: Multivariate/vectors.ml:227 / VECTOR_SUB_RDISTRIB   (hash md5:69c874de3615b234c9f6dcf143c37a70)
Theorem hlt_VECTOR_SUB_RDISTRIB : forall A:set, A <> Empty -> forall a b :e R, forall x :e hl_ty_cart R A, hl_vmul A (hl_real_sub a b) x = hl_vector_sub A (hl_vmul A a x) (hl_vmul A b x).
Admitted.

// HOL Light: Multivariate/vectors.ml:229 / VECTOR_ADD_SUB   (hash md5:d5706496500c55c83245f4f4cce9c637)
Theorem hlt_VECTOR_ADD_SUB : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_sub N (hl_vector_add N x y) x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:231 / VECTOR_EQ_ADDR   (hash md5:2fb91928d46031716526d3470bade8b3)
Theorem hlt_VECTOR_EQ_ADDR : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_vector_add A x y = x <-> y = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:233 / VECTOR_SUB   (hash md5:9ce00b66548cd6383c637460e97f27df)
Theorem hlt_VECTOR_SUB : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_sub N x y = hl_vector_add N x (hl_vector_neg N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:235 / VECTOR_SUB_RZERO   (hash md5:81e5391cc0eb057108bc953d4f2f1178)
Theorem hlt_VECTOR_SUB_RZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_sub A x (hl_vec A (hl_NUMERAL hl_zero)) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:237 / VECTOR_MUL_RZERO   (hash md5:c21f3a4a4c91b3999279074fc2af1640)
Theorem hlt_VECTOR_MUL_RZERO : forall A:set, A <> Empty -> forall c :e R, hl_vmul A c (hl_vec A (hl_NUMERAL hl_zero)) = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:239 / VECTOR_NEG_MINUS1   (hash md5:86d57106bc529b6a90476f4cbe9274fb)
Theorem hlt_VECTOR_NEG_MINUS1 : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_neg A x = hl_vmul A (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:241 / VECTOR_ADD_ASSOC   (hash md5:5cee3e21d09eed2ba7249c1c3b33e095)
Theorem hlt_VECTOR_ADD_ASSOC : forall N:set, N <> Empty -> forall x y z :e hl_ty_cart R N, hl_vector_add N x (hl_vector_add N y z) = hl_vector_add N (hl_vector_add N x y) z.
Admitted.

// HOL Light: Multivariate/vectors.ml:243 / VECTOR_SUB_LZERO   (hash md5:4f0a3ea66c24e89440cc49ad894357fa)
Theorem hlt_VECTOR_SUB_LZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_sub A (hl_vec A (hl_NUMERAL hl_zero)) x = hl_vector_neg A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:245 / VECTOR_NEG_NEG   (hash md5:f665fd415c923ecb8edee6b85610523f)
Theorem hlt_VECTOR_NEG_NEG : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_vector_neg N (hl_vector_neg N x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:247 / VECTOR_MUL_LNEG   (hash md5:adfacfae7a8e53fa130aa2ae51355b62)
Theorem hlt_VECTOR_MUL_LNEG : forall A:set, A <> Empty -> forall c :e R, forall x :e hl_ty_cart R A, hl_vmul A (hl_real_neg c) x = hl_vector_neg A (hl_vmul A c x).
Admitted.

// HOL Light: Multivariate/vectors.ml:249 / VECTOR_MUL_RNEG   (hash md5:880c85cb33a57d580e201e3b351b1382)
Theorem hlt_VECTOR_MUL_RNEG : forall A:set, A <> Empty -> forall c :e R, forall x :e hl_ty_cart R A, hl_vmul A c (hl_vector_neg A x) = hl_vector_neg A (hl_vmul A c x).
Admitted.

// HOL Light: Multivariate/vectors.ml:251 / VECTOR_NEG_0   (hash md5:183217aac2a28e7c1f724bed1c53ce60)
Theorem hlt_VECTOR_NEG_0 : forall A:set, A <> Empty -> hl_vector_neg A (hl_vec A (hl_NUMERAL hl_zero)) = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:253 / VECTOR_NEG_EQ_0   (hash md5:f47a36f9ea646d4ef0c602a688c37a7e)
Theorem hlt_VECTOR_NEG_EQ_0 : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_neg A x = hl_vec A (hl_NUMERAL hl_zero) <-> x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:255 / VECTOR_EQ_NEG2   (hash md5:78839b9d4f816619041e39748943f679)
Theorem hlt_VECTOR_EQ_NEG2 : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_neg N x = hl_vector_neg N y <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:257 / VECTOR_ADD_AC   (hash md5:567eac67006a7d22833d7933b7e6bae1)
Theorem hlt_VECTOR_ADD_AC : forall N:set, N <> Empty -> forall m n p :e hl_ty_cart R N, hl_vector_add N m n = hl_vector_add N n m /\ (hl_vector_add N (hl_vector_add N m n) p = hl_vector_add N m (hl_vector_add N n p) /\ hl_vector_add N m (hl_vector_add N n p) = hl_vector_add N n (hl_vector_add N m p)).
Admitted.

// HOL Light: Multivariate/vectors.ml:262 / VEC_EQ   (hash md5:a18df28a73299cb9a106895635103c62)
Theorem hlt_VEC_EQ : forall A:set, A <> Empty -> forall m n :e omega, hl_vec A m = hl_vec A n <-> m = n.
Admitted.

// HOL Light: Multivariate/vectors.ml:271 / SUMS_SYM   (hash md5:056df0b78b6de6a5004062c20cdaf9d6)
Theorem hlt_SUMS_SYM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2759 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2759 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2760 :e hl_ty_cart R N => if exists y x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2760 (if hl_IN (hl_ty_cart R N) y t = 1 /\ hl_IN (hl_ty_cart R N) x s = 1 then 1 else 0) (hl_vector_add N y x) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:276 / SUMS_ASSOC   (hash md5:6e4b1f68c69231d3f6cfbac376386c1c)
Theorem hlt_SUMS_ASSOC : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2762 :e hl_ty_cart R N => if exists w z :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2762 (if hl_IN (hl_ty_cart R N) w (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2761 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2761 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = 1 /\ hl_IN (hl_ty_cart R N) z u = 1 then 1 else 0) (hl_vector_add N w z) = 1 then 1 else 0) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2764 :e hl_ty_cart R N => if exists x v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2764 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) v (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2763 :e hl_ty_cart R N => if exists y z :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2763 (if hl_IN (hl_ty_cart R N) y t = 1 /\ hl_IN (hl_ty_cart R N) z u = 1 then 1 else 0) (hl_vector_add N y z) = 1 then 1 else 0)) = 1 then 1 else 0) (hl_vector_add N x v) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:286 / EUCLIDEAN_SPACE_INFINITE   (hash md5:1cfe7f6e1d90ecee2d06ebdf64a40a88)
Theorem hlt_EUCLIDEAN_SPACE_INFINITE : forall N:set, N <> Empty -> hl_INFINITE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:298 / DOT_SYM   (hash md5:e9adc86bbcb4c9ca445188cb92bfdcc1)
Theorem hlt_DOT_SYM : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_dot A x y = hl_dot A y x.
Admitted.

// HOL Light: Multivariate/vectors.ml:300 / DOT_LADD   (hash md5:0139ac9c2efbe23075edf4850231a87d)
Theorem hlt_DOT_LADD : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, hl_dot A (hl_vector_add A x y) z = hl_real_add (hl_dot A x z) (hl_dot A y z).
Admitted.

// HOL Light: Multivariate/vectors.ml:302 / DOT_RADD   (hash md5:f9a8d2cc73977fa4431445e4922155e7)
Theorem hlt_DOT_RADD : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, hl_dot A x (hl_vector_add A y z) = hl_real_add (hl_dot A x y) (hl_dot A x z).
Admitted.

// HOL Light: Multivariate/vectors.ml:304 / DOT_LSUB   (hash md5:2977a8922b3dba161dc927f01a189d09)
Theorem hlt_DOT_LSUB : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, hl_dot A (hl_vector_sub A x y) z = hl_real_sub (hl_dot A x z) (hl_dot A y z).
Admitted.

// HOL Light: Multivariate/vectors.ml:306 / DOT_RSUB   (hash md5:16c02b701b24e8694649fa72a3835a98)
Theorem hlt_DOT_RSUB : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, hl_dot A x (hl_vector_sub A y z) = hl_real_sub (hl_dot A x y) (hl_dot A x z).
Admitted.

// HOL Light: Multivariate/vectors.ml:308 / DOT_LMUL   (hash md5:a687d19cb435e24ba90e1af45f99a0e9)
Theorem hlt_DOT_LMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R A, hl_dot A (hl_vmul A c x) y = hl_real_mul c (hl_dot A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:310 / DOT_RMUL   (hash md5:d8f9f0d925e0c439e0a548cc0b973601)
Theorem hlt_DOT_RMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R A, hl_dot A x (hl_vmul A c y) = hl_real_mul c (hl_dot A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:312 / DOT_LNEG   (hash md5:29d46f6b8289fe1b387bb80cd6abd1fb)
Theorem hlt_DOT_LNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_dot A (hl_vector_neg A x) y = hl_real_neg (hl_dot A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:314 / DOT_RNEG   (hash md5:bf74cc9016fc22900b3c7a45dea866b8)
Theorem hlt_DOT_RNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_dot A x (hl_vector_neg A y) = hl_real_neg (hl_dot A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:316 / DOT_LZERO   (hash md5:b3f599340ddc4d308dae3afa41dff761)
Theorem hlt_DOT_LZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_dot A (hl_vec A (hl_NUMERAL hl_zero)) x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:318 / DOT_RZERO   (hash md5:090e5ca8bcaaabbaf842e546b20b0a3f)
Theorem hlt_DOT_RZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_dot A x (hl_vec A (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:320 / DOT_POS_LE   (hash md5:e230de8f6d1b52c015ef4e7d26239099)
Theorem hlt_DOT_POS_LE : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_dot A x x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:324 / DOT_EQ_0   (hash md5:b0de70819fce4654b9f1322b09bc1e83)
Theorem hlt_DOT_EQ_0 : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_dot N x x = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:331 / DOT_POS_LT   (hash md5:b15109779fffb5aa11797d23a8923f3e)
Theorem hlt_DOT_POS_LT : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_dot A x x) = 1 <-> ~ x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:335 / FORALL_DOT_EQ_0   (hash md5:390a4bbda52a96a76f290c2416e4901a)
Theorem hlt_FORALL_DOT_EQ_0 : forall A B:set, A <> Empty -> B <> Empty -> (forall y :e hl_ty_cart R A, (forall x :e hl_ty_cart R A, hl_dot A x y = hl_real_of_num (hl_NUMERAL hl_zero)) <-> y = hl_vec A (hl_NUMERAL hl_zero)) /\ forall x :e hl_ty_cart R B, (forall y :e hl_ty_cart R B, hl_dot B x y = hl_real_of_num (hl_NUMERAL hl_zero)) <-> x = hl_vec B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:344 / REFLECT_UNIV   (hash md5:73a44998dc2865f11d2464c0e0a09aa2)
Theorem hlt_REFLECT_UNIV : forall N:set, N <> Empty -> hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) (hl_UNIV (hl_ty_cart R N)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:348 / TRANSLATION_UNIV   (hash md5:c390e0952f95d98111f7aa315ee98c2d)
Theorem hlt_TRANSLATION_UNIV : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) (hl_UNIV (hl_ty_cart R N)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:353 / TRANSLATION_SUBSET_GALOIS_RIGHT   (hash md5:58f404d61b0c0f8beba22f28f71889fc)
Theorem hlt_TRANSLATION_SUBSET_GALOIS_RIGHT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) t) = 1 <-> hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vector_neg N a) x) s) t = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:361 / TRANSLATION_SUBSET_GALOIS_LEFT   (hash md5:c1580903c0bad9cfe75f659a5d9d2955)
Theorem hlt_TRANSLATION_SUBSET_GALOIS_LEFT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) t = 1 <-> hl_SUBSET (hl_ty_cart R N) s (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vector_neg N a) x) t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:366 / TRANSLATION_GALOIS   (hash md5:7e1d2cb83475e8ca39c238107eace707)
Theorem hlt_TRANSLATION_GALOIS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, s = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) t <-> t = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vector_neg N a) x) s.
Admitted.

// HOL Light: Multivariate/vectors.ml:372 / IN_TRANSLATION_GALOIS   (hash md5:35cf9f351bb92e622266b2f0b2e6c288)
Theorem hlt_IN_TRANSLATION_GALOIS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_IN (hl_ty_cart R N) (hl_vector_sub N b a) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:377 / IN_TRANSLATION_GALOIS_ALT   (hash md5:a3606e8d952687c44e9c4245cebd85a0)
Theorem hlt_IN_TRANSLATION_GALOIS_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vector_add N a b) s = 1 <-> hl_IN (hl_ty_cart R N) b (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vector_neg N a) x) s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:386 / FORALL_DIMINDEX_1   (hash md5:ee6c5e88a7de9952498955c733e3bfcf)
Theorem hlt_FORALL_DIMINDEX_1 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:394 / VECTOR_ONE   (hash md5:ab4740a44e68b535dd577c31218a187a)
Theorem hlt_VECTOR_ONE : forall x :e hl_ty_cart R 1, x = hl_lambda R 1 (fun i :e omega => hl_vindex R 1 x (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:398 / FORALL_REAL_ONE   (hash md5:b14d24eec843192e1b7880da4848961b)
Theorem hlt_FORALL_REAL_ONE : forall P :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, P x = 1) <-> forall x :e R, P (hl_lambda R 1 (fun i :e omega => x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:411 / vector_norm   (hash md5:0d97fb3bc82d0b2fbee25fd6efd433b3)
Theorem hlt_vector_norm_thm : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_norm A x = hl_sqrt (hl_dot A x x).
Admitted.

// HOL Light: Multivariate/vectors.ml:416 / dist   (hash md5:e989261721bed57342d13a7c45e16d05)
Theorem hlt_dist : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y) = hl_vector_norm A (hl_vector_sub A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:419 / NORM_REAL   (hash md5:e8b853bd5a6314294ee30991f055bdd5)
Theorem hlt_NORM_REAL : forall x :e hl_ty_cart R 1, hl_vector_norm 1 x = hl_real_abs (hl_vindex R 1 x (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:424 / DIST_REAL   (hash md5:e53e9d35d006e67b4d1ceb5af606c55d)
Theorem hlt_DIST_REAL : forall x y :e hl_ty_cart R 1, hl_distance 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x y) = hl_real_abs (hl_real_sub (hl_vindex R 1 x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R 1 y (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:428 / NORM_0   (hash md5:3f1112f1e74a20128309ba8f31291e4d)
Theorem hlt_NORM_0 : forall A:set, A <> Empty -> hl_vector_norm A (hl_vec A (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:432 / NORM_POS_LE   (hash md5:2d58bbcbf407177f9d85554c082cb316)
Theorem hlt_NORM_POS_LE : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vector_norm A x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:436 / NORM_NEG   (hash md5:b97e14d97f8119fc86e83344ac190829)
Theorem hlt_NORM_NEG : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_norm A (hl_vector_neg A x) = hl_vector_norm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:440 / NORM_SUB   (hash md5:9da40ec1f003d9221f6f8d665f98030c)
Theorem hlt_NORM_SUB : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_vector_norm A (hl_vector_sub A x y) = hl_vector_norm A (hl_vector_sub A y x).
Admitted.

// HOL Light: Multivariate/vectors.ml:444 / NORM_MUL   (hash md5:5060c0396ef9d90d448f86f97763c5be)
Theorem hlt_NORM_MUL : forall A:set, A <> Empty -> forall a :e R, forall x :e hl_ty_cart R A, hl_vector_norm A (hl_vmul A a x) = hl_real_mul (hl_real_abs a) (hl_vector_norm A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:449 / NORM_EQ_0_DOT   (hash md5:d7cdf5a3a42213acebfbb0849ba7c73b)
Theorem hlt_NORM_EQ_0_DOT : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_norm A x = hl_real_of_num (hl_NUMERAL hl_zero) <-> hl_dot A x x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:453 / NORM_EQ_0   (hash md5:85262430d413f9519032f359ab28f502)
Theorem hlt_NORM_EQ_0 : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_norm A x = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:457 / NORM_POS_LT   (hash md5:d09333d939002716dc146f4d15b8ae24)
Theorem hlt_NORM_POS_LT : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vector_norm A x) = 1 <-> ~ x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:461 / NORM_POW_2   (hash md5:f1d640e6538a450f3cbd8f33e69be7fd)
Theorem hlt_NORM_POW_2 : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_pow (hl_vector_norm A x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_dot A x x.
Admitted.

// HOL Light: Multivariate/vectors.ml:465 / NORM_EQ_0_IMP   (hash md5:7bbcdf2dd17bad72774fd44506f5fb08)
Theorem hlt_NORM_EQ_0_IMP : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_norm A x = hl_real_of_num (hl_NUMERAL hl_zero) -> x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:469 / NORM_LE_0   (hash md5:5e80698e8140e8ee0de8db29098eba19)
Theorem hlt_NORM_LE_0 : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_le (hl_vector_norm A x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:473 / VECTOR_MUL_EQ_0   (hash md5:fe1db8c2d427f7731d75774df4bb5bbc)
Theorem hlt_VECTOR_MUL_EQ_0 : forall A:set, A <> Empty -> forall a :e R, forall x :e hl_ty_cart R A, hl_vmul A a x = hl_vec A (hl_NUMERAL hl_zero) <-> a = hl_real_of_num (hl_NUMERAL hl_zero) \/ x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:477 / VECTOR_MUL_LCANCEL   (hash md5:ee359b9e6f99738884e57403fa7b7af2)
Theorem hlt_VECTOR_MUL_LCANCEL : forall A:set, A <> Empty -> forall a :e R, forall x y :e hl_ty_cart R A, hl_vmul A a x = hl_vmul A a y <-> a = hl_real_of_num (hl_NUMERAL hl_zero) \/ x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:481 / VECTOR_MUL_RCANCEL   (hash md5:0299b246d493363b7d218c7de079d533)
Theorem hlt_VECTOR_MUL_RCANCEL : forall A:set, A <> Empty -> forall a b :e R, forall x :e hl_ty_cart R A, hl_vmul A a x = hl_vmul A b x <-> a = b \/ x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:485 / VECTOR_MUL_LCANCEL_IMP   (hash md5:27b1e86dc98359a315a34881bcdb57e2)
Theorem hlt_VECTOR_MUL_LCANCEL_IMP : forall A:set, A <> Empty -> forall a :e R, forall x y :e hl_ty_cart R A, ~ a = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_vmul A a x = hl_vmul A a y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:489 / VECTOR_MUL_RCANCEL_IMP   (hash md5:50b0bef513a9c5931f33d629a598e957)
Theorem hlt_VECTOR_MUL_RCANCEL_IMP : forall A:set, A <> Empty -> forall a b :e R, forall x :e hl_ty_cart R A, ~ x = hl_vec A (hl_NUMERAL hl_zero) /\ hl_vmul A a x = hl_vmul A b x -> a = b.
Admitted.

// HOL Light: Multivariate/vectors.ml:493 / NORM_CAUCHY_SCHWARZ   (hash md5:7845c324e6677b56edeee04ff6c3ebd5)
Theorem hlt_NORM_CAUCHY_SCHWARZ : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_real_le (hl_dot N x y) (hl_real_mul (hl_vector_norm N x) (hl_vector_norm N y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:507 / NORM_CAUCHY_SCHWARZ_ABS   (hash md5:4ce068a239346d1a267c4faf0a089717)
Theorem hlt_NORM_CAUCHY_SCHWARZ_ABS : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_real_le (hl_real_abs (hl_dot N x y)) (hl_real_mul (hl_vector_norm N x) (hl_vector_norm N y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:514 / REAL_ABS_NORM   (hash md5:f621f6824071f24377a47c2a1be8bcad)
Theorem hlt_REAL_ABS_NORM : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_abs (hl_vector_norm A x) = hl_vector_norm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:518 / NORM_CAUCHY_SCHWARZ_DIV   (hash md5:bc6a696ee455473c58265d4cd157e23d)
Theorem hlt_NORM_CAUCHY_SCHWARZ_DIV : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_real_le (hl_real_abs (hl_real_div (hl_dot N x y) (hl_real_mul (hl_vector_norm N x) (hl_vector_norm N y)))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:528 / NORM_TRIANGLE   (hash md5:ef6fc4fbee0886f6797c0875c1aca463)
Theorem hlt_NORM_TRIANGLE : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_real_le (hl_vector_norm A (hl_vector_add A x y)) (hl_real_add (hl_vector_norm A x) (hl_vector_norm A y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:537 / NORM_TRIANGLE_SUB   (hash md5:9c4a9df68fec2d466e5c47bba6b5a2af)
Theorem hlt_NORM_TRIANGLE_SUB : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_real_le (hl_vector_norm N x) (hl_real_add (hl_vector_norm N y) (hl_vector_norm N (hl_vector_sub N x y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:541 / NORM_TRIANGLE_LE   (hash md5:632de3b1b1a8a65dbf855b156b82f8ef)
Theorem hlt_NORM_TRIANGLE_LE : forall A:set, A <> Empty -> forall e1 :e R, forall x y :e hl_ty_cart R A, hl_real_le (hl_real_add (hl_vector_norm A x) (hl_vector_norm A y)) e1 = 1 -> hl_real_le (hl_vector_norm A (hl_vector_add A x y)) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:545 / NORM_TRIANGLE_LT   (hash md5:da1883c5f23024b72221dd763660b1f1)
Theorem hlt_NORM_TRIANGLE_LT : forall A:set, A <> Empty -> forall e1 :e R, forall x y :e hl_ty_cart R A, hl_real_lt (hl_real_add (hl_vector_norm A x) (hl_vector_norm A y)) e1 = 1 -> hl_real_lt (hl_vector_norm A (hl_vector_add A x y)) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:549 / COMPONENT_LE_NORM   (hash md5:797ece84d697678a77afcf03ae59993f)
Theorem hlt_COMPONENT_LE_NORM : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall i :e omega, hl_real_le (hl_real_abs (hl_vindex R N x i)) (hl_vector_norm N x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:567 / NORM_BOUND_COMPONENT_LE   (hash md5:7de588e9699021af4626f84d126602a4)
Theorem hlt_NORM_BOUND_COMPONENT_LE : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall e1 :e R, hl_real_le (hl_vector_norm N x) e1 = 1 -> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_abs (hl_vindex R N x i)) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:572 / NORM_BOUND_COMPONENT_LT   (hash md5:2bb699eef4f13c01951e4cc7b2f8d9f1)
Theorem hlt_NORM_BOUND_COMPONENT_LT : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_vector_norm N x) e1 = 1 -> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_real_abs (hl_vindex R N x i)) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:577 / NORM_LE_L1   (hash md5:68cc760404f850f8d7205e08906ea209)
Theorem hlt_NORM_LE_L1 : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_real_le (hl_vector_norm N x) (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_real_abs (hl_vindex R N x i))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:591 / REAL_ABS_SUB_NORM   (hash md5:0d59a5a5c052782dc402df27be38d465)
Theorem hlt_REAL_ABS_SUB_NORM : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_real_le (hl_real_abs (hl_real_sub (hl_vector_norm A x) (hl_vector_norm A y))) (hl_vector_norm A (hl_vector_sub A x y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:596 / NORM_LE   (hash md5:215cc94f61acd74c3e1d13a1bbc0de7b)
Theorem hlt_NORM_LE : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_real_le (hl_vector_norm A x) (hl_vector_norm B y) = 1 <-> hl_real_le (hl_dot A x x) (hl_dot B y y) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:600 / NORM_LT   (hash md5:adfabee399446b15eafaf80e6bb37af5)
Theorem hlt_NORM_LT : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_real_lt (hl_vector_norm A x) (hl_vector_norm B y) = 1 <-> hl_real_lt (hl_dot A x x) (hl_dot B y y) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:604 / NORM_EQ   (hash md5:1ac79461b9d9b2288ca61c358daf9d4b)
Theorem hlt_NORM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_vector_norm A x = hl_vector_norm B y <-> hl_dot A x x = hl_dot B y y.
Admitted.

// HOL Light: Multivariate/vectors.ml:608 / NORM_EQ_1   (hash md5:db3b1899d6b5c8acee588d26b7f2f6a8)
Theorem hlt_NORM_EQ_1 : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_vector_norm A x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_dot A x x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:613 / NORM_LE_COMPONENTWISE   (hash md5:2c9badce70115a26506f830682612ee1)
Theorem hlt_NORM_LE_COMPONENTWISE : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_abs (hl_vindex R N x i)) (hl_real_abs (hl_vindex R N y i)) = 1) -> hl_real_le (hl_vector_norm N x) (hl_vector_norm N y) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:621 / NORM_EQ_COMPONENTWISE   (hash md5:8d0ff15e9938c66a5a1456d07e7324a2)
Theorem hlt_NORM_EQ_COMPONENTWISE : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_abs (hl_vindex R N x i) = hl_real_abs (hl_vindex R N y i)) -> hl_vector_norm N x = hl_vector_norm N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:627 / L1_LE_NORM   (hash md5:1dd32ed1198d494c1daf48414c1de6b7)
Theorem hlt_L1_LE_NORM : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_real_le (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_real_abs (hl_vindex R N x i))) (hl_real_mul (hl_sqrt (hl_real_of_num (hl_dimindex N (hl_UNIV N)))) (hl_vector_norm N x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:654 / DIST_INCREASES_ONLINE   (hash md5:8620a7b1d37cee673dc81a2b8930269d)
Theorem hlt_DIST_INCREASES_ONLINE : forall A:set, A <> Empty -> forall a b d :e hl_ty_cart R A, ~ d = hl_vec A (hl_NUMERAL hl_zero) -> hl_real_gt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a (hl_vector_add A b d))) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1 \/ hl_real_gt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a (hl_vector_sub A b d))) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:661 / NORM_INCREASES_ONLINE   (hash md5:fd7454d79204dfba4a0f5f044d5c0f45)
Theorem hlt_NORM_INCREASES_ONLINE : forall N:set, N <> Empty -> forall a d :e hl_ty_cart R N, ~ d = hl_vec N (hl_NUMERAL hl_zero) -> hl_real_gt (hl_vector_norm N (hl_vector_add N a d)) (hl_vector_norm N a) = 1 \/ hl_real_gt (hl_vector_norm N (hl_vector_sub N a d)) (hl_vector_norm N a) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:671 / DOT_SQUARE_NORM   (hash md5:f3c98966d5cd179d5e4beed9f3078c6c)
Theorem hlt_DOT_SQUARE_NORM : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_dot A x x = hl_real_pow (hl_vector_norm A x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:675 / NORM_EQ_SQUARE   (hash md5:41c997349ac1524692e794bba08c376e)
Theorem hlt_NORM_EQ_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e hl_ty_cart R N, hl_vector_norm N x = a <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 /\ hl_dot N x x = hl_real_pow a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:681 / NORM_LE_SQUARE   (hash md5:c411b7e38037d2a1d75f6371ed367265)
Theorem hlt_NORM_LE_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e hl_ty_cart R N, hl_real_le (hl_vector_norm N x) a = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 /\ hl_real_le (hl_dot N x x) (hl_real_pow a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:686 / NORM_GE_SQUARE   (hash md5:0e446852306be69a2b31c5e5a2b07e53)
Theorem hlt_NORM_GE_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e hl_ty_cart R N, hl_real_ge (hl_vector_norm N x) a = 1 <-> hl_real_le a (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ hl_real_ge (hl_dot N x x) (hl_real_pow a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:691 / NORM_LT_SQUARE   (hash md5:d3dc4403f1cb4301c9112206d018d365)
Theorem hlt_NORM_LT_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e hl_ty_cart R N, hl_real_lt (hl_vector_norm N x) a = 1 <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 /\ hl_real_lt (hl_dot N x x) (hl_real_pow a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:696 / NORM_GT_SQUARE   (hash md5:67b4eb80f6b1dac048b834ca92ca4d73)
Theorem hlt_NORM_GT_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e hl_ty_cart R N, hl_real_gt (hl_vector_norm N x) a = 1 <-> hl_real_lt a (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 \/ hl_real_gt (hl_dot N x x) (hl_real_pow a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:701 / NORM_LT_SQUARE_ALT   (hash md5:be72391693bbcffb88e2beedd84143b9)
Theorem hlt_NORM_LT_SQUARE_ALT : forall N:set, N <> Empty -> forall a :e R, forall x :e hl_ty_cart R N, hl_real_lt (hl_vector_norm N x) a = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 /\ hl_real_lt (hl_dot N x x) (hl_real_pow a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1011 / HOMOMORPHISM_REAL_TO_REAL   (hash md5:51ebb09db7bdb03b83a45bd2b838d67c)
Theorem hlt_HOMOMORPHISM_REAL_TO_REAL : forall f :e R :^: R, (forall x y :e R, f (hl_real_add x y) = hl_real_add (f x) (f y)) /\ (forall x y :e R, f (hl_real_mul x y) = hl_real_mul (f x) (f y)) <-> f = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) \/ f = fun x :e R => x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1073 / DOT_NORM   (hash md5:9763a00a8d51a363c5457926d658beff)
Theorem hlt_DOT_NORM : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_dot A x y = hl_real_div (hl_real_sub (hl_real_sub (hl_real_pow (hl_vector_norm A (hl_vector_add A x y)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_vector_norm A x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_pow (hl_vector_norm A y) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1077 / DOT_NORM_SUB   (hash md5:d4998bf712cca9f3766869996855b285)
Theorem hlt_DOT_NORM_SUB : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_dot A x y = hl_real_div (hl_real_sub (hl_real_add (hl_real_pow (hl_vector_norm A x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_vector_norm A y) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_pow (hl_vector_norm A (hl_vector_sub A x y)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1085 / VECTOR_EQ   (hash md5:bac5793c28cc6d5bea5986c7494da5d7)
Theorem hlt_VECTOR_EQ : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, x = y <-> hl_dot A x x = hl_dot A x y /\ hl_dot A y y = hl_dot A x x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1096 / DIST_REFL   (hash md5:a72a0243ff5114cb55b71766fe12b22e)
Theorem hlt_DIST_REFL : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x x) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:1100 / DIST_SYM   (hash md5:00380dc8191da2d0dd595b822809f0e3)
Theorem hlt_DIST_SYM : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y) = hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y x).
Admitted.

// HOL Light: Multivariate/vectors.ml:1104 / DIST_POS_LE   (hash md5:6523878a3e749625fe3e034f1aee6990)
Theorem hlt_DIST_POS_LE : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1108 / REAL_ABS_DIST   (hash md5:594f633a7fdb365293926381b6b4560f)
Theorem hlt_REAL_ABS_DIST : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_real_abs (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1112 / DIST_TRIANGLE   (hash md5:23c27deb7bdc7b5d364ba00af4c2cb58)
Theorem hlt_DIST_TRIANGLE : forall N:set, N <> Empty -> forall x y z :e hl_ty_cart R N, hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x z)) (hl_real_add (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) y z))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1116 / DIST_TRIANGLE_ALT   (hash md5:d2b82391c64377c0495217337a696007)
Theorem hlt_DIST_TRIANGLE_ALT : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, hl_real_le (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y z)) (hl_real_add (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x z))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1120 / DIST_EQ_0   (hash md5:6ec9ac16649ac70e750febd6b8572e71)
Theorem hlt_DIST_EQ_0 : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y) = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:1124 / DIST_POS_LT   (hash md5:e6e04dd113fd316d131280df63b8e64f)
Theorem hlt_DIST_POS_LT : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, ~ x = y -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1128 / DIST_NZ   (hash md5:6f3d0d5bd5021e38badf1a904ff65cd9)
Theorem hlt_DIST_NZ : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, ~ x = y <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1132 / DIST_TRIANGLE_LE   (hash md5:744cec99777b41ed2239dd7776762b78)
Theorem hlt_DIST_TRIANGLE_LE : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, forall e1 :e R, hl_real_le (hl_real_add (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x z)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y z))) e1 = 1 -> hl_real_le (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1136 / DIST_TRIANGLE_LT   (hash md5:614f986c706f381e3ddf948744b71dd9)
Theorem hlt_DIST_TRIANGLE_LT : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, forall e1 :e R, hl_real_lt (hl_real_add (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x z)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y z))) e1 = 1 -> hl_real_lt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1140 / DIST_TRIANGLE_HALF_L   (hash md5:d9a07d49d5fa688cdb65a608a3b1f6e7)
Theorem hlt_DIST_TRIANGLE_HALF_L : forall A:set, A <> Empty -> forall e1 :e R, forall x1 x2 y :e hl_ty_cart R A, hl_real_lt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x1 y)) (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1 /\ hl_real_lt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x2 y)) (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1 -> hl_real_lt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x1 x2)) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1144 / DIST_TRIANGLE_HALF_R   (hash md5:6015c61a773b957f604dc1b078c1a2d7)
Theorem hlt_DIST_TRIANGLE_HALF_R : forall A:set, A <> Empty -> forall e1 :e R, forall x1 x2 y :e hl_ty_cart R A, hl_real_lt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y x1)) (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1 /\ hl_real_lt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y x2)) (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1 -> hl_real_lt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x1 x2)) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1148 / DIST_TRIANGLE_ADD   (hash md5:4e258cafbb9831ade133c4f7b67281a2)
Theorem hlt_DIST_TRIANGLE_ADD : forall A:set, A <> Empty -> forall x x' y y' :e hl_ty_cart R A, hl_real_le (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_vector_add A x y) (hl_vector_add A x' y'))) (hl_real_add (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x x')) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y y'))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1152 / DIST_MUL   (hash md5:44e8c5eb1088a31986c49a68ee17d315)
Theorem hlt_DIST_MUL : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, forall c :e R, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_vmul A c x) (hl_vmul A c y)) = hl_real_mul (hl_real_abs c) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1156 / DIST_TRIANGLE_ADD_HALF   (hash md5:9ceed50b6ce70a6c4d63ad25014dbd3f)
Theorem hlt_DIST_TRIANGLE_ADD_HALF : forall N:set, N <> Empty -> forall e1 :e R, forall x x' y y' :e hl_ty_cart R N, hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x x')) (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) y y')) (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_add N x y) (hl_vector_add N x' y'))) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1161 / DIST_LE_0   (hash md5:a01dfbcc19e064952f4d8978be6c93cc)
Theorem hlt_DIST_LE_0 : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_real_le (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:1165 / DIST_EQ   (hash md5:deaaa8646599b9ba83fd5205fb7ec8ea)
Theorem hlt_DIST_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall w x :e hl_ty_cart R A, forall y z :e hl_ty_cart R B, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) w x) = hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) y z) <-> hl_real_pow (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) w x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_pow (hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) y z)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1169 / DIST_0   (hash md5:d18510d547f583e191c0bcc7f363252f)
Theorem hlt_DIST_0 : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x (hl_vec A (hl_NUMERAL hl_zero))) = hl_vector_norm A x /\ hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) x) = hl_vector_norm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1177 / DIST_RESCALE   (hash md5:c1aa4e2895b68a35d3b427bdc450795a)
Theorem hlt_DIST_RESCALE : forall N:set, N <> Empty -> forall a :e R, forall x y :e hl_ty_cart R N, hl_vector_norm N x = hl_vector_norm N y -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vmul N a x) y) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x (hl_vmul N a y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1183 / DIST_DESCALE   (hash md5:9ec7fd5eb51e564a3ba0b43abdde5592)
Theorem hlt_DIST_DESCALE : forall N:set, N <> Empty -> forall a b :e R, forall x y :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) b = 1 /\ hl_vector_norm N x = hl_vector_norm N y) -> hl_real_ge (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vmul N a x) (hl_vmul N b y))) (hl_real_mul (hl_real_min a b) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1216 / NEUTRAL_VECTOR_ADD   (hash md5:7780604b5d4931db54f5a0936fdb618f)
Theorem hlt_NEUTRAL_VECTOR_ADD : forall N:set, N <> Empty -> hl_neutral (hl_ty_cart R N) (hl_vector_add N) = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:1222 / MONOIDAL_VECTOR_ADD   (hash md5:8c41d8534583d876fa0983cf0279eb76)
Theorem hlt_MONOIDAL_VECTOR_ADD : forall N:set, N <> Empty -> hl_monoidal (hl_ty_cart R N) (hl_vector_add N) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1227 / vsum   (hash md5:846aaf2e804d1f333b57329ecc54a539)
Theorem hlt_vsum_thm : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_cart R N :^: A, hl_vsum A N s f = hl_lambda R N (fun i :e omega => hl_sum A s (fun x :e A => hl_vindex R N (f x) i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1230 / VSUM_CLAUSES   (hash md5:788a27653853af8d9324d2f188ce8c86)
Theorem hlt_VSUM_CLAUSES : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall f :e hl_ty_cart R B :^: A, hl_vsum A B (hl_EMPTY A) f = hl_vec B (hl_NUMERAL hl_zero)) /\ forall x :e C, forall f :e hl_ty_cart R D :^: C, forall s :e 2 :^: C, hl_FINITE C s = 1 -> hl_vsum C D (hl_INSERT C x s) f = hl_COND (hl_ty_cart R D) (hl_IN C x s) (hl_vsum C D s f) (hl_vector_add D (f x) (hl_vsum C D s f)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1239 / VSUM   (hash md5:077f0c3d8fba88f08ad22949fce322fd)
Theorem hlt_VSUM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_vsum A B s f = hl_iterate (hl_ty_cart R B) A (hl_vector_add B) s f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1245 / VSUM_EQ_0   (hash md5:40d42f77d9c58e1c83fa5e4b41b174f6)
Theorem hlt_VSUM_EQ_0 : forall B A:set, B <> Empty -> A <> Empty -> forall f :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = hl_vec B (hl_NUMERAL hl_zero)) -> hl_vsum A B s f = hl_vec B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:1249 / VSUM_0   (hash md5:c5fcc432d0dd34a9e782119a0e8d414c)
Theorem hlt_VSUM_0 : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, hl_vsum A B s (fun x :e A => hl_vec B (hl_NUMERAL hl_zero)) = hl_vec B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:1253 / VSUM_LMUL   (hash md5:89f46256bef08cb9c8aa3bcf79ad24db)
Theorem hlt_VSUM_LMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: A, forall c :e R, forall s :e 2 :^: A, hl_vsum A B s (fun x :e A => hl_vmul B c (f x)) = hl_vmul B c (hl_vsum A B s f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1257 / VSUM_RMUL   (hash md5:74adce06c66275bb6dd7115f9b947ac2)
Theorem hlt_VSUM_RMUL : forall A B:set, A <> Empty -> B <> Empty -> forall c :e R :^: A, forall s :e 2 :^: A, forall v :e hl_ty_cart R B, hl_vsum A B s (fun x :e A => hl_vmul B (c x) v) = hl_vmul B (hl_sum A s c) v.
Admitted.

// HOL Light: Multivariate/vectors.ml:1261 / VSUM_ADD   (hash md5:9f116728d64950c05556dd7615c7c6d7)
Theorem hlt_VSUM_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_vsum A B s (fun x :e A => hl_vector_add B (f x) (g x)) = hl_vector_add B (hl_vsum A B s f) (hl_vsum A B s g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1265 / VSUM_SUB   (hash md5:ddc18df80295da0c85376ce1b390cd8f)
Theorem hlt_VSUM_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_vsum A B s (fun x :e A => hl_vector_sub B (f x) (g x)) = hl_vector_sub B (hl_vsum A B s f) (hl_vsum A B s g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1269 / VSUM_CONST   (hash md5:d66d3204e6d2102ef002c2061a637020)
Theorem hlt_VSUM_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall c :e hl_ty_cart R B, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_vsum A B s (fun n :e A => c) = hl_vmul B (hl_real_of_num (hl_CARD A s)) c.
Admitted.

// HOL Light: Multivariate/vectors.ml:1273 / VSUM_COMPONENT   (hash md5:9671eb523a2b1e309942bdbd5f70f0cd)
Theorem hlt_VSUM_COMPONENT : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_cart R N :^: A, forall i :e omega, hl_vindex R N (hl_vsum A N s f) i = hl_sum A s (fun x :e A => hl_vindex R N (f x) i).
Admitted.

// HOL Light: Multivariate/vectors.ml:1280 / VSUM_IMAGE   (hash md5:157c4d3d45f2a9854a25d4985243a4f1)
Theorem hlt_VSUM_IMAGE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e A :^: C, forall g :e hl_ty_cart R B :^: A, forall s :e 2 :^: C, hl_FINITE C s = 1 /\ (forall x y :e C, hl_IN C x s = 1 /\ (hl_IN C y s = 1 /\ f x = f y) -> x = y) -> hl_vsum A B (hl_IMAGE C A f s) g = hl_vsum C B s (hl_o A (hl_ty_cart R B) C g f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1287 / VSUM_UNION   (hash md5:2ee5a95aa34771ab82d9de4d39300731)
Theorem hlt_VSUM_UNION : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_DISJOINT A s t = 1) -> hl_vsum A B (hl_UNION A s t) f = hl_vector_add B (hl_vsum A B s f) (hl_vsum A B t f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1292 / VSUM_DIFF   (hash md5:3d2ca58e623a693c8a3ee188694fa919)
Theorem hlt_VSUM_DIFF : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A t s = 1 -> hl_vsum A B (hl_DIFF A s t) f = hl_vector_sub B (hl_vsum A B s f) (hl_vsum A B t f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1297 / VSUM_DELETE   (hash md5:cba5a05b073022d1ab44616fb1f5fa91)
Theorem hlt_VSUM_DELETE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> hl_vsum A B (hl_DELETE A s a) f = hl_vector_sub B (hl_vsum A B s f) (f a).
Admitted.

// HOL Light: Multivariate/vectors.ml:1302 / VSUM_INCL_EXCL   (hash md5:7d7d975f4893356271c548e946491009)
Theorem hlt_VSUM_INCL_EXCL : forall A N:set, A <> Empty -> N <> Empty -> forall s t :e 2 :^: A, forall f :e hl_ty_cart R N :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_vector_add N (hl_vsum A N s f) (hl_vsum A N t f) = hl_vector_add N (hl_vsum A N (hl_UNION A s t) f) (hl_vsum A N (hl_INTER A s t) f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1309 / VSUM_NEG   (hash md5:a7b2020623186e03b077b35dcc5d8d8b)
Theorem hlt_VSUM_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, hl_vsum A B s (fun x :e A => hl_vector_neg B (f x)) = hl_vector_neg B (hl_vsum A B s f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1313 / VSUM_EQ   (hash md5:2ad6375b378aed07ab0285a8427dc324)
Theorem hlt_VSUM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = g x) -> hl_vsum A B s f = hl_vsum A B s g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1318 / VSUM_SUPERSET   (hash md5:4567473f79dae8e1f193ef5c94e3385c)
Theorem hlt_VSUM_SUPERSET : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall u v :e 2 :^: A, hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_vec N (hl_NUMERAL hl_zero)) -> hl_vsum A N v f = hl_vsum A N u f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1324 / VSUM_SUPPORT   (hash md5:0bb93242bf03909baddc1639584b284b)
Theorem hlt_VSUM_SUPPORT : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_vsum A N (hl_GSPEC A (fun GEN_PVAR_2766 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2766 (if hl_IN A x s = 1 /\ ~ f x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) f = hl_vsum A N s f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1329 / VSUM_UNIV   (hash md5:0c3df713505fcfa5fa350ce7b529ec97)
Theorem hlt_VSUM_UNIV : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_SUBSET A (hl_support (hl_ty_cart R N) A (hl_vector_add N) f (hl_UNIV A)) s = 1 -> hl_vsum A N s f = hl_vsum A N (hl_UNIV A) f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1336 / VSUM_EQ_SUPERSET   (hash md5:4451fe096f862f218ac5d3ab4f953631)
Theorem hlt_VSUM_EQ_SUPERSET : forall B A:set, B <> Empty -> A <> Empty -> forall g f :e hl_ty_cart R B :^: A, forall s t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ ((forall x :e A, hl_IN A x t = 1 -> f x = g x) /\ (forall x :e A, hl_IN A x s = 1 /\ ~ hl_IN A x t = 1 -> f x = hl_vec B (hl_NUMERAL hl_zero)))) -> hl_vsum A B s f = hl_vsum A B t g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1344 / VSUM_UNION_RZERO   (hash md5:ae50b67e6a48f2557998331a99b73b2e)
Theorem hlt_VSUM_UNION_RZERO : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall u v :e 2 :^: A, (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_vec N (hl_NUMERAL hl_zero)) -> hl_vsum A N (hl_UNION A u v) f = hl_vsum A N u f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1350 / VSUM_UNION_LZERO   (hash md5:05084acb8b80c546fc071dd30d2a2cca)
Theorem hlt_VSUM_UNION_LZERO : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall u v :e 2 :^: A, (forall x :e A, hl_IN A x u = 1 /\ ~ hl_IN A x v = 1 -> f x = hl_vec N (hl_NUMERAL hl_zero)) -> hl_vsum A N (hl_UNION A u v) f = hl_vsum A N v f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1356 / VSUM_RESTRICT   (hash md5:e41bd87d74ed575399756f23a57a677a)
Theorem hlt_VSUM_RESTRICT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, hl_vsum A B s (fun x :e A => hl_COND (hl_ty_cart R B) (hl_IN A x s) (f x) (hl_vec B (hl_NUMERAL hl_zero))) = hl_vsum A B s f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1360 / VSUM_RESTRICT_SET   (hash md5:8ba0d839b1cf6bfe7fe7bf3005dc0d86)
Theorem hlt_VSUM_RESTRICT_SET : forall A B:set, A <> Empty -> B <> Empty -> forall P s :e 2 :^: A, forall f :e hl_ty_cart R B :^: A, hl_vsum A B (hl_GSPEC A (fun GEN_PVAR_2767 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2767 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_vsum A B s (fun x :e A => hl_COND (hl_ty_cart R B) (P x) (f x) (hl_vec B (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1366 / VSUM_CASES   (hash md5:c31d9c8c6e34a582b7a6387e16465f78)
Theorem hlt_VSUM_CASES : forall A N:set, A <> Empty -> N <> Empty -> forall s P :e 2 :^: A, forall f g :e hl_ty_cart R N :^: A, hl_FINITE A s = 1 -> hl_vsum A N s (fun x :e A => hl_COND (hl_ty_cart R N) (P x) (f x) (g x)) = hl_vector_add N (hl_vsum A N (hl_GSPEC A (fun GEN_PVAR_2768 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2768 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_vsum A N (hl_GSPEC A (fun GEN_PVAR_2769 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2769 (if hl_IN A x s = 1 /\ ~ P x = 1 then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1373 / VSUM_SING   (hash md5:38e97270e0990bcc53eb86b50741931f)
Theorem hlt_VSUM_SING : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: B, forall x :e B, hl_vsum B A (hl_INSERT B x (hl_EMPTY B)) f = f x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1377 / VSUM_NORM   (hash md5:87b7f9ab248c69121165e28b20d76787)
Theorem hlt_VSUM_NORM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: B, forall s :e 2 :^: B, hl_FINITE B s = 1 -> hl_real_le (hl_vector_norm A (hl_vsum B A s f)) (hl_sum B s (fun x :e B => hl_vector_norm A (f x))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1383 / VSUM_NORM_LE   (hash md5:a3da66e5d30d5ae4b85249e75339d239)
Theorem hlt_VSUM_NORM_LE : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_cart R N :^: A, forall g :e R :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_vector_norm N (f x)) (g x) = 1) -> hl_real_le (hl_vector_norm N (hl_vsum A N s f)) (hl_sum A s g) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1391 / VSUM_NORM_TRIANGLE   (hash md5:c1c3381236a3fa3a5e52c37d28bbd1c5)
Theorem hlt_VSUM_NORM_TRIANGLE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_cart R B :^: A, forall b :e R, hl_FINITE A s = 1 /\ hl_real_le (hl_sum A s (fun a :e A => hl_vector_norm B (f a))) b = 1 -> hl_real_le (hl_vector_norm B (hl_vsum A B s f)) b = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1395 / VSUM_NORM_BOUND   (hash md5:2a04dd0e13a04f9e6d2d5d7fc5b5a12e)
Theorem hlt_VSUM_NORM_BOUND : forall B A:set, B <> Empty -> A <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_cart R B :^: A, forall b :e R, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_vector_norm B (f x)) b = 1) -> hl_real_le (hl_vector_norm B (hl_vsum A B s f)) (hl_real_mul (hl_real_of_num (hl_CARD A s)) b) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1400 / VSUM_CLAUSES_NUMSEG   (hash md5:1295cb5808aaf509ade8bf679f999aee)
Theorem hlt_VSUM_CLAUSES_NUMSEG : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, (forall m :e omega, hl_vsum omega A (hl_numseg m (hl_NUMERAL hl_zero)) f = hl_COND (hl_ty_cart R A) (if m = hl_NUMERAL hl_zero then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_vec A (hl_NUMERAL hl_zero))) /\ forall m n :e omega, hl_vsum omega A (hl_numseg m (hl_SUC n)) f = hl_COND (hl_ty_cart R A) (hl_le m (hl_SUC n)) (hl_vector_add A (hl_vsum omega A (hl_numseg m n) f) (f (hl_SUC n))) (hl_vsum omega A (hl_numseg m n) f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1409 / VSUM_CLAUSES_RIGHT   (hash md5:2f3087fd6108f3f13da959ebf2f264ca)
Theorem hlt_VSUM_CLAUSES_RIGHT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: omega, forall m n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ hl_le m n = 1 -> hl_vsum omega N (hl_numseg m n) f = hl_vector_add N (hl_vsum omega N (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (f n).
Admitted.

// HOL Light: Multivariate/vectors.ml:1414 / VSUM_CMUL_NUMSEG   (hash md5:e18a30f48c74965c4d8ba4c65c945724)
Theorem hlt_VSUM_CMUL_NUMSEG : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall c :e R, forall m n :e omega, hl_vsum omega A (hl_numseg m n) (fun x :e omega => hl_vmul A c (f x)) = hl_vmul A c (hl_vsum omega A (hl_numseg m n) f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1418 / VSUM_EQ_NUMSEG   (hash md5:1e2b7c1fa62a4f4c12e2e6f16e04901d)
Theorem hlt_VSUM_EQ_NUMSEG : forall A:set, A <> Empty -> forall f g :e hl_ty_cart R A :^: omega, forall m n :e omega, (forall x :e omega, hl_le m x = 1 /\ hl_le x n = 1 -> f x = g x) -> hl_vsum omega A (hl_numseg m n) f = hl_vsum omega A (hl_numseg m n) g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1425 / VSUM_IMAGE_GEN   (hash md5:9da306ad5dbaf0ea1c73fbf29fde3866)
Theorem hlt_VSUM_IMAGE_GEN : forall C A B:set, C <> Empty -> A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e hl_ty_cart R C :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_vsum A C s g = hl_vsum B C (hl_IMAGE A B f s) (fun y :e B => hl_vsum A C (hl_GSPEC A (fun GEN_PVAR_2770 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2770 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1432 / VSUM_GROUP   (hash md5:0b4eb19635e270148b0517d992044e54)
Theorem hlt_VSUM_GROUP : forall C A B:set, C <> Empty -> A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e hl_ty_cart R C :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_SUBSET B (hl_IMAGE A B f s) t = 1 -> hl_vsum B C t (fun y :e B => hl_vsum A C (hl_GSPEC A (fun GEN_PVAR_2771 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2771 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) g) = hl_vsum A C s g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1438 / VSUM_GROUP_RELATION   (hash md5:29b728eae05ff7d83086718975fe0490)
Theorem hlt_VSUM_GROUP_RELATION : forall C A B:set, C <> Empty -> A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall g :e hl_ty_cart R C :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_exists_unique B (fun y :e B => if hl_IN B y t = 1 /\ R1 x y = 1 then 1 else 0) = 1) -> hl_vsum B C t (fun y :e B => hl_vsum A C (hl_GSPEC A (fun GEN_PVAR_2772 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2772 (if hl_IN A x s = 1 /\ R1 x y = 1 then 1 else 0) x = 1 then 1 else 0)) g) = hl_vsum A C s g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1445 / VSUM_VMUL   (hash md5:87d44f7d4486bf379d92a8d984e4f8c5)
Theorem hlt_VSUM_VMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e R :^: B, forall v :e hl_ty_cart R A, forall s :e 2 :^: B, hl_vmul A (hl_sum B s f) v = hl_vsum B A s (fun x :e B => hl_vmul A (f x) v).
Admitted.

// HOL Light: Multivariate/vectors.ml:1449 / VSUM_DELTA   (hash md5:cb00aa30debf8aef06503b8ba477e438)
Theorem hlt_VSUM_DELTA : forall A B:set, A <> Empty -> B <> Empty -> forall b :e hl_ty_cart R B, forall s :e 2 :^: A, forall a :e A, hl_vsum A B s (fun x :e A => hl_COND (hl_ty_cart R B) (if x = a then 1 else 0) b (hl_vec B (hl_NUMERAL hl_zero))) = hl_COND (hl_ty_cart R B) (hl_IN A a s) b (hl_vec B (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1455 / VSUM_ADD_NUMSEG   (hash md5:5630359192fa04b7731ea51e30908a5a)
Theorem hlt_VSUM_ADD_NUMSEG : forall A:set, A <> Empty -> forall f g :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_vsum omega A (hl_numseg m n) (fun i :e omega => hl_vector_add A (f i) (g i)) = hl_vector_add A (hl_vsum omega A (hl_numseg m n) f) (hl_vsum omega A (hl_numseg m n) g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1459 / VSUM_SUB_NUMSEG   (hash md5:dc5ff3f5bbb8d43199f6d7cb79fe5a34)
Theorem hlt_VSUM_SUB_NUMSEG : forall A:set, A <> Empty -> forall f g :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_vsum omega A (hl_numseg m n) (fun i :e omega => hl_vector_sub A (f i) (g i)) = hl_vector_sub A (hl_vsum omega A (hl_numseg m n) f) (hl_vsum omega A (hl_numseg m n) g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1463 / VSUM_ADD_SPLIT   (hash md5:cfe2012ac08b0139a8947fea949eb205)
Theorem hlt_VSUM_ADD_SPLIT : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_vsum omega A (hl_numseg m (hl_add n p)) f = hl_vector_add A (hl_vsum omega A (hl_numseg m n) f) (hl_vsum omega A (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add n p)) f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1469 / VSUM_VSUM_PRODUCT   (hash md5:c6e87941c59a99d95ed0e1340a7c52ac)
Theorem hlt_VSUM_VSUM_PRODUCT : forall C A B:set, C <> Empty -> A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, forall x :e hl_ty_cart R C :^: B :^: A, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_FINITE B (t i) = 1) -> hl_vsum A C s (fun i :e A => hl_vsum B C (t i) (x i)) = hl_vsum (A :*: B) C (hl_GSPEC (A :*: B) (fun GEN_PVAR_2773 :e A :*: B => if exists i :e A, exists j :e B, hl_SETSPEC (A :*: B) GEN_PVAR_2773 (if hl_IN A i s = 1 /\ hl_IN B j (t i) = 1 then 1 else 0) (hl_pair A B i j) = 1 then 1 else 0)) (hl_GABS (hl_ty_cart R C :^: (A :*: B)) (fun f :e hl_ty_cart R C :^: (A :*: B) => if forall i :e A, forall j :e B, hl_GEQ (hl_ty_cart R C) (f (hl_pair A B i j)) (x i j) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1478 / VSUM_IMAGE_NONZERO   (hash md5:59604b155bba6fb687b2df99b6ed9ce3)
Theorem hlt_VSUM_IMAGE_NONZERO : forall A B N:set, A <> Empty -> B <> Empty -> N <> Empty -> forall d :e hl_ty_cart R N :^: B, forall i :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ (~ x = y /\ i x = i y)) -> d (i x) = hl_vec N (hl_NUMERAL hl_zero)) -> hl_vsum B N (hl_IMAGE A B i s) d = hl_vsum A N s (hl_o B (hl_ty_cart R N) A d i).
Admitted.

// HOL Light: Multivariate/vectors.ml:1494 / VSUM_UNION_NONZERO   (hash md5:2e9f1269d870c22a44b92d5ba422faa7)
Theorem hlt_VSUM_UNION_NONZERO : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ (forall x :e A, hl_IN A x (hl_INTER A s t) = 1 -> f x = hl_vec B (hl_NUMERAL hl_zero))) -> hl_vsum A B (hl_UNION A s t) f = hl_vector_add B (hl_vsum A B s f) (hl_vsum A B t f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1500 / VSUM_UNIONS_NONZERO   (hash md5:1a5fb63d64e7da8a950969dbf3a7d861)
Theorem hlt_VSUM_UNIONS_NONZERO : forall B A:set, B <> Empty -> A <> Empty -> forall f :e hl_ty_cart R B :^: A, forall s :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) s = 1 /\ ((forall t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 -> hl_FINITE A t = 1) /\ (forall t1 t2 :e 2 :^: A, forall x :e A, hl_IN (2 :^: A) t1 s = 1 /\ (hl_IN (2 :^: A) t2 s = 1 /\ (~ t1 = t2 /\ (hl_IN A x t1 = 1 /\ hl_IN A x t2 = 1))) -> f x = hl_vec B (hl_NUMERAL hl_zero))) -> hl_vsum A B (hl_UNIONS A s) f = hl_vsum (2 :^: A) B s (fun t :e 2 :^: A => hl_vsum A B t f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1515 / VSUM_CLAUSES_LEFT   (hash md5:a8d130e58c7dc20caec32800e956ec27)
Theorem hlt_VSUM_CLAUSES_LEFT : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_vsum omega A (hl_numseg m n) f = hl_vector_add A (f m) (hl_vsum omega A (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1520 / VSUM_DIFFS   (hash md5:3e177691d1a319d2547814f91a9f49b2)
Theorem hlt_VSUM_DIFFS : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_vsum omega A (hl_numseg m n) (fun k :e omega => hl_vector_sub A (f k) (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))) = hl_COND (hl_ty_cart R A) (hl_le m n) (hl_vector_sub A (f m) (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_vec A (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1529 / VSUM_DIFFS_ALT   (hash md5:1109b44a35e7b9b70c850f7c2a023686)
Theorem hlt_VSUM_DIFFS_ALT : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_vsum omega A (hl_numseg m n) (fun k :e omega => hl_vector_sub A (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k)) = hl_COND (hl_ty_cart R A) (hl_le m n) (hl_vector_sub A (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (f m)) (hl_vec A (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1536 / VSUM_DELETE_CASES   (hash md5:93fc2c389d11dec3efd2e7ce90a2d95a)
Theorem hlt_VSUM_DELETE_CASES : forall B A:set, B <> Empty -> A <> Empty -> forall x :e A, forall f :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_vsum A B (hl_DELETE A s x) f = hl_COND (hl_ty_cart R B) (hl_IN A x s) (hl_vector_sub B (hl_vsum A B s f) (f x)) (hl_vsum A B s f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1546 / VSUM_EQ_GENERAL   (hash md5:b69805cd6005f9feb16c2001f51bc540)
Theorem hlt_VSUM_EQ_GENERAL : forall A B N:set, A <> Empty -> B <> Empty -> N <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e hl_ty_cart R N :^: A, forall g :e hl_ty_cart R N :^: B, forall h :e B :^: A, (forall y :e B, hl_IN B y t = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ h x = y then 1 else 0) = 1) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ g (h x) = f x) -> hl_vsum A N s f = hl_vsum B N t g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1555 / VSUM_EQ_GENERAL_INVERSES   (hash md5:acc4ccf94741aeb11b191fd55665f0ab)
Theorem hlt_VSUM_EQ_GENERAL_INVERSES : forall A B N:set, A <> Empty -> B <> Empty -> N <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e hl_ty_cart R N :^: A, forall g :e hl_ty_cart R N :^: B, forall h :e B :^: A, forall k :e A :^: B, (forall y :e B, hl_IN B y t = 1 -> hl_IN A (k y) s = 1 /\ h (k y) = y) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ (k (h x) = x /\ g (h x) = f x)) -> hl_vsum A N s f = hl_vsum B N t g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1564 / VSUM_NORM_ALLSUBSETS_BOUND   (hash md5:4c2d8740a96c39a85c8d7b4a5f724450)
Theorem hlt_VSUM_NORM_ALLSUBSETS_BOUND : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall p :e 2 :^: A, forall e1 :e R, hl_FINITE A p = 1 /\ (forall q :e 2 :^: A, hl_SUBSET A q p = 1 -> hl_real_le (hl_vector_norm N (hl_vsum A N q f)) e1 = 1) -> hl_real_le (hl_sum A p (fun x :e A => hl_vector_norm N (f x))) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_of_num (hl_dimindex N (hl_UNIV N))) e1)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1610 / DOT_LSUM   (hash md5:665ad814e6825225cd3a3baa272638c1)
Theorem hlt_DOT_LSUM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, forall f :e hl_ty_cart R A :^: B, forall y :e hl_ty_cart R A, hl_FINITE B s = 1 -> hl_dot A (hl_vsum B A s f) y = hl_sum B s (fun x :e B => hl_dot A (f x) y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1616 / DOT_RSUM   (hash md5:737fb29ac8f7ed2e0fd3604f5a228d12)
Theorem hlt_DOT_RSUM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, forall f :e hl_ty_cart R A :^: B, forall x :e hl_ty_cart R A, hl_FINITE B s = 1 -> hl_dot A x (hl_vsum B A s f) = hl_sum B s (fun y :e B => hl_dot A x (f y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1622 / VSUM_OFFSET   (hash md5:aaff6bd08a959e3296f76a3f42b96e3e)
Theorem hlt_VSUM_OFFSET : forall A:set, A <> Empty -> forall p :e omega, forall f :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_vsum omega A (hl_numseg (hl_add m p) (hl_add n p)) f = hl_vsum omega A (hl_numseg m n) (fun i :e omega => f (hl_add i p)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1626 / VSUM_OFFSET_0   (hash md5:d5639f2f2046a5568bb3a37bfb16fa8d)
Theorem hlt_VSUM_OFFSET_0 : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_vsum omega A (hl_numseg m n) f = hl_vsum omega A (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => f (hl_add i m)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1630 / VSUM_TRIV_NUMSEG   (hash md5:1debcd5014547c5aa977115f1ff53686)
Theorem hlt_VSUM_TRIV_NUMSEG : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_lt n m = 1 -> hl_vsum omega A (hl_numseg m n) f = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:1634 / VSUM_CONST_NUMSEG   (hash md5:b182f281ada115fbe38c701b98b1e964)
Theorem hlt_VSUM_CONST_NUMSEG : forall A:set, A <> Empty -> forall c :e hl_ty_cart R A, forall m n :e omega, hl_vsum omega A (hl_numseg m n) (fun n1 :e omega => c) = hl_vmul A (hl_real_of_num (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m)) c.
Admitted.

// HOL Light: Multivariate/vectors.ml:1638 / VSUM_SUC   (hash md5:d60cffbb0b5c040232bbe62e3681153f)
Theorem hlt_VSUM_SUC : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_vsum omega A (hl_numseg (hl_SUC n) (hl_SUC m)) f = hl_vsum omega A (hl_numseg n m) (hl_o omega (hl_ty_cart R A) omega f hl_SUC).
Admitted.

// HOL Light: Multivariate/vectors.ml:1646 / VSUM_BIJECTION   (hash md5:f01a9f42ad02a518ee5f9d8db3c814b5)
Theorem hlt_VSUM_BIJECTION : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall p :e A :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall y :e A, hl_IN A y s = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ p x = y then 1 else 0) = 1) -> hl_vsum A N s f = hl_vsum A N s (hl_o A (hl_ty_cart R N) A f p).
Admitted.

// HOL Light: Multivariate/vectors.ml:1655 / VSUM_PARTIAL_SUC   (hash md5:d7d47844c4478a55ab2643643cb08251)
Theorem hlt_VSUM_PARTIAL_SUC : forall N:set, N <> Empty -> forall f :e R :^: omega, forall g :e hl_ty_cart R N :^: omega, forall m n :e omega, hl_vsum omega N (hl_numseg m n) (fun k :e omega => hl_vmul N (f k) (hl_vector_sub N (g (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (g k))) = hl_COND (hl_ty_cart R N) (hl_le m n) (hl_vector_sub N (hl_vector_sub N (hl_vmul N (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (g (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_vmul N (f m) (g m))) (hl_vsum omega N (hl_numseg m n) (fun k :e omega => hl_vmul N (hl_real_sub (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k)) (g (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))))) (hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1672 / VSUM_PARTIAL_PRE   (hash md5:cfdf1dff7185c1beba06f71bb1000269)
Theorem hlt_VSUM_PARTIAL_PRE : forall N:set, N <> Empty -> forall f :e R :^: omega, forall g :e hl_ty_cart R N :^: omega, forall m n :e omega, hl_vsum omega N (hl_numseg m n) (fun k :e omega => hl_vmul N (f k) (hl_vector_sub N (g k) (g (hl_sub k (hl_NUMERAL (hl_BIT1 hl_zero)))))) = hl_COND (hl_ty_cart R N) (hl_le m n) (hl_vector_sub N (hl_vector_sub N (hl_vmul N (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (g n)) (hl_vmul N (f m) (g (hl_sub m (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_vsum omega N (hl_numseg m n) (fun k :e omega => hl_vmul N (hl_real_sub (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k)) (g k)))) (hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1684 / VSUM_COMBINE_L   (hash md5:bc5802788b80f40dd79ef918ae607305)
Theorem hlt_VSUM_COMBINE_L : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall m n p :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ (hl_le m n = 1 /\ hl_le n (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> hl_vector_add A (hl_vsum omega A (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (hl_vsum omega A (hl_numseg n p) f) = hl_vsum omega A (hl_numseg m p) f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1690 / VSUM_COMBINE_R   (hash md5:7400a84216d2fbe27f72b74989f9f07d)
Theorem hlt_VSUM_COMBINE_R : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_le n p = 1 -> hl_vector_add A (hl_vsum omega A (hl_numseg m n) f) (hl_vsum omega A (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) p) f) = hl_vsum omega A (hl_numseg m p) f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1696 / VSUM_INJECTION   (hash md5:53fc2650893801cf9cffcce2080e9eea)
Theorem hlt_VSUM_INJECTION : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ p x = p y) -> x = y)) -> hl_vsum A B s (hl_o A (hl_ty_cart R B) A f p) = hl_vsum A B s f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1705 / VSUM_SWAP   (hash md5:eacffdab9b5be344d029aafc4ef9314e)
Theorem hlt_VSUM_SWAP : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R A :^: B :^: C, forall s :e 2 :^: C, forall t :e 2 :^: B, hl_FINITE C s = 1 /\ hl_FINITE B t = 1 -> hl_vsum C A s (fun i :e C => hl_vsum B A t (f i)) = hl_vsum B A t (fun j :e B => hl_vsum C A s (fun i :e C => f i j)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1713 / VSUM_SWAP_NUMSEG   (hash md5:8db7518cbabdeec10a653eae311b725b)
Theorem hlt_VSUM_SWAP_NUMSEG : forall A:set, A <> Empty -> forall a b c d :e omega, forall f :e hl_ty_cart R A :^: omega :^: omega, hl_vsum omega A (hl_numseg a b) (fun i :e omega => hl_vsum omega A (hl_numseg c d) (f i)) = hl_vsum omega A (hl_numseg c d) (fun j :e omega => hl_vsum omega A (hl_numseg a b) (fun i :e omega => f i j)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1719 / VSUM_ADD_GEN   (hash md5:fcfc0cec2cac652a7d1f50e49ffe03ab)
Theorem hlt_VSUM_ADD_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_2776 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2776 (if hl_IN A x s = 1 /\ ~ f x = hl_vec B (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_2777 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2777 (if hl_IN A x s = 1 /\ ~ g x = hl_vec B (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_vsum A B s (fun x :e A => hl_vector_add B (f x) (g x)) = hl_vector_add B (hl_vsum A B s f) (hl_vsum A B s g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1734 / VSUM_CASES_1   (hash md5:37adc4cd4fab6d80f5c852bda317086c)
Theorem hlt_VSUM_CASES_1 : forall A B:set, A <> Empty -> B <> Empty -> forall y :e hl_ty_cart R B, forall f :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> hl_vsum A B s (fun x :e A => hl_COND (hl_ty_cart R B) (if x = a then 1 else 0) y (f x)) = hl_vector_add B (hl_vsum A B s f) (hl_vector_sub B y (f a)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1742 / VSUM_SING_NUMSEG   (hash md5:d025d2495c78345b9e3fdf0a52e528b1)
Theorem hlt_VSUM_SING_NUMSEG : forall A:set, A <> Empty -> forall n :e omega, forall f :e hl_ty_cart R A :^: omega, hl_vsum omega A (hl_numseg n n) f = f n.
Admitted.

// HOL Light: Multivariate/vectors.ml:1746 / VSUM_1   (hash md5:31e969d11f77e93bff272a46c3d2a142)
Theorem hlt_VSUM_1 : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: omega, hl_vsum omega A (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) f = f (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1750 / VSUM_2   (hash md5:cc6e788b8de45c5993a71c8d95728679)
Theorem hlt_VSUM_2 : forall A:set, A <> Empty -> forall t :e hl_ty_cart R A :^: omega, hl_vsum omega A (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) t = hl_vector_add A (t (hl_NUMERAL (hl_BIT1 hl_zero))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1755 / VSUM_3   (hash md5:1aa2e494a101a9194dc2bd372fa8a35a)
Theorem hlt_VSUM_3 : forall A:set, A <> Empty -> forall t :e hl_ty_cart R A :^: omega, hl_vsum omega A (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) t = hl_vector_add A (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vector_add A (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1760 / VSUM_4   (hash md5:7e2d2449f4eb6dd8036238ad37019b4f)
Theorem hlt_VSUM_4 : forall A:set, A <> Empty -> forall t :e hl_ty_cart R A :^: omega, hl_vsum omega A (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) t = hl_vector_add A (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vector_add A (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vector_add A (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1765 / VSUM_PAIR   (hash md5:8e31fa38e56c77d2c50e00eb126c4888)
Theorem hlt_VSUM_PAIR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: omega, forall m n :e omega, hl_vsum omega N (hl_numseg (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero)))) f = hl_vsum omega N (hl_numseg m n) (fun i :e omega => hl_vector_add N (f (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i)) (f (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1770 / VSUM_PAIR_0   (hash md5:ece30572e8fb9df78bc629c12e213c59)
Theorem hlt_VSUM_PAIR_0 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: omega, forall n :e omega, hl_vsum omega N (hl_numseg (hl_NUMERAL hl_zero) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero)))) f = hl_vsum omega N (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_vector_add N (f (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i)) (f (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1776 / VSUM_REFLECT   (hash md5:92419684111ad962acb0e5410c93dff9)
Theorem hlt_VSUM_REFLECT : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A :^: omega, forall m n :e omega, hl_vsum omega A (hl_numseg m n) x = hl_COND (hl_ty_cart R A) (hl_lt n m) (hl_vec A (hl_NUMERAL hl_zero)) (hl_vsum omega A (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => x (hl_sub n i))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1837 / basis   (hash md5:9ef8710d45efa0a95b84ec76a297f8d7)
Theorem hlt_basis_thm : forall A:set, A <> Empty -> forall k :e omega, hl_basis A k = hl_lambda R A (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1840 / NORM_BASIS   (hash md5:a0241d4254e837efdf23624583ac8d38)
Theorem hlt_NORM_BASIS : forall N:set, N <> Empty -> forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vector_norm N (hl_basis N k) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1853 / NORM_BASIS_1   (hash md5:b6ab47b4203c6978b086d5705f3fe438)
Theorem hlt_NORM_BASIS_1 : forall A:set, A <> Empty -> hl_vector_norm A (hl_basis A (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1858 / VECTOR_CHOOSE_SIZE   (hash md5:4467f1b62d9e7656564f6583da249c8d)
Theorem hlt_VECTOR_CHOOSE_SIZE : forall N:set, N <> Empty -> forall c :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 -> exists x :e hl_ty_cart R N, hl_vector_norm N x = c.
Admitted.

// HOL Light: Multivariate/vectors.ml:1863 / VECTOR_CHOOSE_DIST   (hash md5:3aa8a245219a74fc29102a67d0ac440d)
Theorem hlt_VECTOR_CHOOSE_DIST : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall e1 :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e hl_ty_cart R N, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y) = e1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1871 / BASIS_INJ   (hash md5:52544faf0e2d9ff93a164e17870f8759)
Theorem hlt_BASIS_INJ : forall N:set, N <> Empty -> forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_basis N i = hl_basis N j))) -> i = j.
Admitted.

// HOL Light: Multivariate/vectors.ml:1881 / BASIS_INJ_EQ   (hash md5:f2eef47b74700cc560b8a3aa2aef28d9)
Theorem hlt_BASIS_INJ_EQ : forall N:set, N <> Empty -> forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> (hl_basis N i = hl_basis N j <-> i = j).
Admitted.

// HOL Light: Multivariate/vectors.ml:1886 / BASIS_NE   (hash md5:ced669e6e9aff627434cf4427b0cdb07)
Theorem hlt_BASIS_NE : forall N:set, N <> Empty -> forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ i = j))) -> ~ hl_basis N i = hl_basis N j.
Admitted.

// HOL Light: Multivariate/vectors.ml:1893 / BASIS_COMPONENT   (hash md5:5a83d2f7aa4a8e63a07f1d46694faba7)
Theorem hlt_BASIS_COMPONENT : forall N:set, N <> Empty -> forall k i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vindex R N (hl_basis N k) i = hl_COND R (if i = k then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1898 / BASIS_EXPANSION   (hash md5:a72bf3cf5015bafc62c89aa98bf21549)
Theorem hlt_BASIS_EXPANSION : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vmul N (hl_vindex R N x i) (hl_basis N i)) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1906 / BASIS_EXPANSION_UNIQUE   (hash md5:d426a1e6d4a804157adfb73cff4151d4)
Theorem hlt_BASIS_EXPANSION_UNIQUE : forall N:set, N <> Empty -> forall f :e R :^: omega, forall x :e hl_ty_cart R N, hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vmul N (f i) (hl_basis N i)) = x <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> f i = hl_vindex R N x i.
Admitted.

// HOL Light: Multivariate/vectors.ml:1915 / DOT_BASIS   (hash md5:5eca02c557800eeb99a0e3cdde97e60d)
Theorem hlt_DOT_BASIS : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_dot N (hl_basis N i) x = hl_vindex R N x i /\ hl_dot N x (hl_basis N i) = hl_vindex R N x i.
Admitted.

// HOL Light: Multivariate/vectors.ml:1924 / DOT_BASIS_BASIS   (hash md5:58f14d6ea5a5c4ba42251d9b58a58013)
Theorem hlt_DOT_BASIS_BASIS : forall N:set, N <> Empty -> forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_dot N (hl_basis N i) (hl_basis N j) = hl_COND R (if i = j then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1930 / DOT_BASIS_BASIS_UNEQUAL   (hash md5:d1b7e0b1bad07d843ec4b1166e7b3091)
Theorem hlt_DOT_BASIS_BASIS_UNEQUAL : forall A:set, A <> Empty -> forall i j :e omega, ~ i = j -> hl_dot A (hl_basis A i) (hl_basis A j) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:1935 / BASIS_EQ_0   (hash md5:92c3b7b062bf3fb8201f25821cc7a4f3)
Theorem hlt_BASIS_EQ_0 : forall N:set, N <> Empty -> forall i :e omega, hl_basis N i = hl_vec N (hl_NUMERAL hl_zero) <-> ~ hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1940 / BASIS_NONZERO   (hash md5:c435e3ec733f0bc41ad16250fd7b137c)
Theorem hlt_BASIS_NONZERO : forall N:set, N <> Empty -> forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> ~ hl_basis N k = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:1945 / VECTOR_EQ_LDOT   (hash md5:353e816a457a3415df8fce625f0d7987)
Theorem hlt_VECTOR_EQ_LDOT : forall A:set, A <> Empty -> forall y z :e hl_ty_cart R A, (forall x :e hl_ty_cart R A, hl_dot A x y = hl_dot A x z) <-> y = z.
Admitted.

// HOL Light: Multivariate/vectors.ml:1950 / VECTOR_EQ_RDOT   (hash md5:45d424b09186d8c9b73d9fee7932dae6)
Theorem hlt_VECTOR_EQ_RDOT : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, (forall z :e hl_ty_cart R A, hl_dot A x z = hl_dot A y z) <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:1959 / orthogonal   (hash md5:0b2e4b5533a210f5ed49abd04f58e0d4)
Theorem hlt_orthogonal_thm : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_orthogonal A x y = 1 <-> hl_dot A x y = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:1962 / ORTHOGONAL_0   (hash md5:0ea0c7ec28a97f2cd2adbd581ec6c387)
Theorem hlt_ORTHOGONAL_0 : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_orthogonal A (hl_vec A (hl_NUMERAL hl_zero)) x = 1 /\ hl_orthogonal A x (hl_vec A (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1966 / ORTHOGONAL_REFL   (hash md5:3214c49673de596a4e05a2cd89de15c3)
Theorem hlt_ORTHOGONAL_REFL : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_orthogonal A x x = 1 <-> x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:1970 / ORTHOGONAL_SYM   (hash md5:3dc1f2e6f320341a551942d24d8203f2)
Theorem hlt_ORTHOGONAL_SYM : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_orthogonal A x y = 1 <-> hl_orthogonal A y x = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1974 / ORTHOGONAL_LNEG   (hash md5:f817d000e466d84d79a070ef8266f78b)
Theorem hlt_ORTHOGONAL_LNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_orthogonal A (hl_vector_neg A x) y = 1 <-> hl_orthogonal A x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1978 / ORTHOGONAL_RNEG   (hash md5:d235872853ef7662a297728fc6bb6790)
Theorem hlt_ORTHOGONAL_RNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_orthogonal A x (hl_vector_neg A y) = 1 <-> hl_orthogonal A x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1982 / ORTHOGONAL_MUL   (hash md5:af5fdbab2a166da0fc4ae062ae44a788)
Theorem hlt_ORTHOGONAL_MUL : forall N:set, N <> Empty -> (forall a :e R, forall x y :e hl_ty_cart R N, hl_orthogonal N (hl_vmul N a x) y = 1 <-> a = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_orthogonal N x y = 1) /\ forall a :e R, forall x y :e hl_ty_cart R N, hl_orthogonal N x (hl_vmul N a y) = 1 <-> a = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_orthogonal N x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1987 / ORTHOGONAL_BASIS   (hash md5:252a31c6b1b15d2dba810051080e120a)
Theorem hlt_ORTHOGONAL_BASIS : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> (hl_orthogonal N (hl_basis N i) x = 1 <-> hl_vindex R N x i = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1994 / ORTHOGONAL_BASIS_BASIS   (hash md5:f3888936108ce37c9640a251afcd944b)
Theorem hlt_ORTHOGONAL_BASIS_BASIS : forall N:set, N <> Empty -> forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> (hl_orthogonal N (hl_basis N i) (hl_basis N j) = 1 <-> ~ i = j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2001 / ORTHOGONAL_CLAUSES   (hash md5:00079e60b6700190c225100b3865b544)
Theorem hlt_ORTHOGONAL_CLAUSES : forall A B C D E F G H I J:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> F <> Empty -> G <> Empty -> H <> Empty -> I <> Empty -> J <> Empty -> (forall a :e hl_ty_cart R A, hl_orthogonal A a (hl_vec A (hl_NUMERAL hl_zero)) = 1) /\ ((forall a x :e hl_ty_cart R B, forall c :e R, hl_orthogonal B a x = 1 -> hl_orthogonal B a (hl_vmul B c x) = 1) /\ ((forall a x :e hl_ty_cart R E, hl_orthogonal E a x = 1 -> hl_orthogonal E a (hl_vector_neg E x) = 1) /\ ((forall a x y :e hl_ty_cart R F, hl_orthogonal F a x = 1 /\ hl_orthogonal F a y = 1 -> hl_orthogonal F a (hl_vector_add F x y) = 1) /\ ((forall a x y :e hl_ty_cart R G, hl_orthogonal G a x = 1 /\ hl_orthogonal G a y = 1 -> hl_orthogonal G a (hl_vector_sub G x y) = 1) /\ ((forall a :e hl_ty_cart R C, hl_orthogonal C (hl_vec C (hl_NUMERAL hl_zero)) a = 1) /\ ((forall a x :e hl_ty_cart R D, forall c :e R, hl_orthogonal D x a = 1 -> hl_orthogonal D (hl_vmul D c x) a = 1) /\ ((forall a x :e hl_ty_cart R H, hl_orthogonal H x a = 1 -> hl_orthogonal H (hl_vector_neg H x) a = 1) /\ ((forall a x y :e hl_ty_cart R I, hl_orthogonal I x a = 1 /\ hl_orthogonal I y a = 1 -> hl_orthogonal I (hl_vector_add I x y) a = 1) /\ forall a x y :e hl_ty_cart R J, hl_orthogonal J x a = 1 /\ hl_orthogonal J y a = 1 -> hl_orthogonal J (hl_vector_sub J x y) a = 1)))))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2016 / ORTHOGONAL_RVSUM   (hash md5:a511da974afc7aa229cc770a52e19e26)
Theorem hlt_ORTHOGONAL_RVSUM : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall s :e 2 :^: A, forall x :e hl_ty_cart R N, hl_FINITE A s = 1 /\ (forall y :e A, hl_IN A y s = 1 -> hl_orthogonal N x (f y) = 1) -> hl_orthogonal N x (hl_vsum A N s f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2025 / ORTHOGONAL_LVSUM   (hash md5:cadba42cccc1494e85876df1c50eeb5d)
Theorem hlt_ORTHOGONAL_LVSUM : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall s :e 2 :^: A, forall y :e hl_ty_cart R N, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_orthogonal N (f x) y = 1) -> hl_orthogonal N (hl_vsum A N s f) y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2034 / NORM_ADD_PYTHAGOREAN   (hash md5:7e23f50a343add159247ed9b694d7238)
Theorem hlt_NORM_ADD_PYTHAGOREAN : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_orthogonal N a b = 1 -> hl_real_pow (hl_vector_norm N (hl_vector_add N a b)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_add (hl_real_pow (hl_vector_norm N a) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_vector_norm N b) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2041 / NORM_VSUM_PYTHAGOREAN   (hash md5:a22b513f789d260d40aa3906559defd2)
Theorem hlt_NORM_VSUM_PYTHAGOREAN : forall A N:set, A <> Empty -> N <> Empty -> forall k :e 2 :^: A, forall u :e hl_ty_cart R N :^: A, hl_FINITE A k = 1 /\ hl_pairwise A (fun i :e A => fun j :e A => hl_orthogonal N (u i) (u j)) k = 1 -> hl_real_pow (hl_vector_norm N (hl_vsum A N k u)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_sum A k (fun i :e A => hl_real_pow (hl_vector_norm N (u i)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2059 / VECTOR_1   (hash md5:6c7419aaee5db089eb78b8c2d0ca1747)
Theorem hlt_VECTOR_1 : forall A:set, A <> Empty -> forall x :e A, hl_vindex A 1 (hl_vector A 1 (hl_CONS A x (hl_NIL A))) (hl_NUMERAL (hl_BIT1 hl_zero)) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:2063 / VECTOR_2   (hash md5:6f54e1e85a2c30bcc35e7211c4ef65ac)
Theorem hlt_VECTOR_2 : forall A:set, A <> Empty -> forall x y :e A, hl_vindex A (idx_n (2 * dimindex 1)) (hl_vector A (idx_n (2 * dimindex 1)) (hl_CONS A x (hl_CONS A y (hl_NIL A)))) (hl_NUMERAL (hl_BIT1 hl_zero)) = x /\ hl_vindex A (idx_n (2 * dimindex 1)) (hl_vector A (idx_n (2 * dimindex 1)) (hl_CONS A x (hl_CONS A y (hl_NIL A)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:2069 / VECTOR_3   (hash md5:b2ea65c18d59dcce7f8e80f8ab158c88)
Theorem hlt_VECTOR_3 : forall A:set, A <> Empty -> forall x y z :e A, hl_vindex A (idx_n (2 * dimindex 1 + 1)) (hl_vector A (idx_n (2 * dimindex 1 + 1)) (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A))))) (hl_NUMERAL (hl_BIT1 hl_zero)) = x /\ (hl_vindex A (idx_n (2 * dimindex 1 + 1)) (hl_vector A (idx_n (2 * dimindex 1 + 1)) (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = y /\ hl_vindex A (idx_n (2 * dimindex 1 + 1)) (hl_vector A (idx_n (2 * dimindex 1 + 1)) (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2076 / VECTOR_4   (hash md5:887fb41cb059269015f23840fe8c3807)
Theorem hlt_VECTOR_4 : forall A:set, A <> Empty -> forall w x y z :e A, hl_vindex A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS A w (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A)))))) (hl_NUMERAL (hl_BIT1 hl_zero)) = w /\ (hl_vindex A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS A w (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = x /\ (hl_vindex A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS A w (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = y /\ hl_vindex A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS A w (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = z)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2084 / FORALL_VECTOR_1   (hash md5:df95b93b6850d33a9247d6c5dee481f1)
Theorem hlt_FORALL_VECTOR_1 : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_cart A 1, (forall v :e hl_ty_cart A 1, P v = 1) <-> forall x :e A, P (hl_vector A 1 (hl_CONS A x (hl_NIL A))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2091 / FORALL_VECTOR_2   (hash md5:025f9f70d5ae760e9fbc71f1a00f8a8d)
Theorem hlt_FORALL_VECTOR_2 : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_cart A (idx_n (2 * dimindex 1)), (forall v :e hl_ty_cart A (idx_n (2 * dimindex 1)), P v = 1) <-> forall x y :e A, P (hl_vector A (idx_n (2 * dimindex 1)) (hl_CONS A x (hl_CONS A y (hl_NIL A)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2098 / FORALL_VECTOR_3   (hash md5:fc44aa5fddebf68c222a0440a6a1cf03)
Theorem hlt_FORALL_VECTOR_3 : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_cart A (idx_n (2 * dimindex 1 + 1)), (forall v :e hl_ty_cart A (idx_n (2 * dimindex 1 + 1)), P v = 1) <-> forall x y z :e A, P (hl_vector A (idx_n (2 * dimindex 1 + 1)) (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2106 / FORALL_VECTOR_4   (hash md5:15da557f668e1c346497837801271149)
Theorem hlt_FORALL_VECTOR_4 : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_cart A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), (forall v :e hl_ty_cart A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), P v = 1) <-> forall w x y z :e A, P (hl_vector A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS A w (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A)))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2114 / EXISTS_VECTOR_1   (hash md5:89221940c60151935e699eda7f8486b8)
Theorem hlt_EXISTS_VECTOR_1 : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_cart A 1, (exists v :e hl_ty_cart A 1, P v = 1) <-> exists x :e A, P (hl_vector A 1 (hl_CONS A x (hl_NIL A))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2119 / EXISTS_VECTOR_2   (hash md5:2673a43720e33c9f34698aee67dfcd1b)
Theorem hlt_EXISTS_VECTOR_2 : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_cart A (idx_n (2 * dimindex 1)), (exists v :e hl_ty_cart A (idx_n (2 * dimindex 1)), P v = 1) <-> exists x y :e A, P (hl_vector A (idx_n (2 * dimindex 1)) (hl_CONS A x (hl_CONS A y (hl_NIL A)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2124 / EXISTS_VECTOR_3   (hash md5:0aa1508853de995481e37509cffdb4af)
Theorem hlt_EXISTS_VECTOR_3 : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_cart A (idx_n (2 * dimindex 1 + 1)), (exists v :e hl_ty_cart A (idx_n (2 * dimindex 1 + 1)), P v = 1) <-> exists x y z :e A, P (hl_vector A (idx_n (2 * dimindex 1 + 1)) (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2129 / EXISTS_VECTOR_4   (hash md5:7df24b805384f59c877a22e872b78d7f)
Theorem hlt_EXISTS_VECTOR_4 : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_cart A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), (exists v :e hl_ty_cart A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), P v = 1) <-> exists w x y z :e A, P (hl_vector A (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS A w (hl_CONS A x (hl_CONS A y (hl_CONS A z (hl_NIL A)))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2134 / VECTOR_EXPAND_1   (hash md5:5c91921ded0d284cfc3de0910ba81e1c)
Theorem hlt_VECTOR_EXPAND_1 : forall x :e hl_ty_cart R 1, x = hl_vector R 1 (hl_CONS R (hl_vindex R 1 x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NIL R)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2138 / VECTOR_EXPAND_2   (hash md5:b217cd83d7d6016a60d4bd8e63d3fee8)
Theorem hlt_VECTOR_EXPAND_2 : forall x :e hl_ty_cart R (idx_n (2 * dimindex 1)), x = hl_vector R (idx_n (2 * dimindex 1)) (hl_CONS R (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_CONS R (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NIL R))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2142 / VECTOR_EXPAND_3   (hash md5:3f8048d0fd1ad83319bcac68de722b90)
Theorem hlt_VECTOR_EXPAND_3 : forall x :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), x = hl_vector R (idx_n (2 * dimindex 1 + 1)) (hl_CONS R (hl_vindex R (idx_n (2 * dimindex 1 + 1)) x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_CONS R (hl_vindex R (idx_n (2 * dimindex 1 + 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_CONS R (hl_vindex R (idx_n (2 * dimindex 1 + 1)) x (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NIL R)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2146 / VECTOR_EXPAND_4   (hash md5:61f2709b34a47978a7d2638b3821abc8)
Theorem hlt_VECTOR_EXPAND_4 : forall x :e hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), x = hl_vector R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS R (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) x (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_CONS R (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_CONS R (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) x (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_CONS R (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) x (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NIL R))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2154 / linear   (hash md5:5fe09edb5a81be186bc7ca49079e1cdb)
Theorem hlt_linear_thm : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 <-> (forall x y :e hl_ty_cart R M, f (hl_vector_add M x y) = hl_vector_add N (f x) (f y)) /\ forall c :e R, forall x :e hl_ty_cart R M, f (hl_vmul M c x) = hl_vmul N c (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2159 / LINEAR_COMPOSE_CMUL   (hash md5:f816cb042c4e0b2b1d384e6f6f9ded1a)
Theorem hlt_LINEAR_COMPOSE_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall c :e R, hl_linear B A f = 1 -> hl_linear B A (fun x :e hl_ty_cart R B => hl_vmul A c (f x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2163 / LINEAR_COMPOSE_NEG   (hash md5:d21d5ec25b28dfc6ae685a44a895337f)
Theorem hlt_LINEAR_COMPOSE_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 -> hl_linear A B (fun x :e hl_ty_cart R A => hl_vector_neg B (f x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2167 / LINEAR_COMPOSE_NEG_EQ   (hash md5:b0947c13e347e6d5ee2b9f9d8fb6c44e)
Theorem hlt_LINEAR_COMPOSE_NEG_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) = 1 <-> hl_linear M N f = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2174 / LINEAR_COMPOSE_ADD   (hash md5:ce17d4e893dc1707cdad2667904fdb43)
Theorem hlt_LINEAR_COMPOSE_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 /\ hl_linear A B g = 1 -> hl_linear A B (fun x :e hl_ty_cart R A => hl_vector_add B (f x) (g x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2178 / LINEAR_COMPOSE_SUB   (hash md5:b094dbd08b0e4c60e36bd62885014eec)
Theorem hlt_LINEAR_COMPOSE_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 /\ hl_linear A B g = 1 -> hl_linear A B (fun x :e hl_ty_cart R A => hl_vector_sub B (f x) (g x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2182 / LINEAR_COMPOSE   (hash md5:e0b9f07b4aaa811debbf91e705f242a1)
Theorem hlt_LINEAR_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall g :e hl_ty_cart R C :^: hl_ty_cart R B, hl_linear A B f = 1 /\ hl_linear B C g = 1 -> hl_linear A C (hl_o (hl_ty_cart R B) (hl_ty_cart R C) (hl_ty_cart R A) g f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2186 / LINEAR_ID   (hash md5:2e543facfe7ab95edd88d1f85250a0ba)
Theorem hlt_LINEAR_ID : forall A:set, A <> Empty -> hl_linear A A (fun x :e hl_ty_cart R A => x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2190 / LINEAR_I   (hash md5:2c6cc5822ebf6fab9a04537a0fc283b7)
Theorem hlt_LINEAR_I : forall A:set, A <> Empty -> hl_linear A A (hl_I (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2194 / LINEAR_ZERO   (hash md5:3e85588f99c027419020a9c3bb2a2e92)
Theorem hlt_LINEAR_ZERO : forall A B:set, A <> Empty -> B <> Empty -> hl_linear A B (fun x :e hl_ty_cart R A => hl_vec B (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2198 / LINEAR_NEGATION   (hash md5:55c0379c34824a8dde094e27cf754430)
Theorem hlt_LINEAR_NEGATION : forall A:set, A <> Empty -> hl_linear A A (hl_vector_neg A) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2202 / LINEAR_COMPOSE_VSUM   (hash md5:bf5927073b18c6151a50ecf419dc42f9)
Theorem hlt_LINEAR_COMPOSE_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B :^: C, forall s :e 2 :^: C, hl_FINITE C s = 1 /\ (forall a :e C, hl_IN C a s = 1 -> hl_linear B A (f a) = 1) -> hl_linear B A (fun x :e hl_ty_cart R B => hl_vsum C A s (fun a :e C => f a x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2210 / LINEAR_VMUL_COMPONENT   (hash md5:5557808ec6606110791472ee343e833d)
Theorem hlt_LINEAR_VMUL_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall v :e hl_ty_cart R A, forall k :e omega, hl_linear M N f = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> hl_linear M A (fun x :e hl_ty_cart R M => hl_vmul A (hl_vindex R N (f x) k) v) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2217 / LINEAR_0   (hash md5:9b93122294d87d1529f3bf7c5635604c)
Theorem hlt_LINEAR_0 : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 -> f (hl_vec A (hl_NUMERAL hl_zero)) = hl_vec B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2221 / LINEAR_CMUL   (hash md5:bc7d37b0bf3ae1f45ec2969bf4512d1d)
Theorem hlt_LINEAR_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall c :e R, forall x :e hl_ty_cart R A, hl_linear A B f = 1 -> f (hl_vmul A c x) = hl_vmul B c (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2225 / LINEAR_NEG   (hash md5:d8a2430bebb254206193a53f20d77511)
Theorem hlt_LINEAR_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_linear A B f = 1 -> f (hl_vector_neg A x) = hl_vector_neg B (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2229 / LINEAR_ADD   (hash md5:80767b008813f5a667ce3d3fa0d64983)
Theorem hlt_LINEAR_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall x y :e hl_ty_cart R A, hl_linear A B f = 1 -> f (hl_vector_add A x y) = hl_vector_add B (f x) (f y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2233 / LINEAR_SUB   (hash md5:cd13c97ced5bd5ecbcdd51a8b5489164)
Theorem hlt_LINEAR_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall x y :e hl_ty_cart R A, hl_linear A B f = 1 -> f (hl_vector_sub A x y) = hl_vector_sub B (f x) (f y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2237 / LINEAR_VSUM   (hash md5:9893a80d3656ebaa1991be330f182b0b)
Theorem hlt_LINEAR_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall g :e hl_ty_cart R A :^: C, forall s :e 2 :^: C, hl_linear A B f = 1 /\ hl_FINITE C s = 1 -> f (hl_vsum C A s g) = hl_vsum C B s (hl_o (hl_ty_cart R A) (hl_ty_cart R B) C f g).
Admitted.

// HOL Light: Multivariate/vectors.ml:2244 / LINEAR_VSUM_MUL   (hash md5:5349b184fac547b93c62d7c22a964727)
Theorem hlt_LINEAR_VSUM_MUL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: C, forall c :e R :^: C, forall v :e hl_ty_cart R A :^: C, hl_linear A B f = 1 /\ hl_FINITE C s = 1 -> f (hl_vsum C A s (fun i :e C => hl_vmul A (c i) (v i))) = hl_vsum C B s (fun i :e C => hl_vmul B (c i) (f (v i))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2250 / LINEAR_INJECTIVE_0   (hash md5:b99e8fb233192f1d76f161c4a912ed12)
Theorem hlt_LINEAR_INJECTIVE_0 : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, hl_linear B A f = 1 -> ((forall x y :e hl_ty_cart R B, f x = f y -> x = y) <-> forall x :e hl_ty_cart R B, f x = hl_vec A (hl_NUMERAL hl_zero) -> x = hl_vec B (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2258 / LINEAR_BOUNDED   (hash md5:272b276c6e03bc877adfbfed82da7c24)
Theorem hlt_LINEAR_BOUNDED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> exists B :e R, forall x :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (f x)) (hl_real_mul B (hl_vector_norm M x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2271 / LINEAR_BOUNDED_POS   (hash md5:cb925300415cf2b7dc3fe380caf3f67b)
Theorem hlt_LINEAR_BOUNDED_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall x :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (f x)) (hl_real_mul B (hl_vector_norm M x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2281 / SYMMETRIC_LINEAR_IMAGE   (hash md5:e19c6cd3f0f32407791674df7e5dd101)
Theorem hlt_SYMMETRIC_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, (forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> hl_IN (hl_ty_cart R A) (hl_vector_neg A x) s = 1) /\ hl_linear A B f = 1 -> forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f s) = 1 -> hl_IN (hl_ty_cart R B) (hl_vector_neg B x) (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2291 / bilinear   (hash md5:1e3983ea2a32155a0b84c5ed208896c4)
Theorem hlt_bilinear_thm : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A :^: hl_ty_cart R C, hl_bilinear C A B f = 1 <-> (forall x :e hl_ty_cart R C, hl_linear A B (fun y :e hl_ty_cart R A => f x y) = 1) /\ forall y :e hl_ty_cart R A, hl_linear C B (fun x :e hl_ty_cart R C => f x y) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2294 / BILINEAR_SWAP   (hash md5:c670dc0034f12cfae2eb9aacc0745e89)
Theorem hlt_BILINEAR_SWAP : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall op :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, hl_bilinear N M P (fun x :e hl_ty_cart R N => fun y :e hl_ty_cart R M => op y x) = 1 <-> hl_bilinear M N P op = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2299 / BILINEAR_LADD   (hash md5:4258500076c681b06b7288edd4355b88)
Theorem hlt_BILINEAR_LADD : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R A :^: hl_ty_cart R B, forall x y :e hl_ty_cart R B, forall z :e hl_ty_cart R A, hl_bilinear B A C h = 1 -> h (hl_vector_add B x y) z = hl_vector_add C (h x z) (h y z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2303 / BILINEAR_RADD   (hash md5:06a7ec210ab0929eb7c7af780c7f145a)
Theorem hlt_BILINEAR_RADD : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R B :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, forall y z :e hl_ty_cart R B, hl_bilinear A B C h = 1 -> h x (hl_vector_add B y z) = hl_vector_add C (h x y) (h x z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2307 / BILINEAR_LMUL   (hash md5:63875bad67644eec75e5618aa526698d)
Theorem hlt_BILINEAR_LMUL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R A :^: hl_ty_cart R B, forall c :e R, forall x :e hl_ty_cart R B, forall y :e hl_ty_cart R A, hl_bilinear B A C h = 1 -> h (hl_vmul B c x) y = hl_vmul C c (h x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2311 / BILINEAR_RMUL   (hash md5:92fb591230d00e66a89f0a1c3d2aea10)
Theorem hlt_BILINEAR_RMUL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R B :^: hl_ty_cart R A, forall c :e R, forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_bilinear A B C h = 1 -> h x (hl_vmul B c y) = hl_vmul C c (h x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2315 / BILINEAR_LNEG   (hash md5:fdadc320ef524baf7a3ee37586dd3362)
Theorem hlt_BILINEAR_LNEG : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R A :^: hl_ty_cart R B, forall x :e hl_ty_cart R B, forall y :e hl_ty_cart R A, hl_bilinear B A C h = 1 -> h (hl_vector_neg B x) y = hl_vector_neg C (h x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2319 / BILINEAR_RNEG   (hash md5:74304212001169c5f5fcd1ba40db5532)
Theorem hlt_BILINEAR_RNEG : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R B :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_bilinear A B C h = 1 -> h x (hl_vector_neg B y) = hl_vector_neg C (h x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2323 / BILINEAR_LZERO   (hash md5:71e87e03bdb23ca40084dad3f452222f)
Theorem hlt_BILINEAR_LZERO : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R A :^: hl_ty_cart R B, forall x :e hl_ty_cart R A, hl_bilinear B A C h = 1 -> h (hl_vec B (hl_NUMERAL hl_zero)) x = hl_vec C (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2328 / BILINEAR_RZERO   (hash md5:7e2fc011b666e8a94e97ffb4762510b1)
Theorem hlt_BILINEAR_RZERO : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R B :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_bilinear A B C h = 1 -> h x (hl_vec B (hl_NUMERAL hl_zero)) = hl_vec C (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2333 / BILINEAR_LSUB   (hash md5:2d9c53bf9f585c725da2d3e322ef106d)
Theorem hlt_BILINEAR_LSUB : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R A :^: hl_ty_cart R B, forall x y :e hl_ty_cart R B, forall z :e hl_ty_cart R A, hl_bilinear B A C h = 1 -> h (hl_vector_sub B x y) z = hl_vector_sub C (h x z) (h y z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2337 / BILINEAR_RSUB   (hash md5:5935fbf19781059e0012525b4587e784)
Theorem hlt_BILINEAR_RSUB : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R B :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, forall y z :e hl_ty_cart R B, hl_bilinear A B C h = 1 -> h x (hl_vector_sub B y z) = hl_vector_sub C (h x y) (h x z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2341 / BILINEAR_LSUM   (hash md5:1e62f8d9e0a84ac7a8ebb4d7202e3a3e)
Theorem hlt_BILINEAR_LSUM : forall A M N P:set, A <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: A, forall s :e 2 :^: A, forall y :e hl_ty_cart R N, hl_bilinear M N P bop = 1 /\ hl_FINITE A s = 1 -> bop (hl_vsum A M s f) y = hl_vsum A P s (fun i :e A => bop (f i) y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2352 / BILINEAR_RSUM   (hash md5:911a929737245383b81acf1a3544588e)
Theorem hlt_BILINEAR_RSUM : forall A M N P:set, A <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: A, forall s :e 2 :^: A, forall x :e hl_ty_cart R M, hl_bilinear M N P bop = 1 /\ hl_FINITE A s = 1 -> bop x (hl_vsum A N s f) = hl_vsum A P s (fun i :e A => bop x (f i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2363 / BILINEAR_VSUM   (hash md5:0985485627a0987b587b3d0f1e30fa42)
Theorem hlt_BILINEAR_VSUM : forall A B M N P:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e hl_ty_cart R M :^: A, forall g :e hl_ty_cart R N :^: B, forall h :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, hl_bilinear M N P h = 1 /\ (hl_FINITE A s = 1 /\ hl_FINITE B t = 1) -> h (hl_vsum A M s f) (hl_vsum B N t g) = hl_vsum (A :*: B) P (hl_CROSS A B s t) (hl_GABS (hl_ty_cart R P :^: (A :*: B)) (fun f1 :e hl_ty_cart R P :^: (A :*: B) => if forall i :e A, forall j :e B, hl_GEQ (hl_ty_cart R P) (f1 (hl_pair A B i j)) (h (f i) (g j)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2375 / BILINEAR_BOUNDED   (hash md5:10227d818c451d8329b250cbb11f8b59)
Theorem hlt_BILINEAR_BOUNDED : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall h :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, hl_bilinear M N P h = 1 -> exists B :e R, forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_real_le (hl_vector_norm P (h x y)) (hl_real_mul B (hl_real_mul (hl_vector_norm M x) (hl_vector_norm N y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2394 / BILINEAR_BOUNDED_POS   (hash md5:5a57bb6016961d4e9778a98b5895fad7)
Theorem hlt_BILINEAR_BOUNDED_POS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h :e hl_ty_cart R C :^: hl_ty_cart R B :^: hl_ty_cart R A, hl_bilinear A B C h = 1 -> exists B1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B1 = 1 /\ forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_real_le (hl_vector_norm C (h x y)) (hl_real_mul B1 (hl_real_mul (hl_vector_norm A x) (hl_vector_norm B y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2406 / BILINEAR_VSUM_PARTIAL_SUC   (hash md5:424b2c8346df51cc7266343c77e62346)
Theorem hlt_BILINEAR_VSUM_PARTIAL_SUC : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: omega, forall h :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall m n :e omega, hl_bilinear M N P h = 1 -> hl_vsum omega P (hl_numseg m n) (fun k :e omega => h (f k) (hl_vector_sub N (g (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (g k))) = hl_COND (hl_ty_cart R P) (hl_le m n) (hl_vector_sub P (hl_vector_sub P (h (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (g (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))))) (h (f m) (g m))) (hl_vsum omega P (hl_numseg m n) (fun k :e omega => h (hl_vector_sub M (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k)) (g (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))))) (hl_vec P (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2427 / BILINEAR_VSUM_PARTIAL_PRE   (hash md5:c2eff8b31461cb6de318968d35f0b533)
Theorem hlt_BILINEAR_VSUM_PARTIAL_PRE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: omega, forall h :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall m n :e omega, hl_bilinear M N P h = 1 -> hl_vsum omega P (hl_numseg m n) (fun k :e omega => h (f k) (hl_vector_sub N (g k) (g (hl_sub k (hl_NUMERAL (hl_BIT1 hl_zero)))))) = hl_COND (hl_ty_cart R P) (hl_le m n) (hl_vector_sub P (hl_vector_sub P (h (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (g n)) (h (f m) (g (hl_sub m (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_vsum omega P (hl_numseg m n) (fun k :e omega => h (hl_vector_sub M (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k)) (g k)))) (hl_vec P (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2440 / BILINEAR_VSUM_CONVOLUTION_1   (hash md5:8d33435ba1286cd95c7f466f7d102f49)
Theorem hlt_BILINEAR_VSUM_CONVOLUTION_1 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M :^: omega, forall b :e hl_ty_cart R N :^: omega, forall n :e omega, hl_bilinear M N P bop = 1 -> hl_vsum omega P (hl_numseg (hl_NUMERAL hl_zero) n) (fun m :e omega => hl_vsum omega P (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => bop (a i) (b (hl_sub m i)))) = hl_vsum omega P (hl_numseg (hl_NUMERAL hl_zero) n) (fun m :e omega => bop (a m) (hl_vsum omega N (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2454 / BILINEAR_VSUM_CONVOLUTION_2   (hash md5:d08e9d92b183ecc8d06d16ae058eeddf)
Theorem hlt_BILINEAR_VSUM_CONVOLUTION_2 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall a :e hl_ty_cart R M :^: omega, forall b :e hl_ty_cart R N :^: omega, forall n :e omega, hl_bilinear M N P bop = 1 -> hl_vsum omega P (hl_numseg (hl_NUMERAL hl_zero) n) (fun m :e omega => hl_vsum omega P (hl_numseg (hl_NUMERAL hl_zero) m) (fun k :e omega => hl_vsum omega P (hl_numseg (hl_NUMERAL hl_zero) k) (fun i :e omega => bop (a i) (b (hl_sub k i))))) = hl_vsum omega P (hl_numseg (hl_NUMERAL hl_zero) n) (fun m :e omega => bop (hl_vsum omega M (hl_numseg (hl_NUMERAL hl_zero) m) a) (hl_vsum omega N (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2478 / adjoint   (hash md5:fa272d6e103239f740bc96622404de8a)
Theorem hlt_adjoint_thm : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_adjoint M N f = hl_select (hl_ty_cart R M :^: hl_ty_cart R N) (fun f' :e hl_ty_cart R M :^: hl_ty_cart R N => if forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_dot N (f x) y = hl_dot M x (f' y) then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:2481 / ADJOINT_WORKS   (hash md5:de4a7cfab1fa604488e2b70ae8c98bc3)
Theorem hlt_ADJOINT_WORKS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_dot N (f x) y = hl_dot M x (hl_adjoint M N f y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2494 / ADJOINT_LINEAR   (hash md5:919d2eaf83789f85463887daeee9e012)
Theorem hlt_ADJOINT_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_linear N M (hl_adjoint M N f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2499 / ADJOINT_CLAUSES   (hash md5:f0baa612bffd5b1a5135943ed35c9764)
Theorem hlt_ADJOINT_CLAUSES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> (forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_dot M x (hl_adjoint M N f y) = hl_dot N (f x) y) /\ forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_dot M (hl_adjoint M N f y) x = hl_dot N y (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2505 / ADJOINT_ADJOINT   (hash md5:80217824ad908d65385055c621730ddb)
Theorem hlt_ADJOINT_ADJOINT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_adjoint N M (hl_adjoint M N f) = f.
Admitted.

// HOL Light: Multivariate/vectors.ml:2509 / ADJOINT_UNIQUE   (hash md5:3dbb2f8b034dee509afa9153aee183f4)
Theorem hlt_ADJOINT_UNIQUE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall f' :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear B A f = 1 /\ (forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_dot B (f' x) y = hl_dot A x (f y)) -> f' = hl_adjoint B A f.
Admitted.

// HOL Light: Multivariate/vectors.ml:2514 / ADJOINT_COMPOSE   (hash md5:d301ead80310dc1ada158e9c59678ce0)
Theorem hlt_ADJOINT_COMPOSE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N A f = 1 /\ hl_linear N N g = 1 -> hl_adjoint N A (hl_o (hl_ty_cart R N) (hl_ty_cart R A) (hl_ty_cart R N) f g) = hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R A) (hl_adjoint N N g) (hl_adjoint N A f).
Admitted.

// HOL Light: Multivariate/vectors.ml:2520 / SELF_ADJOINT_COMPOSE   (hash md5:93e19a0057a6f9f4d38c571b00b40d0b)
Theorem hlt_SELF_ADJOINT_COMPOSE : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (hl_linear N N g = 1 /\ (hl_adjoint N N f = f /\ hl_adjoint N N g = g)) -> (hl_adjoint N N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g) = hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g <-> hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f).
Admitted.

// HOL Light: Multivariate/vectors.ml:2526 / SELF_ADJOINT_ORTHOGONAL_EIGENVECTORS   (hash md5:42c0e78c246ab7b1b6a844ed89384142)
Theorem hlt_SELF_ADJOINT_ORTHOGONAL_EIGENVECTORS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall v w :e hl_ty_cart R N, forall a b :e R, hl_linear N N f = 1 /\ (hl_adjoint N N f = f /\ (f v = hl_vmul N a v /\ (f w = hl_vmul N b w /\ ~ a = b))) -> hl_orthogonal N v w = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2534 / ORTHOGONAL_PROJECTION_ALT   (hash md5:6c7182df95f57b8f3f8614cd85db02b9)
Theorem hlt_ORTHOGONAL_PROJECTION_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> ((forall x y :e hl_ty_cart R N, hl_orthogonal N (hl_vector_sub N (f x) x) (hl_vector_sub N (f x) (f y)) = 1) <-> forall x y :e hl_ty_cart R N, hl_orthogonal N (hl_vector_sub N (f x) x) (f y) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:2544 / ORTHOGONAL_PROJECTION_EQ_SELF_ADJOINT_IDEMPOTENT   (hash md5:2cac3f4e34eb7d2539682b8849fc43a7)
Theorem hlt_ORTHOGONAL_PROJECTION_EQ_SELF_ADJOINT_IDEMPOTENT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> ((forall x y :e hl_ty_cart R N, hl_orthogonal N (hl_vector_sub N (f x) x) (hl_vector_sub N (f x) (f y)) = 1) <-> hl_adjoint N N f = f /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f f = f).
Admitted.

// HOL Light: Multivariate/vectors.ml:2571 / LIPSCHITZ_ON_POS   (hash md5:84817d38597508586cadda03b4fcfd87)
Theorem hlt_LIPSCHITZ_ON_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) <-> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2588 / LIPSCHITZ_POS   (hash md5:9f60281c80607a46c9df31b57248fcef)
Theorem hlt_LIPSCHITZ_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (exists B :e R, forall x y :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) <-> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall x y :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2596 / LIPSCHITZ_ON_COMPOSE   (hash md5:54819fecbdbc9f1ce76178f7046c4275)
Theorem hlt_LIPSCHITZ_ON_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, (exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) /\ ((exists B :e R, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 -> hl_real_le (hl_vector_norm P (hl_vector_sub P (g x) (g y))) (hl_real_mul B (hl_vector_norm N (hl_vector_sub N x y))) = 1) /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1) -> exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm P (hl_vector_sub P (g (f x)) (g (f y)))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2614 / LINEAR_IMP_LIPSCHITZ   (hash md5:5e7fc34abf406cd5be5f71df75b0dc56)
Theorem hlt_LINEAR_IMP_LIPSCHITZ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> exists B :e R, forall x y :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2619 / LIPSCHITZ_ON_COMPONENTWISE   (hash md5:2fefb6a85fdc1fd3883b0f47c9b316ae)
Theorem hlt_LIPSCHITZ_ON_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_real_abs (hl_real_sub (hl_vindex R N (f x) i) (hl_vindex R N (f y) i))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2656 / matrix_cmul   (hash md5:7d5bb3314437e77adaa0ff4cafe67f6f)
Theorem hlt_matrix_cmul_thm : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_mcmul N M c A = hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_mul c (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2659 / matrix_neg   (hash md5:c3ab5759ddc41431ec75cc00233dffc1)
Theorem hlt_matrix_neg_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_neg N M A = hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_neg (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2662 / matrix_add   (hash md5:de9bf9150b4398f40f5ec9679805f66a)
Theorem hlt_matrix_add_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_add N M A B = hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_add (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) M B i) j))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2665 / matrix_sub   (hash md5:c41818726fd30e76ff9b4bd6ea245214)
Theorem hlt_matrix_sub_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_sub N M A B = hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_sub (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) M B i) j))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2668 / matrix_mul   (hash md5:97b8a30065818a553bc70ba5953146a0)
Theorem hlt_matrix_mul_thm : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_matrix_mul N M P A B = hl_lambda (hl_ty_cart R P) M (fun i :e omega => hl_lambda R P (fun j :e omega => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun k :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) k) (hl_vindex R P (hl_vindex (hl_ty_cart R P) N B k) j)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2673 / matrix_vector_mul   (hash md5:a70bd17ab6799204ae421b985ff64945)
Theorem hlt_matrix_vector_mul_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall x :e hl_ty_cart R N, hl_matrix_vector_mul N M A x = hl_lambda R M (fun i :e omega => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun j :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j) (hl_vindex R N x j))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2677 / vector_matrix_mul   (hash md5:bdcde7521e03397a29d3344275963878)
Theorem hlt_vector_matrix_mul_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall x :e hl_ty_cart R M, hl_vector_matrix_mul M N x A = hl_lambda R N (fun j :e omega => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) (fun i :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j) (hl_vindex R M x i))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2681 / mat   (hash md5:96584ff3c02765be896d09e757593ddb)
Theorem hlt_mat_thm : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, hl_mat N M k = hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if i = j then 1 else 0) (hl_real_of_num k) (hl_real_of_num (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2684 / transp   (hash md5:373c936811f3fa6e62e205cb3e04de5e)
Theorem hlt_transp_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_transp N M A = hl_lambda (hl_ty_cart R M) N (fun i :e omega => hl_lambda R M (fun j :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) M A j) i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2687 / row   (hash md5:3b76afb6c77cb1c58600bcb9bfc5ba6e)
Theorem hlt_row_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall i :e omega, hl_row N M i A = hl_lambda R N (fun j :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2690 / column   (hash md5:96eb03a8b3e3e681ff25e5655466f607)
Theorem hlt_column_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall j :e omega, hl_column N M j A = hl_lambda R M (fun i :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2693 / rows   (hash md5:0231c3c0dd537c6b28cf89392c6d752a)
Theorem hlt_rows_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_rows N M A = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2781 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2781 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 then 1 else 0) (hl_row N M i A) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:2696 / columns   (hash md5:3cc13a7cd8a5bd5339dcc04857766fd6)
Theorem hlt_columns_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_columns N M A = hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_2782 :e hl_ty_cart R M => if exists i :e omega, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_2782 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_column N M i A) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:2699 / MATRIX_CMUL_COMPONENT   (hash md5:fbe425aee1cd362d2f9032fa5264a23b)
Theorem hlt_MATRIX_CMUL_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall j :e omega, forall c :e R, forall A :e hl_ty_cart (hl_ty_cart R N) M, forall i :e omega, hl_vindex R N (hl_vindex (hl_ty_cart R N) M (hl_mcmul N M c A) i) j = hl_real_mul c (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2708 / MATRIX_ADD_COMPONENT   (hash md5:0fe58a38a09f544b6d217c384ed44a88)
Theorem hlt_MATRIX_ADD_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, forall i j :e omega, hl_vindex R N (hl_vindex (hl_ty_cart R N) M (hl_matrix_add N M A B) i) j = hl_real_add (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) M B i) j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2717 / MATRIX_SUB_COMPONENT   (hash md5:7abe6a147ee351955bd11538a5b0a5d6)
Theorem hlt_MATRIX_SUB_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, forall i j :e omega, hl_vindex R N (hl_vindex (hl_ty_cart R N) M (hl_matrix_sub N M A B) i) j = hl_real_sub (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) M B i) j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2726 / MATRIX_NEG_COMPONENT   (hash md5:aac23cc3e37c240d0ee038a3fd351960)
Theorem hlt_MATRIX_NEG_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall i j :e omega, hl_vindex R N (hl_vindex (hl_ty_cart R N) M (hl_matrix_neg N M A) i) j = hl_real_neg (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2735 / TRANSP_COMPONENT   (hash md5:48bc29ed11a821144db750d222aa4807)
Theorem hlt_TRANSP_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall i j :e omega, hl_vindex R M (hl_vindex (hl_ty_cart R M) N (hl_transp N M A) i) j = hl_vindex R N (hl_vindex (hl_ty_cart R N) M A j) i.
Admitted.

// HOL Light: Multivariate/vectors.ml:2746 / MAT_COMPONENT   (hash md5:188d9c2a7aafb66a29715d00549ed127)
Theorem hlt_MAT_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall n i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) M (hl_mat N M n) i) j = hl_COND R (if i = j then 1 else 0) (hl_real_of_num n) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2753 / MAT_0_COMPONENT   (hash md5:87448dabd086975234296add512d0e5e)
Theorem hlt_MAT_0_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall i j :e omega, hl_vindex R N (hl_vindex (hl_ty_cart R N) M (hl_mat N M (hl_NUMERAL hl_zero)) i) j = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2762 / MATRIX_ADD_ROW   (hash md5:feec5e7373e70a0b891cc72a1eda113a)
Theorem hlt_MATRIX_ADD_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall X Y :e hl_ty_cart (hl_ty_cart R M) N, forall i :e omega, hl_vindex (hl_ty_cart R M) N (hl_matrix_add M N X Y) i = hl_vector_add M (hl_vindex (hl_ty_cart R M) N X i) (hl_vindex (hl_ty_cart R M) N Y i).
Admitted.

// HOL Light: Multivariate/vectors.ml:2766 / MATRIX_SUB_ROW   (hash md5:6d06607846e664470446102010e53afd)
Theorem hlt_MATRIX_SUB_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall X Y :e hl_ty_cart (hl_ty_cart R M) N, forall i :e omega, hl_vindex (hl_ty_cart R M) N (hl_matrix_sub M N X Y) i = hl_vector_sub M (hl_vindex (hl_ty_cart R M) N X i) (hl_vindex (hl_ty_cart R M) N Y i).
Admitted.

// HOL Light: Multivariate/vectors.ml:2770 / MATRIX_NEG_ROW   (hash md5:d89525a758393040ec8310b3e4cf4af0)
Theorem hlt_MATRIX_NEG_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall X :e hl_ty_cart (hl_ty_cart R M) N, forall i :e omega, hl_vindex (hl_ty_cart R M) N (hl_matrix_neg M N X) i = hl_vector_neg M (hl_vindex (hl_ty_cart R M) N X i).
Admitted.

// HOL Light: Multivariate/vectors.ml:2774 / MATRIX_CMUL_ROW   (hash md5:5927e81fab58fd89d0cb0431b7dc45d5)
Theorem hlt_MATRIX_CMUL_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall X :e hl_ty_cart (hl_ty_cart R M) N, forall i :e omega, hl_vindex (hl_ty_cart R M) N (hl_mcmul M N c X) i = hl_vmul M c (hl_vindex (hl_ty_cart R M) N X i).
Admitted.

// HOL Light: Multivariate/vectors.ml:2778 / MAT_0_ROW   (hash md5:44d0a27c5f6e079c1eac93551299dca3)
Theorem hlt_MAT_0_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall i :e omega, hl_vindex (hl_ty_cart R M) N (hl_mat M N (hl_NUMERAL hl_zero)) i = hl_vec M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2786 / symmetric_matrix   (hash md5:928569d352a7edba10353e0dff95aeb2)
Theorem hlt_symmetric_matrix_thm : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N A = 1 <-> hl_transp N N A = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2789 / normal_matrix   (hash md5:65c73739a2ff28331d7f58ecb01104de)
Theorem hlt_normal_matrix_thm : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_normal_matrix N A = 1 <-> hl_matrix_mul N N N (hl_transp N N A) A = hl_matrix_mul N N N A (hl_transp N N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:2792 / SYMMETRIC_IMP_NORMAL_MATRIX   (hash md5:5a27f2695207bceb9f9436d79034f6ac)
Theorem hlt_SYMMETRIC_IMP_NORMAL_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N A = 1 -> hl_normal_matrix N A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2819 / MAT_CMUL   (hash md5:2d50d66fd582184f1cf26c31d854ad22)
Theorem hlt_MAT_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall a :e omega, hl_mat A B a = hl_mcmul A B (hl_real_of_num a) (hl_mat A B (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2824 / ROW_0   (hash md5:cf383cf300bc7029129273c7bc20abea)
Theorem hlt_ROW_0 : forall N:set, N <> Empty -> forall i :e omega, hl_row N N i (hl_mat N N (hl_NUMERAL hl_zero)) = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2828 / COLUMN_0   (hash md5:4a4350489f5ac427cabc87300d6c20bc)
Theorem hlt_COLUMN_0 : forall N:set, N <> Empty -> forall i :e omega, hl_column N N i (hl_mat N N (hl_NUMERAL hl_zero)) = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2832 / MATRIX_CMUL_ASSOC   (hash md5:c38feacc26c55af37941c21290c7ea22)
Theorem hlt_MATRIX_CMUL_ASSOC : forall M N:set, M <> Empty -> N <> Empty -> forall a b :e R, forall X :e hl_ty_cart (hl_ty_cart R M) N, hl_mcmul M N a (hl_mcmul M N b X) = hl_mcmul M N (hl_real_mul a b) X.
Admitted.

// HOL Light: Multivariate/vectors.ml:2836 / MATRIX_CMUL_LID   (hash md5:7e699c753dc0298b5268bef56556d249)
Theorem hlt_MATRIX_CMUL_LID : forall M N:set, M <> Empty -> N <> Empty -> forall X :e hl_ty_cart (hl_ty_cart R M) N, hl_mcmul M N (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) X = X.
Admitted.

// HOL Light: Multivariate/vectors.ml:2840 / MATRIX_ADD_SYM   (hash md5:d8125430a0800d543d649870e4722308)
Theorem hlt_MATRIX_ADD_SYM : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_add N M A B = hl_matrix_add N M B A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2844 / MATRIX_ADD_ASSOC   (hash md5:a9dcbc1e4830d920f408f0e38440b779)
Theorem hlt_MATRIX_ADD_ASSOC : forall M N:set, M <> Empty -> N <> Empty -> forall A B C :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_add N M A (hl_matrix_add N M B C) = hl_matrix_add N M (hl_matrix_add N M A B) C.
Admitted.

// HOL Light: Multivariate/vectors.ml:2848 / MATRIX_ADD_LID   (hash md5:a73974115305dcdf9f15e11cc00d592f)
Theorem hlt_MATRIX_ADD_LID : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) B, hl_matrix_add A B (hl_mat A B (hl_NUMERAL hl_zero)) A1 = A1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2852 / MATRIX_ADD_RID   (hash md5:74482b9ffe7df4c71a4188974e85aed6)
Theorem hlt_MATRIX_ADD_RID : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) B, hl_matrix_add A B A1 (hl_mat A B (hl_NUMERAL hl_zero)) = A1.
Admitted.

// HOL Light: Multivariate/vectors.ml:2856 / MATRIX_ADD_LNEG   (hash md5:f3873266cb6e1f8575b050fb37b384a2)
Theorem hlt_MATRIX_ADD_LNEG : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) B, hl_matrix_add A B (hl_matrix_neg A B A1) A1 = hl_mat A B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2860 / MATRIX_ADD_RNEG   (hash md5:c022cc5081b35b23c3e66b4a205b5e41)
Theorem hlt_MATRIX_ADD_RNEG : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) B, hl_matrix_add A B A1 (hl_matrix_neg A B A1) = hl_mat A B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2864 / MATRIX_SUB   (hash md5:6a5fb84e55e207d3bcc4bb15423e0f8d)
Theorem hlt_MATRIX_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_sub N M A B = hl_matrix_add N M A (hl_matrix_neg N M B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2868 / MATRIX_SUB_REFL   (hash md5:8b248f581e82a4b39a8ee310f2aae587)
Theorem hlt_MATRIX_SUB_REFL : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) B, hl_matrix_sub A B A1 A1 = hl_mat A B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2872 / MATRIX_SUB_EQ   (hash md5:406be5d01d64e38165d918edb71543c0)
Theorem hlt_MATRIX_SUB_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_sub N M A B = hl_mat N M (hl_NUMERAL hl_zero) <-> A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:2876 / MATRIX_SUB_ADD   (hash md5:553557649d922e7d0d4488835dbc32ee)
Theorem hlt_MATRIX_SUB_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_add N M (hl_matrix_sub N M A B) B = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2880 / MATRIX_SUB_ADD2   (hash md5:112ed3273baaa29e25ef595a75889887)
Theorem hlt_MATRIX_SUB_ADD2 : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_add N M A (hl_matrix_sub N M B A) = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:2884 / MATRIX_ADD_LDISTRIB   (hash md5:57c670d2a4a88d52c3c0cabc59aa9897)
Theorem hlt_MATRIX_ADD_LDISTRIB : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B C :e hl_ty_cart (hl_ty_cart R P) N, hl_matrix_mul N M P A (hl_matrix_add P N B C) = hl_matrix_add P M (hl_matrix_mul N M P A B) (hl_matrix_mul N M P A C).
Admitted.

// HOL Light: Multivariate/vectors.ml:2891 / MATRIX_MUL_LID   (hash md5:af239d282ee0da33a4e0fe22ec0965ca)
Theorem hlt_MATRIX_MUL_LID : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul M M N (hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero))) A = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2899 / MATRIX_MUL_RID   (hash md5:c28bb6cc2b132b5bd276cfcb7cc82b98)
Theorem hlt_MATRIX_MUL_RID : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul N M N A (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2905 / MATRIX_MUL_ASSOC   (hash md5:0dbd79888848d9a6caf2f19c9a94c790)
Theorem hlt_MATRIX_MUL_ASSOC : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, forall C :e hl_ty_cart (hl_ty_cart R Q) P, hl_matrix_mul N M Q A (hl_matrix_mul P N Q B C) = hl_matrix_mul P M Q (hl_matrix_mul N M P A B) C.
Admitted.

// HOL Light: Multivariate/vectors.ml:2912 / MATRIX_MUL_LZERO   (hash md5:fef38dedcd550092ebc2bb8e8c9cad62)
Theorem hlt_MATRIX_MUL_LZERO : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R P) N, hl_matrix_mul N M P (hl_mat N M (hl_NUMERAL hl_zero)) A = hl_mat P M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2917 / MATRIX_MUL_RZERO   (hash md5:bd8be67357915702b361e3d7eae11a6b)
Theorem hlt_MATRIX_MUL_RZERO : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul N M P A (hl_mat P N (hl_NUMERAL hl_zero)) = hl_mat P M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2922 / MATRIX_ADD_RDISTRIB   (hash md5:0c41cfd40795ef54d9f9d0e894061d6c)
Theorem hlt_MATRIX_ADD_RDISTRIB : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, forall C :e hl_ty_cart (hl_ty_cart R P) N, hl_matrix_mul N M P (hl_matrix_add N M A B) C = hl_matrix_add P M (hl_matrix_mul N M P A C) (hl_matrix_mul N M P B C).
Admitted.

// HOL Light: Multivariate/vectors.ml:2927 / MATRIX_SUB_LDISTRIB   (hash md5:0606f107af1a4a45d3a0e6a035065594)
Theorem hlt_MATRIX_SUB_LDISTRIB : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B C :e hl_ty_cart (hl_ty_cart R P) N, hl_matrix_mul N M P A (hl_matrix_sub P N B C) = hl_matrix_sub P M (hl_matrix_mul N M P A B) (hl_matrix_mul N M P A C).
Admitted.

// HOL Light: Multivariate/vectors.ml:2932 / MATRIX_SUB_RDISTRIB   (hash md5:9dd6a2485a475c2539a4732faecea9ff)
Theorem hlt_MATRIX_SUB_RDISTRIB : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, forall C :e hl_ty_cart (hl_ty_cart R P) N, hl_matrix_mul N M P (hl_matrix_sub N M A B) C = hl_matrix_sub P M (hl_matrix_mul N M P A C) (hl_matrix_mul N M P B C).
Admitted.

// HOL Light: Multivariate/vectors.ml:2937 / MATRIX_MUL_LMUL   (hash md5:3f1cb4b7f3ada058980f8d58b3dbe9c8)
Theorem hlt_MATRIX_MUL_LMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, forall c :e R, hl_matrix_mul N M P (hl_mcmul N M c A) B = hl_mcmul P M c (hl_matrix_mul N M P A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2942 / MATRIX_MUL_RMUL   (hash md5:6007eedc95d6b311495b0fbb9abc4e5f)
Theorem hlt_MATRIX_MUL_RMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, forall c :e R, hl_matrix_mul N M P A (hl_mcmul P N c B) = hl_mcmul P M c (hl_matrix_mul N M P A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2948 / MATRIX_CMUL_ADD_LDISTRIB   (hash md5:19bedbb3b0119f61217bc7ff541cd39c)
Theorem hlt_MATRIX_CMUL_ADD_LDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, forall c :e R, hl_mcmul N M c (hl_matrix_add N M A B) = hl_matrix_add N M (hl_mcmul N M c A) (hl_mcmul N M c B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2952 / MATRIX_CMUL_SUB_LDISTRIB   (hash md5:26dc9ad750ea683571ebfe9f401495fc)
Theorem hlt_MATRIX_CMUL_SUB_LDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, forall c :e R, hl_mcmul N M c (hl_matrix_sub N M A B) = hl_matrix_sub N M (hl_mcmul N M c A) (hl_mcmul N M c B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2956 / MATRIX_CMUL_ADD_RDISTRIB   (hash md5:50f2519f30c98f14c77c5c1e0876f66d)
Theorem hlt_MATRIX_CMUL_ADD_RDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall b c :e R, hl_mcmul N M (hl_real_add b c) A = hl_matrix_add N M (hl_mcmul N M b A) (hl_mcmul N M c A).
Admitted.

// HOL Light: Multivariate/vectors.ml:2960 / MATRIX_CMUL_SUB_RDISTRIB   (hash md5:53ae6c87c6c40a0627e2ff85baf8e22b)
Theorem hlt_MATRIX_CMUL_SUB_RDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall b c :e R, hl_mcmul N M (hl_real_sub b c) A = hl_matrix_sub N M (hl_mcmul N M b A) (hl_mcmul N M c A).
Admitted.

// HOL Light: Multivariate/vectors.ml:2964 / MATRIX_CMUL_RZERO   (hash md5:b7f271262f569be2d2966146baadfc53)
Theorem hlt_MATRIX_CMUL_RZERO : forall A B:set, A <> Empty -> B <> Empty -> forall c :e R, hl_mcmul A B c (hl_mat A B (hl_NUMERAL hl_zero)) = hl_mat A B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2968 / MATRIX_CMUL_LZERO   (hash md5:bf6645aed3f9789f067aa42f357f9d0c)
Theorem hlt_MATRIX_CMUL_LZERO : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) B, hl_mcmul A B (hl_real_of_num (hl_NUMERAL hl_zero)) A1 = hl_mat A B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2972 / MATRIX_NEG_MINUS1   (hash md5:408b12ed86a57495614f48d34e586065)
Theorem hlt_MATRIX_NEG_MINUS1 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_neg N M A = hl_mcmul N M (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2976 / MATRIX_ADD_AC   (hash md5:c6bb19117bad31289942293dbefbea0e)
Theorem hlt_MATRIX_ADD_AC : forall M N:set, M <> Empty -> N <> Empty -> forall A B C :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_add N M A B = hl_matrix_add N M B A /\ (hl_matrix_add N M (hl_matrix_add N M A B) C = hl_matrix_add N M A (hl_matrix_add N M B C) /\ hl_matrix_add N M A (hl_matrix_add N M B C) = hl_matrix_add N M B (hl_matrix_add N M A C)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2982 / MATRIX_NEG_ADD   (hash md5:e5007424e16822c4cf5508f58132a70c)
Theorem hlt_MATRIX_NEG_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_neg N M (hl_matrix_add N M A B) = hl_matrix_add N M (hl_matrix_neg N M A) (hl_matrix_neg N M B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2986 / MATRIX_NEG_SUB   (hash md5:104df8ac81f2bb4c2ac7430ac24d015e)
Theorem hlt_MATRIX_NEG_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_neg N M (hl_matrix_sub N M A B) = hl_matrix_sub N M B A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2990 / MATRIX_NEG_0   (hash md5:52fbb408d0b89f09a53760f61a1b969f)
Theorem hlt_MATRIX_NEG_0 : forall A B:set, A <> Empty -> B <> Empty -> hl_matrix_neg A B (hl_mat A B (hl_NUMERAL hl_zero)) = hl_mat A B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:2994 / MATRIX_SUB_RZERO   (hash md5:e1d5c71b5efba9118629cd06a9286146)
Theorem hlt_MATRIX_SUB_RZERO : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_sub N M A (hl_mat N M (hl_NUMERAL hl_zero)) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2998 / MATRIX_SUB_LZERO   (hash md5:6922abd237b4ac31ec5c5eb26d89b2da)
Theorem hlt_MATRIX_SUB_LZERO : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_sub N M (hl_mat N M (hl_NUMERAL hl_zero)) A = hl_matrix_neg N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3002 / MATRIX_NEG_EQ_0   (hash md5:4a292302a4487393d881544374a6eccf)
Theorem hlt_MATRIX_NEG_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_neg N M A = hl_mat N M (hl_NUMERAL hl_zero) <-> A = hl_mat N M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:3006 / MATRIX_VECTOR_MUL_ASSOC   (hash md5:c8a2e80a168bac12c7a0802cb189b938)
Theorem hlt_MATRIX_VECTOR_MUL_ASSOC : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, forall x :e hl_ty_cart R P, hl_matrix_vector_mul N M A (hl_matrix_vector_mul P N B x) = hl_matrix_vector_mul P M (hl_matrix_mul N M P A B) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3014 / MATRIX_VECTOR_MUL_LID   (hash md5:017624cb6d7ebfe617446b68ed8265e1)
Theorem hlt_MATRIX_VECTOR_MUL_LID : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_matrix_vector_mul N N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) x = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3022 / MATRIX_VECTOR_MUL_LZERO   (hash md5:c640de3ebd14730076389e45b56f8a69)
Theorem hlt_MATRIX_VECTOR_MUL_LZERO : forall A N:set, A <> Empty -> N <> Empty -> forall x :e hl_ty_cart R N, hl_matrix_vector_mul N A (hl_mat N A (hl_NUMERAL hl_zero)) x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:3027 / MATRIX_VECTOR_MUL_RZERO   (hash md5:90f8c64380e680ab87c9c79d42a35028)
Theorem hlt_MATRIX_VECTOR_MUL_RZERO : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_vector_mul M N A (hl_vec M (hl_NUMERAL hl_zero)) = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:3032 / MATRIX_VECTOR_MUL_ADD_LDISTRIB   (hash md5:4f5acc797ab74ca7a270b397c033215e)
Theorem hlt_MATRIX_VECTOR_MUL_ADD_LDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x y :e hl_ty_cart R M, hl_matrix_vector_mul M N A (hl_vector_add M x y) = hl_vector_add N (hl_matrix_vector_mul M N A x) (hl_matrix_vector_mul M N A y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3037 / MATRIX_VECTOR_MUL_SUB_LDISTRIB   (hash md5:719b3650d9f3af4fed6b962033235267)
Theorem hlt_MATRIX_VECTOR_MUL_SUB_LDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x y :e hl_ty_cart R M, hl_matrix_vector_mul M N A (hl_vector_sub M x y) = hl_vector_sub N (hl_matrix_vector_mul M N A x) (hl_matrix_vector_mul M N A y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3042 / MATRIX_VECTOR_MUL_ADD_RDISTRIB   (hash md5:a870543e19ebeb94edc2ff4ccde18ef3)
Theorem hlt_MATRIX_VECTOR_MUL_ADD_RDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, hl_matrix_vector_mul M N (hl_matrix_add M N A B) x = hl_vector_add N (hl_matrix_vector_mul M N A x) (hl_matrix_vector_mul M N B x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3047 / MATRIX_VECTOR_MUL_SUB_RDISTRIB   (hash md5:24313065f950c3f5978f43aab8e2e742)
Theorem hlt_MATRIX_VECTOR_MUL_SUB_RDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, hl_matrix_vector_mul M N (hl_matrix_sub M N A B) x = hl_vector_sub N (hl_matrix_vector_mul M N A x) (hl_matrix_vector_mul M N B x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3052 / MATRIX_VECTOR_MUL_RMUL   (hash md5:2e4597a562867f9cef47907519caf700)
Theorem hlt_MATRIX_VECTOR_MUL_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, forall c :e R, hl_matrix_vector_mul M N A (hl_vmul M c x) = hl_vmul N c (hl_matrix_vector_mul M N A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3057 / MATRIX_MUL_LNEG   (hash md5:40d5fc786a38c6b7ff987b5bfb9d350f)
Theorem hlt_MATRIX_MUL_LNEG : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_matrix_mul N M P (hl_matrix_neg N M A) B = hl_matrix_neg P M (hl_matrix_mul N M P A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3061 / MATRIX_MUL_RNEG   (hash md5:0a1a31e724adddb4b04166ba1ba67b48)
Theorem hlt_MATRIX_MUL_RNEG : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_matrix_mul N M P A (hl_matrix_neg P N B) = hl_matrix_neg P M (hl_matrix_mul N M P A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3065 / MATRIX_NEG_NEG   (hash md5:21918859314066f11a4f7dbd8862bc24)
Theorem hlt_MATRIX_NEG_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_neg N M (hl_matrix_neg N M A) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3069 / MATRIX_TRANSP_MUL   (hash md5:fbfc2658cabc3c036c2845999792a363)
Theorem hlt_MATRIX_TRANSP_MUL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) B, forall B1 :e hl_ty_cart (hl_ty_cart R C) A, hl_transp C B (hl_matrix_mul A B C A1 B1) = hl_matrix_mul A C B (hl_transp C A B1) (hl_transp A B A1).
Admitted.

// HOL Light: Multivariate/vectors.ml:3074 / TRANSP_EQ_0   (hash md5:7e0d34ba24bd08d0bdde9c6d95e0a831)
Theorem hlt_TRANSP_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_transp N M A = hl_mat M N (hl_NUMERAL hl_zero) <-> A = hl_mat N M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:3078 / SYMMETRIC_MATRIX_MUL   (hash md5:7643ca620732b00591a6c634b9e15774)
Theorem hlt_SYMMETRIC_MATRIX_MUL : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N A = 1 /\ hl_symmetric_matrix N B = 1 -> (hl_symmetric_matrix N (hl_matrix_mul N N N A B) = 1 <-> hl_matrix_mul N N N A B = hl_matrix_mul N N N B A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3084 / MATRIX_EQ   (hash md5:fd6074c387335c3c1d7b1c21b2cbf008)
Theorem hlt_MATRIX_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, A = B <-> forall x :e hl_ty_cart R N, hl_matrix_vector_mul N M A x = hl_matrix_vector_mul N M B x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3093 / MATRIX_EQ_0   (hash md5:d578eef151df9cf752f0b8818aa7865a)
Theorem hlt_MATRIX_EQ_0 : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, A = hl_mat N N (hl_NUMERAL hl_zero) <-> forall x :e hl_ty_cart R N, hl_matrix_vector_mul N N A x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:3097 / MATRIX_VECTOR_MUL_COMPONENT   (hash md5:88bbb89f7119ea88015340c5de379e47)
Theorem hlt_MATRIX_VECTOR_MUL_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall x :e hl_ty_cart R N, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex M (hl_UNIV M)) = 1 -> hl_vindex R M (hl_matrix_vector_mul N M A x) k = hl_dot N (hl_vindex (hl_ty_cart R N) M A k) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3102 / DOT_LMUL_MATRIX   (hash md5:6b263270b8496eddf603861d931280a8)
Theorem hlt_DOT_LMUL_MATRIX : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_dot N (hl_vector_matrix_mul M N x A) y = hl_dot M x (hl_matrix_vector_mul N M A y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3109 / TRANSP_MATRIX_CMUL   (hash md5:9f9c3c7354aa751bec60e3e7436e0d86)
Theorem hlt_TRANSP_MATRIX_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall c :e R, hl_transp M N (hl_mcmul M N c A) = hl_mcmul N M c (hl_transp M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3113 / SYMMETRIC_MATRIX_CMUL   (hash md5:fd1d6f59d2c47ddbad7afc47f35a5637)
Theorem hlt_SYMMETRIC_MATRIX_CMUL : forall N:set, N <> Empty -> forall c :e R, forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N A = 1 -> hl_symmetric_matrix N (hl_mcmul N N c A) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3118 / TRANSP_MATRIX_ADD   (hash md5:0b9c1230f4cdf089032f1935d96c21c5)
Theorem hlt_TRANSP_MATRIX_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_transp N M (hl_matrix_add N M A B) = hl_matrix_add M N (hl_transp N M A) (hl_transp N M B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3122 / SYMMETRIC_MATRIX_ADD   (hash md5:e05095dee0d7bd6ba13e4541bfd5a4e1)
Theorem hlt_SYMMETRIC_MATRIX_ADD : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N A = 1 /\ hl_symmetric_matrix N B = 1 -> hl_symmetric_matrix N (hl_matrix_add N N A B) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3128 / TRANSP_MATRIX_SUB   (hash md5:b217604a4bb468191563b5b5ec05cce5)
Theorem hlt_TRANSP_MATRIX_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_transp N M (hl_matrix_sub N M A B) = hl_matrix_sub M N (hl_transp N M A) (hl_transp N M B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3132 / SYMMETRIC_MATRIX_SUB   (hash md5:6e63f4c9edd24980d867f1c9936480db)
Theorem hlt_SYMMETRIC_MATRIX_SUB : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N A = 1 /\ hl_symmetric_matrix N B = 1 -> hl_symmetric_matrix N (hl_matrix_sub N N A B) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3138 / TRANSP_MATRIX_NEG   (hash md5:4e131377d003d338fd8750c4d417e707)
Theorem hlt_TRANSP_MATRIX_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_transp N M (hl_matrix_neg N M A) = hl_matrix_neg M N (hl_transp N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3142 / SYMMETRIC_MATRIX_NEG   (hash md5:6dc117348210c3f1f32214e36001f4bb)
Theorem hlt_SYMMETRIC_MATRIX_NEG : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N (hl_matrix_neg N N A) = 1 <-> hl_symmetric_matrix N A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3147 / TRANSP_MAT   (hash md5:927597c8abf7760c2047b84184741364)
Theorem hlt_TRANSP_MAT : forall A B:set, A <> Empty -> B <> Empty -> forall n :e omega, hl_transp B A (hl_mat B A n) = hl_mat A B n.
Admitted.

// HOL Light: Multivariate/vectors.ml:3151 / TRANSP_TRANSP   (hash md5:28a5c8591b8aea90e49976139188fb9e)
Theorem hlt_TRANSP_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_transp M N (hl_transp N M A) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3155 / SYMMETRIC_MATRIX_MAT   (hash md5:cb475fc87a00502fbf2d1418607cc32d)
Theorem hlt_SYMMETRIC_MATRIX_MAT : forall A:set, A <> Empty -> forall n :e omega, hl_symmetric_matrix A (hl_mat A A n) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3159 / SYMMETRIC_MATRIX_COVARIANCE   (hash md5:00e0b44f9828a7120b4c7da8e89d2fc4)
Theorem hlt_SYMMETRIC_MATRIX_COVARIANCE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_symmetric_matrix N (hl_matrix_mul M N N (hl_transp N M A) A) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3163 / SYMMETRIC_MATRIX_SIMILAR   (hash md5:958a5e019209800280c9bcdf179f640f)
Theorem hlt_SYMMETRIC_MATRIX_SIMILAR : forall A N:set, A <> Empty -> N <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) N, forall B :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N B = 1 -> hl_symmetric_matrix A (hl_matrix_mul N A A (hl_transp A N A1) (hl_matrix_mul N N A B A1)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3169 / TRANSP_EQ   (hash md5:e335920a95d4b4a6a8ad458b50fa4b01)
Theorem hlt_TRANSP_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R M) N, hl_transp M N A = hl_transp M N B <-> A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:3173 / ROW_TRANSP   (hash md5:f41fb24ee00cd29000da1f7a985a7f5f)
Theorem hlt_ROW_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_row M N i (hl_transp N M A) = hl_column N M i A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3178 / COLUMN_TRANSP   (hash md5:857daa8eb114572b05700b0a69a743d5)
Theorem hlt_COLUMN_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> hl_column M N i (hl_transp N M A) = hl_row N M i A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3183 / ROWS_TRANSP   (hash md5:20ab2a8d559604b19cbefd913df5429a)
Theorem hlt_ROWS_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_rows M N (hl_transp N M A) = hl_columns N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3188 / COLUMNS_TRANSP   (hash md5:b83aee599a24b8212cea9103d645f22a)
Theorem hlt_COLUMNS_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_columns M N (hl_transp N M A) = hl_rows N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3192 / VECTOR_MATRIX_MUL_TRANSP   (hash md5:bda5a2eab7795a19c529e680fee5180a)
Theorem hlt_VECTOR_MATRIX_MUL_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R N, hl_vector_matrix_mul N M x A = hl_matrix_vector_mul N M (hl_transp M N A) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3197 / MATRIX_VECTOR_MUL_TRANSP   (hash md5:1b30bd3843f077b9c0009abda74bd928)
Theorem hlt_MATRIX_VECTOR_MUL_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, hl_matrix_vector_mul M N A x = hl_vector_matrix_mul M N x (hl_transp M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3201 / ROWS_NONEMPTY   (hash md5:4c05154da6ac3edb4714546038b4533d)
Theorem hlt_ROWS_NONEMPTY : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, ~ hl_rows N M A = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:3207 / COLUMNS_NONEMPTY   (hash md5:dd122607cb080863a8d0a66d0e7ce093)
Theorem hlt_COLUMNS_NONEMPTY : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, ~ hl_columns N M A = hl_EMPTY (hl_ty_cart R M).
Admitted.

// HOL Light: Multivariate/vectors.ml:3213 / FINITE_ROWS   (hash md5:010f8d22503713296d44fef90a4157e8)
Theorem hlt_FINITE_ROWS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_FINITE (hl_ty_cart R N) (hl_rows N M A) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3218 / FINITE_COLUMNS   (hash md5:b8dce72372f8ddbc4363e37d411c0cd6)
Theorem hlt_FINITE_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_FINITE (hl_ty_cart R M) (hl_columns N M A) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3223 / CARD_ROWS_LE   (hash md5:5801161b1a3c09a00ded2d8c18a1e922)
Theorem hlt_CARD_ROWS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_le (hl_CARD (hl_ty_cart R M) (hl_rows M N A)) (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3231 / CARD_COLUMNS_LE   (hash md5:c0ea7341dabc68649bc4f265e4e1f9d0)
Theorem hlt_CARD_COLUMNS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_le (hl_CARD (hl_ty_cart R N) (hl_columns M N A)) (hl_dimindex M (hl_UNIV M)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3239 / MATRIX_EQUAL_ROWS   (hash md5:a3b1e7a7268eb945f9e6c9e4f9dcd231)
Theorem hlt_MATRIX_EQUAL_ROWS : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, A = B <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> hl_row N M i A = hl_row N M i B.
Admitted.

// HOL Light: Multivariate/vectors.ml:3244 / MATRIX_EQUAL_COLUMNS   (hash md5:359edae5c0484ee5fe8235eca1011841)
Theorem hlt_MATRIX_EQUAL_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, A = B <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_column N M i A = hl_column N M i B.
Admitted.

// HOL Light: Multivariate/vectors.ml:3249 / MATRIX_CMUL_EQ_0   (hash md5:a522db52ee1a2b12eb807870a39e922d)
Theorem hlt_MATRIX_CMUL_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall c :e R, hl_mcmul M N c A = hl_mat M N (hl_NUMERAL hl_zero) <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ A = hl_mat M N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:3255 / MAT_EQ   (hash md5:5ae40152f02c482d51137975c0cc2777)
Theorem hlt_MAT_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall m n :e omega, hl_mat A B m = hl_mat A B n <-> m = n.
Admitted.

// HOL Light: Multivariate/vectors.ml:3260 / MATRIX_VECTOR_LMUL   (hash md5:2f5d8362cb12fdae3644c518fadf1bb7)
Theorem hlt_MATRIX_VECTOR_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall c :e R, forall x :e hl_ty_cart R M, hl_matrix_vector_mul M N (hl_mcmul M N c A) x = hl_vmul N c (hl_matrix_vector_mul M N A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3266 / MATRIX_VECTOR_MUL_LNEG   (hash md5:72457c01dda4c31a6b8fa5a5c325b114)
Theorem hlt_MATRIX_VECTOR_MUL_LNEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, hl_matrix_vector_mul M N (hl_matrix_neg M N A) x = hl_vector_neg N (hl_matrix_vector_mul M N A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3271 / MATRIX_VECTOR_MUL_RNEG   (hash md5:2af64dbb875a88bf9e97720e3d9a8037)
Theorem hlt_MATRIX_VECTOR_MUL_RNEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, hl_matrix_vector_mul M N A (hl_vector_neg M x) = hl_vector_neg N (hl_matrix_vector_mul M N A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3276 / COLUMN_MATRIX_MUL   (hash md5:b0da094e172242bbcdd090b0e604537a)
Theorem hlt_COLUMN_MATRIX_MUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall i :e omega, forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex P (hl_UNIV P)) = 1 -> hl_column P M i (hl_matrix_mul N M P A B) = hl_matrix_vector_mul N M A (hl_column P N i B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3281 / ROW_MATRIX_MUL   (hash md5:d41af9c21f0334c7b2ca65428e6fc95a)
Theorem hlt_ROW_MATRIX_MUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall i :e omega, forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> hl_row P M i (hl_matrix_mul N M P A B) = hl_matrix_vector_mul N P (hl_transp P N B) (hl_row N M i A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3291 / MATRIX_MUL_DOT   (hash md5:c471a931baa87f4bf6cc510b39761027)
Theorem hlt_MATRIX_MUL_DOT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall x :e hl_ty_cart R N, hl_matrix_vector_mul N M A x = hl_lambda R M (fun i :e omega => hl_dot N (hl_vindex (hl_ty_cart R N) M A i) x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3295 / MATRIX_MUL_VSUM   (hash md5:4bd3b9792f4410e760176ac7e835636f)
Theorem hlt_MATRIX_MUL_VSUM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall x :e hl_ty_cart R N, hl_matrix_vector_mul N M A x = hl_vsum omega M (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vmul M (hl_vindex R N x i) (hl_column N M i A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3304 / VECTOR_COMPONENTWISE   (hash md5:0ee0e79218f5546d9f3634ac8608c33e)
Theorem hlt_VECTOR_COMPONENTWISE : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, x = hl_lambda R N (fun j :e omega => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_real_mul (hl_vindex R N x i) (hl_vindex R N (hl_basis N i) j))).
Admitted.

// HOL Light: Multivariate/vectors.ml:3313 / LINEAR_COMPONENTWISE_EXPANSION   (hash md5:3bf038f1e41f5a077d9d9bf84f26f5c4)
Theorem hlt_LINEAR_COMPONENTWISE_EXPANSION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> forall x :e hl_ty_cart R M, forall j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vindex R N (f x) j = hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) (fun i :e omega => hl_real_mul (hl_vindex R M x i) (hl_vindex R N (f (hl_basis M i)) j)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3345 / invertible   (hash md5:898f8b53d8de2d0c51d3e203b6d0fc71)
Theorem hlt_invertible_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_invertible N M A = 1 <-> exists A' :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N M M A A' = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_matrix_mul M N N A' A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3349 / INVERTIBLE_I   (hash md5:1f9f175dd7a308fd78a1f77840c6badc)
Theorem hlt_INVERTIBLE_I : forall N:set, N <> Empty -> hl_invertible N N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3353 / INVERTIBLE_NEG   (hash md5:d1daa79f084565effdff5c80d411ddaf)
Theorem hlt_INVERTIBLE_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_invertible N M (hl_matrix_neg N M A) = 1 <-> hl_invertible N M A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3358 / INVERTIBLE_CMUL   (hash md5:013c0471ab00cf63bcb19a1b04edf88a)
Theorem hlt_INVERTIBLE_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall c :e R, hl_invertible N M (hl_mcmul N M c A) = 1 <-> ~ c = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_invertible N M A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3371 / INVERTIBLE_MAT   (hash md5:76c5ebfac3f3d31cf2e94773bec9e0f9)
Theorem hlt_INVERTIBLE_MAT : forall N:set, N <> Empty -> forall a :e omega, hl_invertible N N (hl_mat N N a) = 1 <-> ~ a = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Multivariate/vectors.ml:3376 / MATRIX_ENTIRE   (hash md5:15dd9529332d762fb4ab8a9a8646605b)
Theorem hlt_MATRIX_ENTIRE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> (forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_invertible N M A = 1 -> (hl_matrix_mul N M P A B = hl_mat P M (hl_NUMERAL hl_zero) <-> B = hl_mat P N (hl_NUMERAL hl_zero))) /\ forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_invertible P N B = 1 -> (hl_matrix_mul N M P A B = hl_mat P M (hl_NUMERAL hl_zero) <-> A = hl_mat N M (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3393 / matrix   (hash md5:61ef82b861a41b7e8bb01d800824d920)
Theorem hlt_matrix_thm : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_matrix M N f = hl_lambda (hl_ty_cart R M) N (fun i :e omega => hl_lambda R M (fun j :e omega => hl_vindex R N (f (hl_basis M j)) i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3396 / MATRIX_COMPONENT   (hash md5:94a37f9245a14868eacd68d2318ba75b)
Theorem hlt_MATRIX_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex M (hl_UNIV M)) = 1 -> hl_vindex R M (hl_vindex (hl_ty_cart R M) N (hl_matrix M N f) i) j = hl_vindex R N (f (hl_basis M j)) i.
Admitted.

// HOL Light: Multivariate/vectors.ml:3408 / MATRIX_VECTOR_MUL_LINEAR   (hash md5:80b1d65811fdd0d1422057f25d607077)
Theorem hlt_MATRIX_VECTOR_MUL_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_linear N M (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M A x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3416 / MATRIX_WORKS   (hash md5:5a9d157c9d7622b48e1c965c0e56122b)
Theorem hlt_MATRIX_WORKS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> forall x :e hl_ty_cart R M, hl_matrix_vector_mul M N (hl_matrix M N f) x = f x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3424 / MATRIX_VECTOR_MUL   (hash md5:800ef6bf68c7f63d852bfe794487f74c)
Theorem hlt_MATRIX_VECTOR_MUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> f = fun x :e hl_ty_cart R M => hl_matrix_vector_mul M N (hl_matrix M N f) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3428 / MATRIX_OF_MATRIX_VECTOR_MUL   (hash md5:ad70384934155ccdf8234fbf2af812d9)
Theorem hlt_MATRIX_OF_MATRIX_VECTOR_MUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix N M (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M A x) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3432 / MATRIX_COMPOSE   (hash md5:6c1f294d4caa813b5f43bd933b22a369)
Theorem hlt_MATRIX_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall g :e hl_ty_cart R C :^: hl_ty_cart R A, hl_linear B A f = 1 /\ hl_linear A C g = 1 -> hl_matrix B C (hl_o (hl_ty_cart R A) (hl_ty_cart R C) (hl_ty_cart R B) g f) = hl_matrix_mul A C B (hl_matrix A C g) (hl_matrix B A f).
Admitted.

// HOL Light: Multivariate/vectors.ml:3437 / MATRIX_0   (hash md5:04d6d3f169a27960baf4d75e8752bb76)
Theorem hlt_MATRIX_0 : forall M N:set, M <> Empty -> N <> Empty -> hl_matrix M N (fun x :e hl_ty_cart R M => hl_vec N (hl_NUMERAL hl_zero)) = hl_mat M N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:3442 / MATRIX_VECTOR_COLUMN   (hash md5:9ce386deee427f1fffd50ab8aaae08fe)
Theorem hlt_MATRIX_VECTOR_COLUMN : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall x :e hl_ty_cart R N, hl_matrix_vector_mul N M A x = hl_vsum omega M (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vmul M (hl_vindex R N x i) (hl_vindex (hl_ty_cart R M) N (hl_transp N M A) i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3449 / MATRIX_MUL_COMPONENT   (hash md5:ce5e1a3f29ff70027e63a32a43dce84e)
Theorem hlt_MATRIX_MUL_COMPONENT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) P, forall B :e hl_ty_cart (hl_ty_cart R M) N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex P (hl_UNIV P)) = 1 -> hl_vindex (hl_ty_cart R M) P (hl_matrix_mul N P M A B) i = hl_matrix_vector_mul N M (hl_transp M N B) (hl_vindex (hl_ty_cart R N) P A i).
Admitted.

// HOL Light: Multivariate/vectors.ml:3457 / ADJOINT_MATRIX   (hash md5:91e6f8c712c396171e3b58280d279639)
Theorem hlt_ADJOINT_MATRIX : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_adjoint N M (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M A x) = fun x :e hl_ty_cart R M => hl_matrix_vector_mul M N (hl_transp N M A) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3465 / MATRIX_ADJOINT   (hash md5:009c87abccc306ccaca915dc6daad1ee)
Theorem hlt_MATRIX_ADJOINT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 -> hl_matrix B A (hl_adjoint A B f) = hl_transp A B (hl_matrix A B f).
Admitted.

// HOL Light: Multivariate/vectors.ml:3472 / MATRIX_ID   (hash md5:f5e841ba1f6dcedbcb029934464d7dbd)
Theorem hlt_MATRIX_ID : forall A:set, A <> Empty -> hl_matrix A A (fun x :e hl_ty_cart R A => x) = hl_mat A A (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3476 / MATRIX_I   (hash md5:a4ea51a75ecb25ca655440e80a13d14a)
Theorem hlt_MATRIX_I : forall A:set, A <> Empty -> hl_matrix A A (hl_I (hl_ty_cart R A)) = hl_mat A A (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3480 / LINEAR_EQ_MATRIX   (hash md5:b1cf82b0031abbf72bce4f750a9265b5)
Theorem hlt_LINEAR_EQ_MATRIX : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 /\ (hl_linear A B g = 1 /\ hl_matrix A B f = hl_matrix A B g) -> f = g.
Admitted.

// HOL Light: Multivariate/vectors.ml:3486 / MATRIX_CMUL   (hash md5:7d2d2e61afc50ea4d3ead47e04b3dee9)
Theorem hlt_MATRIX_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e R, hl_linear M N f = 1 -> hl_matrix M N (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) = hl_mcmul M N c (hl_matrix M N f).
Admitted.

// HOL Light: Multivariate/vectors.ml:3491 / MATRIX_NEG   (hash md5:a468d1c2fa9b9e8503100a7032bedbe9)
Theorem hlt_MATRIX_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_matrix M N (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) = hl_matrix_neg M N (hl_matrix M N f).
Admitted.

// HOL Light: Multivariate/vectors.ml:3496 / MATRIX_ADD   (hash md5:bdf228eae92bc94a1592be2ddb9d7e39)
Theorem hlt_MATRIX_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_linear M N g = 1 -> hl_matrix M N (fun x :e hl_ty_cart R M => hl_vector_add N (f x) (g x)) = hl_matrix_add M N (hl_matrix M N f) (hl_matrix M N g).
Admitted.

// HOL Light: Multivariate/vectors.ml:3502 / MATRIX_SELF_ADJOINT   (hash md5:30a8f64398a2bfdea5e5545b58c8b384)
Theorem hlt_MATRIX_SELF_ADJOINT : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R A, hl_linear A A f = 1 -> (hl_adjoint A A f = f <-> hl_symmetric_matrix A (hl_matrix A A f) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:3507 / LINEAR_MATRIX_EXISTS   (hash md5:dc6b311c99e5155340a1c0d2d40ca152)
Theorem hlt_LINEAR_MATRIX_EXISTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 <-> exists A :e hl_ty_cart (hl_ty_cart R M) N, f = fun x :e hl_ty_cart R M => hl_matrix_vector_mul M N A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3514 / LINEAR_1_GEN   (hash md5:a4fe197682e299edb60d847fce3cba04)
Theorem hlt_LINEAR_1_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_linear N N f = 1 <-> exists c :e R, f = fun x :e hl_ty_cart R N => hl_vmul N c x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3531 / LINEAR_1   (hash md5:2834d530b7c684c5715da50593c78527)
Theorem hlt_LINEAR_1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, hl_linear 1 1 f = 1 <-> exists c :e R, f = fun x :e hl_ty_cart R 1 => hl_vmul 1 c x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3535 / SYMMETRIC_MATRIX   (hash md5:f7273426ca77db4e6bf0491c5883503b)
Theorem hlt_SYMMETRIC_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N A = 1 <-> hl_adjoint N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x) = fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3540 / DOT_MATRIX_TRANSP_LMUL   (hash md5:1f339efeab2b05b3ba76a718f63575ac)
Theorem hlt_DOT_MATRIX_TRANSP_LMUL : forall A N:set, A <> Empty -> N <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R N) A, forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R N, hl_dot N (hl_matrix_vector_mul A N (hl_transp N A A1) x) y = hl_dot A x (hl_matrix_vector_mul N A A1 y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3545 / DOT_MATRIX_TRANSP_RMUL   (hash md5:0dc2899e0ad0fd5cde8e987987e7ce7c)
Theorem hlt_DOT_MATRIX_TRANSP_RMUL : forall A N:set, A <> Empty -> N <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) N, forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R N, hl_dot A x (hl_matrix_vector_mul N A (hl_transp A N A1) y) = hl_dot N (hl_matrix_vector_mul A N A1 x) y.
Admitted.

// HOL Light: Multivariate/vectors.ml:3549 / SYMMETRIC_MATRIX_ORTHOGONAL_EIGENVECTORS   (hash md5:7cb41b777fee92b93fb265377670f6e2)
Theorem hlt_SYMMETRIC_MATRIX_ORTHOGONAL_EIGENVECTORS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall v w :e hl_ty_cart R N, forall a b :e R, hl_symmetric_matrix N A = 1 /\ (hl_matrix_vector_mul N N A v = hl_vmul N a v /\ (hl_matrix_vector_mul N N A w = hl_vmul N b w /\ ~ a = b)) -> hl_orthogonal N v w = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3558 / MATRIX_INJECTIVE_0   (hash md5:79c5b17471b4f5da53e0383913d19d22)
Theorem hlt_MATRIX_INJECTIVE_0 : forall M N:set, M <> Empty -> N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart R M) N, (forall x y :e hl_ty_cart R M, hl_matrix_vector_mul M N m x = hl_matrix_vector_mul M N m y -> x = y) <-> forall x :e hl_ty_cart R M, hl_matrix_vector_mul M N m x = hl_vec N (hl_NUMERAL hl_zero) -> x = hl_vec M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:3569 / onorm   (hash md5:b7f2fa3dd6b261b8c2e1b8b07bf72b6a)
Theorem hlt_onorm_thm : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_onorm M N f = hl_sup (hl_GSPEC R (fun GEN_PVAR_2783 :e R => if exists x :e hl_ty_cart R M, hl_SETSPEC R GEN_PVAR_2783 (if hl_vector_norm M x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) (hl_vector_norm N (f x)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3572 / NORM_BOUND_GENERALIZE   (hash md5:65b3e240477bd58d368d60d0c5dbd9b5)
Theorem hlt_NORM_BOUND_GENERALIZE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall b :e R, hl_linear M N f = 1 -> ((forall x :e hl_ty_cart R M, hl_vector_norm M x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_real_le (hl_vector_norm N (f x)) b = 1) <-> forall x :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (f x)) (hl_real_mul b (hl_vector_norm M x)) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:3590 / ONORM_DOT   (hash md5:20193203b89d75e9404bcb13a74f3481)
Theorem hlt_ONORM_DOT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_onorm M N f = hl_sup (hl_GSPEC R (fun GEN_PVAR_2784 :e R => if exists x :e hl_ty_cart R M, exists y :e hl_ty_cart R N, hl_SETSPEC R GEN_PVAR_2784 (if hl_vector_norm M x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vector_norm N y = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) (hl_dot N (f x) y) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3613 / ONORM   (hash md5:65e77ef4664e24c827146cddb5e2cf68)
Theorem hlt_ONORM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> (forall x :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (f x)) (hl_real_mul (hl_onorm M N f) (hl_vector_norm M x)) = 1) /\ forall b :e R, (forall x :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (f x)) (hl_real_mul b (hl_vector_norm M x)) = 1) -> hl_real_le (hl_onorm M N f) b = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3627 / ONORM_LE_EQ   (hash md5:2fc80194fc0172098c4a7bc1292ae472)
Theorem hlt_ONORM_LE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall b :e R, hl_linear M N f = 1 -> (hl_real_le (hl_onorm M N f) b = 1 <-> forall x :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (f x)) (hl_real_mul b (hl_vector_norm M x)) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:3635 / ONORM_POS_LE   (hash md5:3d54285a040555609f15b6353422a3ff)
Theorem hlt_ONORM_POS_LE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_onorm A B f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3640 / ONORM_EQ_0   (hash md5:adc276b69c4def9aa6ab25a28f918ad1)
Theorem hlt_ONORM_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> (hl_onorm M N f = hl_real_of_num (hl_NUMERAL hl_zero) <-> forall x :e hl_ty_cart R M, f x = hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3647 / ONORM_CONST   (hash md5:5c8ec84552f8ca6baf11aff2bfd578a9)
Theorem hlt_ONORM_CONST : forall M N:set, M <> Empty -> N <> Empty -> forall y :e hl_ty_cart R N, hl_onorm M N (fun x :e hl_ty_cart R M => y) = hl_vector_norm N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:3658 / ONORM_POS_LT   (hash md5:2917aed017e28fd5bf45b62d289ff17f)
Theorem hlt_ONORM_POS_LT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 -> (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_onorm A B f) = 1 <-> ~ forall x :e hl_ty_cart R A, f x = hl_vec B (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3663 / ONORM_COMPOSE   (hash md5:02194ea427bb1664f48e0e30a2627fbd)
Theorem hlt_ONORM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R C, forall g :e hl_ty_cart R C :^: hl_ty_cart R B, hl_linear C A f = 1 /\ hl_linear B C g = 1 -> hl_real_le (hl_onorm B A (hl_o (hl_ty_cart R C) (hl_ty_cart R A) (hl_ty_cart R B) f g)) (hl_real_mul (hl_onorm C A f) (hl_onorm B C g)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3668 / ONORM_CMUL   (hash md5:6bcc5dbe3d2de39edde43840438aedda)
Theorem hlt_ONORM_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e R, hl_linear M N f = 1 -> hl_onorm M N (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) = hl_real_mul (hl_real_abs c) (hl_onorm M N f).
Admitted.

// HOL Light: Multivariate/vectors.ml:3689 / ONORM_NEG   (hash md5:edf757083fd2b7da740228e12329cd6b)
Theorem hlt_ONORM_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_onorm M N (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) = hl_onorm M N f.
Admitted.

// HOL Light: Multivariate/vectors.ml:3693 / ONORM_TRIANGLE   (hash md5:78fb25982183e417a8c023318d0293da)
Theorem hlt_ONORM_TRIANGLE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_linear M N g = 1 -> hl_real_le (hl_onorm M N (fun x :e hl_ty_cart R M => hl_vector_add N (f x) (g x))) (hl_real_add (hl_onorm M N f) (hl_onorm M N g)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3702 / ONORM_TRIANGLE_LE   (hash md5:c2fce3c4c2b03cfddb6f3f0c2a524081)
Theorem hlt_ONORM_TRIANGLE_LE : forall A B:set, A <> Empty -> B <> Empty -> forall e1 :e R, forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 /\ (hl_linear A B g = 1 /\ hl_real_le (hl_real_add (hl_onorm A B f) (hl_onorm A B g)) e1 = 1) -> hl_real_le (hl_onorm A B (fun x :e hl_ty_cart R A => hl_vector_add B (f x) (g x))) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3707 / ONORM_TRIANGLE_LT   (hash md5:8383ba8a8b6705c8eb2655d5c86c9b87)
Theorem hlt_ONORM_TRIANGLE_LT : forall A B:set, A <> Empty -> B <> Empty -> forall e1 :e R, forall f g :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 /\ (hl_linear A B g = 1 /\ hl_real_lt (hl_real_add (hl_onorm A B f) (hl_onorm A B g)) e1 = 1) -> hl_real_lt (hl_onorm A B (fun x :e hl_ty_cart R A => hl_vector_add B (f x) (g x))) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3712 / ONORM_ID   (hash md5:e49384eeb1afbffe5a23b743283c13d5)
Theorem hlt_ONORM_ID : forall N:set, N <> Empty -> hl_onorm N N (fun x :e hl_ty_cart R N => x) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3720 / ONORM_I   (hash md5:c00041fcc65889d9855ba82e418b50d4)
Theorem hlt_ONORM_I : forall N:set, N <> Empty -> hl_onorm N N (hl_I (hl_ty_cart R N)) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3724 / ONORM_INVERSE_FUNCTION_BOUND   (hash md5:4a0d578b53a4e076d4627e6c87159b36)
Theorem hlt_ONORM_INVERSE_FUNCTION_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear N M f = 1 /\ (hl_linear M N g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) f g = hl_I (hl_ty_cart R M)) -> hl_real_le (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_onorm N M f) (hl_onorm M N g)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3732 / ONORM_ADJOINT   (hash md5:3de249bfdaf675c73779d1da703092b3)
Theorem hlt_ONORM_ADJOINT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> hl_onorm N N (hl_adjoint N N f) = hl_onorm N N f.
Admitted.

// HOL Light: Multivariate/vectors.ml:3738 / ONORM_COMPOSE_ADJOINT_LEFT   (hash md5:d9d908b21a0fa54ea3d46d7514fe97ec)
Theorem hlt_ONORM_COMPOSE_ADJOINT_LEFT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> hl_onorm N N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (hl_adjoint N N f) f) = hl_real_pow (hl_onorm N N f) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:3756 / ONORM_COMPOSE_ADJOINT_RIGHT   (hash md5:e8fb0a60ff39783ee73db73a006f466e)
Theorem hlt_ONORM_COMPOSE_ADJOINT_RIGHT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> hl_onorm N N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f (hl_adjoint N N f)) = hl_real_pow (hl_onorm N N f) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:3762 / ONORM_TRANSP   (hash md5:16c3236ff9277f07eed2c4ac2bca781b)
Theorem hlt_ONORM_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N (hl_transp N N A) x) = hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3767 / ONORM_COVARIANCE   (hash md5:7bf340624258fdf5fdeaf3d622308043)
Theorem hlt_ONORM_COVARIANCE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N (hl_matrix_mul N N N (hl_transp N N A) A) x) = hl_real_pow (hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:3775 / ONORM_COVARIANCE_ALT   (hash md5:8960053b62cb2b2c3b1a8eab926744a2)
Theorem hlt_ONORM_COVARIANCE_ALT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N (hl_matrix_mul N N N A (hl_transp N N A)) x) = hl_real_pow (hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:3783 / ONORM_LE_EQ_2   (hash md5:baea03c50cf3b71af80cd883a270470e)
Theorem hlt_ONORM_LE_EQ_2 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall b :e R, hl_linear M N f = 1 -> (hl_real_le (hl_onorm M N f) b = 1 <-> forall x :e hl_ty_cart R N, forall y :e hl_ty_cart R M, hl_real_le (hl_dot N x (f y)) (hl_real_mul b (hl_real_mul (hl_vector_norm N x) (hl_vector_norm M y))) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:3783 / ONORM_LE_EQ_2_ABS   (hash md5:7b94b0ce8e5c8d9d7bd4175e247a24a6)
Theorem hlt_ONORM_LE_EQ_2_ABS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall b :e R, hl_linear M N f = 1 -> (hl_real_le (hl_onorm M N f) b = 1 <-> forall x :e hl_ty_cart R N, forall y :e hl_ty_cart R M, hl_real_le (hl_real_abs (hl_dot N x (f y))) (hl_real_mul b (hl_real_mul (hl_vector_norm N x) (hl_vector_norm M y))) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:3819 / lift   (hash md5:f2c2eea2baefb5a36f179e00d075c465)
Theorem hlt_lift_thm : forall x :e R, hl_lift x = hl_lambda R 1 (fun i :e omega => x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3822 / drop   (hash md5:f1a36010077e4afe1bcefcf81564fe91)
Theorem hlt_drop_thm : forall x :e hl_ty_cart R 1, hl_drop x = hl_vindex R 1 x (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3825 / LIFT_COMPONENT   (hash md5:fcfbf49a084b370d7087fdadfbffdbf3)
Theorem hlt_LIFT_COMPONENT : forall x :e R, hl_vindex R 1 (hl_lift x) (hl_NUMERAL (hl_BIT1 hl_zero)) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3829 / LIFT_DROP   (hash md5:cbaf803d3fa9dd23f712035668cf884b)
Theorem hlt_LIFT_DROP : (forall x :e hl_ty_cart R 1, hl_lift (hl_drop x) = x) /\ forall x :e R, hl_drop (hl_lift x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3833 / IMAGE_LIFT_DROP   (hash md5:13b35de3ac51e849794171fcee3c4646)
Theorem hlt_IMAGE_LIFT_DROP : (forall s :e 2 :^: hl_ty_cart R 1, hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift hl_drop) s = s) /\ forall s :e 2 :^: R, hl_IMAGE R R (hl_o (hl_ty_cart R 1) R R hl_drop hl_lift) s = s.
Admitted.

// HOL Light: Multivariate/vectors.ml:3837 / IN_IMAGE_LIFT_DROP   (hash md5:4741cb973187a03b40dc368e4101db78)
Theorem hlt_IN_IMAGE_LIFT_DROP : (forall x :e hl_ty_cart R 1, forall s :e 2 :^: R, hl_IN (hl_ty_cart R 1) x (hl_IMAGE R (hl_ty_cart R 1) hl_lift s) = 1 <-> hl_IN R (hl_drop x) s = 1) /\ forall x :e R, forall s :e 2 :^: hl_ty_cart R 1, hl_IN R x (hl_IMAGE (hl_ty_cart R 1) R hl_drop s) = 1 <-> hl_IN (hl_ty_cart R 1) (hl_lift x) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3842 / FORALL_LIFT   (hash md5:da2007b28ec6cff3f89f66247b681df2)
Theorem hlt_FORALL_LIFT : forall P :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, P x = 1) <-> forall x :e R, P (hl_lift x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3846 / EXISTS_LIFT   (hash md5:b78128a2d1a949b8861f9d27c96b7b56)
Theorem hlt_EXISTS_LIFT : forall P :e 2 :^: hl_ty_cart R 1, (exists x :e hl_ty_cart R 1, P x = 1) <-> exists x :e R, P (hl_lift x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3850 / FORALL_DROP   (hash md5:4d9405ee17985dea56ef1b180353e1ed)
Theorem hlt_FORALL_DROP : forall P :e 2 :^: R, (forall x :e R, P x = 1) <-> forall x :e hl_ty_cart R 1, P (hl_drop x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3854 / EXISTS_DROP   (hash md5:9add8c2b485b73cd9988d52d40b5e4d2)
Theorem hlt_EXISTS_DROP : forall P :e 2 :^: R, (exists x :e R, P x = 1) <-> exists x :e hl_ty_cart R 1, P (hl_drop x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3858 / FORALL_LIFT_FUN   (hash md5:0508f4c43370f04bbcd746c28f83258a)
Theorem hlt_FORALL_LIFT_FUN : forall A:set, A <> Empty -> forall P :e 2 :^: (hl_ty_cart R 1 :^: A), (forall f :e hl_ty_cart R 1 :^: A, P f = 1) <-> forall f :e R :^: A, P (hl_o R (hl_ty_cart R 1) A hl_lift f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3865 / FORALL_DROP_FUN   (hash md5:7035eca64567b641206e99597b7322fb)
Theorem hlt_FORALL_DROP_FUN : forall A:set, A <> Empty -> forall P :e 2 :^: (R :^: A), (forall f :e R :^: A, P f = 1) <-> forall f :e hl_ty_cart R 1 :^: A, P (hl_o (hl_ty_cart R 1) R A hl_drop f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3869 / FORALL_FUN_LIFT   (hash md5:89fe006bd194d49e14013d5c58757ba9)
Theorem hlt_FORALL_FUN_LIFT : forall A:set, A <> Empty -> forall P :e 2 :^: (A :^: R), (forall f :e A :^: R, P f = 1) <-> forall f :e A :^: hl_ty_cart R 1, P (hl_o (hl_ty_cart R 1) A R f hl_lift) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3876 / FORALL_FUN_DROP   (hash md5:70750fc476900d19b936930e632d089b)
Theorem hlt_FORALL_FUN_DROP : forall A:set, A <> Empty -> forall P :e 2 :^: (A :^: hl_ty_cart R 1), (forall f :e A :^: hl_ty_cart R 1, P f = 1) <-> forall f :e A :^: R, P (hl_o R A (hl_ty_cart R 1) f hl_drop) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3883 / EXISTS_LIFT_FUN   (hash md5:14a265ff2bc99480bbc215501ff1d1a3)
Theorem hlt_EXISTS_LIFT_FUN : forall A:set, A <> Empty -> forall P :e 2 :^: (hl_ty_cart R 1 :^: A), (exists f :e hl_ty_cart R 1 :^: A, P f = 1) <-> exists f :e R :^: A, P (hl_o R (hl_ty_cart R 1) A hl_lift f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3888 / EXISTS_DROP_FUN   (hash md5:6dbf61132caa58d04ef1a571c8915c5e)
Theorem hlt_EXISTS_DROP_FUN : forall A:set, A <> Empty -> forall P :e 2 :^: (R :^: A), (exists f :e R :^: A, P f = 1) <-> exists f :e hl_ty_cart R 1 :^: A, P (hl_o (hl_ty_cart R 1) R A hl_drop f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3893 / EXISTS_FUN_LIFT   (hash md5:f66bd0e970e5b937b629819e6d599ec8)
Theorem hlt_EXISTS_FUN_LIFT : forall A:set, A <> Empty -> forall P :e 2 :^: (A :^: R), (exists f :e A :^: R, P f = 1) <-> exists f :e A :^: hl_ty_cart R 1, P (hl_o (hl_ty_cart R 1) A R f hl_lift) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3898 / EXISTS_FUN_DROP   (hash md5:ae7d8296c30d7913531e144f84dab09e)
Theorem hlt_EXISTS_FUN_DROP : forall A:set, A <> Empty -> forall P :e 2 :^: (A :^: hl_ty_cart R 1), (exists f :e A :^: hl_ty_cart R 1, P f = 1) <-> exists f :e A :^: R, P (hl_o R A (hl_ty_cart R 1) f hl_drop) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3903 / LIFT_EQ   (hash md5:d0b28ea731f49aeaa6e13c1bcf7bc425)
Theorem hlt_LIFT_EQ : forall x y :e R, hl_lift x = hl_lift y <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:3907 / DROP_EQ   (hash md5:64111dc5be890599e6dbfbb26737ab11)
Theorem hlt_DROP_EQ : forall x y :e hl_ty_cart R 1, hl_drop x = hl_drop y <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:3911 / LIFT_IN_IMAGE_LIFT   (hash md5:27836f971b748fd838efd92e8ef2e6f5)
Theorem hlt_LIFT_IN_IMAGE_LIFT : forall x :e R, forall s :e 2 :^: R, hl_IN (hl_ty_cart R 1) (hl_lift x) (hl_IMAGE R (hl_ty_cart R 1) hl_lift s) = 1 <-> hl_IN R x s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3915 / FORALL_LIFT_IMAGE   (hash md5:b36b3c8407b9dbefce9fb0ea54a41bda)
Theorem hlt_FORALL_LIFT_IMAGE : forall P :e 2 :^: (2 :^: hl_ty_cart R 1), (forall s :e 2 :^: hl_ty_cart R 1, P s = 1) <-> forall s :e 2 :^: R, P (hl_IMAGE R (hl_ty_cart R 1) hl_lift s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3919 / EXISTS_LIFT_IMAGE   (hash md5:5335831752d4db8ca0b92535280cc978)
Theorem hlt_EXISTS_LIFT_IMAGE : forall P :e 2 :^: (2 :^: hl_ty_cart R 1), (exists s :e 2 :^: hl_ty_cart R 1, P s = 1) <-> exists s :e 2 :^: R, P (hl_IMAGE R (hl_ty_cart R 1) hl_lift s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3923 / SUBSET_LIFT_IMAGE   (hash md5:1dfe139fe0c82074851bf605f31895ac)
Theorem hlt_SUBSET_LIFT_IMAGE : forall s t :e 2 :^: R, hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE R (hl_ty_cart R 1) hl_lift s) (hl_IMAGE R (hl_ty_cart R 1) hl_lift t) = 1 <-> hl_SUBSET R s t = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3929 / FORALL_DROP_IMAGE   (hash md5:478e77b35c51f49fd9db6ae0c6c23a58)
Theorem hlt_FORALL_DROP_IMAGE : forall P :e 2 :^: (2 :^: R), (forall s :e 2 :^: R, P s = 1) <-> forall s :e 2 :^: hl_ty_cart R 1, P (hl_IMAGE (hl_ty_cart R 1) R hl_drop s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3933 / EXISTS_DROP_IMAGE   (hash md5:8e6ede9256cfc11272cfa6f529662656)
Theorem hlt_EXISTS_DROP_IMAGE : forall P :e 2 :^: (2 :^: R), (exists s :e 2 :^: R, P s = 1) <-> exists s :e 2 :^: hl_ty_cart R 1, P (hl_IMAGE (hl_ty_cart R 1) R hl_drop s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3937 / SUBSET_DROP_IMAGE   (hash md5:6cde5c3f46711ebc9a76796d6c05c8bd)
Theorem hlt_SUBSET_DROP_IMAGE : forall s t :e 2 :^: hl_ty_cart R 1, hl_SUBSET R (hl_IMAGE (hl_ty_cart R 1) R hl_drop s) (hl_IMAGE (hl_ty_cart R 1) R hl_drop t) = 1 <-> hl_SUBSET (hl_ty_cart R 1) s t = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3943 / DROP_IN_IMAGE_DROP   (hash md5:f4a196917a8575aee16b48162864b840)
Theorem hlt_DROP_IN_IMAGE_DROP : forall x :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_IN R (hl_drop x) (hl_IMAGE (hl_ty_cart R 1) R hl_drop s) = 1 <-> hl_IN (hl_ty_cart R 1) x s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3947 / LIFT_NUM   (hash md5:629c7a1cd09d39c4677be34fdd2504ad)
Theorem hlt_LIFT_NUM : forall n :e omega, hl_lift (hl_real_of_num n) = hl_vec 1 n.
Admitted.

// HOL Light: Multivariate/vectors.ml:3951 / LIFT_ADD   (hash md5:1b91b9dfadb6374002b2d416d59709ee)
Theorem hlt_LIFT_ADD : forall x y :e R, hl_lift (hl_real_add x y) = hl_vector_add 1 (hl_lift x) (hl_lift y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3955 / LIFT_SUB   (hash md5:98b8da8e9b344287b91c55939730b407)
Theorem hlt_LIFT_SUB : forall x y :e R, hl_lift (hl_real_sub x y) = hl_vector_sub 1 (hl_lift x) (hl_lift y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3959 / LIFT_CMUL   (hash md5:9c52cd023fbeea12c40cd98d7423d5fc)
Theorem hlt_LIFT_CMUL : forall x c :e R, hl_lift (hl_real_mul c x) = hl_vmul 1 c (hl_lift x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3963 / LIFT_NEG   (hash md5:2d3fc43a1361e4a311d54487f1e1b0ff)
Theorem hlt_LIFT_NEG : forall x :e R, hl_lift (hl_real_neg x) = hl_vector_neg 1 (hl_lift x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3967 / LIFT_EQ_CMUL   (hash md5:080f5966f6be5315cf43cd1c8f3ef0ec)
Theorem hlt_LIFT_EQ_CMUL : forall x :e R, hl_lift x = hl_vmul 1 x (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:3971 / SUM_VSUM   (hash md5:11af10f2b7de6d2b6d186019a226b4b8)
Theorem hlt_SUM_VSUM : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_sum A s f = hl_drop (hl_vsum A 1 s (hl_o R (hl_ty_cart R 1) A hl_lift f)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3976 / VSUM_REAL   (hash md5:13d6044c19083749cb5de26e3253b780)
Theorem hlt_VSUM_REAL : forall A:set, A <> Empty -> forall f :e hl_ty_cart R 1 :^: A, forall s :e 2 :^: A, hl_vsum A 1 s f = hl_lift (hl_sum A s (hl_o (hl_ty_cart R 1) R A hl_drop f)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3980 / LIFT_SUM   (hash md5:33c63698b9756f48eafb24b1b536c75f)
Theorem hlt_LIFT_SUM : forall A:set, A <> Empty -> forall k :e 2 :^: A, forall x :e R :^: A, hl_lift (hl_sum A k x) = hl_vsum A 1 k (hl_o R (hl_ty_cart R 1) A hl_lift x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3984 / DROP_VSUM   (hash md5:00e500b824af82d161cdcf141ece5328)
Theorem hlt_DROP_VSUM : forall A:set, A <> Empty -> forall k :e 2 :^: A, forall x :e hl_ty_cart R 1 :^: A, hl_drop (hl_vsum A 1 k x) = hl_sum A k (hl_o (hl_ty_cart R 1) R A hl_drop x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3988 / DROP_LAMBDA   (hash md5:0a450b3a4143f22f53039bfea4e9ceb3)
Theorem hlt_DROP_LAMBDA : forall x :e R :^: omega, hl_drop (hl_lambda R 1 (fun i :e omega => x i)) = x (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3992 / DROP_VEC   (hash md5:c0340fbeffaae07003133ab61cd2a137)
Theorem hlt_DROP_VEC : forall n :e omega, hl_drop (hl_vec 1 n) = hl_real_of_num n.
Admitted.

// HOL Light: Multivariate/vectors.ml:3996 / DROP_ADD   (hash md5:d063b7bdd41399b33bf35defcabde105)
Theorem hlt_DROP_ADD : forall x y :e hl_ty_cart R 1, hl_drop (hl_vector_add 1 x y) = hl_real_add (hl_drop x) (hl_drop y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4000 / DROP_SUB   (hash md5:715a4e3d09da258bb548c7b0fba811b2)
Theorem hlt_DROP_SUB : forall x y :e hl_ty_cart R 1, hl_drop (hl_vector_sub 1 x y) = hl_real_sub (hl_drop x) (hl_drop y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4004 / DROP_CMUL   (hash md5:8d512ea33ad2833c417e550826e3cd4c)
Theorem hlt_DROP_CMUL : forall x :e hl_ty_cart R 1, forall c :e R, hl_drop (hl_vmul 1 c x) = hl_real_mul c (hl_drop x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4008 / DROP_NEG   (hash md5:b8f2aa740e47dedb928729e74e0b13ea)
Theorem hlt_DROP_NEG : forall x :e hl_ty_cart R 1, hl_drop (hl_vector_neg 1 x) = hl_real_neg (hl_drop x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4012 / NORM_1   (hash md5:02bff3f83b315f79e659f12ef983548a)
Theorem hlt_NORM_1 : forall x :e hl_ty_cart R 1, hl_vector_norm 1 x = hl_real_abs (hl_drop x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4016 / DIST_1   (hash md5:50e6626b58cde13a4bab3df9dd1f2233)
Theorem hlt_DIST_1 : forall x y :e hl_ty_cart R 1, hl_distance 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x y) = hl_real_abs (hl_real_sub (hl_drop x) (hl_drop y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4020 / NORM_1_POS   (hash md5:632a7d1604d3dfd1784386a0256d746a)
Theorem hlt_NORM_1_POS : forall x :e hl_ty_cart R 1, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop x) = 1 -> hl_vector_norm 1 x = hl_drop x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4024 / NORM_LIFT   (hash md5:861c4a03820af12f11b3a2f06738afe6)
Theorem hlt_NORM_LIFT : forall x :e R, hl_vector_norm 1 (hl_lift x) = hl_real_abs x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4028 / DIST_LIFT   (hash md5:cf90ce8e2bc7408d45c0b6118027f9d0)
Theorem hlt_DIST_LIFT : forall x y :e R, hl_distance 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_lift x) (hl_lift y)) = hl_real_abs (hl_real_sub x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4032 / ABS_DROP   (hash md5:cabb786f48f57f7f24b7a3da5ef36aa2)
Theorem hlt_ABS_DROP : forall x :e hl_ty_cart R 1, hl_real_abs (hl_drop x) = hl_vector_norm 1 x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4036 / LINEAR_VMUL_DROP   (hash md5:98d26df58d8ffee47de51b1069864ef6)
Theorem hlt_LINEAR_VMUL_DROP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R A, forall v :e hl_ty_cart R B, hl_linear A 1 f = 1 -> hl_linear A B (fun x :e hl_ty_cart R A => hl_vmul B (hl_drop (f x)) v) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4040 / LINEAR_FROM_REALS   (hash md5:601997324e8b5634a33221105eb3bef1)
Theorem hlt_LINEAR_FROM_REALS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_linear 1 N f = 1 -> f = fun x :e hl_ty_cart R 1 => hl_vmul N (hl_drop x) (hl_column 1 N (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_matrix 1 N f)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4048 / LINEAR_TO_REALS   (hash md5:903121a973e5a86d73604ef63cde98e9)
Theorem hlt_LINEAR_TO_REALS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, hl_linear N 1 f = 1 -> f = fun x :e hl_ty_cart R N => hl_lift (hl_dot N (hl_row N 1 (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_matrix N 1 f)) x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4055 / LINEAR_FROM_1   (hash md5:a1a7bd12058ad75b7596661d5580837d)
Theorem hlt_LINEAR_FROM_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_linear 1 N f = 1 <-> exists c :e hl_ty_cart R N, f = fun x :e hl_ty_cart R 1 => hl_vmul N (hl_drop x) c.
Admitted.

// HOL Light: Multivariate/vectors.ml:4061 / DROP_EQ_0   (hash md5:389150034187732ad4aaf972f8436e71)
Theorem hlt_DROP_EQ_0 : forall x :e hl_ty_cart R 1, hl_drop x = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = hl_vec 1 (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:4065 / DROP_WLOG_LE   (hash md5:9a8feccc3a4e02db7b6e85e1e09850d6)
Theorem hlt_DROP_WLOG_LE : forall P :e 2 :^: hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, P x y = 1 <-> P y x = 1) /\ (forall x y :e hl_ty_cart R 1, hl_real_le (hl_drop x) (hl_drop y) = 1 -> P x y = 1) -> forall x y :e hl_ty_cart R 1, P x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4070 / IMAGE_LIFT_UNIV   (hash md5:6400d5cba1752b016cc19067e23f3369)
Theorem hlt_IMAGE_LIFT_UNIV : hl_IMAGE R (hl_ty_cart R 1) hl_lift (hl_UNIV R) = hl_UNIV (hl_ty_cart R 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4074 / IMAGE_DROP_UNIV   (hash md5:72c6e63240779ed211e0cfa19320a271)
Theorem hlt_IMAGE_DROP_UNIV : hl_IMAGE (hl_ty_cart R 1) R hl_drop (hl_UNIV (hl_ty_cart R 1)) = hl_UNIV R.
Admitted.

// HOL Light: Multivariate/vectors.ml:4078 / LINEAR_LIFT_DOT   (hash md5:51d54a9d222f329b3e548fc15f5d81a3)
Theorem hlt_LINEAR_LIFT_DOT : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_linear A 1 (fun x :e hl_ty_cart R A => hl_lift (hl_dot A a x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4082 / LINEAR_TO_1   (hash md5:29d617c339547e495b58546e3504f7b0)
Theorem hlt_LINEAR_TO_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, hl_linear N 1 f = 1 <-> exists a :e hl_ty_cart R N, f = fun x :e hl_ty_cart R N => hl_lift (hl_dot N a x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4088 / LINEAR_LIFT_COMPONENT   (hash md5:69a97c349cd01a473b241807b7815978)
Theorem hlt_LINEAR_LIFT_COMPONENT : forall N:set, N <> Empty -> forall k :e omega, hl_linear N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_vindex R N x k)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4097 / BILINEAR_DROP_MUL   (hash md5:b221c56dfa9f5b25c607a864fd2c1c85)
Theorem hlt_BILINEAR_DROP_MUL : forall N:set, N <> Empty -> hl_bilinear 1 N N (fun x :e hl_ty_cart R 1 => fun y :e hl_ty_cart R N => hl_vmul N (hl_drop x) y) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4102 / BILINEAR_MUL_DROP   (hash md5:3ded75de6c52ba07ba149927a25187f3)
Theorem hlt_BILINEAR_MUL_DROP : forall N:set, N <> Empty -> hl_bilinear N 1 N (fun y :e hl_ty_cart R N => fun x :e hl_ty_cart R 1 => hl_vmul N (hl_drop x) y) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4107 / BILINEAR_LIFT_MUL   (hash md5:63c845da14dd0c828e8929055090d161)
Theorem hlt_BILINEAR_LIFT_MUL : hl_bilinear 1 1 1 (fun x :e hl_ty_cart R 1 => fun y :e hl_ty_cart R 1 => hl_lift (hl_real_mul (hl_drop x) (hl_drop y))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4113 / LINEAR_COMPONENTWISE   (hash md5:d3b0967e62ddead17fc177e55942a027)
Theorem hlt_LINEAR_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_linear M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4123 / DROP_BASIS   (hash md5:1126a1e41fb28fe06683f0908fef2654)
Theorem hlt_DROP_BASIS : forall i :e omega, hl_drop (hl_basis 1 i) = hl_COND R (if i = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4133 / indicator   (hash md5:2d2b961be219a53a7bc3772dd44f8fba)
Theorem hlt_indicator_thm : forall M:set, M <> Empty -> forall s :e 2 :^: hl_ty_cart R M, hl_indicator M s = fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R 1) (hl_IN (hl_ty_cart R M) x s) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vec 1 (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4136 / DROP_INDICATOR   (hash md5:c260c92dc5488436d391b99f26f57c37)
Theorem hlt_DROP_INDICATOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_drop (hl_indicator A s x) = hl_COND R (hl_IN (hl_ty_cart R A) x s) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4141 / DROP_INDICATOR_POS_LE   (hash md5:75421cca42d16c86596cac5d2e72fe40)
Theorem hlt_DROP_INDICATOR_POS_LE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (hl_indicator A s x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4145 / DROP_INDICATOR_LE_1   (hash md5:a3347fd2a72ed56619bf5217503f0974)
Theorem hlt_DROP_INDICATOR_LE_1 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_real_le (hl_drop (hl_indicator A s x)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4149 / DROP_INDICATOR_ABS_LE_1   (hash md5:553ff32060a65890396a6a880dc74f14)
Theorem hlt_DROP_INDICATOR_ABS_LE_1 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_real_le (hl_real_abs (hl_drop (hl_indicator A s x))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4153 / INDICATOR_COMPLEMENT   (hash md5:d3def5ed414ac09d8278c6b494258332)
Theorem hlt_INDICATOR_COMPLEMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_indicator N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = fun x :e hl_ty_cart R N => hl_vector_sub 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_indicator N s x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4163 / VECTORIZE_ADD   (hash md5:87577215f26d3623380bbc181ee93db6)
Theorem hlt_VECTORIZE_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall m1 m2 :e hl_ty_cart (hl_ty_cart R N) M, hl_vectorize R N M (hl_matrix_add N M m1 m2) = hl_vector_add (hl_ty_finite_prod M N) (hl_vectorize R N M m1) (hl_vectorize R N M m2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4168 / VECTORIZE_CMUL   (hash md5:d48f14dc3b528e9389ed8efd31a3b2e0)
Theorem hlt_VECTORIZE_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall m :e hl_ty_cart (hl_ty_cart R N) M, hl_vectorize R N M (hl_mcmul N M c m) = hl_vmul (hl_ty_finite_prod M N) c (hl_vectorize R N M m).
Admitted.

// HOL Light: Multivariate/vectors.ml:4173 / VECTORIZE_SUB   (hash md5:7d2b72659a224827af6ddfbe260004a5)
Theorem hlt_VECTORIZE_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall m1 m2 :e hl_ty_cart (hl_ty_cart R N) M, hl_vectorize R N M (hl_matrix_sub N M m1 m2) = hl_vector_sub (hl_ty_finite_prod M N) (hl_vectorize R N M m1) (hl_vectorize R N M m2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4178 / VECTORIZE_0   (hash md5:68be7b2459bbd1e8a5ac74684014f3e3)
Theorem hlt_VECTORIZE_0 : forall M N:set, M <> Empty -> N <> Empty -> hl_vectorize R N M (hl_mat N M (hl_NUMERAL hl_zero)) = hl_vec (hl_ty_finite_prod M N) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:4183 / MATRIFY_0   (hash md5:899c6fa31483de05958303f335f0a8cf)
Theorem hlt_MATRIFY_0 : forall A B:set, A <> Empty -> B <> Empty -> hl_matrify R B A (hl_vec (hl_ty_finite_prod B A) (hl_NUMERAL hl_zero)) = hl_mat A B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:4187 / VECTORIZE_EQ_0   (hash md5:6f985ab9ff5885fabccb1c90a2de28f9)
Theorem hlt_VECTORIZE_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart R N) M, hl_vectorize R N M m = hl_vec (hl_ty_finite_prod M N) (hl_NUMERAL hl_zero) <-> m = hl_mat N M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:4191 / MATRIFY_ADD   (hash md5:646f22b45beb216c5a15067056518256)
Theorem hlt_MATRIFY_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_finite_prod M N), hl_matrify R M N (hl_vector_add (hl_ty_finite_prod M N) x y) = hl_matrix_add N M (hl_matrify R M N x) (hl_matrify R M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4196 / MATRIFY_CMUL   (hash md5:33c515911673ab3b8f2f46bbe4c07a72)
Theorem hlt_MATRIFY_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall x :e hl_ty_cart R (hl_ty_finite_prod M N), hl_matrify R M N (hl_vmul (hl_ty_finite_prod M N) c x) = hl_mcmul N M c (hl_matrify R M N x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4201 / MATRIFY_SUB   (hash md5:dfb1a92cba0e189936c1899baeb7fe92)
Theorem hlt_MATRIFY_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_finite_prod M N), hl_matrify R M N (hl_vector_sub (hl_ty_finite_prod M N) x y) = hl_matrix_sub N M (hl_matrify R M N x) (hl_matrify R M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4206 / MATRIFY_EQ_0   (hash md5:2b96ae2d163d860ae1d548e88ad3e03f)
Theorem hlt_MATRIFY_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall m :e hl_ty_cart R (hl_ty_finite_prod M N), hl_matrify R M N m = hl_mat N M (hl_NUMERAL hl_zero) <-> m = hl_vec (hl_ty_finite_prod M N) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:4210 / BILINEAR_MATRIX_VECTOR_MUL   (hash md5:451c39199e4b598f8573fea0f2e8540e)
Theorem hlt_BILINEAR_MATRIX_VECTOR_MUL : forall M N:set, M <> Empty -> N <> Empty -> hl_bilinear (hl_ty_finite_prod M N) N M (fun m :e hl_ty_cart R (hl_ty_finite_prod M N) => fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M (hl_matrify R M N m) x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4217 / BILINEAR_MATRIX_MUL   (hash md5:bb02a557ad40a85f9c96675a4f3373bd)
Theorem hlt_BILINEAR_MATRIX_MUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> hl_bilinear (hl_ty_finite_prod M N) (hl_ty_finite_prod N P) (hl_ty_finite_prod M P) (fun m1 :e hl_ty_cart R (hl_ty_finite_prod M N) => fun m2 :e hl_ty_cart R (hl_ty_finite_prod N P) => hl_vectorize R P M (hl_matrix_mul N M P (hl_matrify R M N m1) (hl_matrify R N P m2))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4230 / LINEAR_FSTCART   (hash md5:8c903fc5723f3c7e4e5a234910f4d4f2)
Theorem hlt_LINEAR_FSTCART : forall A B:set, A <> Empty -> B <> Empty -> hl_linear (hl_ty_finite_sum B A) B (hl_fstcart R B A) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4236 / LINEAR_SNDCART   (hash md5:da7138c2505f56f0259cb5951512deff)
Theorem hlt_LINEAR_SNDCART : forall A B:set, A <> Empty -> B <> Empty -> hl_linear (hl_ty_finite_sum A B) B (hl_sndcart R A B) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4243 / FSTCART_VEC   (hash md5:1e159242fd045b03edd1f39997f2655a)
Theorem hlt_FSTCART_VEC : forall A B:set, A <> Empty -> B <> Empty -> forall n :e omega, hl_fstcart R B A (hl_vec (hl_ty_finite_sum B A) n) = hl_vec B n.
Admitted.

// HOL Light: Multivariate/vectors.ml:4248 / FSTCART_ADD   (hash md5:6b069b03f05010aa40453938fdff2d61)
Theorem hlt_FSTCART_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_finite_sum M N), hl_fstcart R M N (hl_vector_add (hl_ty_finite_sum M N) x y) = hl_vector_add M (hl_fstcart R M N x) (hl_fstcart R M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4252 / FSTCART_CMUL   (hash md5:65165f9326bfac8b881f699a2a1b4e6f)
Theorem hlt_FSTCART_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R (hl_ty_finite_sum M N), forall c :e R, hl_fstcart R M N (hl_vmul (hl_ty_finite_sum M N) c x) = hl_vmul M c (hl_fstcart R M N x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4256 / FSTCART_NEG   (hash md5:31d5e55cdd522804b92450360e4c8ac9)
Theorem hlt_FSTCART_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R (hl_ty_finite_sum M N), hl_vector_neg M (hl_fstcart R M N x) = hl_fstcart R M N (hl_vector_neg (hl_ty_finite_sum M N) x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4261 / FSTCART_SUB   (hash md5:ff32bef88a491a559558182e91e6def4)
Theorem hlt_FSTCART_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_finite_sum M N), hl_fstcart R M N (hl_vector_sub (hl_ty_finite_sum M N) x y) = hl_vector_sub M (hl_fstcart R M N x) (hl_fstcart R M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4265 / FSTCART_VSUM   (hash md5:2c6e85999b0d2e47a6a90baabc62c823)
Theorem hlt_FSTCART_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall k :e 2 :^: C, forall x :e hl_ty_cart R (hl_ty_finite_sum B A) :^: C, hl_FINITE C k = 1 -> hl_fstcart R B A (hl_vsum C (hl_ty_finite_sum B A) k x) = hl_vsum C B k (fun i :e C => hl_fstcart R B A (x i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4271 / SNDCART_VEC   (hash md5:40ee1fe9cb8a2f11c7fcf71079ddd6ce)
Theorem hlt_SNDCART_VEC : forall A B:set, A <> Empty -> B <> Empty -> forall n :e omega, hl_sndcart R A B (hl_vec (hl_ty_finite_sum A B) n) = hl_vec B n.
Admitted.

// HOL Light: Multivariate/vectors.ml:4277 / SNDCART_ADD   (hash md5:311f480775c840f7c88a23d86c2b9495)
Theorem hlt_SNDCART_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_finite_sum M N), hl_sndcart R M N (hl_vector_add (hl_ty_finite_sum M N) x y) = hl_vector_add N (hl_sndcart R M N x) (hl_sndcart R M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4281 / SNDCART_CMUL   (hash md5:d5c6f833c637ba63e8c4bcf18605e4aa)
Theorem hlt_SNDCART_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R (hl_ty_finite_sum M N), forall c :e R, hl_sndcart R M N (hl_vmul (hl_ty_finite_sum M N) c x) = hl_vmul N c (hl_sndcart R M N x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4285 / SNDCART_NEG   (hash md5:a3721aab619b8d7c51816886ddaec0d2)
Theorem hlt_SNDCART_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R (hl_ty_finite_sum M N), hl_vector_neg N (hl_sndcart R M N x) = hl_sndcart R M N (hl_vector_neg (hl_ty_finite_sum M N) x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4290 / SNDCART_SUB   (hash md5:16f38fad54948b9046552420981013b2)
Theorem hlt_SNDCART_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_finite_sum M N), hl_sndcart R M N (hl_vector_sub (hl_ty_finite_sum M N) x y) = hl_vector_sub N (hl_sndcart R M N x) (hl_sndcart R M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4294 / SNDCART_VSUM   (hash md5:d4952d1c357e0f419c9c13967d45cdf5)
Theorem hlt_SNDCART_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall k :e 2 :^: C, forall x :e hl_ty_cart R (hl_ty_finite_sum A B) :^: C, hl_FINITE C k = 1 -> hl_sndcart R A B (hl_vsum C (hl_ty_finite_sum A B) k x) = hl_vsum C B k (fun i :e C => hl_sndcart R A B (x i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4300 / PASTECART_VEC   (hash md5:0012fc7ecaa9a6f22965314abc379f04)
Theorem hlt_PASTECART_VEC : forall A B:set, A <> Empty -> B <> Empty -> forall n :e omega, hl_pastecart R A B (hl_vec A n) (hl_vec B n) = hl_vec (hl_ty_finite_sum A B) n.
Admitted.

// HOL Light: Multivariate/vectors.ml:4305 / PASTECART_ADD   (hash md5:3c3cbc83ec65ec530b489ae7a8b3ba9f)
Theorem hlt_PASTECART_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall x1 :e hl_ty_cart R M, forall y1 :e hl_ty_cart R N, forall x2 :e hl_ty_cart R M, forall y2 :e hl_ty_cart R N, hl_vector_add (hl_ty_finite_sum M N) (hl_pastecart R M N x1 y1) (hl_pastecart R M N x2 y2) = hl_pastecart R M N (hl_vector_add M x1 x2) (hl_vector_add N y1 y2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4311 / PASTECART_CMUL   (hash md5:c7163e4061646058d9b25e367eef13f5)
Theorem hlt_PASTECART_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall x1 :e hl_ty_cart R A, forall y1 :e hl_ty_cart R B, forall c :e R, hl_pastecart R A B (hl_vmul A c x1) (hl_vmul B c y1) = hl_vmul (hl_ty_finite_sum A B) c (hl_pastecart R A B x1 y1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4316 / PASTECART_NEG   (hash md5:b9aa444e0a85ccb89c9fd26b24e0d29b)
Theorem hlt_PASTECART_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_pastecart R M N (hl_vector_neg M x) (hl_vector_neg N y) = hl_vector_neg (hl_ty_finite_sum M N) (hl_pastecart R M N x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4321 / PASTECART_SUB   (hash md5:6f18cbfbc0eb876175bc07d3a007bc4b)
Theorem hlt_PASTECART_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall x1 :e hl_ty_cart R M, forall y1 :e hl_ty_cart R N, forall x2 :e hl_ty_cart R M, forall y2 :e hl_ty_cart R N, hl_vector_sub (hl_ty_finite_sum M N) (hl_pastecart R M N x1 y1) (hl_pastecart R M N x2 y2) = hl_pastecart R M N (hl_vector_sub M x1 x2) (hl_vector_sub N y1 y2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4326 / PASTECART_VSUM   (hash md5:8fc9d3eb04a042edfa3b4997d658f84e)
Theorem hlt_PASTECART_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall k :e 2 :^: C, forall x :e hl_ty_cart R A :^: C, forall y :e hl_ty_cart R B :^: C, hl_FINITE C k = 1 -> hl_pastecart R A B (hl_vsum C A k x) (hl_vsum C B k y) = hl_vsum C (hl_ty_finite_sum A B) k (fun i :e C => hl_pastecart R A B (x i) (y i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4332 / PASTECART_EQ_VEC   (hash md5:839c3f874da2881e7ff1f3aaa67d5f4c)
Theorem hlt_PASTECART_EQ_VEC : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, forall n :e omega, hl_pastecart R A B x y = hl_vec (hl_ty_finite_sum A B) n <-> x = hl_vec A n /\ y = hl_vec B n.
Admitted.

// HOL Light: Multivariate/vectors.ml:4337 / FSTCART_SNDCART_MAT_ZERO   (hash md5:b6ed4bd06dab4deaa5492c819794f612)
Theorem hlt_FSTCART_SNDCART_MAT_ZERO : forall A B M:set, A <> Empty -> B <> Empty -> M <> Empty -> hl_fstcart (hl_ty_cart R M) A B (hl_mat M (hl_ty_finite_sum A B) (hl_NUMERAL hl_zero)) = hl_mat M A (hl_NUMERAL hl_zero) /\ hl_sndcart (hl_ty_cart R M) A B (hl_mat M (hl_ty_finite_sum A B) (hl_NUMERAL hl_zero)) = hl_mat M B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:4342 / FSTCART_SNDCART_MATRIX_ADD   (hash md5:23d720e446762b4dbfdb472fffc76088)
Theorem hlt_FSTCART_SNDCART_MATRIX_ADD : forall K M N:set, K <> Empty -> M <> Empty -> N <> Empty -> forall x y :e hl_ty_cart (hl_ty_cart R K) (hl_ty_finite_sum M N), hl_fstcart (hl_ty_cart R K) M N (hl_matrix_add K (hl_ty_finite_sum M N) x y) = hl_matrix_add K M (hl_fstcart (hl_ty_cart R K) M N x) (hl_fstcart (hl_ty_cart R K) M N y) /\ hl_sndcart (hl_ty_cart R K) M N (hl_matrix_add K (hl_ty_finite_sum M N) x y) = hl_matrix_add K N (hl_sndcart (hl_ty_cart R K) M N x) (hl_sndcart (hl_ty_cart R K) M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4349 / NORM_FSTCART   (hash md5:6714f6c4fd688de1ba74e4c902d16ea2)
Theorem hlt_NORM_FSTCART : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_cart R (hl_ty_finite_sum B A), hl_real_le (hl_vector_norm B (hl_fstcart R B A x)) (hl_vector_norm (hl_ty_finite_sum B A) x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4359 / DIST_FSTCART   (hash md5:0cec6e687c3dca5348cb2dfa54ec667a)
Theorem hlt_DIST_FSTCART : forall A B:set, A <> Empty -> B <> Empty -> forall x y :e hl_ty_cart R (hl_ty_finite_sum B A), hl_real_le (hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) (hl_fstcart R B A x) (hl_fstcart R B A y))) (hl_distance (hl_ty_finite_sum B A) (hl_pair (hl_ty_cart R (hl_ty_finite_sum B A)) (hl_ty_cart R (hl_ty_finite_sum B A)) x y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4363 / NORM_SNDCART   (hash md5:b0915e28cbf2c83719368cd3c9cec93d)
Theorem hlt_NORM_SNDCART : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_cart R (hl_ty_finite_sum A B), hl_real_le (hl_vector_norm B (hl_sndcart R A B x)) (hl_vector_norm (hl_ty_finite_sum A B) x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4376 / DIST_SNDCART   (hash md5:c45fbbd83c2c9034517ebd1a9cfa8256)
Theorem hlt_DIST_SNDCART : forall A B:set, A <> Empty -> B <> Empty -> forall x y :e hl_ty_cart R (hl_ty_finite_sum A B), hl_real_le (hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) (hl_sndcart R A B x) (hl_sndcart R A B y))) (hl_distance (hl_ty_finite_sum A B) (hl_pair (hl_ty_cart R (hl_ty_finite_sum A B)) (hl_ty_cart R (hl_ty_finite_sum A B)) x y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4380 / DOT_PASTECART   (hash md5:f7934f20cb157ed08f5158570af02c42)
Theorem hlt_DOT_PASTECART : forall A B:set, A <> Empty -> B <> Empty -> forall x1 :e hl_ty_cart R A, forall x2 :e hl_ty_cart R B, forall y1 :e hl_ty_cart R A, forall y2 :e hl_ty_cart R B, hl_dot (hl_ty_finite_sum A B) (hl_pastecart R A B x1 x2) (hl_pastecart R A B y1 y2) = hl_real_add (hl_dot A x1 y1) (hl_dot B x2 y2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4390 / SQNORM_PASTECART   (hash md5:6e9b843bcb56872756103351fad815fc)
Theorem hlt_SQNORM_PASTECART : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_real_pow (hl_vector_norm (hl_ty_finite_sum A B) (hl_pastecart R A B x y)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_add (hl_real_pow (hl_vector_norm A x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_vector_norm B y) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:4394 / NORM_PASTECART   (hash md5:424fa6e419be77f834bc4eee49594c15)
Theorem hlt_NORM_PASTECART : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_vector_norm (hl_ty_finite_sum A B) (hl_pastecart R A B x y) = hl_sqrt (hl_real_add (hl_real_pow (hl_vector_norm A x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_vector_norm B y) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:4400 / NORM_PASTECART_LE   (hash md5:4d1ebb132fa96a725bb93ac525152e1f)
Theorem hlt_NORM_PASTECART_LE : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_real_le (hl_vector_norm (hl_ty_finite_sum A B) (hl_pastecart R A B x y)) (hl_real_add (hl_vector_norm A x) (hl_vector_norm B y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4405 / DIST_PASTECART_LE   (hash md5:6ccb3e44b3caeb44891303c413ae8752)
Theorem hlt_DIST_PASTECART_LE : forall A B:set, A <> Empty -> B <> Empty -> forall x1 :e hl_ty_cart R A, forall y1 :e hl_ty_cart R B, forall x2 :e hl_ty_cart R A, forall y2 :e hl_ty_cart R B, hl_real_le (hl_distance (hl_ty_finite_sum A B) (hl_pair (hl_ty_cart R (hl_ty_finite_sum A B)) (hl_ty_cart R (hl_ty_finite_sum A B)) (hl_pastecart R A B x1 y1) (hl_pastecart R A B x2 y2))) (hl_real_add (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x1 x2)) (hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) y1 y2))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4411 / NORM_LE_PASTECART   (hash md5:3fd451f6ca213ccb27643e0fae5f27ee)
Theorem hlt_NORM_LE_PASTECART : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_real_le (hl_vector_norm M x) (hl_vector_norm (hl_ty_finite_sum M N) (hl_pastecart R M N x y)) = 1 /\ hl_real_le (hl_vector_norm N y) (hl_vector_norm (hl_ty_finite_sum M N) (hl_pastecart R M N x y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4419 / DIST_LE_PASTECART   (hash md5:b74c5446417c5ed74d4da8b2e9112641)
Theorem hlt_DIST_LE_PASTECART : forall A B:set, A <> Empty -> B <> Empty -> forall x1 :e hl_ty_cart R A, forall y1 :e hl_ty_cart R B, forall x2 :e hl_ty_cart R A, forall y2 :e hl_ty_cart R B, hl_real_le (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x1 x2)) (hl_distance (hl_ty_finite_sum A B) (hl_pair (hl_ty_cart R (hl_ty_finite_sum A B)) (hl_ty_cart R (hl_ty_finite_sum A B)) (hl_pastecart R A B x1 y1) (hl_pastecart R A B x2 y2))) = 1 /\ hl_real_le (hl_distance B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) y1 y2)) (hl_distance (hl_ty_finite_sum A B) (hl_pair (hl_ty_cart R (hl_ty_finite_sum A B)) (hl_ty_cart R (hl_ty_finite_sum A B)) (hl_pastecart R A B x1 y1) (hl_pastecart R A B x2 y2))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4425 / NORM_PASTECART_0   (hash md5:947d926a749bfb84f0971a97c2f6cf5c)
Theorem hlt_NORM_PASTECART_0 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall x :e hl_ty_cart R A, hl_vector_norm (hl_ty_finite_sum A B) (hl_pastecart R A B x (hl_vec B (hl_NUMERAL hl_zero))) = hl_vector_norm A x) /\ forall y :e hl_ty_cart R C, hl_vector_norm (hl_ty_finite_sum D C) (hl_pastecart R D C (hl_vec D (hl_NUMERAL hl_zero)) y) = hl_vector_norm C y.
Admitted.

// HOL Light: Multivariate/vectors.ml:4431 / DIST_PASTECART_CANCEL   (hash md5:cb6d91f41c0b0ccd8a44c91081e26dde)
Theorem hlt_DIST_PASTECART_CANCEL : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall x x' :e hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_distance (hl_ty_finite_sum A B) (hl_pair (hl_ty_cart R (hl_ty_finite_sum A B)) (hl_ty_cart R (hl_ty_finite_sum A B)) (hl_pastecart R A B x y) (hl_pastecart R A B x' y)) = hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x x')) /\ forall x :e hl_ty_cart R C, forall y y' :e hl_ty_cart R D, hl_distance (hl_ty_finite_sum C D) (hl_pair (hl_ty_cart R (hl_ty_finite_sum C D)) (hl_ty_cart R (hl_ty_finite_sum C D)) (hl_pastecart R C D x y) (hl_pastecart R C D x y')) = hl_distance D (hl_pair (hl_ty_cart R D) (hl_ty_cart R D) y y').
Admitted.

// HOL Light: Multivariate/vectors.ml:4436 / LINEAR_PASTECART   (hash md5:528a0e1484573ddd2a193f3187901b17)
Theorem hlt_LINEAR_PASTECART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_linear M P g = 1 -> hl_linear M (hl_ty_finite_sum N P) (fun x :e hl_ty_cart R M => hl_pastecart R N P (f x) (g x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4441 / LINEAR_PASTECART_EQ   (hash md5:6de741e9cbdb042d80b530321f9bf14b)
Theorem hlt_LINEAR_PASTECART_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_linear M (hl_ty_finite_sum N P) (fun x :e hl_ty_cart R M => hl_pastecart R N P (f x) (g x)) = 1 <-> hl_linear M N f = 1 /\ hl_linear M P g = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4451 / dropout   (hash md5:731ce63d9e6ad406156ea7e5d5c9fa22)
Theorem hlt_dropout_thm : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x :e hl_ty_cart R M, hl_dropout M N k x = hl_lambda R N (fun i :e omega => hl_COND R (if hl_lt i k = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 then 1 else 0) (hl_vindex R M x i) (hl_COND R (hl_le (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex M (hl_UNIV M))) (hl_vindex R M x (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_of_num (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:4457 / pushin   (hash md5:ac6dd54fe42333bb980ac319d7cc6340)
Theorem hlt_pushin_thm : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall k :e omega, forall t :e B, forall x :e hl_ty_cart B C, hl_pushin B C A k t x = hl_lambda B A (fun i :e omega => hl_COND B (hl_lt i k) (hl_vindex B C x i) (hl_COND B (if i = k then 1 else 0) t (hl_vindex B C x (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero)))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:4462 / DROPOUT_PUSHIN   (hash md5:1ee5153e773a64862fa8be3698d49581)
Theorem hlt_DROPOUT_PUSHIN : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall t :e R, forall x :e hl_ty_cart R M, hl_add (hl_dimindex M (hl_UNIV M)) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_dimindex N (hl_UNIV N) -> hl_dropout N M k (hl_pushin R M N k t x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4472 / PUSHIN_DROPOUT   (hash md5:d82a091194e1053eab9af80def4f16fb)
Theorem hlt_PUSHIN_DROPOUT : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x :e hl_ty_cart R N, hl_add (hl_dimindex M (hl_UNIV M)) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_dimindex N (hl_UNIV N) /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> hl_pushin R M N k (hl_vindex R N x k) (hl_dropout N M k x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4490 / DROPOUT_GALOIS   (hash md5:ac324f0de7c6b0333280c9f0667f928c)
Theorem hlt_DROPOUT_GALOIS : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x :e hl_ty_cart R N, forall y :e hl_ty_cart R M, hl_add (hl_dimindex M (hl_UNIV M)) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_dimindex N (hl_UNIV N) /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> (y = hl_dropout N M k x <-> exists t :e R, x = hl_pushin R M N k t y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4500 / IN_IMAGE_DROPOUT   (hash md5:555dfee2f7fcec931d1d3173c95e8507)
Theorem hlt_IN_IMAGE_DROPOUT : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_add (hl_dimindex M (hl_UNIV M)) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_dimindex N (hl_UNIV N) /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> (hl_IN (hl_ty_cart R M) x (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) (hl_dropout N M k) s) = 1 <-> exists t :e R, hl_IN (hl_ty_cart R N) (hl_pushin R M N k t x) s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4507 / DROPOUT_EQ   (hash md5:7a070478443a5c5a627dc04e5898815f)
Theorem hlt_DROPOUT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e hl_ty_cart R N, forall k :e omega, hl_add (hl_dimindex M (hl_UNIV M)) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_dimindex N (hl_UNIV N) /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_vindex R N x k = hl_vindex R N y k /\ hl_dropout N M k x = hl_dropout N M k y))) -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:4523 / DROPOUT_0   (hash md5:8275359b242f36e1bfda5607a564fd61)
Theorem hlt_DROPOUT_0 : forall A N:set, A <> Empty -> N <> Empty -> forall k :e omega, hl_dropout N A k (hl_vec N (hl_NUMERAL hl_zero)) = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:4527 / DOT_DROPOUT   (hash md5:d919022947bd3ffbec7bcbe3c4aaf753)
Theorem hlt_DOT_DROPOUT : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x y :e hl_ty_cart R N, hl_add (hl_dimindex M (hl_UNIV M)) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_dimindex N (hl_UNIV N) /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> hl_dot M (hl_dropout N M k x) (hl_dropout N M k y) = hl_real_sub (hl_dot N x y) (hl_real_mul (hl_vindex R N x k) (hl_vindex R N y k)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4557 / DOT_PUSHIN   (hash md5:a861f89877876dc00d9cb92d9570a50f)
Theorem hlt_DOT_PUSHIN : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall a b :e R, forall x y :e hl_ty_cart R M, hl_add (hl_dimindex M (hl_UNIV M)) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_dimindex N (hl_UNIV N) /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> hl_dot N (hl_pushin R M N k a x) (hl_pushin R M N k b y) = hl_real_add (hl_dot M x y) (hl_real_mul a b).
Admitted.

// HOL Light: Multivariate/vectors.ml:4572 / DROPOUT_ADD   (hash md5:466490b477bd16539d183abfc77470ba)
Theorem hlt_DROPOUT_ADD : forall A N:set, A <> Empty -> N <> Empty -> forall k :e omega, forall x y :e hl_ty_cart R N, hl_dropout N A k (hl_vector_add N x y) = hl_vector_add A (hl_dropout N A k x) (hl_dropout N A k y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4578 / DROPOUT_SUB   (hash md5:99faafb2458078ba45982b3a8df87da7)
Theorem hlt_DROPOUT_SUB : forall A N:set, A <> Empty -> N <> Empty -> forall k :e omega, forall x y :e hl_ty_cart R N, hl_dropout N A k (hl_vector_sub N x y) = hl_vector_sub A (hl_dropout N A k x) (hl_dropout N A k y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4584 / DROPOUT_MUL   (hash md5:f344ef18564e0b05989dd91f3f94350d)
Theorem hlt_DROPOUT_MUL : forall A N:set, A <> Empty -> N <> Empty -> forall k :e omega, forall c :e R, forall x :e hl_ty_cart R N, hl_dropout N A k (hl_vmul N c x) = hl_vmul A c (hl_dropout N A k x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4590 / LINEAR_DROPOUT   (hash md5:70a5d9d40a6c9f7b19a4e892a9df0b5c)
Theorem hlt_LINEAR_DROPOUT : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, hl_linear N M (hl_dropout N M k) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4594 / LINEAR_PUSHIN   (hash md5:a11c39c3491b90a792e0b9f6e101696d)
Theorem hlt_LINEAR_PUSHIN : forall A B:set, A <> Empty -> B <> Empty -> forall k :e omega, hl_linear A B (hl_pushin R A B k (hl_real_of_num (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4604 / subspace   (hash md5:0a81a40639e08e9a9ee8e286b3709c6d)
Theorem hlt_subspace_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 <-> hl_IN (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) s = 1 /\ ((forall x y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y s = 1 -> hl_IN (hl_ty_cart R A) (hl_vector_add A x y) s = 1) /\ forall c :e R, forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> hl_IN (hl_ty_cart R A) (hl_vmul A c x) s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4610 / span   (hash md5:b79fb4155b848ea4572738743948ad55)
Theorem hlt_span_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_span A s = hl_hull (hl_ty_cart R A) (hl_subspace A) s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4613 / dependent   (hash md5:d37590cc5be58ababcc8cc71a6e753a9)
Theorem hlt_dependent_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_dependent A s = 1 <-> exists a :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) a s = 1 /\ hl_IN (hl_ty_cart R A) a (hl_span A (hl_DELETE (hl_ty_cart R A) s a)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4616 / independent   (hash md5:8d6c1e09e84b84c217cdbea408a4a592)
Theorem hlt_independent_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_independent A s = 1 <-> ~ hl_dependent A s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4623 / SUBSPACE_UNIV   (hash md5:6a0b0f5233a6073452ddc0d061c6e693)
Theorem hlt_SUBSPACE_UNIV : forall N:set, N <> Empty -> hl_subspace N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4627 / SUBSPACE_IMP_NONEMPTY   (hash md5:2370b5ec9d478afd125376b99eec0b86)
Theorem hlt_SUBSPACE_IMP_NONEMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 -> ~ s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/vectors.ml:4631 / SUBSPACE_0   (hash md5:7624811974b3ea4e3c1d037346e7e28c)
Theorem hlt_SUBSPACE_0 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 -> hl_IN (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4635 / SUBSPACE_ADD   (hash md5:e780bda98f790a39d6051c3aa067b5f2)
Theorem hlt_SUBSPACE_ADD : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 /\ (hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y s = 1) -> hl_IN (hl_ty_cart R A) (hl_vector_add A x y) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4639 / SUBSPACE_MUL   (hash md5:d54a6b3f7861bfabe2f45dfce6a700cd)
Theorem hlt_SUBSPACE_MUL : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, forall c :e R, forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 /\ hl_IN (hl_ty_cart R A) x s = 1 -> hl_IN (hl_ty_cart R A) (hl_vmul A c x) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4643 / SUBSPACE_MUL_EQ   (hash md5:2bcedc7048ffaec7cc6b7dbc486cb4af)
Theorem hlt_SUBSPACE_MUL_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, forall x :e hl_ty_cart R N, hl_subspace N s = 1 -> (hl_IN (hl_ty_cart R N) (hl_vmul N c x) s = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_IN (hl_ty_cart R N) x s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4652 / SUBSPACE_NEG   (hash md5:6cc4f9bead30e757f55191f7fc283615)
Theorem hlt_SUBSPACE_NEG : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 /\ hl_IN (hl_ty_cart R A) x s = 1 -> hl_IN (hl_ty_cart R A) (hl_vector_neg A x) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4656 / SUBSPACE_NEG_EQ   (hash md5:0b209e6180eb3cd3e113822774b16f86)
Theorem hlt_SUBSPACE_NEG_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_subspace N s = 1 -> (hl_IN (hl_ty_cart R N) (hl_vector_neg N x) s = 1 <-> hl_IN (hl_ty_cart R N) x s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4660 / SUBSPACE_SUB   (hash md5:ff39420a49ea3e08ede0c35c3262ab1b)
Theorem hlt_SUBSPACE_SUB : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 /\ (hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y s = 1) -> hl_IN (hl_ty_cart R A) (hl_vector_sub A x y) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4664 / SUBSPACE_VSUM   (hash md5:3c7e89c852908a6c1481ee9eb9b05fa0)
Theorem hlt_SUBSPACE_VSUM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R B, forall f :e hl_ty_cart R B :^: A, forall t :e 2 :^: A, hl_subspace B s = 1 /\ (hl_FINITE A t = 1 /\ (forall x :e A, hl_IN A x t = 1 -> hl_IN (hl_ty_cart R B) (f x) s = 1)) -> hl_IN (hl_ty_cart R B) (hl_vsum A B t f) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4672 / SUBSPACE_LINEAR_IMAGE   (hash md5:a5195cdf43d09e11528349b240365b5f)
Theorem hlt_SUBSPACE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ hl_subspace B s = 1 -> hl_subspace A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4678 / SUBSPACE_LINEAR_PREIMAGE   (hash md5:bf6099b72ac7a75a14a6c87626f9652c)
Theorem hlt_SUBSPACE_LINEAR_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R B, hl_linear A B f = 1 /\ hl_subspace B s = 1 -> hl_subspace A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_2788 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_2788 (hl_IN (hl_ty_cart R B) (f x) s) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4683 / SUBSPACE_TRIVIAL   (hash md5:d74240d9e7c852d64844eb393e62bf01)
Theorem hlt_SUBSPACE_TRIVIAL : forall A:set, A <> Empty -> hl_subspace A (hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R A))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4687 / SUBSPACE_INTER   (hash md5:4b709caec5bc3de2ebdcd7016df2f3c0)
Theorem hlt_SUBSPACE_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 /\ hl_subspace A t = 1 -> hl_subspace A (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4691 / SUBSPACE_INTERS   (hash md5:ec0c0417fb34bcfb67b04dde72a9fbd2)
Theorem hlt_SUBSPACE_INTERS : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R A), (forall s :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) s f = 1 -> hl_subspace A s = 1) -> hl_subspace A (hl_INTERS (hl_ty_cart R A) f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4695 / LINEAR_INJECTIVE_0_SUBSPACE   (hash md5:6d90390674ee5dfd78618e661791db4a)
Theorem hlt_LINEAR_INJECTIVE_0_SUBSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_subspace M s = 1 -> ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y) <-> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ f x = hl_vec N (hl_NUMERAL hl_zero) -> x = hl_vec M (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4705 / SUBSPACE_UNION_CHAIN   (hash md5:542d08123313720edd9a49a70b711d80)
Theorem hlt_SUBSPACE_UNION_CHAIN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_subspace N t = 1 /\ hl_subspace N (hl_UNION (hl_ty_cart R N) s t) = 1) -> hl_SUBSET (hl_ty_cart R N) s t = 1 \/ hl_SUBSET (hl_ty_cart R N) t s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4718 / SUBSPACE_PCROSS   (hash md5:b5126949e86dd95fd548ba732bb1e401)
Theorem hlt_SUBSPACE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_subspace M s = 1 /\ hl_subspace N t = 1 -> hl_subspace (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4725 / SUBSPACE_PCROSS_EQ   (hash md5:79a9230736b0a051f91e904b309719bc)
Theorem hlt_SUBSPACE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_subspace (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> hl_subspace M s = 1 /\ hl_subspace N t = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4749 / SPAN_SPAN   (hash md5:750bab29f645ca62fa63430a7f4b73e8)
Theorem hlt_SPAN_SPAN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_span A (hl_span A s) = hl_span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4753 / SPAN_MONO   (hash md5:0f66674127a4086a037e096b3845b6db)
Theorem hlt_SPAN_MONO : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_SUBSET (hl_ty_cart R A) (hl_span A s) (hl_span A t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4757 / SUBSPACE_SPAN   (hash md5:4b4984f489e13f264fb2a9b5c4d5ea7c)
Theorem hlt_SUBSPACE_SPAN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_subspace A (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4762 / NONEMPTY_SPAN   (hash md5:9d4541c83791a2a98927f218cdac3746)
Theorem hlt_NONEMPTY_SPAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_span N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:4766 / SPAN_CLAUSES   (hash md5:cb25e744a668dd5e94161ce893818a22)
Theorem hlt_SPAN_CLAUSES : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s :e 2 :^: hl_ty_cart R B, (forall a :e hl_ty_cart R A, forall s1 :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) a s1 = 1 -> hl_IN (hl_ty_cart R A) a (hl_span A s1) = 1) /\ (hl_IN (hl_ty_cart R B) (hl_vec B (hl_NUMERAL hl_zero)) (hl_span B s) = 1 /\ ((forall x y :e hl_ty_cart R D, forall s1 :e 2 :^: hl_ty_cart R D, hl_IN (hl_ty_cart R D) x (hl_span D s1) = 1 /\ hl_IN (hl_ty_cart R D) y (hl_span D s1) = 1 -> hl_IN (hl_ty_cart R D) (hl_vector_add D x y) (hl_span D s1) = 1) /\ forall x :e hl_ty_cart R C, forall c :e R, forall s1 :e 2 :^: hl_ty_cart R C, hl_IN (hl_ty_cart R C) x (hl_span C s1) = 1 -> hl_IN (hl_ty_cart R C) (hl_vmul C c x) (hl_span C s1) = 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4773 / SPAN_INDUCT   (hash md5:2337e955814fc198c94dbc0176522633)
Theorem hlt_SPAN_INDUCT : forall A:set, A <> Empty -> forall s h :e 2 :^: hl_ty_cart R A, (forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> hl_IN (hl_ty_cart R A) x h = 1) /\ hl_subspace A h = 1 -> forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (hl_span A s) = 1 -> h x = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4777 / SPAN_EMPTY   (hash md5:85cdcb43dd61a10b06730ffc04b29fee)
Theorem hlt_SPAN_EMPTY : forall A:set, A <> Empty -> hl_span A (hl_EMPTY (hl_ty_cart R A)) = hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4783 / INDEPENDENT_EMPTY   (hash md5:0062e38a557f3d88f5f5a7974cb957ae)
Theorem hlt_INDEPENDENT_EMPTY : forall A:set, A <> Empty -> hl_independent A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4787 / INDEPENDENT_NONZERO   (hash md5:07bbf74a34578ba05224af7070ee86c9)
Theorem hlt_INDEPENDENT_NONZERO : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_independent A s = 1 -> ~ hl_IN (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4791 / INDEPENDENT_MONO   (hash md5:f75c17b0ea118187b9d512a86e17f1d7)
Theorem hlt_INDEPENDENT_MONO : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_independent A t = 1 /\ hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_independent A s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4796 / DEPENDENT_MONO   (hash md5:80f1dd1cb6d834069a1d80229aac67b9)
Theorem hlt_DEPENDENT_MONO : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_dependent N s = 1 /\ hl_SUBSET (hl_ty_cart R N) s t = 1 -> hl_dependent N t = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4801 / SPAN_SUBSPACE   (hash md5:d679a94688d5a4c62e7714a80a625666)
Theorem hlt_SPAN_SUBSPACE : forall A:set, A <> Empty -> forall b s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) b s = 1 /\ (hl_SUBSET (hl_ty_cart R A) s (hl_span A b) = 1 /\ hl_subspace A s = 1) -> hl_span A b = s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4805 / SPAN_INDUCT_ALT   (hash md5:5e57670bc9cb2e583987652a598e737a)
Theorem hlt_SPAN_INDUCT_ALT : forall N:set, N <> Empty -> forall s h :e 2 :^: hl_ty_cart R N, h (hl_vec N (hl_NUMERAL hl_zero)) = 1 /\ (forall c :e R, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ h y = 1 -> h (hl_vector_add N (hl_vmul N c x) y) = 1) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_span N s) = 1 -> h x = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4826 / SPAN_SUPERSET   (hash md5:16740e39e0914ddbb2654c1ba1dd78aa)
Theorem hlt_SPAN_SUPERSET : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> hl_IN (hl_ty_cart R A) x (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4830 / SPAN_INC   (hash md5:f8cc184847e70ca5f04125a4204319e4)
Theorem hlt_SPAN_INC : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4834 / SPAN_UNION_SUBSET   (hash md5:8768fe5f9186ee51b44fd239c428ecff)
Theorem hlt_SPAN_UNION_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_UNION (hl_ty_cart R A) (hl_span A s) (hl_span A t)) (hl_span A (hl_UNION (hl_ty_cart R A) s t)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4838 / SPAN_UNIV   (hash md5:647927dc3b92773ca168d081e3bb2f80)
Theorem hlt_SPAN_UNIV : forall N:set, N <> Empty -> hl_span N (hl_UNIV (hl_ty_cart R N)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:4842 / SPAN_0   (hash md5:248bf3417adabd7bcd1f99acaa1f8a71)
Theorem hlt_SPAN_0 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4846 / SPAN_ADD   (hash md5:79bd8e82e605fa61bc87b5352248d7fd)
Theorem hlt_SPAN_ADD : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (hl_span A s) = 1 /\ hl_IN (hl_ty_cart R A) y (hl_span A s) = 1 -> hl_IN (hl_ty_cart R A) (hl_vector_add A x y) (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4850 / SPAN_MUL   (hash md5:b29a5a6086777d1f72fa04843768d5a6)
Theorem hlt_SPAN_MUL : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, forall c :e R, forall s :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (hl_span A s) = 1 -> hl_IN (hl_ty_cart R A) (hl_vmul A c x) (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4854 / SPAN_MUL_EQ   (hash md5:97f5d83cb798d831fc309b5ce6ff4d8d)
Theorem hlt_SPAN_MUL_EQ : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall c :e R, forall s :e 2 :^: hl_ty_cart R N, ~ c = hl_real_of_num (hl_NUMERAL hl_zero) -> (hl_IN (hl_ty_cart R N) (hl_vmul N c x) (hl_span N s) = 1 <-> hl_IN (hl_ty_cart R N) x (hl_span N s) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4861 / SPAN_NEG   (hash md5:f826f6782aa75bc647dd72f8006d75a7)
Theorem hlt_SPAN_NEG : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (hl_span A s) = 1 -> hl_IN (hl_ty_cart R A) (hl_vector_neg A x) (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4865 / SPAN_NEG_EQ   (hash md5:1e639afc7c049f8ab1dfcf923a6dcd05)
Theorem hlt_SPAN_NEG_EQ : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) (hl_vector_neg A x) (hl_span A s) = 1 <-> hl_IN (hl_ty_cart R A) x (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4869 / SPAN_SUB   (hash md5:4cc4e32cc37fafb830a4c14f20796c22)
Theorem hlt_SPAN_SUB : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (hl_span A s) = 1 /\ hl_IN (hl_ty_cart R A) y (hl_span A s) = 1 -> hl_IN (hl_ty_cart R A) (hl_vector_sub A x y) (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4873 / SPAN_VSUM   (hash md5:b47759a3b491fd9cc11f4e7bd0605069)
Theorem hlt_SPAN_VSUM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R B, forall f :e hl_ty_cart R B :^: A, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ (forall x :e A, hl_IN A x t = 1 -> hl_IN (hl_ty_cart R B) (f x) (hl_span B s) = 1) -> hl_IN (hl_ty_cart R B) (hl_vsum A B t f) (hl_span B s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4878 / SPAN_ADD_EQ   (hash md5:77b9ba8aed823456c2387d1141b5fe9a)
Theorem hlt_SPAN_ADD_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (hl_span A s) = 1 -> (hl_IN (hl_ty_cart R A) (hl_vector_add A x y) (hl_span A s) = 1 <-> hl_IN (hl_ty_cart R A) y (hl_span A s) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4882 / SPAN_EQ_SELF   (hash md5:186b6a144dc694d52c1d4f5780058655)
Theorem hlt_SPAN_EQ_SELF : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_span A s = s <-> hl_subspace A s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4888 / SPAN_OF_SUBSPACE   (hash md5:da13fc009be393b5b3943e14df830007)
Theorem hlt_SPAN_OF_SUBSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> hl_span N s = s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4892 / SPAN_SUBSET_SUBSPACE   (hash md5:1013d69374fa44597ca16d06bc160321)
Theorem hlt_SPAN_SUBSET_SUBSPACE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ hl_subspace N t = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_span N s) t = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4896 / SUBSPACE_TRANSLATION_SELF   (hash md5:0d065df73c17d690b36aefbf77fdcb48)
Theorem hlt_SUBSPACE_TRANSLATION_SELF : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a :e hl_ty_cart R A, hl_subspace A s = 1 /\ hl_IN (hl_ty_cart R A) a s = 1 -> hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) s = s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4903 / SUBSPACE_TRANSLATION_SELF_EQ   (hash md5:bb4dbb1f0c59ae3e048c77b77a02af61)
Theorem hlt_SUBSPACE_TRANSLATION_SELF_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_subspace N s = 1 -> (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s = s <-> hl_IN (hl_ty_cart R N) a s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4912 / SUBSPACE_SUMS   (hash md5:aa6e8bd75afbdd99281e02dc70bbe852)
Theorem hlt_SUBSPACE_SUMS : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 /\ hl_subspace A t = 1 -> hl_subspace A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_2789 :e hl_ty_cart R A => if exists x y :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_2789 (if hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y t = 1 then 1 else 0) (hl_vector_add A x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4923 / SPAN_UNION   (hash md5:285eeb6db45c6cdfec227607530b2aff)
Theorem hlt_SPAN_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_span N (hl_UNION (hl_ty_cart R N) s t) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2790 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2790 (if hl_IN (hl_ty_cart R N) x (hl_span N s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_span N t) = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:4942 / SPAN_LINEAR_IMAGE   (hash md5:5d436df7fe033ccf425d4abbca9c139a)
Theorem hlt_SPAN_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_span N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_span M s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4958 / DEPENDENT_LINEAR_IMAGE_EQ   (hash md5:3bcdde6acbfdcce4221751fc1e4287fc)
Theorem hlt_DEPENDENT_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_dependent N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_dependent M s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4971 / DEPENDENT_LINEAR_IMAGE   (hash md5:728b1c56bee4c8fe02a389672f3b8c7e)
Theorem hlt_DEPENDENT_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y) /\ hl_dependent M s = 1) -> hl_dependent N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4985 / INDEPENDENT_LINEAR_IMAGE_EQ   (hash md5:1c6c71e820b50c8f2fa9fa18c95dbb86)
Theorem hlt_INDEPENDENT_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_independent N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_independent M s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4996 / SPAN_BREAKDOWN   (hash md5:651f68b92537d0aa74159315c3f03c27)
Theorem hlt_SPAN_BREAKDOWN : forall N:set, N <> Empty -> forall b :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_span N s) = 1 -> exists k :e R, hl_IN (hl_ty_cart R N) (hl_vector_sub N a (hl_vmul N k b)) (hl_span N (hl_DELETE (hl_ty_cart R N) s b)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5008 / SPAN_BREAKDOWN_EQ   (hash md5:78d676aa60ac943a629b0e1e80e82eca)
Theorem hlt_SPAN_BREAKDOWN_EQ : forall N:set, N <> Empty -> forall x a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_span N (hl_INSERT (hl_ty_cart R N) a s)) = 1 <-> exists k :e R, hl_IN (hl_ty_cart R N) (hl_vector_sub N x (hl_vmul N k a)) (hl_span N s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5021 / SPAN_INSERT_0   (hash md5:d3fc0c4c78dc208af496b3b7668dcb8d)
Theorem hlt_SPAN_INSERT_0 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_span A (hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) s) = hl_span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5025 / SPAN_SING   (hash md5:ed154e6b91dc30b04c3311373e524ac2)
Theorem hlt_SPAN_SING : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_span A (hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_2792 :e hl_ty_cart R A => if exists u :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_2792 (hl_IN R u (hl_UNIV R)) (hl_vmul A u a) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:5030 / SPAN_2   (hash md5:7d32666efc921aa6d7d92ea8f68705a7)
Theorem hlt_SPAN_2 : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_span A (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A)))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_2793 :e hl_ty_cart R A => if exists u v :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_2793 (if hl_IN R u (hl_UNIV R) = 1 /\ hl_IN R v (hl_UNIV R) = 1 then 1 else 0) (hl_vector_add A (hl_vmul A u a) (hl_vmul A v b)) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:5036 / SPAN_3   (hash md5:92c6c20f46ea473bd5890266dc82aee1)
Theorem hlt_SPAN_3 : forall A:set, A <> Empty -> forall a b c :e hl_ty_cart R A, hl_span A (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_INSERT (hl_ty_cart R A) c (hl_EMPTY (hl_ty_cart R A))))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_2794 :e hl_ty_cart R A => if exists u v w :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_2794 (if hl_IN R u (hl_UNIV R) = 1 /\ (hl_IN R v (hl_UNIV R) = 1 /\ hl_IN R w (hl_UNIV R) = 1) then 1 else 0) (hl_vector_add A (hl_vmul A u a) (hl_vector_add A (hl_vmul A v b) (hl_vmul A w c))) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:5047 / IN_SPAN_INSERT   (hash md5:376f018f7c89f51b2522956f56b60059)
Theorem hlt_IN_SPAN_INSERT : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_span N (hl_INSERT (hl_ty_cart R N) b s)) = 1 /\ ~ hl_IN (hl_ty_cart R N) a (hl_span N s) = 1 -> hl_IN (hl_ty_cart R N) b (hl_span N (hl_INSERT (hl_ty_cart R N) a s)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5063 / IN_SPAN_DELETE   (hash md5:ca37f6b1c6ec61308f41d74f6d840f87)
Theorem hlt_IN_SPAN_DELETE : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) a (hl_span A s) = 1 /\ ~ hl_IN (hl_ty_cart R A) a (hl_span A (hl_DELETE (hl_ty_cart R A) s b)) = 1 -> hl_IN (hl_ty_cart R A) b (hl_span A (hl_INSERT (hl_ty_cart R A) a (hl_DELETE (hl_ty_cart R A) s b))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5069 / EQ_SPAN_INSERT_EQ   (hash md5:3ad747c8fc6478d90f4b30490b411b8e)
Theorem hlt_EQ_SPAN_INSERT_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vector_sub N x y) (hl_span N s) = 1 -> hl_span N (hl_INSERT (hl_ty_cart R N) x s) = hl_span N (hl_INSERT (hl_ty_cart R N) y s).
Admitted.

// HOL Light: Multivariate/vectors.ml:5080 / SPAN_EXPLICIT   (hash md5:eaae9f9f5e55fda7bc7065e56688ca53)
Theorem hlt_SPAN_EXPLICIT : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_span N p = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2795 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2795 (if exists s :e 2 :^: hl_ty_cart R N, exists u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = y) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:5115 / DEPENDENT_EXPLICIT   (hash md5:939fae3806934a14fe1ed3aa85e590f0)
Theorem hlt_DEPENDENT_EXPLICIT : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_dependent N p = 1 <-> exists s :e 2 :^: hl_ty_cart R N, exists u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ ((exists v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v s = 1 /\ ~ u v = hl_real_of_num (hl_NUMERAL hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = hl_vec N (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5146 / DEPENDENT_FINITE   (hash md5:c67db51789c8990ae642e83763fa8c69)
Theorem hlt_DEPENDENT_FINITE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> (hl_dependent N s = 1 <-> exists u :e R :^: hl_ty_cart R N, (exists v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v s = 1 /\ ~ u v = hl_real_of_num (hl_NUMERAL hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5164 / SPAN_FINITE   (hash md5:43ca0e918309a83a862b48ac56ed4c72)
Theorem hlt_SPAN_FINITE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_span N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2798 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2798 (if exists u :e R :^: hl_ty_cart R N, hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = y then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:5183 / SPAN_STDBASIS   (hash md5:1e86b48178fb3f4f02592aa523705f54)
Theorem hlt_SPAN_STDBASIS : forall N:set, N <> Empty -> hl_span N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2799 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2799 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5192 / HAS_SIZE_STDBASIS   (hash md5:4b208c608e454ddfce5b1bf3a8cd01d7)
Theorem hlt_HAS_SIZE_STDBASIS : forall N:set, N <> Empty -> hl_HAS_SIZE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2802 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2802 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0)) (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5200 / FINITE_STDBASIS   (hash md5:7f218d8532fe87d32fbb37a89e76d118)
Theorem hlt_FINITE_STDBASIS : forall N:set, N <> Empty -> hl_FINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2803 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2803 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5204 / CARD_STDBASIS   (hash md5:717badc4b8d6bfbfbe0ae2d84b2e3894)
Theorem hlt_CARD_STDBASIS : forall N:set, N <> Empty -> hl_CARD (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2804 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2804 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0)) = hl_dimindex N (hl_UNIV N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5209 / IN_SPAN_IMAGE_BASIS   (hash md5:80024990f061b42958e8150e45a1c0f0)
Theorem hlt_IN_SPAN_IMAGE_BASIS : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: omega, hl_IN (hl_ty_cart R N) x (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) s)) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ hl_IN omega i s = 1) -> hl_vindex R N x i = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:5238 / INDEPENDENT_STDBASIS   (hash md5:46f065edfcb916b6cf8678e49d75120d)
Theorem hlt_INDEPENDENT_STDBASIS : forall N:set, N <> Empty -> hl_independent N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2809 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2809 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5256 / INDEPENDENT_BASIS_IMAGE   (hash md5:2051dd439e12ac30462457b4118df861)
Theorem hlt_INDEPENDENT_BASIS_IMAGE : forall N:set, N <> Empty -> forall k :e 2 :^: omega, hl_independent N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) k) = 1 <-> hl_SUBSET omega k (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5272 / dim   (hash md5:fad5565b4210d980d88771a33fb81b36)
Theorem hlt_dim_thm : forall N:set, N <> Empty -> forall v :e 2 :^: hl_ty_cart R N, hl_dim N v = hl_select omega (fun n :e omega => if exists b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b v = 1 /\ (hl_independent N b = 1 /\ (hl_SUBSET (hl_ty_cart R N) v (hl_span N b) = 1 /\ hl_HAS_SIZE (hl_ty_cart R N) b n = 1)) then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:5276 / euclidean_matroid   (hash md5:0845cea5e85036dca62094a7eee9b260)
Theorem hlt_euclidean_matroid_thm : forall N:set, N <> Empty -> hl_euclidean_matroid N = hl_matroid (hl_ty_cart R N) (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N :^: (2 :^: hl_ty_cart R N)) (hl_UNIV (hl_ty_cart R N)) (hl_span N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5279 / EUCLIDEAN_MATROID   (hash md5:06adb395f984bad33571f884d84b2117)
Theorem hlt_EUCLIDEAN_MATROID : forall N:set, N <> Empty -> hl_matroid_set (hl_ty_cart R N) (hl_euclidean_matroid N) = hl_UNIV (hl_ty_cart R N) /\ hl_matroid_span (hl_ty_cart R N) (hl_euclidean_matroid N) = hl_span N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5293 / EUCLIDEAN_MATROID_INDEPENDENT   (hash md5:c3e3b52b64941e8a3064c607072d2ca2)
Theorem hlt_EUCLIDEAN_MATROID_INDEPENDENT : forall N:set, N <> Empty -> hl_matroid_independent (hl_ty_cart R N) (hl_euclidean_matroid N) = hl_independent N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5298 / EUCLIDEAN_MATROID_SPANNING   (hash md5:298fe8791cc4f7ab873bbaaa2f65ec65)
Theorem hlt_EUCLIDEAN_MATROID_SPANNING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_matroid_spanning (hl_ty_cart R N) (hl_euclidean_matroid N) s = 1 <-> hl_span N s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5302 / EUCLIDEAN_MATROID_SUBSPACE   (hash md5:3ad5a38a3c43d4405715f88844a3bf96)
Theorem hlt_EUCLIDEAN_MATROID_SUBSPACE : forall N:set, N <> Empty -> hl_matroid_subspace (hl_ty_cart R N) (hl_euclidean_matroid N) = hl_subspace N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5308 / EUCLIDEAN_MATROID_FINITE_DIMENSIONAL   (hash md5:7f5971751e0d819b185d6ae6affa3749)
Theorem hlt_EUCLIDEAN_MATROID_FINITE_DIMENSIONAL : forall N:set, N <> Empty -> hl_matroid_finite_dimensional (hl_ty_cart R N) (hl_euclidean_matroid N) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5314 / EUCLIDEAN_MATROID_DIMENSION   (hash md5:7912355767ffa35fa374c85530165af0)
Theorem hlt_EUCLIDEAN_MATROID_DIMENSION : forall N:set, N <> Empty -> hl_matroid_dimension (hl_ty_cart R N) (hl_euclidean_matroid N) = hl_dimindex N (hl_UNIV N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5321 / EUCLIDEAN_MATROID_FINITE_DIM   (hash md5:c1cfed7e92f5dbda2fa373edf604ff97)
Theorem hlt_EUCLIDEAN_MATROID_FINITE_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_matroid_finite_dim (hl_ty_cart R N) (hl_euclidean_matroid N) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5327 / EUCLIDEAN_SUBMATROID   (hash md5:5270140fc569ba358e1f154d21dd734e)
Theorem hlt_EUCLIDEAN_SUBMATROID : forall N:set, N <> Empty -> (forall s :e 2 :^: hl_ty_cart R N, hl_matroid_set (hl_ty_cart R N) (hl_submatroid (hl_ty_cart R N) (hl_euclidean_matroid N) s) = hl_span N s) /\ forall s :e 2 :^: hl_ty_cart R N, hl_matroid_span (hl_ty_cart R N) (hl_submatroid (hl_ty_cart R N) (hl_euclidean_matroid N) s) = hl_span N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5332 / EUCLIDEAN_MATROID_DIM   (hash md5:fe99ffa0d29d8b695842fe632d3ccb69)
Theorem hlt_EUCLIDEAN_MATROID_DIM : forall N:set, N <> Empty -> hl_matroid_dim (hl_ty_cart R N) (hl_euclidean_matroid N) = hl_dim N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5343 / SPAN_EQ   (hash md5:f00d9801c41d495c4a4d62be107f763e)
Theorem hlt_SPAN_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_span N s = hl_span N t <-> hl_SUBSET (hl_ty_cart R N) s (hl_span N t) = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_span N s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5350 / SPAN_EQ_INSERT   (hash md5:6ccb8933c0dac090b0cf93378d033e2c)
Theorem hlt_SPAN_EQ_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_span N (hl_INSERT (hl_ty_cart R N) x s) = hl_span N s <-> hl_IN (hl_ty_cart R N) x (hl_span N s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5357 / INDEPENDENT_INSERT   (hash md5:8fcc811c6ac112775ee5ec3026333ff7)
Theorem hlt_INDEPENDENT_INSERT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_independent N (hl_INSERT (hl_ty_cart R N) a s) = 1 <-> hl_IN (hl_ty_cart R N) a s = 1 /\ hl_independent N s = 1 \/ ~ hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_independent N s = 1 /\ ~ hl_IN (hl_ty_cart R N) a (hl_span N s) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:5364 / SPAN_TRANS   (hash md5:1e4ce438acf0f6aff10112011918a5c8)
Theorem hlt_SPAN_TRANS : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_span N s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_span N (hl_INSERT (hl_ty_cart R N) x s)) = 1 -> hl_IN (hl_ty_cart R N) y (hl_span N s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5369 / SPANNING_SUBSET_INDEPENDENT   (hash md5:d6235217596752d5be81adea8d81111d)
Theorem hlt_SPANNING_SUBSET_INDEPENDENT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_independent N s = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_span N t) = 1) -> s = t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5376 / EXCHANGE_LEMMA   (hash md5:068b844ac93f9e28f731348d8c920949)
Theorem hlt_EXCHANGE_LEMMA : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) t = 1 /\ (hl_independent N s = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_span N t) = 1) -> exists t' :e 2 :^: hl_ty_cart R N, hl_HAS_SIZE (hl_ty_cart R N) t' (hl_CARD (hl_ty_cart R N) t) = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t' = 1 /\ (hl_SUBSET (hl_ty_cart R N) t' (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_span N t') = 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5387 / INDEPENDENT_SPAN_BOUND   (hash md5:8426482bf8d08d90b79b28fa873fa835)
Theorem hlt_INDEPENDENT_SPAN_BOUND : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) t = 1 /\ (hl_independent A s = 1 /\ hl_SUBSET (hl_ty_cart R A) s (hl_span A t) = 1) -> hl_FINITE (hl_ty_cart R A) s = 1 /\ hl_le (hl_CARD (hl_ty_cart R A) s) (hl_CARD (hl_ty_cart R A) t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5394 / INDEPENDENT_BOUND   (hash md5:38834ee5a55ae9ebce128a7d9b898698)
Theorem hlt_INDEPENDENT_BOUND : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_independent N s = 1 -> hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_le (hl_CARD (hl_ty_cart R N) s) (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5402 / DEPENDENT_BIGGERSET   (hash md5:d1bfa1e5c2eed7d6cf86a34791f198b0)
Theorem hlt_DEPENDENT_BIGGERSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, (hl_FINITE (hl_ty_cart R N) s = 1 -> hl_gt (hl_CARD (hl_ty_cart R N) s) (hl_dimindex N (hl_UNIV N)) = 1) -> hl_dependent N s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5407 / INDEPENDENT_IMP_FINITE   (hash md5:dd5a56b2dacdef9ca770330108978639)
Theorem hlt_INDEPENDENT_IMP_FINITE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_independent N s = 1 -> hl_FINITE (hl_ty_cart R N) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5411 / MAXIMAL_INDEPENDENT_SUBSET_EXTEND   (hash md5:db7d4de31bc7eacb98b79000f0626268)
Theorem hlt_MAXIMAL_INDEPENDENT_SUBSET_EXTEND : forall N:set, N <> Empty -> forall s v :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s v = 1 /\ hl_independent N s = 1 -> exists b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s b = 1 /\ (hl_SUBSET (hl_ty_cart R N) b v = 1 /\ (hl_independent N b = 1 /\ hl_SUBSET (hl_ty_cart R N) v (hl_span N b) = 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5425 / MAXIMAL_INDEPENDENT_SUBSET   (hash md5:2be2a93a2ccf0da4a395d399d7092e7e)
Theorem hlt_MAXIMAL_INDEPENDENT_SUBSET : forall N:set, N <> Empty -> forall v :e 2 :^: hl_ty_cart R N, exists b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b v = 1 /\ (hl_independent N b = 1 /\ hl_SUBSET (hl_ty_cart R N) v (hl_span N b) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:5430 / BASIS_EXISTS   (hash md5:26f9498e0a28660c6660bcb4b6b0dfaa)
Theorem hlt_BASIS_EXISTS : forall A:set, A <> Empty -> forall v :e 2 :^: hl_ty_cart R A, exists b :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) b v = 1 /\ (hl_independent A b = 1 /\ (hl_SUBSET (hl_ty_cart R A) v (hl_span A b) = 1 /\ hl_HAS_SIZE (hl_ty_cart R A) b (hl_dim A v) = 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5436 / BASIS_EXISTS_FINITE   (hash md5:3717eff8f6a1e70c79a559be59eb7d53)
Theorem hlt_BASIS_EXISTS_FINITE : forall A:set, A <> Empty -> forall v :e 2 :^: hl_ty_cart R A, exists b :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) b = 1 /\ (hl_SUBSET (hl_ty_cart R A) b v = 1 /\ (hl_independent A b = 1 /\ (hl_SUBSET (hl_ty_cart R A) v (hl_span A b) = 1 /\ hl_HAS_SIZE (hl_ty_cart R A) b (hl_dim A v) = 1))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5444 / BASIS_SUBSPACE_EXISTS   (hash md5:543dc226f218c55c310177da3718c39f)
Theorem hlt_BASIS_SUBSPACE_EXISTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> exists b :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) b = 1 /\ (hl_SUBSET (hl_ty_cart R N) b s = 1 /\ (hl_independent N b = 1 /\ (hl_span N b = s /\ hl_HAS_SIZE (hl_ty_cart R N) b (hl_dim N s) = 1))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5458 / INDEPENDENT_CARD_LE_DIM   (hash md5:8ced0e6f06046574700798c05c791cb2)
Theorem hlt_INDEPENDENT_CARD_LE_DIM : forall N:set, N <> Empty -> forall v b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b v = 1 /\ hl_independent N b = 1 -> hl_FINITE (hl_ty_cart R N) b = 1 /\ hl_le (hl_CARD (hl_ty_cart R N) b) (hl_dim N v) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5463 / SPAN_CARD_GE_DIM   (hash md5:34dfbddcd510cafa3b531c4b328129dd)
Theorem hlt_SPAN_CARD_GE_DIM : forall N:set, N <> Empty -> forall v b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) v (hl_span N b) = 1 /\ hl_FINITE (hl_ty_cart R N) b = 1 -> hl_le (hl_dim N v) (hl_CARD (hl_ty_cart R N) b) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5468 / BASIS_CARD_EQ_DIM   (hash md5:6b81f9006245059a85a349fa734ab81b)
Theorem hlt_BASIS_CARD_EQ_DIM : forall A:set, A <> Empty -> forall v b :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) b v = 1 /\ (hl_SUBSET (hl_ty_cart R A) v (hl_span A b) = 1 /\ hl_independent A b = 1) -> hl_FINITE (hl_ty_cart R A) b = 1 /\ hl_CARD (hl_ty_cart R A) b = hl_dim A v.
Admitted.

// HOL Light: Multivariate/vectors.ml:5473 / BASIS_HAS_SIZE_DIM   (hash md5:9d9861fee31f85e795d206dfec4c5c41)
Theorem hlt_BASIS_HAS_SIZE_DIM : forall A:set, A <> Empty -> forall v b :e 2 :^: hl_ty_cart R A, hl_independent A b = 1 /\ hl_span A b = v -> hl_HAS_SIZE (hl_ty_cart R A) b (hl_dim A v) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5479 / DIM_SPAN   (hash md5:623f87448cdfc0e8f77001b86bb2fe3c)
Theorem hlt_DIM_SPAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dim N (hl_span N s) = hl_dim N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5486 / DIM_UNIQUE   (hash md5:4e93b209838533de6347773dbebdbf68)
Theorem hlt_DIM_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, forall v b :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) b v = 1 /\ (hl_SUBSET (hl_ty_cart R A) v (hl_span A b) = 1 /\ (hl_independent A b = 1 /\ hl_HAS_SIZE (hl_ty_cart R A) b n = 1)) -> hl_dim A v = n.
Admitted.

// HOL Light: Multivariate/vectors.ml:5491 / DIM_LE_CARD   (hash md5:5d212e84ea4654dbb0e90303ec30d5ec)
Theorem hlt_DIM_LE_CARD : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) s = 1 -> hl_le (hl_dim A s) (hl_CARD (hl_ty_cart R A) s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5496 / DIM_UNIV   (hash md5:ec4668b9c442d3d22b35ca6344992256)
Theorem hlt_DIM_UNIV : forall N:set, N <> Empty -> hl_dim N (hl_UNIV (hl_ty_cart R N)) = hl_dimindex N (hl_UNIV N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5503 / DIM_SUBSET   (hash md5:55ed459645382ebaaee7f5abf75c1bef)
Theorem hlt_DIM_SUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 -> hl_le (hl_dim N s) (hl_dim N t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5507 / DIM_SUBSET_UNIV   (hash md5:3043d57fa9a3f47b3c176c3de0bb28c4)
Theorem hlt_DIM_SUBSET_UNIV : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_le (hl_dim N s) (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5512 / BASIS_HAS_SIZE_UNIV   (hash md5:78c6815c0b73ed263d86f920491290b1)
Theorem hlt_BASIS_HAS_SIZE_UNIV : forall N:set, N <> Empty -> forall b :e 2 :^: hl_ty_cart R N, hl_independent N b = 1 /\ hl_span N b = hl_UNIV (hl_ty_cart R N) -> hl_HAS_SIZE (hl_ty_cart R N) b (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5516 / CARD_GE_DIM_INDEPENDENT   (hash md5:5b5dded0261f94b55250808a23697c4f)
Theorem hlt_CARD_GE_DIM_INDEPENDENT : forall N:set, N <> Empty -> forall v b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b v = 1 /\ (hl_independent N b = 1 /\ hl_le (hl_dim N v) (hl_CARD (hl_ty_cart R N) b) = 1) -> hl_SUBSET (hl_ty_cart R N) v (hl_span N b) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5529 / CARD_LE_DIM_SPANNING   (hash md5:24db3952db67103069d62f6e2a88dfff)
Theorem hlt_CARD_LE_DIM_SPANNING : forall N:set, N <> Empty -> forall v b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) v (hl_span N b) = 1 /\ (hl_FINITE (hl_ty_cart R N) b = 1 /\ hl_le (hl_CARD (hl_ty_cart R N) b) (hl_dim N v) = 1) -> hl_independent N b = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5540 / CARD_EQ_DIM   (hash md5:119b01ade7613afe5703f79c1bc423f0)
Theorem hlt_CARD_EQ_DIM : forall A:set, A <> Empty -> forall v b :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) b v = 1 /\ hl_HAS_SIZE (hl_ty_cart R A) b (hl_dim A v) = 1 -> (hl_independent A b = 1 <-> hl_SUBSET (hl_ty_cart R A) v (hl_span A b) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:5546 / INDEPENDENT_BOUND_GENERAL   (hash md5:4e2d1cce22130d761dff1cb400d2c611)
Theorem hlt_INDEPENDENT_BOUND_GENERAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_independent N s = 1 -> hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_le (hl_CARD (hl_ty_cart R N) s) (hl_dim N s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5550 / DEPENDENT_BIGGERSET_GENERAL   (hash md5:3232f644895a1c0241a8bf1cbe420125)
Theorem hlt_DEPENDENT_BIGGERSET_GENERAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, (hl_FINITE (hl_ty_cart R N) s = 1 -> hl_gt (hl_CARD (hl_ty_cart R N) s) (hl_dim N s) = 1) -> hl_dependent N s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5555 / DIM_INSERT_0   (hash md5:5b5e059be20db95f270281eade33e805)
Theorem hlt_DIM_INSERT_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dim N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s) = hl_dim N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5560 / DIM_EQ_CARD   (hash md5:1179b2b322890798bf295c4c4b671b6d)
Theorem hlt_DIM_EQ_CARD : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_independent N s = 1 -> hl_dim N s = hl_CARD (hl_ty_cart R N) s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5566 / DEPENDENT_EQ_DIM_LT_CARD   (hash md5:7e7dfd652a60892017bf6b36a78b8331)
Theorem hlt_DEPENDENT_EQ_DIM_LT_CARD : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dependent N s = 1 <-> hl_FINITE (hl_ty_cart R N) s = 1 -> hl_lt (hl_dim N s) (hl_CARD (hl_ty_cart R N) s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5576 / INDEPENDENT_EQ_DIM_EQ_CARD   (hash md5:50bdeb8ef11a7e34982f58e0c29e4bc1)
Theorem hlt_INDEPENDENT_EQ_DIM_EQ_CARD : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_independent N s = 1 <-> hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_dim N s = hl_CARD (hl_ty_cart R N) s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5582 / SUBSET_LE_DIM   (hash md5:8dac739478af9b75c686e819ee306b64)
Theorem hlt_SUBSET_LE_DIM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s (hl_span N t) = 1 -> hl_le (hl_dim N s) (hl_dim N t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5586 / SPAN_EQ_DIM   (hash md5:07aefbfaeb3392a0f006dc451ca7971b)
Theorem hlt_SPAN_EQ_DIM : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_span A s = hl_span A t -> hl_dim A s = hl_dim A t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5590 / DIM_EMPTY   (hash md5:34bb79edfae5bcec5714395c620d2c45)
Theorem hlt_DIM_EMPTY : forall N:set, N <> Empty -> hl_dim N (hl_EMPTY (hl_ty_cart R N)) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Multivariate/vectors.ml:5594 / DIM_INSERT   (hash md5:89466d2b505352f1a5fa8926a6c28d36)
Theorem hlt_DIM_INSERT : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_dim N (hl_INSERT (hl_ty_cart R N) x s) = hl_COND omega (hl_IN (hl_ty_cart R N) x (hl_span N s)) (hl_dim N s) (hl_add (hl_dim N s) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5600 / CHOOSE_SUBSPACE_OF_SUBSPACE   (hash md5:68e62ae86e422b98f8f4f270ef1e28d5)
Theorem hlt_CHOOSE_SUBSPACE_OF_SUBSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, hl_le n (hl_dim N s) = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_subspace N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_span N s) = 1 /\ hl_dim N t = n).
Admitted.

// HOL Light: Multivariate/vectors.ml:5610 / SUBSPACE_EXISTS   (hash md5:495f3b6df8273766ce6392b301e9e28e)
Theorem hlt_SUBSPACE_EXISTS : forall N:set, N <> Empty -> forall n :e omega, hl_le n (hl_dimindex N (hl_UNIV N)) = 1 -> exists s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ hl_dim N s = n.
Admitted.

// HOL Light: Multivariate/vectors.ml:5616 / DIM_EQ_SPAN   (hash md5:0737170a61fd0d682534f75753f3e4f5)
Theorem hlt_DIM_EQ_SPAN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ hl_le (hl_dim N t) (hl_dim N s) = 1 -> hl_span N s = hl_span N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5625 / DIM_EQ_FULL   (hash md5:61534534ff301143e174afaae4527e2b)
Theorem hlt_DIM_EQ_FULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dim N s = hl_dimindex N (hl_UNIV N) <-> hl_span N s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5633 / DIM_PSUBSET   (hash md5:a0597979949718238431099b11c7f44c)
Theorem hlt_DIM_PSUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_PSUBSET (hl_ty_cart R N) (hl_span N s) (hl_span N t) = 1 -> hl_lt (hl_dim N s) (hl_dim N t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5639 / LOWDIM_EXPAND_DIMENSION   (hash md5:450852ee14f7858e065d7850d4649217)
Theorem hlt_LOWDIM_EXPAND_DIMENSION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, hl_le (hl_dim N s) n = 1 /\ hl_le n (hl_dimindex N (hl_UNIV N)) = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_dim N t = n /\ hl_SUBSET (hl_ty_cart R N) (hl_span N s) (hl_span N t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5649 / LOWDIM_EXPAND_BASIS   (hash md5:7f49c444a108cc4baf8b6fa471266f76)
Theorem hlt_LOWDIM_EXPAND_BASIS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, hl_le (hl_dim N s) n = 1 /\ hl_le n (hl_dimindex N (hl_UNIV N)) = 1 -> exists b :e 2 :^: hl_ty_cart R N, hl_HAS_SIZE (hl_ty_cart R N) b n = 1 /\ (hl_independent N b = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_span N s) (hl_span N b) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:5664 / INDEPENDENT_EXPLICIT   (hash md5:9ec883d0e0e2804a249b07de5b3bc291)
Theorem hlt_INDEPENDENT_EXPLICIT : forall N:set, N <> Empty -> forall b :e 2 :^: hl_ty_cart R N, hl_independent N b = 1 <-> hl_FINITE (hl_ty_cart R N) b = 1 /\ forall c :e R :^: hl_ty_cart R N, hl_vsum (hl_ty_cart R N) N b (fun v :e hl_ty_cart R N => hl_vmul N (c v) v) = hl_vec N (hl_NUMERAL hl_zero) -> forall v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v b = 1 -> c v = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:5674 / INDEPENDENT_SING   (hash md5:a2bfc41dab5a9a0eb3d3ff10ef4c3a31)
Theorem hlt_INDEPENDENT_SING : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_independent A (hl_INSERT (hl_ty_cart R A) x (hl_EMPTY (hl_ty_cart R A))) = 1 <-> ~ x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:5679 / DEPENDENT_SING   (hash md5:f36a9f02d1ed24f970826407a2b539d8)
Theorem hlt_DEPENDENT_SING : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_dependent A (hl_INSERT (hl_ty_cart R A) x (hl_EMPTY (hl_ty_cart R A))) = 1 <-> x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:5683 / DEPENDENT_2   (hash md5:c4ab5ecc602121ab86ddf6608d8223e6)
Theorem hlt_DEPENDENT_2 : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_dependent N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))) = 1 <-> a = b /\ a = hl_vec N (hl_NUMERAL hl_zero) \/ ~ a = b /\ exists x y :e R, hl_vector_add N (hl_vmul N x a) (hl_vmul N y b) = hl_vec N (hl_NUMERAL hl_zero) /\ ~ (x = hl_real_of_num (hl_NUMERAL hl_zero) /\ y = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5700 / DEPENDENT_3   (hash md5:853a7be14394d5d7ee335d0f34db88c6)
Theorem hlt_DEPENDENT_3 : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, ~ a = b /\ (~ a = c /\ ~ b = c) -> (hl_dependent N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> exists x y z :e R, hl_vector_add N (hl_vmul N x a) (hl_vector_add N (hl_vmul N y b) (hl_vmul N z c)) = hl_vec N (hl_NUMERAL hl_zero) /\ ~ (x = hl_real_of_num (hl_NUMERAL hl_zero) /\ (y = hl_real_of_num (hl_NUMERAL hl_zero) /\ z = hl_real_of_num (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5717 / INDEPENDENT_2   (hash md5:23b14322346275d83ca2fb2e7e7263de)
Theorem hlt_INDEPENDENT_2 : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall x y :e R, hl_independent N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))) = 1 /\ ~ a = b -> (hl_vector_add N (hl_vmul N x a) (hl_vmul N y b) = hl_vec N (hl_NUMERAL hl_zero) <-> x = hl_real_of_num (hl_NUMERAL hl_zero) /\ y = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5724 / INDEPENDENT_3   (hash md5:cb7c73f17144612b07d6652f387c8162)
Theorem hlt_INDEPENDENT_3 : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, forall x y z :e R, hl_independent N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 /\ (~ a = b /\ (~ a = c /\ ~ b = c)) -> (hl_vector_add N (hl_vmul N x a) (hl_vector_add N (hl_vmul N y b) (hl_vmul N z c)) = hl_vec N (hl_NUMERAL hl_zero) <-> x = hl_real_of_num (hl_NUMERAL hl_zero) /\ (y = hl_real_of_num (hl_NUMERAL hl_zero) /\ z = hl_real_of_num (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5735 / LINEAR_SUBSPACE_GRAPH   (hash md5:9b9b0cacc647b07712fb08a1a4848409)
Theorem hlt_LINEAR_SUBSPACE_GRAPH : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 <-> hl_subspace (hl_ty_finite_sum M N) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) (fun GEN_PVAR_2814 :e hl_ty_cart R (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) GEN_PVAR_2814 (hl_IN (hl_ty_cart R M) x (hl_UNIV (hl_ty_cart R M))) (hl_pastecart R M N x (f x)) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5744 / SPANS_IMAGE   (hash md5:52124552b3c2fc116a28c6aa5a6e8bee)
Theorem hlt_SPANS_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall b v :e 2 :^: hl_ty_cart R A, hl_linear A B f = 1 /\ hl_SUBSET (hl_ty_cart R A) v (hl_span A b) = 1 -> hl_SUBSET (hl_ty_cart R B) (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f v) (hl_span B (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f b)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5749 / DIM_LINEAR_IMAGE_LE   (hash md5:59dc99cdb5c258283fa4e06c2128435d)
Theorem hlt_DIM_LINEAR_IMAGE_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_le (hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) (hl_dim M s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5761 / DIM_SING   (hash md5:30dc67ee2d7ee4cb2e37f6f82214a0ec)
Theorem hlt_DIM_SING : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_dim A (hl_INSERT (hl_ty_cart R A) x (hl_EMPTY (hl_ty_cart R A))) = hl_COND omega (if x = hl_vec A (hl_NUMERAL hl_zero) then 1 else 0) (hl_NUMERAL hl_zero) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5765 / DIM_EQ_0   (hash md5:f9ce53df1f833aa545593fc4de850ed0)
Theorem hlt_DIM_EQ_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dim N s = hl_NUMERAL hl_zero <-> hl_SUBSET (hl_ty_cart R N) s (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5779 / SPANNING_SURJECTIVE_IMAGE   (hash md5:861145c0f42ca1cdd5348e934c7857a9)
Theorem hlt_SPANNING_SURJECTIVE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_UNIV (hl_ty_cart R M)) (hl_span M s) = 1 /\ (hl_linear M N f = 1 /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y)) -> hl_SUBSET (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_span N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5788 / INDEPENDENT_INJECTIVE_IMAGE_GEN   (hash md5:2e39e243718f4381b665bcd5dbe15aec)
Theorem hlt_INDEPENDENT_INJECTIVE_IMAGE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_independent M s = 1 /\ (hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_span M s) = 1 /\ (hl_IN (hl_ty_cart R M) y (hl_span M s) = 1 /\ f x = f y) -> x = y)) -> hl_independent N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5819 / INDEPENDENT_INJECTIVE_IMAGE   (hash md5:e1c0c1eb9e046d2fa7c0702f1423cabf)
Theorem hlt_INDEPENDENT_INJECTIVE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_independent M s = 1 /\ (hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y)) -> hl_independent N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5830 / VECTOR_SUB_PROJECT_ORTHOGONAL   (hash md5:df52926adb0e26d082c5233178473633)
Theorem hlt_VECTOR_SUB_PROJECT_ORTHOGONAL : forall N:set, N <> Empty -> forall b x :e hl_ty_cart R N, hl_dot N b (hl_vector_sub N x (hl_vmul N (hl_real_div (hl_dot N b x) (hl_dot N b b)) b)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:5837 / BASIS_ORTHOGONAL   (hash md5:e30658446c3b6d6adb02cd2838f04a7e)
Theorem hlt_BASIS_ORTHOGONAL : forall N:set, N <> Empty -> forall b :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) b = 1 -> exists c :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) c = 1 /\ (hl_le (hl_CARD (hl_ty_cart R N) c) (hl_CARD (hl_ty_cart R N) b) = 1 /\ (hl_span N c = hl_span N b /\ hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) c = 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5884 / ORTHOGONAL_BASIS_EXISTS   (hash md5:f0e9b13922fd51e169e9bb298d84ca6f)
Theorem hlt_ORTHOGONAL_BASIS_EXISTS : forall N:set, N <> Empty -> forall v :e 2 :^: hl_ty_cart R N, exists b :e 2 :^: hl_ty_cart R N, hl_independent N b = 1 /\ (hl_SUBSET (hl_ty_cart R N) b (hl_span N v) = 1 /\ (hl_SUBSET (hl_ty_cart R N) v (hl_span N b) = 1 /\ (hl_HAS_SIZE (hl_ty_cart R N) b (hl_dim N v) = 1 /\ hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5909 / SPAN_SPECIAL_SCALE   (hash md5:0c83f120b9d85ce09a8abb7b44085afb)
Theorem hlt_SPAN_SPECIAL_SCALE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e R, forall x :e hl_ty_cart R N, hl_span N (hl_INSERT (hl_ty_cart R N) (hl_vmul N a x) s) = hl_COND (2 :^: hl_ty_cart R N) (if a = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_span N s) (hl_span N (hl_INSERT (hl_ty_cart R N) x s)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5924 / LINEAR_INDEP_IMAGE_LEMMA   (hash md5:1cf971a25b781da8dc30ab85a420b44b)
Theorem hlt_LINEAR_INDEP_IMAGE_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall b :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_FINITE (hl_ty_cart R M) b = 1 /\ (hl_independent N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f b) = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x b = 1 /\ (hl_IN (hl_ty_cart R M) y b = 1 /\ f x = f y) -> x = y))) -> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_span M b) = 1 -> f x = hl_vec N (hl_NUMERAL hl_zero) -> x = hl_vec M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:5977 / LINEAR_INDEPENDENT_EXTEND_LEMMA   (hash md5:94b1662cda17d992fb353d0fd799d0b6)
Theorem hlt_LINEAR_INDEPENDENT_EXTEND_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall b :e 2 :^: hl_ty_cart R M, hl_FINITE (hl_ty_cart R M) b = 1 -> hl_independent M b = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_span M b) = 1 /\ hl_IN (hl_ty_cart R M) y (hl_span M b) = 1 -> g (hl_vector_add M x y) = hl_vector_add N (g x) (g y)) /\ ((forall x :e hl_ty_cart R M, forall c :e R, hl_IN (hl_ty_cart R M) x (hl_span M b) = 1 -> g (hl_vmul M c x) = hl_vmul N c (g x)) /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x b = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6057 / LINEAR_INDEPENDENT_EXTEND   (hash md5:f5e99aff5d15dfdb0fa165899ab03f05)
Theorem hlt_LINEAR_INDEPENDENT_EXTEND : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall b :e 2 :^: hl_ty_cart R M, hl_independent M b = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N g = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x b = 1 -> g x = f x.
Admitted.

// HOL Light: Multivariate/vectors.ml:6075 / SUBSPACE_KERNEL   (hash md5:ffb86a1b72f42d067388633d8d7102f1)
Theorem hlt_SUBSPACE_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_linear A B f = 1 -> hl_subspace A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_2815 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_2815 (if f x = hl_vec B (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6081 / LINEAR_EQ_0_SPAN   (hash md5:bd9233e8cc056b9282f5684a338b14bd)
Theorem hlt_LINEAR_EQ_0_SPAN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall b :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x b = 1 -> f x = hl_vec N (hl_NUMERAL hl_zero)) -> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_span M b) = 1 -> f x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:6092 / LINEAR_EQ_0   (hash md5:3d065269c8ef486f22ec10e2b5689219)
Theorem hlt_LINEAR_EQ_0 : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall b s :e 2 :^: hl_ty_cart R A, hl_linear A B f = 1 /\ (hl_SUBSET (hl_ty_cart R A) s (hl_span A b) = 1 /\ (forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x b = 1 -> f x = hl_vec B (hl_NUMERAL hl_zero))) -> forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> f x = hl_vec B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:6097 / LINEAR_EQ   (hash md5:fb0df0ca03b921b2807a766c9a8f7ca3)
Theorem hlt_LINEAR_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e hl_ty_cart R A :^: hl_ty_cart R B, forall b s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ (hl_linear B A g = 1 /\ (hl_SUBSET (hl_ty_cart R B) s (hl_span B b) = 1 /\ (forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x b = 1 -> f x = g x))) -> forall x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) x s = 1 -> f x = g x.
Admitted.

// HOL Light: Multivariate/vectors.ml:6105 / LINEAR_EQ_STDBASIS   (hash md5:0b2d27a77eb442709c24fa0b7533c240)
Theorem hlt_LINEAR_EQ_STDBASIS : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_linear M N g = 1 /\ (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> f (hl_basis M i) = g (hl_basis M i))) -> f = g.
Admitted.

// HOL Light: Multivariate/vectors.ml:6119 / SUBSPACE_LINEAR_FIXED_POINTS   (hash md5:a65471cf731b46a1a8e2baf39dc1d687)
Theorem hlt_SUBSPACE_LINEAR_FIXED_POINTS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> hl_subspace N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2817 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2817 (if f x = x then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6129 / BILINEAR_EQ   (hash md5:dc6df690af15eab5428d871f570f2aaf)
Theorem hlt_BILINEAR_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall t :e 2 :^: hl_ty_cart R N, forall f g :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall b :e 2 :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_bilinear M N P f = 1 /\ (hl_bilinear M N P g = 1 /\ (hl_SUBSET (hl_ty_cart R M) s (hl_span M b) = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_span N c) = 1 /\ (forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R M) x b = 1 /\ hl_IN (hl_ty_cart R N) y c = 1 -> f x y = g x y)))) -> forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 -> f x y = g x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6148 / BILINEAR_EQ_STDBASIS   (hash md5:2af72268b7884c538365c5830a65df82)
Theorem hlt_BILINEAR_EQ_STDBASIS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f g :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, hl_bilinear M N P f = 1 /\ (hl_bilinear M N P g = 1 /\ (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> f (hl_basis M i) (hl_basis N j) = g (hl_basis M i) (hl_basis N j))) -> f = g.
Admitted.

// HOL Light: Multivariate/vectors.ml:6167 / LEFT_INVERTIBLE_TRANSP   (hash md5:b5eb10264ea994b4deb24cdcf9c18810)
Theorem hlt_LEFT_INVERTIBLE_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, (exists B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul N M M B (hl_transp N M A) = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero))) <-> exists B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N M M A B = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6172 / RIGHT_INVERTIBLE_TRANSP   (hash md5:3d98b6c0567b3461185f1b99901ca7ea)
Theorem hlt_RIGHT_INVERTIBLE_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, (exists B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul M N N (hl_transp N M A) B = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) <-> exists B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M N N B A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6177 / INVERTIBLE_TRANSP   (hash md5:9b7b2ed23704e63bbaa62ca865247c04)
Theorem hlt_INVERTIBLE_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_invertible M N (hl_transp N M A) = 1 <-> hl_invertible N M A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6185 / LINEAR_INJECTIVE_LEFT_INVERSE   (hash md5:c2a1f155063819d7d4c13bee9c593375)
Theorem hlt_LINEAR_INJECTIVE_LEFT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f = hl_I (hl_ty_cart R M).
Admitted.

// HOL Light: Multivariate/vectors.ml:6203 / LINEAR_INJECTIVE_LEFT_INVERSE_EQ   (hash md5:0550b7858ec06376cd5304445938a90b)
Theorem hlt_LINEAR_INJECTIVE_LEFT_INVERSE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) <-> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f = hl_I (hl_ty_cart R M)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6211 / LINEAR_SURJECTIVE_RIGHT_INVERSE   (hash md5:e7dc97aa4ab778dad288f3246d29d144)
Theorem hlt_LINEAR_SURJECTIVE_RIGHT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:6226 / LINEAR_SURJECTIVE_RIGHT_INVERSE_EQ   (hash md5:2e50bb61378d09e51ad3c2863437ec5a)
Theorem hlt_LINEAR_SURJECTIVE_RIGHT_INVERSE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> ((forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y) <-> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6234 / MATRIX_LEFT_INVERTIBLE_INJECTIVE   (hash md5:f1a45e8e5d8c593ac8621c3e476f4d7c)
Theorem hlt_MATRIX_LEFT_INVERTIBLE_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, (exists B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M N N B A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) <-> forall x y :e hl_ty_cart R N, hl_matrix_vector_mul N M A x = hl_matrix_vector_mul N M A y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6250 / MATRIX_LEFT_INVERTIBLE_KER   (hash md5:97b5c0093b0cf5c6332b9188baa85028)
Theorem hlt_MATRIX_LEFT_INVERTIBLE_KER : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, (exists B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M N N B A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) <-> forall x :e hl_ty_cart R N, hl_matrix_vector_mul N M A x = hl_vec M (hl_NUMERAL hl_zero) -> x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:6256 / MATRIX_RIGHT_INVERTIBLE_SURJECTIVE   (hash md5:b391e8cac42813ad6d442e5d92c516e3)
Theorem hlt_MATRIX_RIGHT_INVERTIBLE_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, (exists B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N M M A B = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero))) <-> forall y :e hl_ty_cart R M, exists x :e hl_ty_cart R N, hl_matrix_vector_mul N M A x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6271 / MATRIX_LEFT_INVERTIBLE_INDEPENDENT_COLUMNS   (hash md5:3d7f317b2556bb6138efdb18455d2cc0)
Theorem hlt_MATRIX_LEFT_INVERTIBLE_INDEPENDENT_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, (exists B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M N N B A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) <-> forall c :e R :^: omega, hl_vsum omega M (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vmul M (c i) (hl_column N M i A)) = hl_vec M (hl_NUMERAL hl_zero) -> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> c i = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:6283 / MATRIX_RIGHT_INVERTIBLE_INDEPENDENT_ROWS   (hash md5:e28fa58fa89227460ccf170cc9dc5856)
Theorem hlt_MATRIX_RIGHT_INVERTIBLE_INDEPENDENT_ROWS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, (exists B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N M M A B = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero))) <-> forall c :e R :^: omega, hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) (fun i :e omega => hl_vmul N (c i) (hl_row N M i A)) = hl_vec N (hl_NUMERAL hl_zero) -> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> c i = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:6291 / MATRIX_RIGHT_INVERTIBLE_SPAN_COLUMNS   (hash md5:6458703ec01edd77389aaf2db1678dcb)
Theorem hlt_MATRIX_RIGHT_INVERTIBLE_SPAN_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, (exists B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N M M A B = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero))) <-> hl_span M (hl_columns N M A) = hl_UNIV (hl_ty_cart R M).
Admitted.

// HOL Light: Multivariate/vectors.ml:6320 / MATRIX_LEFT_INVERTIBLE_SPAN_ROWS   (hash md5:00ee985c29b4b5fd4fafd6f75b4ee51f)
Theorem hlt_MATRIX_LEFT_INVERTIBLE_SPAN_ROWS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, (exists B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M N N B A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) <-> hl_span N (hl_rows N M A) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:6329 / LINEAR_INJECTIVE_IMP_SURJECTIVE   (hash md5:a28cd23e9f3f30dc7a6d5c0fece2c69f)
Theorem hlt_LINEAR_INJECTIVE_IMP_SURJECTIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) -> forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R N, f x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6348 / LINEAR_SURJECTIVE_IMP_INJECTIVE   (hash md5:5fd2550be7125d1b55d94143dd451898)
Theorem hlt_LINEAR_SURJECTIVE_IMP_INJECTIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R N, f x = y) -> forall x y :e hl_ty_cart R N, f x = f y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6385 / LINEAR_SURJECTIVE_IFF_INJECTIVE   (hash md5:032d2bc363db8ac1a8082760cca5005b)
Theorem hlt_LINEAR_SURJECTIVE_IFF_INJECTIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> ((forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R N, f x = y) <-> forall x y :e hl_ty_cart R N, f x = f y -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:6395 / LEFT_RIGHT_INVERSE_EQ   (hash md5:ff01c64425c387b1d584b835c12a29bf)
Theorem hlt_LEFT_RIGHT_INVERSE_EQ : forall A:set, A <> Empty -> forall f g h :e A :^: A, hl_o A A A f g = hl_I A /\ hl_o A A A g h = hl_I A -> f = h.
Admitted.

// HOL Light: Multivariate/vectors.ml:6399 / ISOMORPHISM_EXPAND   (hash md5:0a6c099171d0dc55d06881c2dedfb21c)
Theorem hlt_ISOMORPHISM_EXPAND : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, forall g :e B :^: A, hl_o B A A f g = hl_I A /\ hl_o A B B g f = hl_I B <-> (forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:6403 / LINEAR_INJECTIVE_ISOMORPHISM   (hash md5:68ad555fb4729748b6a975ef30e7d8a4)
Theorem hlt_LINEAR_INJECTIVE_ISOMORPHISM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) -> exists f' :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f' = 1 /\ ((forall x :e hl_ty_cart R N, f' (f x) = x) /\ forall x :e hl_ty_cart R N, f (f' x) = x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6414 / LINEAR_SURJECTIVE_ISOMORPHISM   (hash md5:6584ca808bf756163ec4df615874eada)
Theorem hlt_LINEAR_SURJECTIVE_ISOMORPHISM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R N, f x = y) -> exists f' :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f' = 1 /\ ((forall x :e hl_ty_cart R N, f' (f x) = x) /\ forall x :e hl_ty_cart R N, f (f' x) = x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6429 / LINEAR_INVERSE_LEFT   (hash md5:b5f0855ff26dc2c283b60d3cf3467b8a)
Theorem hlt_LINEAR_INVERSE_LEFT : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ hl_linear N N f' = 1 -> (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f f' = hl_I (hl_ty_cart R N) <-> hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f' f = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6444 / LEFT_INVERSE_LINEAR   (hash md5:e71ef73257d651abbdb58a366def68d0)
Theorem hlt_LEFT_INVERSE_LINEAR : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f = hl_I (hl_ty_cart R N) -> hl_linear N N g = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6454 / RIGHT_INVERSE_LINEAR   (hash md5:4cc90ee704c137664b32fac0e0eb5a83)
Theorem hlt_RIGHT_INVERSE_LINEAR : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N) -> hl_linear N N g = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6467 / LEFT_RIGHT_INVERSE_LINEAR   (hash md5:56d9cd70bcbd569035e93ad281da27d0)
Theorem hlt_LEFT_RIGHT_INVERSE_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear N M f = 1 /\ (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) g f = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) f g = hl_I (hl_ty_cart R M)) -> hl_linear M N g = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6472 / LINEAR_BIJECTIVE_LEFT_RIGHT_INVERSE   (hash md5:d8ffb77795b2a6e1b962e51b2bfc2310)
Theorem hlt_LINEAR_BIJECTIVE_LEFT_RIGHT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y)) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ ((forall x :e hl_ty_cart R M, g (f x) = x) /\ forall y :e hl_ty_cart R N, f (g y) = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:6483 / LINEAR_BIJECTIVE_LEFT_RIGHT_INVERSE_EQ   (hash md5:9632e64a7725e2502ba9393b51cf34b9)
Theorem hlt_LINEAR_BIJECTIVE_LEFT_RIGHT_INVERSE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y) <-> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f = hl_I (hl_ty_cart R M))).
Admitted.

// HOL Light: Multivariate/vectors.ml:6492 / LINEAR_INJECTIVE_LEFT_RIGHT_INVERSE_EQ   (hash md5:ab428386fb7dfa9fba0e50a3f8d3585b)
Theorem hlt_LINEAR_INJECTIVE_LEFT_RIGHT_INVERSE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> ((forall x y :e hl_ty_cart R N, f x = f y -> x = y) <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N g = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f = hl_I (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/vectors.ml:6502 / LINEAR_SURJECTIVE_LEFT_RIGHT_INVERSE_EQ   (hash md5:2dce3e861401840ee74f8929208a6954)
Theorem hlt_LINEAR_SURJECTIVE_LEFT_RIGHT_INVERSE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> ((forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R N, f x = y) <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N g = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f = hl_I (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/vectors.ml:6516 / MATRIX_LEFT_RIGHT_INVERSE   (hash md5:ac460e1eb786af9eb20201d213ad4d6a)
Theorem hlt_MATRIX_LEFT_RIGHT_INVERSE : forall N:set, N <> Empty -> forall A A' :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A A' = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_matrix_mul N N N A' A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6543 / MATRIX_LEFT_INVERTIBLE   (hash md5:9bcc1f13f604a79e32e75dd0710f813d)
Theorem hlt_MATRIX_LEFT_INVERTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> ((exists B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul N M M B (hl_matrix M N f) = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero))) <-> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f = hl_I (hl_ty_cart R M)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6557 / MATRIX_RIGHT_INVERTIBLE   (hash md5:d0db4cee1d249e3d83f4cb4c2f1f444c)
Theorem hlt_MATRIX_RIGHT_INVERTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> ((exists B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul M N N (hl_matrix M N f) B = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) <-> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6571 / INVERTIBLE_LEFT_INVERSE   (hash md5:2b45b65b32efaa60d745aa21389abb97)
Theorem hlt_INVERTIBLE_LEFT_INVERSE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N A = 1 <-> exists B :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N B A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6575 / INVERTIBLE_RIGHT_INVERSE   (hash md5:e2cc82a2c2be4f64e4ac7391c3599ebd)
Theorem hlt_INVERTIBLE_RIGHT_INVERSE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N A = 1 <-> exists B :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A B = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6579 / MATRIX_INVERTIBLE   (hash md5:babfd21f8fba0b09b6513aa0ef440b26)
Theorem hlt_MATRIX_INVERTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> (hl_invertible M N (hl_matrix M N f) = 1 <-> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f = hl_I (hl_ty_cart R M))).
Admitted.

// HOL Light: Multivariate/vectors.ml:6594 / INVERTIBLE_EQ_INJECTIVE_AND_SURJECTIVE   (hash md5:3a7ef066ec37483b5901a64f3bc8635b)
Theorem hlt_INVERTIBLE_EQ_INJECTIVE_AND_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart R M) N, hl_invertible M N m = 1 <-> (forall x y :e hl_ty_cart R M, hl_matrix_vector_mul M N m x = hl_matrix_vector_mul M N m y -> x = y) /\ hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_matrix_vector_mul M N m x) (hl_UNIV (hl_ty_cart R M)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:6611 / LINEAR_INVERTIBLE_BOUNDED_BELOW_POS   (hash md5:2dcf1055a5721f9c987214b6e0d93240)
Theorem hlt_LINEAR_INVERTIBLE_BOUNDED_BELOW_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear M N f = 1 /\ (hl_linear N M g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f = hl_I (hl_ty_cart R M)) -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall x :e hl_ty_cart R M, hl_real_le (hl_real_mul B (hl_vector_norm M x)) (hl_vector_norm N (f x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6627 / LINEAR_INVERTIBLE_BOUNDED_BELOW   (hash md5:785f924d32d3f095e7098d53455c5825)
Theorem hlt_LINEAR_INVERTIBLE_BOUNDED_BELOW : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear M N f = 1 /\ (hl_linear N M g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f = hl_I (hl_ty_cart R M)) -> exists B :e R, forall x :e hl_ty_cart R M, hl_real_le (hl_real_mul B (hl_vector_norm M x)) (hl_vector_norm N (f x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6633 / LINEAR_INJECTIVE_BOUNDED_BELOW_POS   (hash md5:7ddc08f7b83653fa4644614554c2a181)
Theorem hlt_LINEAR_INJECTIVE_BOUNDED_BELOW_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall x :e hl_ty_cart R M, hl_real_le (hl_real_mul (hl_vector_norm M x) B) (hl_vector_norm N (f x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6645 / DIM_INJECTIVE_LINEAR_IMAGE   (hash md5:4fe15c7e0c2b0ee5077a9de4c82c8b61)
Theorem hlt_DIM_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_dim M s.
Admitted.

// HOL Light: Multivariate/vectors.ml:6659 / LINEAR_INJECTIVE_DIMINDEX_LE   (hash md5:f7638310c801a47e3c9ff3e2076b4c36)
Theorem hlt_LINEAR_INJECTIVE_DIMINDEX_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6668 / LINEAR_SURJECTIVE_DIMINDEX_LE   (hash md5:fc81313d5461ce19211f0b55b5fe277b)
Theorem hlt_LINEAR_SURJECTIVE_DIMINDEX_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y) -> hl_le (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6679 / LINEAR_BIJECTIVE_DIMINDEX_EQ   (hash md5:36534055ce6b2d06f8b2f5631435af1f)
Theorem hlt_LINEAR_BIJECTIVE_DIMINDEX_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) /\ (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y)) -> hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N).
Admitted.

// HOL Light: Multivariate/vectors.ml:6688 / INVERTIBLE_IMP_SQUARE_MATRIX   (hash md5:e9033609ac70b5191cdd05f29f0be5eb)
Theorem hlt_INVERTIBLE_IMP_SQUARE_MATRIX : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_invertible N M A = 1 -> hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N).
Admitted.

// HOL Light: Multivariate/vectors.ml:6703 / rowvector   (hash md5:176279e37cabe362ad015c00035ae58f)
Theorem hlt_rowvector_thm : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, hl_rowvector N v = hl_lambda (hl_ty_cart R N) 1 (fun i :e omega => hl_lambda R N (fun j :e omega => hl_vindex R N v j)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6706 / columnvector   (hash md5:6b5847288bd4cf4c8d51d6af890623c2)
Theorem hlt_columnvector_thm : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, hl_columnvector N v = hl_lambda (hl_ty_cart R 1) N (fun i :e omega => hl_lambda R 1 (fun j :e omega => hl_vindex R N v i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6709 / TRANSP_COLUMNVECTOR   (hash md5:783011a19617fb81e7dc65d5424554d1)
Theorem hlt_TRANSP_COLUMNVECTOR : forall A:set, A <> Empty -> forall v :e hl_ty_cart R A, hl_transp 1 A (hl_columnvector A v) = hl_rowvector A v.
Admitted.

// HOL Light: Multivariate/vectors.ml:6713 / TRANSP_ROWVECTOR   (hash md5:3f2841dbc1d9cc9cd17b8a0c2a7eb5ad)
Theorem hlt_TRANSP_ROWVECTOR : forall A:set, A <> Empty -> forall v :e hl_ty_cart R A, hl_transp A 1 (hl_rowvector A v) = hl_columnvector A v.
Admitted.

// HOL Light: Multivariate/vectors.ml:6717 / DOT_ROWVECTOR_COLUMNVECTOR   (hash md5:53a6760a16f76c7fab1e8c66eff06075)
Theorem hlt_DOT_ROWVECTOR_COLUMNVECTOR : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall v :e hl_ty_cart R N, hl_columnvector M (hl_matrix_vector_mul N M A v) = hl_matrix_mul N M 1 A (hl_columnvector N v).
Admitted.

// HOL Light: Multivariate/vectors.ml:6722 / DOT_MATRIX_PRODUCT   (hash md5:992a7eecd01e3f6c0442763e1b5d838a)
Theorem hlt_DOT_MATRIX_PRODUCT : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_dot N x y = hl_vindex R 1 (hl_vindex (hl_ty_cart R 1) 1 (hl_matrix_mul N 1 1 (hl_rowvector N x) (hl_columnvector N y)) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6727 / DOT_MATRIX_VECTOR_MUL   (hash md5:b7f3a87ad2bed808ac516063cb603308)
Theorem hlt_DOT_MATRIX_VECTOR_MUL : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, forall x y :e hl_ty_cart R N, hl_dot N (hl_matrix_vector_mul N N A x) (hl_matrix_vector_mul N N B y) = hl_vindex R 1 (hl_vindex (hl_ty_cart R 1) 1 (hl_matrix_mul N 1 1 (hl_rowvector N x) (hl_matrix_mul N N 1 (hl_matrix_mul N N N (hl_transp N N A) B) (hl_columnvector N y))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6741 / MATRIX_VECTOR_MUL_IN_COLUMNSPACE   (hash md5:49be253eafe773d2c53d3b0fa821ddc6)
Theorem hlt_MATRIX_VECTOR_MUL_IN_COLUMNSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R N) (hl_matrix_vector_mul M N A x) (hl_span N (hl_columns M N A)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6751 / SUBSPACE_ORTHOGONAL_TO_VECTOR   (hash md5:fd1a3c3df995a8f563a42f004e492d5c)
Theorem hlt_SUBSPACE_ORTHOGONAL_TO_VECTOR : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_subspace A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_2822 :e hl_ty_cart R A => if exists y :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_2822 (hl_orthogonal A x y) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6755 / SUBSPACE_ORTHOGONAL_TO_VECTORS   (hash md5:2eb08d209b640dd9400239ff253cd75d)
Theorem hlt_SUBSPACE_ORTHOGONAL_TO_VECTORS : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_subspace A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_2823 :e hl_ty_cart R A => if exists y :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_2823 (if forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> hl_orthogonal A x y = 1 then 1 else 0) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6759 / ORTHOGONAL_TO_SPAN   (hash md5:ed5b3b3daca8348b4fba6dc31feb0ebd)
Theorem hlt_ORTHOGONAL_TO_SPAN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, (forall y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) y s = 1 -> hl_orthogonal A x y = 1) -> forall y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) y (hl_span A s) = 1 -> hl_orthogonal A x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6766 / ORTHOGONAL_TO_SPAN_EQ   (hash md5:a3c05918a5a562ad295868c42900c433)
Theorem hlt_ORTHOGONAL_TO_SPAN_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, (forall y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) y (hl_span A s) = 1 -> hl_orthogonal A x y = 1) <-> forall y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) y s = 1 -> hl_orthogonal A x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6771 / ORTHOGONAL_TO_SPANS_EQ   (hash md5:3f714c78c4f8bd072996d7c45c2bd93a)
Theorem hlt_ORTHOGONAL_TO_SPANS_EQ : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, (forall x y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (hl_span A s) = 1 /\ hl_IN (hl_ty_cart R A) y (hl_span A t) = 1 -> hl_orthogonal A x y = 1) <-> forall x y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y t = 1 -> hl_orthogonal A x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6776 / ORTHOGONAL_NULLSPACE_ROWSPACE   (hash md5:f5edb12f22ac2d2a54692505da9e2c93)
Theorem hlt_ORTHOGONAL_NULLSPACE_ROWSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x y :e hl_ty_cart R M, hl_matrix_vector_mul M N A x = hl_vec N (hl_NUMERAL hl_zero) /\ hl_IN (hl_ty_cart R M) y (hl_span M (hl_rows M N A)) = 1 -> hl_orthogonal M x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6789 / NULLSPACE_INTER_ROWSPACE   (hash md5:3245f00d955209809b4ae600da7ae22d)
Theorem hlt_NULLSPACE_INTER_ROWSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, hl_matrix_vector_mul M N A x = hl_vec N (hl_NUMERAL hl_zero) /\ hl_IN (hl_ty_cart R M) x (hl_span M (hl_rows M N A)) = 1 <-> x = hl_vec M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:6795 / MATRIX_VECTOR_MUL_INJECTIVE_ON_ROWSPACE   (hash md5:8c6a128ed09664438adb9a150f4be773)
Theorem hlt_MATRIX_VECTOR_MUL_INJECTIVE_ON_ROWSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_span M (hl_rows M N A)) = 1 /\ (hl_IN (hl_ty_cart R M) y (hl_span M (hl_rows M N A)) = 1 /\ hl_matrix_vector_mul M N A x = hl_matrix_vector_mul M N A y) -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6803 / DIM_ROWS_LE_DIM_COLUMNS   (hash md5:5bdada77e43430c17110c9c38fed39ac)
Theorem hlt_DIM_ROWS_LE_DIM_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_le (hl_dim M (hl_rows M N A)) (hl_dim N (hl_columns M N A)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6830 / rank   (hash md5:27eec933cfcb7c89add4c4bcee31c2f8)
Theorem hlt_rank_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank M N A = hl_dim N (hl_columns M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:6833 / RANK_ROW   (hash md5:81aec6296da26da371ca17df02c44a65)
Theorem hlt_RANK_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank M N A = hl_dim M (hl_rows M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:6840 / RANK_TRANSP   (hash md5:f09e817d66c426c0102ce67bfcbae928)
Theorem hlt_RANK_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank N M (hl_transp M N A) = hl_rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:6845 / MATRIX_VECTOR_MUL_BASIS   (hash md5:08d7b84a6a5a7563a8d5ee65936cb5ca)
Theorem hlt_MATRIX_VECTOR_MUL_BASIS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex M (hl_UNIV M)) = 1 -> hl_matrix_vector_mul M N A (hl_basis M k) = hl_column M N k A.
Admitted.

// HOL Light: Multivariate/vectors.ml:6851 / COLUMNS_IMAGE_BASIS   (hash md5:c8f2da83c07de98c1ffc6ef5896541a2)
Theorem hlt_COLUMNS_IMAGE_BASIS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_columns M N A = hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_matrix_vector_mul M N A x) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_2826 :e hl_ty_cart R M => if exists i :e omega, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_2826 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 then 1 else 0) (hl_basis M i) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6859 / RANK_DIM_IM   (hash md5:bdce8dc784c6cda5f73ee2d47f4afb70)
Theorem hlt_RANK_DIM_IM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank M N A = hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_matrix_vector_mul M N A x) (hl_UNIV (hl_ty_cart R M))).
Admitted.

// HOL Light: Multivariate/vectors.ml:6867 / RANK_BOUND   (hash md5:e20acce6354bfcce85241ffd3ce29a3a)
Theorem hlt_RANK_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_le (hl_rank M N A) (hl_MIN (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6874 / FULL_RANK_INJECTIVE   (hash md5:acd1321072e1f1f832bc1230144833fb)
Theorem hlt_FULL_RANK_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank M N A = hl_dimindex M (hl_UNIV M) <-> forall x y :e hl_ty_cart R M, hl_matrix_vector_mul M N A x = hl_matrix_vector_mul M N A y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6882 / FULL_RANK_SURJECTIVE   (hash md5:be0221859fe1a38ee89030825ec4a454)
Theorem hlt_FULL_RANK_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank M N A = hl_dimindex N (hl_UNIV N) <-> forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, hl_matrix_vector_mul M N A x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6890 / RANK_I   (hash md5:b08896fe2aa4527e402e33d73ecc9cb3)
Theorem hlt_RANK_I : forall N:set, N <> Empty -> hl_rank N N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_dimindex N (hl_UNIV N).
Admitted.

// HOL Light: Multivariate/vectors.ml:6894 / MATRIX_FULL_LINEAR_EQUATIONS   (hash md5:97454a9a6fb6d081219b8665b86da4c4)
Theorem hlt_MATRIX_FULL_LINEAR_EQUATIONS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall b :e hl_ty_cart R N, hl_rank M N A = hl_dimindex N (hl_UNIV N) -> exists x :e hl_ty_cart R M, hl_matrix_vector_mul M N A x = b.
Admitted.

// HOL Light: Multivariate/vectors.ml:6899 / MATRIX_NONFULL_LINEAR_EQUATIONS_EQ   (hash md5:0a70c0e574f70fea4b49898949cea1e3)
Theorem hlt_MATRIX_NONFULL_LINEAR_EQUATIONS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, (exists x :e hl_ty_cart R M, ~ x = hl_vec M (hl_NUMERAL hl_zero) /\ hl_matrix_vector_mul M N A x = hl_vec N (hl_NUMERAL hl_zero)) <-> ~ hl_rank M N A = hl_dimindex M (hl_UNIV M).
Admitted.

// HOL Light: Multivariate/vectors.ml:6906 / MATRIX_NONFULL_LINEAR_EQUATIONS   (hash md5:49b884a2381e9635b1e4751fe0081b7f)
Theorem hlt_MATRIX_NONFULL_LINEAR_EQUATIONS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, ~ hl_rank M N A = hl_dimindex M (hl_UNIV M) -> exists x :e hl_ty_cart R M, ~ x = hl_vec M (hl_NUMERAL hl_zero) /\ hl_matrix_vector_mul M N A x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:6911 / MATRIX_TRIVIAL_LINEAR_EQUATIONS   (hash md5:52edcd30bd166a2f3eb19cf289dced7a)
Theorem hlt_MATRIX_TRIVIAL_LINEAR_EQUATIONS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_lt (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M)) = 1 -> exists x :e hl_ty_cart R M, ~ x = hl_vec M (hl_NUMERAL hl_zero) /\ hl_matrix_vector_mul M N A x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:6920 / RANK_EQ_0   (hash md5:c8f1a41f57e8a0d024cfab573cc44b66)
Theorem hlt_RANK_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank M N A = hl_NUMERAL hl_zero <-> A = hl_mat M N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:6930 / RANK_0   (hash md5:92723b3ed7c74016d7d9d6dbe258fc7d)
Theorem hlt_RANK_0 : forall A B:set, A <> Empty -> B <> Empty -> hl_rank A B (hl_mat A B (hl_NUMERAL hl_zero)) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Multivariate/vectors.ml:6934 / RANK_MUL_LE_RIGHT   (hash md5:b10d6e8327dad2a77c5dc1373c55331d)
Theorem hlt_RANK_MUL_LE_RIGHT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_le (hl_rank P M (hl_matrix_mul N M P A B)) (hl_rank P N B) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6944 / RANK_MUL_LE_LEFT   (hash md5:5bf84938020d17a35dacfed938d74664)
Theorem hlt_RANK_MUL_LE_LEFT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_le (hl_rank P M (hl_matrix_mul N M P A B)) (hl_rank N M A) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6950 / SPAN_COLUMNSPACE   (hash md5:a95003741d259685b37f2b09b30facd9)
Theorem hlt_SPAN_COLUMNSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_span N (hl_columns M N A) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2827 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2827 (if exists x :e hl_ty_cart R M, hl_matrix_vector_mul M N A x = y then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:6964 / MATRIX_AUGMENTED_LINEAR_EQUATIONS   (hash md5:9af3f3df0f636e7ee8802bf3bdc05be1)
Theorem hlt_MATRIX_AUGMENTED_LINEAR_EQUATIONS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall y :e hl_ty_cart R N, (exists x :e hl_ty_cart R M, hl_matrix_vector_mul M N (hl_transp N M A) x = y) <-> hl_rank N (hl_ty_finite_sum M 1) (hl_pastecart (hl_ty_cart R N) M 1 A (hl_rowvector N y)) = hl_rank N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:6999 / NORM_COLUMN_LE_ONORM   (hash md5:9a8dd7e2824d8d85de54c51b73f28fef)
Theorem hlt_NORM_COLUMN_LE_ONORM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall i :e omega, hl_real_le (hl_vector_norm M (hl_column N M i A)) (hl_onorm N M (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M A x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7009 / MATRIX_COMPONENT_LE_ONORM   (hash md5:7a977f8aa31e702fe28ba46e30479ef7)
Theorem hlt_MATRIX_COMPONENT_LE_ONORM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall i j :e omega, hl_real_le (hl_real_abs (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j)) (hl_onorm N M (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M A x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7025 / COMPONENT_LE_ONORM   (hash md5:b834920119aa4d2bd583789dc95c3d33)
Theorem hlt_COMPONENT_LE_ONORM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i j :e omega, hl_linear M N f = 1 -> hl_real_le (hl_real_abs (hl_vindex R M (hl_vindex (hl_ty_cart R M) N (hl_matrix M N f) i) j)) (hl_onorm M N f) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7032 / ONORM_LE_MATRIX_COMPONENT_SUM   (hash md5:6535d72813e0db56920a4be6900bbfbd)
Theorem hlt_ONORM_LE_MATRIX_COMPONENT_SUM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_real_le (hl_onorm N M (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M A x)) (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) (fun i :e omega => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun j :e omega => hl_real_abs (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7050 / ONORM_LE_MATRIX_COMPONENT   (hash md5:7aeb7c43f0fbd3a80eaff357388e1ee5)
Theorem hlt_ONORM_LE_MATRIX_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e R, (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_real_le (hl_real_abs (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j)) B = 1) -> hl_real_le (hl_onorm N M (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M A x)) (hl_real_mul (hl_real_of_num (hl_dimindex M (hl_UNIV M))) (hl_real_mul (hl_real_of_num (hl_dimindex N (hl_UNIV N))) B)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7078 / MATRIX_RATIONAL_APPROXIMATION   (hash md5:f855bcb4825cda77e84eb80f0d92bd82)
Theorem hlt_MATRIX_RATIONAL_APPROXIMATION : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B :e hl_ty_cart (hl_ty_cart R N) M, (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_rational (hl_vindex R N (hl_vindex (hl_ty_cart R N) M B i) j) = 1) /\ hl_real_lt (hl_onorm N M (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M (hl_matrix_sub N M A B) x)) e1 = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7113 / HYPERPLANE_EQ_EMPTY   (hash md5:f66623fd08218208f34e4fc842d29c60)
Theorem hlt_HYPERPLANE_EQ_EMPTY : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2831 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2831 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) <-> a = hl_vec N (hl_NUMERAL hl_zero) /\ ~ b = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:7121 / HYPERPLANE_EQ_UNIV   (hash md5:158b783a122a91e5af49030192022500)
Theorem hlt_HYPERPLANE_EQ_UNIV : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2832 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2832 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0) = hl_UNIV (hl_ty_cart R N) <-> a = hl_vec N (hl_NUMERAL hl_zero) /\ b = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:7129 / HALFSPACE_EQ_EMPTY_LT   (hash md5:9bae37450faffd9a156c5e0ce28b82c5)
Theorem hlt_HALFSPACE_EQ_EMPTY_LT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2834 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2834 (hl_real_lt (hl_dot N a x) b) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) <-> a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_le b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7139 / HALFSPACE_EQ_EMPTY_GT   (hash md5:59475993c5afa93d9111086a53af61a5)
Theorem hlt_HALFSPACE_EQ_EMPTY_GT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2835 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2835 (hl_real_gt (hl_dot N a x) b) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) <-> a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_ge b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7146 / HALFSPACE_EQ_EMPTY_LE   (hash md5:0a02770783f721df925417b19203812a)
Theorem hlt_HALFSPACE_EQ_EMPTY_LE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2837 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2837 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) <-> a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_lt b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7156 / HALFSPACE_EQ_EMPTY_GE   (hash md5:1b6e1b3008c173240c53d8b44f4a4df3)
Theorem hlt_HALFSPACE_EQ_EMPTY_GE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2838 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2838 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) <-> a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_gt b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7167 / ADJOINT_INJECTIVE   (hash md5:6b99d98d91b5b565fad41389325db6bb)
Theorem hlt_ADJOINT_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> ((forall x y :e hl_ty_cart R N, hl_adjoint M N f x = hl_adjoint M N f y -> x = y) <-> forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:7179 / ADJOINT_SURJECTIVE   (hash md5:da8b7dd7aba68923c1e2a3887af5c37c)
Theorem hlt_ADJOINT_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> ((forall y :e hl_ty_cart R M, exists x :e hl_ty_cart R N, hl_adjoint M N f x = y) <-> forall x y :e hl_ty_cart R M, f x = f y -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:7188 / ADJOINT_INJECTIVE_INJECTIVE   (hash md5:5a717ac5249fd570f1063ee1c4f132d8)
Theorem hlt_ADJOINT_INJECTIVE_INJECTIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> ((forall x y :e hl_ty_cart R N, hl_adjoint N N f x = hl_adjoint N N f y -> x = y) <-> forall x y :e hl_ty_cart R N, f x = f y -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:7197 / ADJOINT_INJECTIVE_INJECTIVE_0   (hash md5:850ddbfb72ceb5ac06bdca3d0f348f13)
Theorem hlt_ADJOINT_INJECTIVE_INJECTIVE_0 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> ((forall x :e hl_ty_cart R N, hl_adjoint N N f x = hl_vec N (hl_NUMERAL hl_zero) -> x = hl_vec N (hl_NUMERAL hl_zero)) <-> forall x :e hl_ty_cart R N, f x = hl_vec N (hl_NUMERAL hl_zero) -> x = hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7207 / TRANSP_INJECTIVE   (hash md5:c100f5e0b2db4c4c96e46079b4efdf8e)
Theorem hlt_TRANSP_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart R M) N, (forall x y :e hl_ty_cart R N, hl_matrix_vector_mul N M (hl_transp M N m) x = hl_matrix_vector_mul N M (hl_transp M N m) y -> x = y) <-> hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_matrix_vector_mul M N m x) (hl_UNIV (hl_ty_cart R M)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/vectors.ml:7215 / TRANSP_SURJECTIVE   (hash md5:f5ae5eccfef281206ef8923c31a9d1c8)
Theorem hlt_TRANSP_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart R M) N, hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M (hl_transp M N m) x) (hl_UNIV (hl_ty_cart R N)) = hl_UNIV (hl_ty_cart R M) <-> forall x y :e hl_ty_cart R M, hl_matrix_vector_mul M N m x = hl_matrix_vector_mul M N m y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:7221 / LINEAR_SINGULAR_INTO_HYPERPLANE   (hash md5:8a5a2e234523b60c07fa2f5a785cf5bb)
Theorem hlt_LINEAR_SINGULAR_INTO_HYPERPLANE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> (~ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) <-> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ forall x :e hl_ty_cart R N, hl_dot N a (f x) = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7231 / LINEAR_SINGULAR_IMAGE_HYPERPLANE   (hash md5:dec5f151e398d3fd886d41030ec11ffa)
Theorem hlt_LINEAR_SINGULAR_IMAGE_HYPERPLANE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ ~ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2839 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2839 (if hl_dot N a x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7243 / SPAN_DELETE_0   (hash md5:7a6c5a77f27e7f9be46774a0581763c5)
Theorem hlt_SPAN_DELETE_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_span N (hl_DELETE (hl_ty_cart R N) s (hl_vec N (hl_NUMERAL hl_zero))) = hl_span N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:7252 / DIM_BASIS_IMAGE   (hash md5:0e112431b999d7c44bd5f7f7da12c395)
Theorem hlt_DIM_BASIS_IMAGE : forall N:set, N <> Empty -> forall k :e 2 :^: omega, hl_dim N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) k) = hl_CARD omega (hl_INTER omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) k).
Admitted.

// HOL Light: Multivariate/vectors.ml:7269 / SPAN_IMAGE_SCALE   (hash md5:8384b1818350b38534e45a22fdd137e4)
Theorem hlt_SPAN_IMAGE_SCALE : forall N:set, N <> Empty -> forall c :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> ~ c x = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_span N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N (c x) x) s) = hl_span N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:7282 / DIM_IMAGE_SCALE   (hash md5:48d397e08fd54f95346df5d57e38e108)
Theorem hlt_DIM_IMAGE_SCALE : forall N:set, N <> Empty -> forall c :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> ~ c x = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_dim N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N (c x) x) s) = hl_dim N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:7287 / PAIRWISE_ORTHOGONAL_INDEPENDENT   (hash md5:40ef9713aed961877ed142f88a917507)
Theorem hlt_PAIRWISE_ORTHOGONAL_INDEPENDENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 -> hl_independent N s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7300 / PAIRWISE_ORTHOGONAL_IMP_FINITE   (hash md5:31cf23158b999f9aa492e62fce57c44b)
Theorem hlt_PAIRWISE_ORTHOGONAL_IMP_FINITE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 -> hl_FINITE (hl_ty_cart R N) s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7311 / GRAM_SCHMIDT_STEP   (hash md5:cf04eff513dc70e785d3f30630cb42d4)
Theorem hlt_GRAM_SCHMIDT_STEP : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a x :e hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_span N s) = 1 -> hl_orthogonal N x (hl_vector_sub N a (hl_vsum (hl_ty_cart R N) N s (fun b :e hl_ty_cart R N => hl_vmul N (hl_real_div (hl_dot N b a) (hl_dot N b b)) b))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7330 / ORTHOGONAL_EXTENSION   (hash md5:3c6ab1d4d17d2fb659fb8106d59dbe65)
Theorem hlt_ORTHOGONAL_EXTENSION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) (hl_UNION (hl_ty_cart R N) s u) = 1 /\ hl_span N (hl_UNION (hl_ty_cart R N) s u) = hl_span N (hl_UNION (hl_ty_cart R N) s t).
Admitted.

// HOL Light: Multivariate/vectors.ml:7375 / ORTHOGONAL_EXTENSION_STRONG   (hash md5:a13779cb6d46d661bb6ae785a303160a)
Theorem hlt_ORTHOGONAL_EXTENSION_STRONG : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_DISJOINT (hl_ty_cart R N) u (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s) = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) (hl_UNION (hl_ty_cart R N) s u) = 1 /\ hl_span N (hl_UNION (hl_ty_cart R N) s u) = hl_span N (hl_UNION (hl_ty_cart R N) s t)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7392 / ORTHONORMAL_EXTENSION   (hash md5:05dd109fd58bf3d942306621dac6f951)
Theorem hlt_ORTHONORMAL_EXTENSION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_vector_norm N x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> exists u :e 2 :^: hl_ty_cart R N, hl_DISJOINT (hl_ty_cart R N) u s = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) (hl_UNION (hl_ty_cart R N) s u) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x u = 1 -> hl_vector_norm N x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_span N (hl_UNION (hl_ty_cart R N) s u) = hl_span N (hl_UNION (hl_ty_cart R N) s t))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7436 / VECTOR_IN_ORTHOGONAL_SPANNINGSET   (hash md5:09a44cc46a2835d0c9a56fda2b358133)
Theorem hlt_VECTOR_IN_ORTHOGONAL_SPANNINGSET : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, exists s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 /\ hl_span N s = hl_UNIV (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7449 / VECTOR_IN_ORTHOGONAL_BASIS   (hash md5:2bdc7ece862c3be3904ae7fefae2b25e)
Theorem hlt_VECTOR_IN_ORTHOGONAL_BASIS : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) -> exists s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 /\ (hl_independent N s = 1 /\ (hl_HAS_SIZE (hl_ty_cart R N) s (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_span N s = hl_UNIV (hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7471 / VECTOR_IN_ORTHONORMAL_BASIS   (hash md5:696d61850dffb7b651564b8e228446ab)
Theorem hlt_VECTOR_IN_ORTHONORMAL_BASIS : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_vector_norm N a = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> exists s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_vector_norm N x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (hl_independent N s = 1 /\ (hl_HAS_SIZE (hl_ty_cart R N) s (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_span N s = hl_UNIV (hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7509 / BESSEL_INEQUALITY   (hash md5:404e46fb8df9342dfc2fd30efc97527c)
Theorem hlt_BESSEL_INEQUALITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) s = 1 /\ (forall x1 :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x1 s = 1 -> hl_vector_norm N x1 = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_real_le (hl_sum (hl_ty_cart R N) s (fun e1 :e hl_ty_cart R N => hl_real_pow (hl_dot N e1 x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_pow (hl_vector_norm N x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7537 / ORTHOGONAL_SPANNINGSET_SUBSPACE   (hash md5:be2ccc5d7a600258ab15aa537ead1d5a)
Theorem hlt_ORTHOGONAL_SPANNINGSET_SUBSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> exists b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b s = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1 /\ hl_span N b = s).
Admitted.

// HOL Light: Multivariate/vectors.ml:7551 / ORTHOGONAL_BASIS_SUBSPACE   (hash md5:fba3f7cbf7baa4c0713534de0a02cc96)
Theorem hlt_ORTHOGONAL_BASIS_SUBSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> exists b :e 2 :^: hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) b = 1 /\ (hl_SUBSET (hl_ty_cart R N) b s = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1 /\ (hl_independent N b = 1 /\ (hl_HAS_SIZE (hl_ty_cart R N) b (hl_dim N s) = 1 /\ hl_span N b = s)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7576 / ORTHONORMAL_BASIS_SUBSPACE   (hash md5:ee220552c0878c24a7fd4ec37a28bb28)
Theorem hlt_ORTHONORMAL_BASIS_SUBSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> exists b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b s = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x b = 1 -> hl_vector_norm N x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (hl_independent N b = 1 /\ (hl_HAS_SIZE (hl_ty_cart R N) b (hl_dim N s) = 1 /\ hl_span N b = s)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7614 / ORTHOGONAL_TO_SUBSPACE_EXISTS_GEN   (hash md5:88fd60b0bb1edf111db78f9e51bb72b7)
Theorem hlt_ORTHOGONAL_TO_SUBSPACE_EXISTS_GEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_PSUBSET (hl_ty_cart R N) (hl_span N s) (hl_span N t) = 1 -> exists x :e hl_ty_cart R N, ~ x = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_IN (hl_ty_cart R N) x (hl_span N t) = 1 /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_span N s) = 1 -> hl_orthogonal N x y = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:7660 / ORTHOGONAL_TO_SUBSPACE_EXISTS   (hash md5:8cc6a9ac9b76faa8b7aa967e8c544539)
Theorem hlt_ORTHOGONAL_TO_SUBSPACE_EXISTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lt (hl_dim N s) (hl_dimindex N (hl_UNIV N)) = 1 -> exists x :e hl_ty_cart R N, ~ x = hl_vec N (hl_NUMERAL hl_zero) /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> hl_orthogonal N x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7670 / ORTHOGONAL_TO_VECTOR_EXISTS   (hash md5:4957364696c66732e5a402860a34dabb)
Theorem hlt_ORTHOGONAL_TO_VECTOR_EXISTS : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> exists y :e hl_ty_cart R N, ~ y = hl_vec N (hl_NUMERAL hl_zero) /\ hl_orthogonal N x y = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7677 / SPAN_NOT_UNIV_ORTHOGONAL   (hash md5:e1ca2c5ba7ef3a02abcd6f45cf7b8ad7)
Theorem hlt_SPAN_NOT_UNIV_ORTHOGONAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_span N s = hl_UNIV (hl_ty_cart R N) -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_span N s) = 1 -> hl_dot N a x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:7685 / SPAN_NOT_UNIV_SUBSET_HYPERPLANE   (hash md5:c6e16477b4f12bfcfc7607cb371dec98)
Theorem hlt_SPAN_NOT_UNIV_SUBSET_HYPERPLANE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_span N s = hl_UNIV (hl_ty_cart R N) -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_SUBSET (hl_ty_cart R N) (hl_span N s) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2842 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2842 (if hl_dot N a x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7690 / LOWDIM_SUBSET_HYPERPLANE   (hash md5:ae5f09f72b90ce349532018b357efab9)
Theorem hlt_LOWDIM_SUBSET_HYPERPLANE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lt (hl_dim N s) (hl_dimindex N (hl_UNIV N)) = 1 -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_SUBSET (hl_ty_cart R N) (hl_span N s) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2843 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2843 (if hl_dot N a x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7698 / VECTOR_EQ_DOT_SPAN   (hash md5:489f29bb329674111d11dc595fb0e53e)
Theorem hlt_VECTOR_EQ_DOT_SPAN : forall N:set, N <> Empty -> forall b :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, (forall v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v b = 1 -> hl_dot N v x = hl_dot N v y) /\ (hl_IN (hl_ty_cart R N) x (hl_span N b) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_span N b) = 1) -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:7706 / ORTHONORMAL_BASIS_EXPAND   (hash md5:536d79443cad55f5ee90120b25fe61ff)
Theorem hlt_ORTHONORMAL_BASIS_EXPAND : forall N:set, N <> Empty -> forall b :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1 /\ ((forall v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v b = 1 -> hl_vector_norm N v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_IN (hl_ty_cart R N) x (hl_span N b) = 1) -> hl_vsum (hl_ty_cart R N) N b (fun v :e hl_ty_cart R N => hl_vmul N (hl_dot N v x) v) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:7722 / ORTHONORMAL_BASIS_EXPAND_DOT   (hash md5:f4107f97b86ff420de499fb76cfaa775)
Theorem hlt_ORTHONORMAL_BASIS_EXPAND_DOT : forall N:set, N <> Empty -> forall b :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1 /\ ((forall v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v b = 1 -> hl_vector_norm N v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (hl_IN (hl_ty_cart R N) x (hl_span N b) = 1 \/ hl_IN (hl_ty_cart R N) y (hl_span N b) = 1)) -> hl_sum (hl_ty_cart R N) b (fun v :e hl_ty_cart R N => hl_real_mul (hl_dot N v x) (hl_dot N v y)) = hl_dot N x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:7738 / ORTHONORMAL_BASIS_EXPAND_NORM   (hash md5:bf384c5b2f0d4225ab041eb101b95976)
Theorem hlt_ORTHONORMAL_BASIS_EXPAND_NORM : forall N:set, N <> Empty -> forall b :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1 /\ ((forall v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v b = 1 -> hl_vector_norm N v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_IN (hl_ty_cart R N) x (hl_span N b) = 1) -> hl_sum (hl_ty_cart R N) b (fun v :e hl_ty_cart R N => hl_real_pow (hl_dot N v x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_pow (hl_vector_norm N x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7750 / ORTHOGONAL_IMP_INDEPENDENT_SUBSPACES   (hash md5:d879fe8e7f7eecc6f725b8c1362b1f7e)
Theorem hlt_ORTHOGONAL_IMP_INDEPENDENT_SUBSPACES : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, (forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b t = 1 -> hl_orthogonal N a b = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) s t) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7757 / INDEPENDENT_SUBSPACES_ALT   (hash md5:f972e5807098d4f543d05a2b5c5f9032)
Theorem hlt_INDEPENDENT_SUBSPACES_ALT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ hl_subspace N t = 1 -> (hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) s t) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) = 1 <-> hl_INTER (hl_ty_cart R N) s t = hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7764 / INDEPENDENT_SUBSPACES_0   (hash md5:2f0ec0ce018c5bd54126c49c80db8dda)
Theorem hlt_INDEPENDENT_SUBSPACES_0 : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ hl_subspace N t = 1 -> (hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) s t) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) = 1 <-> forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y t = 1 /\ hl_vector_add N x y = hl_vec N (hl_NUMERAL hl_zero)) -> x = hl_vec N (hl_NUMERAL hl_zero) /\ y = hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7780 / INDEPENDENT_SUBSPACES   (hash md5:89b9ffc85e1be5dfc73d5079b38f9fff)
Theorem hlt_INDEPENDENT_SUBSPACES : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ hl_subspace N t = 1 -> (hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) s t) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) = 1 <-> forall x y x' y' :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) x' s = 1 /\ (hl_IN (hl_ty_cart R N) y t = 1 /\ (hl_IN (hl_ty_cart R N) y' t = 1 /\ hl_vector_add N x y = hl_vector_add N x' y'))) -> x = x' /\ y = y').
Admitted.

// HOL Light: Multivariate/vectors.ml:7795 / ORTHOGONAL_SUBSPACE_DECOMP_UNIQUE   (hash md5:c831fed2605d3a8e8c3388392245bdf4)
Theorem hlt_ORTHOGONAL_SUBSPACE_DECOMP_UNIQUE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall x y x' y' :e hl_ty_cart R N, (forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b t = 1 -> hl_orthogonal N a b = 1) /\ (hl_IN (hl_ty_cart R N) x (hl_span N s) = 1 /\ (hl_IN (hl_ty_cart R N) x' (hl_span N s) = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_span N t) = 1 /\ (hl_IN (hl_ty_cart R N) y' (hl_span N t) = 1 /\ hl_vector_add N x y = hl_vector_add N x' y')))) -> x = x' /\ y = y'.
Admitted.

// HOL Light: Multivariate/vectors.ml:7809 / ORTHOGONAL_SUBSPACE_DECOMP_EXISTS   (hash md5:30a1b5dd4dd8644f439e7c79d46add5e)
Theorem hlt_ORTHOGONAL_SUBSPACE_DECOMP_EXISTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, exists y z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_span N s) = 1 /\ ((forall w :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) w (hl_span N s) = 1 -> hl_orthogonal N z w = 1) /\ x = hl_vector_add N y z).
Admitted.

// HOL Light: Multivariate/vectors.ml:7826 / ORTHOGONAL_SUBSPACE_DECOMP   (hash md5:bd472e9f1c2f9e146e18bb6279cc4deb)
Theorem hlt_ORTHOGONAL_SUBSPACE_DECOMP : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_exists_unique (hl_ty_cart R N :*: hl_ty_cart R N) (hl_GABS (2 :^: (hl_ty_cart R N :*: hl_ty_cart R N)) (fun f :e 2 :^: (hl_ty_cart R N :*: hl_ty_cart R N) => if forall y z :e hl_ty_cart R N, hl_GEQ 2 (f (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) y z)) (if hl_IN (hl_ty_cart R N) y (hl_span N s) = 1 /\ (hl_IN (hl_ty_cart R N) z (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2845 :e hl_ty_cart R N => if exists z1 :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2845 (if forall x1 :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x1 (hl_span N s) = 1 -> hl_orthogonal N z1 x1 = 1 then 1 else 0) z1 = 1 then 1 else 0)) = 1 /\ x = hl_vector_add N y z) then 1 else 0) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:7844 / ISOMETRY_SUBSET_SUBSPACE   (hash md5:3372c79ca0cfad07514c95eb0b553d01)
Theorem hlt_ISOMETRY_SUBSET_SUBSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_subspace M s = 1 /\ (hl_subspace N t = 1 /\ hl_le (hl_dim M s) (hl_dim N t) = 1) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_vector_norm N (f x) = hl_vector_norm M x).
Admitted.

// HOL Light: Multivariate/vectors.ml:7884 / ISOMETRIES_SUBSPACES   (hash md5:82c9ee5b50e1b56febacff0164095895)
Theorem hlt_ISOMETRIES_SUBSPACES : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_subspace M s = 1 /\ (hl_subspace N t = 1 /\ hl_dim M s = hl_dim N t) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear M N f = 1 /\ (hl_linear N M g = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t /\ (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t = s /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_vector_norm N (f x) = hl_vector_norm M x) /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> hl_vector_norm M (g y) = hl_vector_norm N y) /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x) /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> f (g y) = y)))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7962 / ISOMETRY_SUBSPACES   (hash md5:40d26090b2f9294f449b41fb474406ab)
Theorem hlt_ISOMETRY_SUBSPACES : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_subspace M s = 1 /\ (hl_subspace N t = 1 /\ hl_dim M s = hl_dim N t) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_vector_norm N (f x) = hl_vector_norm M x).
Admitted.

// HOL Light: Multivariate/vectors.ml:7971 / ISOMETRY_UNIV_SUBSPACE   (hash md5:29f28f1c3edf12bb6a7a5686c90b18e9)
Theorem hlt_ISOMETRY_UNIV_SUBSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ hl_dimindex M (hl_UNIV M) = hl_dim N s -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_UNIV (hl_ty_cart R M)) = s /\ forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_vector_norm M x).
Admitted.

// HOL Light: Multivariate/vectors.ml:7980 / ISOMETRY_UNIV_SUPERSET_SUBSPACE   (hash md5:6fe5d98caf9169706cf7e04cc0e1559f)
Theorem hlt_ISOMETRY_UNIV_SUPERSET_SUBSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_le (hl_dim N s) (hl_dimindex M (hl_UNIV M)) = 1 /\ hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_UNIV (hl_ty_cart R M))) = 1 /\ forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_vector_norm M x).
Admitted.

// HOL Light: Multivariate/vectors.ml:7993 / ISOMETRY_UNIV_UNIV   (hash md5:cef27efcc62104b8d8361f325c5d4c50)
Theorem hlt_ISOMETRY_UNIV_UNIV : forall M N:set, M <> Empty -> N <> Empty -> hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_vector_norm M x.
Admitted.

// HOL Light: Multivariate/vectors.ml:8003 / SUBSPACE_ISOMORPHISM   (hash md5:2102f89bdbb1e89a870b70c537c8dcd4)
Theorem hlt_SUBSPACE_ISOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_subspace M s = 1 /\ (hl_subspace N t = 1 /\ hl_dim M s = hl_dim N t) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t /\ forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:8013 / ISOMORPHISMS_UNIV_UNIV   (hash md5:bb7f429c524f3d18461a44213f3e425d)
Theorem hlt_ISOMORPHISMS_UNIV_UNIV : forall M N:set, M <> Empty -> N <> Empty -> hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear M N f = 1 /\ (hl_linear N M g = 1 /\ ((forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_vector_norm M x) /\ ((forall y :e hl_ty_cart R N, hl_vector_norm M (g y) = hl_vector_norm N y) /\ ((forall x :e hl_ty_cart R M, g (f x) = x) /\ forall y :e hl_ty_cart R N, f (g y) = y)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:8032 / SUBSPACE_HYPERPLANE   (hash md5:23ec7ad3ac5d66e4ef1504078ed47f5b)
Theorem hlt_SUBSPACE_HYPERPLANE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_subspace N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2846 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2846 (if hl_dot N a x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8037 / SUBSPACE_SPECIAL_HYPERPLANE   (hash md5:39460bb983f2eb1836b8395910e64bd3)
Theorem hlt_SUBSPACE_SPECIAL_HYPERPLANE : forall N:set, N <> Empty -> forall k :e omega, hl_subspace N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2847 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2847 (if hl_vindex R N x k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8042 / SPECIAL_HYPERPLANE_SPAN   (hash md5:d67d7d39adaa3495d184fe3fcda09bc4)
Theorem hlt_SPECIAL_HYPERPLANE_SPAN : forall N:set, N <> Empty -> forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2848 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2848 (if hl_vindex R N x k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0) = hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_DELETE omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) k)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8064 / DIM_SPECIAL_HYPERPLANE   (hash md5:6514bf333abd74bfe88a93ba519e7012)
Theorem hlt_DIM_SPECIAL_HYPERPLANE : forall N:set, N <> Empty -> forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2850 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2850 (if hl_vindex R N x k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8081 / LOWDIM_EQ_INTER_HYPERPLANE   (hash md5:0514913f0aa7e6c17019deb51906d0e0)
Theorem hlt_LOWDIM_EQ_INTER_HYPERPLANE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_subspace N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_add (hl_dim N t) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_dim N s)) -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_INTER (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2851 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2851 (if hl_dot N a x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) s = t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8136 / LOWDIM_EQ_HYPERPLANE   (hash md5:0868e79a39b47f8fdc337ec9e7180ca6)
Theorem hlt_LOWDIM_EQ_HYPERPLANE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dim N s = hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_span N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2852 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2852 (if hl_dot N a x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:8149 / DIM_IMAGE_KERNEL_GEN   (hash md5:939ae8c786b7daa90c702ef9e0517ca2)
Theorem hlt_DIM_IMAGE_KERNEL_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_subspace M s = 1 -> hl_add (hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) (hl_dim M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_2861 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_2861 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) = hl_dim M s.
Admitted.

// HOL Light: Multivariate/vectors.ml:8253 / DIM_IMAGE_KERNEL   (hash md5:a005bc09a011236f299b58d6bae1536c)
Theorem hlt_DIM_IMAGE_KERNEL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_add (hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_UNIV (hl_ty_cart R M)))) (hl_dim M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_2862 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_2862 (if f x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) = hl_dimindex M (hl_UNIV M).
Admitted.

// HOL Light: Multivariate/vectors.ml:8261 / DIM_SUMS_INTER   (hash md5:d1537668d33882d64f49de01dd608c2a)
Theorem hlt_DIM_SUMS_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ hl_subspace N t = 1 -> hl_add (hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2865 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2865 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0))) (hl_dim N (hl_INTER (hl_ty_cart R N) s t)) = hl_add (hl_dim N s) (hl_dim N t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8371 / DIM_UNION_INTER   (hash md5:794af6663fec8cabcdff38def6025866)
Theorem hlt_DIM_UNION_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ hl_subspace N t = 1 -> hl_add (hl_dim N (hl_UNION (hl_ty_cart R N) s t)) (hl_dim N (hl_INTER (hl_ty_cart R N) s t)) = hl_add (hl_dim N s) (hl_dim N t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8381 / DIM_KERNEL_COMPOSE   (hash md5:cb92b17604441701d8d532f20d23b5e6)
Theorem hlt_DIM_KERNEL_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, hl_linear M N f = 1 /\ hl_linear N P g = 1 -> hl_le (hl_dim M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_2872 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_2872 (if hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f x = hl_vec P (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) (hl_add (hl_dim M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_2873 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_2873 (if f x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) (hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2874 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2874 (if g y = hl_vec P (hl_NUMERAL hl_zero) then 1 else 0) y = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8439 / DIM_ORTHOGONAL_SUM   (hash md5:cb9f54cd5a998b6125a53c5301d4f006)
Theorem hlt_DIM_ORTHOGONAL_SUM : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 -> hl_dot N x y = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_dim N (hl_UNION (hl_ty_cart R N) s t) = hl_add (hl_dim N s) (hl_dim N t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8460 / DIM_SUBSPACE_ORTHOGONAL_TO_VECTORS   (hash md5:81f4d1f00e179ccb022d91bcfaa5b9f5)
Theorem hlt_DIM_SUBSPACE_ORTHOGONAL_TO_VECTORS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_subspace N t = 1 /\ hl_SUBSET (hl_ty_cart R N) s t = 1) -> hl_add (hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2875 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2875 (if hl_IN (hl_ty_cart R N) y t = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_orthogonal N x y = 1 then 1 else 0) y = 1 then 1 else 0))) (hl_dim N s) = hl_dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8488 / DIM_SPECIAL_SUBSPACE   (hash md5:6b46ee766a384d376c683b773740833c)
Theorem hlt_DIM_SPECIAL_SUBSPACE : forall N:set, N <> Empty -> forall k :e 2 :^: omega, hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2876 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2876 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_IN omega i k = 1) -> hl_vindex R N x i = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = hl_CARD omega (hl_DIFF omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) k).
Admitted.

// HOL Light: Multivariate/vectors.ml:8518 / INDEPENDENT_UNION   (hash md5:0f7d379738b2ffd7efb3ada989b1555e)
Theorem hlt_INDEPENDENT_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_independent N s = 1 /\ (hl_independent N t = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_span N s) (hl_span N t)) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) = 1) -> hl_independent N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8546 / LINEAR_INJECTIVE_ON_IFF_DIM   (hash md5:7d8428af5c0f6ffd445d47d11ac87d39)
Theorem hlt_LINEAR_INJECTIVE_ON_IFF_DIM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_subspace M s = 1 -> ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y) <-> hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_dim M s).
Admitted.

// HOL Light: Multivariate/vectors.ml:8558 / DIM_INJECTIVE_ON_LINEAR_IMAGE   (hash md5:a2d42aa65675298a56130a87ba32631e)
Theorem hlt_DIM_INJECTIVE_ON_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_subspace M s = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y)) -> hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_dim M s.
Admitted.

// HOL Light: Multivariate/vectors.ml:8565 / DIM_EQ_SUBSPACES   (hash md5:08acc4e6239b1f07785ef589ba1795df)
Theorem hlt_DIM_EQ_SUBSPACES : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_subspace N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ hl_le (hl_dim N t) (hl_dim N s) = 1)) -> s = t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8571 / DIM_EQ_SUBSPACE   (hash md5:7f53647a929c3a99ddf836dc8eaf5b5e)
Theorem hlt_DIM_EQ_SUBSPACE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_subspace N t = 1 /\ hl_SUBSET (hl_ty_cart R N) s t = 1) -> (hl_dim N s = hl_dim N t <-> s = t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8579 / LINEAR_SURJECTIVE_ON_IFF_DIM   (hash md5:f6caa50b0ed7944fbdba425678a99280)
Theorem hlt_LINEAR_SURJECTIVE_ON_IFF_DIM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_linear M N f = 1 /\ (hl_subspace M s = 1 /\ (hl_subspace N t = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1)) -> (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t <-> hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_dim N t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8586 / LINEAR_INJECTIVE_IMP_SURJECTIVE_ON   (hash md5:59ccac7fe7b7a4b0dbdecef124b65954)
Theorem hlt_LINEAR_INJECTIVE_IMP_SURJECTIVE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_linear M N f = 1 /\ (hl_subspace M s = 1 /\ (hl_subspace N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (hl_le (hl_dim N t) (hl_dim M s) = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y))))) -> hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8598 / LINEAR_SURJECTIVE_IFF_INJECTIVE_ON   (hash md5:0128b059af168c273c262a175dd7c45e)
Theorem hlt_LINEAR_SURJECTIVE_IFF_INJECTIVE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_linear M N f = 1 /\ (hl_subspace M s = 1 /\ (hl_subspace N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ hl_dim M s = hl_dim N t))) -> (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s = t <-> forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:8606 / LINEAR_INJECTIVE_IFF_DIM   (hash md5:1e6080ceb521bead22584132ad0a732c)
Theorem hlt_LINEAR_INJECTIVE_IFF_DIM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> ((forall x y :e hl_ty_cart R M, f x = f y -> x = y) <-> hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_UNIV (hl_ty_cart R M))) = hl_dimindex M (hl_UNIV M)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8614 / LINEAR_SURJECTIVE_IFF_DIM   (hash md5:9c45986fbfae854c851f2351719bfe05)
Theorem hlt_LINEAR_SURJECTIVE_IFF_DIM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 -> ((forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y) <-> hl_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_UNIV (hl_ty_cart R M))) = hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8621 / LINEAR_SURJECTIVE_IFF_INJECTIVE_GEN   (hash md5:6c7fb335859a2c8185fe5f305fbed2a4)
Theorem hlt_LINEAR_SURJECTIVE_IFF_INJECTIVE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ hl_linear M N f = 1 -> ((forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R M, f x = y) <-> forall x y :e hl_ty_cart R M, f x = f y -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:8628 / MATRIX_INVERTIBLE_LEFT_GEN   (hash md5:616d8f4906ee61fefd355dfbbd5669e4)
Theorem hlt_MATRIX_INVERTIBLE_LEFT_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_le (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M)) = 1 -> (hl_invertible M N (hl_matrix M N f) = 1 <-> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f = hl_I (hl_ty_cart R M)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8642 / MATRIX_INVERTIBLE_LEFT   (hash md5:0e7250bc9fe41ec6f41885906b6d42c5)
Theorem hlt_MATRIX_INVERTIBLE_LEFT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> (hl_invertible N N (hl_matrix N N f) = 1 <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8648 / MATRIX_INVERTIBLE_RIGHT_GEN   (hash md5:8b6cf1561b43353904d7e9841d5c5d22)
Theorem hlt_MATRIX_INVERTIBLE_RIGHT_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 -> (hl_invertible M N (hl_matrix M N f) = 1 <-> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_linear N M g = 1 /\ hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8662 / MATRIX_INVERTIBLE_RIGHT   (hash md5:c8c8b3e44a80d774dca610f5dc50b1dd)
Theorem hlt_MATRIX_INVERTIBLE_RIGHT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> (hl_invertible N N (hl_matrix N N f) = 1 <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8672 / PASTECART_AS_ORTHOGONAL_SUM   (hash md5:b7b7b22184b50be274217c4e6dd57ebb)
Theorem hlt_PASTECART_AS_ORTHOGONAL_SUM : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_pastecart R M N x y = hl_vector_add (hl_ty_finite_sum M N) (hl_pastecart R M N x (hl_vec N (hl_NUMERAL hl_zero))) (hl_pastecart R M N (hl_vec M (hl_NUMERAL hl_zero)) y).
Admitted.

// HOL Light: Multivariate/vectors.ml:8677 / PCROSS_AS_ORTHOGONAL_SUM   (hash md5:50b9e44c8a02308e915d93ed60cfeb9d)
Theorem hlt_PCROSS_AS_ORTHOGONAL_SUM : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_PCROSS R M N s t = hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) (fun GEN_PVAR_2877 :e hl_ty_cart R (hl_ty_finite_sum M N) => if exists u v :e hl_ty_cart R (hl_ty_finite_sum M N), hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) GEN_PVAR_2877 (if hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) u (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R (hl_ty_finite_sum M N)) (fun x :e hl_ty_cart R M => hl_pastecart R M N x (hl_vec N (hl_NUMERAL hl_zero))) s) = 1 /\ hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) v (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R (hl_ty_finite_sum M N)) (fun y :e hl_ty_cart R N => hl_pastecart R M N (hl_vec M (hl_NUMERAL hl_zero)) y) t) = 1 then 1 else 0) (hl_vector_add (hl_ty_finite_sum M N) u v) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:8687 / DIM_PCROSS   (hash md5:9abc1b2790e2a62215c219864853b4ac)
Theorem hlt_DIM_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_subspace M s = 1 /\ hl_subspace N t = 1 -> hl_dim (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = hl_add (hl_dim M s) (hl_dim N t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8706 / SPAN_PCROSS_SUBSET   (hash md5:65b52cbbee1d485e5c6609bdd37d4f58)
Theorem hlt_SPAN_PCROSS_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_span (hl_ty_finite_sum M N) (hl_PCROSS R M N s t)) (hl_PCROSS R M N (hl_span M s) (hl_span N t)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8712 / SPAN_PCROSS   (hash md5:ffaf830d3c837b295d7492b4505272b8)
Theorem hlt_SPAN_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R M) /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ (hl_IN (hl_ty_cart R M) (hl_vec M (hl_NUMERAL hl_zero)) s = 1 \/ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) t = 1)) -> hl_span (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = hl_PCROSS R M N (hl_span M s) (hl_span N t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8758 / DIM_PCROSS_STRONG   (hash md5:bf1fdd567317402a4ce5051c0f0b90df)
Theorem hlt_DIM_PCROSS_STRONG : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R M) /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ (hl_IN (hl_ty_cart R M) (hl_vec M (hl_NUMERAL hl_zero)) s = 1 \/ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) t = 1)) -> hl_dim (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = hl_add (hl_dim M s) (hl_dim N t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8765 / SPAN_SUMS   (hash md5:fcac9d98d7307a9b1c5c6e2b660eec3c)
Theorem hlt_SPAN_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_UNION (hl_ty_cart R N) s t) = 1) -> hl_span N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2878 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2878 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2879 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2879 (if hl_IN (hl_ty_cart R N) x (hl_span N s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_span N t) = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:8798 / RANK_NULLSPACE   (hash md5:235b849904777a671d5813a985fb2529)
Theorem hlt_RANK_NULLSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_add (hl_rank M N A) (hl_dim M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_2880 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_2880 (if hl_matrix_vector_mul M N A x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) = hl_dimindex M (hl_UNIV M).
Admitted.

// HOL Light: Multivariate/vectors.ml:8804 / RANK_SYLVESTER   (hash md5:5f173b6d6cb7ceae147e47f3e4892599)
Theorem hlt_RANK_SYLVESTER : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R P) N, hl_le (hl_add (hl_rank N M A) (hl_rank P N B)) (hl_add (hl_rank P M (hl_matrix_mul N M P A B)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8826 / RANK_GRAM   (hash md5:a40e299abd2d2ee8469ffd44ee761ab5)
Theorem hlt_RANK_GRAM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank M M (hl_matrix_mul N M M (hl_transp M N A) A) = hl_rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:8844 / RANK_TRIANGLE   (hash md5:296f45a04dd4e101c610cb7a16911eb5)
Theorem hlt_RANK_TRIANGLE : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R M) N, hl_le (hl_rank M N (hl_matrix_add M N A B)) (hl_add (hl_rank M N A) (hl_rank M N B)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8859 / COVARIANCE_MATRIX_EQ_0   (hash md5:d8141a65e11bb48961392447778c655f)
Theorem hlt_COVARIANCE_MATRIX_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul M N N (hl_transp N M A) A = hl_mat N N (hl_NUMERAL hl_zero) <-> A = hl_mat N M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:8863 / MATRIX_MUL_COVARIANCE_LCANCEL   (hash md5:4634edbe77b98bc4eca086bd20f0901f)
Theorem hlt_MATRIX_MUL_COVARIANCE_LCANCEL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) P, forall B C :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N N M (hl_matrix_mul P N N (hl_transp N P A) A) B = hl_matrix_mul N N M (hl_matrix_mul P N N (hl_transp N P A) A) C <-> hl_matrix_mul N P M A B = hl_matrix_mul N P M A C.
Admitted.

// HOL Light: Multivariate/vectors.ml:8876 / MATRIX_MUL_COVARIANCE_RCANCEL   (hash md5:2397b1f924d1786ec62608298ef3ab24)
Theorem hlt_MATRIX_MUL_COVARIANCE_RCANCEL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R P) N, forall B C :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul N M N B (hl_matrix_mul P N N A (hl_transp P N A)) = hl_matrix_mul N M N C (hl_matrix_mul P N N A (hl_transp P N A)) <-> hl_matrix_mul N M P B A = hl_matrix_mul N M P C A.
Admitted.

// HOL Light: Multivariate/vectors.ml:8883 / MATRIX_VECTOR_MUL_COVARIANCE_EQ_0   (hash md5:d9b47710b6ac75ea4a4b482cbd942c39)
Theorem hlt_MATRIX_VECTOR_MUL_COVARIANCE_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, hl_matrix_vector_mul M M (hl_matrix_mul N M M (hl_transp M N A) A) x = hl_vec M (hl_NUMERAL hl_zero) <-> hl_matrix_vector_mul M N A x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:8898 / matrix_inv   (hash md5:6e1824e5e30c2052320fe5001de08c25)
Theorem hlt_matrix_inv_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_inv M N A = hl_matrix N M (fun y :e hl_ty_cart R N => hl_select (hl_ty_cart R M) (fun x :e hl_ty_cart R M => if (forall w :e hl_ty_cart R M, hl_matrix_vector_mul M N A w = hl_vec N (hl_NUMERAL hl_zero) -> hl_orthogonal M x w = 1) /\ forall z :e hl_ty_cart R M, hl_orthogonal N (hl_vector_sub N y (hl_matrix_vector_mul M N A x)) (hl_matrix_vector_mul M N A z) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8903 / MOORE_PENROSE_PSEUDOINVERSE   (hash md5:5c92f49ec8184e58b7955d040a1b9d55)
Theorem hlt_MOORE_PENROSE_PSEUDOINVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall y :e hl_ty_cart R N, (forall w :e hl_ty_cart R M, hl_matrix_vector_mul M N A w = hl_vec N (hl_NUMERAL hl_zero) -> hl_orthogonal M (hl_matrix_vector_mul N M (hl_matrix_inv M N A) y) w = 1) /\ forall z :e hl_ty_cart R M, hl_orthogonal N (hl_vector_sub N y (hl_matrix_vector_mul M N A (hl_matrix_vector_mul N M (hl_matrix_inv M N A) y))) (hl_matrix_vector_mul M N A z) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8903 / MOORE_PENROSE_PSEUDOINVERSE_UNIQUE   (hash md5:6e206ac582246f8006007b5c403c46f0)
Theorem hlt_MOORE_PENROSE_PSEUDOINVERSE_UNIQUE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, (forall w :e hl_ty_cart R M, hl_matrix_vector_mul M N A w = hl_vec N (hl_NUMERAL hl_zero) -> hl_orthogonal M x w = 1) /\ (forall z :e hl_ty_cart R M, hl_orthogonal N (hl_vector_sub N y (hl_matrix_vector_mul M N A x)) (hl_matrix_vector_mul M N A z) = 1) -> hl_matrix_vector_mul N M (hl_matrix_inv M N A) y = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:8976 / MATRIX_INV_MUL_INNER   (hash md5:4abb59a3a109f01803f62e7e56c489f0)
Theorem hlt_MATRIX_INV_MUL_INNER : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M N M A (hl_matrix_mul N M M (hl_matrix_inv M N A) A) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:8985 / SYMMETRIC_MATRIX_INV_RMUL   (hash md5:9eb447711649be3c8144b042677c7a51)
Theorem hlt_SYMMETRIC_MATRIX_INV_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_symmetric_matrix N (hl_matrix_mul M N N A (hl_matrix_inv M N A)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8997 / MATRIX_INV_INV   (hash md5:0019fadae0e9a2ee5544abd3231da574)
Theorem hlt_MATRIX_INV_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_inv N M (hl_matrix_inv M N A) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9011 / MATRIX_INV_EQ   (hash md5:884f3aaefd74b410c8ae0d99b4db2ba7)
Theorem hlt_MATRIX_INV_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_inv M N A = hl_matrix_inv M N B <-> A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:9015 / MATRIX_INV_MUL_OUTER   (hash md5:56284ff512cccebec1ffd4db029eafb9)
Theorem hlt_MATRIX_INV_MUL_OUTER : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N M N (hl_matrix_inv M N A) (hl_matrix_mul M N N A (hl_matrix_inv M N A)) = hl_matrix_inv M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9021 / SYMMETRIC_MATRIX_INV_LMUL   (hash md5:f0818f33875019490dec7150d72cc85e)
Theorem hlt_SYMMETRIC_MATRIX_INV_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_symmetric_matrix M (hl_matrix_mul N M M (hl_matrix_inv M N A) A) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9027 / MATRIX_INV_UNIQUE_STRONG   (hash md5:dc3d8178ac6c9adac8a30b73e580d54e)
Theorem hlt_MATRIX_INV_UNIQUE_STRONG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall X :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul M N M A (hl_matrix_mul N M M X A) = A /\ (hl_matrix_mul N M N X (hl_matrix_mul M N N A X) = X /\ (hl_symmetric_matrix N (hl_matrix_mul M N N A X) = 1 /\ hl_symmetric_matrix M (hl_matrix_mul N M M X A) = 1)) -> hl_matrix_inv M N A = X.
Admitted.

// HOL Light: Multivariate/vectors.ml:9058 / MATRIX_INV_TRANSP   (hash md5:d14c7cfff27f98850cc6339c559c8e45)
Theorem hlt_MATRIX_INV_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_inv N M (hl_transp M N A) = hl_transp N M (hl_matrix_inv M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9067 / TRANSP_MATRIX_INV   (hash md5:09f50347971ce06d26a84d2915ba916c)
Theorem hlt_TRANSP_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_transp N M (hl_matrix_inv M N A) = hl_matrix_inv N M (hl_transp M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9071 / SYMMETRIC_MATRIX_INV   (hash md5:4c3d14abc1cc7b38c6eeaaf54dd87c62)
Theorem hlt_SYMMETRIC_MATRIX_INV : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N (hl_matrix_inv N N A) = 1 <-> hl_symmetric_matrix N A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9075 / MATRIX_INV_0   (hash md5:0bf5621375298b285865c16671168e0c)
Theorem hlt_MATRIX_INV_0 : forall M N:set, M <> Empty -> N <> Empty -> hl_matrix_inv M N (hl_mat M N (hl_NUMERAL hl_zero)) = hl_mat N M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:9080 / MATRIX_INV_EQ_0   (hash md5:3abe5379193a4c6bf17247943cd168c1)
Theorem hlt_MATRIX_INV_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_inv M N A = hl_mat N M (hl_NUMERAL hl_zero) <-> A = hl_mat M N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:9084 / MATRIX_INV_CMUL   (hash md5:b81ce85e17ff1dfbac589ae0e37ed720)
Theorem hlt_MATRIX_INV_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_inv M N (hl_mcmul M N c A) = hl_mcmul N M (hl_real_inv c) (hl_matrix_inv M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9096 / MATRIX_INV   (hash md5:ef35d7ac6778dab158a861ecb7dff487)
Theorem hlt_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_invertible N M A = 1 -> hl_matrix_mul N M M A (hl_matrix_inv N M A) = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_matrix_mul M N N (hl_matrix_inv N M A) A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9109 / MATRIX_INV_LEFT   (hash md5:dce2c6922577ecf7ff274d911ce4e68b)
Theorem hlt_MATRIX_INV_LEFT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N (hl_matrix_inv N N A) A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_invertible N N A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9113 / MATRIX_INV_RIGHT   (hash md5:ce95f037c9fca1c32acf2ae3eda9b0e8)
Theorem hlt_MATRIX_INV_RIGHT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A (hl_matrix_inv N N A) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_invertible N N A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9117 / MATRIX_MUL_LCANCEL   (hash md5:ff7aef7fffafad304dd56f440ab8a635)
Theorem hlt_MATRIX_MUL_LCANCEL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall B C :e hl_ty_cart (hl_ty_cart R P) M, hl_invertible M N A = 1 -> (hl_matrix_mul M N P A B = hl_matrix_mul M N P A C <-> B = C).
Admitted.

// HOL Light: Multivariate/vectors.ml:9127 / MATRIX_MUL_RCANCEL   (hash md5:13701ab55fb4b97aa32354b2cf3e4f57)
Theorem hlt_MATRIX_MUL_RCANCEL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R M) N, forall C :e hl_ty_cart (hl_ty_cart R P) M, hl_invertible P M C = 1 -> (hl_matrix_mul M N P A C = hl_matrix_mul M N P B C <-> A = B).
Admitted.

// HOL Light: Multivariate/vectors.ml:9136 / RANK_INVERTIBLE_RMUL   (hash md5:dc9604352965038d31923b85f58e473c)
Theorem hlt_RANK_INVERTIBLE_RMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall B :e hl_ty_cart (hl_ty_cart R P) M, hl_invertible P M B = 1 -> hl_rank P N (hl_matrix_mul M N P A B) = hl_rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9145 / RANK_INVERTIBLE_LMUL   (hash md5:f0ca432bfea9b6d3dc23b4dfb0f514d1)
Theorem hlt_RANK_INVERTIBLE_LMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall B :e hl_ty_cart (hl_ty_cart R P) M, hl_invertible M N A = 1 -> hl_rank P N (hl_matrix_mul M N P A B) = hl_rank P M B.
Admitted.

// HOL Light: Multivariate/vectors.ml:9150 / RANK_CMUL   (hash md5:a39c8cc95fc9c773496a6adfb7f7b27b)
Theorem hlt_RANK_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall c :e R, hl_rank N M (hl_mcmul N M c A) = hl_COND omega (if c = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_NUMERAL hl_zero) (hl_rank N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9160 / RANK_NEG   (hash md5:8fe3e013419ed6a7aca4df092d909a78)
Theorem hlt_RANK_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_rank N M (hl_matrix_neg N M A) = hl_rank N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9165 / MATRIX_INV_UNIQUE   (hash md5:561127574ed554dab5e65b5edf19d275)
Theorem hlt_MATRIX_INV_UNIQUE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall B :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N M M A B = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_matrix_mul M N N B A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_matrix_inv N M A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:9171 / MATRIX_INV_I   (hash md5:15eabb4e3d7eeea481cb6d8007b1af60)
Theorem hlt_MATRIX_INV_I : forall N:set, N <> Empty -> hl_matrix_inv N N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9176 / INVERTIBLE_MATRIX_INV   (hash md5:1d013e65147a9320b5bc56dd90d91334)
Theorem hlt_INVERTIBLE_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_invertible N M (hl_matrix_inv M N A) = 1 <-> hl_invertible M N A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9180 / MATRIX_INV_UNIQUE_LEFT   (hash md5:46d2bb5c7e428ccd5bb4cc7ff3c3c52f)
Theorem hlt_MATRIX_INV_UNIQUE_LEFT : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A B = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_matrix_inv N N B = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9185 / MATRIX_INV_UNIQUE_RIGHT   (hash md5:2d8cc20170dfef0be0fe345f4b3efc39)
Theorem hlt_MATRIX_INV_UNIQUE_RIGHT : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A B = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_matrix_inv N N A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:9190 / MATRIX_INV_COVARIANCE   (hash md5:eb14f154d7fe1e3467bdf94cf595dac5)
Theorem hlt_MATRIX_INV_COVARIANCE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_inv M M (hl_matrix_mul N M M (hl_transp M N A) A) = hl_matrix_mul N M M (hl_matrix_inv M N A) (hl_transp N M (hl_matrix_inv M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9211 / COVARIANCE_MATRIX_INV   (hash md5:06e680dc815d457c40cba5ca669a25f7)
Theorem hlt_COVARIANCE_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M N N (hl_transp N M (hl_matrix_inv M N A)) (hl_matrix_inv M N A) = hl_matrix_inv N N (hl_matrix_mul M N N A (hl_transp M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9217 / NORMAL_MATRIX_INV   (hash md5:ba73bb91d05f59abb6085dfb5cad02a3)
Theorem hlt_NORMAL_MATRIX_INV : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_normal_matrix N (hl_matrix_inv N N A) = 1 <-> hl_normal_matrix N A = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9223 / MATRIX_INV_COVARIANCE_RMUL   (hash md5:de460b3480dc0e41900d12324b3628fb)
Theorem hlt_MATRIX_INV_COVARIANCE_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M M N (hl_matrix_inv M M (hl_matrix_mul N M M (hl_transp M N A) A)) (hl_transp M N A) = hl_matrix_inv M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9230 / MATRIX_INV_COVARIANCE_LMUL   (hash md5:24e52ffa8f316894f65a8be26f36d9d5)
Theorem hlt_MATRIX_INV_COVARIANCE_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N M N (hl_transp M N A) (hl_matrix_inv N N (hl_matrix_mul M N N A (hl_transp M N A))) = hl_matrix_inv M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9238 / RANK_SIMILAR   (hash md5:fc8f418a89e103e922e878d8a0c56225)
Theorem hlt_RANK_SIMILAR : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall U :e hl_ty_cart (hl_ty_cart R M) N, hl_invertible M N U = 1 -> hl_rank M M (hl_matrix_mul N M M (hl_matrix_inv M N U) (hl_matrix_mul N N M A U)) = hl_rank N N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9244 / RANK_MATRIX_INV   (hash md5:c9b7af89b0e0b547dc7df36e78724eec)
Theorem hlt_RANK_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank N M (hl_matrix_inv M N A) = hl_rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9253 / RANK_MATRIX_INV_RMUL   (hash md5:347d838a77f11f90aa61f869d59a87ed)
Theorem hlt_RANK_MATRIX_INV_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank N N (hl_matrix_mul M N N A (hl_matrix_inv M N A)) = hl_rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9261 / RANK_MATRIX_INV_LMUL   (hash md5:b372f247d3b6fefb111ec0b02876a7a5)
Theorem hlt_RANK_MATRIX_INV_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_rank M M (hl_matrix_mul N M M (hl_matrix_inv M N A) A) = hl_rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9266 / MATRIX_INV_MULTIPLE_TRANP_RIGHT   (hash md5:e45257de21bf9d0c490e194523924440)
Theorem hlt_MATRIX_INV_MULTIPLE_TRANP_RIGHT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_inv M N A = hl_matrix_mul N M N (hl_matrix_inv M N A) (hl_matrix_mul M N N (hl_transp N M (hl_matrix_inv M N A)) (hl_transp M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9273 / MATRIX_TRANSP_MULTIPLE_INV_RIGHT   (hash md5:fe64f89d38146dfde38384a7246090ea)
Theorem hlt_MATRIX_TRANSP_MULTIPLE_INV_RIGHT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_transp M N A = hl_matrix_mul N M N (hl_transp M N A) (hl_matrix_mul M N N A (hl_matrix_inv M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9282 / MATRIX_INV_MULTIPLE_TRANP_LEFT   (hash md5:4a2c7bb56e1a09fef55697934b6d6f57)
Theorem hlt_MATRIX_INV_MULTIPLE_TRANP_LEFT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_inv M N A = hl_matrix_mul N M N (hl_transp M N A) (hl_matrix_mul M N N (hl_transp N M (hl_matrix_inv M N A)) (hl_matrix_inv M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9290 / MATRIX_TRANSP_MULTIPLE_INV_LEFT   (hash md5:e725645d7f416339e898a682dd05e7fa)
Theorem hlt_MATRIX_TRANSP_MULTIPLE_INV_LEFT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_transp M N A = hl_matrix_mul N M N (hl_matrix_inv M N A) (hl_matrix_mul M N N A (hl_transp M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9298 / MATRIX_VECTOR_MUL_INV_EQ_0   (hash md5:a52a55a304648def04afd0f893bdb9a0)
Theorem hlt_MATRIX_VECTOR_MUL_INV_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall x :e hl_ty_cart R N, forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_vector_mul N M (hl_matrix_inv M N A) x = hl_vec M (hl_NUMERAL hl_zero) <-> hl_matrix_vector_mul N M (hl_transp M N A) x = hl_vec M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:9305 / KERNEL_MATRIX_INV   (hash md5:0697b1afaa5b3d8877358e047635d6f8)
Theorem hlt_KERNEL_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2887 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2887 (if hl_matrix_vector_mul N M (hl_matrix_inv M N A) x = hl_vec M (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2888 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2888 (if hl_matrix_vector_mul N M (hl_transp M N A) x = hl_vec M (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:9310 / IMAGE_MATRIX_INV   (hash md5:98fd291cb1d6210aaec300cdc8b84c29)
Theorem hlt_IMAGE_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M (hl_matrix_inv M N A) x) (hl_UNIV (hl_ty_cart R N)) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N M (hl_transp M N A) x) (hl_UNIV (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9321 / COMMUTING_MATRIX_INV_COVARIANCE   (hash md5:fef57dae0ffa95faa326599f53890932)
Theorem hlt_COMMUTING_MATRIX_INV_COVARIANCE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M M M (hl_matrix_inv M M (hl_matrix_mul N M M (hl_transp M N A) A)) (hl_matrix_mul N M M (hl_transp M N A) A) = hl_matrix_mul M M M (hl_matrix_mul N M M (hl_transp M N A) A) (hl_matrix_inv M M (hl_matrix_mul N M M (hl_transp M N A) A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9329 / COMMUTING_MATRIX_INV_NORMAL   (hash md5:773c5438011512a6d14aa406d757fc20)
Theorem hlt_COMMUTING_MATRIX_INV_NORMAL : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_normal_matrix N A = 1 -> hl_matrix_mul N N N (hl_matrix_inv N N A) A = hl_matrix_mul N N N A (hl_matrix_inv N N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9341 / MATRIX_MUL_INV_EQ_0   (hash md5:c12630a99ce9f3ecd62429fb8491ca68)
Theorem hlt_MATRIX_MUL_INV_EQ_0 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R P) N, forall B :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul N P M (hl_matrix_inv P N A) (hl_matrix_inv N M B) = hl_mat M P (hl_NUMERAL hl_zero) <-> hl_matrix_mul N M P B A = hl_mat P M (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:9361 / MATRIX_INV_IDEMPOTENT   (hash md5:72aa121691c8bc5b96ca566789bf6431)
Theorem hlt_MATRIX_INV_IDEMPOTENT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N A = 1 /\ hl_matrix_mul N N N A A = A -> hl_matrix_inv N N A = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9366 / IDEMPOTENT_MATRIX_MUL_LINV   (hash md5:bbb59f07b4aeb7eb6d0fe5dc76df20f0)
Theorem hlt_IDEMPOTENT_MATRIX_MUL_LINV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul N N N (hl_matrix_mul M N N (hl_matrix_inv N M A) A) (hl_matrix_mul M N N (hl_matrix_inv N M A) A) = hl_matrix_mul M N N (hl_matrix_inv N M A) A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9373 / IDEMPOTENT_MATRIX_MUL_RINV   (hash md5:52d97cde504728e0bf5a410f9595eac8)
Theorem hlt_IDEMPOTENT_MATRIX_MUL_RINV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul M M M (hl_matrix_mul N M M A (hl_matrix_inv N M A)) (hl_matrix_mul N M M A (hl_matrix_inv N M A)) = hl_matrix_mul N M M A (hl_matrix_inv N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9380 / MATRIX_INV_MUL_LINV   (hash md5:7910ba03c315cb9ea238c8f58f1259f6)
Theorem hlt_MATRIX_INV_MUL_LINV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_inv N N (hl_matrix_mul M N N (hl_matrix_inv N M A) A) = hl_matrix_mul M N N (hl_matrix_inv N M A) A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9389 / MATRIX_INV_MUL_RINV   (hash md5:42e92afd9d3187bc5ccdc4bae490c910)
Theorem hlt_MATRIX_INV_MUL_RINV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_inv M M (hl_matrix_mul N M M A (hl_matrix_inv N M A)) = hl_matrix_mul N M M A (hl_matrix_inv N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9402 / infnorm   (hash md5:c7e0996e4bf81c4ecbea0eefa7ddc299)
Theorem hlt_infnorm_thm : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_infnorm N x = hl_sup (hl_GSPEC R (fun GEN_PVAR_2889 :e R => if exists i :e omega, hl_SETSPEC R GEN_PVAR_2889 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_real_abs (hl_vindex R N x i)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9405 / NUMSEG_DIMINDEX_NONEMPTY   (hash md5:6590140562c6911c2b80ef8cabeb56b6)
Theorem hlt_NUMSEG_DIMINDEX_NONEMPTY : forall N:set, N <> Empty -> exists i :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9409 / INFNORM_SET_IMAGE   (hash md5:0107b66a99e2bc3e201a5c3c5ae4dc84)
Theorem hlt_INFNORM_SET_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall x :e hl_ty_cart R A, hl_GSPEC R (fun GEN_PVAR_2890 :e R => if exists i :e omega, hl_SETSPEC R GEN_PVAR_2890 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_real_abs (hl_vindex R A x i)) = 1 then 1 else 0) = hl_IMAGE omega R (fun i :e omega => hl_real_abs (hl_vindex R A x i)) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))).
Admitted.

// HOL Light: Multivariate/vectors.ml:9414 / INFNORM_SET_LEMMA   (hash md5:acdd523de6df4d735d048d65cd3d37d6)
Theorem hlt_INFNORM_SET_LEMMA : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_2891 :e R => if exists i :e omega, hl_SETSPEC R GEN_PVAR_2891 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_real_abs (hl_vindex R N x i)) = 1 then 1 else 0)) = 1 /\ ~ hl_GSPEC R (fun GEN_PVAR_2892 :e R => if exists i :e omega, hl_SETSPEC R GEN_PVAR_2892 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_real_abs (hl_vindex R N x i)) = 1 then 1 else 0) = hl_EMPTY R.
Admitted.

// HOL Light: Multivariate/vectors.ml:9420 / INFNORM_POS_LE   (hash md5:8a7fb6c7fd7dfe7382d05db227fd328b)
Theorem hlt_INFNORM_POS_LE : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_infnorm A x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9427 / INFNORM_TRIANGLE   (hash md5:cf57ca1dfccdf2fc85bb35b3b794a83a)
Theorem hlt_INFNORM_TRIANGLE : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_real_le (hl_infnorm A (hl_vector_add A x y)) (hl_real_add (hl_infnorm A x) (hl_infnorm A y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9440 / INFNORM_EQ_0   (hash md5:ebc7521a5cc833c2e7b0698321b022fd)
Theorem hlt_INFNORM_EQ_0 : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_infnorm A x = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:9447 / INFNORM_0   (hash md5:4c482d4478d524729ae8cce4facfd822)
Theorem hlt_INFNORM_0 : forall A:set, A <> Empty -> hl_infnorm A (hl_vec A (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:9451 / INFNORM_NEG   (hash md5:bfa1a6aedbe9f29f8181549ded941a8b)
Theorem hlt_INFNORM_NEG : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_infnorm A (hl_vector_neg A x) = hl_infnorm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9457 / INFNORM_SUB   (hash md5:99a2c896c20f79b594ebb1e710e1e668)
Theorem hlt_INFNORM_SUB : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_infnorm A (hl_vector_sub A x y) = hl_infnorm A (hl_vector_sub A y x).
Admitted.

// HOL Light: Multivariate/vectors.ml:9461 / REAL_ABS_SUB_INFNORM   (hash md5:f4f7f41a25352ca1da8e01afc4469cc6)
Theorem hlt_REAL_ABS_SUB_INFNORM : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_real_le (hl_real_abs (hl_real_sub (hl_infnorm A x) (hl_infnorm A y))) (hl_infnorm A (hl_vector_sub A x y)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9467 / REAL_ABS_INFNORM   (hash md5:b443e7b5c51ffe49ffdfcb5e9ae471f2)
Theorem hlt_REAL_ABS_INFNORM : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_abs (hl_infnorm A x) = hl_infnorm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9471 / COMPONENT_LE_INFNORM   (hash md5:ecaa552d404821de6b7e7ce09c6de9c2)
Theorem hlt_COMPONENT_LE_INFNORM : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_abs (hl_vindex R N x i)) (hl_infnorm N x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9479 / INFNORM_MUL_LEMMA   (hash md5:4e0227abf64b0fc6b7a62f24eff57ee0)
Theorem hlt_INFNORM_MUL_LEMMA : forall A:set, A <> Empty -> forall a :e R, forall x :e hl_ty_cart R A, hl_real_le (hl_infnorm A (hl_vmul A a x)) (hl_real_mul (hl_real_abs a) (hl_infnorm A x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9487 / INFNORM_MUL   (hash md5:07b44a57d2615d1721777e257cba3ead)
Theorem hlt_INFNORM_MUL : forall N:set, N <> Empty -> forall a :e R, forall x :e hl_ty_cart R N, hl_infnorm N (hl_vmul N a x) = hl_real_mul (hl_real_abs a) (hl_infnorm N x).
Admitted.

// HOL Light: Multivariate/vectors.ml:9501 / INFNORM_POS_LT   (hash md5:f59914be7888c35613312261cd95504d)
Theorem hlt_INFNORM_POS_LT : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_infnorm A x) = 1 <-> ~ x = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:9509 / INFNORM_LE_NORM   (hash md5:ddc4b7434caefb4d9f43918554529669)
Theorem hlt_INFNORM_LE_NORM : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_real_le (hl_infnorm A x) (hl_vector_norm A x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9514 / NORM_LE_INFNORM   (hash md5:43d6c159e4c8ceebc5f677224d7bc299)
Theorem hlt_NORM_LE_INFNORM : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_real_le (hl_vector_norm N x) (hl_real_mul (hl_sqrt (hl_real_of_num (hl_dimindex N (hl_UNIV N)))) (hl_infnorm N x)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9533 / NORM_CAUCHY_SCHWARZ_EQ   (hash md5:3bff82863f16cc499950529dd66c5d7a)
Theorem hlt_NORM_CAUCHY_SCHWARZ_EQ : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_dot N x y = hl_real_mul (hl_vector_norm N x) (hl_vector_norm N y) <-> hl_vmul N (hl_vector_norm N x) y = hl_vmul N (hl_vector_norm N y) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9548 / NORM_CAUCHY_SCHWARZ_ABS_EQ   (hash md5:9c12e52436cb8ba82ae03dcecefa134f)
Theorem hlt_NORM_CAUCHY_SCHWARZ_ABS_EQ : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_real_abs (hl_dot N x y) = hl_real_mul (hl_vector_norm N x) (hl_vector_norm N y) <-> hl_vmul N (hl_vector_norm N x) y = hl_vmul N (hl_vector_norm N y) x \/ hl_vmul N (hl_vector_norm N x) y = hl_vmul N (hl_real_neg (hl_vector_norm N y)) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9558 / NORM_TRIANGLE_EQ   (hash md5:fc1b528cc7ec27910de90e761cd9bf02)
Theorem hlt_NORM_TRIANGLE_EQ : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_vector_norm N (hl_vector_add N x y) = hl_real_add (hl_vector_norm N x) (hl_vector_norm N y) <-> hl_vmul N (hl_vector_norm N x) y = hl_vmul N (hl_vector_norm N y) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9572 / DIST_TRIANGLE_EQ   (hash md5:5aa7c647d319aae78a0ce701aba82baf)
Theorem hlt_DIST_TRIANGLE_EQ : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x z) = hl_real_add (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y z)) <-> hl_vmul A (hl_vector_norm A (hl_vector_sub A x y)) (hl_vector_sub A y z) = hl_vmul A (hl_vector_norm A (hl_vector_sub A y z)) (hl_vector_sub A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:9577 / NORM_CROSS_MULTIPLY   (hash md5:763a3a700ad96bda6228905ff9fa6685)
Theorem hlt_NORM_CROSS_MULTIPLY : forall N:set, N <> Empty -> forall a b :e R, forall x y :e hl_ty_cart R N, hl_vmul N a x = hl_vmul N b y /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) b = 1) -> hl_vmul N (hl_vector_norm N y) x = hl_vmul N (hl_vector_norm N x) y.
Admitted.

// HOL Light: Multivariate/vectors.ml:9593 / collinear   (hash md5:3b68583dd98d2542712665ac41325217)
Theorem hlt_collinear_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_collinear A s = 1 <-> exists u :e hl_ty_cart R A, forall x y :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y s = 1 -> exists c :e R, hl_vector_sub A x y = hl_vmul A c u.
Admitted.

// HOL Light: Multivariate/vectors.ml:9596 / COLLINEAR_ALT2   (hash md5:52ff66c232cbcf0f7f48e382afd0392b)
Theorem hlt_COLLINEAR_ALT2 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_collinear N s = 1 <-> exists u v :e hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists c :e R, hl_vector_sub N x u = hl_vmul N c v.
Admitted.

// HOL Light: Multivariate/vectors.ml:9603 / COLLINEAR_ALT   (hash md5:e8689934988fd6ca4ef0596545b2b627)
Theorem hlt_COLLINEAR_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_collinear N s = 1 <-> exists u v :e hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists c :e R, x = hl_vector_add N u (hl_vmul N c v).
Admitted.

// HOL Light: Multivariate/vectors.ml:9608 / COLLINEAR_SUBSET   (hash md5:69dbdebdb757f1f332206b142b6d6ff0)
Theorem hlt_COLLINEAR_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_collinear A t = 1 /\ hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_collinear A s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9612 / COLLINEAR_EMPTY   (hash md5:6b124e2932d91d52e4566d74feaeb53c)
Theorem hlt_COLLINEAR_EMPTY : forall A:set, A <> Empty -> hl_collinear A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9616 / COLLINEAR_SING   (hash md5:ec588a4a414f2a1c0191eadf71bd2822)
Theorem hlt_COLLINEAR_SING : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_collinear A (hl_INSERT (hl_ty_cart R A) x (hl_EMPTY (hl_ty_cart R A))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9621 / COLLINEAR_2   (hash md5:34894a2fabbc28961cda70f39f46918c)
Theorem hlt_COLLINEAR_2 : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_EMPTY (hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9628 / COLLINEAR_SMALL   (hash md5:392ef41ca1a4df88876136601daa7c21)
Theorem hlt_COLLINEAR_SMALL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) s = 1 /\ hl_le (hl_CARD (hl_ty_cart R A) s) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> hl_collinear A s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9636 / COLLINEAR_3   (hash md5:f88deaa79753e6063382e55469b37872)
Theorem hlt_COLLINEAR_3 : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, hl_collinear A (hl_INSERT (hl_ty_cart R A) x (hl_INSERT (hl_ty_cart R A) y (hl_INSERT (hl_ty_cart R A) z (hl_EMPTY (hl_ty_cart R A))))) = 1 <-> hl_collinear A (hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R A) (hl_vector_sub A x y) (hl_INSERT (hl_ty_cart R A) (hl_vector_sub A z y) (hl_EMPTY (hl_ty_cart R A))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9646 / COLLINEAR_LEMMA   (hash md5:7a6d7d4d09a0066533de5643b004c0a6)
Theorem hlt_COLLINEAR_LEMMA : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> x = hl_vec N (hl_NUMERAL hl_zero) \/ (y = hl_vec N (hl_NUMERAL hl_zero) \/ exists c :e R, y = hl_vmul N c x).
Admitted.

// HOL Light: Multivariate/vectors.ml:9670 / COLLINEAR_LEMMA_ALT   (hash md5:e7b8ff4b1f6fd8d2069a098527d5c9b2)
Theorem hlt_COLLINEAR_LEMMA_ALT : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R A, hl_collinear A (hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R A) x (hl_INSERT (hl_ty_cart R A) y (hl_EMPTY (hl_ty_cart R A))))) = 1 <-> x = hl_vec A (hl_NUMERAL hl_zero) \/ exists c :e R, y = hl_vmul A c x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9674 / COLLINEAR_SPAN   (hash md5:df217bfbd198c0032bcd00432347a9a3)
Theorem hlt_COLLINEAR_SPAN : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> a = hl_vec N (hl_NUMERAL hl_zero) \/ hl_IN (hl_ty_cart R N) b (hl_span N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9678 / NORM_CAUCHY_SCHWARZ_EQUAL   (hash md5:6e69e4b769d6c269ce720565b3ebd4c2)
Theorem hlt_NORM_CAUCHY_SCHWARZ_EQUAL : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_real_abs (hl_dot N x y) = hl_real_mul (hl_vector_norm N x) (hl_vector_norm N y) <-> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9701 / DOT_CAUCHY_SCHWARZ_EQUAL   (hash md5:95db53bdbc40225146a6abc9a290512e)
Theorem hlt_DOT_CAUCHY_SCHWARZ_EQUAL : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_real_pow (hl_dot N x y) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_mul (hl_dot N x x) (hl_dot N y y) <-> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9711 / COLLINEAR_3_EXPAND   (hash md5:ed29397c7bff7668b1527c845dde2537)
Theorem hlt_COLLINEAR_3_EXPAND : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> a = c \/ exists u :e R, b = hl_vector_add N (hl_vmul N u a) (hl_vmul N (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) c).
Admitted.

// HOL Light: Multivariate/vectors.ml:9723 / COLLINEAR_TRIPLES   (hash md5:160100a53ba846cf03ee67aabd292867)
Theorem hlt_COLLINEAR_TRIPLES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, ~ a = b -> (hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b s)) = 1 <-> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))))) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:9751 / COLLINEAR_4_3   (hash md5:7af08e18a93ede209ee5b0e7bf3eb081)
Theorem hlt_COLLINEAR_4_3 : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, ~ a = b -> (hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_INSERT (hl_ty_cart R N) d (hl_EMPTY (hl_ty_cart R N)))))) = 1 <-> hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 /\ hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) d (hl_EMPTY (hl_ty_cart R N))))) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:9761 / COLLINEAR_3_TRANS   (hash md5:295d8df435174398b3fb260c198fcfd6)
Theorem hlt_COLLINEAR_3_TRANS : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 /\ (hl_collinear N (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_INSERT (hl_ty_cart R N) d (hl_EMPTY (hl_ty_cart R N))))) = 1 /\ ~ b = c) -> hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) d (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9769 / ORTHOGONAL_TO_ORTHOGONAL_2D   (hash md5:1958131b4c59f48317c7b332d5af6359)
Theorem hlt_ORTHOGONAL_TO_ORTHOGONAL_2D : forall x y z :e hl_ty_cart R (idx_n (2 * dimindex 1)), ~ x = hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL hl_zero) /\ (hl_orthogonal (idx_n (2 * dimindex 1)) x y = 1 /\ hl_orthogonal (idx_n (2 * dimindex 1)) x z = 1) -> hl_collinear (idx_n (2 * dimindex 1)) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_vec (idx_n (2 * dimindex 1)) (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) y (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) z (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9776 / COLLINEAR_3_2D   (hash md5:2f7231a682a6337bad6055f47be54849)
Theorem hlt_COLLINEAR_3_2D : forall x y z :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_collinear (idx_n (2 * dimindex 1)) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) x (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) y (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) z (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))))))) = 1 <-> hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) z (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) y (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) z (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:9783 / COLLINEAR_3_DOT_MULTIPLES   (hash md5:c8e595c5b6c450889b9b30c27b07e638)
Theorem hlt_COLLINEAR_3_DOT_MULTIPLES : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> hl_vmul N (hl_dot N (hl_vector_sub N b a) (hl_vector_sub N b a)) (hl_vector_sub N c a) = hl_vmul N (hl_dot N (hl_vector_sub N c a) (hl_vector_sub N b a)) (hl_vector_sub N b a).
Admitted.

// HOL Light: Multivariate/vectors.ml:9797 / ORTHOGONAL_AND_COLLINEAR   (hash md5:0d0a48e90a447b7c60208f187217feb1)
Theorem hlt_ORTHOGONAL_AND_COLLINEAR : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_orthogonal N x y = 1 /\ hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> x = hl_vec N (hl_NUMERAL hl_zero) \/ y = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:9813 / between   (hash md5:34bfe0fbb627d9d16c6fdecd27f23f68)
Theorem hlt_between_thm : forall A:set, A <> Empty -> forall a x b :e hl_ty_cart R A, hl_between A x (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = 1 <-> hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = hl_real_add (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a x)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9816 / BETWEEN_REFL   (hash md5:de5fc3219211dd2f60ec42f9243837f1)
Theorem hlt_BETWEEN_REFL : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_between A a (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = 1 /\ (hl_between A b (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = 1 /\ hl_between A a (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a a) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:9820 / BETWEEN_REFL_EQ   (hash md5:9bf6364f61b098147565c44c765f1203)
Theorem hlt_BETWEEN_REFL_EQ : forall A:set, A <> Empty -> forall a x :e hl_ty_cart R A, hl_between A x (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a a) = 1 <-> x = a.
Admitted.

// HOL Light: Multivariate/vectors.ml:9824 / BETWEEN_SYM   (hash md5:589f182b45847f0acf0a2cd12b223ff8)
Theorem hlt_BETWEEN_SYM : forall A:set, A <> Empty -> forall a b x :e hl_ty_cart R A, hl_between A x (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = 1 <-> hl_between A x (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b a) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9828 / BETWEEN_ANTISYM   (hash md5:82b153dc99aacda61f3c664ce5023f15)
Theorem hlt_BETWEEN_ANTISYM : forall A:set, A <> Empty -> forall a b c :e hl_ty_cart R A, hl_between A a (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b c) = 1 /\ hl_between A b (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a c) = 1 -> a = b.
Admitted.

// HOL Light: Multivariate/vectors.ml:9832 / BETWEEN_TRANS   (hash md5:8cf5754ceedbd9d1a1ebf9d0b0f3f391)
Theorem hlt_BETWEEN_TRANS : forall A:set, A <> Empty -> forall a b c d :e hl_ty_cart R A, hl_between A a (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b c) = 1 /\ hl_between A d (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a c) = 1 -> hl_between A d (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b c) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9836 / BETWEEN_TRANS_2   (hash md5:6df7e38786d408568a6a69b70c4c9e55)
Theorem hlt_BETWEEN_TRANS_2 : forall A:set, A <> Empty -> forall a b c d :e hl_ty_cart R A, hl_between A a (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b c) = 1 /\ hl_between A d (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = 1 -> hl_between A a (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) c d) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9840 / BETWEEN_TRANSLATION   (hash md5:d1482fbd607ef1908ebd4611d7ebe6eb)
Theorem hlt_BETWEEN_TRANSLATION : forall A:set, A <> Empty -> forall z a x y :e hl_ty_cart R A, hl_between A (hl_vector_add A a x) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_vector_add A a y) (hl_vector_add A a z)) = 1 <-> hl_between A x (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y z) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9844 / BETWEEN_NORM   (hash md5:5fe0bcdd62a9905806ec5c6b4cae3c57)
Theorem hlt_BETWEEN_NORM : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1 <-> hl_vmul N (hl_vector_norm N (hl_vector_sub N x a)) (hl_vector_sub N b x) = hl_vmul N (hl_vector_norm N (hl_vector_sub N b x)) (hl_vector_sub N x a).
Admitted.

// HOL Light: Multivariate/vectors.ml:9850 / BETWEEN_DOT   (hash md5:f842445ebb4217d984514f88586b1e6b)
Theorem hlt_BETWEEN_DOT : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1 <-> hl_dot N (hl_vector_sub N x a) (hl_vector_sub N b x) = hl_real_mul (hl_vector_norm N (hl_vector_sub N x a)) (hl_vector_norm N (hl_vector_sub N b x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9855 / BETWEEN_EXISTS_EXTENSION   (hash md5:b8887000172f78ff13c1f367912b736b)
Theorem hlt_BETWEEN_EXISTS_EXTENSION : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, hl_between N b (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x) = 1 /\ ~ b = a -> exists d :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ x = hl_vector_add N b (hl_vmul N d (hl_vector_sub N b a)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9865 / BETWEEN_IMP_COLLINEAR   (hash md5:89e66e844099a4be9da6c9094406b143)
Theorem hlt_BETWEEN_IMP_COLLINEAR : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9879 / BETWEEN_CMUL_LIFT   (hash md5:de406bab15a32c81201ed390cff38e09)
Theorem hlt_BETWEEN_CMUL_LIFT : forall N:set, N <> Empty -> forall a b c :e R, forall v :e hl_ty_cart R N, hl_between N (hl_vmul N c v) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vmul N a v) (hl_vmul N b v)) = 1 <-> v = hl_vec N (hl_NUMERAL hl_zero) \/ hl_between 1 (hl_lift c) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_lift a) (hl_lift b)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9887 / BETWEEN_1   (hash md5:7995280a0e759ec1c8a9b11928c9b517)
Theorem hlt_BETWEEN_1 : forall a b x :e hl_ty_cart R 1, hl_between 1 x (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) = 1 <-> hl_real_le (hl_drop a) (hl_drop x) = 1 /\ hl_real_le (hl_drop x) (hl_drop b) = 1 \/ hl_real_le (hl_drop b) (hl_drop x) = 1 /\ hl_real_le (hl_drop x) (hl_drop a) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9893 / COLLINEAR_BETWEEN_CASES   (hash md5:f8d5b358582e1daf7c3e53fa6b63869a)
Theorem hlt_COLLINEAR_BETWEEN_CASES : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> hl_between N a (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b c) = 1 \/ (hl_between N b (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c a) = 1 \/ hl_between N c (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:9907 / COLLINEAR_BETWEEN_CASES_2   (hash md5:659fc6248bae01726ecc5e5ed1d6e7f3)
Theorem hlt_COLLINEAR_BETWEEN_CASES_2 : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, hl_between N c (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1 /\ hl_between N d (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1 -> hl_between N d (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) = 1 \/ hl_between N d (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c b) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9927 / BETWEEN_RESTRICTED_CASES   (hash md5:be14934664e01fd01574d5c77535efe4)
Theorem hlt_BETWEEN_RESTRICTED_CASES : forall N:set, N <> Empty -> forall a b c x :e hl_ty_cart R N, hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1 /\ (hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) = 1 /\ ~ x = a) -> hl_between N b (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) = 1 \/ hl_between N c (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9946 / COLLINEAR_DIST_BETWEEN   (hash md5:20cc63585f35437b2b5e8585c7dd4f79)
Theorem hlt_COLLINEAR_DIST_BETWEEN : forall A:set, A <> Empty -> forall a b x :e hl_ty_cart R A, hl_collinear A (hl_INSERT (hl_ty_cart R A) x (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A))))) = 1 /\ (hl_real_le (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x a)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1 /\ hl_real_le (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x b)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) = 1) -> hl_between A x (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9952 / BETWEEN_COLLINEAR_DIST_EQ   (hash md5:7104e642931262f26a58dd431ae26b3c)
Theorem hlt_BETWEEN_COLLINEAR_DIST_EQ : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1 <-> hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1 /\ (hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x a)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 /\ hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x b)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:9962 / COLLINEAR_1   (hash md5:b9f14c99e2f2f34a4fbf8fac88bff734)
Theorem hlt_COLLINEAR_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_collinear 1 s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9977 / midpoint   (hash md5:a4a121f4a13252046442357e3611ea9d)
Theorem hlt_midpoint_thm : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = hl_vmul A (hl_real_inv (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vector_add A a b).
Admitted.

// HOL Light: Multivariate/vectors.ml:9980 / MIDPOINT_REFL   (hash md5:819e627fd24a67363e86c86c8189228e)
Theorem hlt_MIDPOINT_REFL : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9984 / MIDPOINT_SYM   (hash md5:54201251726ccd7c1deae228970f8baa)
Theorem hlt_MIDPOINT_SYM : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b a).
Admitted.

// HOL Light: Multivariate/vectors.ml:9988 / DIST_MIDPOINT   (hash md5:78fba7252964c7d88b571e98c563e72c)
Theorem hlt_DIST_MIDPOINT : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a (hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b))) = hl_real_div (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) /\ (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b (hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b))) = hl_real_div (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) /\ (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) a) = hl_real_div (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) /\ hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) b) = hl_real_div (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:9995 / MIDPOINT_EQ_ENDPOINT   (hash md5:f1505f083dafc7e3c0cb6daf331ae8fa)
Theorem hlt_MIDPOINT_EQ_ENDPOINT : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, (hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = a <-> a = b) /\ ((hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = b <-> a = b) /\ ((a = hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) <-> a = b) /\ (b = hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) <-> a = b))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10002 / BETWEEN_MIDPOINT   (hash md5:33f92dcaecb0032a10cd9786781f49ca)
Theorem hlt_BETWEEN_MIDPOINT : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_between A (hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = 1 /\ hl_between A (hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) b a) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10006 / MIDPOINT_LINEAR_IMAGE   (hash md5:9d630146df60b3b0ee6cd2ac767068f2)
Theorem hlt_MIDPOINT_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a b :e hl_ty_cart R B, hl_linear B A f = 1 -> hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (f a) (f b)) = f (hl_midpoint B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10010 / COLLINEAR_MIDPOINT   (hash md5:b32cf915c14b2399c3182e66da7ebf74)
Theorem hlt_COLLINEAR_MIDPOINT : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_collinear A (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) (hl_midpoint A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A))))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10015 / MIDPOINT_COLLINEAR   (hash md5:20b20c5bc3235b4a82daa65cd8ce1468)
Theorem hlt_MIDPOINT_COLLINEAR : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, ~ a = c -> (b = hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) <-> hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 /\ hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b c)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10032 / MIDPOINT_BETWEEN   (hash md5:f79abdccf2b405e57d41f45a93e59475)
Theorem hlt_MIDPOINT_BETWEEN : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, b = hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) <-> hl_between N b (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) = 1 /\ hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b c).
Admitted.

// HOL Light: Multivariate/vectors.ml:10040 / DROP_MIDPOINT   (hash md5:20411563b630a37b8e4beca3cdabb722)
Theorem hlt_DROP_MIDPOINT : forall x y :e hl_ty_cart R 1, hl_drop (hl_midpoint 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x y)) = hl_real_div (hl_real_add (hl_drop x) (hl_drop y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10048 / open_interval   (hash md5:80fe964b1856a421287ff491f4b358d8)
Theorem hlt_open_interval_thm : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2894 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2894 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N x i) = 1 /\ hl_real_lt (hl_vindex R N x i) (hl_vindex R N b i) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:10053 / closed_interval   (hash md5:d62ba556ec0014350fe4f705a152fede)
Theorem hlt_closed_interval_thm : forall N:set, N <> Empty -> forall l :e finseq (hl_ty_cart R N :*: hl_ty_cart R N), hl_closed_interval N l = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2895 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2895 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N (hl_FST (hl_ty_cart R N) (hl_ty_cart R N) (hl_HD (hl_ty_cart R N :*: hl_ty_cart R N) l)) i) (hl_vindex R N x i) = 1 /\ hl_real_le (hl_vindex R N x i) (hl_vindex R N (hl_SND (hl_ty_cart R N) (hl_ty_cart R N) (hl_HD (hl_ty_cart R N :*: hl_ty_cart R N) l)) i) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:10063 / interval   (hash md5:e294037cea246436ebb2a1867d76c5e7)
Theorem hlt_interval : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2896 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2896 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N x i) = 1 /\ hl_real_lt (hl_vindex R N x i) (hl_vindex R N b i) = 1 then 1 else 0) x = 1 then 1 else 0) /\ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2897 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2897 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N x i) = 1 /\ hl_real_le (hl_vindex R N x i) (hl_vindex R N b i) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:10070 / IN_INTERVAL   (hash md5:de1eb294bcdaab11402551fcec828424)
Theorem hlt_IN_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N x i) = 1 /\ hl_real_lt (hl_vindex R N x i) (hl_vindex R N b i) = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N x i) = 1 /\ hl_real_le (hl_vindex R N x i) (hl_vindex R N b i) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10081 / IN_INTERVAL_REFLECT   (hash md5:eed9bce620892db2d0f3a0d117477957)
Theorem hlt_IN_INTERVAL_REFLECT : forall A B:set, A <> Empty -> B <> Empty -> (forall a b x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) (hl_vector_neg A x) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_vector_neg A b) (hl_vector_neg A a)) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 <-> hl_IN (hl_ty_cart R A) x (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1) /\ forall a b x :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) (hl_vector_neg B x) (hl_open_interval B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) (hl_vector_neg B b) (hl_vector_neg B a))) = 1 <-> hl_IN (hl_ty_cart R B) x (hl_open_interval B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b)) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10087 / REFLECT_INTERVAL   (hash md5:83e5fbd5d964dd4927ce74faef32faeb)
Theorem hlt_REFLECT_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N b) (hl_vector_neg N a)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ forall a b :e hl_ty_cart R N, hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N b) (hl_vector_neg N a)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10093 / INTERVAL_EQ_EMPTY   (hash md5:f9a02a1674c396799fbb8032a217968e)
Theorem hlt_INTERVAL_EQ_EMPTY : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) <-> (exists i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_real_lt (hl_vindex R N b i) (hl_vindex R N a i) = 1))) /\ (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) <-> exists i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_real_le (hl_vindex R N b i) (hl_vindex R N a i) = 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10114 / INTERVAL_NE_EMPTY   (hash md5:279968c4c2426f1c6eea1fa8504e0036)
Theorem hlt_INTERVAL_NE_EMPTY : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, (~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) <-> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N b i) = 1)) /\ (~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N b i) = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:10121 / SUBSET_INTERVAL_IMP   (hash md5:b0ceacc390f078b4f258d61ef8d0f18f)
Theorem hlt_SUBSET_INTERVAL_IMP : forall N:set, N <> Empty -> forall a c d b :e hl_ty_cart R N, ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N c i) = 1 /\ hl_real_le (hl_vindex R N d i) (hl_vindex R N b i) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ (((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N c i) = 1 /\ hl_real_lt (hl_vindex R N d i) (hl_vindex R N b i) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1) /\ (((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N c i) = 1 /\ hl_real_le (hl_vindex R N d i) (hl_vindex R N b i) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N c i) = 1 /\ hl_real_le (hl_vindex R N d i) (hl_vindex R N b i) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10136 / INTERVAL_SING   (hash md5:26bb7cb4e3b574336020aaaac2ec4560)
Theorem hlt_INTERVAL_SING : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a a) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))) = hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A)) /\ hl_open_interval A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a a) = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/vectors.ml:10142 / SUBSET_INTERVAL   (hash md5:4aeb2ed36fe1ff1cb7cf8d448d37a674)
Theorem hlt_SUBSET_INTERVAL : forall N:set, N <> Empty -> forall c d a b :e hl_ty_cart R N, (hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N c i) (hl_vindex R N d i) = 1) -> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N c i) = 1 /\ hl_real_le (hl_vindex R N d i) (hl_vindex R N b i) = 1)) /\ ((hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N c i) (hl_vindex R N d i) = 1) -> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N c i) = 1 /\ hl_real_lt (hl_vindex R N d i) (hl_vindex R N b i) = 1)) /\ ((hl_SUBSET (hl_ty_cart R N) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N c i) (hl_vindex R N d i) = 1) -> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N c i) = 1 /\ hl_real_le (hl_vindex R N d i) (hl_vindex R N b i) = 1)) /\ (hl_SUBSET (hl_ty_cart R N) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N c i) (hl_vindex R N d i) = 1) -> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N c i) = 1 /\ hl_real_le (hl_vindex R N d i) (hl_vindex R N b i) = 1))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10192 / DISJOINT_INTERVAL   (hash md5:11e09ffb8a19770d4ca76980e36a5653)
Theorem hlt_DISJOINT_INTERVAL : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_EMPTY (hl_ty_cart R N) <-> (exists i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_real_lt (hl_vindex R N b i) (hl_vindex R N a i) = 1 \/ (hl_real_lt (hl_vindex R N d i) (hl_vindex R N c i) = 1 \/ (hl_real_lt (hl_vindex R N b i) (hl_vindex R N c i) = 1 \/ hl_real_lt (hl_vindex R N d i) (hl_vindex R N a i) = 1)))))) /\ ((hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = hl_EMPTY (hl_ty_cart R N) <-> (exists i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_real_lt (hl_vindex R N b i) (hl_vindex R N a i) = 1 \/ (hl_real_le (hl_vindex R N d i) (hl_vindex R N c i) = 1 \/ (hl_real_le (hl_vindex R N b i) (hl_vindex R N c i) = 1 \/ hl_real_le (hl_vindex R N d i) (hl_vindex R N a i) = 1)))))) /\ ((hl_INTER (hl_ty_cart R N) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_EMPTY (hl_ty_cart R N) <-> (exists i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_real_le (hl_vindex R N b i) (hl_vindex R N a i) = 1 \/ (hl_real_lt (hl_vindex R N d i) (hl_vindex R N c i) = 1 \/ (hl_real_le (hl_vindex R N b i) (hl_vindex R N c i) = 1 \/ hl_real_le (hl_vindex R N d i) (hl_vindex R N a i) = 1)))))) /\ (hl_INTER (hl_ty_cart R N) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = hl_EMPTY (hl_ty_cart R N) <-> exists i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_real_le (hl_vindex R N b i) (hl_vindex R N a i) = 1 \/ (hl_real_le (hl_vindex R N d i) (hl_vindex R N c i) = 1 \/ (hl_real_le (hl_vindex R N b i) (hl_vindex R N c i) = 1 \/ hl_real_le (hl_vindex R N d i) (hl_vindex R N a i) = 1))))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10221 / ENDS_IN_INTERVAL   (hash md5:0e22cfb78ad24d0dae82e1ad6883ad0d)
Theorem hlt_ENDS_IN_INTERVAL : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall a b :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) a (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 <-> ~ hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))) = hl_EMPTY (hl_ty_cart R A)) /\ ((forall a b :e hl_ty_cart R B, hl_IN (hl_ty_cart R B) b (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1 <-> ~ hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B))) = hl_EMPTY (hl_ty_cart R B)) /\ ((forall a b :e hl_ty_cart R C, ~ hl_IN (hl_ty_cart R C) a (hl_open_interval C (hl_pair (hl_ty_cart R C) (hl_ty_cart R C) a b)) = 1) /\ forall a b :e hl_ty_cart R D, ~ hl_IN (hl_ty_cart R D) b (hl_open_interval D (hl_pair (hl_ty_cart R D) (hl_ty_cart R D) a b)) = 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10230 / ENDS_IN_UNIT_INTERVAL   (hash md5:63339266d7da291cb03536eea85e1455)
Theorem hlt_ENDS_IN_UNIT_INTERVAL : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> hl_IN (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_vec A (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 /\ (hl_IN (hl_ty_cart R B) (hl_vec B (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) (hl_vec B (hl_NUMERAL hl_zero)) (hl_vec B (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1 /\ (~ hl_IN (hl_ty_cart R C) (hl_vec C (hl_NUMERAL hl_zero)) (hl_open_interval C (hl_pair (hl_ty_cart R C) (hl_ty_cart R C) (hl_vec C (hl_NUMERAL hl_zero)) (hl_vec C (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1 /\ ~ hl_IN (hl_ty_cart R D) (hl_vec D (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_open_interval D (hl_pair (hl_ty_cart R D) (hl_ty_cart R D) (hl_vec D (hl_NUMERAL hl_zero)) (hl_vec D (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10238 / INTER_INTERVAL   (hash md5:3ef83cab4e450d1460358a0153e848ba)
Theorem hlt_INTER_INTERVAL : forall A:set, A <> Empty -> forall a b c d :e hl_ty_cart R A, hl_INTER (hl_ty_cart R A) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) c d) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_lambda R A (fun i :e omega => hl_real_max (hl_vindex R A a i) (hl_vindex R A c i))) (hl_lambda R A (fun i :e omega => hl_real_min (hl_vindex R A b i) (hl_vindex R A d i)))) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10244 / INTERVAL_OPEN_SUBSET_CLOSED   (hash md5:e6e14a9a7bc59678cb408d958109a797)
Theorem hlt_INTERVAL_OPEN_SUBSET_CLOSED : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_open_interval A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10252 / WLOG_LINEAR_INJECTIVE_IMAGE_2   (hash md5:505ccfe1ea1b4d8e989e367c8ff04953)
Theorem hlt_WLOG_LINEAR_INJECTIVE_IMAGE_2 : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R M), forall Q :e 2 :^: (2 :^: hl_ty_cart R N), (forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, P s = 1 /\ hl_linear M N f = 1 -> Q (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1) /\ (forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R N, Q t = 1 /\ hl_linear N M g = 1 -> P (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g t) = 1) -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> forall s :e 2 :^: hl_ty_cart R M, Q (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> P s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10266 / WLOG_LINEAR_INJECTIVE_IMAGE_2_ALT   (hash md5:f5417d5e776e0ea65d88677c56fff0e6)
Theorem hlt_WLOG_LINEAR_INJECTIVE_IMAGE_2_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R A), forall Q :e 2 :^: (2 :^: hl_ty_cart R B), forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, (forall h :e hl_ty_cart R B :^: hl_ty_cart R A, forall u :e 2 :^: hl_ty_cart R A, P u = 1 /\ hl_linear A B h = 1 -> Q (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) h u) = 1) /\ ((forall g :e hl_ty_cart R A :^: hl_ty_cart R B, forall t :e 2 :^: hl_ty_cart R B, Q t = 1 /\ hl_linear B A g = 1 -> P (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) g t) = 1) /\ (hl_linear A B f = 1 /\ (forall x y :e hl_ty_cart R A, f x = f y -> x = y))) -> (Q (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f s) = 1 <-> P s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:10276 / WLOG_LINEAR_INJECTIVE_IMAGE   (hash md5:00c2ebda8c6fd0a35aed8578ed3e12ee)
Theorem hlt_WLOG_LINEAR_INJECTIVE_IMAGE : forall N:set, N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R N), (forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, P s = 1 /\ hl_linear N N f = 1 -> P (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1) -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) -> forall s :e 2 :^: hl_ty_cart R N, P (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1 <-> P s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10283 / WLOG_LINEAR_INJECTIVE_IMAGE_ALT   (hash md5:70fd02623c0bbea2b62fe18f8985b6dc)
Theorem hlt_WLOG_LINEAR_INJECTIVE_IMAGE_ALT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R A), forall f :e hl_ty_cart R A :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, (forall g :e hl_ty_cart R A :^: hl_ty_cart R A, forall t :e 2 :^: hl_ty_cart R A, P t = 1 /\ hl_linear A A g = 1 -> P (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) g t) = 1) /\ (hl_linear A A f = 1 /\ (forall x y :e hl_ty_cart R A, f x = f y -> x = y)) -> (P (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) f s) = 1 <-> P s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:10317 / SUBSPACE_LINEAR_IMAGE_EQ   (hash md5:7342dc84865fefe0b54710317cb7fb69)
Theorem hlt_SUBSPACE_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ (forall x y :e hl_ty_cart R B, f x = f y -> x = y) -> (hl_subspace A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1 <-> hl_subspace B s = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:10336 / COUNTABLE_UNION_OF_BIJECTIVE_IMAGE   (hash md5:a6027db7d408c81e919b17540ae06b4e)
Theorem hlt_COUNTABLE_UNION_OF_BIJECTIVE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall P :e 2 :^: (2 :^: A), forall P' :e 2 :^: (2 :^: B), (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B f s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B f s) = 1 <-> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10355 / COUNTABLE_INTERSECTION_OF_BIJECTIVE_IMAGE   (hash md5:31021da9ec85d4eb7fb836843246308f)
Theorem hlt_COUNTABLE_INTERSECTION_OF_BIJECTIVE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall P :e 2 :^: (2 :^: A), forall P' :e 2 :^: (2 :^: B), (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B f s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B f s) = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10378 / AFFINITY_SCALING_TRANSLATION   (hash md5:a33c821ca631b3abe031c187f5c17a34)
Theorem hlt_AFFINITY_SCALING_TRANSLATION : forall N:set, N <> Empty -> forall m :e R, forall c :e hl_ty_cart R N, (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) = hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N c x) (fun x :e hl_ty_cart R N => hl_vmul N m x).
Admitted.

// HOL Light: Multivariate/vectors.ml:10382 / LINEAR_SCALING   (hash md5:f18009a0d96e4727aed99a1dd1404d7f)
Theorem hlt_LINEAR_SCALING : forall N:set, N <> Empty -> forall c :e R, hl_linear N N (fun x :e hl_ty_cart R N => hl_vmul N c x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10386 / INJECTIVE_SCALING   (hash md5:00ec88bb15bfdba628dd5762b9135daf)
Theorem hlt_INJECTIVE_SCALING : forall N:set, N <> Empty -> forall c :e R, (forall x y :e hl_ty_cart R N, hl_vmul N c x = hl_vmul N c y -> x = y) <-> ~ c = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:10393 / SURJECTIVE_SCALING   (hash md5:dd2286718103fd2286a89b41857abe69)
Theorem hlt_SURJECTIVE_SCALING : forall N:set, N <> Empty -> forall c :e R, (forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R N, hl_vmul N c x = y) <-> ~ c = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/vectors.ml:10505 / SAME_NORM_SAME_DOT   (hash md5:3832c8f64e1e27444abe7f57d19bd5b5)
Theorem hlt_SAME_NORM_SAME_DOT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall x y :e hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_linear M P g = 1 /\ (forall x1 :e hl_ty_cart R M, hl_vector_norm N (f x1) = hl_vector_norm P (g x1))) -> hl_dot N (f x) (f y) = hl_dot P (g x) (g y).
Admitted.

// HOL Light: Multivariate/vectors.ml:10515 / PRESERVES_NORM_PRESERVES_DOT   (hash md5:e45375402d3af8eb74c18eb216bd70d0)
Theorem hlt_PRESERVES_NORM_PRESERVES_DOT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall x y :e hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x1 :e hl_ty_cart R M, hl_vector_norm N (f x1) = hl_vector_norm M x1) -> hl_dot N (f x) (f y) = hl_dot M x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:10524 / PRESEVES_NORM_PRESERVES_DIST   (hash md5:5363cd1b0a383fe25a7ad65006fce36e)
Theorem hlt_PRESEVES_NORM_PRESERVES_DIST : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_vector_norm M x) -> forall x y :e hl_ty_cart R M, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:10530 / PRESERVES_NORM_INJECTIVE   (hash md5:36de79efbbe962ecf916af3fa52b5502)
Theorem hlt_PRESERVES_NORM_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_vector_norm M x) -> forall x y :e hl_ty_cart R M, f x = f y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:10536 / ORTHOGONAL_LINEAR_IMAGE_EQ   (hash md5:f34519e0b695045b5974e625d7a09d01)
Theorem hlt_ORTHOGONAL_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall x y :e hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x1 :e hl_ty_cart R M, hl_vector_norm N (f x1) = hl_vector_norm M x1) -> (hl_orthogonal N (f x) (f y) = 1 <-> hl_orthogonal M x y = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:10542 / NORMAL_MATRIX_IFF_SAME_DOT_TRANSP   (hash md5:c582f59113b37299cb8da03ef7247574)
Theorem hlt_NORMAL_MATRIX_IFF_SAME_DOT_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_normal_matrix N A = 1 <-> forall x y :e hl_ty_cart R N, hl_dot N (hl_matrix_vector_mul N N (hl_transp N N A) x) (hl_matrix_vector_mul N N (hl_transp N N A) y) = hl_dot N (hl_matrix_vector_mul N N A x) (hl_matrix_vector_mul N N A y).
Admitted.

// HOL Light: Multivariate/vectors.ml:10542 / NORMAL_MATRIX_IFF_SAME_NORM_TRANSP   (hash md5:a4476e86424ef089426d2657017fc8e6)
Theorem hlt_NORMAL_MATRIX_IFF_SAME_NORM_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_normal_matrix N A = 1 <-> forall x :e hl_ty_cart R N, hl_vector_norm N (hl_matrix_vector_mul N N (hl_transp N N A) x) = hl_vector_norm N (hl_matrix_vector_mul N N A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:10566 / NORMAL_MATRIX_KERNEL_TRANSP_EXPLICIT   (hash md5:199377f807e5157b3e226d5bbc6b740a)
Theorem hlt_NORMAL_MATRIX_KERNEL_TRANSP_EXPLICIT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall x :e hl_ty_cart R N, hl_normal_matrix N A = 1 -> (hl_matrix_vector_mul N N (hl_transp N N A) x = hl_vec N (hl_NUMERAL hl_zero) <-> hl_matrix_vector_mul N N A x = hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10573 / NORMAL_MATRIX_KERNEL_TRANSP   (hash md5:1132a08bf9c2c7cfa497d036967f0f20)
Theorem hlt_NORMAL_MATRIX_KERNEL_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_normal_matrix N A = 1 -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2900 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2900 (if hl_matrix_vector_mul N N (hl_transp N N A) x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2901 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2901 (if hl_matrix_vector_mul N N A x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:10623 / MEM_TRANSLATION   (hash md5:dafa218920d78a45ccd5d419e86155fc)
Theorem hlt_MEM_TRANSLATION : forall N:set, N <> Empty -> forall a x :e hl_ty_cart R N, forall l :e finseq (hl_ty_cart R N), hl_MEM (hl_ty_cart R N) (hl_vector_add N a x) (hl_MAP (hl_ty_cart R N) (hl_ty_cart R N) (fun x1 :e hl_ty_cart R N => hl_vector_add N a x1) l) = 1 <-> hl_MEM (hl_ty_cart R N) x l = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:10630 / MEM_LINEAR_IMAGE   (hash md5:755cd1cc3d41c9f3d5192a65022ea996)
Theorem hlt_MEM_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, forall l :e finseq (hl_ty_cart R M), hl_linear M N f = 1 /\ (forall x1 y :e hl_ty_cart R M, f x1 = f y -> x1 = y) -> (hl_MEM (hl_ty_cart R N) (f x) (hl_MAP (hl_ty_cart R M) (hl_ty_cart R N) f l) = 1 <-> hl_MEM (hl_ty_cart R M) x l = 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:10741 / QUANTIFY_SURJECTION_THM   (hash md5:50f1881af5496e09df2db343d637e968)
Theorem hlt_QUANTIFY_SURJECTION_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) -> (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ (forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1))) /\ forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2902 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2902 (P x) x = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (P (f x)) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10754 / QUANTIFY_SURJECTION_HIGHER_THM   (hash md5:a84ead531e0f5e813872d9d51228d2fb)
Theorem hlt_QUANTIFY_SURJECTION_HIGHER_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) -> (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall P :e 2 :^: (B :^: hl_ty_cart R 1), (forall g :e B :^: hl_ty_cart R 1, P g = 1) <-> forall g :e A :^: hl_ty_cart R 1, P (hl_o A B (hl_ty_cart R 1) f g) = 1) /\ ((forall P :e 2 :^: (B :^: hl_ty_cart R 1), (exists g :e B :^: hl_ty_cart R 1, P g = 1) <-> exists g :e A :^: hl_ty_cart R 1, P (hl_o A B (hl_ty_cart R 1) f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B f l) = 1) /\ (forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B f l) = 1))))))))))) /\ ((forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (P x) x = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (P (f x)) x = 1 then 1 else 0))) /\ ((forall Q :e 2 :^: (2 :^: B), hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B f s)) s = 1 then 1 else 0))) /\ forall R1 :e 2 :^: finseq B, hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R1 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B f) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R1 (hl_MAP A B f l)) l = 1 then 1 else 0)))).
Admitted.

