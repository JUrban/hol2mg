// hol2mg literal statements (private): shard clifford of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/clifford.ml:16 / CARD_UNION_LEMMA   (hash md5:048090a13ea0514330a20951a94ba3cb)
Theorem hlt_CARD_UNION_LEMMA : forall A:set, A <> Empty -> forall s t u v :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ (hl_FINITE A u = 1 /\ (hl_FINITE A v = 1 /\ (hl_INTER A s t = hl_EMPTY A /\ (hl_INTER A u v = hl_EMPTY A /\ hl_UNION A s t = hl_UNION A u v))))) -> hl_add (hl_CARD A s) (hl_CARD A t) = hl_add (hl_CARD A u) (hl_CARD A v).
Admitted.

// HOL Light: Multivariate/clifford.ml:22 / CARD_DIFF_INTER   (hash md5:53e5c5dfbe0a0aec2b0494ff15a8d771)
Theorem hlt_CARD_DIFF_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 -> hl_CARD A s = hl_add (hl_CARD A (hl_DIFF A s t)) (hl_CARD A (hl_INTER A s t)).
Admitted.

// HOL Light: Multivariate/clifford.ml:27 / CARD_ADD_SYMDIFF_INTER   (hash md5:06bebcef584302dfca5938a0f4fcb7df)
Theorem hlt_CARD_ADD_SYMDIFF_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_add (hl_CARD A s) (hl_CARD A t) = hl_add (hl_CARD A (hl_UNION A (hl_DIFF A s t) (hl_DIFF A t s))) (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_CARD A (hl_INTER A s t))).
Admitted.

// HOL Light: Multivariate/clifford.ml:41 / SYMDIFF_PARITY_LEMMA   (hash md5:def0f44d56872dd1c4371033d198fa25)
Theorem hlt_SYMDIFF_PARITY_LEMMA : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_UNION A (hl_DIFF A s t) (hl_DIFF A t s) = u) -> (hl_EVEN (hl_CARD A u) = 1 <-> (hl_EVEN (hl_CARD A s) = 1 <-> hl_EVEN (hl_CARD A t) = 1)).
Admitted.

// HOL Light: Multivariate/clifford.ml:48 / FINITE_CART_SUBSET_LEMMA   (hash md5:d495fc01f004a9e544db8259bd86f115)
Theorem hlt_FINITE_CART_SUBSET_LEMMA : forall P :e 2 :^: omega :^: omega, forall m n :e omega, hl_FINITE (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6101 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6101 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) m) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 /\ P i j = 1) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:59 / multivector_tybij_th   (hash md5:8b6306a0cbdd123b090e7139718197ee)
Theorem hlt_multivector_tybij_th : forall N:set, N <> Empty -> exists s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:63 / multivector_tybij   (hash md5:562df723ea282d5480f51f65e18cebc1)
Theorem hlt_multivector_tybij : forall N:set, N <> Empty -> (forall a :e hl_ty_multivector N, hl_mk_multivector N (hl_dest_multivector N a) = a) /\ forall r :e 2 :^: omega, hl_SUBSET omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 <-> hl_dest_multivector N (hl_mk_multivector N r) = r.
Admitted.

// HOL Light: Multivariate/clifford.ml:67 / MULTIVECTOR_IMAGE   (hash md5:1965e23870965ff09a8a691fef1e5045)
Theorem hlt_MULTIVECTOR_IMAGE : forall N:set, N <> Empty -> hl_UNIV (hl_ty_multivector N) = hl_IMAGE (2 :^: omega) (hl_ty_multivector N) (hl_mk_multivector N) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6102 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6102 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) s = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/clifford.ml:72 / HAS_SIZE_MULTIVECTOR   (hash md5:d995c2732d2e0bbd3de052e578324ce3)
Theorem hlt_HAS_SIZE_MULTIVECTOR : forall N:set, N <> Empty -> hl_HAS_SIZE (hl_ty_multivector N) (hl_UNIV (hl_ty_multivector N)) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:78 / FINITE_MULTIVECTOR   (hash md5:8dc5a4f23ea41d8f807679d14597293c)
Theorem hlt_FINITE_MULTIVECTOR : forall N:set, N <> Empty -> hl_FINITE (hl_ty_multivector N) (hl_UNIV (hl_ty_multivector N)) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:82 / DIMINDEX_MULTIVECTOR   (hash md5:8841b6cc9213b9d4999d5bfad25dece4)
Theorem hlt_DIMINDEX_MULTIVECTOR : forall N:set, N <> Empty -> hl_dimindex (hl_ty_multivector N) (hl_UNIV (hl_ty_multivector N)) = hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/clifford.ml:86 / DEST_MK_MULTIVECTOR   (hash md5:4b9416e3f0ee10f6f0b39aac928dec88)
Theorem hlt_DEST_MK_MULTIVECTOR : forall N:set, N <> Empty -> forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_dest_multivector N (hl_mk_multivector N s) = s.
Admitted.

// HOL Light: Multivariate/clifford.ml:92 / FORALL_MULTIVECTOR   (hash md5:603026e764406ba35c8ef0cc2939a9e9)
Theorem hlt_FORALL_MULTIVECTOR : forall N:set, N <> Empty -> forall P :e 2 :^: hl_ty_multivector N, (forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> P (hl_mk_multivector N s) = 1) <-> forall m :e hl_ty_multivector N, P m = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:108 / setcode   (hash md5:81a94d35fb5a66f51e9110f143b057f6)
Theorem hlt_setcode_thm : forall s :e 2 :^: omega, hl_setcode s = hl_add (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_binarysum (hl_IMAGE omega omega hl_PRE s)).
Admitted.

// HOL Light: Multivariate/clifford.ml:111 / codeset   (hash md5:e7c6f709cd6f245c88a9791fbc09f341)
Theorem hlt_codeset_thm : forall n :e omega, hl_codeset n = hl_IMAGE omega omega hl_SUC (hl_bitset (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/clifford.ml:114 / CODESET_SETCODE_BIJECTIONS   (hash md5:29f4711af6f8111042114494c9d4a5bd)
Theorem hlt_CODESET_SETCODE_BIJECTIONS : forall n :e omega, (forall i :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) = 1 -> hl_SUBSET omega (hl_codeset i) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 /\ hl_setcode (hl_codeset i) = i) /\ forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 -> hl_IN omega (hl_setcode s) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) = 1 /\ hl_codeset (hl_setcode s) = s.
Admitted.

