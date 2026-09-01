// hol2mg certification module (private): shard determinants of profile multivariate.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Multivariate/determinants.ml:18 / trace   (hash md5:95beb87bc610b9f60a9dcbe98a5601ac)
// not bridged: 
Theorem trace_thm : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, trace N A = finsum (idx N) (fun i:set => A i i).
Admitted.

// HOL Light: Multivariate/determinants.ml:21 / TRACE_0   (hash md5:b535a7aec682c77cb10cc39cccd14369)
// not bridged: 
Theorem TRACE_0 : forall A:set, A <> Empty -> trace A (mat A A 0) = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:25 / TRACE_I   (hash md5:5d77dce5d15e6bc02ce077456ac4360b)
// not bridged: 
Theorem TRACE_I : forall N:set, N <> Empty -> trace N (mat N N 1) = dimindex N.
Admitted.

// HOL Light: Multivariate/determinants.ml:30 / TRACE_ADD   (hash md5:3769d30edaedebe30498897546a17d75)
// not bridged: 
Theorem TRACE_ADD : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, trace N (matrix_add N N A B) = trace N A + trace N B.
Admitted.

// HOL Light: Multivariate/determinants.ml:34 / TRACE_SUB   (hash md5:174c946c30cfac17696d5943d9572fc2)
// not bridged: 
Theorem TRACE_SUB : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, trace N (matrix_sub N N A B) = trace N A + - trace N B.
Admitted.

// HOL Light: Multivariate/determinants.ml:38 / TRACE_CMUL   (hash md5:50f89776dd1c01e2fdffcf7fbff97cb6)
// not bridged: 
Theorem TRACE_CMUL : forall N:set, N <> Empty -> forall c :e R, forall A :e R :^: idx N :^: idx N, trace N (matrix_cmul N N c A) = c * trace N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:42 / TRACE_NEG   (hash md5:567c2f159b0f527e55439c8f631c6d69)
// not bridged: 
Theorem TRACE_NEG : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, trace N (matrix_neg N N A) = - trace N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:46 / TRACE_MUL_SYM   (hash md5:0fbbb19a58fe97e8c82d461b11c2061a)
// not bridged: 
Theorem TRACE_MUL_SYM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall B :e R :^: idx N :^: idx M, trace N (matrix_mul N M N A B) = trace M (matrix_mul M N M B A).
Admitted.

// HOL Light: Multivariate/determinants.ml:51 / TRACE_TRANSP   (hash md5:64af5ca45bdda5f954f01cc7cac87250)
// not bridged: 
Theorem TRACE_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, trace N (transp N N A) = trace N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:55 / TRACE_SIMILAR   (hash md5:358c5a87319681d822e8378c3e5c6661)
// not bridged: 
Theorem TRACE_SIMILAR : forall N:set, N <> Empty -> forall A U :e R :^: idx N :^: idx N, invertible N N U -> trace N (matrix_mul N N N (matrix_inv N N U) (matrix_mul N N N A U)) = trace N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:61 / TRACE_MUL_CYCLIC   (hash md5:55fbe3218e1d41bb4265002cc60633b7)
// not bridged: 
Theorem TRACE_MUL_CYCLIC : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx P :^: idx M, forall B :e R :^: idx N :^: idx P, forall C :e R :^: idx M :^: idx N, trace M (matrix_mul M P M A (matrix_mul P N M B C)) = trace P (matrix_mul P N P B (matrix_mul N M P C A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:71 / det   (hash md5:5118abb88001723b9f346954e45591df)
// not bridged: 
Theorem det_thm : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, det N A = finsum {p :e omega :^: omega | permutes omega (fun x:set => p x) (idx N)} (fun p:set => sign omega (fun x:set => p x) * finprod (idx N) (fun i:set => A i (p i))).
Admitted.

// HOL Light: Multivariate/determinants.ml:80 / IN_DIMINDEX_SWAP   (hash md5:2f4129747a42a236c0613c27e2e28cfe)
// not bridged: 
Theorem IN_DIMINDEX_SWAP : forall N:set, N <> Empty -> forall m n j :e omega, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ (1 <= j /\ j <= dimindex N)))) -> 1 <= swap omega (m,n) j /\ swap omega (m,n) j <= dimindex N.
Admitted.

// HOL Light: Multivariate/determinants.ml:87 / LAMBDA_BETA_PERM   (hash md5:0097751ddc7fafa7b66b545f574e9025)
// not bridged: 
Theorem LAMBDA_BETA_PERM : forall A N:set, A <> Empty -> N <> Empty -> forall g:set -> set, (forall x :e omega, g x :e A) -> forall p:set -> set, (forall x :e omega, p x :e omega) -> forall i :e omega, permutes omega p (idx N) /\ (1 <= i /\ i <= dimindex N) -> (fun i :e idx N => g i) (p i) = g (p i).
Admitted.

// HOL Light: Multivariate/determinants.ml:92 / PRODUCT_PERMUTE   (hash md5:9e9a31ddd26c046c8e00767f858cb98c)
// not bridged: 
Theorem PRODUCT_PERMUTE : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e A, f x :e R) -> forall p:set -> set, (forall x :e A, p x :e A) -> forall s c= A, permutes A p s -> finprod s f = finprod s (fun x:set => f (p x)).
Admitted.

// HOL Light: Multivariate/determinants.ml:97 / PRODUCT_PERMUTE_NUMSEG   (hash md5:315f55d7150d230ef60ca4d73e9bb4fa)
// not bridged: 
Theorem PRODUCT_PERMUTE_NUMSEG : forall f:set -> set, (forall x :e omega, f x :e R) -> forall p:set -> set, (forall x :e omega, p x :e omega) -> forall m n :e omega, permutes omega p {i :e omega | m <= i /\ i <= n} -> finprod {i :e omega | m <= i /\ i <= n} f = finprod {i :e omega | m <= i /\ i <= n} (fun x:set => f (p x)).
Admitted.

// HOL Light: Multivariate/determinants.ml:101 / REAL_MUL_SUM   (hash md5:267d07fb6fea5d047948e3be6fa919ef)
Theorem hlt_REAL_MUL_SUM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e R :^: A, forall g :e R :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_real_mul (hl_sum A s f) (hl_sum B t g) = hl_sum A s (fun i :e A => hl_sum B t (fun j :e B => hl_real_mul (f i) (g j))).
Admitted.
Theorem REAL_MUL_SUM_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e R :^: A, forall g :e R :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_real_mul (hl_sum A s f) (hl_sum B t g) = hl_sum A s (fun i :e A => hl_sum B t (fun j :e B => hl_real_mul (f i) (g j)))) -> (forall A B:set, A <> Empty -> B <> Empty -> forall s c= A, forall t c= B, forall f:set -> set, (forall x :e A, f x :e R) -> forall g:set -> set, (forall x :e B, g x :e R) -> finite s /\ finite t -> finsum s f * finsum t g = finsum s (fun i:set => finsum t (fun j:set => f i * g j))).
exact (fun H__top A B HAne HBne => ((imp_forall_sub (A) (fun s => forall t :e 2 :^: B, forall f :e R :^: A, forall g :e R :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_real_mul (hl_sum A s f) (hl_sum B t g) = hl_sum A s (fun i :e A => hl_sum B t (fun j :e B => hl_real_mul (f i) (g j)))) (fun s => forall t c= B, forall f:set -> set, (forall x :e A, f x :e R) -> forall g:set -> set, (forall x :e B, g x :e R) -> finite s /\ finite t -> finsum s f * finsum t g = finsum s (fun i:set => finsum t (fun j:set => f i * g j))) (fun s Hss => (imp_forall_sub (B) (fun t => forall f :e R :^: A, forall g :e R :^: B, hl_FINITE A (hl_chi A s) = 1 /\ hl_FINITE B t = 1 -> hl_real_mul (hl_sum A (hl_chi A s) f) (hl_sum B t g) = hl_sum A (hl_chi A s) (fun i :e A => hl_sum B t (fun j :e B => hl_real_mul (f i) (g j)))) (fun t => forall f:set -> set, (forall x :e A, f x :e R) -> forall g:set -> set, (forall x :e B, g x :e R) -> finite s /\ finite t -> finsum s f * finsum t g = finsum s (fun i:set => finsum t (fun j:set => f i * g j))) (fun t Hts => (imp_forall_fun (A) (R) (fun f => forall g :e R :^: B, hl_FINITE A (hl_chi A s) = 1 /\ hl_FINITE B (hl_chi B t) = 1 -> hl_real_mul (hl_sum A (hl_chi A s) f) (hl_sum B (hl_chi B t) g) = hl_sum A (hl_chi A s) (fun i :e A => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (f i) (g j)))) (fun f => forall g:set -> set, (forall x :e B, g x :e R) -> finite s /\ finite t -> finsum s f * finsum t g = finsum s (fun i:set => finsum t (fun j:set => f i * g j))) (fun f Hfc => (imp_forall_fun (B) (R) (fun g => hl_FINITE A (hl_chi A s) = 1 /\ hl_FINITE B (hl_chi B t) = 1 -> hl_real_mul (hl_sum A (hl_chi A s) (hl_lam A f)) (hl_sum B (hl_chi B t) g) = hl_sum A (hl_chi A s) (fun i :e A => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (g j)))) (fun g => finite s /\ finite t -> finsum s f * finsum t g = finsum s (fun i:set => finsum t (fun j:set => f i * g j))) (fun g Hgc => (fun H__L : ((hl_FINITE A (hl_chi A s) = 1 /\ hl_FINITE B (hl_chi B t) = 1) -> (hl_real_mul (hl_sum A (hl_chi A s) (hl_lam A f)) (hl_sum B (hl_chi B t) (hl_lam B g)) = hl_sum A (hl_chi A s) (fun i :e A => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j))))) => fun H__hyp4 : (finite s /\ finite t) => (imp_eq (hl_real_mul (hl_sum A (hl_chi A s) (hl_lam A f)) (hl_sum B (hl_chi B t) (hl_lam B g))) (finsum s f * finsum t g) (hl_sum A (hl_chi A s) (fun i :e A => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j)))) (finsum s (fun i:set => finsum t (fun j:set => f i * g j))) (((hl_rep_chi (B) t Hts) (fun hl__u hl__v => hl_sum B (hl_chi B t) (hl_lam B g) = finsum hl__u g) ((hl_sum_compat) (B) HBne (hl_chi B t) (hl_chi_Pi (B) t) (hl_lam B g) (hl_lam_Pi (B) (R) g Hgc) (fun hl__x:set => (g) hl__x) ((hl_lam_ap (B) g)))) (fun hl__u hl__v => hl_real_mul (hl_sum A (hl_chi A s) (hl_lam A f)) (hl_sum B (hl_chi B t) (hl_lam B g)) = finsum s f * hl__u) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_sum A (hl_chi A s) (hl_lam A f) = finsum hl__u f) ((hl_sum_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)))) (fun hl__u hl__v => hl_real_mul (hl_sum A (hl_chi A s) (hl_lam A f)) (hl_sum B (hl_chi B t) (hl_lam B g)) = hl__u * hl_sum B (hl_chi B t) (hl_lam B g)) ((hl_real_mul_compat) (hl_sum A (hl_chi A s) (hl_lam A f)) (setexp_ap (R :^: A) (R) (hl_sum A (hl_chi A s)) (setexp_ap (2 :^: A) (R :^: (R :^: A)) (hl_sum A) ((hl_sum_in) (A) HAne) (hl_chi A s) (hl_chi_Pi (A) s)) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc)) (hl_sum B (hl_chi B t) (hl_lam B g)) (setexp_ap (R :^: B) (R) (hl_sum B (hl_chi B t)) (setexp_ap (2 :^: B) (R :^: (R :^: B)) (hl_sum B) ((hl_sum_in) (B) HBne) (hl_chi B t) (hl_chi_Pi (B) t)) (hl_lam B g) (hl_lam_Pi (B) (R) g Hgc))))) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_sum A (hl_chi A s) (fun i :e A => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j))) = finsum hl__u (fun i:set => finsum t (fun j:set => f i * g j))) ((hl_sum_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s) (fun i :e A => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j))) (lam_Pi (A) (fun _ => R) (fun i => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j))) (fun i Hi => (setexp_ap (R :^: B) (R) (hl_sum B (hl_chi B t)) (setexp_ap (2 :^: B) (R :^: (R :^: B)) (hl_sum B) ((hl_sum_in) (B) HBne) (hl_chi B t) (hl_chi_Pi (B) t)) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j)) (lam_Pi (B) (fun _ => R) (fun j => hl_real_mul (hl_lam A f i) (hl_lam B g j)) (fun j Hj => (setexp_ap (R) (R) (hl_real_mul (hl_lam A f i)) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (hl_lam A f i) (setexp_ap (A) (R) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (i) Hi)) (hl_lam B g j) (setexp_ap (B) (R) (hl_lam B g) (hl_lam_Pi (B) (R) g Hgc) (j) Hj))))))) (fun i:set => finsum t (fun j:set => f i * g j)) ((fun i Hi => (eq_trans_i ((fun i :e A => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j))) i) (hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j))) (finsum t (fun j:set => f i * g j)) (beta (A) (fun i:set => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j))) i Hi) ((hl_rep_chi (B) t Hts) (fun hl__u hl__v => hl_sum B (hl_chi B t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j)) = finsum hl__u (fun j:set => f i * g j)) ((hl_sum_compat) (B) HBne (hl_chi B t) (hl_chi_Pi (B) t) (fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j)) (lam_Pi (B) (fun _ => R) (fun j => hl_real_mul (hl_lam A f i) (hl_lam B g j)) (fun j Hj => (setexp_ap (R) (R) (hl_real_mul (hl_lam A f i)) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (hl_lam A f i) (setexp_ap (A) (R) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (i) Hi)) (hl_lam B g j) (setexp_ap (B) (R) (hl_lam B g) (hl_lam_Pi (B) (R) g Hgc) (j) Hj)))) (fun j:set => f i * g j) ((fun j Hj => (eq_trans_i ((fun j :e B => hl_real_mul (hl_lam A f i) (hl_lam B g j)) j) (hl_real_mul (hl_lam A f i) (hl_lam B g j)) (f i * g j) (beta (B) (fun j:set => hl_real_mul (hl_lam A f i) (hl_lam B g j)) j Hj) (((hl_lam_ap (B) g) (j) Hj) (fun hl__u hl__v => hl_real_mul (hl_lam A f i) (hl_lam B g j) = f i * hl__u) (((hl_lam_ap (A) f) (i) Hi) (fun hl__u hl__v => hl_real_mul (hl_lam A f i) (hl_lam B g j) = hl__u * hl_lam B g j) ((hl_real_mul_compat) (hl_lam A f i) (setexp_ap (A) (R) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (i) Hi) (hl_lam B g j) (setexp_ap (B) (R) (hl_lam B g) (hl_lam_Pi (B) (R) g Hgc) (j) Hj))))))))))))))) (H__L ((imp_and_dep_bwd (hl_FINITE A (hl_chi A s) = 1) (finite s) (hl_FINITE B (hl_chi B t) = 1) (finite t) (iffER (hl_FINITE A (hl_chi A s) = 1) (finite s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_FINITE A (hl_chi A s) = 1 <-> finite hl__u) ((hl_FINITE_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s)))) (fun H__and5 : (finite s) => (iffER (hl_FINITE B (hl_chi B t) = 1) (finite t) ((hl_rep_chi (B) t Hts) (fun hl__u hl__v => hl_FINITE B (hl_chi B t) = 1 <-> finite hl__u) ((hl_FINITE_compat) (B) HBne (hl_chi B t) (hl_chi_Pi (B) t)))))) H__hyp4))))))))))) (H__top A B HAne HBne))).
Qed.
Theorem REAL_MUL_SUM : forall A B:set, A <> Empty -> B <> Empty -> forall s c= A, forall t c= B, forall f:set -> set, (forall x :e A, f x :e R) -> forall g:set -> set, (forall x :e B, g x :e R) -> finite s /\ finite t -> finsum s f * finsum t g = finsum s (fun i:set => finsum t (fun j:set => f i * g j)).
exact (REAL_MUL_SUM_bridge hlt_REAL_MUL_SUM).
Admitted.

