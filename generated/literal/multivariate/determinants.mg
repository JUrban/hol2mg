// hol2mg literal statements (private): shard determinants of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/determinants.ml:18 / trace   (hash md5:95beb87bc610b9f60a9dcbe98a5601ac)
Theorem hlt_trace_thm : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_trace N A = hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) i).
Admitted.

// HOL Light: Multivariate/determinants.ml:21 / TRACE_0   (hash md5:b535a7aec682c77cb10cc39cccd14369)
Theorem hlt_TRACE_0 : forall A:set, A <> Empty -> hl_trace A (hl_mat A A (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:25 / TRACE_I   (hash md5:5d77dce5d15e6bc02ce077456ac4360b)
Theorem hlt_TRACE_I : forall N:set, N <> Empty -> hl_trace N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_real_of_num (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/determinants.ml:30 / TRACE_ADD   (hash md5:3769d30edaedebe30498897546a17d75)
Theorem hlt_TRACE_ADD : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_trace N (hl_matrix_add N N A B) = hl_real_add (hl_trace N A) (hl_trace N B).
Admitted.

// HOL Light: Multivariate/determinants.ml:34 / TRACE_SUB   (hash md5:174c946c30cfac17696d5943d9572fc2)
Theorem hlt_TRACE_SUB : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_trace N (hl_matrix_sub N N A B) = hl_real_sub (hl_trace N A) (hl_trace N B).
Admitted.

// HOL Light: Multivariate/determinants.ml:38 / TRACE_CMUL   (hash md5:50f89776dd1c01e2fdffcf7fbff97cb6)
Theorem hlt_TRACE_CMUL : forall N:set, N <> Empty -> forall c :e R, forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_trace N (hl_mcmul N N c A) = hl_real_mul c (hl_trace N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:42 / TRACE_NEG   (hash md5:567c2f159b0f527e55439c8f631c6d69)
Theorem hlt_TRACE_NEG : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_trace N (hl_matrix_neg N N A) = hl_real_neg (hl_trace N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:46 / TRACE_MUL_SYM   (hash md5:0fbbb19a58fe97e8c82d461b11c2061a)
Theorem hlt_TRACE_MUL_SYM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall B :e hl_ty_cart (hl_ty_cart R N) M, hl_trace N (hl_matrix_mul M N N A B) = hl_trace M (hl_matrix_mul N M M B A).
Admitted.

// HOL Light: Multivariate/determinants.ml:51 / TRACE_TRANSP   (hash md5:64af5ca45bdda5f954f01cc7cac87250)
Theorem hlt_TRACE_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_trace N (hl_transp N N A) = hl_trace N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:55 / TRACE_SIMILAR   (hash md5:358c5a87319681d822e8378c3e5c6661)
Theorem hlt_TRACE_SIMILAR : forall N:set, N <> Empty -> forall A U :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N U = 1 -> hl_trace N (hl_matrix_mul N N N (hl_matrix_inv N N U) (hl_matrix_mul N N N A U)) = hl_trace N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:61 / TRACE_MUL_CYCLIC   (hash md5:55fbe3218e1d41bb4265002cc60633b7)
Theorem hlt_TRACE_MUL_CYCLIC : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R P) M, forall B :e hl_ty_cart (hl_ty_cart R N) P, forall C :e hl_ty_cart (hl_ty_cart R M) N, hl_trace M (hl_matrix_mul P M M A (hl_matrix_mul N P M B C)) = hl_trace P (hl_matrix_mul N P P B (hl_matrix_mul M N P C A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:71 / det   (hash md5:5118abb88001723b9f346954e45591df)
Theorem hlt_det_thm : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_det N A = hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2910 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2910 (hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) p = 1 then 1 else 0)) (fun p :e omega :^: omega => hl_real_mul (hl_sign omega p) (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) (p i)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:80 / IN_DIMINDEX_SWAP   (hash md5:2f4129747a42a236c0613c27e2e28cfe)
Theorem hlt_IN_DIMINDEX_SWAP : forall N:set, N <> Empty -> forall m n j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)))) -> hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_swap omega (hl_pair omega omega m n) j) = 1 /\ hl_le (hl_swap omega (hl_pair omega omega m n) j) (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:87 / LAMBDA_BETA_PERM   (hash md5:0097751ddc7fafa7b66b545f574e9025)
Theorem hlt_LAMBDA_BETA_PERM : forall A N:set, A <> Empty -> N <> Empty -> forall g :e A :^: omega, forall p :e omega :^: omega, forall i :e omega, hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_vindex A N (hl_lambda A N g) (p i) = g (p i).
Admitted.

// HOL Light: Multivariate/determinants.ml:92 / PRODUCT_PERMUTE   (hash md5:9e9a31ddd26c046c8e00767f858cb98c)
Theorem hlt_PRODUCT_PERMUTE : forall A:set, A <> Empty -> forall f :e R :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> hl_product A s f = hl_product A s (hl_o A R A f p).
Admitted.

// HOL Light: Multivariate/determinants.ml:97 / PRODUCT_PERMUTE_NUMSEG   (hash md5:315f55d7150d230ef60ca4d73e9bb4fa)
Theorem hlt_PRODUCT_PERMUTE_NUMSEG : forall f :e R :^: omega, forall p :e omega :^: omega, forall m n :e omega, hl_permutes omega p (hl_numseg m n) = 1 -> hl_product omega (hl_numseg m n) f = hl_product omega (hl_numseg m n) (hl_o omega R omega f p).
Admitted.

// HOL Light: Multivariate/determinants.ml:101 / REAL_MUL_SUM   (hash md5:267d07fb6fea5d047948e3be6fa919ef)
Theorem hlt_REAL_MUL_SUM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e R :^: A, forall g :e R :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_real_mul (hl_sum A s f) (hl_sum B t g) = hl_sum A s (fun i :e A => hl_sum B t (fun j :e B => hl_real_mul (f i) (g j))).
Admitted.

// HOL Light: Multivariate/determinants.ml:108 / REAL_MUL_SUM_NUMSEG   (hash md5:bb76eed87051262a393b7d786f4b9ed7)
Theorem hlt_REAL_MUL_SUM_NUMSEG : forall f g :e R :^: omega, forall m n p q :e omega, hl_real_mul (hl_sum omega (hl_numseg m n) f) (hl_sum omega (hl_numseg p q) g) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (f i) (g j))).
Admitted.

// HOL Light: Multivariate/determinants.ml:117 / DET_CMUL   (hash md5:d0df7056a369f2e6567009e18803769b)
Theorem hlt_DET_CMUL : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall c :e R, hl_det N (hl_mcmul N N c A) = hl_real_mul (hl_real_pow c (hl_dimindex N (hl_UNIV N))) (hl_det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:124 / DET_NEG   (hash md5:a1192a9320faebe945a616c673077931)
Theorem hlt_DET_NEG : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_det N (hl_matrix_neg N N A) = hl_real_mul (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_dimindex N (hl_UNIV N))) (hl_det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:128 / DET_TRANSP   (hash md5:7595a4a087871d2a66182fec0d7d4355)
Theorem hlt_DET_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_det N (hl_transp N N A) = hl_det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:151 / DET_LOWERTRIANGULAR   (hash md5:f367824be7c1b2cfde3d99ca774b6269)
Theorem hlt_DET_LOWERTRIANGULAR : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_lt i j = 1))) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_det N A = hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) i).
Admitted.

// HOL Light: Multivariate/determinants.ml:168 / DET_UPPERTRIANGULAR   (hash md5:92834e890ab7165a8ebf977e82f6fa6c)
Theorem hlt_DET_UPPERTRIANGULAR : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_lt j i = 1))) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_det N A = hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) i).
Admitted.

// HOL Light: Multivariate/determinants.ml:185 / DET_I   (hash md5:360af76b600dc73a7c44140b7d0c408a)
Theorem hlt_DET_I : forall N:set, N <> Empty -> hl_det N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:194 / DET_0   (hash md5:b1dcff80abf77feb7b0022e25ec4f4d6)
Theorem hlt_DET_0 : forall N:set, N <> Empty -> hl_det N (hl_mat N N (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:203 / DET_PERMUTE_ROWS   (hash md5:b6bce0c77836f7ffed1c0386ae745f9e)
Theorem hlt_DET_PERMUTE_ROWS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall p :e omega :^: omega, hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_vindex (hl_ty_cart R N) N A (p i))) = hl_real_mul (hl_sign omega p) (hl_det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:224 / DET_PERMUTE_COLUMNS   (hash md5:628ecd722ad3b75e49eee575adfacb05)
Theorem hlt_DET_PERMUTE_COLUMNS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall p :e omega :^: omega, hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) (p j)))) = hl_real_mul (hl_sign omega p) (hl_det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:235 / DET_IDENTICAL_ROWS   (hash md5:d4b041c80a73a6cc4d915f8f13bcf7d8)
Theorem hlt_DET_IDENTICAL_ROWS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ (~ i = j /\ hl_row N N i A = hl_row N N j A)))) -> hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:248 / DET_IDENTICAL_COLUMNS   (hash md5:e4058465338756ae5af08a6b6158eabb)
Theorem hlt_DET_IDENTICAL_COLUMNS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ (~ i = j /\ hl_column N N i A = hl_column N N j A)))) -> hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:256 / DET_ZERO_ROW   (hash md5:3fc3c3e2f3871424fb1857656d0a4ca8)
Theorem hlt_DET_ZERO_ROW : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_row N N i A = hl_vec N (hl_NUMERAL hl_zero)) -> hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:265 / DET_ZERO_COLUMN   (hash md5:4f25ddd952a0fbe2c63d6d678db4ceb9)
Theorem hlt_DET_ZERO_COLUMN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_column N N i A = hl_vec N (hl_NUMERAL hl_zero)) -> hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:271 / DET_ROW_ADD   (hash md5:319683817cc8ca687d253b9948bef456)
Theorem hlt_DET_ROW_ADD : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall c :e hl_ty_cart R N :^: omega, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (if i = k then 1 else 0) (hl_vector_add N a b) (c i))) = hl_real_add (hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (if i = k then 1 else 0) a (c i)))) (hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (if i = k then 1 else 0) b (c i)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:292 / DET_ROW_MUL   (hash md5:087524ccc58d2a466a8503d1f5fc4950)
Theorem hlt_DET_ROW_MUL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e hl_ty_cart R N :^: omega, forall c :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (if i = k then 1 else 0) (hl_vmul N c a) (b i))) = hl_real_mul c (hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (if i = k then 1 else 0) a (b i)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:310 / DET_ROW_OPERATION   (hash md5:8170ef2d777096c241667170f5478cca)
Theorem hlt_DET_ROW_OPERATION : forall N:set, N <> Empty -> forall j :e omega, forall c :e R, forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ i = j))) -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_COND (hl_ty_cart R N) (if k = i then 1 else 0) (hl_vector_add N (hl_row N N i A) (hl_vmul N c (hl_row N N j A))) (hl_row N N k A))) = hl_det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:326 / DET_ROW_SPAN   (hash md5:684e39f302298040627957663411c1c6)
Theorem hlt_DET_ROW_SPAN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, forall x :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_span N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2911 :e hl_ty_cart R N => if exists j :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2911 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ j = i) then 1 else 0) (hl_row N N j A) = 1 then 1 else 0))) = 1) -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_COND (hl_ty_cart R N) (if k = i then 1 else 0) (hl_vector_add N (hl_row N N i A) x) (hl_row N N k A))) = hl_det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:354 / DET_DEPENDENT_ROWS   (hash md5:bc9062af974c04bac1545a060719979f)
Theorem hlt_DET_DEPENDENT_ROWS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_dependent N (hl_rows N N A) = 1 -> hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:379 / DET_DEPENDENT_COLUMNS   (hash md5:ea6e71d464e5caf7b407f78fb349b6d3)
Theorem hlt_DET_DEPENDENT_COLUMNS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_dependent N (hl_columns N N A) = 1 -> hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:387 / DET_LINEAR_ROW_VSUM   (hash md5:0b5db79518c08a0eaf64bdb196a945d7)
Theorem hlt_DET_LINEAR_ROW_VSUM : forall A N:set, A <> Empty -> N <> Empty -> forall a :e hl_ty_cart R N :^: A, forall c :e hl_ty_cart R N :^: omega, forall s :e 2 :^: A, forall k :e omega, hl_FINITE A s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (if i = k then 1 else 0) (hl_vsum A N s a) (c i))) = hl_sum A s (fun j :e A => hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (if i = k then 1 else 0) (a j) (c i)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:400 / BOUNDED_FUNCTIONS_BIJECTIONS_1   (hash md5:75398a085b7305eb3a22b9b1e8b9107a)
Theorem hlt_BOUNDED_FUNCTIONS_BIJECTIONS_1 : forall s :e 2 :^: omega, forall k :e omega, forall p :e omega :*: omega :^: omega, hl_IN (omega :*: omega :^: omega) p (hl_GSPEC (omega :*: omega :^: omega) (fun GEN_PVAR_2913 :e omega :*: omega :^: omega => if exists y :e omega, exists g :e omega :^: omega, hl_SETSPEC (omega :*: omega :^: omega) GEN_PVAR_2913 (if hl_IN omega y s = 1 /\ hl_IN (omega :^: omega) g (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2912 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2912 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1 then 1 else 0) (hl_pair omega (omega :^: omega) y g) = 1 then 1 else 0)) = 1 -> hl_IN (omega :^: omega) (hl_GABS (omega :^: omega :^: (omega :*: omega :^: omega)) (fun f :e omega :^: omega :^: (omega :*: omega :^: omega) => if forall y :e omega, forall g :e omega :^: omega, hl_GEQ (omega :^: omega) (f (hl_pair omega (omega :^: omega) y g)) (fun i :e omega => hl_COND omega (if i = hl_SUC k then 1 else 0) y (g i)) = 1 then 1 else 0) p) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2914 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2914 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_SUC k) = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_SUC k) = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1 /\ (fun h :e omega :^: omega => hl_pair omega (omega :^: omega) (h (hl_SUC k)) (fun i :e omega => hl_COND omega (if i = hl_SUC k then 1 else 0) i (h i))) (hl_GABS (omega :^: omega :^: (omega :*: omega :^: omega)) (fun f :e omega :^: omega :^: (omega :*: omega :^: omega) => if forall y :e omega, forall g :e omega :^: omega, hl_GEQ (omega :^: omega) (f (hl_pair omega (omega :^: omega) y g)) (fun i :e omega => hl_COND omega (if i = hl_SUC k then 1 else 0) y (g i)) = 1 then 1 else 0) p) = p.
Admitted.