// HOL Light: Multivariate/clifford.ml:144 / FORALL_SETCODE   (hash md5:670b5fc93d3c32358c9caa5d40d1d6d1)
Theorem hlt_FORALL_SETCODE : forall n :e omega, forall P :e 2 :^: omega, (forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 -> P (hl_setcode s) = 1) <-> forall i :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) = 1 -> P i = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:148 / SETCODE_BOUNDS   (hash md5:3998b70cd8c8c80eaf05032feb125090)
Theorem hlt_SETCODE_BOUNDS : forall s :e 2 :^: omega, forall n :e omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 -> hl_IN omega (hl_setcode s) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:158 / sindex   (hash md5:b740f3d969d961b32196ad270bcf6824)
Theorem hlt_sindex : forall N:set, N <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector N), forall s :e 2 :^: omega, hl_sym_2424 N x s = hl_vindex R (hl_ty_multivector N) x (hl_setcode s).
Admitted.

// HOL Light: Multivariate/clifford.ml:163 / lambdas   (hash md5:2d89793d0fb65b7c34cf6bf47463dfdd)
Theorem hlt_lambdas_thm : forall N:set, N <> Empty -> forall g :e R :^: (2 :^: omega), hl_lambdas N g = hl_lambda R (hl_ty_multivector N) (fun i :e omega => g (hl_codeset i)).
Admitted.

// HOL Light: Multivariate/clifford.ml:171 / MULTIVECTOR_EQ   (hash md5:a50807de0492c9f2aa9347ca3f772b02)
Theorem hlt_MULTIVECTOR_EQ : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector N), x = y <-> forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_sym_2424 N x s = hl_sym_2424 N y s.
Admitted.

// HOL Light: Multivariate/clifford.ml:177 / MULTIVECTOR_BETA   (hash md5:ed0f3263016fad959d786205cdca2d7c)
Theorem hlt_MULTIVECTOR_BETA : forall N:set, N <> Empty -> forall g :e R :^: (2 :^: omega), forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_sym_2424 N (hl_lambdas N g) s = g s.
Admitted.

// HOL Light: Multivariate/clifford.ml:184 / MULTIVECTOR_UNIQUE   (hash md5:00e5a59b51b05a0db333ca3883cdf02c)
Theorem hlt_MULTIVECTOR_UNIQUE : forall N:set, N <> Empty -> forall m :e hl_ty_cart R (hl_ty_multivector N), forall g :e R :^: (2 :^: omega), (forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_sym_2424 N m s = g s) -> hl_lambdas N g = m.
Admitted.

// HOL Light: Multivariate/clifford.ml:190 / MULTIVECTOR_ETA   (hash md5:d7380bfc0ecd9a8839f4c67bc9e31364)
Theorem hlt_MULTIVECTOR_ETA : forall A:set, A <> Empty -> forall m :e hl_ty_cart R (hl_ty_multivector A), hl_lambdas A (fun s :e 2 :^: omega => hl_sym_2424 A m s) = m.
Admitted.

// HOL Light: Multivariate/clifford.ml:198 / MULTIVECTOR_ADD_COMPONENT   (hash md5:0633a0660c9141b540f56a08f53a1a63)
Theorem hlt_MULTIVECTOR_ADD_COMPONENT : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector N), forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_sym_2424 N (hl_vector_add (hl_ty_multivector N) x y) s = hl_real_add (hl_sym_2424 N x s) (hl_sym_2424 N y s).
Admitted.

// HOL Light: Multivariate/clifford.ml:204 / MULTIVECTOR_MUL_COMPONENT   (hash md5:4c3eff2489dd5f67cdde6224de27ce82)
Theorem hlt_MULTIVECTOR_MUL_COMPONENT : forall N:set, N <> Empty -> forall c :e R, forall x :e hl_ty_cart R (hl_ty_multivector N), forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_sym_2424 N (hl_vmul (hl_ty_multivector N) c x) s = hl_real_mul c (hl_sym_2424 N x s).
Admitted.

// HOL Light: Multivariate/clifford.ml:210 / MULTIVECTOR_VEC_COMPONENT   (hash md5:04994e67c67060bdaf20c1f5c6a9621c)
Theorem hlt_MULTIVECTOR_VEC_COMPONENT : forall N:set, N <> Empty -> forall k :e omega, forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_sym_2424 N (hl_vec (hl_ty_multivector N) k) s = hl_real_of_num k.
Admitted.

// HOL Light: Multivariate/clifford.ml:215 / MULTIVECTOR_VSUM_COMPONENT   (hash md5:d7dc5763a6e83797ce52631d90a658de)
Theorem hlt_MULTIVECTOR_VSUM_COMPONENT : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R (hl_ty_multivector N) :^: A, forall t :e 2 :^: A, forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_sym_2424 N (hl_vsum A (hl_ty_multivector N) t f) s = hl_sum A t (fun x :e A => hl_sym_2424 N (f x) s).
Admitted.

// HOL Light: Multivariate/clifford.ml:222 / MULTIVECTOR_VSUM   (hash md5:4a603e0066ba4e6046405aed4858f3cd)
Theorem hlt_MULTIVECTOR_VSUM : forall A B:set, A <> Empty -> B <> Empty -> forall t :e 2 :^: B, forall f :e hl_ty_cart R (hl_ty_multivector A) :^: B, hl_vsum B (hl_ty_multivector A) t f = hl_lambdas A (fun s :e 2 :^: omega => hl_sum B t (fun x :e B => hl_sym_2424 A (f x) s)).
Admitted.

// HOL Light: Multivariate/clifford.ml:230 / mbasis   (hash md5:58a6942fd78c9cbecb4d608cd3f1504e)
Theorem hlt_mbasis_thm : forall A:set, A <> Empty -> forall i :e 2 :^: omega, hl_mbasis A i = hl_lambdas A (fun s :e 2 :^: omega => hl_COND R (if i = s then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Multivariate/clifford.ml:233 / MBASIS_COMPONENT   (hash md5:e9b371445b034d6346d7786dc740f68a)
Theorem hlt_MBASIS_COMPONENT : forall N:set, N <> Empty -> forall s t :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_sym_2424 N (hl_mbasis N t) s = hl_COND R (if s = t then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/clifford.ml:238 / MBASIS_EQ_0   (hash md5:96f3ff1515d1bf6101a5ad86af2b0112)
Theorem hlt_MBASIS_EQ_0 : forall N:set, N <> Empty -> forall s :e 2 :^: omega, hl_mbasis N s = hl_vec (hl_ty_multivector N) (hl_NUMERAL hl_zero) <-> ~ hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:244 / MBASIS_NONZERO   (hash md5:26e4c8632e1337b4b1393a289544369d)
Theorem hlt_MBASIS_NONZERO : forall N:set, N <> Empty -> forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> ~ hl_mbasis N s = hl_vec (hl_ty_multivector N) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:248 / MBASIS_EXPANSION   (hash md5:1bf8559f7f134b6d33cf00dd4d102128)
Theorem hlt_MBASIS_EXPANSION : forall N:set, N <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector N), hl_vsum (2 :^: omega) (hl_ty_multivector N) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6103 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6103 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) s = 1 then 1 else 0)) (fun s :e 2 :^: omega => hl_vmul (hl_ty_multivector N) (hl_sym_2424 N x s) (hl_mbasis N s)) = x.
Admitted.