// HOL Light: Multivariate/determinants.ml:108 / REAL_MUL_SUM_NUMSEG   (hash md5:bb76eed87051262a393b7d786f4b9ed7)
Theorem hlt_REAL_MUL_SUM_NUMSEG : forall f g :e R :^: omega, forall m n p q :e omega, hl_real_mul (hl_sum omega (hl_numseg m n) f) (hl_sum omega (hl_numseg p q) g) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (f i) (g j))).
Admitted.
Theorem REAL_MUL_SUM_NUMSEG_bridge : (forall f g :e R :^: omega, forall m n p q :e omega, hl_real_mul (hl_sum omega (hl_numseg m n) f) (hl_sum omega (hl_numseg p q) g) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (f i) (g j)))) -> (forall f:set -> set, (forall x :e omega, f x :e R) -> forall g:set -> set, (forall x :e omega, g x :e R) -> forall m n p q :e omega, finsum {i :e omega | m <= i /\ i <= n} f * finsum {i :e omega | p <= i /\ i <= q} g = finsum {i :e omega | m <= i /\ i <= n} (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j))).
exact (fun H__top => ((imp_forall_fun (omega) (R) (fun f => forall g :e R :^: omega, forall m n p q :e omega, hl_real_mul (hl_sum omega (hl_numseg m n) f) (hl_sum omega (hl_numseg p q) g) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (f i) (g j)))) (fun f => forall g:set -> set, (forall x :e omega, g x :e R) -> forall m n p q :e omega, finsum {i :e omega | m <= i /\ i <= n} f * finsum {i :e omega | p <= i /\ i <= q} g = finsum {i :e omega | m <= i /\ i <= n} (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j))) (fun f Hfc => (imp_forall_fun (omega) (R) (fun g => forall m n p q :e omega, hl_real_mul (hl_sum omega (hl_numseg m n) (hl_lam omega f)) (hl_sum omega (hl_numseg p q) g) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (g j)))) (fun g => forall m n p q :e omega, finsum {i :e omega | m <= i /\ i <= n} f * finsum {i :e omega | p <= i /\ i <= q} g = finsum {i :e omega | m <= i /\ i <= n} (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j))) (fun g Hgc => (imp_forall_in (omega) (fun m => forall n p q :e omega, hl_real_mul (hl_sum omega (hl_numseg m n) (hl_lam omega f)) (hl_sum omega (hl_numseg p q) (hl_lam omega g)) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)))) (fun m => forall n p q :e omega, finsum {i :e omega | m <= i /\ i <= n} f * finsum {i :e omega | p <= i /\ i <= q} g = finsum {i :e omega | m <= i /\ i <= n} (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j))) (fun m Hm => (imp_forall_in (omega) (fun n => forall p q :e omega, hl_real_mul (hl_sum omega (hl_numseg m n) (hl_lam omega f)) (hl_sum omega (hl_numseg p q) (hl_lam omega g)) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)))) (fun n => forall p q :e omega, finsum {i :e omega | m <= i /\ i <= n} f * finsum {i :e omega | p <= i /\ i <= q} g = finsum {i :e omega | m <= i /\ i <= n} (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j))) (fun n Hn => (imp_forall_in (omega) (fun p => forall q :e omega, hl_real_mul (hl_sum omega (hl_numseg m n) (hl_lam omega f)) (hl_sum omega (hl_numseg p q) (hl_lam omega g)) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)))) (fun p => forall q :e omega, finsum {i :e omega | m <= i /\ i <= n} f * finsum {i :e omega | p <= i /\ i <= q} g = finsum {i :e omega | m <= i /\ i <= n} (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j))) (fun p Hp => (imp_forall_in (omega) (fun q => hl_real_mul (hl_sum omega (hl_numseg m n) (hl_lam omega f)) (hl_sum omega (hl_numseg p q) (hl_lam omega g)) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)))) (fun q => finsum {i :e omega | m <= i /\ i <= n} f * finsum {i :e omega | p <= i /\ i <= q} g = finsum {i :e omega | m <= i /\ i <= n} (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j))) (fun q Hq => (imp_eq (hl_real_mul (hl_sum omega (hl_numseg m n) (hl_lam omega f)) (hl_sum omega (hl_numseg p q) (hl_lam omega g))) (finsum {i :e omega | m <= i /\ i <= n} f * finsum {i :e omega | p <= i /\ i <= q} g) (hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)))) (finsum {i :e omega | m <= i /\ i <= n} (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j))) ((((hl_numseg_compat) (p) Hp (q) Hq) (fun hl__u hl__v => hl_sum omega (hl_numseg p q) (hl_lam omega g) = finsum hl__u g) ((hl_sum_compat) (omega) omega_nonempty (hl_numseg p q) (setexp_ap (omega) (2 :^: omega) (hl_numseg p) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (p) Hp) (q) Hq) (hl_lam omega g) (hl_lam_Pi (omega) (R) g Hgc) (fun hl__x:set => (g) hl__x) ((hl_lam_ap (omega) g)))) (fun hl__u hl__v => hl_real_mul (hl_sum omega (hl_numseg m n) (hl_lam omega f)) (hl_sum omega (hl_numseg p q) (hl_lam omega g)) = finsum {i :e omega | m <= i /\ i <= n} f * hl__u) ((((hl_numseg_compat) (m) Hm (n) Hn) (fun hl__u hl__v => hl_sum omega (hl_numseg m n) (hl_lam omega f) = finsum hl__u f) ((hl_sum_compat) (omega) omega_nonempty (hl_numseg m n) (setexp_ap (omega) (2 :^: omega) (hl_numseg m) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (m) Hm) (n) Hn) (hl_lam omega f) (hl_lam_Pi (omega) (R) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (omega) f)))) (fun hl__u hl__v => hl_real_mul (hl_sum omega (hl_numseg m n) (hl_lam omega f)) (hl_sum omega (hl_numseg p q) (hl_lam omega g)) = hl__u * hl_sum omega (hl_numseg p q) (hl_lam omega g)) ((hl_real_mul_compat) (hl_sum omega (hl_numseg m n) (hl_lam omega f)) (setexp_ap (R :^: omega) (R) (hl_sum omega (hl_numseg m n)) (setexp_ap (2 :^: omega) (R :^: (R :^: omega)) (hl_sum omega) ((hl_sum_in) (omega) omega_nonempty) (hl_numseg m n) (setexp_ap (omega) (2 :^: omega) (hl_numseg m) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (m) Hm) (n) Hn)) (hl_lam omega f) (hl_lam_Pi (omega) (R) f Hfc)) (hl_sum omega (hl_numseg p q) (hl_lam omega g)) (setexp_ap (R :^: omega) (R) (hl_sum omega (hl_numseg p q)) (setexp_ap (2 :^: omega) (R :^: (R :^: omega)) (hl_sum omega) ((hl_sum_in) (omega) omega_nonempty) (hl_numseg p q) (setexp_ap (omega) (2 :^: omega) (hl_numseg p) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (p) Hp) (q) Hq)) (hl_lam omega g) (hl_lam_Pi (omega) (R) g Hgc))))) (((hl_numseg_compat) (m) Hm (n) Hn) (fun hl__u hl__v => hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j))) = finsum hl__u (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j))) ((hl_sum_compat) (omega) omega_nonempty (hl_numseg m n) (setexp_ap (omega) (2 :^: omega) (hl_numseg m) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (m) Hm) (n) Hn) (fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j))) (lam_Pi (omega) (fun _ => R) (fun i => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j))) (fun i Hi => (setexp_ap (R :^: omega) (R) (hl_sum omega (hl_numseg p q)) (setexp_ap (2 :^: omega) (R :^: (R :^: omega)) (hl_sum omega) ((hl_sum_in) (omega) omega_nonempty) (hl_numseg p q) (setexp_ap (omega) (2 :^: omega) (hl_numseg p) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (p) Hp) (q) Hq)) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)) (lam_Pi (omega) (fun _ => R) (fun j => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)) (fun j Hj => (setexp_ap (R) (R) (hl_real_mul (hl_lam omega f i)) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (hl_lam omega f i) (setexp_ap (omega) (R) (hl_lam omega f) (hl_lam_Pi (omega) (R) f Hfc) (i) Hi)) (hl_lam omega g j) (setexp_ap (omega) (R) (hl_lam omega g) (hl_lam_Pi (omega) (R) g Hgc) (j) Hj))))))) (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j)) ((fun i Hi => (eq_trans_i ((fun i :e omega => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j))) i) (hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j))) (finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j)) (beta (omega) (fun i:set => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j))) i Hi) (((hl_numseg_compat) (p) Hp (q) Hq) (fun hl__u hl__v => hl_sum omega (hl_numseg p q) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)) = finsum hl__u (fun j:set => f i * g j)) ((hl_sum_compat) (omega) omega_nonempty (hl_numseg p q) (setexp_ap (omega) (2 :^: omega) (hl_numseg p) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (p) Hp) (q) Hq) (fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)) (lam_Pi (omega) (fun _ => R) (fun j => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)) (fun j Hj => (setexp_ap (R) (R) (hl_real_mul (hl_lam omega f i)) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (hl_lam omega f i) (setexp_ap (omega) (R) (hl_lam omega f) (hl_lam_Pi (omega) (R) f Hfc) (i) Hi)) (hl_lam omega g j) (setexp_ap (omega) (R) (hl_lam omega g) (hl_lam_Pi (omega) (R) g Hgc) (j) Hj)))) (fun j:set => f i * g j) ((fun j Hj => (eq_trans_i ((fun j :e omega => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)) j) (hl_real_mul (hl_lam omega f i) (hl_lam omega g j)) (f i * g j) (beta (omega) (fun j:set => hl_real_mul (hl_lam omega f i) (hl_lam omega g j)) j Hj) (((hl_lam_ap (omega) g) (j) Hj) (fun hl__u hl__v => hl_real_mul (hl_lam omega f i) (hl_lam omega g j) = f i * hl__u) (((hl_lam_ap (omega) f) (i) Hi) (fun hl__u hl__v => hl_real_mul (hl_lam omega f i) (hl_lam omega g j) = hl__u * hl_lam omega g j) ((hl_real_mul_compat) (hl_lam omega f i) (setexp_ap (omega) (R) (hl_lam omega f) (hl_lam_Pi (omega) (R) f Hfc) (i) Hi) (hl_lam omega g j) (setexp_ap (omega) (R) (hl_lam omega g) (hl_lam_Pi (omega) (R) g Hgc) (j) Hj))))))))))))))))))))))))))) H__top)).
Qed.
Theorem REAL_MUL_SUM_NUMSEG : forall f:set -> set, (forall x :e omega, f x :e R) -> forall g:set -> set, (forall x :e omega, g x :e R) -> forall m n p q :e omega, finsum {i :e omega | m <= i /\ i <= n} f * finsum {i :e omega | p <= i /\ i <= q} g = finsum {i :e omega | m <= i /\ i <= n} (fun i:set => finsum {i :e omega | p <= i /\ i <= q} (fun j:set => f i * g j)).
exact (REAL_MUL_SUM_NUMSEG_bridge hlt_REAL_MUL_SUM_NUMSEG).
Admitted.

// HOL Light: Multivariate/determinants.ml:117 / DET_CMUL   (hash md5:d0df7056a369f2e6567009e18803769b)
// not bridged: 
Theorem DET_CMUL : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall c :e R, det N (matrix_cmul N N c A) = c ^ dimindex N * det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:124 / DET_NEG   (hash md5:a1192a9320faebe945a616c673077931)
// not bridged: 
Theorem DET_NEG : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, det N (matrix_neg N N A) = (- 1) ^ dimindex N * det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:128 / DET_TRANSP   (hash md5:7595a4a087871d2a66182fec0d7d4355)
// not bridged: 
Theorem DET_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, det N (transp N N A) = det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:151 / DET_LOWERTRIANGULAR   (hash md5:f367824be7c1b2cfde3d99ca774b6269)
// not bridged: 
Theorem DET_LOWERTRIANGULAR : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, (forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ i < j))) -> A i j = 0) -> det N A = finprod (idx N) (fun i:set => A i i).
Admitted.

// HOL Light: Multivariate/determinants.ml:168 / DET_UPPERTRIANGULAR   (hash md5:92834e890ab7165a8ebf977e82f6fa6c)
// not bridged: 
Theorem DET_UPPERTRIANGULAR : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, (forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ j < i))) -> A i j = 0) -> det N A = finprod (idx N) (fun i:set => A i i).
Admitted.

// HOL Light: Multivariate/determinants.ml:185 / DET_I   (hash md5:360af76b600dc73a7c44140b7d0c408a)
// not bridged: 
Theorem DET_I : forall N:set, N <> Empty -> det N (mat N N 1) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:194 / DET_0   (hash md5:b1dcff80abf77feb7b0022e25ec4f4d6)
// not bridged: 
Theorem DET_0 : forall N:set, N <> Empty -> det N (mat N N 0) = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:203 / DET_PERMUTE_ROWS   (hash md5:b6bce0c77836f7ffed1c0386ae745f9e)
// not bridged: 
Theorem DET_PERMUTE_ROWS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall p:set -> set, (forall x :e omega, p x :e omega) -> permutes omega p (idx N) -> det N (fun i :e idx N => A (p i)) = sign omega p * det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:224 / DET_PERMUTE_COLUMNS   (hash md5:628ecd722ad3b75e49eee575adfacb05)
// not bridged: 
Theorem DET_PERMUTE_COLUMNS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall p:set -> set, (forall x :e omega, p x :e omega) -> permutes omega p (idx N) -> det N (fun i :e idx N => fun j :e idx N => A i (p j)) = sign omega p * det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:235 / DET_IDENTICAL_ROWS   (hash md5:d4b041c80a73a6cc4d915f8f13bcf7d8)
// not bridged: 
Theorem DET_IDENTICAL_ROWS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ (~ i = j /\ row N N i A = row N N j A)))) -> det N A = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:248 / DET_IDENTICAL_COLUMNS   (hash md5:e4058465338756ae5af08a6b6158eabb)
// not bridged: 
Theorem DET_IDENTICAL_COLUMNS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ (~ i = j /\ column N N i A = column N N j A)))) -> det N A = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:256 / DET_ZERO_ROW   (hash md5:3fc3c3e2f3871424fb1857656d0a4ca8)
// not bridged: 
Theorem DET_ZERO_ROW : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i :e omega, 1 <= i /\ (i <= dimindex N /\ row N N i A = vec N 0) -> det N A = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:265 / DET_ZERO_COLUMN   (hash md5:4f25ddd952a0fbe2c63d6d678db4ceb9)
// not bridged: 
Theorem DET_ZERO_COLUMN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i :e omega, 1 <= i /\ (i <= dimindex N /\ column N N i A = vec N 0) -> det N A = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:271 / DET_ROW_ADD   (hash md5:319683817cc8ca687d253b9948bef456)
// not bridged: 
Theorem DET_ROW_ADD : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall c:set -> set, (forall x :e omega, c x :e R :^: idx N) -> forall k :e omega, 1 <= k /\ k <= dimindex N -> det N (fun i :e idx N => if i = k then vector_add N a b else c i) = det N (fun i :e idx N => if i = k then a else c i) + det N (fun i :e idx N => if i = k then b else c i).
Admitted.

// HOL Light: Multivariate/determinants.ml:292 / DET_ROW_MUL   (hash md5:087524ccc58d2a466a8503d1f5fc4950)
// not bridged: 
Theorem DET_ROW_MUL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b:set -> set, (forall x :e omega, b x :e R :^: idx N) -> forall c :e R, forall k :e omega, 1 <= k /\ k <= dimindex N -> det N (fun i :e idx N => if i = k then vector_mul N c a else b i) = c * det N (fun i :e idx N => if i = k then a else b i).
Admitted.

// HOL Light: Multivariate/determinants.ml:310 / DET_ROW_OPERATION   (hash md5:8170ef2d777096c241667170f5478cca)
// not bridged: 
Theorem DET_ROW_OPERATION : forall N:set, N <> Empty -> forall j :e omega, forall c :e R, forall A :e R :^: idx N :^: idx N, forall i :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ ~ i = j))) -> det N (fun k :e idx N => if k = i then vector_add N (row N N i A) (vector_mul N c (row N N j A)) else row N N k A) = det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:326 / DET_ROW_SPAN   (hash md5:684e39f302298040627957663411c1c6)
// not bridged: 
Theorem DET_ROW_SPAN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i :e omega, forall x :e R :^: idx N, 1 <= i /\ (i <= dimindex N /\ x :e span N {row N N j A | j :e omega, 1 <= j /\ (j <= dimindex N /\ ~ j = i)}) -> det N (fun k :e idx N => if k = i then vector_add N (row N N i A) x else row N N k A) = det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:354 / DET_DEPENDENT_ROWS   (hash md5:bc9062af974c04bac1545a060719979f)
// not bridged: 
Theorem DET_DEPENDENT_ROWS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, dependent N (rows N N A) -> det N A = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:379 / DET_DEPENDENT_COLUMNS   (hash md5:ea6e71d464e5caf7b407f78fb349b6d3)
// not bridged: 
Theorem DET_DEPENDENT_COLUMNS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, dependent N (columns N N A) -> det N A = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:387 / DET_LINEAR_ROW_VSUM   (hash md5:0b5db79518c08a0eaf64bdb196a945d7)
// not bridged: 
Theorem DET_LINEAR_ROW_VSUM : forall A N:set, A <> Empty -> N <> Empty -> forall a:set -> set, (forall x :e A, a x :e R :^: idx N) -> forall c:set -> set, (forall x :e omega, c x :e R :^: idx N) -> forall s c= A, forall k :e omega, finite s /\ (1 <= k /\ k <= dimindex N) -> det N (fun i :e idx N => if i = k then vsum A N s a else c i) = finsum s (fun j:set => det N (fun i :e idx N => if i = k then a j else c i)).
Admitted.

// HOL Light: Multivariate/determinants.ml:400 / BOUNDED_FUNCTIONS_BIJECTIONS_1   (hash md5:75398a085b7305eb3a22b9b1e8b9107a)
// not bridged: 
Theorem BOUNDED_FUNCTIONS_BIJECTIONS_1 : forall s c= omega, forall k :e omega, forall p :e omega :*: omega :^: omega, p :e (\/_ y :e omega, {(y,g) | g :e omega :^: omega, y :e s /\ g :e {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i}}) -> (fun i :e omega => if i = ordsucc k then p 0 else p 1 i) :e {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= ordsucc k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= ordsucc k) -> f i = i} /\ (if ordsucc k = ordsucc k then p 0 else p 1 (ordsucc k),fun i :e omega => if i = ordsucc k then i else if i = ordsucc k then p 0 else p 1 i) = p.
Admitted.

// HOL Light: Multivariate/determinants.ml:417 / BOUNDED_FUNCTIONS_BIJECTIONS_2   (hash md5:dfa989f13f74d623760d71ca2d892a25)
// not bridged: 
Theorem BOUNDED_FUNCTIONS_BIJECTIONS_2 : forall k :e omega, forall s c= omega, forall h :e omega :^: omega, h :e {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= ordsucc k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= ordsucc k) -> f i = i} -> (h (ordsucc k),fun i :e omega => if i = ordsucc k then i else h i) :e (\/_ y :e omega, {(y,g) | g :e omega :^: omega, y :e s /\ g :e {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i}}) /\ (fun i :e omega => if i = ordsucc k then h (ordsucc k) else (fun i0 :e omega => if i0 = ordsucc k then i0 else h i0) i) = h.
Admitted.

// HOL Light: Multivariate/determinants.ml:434 / FINITE_BOUNDED_FUNCTIONS   (hash md5:e053e105b4e00f0de6f2a7c826cff3ba)
Theorem hlt_FINITE_BOUNDED_FUNCTIONS : forall s :e 2 :^: omega, forall k :e omega, hl_FINITE omega s = 1 -> hl_FINITE (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1.
Admitted.
Theorem FINITE_BOUNDED_FUNCTIONS_bridge : (forall s :e 2 :^: omega, forall k :e omega, hl_FINITE omega s = 1 -> hl_FINITE (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1) -> (forall s c= omega, forall k :e omega, finite s -> finite {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i}).
exact (fun H__top => ((imp_forall_sub (omega) (fun s => forall k :e omega, hl_FINITE omega s = 1 -> hl_FINITE (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) s = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1) (fun s => forall k :e omega, finite s -> finite {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i}) (fun s Hss => (imp_forall_in (omega) (fun k => hl_FINITE omega (hl_chi omega s) = 1 -> hl_FINITE (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1) (fun k => finite s -> finite {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i}) (fun k Hk => (fun H__L : ((hl_FINITE omega (hl_chi omega s) = 1) -> (hl_FINITE (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1)) => fun H__hyp2 : (finite s) => (iffEL (hl_FINITE (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1) (finite {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i}) ((eq_trans_i (hl_rep (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0))) ({v :e omega :^: omega | exists f :e omega :^: omega, (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) = 1 /\ v = f}) ({f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i}) (hl_gspec_generic (omega :^: omega) (omega :^: omega) (fun f => if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) (fun f => f) (fun f Hf => (If_in_2 ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i)))) (eq_trans_i ({v :e omega :^: omega | exists f :e omega :^: omega, (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) = 1 /\ v = f}) ({f :e omega :^: omega | (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) = 1}) ({f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i}) (gspec_sep_form (omega :^: omega) (fun f => if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0)) (Sep_ext_iff (omega :^: omega) (fun f => (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) = 1) (fun f => (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i) (fun f Hf => (iff_trans ((if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) = 1) ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i) ((forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i) (If_1_iff ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i)) (iffI ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i) ((forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i) (imp_and_dep (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) (forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i) (forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i) (imp_forall_in (omega) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) (fun i => 1 <= i /\ i <= k -> f i :e s) (fun i Hi => (fun H__L : ((hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> (hl_IN omega (f i) (hl_chi omega s) = 1)) => fun H__hyp13 : (1 <= i /\ i <= k) => (iffEL (hl_IN omega (f i) (hl_chi omega s) = 1) (f i :e s) ((hl_rep_chi (omega) s Hss) (fun hl__u hl__v => hl_IN omega (f i) (hl_chi omega s) = 1 <-> f i :e hl__u) ((hl_IN_compat) (omega) omega_nonempty (f i) (setexp_ap (omega) (omega) (f) Hf (i) Hi) (hl_chi omega s) (hl_chi_Pi (omega) s)))) (H__L ((imp_and_dep_bwd (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i k = 1) (i <= k) (iffER (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and14 : (1 <= i) => (iffER (hl_le i k = 1) (i <= k) ((hl_le_compat) (i) Hi (k) Hk)))) H__hyp13))))) (fun H__and11 : (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) => (imp_forall_in (omega) (fun i => ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i) (fun i => ~ (1 <= i /\ i <= k) -> f i = i) (fun i Hi => (fun H__L : ((~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1)) -> (f i = i)) => fun H__hyp16 : (~ (1 <= i /\ i <= k)) => (imp_eq (f i) (f i) (i) (i) (fun q H => H) (fun q H => H)) (H__L ((imp_not (1 <= i /\ i <= k) (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) (imp_and_dep (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i k = 1) (i <= k) (iffEL (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and17 : (1 <= i) => (iffEL (hl_le i k = 1) (i <= k) ((hl_le_compat) (i) Hi (k) Hk))))) H__hyp16))))))) (imp_and_dep_bwd (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) (forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i) (forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i) (imp_forall_in (omega) (fun i => 1 <= i /\ i <= k -> f i :e s) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) (fun i Hi => (fun H__N : ((1 <= i /\ i <= k) -> (f i :e s)) => fun H__hyp6 : (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) => (iffER (hl_IN omega (f i) (hl_chi omega s) = 1) (f i :e s) ((hl_rep_chi (omega) s Hss) (fun hl__u hl__v => hl_IN omega (f i) (hl_chi omega s) = 1 <-> f i :e hl__u) ((hl_IN_compat) (omega) omega_nonempty (f i) (setexp_ap (omega) (omega) (f) Hf (i) Hi) (hl_chi omega s) (hl_chi_Pi (omega) s)))) (H__N ((imp_and_dep (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i k = 1) (i <= k) (iffEL (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and7 : (1 <= i) => (iffEL (hl_le i k = 1) (i <= k) ((hl_le_compat) (i) Hi (k) Hk)))) H__hyp6))))) (fun H__and4 : (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) => (imp_forall_in (omega) (fun i => ~ (1 <= i /\ i <= k) -> f i = i) (fun i => ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i) (fun i Hi => (fun H__N : ((~ (1 <= i /\ i <= k)) -> (f i = i)) => fun H__hyp9 : (~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1)) => (imp_eq (f i) (f i) (i) (i) (eq_sym_i (f i) (f i) (fun q H => H)) (eq_sym_i (i) (i) (fun q H => H))) (H__N ((imp_not (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) (1 <= i /\ i <= k) (imp_and_dep_bwd (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i k = 1) (i <= k) (iffER (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and10 : (1 <= i) => (iffER (hl_le i k = 1) (i <= k) ((hl_le_compat) (i) Hi (k) Hk))))) H__hyp9))))))))))))) (fun hl__u hl__v => hl_FINITE (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) = 1 <-> finite hl__u) ((hl_FINITE_compat) (omega :^: omega) (setexp_nonempty (omega) (omega) omega_nonempty) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0)) (setexp_ap (2 :^: (omega :^: omega)) (2 :^: (omega :^: omega)) (hl_GSPEC (omega :^: omega)) ((hl_GSPEC_in) (omega :^: omega) (setexp_nonempty (omega) (omega) omega_nonempty)) (fun GEN_PVAR_2919 :e omega :^: omega => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0) (lam_Pi (omega :^: omega) (fun _ => 2) (fun GEN_PVAR_2919 => if exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1 then 1 else 0) (fun GEN_PVAR_2919 HGEN_PVAR_2919 => (If_in_2 (exists f :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2919 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN omega (f i) (hl_chi omega s) = 1) /\ forall i :e omega, ~ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1) -> f i = i then 1 else 0) f = 1)))))))) (H__L ((iffER (hl_FINITE omega (hl_chi omega s) = 1) (finite s) ((hl_rep_chi (omega) s Hss) (fun hl__u hl__v => hl_FINITE omega (hl_chi omega s) = 1 <-> finite hl__u) ((hl_FINITE_compat) (omega) omega_nonempty (hl_chi omega s) (hl_chi_Pi (omega) s)))) H__hyp2))))))) H__top)).
Qed.
Theorem FINITE_BOUNDED_FUNCTIONS : forall s c= omega, forall k :e omega, finite s -> finite {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i}.
exact (FINITE_BOUNDED_FUNCTIONS_bridge hlt_FINITE_BOUNDED_FUNCTIONS).
Admitted.