// HOL Light: Multivariate/determinants.ml:417 / BOUNDED_FUNCTIONS_BIJECTIONS_2   (hash md5:dfa989f13f74d623760d71ca2d892a25)
Theorem hlt_BOUNDED_FUNCTIONS_BIJECTIONS_2 : forall k :e omega, forall s :e 2 :^: omega, forall h :e omega :^: omega, hl_IN (omega :^: omega) h (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2915 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2915 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_SUC k) = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_SUC k) = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1 -> hl_IN (omega :*: omega :^: omega) ((fun h1 :e omega :^: omega => hl_pair omega (omega :^: omega) (h1 (hl_SUC k)) (fun i :e omega => hl_COND omega (if i = hl_SUC k then 1 else 0) i (h1 i))) h) (hl_GSPEC (omega :*: omega :^: omega) (fun GEN_PVAR_2917 :e omega :*: omega :^: omega => if exists y :e omega, exists g :e omega :^: omega, hl_SETSPEC (omega :*: omega :^: omega) GEN_PVAR_2917 (if hl_IN omega y s = 1 /\ hl_IN (omega :^: omega) g (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2916 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2916 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1 then 1 else 0) (hl_pair omega (omega :^: omega) y g) = 1 then 1 else 0)) = 1 /\ hl_GABS (omega :^: omega :^: (omega :*: omega :^: omega)) (fun f :e omega :^: omega :^: (omega :*: omega :^: omega) => if forall y :e omega, forall g :e omega :^: omega, hl_GEQ (omega :^: omega) (f (hl_pair omega (omega :^: omega) y g)) (fun i :e omega => hl_COND omega (if i = hl_SUC k then 1 else 0) y (g i)) = 1 then 1 else 0) ((fun h1 :e omega :^: omega => hl_pair omega (omega :^: omega) (h1 (hl_SUC k)) (fun i :e omega => hl_COND omega (if i = hl_SUC k then 1 else 0) i (h1 i))) h) = h.
Admitted.

// HOL Light: Multivariate/determinants.ml:434 / FINITE_BOUNDED_FUNCTIONS   (hash md5:e053e105b4e00f0de6f2a7c826cff3ba)
Theorem hlt_FINITE_BOUNDED_FUNCTIONS : forall s :e 2 :^: omega, forall k :e omega, hl_FINITE omega s = 1 -> hl_FINITE (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:457 / DET_LINEAR_ROWS_VSUM_LEMMA   (hash md5:782b0eff67d5e429d78ba2959054fd65)
Theorem hlt_DET_LINEAR_ROWS_VSUM_LEMMA : forall N:set, N <> Empty -> forall s :e 2 :^: omega, forall k :e omega, forall a :e hl_ty_cart R N :^: omega :^: omega, forall c :e hl_ty_cart R N :^: omega, hl_FINITE omega s = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (hl_le i k) (hl_vsum omega N s (a i)) (c i))) = hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2921 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2921 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) (fun f :e omega :^: omega => hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (hl_le i k) (a i (f i)) (c i)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:503 / DET_LINEAR_ROWS_VSUM   (hash md5:fe9db8607dd8c74f7cb49da9eec5edb9)
Theorem hlt_DET_LINEAR_ROWS_VSUM : forall N:set, N <> Empty -> forall s :e 2 :^: omega, forall a :e hl_ty_cart R N :^: omega :^: omega, hl_FINITE omega s = 1 -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_vsum omega N s (a i))) = hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2922 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2922 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) (fun f :e omega :^: omega => hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => a i (f i)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:518 / MATRIX_MUL_VSUM_ALT   (hash md5:52dcd3d460b0d6a7c342cc900d4bb09f)
Theorem hlt_MATRIX_MUL_VSUM_ALT : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A B = hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun k :e omega => hl_vmul N (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) k) (hl_vindex (hl_ty_cart R N) N B k))).
Admitted.

// HOL Light: Multivariate/determinants.ml:524 / DET_ROWS_MUL   (hash md5:12f18b31a19bc28bfb3096d7388d158f)
Theorem hlt_DET_ROWS_MUL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N :^: omega, forall c :e R :^: omega, hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_vmul N (c i) (a i))) = hl_real_mul (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => c i)) (hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => a i))).
Admitted.

// HOL Light: Multivariate/determinants.ml:537 / DET_MUL   (hash md5:f2238025249052b9c9b5709ebf4475d9)
Theorem hlt_DET_MUL : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_det N (hl_matrix_mul N N N A B) = hl_real_mul (hl_det N A) (hl_det N B).
Admitted.

// HOL Light: Multivariate/determinants.ml:598 / DET_LINEAR_ROWS   (hash md5:734c6eefbdd167e6519b9563c1e56306)
Theorem hlt_DET_LINEAR_ROWS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_linear N N f = 1 -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => f (hl_vindex (hl_ty_cart R N) N A i))) = hl_real_mul (hl_det N (hl_matrix N N f)) (hl_det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:613 / INVERTIBLE_DET_NZ   (hash md5:7f7d8752323b7d050185478ec29f56ea)
Theorem hlt_INVERTIBLE_DET_NZ : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N A = 1 <-> ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:648 / DET_EQ_0   (hash md5:df27351a13cb6d1ec19141d7f00ec08f)
Theorem hlt_DET_EQ_0 : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) <-> ~ hl_invertible N N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:652 / DET_MATRIX_INV   (hash md5:265268557a9c03b65b577576781bd799)
Theorem hlt_DET_MATRIX_INV : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_det N (hl_matrix_inv N N A) = hl_real_inv (hl_det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:659 / MATRIX_MUL_LINV   (hash md5:08228f5de0f6a32ed5a82663a6d07250)
Theorem hlt_MATRIX_MUL_LINV : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_matrix_mul N N N (hl_matrix_inv N N A) A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:663 / MATRIX_MUL_RINV   (hash md5:4dd657275c0004420ad7d56927738264)
Theorem hlt_MATRIX_MUL_RINV : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_matrix_mul N N N A (hl_matrix_inv N N A) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:667 / DET_MATRIX_EQ_0   (hash md5:c81a279475e60c133287ad6d441d75fb)
Theorem hlt_DET_MATRIX_EQ_0 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> (hl_det N (hl_matrix N N f) = hl_real_of_num (hl_NUMERAL hl_zero) <-> ~ exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N g = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f = hl_I (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/determinants.ml:674 / DET_MATRIX_EQ_0_LEFT   (hash md5:a1a9ea1b8605aa730693183c532a515a)
Theorem hlt_DET_MATRIX_EQ_0_LEFT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> (hl_det N (hl_matrix N N f) = hl_real_of_num (hl_NUMERAL hl_zero) <-> ~ exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/determinants.ml:681 / DET_MATRIX_EQ_0_RIGHT   (hash md5:747893b34f14f88d7e39ad912337e25f)
Theorem hlt_DET_MATRIX_EQ_0_RIGHT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> (hl_det N (hl_matrix N N f) = hl_real_of_num (hl_NUMERAL hl_zero) <-> ~ exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N g = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/determinants.ml:688 / DET_EQ_0_RANK   (hash md5:0e6a6d94e115c8fe95218af39912b391)
Theorem hlt_DET_EQ_0_RANK : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) <-> hl_lt (hl_rank N N A) (hl_dimindex N (hl_UNIV N)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:695 / RANK_EQ_FULL_DET   (hash md5:c08d130729024f6e460ddefe6f714a37)
Theorem hlt_RANK_EQ_FULL_DET : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_rank N N A = hl_dimindex N (hl_UNIV N) <-> ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:700 / INVERTIBLE_COVARIANCE_RANK   (hash md5:3536841a5b7b59af4f7bfeb6f3df7760)
Theorem hlt_INVERTIBLE_COVARIANCE_RANK : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_invertible N N (hl_matrix_mul M N N (hl_transp N M A) A) = 1 <-> hl_rank N M A = hl_dimindex N (hl_UNIV N).
Admitted.

// HOL Light: Multivariate/determinants.ml:704 / HOMOGENEOUS_LINEAR_EQUATIONS_DET   (hash md5:a27c0d6b41b1c67de7d11700241e8054)
Theorem hlt_HOMOGENEOUS_LINEAR_EQUATIONS_DET : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, (exists x :e hl_ty_cart R N, ~ x = hl_vec N (hl_NUMERAL hl_zero) /\ hl_matrix_vector_mul N N A x = hl_vec N (hl_NUMERAL hl_zero)) <-> hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:711 / INVERTIBLE_MATRIX_MUL   (hash md5:e0f4cb0b492c0d63a0ded0fbf2dc9353)
Theorem hlt_INVERTIBLE_MATRIX_MUL : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N (hl_matrix_mul N N N A B) = 1 <-> hl_invertible N N A = 1 /\ hl_invertible N N B = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:716 / MATRIX_INV_MUL   (hash md5:f16c2a19361ce7179a78a55cce64e9e5)
Theorem hlt_MATRIX_INV_MUL : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N A = 1 /\ hl_invertible N N B = 1 -> hl_matrix_inv N N (hl_matrix_mul N N N A B) = hl_matrix_mul N N N (hl_matrix_inv N N B) (hl_matrix_inv N N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:726 / DET_SIMILAR   (hash md5:c835a9ec69ed80dfb478e23d4ccf59bf)
Theorem hlt_DET_SIMILAR : forall N:set, N <> Empty -> forall S A :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N S = 1 -> hl_det N (hl_matrix_mul N N N (hl_matrix_inv N N S) (hl_matrix_mul N N N A S)) = hl_det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:731 / INVERTIBLE_NEARBY_ONORM   (hash md5:41ace0d077194695069b034127f06141)
Theorem hlt_INVERTIBLE_NEARBY_ONORM : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N A = 1 /\ hl_real_lt (hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N (hl_matrix_sub N N B A) x)) (hl_real_inv (hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N (hl_matrix_inv N N A) x))) = 1 -> hl_invertible N N B = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:774 / INVERTIBLE_NEARBY   (hash md5:2189a13071b0ff280a35b48f857f1b7a)
Theorem hlt_INVERTIBLE_NEARBY : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N A = 1 -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall B :e hl_ty_cart (hl_ty_cart R N) N, hl_real_lt (hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N (hl_matrix_sub N N B A) x)) e1 = 1 -> hl_invertible N N B = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:789 / CRAMER_LEMMA_TRANSP   (hash md5:484f521310691b180ea2fa61752a3066)
Theorem hlt_CRAMER_LEMMA_TRANSP : forall N:set, N <> Empty -> forall k :e omega, forall A :e hl_ty_cart (hl_ty_cart R N) N, forall x :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (if i = k then 1 else 0) (hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i1 :e omega => hl_vmul N (hl_vindex R N x i1) (hl_row N N i1 A))) (hl_row N N i A))) = hl_real_mul (hl_vindex R N x k) (hl_det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:816 / CRAMER_LEMMA   (hash md5:08987fcf7921024009fe7868d30f0ac2)
Theorem hlt_CRAMER_LEMMA : forall N:set, N <> Empty -> forall k :e omega, forall A :e hl_ty_cart (hl_ty_cart R N) N, forall x :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if j = k then 1 else 0) (hl_vindex R N (hl_matrix_vector_mul N N A x) i) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j)))) = hl_real_mul (hl_vindex R N x k) (hl_det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:829 / CRAMER   (hash md5:1b758ecb1f19d9266f1051b70c996820)
Theorem hlt_CRAMER : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall x b :e hl_ty_cart R N, ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) -> (hl_matrix_vector_mul N N A x = b <-> x = hl_lambda R N (fun k :e omega => hl_real_div (hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if j = k then 1 else 0) (hl_vindex R N b i) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j))))) (hl_det N A))).
Admitted.

// HOL Light: Multivariate/determinants.ml:850 / CRAMER_MATRIX_LEFT   (hash md5:941d9feedc4d5784621003a2b51c07c2)
Theorem hlt_CRAMER_MATRIX_LEFT : forall N:set, N <> Empty -> forall A X B :e hl_ty_cart (hl_ty_cart R N) N, ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) -> (hl_matrix_mul N N N X A = B <-> X = hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_lambda R N (fun l :e omega => hl_real_div (hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if j = l then 1 else 0) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N B k) i) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A j) i))))) (hl_det N A)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:864 / CRAMER_MATRIX_RIGHT   (hash md5:4ddff8fa5ac19efd5c04090f14743e52)
Theorem hlt_CRAMER_MATRIX_RIGHT : forall N:set, N <> Empty -> forall A X B :e hl_ty_cart (hl_ty_cart R N) N, ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) -> (hl_matrix_mul N N N A X = B <-> X = hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_lambda R N (fun l :e omega => hl_real_div (hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if j = k then 1 else 0) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N B i) l) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j))))) (hl_det N A)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:882 / CRAMER_MATRIX_RIGHT_INVERSE   (hash md5:a708d736f239e1ffff2901ae29955868)
Theorem hlt_CRAMER_MATRIX_RIGHT_INVERSE : forall N:set, N <> Empty -> forall A A' :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A A' = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) <-> ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) /\ A' = hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_lambda R N (fun l :e omega => hl_real_div (hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if j = k then 1 else 0) (hl_COND R (if i = l then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j))))) (hl_det N A))).
Admitted.

// HOL Light: Multivariate/determinants.ml:900 / CRAMER_MATRIX_LEFT_INVERSE   (hash md5:c7569352f665aa167d59639029010206)
Theorem hlt_CRAMER_MATRIX_LEFT_INVERSE : forall N:set, N <> Empty -> forall A A' :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A' A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) <-> ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) /\ A' = hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_lambda R N (fun l :e omega => hl_real_div (hl_det N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if j = l then 1 else 0) (hl_COND R (if i = k then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A j) i))))) (hl_det N A))).
Admitted.