// HOL Light: Multivariate/clifford.ml:258 / SPAN_MBASIS   (hash md5:a6c702324be7adfb69bb033f0b93e990)
Theorem hlt_SPAN_MBASIS : forall N:set, N <> Empty -> hl_span (hl_ty_multivector N) (hl_GSPEC (hl_ty_cart R (hl_ty_multivector N)) (fun GEN_PVAR_6104 :e hl_ty_cart R (hl_ty_multivector N) => if exists s :e 2 :^: omega, hl_SETSPEC (hl_ty_cart R (hl_ty_multivector N)) GEN_PVAR_6104 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) (hl_mbasis N s) = 1 then 1 else 0)) = hl_UNIV (hl_ty_cart R (hl_ty_multivector N)).
Admitted.

// HOL Light: Multivariate/clifford.ml:272 / LINEAR_EQ_MBASIS   (hash md5:7058ebca29c1810d21b93a2b5355c5a5)
Theorem hlt_LINEAR_EQ_MBASIS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_multivector M), forall s :e A, hl_linear (hl_ty_multivector M) N f = 1 /\ (hl_linear (hl_ty_multivector M) N g = 1 /\ (forall s1 :e 2 :^: omega, hl_SUBSET omega s1 (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) = 1 -> f (hl_mbasis M s1) = g (hl_mbasis M s1))) -> f = g.
Admitted.

// HOL Light: Multivariate/clifford.ml:285 / BILINEAR_EQ_MBASIS   (hash md5:6bff91a585b41b309a6c5d49063b218e)
Theorem hlt_BILINEAR_EQ_MBASIS : forall A M N P:set, A <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall f g :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_multivector N) :^: hl_ty_cart R (hl_ty_multivector M), forall s :e A, hl_bilinear (hl_ty_multivector M) (hl_ty_multivector N) P f = 1 /\ (hl_bilinear (hl_ty_multivector M) (hl_ty_multivector N) P g = 1 /\ (forall s1 t :e 2 :^: omega, hl_SUBSET omega s1 (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) = 1 /\ hl_SUBSET omega t (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> f (hl_mbasis M s1) (hl_mbasis N t) = g (hl_mbasis M s1) (hl_mbasis N t))) -> f = g.
Admitted.

// HOL Light: Multivariate/clifford.ml:305 / LINEAR_PROPERTY   (hash md5:0a35467643459e2370c4cbc4b15d59e5)
Theorem hlt_LINEAR_PROPERTY : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: hl_ty_cart R B, P (hl_vec B (hl_NUMERAL hl_zero)) = 1 /\ (forall x y :e hl_ty_cart R B, P x = 1 /\ P y = 1 -> P (hl_vector_add B x y) = 1) -> forall f :e hl_ty_cart R B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> P (f i) = 1) -> P (hl_vsum A B s f) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:312 / MBASIS_EXTENSION   (hash md5:3507508348b2f09c37b237890c2ddc59)
Theorem hlt_MBASIS_EXTENSION : forall N:set, N <> Empty -> forall P :e 2 :^: hl_ty_cart R (hl_ty_multivector N), (forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> P (hl_mbasis N s) = 1) /\ ((forall c :e R, forall x :e hl_ty_cart R (hl_ty_multivector N), P x = 1 -> P (hl_vmul (hl_ty_multivector N) c x) = 1) /\ (forall x y :e hl_ty_cart R (hl_ty_multivector N), P x = 1 /\ P y = 1 -> P (hl_vector_add (hl_ty_multivector N) x y) = 1)) -> forall x :e hl_ty_cart R (hl_ty_multivector N), P x = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:325 / multivec   (hash md5:7624eb23f968918123276a8dbb35e110)
Theorem hlt_multivec_thm : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, hl_multivec N x = hl_vsum omega (hl_ty_multivector N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vmul (hl_ty_multivector N) (hl_vindex R N x i) (hl_mbasis N (hl_INSERT omega i (hl_EMPTY omega)))).
Admitted.

// HOL Light: Multivariate/clifford.ml:335 / multivector   (hash md5:e6f6134fb809bb5973153f428a15c815)
Theorem hlt_multivector_thm : forall N:set, N <> Empty -> forall p :e hl_ty_cart R (hl_ty_multivector N), forall k :e omega, hl_multivector N k p = 1 <-> forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ ~ hl_sym_2424 N p s = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_HAS_SIZE omega s k = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:345 / grade   (hash md5:d916380bee857368d49b4bff3dbd1b24)
Theorem hlt_grade_thm : forall N:set, N <> Empty -> forall k :e omega, forall p :e hl_ty_cart R (hl_ty_multivector N), hl_grade N k p = hl_lambdas N (fun s :e 2 :^: omega => hl_COND R (hl_HAS_SIZE omega s k) (hl_sym_2424 N p s) (hl_real_of_num (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Multivariate/clifford.ml:349 / MULTIVECTOR_GRADE   (hash md5:f640cae90b3dc64ceba186da31ecd936)
Theorem hlt_MULTIVECTOR_GRADE : forall A:set, A <> Empty -> forall k :e omega, forall x :e hl_ty_cart R (hl_ty_multivector A), hl_multivector A k (hl_grade A k x) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:354 / GRADE_ADD   (hash md5:b05a64b61212479fa57041e5e1553207)
Theorem hlt_GRADE_ADD : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector A), forall k :e omega, hl_grade A k (hl_vector_add (hl_ty_multivector A) x y) = hl_vector_add (hl_ty_multivector A) (hl_grade A k x) (hl_grade A k y).
Admitted.

// HOL Light: Multivariate/clifford.ml:360 / GRADE_CMUL   (hash md5:6bad0772558faaf79b12d0923be9e491)
Theorem hlt_GRADE_CMUL : forall A:set, A <> Empty -> forall c :e R, forall x :e hl_ty_cart R (hl_ty_multivector A), forall k :e omega, hl_grade A k (hl_vmul (hl_ty_multivector A) c x) = hl_vmul (hl_ty_multivector A) c (hl_grade A k x).
Admitted.

// HOL Light: Multivariate/clifford.ml:370 / Product_DEF   (hash md5:25ecbd1c8ea7e2c5ffdfbadf3ef540b5)
Theorem hlt_Product_DEF : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector N), forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), hl_Product N mult op x y = hl_vsum (2 :^: omega) (hl_ty_multivector N) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6108 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6108 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) s = 1 then 1 else 0)) (fun s :e 2 :^: omega => hl_vsum (2 :^: omega) (hl_ty_multivector N) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6109 :e 2 :^: omega => if exists s1 :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6109 (hl_SUBSET omega s1 (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) s1 = 1 then 1 else 0)) (fun t :e 2 :^: omega => hl_vmul (hl_ty_multivector N) (hl_real_mul (hl_sym_2424 N x s) (hl_real_mul (hl_sym_2424 N y t) (mult s t))) (hl_mbasis N (op s t)))).
Admitted.