// HOL Light: Multivariate/determinants.ml:457 / DET_LINEAR_ROWS_VSUM_LEMMA   (hash md5:782b0eff67d5e429d78ba2959054fd65)
// not bridged: 
Theorem DET_LINEAR_ROWS_VSUM_LEMMA : forall N:set, N <> Empty -> forall s c= omega, forall k :e omega, forall a:set -> set -> set, (forall x y :e omega, a x y :e R :^: idx N) -> forall c:set -> set, (forall x :e omega, c x :e R :^: idx N) -> finite s /\ k <= dimindex N -> det N (fun i :e idx N => if i <= k then vsum omega N s (a i) else c i) = finsum {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= k -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= k) -> f i = i} (fun f:set => det N (fun i :e idx N => if i <= k then a i (f i) else c i)).
Admitted.

// HOL Light: Multivariate/determinants.ml:503 / DET_LINEAR_ROWS_VSUM   (hash md5:fe9db8607dd8c74f7cb49da9eec5edb9)
// not bridged: 
Theorem DET_LINEAR_ROWS_VSUM : forall N:set, N <> Empty -> forall s c= omega, forall a:set -> set -> set, (forall x y :e omega, a x y :e R :^: idx N) -> finite s -> det N (fun i :e idx N => vsum omega N s (a i)) = finsum {f :e omega :^: omega | (forall i :e omega, 1 <= i /\ i <= dimindex N -> f i :e s) /\ forall i :e omega, ~ (1 <= i /\ i <= dimindex N) -> f i = i} (fun f:set => det N (fun i :e idx N => a i (f i))).
Admitted.

// HOL Light: Multivariate/determinants.ml:518 / MATRIX_MUL_VSUM_ALT   (hash md5:52dcd3d460b0d6a7c342cc900d4bb09f)
// not bridged: 
Theorem MATRIX_MUL_VSUM_ALT : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, matrix_mul N N N A B = fun i :e idx N => vsum omega N (idx N) (fun k:set => vector_mul N (A i k) (B k)).
Admitted.

// HOL Light: Multivariate/determinants.ml:524 / DET_ROWS_MUL   (hash md5:12f18b31a19bc28bfb3096d7388d158f)
// not bridged: 
Theorem DET_ROWS_MUL : forall N:set, N <> Empty -> forall a:set -> set, (forall x :e omega, a x :e R :^: idx N) -> forall c:set -> set, (forall x :e omega, c x :e R) -> det N (fun i :e idx N => vector_mul N (c i) (a i)) = finprod (idx N) c * det N (fun i :e idx N => a i).
Admitted.

// HOL Light: Multivariate/determinants.ml:537 / DET_MUL   (hash md5:f2238025249052b9c9b5709ebf4475d9)
// not bridged: 
Theorem DET_MUL : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, det N (matrix_mul N N N A B) = det N A * det N B.
Admitted.

// HOL Light: Multivariate/determinants.ml:598 / DET_LINEAR_ROWS   (hash md5:734c6eefbdd167e6519b9563c1e56306)
// not bridged: 
Theorem DET_LINEAR_ROWS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall A :e R :^: idx N :^: idx N, linear N N f -> det N (fun i :e idx N => f (A i)) = det N (matrix N N f) * det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:613 / INVERTIBLE_DET_NZ   (hash md5:7f7d8752323b7d050185478ec29f56ea)
// not bridged: 
Theorem INVERTIBLE_DET_NZ : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, invertible N N A <-> ~ det N A = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:648 / DET_EQ_0   (hash md5:df27351a13cb6d1ec19141d7f00ec08f)
// not bridged: 
Theorem DET_EQ_0 : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, det N A = 0 <-> ~ invertible N N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:652 / DET_MATRIX_INV   (hash md5:265268557a9c03b65b577576781bd799)
// not bridged: 
Theorem DET_MATRIX_INV : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, det N (matrix_inv N N A) = recip_SNo (det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:659 / MATRIX_MUL_LINV   (hash md5:08228f5de0f6a32ed5a82663a6d07250)
// not bridged: 
Theorem MATRIX_MUL_LINV : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, ~ det N A = 0 -> matrix_mul N N N (matrix_inv N N A) A = mat N N 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:663 / MATRIX_MUL_RINV   (hash md5:4dd657275c0004420ad7d56927738264)
// not bridged: 
Theorem MATRIX_MUL_RINV : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, ~ det N A = 0 -> matrix_mul N N N A (matrix_inv N N A) = mat N N 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:667 / DET_MATRIX_EQ_0   (hash md5:c81a279475e60c133287ad6d441d75fb)
// not bridged: 
Theorem DET_MATRIX_EQ_0 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> (det N (matrix N N f) = 0 <-> ~ exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (linear N N g /\ ((forall x :e R :^: idx N, f (g x) = x) /\ forall x :e R :^: idx N, g (f x) = x))).
Admitted.

// HOL Light: Multivariate/determinants.ml:674 / DET_MATRIX_EQ_0_LEFT   (hash md5:a1a9ea1b8605aa730693183c532a515a)
// not bridged: 
Theorem DET_MATRIX_EQ_0_LEFT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> (det N (matrix N N f) = 0 <-> ~ exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (linear N N g /\ forall x :e R :^: idx N, g (f x) = x)).
Admitted.

// HOL Light: Multivariate/determinants.ml:681 / DET_MATRIX_EQ_0_RIGHT   (hash md5:747893b34f14f88d7e39ad912337e25f)
// not bridged: 
Theorem DET_MATRIX_EQ_0_RIGHT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> (det N (matrix N N f) = 0 <-> ~ exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (linear N N g /\ forall x :e R :^: idx N, f (g x) = x)).
Admitted.

// HOL Light: Multivariate/determinants.ml:688 / DET_EQ_0_RANK   (hash md5:0e6a6d94e115c8fe95218af39912b391)
// not bridged: 
Theorem DET_EQ_0_RANK : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, det N A = 0 <-> rank N N A < dimindex N.
Admitted.

// HOL Light: Multivariate/determinants.ml:695 / RANK_EQ_FULL_DET   (hash md5:c08d130729024f6e460ddefe6f714a37)
// not bridged: 
Theorem RANK_EQ_FULL_DET : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, rank N N A = dimindex N <-> ~ det N A = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:700 / INVERTIBLE_COVARIANCE_RANK   (hash md5:3536841a5b7b59af4f7bfeb6f3df7760)
// not bridged: 
Theorem INVERTIBLE_COVARIANCE_RANK : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, invertible N N (matrix_mul N M N (transp M N A) A) <-> rank N M A = dimindex N.
Admitted.

// HOL Light: Multivariate/determinants.ml:704 / HOMOGENEOUS_LINEAR_EQUATIONS_DET   (hash md5:a27c0d6b41b1c67de7d11700241e8054)
// not bridged: 
Theorem HOMOGENEOUS_LINEAR_EQUATIONS_DET : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, (exists x :e R :^: idx N, ~ x = vec N 0 /\ matrix_vector_mul N N A x = vec N 0) <-> det N A = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:711 / INVERTIBLE_MATRIX_MUL   (hash md5:e0f4cb0b492c0d63a0ded0fbf2dc9353)
// not bridged: 
Theorem INVERTIBLE_MATRIX_MUL : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, invertible N N (matrix_mul N N N A B) <-> invertible N N A /\ invertible N N B.
Admitted.

// HOL Light: Multivariate/determinants.ml:716 / MATRIX_INV_MUL   (hash md5:f16c2a19361ce7179a78a55cce64e9e5)
// not bridged: 
Theorem MATRIX_INV_MUL : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, invertible N N A /\ invertible N N B -> matrix_inv N N (matrix_mul N N N A B) = matrix_mul N N N (matrix_inv N N B) (matrix_inv N N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:726 / DET_SIMILAR   (hash md5:c835a9ec69ed80dfb478e23d4ccf59bf)
// not bridged: 
Theorem DET_SIMILAR : forall N:set, N <> Empty -> forall S A :e R :^: idx N :^: idx N, invertible N N S -> det N (matrix_mul N N N (matrix_inv N N S) (matrix_mul N N N A S)) = det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:731 / INVERTIBLE_NEARBY_ONORM   (hash md5:41ace0d077194695069b034127f06141)
// not bridged: 
Theorem INVERTIBLE_NEARBY_ONORM : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, invertible N N A /\ onorm N N (matrix_vector_mul N N (matrix_sub N N B A)) < recip_SNo (onorm N N (matrix_vector_mul N N (matrix_inv N N A))) -> invertible N N B.
Admitted.

// HOL Light: Multivariate/determinants.ml:774 / INVERTIBLE_NEARBY   (hash md5:2189a13071b0ff280a35b48f857f1b7a)
// not bridged: 
Theorem INVERTIBLE_NEARBY : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, invertible N N A -> exists e0 :e R, 0 < e0 /\ forall B :e R :^: idx N :^: idx N, onorm N N (matrix_vector_mul N N (matrix_sub N N B A)) < e0 -> invertible N N B.
Admitted.

// HOL Light: Multivariate/determinants.ml:789 / CRAMER_LEMMA_TRANSP   (hash md5:484f521310691b180ea2fa61752a3066)
// not bridged: 
Theorem CRAMER_LEMMA_TRANSP : forall N:set, N <> Empty -> forall k :e omega, forall A :e R :^: idx N :^: idx N, forall x :e R :^: idx N, 1 <= k /\ k <= dimindex N -> det N (fun i :e idx N => if i = k then vsum omega N (idx N) (fun i0:set => vector_mul N (x i0) (row N N i0 A)) else row N N i A) = x k * det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:816 / CRAMER_LEMMA   (hash md5:08987fcf7921024009fe7868d30f0ac2)
// not bridged: 
Theorem CRAMER_LEMMA : forall N:set, N <> Empty -> forall k :e omega, forall A :e R :^: idx N :^: idx N, forall x :e R :^: idx N, 1 <= k /\ k <= dimindex N -> det N (fun i :e idx N => fun j :e idx N => if j = k then matrix_vector_mul N N A x i else A i j) = x k * det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:829 / CRAMER   (hash md5:1b758ecb1f19d9266f1051b70c996820)
// not bridged: 
Theorem CRAMER : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall x b :e R :^: idx N, ~ det N A = 0 -> (matrix_vector_mul N N A x = b <-> x = fun k :e idx N => det N (fun i :e idx N => fun j :e idx N => if j = k then b i else A i j) :/: det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:850 / CRAMER_MATRIX_LEFT   (hash md5:941d9feedc4d5784621003a2b51c07c2)
// not bridged: 
Theorem CRAMER_MATRIX_LEFT : forall N:set, N <> Empty -> forall A X B :e R :^: idx N :^: idx N, ~ det N A = 0 -> (matrix_mul N N N X A = B <-> X = fun k :e idx N => fun l :e idx N => det N (fun i :e idx N => fun j :e idx N => if j = l then B k i else A j i) :/: det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:864 / CRAMER_MATRIX_RIGHT   (hash md5:4ddff8fa5ac19efd5c04090f14743e52)
// not bridged: 
Theorem CRAMER_MATRIX_RIGHT : forall N:set, N <> Empty -> forall A X B :e R :^: idx N :^: idx N, ~ det N A = 0 -> (matrix_mul N N N A X = B <-> X = fun k :e idx N => fun l :e idx N => det N (fun i :e idx N => fun j :e idx N => if j = k then B i l else A i j) :/: det N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:882 / CRAMER_MATRIX_RIGHT_INVERSE   (hash md5:a708d736f239e1ffff2901ae29955868)
// not bridged: 
Theorem CRAMER_MATRIX_RIGHT_INVERSE : forall N:set, N <> Empty -> forall A A' :e R :^: idx N :^: idx N, matrix_mul N N N A A' = mat N N 1 <-> ~ det N A = 0 /\ A' = fun k :e idx N => fun l :e idx N => det N (fun i :e idx N => fun j :e idx N => if j = k then if i = l then 1 else 0 else A i j) :/: det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:900 / CRAMER_MATRIX_LEFT_INVERSE   (hash md5:c7569352f665aa167d59639029010206)
// not bridged: 
Theorem CRAMER_MATRIX_LEFT_INVERSE : forall N:set, N <> Empty -> forall A A' :e R :^: idx N :^: idx N, matrix_mul N N N A' A = mat N N 1 <-> ~ det N A = 0 /\ A' = fun k :e idx N => fun l :e idx N => det N (fun i :e idx N => fun j :e idx N => if j = l then if i = k then 1 else 0 else A j i) :/: det N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:922 / cofactor   (hash md5:c5e3d509fd478f1a231a22721db068e6)
// not bridged: 
Theorem cofactor_thm : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, cofactor N A = fun i :e idx N => fun j :e idx N => det N (fun k :e idx N => fun l :e idx N => if k = i /\ l = j then 1 else if k = i \/ l = j then 0 else A k l).
Admitted.

// HOL Light: Multivariate/determinants.ml:928 / COFACTOR_TRANSP   (hash md5:373d6bca66621edf49f13905effecb43)
// not bridged: 
Theorem COFACTOR_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, cofactor N (transp N N A) = transp N N (cofactor N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:935 / COFACTOR_COLUMN   (hash md5:b8dd381957132c1fd75935850256ee85)
// not bridged: 
Theorem COFACTOR_COLUMN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, cofactor N A = fun i :e idx N => fun j :e idx N => det N (fun k :e idx N => fun l :e idx N => if l = j then if k = i then 1 else 0 else A k l).
Admitted.

// HOL Light: Multivariate/determinants.ml:967 / COFACTOR_ROW   (hash md5:74556cf9b43c194cdb1dbceffab49674)
// not bridged: 
Theorem COFACTOR_ROW : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, cofactor N A = fun i :e idx N => fun j :e idx N => det N (fun k :e idx N => fun l :e idx N => if k = i then if l = j then 1 else 0 else A k l).
Admitted.

// HOL Light: Multivariate/determinants.ml:979 / MATRIX_RIGHT_INVERSE_COFACTOR   (hash md5:2102e21ee38152634c05900155fb3862)
// not bridged: 
Theorem MATRIX_RIGHT_INVERSE_COFACTOR : forall N:set, N <> Empty -> forall A A' :e R :^: idx N :^: idx N, matrix_mul N N N A A' = mat N N 1 <-> ~ det N A = 0 /\ A' = matrix_cmul N N (recip_SNo (det N A)) (transp N N (cofactor N A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:992 / MATRIX_LEFT_INVERSE_COFACTOR   (hash md5:377af2e0dffc4fe33c11031c255f2f64)
// not bridged: 
Theorem MATRIX_LEFT_INVERSE_COFACTOR : forall N:set, N <> Empty -> forall A A' :e R :^: idx N :^: idx N, matrix_mul N N N A' A = mat N N 1 <-> ~ det N A = 0 /\ A' = matrix_cmul N N (recip_SNo (det N A)) (transp N N (cofactor N A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1000 / MATRIX_INV_COFACTOR   (hash md5:a130feb11e705ded69c1a7af3acb4ba6)
// not bridged: 
Theorem MATRIX_INV_COFACTOR : forall A:set, A <> Empty -> forall A0 :e R :^: idx A :^: idx A, ~ det A A0 = 0 -> matrix_inv A A A0 = matrix_cmul A A (recip_SNo (det A A0)) (transp A A (cofactor A A0)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1005 / COFACTOR_MATRIX_INV   (hash md5:91ac1cb5bd6e61d81cf4cef979a969a1)
// not bridged: 
Theorem COFACTOR_MATRIX_INV : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, ~ det N A = 0 -> cofactor N A = matrix_cmul N N (det N A) (transp N N (matrix_inv N N A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1010 / COFACTOR_I   (hash md5:cf20c5e5c725f6d0fcbdfdf858ce38cf)
// not bridged: 
Theorem COFACTOR_I : forall N:set, N <> Empty -> cofactor N (mat N N 1) = mat N N 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1015 / DET_COFACTOR_EXPANSION   (hash md5:2ca7fde44273e0e6b286245489d301b3)
// not bridged: 
Theorem DET_COFACTOR_EXPANSION : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i :e omega, 1 <= i /\ i <= dimindex N -> det N A = finsum (idx N) (fun j:set => A i j * cofactor N A i j).
Admitted.

// HOL Light: Multivariate/determinants.ml:1067 / MATRIX_MUL_RIGHT_COFACTOR   (hash md5:4659adf64e9c8b9e4885c5fac63ee042)
// not bridged: 
Theorem MATRIX_MUL_RIGHT_COFACTOR : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, matrix_mul N N N A (transp N N (cofactor N A)) = matrix_cmul N N (det N A) (mat N N 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:1092 / MATRIX_MUL_LEFT_COFACTOR   (hash md5:2ad676ca6ed773272486df5a76ebaab8)
// not bridged: 
Theorem MATRIX_MUL_LEFT_COFACTOR : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, matrix_mul N N N (transp N N (cofactor N A)) A = matrix_cmul N N (det N A) (mat N N 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:1100 / COFACTOR_CMUL   (hash md5:2600017ee765d924b984c9a82c8c22fb)
// not bridged: 
Theorem COFACTOR_CMUL : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall c :e R, cofactor N (matrix_cmul N N c A) = matrix_cmul N N (c ^ minus_nat (dimindex N) 1) (cofactor N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:1138 / COFACTOR_0   (hash md5:85be7f6596b4c1ac82cf8c86046e3604)
// not bridged: 
Theorem COFACTOR_0 : forall N:set, N <> Empty -> cofactor N (mat N N 0) = if dimindex N = 1 then mat N N 1 else mat N N 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:1150 / PRODUCT_1   (hash md5:579d5eab90aed034ee184cbdf720adfa)
Theorem hlt_PRODUCT_1 : forall f :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) f = f (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.
Theorem PRODUCT_1_bridge : (forall f :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) f = f (hl_NUMERAL (hl_BIT1 hl_zero))) -> (forall f:set -> set, (forall x :e omega, f x :e R) -> finprod (idx_n 1) f = f 1).
exact (fun H__top => ((imp_forall_fun (omega) (R) (fun f => hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) f = f (hl_NUMERAL (hl_BIT1 hl_zero))) (fun f => finprod {i :e omega | 1 <= i /\ i <= 1} f = f 1) (fun f Hfc => (imp_eq (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega f)) (finprod {i :e omega | 1 <= i /\ i <= 1} f) (hl_lam omega f (hl_NUMERAL (hl_BIT1 hl_zero))) (f 1) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) = {i :e omega | 1 <= i /\ i <= 1}) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) = {i :e omega | hl__u <= i /\ i <= hl__u}) ((hl_numseg_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega f) = finprod hl__u f) ((hl_product_compat) (omega) omega_nonempty (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_lam omega f) (hl_lam_Pi (omega) (R) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (omega) f)))) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega f (hl_NUMERAL (hl_BIT1 hl_zero)) = f hl__u) ((hl_lam_ap (omega) f) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) H__top)).
Qed.
Theorem PRODUCT_1 : forall f:set -> set, (forall x :e omega, f x :e R) -> finprod (idx_n 1) f = f 1.
exact (PRODUCT_1_bridge hlt_PRODUCT_1).
Admitted.

// HOL Light: Multivariate/determinants.ml:1154 / PRODUCT_2   (hash md5:302d57501c93afd6ef94ad6bd749b91e)
Theorem hlt_PRODUCT_2 : forall t :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.
Theorem PRODUCT_2_bridge : (forall t :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) -> (forall t:set -> set, (forall x :e omega, t x :e R) -> finprod (idx_n 2) t = t 1 * t 2).
exact (fun H__top => ((imp_forall_fun (omega) (R) (fun t => hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (fun t => finprod {i :e omega | 1 <= i /\ i <= 2} t = t 1 * t 2) (fun t Htc => (imp_eq (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t)) (finprod {i :e omega | 1 <= i /\ i <= 2} t) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (t 1 * t 2) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = {i :e omega | hl__u <= i /\ i <= 2}) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = {i :e omega | hl_NUMERAL (hl_BIT1 hl_zero) <= i /\ i <= hl__u}) ((hl_numseg_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun hl__u hl__v => hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t) = finprod hl__u t) ((hl_product_compat) (omega) omega_nonempty (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (fun hl__x:set => (t) hl__x) ((hl_lam_ap (omega) t)))) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl__u * t 2) (((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) * hl__u) ((hl_real_mul_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))))) H__top)).
Qed.
Theorem PRODUCT_2 : forall t:set -> set, (forall x :e omega, t x :e R) -> finprod (idx_n 2) t = t 1 * t 2.
exact (PRODUCT_2_bridge hlt_PRODUCT_2).
Admitted.

// HOL Light: Multivariate/determinants.ml:1159 / PRODUCT_3   (hash md5:fd0b198a2430f4456458fb2898dc5b51)
Theorem hlt_PRODUCT_3 : forall t :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))).
Admitted.
Theorem PRODUCT_3_bridge : (forall t :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))) -> (forall t:set -> set, (forall x :e omega, t x :e R) -> finprod (idx_n 3) t = t 1 * t 2 * t 3).
exact (fun H__top => ((imp_forall_fun (omega) (R) (fun t => hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))) (fun t => finprod {i :e omega | 1 <= i /\ i <= 3} t = t 1 * t 2 * t 3) (fun t Htc => (imp_eq (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t)) (finprod {i :e omega | 1 <= i /\ i <= 3} t) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))) (t 1 * t 2 * t 3) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = {i :e omega | hl__u <= i /\ i <= 3}) ((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = {i :e omega | hl_NUMERAL (hl_BIT1 hl_zero) <= i /\ i <= hl__u}) ((hl_numseg_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun hl__u hl__v => hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t) = finprod hl__u t) ((hl_product_compat) (omega) omega_nonempty (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (fun hl__x:set => (t) hl__x) ((hl_lam_ap (omega) t)))) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) = hl__u * t 2 * t 3) ((((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = t 2 * hl__u) (((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = hl__u * hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) ((hl_real_mul_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) = hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) * hl__u) ((hl_real_mul_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))))) H__top)).
Qed.
Theorem PRODUCT_3 : forall t:set -> set, (forall x :e omega, t x :e R) -> finprod (idx_n 3) t = t 1 * t 2 * t 3.
exact (PRODUCT_3_bridge hlt_PRODUCT_3).
Admitted.