// HOL Light: Multivariate/determinants.ml:922 / cofactor   (hash md5:c5e3d509fd478f1a231a22721db068e6)
Theorem hlt_cofactor_thm : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_cofactor N A = hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_det N (hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_lambda R N (fun l :e omega => hl_COND R (if k = i /\ l = j then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_COND R (if k = i \/ l = j then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A k) l))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:928 / COFACTOR_TRANSP   (hash md5:373d6bca66621edf49f13905effecb43)
Theorem hlt_COFACTOR_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_cofactor N (hl_transp N N A) = hl_transp N N (hl_cofactor N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:935 / COFACTOR_COLUMN   (hash md5:b8dd381957132c1fd75935850256ee85)
Theorem hlt_COFACTOR_COLUMN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_cofactor N A = hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_det N (hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_lambda R N (fun l :e omega => hl_COND R (if l = j then 1 else 0) (hl_COND R (if k = i then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A k) l)))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:967 / COFACTOR_ROW   (hash md5:74556cf9b43c194cdb1dbceffab49674)
Theorem hlt_COFACTOR_ROW : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_cofactor N A = hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_det N (hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_lambda R N (fun l :e omega => hl_COND R (if k = i then 1 else 0) (hl_COND R (if l = j then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A k) l)))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:979 / MATRIX_RIGHT_INVERSE_COFACTOR   (hash md5:2102e21ee38152634c05900155fb3862)
Theorem hlt_MATRIX_RIGHT_INVERSE_COFACTOR : forall N:set, N <> Empty -> forall A A' :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A A' = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) <-> ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) /\ A' = hl_mcmul N N (hl_real_inv (hl_det N A)) (hl_transp N N (hl_cofactor N A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:992 / MATRIX_LEFT_INVERSE_COFACTOR   (hash md5:377af2e0dffc4fe33c11031c255f2f64)
Theorem hlt_MATRIX_LEFT_INVERSE_COFACTOR : forall N:set, N <> Empty -> forall A A' :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A' A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) <-> ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) /\ A' = hl_mcmul N N (hl_real_inv (hl_det N A)) (hl_transp N N (hl_cofactor N A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1000 / MATRIX_INV_COFACTOR   (hash md5:a130feb11e705ded69c1a7af3acb4ba6)
Theorem hlt_MATRIX_INV_COFACTOR : forall A:set, A <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) A, ~ hl_det A A1 = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_matrix_inv A A A1 = hl_mcmul A A (hl_real_inv (hl_det A A1)) (hl_transp A A (hl_cofactor A A1)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1005 / COFACTOR_MATRIX_INV   (hash md5:91ac1cb5bd6e61d81cf4cef979a969a1)
Theorem hlt_COFACTOR_MATRIX_INV : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, ~ hl_det N A = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_cofactor N A = hl_mcmul N N (hl_det N A) (hl_transp N N (hl_matrix_inv N N A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1010 / COFACTOR_I   (hash md5:cf20c5e5c725f6d0fcbdfdf858ce38cf)
Theorem hlt_COFACTOR_I : forall N:set, N <> Empty -> hl_cofactor N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1015 / DET_COFACTOR_EXPANSION   (hash md5:2ca7fde44273e0e6b286245489d301b3)
Theorem hlt_DET_COFACTOR_EXPANSION : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_det N A = hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun j :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N (hl_cofactor N A) i) j)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1067 / MATRIX_MUL_RIGHT_COFACTOR   (hash md5:4659adf64e9c8b9e4885c5fac63ee042)
Theorem hlt_MATRIX_MUL_RIGHT_COFACTOR : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N A (hl_transp N N (hl_cofactor N A)) = hl_mcmul N N (hl_det N A) (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1092 / MATRIX_MUL_LEFT_COFACTOR   (hash md5:2ad676ca6ed773272486df5a76ebaab8)
Theorem hlt_MATRIX_MUL_LEFT_COFACTOR : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N (hl_transp N N (hl_cofactor N A)) A = hl_mcmul N N (hl_det N A) (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1100 / COFACTOR_CMUL   (hash md5:2600017ee765d924b984c9a82c8c22fb)
Theorem hlt_COFACTOR_CMUL : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall c :e R, hl_cofactor N (hl_mcmul N N c A) = hl_mcmul N N (hl_real_pow c (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_cofactor N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:1138 / COFACTOR_0   (hash md5:85be7f6596b4c1ac82cf8c86046e3604)
Theorem hlt_COFACTOR_0 : forall N:set, N <> Empty -> hl_cofactor N (hl_mat N N (hl_NUMERAL hl_zero)) = hl_COND (hl_ty_cart (hl_ty_cart R N) N) (if hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_mat N N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1150 / PRODUCT_1   (hash md5:579d5eab90aed034ee184cbdf720adfa)
Theorem hlt_PRODUCT_1 : forall f :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) f = f (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1154 / PRODUCT_2   (hash md5:302d57501c93afd6ef94ad6bd749b91e)
Theorem hlt_PRODUCT_2 : forall t :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1159 / PRODUCT_3   (hash md5:fd0b198a2430f4456458fb2898dc5b51)
Theorem hlt_PRODUCT_3 : forall t :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1164 / PRODUCT_4   (hash md5:ee47976e20286d0eb0f055c730fd2e2c)
Theorem hlt_PRODUCT_4 : forall t :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1170 / DET_1_GEN   (hash md5:6efed454c14a3e933f676b97e550156f)
Theorem hlt_DET_1_GEN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> hl_det N A = hl_vindex R N (hl_vindex (hl_ty_cart R N) N A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1177 / DET_1   (hash md5:81c744827fad830c8da9396448845400)
Theorem hlt_DET_1 : forall A :e hl_ty_cart (hl_ty_cart R 1) 1, hl_det 1 A = hl_vindex R 1 (hl_vindex (hl_ty_cart R 1) 1 A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1181 / DET_2   (hash md5:bee36d5c67d771bfe68d441daf697ebc)
Theorem hlt_DET_2 : forall A :e hl_ty_cart (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)), hl_det (idx_n (2 * dimindex 1)) A = hl_real_sub (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1196 / DET_3   (hash md5:4fa9f3a859df25ed9b2a157928a743da)
Theorem hlt_DET_3 : forall A :e hl_ty_cart (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)), hl_det (idx_n (2 * dimindex 1 + 1)) A = hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1217 / DET_4   (hash md5:c6c1209f1029bd96c2f54751d67ee8fa)
Theorem hlt_DET_4 : forall A :e hl_ty_cart (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A = hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))) (hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 hl_zero))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 hl_zero))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT1 hl_zero))))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) A (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))))))))))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1259 / COFACTOR_1_GEN   (hash md5:55c8278b009efd3cadb2a5865185e646)
Theorem hlt_COFACTOR_1_GEN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> hl_cofactor N A = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1265 / COFACTOR_1   (hash md5:c40acdacafc5db59d91992e6ee69cd9a)
Theorem hlt_COFACTOR_1 : forall A :e hl_ty_cart (hl_ty_cart R 1) 1, hl_cofactor 1 A = hl_mat 1 1 (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1273 / DISJOINT_HYPERPLANES_IMP_COLLINEAR   (hash md5:7535b7a909d7d3097908b74823a9b293)
Theorem hlt_DISJOINT_HYPERPLANES_IMP_COLLINEAR : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2930 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2930 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2931 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2931 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1295 / DISJOINT_HALFSPACES_IMP_COLLINEAR   (hash md5:6b91f539c288370b62ee7ee485e4d5e2)
Theorem hlt_DISJOINT_HALFSPACES_IMP_COLLINEAR : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2936 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2936 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2937 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2937 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2938 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2938 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2939 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2939 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2940 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2940 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2941 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2941 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2942 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2942 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2943 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2943 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2944 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2944 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2945 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2945 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2946 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2946 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2947 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2947 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2948 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2948 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2949 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2949 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2950 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2950 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2951 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2951 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2952 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2952 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2953 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2953 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2954 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2954 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2955 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2955 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2956 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2956 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2957 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2957 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2958 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2958 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2959 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2959 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2960 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2960 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2961 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2961 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2962 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2962 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2963 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2963 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2964 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2964 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2965 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2965 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2966 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2966 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2967 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2967 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2968 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2968 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2969 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2969 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2970 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2970 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2971 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2971 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2972 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2972 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2973 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2973 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2974 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2974 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2975 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2975 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2976 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2976 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2977 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2977 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2978 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2978 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2979 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2979 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2980 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2980 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2981 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2981 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2982 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2982 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2983 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2983 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ forall a b :e hl_ty_cart R N, forall c d :e R, hl_DISJOINT (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2984 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2984 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2985 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2985 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1))))))))))))))))))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1396 / SUBSET_HALFSPACES_IMP_COLLINEAR   (hash md5:a3ef91bdec0a65cd9e6d2abc12c4c0c6)
Theorem hlt_SUBSET_HALFSPACES_IMP_COLLINEAR : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2991 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2991 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2992 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2992 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2993 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2993 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2994 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2994 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2995 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2995 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2996 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2996 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2997 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2997 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2998 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2998 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2999 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2999 (hl_real_lt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3000 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3000 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3001 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3001 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3002 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3002 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3003 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3003 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3004 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3004 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3005 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3005 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3006 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3006 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3007 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3007 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3008 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3008 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3009 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3009 (hl_real_le (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3010 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3010 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3011 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3011 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3012 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3012 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3013 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3013 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3014 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3014 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3015 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3015 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3016 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3016 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3017 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3017 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3018 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3018 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3019 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3019 (if hl_dot N a x = c then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3020 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3020 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3021 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3021 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3022 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3022 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3023 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3023 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3024 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3024 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3025 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3025 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3026 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3026 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3027 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3027 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3028 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3028 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3029 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3029 (hl_real_ge (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3030 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3030 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3031 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3031 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3032 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3032 (hl_real_lt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3033 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3033 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3034 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3034 (hl_real_le (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3035 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3035 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3036 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3036 (if hl_dot N b x = d then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ ((forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3037 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3037 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3038 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3038 (hl_real_ge (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ forall a b :e hl_ty_cart R N, forall c d :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3039 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3039 (hl_real_gt (hl_dot N a x) c) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3040 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3040 (hl_real_gt (hl_dot N b x) d) x = 1 then 1 else 0)) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1))))))))))))))))))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1484 / SUBSET_HYPERPLANES   (hash md5:d7128e1a808f56549f14783958129a99)
Theorem hlt_SUBSET_HYPERPLANES : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, forall a' :e hl_ty_cart R N, forall b' :e R, hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3045 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3045 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3046 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3046 (if hl_dot N a' x = b' then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3047 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3047 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R N) \/ (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3048 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3048 (if hl_dot N a' x = b' then 1 else 0) x = 1 then 1 else 0) = hl_UNIV (hl_ty_cart R N) \/ hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3049 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3049 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3050 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3050 (if hl_dot N a' x = b' then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1519 / EIGENVALUES_CHARACTERISTIC_ALT   (hash md5:47cd7880812e0bba47244c5111468669)
Theorem hlt_EIGENVALUES_CHARACTERISTIC_ALT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall c :e R, (exists v :e hl_ty_cart R N, ~ v = hl_vec N (hl_NUMERAL hl_zero) /\ hl_matrix_vector_mul N N A v = hl_vmul N c v) <-> hl_det N (hl_matrix_sub N N A (hl_mcmul N N c (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))))) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:1526 / EIGENVALUES_CHARACTERISTIC   (hash md5:e1d44b57f03896a78cd513ddf17724b1)
Theorem hlt_EIGENVALUES_CHARACTERISTIC : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall c :e R, (exists v :e hl_ty_cart R N, ~ v = hl_vec N (hl_NUMERAL hl_zero) /\ hl_matrix_vector_mul N N A v = hl_vmul N c v) <-> hl_det N (hl_matrix_sub N N (hl_mcmul N N c (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)))) A) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:1534 / INVERTIBLE_EIGENVALUES   (hash md5:8fba369b4bd9ce61c2c5a0c29959bce6)
Theorem hlt_INVERTIBLE_EIGENVALUES : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N A = 1 <-> forall c :e R, forall v :e hl_ty_cart R N, hl_matrix_vector_mul N N A v = hl_vmul N c v /\ ~ v = hl_vec N (hl_NUMERAL hl_zero) -> ~ c = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:1543 / CHARACTERISTIC_POLYNOMIAL   (hash md5:d05980cf4cbf4d641563029f48a22435)
Theorem hlt_CHARACTERISTIC_POLYNOMIAL : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, exists a :e R :^: omega, a (hl_dimindex N (hl_UNIV N)) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall x :e R, hl_det N (hl_matrix_sub N N (hl_mcmul N N x (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)))) A) = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_real_mul (a i) (hl_real_pow x i)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1634 / FINITE_EIGENVALUES   (hash md5:9bc6ef04b3132c3c11e347a02e0e87d0)
Theorem hlt_FINITE_EIGENVALUES : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_3053 :e R => if exists c :e R, hl_SETSPEC R GEN_PVAR_3053 (if exists v :e hl_ty_cart R N, ~ v = hl_vec N (hl_NUMERAL hl_zero) /\ hl_matrix_vector_mul N N A v = hl_vmul N c v then 1 else 0) c = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1648 / GRASSMANN_PLUCKER_2   (hash md5:624e5ef82fdd49dc94f5522254ea106e)
Theorem hlt_GRASSMANN_PLUCKER_2 : forall x1 x2 y1 y2 :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_real_mul (hl_det (idx_n (2 * dimindex 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) x1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) x2 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) (hl_det (idx_n (2 * dimindex 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) y2 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) = hl_real_add (hl_real_mul (hl_det (idx_n (2 * dimindex 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) x2 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) (hl_det (idx_n (2 * dimindex 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) x1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) y2 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1))))))))) (hl_real_mul (hl_det (idx_n (2 * dimindex 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) x2 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) (hl_det (idx_n (2 * dimindex 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) x1 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1))))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1655 / GRASSMANN_PLUCKER_3   (hash md5:6c7055020b3900ce265668ce08e6c9e3)
Theorem hlt_GRASSMANN_PLUCKER_3 : forall x1 x2 x3 y1 y2 y3 :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_real_mul (hl_det (idx_n (2 * dimindex 1 + 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x3 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))))) (hl_det (idx_n (2 * dimindex 1 + 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y3 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))))) = hl_real_add (hl_real_mul (hl_det (idx_n (2 * dimindex 1 + 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x3 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))))) (hl_det (idx_n (2 * dimindex 1 + 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y3 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)))))))))) (hl_real_add (hl_real_mul (hl_det (idx_n (2 * dimindex 1 + 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x3 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))))) (hl_det (idx_n (2 * dimindex 1 + 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y3 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)))))))))) (hl_real_mul (hl_det (idx_n (2 * dimindex 1 + 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x3 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))))) (hl_det (idx_n (2 * dimindex 1 + 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) x1 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1663 / GRASSMANN_PLUCKER_4   (hash md5:c9960bbacd0159251cb0d7b58b2c2aac)
Theorem hlt_GRASSMANN_PLUCKER_4 : forall x1 x2 x3 x4 y1 y2 y3 y4 :e hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), hl_real_mul (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x4 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))))))))))) (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y4 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))))))))))) = hl_real_add (hl_real_mul (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x4 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))))))))))) (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y4 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))))))))))) (hl_real_add (hl_real_mul (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x4 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))))))))))) (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y4 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))))))))))) (hl_real_add (hl_real_mul (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x4 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))))))))))) (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y4 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))))))))))) (hl_real_mul (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y4 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x4 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))))))))))) (hl_det (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y1 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y2 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) y3 (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) x1 (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))))))))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1676 / INTEGER_PRODUCT   (hash md5:d742a16fd868f36c44503ac4dea98ba7)
Theorem hlt_INTEGER_PRODUCT : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_integer (f x) = 1) -> hl_integer (hl_product A s f) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1681 / INTEGER_SIGN   (hash md5:31df206fd91c1ebe750988ccf1318fc8)
Theorem hlt_INTEGER_SIGN : forall A:set, A <> Empty -> forall p :e A :^: A, hl_integer (hl_sign A p) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1685 / INTEGER_DET   (hash md5:90899e0ccc5eee745689f9abbb1a260b)
Theorem hlt_INTEGER_DET : forall N:set, N <> Empty -> forall M :e hl_ty_cart (hl_ty_cart R N) N, (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_integer (hl_vindex R N (hl_vindex (hl_ty_cart R N) N M i) j) = 1) -> hl_integer (hl_det N M) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1703 / diagonal_matrix   (hash md5:c4d55d170daf2c6633edb40bf826f810)
Theorem hlt_diagonal_matrix_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_diagonal_matrix N M A = 1 <-> forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ i = j))) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:1710 / DIAGONAL_MATRIX   (hash md5:b7481f4c0d33e74d3705af7ad99acd6a)
Theorem hlt_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N A = 1 <-> A = hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if i = j then 1 else 0) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j) (hl_real_of_num (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1715 / DIAGONAL_MATRIX_MAT   (hash md5:82a301717b632030b828e53250843f3a)
Theorem hlt_DIAGONAL_MATRIX_MAT : forall N:set, N <> Empty -> forall m :e omega, hl_diagonal_matrix N N (hl_mat N N m) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1719 / TRANSP_DIAGONAL_MATRIX   (hash md5:4f5e474c0c7ad5cb81399bad974edcd6)
Theorem hlt_TRANSP_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N A = 1 -> hl_transp N N A = A.
Admitted.

// HOL Light: Multivariate/determinants.ml:1725 / DIAGONAL_IMP_SYMMETRIC_MATRIX   (hash md5:640f0f736a4909243074fefdc3a32700)
Theorem hlt_DIAGONAL_IMP_SYMMETRIC_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N A = 1 -> hl_symmetric_matrix N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1729 / DIAGONAL_MATRIX_ADD   (hash md5:6d640840fa9d0643071ab0a54d918a00)
Theorem hlt_DIAGONAL_MATRIX_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_diagonal_matrix N M A = 1 /\ hl_diagonal_matrix N M B = 1 -> hl_diagonal_matrix N M (hl_matrix_add N M A B) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1736 / DIAGONAL_MATRIX_CMUL   (hash md5:22631f90b890355426a70a0e243a9ebb)
Theorem hlt_DIAGONAL_MATRIX_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall c :e R, hl_diagonal_matrix N M A = 1 -> hl_diagonal_matrix N M (hl_mcmul N M c A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1741 / MATRIX_MUL_DIAGONAL   (hash md5:51fc3bdd2cd9ece045b4704f229e3697)
Theorem hlt_MATRIX_MUL_DIAGONAL : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N A = 1 /\ hl_diagonal_matrix N N B = 1 -> hl_matrix_mul N N N A B = hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N B i) j))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1753 / DIAGONAL_MATRIX_MUL_COMPONENT   (hash md5:d54970a52db5a222111924ceda4636e2)
Theorem hlt_DIAGONAL_MATRIX_MUL_COMPONENT : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, forall i j :e omega, hl_diagonal_matrix N N A = 1 /\ (hl_diagonal_matrix N N B = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)))) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) N (hl_matrix_mul N N N A B) i) j = hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N B i) j).
Admitted.