// HOL Light: Multivariate/clifford.ml:381 / BILINEAR_PRODUCT   (hash md5:5ec7836c6e381f41cc6aeee34d8ddd78)
Theorem hlt_BILINEAR_PRODUCT : forall A:set, A <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), hl_bilinear (hl_ty_multivector A) (hl_ty_multivector A) (hl_ty_multivector A) (hl_Product A mult op) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:392 / PRODUCT_LADD   (hash md5:b890d9c4e095a2ec7397ed4edcb15f27)
Theorem hlt_PRODUCT_LADD : forall A:set, A <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall x y z :e hl_ty_cart R (hl_ty_multivector A), hl_Product A mult op (hl_vector_add (hl_ty_multivector A) x y) z = hl_vector_add (hl_ty_multivector A) (hl_Product A mult op x z) (hl_Product A mult op y z).
Admitted.

// HOL Light: Multivariate/clifford.ml:393 / PRODUCT_RADD   (hash md5:081b4c9b04326cf3291846821f5433f0)
Theorem hlt_PRODUCT_RADD : forall A:set, A <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall x y z :e hl_ty_cart R (hl_ty_multivector A), hl_Product A mult op x (hl_vector_add (hl_ty_multivector A) y z) = hl_vector_add (hl_ty_multivector A) (hl_Product A mult op x y) (hl_Product A mult op x z).
Admitted.

// HOL Light: Multivariate/clifford.ml:394 / PRODUCT_LMUL   (hash md5:fe96a78946a93bccf56016057fbdefc9)
Theorem hlt_PRODUCT_LMUL : forall A:set, A <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall c :e R, forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_Product A mult op (hl_vmul (hl_ty_multivector A) c x) y = hl_vmul (hl_ty_multivector A) c (hl_Product A mult op x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:395 / PRODUCT_RMUL   (hash md5:1cd9905eea1806e7e7772e97629949b4)
Theorem hlt_PRODUCT_RMUL : forall A:set, A <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall c :e R, forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_Product A mult op x (hl_vmul (hl_ty_multivector A) c y) = hl_vmul (hl_ty_multivector A) c (hl_Product A mult op x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:396 / PRODUCT_LNEG   (hash md5:3d1117de7edc154578467516f9dc0350)
Theorem hlt_PRODUCT_LNEG : forall A:set, A <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_Product A mult op (hl_vector_neg (hl_ty_multivector A) x) y = hl_vector_neg (hl_ty_multivector A) (hl_Product A mult op x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:397 / PRODUCT_RNEG   (hash md5:70a76f3d16b0869448b0ee14068f59ef)
Theorem hlt_PRODUCT_RNEG : forall A:set, A <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_Product A mult op x (hl_vector_neg (hl_ty_multivector A) y) = hl_vector_neg (hl_ty_multivector A) (hl_Product A mult op x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:398 / PRODUCT_LZERO   (hash md5:350c4487ba83da0b5818a03726b4b40d)
Theorem hlt_PRODUCT_LZERO : forall A:set, A <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall x :e hl_ty_cart R (hl_ty_multivector A), hl_Product A mult op (hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero)) x = hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:399 / PRODUCT_RZERO   (hash md5:6348e57b9bd36cab070c7fefd7dbcb54)
Theorem hlt_PRODUCT_RZERO : forall A:set, A <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall x :e hl_ty_cart R (hl_ty_multivector A), hl_Product A mult op x (hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero)) = hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:405 / PRODUCT_ASSOCIATIVE   (hash md5:7487fdc21cd66482f57f3e61ef307f83)
Theorem hlt_PRODUCT_ASSOCIATIVE : forall N:set, N <> Empty -> forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), (forall s t :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_SUBSET omega t (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_SUBSET omega (op s t) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1) /\ ((forall s t u :e 2 :^: omega, op s (op t u) = op (op s t) u) /\ (forall s t u :e 2 :^: omega, hl_real_mul (mult t u) (mult s (op t u)) = hl_real_mul (mult s t) (mult (op s t) u))) -> forall x y z :e hl_ty_cart R (hl_ty_multivector N), hl_Product N mult op x (hl_Product N mult op y z) = hl_Product N mult op (hl_Product N mult op x y) z.
Admitted.

// HOL Light: Multivariate/clifford.ml:446 / geom_mul   (hash md5:72400e4951bb21b93f2aef6b71bf6fff)
Theorem hlt_geom_mul_thm : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector N), hl_geom_mul N x y = hl_Product N (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6111 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6111 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega i s = 1 /\ (hl_IN omega j t = 1 /\ hl_gt i j = 1))) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0)))) (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_UNION omega (hl_DIFF omega s t) (hl_DIFF omega t s)) x y.
Admitted.

// HOL Light: Multivariate/clifford.ml:454 / BILINEAR_GEOM   (hash md5:9ac498c9e5e767ac49e54d4012f06fea)
Theorem hlt_BILINEAR_GEOM : forall A:set, A <> Empty -> hl_bilinear (hl_ty_multivector A) (hl_ty_multivector A) (hl_ty_multivector A) (hl_geom_mul A) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:459 / GEOM_LADD   (hash md5:ce2ca520f9d9a8a02a60f8190f7bae3a)
Theorem hlt_GEOM_LADD : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R (hl_ty_multivector A), hl_geom_mul A (hl_vector_add (hl_ty_multivector A) x y) z = hl_vector_add (hl_ty_multivector A) (hl_geom_mul A x z) (hl_geom_mul A y z).
Admitted.

// HOL Light: Multivariate/clifford.ml:460 / GEOM_RADD   (hash md5:d6c071dbdf37d3428dfa79745fb53f05)
Theorem hlt_GEOM_RADD : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R (hl_ty_multivector A), hl_geom_mul A x (hl_vector_add (hl_ty_multivector A) y z) = hl_vector_add (hl_ty_multivector A) (hl_geom_mul A x y) (hl_geom_mul A x z).
Admitted.