// HOL Light: Multivariate/determinants.ml:1164 / PRODUCT_4   (hash md5:ee47976e20286d0eb0f055c730fd2e2c)
Theorem hlt_PRODUCT_4 : forall t :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))).
Admitted.
Theorem PRODUCT_4_bridge : (forall t :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) -> (forall t:set -> set, (forall x :e omega, t x :e R) -> finprod (idx_n 4) t = t 1 * t 2 * t 3 * t 4).
exact (fun H__top => ((imp_forall_fun (omega) (R) (fun t => hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) t = hl_real_mul (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (fun t => finprod {i :e omega | 1 <= i /\ i <= 4} t = t 1 * t 2 * t 3 * t 4) (fun t Htc => (imp_eq (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_lam omega t)) (finprod {i :e omega | 1 <= i /\ i <= 4} t) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (t 1 * t 2 * t 3 * t 4) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = {i :e omega | hl__u <= i /\ i <= 4}) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) ((eq_sym_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 4 (nat_ordsucc 3 (omega_nat_p 3 (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))))))))) (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = {i :e omega | hl_NUMERAL (hl_BIT1 hl_zero) <= i /\ i <= hl__u}) ((hl_numseg_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) (fun hl__u hl__v => hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_lam omega t) = finprod hl__u t) ((hl_product_compat) (omega) omega_nonempty (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (omega) (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (fun hl__x:set => (t) hl__x) ((hl_lam_ap (omega) t)))) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))) = hl__u * t 2 * t 3 * t 4) ((((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) = hl__u * t 3 * t 4) ((((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = hl__u * t 4) (((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) ((eq_sym_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 4 (nat_ordsucc 3 (omega_nat_p 3 (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))))))))) (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) * hl__u) ((hl_real_mul_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) = hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) * hl__u) ((hl_real_mul_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) (setexp_ap (R) (R) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))) (fun hl__u hl__v => hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))) = hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) * hl__u) ((hl_real_mul_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))) (setexp_ap (R) (R) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) (setexp_ap (R) (R) (hl_real_mul (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))))))) H__top)).
Qed.
Theorem PRODUCT_4 : forall t:set -> set, (forall x :e omega, t x :e R) -> finprod (idx_n 4) t = t 1 * t 2 * t 3 * t 4.
exact (PRODUCT_4_bridge hlt_PRODUCT_4).
Admitted.

// HOL Light: Multivariate/determinants.ml:1170 / DET_1_GEN   (hash md5:6efed454c14a3e933f676b97e550156f)
// not bridged: 
Theorem DET_1_GEN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, dimindex N = 1 -> det N A = A 1 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1177 / DET_1   (hash md5:81c744827fad830c8da9396448845400)
// not bridged: 
Theorem DET_1 : forall A :e R :^: idx 1 :^: idx 1, det 1 A = A 1 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1181 / DET_2   (hash md5:bee36d5c67d771bfe68d441daf697ebc)
// not bridged: 
Theorem DET_2 : forall A :e R :^: idx_n 2 :^: idx_n 2, det (idx_n 2) A = A 1 1 * A 2 2 + - A 1 2 * A 2 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1196 / DET_3   (hash md5:4fa9f3a859df25ed9b2a157928a743da)
// not bridged: 
Theorem DET_3 : forall A :e R :^: idx_n 3 :^: idx_n 3, det (idx_n 3) A = A 1 1 * A 2 2 * A 3 3 + A 1 2 * A 2 3 * A 3 1 + ((A 1 3 * A 2 1 * A 3 2 + - A 1 1 * A 2 3 * A 3 2) + - A 1 2 * A 2 1 * A 3 3) + - A 1 3 * A 2 2 * A 3 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1217 / DET_4   (hash md5:c6c1209f1029bd96c2f54751d67ee8fa)
// not bridged: 
Theorem DET_4 : forall A :e R :^: idx_n 4 :^: idx_n 4, det (idx_n 4) A = A 1 1 * A 2 2 * A 3 3 * A 4 4 + A 1 1 * A 2 3 * A 3 4 * A 4 2 + A 1 1 * A 2 4 * A 3 2 * A 4 3 + A 1 2 * A 2 1 * A 3 4 * A 4 3 + A 1 2 * A 2 3 * A 3 1 * A 4 4 + A 1 2 * A 2 4 * A 3 3 * A 4 1 + A 1 3 * A 2 1 * A 3 2 * A 4 4 + A 1 3 * A 2 2 * A 3 4 * A 4 1 + A 1 3 * A 2 4 * A 3 1 * A 4 2 + A 1 4 * A 2 1 * A 3 3 * A 4 2 + A 1 4 * A 2 2 * A 3 1 * A 4 3 + (((((((((((A 1 4 * A 2 3 * A 3 2 * A 4 1 + - A 1 1 * A 2 2 * A 3 4 * A 4 3) + - A 1 1 * A 2 3 * A 3 2 * A 4 4) + - A 1 1 * A 2 4 * A 3 3 * A 4 2) + - A 1 2 * A 2 1 * A 3 3 * A 4 4) + - A 1 2 * A 2 3 * A 3 4 * A 4 1) + - A 1 2 * A 2 4 * A 3 1 * A 4 3) + - A 1 3 * A 2 1 * A 3 4 * A 4 2) + - A 1 3 * A 2 2 * A 3 1 * A 4 4) + - A 1 3 * A 2 4 * A 3 2 * A 4 1) + - A 1 4 * A 2 1 * A 3 2 * A 4 3) + - A 1 4 * A 2 2 * A 3 3 * A 4 1) + - A 1 4 * A 2 3 * A 3 1 * A 4 2.
Admitted.

// HOL Light: Multivariate/determinants.ml:1259 / COFACTOR_1_GEN   (hash md5:55c8278b009efd3cadb2a5865185e646)
// not bridged: 
Theorem COFACTOR_1_GEN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, dimindex N = 1 -> cofactor N A = mat N N 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1265 / COFACTOR_1   (hash md5:c40acdacafc5db59d91992e6ee69cd9a)
// not bridged: 
Theorem COFACTOR_1 : forall A :e R :^: idx 1 :^: idx 1, cofactor 1 A = mat 1 1 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:1273 / DISJOINT_HYPERPLANES_IMP_COLLINEAR   (hash md5:7535b7a909d7d3097908b74823a9b293)
// not bridged: 
Theorem DISJOINT_HYPERPLANES_IMP_COLLINEAR : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} :/\: {x :e R :^: idx N | dot N b x = d} = Empty -> collinear N {vec N 0,a,b}.
Admitted.

// HOL Light: Multivariate/determinants.ml:1295 / DISJOINT_HALFSPACES_IMP_COLLINEAR   (hash md5:6b91f539c288370b62ee7ee485e4d5e2)
// not bridged: 
Theorem DISJOINT_HALFSPACES_IMP_COLLINEAR : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} :/\: {x :e R :^: idx N | dot N b x < d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} :/\: {x :e R :^: idx N | dot N b x <= d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} :/\: {x :e R :^: idx N | dot N b x = d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} :/\: {x :e R :^: idx N | d <= dot N b x} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} :/\: {x :e R :^: idx N | d < dot N b x} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} :/\: {x :e R :^: idx N | dot N b x < d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} :/\: {x :e R :^: idx N | dot N b x <= d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} :/\: {x :e R :^: idx N | dot N b x = d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} :/\: {x :e R :^: idx N | d <= dot N b x} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} :/\: {x :e R :^: idx N | d < dot N b x} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} :/\: {x :e R :^: idx N | dot N b x < d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} :/\: {x :e R :^: idx N | dot N b x <= d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} :/\: {x :e R :^: idx N | dot N b x = d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} :/\: {x :e R :^: idx N | d <= dot N b x} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} :/\: {x :e R :^: idx N | d < dot N b x} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} :/\: {x :e R :^: idx N | dot N b x < d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} :/\: {x :e R :^: idx N | dot N b x <= d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} :/\: {x :e R :^: idx N | dot N b x = d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} :/\: {x :e R :^: idx N | d <= dot N b x} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} :/\: {x :e R :^: idx N | d < dot N b x} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} :/\: {x :e R :^: idx N | dot N b x < d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} :/\: {x :e R :^: idx N | dot N b x <= d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} :/\: {x :e R :^: idx N | dot N b x = d} = Empty -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} :/\: {x :e R :^: idx N | d <= dot N b x} = Empty -> collinear N {vec N 0,a,b}) /\ forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} :/\: {x :e R :^: idx N | d < dot N b x} = Empty -> collinear N {vec N 0,a,b}))))))))))))))))))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1396 / SUBSET_HALFSPACES_IMP_COLLINEAR   (hash md5:a3ef91bdec0a65cd9e6d2abc12c4c0c6)
// not bridged: 
Theorem SUBSET_HALFSPACES_IMP_COLLINEAR : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} c= {x :e R :^: idx N | dot N b x < d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} c= {x :e R :^: idx N | dot N b x <= d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} c= {x :e R :^: idx N | dot N b x = d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} c= {x :e R :^: idx N | d <= dot N b x} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x < c} c= {x :e R :^: idx N | d < dot N b x} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} c= {x :e R :^: idx N | dot N b x < d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} c= {x :e R :^: idx N | dot N b x <= d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} c= {x :e R :^: idx N | dot N b x = d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} c= {x :e R :^: idx N | d <= dot N b x} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x <= c} c= {x :e R :^: idx N | d < dot N b x} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} c= {x :e R :^: idx N | dot N b x < d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} c= {x :e R :^: idx N | dot N b x <= d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} c= {x :e R :^: idx N | dot N b x = d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} c= {x :e R :^: idx N | d <= dot N b x} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | dot N a x = c} c= {x :e R :^: idx N | d < dot N b x} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} c= {x :e R :^: idx N | dot N b x < d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} c= {x :e R :^: idx N | dot N b x <= d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} c= {x :e R :^: idx N | dot N b x = d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} c= {x :e R :^: idx N | d <= dot N b x} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c <= dot N a x} c= {x :e R :^: idx N | d < dot N b x} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} c= {x :e R :^: idx N | dot N b x < d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} c= {x :e R :^: idx N | dot N b x <= d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} c= {x :e R :^: idx N | dot N b x = d} -> collinear N {vec N 0,a,b}) /\ ((forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} c= {x :e R :^: idx N | d <= dot N b x} -> collinear N {vec N 0,a,b}) /\ forall a b :e R :^: idx N, forall c d :e R, {x :e R :^: idx N | c < dot N a x} c= {x :e R :^: idx N | d < dot N b x} -> collinear N {vec N 0,a,b}))))))))))))))))))))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1484 / SUBSET_HYPERPLANES   (hash md5:d7128e1a808f56549f14783958129a99)
// not bridged: 
Theorem SUBSET_HYPERPLANES : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, forall a' :e R :^: idx N, forall b' :e R, {x :e R :^: idx N | dot N a x = b} c= {x :e R :^: idx N | dot N a' x = b'} <-> {x :e R :^: idx N | dot N a x = b} = Empty \/ ({x :e R :^: idx N | dot N a' x = b'} = R :^: idx N \/ {x :e R :^: idx N | dot N a x = b} = {x :e R :^: idx N | dot N a' x = b'}).
Admitted.

// HOL Light: Multivariate/determinants.ml:1519 / EIGENVALUES_CHARACTERISTIC_ALT   (hash md5:47cd7880812e0bba47244c5111468669)
// not bridged: 
Theorem EIGENVALUES_CHARACTERISTIC_ALT : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall c :e R, (exists v :e R :^: idx N, ~ v = vec N 0 /\ matrix_vector_mul N N A v = vector_mul N c v) <-> det N (matrix_sub N N A (matrix_cmul N N c (mat N N 1))) = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:1526 / EIGENVALUES_CHARACTERISTIC   (hash md5:e1d44b57f03896a78cd513ddf17724b1)
// not bridged: 
Theorem EIGENVALUES_CHARACTERISTIC : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall c :e R, (exists v :e R :^: idx N, ~ v = vec N 0 /\ matrix_vector_mul N N A v = vector_mul N c v) <-> det N (matrix_sub N N (matrix_cmul N N c (mat N N 1)) A) = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:1534 / INVERTIBLE_EIGENVALUES   (hash md5:8fba369b4bd9ce61c2c5a0c29959bce6)
// not bridged: 
Theorem INVERTIBLE_EIGENVALUES : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, invertible N N A <-> forall c :e R, forall v :e R :^: idx N, matrix_vector_mul N N A v = vector_mul N c v /\ ~ v = vec N 0 -> ~ c = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:1543 / CHARACTERISTIC_POLYNOMIAL   (hash md5:d05980cf4cbf4d641563029f48a22435)
// not bridged: 
Theorem CHARACTERISTIC_POLYNOMIAL : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, exists a:set -> set, (forall x :e omega, a x :e R) /\ (a (dimindex N) = 1 /\ forall x :e R, det N (matrix_sub N N (matrix_cmul N N x (mat N N 1)) A) = finsum {i :e omega | 0 <= i /\ i <= dimindex N} (fun i:set => a i * x ^ i)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1634 / FINITE_EIGENVALUES   (hash md5:9bc6ef04b3132c3c11e347a02e0e87d0)
// not bridged: 
Theorem FINITE_EIGENVALUES : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, finite {c :e R | exists v :e R :^: idx N, ~ v = vec N 0 /\ matrix_vector_mul N N A v = vector_mul N c v}.
Admitted.

// HOL Light: Multivariate/determinants.ml:1648 / GRASSMANN_PLUCKER_2   (hash md5:624e5ef82fdd49dc94f5522254ea106e)
// not bridged: 
Theorem GRASSMANN_PLUCKER_2 : forall x1 x2 y1 y2 :e R :^: idx_n 2, det (idx_n 2) (vector (R :^: idx_n 2) (idx_n 2) (seq_cons x1 (seq_cons x2 seq_nil))) * det (idx_n 2) (vector (R :^: idx_n 2) (idx_n 2) (seq_cons y1 (seq_cons y2 seq_nil))) = det (idx_n 2) (vector (R :^: idx_n 2) (idx_n 2) (seq_cons y1 (seq_cons x2 seq_nil))) * det (idx_n 2) (vector (R :^: idx_n 2) (idx_n 2) (seq_cons x1 (seq_cons y2 seq_nil))) + det (idx_n 2) (vector (R :^: idx_n 2) (idx_n 2) (seq_cons y2 (seq_cons x2 seq_nil))) * det (idx_n 2) (vector (R :^: idx_n 2) (idx_n 2) (seq_cons y1 (seq_cons x1 seq_nil))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1655 / GRASSMANN_PLUCKER_3   (hash md5:6c7055020b3900ce265668ce08e6c9e3)
// not bridged: 
Theorem GRASSMANN_PLUCKER_3 : forall x1 x2 x3 y1 y2 y3 :e R :^: idx_n 3, det (idx_n 3) (vector (R :^: idx_n 3) (idx_n 3) (seq_cons x1 (seq_cons x2 (seq_cons x3 seq_nil)))) * det (idx_n 3) (vector (R :^: idx_n 3) (idx_n 3) (seq_cons y1 (seq_cons y2 (seq_cons y3 seq_nil)))) = det (idx_n 3) (vector (R :^: idx_n 3) (idx_n 3) (seq_cons y1 (seq_cons x2 (seq_cons x3 seq_nil)))) * det (idx_n 3) (vector (R :^: idx_n 3) (idx_n 3) (seq_cons x1 (seq_cons y2 (seq_cons y3 seq_nil)))) + det (idx_n 3) (vector (R :^: idx_n 3) (idx_n 3) (seq_cons y2 (seq_cons x2 (seq_cons x3 seq_nil)))) * det (idx_n 3) (vector (R :^: idx_n 3) (idx_n 3) (seq_cons y1 (seq_cons x1 (seq_cons y3 seq_nil)))) + det (idx_n 3) (vector (R :^: idx_n 3) (idx_n 3) (seq_cons y3 (seq_cons x2 (seq_cons x3 seq_nil)))) * det (idx_n 3) (vector (R :^: idx_n 3) (idx_n 3) (seq_cons y1 (seq_cons y2 (seq_cons x1 seq_nil)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1663 / GRASSMANN_PLUCKER_4   (hash md5:c9960bbacd0159251cb0d7b58b2c2aac)
// not bridged: 
Theorem GRASSMANN_PLUCKER_4 : forall x1 x2 x3 x4 y1 y2 y3 y4 :e R :^: idx_n 4, det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons x1 (seq_cons x2 (seq_cons x3 (seq_cons x4 seq_nil))))) * det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons y1 (seq_cons y2 (seq_cons y3 (seq_cons y4 seq_nil))))) = det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons y1 (seq_cons x2 (seq_cons x3 (seq_cons x4 seq_nil))))) * det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons x1 (seq_cons y2 (seq_cons y3 (seq_cons y4 seq_nil))))) + det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons y2 (seq_cons x2 (seq_cons x3 (seq_cons x4 seq_nil))))) * det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons y1 (seq_cons x1 (seq_cons y3 (seq_cons y4 seq_nil))))) + det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons y3 (seq_cons x2 (seq_cons x3 (seq_cons x4 seq_nil))))) * det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons y1 (seq_cons y2 (seq_cons x1 (seq_cons y4 seq_nil))))) + det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons y4 (seq_cons x2 (seq_cons x3 (seq_cons x4 seq_nil))))) * det (idx_n 4) (vector (R :^: idx_n 4) (idx_n 4) (seq_cons y1 (seq_cons y2 (seq_cons y3 (seq_cons x1 seq_nil))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:1676 / INTEGER_PRODUCT   (hash md5:d742a16fd868f36c44503ac4dea98ba7)
Theorem hlt_INTEGER_PRODUCT : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_integer (f x) = 1) -> hl_integer (hl_product A s f) = 1.
Admitted.
Theorem INTEGER_PRODUCT_bridge : (forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_integer (f x) = 1) -> hl_integer (hl_product A s f) = 1) -> (forall A:set, A <> Empty -> forall f:set -> set, (forall x :e A, f x :e R) -> forall s c= A, (forall x :e A, x :e s -> f x :e int) -> finprod s f :e int).
exact (fun H__top A HAne => ((imp_forall_fun (A) (R) (fun f => forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_integer (f x) = 1) -> hl_integer (hl_product A s f) = 1) (fun f => forall s c= A, (forall x :e A, x :e s -> f x :e int) -> finprod s f :e int) (fun f Hfc => (imp_forall_sub (A) (fun s => (forall x :e A, hl_IN A x s = 1 -> hl_integer (hl_lam A f x) = 1) -> hl_integer (hl_product A s (hl_lam A f)) = 1) (fun s => (forall x :e A, x :e s -> f x :e int) -> finprod s f :e int) (fun s Hss => (fun H__L : ((forall x :e A, hl_IN A x (hl_chi A s) = 1 -> hl_integer (hl_lam A f x) = 1) -> (hl_integer (hl_product A (hl_chi A s) (hl_lam A f)) = 1)) => fun H__hyp2 : (forall x :e A, x :e s -> f x :e int) => (iffEL (hl_integer (hl_product A (hl_chi A s) (hl_lam A f)) = 1) (finprod s f :e int) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_product A (hl_chi A s) (hl_lam A f) = finprod hl__u f) ((hl_product_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)))) (fun hl__u hl__v => hl_integer (hl_product A (hl_chi A s) (hl_lam A f)) = 1 <-> hl__u :e int) ((hl_integer_compat) (hl_product A (hl_chi A s) (hl_lam A f)) (setexp_ap (R :^: A) (R) (hl_product A (hl_chi A s)) (setexp_ap (2 :^: A) (R :^: (R :^: A)) (hl_product A) ((hl_product_in) (A) HAne) (hl_chi A s) (hl_chi_Pi (A) s)) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc))))) (H__L ((imp_forall_in (A) (fun x => x :e s -> f x :e int) (fun x => hl_IN A x (hl_chi A s) = 1 -> hl_integer (hl_lam A f x) = 1) (fun x Hx => (fun H__N : ((x :e s) -> (f x :e int)) => fun H__hyp4 : (hl_IN A x (hl_chi A s) = 1) => (iffER (hl_integer (hl_lam A f x) = 1) (f x :e int) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_integer (hl_lam A f x) = 1 <-> hl__u :e int) ((hl_integer_compat) (hl_lam A f x) (setexp_ap (A) (R) (hl_lam A f) (hl_lam_Pi (A) (R) f Hfc) (x) Hx)))) (H__N ((iffEL (hl_IN A x (hl_chi A s) = 1) (x :e s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_IN A x (hl_chi A s) = 1 <-> x :e hl__u) ((hl_IN_compat) (A) HAne (x) Hx (hl_chi A s) (hl_chi_Pi (A) s)))) H__hyp4))))) H__hyp2))))))) (H__top A HAne))).
Qed.
Theorem INTEGER_PRODUCT : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e A, f x :e R) -> forall s c= A, (forall x :e A, x :e s -> f x :e int) -> finprod s f :e int.
exact (INTEGER_PRODUCT_bridge hlt_INTEGER_PRODUCT).
Admitted.