// HOL Light: Multivariate/determinants.ml:1761 / DIAGONAL_MATRIX_MUL   (hash md5:d60e398a9332c84a17996a000f9c3035)
Theorem hlt_DIAGONAL_MATRIX_MUL : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N A = 1 /\ hl_diagonal_matrix N N B = 1 -> hl_diagonal_matrix N N (hl_matrix_mul N N N A B) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1770 / DIAGONAL_MATRIX_MUL_EQ   (hash md5:e9f44e7fdfea202f59a7c542cee8d695)
Theorem hlt_DIAGONAL_MATRIX_MUL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall B :e hl_ty_cart (hl_ty_cart R N) M, hl_diagonal_matrix N N (hl_matrix_mul M N N A B) = 1 <-> hl_pairwise omega (fun i :e omega => fun j :e omega => hl_orthogonal M (hl_row M N i A) (hl_column N M j B)) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1778 / DIAGONAL_MATRIX_INV_EXPLICIT   (hash md5:6c7c63c48832255347e6d09738d6638c)
Theorem hlt_DIAGONAL_MATRIX_INV_EXPLICIT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N A = 1 -> hl_matrix_inv N N A = hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_inv (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1798 / DIAGONAL_MATRIX_INV_COMPONENT   (hash md5:53594cf24521312beb1dda8d94f11397)
Theorem hlt_DIAGONAL_MATRIX_INV_COMPONENT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i j :e omega, hl_diagonal_matrix N N A = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1))) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) N (hl_matrix_inv N N A) i) j = hl_real_inv (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j).
Admitted.

// HOL Light: Multivariate/determinants.ml:1805 / DIAGONAL_MATRIX_INV   (hash md5:5c9d659fb76dbedf82a7e6f094943a4f)
Theorem hlt_DIAGONAL_MATRIX_INV : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N (hl_matrix_inv N N A) = 1 <-> hl_diagonal_matrix N N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1814 / DET_DIAGONAL   (hash md5:ceb23be10d45b7bb0b07bd3bf5f0966b)
Theorem hlt_DET_DIAGONAL : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N A = 1 -> hl_det N A = hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) i).
Admitted.

// HOL Light: Multivariate/determinants.ml:1823 / INVERTIBLE_DIAGONAL_MATRIX   (hash md5:3ebb00120bb897a4b2cbd75b25dd6b4b)
Theorem hlt_INVERTIBLE_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall D :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N D = 1 -> (hl_invertible N N D = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> ~ hl_vindex R N (hl_vindex (hl_ty_cart R N) N D i) i = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1831 / COMMUTING_WITH_DIAGONAL_MATRIX   (hash md5:c98fef369c75edbb05dead88a8c91ce3)
Theorem hlt_COMMUTING_WITH_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A D :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N D = 1 -> (hl_matrix_mul N N N A D = hl_matrix_mul N N N D A <-> forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_vindex R N (hl_vindex (hl_ty_cart R N) N D i) i = hl_vindex R N (hl_vindex (hl_ty_cart R N) N D j) j).
Admitted.

// HOL Light: Multivariate/determinants.ml:1846 / RANK_DIAGONAL_MATRIX   (hash md5:7458247fb08fa195933b545045624a9e)
Theorem hlt_RANK_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N A = 1 -> hl_rank N N A = hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_3058 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_3058 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ ~ hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) i = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) i = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1905 / ONORM_DIAGONAL_MATRIX   (hash md5:8afb1c779b11176f30dcfac9cd7d5ae2)
Theorem hlt_ONORM_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N A = 1 -> hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x) = hl_sup (hl_GSPEC R (fun GEN_PVAR_3059 :e R => if exists i :e omega, hl_SETSPEC R GEN_PVAR_3059 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_real_abs (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) i)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1939 / positive_semidefinite   (hash md5:b02f99308a23c5a1a41dbf038870ac2d)
Theorem hlt_positive_semidefinite_thm : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 <-> hl_symmetric_matrix N A = 1 /\ forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_dot N x (hl_matrix_vector_mul N N A x)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1943 / POSITIVE_SEMIDEFINITE_IMP_SYMMETRIC_MATRIX   (hash md5:c189f247fdb1fea752ef994e813c670b)
Theorem hlt_POSITIVE_SEMIDEFINITE_IMP_SYMMETRIC_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 -> hl_symmetric_matrix N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1947 / POSITIVE_SEMIDEFINITE_IMP_SYMMETRIC   (hash md5:48b5e27c6bbadad7ac0337b24f00a4da)
Theorem hlt_POSITIVE_SEMIDEFINITE_IMP_SYMMETRIC : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 -> hl_transp N N A = A.
Admitted.

// HOL Light: Multivariate/determinants.ml:1952 / POSITIVE_SEMIDEFINITE_ADD   (hash md5:da7f7e5d1f66bd95414a3a2a2d9756b5)
Theorem hlt_POSITIVE_SEMIDEFINITE_ADD : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 /\ hl_positive_semidefinite N B = 1 -> hl_positive_semidefinite N (hl_matrix_add N N A B) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1959 / POSITIVE_SEMIDEFINITE_CMUL   (hash md5:b2318a2da1ebcf2fff00a251d4a2b5c2)
Theorem hlt_POSITIVE_SEMIDEFINITE_CMUL : forall N:set, N <> Empty -> forall c :e R, forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 -> hl_positive_semidefinite N (hl_mcmul N N c A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1966 / POSITIVE_SEMIDEFINITE_TRANSP   (hash md5:9e16b5d711560a5fa76b4b0ab53d3a22)
Theorem hlt_POSITIVE_SEMIDEFINITE_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N (hl_transp N N A) = 1 <-> hl_positive_semidefinite N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1971 / POSITIVE_SEMIDEFINITE_COVARIANCE   (hash md5:ff1bee358097b64bd50a3db2d1f715e9)
Theorem hlt_POSITIVE_SEMIDEFINITE_COVARIANCE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_positive_semidefinite N (hl_matrix_mul M N N (hl_transp N M A) A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1979 / POSITIVE_SEMIDEFINITE_SIMILAR   (hash md5:853234a5020eef7f47e1de646eb9c67b)
Theorem hlt_POSITIVE_SEMIDEFINITE_SIMILAR : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) M, forall B :e hl_ty_cart (hl_ty_cart R N) M, hl_positive_semidefinite M A = 1 -> hl_positive_semidefinite N (hl_matrix_mul M N N (hl_transp N M B) (hl_matrix_mul M M N A B)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1990 / POSITIVE_SEMIDEFINITE_SIMILAR_EQ   (hash md5:04ecdbbf8d179f76b47ea6bf40591ae7)
Theorem hlt_POSITIVE_SEMIDEFINITE_SIMILAR_EQ : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N B = 1 -> (hl_positive_semidefinite N (hl_matrix_mul N N N (hl_transp N N B) (hl_matrix_mul N N N A B)) = 1 <-> hl_positive_semidefinite N A = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2003 / POSITIVE_SEMIDEFINITE_DIAGONAL_MATRIX   (hash md5:477ac55b86535a0901f70a5fbd8976c9)
Theorem hlt_POSITIVE_SEMIDEFINITE_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall D :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N D = 1 /\ (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N D i) i) = 1) -> hl_positive_semidefinite N D = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2020 / POSITIVE_SEMIDEFINITE_DIAGONAL_MATRIX_EQ   (hash md5:d8cfb73978b86f793fb733545102fac3)
Theorem hlt_POSITIVE_SEMIDEFINITE_DIAGONAL_MATRIX_EQ : forall N:set, N <> Empty -> forall D :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N D = 1 -> (hl_positive_semidefinite N D = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N D i) i) = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2031 / DIAGONAL_POSITIVE_SEMIDEFINITE   (hash md5:cd4a84713c768764bc4cf19710322b70)
Theorem hlt_DIAGONAL_POSITIVE_SEMIDEFINITE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, hl_positive_semidefinite N A = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) i) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2039 / TRACE_POSITIVE_SEMIDEFINITE   (hash md5:a0e9df4f193ae024ee5ffb034b2069fd)
Theorem hlt_TRACE_POSITIVE_SEMIDEFINITE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_trace N A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2043 / TRACE_LE_MUL_SQUARES   (hash md5:2ef4d4cd0bddc9ac1bc2c542b5bb8ea4)
Theorem hlt_TRACE_LE_MUL_SQUARES : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_symmetric_matrix N A = 1 /\ hl_symmetric_matrix N B = 1 -> hl_real_le (hl_trace N (hl_matrix_mul N N N (hl_matrix_mul N N N A B) (hl_matrix_mul N N N A B))) (hl_trace N (hl_matrix_mul N N N (hl_matrix_mul N N N A A) (hl_matrix_mul N N N B B))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2057 / POSITIVE_SEMIDEFINITE_ZERO_FORM   (hash md5:d51ce41d5e09ac27ef22e8e8bc1410c5)
Theorem hlt_POSITIVE_SEMIDEFINITE_ZERO_FORM : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 /\ hl_dot N x (hl_matrix_vector_mul N N A x) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_matrix_vector_mul N N A x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:2079 / POSITIVE_SEMIDEFINITE_ZERO_FORM_EQ   (hash md5:d410dc17ceb4afffdabe893bd296361a)
Theorem hlt_POSITIVE_SEMIDEFINITE_ZERO_FORM_EQ : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 -> (hl_dot N x (hl_matrix_vector_mul N N A x) = hl_real_of_num (hl_NUMERAL hl_zero) <-> hl_matrix_vector_mul N N A x = hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2085 / POSITIVE_SEMIDEFINITE_1_GEN   (hash md5:a79ddfffbe8172b64937acef0e0a6621)
Theorem hlt_POSITIVE_SEMIDEFINITE_1_GEN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_positive_semidefinite N A = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2098 / POSITIVE_SEMIDEFINITE_1   (hash md5:c2e214dc907772f6ae59456c31131515)
Theorem hlt_POSITIVE_SEMIDEFINITE_1 : forall A :e hl_ty_cart (hl_ty_cart R 1) 1, hl_positive_semidefinite 1 A = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R 1 (hl_vindex (hl_ty_cart R 1) 1 A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2103 / POSITIVE_SEMIDEFINITE_SUBMATRIX_2   (hash md5:5a595049bcc70b47ca1a5663b8ff0c53)
Theorem hlt_POSITIVE_SEMIDEFINITE_SUBMATRIX_2 : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i j :e omega, hl_positive_semidefinite N A = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1))) -> hl_positive_semidefinite (idx_n (2 * dimindex 1)) (hl_vector (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_vector R (idx_n (2 * dimindex 1)) (hl_CONS R (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) i) (hl_CONS R (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j) (hl_NIL R)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_vector R (idx_n (2 * dimindex 1)) (hl_CONS R (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A j) i) (hl_CONS R (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A j) j) (hl_NIL R)))) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1))))))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2141 / DOT_VECTORIZE   (hash md5:e3ee48866084745181289910b23876ca)
Theorem hlt_DOT_VECTORIZE : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_dot (hl_ty_finite_prod M N) (hl_vectorize R N M A) (hl_vectorize R N M B) = hl_trace N (hl_matrix_mul M N N (hl_transp N M A) B).
Admitted.