// HOL Light: Multivariate/clifford.ml:461 / GEOM_LMUL   (hash md5:db9691bb608e7feecffa493bfb54a800)
Theorem hlt_GEOM_LMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_geom_mul A (hl_vmul (hl_ty_multivector A) c x) y = hl_vmul (hl_ty_multivector A) c (hl_geom_mul A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:462 / GEOM_RMUL   (hash md5:7600619acc31ce64e3be1f2e718c80a5)
Theorem hlt_GEOM_RMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_geom_mul A x (hl_vmul (hl_ty_multivector A) c y) = hl_vmul (hl_ty_multivector A) c (hl_geom_mul A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:463 / GEOM_LNEG   (hash md5:72bd83a1a297ab1cc7b5c19cd4d6fe20)
Theorem hlt_GEOM_LNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_geom_mul A (hl_vector_neg (hl_ty_multivector A) x) y = hl_vector_neg (hl_ty_multivector A) (hl_geom_mul A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:464 / GEOM_RNEG   (hash md5:420a91c28f1a1085fc9f67de379aeb2b)
Theorem hlt_GEOM_RNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_geom_mul A x (hl_vector_neg (hl_ty_multivector A) y) = hl_vector_neg (hl_ty_multivector A) (hl_geom_mul A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:465 / GEOM_LZERO   (hash md5:cb358383db7e6b38702b483732025abb)
Theorem hlt_GEOM_LZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector A), hl_geom_mul A (hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero)) x = hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:466 / GEOM_RZERO   (hash md5:06b50c90f212718eb2f96091adf498d4)
Theorem hlt_GEOM_RZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector A), hl_geom_mul A x (hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero)) = hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:468 / GEOM_ASSOC   (hash md5:c1f258afa7d56dc2ab2d74a1fc657bf0)
Theorem hlt_GEOM_ASSOC : forall N:set, N <> Empty -> forall x y z :e hl_ty_cart R (hl_ty_multivector N), hl_geom_mul N x (hl_geom_mul N y z) = hl_geom_mul N (hl_geom_mul N x y) z.
Admitted.

// HOL Light: Multivariate/clifford.ml:496 / outer   (hash md5:916206e0a86448e7669b1bca1c7ef633)
Theorem hlt_outer_thm : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector N), hl_outer N x y = hl_Product N (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_COND R (if ~ hl_INTER omega s t = hl_EMPTY omega then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6112 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6112 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega i s = 1 /\ (hl_IN omega j t = 1 /\ hl_gt i j = 1))) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0))))) (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_UNION omega (hl_DIFF omega s t) (hl_DIFF omega t s)) x y.
Admitted.

// HOL Light: Multivariate/clifford.ml:506 / OUTER   (hash md5:cdb6724bb43c22bae5e9cd562febc315)
Theorem hlt_OUTER : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector N), hl_outer N x y = hl_Product N (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_COND R (if ~ hl_INTER omega s t = hl_EMPTY omega then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6113 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6113 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega i s = 1 /\ (hl_IN omega j t = 1 /\ hl_gt i j = 1))) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0))))) (hl_UNION omega) x y.
Admitted.

// HOL Light: Multivariate/clifford.ml:522 / BILINEAR_OUTER   (hash md5:73ca55502a78ce1ea9a8021a7d26cc6b)
Theorem hlt_BILINEAR_OUTER : forall A:set, A <> Empty -> hl_bilinear (hl_ty_multivector A) (hl_ty_multivector A) (hl_ty_multivector A) (hl_outer A) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:527 / OUTER_LADD   (hash md5:1c383e9463bb15434483ef5b591bba9d)
Theorem hlt_OUTER_LADD : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R (hl_ty_multivector A), hl_outer A (hl_vector_add (hl_ty_multivector A) x y) z = hl_vector_add (hl_ty_multivector A) (hl_outer A x z) (hl_outer A y z).
Admitted.

// HOL Light: Multivariate/clifford.ml:528 / OUTER_RADD   (hash md5:5a821e1b2fcef1f605ebbaf7a7dff273)
Theorem hlt_OUTER_RADD : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R (hl_ty_multivector A), hl_outer A x (hl_vector_add (hl_ty_multivector A) y z) = hl_vector_add (hl_ty_multivector A) (hl_outer A x y) (hl_outer A x z).
Admitted.

// HOL Light: Multivariate/clifford.ml:529 / OUTER_LMUL   (hash md5:c182c06ea13569f4ac9e6d26b3b6a0d7)
Theorem hlt_OUTER_LMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_outer A (hl_vmul (hl_ty_multivector A) c x) y = hl_vmul (hl_ty_multivector A) c (hl_outer A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:530 / OUTER_RMUL   (hash md5:bcf2a354537604adf8ea15e267c4b43e)
Theorem hlt_OUTER_RMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_outer A x (hl_vmul (hl_ty_multivector A) c y) = hl_vmul (hl_ty_multivector A) c (hl_outer A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:531 / OUTER_LNEG   (hash md5:c7b5e81ed4b1bb342db7946121875274)
Theorem hlt_OUTER_LNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_outer A (hl_vector_neg (hl_ty_multivector A) x) y = hl_vector_neg (hl_ty_multivector A) (hl_outer A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:532 / OUTER_RNEG   (hash md5:a67df1eaf9101169fe0766c93f87ccff)
Theorem hlt_OUTER_RNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_outer A x (hl_vector_neg (hl_ty_multivector A) y) = hl_vector_neg (hl_ty_multivector A) (hl_outer A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:533 / OUTER_LZERO   (hash md5:771feadf598ca53f3cf7061c088649df)
Theorem hlt_OUTER_LZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector A), hl_outer A (hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero)) x = hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:534 / OUTER_RZERO   (hash md5:d9020a338ebb6d7dca451eb405e01b76)
Theorem hlt_OUTER_RZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector A), hl_outer A x (hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero)) = hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:536 / OUTER_ASSOC   (hash md5:959cef8c3cb240edb8a20ad393f4721a)
Theorem hlt_OUTER_ASSOC : forall N:set, N <> Empty -> forall x y z :e hl_ty_cart R (hl_ty_multivector N), hl_outer N x (hl_outer N y z) = hl_outer N (hl_outer N x y) z.
Admitted.

// HOL Light: Multivariate/clifford.ml:559 / inner   (hash md5:963cbcba37411bf1ee709115885a8f9b)
Theorem hlt_inner_thm : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector N), hl_inner N x y = hl_Product N (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_COND R (if s = hl_EMPTY omega \/ (t = hl_EMPTY omega \/ ~ (hl_DIFF omega s t = hl_EMPTY omega /\ ~ hl_DIFF omega t s = hl_EMPTY omega)) then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6114 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6114 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega i s = 1 /\ (hl_IN omega j t = 1 /\ hl_gt i j = 1))) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0))))) (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_UNION omega (hl_DIFF omega s t) (hl_DIFF omega t s)) x y.
Admitted.