// HOL Light: Multivariate/determinants.ml:1681 / INTEGER_SIGN   (hash md5:31df206fd91c1ebe750988ccf1318fc8)
// not bridged: 
Theorem INTEGER_SIGN : forall A:set, A <> Empty -> forall p:set -> set, (forall x :e A, p x :e A) -> sign A p :e int.
Admitted.

// HOL Light: Multivariate/determinants.ml:1685 / INTEGER_DET   (hash md5:90899e0ccc5eee745689f9abbb1a260b)
// not bridged: 
Theorem INTEGER_DET : forall N:set, N <> Empty -> forall M :e R :^: idx N :^: idx N, (forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N)) -> M i j :e int) -> det N M :e int.
Admitted.

// HOL Light: Multivariate/determinants.ml:1703 / diagonal_matrix   (hash md5:c4d55d170daf2c6633edb40bf826f810)
// not bridged: 
Theorem diagonal_matrix_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, diagonal_matrix_hl M N A <-> forall i j :e omega, 1 <= i /\ (i <= dimindex M /\ (1 <= j /\ (j <= dimindex N /\ ~ i = j))) -> A i j = 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:1710 / DIAGONAL_MATRIX   (hash md5:b7481f4c0d33e74d3705af7ad99acd6a)
// not bridged: 
Theorem DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, diagonal_matrix_hl N N A <-> A = fun i :e idx N => fun j :e idx N => if i = j then A i j else 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:1715 / DIAGONAL_MATRIX_MAT   (hash md5:82a301717b632030b828e53250843f3a)
// not bridged: 
Theorem DIAGONAL_MATRIX_MAT : forall N:set, N <> Empty -> forall m :e omega, diagonal_matrix_hl N N (mat N N m).
Admitted.

// HOL Light: Multivariate/determinants.ml:1719 / TRANSP_DIAGONAL_MATRIX   (hash md5:4f5e474c0c7ad5cb81399bad974edcd6)
// not bridged: 
Theorem TRANSP_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, diagonal_matrix_hl N N A -> transp N N A = A.
Admitted.

// HOL Light: Multivariate/determinants.ml:1725 / DIAGONAL_IMP_SYMMETRIC_MATRIX   (hash md5:640f0f736a4909243074fefdc3a32700)
// not bridged: 
Theorem DIAGONAL_IMP_SYMMETRIC_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, diagonal_matrix_hl N N A -> symmetric_matrix_hl N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:1729 / DIAGONAL_MATRIX_ADD   (hash md5:6d640840fa9d0643071ab0a54d918a00)
// not bridged: 
Theorem DIAGONAL_MATRIX_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, diagonal_matrix_hl M N A /\ diagonal_matrix_hl M N B -> diagonal_matrix_hl M N (matrix_add M N A B).
Admitted.

// HOL Light: Multivariate/determinants.ml:1736 / DIAGONAL_MATRIX_CMUL   (hash md5:22631f90b890355426a70a0e243a9ebb)
// not bridged: 
Theorem DIAGONAL_MATRIX_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall c :e R, diagonal_matrix_hl M N A -> diagonal_matrix_hl M N (matrix_cmul M N c A).
Admitted.

// HOL Light: Multivariate/determinants.ml:1741 / MATRIX_MUL_DIAGONAL   (hash md5:51fc3bdd2cd9ece045b4704f229e3697)
// not bridged: 
Theorem MATRIX_MUL_DIAGONAL : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, diagonal_matrix_hl N N A /\ diagonal_matrix_hl N N B -> matrix_mul N N N A B = fun i :e idx N => fun j :e idx N => A i j * B i j.
Admitted.

// HOL Light: Multivariate/determinants.ml:1753 / DIAGONAL_MATRIX_MUL_COMPONENT   (hash md5:d54970a52db5a222111924ceda4636e2)
// not bridged: 
Theorem DIAGONAL_MATRIX_MUL_COMPONENT : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, forall i j :e omega, diagonal_matrix_hl N N A /\ (diagonal_matrix_hl N N B /\ (1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N)))) -> matrix_mul N N N A B i j = A i j * B i j.
Admitted.

// HOL Light: Multivariate/determinants.ml:1761 / DIAGONAL_MATRIX_MUL   (hash md5:d60e398a9332c84a17996a000f9c3035)
// not bridged: 
Theorem DIAGONAL_MATRIX_MUL : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, diagonal_matrix_hl N N A /\ diagonal_matrix_hl N N B -> diagonal_matrix_hl N N (matrix_mul N N N A B).
Admitted.

// HOL Light: Multivariate/determinants.ml:1770 / DIAGONAL_MATRIX_MUL_EQ   (hash md5:e9f44e7fdfea202f59a7c542cee8d695)
// not bridged: 
Theorem DIAGONAL_MATRIX_MUL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall B :e R :^: idx N :^: idx M, diagonal_matrix_hl N N (matrix_mul N M N A B) <-> forall x y :e idx N, x <> y -> orthogonal M (row N M x A) (column M N y B).
Admitted.

// HOL Light: Multivariate/determinants.ml:1778 / DIAGONAL_MATRIX_INV_EXPLICIT   (hash md5:6c7c63c48832255347e6d09738d6638c)
// not bridged: 
Theorem DIAGONAL_MATRIX_INV_EXPLICIT : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, diagonal_matrix_hl N N A -> matrix_inv N N A = fun i :e idx N => fun j :e idx N => recip_SNo (A i j).
Admitted.

// HOL Light: Multivariate/determinants.ml:1798 / DIAGONAL_MATRIX_INV_COMPONENT   (hash md5:53594cf24521312beb1dda8d94f11397)
// not bridged: 
Theorem DIAGONAL_MATRIX_INV_COMPONENT : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i j :e omega, diagonal_matrix_hl N N A /\ (1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N))) -> matrix_inv N N A i j = recip_SNo (A i j).
Admitted.

// HOL Light: Multivariate/determinants.ml:1805 / DIAGONAL_MATRIX_INV   (hash md5:5c9d659fb76dbedf82a7e6f094943a4f)
// not bridged: 
Theorem DIAGONAL_MATRIX_INV : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, diagonal_matrix_hl N N (matrix_inv N N A) <-> diagonal_matrix_hl N N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:1814 / DET_DIAGONAL   (hash md5:ceb23be10d45b7bb0b07bd3bf5f0966b)
// not bridged: 
Theorem DET_DIAGONAL : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, diagonal_matrix_hl N N A -> det N A = finprod (idx N) (fun i:set => A i i).
Admitted.

// HOL Light: Multivariate/determinants.ml:1823 / INVERTIBLE_DIAGONAL_MATRIX   (hash md5:3ebb00120bb897a4b2cbd75b25dd6b4b)
// not bridged: 
Theorem INVERTIBLE_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall D :e R :^: idx N :^: idx N, diagonal_matrix_hl N N D -> (invertible N N D <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> ~ D i i = 0).
Admitted.

// HOL Light: Multivariate/determinants.ml:1831 / COMMUTING_WITH_DIAGONAL_MATRIX   (hash md5:c98fef369c75edbb05dead88a8c91ce3)
// not bridged: 
Theorem COMMUTING_WITH_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A D :e R :^: idx N :^: idx N, diagonal_matrix_hl N N D -> (matrix_mul N N N A D = matrix_mul N N N D A <-> forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N)) -> A i j = 0 \/ D i i = D j j).
Admitted.

// HOL Light: Multivariate/determinants.ml:1846 / RANK_DIAGONAL_MATRIX   (hash md5:7458247fb08fa195933b545045624a9e)
// not bridged: 
Theorem RANK_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, diagonal_matrix_hl N N A -> rank N N A = finite_cardinality {i :e omega | i :e idx N /\ ~ A i i = 0}.
Admitted.

// HOL Light: Multivariate/determinants.ml:1905 / ONORM_DIAGONAL_MATRIX   (hash md5:8afb1c779b11176f30dcfac9cd7d5ae2)
// not bridged: 
Theorem ONORM_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, diagonal_matrix_hl N N A -> onorm N N (matrix_vector_mul N N A) = sup {abs_SNo (A i i) | i :e omega, 1 <= i /\ i <= dimindex N}.
Admitted.

// HOL Light: Multivariate/determinants.ml:1939 / positive_semidefinite   (hash md5:b02f99308a23c5a1a41dbf038870ac2d)
// not bridged: 
Theorem positive_semidefinite_thm : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_semidefinite N A <-> symmetric_matrix_hl N A /\ forall x :e R :^: idx N, 0 <= dot N x (matrix_vector_mul N N A x).
Admitted.

// HOL Light: Multivariate/determinants.ml:1943 / POSITIVE_SEMIDEFINITE_IMP_SYMMETRIC_MATRIX   (hash md5:c189f247fdb1fea752ef994e813c670b)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_IMP_SYMMETRIC_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_semidefinite N A -> symmetric_matrix_hl N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:1947 / POSITIVE_SEMIDEFINITE_IMP_SYMMETRIC   (hash md5:48b5e27c6bbadad7ac0337b24f00a4da)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_IMP_SYMMETRIC : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_semidefinite N A -> transp N N A = A.
Admitted.

// HOL Light: Multivariate/determinants.ml:1952 / POSITIVE_SEMIDEFINITE_ADD   (hash md5:da7f7e5d1f66bd95414a3a2a2d9756b5)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_ADD : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, positive_semidefinite N A /\ positive_semidefinite N B -> positive_semidefinite N (matrix_add N N A B).
Admitted.

// HOL Light: Multivariate/determinants.ml:1959 / POSITIVE_SEMIDEFINITE_CMUL   (hash md5:b2318a2da1ebcf2fff00a251d4a2b5c2)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_CMUL : forall N:set, N <> Empty -> forall c :e R, forall A :e R :^: idx N :^: idx N, positive_semidefinite N A /\ 0 <= c -> positive_semidefinite N (matrix_cmul N N c A).
Admitted.

// HOL Light: Multivariate/determinants.ml:1966 / POSITIVE_SEMIDEFINITE_TRANSP   (hash md5:9e16b5d711560a5fa76b4b0ab53d3a22)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_semidefinite N (transp N N A) <-> positive_semidefinite N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:1971 / POSITIVE_SEMIDEFINITE_COVARIANCE   (hash md5:ff1bee358097b64bd50a3db2d1f715e9)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_COVARIANCE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, positive_semidefinite N (matrix_mul N M N (transp M N A) A).
Admitted.

// HOL Light: Multivariate/determinants.ml:1979 / POSITIVE_SEMIDEFINITE_SIMILAR   (hash md5:853234a5020eef7f47e1de646eb9c67b)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_SIMILAR : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx M, forall B :e R :^: idx N :^: idx M, positive_semidefinite M A -> positive_semidefinite N (matrix_mul N M N (transp M N B) (matrix_mul M M N A B)).
Admitted.

// HOL Light: Multivariate/determinants.ml:1990 / POSITIVE_SEMIDEFINITE_SIMILAR_EQ   (hash md5:04ecdbbf8d179f76b47ea6bf40591ae7)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_SIMILAR_EQ : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, invertible N N B -> (positive_semidefinite N (matrix_mul N N N (transp N N B) (matrix_mul N N N A B)) <-> positive_semidefinite N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2003 / POSITIVE_SEMIDEFINITE_DIAGONAL_MATRIX   (hash md5:477ac55b86535a0901f70a5fbd8976c9)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall D :e R :^: idx N :^: idx N, diagonal_matrix_hl N N D /\ (forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 <= D i i) -> positive_semidefinite N D.
Admitted.

// HOL Light: Multivariate/determinants.ml:2020 / POSITIVE_SEMIDEFINITE_DIAGONAL_MATRIX_EQ   (hash md5:d8cfb73978b86f793fb733545102fac3)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_DIAGONAL_MATRIX_EQ : forall N:set, N <> Empty -> forall D :e R :^: idx N :^: idx N, diagonal_matrix_hl N N D -> (positive_semidefinite N D <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 <= D i i).
Admitted.

// HOL Light: Multivariate/determinants.ml:2031 / DIAGONAL_POSITIVE_SEMIDEFINITE   (hash md5:cd4a84713c768764bc4cf19710322b70)
// not bridged: 
Theorem DIAGONAL_POSITIVE_SEMIDEFINITE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i :e omega, positive_semidefinite N A /\ (1 <= i /\ i <= dimindex N) -> 0 <= A i i.
Admitted.