// HOL Light: Multivariate/determinants.ml:2173 / NORM_VECTORIZE_TRANSP   (hash md5:b2ef07e6eaf4d224cde9e4bed4ef975c)
Theorem hlt_NORM_VECTORIZE_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_vector_norm (hl_ty_finite_prod N M) (hl_vectorize R M N (hl_transp N M A)) = hl_vector_norm (hl_ty_finite_prod M N) (hl_vectorize R N M A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2179 / COMPATIBLE_NORM_VECTORIZE   (hash md5:e3c889d10cea69b0cc2abf89b1c483d5)
Theorem hlt_COMPATIBLE_NORM_VECTORIZE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, forall x :e hl_ty_cart R N, hl_real_le (hl_vector_norm M (hl_matrix_vector_mul N M A x)) (hl_real_mul (hl_vector_norm (hl_ty_finite_prod M N) (hl_vectorize R N M A)) (hl_vector_norm N x)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2198 / ONORM_LE_NORM_VECTORIZE   (hash md5:ecba2a96a829b7e96ad3c898aec3bd10)
Theorem hlt_ONORM_LE_NORM_VECTORIZE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_real_le (hl_onorm M N (fun x :e hl_ty_cart R M => hl_matrix_vector_mul M N A x)) (hl_vector_norm (hl_ty_finite_prod N M) (hl_vectorize R M N A)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2204 / NORM_VECTORIZE_POW_2   (hash md5:6247787387ae9673c677669ad72eb3a4)
Theorem hlt_NORM_VECTORIZE_POW_2 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_real_pow (hl_vector_norm (hl_ty_finite_prod M N) (hl_vectorize R N M A)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) (fun i :e omega => hl_real_pow (hl_vector_norm N (hl_vindex (hl_ty_cart R N) M A i)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:2212 / NORM_VECTORIZE_MUL_LE   (hash md5:8310736c1608ee654e469fc73e5bcc69)
Theorem hlt_NORM_VECTORIZE_MUL_LE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) P, forall B :e hl_ty_cart (hl_ty_cart R M) N, hl_real_le (hl_vector_norm (hl_ty_finite_prod P M) (hl_vectorize R M P (hl_matrix_mul N P M A B))) (hl_real_mul (hl_vector_norm (hl_ty_finite_prod P N) (hl_vectorize R N P A)) (hl_vector_norm (hl_ty_finite_prod N M) (hl_vectorize R M N B))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2226 / NORM_VECTORIZE_HADAMARD_LE   (hash md5:a9d5d8109b8ee26d67629529ec72e2c9)
Theorem hlt_NORM_VECTORIZE_HADAMARD_LE : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) M, hl_real_le (hl_vector_norm (hl_ty_finite_prod M N) (hl_vectorize R N M (hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) M A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) M B i) j)))))) (hl_real_mul (hl_vector_norm (hl_ty_finite_prod M N) (hl_vectorize R N M A)) (hl_vector_norm (hl_ty_finite_prod M N) (hl_vectorize R N M B))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2242 / TRACE_COVARIANCE_POS_LE   (hash md5:c0afef2cd7946e19c4c88e38dd3ee0d8)
Theorem hlt_TRACE_COVARIANCE_POS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_trace M (hl_matrix_mul N M M (hl_transp M N A) A)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2246 / TRACE_COVARIANCE_EQ_0   (hash md5:9d67aaf02083d8690feab9d7dc1dfebf)
Theorem hlt_TRACE_COVARIANCE_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_trace M (hl_matrix_mul N M M (hl_transp M N A) A) = hl_real_of_num (hl_NUMERAL hl_zero) <-> A = hl_mat M N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:2250 / TRACE_COVARIANCE_POS_LT   (hash md5:a44e083fc2275ebdbb4bb558307a70c3)
Theorem hlt_TRACE_COVARIANCE_POS_LT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_trace M (hl_matrix_mul N M M (hl_transp M N A) A)) = 1 <-> ~ A = hl_mat M N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:2254 / TRACE_COVARIANCE_CAUCHY_SCHWARZ   (hash md5:0f5fefa4bab0563a7cfadad0242f6b34)
Theorem hlt_TRACE_COVARIANCE_CAUCHY_SCHWARZ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R M) N, hl_real_le (hl_trace M (hl_matrix_mul N M M (hl_transp M N A) B)) (hl_real_mul (hl_sqrt (hl_trace M (hl_matrix_mul N M M (hl_transp M N A) A))) (hl_sqrt (hl_trace M (hl_matrix_mul N M M (hl_transp M N B) B)))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2260 / TRACE_COVARIANCE_CAUCHY_SCHWARZ_ABS   (hash md5:9914dc08ee75e6eb8868923288f182e9)
Theorem hlt_TRACE_COVARIANCE_CAUCHY_SCHWARZ_ABS : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R M) N, hl_real_le (hl_real_abs (hl_trace M (hl_matrix_mul N M M (hl_transp M N A) B))) (hl_real_mul (hl_sqrt (hl_trace M (hl_matrix_mul N M M (hl_transp M N A) A))) (hl_sqrt (hl_trace M (hl_matrix_mul N M M (hl_transp M N B) B)))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2266 / TRACE_COVARIANCE_CAUCHY_SCHWARZ_SQUARE   (hash md5:c3b27798652f0ab3788d5cfe3e4a663c)
Theorem hlt_TRACE_COVARIANCE_CAUCHY_SCHWARZ_SQUARE : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R M) N, hl_real_le (hl_real_pow (hl_trace M (hl_matrix_mul N M M (hl_transp M N A) B)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_trace M (hl_matrix_mul N M M (hl_transp M N A) A)) (hl_trace M (hl_matrix_mul N M M (hl_transp M N B) B))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2279 / positive_definite   (hash md5:1672b5efb64fe41123b6d2b6a5b26525)
Theorem hlt_positive_definite_thm : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 <-> hl_symmetric_matrix N A = 1 /\ forall x :e hl_ty_cart R N, ~ x = hl_vec N (hl_NUMERAL hl_zero) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_dot N x (hl_matrix_vector_mul N N A x)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2283 / POSITIVE_DEFINITE_IMP_SYMMETRIC_MATRIX   (hash md5:3bf70922fcaaaaa08ec4d6e8612b2a5a)
Theorem hlt_POSITIVE_DEFINITE_IMP_SYMMETRIC_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 -> hl_symmetric_matrix N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2287 / POSITIVE_DEFINITE_IMP_SYMMETRIC   (hash md5:af5e1a44522ffc3260feed65333b5147)
Theorem hlt_POSITIVE_DEFINITE_IMP_SYMMETRIC : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 -> hl_transp N N A = A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2291 / POSITIVE_DEFINITE_POSITIVE_SEMIDEFINITE   (hash md5:2cbb379a68f73401e05cf9a529d2d7e8)
Theorem hlt_POSITIVE_DEFINITE_POSITIVE_SEMIDEFINITE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 <-> hl_positive_semidefinite N A = 1 /\ hl_invertible N N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2305 / POSITIVE_DEFINITE_SIMILAR_EQ   (hash md5:48115b793ea2477be7c2b7cfac89d533)
Theorem hlt_POSITIVE_DEFINITE_SIMILAR_EQ : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N (hl_matrix_mul N N N (hl_transp N N B) (hl_matrix_mul N N N A B)) = 1 <-> hl_invertible N N B = 1 /\ hl_positive_definite N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2314 / POSITIVE_DEFINITE_1_GEN   (hash md5:262623671bcdaf6e3ea2727e93f56c2f)
Theorem hlt_POSITIVE_DEFINITE_1_GEN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_positive_definite N A = 1 <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2328 / POSITIVE_DEFINITE_1   (hash md5:29e13a603c449b8423d2b9f5d9176c81)
Theorem hlt_POSITIVE_DEFINITE_1 : forall A :e hl_ty_cart (hl_ty_cart R 1) 1, hl_positive_definite 1 A = 1 <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R 1 (hl_vindex (hl_ty_cart R 1) 1 A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2333 / POSITIVE_DEFINITE_IMP_INVERTIBLE   (hash md5:525e1a6470599afb2aac55697bd21daa)
Theorem hlt_POSITIVE_DEFINITE_IMP_INVERTIBLE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 -> hl_invertible N N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2337 / POSITIVE_DEFINITE_IMP_POSITIVE_SEMIDEFINITE   (hash md5:9a055a18429ad02ca660bd6f56143d55)
Theorem hlt_POSITIVE_DEFINITE_IMP_POSITIVE_SEMIDEFINITE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 -> hl_positive_semidefinite N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2341 / POSITIVE_SEMIDEFINITE_POSITIVE_DEFINITE_ADD   (hash md5:7428b15498a83b4eeeddb2ca056aa5a9)
Theorem hlt_POSITIVE_SEMIDEFINITE_POSITIVE_DEFINITE_ADD : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 /\ hl_positive_definite N B = 1 -> hl_positive_definite N (hl_matrix_add N N A B) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2348 / POSITIVE_DEFINITE_POSITIVE_SEMIDEFINITE_ADD   (hash md5:e289786a1803ee64488848e74e17c116)
Theorem hlt_POSITIVE_DEFINITE_POSITIVE_SEMIDEFINITE_ADD : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 /\ hl_positive_semidefinite N B = 1 -> hl_positive_definite N (hl_matrix_add N N A B) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2355 / POSITIVE_DEFINITE_ADD   (hash md5:bbbbf3f8aa41991ee57f3380d32fed89)
Theorem hlt_POSITIVE_DEFINITE_ADD : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 /\ hl_positive_definite N B = 1 -> hl_positive_definite N (hl_matrix_add N N A B) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2362 / POSITIVE_DEFINITE_CMUL   (hash md5:1bca6b9f95d8362c7d78ba913932ace7)
Theorem hlt_POSITIVE_DEFINITE_CMUL : forall N:set, N <> Empty -> forall c :e R, forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 -> hl_positive_definite N (hl_mcmul N N c A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2369 / NEARBY_POSITIVE_DEFINITE_MATRIX_GEN   (hash md5:96f90a150958c243959869f7ade1c0b2)
Theorem hlt_NEARBY_POSITIVE_DEFINITE_MATRIX_GEN : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, forall x :e R, hl_positive_semidefinite N A = 1 /\ (hl_positive_definite N B = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) -> hl_positive_definite N (hl_matrix_add N N A (hl_mcmul N N x B)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2376 / POSITIVE_DEFINITE_TRANSP   (hash md5:62d326de46b169a112e49131a7acc17e)
Theorem hlt_POSITIVE_DEFINITE_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N (hl_transp N N A) = 1 <-> hl_positive_definite N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2381 / POSITIVE_DEFINITE_COVARIANCE   (hash md5:2256f72b136aca0353ff7a1c37d92350)
Theorem hlt_POSITIVE_DEFINITE_COVARIANCE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N (hl_matrix_mul N N N (hl_transp N N A) A) = 1 <-> hl_invertible N N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2387 / POSITIVE_DEFINITE_SIMILAR   (hash md5:a0fd493521b88ea0f4ef738365ffa996)
Theorem hlt_POSITIVE_DEFINITE_SIMILAR : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 /\ hl_invertible N N B = 1 -> hl_positive_definite N (hl_matrix_mul N N N (hl_transp N N B) (hl_matrix_mul N N N A B)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2395 / POSITIVE_DEFINITE_DIAGONAL_MATRIX   (hash md5:25961894ed4bb095456e6bc9865b89c2)
Theorem hlt_POSITIVE_DEFINITE_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall D :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N D = 1 /\ (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N D i) i) = 1) -> hl_positive_definite N D = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2415 / POSITIVE_DEFINITE_DIAGONAL_MATRIX_EQ   (hash md5:177790af083571377b08a6bf771f8bf6)
Theorem hlt_POSITIVE_DEFINITE_DIAGONAL_MATRIX_EQ : forall N:set, N <> Empty -> forall D :e hl_ty_cart (hl_ty_cart R N) N, hl_diagonal_matrix N N D = 1 -> (hl_positive_definite N D = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N D i) i) = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2427 / DIAGONAL_POSITIVE_DEFINITE   (hash md5:fd8a929391ba04ce65148d7269e860d2)
Theorem hlt_DIAGONAL_POSITIVE_DEFINITE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, hl_positive_definite N A = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) i) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2436 / TRACE_POSITIVE_DEFINITE   (hash md5:503e91d119d851942fa256dd118916b3)
Theorem hlt_TRACE_POSITIVE_DEFINITE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_trace N A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2441 / POSITIVE_DEFINITE_MAT   (hash md5:0e10674574c71a96810a26cd3c48c24e)
Theorem hlt_POSITIVE_DEFINITE_MAT : forall N:set, N <> Empty -> forall m :e omega, hl_positive_definite N (hl_mat N N m) = 1 <-> hl_lt (hl_NUMERAL hl_zero) m = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2447 / POSITIVE_DEFINITE_ID   (hash md5:ede8e984629684da37c37fedf416e9b2)
Theorem hlt_POSITIVE_DEFINITE_ID : forall N:set, N <> Empty -> hl_positive_definite N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2451 / POSITIVE_SEMIDEFINITE_MAT   (hash md5:40d4979aee2720f1341baa92c883e9ed)
Theorem hlt_POSITIVE_SEMIDEFINITE_MAT : forall N:set, N <> Empty -> forall m :e omega, hl_positive_semidefinite N (hl_mat N N m) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2457 / NEARBY_POSITIVE_DEFINITE_MATRIX   (hash md5:3ac7f30c727f668e437e8e61b74ee14b)
Theorem hlt_NEARBY_POSITIVE_DEFINITE_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall x :e R, hl_positive_semidefinite N A = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 -> hl_positive_definite N (hl_matrix_add N N A (hl_mcmul N N x (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2462 / POSITIVE_SEMIDEFINITE_ANTISYM   (hash md5:735db76a82f6d701f5f2352720e65d9a)
Theorem hlt_POSITIVE_SEMIDEFINITE_ANTISYM : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 /\ hl_positive_semidefinite N (hl_matrix_neg N N A) = 1 <-> A = hl_mat N N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:2475 / LOEWNER_ORDER_ANTISYM   (hash md5:e3f92c3707dfaa957f1e83be52b8fc78)
Theorem hlt_LOEWNER_ORDER_ANTISYM : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N (hl_matrix_sub N N A B) = 1 /\ hl_positive_semidefinite N (hl_matrix_sub N N B A) = 1 <-> A = B.
Admitted.

// HOL Light: Multivariate/determinants.ml:2487 / HADAMARD_INEQUALITY_ROW   (hash md5:dfed0908b4466505de9ed8077297dab1)
Theorem hlt_HADAMARD_INEQUALITY_ROW : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_real_le (hl_real_abs (hl_det N A)) (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vector_norm N (hl_row N N i A))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2637 / HADAMARD_INEQUALITY_COLUMN   (hash md5:5ed0a4fb1c865a9bb0554b176e675138)
Theorem hlt_HADAMARD_INEQUALITY_COLUMN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_real_le (hl_real_abs (hl_det N A)) (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vector_norm N (hl_column N N i A))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2646 / orthogonal_transformation   (hash md5:ce9046e94cb3143b9815dc4a256bdb72)
Theorem hlt_orthogonal_transformation_thm : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 <-> hl_linear N N f = 1 /\ forall v w :e hl_ty_cart R N, hl_dot N (f v) (f w) = hl_dot N v w.
Admitted.

// HOL Light: Multivariate/determinants.ml:2650 / ORTHOGONAL_TRANSFORMATION   (hash md5:b0bfeee172981e6830d618d5cf10b6c9)
Theorem hlt_ORTHOGONAL_TRANSFORMATION : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R A, hl_orthogonal_transformation A f = 1 <-> hl_linear A A f = 1 /\ forall v :e hl_ty_cart R A, hl_vector_norm A (f v) = hl_vector_norm A v.
Admitted.

// HOL Light: Multivariate/determinants.ml:2655 / ORTHOGONAL_ORTHOGONAL_TRANSFORMATION   (hash md5:8317ecbb14eda32952a6ff0450a417ab)
Theorem hlt_ORTHOGONAL_ORTHOGONAL_TRANSFORMATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> (hl_orthogonal N (f x) (f y) = 1 <-> hl_orthogonal N x y = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2661 / ORTHOGONAL_TRANSFORMATION_COMPOSE   (hash md5:f82be1ffc5341bf9f8e2209323f2a5c5)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_COMPOSE : forall A:set, A <> Empty -> forall f g :e hl_ty_cart R A :^: hl_ty_cart R A, hl_orthogonal_transformation A f = 1 /\ hl_orthogonal_transformation A g = 1 -> hl_orthogonal_transformation A (hl_o (hl_ty_cart R A) (hl_ty_cart R A) (hl_ty_cart R A) f g) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2666 / ORTHOGONAL_TRANSFORMATION_NEG   (hash md5:c1ba504cfd7a4b00fef4742c67e94310)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_NEG : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N (fun x :e hl_ty_cart R N => hl_vector_neg N (f x)) = 1 <-> hl_orthogonal_transformation N f = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2671 / ORTHOGONAL_TRANSFORMATION_LINEAR   (hash md5:f526f16b07e27e795b7860e65128a4b7)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_LINEAR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> hl_linear N N f = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2675 / ORTHOGONAL_TRANSFORMATION_INJECTIVE   (hash md5:4f23a0dd26ae7aee79f2375403a9f362)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_INJECTIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> forall x y :e hl_ty_cart R N, f x = f y -> x = y.
Admitted.

// HOL Light: Multivariate/determinants.ml:2680 / ORTHOGONAL_TRANSFORMATION_SURJECTIVE   (hash md5:6f2671bfcd69ac40ed116c699f4c7cea)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_SURJECTIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> forall y :e hl_ty_cart R N, exists x :e hl_ty_cart R N, f x = y.
Admitted.

// HOL Light: Multivariate/determinants.ml:2686 / orthogonal_matrix   (hash md5:d602ca03d7f1120d4697424d26b2e583)
Theorem hlt_orthogonal_matrix_thm : forall N:set, N <> Empty -> forall Q :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N Q = 1 <-> hl_matrix_mul N N N (hl_transp N N Q) Q = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_matrix_mul N N N Q (hl_transp N N Q) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2690 / ORTHOGONAL_MATRIX   (hash md5:4303833dc2733128ff6d54630ac9c11f)
Theorem hlt_ORTHOGONAL_MATRIX : forall N:set, N <> Empty -> forall Q :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N Q = 1 <-> hl_matrix_mul N N N (hl_transp N N Q) Q = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2694 / ORTHOGONAL_MATRIX_ALT   (hash md5:a503c700cfef9304b637fa54213a0efd)
Theorem hlt_ORTHOGONAL_MATRIX_ALT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> hl_matrix_mul N N N A (hl_transp N N A) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2698 / ORTHOGONAL_MATRIX_TRANSP   (hash md5:44d968885955bf284dc181ddfdf7b267)
Theorem hlt_ORTHOGONAL_MATRIX_TRANSP : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N (hl_transp N N A) = 1 <-> hl_orthogonal_matrix N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2702 / ORTHOGONAL_MATRIX_TRANSP_LMUL   (hash md5:c50a7be8d7e42d771e6a26f83d08bb85)
Theorem hlt_ORTHOGONAL_MATRIX_TRANSP_LMUL : forall N:set, N <> Empty -> forall P :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N P = 1 -> hl_matrix_mul N N N (hl_transp N N P) P = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2706 / ORTHOGONAL_MATRIX_TRANSP_RMUL   (hash md5:64cced9b3be8329a1145b002587eb685)
Theorem hlt_ORTHOGONAL_MATRIX_TRANSP_RMUL : forall N:set, N <> Empty -> forall P :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N P = 1 -> hl_matrix_mul N N N P (hl_transp N N P) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2710 / NORM_VECTORIZE_ORTHOGONAL_MATRIX_RMUL   (hash md5:5b0c555ca5f1dc8ba4365c1f498e21fa)
Theorem hlt_NORM_VECTORIZE_ORTHOGONAL_MATRIX_RMUL : forall N:set, N <> Empty -> forall A P :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N P = 1 -> hl_vector_norm (hl_ty_finite_prod N N) (hl_vectorize R N N (hl_matrix_mul N N N A P)) = hl_vector_norm (hl_ty_finite_prod N N) (hl_vectorize R N N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2722 / NORM_VECTORIZE_ORTHOGONAL_MATRIX_LMUL   (hash md5:552101237c5b300cfa164bbb199ab6ff)
Theorem hlt_NORM_VECTORIZE_ORTHOGONAL_MATRIX_LMUL : forall N:set, N <> Empty -> forall A P :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N P = 1 -> hl_vector_norm (hl_ty_finite_prod N N) (hl_vectorize R N N (hl_matrix_mul N N N P A)) = hl_vector_norm (hl_ty_finite_prod N N) (hl_vectorize R N N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2730 / ORTHOGONAL_MATRIX_ID   (hash md5:2dd0701485aa74a88976dbf7e5144354)
Theorem hlt_ORTHOGONAL_MATRIX_ID : forall A:set, A <> Empty -> hl_orthogonal_matrix A (hl_mat A A (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2734 / ORTHOGONAL_MATRIX_MUL   (hash md5:fd3588bd12931190a4412b9608921a82)
Theorem hlt_ORTHOGONAL_MATRIX_MUL : forall A:set, A <> Empty -> forall A1 B :e hl_ty_cart (hl_ty_cart R A) A, hl_orthogonal_matrix A A1 = 1 /\ hl_orthogonal_matrix A B = 1 -> hl_orthogonal_matrix A (hl_matrix_mul A A A A1 B) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2742 / ORTHOGONAL_TRANSFORMATION_MATRIX   (hash md5:9683fbbe3752f9b326fc115b01e08623)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_MATRIX : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 <-> hl_linear N N f = 1 /\ hl_orthogonal_matrix N (hl_matrix N N f) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2765 / ORTHOGONAL_MATRIX_TRANSFORMATION   (hash md5:22994aa235a2f0fb548b141974cbe67a)
Theorem hlt_ORTHOGONAL_MATRIX_TRANSFORMATION : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> hl_orthogonal_transformation N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2770 / ORTHOGONAL_MATRIX_MATRIX   (hash md5:7bf3f5eaf662b62c8b461c2b104471b6)
Theorem hlt_ORTHOGONAL_MATRIX_MATRIX : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> hl_orthogonal_matrix N (hl_matrix N N f) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2775 / ORTHOGONAL_MATRIX_NORM_EQ   (hash md5:231bd27150a0ca646934cc32718d5697)
Theorem hlt_ORTHOGONAL_MATRIX_NORM_EQ : forall A:set, A <> Empty -> forall A1 :e hl_ty_cart (hl_ty_cart R A) A, hl_orthogonal_matrix A A1 = 1 <-> forall x :e hl_ty_cart R A, hl_vector_norm A (hl_matrix_vector_mul A A A1 x) = hl_vector_norm A x.
Admitted.

// HOL Light: Multivariate/determinants.ml:2780 / ORTHOGONAL_MATRIX_NORM   (hash md5:5753c8c1271df0d6eceede414fd6b0e1)
Theorem hlt_ORTHOGONAL_MATRIX_NORM : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall x :e hl_ty_cart R N, hl_orthogonal_matrix N A = 1 -> hl_vector_norm N (hl_matrix_vector_mul N N A x) = hl_vector_norm N x.
Admitted.

// HOL Light: Multivariate/determinants.ml:2784 / DET_ORTHOGONAL_MATRIX   (hash md5:7ac2992424066e189c9c7b3b88593de4)
Theorem hlt_DET_ORTHOGONAL_MATRIX : forall A:set, A <> Empty -> forall Q :e hl_ty_cart (hl_ty_cart R A) A, hl_orthogonal_matrix A Q = 1 -> hl_det A Q = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_det A Q = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/determinants.ml:2790 / ORTHOGONAL_MATRIX_IMP_INVERTIBLE   (hash md5:62c9b5f5424cdfce75ef3ffb6266d6cd)
Theorem hlt_ORTHOGONAL_MATRIX_IMP_INVERTIBLE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 -> hl_invertible N N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2796 / MATRIX_MUL_LTRANSP_DOT_COLUMN   (hash md5:b3621fb1656e304e67f7e4b8d3e5719a)
Theorem hlt_MATRIX_MUL_LTRANSP_DOT_COLUMN : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul M N N (hl_transp N M A) A = hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_dot M (hl_column N M i A) (hl_column N M j A))).
Admitted.

// HOL Light: Multivariate/determinants.ml:2800 / MATRIX_MUL_RTRANSP_DOT_ROW   (hash md5:ac6974307a326ae6bad9988ec246cf1e)
Theorem hlt_MATRIX_MUL_RTRANSP_DOT_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) M, hl_matrix_mul N M M A (hl_transp N M A) = hl_lambda (hl_ty_cart R M) M (fun i :e omega => hl_lambda R M (fun j :e omega => hl_dot N (hl_row N M i A) (hl_row N M j A))).
Admitted.

// HOL Light: Multivariate/determinants.ml:2804 / ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS   (hash md5:11c0dd7231634316a9e7b1a148b10de7)
Theorem hlt_ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vector_norm N (hl_column N N i A) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ i = j))) -> hl_orthogonal N (hl_column N N i A) (hl_column N N j A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2815 / ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS   (hash md5:39b09bbfee10fabaf9eefb24387a79fd)
Theorem hlt_ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vector_norm N (hl_row N N i A) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ i = j))) -> hl_orthogonal N (hl_row N N i A) (hl_row N N j A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2825 / ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_INDEXED   (hash md5:f8a4664ec8cc9b71d6a205c3a9859e6d)
Theorem hlt_ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_INDEXED : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vector_norm N (hl_row N N i A) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_pairwise omega (fun i :e omega => fun j :e omega => hl_orthogonal N (hl_row N N i A) (hl_row N N j A)) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2837 / ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_PAIRWISE   (hash md5:9555fbb79d9217d61ce60c6cff611157)
Theorem hlt_ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_PAIRWISE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> hl_CARD (hl_ty_cart R N) (hl_rows N N A) = hl_dimindex N (hl_UNIV N) /\ ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vector_norm N (hl_row N N i A) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) (hl_rows N N A) = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2853 / ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_SPAN   (hash md5:82918b4bfbdfcf323a969976cfe77d83)
Theorem hlt_ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_SPAN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> hl_span N (hl_rows N N A) = hl_UNIV (hl_ty_cart R N) /\ ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vector_norm N (hl_row N N i A) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) (hl_rows N N A) = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2871 / ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_INDEXED   (hash md5:ab7b75e9e23300611fe262959c72e0eb)
Theorem hlt_ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_INDEXED : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vector_norm N (hl_column N N i A) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_pairwise omega (fun i :e omega => fun j :e omega => hl_orthogonal N (hl_column N N i A) (hl_column N N j A)) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2880 / ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_PAIRWISE   (hash md5:3e8439d2be9a97dec8480cd8122c5bfd)
Theorem hlt_ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_PAIRWISE : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> hl_CARD (hl_ty_cart R N) (hl_columns N N A) = hl_dimindex N (hl_UNIV N) /\ ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vector_norm N (hl_column N N i A) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) (hl_columns N N A) = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2890 / ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_SPAN   (hash md5:7d4661f96bc5d6792fe3cda2b157d6fa)
Theorem hlt_ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_SPAN : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 <-> hl_span N (hl_columns N N A) = hl_UNIV (hl_ty_cart R N) /\ ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vector_norm N (hl_column N N i A) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) (hl_columns N N A) = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2900 / ORTHOGONAL_MATRIX_2   (hash md5:6e718e35014aec740d01a5ad4bfc4e73)
Theorem hlt_ORTHOGONAL_MATRIX_2 : forall A :e hl_ty_cart (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)), hl_orthogonal_matrix (idx_n (2 * dimindex 1)) A = 1 <-> hl_real_add (hl_real_pow (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_real_add (hl_real_pow (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_real_add (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2910 / ORTHOGONAL_MATRIX_2_ALT   (hash md5:fc0911c4279a1219ec12c64b5fcaa807)
Theorem hlt_ORTHOGONAL_MATRIX_2_ALT : forall A :e hl_ty_cart (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)), hl_orthogonal_matrix (idx_n (2 * dimindex 1)) A = 1 <-> hl_real_add (hl_real_pow (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) /\ hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_neg (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) \/ hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_real_neg (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) /\ hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/determinants.ml:2917 / ORTHOGONAL_MATRIX_INV   (hash md5:0127b717e51b8d49c560f3277318a13f)
Theorem hlt_ORTHOGONAL_MATRIX_INV : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 -> hl_matrix_inv N N A = hl_transp N N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2921 / ORTHOGONAL_MATRIX_INV_EQ   (hash md5:06b28ebf32ef5e5e8cfb2f45f23812b4)
Theorem hlt_ORTHOGONAL_MATRIX_INV_EQ : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N (hl_matrix_inv N N A) = 1 <-> hl_orthogonal_matrix N A = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2929 / ORTHOGONAL_TRANSFORMATION_ORTHOGONAL_EIGENVECTORS   (hash md5:670ad3684959671ba9968d511d9bcab9)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_ORTHOGONAL_EIGENVECTORS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall v w :e hl_ty_cart R N, forall a b :e R, hl_orthogonal_transformation N f = 1 /\ (f v = hl_vmul N a v /\ (f w = hl_vmul N b w /\ ~ a = b)) -> hl_orthogonal N v w = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2946 / ORTHOGONAL_MATRIX_ORTHOGONAL_EIGENVECTORS   (hash md5:1d232cf0b06f85fd873d0c7f5d730b4c)
Theorem hlt_ORTHOGONAL_MATRIX_ORTHOGONAL_EIGENVECTORS : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, forall v w :e hl_ty_cart R N, forall a b :e R, hl_orthogonal_matrix N A = 1 /\ (hl_matrix_vector_mul N N A v = hl_vmul N a v /\ (hl_matrix_vector_mul N N A w = hl_vmul N b w /\ ~ a = b)) -> hl_orthogonal N v w = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2953 / ORTHOGONAL_TRANSFORMATION_ID   (hash md5:a0f43514ec9682350bcceb0a7143b2d5)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_ID : forall A:set, A <> Empty -> hl_orthogonal_transformation A (fun x :e hl_ty_cart R A => x) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2957 / ORTHOGONAL_TRANSFORMATION_I   (hash md5:60234103decd6440b77135fff1f6ad08)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_I : forall A:set, A <> Empty -> hl_orthogonal_transformation A (hl_I (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2961 / ORTHOGONAL_TRANSFORMATION_NEGATION   (hash md5:5702432210f0ee4f09e239c124cf79cf)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_NEGATION : forall A:set, A <> Empty -> hl_orthogonal_transformation A (hl_vector_neg A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2966 / ORTHOGONAL_TRANSFORMATION_1_GEN   (hash md5:af73fc56cb10f577097bb789f5b7e6dd)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_1_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_orthogonal_transformation N f = 1 <-> f = hl_I (hl_ty_cart R N) \/ f = hl_vector_neg N).
Admitted.

// HOL Light: Multivariate/determinants.ml:2985 / ORTHOGONAL_MATRIX_1   (hash md5:a73ae482ef37c41932a344cdd5b4d7fa)
Theorem hlt_ORTHOGONAL_MATRIX_1 : forall N:set, N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart R N) N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_orthogonal_matrix N m = 1 <-> m = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) \/ m = hl_matrix_neg N N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:2995 / MATRIX_INV_ORTHOGONAL_LMUL   (hash md5:1c19f6e94c69fde95a1f61cce0d89c9b)
Theorem hlt_MATRIX_INV_ORTHOGONAL_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall U :e hl_ty_cart (hl_ty_cart R N) N, forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_orthogonal_matrix N U = 1 -> hl_matrix_inv M N (hl_matrix_mul N N M U A) = hl_matrix_mul N M N (hl_matrix_inv M N A) (hl_matrix_inv N N U).
Admitted.

// HOL Light: Multivariate/determinants.ml:3018 / MATRIX_INV_ORTHOGONAL_RMUL   (hash md5:d2032d4744f682bcc9368556e3ed4e1d)
Theorem hlt_MATRIX_INV_ORTHOGONAL_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall U :e hl_ty_cart (hl_ty_cart R M) M, forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_orthogonal_matrix M U = 1 -> hl_matrix_inv M N (hl_matrix_mul M N M A U) = hl_matrix_mul M M N (hl_matrix_inv M M U) (hl_matrix_inv M N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:3025 / ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT_LEFT   (hash md5:f208f3b0aed0e49730ab5dde69627931)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT_LEFT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 <-> hl_linear N N f = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (hl_adjoint N N f) f = hl_I (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/determinants.ml:3039 / ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT_RIGHT   (hash md5:90dad9e05c7589d5dcd749cd046184ac)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT_RIGHT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 <-> hl_linear N N f = 1 /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f (hl_adjoint N N f) = hl_I (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/determinants.ml:3045 / ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT   (hash md5:32110f7b07ecc918c07a86a96dcd3441)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 <-> hl_linear N N f = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (hl_adjoint N N f) f = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f (hl_adjoint N N f) = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3052 / ORTHOGONAL_TRANSFORMATION_ADJOINT   (hash md5:52359e1781ffd5b3bc405196f673731a)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_ADJOINT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> hl_orthogonal_transformation N (hl_adjoint N N f) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3067 / ONORM_ORTHOGONAL_TRANSFORMATION   (hash md5:fe1498263784531c765223c0291114dd)
Theorem hlt_ONORM_ORTHOGONAL_TRANSFORMATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> hl_onorm N N f = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3076 / ONORM_ORTHOGONAL_MATRIX   (hash md5:80147e520e579227f36c34a7f88c0bef)
Theorem hlt_ONORM_ORTHOGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 -> hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3085 / SCALING_LINEAR   (hash md5:c4375e4ad9da7ffefd3720af816267fe)
Theorem hlt_SCALING_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e R, f (hl_vec M (hl_NUMERAL hl_zero)) = hl_vec N (hl_NUMERAL hl_zero) /\ (forall x y :e hl_ty_cart R M, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_real_mul c (hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x y))) -> hl_linear M N f = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3102 / ISOMETRY_LINEAR   (hash md5:c3acc4fee555cc61d24c5411c7dd372d)
Theorem hlt_ISOMETRY_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, f (hl_vec M (hl_NUMERAL hl_zero)) = hl_vec N (hl_NUMERAL hl_zero) /\ (forall x y :e hl_ty_cart R M, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x y)) -> hl_linear M N f = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3108 / ISOMETRY_IMP_AFFINITY   (hash md5:8d33fed9058296ea4696f68e7026b605)
Theorem hlt_ISOMETRY_IMP_AFFINITY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall x y :e hl_ty_cart R M, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x y)) -> exists h :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N h = 1 /\ forall x :e hl_ty_cart R M, f x = hl_vector_add N (f (hl_vec M (hl_NUMERAL hl_zero))) (h x).
Admitted.

// HOL Light: Multivariate/determinants.ml:3122 / ORTHOGONALITY_PRESERVING_IMP_SCALING   (hash md5:6298a0c2ed289d0ed915c57a01eb47eb)
Theorem hlt_ORTHOGONALITY_PRESERVING_IMP_SCALING : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, hl_orthogonal M x y = 1 -> hl_orthogonal N (f x) (f y) = 1) -> exists c :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_real_mul c (hl_vector_norm M x).
Admitted.

// HOL Light: Multivariate/determinants.ml:3196 / ORTHOGONAL_TRANSFORMATION_ISOMETRY   (hash md5:3977aeb140b80652bbf45429c3a2960e)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_ISOMETRY : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 <-> f (hl_vec N (hl_NUMERAL hl_zero)) = hl_vec N (hl_NUMERAL hl_zero) /\ forall x y :e hl_ty_cart R N, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y).
Admitted.

// HOL Light: Multivariate/determinants.ml:3210 / ISOMETRY_SPHERE_EXTEND   (hash md5:c2a43645414960d7a75eae64768d037d)
Theorem hlt_ISOMETRY_SPHERE_EXTEND : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_vector_norm N x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_vector_norm N (f x) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (forall x y :e hl_ty_cart R N, hl_vector_norm N x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vector_norm N y = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N g = 1 /\ forall x :e hl_ty_cart R N, hl_vector_norm N x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> g x = f x.
Admitted.

// HOL Light: Multivariate/determinants.ml:3255 / ORTHOGONAL_TRANSFORMATION_INVERSE_o   (hash md5:63dd2bb142e931d80661a7a900c1dc47)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_INVERSE_o : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N g = 1 /\ (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) g f = hl_I (hl_ty_cart R N) /\ hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g = hl_I (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3275 / ORTHOGONAL_TRANSFORMATION_INVERSE   (hash md5:dff1f2c12a535277befeb46e9865b5b9)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_INVERSE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N g = 1 /\ ((forall x :e hl_ty_cart R N, g (f x) = x) /\ forall y :e hl_ty_cart R N, f (g y) = y).
Admitted.

// HOL Light: Multivariate/determinants.ml:3284 / ONORM_COMPOSE_ORTHOGONAL_TRANSFORMATION_LEFT   (hash md5:a618a3bfe56371ffe233e7c91c95391b)
Theorem hlt_ONORM_COMPOSE_ORTHOGONAL_TRANSFORMATION_LEFT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R B, forall g :e hl_ty_cart R B :^: hl_ty_cart R A, hl_orthogonal_transformation B f = 1 -> hl_onorm A B (hl_o (hl_ty_cart R B) (hl_ty_cart R B) (hl_ty_cart R A) f g) = hl_onorm A B g.
Admitted.

// HOL Light: Multivariate/determinants.ml:3288 / ONORM_COMPOSE_ORTHOGONAL_TRANSFORMATION_RIGHT   (hash md5:d12af2f5bcf5bae20f6101a48d53a421)
Theorem hlt_ONORM_COMPOSE_ORTHOGONAL_TRANSFORMATION_RIGHT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall g :e hl_ty_cart R A :^: hl_ty_cart R A, hl_orthogonal_transformation A g = 1 -> hl_onorm A B (hl_o (hl_ty_cart R A) (hl_ty_cart R B) (hl_ty_cart R A) f g) = hl_onorm A B f.
Admitted.

// HOL Light: Multivariate/determinants.ml:3300 / SQNORM_LE_MAX_EIGENVECTOR_SPAN   (hash md5:7fc62368f8aabc7302c40a5bf806b952)
Theorem hlt_SQNORM_LE_MAX_EIGENVECTOR_SPAN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall b :e 2 :^: hl_ty_cart R N, forall c :e R :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, forall l :e R, hl_linear N N f = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1 /\ ((forall x1 :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x1 b = 1 -> f x1 = hl_vmul N (c x1) x1 /\ hl_real_le (hl_real_pow (c x1) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) l = 1) /\ hl_IN (hl_ty_cart R N) x (hl_span N b) = 1)) -> hl_real_le (hl_real_pow (hl_vector_norm N (f x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul l (hl_real_pow (hl_vector_norm N x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3330 / NORM_LE_MAX_EIGENVECTOR_SPAN   (hash md5:e2fabb9adb0ee79e18af15cef606f871)
Theorem hlt_NORM_LE_MAX_EIGENVECTOR_SPAN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall b :e 2 :^: hl_ty_cart R N, forall c :e R :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, forall l :e R, hl_linear N N f = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1 /\ ((forall x1 :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x1 b = 1 -> f x1 = hl_vmul N (c x1) x1 /\ hl_real_le (hl_real_abs (c x1)) l = 1) /\ hl_IN (hl_ty_cart R N) x (hl_span N b) = 1)) -> hl_real_le (hl_vector_norm N (f x)) (hl_real_mul l (hl_vector_norm N x)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3352 / ONORM_EQ_MAX_EIGENVECTOR   (hash md5:bae18719bdb0bca5a9972f9ccfdcf256)
Theorem hlt_ONORM_EQ_MAX_EIGENVECTOR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall b :e 2 :^: hl_ty_cart R N, forall c :e R :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (hl_pairwise (hl_ty_cart R N) (hl_orthogonal N) b = 1 /\ (hl_span N b = hl_UNIV (hl_ty_cart R N) /\ (~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) b = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x b = 1 -> f x = hl_vmul N (c x) x)))) -> hl_onorm N N f = hl_sup (hl_GSPEC R (fun GEN_PVAR_3061 :e R => if exists x :e hl_ty_cart R N, hl_SETSPEC R GEN_PVAR_3061 (hl_IN (hl_ty_cart R N) x b) (hl_real_abs (c x)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3383 / ONORM_ORTHOGONAL_MATRIX_MUL_LEFT   (hash md5:3d600a46eb0f799a2cce166563219106)
Theorem hlt_ONORM_ORTHOGONAL_MATRIX_MUL_LEFT : forall N:set, N <> Empty -> forall A P :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N P = 1 -> hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N (hl_matrix_mul N N N P A) x) = hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x).
Admitted.

// HOL Light: Multivariate/determinants.ml:3393 / ONORM_ORTHOGONAL_MATRIX_MUL_RIGHT   (hash md5:792cc8a1f8135a2de53662cb475fe2c0)
Theorem hlt_ONORM_ORTHOGONAL_MATRIX_MUL_RIGHT : forall N:set, N <> Empty -> forall A P :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N P = 1 -> hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N (hl_matrix_mul N N N A P) x) = hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x).
Admitted.

// HOL Light: Multivariate/determinants.ml:3404 / ONORM_DIAGONALIZED_MATRIX   (hash md5:5c85ed4b065b306866c0477ce764c956)
Theorem hlt_ONORM_DIAGONALIZED_MATRIX : forall N:set, N <> Empty -> forall A D P :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N P = 1 /\ (hl_diagonal_matrix N N D = 1 /\ hl_matrix_mul N N N (hl_transp N N P) (hl_matrix_mul N N N D P) = A) -> hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x) = hl_sup (hl_GSPEC R (fun GEN_PVAR_3062 :e R => if exists i :e omega, hl_SETSPEC R GEN_PVAR_3062 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_real_abs (hl_vindex R N (hl_vindex (hl_ty_cart R N) N D i) i)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3415 / ONORM_DIAGONALIZED_COVARIANCE_MATRIX   (hash md5:0f64e6ad7baf420e798e0b179cf52c98)
Theorem hlt_ONORM_DIAGONALIZED_COVARIANCE_MATRIX : forall N:set, N <> Empty -> forall A D P :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N P = 1 /\ (hl_diagonal_matrix N N D = 1 /\ hl_matrix_mul N N N (hl_transp N N P) (hl_matrix_mul N N N D P) = hl_matrix_mul N N N (hl_transp N N A) A) -> hl_onorm N N (fun x :e hl_ty_cart R N => hl_matrix_vector_mul N N A x) = hl_sqrt (hl_sup (hl_GSPEC R (fun GEN_PVAR_3063 :e R => if exists i :e omega, hl_SETSPEC R GEN_PVAR_3063 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_real_abs (hl_vindex R N (hl_vindex (hl_ty_cart R N) N D i) i)) = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/determinants.ml:3432 / ORTHOGONAL_MATRIX_EXISTS_BASIS   (hash md5:947305b53cbbc4a0df68bc5ffdae9625)
Theorem hlt_ORTHOGONAL_MATRIX_EXISTS_BASIS : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_vector_norm N a = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> exists A :e hl_ty_cart (hl_ty_cart R N) N, hl_orthogonal_matrix N A = 1 /\ hl_matrix_vector_mul N N A (hl_basis N (hl_NUMERAL (hl_BIT1 hl_zero))) = a.
Admitted.

// HOL Light: Multivariate/determinants.ml:3464 / ORTHOGONAL_TRANSFORMATION_EXISTS_1   (hash md5:1d7571a2a57c65de4992c7c114e77a7f)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_EXISTS_1 : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_vector_norm N a = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vector_norm N b = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ f a = b.
Admitted.

// HOL Light: Multivariate/determinants.ml:3482 / ORTHOGONAL_TRANSFORMATION_EXISTS   (hash md5:c06e08330c18cf780d334597b0e9ede2)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_EXISTS : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_vector_norm N a = hl_vector_norm N b -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ f a = b.
Admitted.

// HOL Light: Multivariate/determinants.ml:3508 / ORTHOGONAL_TRANSFORMATION_INTO_SUBSPACE   (hash md5:1c09054348aad24fbb5adfd8ff56045c)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_INTO_SUBSPACE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_subspace N t = 1 /\ hl_le (hl_dim N s) (hl_dim N t) = 1) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) t = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3600 / ORTHOGONAL_TRANSFORMATION_ONTO_SUBSPACE   (hash md5:088747fa32a296db83298ea0bfcbe98c)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_ONTO_SUBSPACE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_subspace N t = 1 /\ hl_dim N s = hl_dim N t) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s = t.
Admitted.

// HOL Light: Multivariate/determinants.ml:3623 / rotation_matrix   (hash md5:d9b188286a5e10413fe6d2a56ce27dd6)
Theorem hlt_rotation_matrix_thm : forall A:set, A <> Empty -> forall Q :e hl_ty_cart (hl_ty_cart R A) A, hl_rotation_matrix A Q = 1 <-> hl_orthogonal_matrix A Q = 1 /\ hl_det A Q = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3626 / rotoinversion_matrix   (hash md5:570373455d8fce1b788d432c7fedf402)
Theorem hlt_rotoinversion_matrix_thm : forall A:set, A <> Empty -> forall Q :e hl_ty_cart (hl_ty_cart R A) A, hl_rotoinversion_matrix A Q = 1 <-> hl_orthogonal_matrix A Q = 1 /\ hl_det A Q = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/determinants.ml:3629 / ORTHOGONAL_ROTATION_OR_ROTOINVERSION   (hash md5:eb02070714b34b249698049e2fcf1144)
Theorem hlt_ORTHOGONAL_ROTATION_OR_ROTOINVERSION : forall A:set, A <> Empty -> forall Q :e hl_ty_cart (hl_ty_cart R A) A, hl_orthogonal_matrix A Q = 1 <-> hl_rotation_matrix A Q = 1 \/ hl_rotoinversion_matrix A Q = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3633 / ROTATION_MATRIX_1   (hash md5:7f41bbe7cb4fd225a2984efce5f97229)
Theorem hlt_ROTATION_MATRIX_1 : forall N:set, N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart R N) N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_rotation_matrix N m = 1 <-> m = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/determinants.ml:3642 / ROTOINVERSION_MATRIX_1   (hash md5:d3b0ae4e5beff8326aa43566876ba164)
Theorem hlt_ROTOINVERSION_MATRIX_1 : forall N:set, N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart R N) N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_rotoinversion_matrix N m = 1 <-> m = hl_matrix_neg N N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:3653 / ROTATION_MATRIX_2   (hash md5:bd7052a787f6fbbedb40cb2da974ae28)
Theorem hlt_ROTATION_MATRIX_2 : forall A :e hl_ty_cart (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)), hl_rotation_matrix (idx_n (2 * dimindex 1)) A = 1 <-> hl_real_add (hl_real_pow (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) /\ hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_neg (hl_vindex R (idx_n (2 * dimindex 1)) (hl_vindex (hl_ty_cart R (idx_n (2 * dimindex 1))) (idx_n (2 * dimindex 1)) A (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:3664 / ROTATION_MATRIX_EXISTS_BASIS   (hash md5:4a82ca114f47c08325bbc87a7f42599e)
Theorem hlt_ROTATION_MATRIX_EXISTS_BASIS : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_vector_norm N a = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> exists A :e hl_ty_cart (hl_ty_cart R N) N, hl_rotation_matrix N A = 1 /\ hl_matrix_vector_mul N N A (hl_basis N (hl_NUMERAL (hl_BIT1 hl_zero))) = a.
Admitted.

// HOL Light: Multivariate/determinants.ml:3702 / ROTATION_EXISTS_1   (hash md5:cf733a3c1e843abebeca760bc5351c63)
Theorem hlt_ROTATION_EXISTS_1 : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_vector_norm N a = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vector_norm N b = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (hl_det N (hl_matrix N N f) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ f a = b).
Admitted.

// HOL Light: Multivariate/determinants.ml:3722 / ROTATION_EXISTS   (hash md5:775d3deabe1c230161e15c1cfdbae32b)
Theorem hlt_ROTATION_EXISTS : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_vector_norm N a = hl_vector_norm N b -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (hl_det N (hl_matrix N N f) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ f a = b).
Admitted.

// HOL Light: Multivariate/determinants.ml:3746 / ROTATION_RIGHTWARD_LINE   (hash md5:15c23afb6f67028c0d6766a8b610cde5)
Theorem hlt_ROTATION_RIGHTWARD_LINE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> exists b :e R, exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ ((hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_det N (hl_matrix N N f) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (f (hl_vmul N b (hl_basis N k)) = a /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) b = 1)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3769 / EULER_ROTATION_THEOREM   (hash md5:c4343696db5a376f655e7ae03d5592c5)
Theorem hlt_EULER_ROTATION_THEOREM : forall A :e hl_ty_cart (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)), hl_rotation_matrix (idx_n (2 * dimindex 1 + 1)) A = 1 -> exists v :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), ~ v = hl_vec (idx_n (2 * dimindex 1 + 1)) (hl_NUMERAL hl_zero) /\ hl_matrix_vector_mul (idx_n (2 * dimindex 1 + 1)) (idx_n (2 * dimindex 1 + 1)) A v = v.
Admitted.

// HOL Light: Multivariate/determinants.ml:3782 / EULER_ROTOINVERSION_THEOREM   (hash md5:4fb3d094fa973bc5a00d8d12d809bdfb)
Theorem hlt_EULER_ROTOINVERSION_THEOREM : forall A :e hl_ty_cart (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (idx_n (2 * dimindex 1 + 1)), hl_rotoinversion_matrix (idx_n (2 * dimindex 1 + 1)) A = 1 -> exists v :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), ~ v = hl_vec (idx_n (2 * dimindex 1 + 1)) (hl_NUMERAL hl_zero) /\ hl_matrix_vector_mul (idx_n (2 * dimindex 1 + 1)) (idx_n (2 * dimindex 1 + 1)) A v = hl_vector_neg (idx_n (2 * dimindex 1 + 1)) v.
Admitted.

// HOL Light: Multivariate/determinants.ml:3800 / ROTATION_LOWDIM_HORIZONTAL   (hash md5:258eb8b75dfae0755ee0f4917001fb56)
Theorem hlt_ROTATION_LOWDIM_HORIZONTAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lt (hl_dim N s) (hl_dimindex N (hl_UNIV N)) = 1 -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (hl_det N (hl_matrix N N f) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3064 :e hl_ty_cart R N => if exists z :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3064 (if hl_vindex R N z (hl_dimindex N (hl_UNIV N)) = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) z = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:3832 / ORTHOGONAL_TRANSFORMATION_LOWDIM_HORIZONTAL   (hash md5:c0979a7b284975eccb76b18035ec8756)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_LOWDIM_HORIZONTAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lt (hl_dim N s) (hl_dimindex N (hl_UNIV N)) = 1 -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3065 :e hl_ty_cart R N => if exists z :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3065 (if hl_vindex R N z (hl_dimindex N (hl_UNIV N)) = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) z = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3840 / ORTHOGONAL_TRANSFORMATION_BETWEEN_ORTHOGONAL_SETS   (hash md5:c04a6b6cb72caefc7e649a92eb657861)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_BETWEEN_ORTHOGONAL_SETS : forall N:set, N <> Empty -> forall v w :e hl_ty_cart R N :^: omega, forall k :e 2 :^: omega, hl_pairwise omega (fun i :e omega => fun j :e omega => hl_orthogonal N (v i) (v j)) k = 1 /\ (hl_pairwise omega (fun i :e omega => fun j :e omega => hl_orthogonal N (w i) (w j)) k = 1 /\ (forall i :e omega, hl_IN omega i k = 1 -> hl_vector_norm N (v i) = hl_vector_norm N (w i))) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ forall i :e omega, hl_IN omega i k = 1 -> f (v i) = w i.
Admitted.

// HOL Light: Multivariate/determinants.ml:4039 / reflect_along   (hash md5:156b6726f5c586da5e58bdc0c9fc5324)
Theorem hlt_reflect_along_thm : forall N:set, N <> Empty -> forall x v :e hl_ty_cart R N, hl_reflect_along N v x = hl_vector_sub N x (hl_vmul N (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_div (hl_dot N x v) (hl_dot N v v))) v).
Admitted.

// HOL Light: Multivariate/determinants.ml:4042 / REFLECT_ALONG_ADD   (hash md5:9d59e2b12e9d8de17062d3e008b76267)
Theorem hlt_REFLECT_ALONG_ADD : forall N:set, N <> Empty -> forall v x y :e hl_ty_cart R N, hl_reflect_along N v (hl_vector_add N x y) = hl_vector_add N (hl_reflect_along N v x) (hl_reflect_along N v y).
Admitted.

// HOL Light: Multivariate/determinants.ml:4051 / REFLECT_ALONG_MUL   (hash md5:bc8076dac8fea6b2bd64ee072b112190)
Theorem hlt_REFLECT_ALONG_MUL : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, forall a :e R, forall x :e hl_ty_cart R N, hl_reflect_along N v (hl_vmul N a x) = hl_vmul N a (hl_reflect_along N v x).
Admitted.

// HOL Light: Multivariate/determinants.ml:4057 / LINEAR_REFLECT_ALONG   (hash md5:fcc83e0b2e9c8806ecdcdf690290463b)
Theorem hlt_LINEAR_REFLECT_ALONG : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, hl_linear N N (hl_reflect_along N v) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:4061 / REFLECT_ALONG_0   (hash md5:0500f37ad55b48e0598e285570fb614b)
Theorem hlt_REFLECT_ALONG_0 : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, hl_reflect_along N v (hl_vec N (hl_NUMERAL hl_zero)) = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:4065 / REFLECT_ALONG_NEG   (hash md5:be404e0cf64ee302dc1e8c35d944fd75)
Theorem hlt_REFLECT_ALONG_NEG : forall N:set, N <> Empty -> forall v x :e hl_ty_cart R N, hl_reflect_along N v (hl_vector_neg N x) = hl_vector_neg N (hl_reflect_along N v x).
Admitted.

// HOL Light: Multivariate/determinants.ml:4069 / REFLECT_ALONG_REFL   (hash md5:a41b1de99dc9331071dc292713609878)
Theorem hlt_REFLECT_ALONG_REFL : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, hl_reflect_along N v v = hl_vector_neg N v.
Admitted.

// HOL Light: Multivariate/determinants.ml:4076 / REFLECT_ALONG_INVOLUTION   (hash md5:b856a73b0b78f81eef292acc009dcc33)
Theorem hlt_REFLECT_ALONG_INVOLUTION : forall N:set, N <> Empty -> forall v x :e hl_ty_cart R N, hl_reflect_along N v (hl_reflect_along N v x) = x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4082 / REFLECT_ALONG_GALOIS   (hash md5:51963ea851d96927e97c9c7464dafa16)
Theorem hlt_REFLECT_ALONG_GALOIS : forall N:set, N <> Empty -> forall v p q :e hl_ty_cart R N, hl_reflect_along N v p = q <-> p = hl_reflect_along N v q.
Admitted.

// HOL Light: Multivariate/determinants.ml:4086 / REFLECT_ALONG_EQ_0   (hash md5:3463afc2fc13e23f390461e032fec6b0)
Theorem hlt_REFLECT_ALONG_EQ_0 : forall N:set, N <> Empty -> forall v x :e hl_ty_cart R N, hl_reflect_along N v x = hl_vec N (hl_NUMERAL hl_zero) <-> x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/determinants.ml:4090 / ORTHOGONAL_TRANSFORMATION_REFLECT_ALONG   (hash md5:74c7379174c0f21b32ed1d41256d9ffa)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_REFLECT_ALONG : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, hl_orthogonal_transformation N (hl_reflect_along N v) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:4104 / REFLECT_ALONG_EQ_SELF   (hash md5:db8aea5113bc12fb297ba542ec60b813)
Theorem hlt_REFLECT_ALONG_EQ_SELF : forall N:set, N <> Empty -> forall v x :e hl_ty_cart R N, hl_reflect_along N v x = x <-> hl_orthogonal N v x = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:4113 / REFLECT_ALONG_ZERO   (hash md5:beb8cea496512839c87ca4ddbc81cb25)
Theorem hlt_REFLECT_ALONG_ZERO : forall N:set, N <> Empty -> hl_reflect_along N (hl_vec N (hl_NUMERAL hl_zero)) = hl_I (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/determinants.ml:4117 / REFLECT_ALONG_LINEAR_IMAGE   (hash md5:3e13064c416b4a4d93d154088412923f)
Theorem hlt_REFLECT_ALONG_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall v x :e hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x1 :e hl_ty_cart R M, hl_vector_norm N (f x1) = hl_vector_norm M x1) -> hl_reflect_along N (f v) (f x) = f (hl_reflect_along M v x).
Admitted.

// HOL Light: Multivariate/determinants.ml:4126 / REFLECT_ALONG_SCALE   (hash md5:3dfd9c93314e727ae10bdd013b943a2d)
Theorem hlt_REFLECT_ALONG_SCALE : forall N:set, N <> Empty -> forall c :e R, forall v x :e hl_ty_cart R N, ~ c = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_reflect_along N (hl_vmul N c v) x = hl_reflect_along N v x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4137 / REFLECT_ALONG_NEGATION   (hash md5:7df32c81bbe679b7c9e9fceb010e9b34)
Theorem hlt_REFLECT_ALONG_NEGATION : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, hl_reflect_along N (hl_vector_neg N v) = hl_reflect_along N v.
Admitted.

// HOL Light: Multivariate/determinants.ml:4142 / REFLECT_ALONG_1D   (hash md5:99b7223c0c796803c57efdd75786caa2)
Theorem hlt_REFLECT_ALONG_1D : forall N:set, N <> Empty -> forall v x :e hl_ty_cart R N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> hl_reflect_along N v x = hl_COND (hl_ty_cart R N) (if v = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x (hl_vector_neg N x).
Admitted.

// HOL Light: Multivariate/determinants.ml:4152 / REFLECT_ALONG_BASIS   (hash md5:6cabc7fc70aaa3ccd4bd8779f0b20abf)
Theorem hlt_REFLECT_ALONG_BASIS : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_reflect_along N (hl_basis N k) x = hl_vector_sub N x (hl_vmul N (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R N x k)) (hl_basis N k)).
Admitted.

// HOL Light: Multivariate/determinants.ml:4158 / MATRIX_REFLECT_ALONG_BASIS   (hash md5:6e13d4aa39790f013a9f446f7ec9570b)
Theorem hlt_MATRIX_REFLECT_ALONG_BASIS : forall N:set, N <> Empty -> forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_matrix N N (hl_reflect_along N (hl_basis N k)) = hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if i = k /\ j = k then 1 else 0) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_COND R (if i = j then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:4172 / ROTOINVERSION_MATRIX_REFLECT_ALONG   (hash md5:93528e16c05e13828ee462f78cda39a8)
Theorem hlt_ROTOINVERSION_MATRIX_REFLECT_ALONG : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, ~ v = hl_vec N (hl_NUMERAL hl_zero) -> hl_rotoinversion_matrix N (hl_matrix N N (hl_reflect_along N v)) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:4229 / DET_MATRIX_REFLECT_ALONG   (hash md5:16d3204de4cbcda7f5a4732c813f9251)
Theorem hlt_DET_MATRIX_REFLECT_ALONG : forall N:set, N <> Empty -> forall v :e hl_ty_cart R N, hl_det N (hl_matrix N N (hl_reflect_along N v)) = hl_COND R (if v = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:4237 / REFLECT_ALONG_BASIS_COMPONENT   (hash md5:37bdc4ba58fc847cc1d4a375d3b8560e)
Theorem hlt_REFLECT_ALONG_BASIS_COMPONENT : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_vindex R N (hl_reflect_along N (hl_basis N i) x) j = hl_COND R (if j = i then 1 else 0) (hl_real_neg (hl_vindex R N x j)) (hl_vindex R N x j).
Admitted.

// HOL Light: Multivariate/determinants.ml:4247 / REFLECT_BASIS_ALONG_BASIS   (hash md5:a91734a360886d55ba5ed1df87a98927)
Theorem hlt_REFLECT_BASIS_ALONG_BASIS : forall N:set, N <> Empty -> forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_reflect_along N (hl_basis N i) (hl_basis N j) = hl_COND (hl_ty_cart R N) (if i = j then 1 else 0) (hl_vector_neg N (hl_basis N j)) (hl_basis N j).
Admitted.

// HOL Light: Multivariate/determinants.ml:4256 / NORM_REFLECT_ALONG   (hash md5:25176a0138c2f85b029e85f52c77fffb)
Theorem hlt_NORM_REFLECT_ALONG : forall N:set, N <> Empty -> forall v x :e hl_ty_cart R N, hl_vector_norm N (hl_reflect_along N v x) = hl_vector_norm N x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4261 / REFLECT_ALONG_EQ   (hash md5:8dbda53e8e74489af4fb397a97e4c44d)
Theorem hlt_REFLECT_ALONG_EQ : forall N:set, N <> Empty -> forall v x y :e hl_ty_cart R N, hl_reflect_along N v x = hl_reflect_along N v y <-> x = y.
Admitted.

// HOL Light: Multivariate/determinants.ml:4266 / REFLECT_ALONG_SURJECTIVE   (hash md5:f29b46e9ca6a92b7d92994e90c068a13)
Theorem hlt_REFLECT_ALONG_SURJECTIVE : forall N:set, N <> Empty -> forall v y :e hl_ty_cart R N, exists x :e hl_ty_cart R N, hl_reflect_along N v x = y.
Admitted.

// HOL Light: Multivariate/determinants.ml:4270 / REFLECT_ALONG_SWITCH   (hash md5:80caa8d145bfed5793cfe3ca7b6b80cf)
Theorem hlt_REFLECT_ALONG_SWITCH : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_vector_norm N a = hl_vector_norm N b /\ ~ a = b -> hl_reflect_along N (hl_vector_sub N b a) a = b /\ hl_reflect_along N (hl_vector_sub N b a) b = a.
Admitted.

// HOL Light: Multivariate/determinants.ml:4287 / ROTOINVERSION_EXISTS_GEN   (hash md5:c5a46c6c62773b283212f866298a6be4)
Theorem hlt_ROTOINVERSION_EXISTS_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ (~ a = b /\ hl_vector_norm N a = hl_vector_norm N b))) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s = s /\ ((forall x :e hl_ty_cart R N, hl_orthogonal N a x = 1 /\ hl_orthogonal N b x = 1 -> f x = x) /\ (hl_det N (hl_matrix N N f) = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ (f a = b /\ f b = a)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:4307 / ORTHOGONAL_TRANSFORMATION_EXISTS_GEN   (hash md5:4844c8a3db14bf95f52db2ffc2e59f2f)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_EXISTS_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_subspace N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ hl_vector_norm N a = hl_vector_norm N b)) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s = s /\ ((forall x :e hl_ty_cart R N, hl_orthogonal N a x = 1 /\ hl_orthogonal N b x = 1 -> f x = x) /\ (f a = b /\ f b = a))).
Admitted.

// HOL Light: Multivariate/determinants.ml:4324 / ORTHOGONAL_TRANSFORMATION_GENERATED_BY_REFLECTIONS   (hash md5:3b511c58efa0c9d50ac5a119db6d707c)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_GENERATED_BY_REFLECTIONS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall n :e omega, hl_orthogonal_transformation N f = 1 /\ hl_le (hl_dimindex N (hl_UNIV N)) (hl_add (hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_3067 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_3067 (if f x = x then 1 else 0) x = 1 then 1 else 0))) n) = 1 -> exists l :e finseq (hl_ty_cart R N), hl_le (hl_LENGTH (hl_ty_cart R N) l) n = 1 /\ (hl_ALL (hl_ty_cart R N) (fun v :e hl_ty_cart R N => if ~ v = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) l = 1 /\ f = hl_ITLIST (hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) (fun v :e hl_ty_cart R N => fun h :e hl_ty_cart R N :^: hl_ty_cart R N => hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (hl_reflect_along N v) h) l (hl_I (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/determinants.ml:4389 / ORTHOGONAL_TRANSFORMATION_REFLECT_INDUCT   (hash md5:d4141c3b1a249db9087826f4c341d8ed)
Theorem hlt_ORTHOGONAL_TRANSFORMATION_REFLECT_INDUCT : forall N:set, N <> Empty -> forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R N), P (hl_I (hl_ty_cart R N)) = 1 /\ (forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (~ a = hl_vec N (hl_NUMERAL hl_zero) /\ P f = 1) -> P (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (hl_reflect_along N a) f) = 1) -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> P f = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:4823 / COLLINEAR_TRANSLATION_EQ   (hash md5:07b90e9040a3520c6656a0583ce992c1)
Theorem hlt_COLLINEAR_TRANSLATION_EQ : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_collinear A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) s) = 1 <-> hl_collinear A s = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:4829 / COLLINEAR_TRANSLATION   (hash md5:2dbea1cf60e596b4397629769425e942)
Theorem hlt_COLLINEAR_TRANSLATION : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a :e hl_ty_cart R A, hl_collinear A s = 1 -> hl_collinear A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) s) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:4833 / COLLINEAR_LINEAR_IMAGE   (hash md5:9da21df35946fb6b93ce5ea82d287dd5)
Theorem hlt_COLLINEAR_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_collinear A s = 1 /\ hl_linear A B f = 1 -> hl_collinear B (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f s) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:4839 / COLLINEAR_LINEAR_IMAGE_EQ   (hash md5:95acadb7e5a96d579ac5c571403fd2f0)
Theorem hlt_COLLINEAR_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ (forall x y :e hl_ty_cart R B, f x = f y -> x = y) -> (hl_collinear A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1 <-> hl_collinear B s = 1).
Admitted.