// HOL Light: Multivariate/clifford.ml:571 / BILINEAR_INNER   (hash md5:d3765e69474c0802bbbb3a9e84aee2be)
Theorem hlt_BILINEAR_INNER : forall A:set, A <> Empty -> hl_bilinear (hl_ty_multivector A) (hl_ty_multivector A) (hl_ty_multivector A) (hl_inner A) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:576 / INNER_LADD   (hash md5:6f275813c43785ea835f6cfeb7e43d94)
Theorem hlt_INNER_LADD : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R (hl_ty_multivector A), hl_inner A (hl_vector_add (hl_ty_multivector A) x y) z = hl_vector_add (hl_ty_multivector A) (hl_inner A x z) (hl_inner A y z).
Admitted.

// HOL Light: Multivariate/clifford.ml:577 / INNER_RADD   (hash md5:603be3b9303bcffc7b0fa36cb96de2c9)
Theorem hlt_INNER_RADD : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R (hl_ty_multivector A), hl_inner A x (hl_vector_add (hl_ty_multivector A) y z) = hl_vector_add (hl_ty_multivector A) (hl_inner A x y) (hl_inner A x z).
Admitted.

// HOL Light: Multivariate/clifford.ml:578 / INNER_LMUL   (hash md5:6f1049882892e8ae5f05c7ca11cf4739)
Theorem hlt_INNER_LMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_inner A (hl_vmul (hl_ty_multivector A) c x) y = hl_vmul (hl_ty_multivector A) c (hl_inner A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:579 / INNER_RMUL   (hash md5:20a3d9e61b106991639b051074d81db8)
Theorem hlt_INNER_RMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_inner A x (hl_vmul (hl_ty_multivector A) c y) = hl_vmul (hl_ty_multivector A) c (hl_inner A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:580 / INNER_LNEG   (hash md5:2db2dccc1ca22aa13006e23c8c35ff13)
Theorem hlt_INNER_LNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_inner A (hl_vector_neg (hl_ty_multivector A) x) y = hl_vector_neg (hl_ty_multivector A) (hl_inner A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:581 / INNER_RNEG   (hash md5:4ca0748520e73d7c375111d3887806c3)
Theorem hlt_INNER_RNEG : forall A:set, A <> Empty -> forall x y :e hl_ty_cart R (hl_ty_multivector A), hl_inner A x (hl_vector_neg (hl_ty_multivector A) y) = hl_vector_neg (hl_ty_multivector A) (hl_inner A x y).
Admitted.

// HOL Light: Multivariate/clifford.ml:582 / INNER_LZERO   (hash md5:ab2a4d4c38e085e5adc4a0666b088f4f)
Theorem hlt_INNER_LZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector A), hl_inner A (hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero)) x = hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:583 / INNER_RZERO   (hash md5:45bdc143b63b916eb375dbcd4c8c17d3)
Theorem hlt_INNER_RZERO : forall A:set, A <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector A), hl_inner A x (hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero)) = hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:589 / PRODUCT_MBASIS   (hash md5:8c539e3f9353c25423c439915b9f2d12)
Theorem hlt_PRODUCT_MBASIS : forall N:set, N <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall s t :e 2 :^: omega, hl_Product N mult op (hl_mbasis N s) (hl_mbasis N t) = hl_COND (hl_ty_cart R (hl_ty_multivector N)) (if hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_SUBSET omega t (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 then 1 else 0) (hl_vmul (hl_ty_multivector N) (mult s t) (hl_mbasis N (op s t))) (hl_vec (hl_ty_multivector N) (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/clifford.ml:605 / PRODUCT_MBASIS_SING   (hash md5:fc011ce4ed0a26005a1995343e119f23)
Theorem hlt_PRODUCT_MBASIS_SING : forall N:set, N <> Empty -> forall mult :e R :^: (2 :^: omega) :^: (2 :^: omega), forall op :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega), forall i j :e omega, hl_Product N mult op (hl_mbasis N (hl_INSERT omega i (hl_EMPTY omega))) (hl_mbasis N (hl_INSERT omega j (hl_EMPTY omega))) = hl_COND (hl_ty_cart R (hl_ty_multivector N)) (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 then 1 else 0) (hl_vmul (hl_ty_multivector N) (mult (hl_INSERT omega i (hl_EMPTY omega)) (hl_INSERT omega j (hl_EMPTY omega))) (hl_mbasis N (op (hl_INSERT omega i (hl_EMPTY omega)) (hl_INSERT omega j (hl_EMPTY omega))))) (hl_vec (hl_ty_multivector N) (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/clifford.ml:612 / GEOM_MBASIS   (hash md5:b2a3e8615763ef2e69333d9092af7e33)
Theorem hlt_GEOM_MBASIS : forall N:set, N <> Empty -> forall s t :e 2 :^: omega, hl_geom_mul N (hl_mbasis N s) (hl_mbasis N t) = hl_COND (hl_ty_cart R (hl_ty_multivector N)) (if hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_SUBSET omega t (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 then 1 else 0) (hl_vmul (hl_ty_multivector N) (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6115 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6115 (if hl_IN omega i s = 1 /\ (hl_IN omega j t = 1 /\ hl_gt i j = 1) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0)))) (hl_mbasis N (hl_UNION omega (hl_DIFF omega s t) (hl_DIFF omega t s)))) (hl_vec (hl_ty_multivector N) (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/clifford.ml:624 / GEOM_MBASIS_SING   (hash md5:8478cb572696ed15e2a35fa55b7562e7)
Theorem hlt_GEOM_MBASIS_SING : forall N:set, N <> Empty -> forall i j :e omega, hl_geom_mul N (hl_mbasis N (hl_INSERT omega i (hl_EMPTY omega))) (hl_mbasis N (hl_INSERT omega j (hl_EMPTY omega))) = hl_COND (hl_ty_cart R (hl_ty_multivector N)) (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 then 1 else 0) (hl_COND (hl_ty_cart R (hl_ty_multivector N)) (if i = j then 1 else 0) (hl_mbasis N (hl_EMPTY omega)) (hl_COND (hl_ty_cart R (hl_ty_multivector N)) (hl_lt i j) (hl_mbasis N (hl_INSERT omega i (hl_INSERT omega j (hl_EMPTY omega)))) (hl_vector_neg (hl_ty_multivector N) (hl_mbasis N (hl_INSERT omega i (hl_INSERT omega j (hl_EMPTY omega))))))) (hl_vec (hl_ty_multivector N) (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/clifford.ml:658 / OUTER_MBASIS   (hash md5:6f1b1cff45dbff72fbcf96622f9537d0)
Theorem hlt_OUTER_MBASIS : forall N:set, N <> Empty -> forall s t :e 2 :^: omega, hl_outer N (hl_mbasis N s) (hl_mbasis N t) = hl_COND (hl_ty_cart R (hl_ty_multivector N)) (if hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_SUBSET omega t (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_INTER omega s t = hl_EMPTY omega) then 1 else 0) (hl_vmul (hl_ty_multivector N) (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6117 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6117 (if hl_IN omega i s = 1 /\ (hl_IN omega j t = 1 /\ hl_gt i j = 1) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0)))) (hl_mbasis N (hl_UNION omega s t))) (hl_vec (hl_ty_multivector N) (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/clifford.ml:673 / OUTER_MBASIS_SING   (hash md5:831f80136beb59a7129f888052f9ea52)
Theorem hlt_OUTER_MBASIS_SING : forall N:set, N <> Empty -> forall i j :e omega, hl_outer N (hl_mbasis N (hl_INSERT omega i (hl_EMPTY omega))) (hl_mbasis N (hl_INSERT omega j (hl_EMPTY omega))) = hl_COND (hl_ty_cart R (hl_ty_multivector N)) (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ ~ i = j) then 1 else 0) (hl_COND (hl_ty_cart R (hl_ty_multivector N)) (hl_lt i j) (hl_mbasis N (hl_INSERT omega i (hl_INSERT omega j (hl_EMPTY omega)))) (hl_vector_neg (hl_ty_multivector N) (hl_mbasis N (hl_INSERT omega i (hl_INSERT omega j (hl_EMPTY omega)))))) (hl_vec (hl_ty_multivector N) (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/clifford.ml:707 / OUTER_MBASIS_SKEWSYM   (hash md5:5548ac408de354a9bde0412360871f6c)
Theorem hlt_OUTER_MBASIS_SKEWSYM : forall A:set, A <> Empty -> forall i j :e omega, hl_outer A (hl_mbasis A (hl_INSERT omega i (hl_EMPTY omega))) (hl_mbasis A (hl_INSERT omega j (hl_EMPTY omega))) = hl_vector_neg (hl_ty_multivector A) (hl_outer A (hl_mbasis A (hl_INSERT omega j (hl_EMPTY omega))) (hl_mbasis A (hl_INSERT omega i (hl_EMPTY omega)))).
Admitted.

// HOL Light: Multivariate/clifford.ml:717 / OUTER_MBASIS_REFL   (hash md5:d9dcc16d0790e1f3724d99b44ca2bad1)
Theorem hlt_OUTER_MBASIS_REFL : forall A:set, A <> Empty -> forall i :e omega, hl_outer A (hl_mbasis A (hl_INSERT omega i (hl_EMPTY omega))) (hl_mbasis A (hl_INSERT omega i (hl_EMPTY omega))) = hl_vec (hl_ty_multivector A) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/clifford.ml:723 / OUTER_MBASIS_LSCALAR   (hash md5:9657d94ff4190027c987cc9ed2da8e08)
Theorem hlt_OUTER_MBASIS_LSCALAR : forall A:set, A <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector A), hl_outer A (hl_mbasis A (hl_EMPTY omega)) x = x.
Admitted.

// HOL Light: Multivariate/clifford.ml:730 / OUTER_MBASIS_RSCALAR   (hash md5:a7fbebf70015a3508266eec55623f433)
Theorem hlt_OUTER_MBASIS_RSCALAR : forall A:set, A <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector A), hl_outer A x (hl_mbasis A (hl_EMPTY omega)) = x.
Admitted.

// HOL Light: Multivariate/clifford.ml:737 / MBASIS_SPLIT   (hash md5:009617fd4e3017753b02e971d1377839)
Theorem hlt_MBASIS_SPLIT : forall A:set, A <> Empty -> forall a :e omega, forall s :e 2 :^: omega, (forall x :e omega, hl_IN omega x s = 1 -> hl_lt a x = 1) -> hl_mbasis A (hl_INSERT omega a s) = hl_outer A (hl_mbasis A (hl_INSERT omega a (hl_EMPTY omega))) (hl_mbasis A s).
Admitted.

// HOL Light: Multivariate/clifford.ml:803 / OUTER_ACI   (hash md5:dd99407fe87b098e772a6e314573f3be)
Theorem hlt_OUTER_ACI : forall A B C D E F G:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> F <> Empty -> G <> Empty -> (forall x y z :e hl_ty_cart R (hl_ty_multivector A), hl_outer A (hl_outer A x y) z = hl_outer A x (hl_outer A y z)) /\ ((forall i j :e omega, hl_gt i j = 1 -> hl_outer B (hl_mbasis B (hl_INSERT omega i (hl_EMPTY omega))) (hl_mbasis B (hl_INSERT omega j (hl_EMPTY omega))) = hl_vmul (hl_ty_multivector B) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_outer B (hl_mbasis B (hl_INSERT omega j (hl_EMPTY omega))) (hl_mbasis B (hl_INSERT omega i (hl_EMPTY omega))))) /\ ((forall i j :e omega, forall x :e hl_ty_cart R (hl_ty_multivector C), hl_gt i j = 1 -> hl_outer C (hl_mbasis C (hl_INSERT omega i (hl_EMPTY omega))) (hl_outer C (hl_mbasis C (hl_INSERT omega j (hl_EMPTY omega))) x) = hl_vmul (hl_ty_multivector C) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_outer C (hl_mbasis C (hl_INSERT omega j (hl_EMPTY omega))) (hl_outer C (hl_mbasis C (hl_INSERT omega i (hl_EMPTY omega))) x))) /\ ((forall i :e omega, hl_outer D (hl_mbasis D (hl_INSERT omega i (hl_EMPTY omega))) (hl_mbasis D (hl_INSERT omega i (hl_EMPTY omega))) = hl_vec (hl_ty_multivector D) (hl_NUMERAL hl_zero)) /\ ((forall i :e omega, forall x :e hl_ty_cart R (hl_ty_multivector E), hl_outer E (hl_mbasis E (hl_INSERT omega i (hl_EMPTY omega))) (hl_outer E (hl_mbasis E (hl_INSERT omega i (hl_EMPTY omega))) x) = hl_vec (hl_ty_multivector E) (hl_NUMERAL hl_zero)) /\ ((forall x :e hl_ty_cart R (hl_ty_multivector F), hl_outer F (hl_mbasis F (hl_EMPTY omega)) x = x) /\ forall x :e hl_ty_cart R (hl_ty_multivector G), hl_outer G x (hl_mbasis G (hl_EMPTY omega)) = x))))).
Admitted.

// HOL Light: Multivariate/clifford.ml:872 / seqiterate_EXISTS   (hash md5:6b4bf781ca36b3522e4fee25da635e60)
Theorem hlt_seqiterate_EXISTS : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, forall f :e A :^: omega, exists h :e A :^: (2 :^: omega), forall s :e 2 :^: omega, h s = hl_COND A (if hl_INFINITE omega s = 1 \/ s = hl_EMPTY omega then 1 else 0) (hl_neutral A op) (hl_LET omega A (fun i :e omega => hl_LET_END A (hl_COND A (if s = hl_INSERT omega i (hl_EMPTY omega) then 1 else 0) (f i) (op (f i) (h (hl_DELETE omega s i))))) (hl_minimal (fun x :e omega => hl_IN omega x s))).
Admitted.

// HOL Light: Multivariate/clifford.ml:889 / EXISTS_SWAP   (hash md5:071321e82293fb6219e4066d36bc6cac)
Theorem hlt_EXISTS_SWAP : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: (C :^: A :^: B), (exists f :e C :^: A :^: B, P f = 1) <-> exists f :e C :^: B :^: A, P (fun b :e B => fun a :e A => f a b) = 1.
Admitted.

// HOL Light: Multivariate/clifford.ml:895 / seqiterate   (hash md5:7e8d3955a58af0c30fe034e90384cd76)
Theorem hlt_seqiterate_thm : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, forall f :e A :^: omega, forall s :e 2 :^: omega, hl_seqiterate A op s f = hl_COND A (if hl_INFINITE omega s = 1 \/ s = hl_EMPTY omega then 1 else 0) (hl_neutral A op) (hl_LET omega A (fun i :e omega => hl_LET_END A (hl_COND A (if s = hl_INSERT omega i (hl_EMPTY omega) then 1 else 0) (f i) (op (f i) (hl_seqiterate A op (hl_DELETE omega s i) f)))) (hl_minimal (fun x :e omega => hl_IN omega x s))).
Admitted.

// HOL Light: Multivariate/clifford.ml:900 / MINIMAL_IN_INSERT   (hash md5:f260c5f685ddb70225c71f4b6cf314ee)
Theorem hlt_MINIMAL_IN_INSERT : forall s :e 2 :^: omega, forall i :e omega, (forall j :e omega, hl_IN omega j s = 1 -> hl_lt i j = 1) -> hl_minimal (fun j :e omega => hl_IN omega j (hl_INSERT omega i s)) = i.
Admitted.

// HOL Light: Multivariate/clifford.ml:906 / SEQITERATE_CLAUSES   (hash md5:b2e0060c5e54bf61f500691711a8ef11)
Theorem hlt_SEQITERATE_CLAUSES : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> (forall op :e A :^: A :^: A, forall f :e A :^: omega, hl_seqiterate A op (hl_EMPTY omega) f = hl_neutral A op) /\ ((forall op :e B :^: B :^: B, forall f :e B :^: omega, forall i :e omega, hl_seqiterate B op (hl_INSERT omega i (hl_EMPTY omega)) f = f i) /\ forall op :e C :^: C :^: C, forall f :e C :^: omega, forall i :e omega, forall s :e 2 :^: omega, hl_FINITE omega s = 1 /\ (~ s = hl_EMPTY omega /\ (forall j :e omega, hl_IN omega j s = 1 -> hl_lt i j = 1)) -> hl_seqiterate C op (hl_INSERT omega i s) f = op (f i) (hl_seqiterate C op s f)).
Admitted.

// HOL Light: Multivariate/clifford.ml:924 / SEQITERATE_ITERATE   (hash md5:936937dc18a4a6ba3f814cac0ce3d571)
Theorem hlt_SEQITERATE_ITERATE : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, forall f :e A :^: omega, forall s :e 2 :^: omega, hl_monoidal A op = 1 /\ hl_FINITE omega s = 1 -> hl_seqiterate A op s f = hl_iterate A omega op s f.
Admitted.

// HOL Light: Multivariate/clifford.ml:949 / outermorphism   (hash md5:2bb008aaa3a1bb3d717c3f1c1af2a688)
Theorem hlt_outermorphism_thm : forall N P:set, N <> Empty -> P <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector N), forall f :e hl_ty_cart R P :^: hl_ty_cart R N, hl_outermorphism N P f x = hl_vsum (2 :^: omega) (hl_ty_multivector P) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6122 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6122 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) s = 1 then 1 else 0)) (fun s :e 2 :^: omega => hl_vmul (hl_ty_multivector P) (hl_sym_2424 N x s) (hl_seqiterate (hl_ty_cart R (hl_ty_multivector P)) (hl_outer P) s (hl_o (hl_ty_cart R P) (hl_ty_cart R (hl_ty_multivector P)) omega (hl_multivec P) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) omega f (hl_basis N))))).
Admitted.