// HOL Light: Multivariate/determinants.ml:2039 / TRACE_POSITIVE_SEMIDEFINITE   (hash md5:a0e9df4f193ae024ee5ffb034b2069fd)
// not bridged: 
Theorem TRACE_POSITIVE_SEMIDEFINITE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_semidefinite N A -> 0 <= trace N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2043 / TRACE_LE_MUL_SQUARES   (hash md5:2ef4d4cd0bddc9ac1bc2c542b5bb8ea4)
// not bridged: 
Theorem TRACE_LE_MUL_SQUARES : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, symmetric_matrix_hl N A /\ symmetric_matrix_hl N B -> trace N (matrix_mul N N N (matrix_mul N N N A B) (matrix_mul N N N A B)) <= trace N (matrix_mul N N N (matrix_mul N N N A A) (matrix_mul N N N B B)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2057 / POSITIVE_SEMIDEFINITE_ZERO_FORM   (hash md5:d51ce41d5e09ac27ef22e8e8bc1410c5)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_ZERO_FORM : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall A :e R :^: idx N :^: idx N, positive_semidefinite N A /\ dot N x (matrix_vector_mul N N A x) = 0 -> matrix_vector_mul N N A x = vec N 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:2079 / POSITIVE_SEMIDEFINITE_ZERO_FORM_EQ   (hash md5:d410dc17ceb4afffdabe893bd296361a)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_ZERO_FORM_EQ : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall A :e R :^: idx N :^: idx N, positive_semidefinite N A -> (dot N x (matrix_vector_mul N N A x) = 0 <-> matrix_vector_mul N N A x = vec N 0).
Admitted.

// HOL Light: Multivariate/determinants.ml:2085 / POSITIVE_SEMIDEFINITE_1_GEN   (hash md5:a79ddfffbe8172b64937acef0e0a6621)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_1_GEN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, dimindex N = 1 -> (positive_semidefinite N A <-> 0 <= A 1 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2098 / POSITIVE_SEMIDEFINITE_1   (hash md5:c2e214dc907772f6ae59456c31131515)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_1 : forall A :e R :^: idx 1 :^: idx 1, positive_semidefinite 1 A <-> 0 <= A 1 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2103 / POSITIVE_SEMIDEFINITE_SUBMATRIX_2   (hash md5:5a595049bcc70b47ca1a5663b8ff0c53)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_SUBMATRIX_2 : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i j :e omega, positive_semidefinite N A /\ (1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N))) -> positive_semidefinite (idx_n 2) (vector (R :^: idx_n 2) (idx_n 2) (seq_cons (vector R (idx_n 2) (seq_cons (A i i) (seq_cons (A i j) seq_nil))) (seq_cons (vector R (idx_n 2) (seq_cons (A j i) (seq_cons (A j j) seq_nil))) seq_nil))).
Admitted.

// HOL Light: Multivariate/determinants.ml:2141 / DOT_VECTORIZE   (hash md5:e3ee48866084745181289910b23876ca)
// not bridged: 
Theorem DOT_VECTORIZE : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, dot (idx_n (dimindex M * dimindex N)) (vectorize R M N A) (vectorize R M N B) = trace N (matrix_mul N M N (transp M N A) B).
Admitted.

// HOL Light: Multivariate/determinants.ml:2173 / NORM_VECTORIZE_TRANSP   (hash md5:b2ef07e6eaf4d224cde9e4bed4ef975c)
// not bridged: 
Theorem NORM_VECTORIZE_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, vector_norm (idx_n (dimindex N * dimindex M)) (vectorize R N M (transp M N A)) = vector_norm (idx_n (dimindex M * dimindex N)) (vectorize R M N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2179 / COMPATIBLE_NORM_VECTORIZE   (hash md5:e3c889d10cea69b0cc2abf89b1c483d5)
// not bridged: 
Theorem COMPATIBLE_NORM_VECTORIZE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall x :e R :^: idx N, vector_norm M (matrix_vector_mul M N A x) <= vector_norm (idx_n (dimindex M * dimindex N)) (vectorize R M N A) * vector_norm N x.
Admitted.

// HOL Light: Multivariate/determinants.ml:2198 / ONORM_LE_NORM_VECTORIZE   (hash md5:ecba2a96a829b7e96ad3c898aec3bd10)
// not bridged: 
Theorem ONORM_LE_NORM_VECTORIZE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, onorm M N (matrix_vector_mul N M A) <= vector_norm (idx_n (dimindex N * dimindex M)) (vectorize R N M A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2204 / NORM_VECTORIZE_POW_2   (hash md5:6247787387ae9673c677669ad72eb3a4)
// not bridged: 
Theorem NORM_VECTORIZE_POW_2 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, vector_norm (idx_n (dimindex M * dimindex N)) (vectorize R M N A) ^ 2 = finsum (idx M) (fun i:set => vector_norm N (A i) ^ 2).
Admitted.

// HOL Light: Multivariate/determinants.ml:2212 / NORM_VECTORIZE_MUL_LE   (hash md5:8310736c1608ee654e469fc73e5bcc69)
// not bridged: 
Theorem NORM_VECTORIZE_MUL_LE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx P, forall B :e R :^: idx M :^: idx N, vector_norm (idx_n (dimindex P * dimindex M)) (vectorize R P M (matrix_mul P N M A B)) <= vector_norm (idx_n (dimindex P * dimindex N)) (vectorize R P N A) * vector_norm (idx_n (dimindex N * dimindex M)) (vectorize R N M B).
Admitted.

// HOL Light: Multivariate/determinants.ml:2226 / NORM_VECTORIZE_HADAMARD_LE   (hash md5:a9d5d8109b8ee26d67629529ec72e2c9)
// not bridged: 
Theorem NORM_VECTORIZE_HADAMARD_LE : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, vector_norm (idx_n (dimindex M * dimindex N)) (vectorize R M N (fun i :e idx M => fun j :e idx N => A i j * B i j)) <= vector_norm (idx_n (dimindex M * dimindex N)) (vectorize R M N A) * vector_norm (idx_n (dimindex M * dimindex N)) (vectorize R M N B).
Admitted.

// HOL Light: Multivariate/determinants.ml:2242 / TRACE_COVARIANCE_POS_LE   (hash md5:c0afef2cd7946e19c4c88e38dd3ee0d8)
// not bridged: 
Theorem TRACE_COVARIANCE_POS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, 0 <= trace M (matrix_mul M N M (transp N M A) A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2246 / TRACE_COVARIANCE_EQ_0   (hash md5:9d67aaf02083d8690feab9d7dc1dfebf)
// not bridged: 
Theorem TRACE_COVARIANCE_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, trace M (matrix_mul M N M (transp N M A) A) = 0 <-> A = mat N M 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:2250 / TRACE_COVARIANCE_POS_LT   (hash md5:a44e083fc2275ebdbb4bb558307a70c3)
// not bridged: 
Theorem TRACE_COVARIANCE_POS_LT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, 0 < trace M (matrix_mul M N M (transp N M A) A) <-> ~ A = mat N M 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:2254 / TRACE_COVARIANCE_CAUCHY_SCHWARZ   (hash md5:0f5fefa4bab0563a7cfadad0242f6b34)
// not bridged: 
Theorem TRACE_COVARIANCE_CAUCHY_SCHWARZ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx M :^: idx N, trace M (matrix_mul M N M (transp N M A) B) <= (if 0 <= trace M (matrix_mul M N M (transp N M A) A) then sqrt_SNo_nonneg (trace M (matrix_mul M N M (transp N M A) A)) else - sqrt_SNo_nonneg (- trace M (matrix_mul M N M (transp N M A) A))) * if 0 <= trace M (matrix_mul M N M (transp N M B) B) then sqrt_SNo_nonneg (trace M (matrix_mul M N M (transp N M B) B)) else - sqrt_SNo_nonneg (- trace M (matrix_mul M N M (transp N M B) B)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2260 / TRACE_COVARIANCE_CAUCHY_SCHWARZ_ABS   (hash md5:9914dc08ee75e6eb8868923288f182e9)
// not bridged: 
Theorem TRACE_COVARIANCE_CAUCHY_SCHWARZ_ABS : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx M :^: idx N, abs_SNo (trace M (matrix_mul M N M (transp N M A) B)) <= (if 0 <= trace M (matrix_mul M N M (transp N M A) A) then sqrt_SNo_nonneg (trace M (matrix_mul M N M (transp N M A) A)) else - sqrt_SNo_nonneg (- trace M (matrix_mul M N M (transp N M A) A))) * if 0 <= trace M (matrix_mul M N M (transp N M B) B) then sqrt_SNo_nonneg (trace M (matrix_mul M N M (transp N M B) B)) else - sqrt_SNo_nonneg (- trace M (matrix_mul M N M (transp N M B) B)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2266 / TRACE_COVARIANCE_CAUCHY_SCHWARZ_SQUARE   (hash md5:c3b27798652f0ab3788d5cfe3e4a663c)
// not bridged: 
Theorem TRACE_COVARIANCE_CAUCHY_SCHWARZ_SQUARE : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx M :^: idx N, trace M (matrix_mul M N M (transp N M A) B) ^ 2 <= trace M (matrix_mul M N M (transp N M A) A) * trace M (matrix_mul M N M (transp N M B) B).
Admitted.

// HOL Light: Multivariate/determinants.ml:2279 / positive_definite   (hash md5:1672b5efb64fe41123b6d2b6a5b26525)
// not bridged: 
Theorem positive_definite_thm : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_definite N A <-> symmetric_matrix_hl N A /\ forall x :e R :^: idx N, ~ x = vec N 0 -> 0 < dot N x (matrix_vector_mul N N A x).
Admitted.

// HOL Light: Multivariate/determinants.ml:2283 / POSITIVE_DEFINITE_IMP_SYMMETRIC_MATRIX   (hash md5:3bf70922fcaaaaa08ec4d6e8612b2a5a)
// not bridged: 
Theorem POSITIVE_DEFINITE_IMP_SYMMETRIC_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_definite N A -> symmetric_matrix_hl N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2287 / POSITIVE_DEFINITE_IMP_SYMMETRIC   (hash md5:af5e1a44522ffc3260feed65333b5147)
// not bridged: 
Theorem POSITIVE_DEFINITE_IMP_SYMMETRIC : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_definite N A -> transp N N A = A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2291 / POSITIVE_DEFINITE_POSITIVE_SEMIDEFINITE   (hash md5:2cbb379a68f73401e05cf9a529d2d7e8)
// not bridged: 
Theorem POSITIVE_DEFINITE_POSITIVE_SEMIDEFINITE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_definite N A <-> positive_semidefinite N A /\ invertible N N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2305 / POSITIVE_DEFINITE_SIMILAR_EQ   (hash md5:48115b793ea2477be7c2b7cfac89d533)
// not bridged: 
Theorem POSITIVE_DEFINITE_SIMILAR_EQ : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, positive_definite N (matrix_mul N N N (transp N N B) (matrix_mul N N N A B)) <-> invertible N N B /\ positive_definite N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2314 / POSITIVE_DEFINITE_1_GEN   (hash md5:262623671bcdaf6e3ea2727e93f56c2f)
// not bridged: 
Theorem POSITIVE_DEFINITE_1_GEN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, dimindex N = 1 -> (positive_definite N A <-> 0 < A 1 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2328 / POSITIVE_DEFINITE_1   (hash md5:29e13a603c449b8423d2b9f5d9176c81)
// not bridged: 
Theorem POSITIVE_DEFINITE_1 : forall A :e R :^: idx 1 :^: idx 1, positive_definite 1 A <-> 0 < A 1 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2333 / POSITIVE_DEFINITE_IMP_INVERTIBLE   (hash md5:525e1a6470599afb2aac55697bd21daa)
// not bridged: 
Theorem POSITIVE_DEFINITE_IMP_INVERTIBLE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_definite N A -> invertible N N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2337 / POSITIVE_DEFINITE_IMP_POSITIVE_SEMIDEFINITE   (hash md5:9a055a18429ad02ca660bd6f56143d55)
// not bridged: 
Theorem POSITIVE_DEFINITE_IMP_POSITIVE_SEMIDEFINITE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_definite N A -> positive_semidefinite N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2341 / POSITIVE_SEMIDEFINITE_POSITIVE_DEFINITE_ADD   (hash md5:7428b15498a83b4eeeddb2ca056aa5a9)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_POSITIVE_DEFINITE_ADD : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, positive_semidefinite N A /\ positive_definite N B -> positive_definite N (matrix_add N N A B).
Admitted.

// HOL Light: Multivariate/determinants.ml:2348 / POSITIVE_DEFINITE_POSITIVE_SEMIDEFINITE_ADD   (hash md5:e289786a1803ee64488848e74e17c116)
// not bridged: 
Theorem POSITIVE_DEFINITE_POSITIVE_SEMIDEFINITE_ADD : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, positive_definite N A /\ positive_semidefinite N B -> positive_definite N (matrix_add N N A B).
Admitted.

// HOL Light: Multivariate/determinants.ml:2355 / POSITIVE_DEFINITE_ADD   (hash md5:bbbbf3f8aa41991ee57f3380d32fed89)
// not bridged: 
Theorem POSITIVE_DEFINITE_ADD : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, positive_definite N A /\ positive_definite N B -> positive_definite N (matrix_add N N A B).
Admitted.

// HOL Light: Multivariate/determinants.ml:2362 / POSITIVE_DEFINITE_CMUL   (hash md5:1bca6b9f95d8362c7d78ba913932ace7)
// not bridged: 
Theorem POSITIVE_DEFINITE_CMUL : forall N:set, N <> Empty -> forall c :e R, forall A :e R :^: idx N :^: idx N, positive_definite N A /\ 0 < c -> positive_definite N (matrix_cmul N N c A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2369 / NEARBY_POSITIVE_DEFINITE_MATRIX_GEN   (hash md5:96f90a150958c243959869f7ade1c0b2)
// not bridged: 
Theorem NEARBY_POSITIVE_DEFINITE_MATRIX_GEN : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, forall x :e R, positive_semidefinite N A /\ (positive_definite N B /\ 0 < x) -> positive_definite N (matrix_add N N A (matrix_cmul N N x B)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2376 / POSITIVE_DEFINITE_TRANSP   (hash md5:62d326de46b169a112e49131a7acc17e)
// not bridged: 
Theorem POSITIVE_DEFINITE_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_definite N (transp N N A) <-> positive_definite N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2381 / POSITIVE_DEFINITE_COVARIANCE   (hash md5:2256f72b136aca0353ff7a1c37d92350)
// not bridged: 
Theorem POSITIVE_DEFINITE_COVARIANCE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_definite N (matrix_mul N N N (transp N N A) A) <-> invertible N N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2387 / POSITIVE_DEFINITE_SIMILAR   (hash md5:a0fd493521b88ea0f4ef738365ffa996)
// not bridged: 
Theorem POSITIVE_DEFINITE_SIMILAR : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, positive_definite N A /\ invertible N N B -> positive_definite N (matrix_mul N N N (transp N N B) (matrix_mul N N N A B)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2395 / POSITIVE_DEFINITE_DIAGONAL_MATRIX   (hash md5:25961894ed4bb095456e6bc9865b89c2)
// not bridged: 
Theorem POSITIVE_DEFINITE_DIAGONAL_MATRIX : forall N:set, N <> Empty -> forall D :e R :^: idx N :^: idx N, diagonal_matrix_hl N N D /\ (forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 < D i i) -> positive_definite N D.
Admitted.

// HOL Light: Multivariate/determinants.ml:2415 / POSITIVE_DEFINITE_DIAGONAL_MATRIX_EQ   (hash md5:177790af083571377b08a6bf771f8bf6)
// not bridged: 
Theorem POSITIVE_DEFINITE_DIAGONAL_MATRIX_EQ : forall N:set, N <> Empty -> forall D :e R :^: idx N :^: idx N, diagonal_matrix_hl N N D -> (positive_definite N D <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 < D i i).
Admitted.

// HOL Light: Multivariate/determinants.ml:2427 / DIAGONAL_POSITIVE_DEFINITE   (hash md5:fd8a929391ba04ce65148d7269e860d2)
// not bridged: 
Theorem DIAGONAL_POSITIVE_DEFINITE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall i :e omega, positive_definite N A /\ (1 <= i /\ i <= dimindex N) -> 0 < A i i.
Admitted.

// HOL Light: Multivariate/determinants.ml:2436 / TRACE_POSITIVE_DEFINITE   (hash md5:503e91d119d851942fa256dd118916b3)
// not bridged: 
Theorem TRACE_POSITIVE_DEFINITE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_definite N A -> 0 < trace N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2441 / POSITIVE_DEFINITE_MAT   (hash md5:0e10674574c71a96810a26cd3c48c24e)
// not bridged: 
Theorem POSITIVE_DEFINITE_MAT : forall N:set, N <> Empty -> forall m :e omega, positive_definite N (mat N N m) <-> 0 < m.
Admitted.

// HOL Light: Multivariate/determinants.ml:2447 / POSITIVE_DEFINITE_ID   (hash md5:ede8e984629684da37c37fedf416e9b2)
// not bridged: 
Theorem POSITIVE_DEFINITE_ID : forall N:set, N <> Empty -> positive_definite N (mat N N 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2451 / POSITIVE_SEMIDEFINITE_MAT   (hash md5:40d4979aee2720f1341baa92c883e9ed)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_MAT : forall N:set, N <> Empty -> forall m :e omega, positive_semidefinite N (mat N N m).
Admitted.

// HOL Light: Multivariate/determinants.ml:2457 / NEARBY_POSITIVE_DEFINITE_MATRIX   (hash md5:3ac7f30c727f668e437e8e61b74ee14b)
// not bridged: 
Theorem NEARBY_POSITIVE_DEFINITE_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall x :e R, positive_semidefinite N A /\ 0 < x -> positive_definite N (matrix_add N N A (matrix_cmul N N x (mat N N 1))).
Admitted.

// HOL Light: Multivariate/determinants.ml:2462 / POSITIVE_SEMIDEFINITE_ANTISYM   (hash md5:735db76a82f6d701f5f2352720e65d9a)
// not bridged: 
Theorem POSITIVE_SEMIDEFINITE_ANTISYM : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, positive_semidefinite N A /\ positive_semidefinite N (matrix_neg N N A) <-> A = mat N N 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:2475 / LOEWNER_ORDER_ANTISYM   (hash md5:e3f92c3707dfaa957f1e83be52b8fc78)
// not bridged: 
Theorem LOEWNER_ORDER_ANTISYM : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, positive_semidefinite N (matrix_sub N N A B) /\ positive_semidefinite N (matrix_sub N N B A) <-> A = B.
Admitted.

// HOL Light: Multivariate/determinants.ml:2487 / HADAMARD_INEQUALITY_ROW   (hash md5:dfed0908b4466505de9ed8077297dab1)
// not bridged: 
Theorem HADAMARD_INEQUALITY_ROW : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, abs_SNo (det N A) <= finprod (idx N) (fun i:set => vector_norm N (row N N i A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2637 / HADAMARD_INEQUALITY_COLUMN   (hash md5:5ed0a4fb1c865a9bb0554b176e675138)
// not bridged: 
Theorem HADAMARD_INEQUALITY_COLUMN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, abs_SNo (det N A) <= finprod (idx N) (fun i:set => vector_norm N (column N N i A)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2646 / orthogonal_transformation   (hash md5:ce9046e94cb3143b9815dc4a256bdb72)
// not bridged: 
Theorem orthogonal_transformation_thm : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> (orthogonal_transformation N f <-> linear N N f /\ forall v w :e R :^: idx N, dot N (f v) (f w) = dot N v w).
Admitted.

// HOL Light: Multivariate/determinants.ml:2650 / ORTHOGONAL_TRANSFORMATION   (hash md5:b0bfeee172981e6830d618d5cf10b6c9)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx A) -> (orthogonal_transformation A f <-> linear A A f /\ forall v :e R :^: idx A, vector_norm A (f v) = vector_norm A v).
Admitted.

// HOL Light: Multivariate/determinants.ml:2655 / ORTHOGONAL_ORTHOGONAL_TRANSFORMATION   (hash md5:8317ecbb14eda32952a6ff0450a417ab)
// not bridged: 
Theorem ORTHOGONAL_ORTHOGONAL_TRANSFORMATION : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall x y :e R :^: idx N, orthogonal_transformation N f -> (orthogonal N (f x) (f y) <-> orthogonal N x y).
Admitted.

// HOL Light: Multivariate/determinants.ml:2661 / ORTHOGONAL_TRANSFORMATION_COMPOSE   (hash md5:f82be1ffc5341bf9f8e2209323f2a5c5)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_COMPOSE : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx A) -> orthogonal_transformation A f /\ orthogonal_transformation A g -> orthogonal_transformation A (fun x:set => f (g x)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2666 / ORTHOGONAL_TRANSFORMATION_NEG   (hash md5:c1ba504cfd7a4b00fef4742c67e94310)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_NEG : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> (orthogonal_transformation N (fun x:set => vector_neg N (f x)) <-> orthogonal_transformation N f).
Admitted.

// HOL Light: Multivariate/determinants.ml:2671 / ORTHOGONAL_TRANSFORMATION_LINEAR   (hash md5:f526f16b07e27e795b7860e65128a4b7)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_LINEAR : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> orthogonal_transformation N f -> linear N N f.
Admitted.

// HOL Light: Multivariate/determinants.ml:2675 / ORTHOGONAL_TRANSFORMATION_INJECTIVE   (hash md5:4f23a0dd26ae7aee79f2375403a9f362)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_INJECTIVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> orthogonal_transformation N f -> forall x y :e R :^: idx N, f x = f y -> x = y.
Admitted.

// HOL Light: Multivariate/determinants.ml:2680 / ORTHOGONAL_TRANSFORMATION_SURJECTIVE   (hash md5:6f2671bfcd69ac40ed116c699f4c7cea)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_SURJECTIVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> orthogonal_transformation N f -> forall y :e R :^: idx N, exists x :e R :^: idx N, f x = y.
Admitted.

// HOL Light: Multivariate/determinants.ml:2686 / orthogonal_matrix   (hash md5:d602ca03d7f1120d4697424d26b2e583)
// not bridged: 
Theorem orthogonal_matrix_thm : forall N:set, N <> Empty -> forall Q :e R :^: idx N :^: idx N, orthogonal_matrix_hl N Q <-> matrix_mul N N N (transp N N Q) Q = mat N N 1 /\ matrix_mul N N N Q (transp N N Q) = mat N N 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2690 / ORTHOGONAL_MATRIX   (hash md5:4303833dc2733128ff6d54630ac9c11f)
// not bridged: 
Theorem ORTHOGONAL_MATRIX : forall N:set, N <> Empty -> forall Q :e R :^: idx N :^: idx N, orthogonal_matrix_hl N Q <-> matrix_mul N N N (transp N N Q) Q = mat N N 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2694 / ORTHOGONAL_MATRIX_ALT   (hash md5:a503c700cfef9304b637fa54213a0efd)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ALT : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> matrix_mul N N N A (transp N N A) = mat N N 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2698 / ORTHOGONAL_MATRIX_TRANSP   (hash md5:44d968885955bf284dc181ddfdf7b267)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N (transp N N A) <-> orthogonal_matrix_hl N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2702 / ORTHOGONAL_MATRIX_TRANSP_LMUL   (hash md5:c50a7be8d7e42d771e6a26f83d08bb85)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_TRANSP_LMUL : forall N:set, N <> Empty -> forall P :e R :^: idx N :^: idx N, orthogonal_matrix_hl N P -> matrix_mul N N N (transp N N P) P = mat N N 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2706 / ORTHOGONAL_MATRIX_TRANSP_RMUL   (hash md5:64cced9b3be8329a1145b002587eb685)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_TRANSP_RMUL : forall N:set, N <> Empty -> forall P :e R :^: idx N :^: idx N, orthogonal_matrix_hl N P -> matrix_mul N N N P (transp N N P) = mat N N 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2710 / NORM_VECTORIZE_ORTHOGONAL_MATRIX_RMUL   (hash md5:5b0c555ca5f1dc8ba4365c1f498e21fa)
// not bridged: 
Theorem NORM_VECTORIZE_ORTHOGONAL_MATRIX_RMUL : forall N:set, N <> Empty -> forall A P :e R :^: idx N :^: idx N, orthogonal_matrix_hl N P -> vector_norm (idx_n (dimindex N * dimindex N)) (vectorize R N N (matrix_mul N N N A P)) = vector_norm (idx_n (dimindex N * dimindex N)) (vectorize R N N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2722 / NORM_VECTORIZE_ORTHOGONAL_MATRIX_LMUL   (hash md5:552101237c5b300cfa164bbb199ab6ff)
// not bridged: 
Theorem NORM_VECTORIZE_ORTHOGONAL_MATRIX_LMUL : forall N:set, N <> Empty -> forall A P :e R :^: idx N :^: idx N, orthogonal_matrix_hl N P -> vector_norm (idx_n (dimindex N * dimindex N)) (vectorize R N N (matrix_mul N N N P A)) = vector_norm (idx_n (dimindex N * dimindex N)) (vectorize R N N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2730 / ORTHOGONAL_MATRIX_ID   (hash md5:2dd0701485aa74a88976dbf7e5144354)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ID : forall A:set, A <> Empty -> orthogonal_matrix_hl A (mat A A 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2734 / ORTHOGONAL_MATRIX_MUL   (hash md5:fd3588bd12931190a4412b9608921a82)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_MUL : forall A:set, A <> Empty -> forall A0 B :e R :^: idx A :^: idx A, orthogonal_matrix_hl A A0 /\ orthogonal_matrix_hl A B -> orthogonal_matrix_hl A (matrix_mul A A A A0 B).
Admitted.

// HOL Light: Multivariate/determinants.ml:2742 / ORTHOGONAL_TRANSFORMATION_MATRIX   (hash md5:9683fbbe3752f9b326fc115b01e08623)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_MATRIX : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> (orthogonal_transformation N f <-> linear N N f /\ orthogonal_matrix_hl N (matrix N N f)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2765 / ORTHOGONAL_MATRIX_TRANSFORMATION   (hash md5:22994aa235a2f0fb548b141974cbe67a)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_TRANSFORMATION : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> orthogonal_transformation N (matrix_vector_mul N N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2770 / ORTHOGONAL_MATRIX_MATRIX   (hash md5:7bf3f5eaf662b62c8b461c2b104471b6)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_MATRIX : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> orthogonal_transformation N f -> orthogonal_matrix_hl N (matrix N N f).
Admitted.

// HOL Light: Multivariate/determinants.ml:2775 / ORTHOGONAL_MATRIX_NORM_EQ   (hash md5:231bd27150a0ca646934cc32718d5697)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_NORM_EQ : forall A:set, A <> Empty -> forall A0 :e R :^: idx A :^: idx A, orthogonal_matrix_hl A A0 <-> forall x :e R :^: idx A, vector_norm A (matrix_vector_mul A A A0 x) = vector_norm A x.
Admitted.

// HOL Light: Multivariate/determinants.ml:2780 / ORTHOGONAL_MATRIX_NORM   (hash md5:5753c8c1271df0d6eceede414fd6b0e1)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_NORM : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall x :e R :^: idx N, orthogonal_matrix_hl N A -> vector_norm N (matrix_vector_mul N N A x) = vector_norm N x.
Admitted.

// HOL Light: Multivariate/determinants.ml:2784 / DET_ORTHOGONAL_MATRIX   (hash md5:7ac2992424066e189c9c7b3b88593de4)
// not bridged: 
Theorem DET_ORTHOGONAL_MATRIX : forall A:set, A <> Empty -> forall Q :e R :^: idx A :^: idx A, orthogonal_matrix_hl A Q -> det A Q = 1 \/ det A Q = - 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:2790 / ORTHOGONAL_MATRIX_IMP_INVERTIBLE   (hash md5:62c9b5f5424cdfce75ef3ffb6266d6cd)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_IMP_INVERTIBLE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A -> invertible N N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2796 / MATRIX_MUL_LTRANSP_DOT_COLUMN   (hash md5:b3621fb1656e304e67f7e4b8d3e5719a)
// not bridged: 
Theorem MATRIX_MUL_LTRANSP_DOT_COLUMN : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_mul N M N (transp M N A) A = fun i :e idx N => fun j :e idx N => dot M (column M N i A) (column M N j A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2800 / MATRIX_MUL_RTRANSP_DOT_ROW   (hash md5:ac6974307a326ae6bad9988ec246cf1e)
// not bridged: 
Theorem MATRIX_MUL_RTRANSP_DOT_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_mul M N M A (transp M N A) = fun i :e idx M => fun j :e idx M => dot N (row M N i A) (row M N j A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2804 / ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS   (hash md5:11c0dd7231634316a9e7b1a148b10de7)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> (forall i :e omega, 1 <= i /\ i <= dimindex N -> vector_norm N (column N N i A) = 1) /\ forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ ~ i = j))) -> orthogonal N (column N N i A) (column N N j A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2815 / ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS   (hash md5:39b09bbfee10fabaf9eefb24387a79fd)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> (forall i :e omega, 1 <= i /\ i <= dimindex N -> vector_norm N (row N N i A) = 1) /\ forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ ~ i = j))) -> orthogonal N (row N N i A) (row N N j A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2825 / ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_INDEXED   (hash md5:f8a4664ec8cc9b71d6a205c3a9859e6d)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_INDEXED : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> (forall i :e omega, 1 <= i /\ i <= dimindex N -> vector_norm N (row N N i A) = 1) /\ forall x y :e idx N, x <> y -> orthogonal N (row N N x A) (row N N y A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2837 / ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_PAIRWISE   (hash md5:9555fbb79d9217d61ce60c6cff611157)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_PAIRWISE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> finite_cardinality (rows N N A) = dimindex N /\ ((forall i :e omega, 1 <= i /\ i <= dimindex N -> vector_norm N (row N N i A) = 1) /\ forall x y :e rows N N A, x <> y -> orthogonal N x y).
Admitted.

// HOL Light: Multivariate/determinants.ml:2853 / ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_SPAN   (hash md5:82918b4bfbdfcf323a969976cfe77d83)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ORTHONORMAL_ROWS_SPAN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> span N (rows N N A) = R :^: idx N /\ ((forall i :e omega, 1 <= i /\ i <= dimindex N -> vector_norm N (row N N i A) = 1) /\ forall x y :e rows N N A, x <> y -> orthogonal N x y).
Admitted.

// HOL Light: Multivariate/determinants.ml:2871 / ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_INDEXED   (hash md5:ab7b75e9e23300611fe262959c72e0eb)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_INDEXED : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> (forall i :e omega, 1 <= i /\ i <= dimindex N -> vector_norm N (column N N i A) = 1) /\ forall x y :e idx N, x <> y -> orthogonal N (column N N x A) (column N N y A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2880 / ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_PAIRWISE   (hash md5:3e8439d2be9a97dec8480cd8122c5bfd)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_PAIRWISE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> finite_cardinality (columns N N A) = dimindex N /\ ((forall i :e omega, 1 <= i /\ i <= dimindex N -> vector_norm N (column N N i A) = 1) /\ forall x y :e columns N N A, x <> y -> orthogonal N x y).
Admitted.

// HOL Light: Multivariate/determinants.ml:2890 / ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_SPAN   (hash md5:7d4661f96bc5d6792fe3cda2b157d6fa)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ORTHONORMAL_COLUMNS_SPAN : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A <-> span N (columns N N A) = R :^: idx N /\ ((forall i :e omega, 1 <= i /\ i <= dimindex N -> vector_norm N (column N N i A) = 1) /\ forall x y :e columns N N A, x <> y -> orthogonal N x y).
Admitted.

// HOL Light: Multivariate/determinants.ml:2900 / ORTHOGONAL_MATRIX_2   (hash md5:6e718e35014aec740d01a5ad4bfc4e73)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_2 : forall A :e R :^: idx_n 2 :^: idx_n 2, orthogonal_matrix_hl (idx_n 2) A <-> A 1 1 ^ 2 + A 2 1 ^ 2 = 1 /\ (A 1 2 ^ 2 + A 2 2 ^ 2 = 1 /\ A 1 1 * A 1 2 + A 2 1 * A 2 2 = 0).
Admitted.

// HOL Light: Multivariate/determinants.ml:2910 / ORTHOGONAL_MATRIX_2_ALT   (hash md5:fc0911c4279a1219ec12c64b5fcaa807)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_2_ALT : forall A :e R :^: idx_n 2 :^: idx_n 2, orthogonal_matrix_hl (idx_n 2) A <-> A 1 1 ^ 2 + A 2 1 ^ 2 = 1 /\ (A 1 1 = A 2 2 /\ A 1 2 = - A 2 1 \/ A 1 1 = - A 2 2 /\ A 1 2 = A 2 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:2917 / ORTHOGONAL_MATRIX_INV   (hash md5:0127b717e51b8d49c560f3277318a13f)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_INV : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A -> matrix_inv N N A = transp N N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2921 / ORTHOGONAL_MATRIX_INV_EQ   (hash md5:06b28ebf32ef5e5e8cfb2f45f23812b4)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_INV_EQ : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N (matrix_inv N N A) <-> orthogonal_matrix_hl N A.
Admitted.

// HOL Light: Multivariate/determinants.ml:2929 / ORTHOGONAL_TRANSFORMATION_ORTHOGONAL_EIGENVECTORS   (hash md5:670ad3684959671ba9968d511d9bcab9)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_ORTHOGONAL_EIGENVECTORS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall v w :e R :^: idx N, forall a b :e R, orthogonal_transformation N f /\ (f v = vector_mul N a v /\ (f w = vector_mul N b w /\ ~ a = b)) -> orthogonal N v w.
Admitted.

// HOL Light: Multivariate/determinants.ml:2946 / ORTHOGONAL_MATRIX_ORTHOGONAL_EIGENVECTORS   (hash md5:1d232cf0b06f85fd873d0c7f5d730b4c)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_ORTHOGONAL_EIGENVECTORS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall v w :e R :^: idx N, forall a b :e R, orthogonal_matrix_hl N A /\ (matrix_vector_mul N N A v = vector_mul N a v /\ (matrix_vector_mul N N A w = vector_mul N b w /\ ~ a = b)) -> orthogonal N v w.
Admitted.

// HOL Light: Multivariate/determinants.ml:2953 / ORTHOGONAL_TRANSFORMATION_ID   (hash md5:a0f43514ec9682350bcceb0a7143b2d5)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_ID : forall A:set, A <> Empty -> orthogonal_transformation A (fun x:set => x).
Admitted.

// HOL Light: Multivariate/determinants.ml:2957 / ORTHOGONAL_TRANSFORMATION_I   (hash md5:60234103decd6440b77135fff1f6ad08)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_I : forall A:set, A <> Empty -> orthogonal_transformation A (fun x:set => x).
Admitted.

// HOL Light: Multivariate/determinants.ml:2961 / ORTHOGONAL_TRANSFORMATION_NEGATION   (hash md5:5702432210f0ee4f09e239c124cf79cf)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_NEGATION : forall A:set, A <> Empty -> orthogonal_transformation A (vector_neg A).
Admitted.

// HOL Light: Multivariate/determinants.ml:2966 / ORTHOGONAL_TRANSFORMATION_1_GEN   (hash md5:af73fc56cb10f577097bb789f5b7e6dd)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_1_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> dimindex N = 1 -> (orthogonal_transformation N f <-> (forall x :e R :^: idx N, f x = x) \/ forall x :e R :^: idx N, f x = vector_neg N x).
Admitted.

// HOL Light: Multivariate/determinants.ml:2985 / ORTHOGONAL_MATRIX_1   (hash md5:a73ae482ef37c41932a344cdd5b4d7fa)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_1 : forall N:set, N <> Empty -> forall m :e R :^: idx N :^: idx N, dimindex N = 1 -> (orthogonal_matrix_hl N m <-> m = mat N N 1 \/ m = matrix_neg N N (mat N N 1)).
Admitted.

// HOL Light: Multivariate/determinants.ml:2995 / MATRIX_INV_ORTHOGONAL_LMUL   (hash md5:1c19f6e94c69fde95a1f61cce0d89c9b)
// not bridged: 
Theorem MATRIX_INV_ORTHOGONAL_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall U :e R :^: idx N :^: idx N, forall A :e R :^: idx M :^: idx N, orthogonal_matrix_hl N U -> matrix_inv M N (matrix_mul N N M U A) = matrix_mul M N N (matrix_inv M N A) (matrix_inv N N U).
Admitted.

// HOL Light: Multivariate/determinants.ml:3018 / MATRIX_INV_ORTHOGONAL_RMUL   (hash md5:d2032d4744f682bcc9368556e3ed4e1d)
// not bridged: 
Theorem MATRIX_INV_ORTHOGONAL_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall U :e R :^: idx M :^: idx M, forall A :e R :^: idx M :^: idx N, orthogonal_matrix_hl M U -> matrix_inv M N (matrix_mul N M M A U) = matrix_mul M M N (matrix_inv M M U) (matrix_inv M N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:3025 / ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT_LEFT   (hash md5:f208f3b0aed0e49730ab5dde69627931)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT_LEFT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> (orthogonal_transformation N f <-> linear N N f /\ forall x :e R :^: idx N, adjoint N N f (f x) = x).
Admitted.

// HOL Light: Multivariate/determinants.ml:3039 / ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT_RIGHT   (hash md5:90dad9e05c7589d5dcd749cd046184ac)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT_RIGHT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> (orthogonal_transformation N f <-> linear N N f /\ forall x :e R :^: idx N, f (adjoint N N f x) = x).
Admitted.

// HOL Light: Multivariate/determinants.ml:3045 / ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT   (hash md5:32110f7b07ecc918c07a86a96dcd3441)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_EQ_ADJOINT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> (orthogonal_transformation N f <-> linear N N f /\ ((forall x :e R :^: idx N, adjoint N N f (f x) = x) /\ forall x :e R :^: idx N, f (adjoint N N f x) = x)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3052 / ORTHOGONAL_TRANSFORMATION_ADJOINT   (hash md5:52359e1781ffd5b3bc405196f673731a)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_ADJOINT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> orthogonal_transformation N f -> orthogonal_transformation N (adjoint N N f).
Admitted.

// HOL Light: Multivariate/determinants.ml:3067 / ONORM_ORTHOGONAL_TRANSFORMATION   (hash md5:fe1498263784531c765223c0291114dd)
// not bridged: 
Theorem ONORM_ORTHOGONAL_TRANSFORMATION : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> orthogonal_transformation N f -> onorm N N f = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3076 / ONORM_ORTHOGONAL_MATRIX   (hash md5:80147e520e579227f36c34a7f88c0bef)
// not bridged: 
Theorem ONORM_ORTHOGONAL_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A -> onorm N N (matrix_vector_mul N N A) = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3085 / SCALING_LINEAR   (hash md5:c4375e4ad9da7ffefd3720af816267fe)
// not bridged: 
Theorem SCALING_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall c :e R, f (vec M 0) = vec N 0 /\ (forall x y :e R :^: idx M, distance N (f x,f y) = c * distance M (x,y)) -> linear M N f.
Admitted.

// HOL Light: Multivariate/determinants.ml:3102 / ISOMETRY_LINEAR   (hash md5:c3acc4fee555cc61d24c5411c7dd372d)
// not bridged: 
Theorem ISOMETRY_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> f (vec M 0) = vec N 0 /\ (forall x y :e R :^: idx M, distance N (f x,f y) = distance M (x,y)) -> linear M N f.
Admitted.

// HOL Light: Multivariate/determinants.ml:3108 / ISOMETRY_IMP_AFFINITY   (hash md5:8d33fed9058296ea4696f68e7026b605)
// not bridged: 
Theorem ISOMETRY_IMP_AFFINITY : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (forall x y :e R :^: idx M, distance N (f x,f y) = distance M (x,y)) -> exists h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) /\ (linear M N h /\ forall x :e R :^: idx M, f x = vector_add N (f (vec M 0)) (h x)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3122 / ORTHOGONALITY_PRESERVING_IMP_SCALING   (hash md5:6298a0c2ed289d0ed915c57a01eb47eb)
// not bridged: 
Theorem ORTHOGONALITY_PRESERVING_IMP_SCALING : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall x y :e R :^: idx M, orthogonal M x y -> orthogonal N (f x) (f y)) -> exists c :e R, 0 <= c /\ forall x :e R :^: idx M, vector_norm N (f x) = c * vector_norm M x.
Admitted.

// HOL Light: Multivariate/determinants.ml:3196 / ORTHOGONAL_TRANSFORMATION_ISOMETRY   (hash md5:3977aeb140b80652bbf45429c3a2960e)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_ISOMETRY : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> (orthogonal_transformation N f <-> f (vec N 0) = vec N 0 /\ forall x y :e R :^: idx N, distance N (f x,f y) = distance N (x,y)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3210 / ISOMETRY_SPHERE_EXTEND   (hash md5:c2a43645414960d7a75eae64768d037d)
// not bridged: 
Theorem ISOMETRY_SPHERE_EXTEND : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> (forall x :e R :^: idx N, vector_norm N x = 1 -> vector_norm N (f x) = 1) /\ (forall x y :e R :^: idx N, vector_norm N x = 1 /\ vector_norm N y = 1 -> distance N (f x,f y) = distance N (x,y)) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (orthogonal_transformation N g /\ forall x :e R :^: idx N, vector_norm N x = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/determinants.ml:3255 / ORTHOGONAL_TRANSFORMATION_INVERSE_o   (hash md5:63dd2bb142e931d80661a7a900c1dc47)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_INVERSE_o : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> orthogonal_transformation N f -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (orthogonal_transformation N g /\ ((forall x :e R :^: idx N, g (f x) = x) /\ forall x :e R :^: idx N, f (g x) = x)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3275 / ORTHOGONAL_TRANSFORMATION_INVERSE   (hash md5:dff1f2c12a535277befeb46e9865b5b9)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_INVERSE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> orthogonal_transformation N f -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (orthogonal_transformation N g /\ ((forall x :e R :^: idx N, g (f x) = x) /\ forall y :e R :^: idx N, f (g y) = y)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3284 / ONORM_COMPOSE_ORTHOGONAL_TRANSFORMATION_LEFT   (hash md5:a618a3bfe56371ffe233e7c91c95391b)
// not bridged: 
Theorem ONORM_COMPOSE_ORTHOGONAL_TRANSFORMATION_LEFT : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx B) -> orthogonal_transformation B f -> onorm A B (fun x:set => f (g x)) = onorm A B g.
Admitted.

// HOL Light: Multivariate/determinants.ml:3288 / ONORM_COMPOSE_ORTHOGONAL_TRANSFORMATION_RIGHT   (hash md5:d12af2f5bcf5bae20f6101a48d53a421)
// not bridged: 
Theorem ONORM_COMPOSE_ORTHOGONAL_TRANSFORMATION_RIGHT : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx A) -> orthogonal_transformation A g -> onorm A B (fun x:set => f (g x)) = onorm A B f.
Admitted.

// HOL Light: Multivariate/determinants.ml:3300 / SQNORM_LE_MAX_EIGENVECTOR_SPAN   (hash md5:7fc62368f8aabc7302c40a5bf806b952)
// not bridged: 
Theorem SQNORM_LE_MAX_EIGENVECTOR_SPAN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall b c= R :^: idx N, forall c:set -> set, (forall x :e R :^: idx N, c x :e R) -> forall x :e R :^: idx N, forall l :e R, linear N N f /\ ((forall x y :e b, x <> y -> orthogonal N x y) /\ ((forall x0 :e R :^: idx N, x0 :e b -> f x0 = vector_mul N (c x0) x0 /\ c x0 ^ 2 <= l) /\ x :e span N b)) -> vector_norm N (f x) ^ 2 <= l * vector_norm N x ^ 2.
Admitted.

// HOL Light: Multivariate/determinants.ml:3330 / NORM_LE_MAX_EIGENVECTOR_SPAN   (hash md5:e2fabb9adb0ee79e18af15cef606f871)
// not bridged: 
Theorem NORM_LE_MAX_EIGENVECTOR_SPAN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall b c= R :^: idx N, forall c:set -> set, (forall x :e R :^: idx N, c x :e R) -> forall x :e R :^: idx N, forall l :e R, linear N N f /\ ((forall x y :e b, x <> y -> orthogonal N x y) /\ ((forall x0 :e R :^: idx N, x0 :e b -> f x0 = vector_mul N (c x0) x0 /\ abs_SNo (c x0) <= l) /\ x :e span N b)) -> vector_norm N (f x) <= l * vector_norm N x.
Admitted.

// HOL Light: Multivariate/determinants.ml:3352 / ONORM_EQ_MAX_EIGENVECTOR   (hash md5:bae18719bdb0bca5a9972f9ccfdcf256)
// not bridged: 
Theorem ONORM_EQ_MAX_EIGENVECTOR : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall b c= R :^: idx N, forall c:set -> set, (forall x :e R :^: idx N, c x :e R) -> linear N N f /\ ((forall x y :e b, x <> y -> orthogonal N x y) /\ (span N b = R :^: idx N /\ (~ vec N 0 :e b /\ (forall x :e R :^: idx N, x :e b -> f x = vector_mul N (c x) x)))) -> onorm N N f = sup {abs_SNo (c x) | x :e R :^: idx N, x :e b}.
Admitted.

// HOL Light: Multivariate/determinants.ml:3383 / ONORM_ORTHOGONAL_MATRIX_MUL_LEFT   (hash md5:3d600a46eb0f799a2cce166563219106)
// not bridged: 
Theorem ONORM_ORTHOGONAL_MATRIX_MUL_LEFT : forall N:set, N <> Empty -> forall A P :e R :^: idx N :^: idx N, orthogonal_matrix_hl N P -> onorm N N (matrix_vector_mul N N (matrix_mul N N N P A)) = onorm N N (matrix_vector_mul N N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:3393 / ONORM_ORTHOGONAL_MATRIX_MUL_RIGHT   (hash md5:792cc8a1f8135a2de53662cb475fe2c0)
// not bridged: 
Theorem ONORM_ORTHOGONAL_MATRIX_MUL_RIGHT : forall N:set, N <> Empty -> forall A P :e R :^: idx N :^: idx N, orthogonal_matrix_hl N P -> onorm N N (matrix_vector_mul N N (matrix_mul N N N A P)) = onorm N N (matrix_vector_mul N N A).
Admitted.

// HOL Light: Multivariate/determinants.ml:3404 / ONORM_DIAGONALIZED_MATRIX   (hash md5:5c85ed4b065b306866c0477ce764c956)
// not bridged: 
Theorem ONORM_DIAGONALIZED_MATRIX : forall N:set, N <> Empty -> forall A D P :e R :^: idx N :^: idx N, orthogonal_matrix_hl N P /\ (diagonal_matrix_hl N N D /\ matrix_mul N N N (transp N N P) (matrix_mul N N N D P) = A) -> onorm N N (matrix_vector_mul N N A) = sup {abs_SNo (D i i) | i :e omega, 1 <= i /\ i <= dimindex N}.
Admitted.

// HOL Light: Multivariate/determinants.ml:3415 / ONORM_DIAGONALIZED_COVARIANCE_MATRIX   (hash md5:0f64e6ad7baf420e798e0b179cf52c98)
// not bridged: 
Theorem ONORM_DIAGONALIZED_COVARIANCE_MATRIX : forall N:set, N <> Empty -> forall A D P :e R :^: idx N :^: idx N, orthogonal_matrix_hl N P /\ (diagonal_matrix_hl N N D /\ matrix_mul N N N (transp N N P) (matrix_mul N N N D P) = matrix_mul N N N (transp N N A) A) -> onorm N N (matrix_vector_mul N N A) = if 0 <= sup {abs_SNo (D i i) | i :e omega, 1 <= i /\ i <= dimindex N} then sqrt_SNo_nonneg (sup {abs_SNo (D i i) | i :e omega, 1 <= i /\ i <= dimindex N}) else - sqrt_SNo_nonneg (- sup {abs_SNo (D i i) | i :e omega, 1 <= i /\ i <= dimindex N}).
Admitted.

// HOL Light: Multivariate/determinants.ml:3432 / ORTHOGONAL_MATRIX_EXISTS_BASIS   (hash md5:947305b53cbbc4a0df68bc5ffdae9625)
// not bridged: 
Theorem ORTHOGONAL_MATRIX_EXISTS_BASIS : forall N:set, N <> Empty -> forall a :e R :^: idx N, vector_norm N a = 1 -> exists A :e R :^: idx N :^: idx N, orthogonal_matrix_hl N A /\ matrix_vector_mul N N A (basis N 1) = a.
Admitted.

// HOL Light: Multivariate/determinants.ml:3464 / ORTHOGONAL_TRANSFORMATION_EXISTS_1   (hash md5:1d7571a2a57c65de4992c7c114e77a7f)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_EXISTS_1 : forall N:set, N <> Empty -> forall a b :e R :^: idx N, vector_norm N a = 1 /\ vector_norm N b = 1 -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ f a = b).
Admitted.

// HOL Light: Multivariate/determinants.ml:3482 / ORTHOGONAL_TRANSFORMATION_EXISTS   (hash md5:c06e08330c18cf780d334597b0e9ede2)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_EXISTS : forall N:set, N <> Empty -> forall a b :e R :^: idx N, vector_norm N a = vector_norm N b -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ f a = b).
Admitted.

// HOL Light: Multivariate/determinants.ml:3508 / ORTHOGONAL_TRANSFORMATION_INTO_SUBSPACE   (hash md5:1c09054348aad24fbb5adfd8ff56045c)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_INTO_SUBSPACE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ (subspace N t /\ dim N s <= dim N t) -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ {f x | x :e s} c= t).
Admitted.

// HOL Light: Multivariate/determinants.ml:3600 / ORTHOGONAL_TRANSFORMATION_ONTO_SUBSPACE   (hash md5:088747fa32a296db83298ea0bfcbe98c)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_ONTO_SUBSPACE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ (subspace N t /\ dim N s = dim N t) -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ {f x | x :e s} = t).
Admitted.

// HOL Light: Multivariate/determinants.ml:3623 / rotation_matrix   (hash md5:d9b188286a5e10413fe6d2a56ce27dd6)
// not bridged: 
Theorem rotation_matrix_thm : forall A:set, A <> Empty -> forall Q :e R :^: idx A :^: idx A, rotation_matrix A Q <-> orthogonal_matrix_hl A Q /\ det A Q = 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3626 / rotoinversion_matrix   (hash md5:570373455d8fce1b788d432c7fedf402)
// not bridged: 
Theorem rotoinversion_matrix_thm : forall A:set, A <> Empty -> forall Q :e R :^: idx A :^: idx A, rotoinversion_matrix A Q <-> orthogonal_matrix_hl A Q /\ det A Q = - 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:3629 / ORTHOGONAL_ROTATION_OR_ROTOINVERSION   (hash md5:eb02070714b34b249698049e2fcf1144)
// not bridged: 
Theorem ORTHOGONAL_ROTATION_OR_ROTOINVERSION : forall A:set, A <> Empty -> forall Q :e R :^: idx A :^: idx A, orthogonal_matrix_hl A Q <-> rotation_matrix A Q \/ rotoinversion_matrix A Q.
Admitted.

// HOL Light: Multivariate/determinants.ml:3633 / ROTATION_MATRIX_1   (hash md5:7f41bbe7cb4fd225a2984efce5f97229)
// not bridged: 
Theorem ROTATION_MATRIX_1 : forall N:set, N <> Empty -> forall m :e R :^: idx N :^: idx N, dimindex N = 1 -> (rotation_matrix N m <-> m = mat N N 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:3642 / ROTOINVERSION_MATRIX_1   (hash md5:d3b0ae4e5beff8326aa43566876ba164)
// not bridged: 
Theorem ROTOINVERSION_MATRIX_1 : forall N:set, N <> Empty -> forall m :e R :^: idx N :^: idx N, dimindex N = 1 -> (rotoinversion_matrix N m <-> m = matrix_neg N N (mat N N 1)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3653 / ROTATION_MATRIX_2   (hash md5:bd7052a787f6fbbedb40cb2da974ae28)
// not bridged: 
Theorem ROTATION_MATRIX_2 : forall A :e R :^: idx_n 2 :^: idx_n 2, rotation_matrix (idx_n 2) A <-> A 1 1 ^ 2 + A 2 1 ^ 2 = 1 /\ (A 1 1 = A 2 2 /\ A 1 2 = - A 2 1).
Admitted.

// HOL Light: Multivariate/determinants.ml:3664 / ROTATION_MATRIX_EXISTS_BASIS   (hash md5:4a82ca114f47c08325bbc87a7f42599e)
// not bridged: 
Theorem ROTATION_MATRIX_EXISTS_BASIS : forall N:set, N <> Empty -> forall a :e R :^: idx N, 2 <= dimindex N /\ vector_norm N a = 1 -> exists A :e R :^: idx N :^: idx N, rotation_matrix N A /\ matrix_vector_mul N N A (basis N 1) = a.
Admitted.

// HOL Light: Multivariate/determinants.ml:3702 / ROTATION_EXISTS_1   (hash md5:cf733a3c1e843abebeca760bc5351c63)
// not bridged: 
Theorem ROTATION_EXISTS_1 : forall N:set, N <> Empty -> forall a b :e R :^: idx N, 2 <= dimindex N /\ (vector_norm N a = 1 /\ vector_norm N b = 1) -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ (det N (matrix N N f) = 1 /\ f a = b)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3722 / ROTATION_EXISTS   (hash md5:775d3deabe1c230161e15c1cfdbae32b)
// not bridged: 
Theorem ROTATION_EXISTS : forall N:set, N <> Empty -> forall a b :e R :^: idx N, 2 <= dimindex N /\ vector_norm N a = vector_norm N b -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ (det N (matrix N N f) = 1 /\ f a = b)).
Admitted.

// HOL Light: Multivariate/determinants.ml:3746 / ROTATION_RIGHTWARD_LINE   (hash md5:15c23afb6f67028c0d6766a8b610cde5)
// not bridged: 
Theorem ROTATION_RIGHTWARD_LINE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall k :e omega, 1 <= k /\ k <= dimindex N -> exists b :e R, exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ ((2 <= dimindex N -> det N (matrix N N f) = 1) /\ (f (vector_mul N b (basis N k)) = a /\ 0 <= b))).
Admitted.

// HOL Light: Multivariate/determinants.ml:3769 / EULER_ROTATION_THEOREM   (hash md5:c4343696db5a376f655e7ae03d5592c5)
// not bridged: 
Theorem EULER_ROTATION_THEOREM : forall A :e R :^: idx_n 3 :^: idx_n 3, rotation_matrix (idx_n 3) A -> exists v :e R :^: idx_n 3, ~ v = vec (idx_n 3) 0 /\ matrix_vector_mul (idx_n 3) (idx_n 3) A v = v.
Admitted.

// HOL Light: Multivariate/determinants.ml:3782 / EULER_ROTOINVERSION_THEOREM   (hash md5:4fb3d094fa973bc5a00d8d12d809bdfb)
// not bridged: 
Theorem EULER_ROTOINVERSION_THEOREM : forall A :e R :^: idx_n 3 :^: idx_n 3, rotoinversion_matrix (idx_n 3) A -> exists v :e R :^: idx_n 3, ~ v = vec (idx_n 3) 0 /\ matrix_vector_mul (idx_n 3) (idx_n 3) A v = vector_neg (idx_n 3) v.
Admitted.

// HOL Light: Multivariate/determinants.ml:3800 / ROTATION_LOWDIM_HORIZONTAL   (hash md5:258eb8b75dfae0755ee0f4917001fb56)
// not bridged: 
Theorem ROTATION_LOWDIM_HORIZONTAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s < dimindex N -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ (det N (matrix N N f) = 1 /\ {f x | x :e s} c= {z :e R :^: idx N | z (dimindex N) = 0})).
Admitted.

// HOL Light: Multivariate/determinants.ml:3832 / ORTHOGONAL_TRANSFORMATION_LOWDIM_HORIZONTAL   (hash md5:c0979a7b284975eccb76b18035ec8756)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_LOWDIM_HORIZONTAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s < dimindex N -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ {f x | x :e s} c= {z :e R :^: idx N | z (dimindex N) = 0}).
Admitted.

// HOL Light: Multivariate/determinants.ml:3840 / ORTHOGONAL_TRANSFORMATION_BETWEEN_ORTHOGONAL_SETS   (hash md5:c04a6b6cb72caefc7e649a92eb657861)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_BETWEEN_ORTHOGONAL_SETS : forall N:set, N <> Empty -> forall v:set -> set, (forall x :e omega, v x :e R :^: idx N) -> forall w:set -> set, (forall x :e omega, w x :e R :^: idx N) -> forall k c= omega, (forall x y :e k, x <> y -> orthogonal N (v x) (v y)) /\ ((forall x y :e k, x <> y -> orthogonal N (w x) (w y)) /\ (forall i :e omega, i :e k -> vector_norm N (v i) = vector_norm N (w i))) -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ forall i :e omega, i :e k -> f (v i) = w i).
Admitted.

// HOL Light: Multivariate/determinants.ml:4039 / reflect_along   (hash md5:156b6726f5c586da5e58bdc0c9fc5324)
// not bridged: 
Theorem reflect_along_thm : forall N:set, N <> Empty -> forall x v :e R :^: idx N, reflect_along N v x = vector_sub N x (vector_mul N (2 * dot N x v :/: dot N v v) v).
Admitted.

// HOL Light: Multivariate/determinants.ml:4042 / REFLECT_ALONG_ADD   (hash md5:9d59e2b12e9d8de17062d3e008b76267)
// not bridged: 
Theorem REFLECT_ALONG_ADD : forall N:set, N <> Empty -> forall v x y :e R :^: idx N, reflect_along N v (vector_add N x y) = vector_add N (reflect_along N v x) (reflect_along N v y).
Admitted.

// HOL Light: Multivariate/determinants.ml:4051 / REFLECT_ALONG_MUL   (hash md5:bc8076dac8fea6b2bd64ee072b112190)
// not bridged: 
Theorem REFLECT_ALONG_MUL : forall N:set, N <> Empty -> forall v :e R :^: idx N, forall a :e R, forall x :e R :^: idx N, reflect_along N v (vector_mul N a x) = vector_mul N a (reflect_along N v x).
Admitted.

// HOL Light: Multivariate/determinants.ml:4057 / LINEAR_REFLECT_ALONG   (hash md5:fcc83e0b2e9c8806ecdcdf690290463b)
// not bridged: 
Theorem LINEAR_REFLECT_ALONG : forall N:set, N <> Empty -> forall v :e R :^: idx N, linear N N (reflect_along N v).
Admitted.

// HOL Light: Multivariate/determinants.ml:4061 / REFLECT_ALONG_0   (hash md5:0500f37ad55b48e0598e285570fb614b)
// not bridged: 
Theorem REFLECT_ALONG_0 : forall N:set, N <> Empty -> forall v :e R :^: idx N, reflect_along N v (vec N 0) = vec N 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:4065 / REFLECT_ALONG_NEG   (hash md5:be404e0cf64ee302dc1e8c35d944fd75)
// not bridged: 
Theorem REFLECT_ALONG_NEG : forall N:set, N <> Empty -> forall v x :e R :^: idx N, reflect_along N v (vector_neg N x) = vector_neg N (reflect_along N v x).
Admitted.

// HOL Light: Multivariate/determinants.ml:4069 / REFLECT_ALONG_REFL   (hash md5:a41b1de99dc9331071dc292713609878)
// not bridged: 
Theorem REFLECT_ALONG_REFL : forall N:set, N <> Empty -> forall v :e R :^: idx N, reflect_along N v v = vector_neg N v.
Admitted.

// HOL Light: Multivariate/determinants.ml:4076 / REFLECT_ALONG_INVOLUTION   (hash md5:b856a73b0b78f81eef292acc009dcc33)
// not bridged: 
Theorem REFLECT_ALONG_INVOLUTION : forall N:set, N <> Empty -> forall v x :e R :^: idx N, reflect_along N v (reflect_along N v x) = x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4082 / REFLECT_ALONG_GALOIS   (hash md5:51963ea851d96927e97c9c7464dafa16)
// not bridged: 
Theorem REFLECT_ALONG_GALOIS : forall N:set, N <> Empty -> forall v p q :e R :^: idx N, reflect_along N v p = q <-> p = reflect_along N v q.
Admitted.

// HOL Light: Multivariate/determinants.ml:4086 / REFLECT_ALONG_EQ_0   (hash md5:3463afc2fc13e23f390461e032fec6b0)
// not bridged: 
Theorem REFLECT_ALONG_EQ_0 : forall N:set, N <> Empty -> forall v x :e R :^: idx N, reflect_along N v x = vec N 0 <-> x = vec N 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:4090 / ORTHOGONAL_TRANSFORMATION_REFLECT_ALONG   (hash md5:74c7379174c0f21b32ed1d41256d9ffa)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_REFLECT_ALONG : forall N:set, N <> Empty -> forall v :e R :^: idx N, orthogonal_transformation N (reflect_along N v).
Admitted.

// HOL Light: Multivariate/determinants.ml:4104 / REFLECT_ALONG_EQ_SELF   (hash md5:db8aea5113bc12fb297ba542ec60b813)
// not bridged: 
Theorem REFLECT_ALONG_EQ_SELF : forall N:set, N <> Empty -> forall v x :e R :^: idx N, reflect_along N v x = x <-> orthogonal N v x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4113 / REFLECT_ALONG_ZERO   (hash md5:beb8cea496512839c87ca4ddbc81cb25)
// not bridged: 
Theorem REFLECT_ALONG_ZERO : forall N:set, N <> Empty -> forall x :e R :^: idx N, reflect_along N (vec N 0) x = x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4117 / REFLECT_ALONG_LINEAR_IMAGE   (hash md5:3e13064c416b4a4d93d154088412923f)
// not bridged: 
Theorem REFLECT_ALONG_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall v x :e R :^: idx M, linear M N f /\ (forall x0 :e R :^: idx M, vector_norm N (f x0) = vector_norm M x0) -> reflect_along N (f v) (f x) = f (reflect_along M v x).
Admitted.

// HOL Light: Multivariate/determinants.ml:4126 / REFLECT_ALONG_SCALE   (hash md5:3dfd9c93314e727ae10bdd013b943a2d)
// not bridged: 
Theorem REFLECT_ALONG_SCALE : forall N:set, N <> Empty -> forall c :e R, forall v x :e R :^: idx N, ~ c = 0 -> reflect_along N (vector_mul N c v) x = reflect_along N v x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4137 / REFLECT_ALONG_NEGATION   (hash md5:7df32c81bbe679b7c9e9fceb010e9b34)
// not bridged: 
Theorem REFLECT_ALONG_NEGATION : forall N:set, N <> Empty -> forall v x :e R :^: idx N, reflect_along N (vector_neg N v) x = reflect_along N v x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4142 / REFLECT_ALONG_1D   (hash md5:99b7223c0c796803c57efdd75786caa2)
// not bridged: 
Theorem REFLECT_ALONG_1D : forall N:set, N <> Empty -> forall v x :e R :^: idx N, dimindex N = 1 -> reflect_along N v x = if v = vec N 0 then x else vector_neg N x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4152 / REFLECT_ALONG_BASIS   (hash md5:6cabc7fc70aaa3ccd4bd8779f0b20abf)
// not bridged: 
Theorem REFLECT_ALONG_BASIS : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall k :e omega, 1 <= k /\ k <= dimindex N -> reflect_along N (basis N k) x = vector_sub N x (vector_mul N (2 * x k) (basis N k)).
Admitted.

// HOL Light: Multivariate/determinants.ml:4158 / MATRIX_REFLECT_ALONG_BASIS   (hash md5:6e13d4aa39790f013a9f446f7ec9570b)
// not bridged: 
Theorem MATRIX_REFLECT_ALONG_BASIS : forall N:set, N <> Empty -> forall k :e omega, 1 <= k /\ k <= dimindex N -> matrix N N (reflect_along N (basis N k)) = fun i :e idx N => fun j :e idx N => if i = k /\ j = k then - 1 else if i = j then 1 else 0.
Admitted.

// HOL Light: Multivariate/determinants.ml:4172 / ROTOINVERSION_MATRIX_REFLECT_ALONG   (hash md5:93528e16c05e13828ee462f78cda39a8)
// not bridged: 
Theorem ROTOINVERSION_MATRIX_REFLECT_ALONG : forall N:set, N <> Empty -> forall v :e R :^: idx N, ~ v = vec N 0 -> rotoinversion_matrix N (matrix N N (reflect_along N v)).
Admitted.

// HOL Light: Multivariate/determinants.ml:4229 / DET_MATRIX_REFLECT_ALONG   (hash md5:16d3204de4cbcda7f5a4732c813f9251)
// not bridged: 
Theorem DET_MATRIX_REFLECT_ALONG : forall N:set, N <> Empty -> forall v :e R :^: idx N, det N (matrix N N (reflect_along N v)) = if v = vec N 0 then 1 else - 1.
Admitted.

// HOL Light: Multivariate/determinants.ml:4237 / REFLECT_ALONG_BASIS_COMPONENT   (hash md5:37bdc4ba58fc847cc1d4a375d3b8560e)
// not bridged: 
Theorem REFLECT_ALONG_BASIS_COMPONENT : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N)) -> reflect_along N (basis N i) x j = if j = i then - x j else x j.
Admitted.

// HOL Light: Multivariate/determinants.ml:4247 / REFLECT_BASIS_ALONG_BASIS   (hash md5:a91734a360886d55ba5ed1df87a98927)
// not bridged: 
Theorem REFLECT_BASIS_ALONG_BASIS : forall N:set, N <> Empty -> forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N)) -> reflect_along N (basis N i) (basis N j) = if i = j then vector_neg N (basis N j) else basis N j.
Admitted.

// HOL Light: Multivariate/determinants.ml:4256 / NORM_REFLECT_ALONG   (hash md5:25176a0138c2f85b029e85f52c77fffb)
// not bridged: 
Theorem NORM_REFLECT_ALONG : forall N:set, N <> Empty -> forall v x :e R :^: idx N, vector_norm N (reflect_along N v x) = vector_norm N x.
Admitted.

// HOL Light: Multivariate/determinants.ml:4261 / REFLECT_ALONG_EQ   (hash md5:8dbda53e8e74489af4fb397a97e4c44d)
// not bridged: 
Theorem REFLECT_ALONG_EQ : forall N:set, N <> Empty -> forall v x y :e R :^: idx N, reflect_along N v x = reflect_along N v y <-> x = y.
Admitted.

// HOL Light: Multivariate/determinants.ml:4266 / REFLECT_ALONG_SURJECTIVE   (hash md5:f29b46e9ca6a92b7d92994e90c068a13)
// not bridged: 
Theorem REFLECT_ALONG_SURJECTIVE : forall N:set, N <> Empty -> forall v y :e R :^: idx N, exists x :e R :^: idx N, reflect_along N v x = y.
Admitted.

// HOL Light: Multivariate/determinants.ml:4270 / REFLECT_ALONG_SWITCH   (hash md5:80caa8d145bfed5793cfe3ca7b6b80cf)
// not bridged: 
Theorem REFLECT_ALONG_SWITCH : forall N:set, N <> Empty -> forall a b :e R :^: idx N, vector_norm N a = vector_norm N b /\ ~ a = b -> reflect_along N (vector_sub N b a) a = b /\ reflect_along N (vector_sub N b a) b = a.
Admitted.

// HOL Light: Multivariate/determinants.ml:4287 / ROTOINVERSION_EXISTS_GEN   (hash md5:c5a46c6c62773b283212f866298a6be4)
// not bridged: 
Theorem ROTOINVERSION_EXISTS_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, subspace N s /\ (a :e s /\ (b :e s /\ (~ a = b /\ vector_norm N a = vector_norm N b))) -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ ({f x | x :e s} = s /\ ((forall x :e R :^: idx N, orthogonal N a x /\ orthogonal N b x -> f x = x) /\ (det N (matrix N N f) = - 1 /\ (f a = b /\ f b = a))))).
Admitted.

// HOL Light: Multivariate/determinants.ml:4307 / ORTHOGONAL_TRANSFORMATION_EXISTS_GEN   (hash md5:4844c8a3db14bf95f52db2ffc2e59f2f)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_EXISTS_GEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, subspace N s /\ (a :e s /\ (b :e s /\ vector_norm N a = vector_norm N b)) -> exists f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) /\ (orthogonal_transformation N f /\ ({f x | x :e s} = s /\ ((forall x :e R :^: idx N, orthogonal N a x /\ orthogonal N b x -> f x = x) /\ (f a = b /\ f b = a)))).
Admitted.

// HOL Light: Multivariate/determinants.ml:4324 / ORTHOGONAL_TRANSFORMATION_GENERATED_BY_REFLECTIONS   (hash md5:3b511c58efa0c9d50ac5a119db6d707c)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_GENERATED_BY_REFLECTIONS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall n :e omega, orthogonal_transformation N f /\ dimindex N <= dim N {x :e R :^: idx N | f x = x} + n -> exists l :e finseq (R :^: idx N), seq_len l <= n /\ (seq_all (fun v:set => ~ v = vec N 0) l /\ forall x :e R :^: idx N, f x = seq_foldr (fun x0:set => fun x1:set => fun x2 :e R :^: idx N => reflect_along N x0 (x1 x2)) l (fun x0 :e R :^: idx N => x0) x).
Admitted.

// HOL Light: Multivariate/determinants.ml:4389 / ORTHOGONAL_TRANSFORMATION_REFLECT_INDUCT   (hash md5:d4141c3b1a249db9087826f4c341d8ed)
// not bridged: 
Theorem ORTHOGONAL_TRANSFORMATION_REFLECT_INDUCT : forall N:set, N <> Empty -> forall P:set -> prop, P (fun x :e R :^: idx N => x) /\ (forall f :e R :^: idx N :^: (R :^: idx N), forall a :e R :^: idx N, orthogonal_transformation N (fun x:set => f x) /\ (~ a = vec N 0 /\ P f) -> P (fun x :e R :^: idx N => reflect_along N a (f x))) -> forall f :e R :^: idx N :^: (R :^: idx N), orthogonal_transformation N (fun x:set => f x) -> P f.
Admitted.

// HOL Light: Multivariate/determinants.ml:4823 / COLLINEAR_TRANSLATION_EQ   (hash md5:07b90e9040a3520c6656a0583ce992c1)
// not bridged: 
Theorem COLLINEAR_TRANSLATION_EQ : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall s c= R :^: idx A, collinear A {vector_add A a x | x :e s} <-> collinear A s.
Admitted.

// HOL Light: Multivariate/determinants.ml:4829 / COLLINEAR_TRANSLATION   (hash md5:2dbea1cf60e596b4397629769425e942)
// not bridged: 
Theorem COLLINEAR_TRANSLATION : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a :e R :^: idx A, collinear A s -> collinear A {vector_add A a x | x :e s}.
Admitted.

// HOL Light: Multivariate/determinants.ml:4833 / COLLINEAR_LINEAR_IMAGE   (hash md5:9da21df35946fb6b93ce5ea82d287dd5)
// not bridged: 
Theorem COLLINEAR_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx A, collinear A s /\ linear A B f -> collinear B {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/determinants.ml:4839 / COLLINEAR_LINEAR_IMAGE_EQ   (hash md5:95acadb7e5a96d579ac5c571403fd2f0)
// not bridged: 
Theorem COLLINEAR_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ (forall x y :e R :^: idx B, f x = f y -> x = y) -> (collinear A {f x | x :e s} <-> collinear B s).
Admitted.