// HOL Light: Multivariate/clifford.ml:954 / NEUTRAL_OUTER   (hash md5:4e7e7b88cdfa5e6af5b0e72dc7a3a719)
Theorem hlt_NEUTRAL_OUTER : forall A:set, A <> Empty -> hl_neutral (hl_ty_cart R (hl_ty_multivector A)) (hl_outer A) = hl_mbasis A (hl_EMPTY omega).
Admitted.

// HOL Light: Multivariate/clifford.ml:959 / OUTERMORPHISM_MBASIS   (hash md5:cdf8bdbc3a2ddf9cad556bb732fc16e5)
Theorem hlt_OUTERMORPHISM_MBASIS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) = 1 -> hl_outermorphism M N f (hl_mbasis M s) = hl_seqiterate (hl_ty_cart R (hl_ty_multivector N)) (hl_outer N) s (hl_o (hl_ty_cart R N) (hl_ty_cart R (hl_ty_multivector N)) omega (hl_multivec N) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) omega f (hl_basis M))).
Admitted.

// HOL Light: Multivariate/clifford.ml:968 / OUTERMORPHISM_MBASIS_EMPTY   (hash md5:7b82156a06ecfb07117382c5fa291586)
Theorem hlt_OUTERMORPHISM_MBASIS_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_outermorphism A B f (hl_mbasis A (hl_EMPTY omega)) = hl_mbasis B (hl_EMPTY omega).
Admitted.

// HOL Light: Multivariate/clifford.ml:977 / reversion   (hash md5:a951254465b6584eb875416fb7ebd9c1)
Theorem hlt_reversion_thm : forall N:set, N <> Empty -> forall x :e hl_ty_cart R (hl_ty_multivector N), hl_reversion N x = hl_lambdas N (fun s :e 2 :^: omega => hl_real_mul (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_DIV (hl_mul (hl_CARD omega s) (hl_sub (hl_CARD omega s) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_sym_2424 N x s)).
Admitted.

