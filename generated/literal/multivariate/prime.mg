// hol2mg literal statements (private): shard prime of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/prime.ml:11 / DIVIDES_0   (hash md5:593b3d2b86618169f1531bc1548dbc2a)
Theorem hlt_DIVIDES_0 : forall x :e omega, hl_num_divides x (hl_NUMERAL hl_zero) = 1.
Admitted.

// HOL Light: Library/prime.ml:15 / DIVIDES_ZERO   (hash md5:d81eca38197678b2f90bd117f6d6a0a6)
Theorem hlt_DIVIDES_ZERO : forall x :e omega, hl_num_divides (hl_NUMERAL hl_zero) x = 1 <-> x = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:19 / DIVIDES_1   (hash md5:4371a16d5db65511705ebcb6a73553ef)
Theorem hlt_DIVIDES_1 : forall x :e omega, hl_num_divides (hl_NUMERAL (hl_BIT1 hl_zero)) x = 1.
Admitted.

// HOL Light: Library/prime.ml:23 / DIVIDES_REFL   (hash md5:9e2bf548f35b826fe6949c5e8827c33e)
Theorem hlt_DIVIDES_REFL : forall x :e omega, hl_num_divides x x = 1.
Admitted.

// HOL Light: Library/prime.ml:27 / DIVIDES_TRANS   (hash md5:e06824b49d183a6bb196320451b8642e)
Theorem hlt_DIVIDES_TRANS : forall a b c :e omega, hl_num_divides a b = 1 /\ hl_num_divides b c = 1 -> hl_num_divides a c = 1.
Admitted.

// HOL Light: Library/prime.ml:31 / DIVIDES_ADD   (hash md5:019179ad5b9b645bf3e80089c0ef90a1)
Theorem hlt_DIVIDES_ADD : forall d a b :e omega, hl_num_divides d a = 1 /\ hl_num_divides d b = 1 -> hl_num_divides d (hl_add a b) = 1.
Admitted.

// HOL Light: Library/prime.ml:35 / DIVIDES_SUB_EQ   (hash md5:67ef744be821502170f19a79cf3551d5)
Theorem hlt_DIVIDES_SUB_EQ : forall d a b :e omega, hl_num_divides d (hl_sub a b) = 1 <-> hl_lt a b = 1 \/ hl_sym_3d3d omega a b (hl_num_mod d) = 1.
Admitted.

// HOL Light: Library/prime.ml:42 / DIVIDES_SUB   (hash md5:74331bedb0029b7e743be1296c5b4be3)
Theorem hlt_DIVIDES_SUB : forall d a b :e omega, hl_num_divides d a = 1 /\ hl_num_divides d b = 1 -> hl_num_divides d (hl_sub a b) = 1.
Admitted.

// HOL Light: Library/prime.ml:47 / DIVIDES_SUB_1   (hash md5:89be7e9e4cefad2ca2f2b6fac57c702d)
Theorem hlt_DIVIDES_SUB_1 : forall d n :e omega, hl_num_divides d (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 <-> n = hl_NUMERAL hl_zero \/ hl_sym_3d3d omega n (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod d) = 1.
Admitted.

// HOL Light: Library/prime.ml:51 / DIVIDES_LMUL   (hash md5:9797e767709243cfb1efebae9e6bde42)
Theorem hlt_DIVIDES_LMUL : forall d a x :e omega, hl_num_divides d a = 1 -> hl_num_divides d (hl_mul x a) = 1.
Admitted.

// HOL Light: Library/prime.ml:55 / DIVIDES_RMUL   (hash md5:850516d77a07d7bbce54d04bbc95ec5b)
Theorem hlt_DIVIDES_RMUL : forall d a x :e omega, hl_num_divides d a = 1 -> hl_num_divides d (hl_mul a x) = 1.
Admitted.

// HOL Light: Library/prime.ml:59 / DIVIDES_ADD_REVR   (hash md5:f8bf44b9415b47b19885fd801d7bf063)
Theorem hlt_DIVIDES_ADD_REVR : forall d a b :e omega, hl_num_divides d a = 1 /\ hl_num_divides d (hl_add a b) = 1 -> hl_num_divides d b = 1.
Admitted.

// HOL Light: Library/prime.ml:63 / DIVIDES_ADD_REVL   (hash md5:fbb21ab2900b100468cfb6df2e07d051)
Theorem hlt_DIVIDES_ADD_REVL : forall d a b :e omega, hl_num_divides d b = 1 /\ hl_num_divides d (hl_add a b) = 1 -> hl_num_divides d a = 1.
Admitted.

// HOL Light: Library/prime.ml:67 / DIVIDES_MUL_L   (hash md5:cf5f605cb318555964c2e66a30a6c70f)
Theorem hlt_DIVIDES_MUL_L : forall a b c :e omega, hl_num_divides a b = 1 -> hl_num_divides (hl_mul c a) (hl_mul c b) = 1.
Admitted.

// HOL Light: Library/prime.ml:71 / DIVIDES_MUL_R   (hash md5:c6569276fdfd37a43df3388ce46b24b4)
Theorem hlt_DIVIDES_MUL_R : forall a b c :e omega, hl_num_divides a b = 1 -> hl_num_divides (hl_mul a c) (hl_mul b c) = 1.
Admitted.

// HOL Light: Library/prime.ml:75 / DIVIDES_LMUL2   (hash md5:4c7cf5c49ea9cf3ef9683448e839f826)
Theorem hlt_DIVIDES_LMUL2 : forall d a x :e omega, hl_num_divides (hl_mul x d) a = 1 -> hl_num_divides d a = 1.
Admitted.

// HOL Light: Library/prime.ml:79 / DIVIDES_RMUL2   (hash md5:6214d204e7e4465f0276304257fd86a6)
Theorem hlt_DIVIDES_RMUL2 : forall d a x :e omega, hl_num_divides (hl_mul d x) a = 1 -> hl_num_divides d a = 1.
Admitted.

// HOL Light: Library/prime.ml:83 / DIVIDES_CMUL2   (hash md5:d24379e769fc9046aa78f7c872c1a995)
Theorem hlt_DIVIDES_CMUL2 : forall a b c :e omega, hl_num_divides (hl_mul c a) (hl_mul c b) = 1 /\ ~ c = hl_NUMERAL hl_zero -> hl_num_divides a b = 1.
Admitted.

// HOL Light: Library/prime.ml:87 / DIVIDES_LMUL2_EQ   (hash md5:cd3daf090fc18b72ff9e9896e6ebaf5f)
Theorem hlt_DIVIDES_LMUL2_EQ : forall a b c :e omega, ~ c = hl_NUMERAL hl_zero -> (hl_num_divides (hl_mul c a) (hl_mul c b) = 1 <-> hl_num_divides a b = 1).
Admitted.

// HOL Light: Library/prime.ml:91 / DIVIDES_RMUL2_EQ   (hash md5:3ac9f5427a5ea4d2c85c0943742deec1)
Theorem hlt_DIVIDES_RMUL2_EQ : forall a b c :e omega, ~ c = hl_NUMERAL hl_zero -> (hl_num_divides (hl_mul a c) (hl_mul b c) = 1 <-> hl_num_divides a b = 1).
Admitted.

// HOL Light: Library/prime.ml:95 / DIVIDES_EQ_ZERO   (hash md5:ac6fa71ac616837610c5f1ae6bf72c54)
Theorem hlt_DIVIDES_EQ_ZERO : forall p n :e omega, hl_lt n p = 1 -> (hl_num_divides p n = 1 <-> n = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/prime.ml:99 / DIVIDES_CASES   (hash md5:1b0ddf155f447590d988309bd33a8c4c)
Theorem hlt_DIVIDES_CASES : forall m n :e omega, hl_num_divides n m = 1 -> m = hl_NUMERAL hl_zero \/ (m = n \/ hl_le (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) m = 1).
Admitted.

// HOL Light: Library/prime.ml:105 / DIVIDES_DIV_NOT   (hash md5:d846147696f555a38695239aa2aa7111)
Theorem hlt_DIVIDES_DIV_NOT : forall n x q r :e omega, x = hl_add (hl_mul q n) r /\ (hl_lt (hl_NUMERAL hl_zero) r = 1 /\ hl_lt r n = 1) -> ~ hl_num_divides n x = 1.
Admitted.

// HOL Light: Library/prime.ml:111 / DIVIDES_MUL2   (hash md5:48e34326c3d4b2ccccebba99d2d1a01e)
Theorem hlt_DIVIDES_MUL2 : forall a b c d :e omega, hl_num_divides a b = 1 /\ hl_num_divides c d = 1 -> hl_num_divides (hl_mul a c) (hl_mul b d) = 1.
Admitted.

// HOL Light: Library/prime.ml:115 / DIVIDES_EXP   (hash md5:4c55ce634693f6d793dce60ab06392e0)
Theorem hlt_DIVIDES_EXP : forall x y n :e omega, hl_num_divides x y = 1 -> hl_num_divides (hl_EXP x n) (hl_EXP y n) = 1.
Admitted.

// HOL Light: Library/prime.ml:121 / DIVIDES_EXP2   (hash md5:afd30426fea9f24d4f47dac80493e11e)
Theorem hlt_DIVIDES_EXP2 : forall n x y :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_num_divides (hl_EXP x n) y = 1 -> hl_num_divides x y = 1.
Admitted.

// HOL Light: Library/prime.ml:125 / DIVIDES_EXP_LE_IMP   (hash md5:1375b6dbc255aefd0827f4e4d304ef9f)
Theorem hlt_DIVIDES_EXP_LE_IMP : forall p m n :e omega, hl_le m n = 1 -> hl_num_divides (hl_EXP p m) (hl_EXP p n) = 1.
Admitted.

// HOL Light: Library/prime.ml:129 / DIVIDES_EXP_LE   (hash md5:f1cf4dec3f0a3129c2c1b23ab5ead802)
Theorem hlt_DIVIDES_EXP_LE : forall p m n :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) p = 1 -> (hl_num_divides (hl_EXP p m) (hl_EXP p n) = 1 <-> hl_le m n = 1).
Admitted.

// HOL Light: Library/prime.ml:136 / DIVIDES_TRIVIAL_UPPERBOUND   (hash md5:f3376d124f445f01ba138976fd788e26)
Theorem hlt_DIVIDES_TRIVIAL_UPPERBOUND : forall p n :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) p = 1 -> ~ hl_num_divides (hl_EXP p n) n = 1.
Admitted.

// HOL Light: Library/prime.ml:144 / DIVIDES_FACT   (hash md5:5ad5481841e97c57902b3e1a2f7d8349)
Theorem hlt_DIVIDES_FACT : forall n p :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) p = 1 /\ hl_le p n = 1 -> hl_num_divides p (hl_FACT n) = 1.
Admitted.

// HOL Light: Library/prime.ml:149 / DIVIDES_2   (hash md5:09aa57c3239361e91dcb2485ef231c05)
Theorem hlt_DIVIDES_2 : forall n :e omega, hl_num_divides (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 <-> hl_EVEN n = 1.
Admitted.

// HOL Light: Library/prime.ml:153 / DIVIDES_REXP_SUC   (hash md5:f1577f97c8b9c457d64bf4d09eaaea98)
Theorem hlt_DIVIDES_REXP_SUC : forall x y n :e omega, hl_num_divides x y = 1 -> hl_num_divides x (hl_EXP y (hl_SUC n)) = 1.
Admitted.

// HOL Light: Library/prime.ml:157 / DIVIDES_REXP   (hash md5:148f0cd1296436db36149692bdb372f4)
Theorem hlt_DIVIDES_REXP : forall x y n :e omega, hl_num_divides x y = 1 /\ ~ n = hl_NUMERAL hl_zero -> hl_num_divides x (hl_EXP y n) = 1.
Admitted.

// HOL Light: Library/prime.ml:161 / FINITE_DIVISORS   (hash md5:d7b24579e8dc6637e4ad693960ec42df)
Theorem hlt_FINITE_DIVISORS : forall n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_FINITE omega (hl_GSPEC omega (fun GEN_PVAR_724 :e omega => if exists d :e omega, hl_SETSPEC omega GEN_PVAR_724 (hl_num_divides d n) d = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/prime.ml:167 / FINITE_SPECIAL_DIVISORS   (hash md5:a30c91028849b689bd17b80e92b88c70)
Theorem hlt_FINITE_SPECIAL_DIVISORS : forall P :e 2 :^: omega, forall n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_FINITE omega (hl_GSPEC omega (fun GEN_PVAR_726 :e omega => if exists d :e omega, hl_SETSPEC omega GEN_PVAR_726 (if P d = 1 /\ hl_num_divides d n = 1 then 1 else 0) d = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/prime.ml:173 / DIVISORS_EQ   (hash md5:e226d71d82c751c12130a8f587d997bd)
Theorem hlt_DIVISORS_EQ : forall m n :e omega, m = n <-> forall d :e omega, hl_num_divides d m = 1 <-> hl_num_divides d n = 1.
Admitted.

// HOL Light: Library/prime.ml:178 / MULTIPLES_EQ   (hash md5:8dfa0016dc11c9cff57dbc1108baba0f)
Theorem hlt_MULTIPLES_EQ : forall m n :e omega, m = n <-> forall d :e omega, hl_num_divides m d = 1 <-> hl_num_divides n d = 1.
Admitted.

// HOL Light: Library/prime.ml:183 / DIVIDES_NSUM   (hash md5:d8420826e780e510a9b105e8f8f18ce2)
Theorem hlt_DIVIDES_NSUM : forall A:set, A <> Empty -> forall n :e omega, forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_num_divides n (f i) = 1) -> hl_num_divides n (hl_nsum A s f) = 1.
Admitted.

// HOL Light: Library/prime.ml:194 / DIVIDES_GCD   (hash md5:c807140cc82329f44f25cb875518de0c)
Theorem hlt_DIVIDES_GCD : forall a b d :e omega, hl_num_divides d (hl_num_gcd (hl_pair omega omega a b)) = 1 <-> hl_num_divides d a = 1 /\ hl_num_divides d b = 1.
Admitted.

// HOL Light: Library/prime.ml:198 / GCD_0   (hash md5:1f66f890fe9bc7a9c85a1219224cc867)
Theorem hlt_GCD_0 : (forall a :e omega, hl_num_gcd (hl_pair omega omega (hl_NUMERAL hl_zero) a) = a) /\ forall a :e omega, hl_num_gcd (hl_pair omega omega a (hl_NUMERAL hl_zero)) = a.
Admitted.

// HOL Light: Library/prime.ml:202 / GCD_ZERO   (hash md5:620af2eefcda3195e2161c2ead4ed5e3)
Theorem hlt_GCD_ZERO : forall a b :e omega, hl_num_gcd (hl_pair omega omega a b) = hl_NUMERAL hl_zero <-> a = hl_NUMERAL hl_zero /\ b = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:206 / GCD_REFL   (hash md5:198c73a931247ea2d1c374856934afe4)
Theorem hlt_GCD_REFL : forall a :e omega, hl_num_gcd (hl_pair omega omega a a) = a.
Admitted.

// HOL Light: Library/prime.ml:210 / GCD_1   (hash md5:01d31b77f61db2fd87da1ff2e68a29d8)
Theorem hlt_GCD_1 : (forall a :e omega, hl_num_gcd (hl_pair omega omega (hl_NUMERAL (hl_BIT1 hl_zero)) a) = hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall a :e omega, hl_num_gcd (hl_pair omega omega a (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:214 / GCD_MULTIPLE   (hash md5:61bb5467e67527fffcc054843820db24)
Theorem hlt_GCD_MULTIPLE : forall a b :e omega, hl_num_gcd (hl_pair omega omega b (hl_mul a b)) = b.
Admitted.

// HOL Light: Library/prime.ml:218 / GCD_ADD   (hash md5:5b7e0bf63dc0b3e385b20a827481ee3c)
Theorem hlt_GCD_ADD : (forall a b :e omega, hl_num_gcd (hl_pair omega omega (hl_add a b) b) = hl_num_gcd (hl_pair omega omega a b)) /\ ((forall a b :e omega, hl_num_gcd (hl_pair omega omega (hl_add b a) b) = hl_num_gcd (hl_pair omega omega a b)) /\ ((forall a b :e omega, hl_num_gcd (hl_pair omega omega a (hl_add a b)) = hl_num_gcd (hl_pair omega omega a b)) /\ forall a b :e omega, hl_num_gcd (hl_pair omega omega a (hl_add b a)) = hl_num_gcd (hl_pair omega omega a b))).
Admitted.

// HOL Light: Library/prime.ml:225 / GCD_SUB   (hash md5:e0b37191419b42ecbca94a2b49c0a2b8)
Theorem hlt_GCD_SUB : (forall a b :e omega, hl_le b a = 1 -> hl_num_gcd (hl_pair omega omega (hl_sub a b) b) = hl_num_gcd (hl_pair omega omega a b)) /\ forall a b :e omega, hl_le a b = 1 -> hl_num_gcd (hl_pair omega omega a (hl_sub b a)) = hl_num_gcd (hl_pair omega omega a b).
Admitted.

// HOL Light: Library/prime.ml:230 / DIVIDES_GCD_LEFT   (hash md5:3395bbb4a335b1796ad9feb4bb7e06b1)
Theorem hlt_DIVIDES_GCD_LEFT : forall m n :e omega, hl_num_divides m n = 1 <-> hl_num_gcd (hl_pair omega omega m n) = m.
Admitted.

// HOL Light: Library/prime.ml:234 / DIVIDES_GCD_RIGHT   (hash md5:c8e1d19c82f24e5c6cf81f3fb05f2b77)
Theorem hlt_DIVIDES_GCD_RIGHT : forall m n :e omega, hl_num_divides n m = 1 <-> hl_num_gcd (hl_pair omega omega m n) = n.
Admitted.

// HOL Light: Library/prime.ml:238 / GCD_COPRIME_LMUL   (hash md5:2841ac447931b64b58db668d872dfa33)
Theorem hlt_GCD_COPRIME_LMUL : forall a b c :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> hl_num_gcd (hl_pair omega omega (hl_mul a b) c) = hl_mul (hl_num_gcd (hl_pair omega omega a c)) (hl_num_gcd (hl_pair omega omega b c)).
Admitted.

// HOL Light: Library/prime.ml:242 / GCD_COPRIME_RMUL   (hash md5:c944b29e880ce5d7fe1486cc3ce91c29)
Theorem hlt_GCD_COPRIME_RMUL : forall a b c :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> hl_num_gcd (hl_pair omega omega c (hl_mul a b)) = hl_mul (hl_num_gcd (hl_pair omega omega c a)) (hl_num_gcd (hl_pair omega omega c b)).
Admitted.

// HOL Light: Library/prime.ml:246 / DIVIDES_LMUL_GCD   (hash md5:db356a8d4247ad8d0dd9c5cd2b830f6e)
Theorem hlt_DIVIDES_LMUL_GCD : (forall d a b :e omega, hl_num_divides d (hl_mul (hl_num_gcd (hl_pair omega omega d a)) b) = 1 <-> hl_num_divides d (hl_mul a b) = 1) /\ forall d a b :e omega, hl_num_divides d (hl_mul (hl_num_gcd (hl_pair omega omega a d)) b) = 1 <-> hl_num_divides d (hl_mul a b) = 1.
Admitted.

// HOL Light: Library/prime.ml:251 / DIVIDES_RMUL_GCD   (hash md5:9b2f013bc74d8d463870d83aa45dee23)
Theorem hlt_DIVIDES_RMUL_GCD : (forall d a b :e omega, hl_num_divides d (hl_mul a (hl_num_gcd (hl_pair omega omega d b))) = 1 <-> hl_num_divides d (hl_mul a b) = 1) /\ forall d a b :e omega, hl_num_divides d (hl_mul a (hl_num_gcd (hl_pair omega omega b d))) = 1 <-> hl_num_divides d (hl_mul a b) = 1.
Admitted.

// HOL Light: Library/prime.ml:256 / GCD_MUL_COPRIME   (hash md5:ceefad7ea2a3bc658cdf3765a39f441f)
Theorem hlt_GCD_MUL_COPRIME : (forall a b c :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> hl_num_gcd (hl_pair omega omega a (hl_mul b c)) = hl_num_gcd (hl_pair omega omega a c)) /\ ((forall a b c :e omega, hl_num_coprime (hl_pair omega omega a c) = 1 -> hl_num_gcd (hl_pair omega omega a (hl_mul b c)) = hl_num_gcd (hl_pair omega omega a b)) /\ ((forall a b c :e omega, hl_num_coprime (hl_pair omega omega b c) = 1 -> hl_num_gcd (hl_pair omega omega a (hl_mul b c)) = hl_mul (hl_num_gcd (hl_pair omega omega a b)) (hl_num_gcd (hl_pair omega omega a c))) /\ ((forall a b c :e omega, hl_num_coprime (hl_pair omega omega a c) = 1 -> hl_num_gcd (hl_pair omega omega (hl_mul a b) c) = hl_num_gcd (hl_pair omega omega b c)) /\ ((forall a b c :e omega, hl_num_coprime (hl_pair omega omega b c) = 1 -> hl_num_gcd (hl_pair omega omega (hl_mul a b) c) = hl_num_gcd (hl_pair omega omega a c)) /\ forall a b c :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> hl_num_gcd (hl_pair omega omega (hl_mul a b) c) = hl_mul (hl_num_gcd (hl_pair omega omega a c)) (hl_num_gcd (hl_pair omega omega b c)))))).
Admitted.

// HOL Light: Library/prime.ml:265 / GCD_SYM   (hash md5:6e985ef36749acf67f9dcf7e7e7808c8)
Theorem hlt_GCD_SYM : forall a b :e omega, hl_num_gcd (hl_pair omega omega a b) = hl_num_gcd (hl_pair omega omega b a).
Admitted.

// HOL Light: Library/prime.ml:269 / GCD_ASSOC   (hash md5:c1b3d6c464b29e1ce4593a8813d44e4b)
Theorem hlt_GCD_ASSOC : forall a b c :e omega, hl_num_gcd (hl_pair omega omega a (hl_num_gcd (hl_pair omega omega b c))) = hl_num_gcd (hl_pair omega omega (hl_num_gcd (hl_pair omega omega a b)) c).
Admitted.

// HOL Light: Library/prime.ml:273 / GCD_LMUL   (hash md5:266ab3fde9acef07f9758379206af65f)
Theorem hlt_GCD_LMUL : forall a b c :e omega, hl_num_gcd (hl_pair omega omega (hl_mul c a) (hl_mul c b)) = hl_mul c (hl_num_gcd (hl_pair omega omega a b)).
Admitted.

// HOL Light: Library/prime.ml:277 / GCD_RMUL   (hash md5:d20e9cf9d25238dce09a644a4e92b605)
Theorem hlt_GCD_RMUL : forall a b c :e omega, hl_num_gcd (hl_pair omega omega (hl_mul a c) (hl_mul b c)) = hl_mul c (hl_num_gcd (hl_pair omega omega a b)).
Admitted.

// HOL Light: Library/prime.ml:281 / GCD_BEZOUT_SUM   (hash md5:e911db40f38e3d3338636ea8459c7f4b)
Theorem hlt_GCD_BEZOUT_SUM : forall a b d x y :e omega, hl_add (hl_mul a x) (hl_mul b y) = d -> hl_num_divides (hl_num_gcd (hl_pair omega omega a b)) d = 1.
Admitted.

// HOL Light: Library/prime.ml:285 / GCD_COPRIME_DIVIDES_LMUL   (hash md5:53b4d459a111a56443f9f27c0b167a4f)
Theorem hlt_GCD_COPRIME_DIVIDES_LMUL : forall a b c :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ hl_num_divides a c = 1 -> hl_num_gcd (hl_pair omega omega (hl_mul a b) c) = hl_mul a (hl_num_gcd (hl_pair omega omega b c)).
Admitted.

// HOL Light: Library/prime.ml:289 / GCD_COPRIME_DIVIDES_RMUL   (hash md5:3affea2737b0fb8fa2306afb1a2279d3)
Theorem hlt_GCD_COPRIME_DIVIDES_RMUL : forall a b c :e omega, hl_num_coprime (hl_pair omega omega b c) = 1 /\ hl_num_divides b a = 1 -> hl_num_gcd (hl_pair omega omega a (hl_mul b c)) = hl_mul b (hl_num_gcd (hl_pair omega omega a c)).
Admitted.

// HOL Light: Library/prime.ml:293 / GCD_UNIQUE   (hash md5:2d287cd665f3f38175b9f66772e3c2e6)
Theorem hlt_GCD_UNIQUE : forall d a b :e omega, hl_num_divides d a = 1 /\ hl_num_divides d b = 1 /\ (forall e1 :e omega, hl_num_divides e1 a = 1 /\ hl_num_divides e1 b = 1 -> hl_num_divides e1 d = 1) <-> d = hl_num_gcd (hl_pair omega omega a b).
Admitted.

// HOL Light: Library/prime.ml:302 / GCD_EQ   (hash md5:8cfc3381db6821a7abbdaea6fc74e124)
Theorem hlt_GCD_EQ : forall x y u v :e omega, (forall d :e omega, hl_num_divides d x = 1 /\ hl_num_divides d y = 1 <-> hl_num_divides d u = 1 /\ hl_num_divides d v = 1) -> hl_num_gcd (hl_pair omega omega x y) = hl_num_gcd (hl_pair omega omega u v).
Admitted.

// HOL Light: Library/prime.ml:307 / BEZOUT_GCD_STRONG   (hash md5:fb852b5bf4c80123c4b7481927183f15)
Theorem hlt_BEZOUT_GCD_STRONG : forall a b :e omega, ~ a = hl_NUMERAL hl_zero -> exists x y :e omega, hl_mul a x = hl_add (hl_mul b y) (hl_num_gcd (hl_pair omega omega a b)).
Admitted.

// HOL Light: Library/prime.ml:325 / BEZOUT_ADD_STRONG   (hash md5:c3c0549a7f524300fe4d5d1c1ecb84d1)
Theorem hlt_BEZOUT_ADD_STRONG : forall a b :e omega, ~ a = hl_NUMERAL hl_zero -> exists d x y :e omega, hl_num_divides d a = 1 /\ (hl_num_divides d b = 1 /\ hl_mul a x = hl_add (hl_mul b y) d).
Admitted.

// HOL Light: Library/prime.ml:330 / BEZOUT_GCD   (hash md5:33965d7d8723028029396146d621bd6d)
Theorem hlt_BEZOUT_GCD : forall a b :e omega, exists x y :e omega, hl_sub (hl_mul a x) (hl_mul b y) = hl_num_gcd (hl_pair omega omega a b) \/ hl_sub (hl_mul b x) (hl_mul a y) = hl_num_gcd (hl_pair omega omega a b).
Admitted.

// HOL Light: Library/prime.ml:340 / BEZOUT_ADD   (hash md5:947027bfc23f30677bb92dd615cdd8ad)
Theorem hlt_BEZOUT_ADD : forall a b :e omega, exists d x y :e omega, hl_num_divides d a = 1 /\ hl_num_divides d b = 1 /\ (hl_mul a x = hl_add (hl_mul b y) d \/ hl_mul b x = hl_add (hl_mul a y) d).
Admitted.

// HOL Light: Library/prime.ml:347 / BEZOUT   (hash md5:d37f8c6e08b23dedd3967e9944411a41)
Theorem hlt_BEZOUT : forall a b :e omega, exists d x y :e omega, hl_num_divides d a = 1 /\ hl_num_divides d b = 1 /\ (hl_sub (hl_mul a x) (hl_mul b y) = d \/ hl_sub (hl_mul b x) (hl_mul a y) = d).
Admitted.

// HOL Light: Library/prime.ml:352 / GCD_BEZOUT   (hash md5:219a2d306b18f30646f4b24b6dea399e)
Theorem hlt_GCD_BEZOUT : forall a b d :e omega, (exists x y :e omega, hl_sub (hl_mul a x) (hl_mul b y) = d \/ hl_sub (hl_mul b x) (hl_mul a y) = d) <-> hl_num_divides (hl_num_gcd (hl_pair omega omega a b)) d = 1.
Admitted.

// HOL Light: Library/prime.ml:365 / GCD_LE   (hash md5:a3c3f01310ddb33ee3b2625084be2618)
Theorem hlt_GCD_LE : (forall m n :e omega, hl_le (hl_num_gcd (hl_pair omega omega m n)) m = 1 <-> m = hl_NUMERAL hl_zero -> n = hl_NUMERAL hl_zero) /\ forall m n :e omega, hl_le (hl_num_gcd (hl_pair omega omega m n)) n = 1 <-> n = hl_NUMERAL hl_zero -> m = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:374 / GCD_LE_MIN_EQ   (hash md5:90e920e15e43429465f7d8e8b649e6c9)
Theorem hlt_GCD_LE_MIN_EQ : forall m n :e omega, hl_le (hl_num_gcd (hl_pair omega omega m n)) (hl_MIN m n) = 1 <-> (m = hl_NUMERAL hl_zero <-> n = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/prime.ml:384 / GCD_LE_MIN   (hash md5:82f11bd5b4415bfaac5eae4b9e3774b9)
Theorem hlt_GCD_LE_MIN : forall m n :e omega, (m = hl_NUMERAL hl_zero <-> n = hl_NUMERAL hl_zero) -> hl_le (hl_num_gcd (hl_pair omega omega m n)) (hl_MIN m n) = 1.
Admitted.

// HOL Light: Library/prime.ml:388 / GCD_LE_MAX   (hash md5:1c776adbb6e130c576543c678d4ceea7)
Theorem hlt_GCD_LE_MAX : forall m n :e omega, hl_le (hl_num_gcd (hl_pair omega omega m n)) (hl_MAX m n) = 1.
Admitted.

// HOL Light: Library/prime.ml:402 / COPRIME   (hash md5:3132c70ab357e89df2d3f4ea8340d1ec)
Theorem hlt_COPRIME : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 <-> forall d :e omega, hl_num_divides d a = 1 /\ hl_num_divides d b = 1 <-> d = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:410 / COPRIME_GCD   (hash md5:bc8550b9fdda5dd1c4ae5d3e17c76283)
Theorem hlt_COPRIME_GCD : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 <-> hl_num_gcd (hl_pair omega omega a b) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:414 / GCD_ONE   (hash md5:e97f18e329235c05345b9449d83fc5fa)
Theorem hlt_GCD_ONE : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> hl_num_gcd (hl_pair omega omega a b) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:418 / COPRIME_SYM   (hash md5:d6c02981478c7201187228ea5a76f5a9)
Theorem hlt_COPRIME_SYM : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 <-> hl_num_coprime (hl_pair omega omega b a) = 1.
Admitted.

// HOL Light: Library/prime.ml:422 / COPRIME_BEZOUT   (hash md5:9f71071251107832a9dc47350a4a4a5c)
Theorem hlt_COPRIME_BEZOUT : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 <-> exists x y :e omega, hl_sub (hl_mul a x) (hl_mul b y) = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_sub (hl_mul b x) (hl_mul a y) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:426 / COPRIME_DIVPROD   (hash md5:390559e6ae10d0fa154b52d4f0e4a173)
Theorem hlt_COPRIME_DIVPROD : forall d a b :e omega, hl_num_divides d (hl_mul a b) = 1 /\ hl_num_coprime (hl_pair omega omega d a) = 1 -> hl_num_divides d b = 1.
Admitted.

// HOL Light: Library/prime.ml:430 / COPRIME_1   (hash md5:f8dd5683481b462fcb65f5dd476a09b6)
Theorem hlt_COPRIME_1 : (forall a :e omega, hl_num_coprime (hl_pair omega omega a (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) /\ forall a :e omega, hl_num_coprime (hl_pair omega omega (hl_NUMERAL (hl_BIT1 hl_zero)) a) = 1.
Admitted.

// HOL Light: Library/prime.ml:434 / GCD_COPRIME   (hash md5:67ad95ed63085b90d9ec81d8a025d654)
Theorem hlt_GCD_COPRIME : forall a b a' b' :e omega, ~ hl_num_gcd (hl_pair omega omega a b) = hl_NUMERAL hl_zero /\ (a = hl_mul a' (hl_num_gcd (hl_pair omega omega a b)) /\ b = hl_mul b' (hl_num_gcd (hl_pair omega omega a b))) -> hl_num_coprime (hl_pair omega omega a' b') = 1.
Admitted.

// HOL Light: Library/prime.ml:439 / GCD_COPRIME_EXISTS   (hash md5:01f02f1ddb116d0a9e91fe70d62428f3)
Theorem hlt_GCD_COPRIME_EXISTS : forall a b :e omega, exists a' b' :e omega, a = hl_mul a' (hl_num_gcd (hl_pair omega omega a b)) /\ (b = hl_mul b' (hl_num_gcd (hl_pair omega omega a b)) /\ hl_num_coprime (hl_pair omega omega a' b') = 1).
Admitted.

// HOL Light: Library/prime.ml:451 / COPRIME_DIVPROD_IFF   (hash md5:97a0d2bb2b5df3bdebe7aeb4618e6afd)
Theorem hlt_COPRIME_DIVPROD_IFF : forall d a :e omega, ~ d = hl_NUMERAL hl_zero -> ((forall b :e omega, hl_num_divides d (hl_mul a b) = 1 -> hl_num_divides d b = 1) <-> hl_num_coprime (hl_pair omega omega d a) = 1).
Admitted.

// HOL Light: Library/prime.ml:461 / CONG_MULT_LCANCEL_IFF   (hash md5:b25325fb44117486cd393a396bd7123b)
Theorem hlt_CONG_MULT_LCANCEL_IFF : forall a n :e omega, ~ n = hl_NUMERAL hl_zero -> ((forall x y :e omega, hl_sym_3d3d omega (hl_mul a x) (hl_mul a y) (hl_num_mod n) = 1 -> hl_sym_3d3d omega x y (hl_num_mod n) = 1) <-> hl_num_coprime (hl_pair omega omega a n) = 1).
Admitted.

// HOL Light: Library/prime.ml:471 / CONG_MULT_RCANCEL_IFF   (hash md5:319fa1bc41e6d2a96bcf9f5cc445dd7f)
Theorem hlt_CONG_MULT_RCANCEL_IFF : forall a n :e omega, ~ n = hl_NUMERAL hl_zero -> ((forall x y :e omega, hl_sym_3d3d omega (hl_mul x a) (hl_mul y a) (hl_num_mod n) = 1 -> hl_sym_3d3d omega x y (hl_num_mod n) = 1) <-> hl_num_coprime (hl_pair omega omega a n) = 1).
Admitted.

// HOL Light: Library/prime.ml:477 / COPRIME_0   (hash md5:0dee27553c312b72927554337a133880)
Theorem hlt_COPRIME_0 : (forall d :e omega, hl_num_coprime (hl_pair omega omega d (hl_NUMERAL hl_zero)) = 1 <-> d = hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall d :e omega, hl_num_coprime (hl_pair omega omega (hl_NUMERAL hl_zero) d) = 1 <-> d = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:482 / COPRIME_MUL   (hash md5:ebac7d34c845d497b4f3c4df5f1a403f)
Theorem hlt_COPRIME_MUL : forall d a b :e omega, hl_num_coprime (hl_pair omega omega d a) = 1 /\ hl_num_coprime (hl_pair omega omega d b) = 1 -> hl_num_coprime (hl_pair omega omega d (hl_mul a b)) = 1.
Admitted.

// HOL Light: Library/prime.ml:486 / COPRIME_LMUL2   (hash md5:dcead4a5aed263f0566bc7105e585611)
Theorem hlt_COPRIME_LMUL2 : forall d a b :e omega, hl_num_coprime (hl_pair omega omega d (hl_mul a b)) = 1 -> hl_num_coprime (hl_pair omega omega d b) = 1.
Admitted.

// HOL Light: Library/prime.ml:490 / COPRIME_RMUL2   (hash md5:3070a22b149882eb1244ef2ddfe353a5)
Theorem hlt_COPRIME_RMUL2 : forall d a b :e omega, hl_num_coprime (hl_pair omega omega d (hl_mul a b)) = 1 -> hl_num_coprime (hl_pair omega omega d a) = 1.
Admitted.

// HOL Light: Library/prime.ml:494 / COPRIME_LMUL   (hash md5:71287d8a8afb02ceb8823497106a4269)
Theorem hlt_COPRIME_LMUL : forall d a b :e omega, hl_num_coprime (hl_pair omega omega (hl_mul a b) d) = 1 <-> hl_num_coprime (hl_pair omega omega a d) = 1 /\ hl_num_coprime (hl_pair omega omega b d) = 1.
Admitted.

// HOL Light: Library/prime.ml:498 / COPRIME_RMUL   (hash md5:f3a59b6128611922d9597081adf46d28)
Theorem hlt_COPRIME_RMUL : forall d a b :e omega, hl_num_coprime (hl_pair omega omega d (hl_mul a b)) = 1 <-> hl_num_coprime (hl_pair omega omega d a) = 1 /\ hl_num_coprime (hl_pair omega omega d b) = 1.
Admitted.

// HOL Light: Library/prime.ml:502 / COPRIME_EXP   (hash md5:e0ef90de2f4b9a9a1e991d3d03cf61d2)
Theorem hlt_COPRIME_EXP : forall n a d :e omega, hl_num_coprime (hl_pair omega omega d a) = 1 -> hl_num_coprime (hl_pair omega omega d (hl_EXP a n)) = 1.
Admitted.

// HOL Light: Library/prime.ml:509 / COPRIME_EXP_IMP   (hash md5:a5bfe6a76e2443f34451df9c0798da54)
Theorem hlt_COPRIME_EXP_IMP : forall n a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> hl_num_coprime (hl_pair omega omega (hl_EXP a n) (hl_EXP b n)) = 1.
Admitted.

// HOL Light: Library/prime.ml:516 / COPRIME_REXP   (hash md5:7e706552f6b7c82437e4f26c0257b4b7)
Theorem hlt_COPRIME_REXP : forall m n k :e omega, hl_num_coprime (hl_pair omega omega m (hl_EXP n k)) = 1 <-> hl_num_coprime (hl_pair omega omega m n) = 1 \/ k = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:523 / COPRIME_LEXP   (hash md5:20c32bdd4e9efc72ff2b08ed72769d39)
Theorem hlt_COPRIME_LEXP : forall m n k :e omega, hl_num_coprime (hl_pair omega omega (hl_EXP m k) n) = 1 <-> hl_num_coprime (hl_pair omega omega m n) = 1 \/ k = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:527 / COPRIME_EXP2   (hash md5:b2c93e1581f4a0c4b21fd07f7a063427)
Theorem hlt_COPRIME_EXP2 : forall m n k :e omega, hl_num_coprime (hl_pair omega omega (hl_EXP m k) (hl_EXP n k)) = 1 <-> hl_num_coprime (hl_pair omega omega m n) = 1 \/ k = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:531 / COPRIME_EXP2_SUC   (hash md5:c7c6987b60931368261cdde133f6ca69)
Theorem hlt_COPRIME_EXP2_SUC : forall n a b :e omega, hl_num_coprime (hl_pair omega omega (hl_EXP a (hl_SUC n)) (hl_EXP b (hl_SUC n))) = 1 <-> hl_num_coprime (hl_pair omega omega a b) = 1.
Admitted.

// HOL Light: Library/prime.ml:535 / COPRIME_NPRODUCT_EQ   (hash md5:7ad3b68de234baedefc7856ca45e2772)
Theorem hlt_COPRIME_NPRODUCT_EQ : forall A:set, A <> Empty -> (forall f :e omega :^: A, forall a :e omega, forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_num_coprime (hl_pair omega omega a (hl_nproduct A s f)) = 1 <-> forall i :e A, hl_IN A i s = 1 -> hl_num_coprime (hl_pair omega omega a (f i)) = 1)) /\ forall f :e omega :^: A, forall b :e omega, forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_num_coprime (hl_pair omega omega (hl_nproduct A s f) b) = 1 <-> forall i :e A, hl_IN A i s = 1 -> hl_num_coprime (hl_pair omega omega (f i) b) = 1).
Admitted.

// HOL Light: Library/prime.ml:548 / COPRIME_NPRODUCT   (hash md5:86b1d17affd1113b6d2fbe6f3dc97c23)
Theorem hlt_COPRIME_NPRODUCT : forall A:set, A <> Empty -> forall a :e omega :^: A, forall s :e 2 :^: A, forall n :e omega, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_num_coprime (hl_pair omega omega n (a x)) = 1) -> hl_num_coprime (hl_pair omega omega n (hl_nproduct A s a)) = 1.
Admitted.

// HOL Light: Library/prime.ml:553 / COPRIME_DIVISORS   (hash md5:8adfd5aabae6f3cc3244fb7600a0574b)
Theorem hlt_COPRIME_DIVISORS : forall a b d e1 :e omega, hl_num_divides d a = 1 /\ (hl_num_divides e1 b = 1 /\ hl_num_coprime (hl_pair omega omega a b) = 1) -> hl_num_coprime (hl_pair omega omega d e1) = 1.
Admitted.

// HOL Light: Library/prime.ml:557 / COPRIME_REFL   (hash md5:d474cfecb6adf8251d9da12b27eaeea8)
Theorem hlt_COPRIME_REFL : forall n :e omega, hl_num_coprime (hl_pair omega omega n n) = 1 <-> n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:561 / COPRIME_PLUS1   (hash md5:68efc8b70155be78a8e64214dbbaedea)
Theorem hlt_COPRIME_PLUS1 : forall n :e omega, hl_num_coprime (hl_pair omega omega (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) n) = 1.
Admitted.

// HOL Light: Library/prime.ml:565 / COPRIME_MINUS1   (hash md5:da0c6da2d7baca68aa590b7c893b7077)
Theorem hlt_COPRIME_MINUS1 : forall n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_num_coprime (hl_pair omega omega (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) n) = 1.
Admitted.

// HOL Light: Library/prime.ml:571 / GCD_EXP   (hash md5:39509a2a96f4c2eda1627097b70ee707)
Theorem hlt_GCD_EXP : forall n a b :e omega, hl_num_gcd (hl_pair omega omega (hl_EXP a n) (hl_EXP b n)) = hl_EXP (hl_num_gcd (hl_pair omega omega a b)) n.
Admitted.

// HOL Light: Library/prime.ml:583 / DIVIDES_EXP2_REV   (hash md5:57d6f53af3654db3c522393b8e9d3bd6)
Theorem hlt_DIVIDES_EXP2_REV : forall n a b :e omega, hl_num_divides (hl_EXP a n) (hl_EXP b n) = 1 /\ ~ n = hl_NUMERAL hl_zero -> hl_num_divides a b = 1.
Admitted.

// HOL Light: Library/prime.ml:587 / DIVIDES_EXP2_EQ   (hash md5:2452b528d5726344ea8764b63a359f7b)
Theorem hlt_DIVIDES_EXP2_EQ : forall n a b :e omega, ~ n = hl_NUMERAL hl_zero -> (hl_num_divides (hl_EXP a n) (hl_EXP b n) = 1 <-> hl_num_divides a b = 1).
Admitted.

// HOL Light: Library/prime.ml:591 / DIVIDES_MUL   (hash md5:b45c9425f44d4bc530b2140b0fab5170)
Theorem hlt_DIVIDES_MUL : forall m n r :e omega, hl_num_divides m r = 1 /\ (hl_num_divides n r = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) -> hl_num_divides (hl_mul m n) r = 1.
Admitted.

// HOL Light: Library/prime.ml:595 / DIVISION_DECOMP   (hash md5:fc8c11e5cb173e558e98960ea334f4b9)
Theorem hlt_DIVISION_DECOMP : forall a b c :e omega, hl_num_divides a (hl_mul b c) = 1 -> exists b' c' :e omega, a = hl_mul b' c' /\ (hl_num_divides b' b = 1 /\ hl_num_divides c' c = 1).
Admitted.

// HOL Light: Library/prime.ml:612 / PRIME_0   (hash md5:af0ee76c752d29b8f79bcd17e9db3944)
Theorem hlt_PRIME_0 : ~ hl_prime (hl_NUMERAL hl_zero) = 1.
Admitted.

// HOL Light: Library/prime.ml:618 / PRIME_1   (hash md5:a000fe0a337451856e73bb7300248c04)
Theorem hlt_PRIME_1 : ~ hl_prime (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: Library/prime.ml:622 / PRIME_ALT   (hash md5:2457808b0c34f9efb8f16b3256e6f3a3)
Theorem hlt_PRIME_ALT : forall p :e omega, hl_prime p = 1 <-> ~ p = hl_NUMERAL hl_zero /\ (~ p = hl_NUMERAL (hl_BIT1 hl_zero) /\ forall n :e omega, hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ hl_lt n p = 1 -> ~ hl_num_divides n p = 1).
Admitted.

// HOL Light: Library/prime.ml:629 / PRIME_2   (hash md5:3311bf3bf5c3e24fa3f86e5a45d54da8)
Theorem hlt_PRIME_2 : hl_prime (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/prime.ml:633 / PRIME_COPRIME_STRONG   (hash md5:b91050ef9679258329dfcdb4f9aab6df)
Theorem hlt_PRIME_COPRIME_STRONG : forall n p :e omega, hl_prime p = 1 -> hl_num_divides p n = 1 \/ hl_num_coprime (hl_pair omega omega p n) = 1.
Admitted.

// HOL Light: Library/prime.ml:637 / PRIME_COPRIME   (hash md5:23b945d21b88c3717b686b808d0fcfc4)
Theorem hlt_PRIME_COPRIME : forall n p :e omega, hl_prime p = 1 -> n = hl_NUMERAL (hl_BIT1 hl_zero) \/ (hl_num_divides p n = 1 \/ hl_num_coprime (hl_pair omega omega p n) = 1).
Admitted.

// HOL Light: Library/prime.ml:641 / PRIME_COPRIME_EQ   (hash md5:e84af88b22e46ef0a586134c2edbff7b)
Theorem hlt_PRIME_COPRIME_EQ : forall p n :e omega, hl_prime p = 1 -> (hl_num_coprime (hl_pair omega omega p n) = 1 <-> ~ hl_num_divides p n = 1).
Admitted.

// HOL Light: Library/prime.ml:645 / COPRIME_PRIME   (hash md5:4aab82b6522f5221e764b26ec849c8ed)
Theorem hlt_COPRIME_PRIME : forall p a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> ~ (hl_prime p = 1 /\ (hl_num_divides p a = 1 /\ hl_num_divides p b = 1)).
Admitted.

// HOL Light: Library/prime.ml:649 / PRIME_DIVPROD   (hash md5:753e6e5209b91a228ca1b2f698e3bdf7)
Theorem hlt_PRIME_DIVPROD : forall p a b :e omega, hl_prime p = 1 /\ hl_num_divides p (hl_mul a b) = 1 -> hl_num_divides p a = 1 \/ hl_num_divides p b = 1.
Admitted.

// HOL Light: Library/prime.ml:653 / PRIME_DIVPROD_EQ   (hash md5:1d91274442b509177ada38245e4d745f)
Theorem hlt_PRIME_DIVPROD_EQ : forall p a b :e omega, hl_prime p = 1 -> (hl_num_divides p (hl_mul a b) = 1 <-> hl_num_divides p a = 1 \/ hl_num_divides p b = 1).
Admitted.

// HOL Light: Library/prime.ml:657 / PRIME_INT_DIVPROD_EQ   (hash md5:56e4a4b739d451b7828ecc0755f5bac8)
Theorem hlt_PRIME_INT_DIVPROD_EQ : forall p :e omega, forall a b :e hl_ty_int, hl_prime p = 1 -> (hl_int_divides (hl_int_of_num p) (hl_int_mul a b) = 1 <-> hl_int_divides (hl_int_of_num p) a = 1 \/ hl_int_divides (hl_int_of_num p) b = 1).
Admitted.

// HOL Light: Library/prime.ml:664 / PRIME_GE_2   (hash md5:6affe3f2e5baa747c725b2b242f46002)
Theorem hlt_PRIME_GE_2 : forall p :e omega, hl_prime p = 1 -> hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) p = 1.
Admitted.

// HOL Light: Library/prime.ml:669 / PRIME_FACTOR   (hash md5:23616e0d409efdb2f4a0c5ae70333f2c)
Theorem hlt_PRIME_FACTOR : forall n :e omega, ~ n = hl_NUMERAL (hl_BIT1 hl_zero) -> exists p :e omega, hl_prime p = 1 /\ hl_num_divides p n = 1.
Admitted.

// HOL Light: Library/prime.ml:679 / PRIME   (hash md5:edcdbce33545242fb45f60ed4f76194e)
Theorem hlt_PRIME : forall p :e omega, hl_prime p = 1 <-> ~ p = hl_NUMERAL hl_zero /\ (~ p = hl_NUMERAL (hl_BIT1 hl_zero) /\ forall m :e omega, hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_lt m p = 1 -> hl_num_coprime (hl_pair omega omega p m) = 1).
Admitted.

// HOL Light: Library/prime.ml:694 / PRIME_PRIME_FACTOR   (hash md5:a6cab7f94bcc1dc970a1496fa35c668f)
Theorem hlt_PRIME_PRIME_FACTOR : forall n :e omega, hl_prime n = 1 <-> ~ n = hl_NUMERAL (hl_BIT1 hl_zero) /\ forall p :e omega, hl_prime p = 1 /\ hl_num_divides p n = 1 -> p = n.
Admitted.

// HOL Light: Library/prime.ml:705 / PRIME_FACTOR_LT   (hash md5:914d6958736bc0e930e1d463059257b3)
Theorem hlt_PRIME_FACTOR_LT : forall n m p :e omega, hl_prime p = 1 /\ (~ n = hl_NUMERAL hl_zero /\ n = hl_mul p m) -> hl_lt m n = 1.
Admitted.

// HOL Light: Library/prime.ml:712 / COPRIME_PRIME_EQ   (hash md5:649c91949267a67e88b45da250de6312)
Theorem hlt_COPRIME_PRIME_EQ : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 <-> forall p :e omega, ~ (hl_prime p = 1 /\ (hl_num_divides p a = 1 /\ hl_num_divides p b = 1)).
Admitted.

// HOL Light: Library/prime.ml:724 / GCD_PRIME_CASES   (hash md5:76924345088d04386e537af3e8cf74b8)
Theorem hlt_GCD_PRIME_CASES : (forall p n :e omega, hl_prime p = 1 -> hl_num_gcd (hl_pair omega omega p n) = hl_COND omega (hl_num_divides p n) p (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall p n :e omega, hl_prime p = 1 -> hl_num_gcd (hl_pair omega omega n p) = hl_COND omega (hl_num_divides p n) p (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/prime.ml:733 / GCD_2_CASES   (hash md5:2b2cff92f6cc38e3efafd606696c12d4)
Theorem hlt_GCD_2_CASES : (forall n :e omega, hl_num_gcd (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) = hl_COND omega (hl_EVEN n) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall n :e omega, hl_num_gcd (hl_pair omega omega n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_COND omega (hl_EVEN n) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/prime.ml:738 / COPRIME_PRIMEPOW   (hash md5:3d8b0683636503f70b0460dbd027e9a0)
Theorem hlt_COPRIME_PRIMEPOW : forall p k m :e omega, hl_prime p = 1 /\ ~ k = hl_NUMERAL hl_zero -> (hl_num_coprime (hl_pair omega omega m (hl_EXP p k)) = 1 <-> ~ hl_num_divides p m = 1).
Admitted.

// HOL Light: Library/prime.ml:743 / COPRIME_BEZOUT_STRONG   (hash md5:c2b9c54fc8581e4a66a2b9d6d78d1a99)
Theorem hlt_COPRIME_BEZOUT_STRONG : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ ~ b = hl_NUMERAL (hl_BIT1 hl_zero) -> exists x y :e omega, hl_mul a x = hl_add (hl_mul b y) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/prime.ml:750 / COPRIME_BEZOUT_ALT   (hash md5:a735222114688ba67da575ab70c3efc0)
Theorem hlt_COPRIME_BEZOUT_ALT : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ ~ a = hl_NUMERAL hl_zero -> exists x y :e omega, hl_mul a x = hl_add (hl_mul b y) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/prime.ml:757 / BEZOUT_PRIME   (hash md5:54d67b2dfdb772d150f87c66b0dda540)
Theorem hlt_BEZOUT_PRIME : forall a p :e omega, hl_prime p = 1 /\ ~ hl_num_divides p a = 1 -> exists x y :e omega, hl_mul a x = hl_add (hl_mul p y) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/prime.ml:762 / PRIME_DIVEXP   (hash md5:e05038a390df938851f587e243fc8433)
Theorem hlt_PRIME_DIVEXP : forall n p x :e omega, hl_prime p = 1 /\ hl_num_divides p (hl_EXP x n) = 1 -> hl_num_divides p x = 1.
Admitted.

// HOL Light: Library/prime.ml:771 / PRIME_DIVEXP_N   (hash md5:c2e489d25c6805ad3dab04f2aeb90349)
Theorem hlt_PRIME_DIVEXP_N : forall n p x :e omega, hl_prime p = 1 /\ hl_num_divides p (hl_EXP x n) = 1 -> hl_num_divides (hl_EXP p n) (hl_EXP x n) = 1.
Admitted.

// HOL Light: Library/prime.ml:776 / PRIME_DIVEXP_EQ   (hash md5:2411fb1f10cbc8974c1709a5a01ae732)
Theorem hlt_PRIME_DIVEXP_EQ : forall n p x :e omega, hl_prime p = 1 -> (hl_num_divides p (hl_EXP x n) = 1 <-> hl_num_divides p x = 1 /\ ~ n = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/prime.ml:782 / COPRIME_SOS   (hash md5:a52b4a9c0ba8f078f97d99add372775b)
Theorem hlt_COPRIME_SOS : forall x y :e omega, hl_num_coprime (hl_pair omega omega x y) = 1 -> hl_num_coprime (hl_pair omega omega (hl_mul x y) (hl_add (hl_EXP x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_EXP y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) = 1.
Admitted.

// HOL Light: Library/prime.ml:786 / PRIME_IMP_NZ   (hash md5:983121c1abb3dab5d912bcff4550c9ef)
Theorem hlt_PRIME_IMP_NZ : forall p :e omega, hl_prime p = 1 -> ~ p = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:790 / DISTINCT_PRIME_COPRIME   (hash md5:41a64c8003eb0e3075855aff82857e3e)
Theorem hlt_DISTINCT_PRIME_COPRIME : forall p q :e omega, hl_prime p = 1 /\ (hl_prime q = 1 /\ ~ p = q) -> hl_num_coprime (hl_pair omega omega p q) = 1.
Admitted.

// HOL Light: Library/prime.ml:794 / PRIME_COPRIME_LT   (hash md5:63f90b15dd56a85ac89f4495bc56ea3a)
Theorem hlt_PRIME_COPRIME_LT : forall x p :e omega, hl_prime p = 1 /\ (hl_lt (hl_NUMERAL hl_zero) x = 1 /\ hl_lt x p = 1) -> hl_num_coprime (hl_pair omega omega x p) = 1.
Admitted.

// HOL Light: Library/prime.ml:799 / DIVIDES_PRIME_PRIME   (hash md5:0592a060bf39cdd5974e202c2b9f559b)
Theorem hlt_DIVIDES_PRIME_PRIME : forall p q :e omega, hl_prime p = 1 /\ hl_prime q = 1 -> (hl_num_divides p q = 1 <-> p = q).
Admitted.

// HOL Light: Library/prime.ml:803 / COPRIME_PRIME_PRIME   (hash md5:b0d35fd56c0210091a44164fc6386508)
Theorem hlt_COPRIME_PRIME_PRIME : forall p q :e omega, hl_prime p = 1 /\ hl_prime q = 1 -> (hl_num_coprime (hl_pair omega omega p q) = 1 <-> ~ p = q).
Admitted.

// HOL Light: Library/prime.ml:807 / DIVIDES_PRIME_EXP_LE   (hash md5:d0e94ed489cb72de39653e86bbf2f9e1)
Theorem hlt_DIVIDES_PRIME_EXP_LE : forall p q m n :e omega, hl_prime p = 1 /\ hl_prime q = 1 -> (hl_num_divides (hl_EXP p m) (hl_EXP q n) = 1 <-> m = hl_NUMERAL hl_zero \/ p = q /\ hl_le m n = 1).
Admitted.

// HOL Light: Library/prime.ml:817 / EQ_PRIME_EXP   (hash md5:04ef64bec2da8e6926ac3ea7555656cf)
Theorem hlt_EQ_PRIME_EXP : forall p q m n :e omega, hl_prime p = 1 /\ hl_prime q = 1 -> (hl_EXP p m = hl_EXP q n <-> m = hl_NUMERAL hl_zero /\ n = hl_NUMERAL hl_zero \/ p = q /\ m = n).
Admitted.

// HOL Light: Library/prime.ml:823 / PRIME_ODD   (hash md5:fbeac058998bbc5de0c472624383c6b2)
Theorem hlt_PRIME_ODD : forall p :e omega, hl_prime p = 1 -> p = hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)) \/ hl_ODD p = 1.
Admitted.

// HOL Light: Library/prime.ml:829 / ODD_PRIME   (hash md5:923325454928574801c4441294f86e1c)
Theorem hlt_ODD_PRIME : forall p :e omega, hl_prime p = 1 -> (hl_ODD p = 1 <-> hl_le (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) p = 1).
Admitted.

// HOL Light: Library/prime.ml:837 / DIVIDES_FACT_PRIME   (hash md5:4bdf40b10719b19873ea63db906bf728)
Theorem hlt_DIVIDES_FACT_PRIME : forall p :e omega, hl_prime p = 1 -> forall n :e omega, hl_num_divides p (hl_FACT n) = 1 <-> hl_le p n = 1.
Admitted.

// HOL Light: Library/prime.ml:844 / EQ_PRIMEPOW   (hash md5:544e58468bafb8c2908c4842fc252572)
Theorem hlt_EQ_PRIMEPOW : forall p m n :e omega, hl_prime p = 1 -> (hl_EXP p m = hl_EXP p n <-> m = n).
Admitted.

// HOL Light: Library/prime.ml:849 / COPRIME_2   (hash md5:a1fcb5141a3653612dfc98636842b766)
Theorem hlt_COPRIME_2 : (forall n :e omega, hl_num_coprime (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) = 1 <-> hl_ODD n = 1) /\ forall n :e omega, hl_num_coprime (hl_pair omega omega n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 <-> hl_ODD n = 1.
Admitted.

// HOL Light: Library/prime.ml:854 / DIVIDES_EXP_PLUS1   (hash md5:c80c71cd8b3f6edc83896f85132e76c9)
Theorem hlt_DIVIDES_EXP_PLUS1 : forall n k :e omega, hl_ODD k = 1 -> hl_num_divides (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add (hl_EXP n k) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/prime.ml:863 / DIVIDES_EXP_MINUS1   (hash md5:3b68b256b9690a27a87a2209976d246b)
Theorem hlt_DIVIDES_EXP_MINUS1 : forall k n :e omega, hl_num_divides (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_sub (hl_EXP n k) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/prime.ml:875 / PRIME_IRREDUCIBLE   (hash md5:351807e05594c2f49f0014e09e42136c)
Theorem hlt_PRIME_IRREDUCIBLE : forall p :e omega, hl_prime p = 1 <-> hl_gt p (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ forall a b :e omega, hl_num_divides p (hl_mul a b) = 1 -> hl_num_divides p a = 1 \/ hl_num_divides p b = 1.
Admitted.

// HOL Light: Library/prime.ml:882 / COPRIME_EXP_DIVPROD   (hash md5:ce365ec766414bc3da9e5feb024f4639)
Theorem hlt_COPRIME_EXP_DIVPROD : forall d n a b :e omega, hl_num_divides (hl_EXP d n) (hl_mul a b) = 1 /\ hl_num_coprime (hl_pair omega omega d a) = 1 -> hl_num_divides (hl_EXP d n) b = 1.
Admitted.

// HOL Light: Library/prime.ml:887 / PRIME_COPRIME_CASES   (hash md5:3817f00bf7d09abe59fb9a73e4fd69a6)
Theorem hlt_PRIME_COPRIME_CASES : forall p a b :e omega, hl_prime p = 1 /\ hl_num_coprime (hl_pair omega omega a b) = 1 -> hl_num_coprime (hl_pair omega omega p a) = 1 \/ hl_num_coprime (hl_pair omega omega p b) = 1.
Admitted.

// HOL Light: Library/prime.ml:891 / PRIME_DIVPROD_POW_GEN   (hash md5:1177b79602f1c17a5727fc8f68403bb0)
Theorem hlt_PRIME_DIVPROD_POW_GEN : forall n p a b :e omega, hl_prime p = 1 /\ (~ hl_num_divides p (hl_num_gcd (hl_pair omega omega a b)) = 1 /\ hl_num_divides (hl_EXP p n) (hl_mul a b) = 1) -> hl_num_divides (hl_EXP p n) a = 1 \/ hl_num_divides (hl_EXP p n) b = 1.
Admitted.

// HOL Light: Library/prime.ml:900 / PRIME_DIVPROD_POW_GEN_EQ   (hash md5:35cdc612c14a22f1119117365d24cb4b)
Theorem hlt_PRIME_DIVPROD_POW_GEN_EQ : forall n p a b :e omega, hl_prime p = 1 /\ ~ hl_num_divides p (hl_num_gcd (hl_pair omega omega a b)) = 1 -> (hl_num_divides (hl_EXP p n) (hl_mul a b) = 1 <-> hl_num_divides (hl_EXP p n) a = 1 \/ hl_num_divides (hl_EXP p n) b = 1).
Admitted.

// HOL Light: Library/prime.ml:907 / PRIME_DIVPROD_POW   (hash md5:cbd79372890b8c42aabea45a18a92226)
Theorem hlt_PRIME_DIVPROD_POW : forall n p a b :e omega, hl_prime p = 1 /\ (hl_num_coprime (hl_pair omega omega a b) = 1 /\ hl_num_divides (hl_EXP p n) (hl_mul a b) = 1) -> hl_num_divides (hl_EXP p n) a = 1 \/ hl_num_divides (hl_EXP p n) b = 1.
Admitted.

// HOL Light: Library/prime.ml:912 / PRIME_DIVPROD_POW_EQ   (hash md5:0f9e499f18f000f6a9f3a1462b76f20c)
Theorem hlt_PRIME_DIVPROD_POW_EQ : forall n p a b :e omega, hl_prime p = 1 /\ hl_num_coprime (hl_pair omega omega a b) = 1 -> (hl_num_divides (hl_EXP p n) (hl_mul a b) = 1 <-> hl_num_divides (hl_EXP p n) a = 1 \/ hl_num_divides (hl_EXP p n) b = 1).
Admitted.

// HOL Light: Library/prime.ml:919 / PRIME_FACTOR_INDUCT   (hash md5:8564a3a1d4827241fbf9ed846c8c838f)
Theorem hlt_PRIME_FACTOR_INDUCT : forall P :e 2 :^: omega, P (hl_NUMERAL hl_zero) = 1 /\ (P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (forall p n :e omega, hl_prime p = 1 /\ (~ n = hl_NUMERAL hl_zero /\ P n = 1) -> P (hl_mul p n) = 1)) -> forall n :e omega, P n = 1.
Admitted.

// HOL Light: Library/prime.ml:935 / COMPLETE_FACTOR_INDUCT   (hash md5:3533b5b0b9c100116fd89eb8461f0600)
Theorem hlt_COMPLETE_FACTOR_INDUCT : forall P :e 2 :^: omega, P (hl_NUMERAL hl_zero) = 1 /\ (P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ ((forall p :e omega, hl_prime p = 1 -> P p = 1) /\ (forall m n :e omega, P m = 1 /\ P n = 1 -> P (hl_mul m n) = 1))) -> forall n :e omega, P n = 1.
Admitted.

// HOL Light: Library/prime.ml:943 / PRIME_FACTOR_PARTITION   (hash md5:bc0937034bc8fd504af2074e877be1c8)
Theorem hlt_PRIME_FACTOR_PARTITION : forall Q :e 2 :^: omega, forall n :e omega, ~ n = hl_NUMERAL hl_zero -> exists n1 n2 :e omega, hl_mul n1 n2 = n /\ ((forall p :e omega, hl_prime p = 1 /\ hl_num_divides p n1 = 1 -> Q p = 1) /\ forall p :e omega, hl_prime p = 1 /\ hl_num_divides p n2 = 1 -> ~ Q p = 1).
Admitted.

// HOL Light: Library/prime.ml:963 / COPRIME_PAIR_DECOMP   (hash md5:24cbc04eae34891dc5710af735751cf7)
Theorem hlt_COPRIME_PAIR_DECOMP : forall n1 n2 m :e omega, hl_num_coprime (hl_pair omega omega n1 n2) = 1 /\ ~ m = hl_NUMERAL hl_zero -> exists m1 m2 :e omega, hl_num_coprime (hl_pair omega omega m1 n1) = 1 /\ (hl_num_coprime (hl_pair omega omega m2 n2) = 1 /\ (hl_num_coprime (hl_pair omega omega m1 m2) = 1 /\ hl_mul m1 m2 = m)).
Admitted.

// HOL Light: Library/prime.ml:976 / EXP_MULT_EXISTS   (hash md5:b6cbc7ed9a427aa66e722c0748d3ebc4)
Theorem hlt_EXP_MULT_EXISTS : forall m n p k :e omega, ~ m = hl_NUMERAL hl_zero /\ hl_mul (hl_EXP m k) n = hl_EXP p k -> exists q :e omega, n = hl_EXP q k.
Admitted.

// HOL Light: Library/prime.ml:988 / COPRIME_POW   (hash md5:eb78e2cb7a13a59c42b07c355da1a131)
Theorem hlt_COPRIME_POW : forall n a b c :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ hl_mul a b = hl_EXP c n -> exists r s :e omega, a = hl_EXP r n /\ b = hl_EXP s n.
Admitted.

// HOL Light: Library/prime.ml:1015 / PRIME_EXP   (hash md5:d690556779a9b70f807bf3fd5ecba1f9)
Theorem hlt_PRIME_EXP : forall p n :e omega, hl_prime (hl_EXP p n) = 1 <-> hl_prime p = 1 /\ n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:1034 / PRIME_POWER_MULT   (hash md5:d370255d466fe2d198b3a6233bef0d9a)
Theorem hlt_PRIME_POWER_MULT : forall k x y p :e omega, hl_prime p = 1 /\ hl_mul x y = hl_EXP p k -> exists i j :e omega, x = hl_EXP p i /\ y = hl_EXP p j.
Admitted.

// HOL Light: Library/prime.ml:1055 / PRIME_POWER_EXP   (hash md5:54a3dc02e9faa11e11be6864609c8f7f)
Theorem hlt_PRIME_POWER_EXP : forall n x p k :e omega, hl_prime p = 1 /\ (~ n = hl_NUMERAL hl_zero /\ hl_EXP x n = hl_EXP p k) -> exists i :e omega, x = hl_EXP p i.
Admitted.

// HOL Light: Library/prime.ml:1062 / DIVIDES_PRIMEPOW   (hash md5:3118275ac9ca3cc505cf7e7364b37508)
Theorem hlt_DIVIDES_PRIMEPOW : forall k p :e omega, hl_prime p = 1 -> forall d :e omega, hl_num_divides d (hl_EXP p k) = 1 <-> exists i :e omega, hl_le i k = 1 /\ d = hl_EXP p i.
Admitted.

// HOL Light: Library/prime.ml:1078 / PRIMEPOW_DIVIDES_PROD   (hash md5:68758fec43c10dadcf062a01e60d9ae1)
Theorem hlt_PRIMEPOW_DIVIDES_PROD : forall p k m n :e omega, hl_prime p = 1 /\ hl_num_divides (hl_EXP p k) (hl_mul m n) = 1 -> exists i j :e omega, hl_num_divides (hl_EXP p i) m = 1 /\ (hl_num_divides (hl_EXP p j) n = 1 /\ k = hl_add i j).
Admitted.

// HOL Light: Library/prime.ml:1087 / EUCLID_BOUND   (hash md5:24e53645d0544839ba3a70c2820663f3)
Theorem hlt_EUCLID_BOUND : forall n :e omega, exists p :e omega, hl_prime p = 1 /\ (hl_lt n p = 1 /\ hl_le p (hl_SUC (hl_FACT n)) = 1).
Admitted.

// HOL Light: Library/prime.ml:1096 / EUCLID   (hash md5:acb495b3973c1fd9b53a43001231991b)
Theorem hlt_EUCLID : forall n :e omega, exists p :e omega, hl_prime p = 1 /\ hl_gt p n = 1.
Admitted.

// HOL Light: Library/prime.ml:1100 / PRIMES_INFINITE   (hash md5:62436f57679277a848b43f1e1c614f68)
Theorem hlt_PRIMES_INFINITE : hl_INFINITE omega (hl_GSPEC omega (fun GEN_PVAR_727 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_727 (hl_prime p) p = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/prime.ml:1105 / FACTORIZATION_INDEX   (hash md5:91fc3a3555e5fdee320d51e0944b4cb0)
Theorem hlt_FACTORIZATION_INDEX : forall n p :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) p = 1 -> exists k :e omega, hl_num_divides (hl_EXP p k) n = 1 /\ forall l :e omega, hl_lt k l = 1 -> ~ hl_num_divides (hl_EXP p l) n = 1.
Admitted.

// HOL Light: Library/prime.ml:1121 / PRIMEPOW_FACTOR   (hash md5:af106550d372921680cb7f905ef966ae)
Theorem hlt_PRIMEPOW_FACTOR : forall n :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 -> exists p k m :e omega, hl_prime p = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_num_coprime (hl_pair omega omega p m) = 1 /\ n = hl_mul (hl_EXP p k) m)).
Admitted.

// HOL Light: Library/prime.ml:1140 / PRIMEPOW_DIVISORS_DIVIDES   (hash md5:d5d1e1c7c3a5518d6f4ba8a3128356f2)
Theorem hlt_PRIMEPOW_DIVISORS_DIVIDES : forall m n :e omega, hl_num_divides m n = 1 <-> forall p k :e omega, hl_prime p = 1 /\ hl_num_divides (hl_EXP p k) m = 1 -> hl_num_divides (hl_EXP p k) n = 1.
Admitted.

// HOL Light: Library/prime.ml:1186 / PRIMEPOW_DIVISORS_EQ   (hash md5:bb0fe866aef39cb8e7e1df534fb809a4)
Theorem hlt_PRIMEPOW_DIVISORS_EQ : forall m n :e omega, m = n <-> forall p k :e omega, hl_prime p = 1 -> (hl_num_divides (hl_EXP p k) m = 1 <-> hl_num_divides (hl_EXP p k) n = 1).
Admitted.

// HOL Light: Library/prime.ml:1195 / CHINESE_REMAINDER   (hash md5:82ce6626221e40105ea29532d2bbb191)
Theorem hlt_CHINESE_REMAINDER : forall a b u v :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ (~ a = hl_NUMERAL hl_zero /\ ~ b = hl_NUMERAL hl_zero) -> exists x q1 q2 :e omega, x = hl_add u (hl_mul q1 a) /\ x = hl_add v (hl_mul q2 b).
Admitted.

// HOL Light: Library/prime.ml:1225 / FINITE_EXP_LE   (hash md5:c963abb6414228adf3b89f2a2437ded8)
Theorem hlt_FINITE_EXP_LE : forall P :e 2 :^: omega, forall p n :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) p = 1 -> hl_FINITE omega (hl_GSPEC omega (fun GEN_PVAR_728 :e omega => if exists j :e omega, hl_SETSPEC omega GEN_PVAR_728 (if P j = 1 /\ hl_le (hl_EXP p j) n = 1 then 1 else 0) j = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/prime.ml:1234 / FINITE_INDICES   (hash md5:7b3d46d8986a0c4ea2040dcbd8f40072)
Theorem hlt_FINITE_INDICES : forall P :e 2 :^: omega, forall p n :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) p = 1 /\ ~ n = hl_NUMERAL hl_zero -> hl_FINITE omega (hl_GSPEC omega (fun GEN_PVAR_730 :e omega => if exists j :e omega, hl_SETSPEC omega GEN_PVAR_730 (if P j = 1 /\ hl_num_divides (hl_EXP p j) n = 1 then 1 else 0) j = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/prime.ml:1241 / index_def   (hash md5:6bd37732135c5f62978cb78e7e809cbc)
Theorem hlt_index_def : forall p n :e omega, hl_index p n = hl_COND omega (if hl_le p (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 \/ n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL hl_zero) (hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_731 :e omega => if exists j :e omega, hl_SETSPEC omega GEN_PVAR_731 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_num_divides (hl_EXP p j) n = 1 then 1 else 0) j = 1 then 1 else 0))).
Admitted.

// HOL Light: Library/prime.ml:1245 / INDEX_0   (hash md5:8458285aff94b6e0856e5107e77c3670)
Theorem hlt_INDEX_0 : forall p :e omega, hl_index p (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:1249 / PRIMEPOW_DIVIDES_INDEX   (hash md5:b2f1fed15cecc4d94b26449a07b55b8b)
Theorem hlt_PRIMEPOW_DIVIDES_INDEX : forall n p k :e omega, hl_num_divides (hl_EXP p k) n = 1 <-> n = hl_NUMERAL hl_zero \/ (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_le k (hl_index p n) = 1).
Admitted.

// HOL Light: Library/prime.ml:1268 / LE_INDEX   (hash md5:8c7b7c31c978f70110be3af719c88180)
Theorem hlt_LE_INDEX : forall n p k :e omega, hl_le k (hl_index p n) = 1 <-> (n = hl_NUMERAL hl_zero \/ p = hl_NUMERAL (hl_BIT1 hl_zero) -> k = hl_NUMERAL hl_zero) /\ hl_num_divides (hl_EXP p k) n = 1.
Admitted.

// HOL Light: Library/prime.ml:1276 / EXP_INDEX_DIVIDES   (hash md5:0a33898996306e5470b2f56545b07d90)
Theorem hlt_EXP_INDEX_DIVIDES : forall p n :e omega, hl_num_divides (hl_EXP p (hl_index p n)) n = 1.
Admitted.

// HOL Light: Library/prime.ml:1280 / INDEX_LT   (hash md5:c8c051505ae9313a7635d0c801daa7df)
Theorem hlt_INDEX_LT : forall n p k :e omega, (~ n = hl_NUMERAL hl_zero \/ ~ k = hl_NUMERAL hl_zero) /\ hl_lt n (hl_EXP p k) = 1 -> hl_lt (hl_index p n) k = 1.
Admitted.

// HOL Light: Library/prime.ml:1288 / INDEX_1   (hash md5:faeaeb09a2c5a17189d66e6478f80652)
Theorem hlt_INDEX_1 : forall p :e omega, hl_index p (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:1296 / INDEX_MUL   (hash md5:4bbe0dd31124881e7be28e9ab12bdc51)
Theorem hlt_INDEX_MUL : forall p m n :e omega, hl_prime p = 1 /\ (~ m = hl_NUMERAL hl_zero /\ ~ n = hl_NUMERAL hl_zero) -> hl_index p (hl_mul m n) = hl_add (hl_index p m) (hl_index p n).
Admitted.

// HOL Light: Library/prime.ml:1310 / INDEX_EXP   (hash md5:f486787020d51e9d2aea88817d484160)
Theorem hlt_INDEX_EXP : forall p n k :e omega, hl_prime p = 1 -> hl_index p (hl_EXP n k) = hl_mul k (hl_index p n).
Admitted.

// HOL Light: Library/prime.ml:1320 / INDEX_FACT   (hash md5:5e8edbddd8716ec29ece74fbc8c1775f)
Theorem hlt_INDEX_FACT : forall p n :e omega, hl_prime p = 1 -> hl_index p (hl_FACT n) = hl_nsum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun m :e omega => hl_index p m).
Admitted.

// HOL Light: Library/prime.ml:1326 / INDEX_FACT_ALT   (hash md5:ace1de072996d32b56e26798ce997688)
Theorem hlt_INDEX_FACT_ALT : forall p n :e omega, hl_prime p = 1 -> hl_index p (hl_FACT n) = hl_nsum omega (hl_GSPEC omega (fun GEN_PVAR_734 :e omega => if exists j :e omega, hl_SETSPEC omega GEN_PVAR_734 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le (hl_EXP p j) n = 1 then 1 else 0) j = 1 then 1 else 0)) (fun j :e omega => hl_DIV n (hl_EXP p j)).
Admitted.

// HOL Light: Library/prime.ml:1360 / INDEX_FACT_UNBOUNDED   (hash md5:d2d98716c76d68411d78bd064821001e)
Theorem hlt_INDEX_FACT_UNBOUNDED : forall p n :e omega, hl_prime p = 1 -> hl_index p (hl_FACT n) = hl_nsum omega (hl_GSPEC omega (fun GEN_PVAR_735 :e omega => if exists j :e omega, hl_SETSPEC omega GEN_PVAR_735 (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j) j = 1 then 1 else 0)) (fun j :e omega => hl_DIV n (hl_EXP p j)).
Admitted.

// HOL Light: Library/prime.ml:1368 / PRIMEPOW_DIVIDES_FACT   (hash md5:8d3fe7c42f0b645b586e9d1a6fd11d42)
Theorem hlt_PRIMEPOW_DIVIDES_FACT : forall p n k :e omega, hl_prime p = 1 -> (hl_num_divides (hl_EXP p k) (hl_FACT n) = 1 <-> hl_le k (hl_nsum omega (hl_GSPEC omega (fun GEN_PVAR_736 :e omega => if exists j :e omega, hl_SETSPEC omega GEN_PVAR_736 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le (hl_EXP p j) n = 1 then 1 else 0) j = 1 then 1 else 0)) (fun j :e omega => hl_DIV n (hl_EXP p j))) = 1).
Admitted.

// HOL Light: Library/prime.ml:1375 / INDEX_REFL   (hash md5:2f33e484821c5520effbad9e52493e20)
Theorem hlt_INDEX_REFL : forall n :e omega, hl_index n n = hl_COND omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL hl_zero) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/prime.ml:1383 / INDEX_EQ_0   (hash md5:0da1847923c47e95c7e4c5ea7be9b144)
Theorem hlt_INDEX_EQ_0 : forall p n :e omega, hl_index p n = hl_NUMERAL hl_zero <-> n = hl_NUMERAL hl_zero \/ (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ ~ hl_num_divides p n = 1).
Admitted.

// HOL Light: Library/prime.ml:1389 / INDEX_ZERO   (hash md5:6a01886df791d47c0fc591d917ec2866)
Theorem hlt_INDEX_ZERO : forall p n :e omega, ~ hl_num_divides p n = 1 -> hl_index p n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:1393 / INDEX_POW   (hash md5:9136795188a1f400201eaab1c084be4c)
Theorem hlt_INDEX_POW : forall p n k :e omega, hl_index (hl_EXP p k) n = hl_DIV (hl_index p n) k.
Admitted.

// HOL Light: Library/prime.ml:1402 / INDEX_PRIME   (hash md5:3d22deec7d913f6fd3f7002274ba12b4)
Theorem hlt_INDEX_PRIME : forall p a :e omega, hl_prime p = 1 -> hl_index a p = hl_COND omega (if p = a then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/prime.ml:1409 / INDEX_TRIVIAL_BOUND   (hash md5:94c9517a9768c9f6f9ddc04e2a398c4a)
Theorem hlt_INDEX_TRIVIAL_BOUND : forall n p :e omega, hl_le (hl_index p n) n = 1.
Admitted.

// HOL Light: Library/prime.ml:1424 / INDEX_DECOMPOSITION   (hash md5:ad640e22a809fa1157f077084a10bec0)
Theorem hlt_INDEX_DECOMPOSITION : forall n p :e omega, exists m :e omega, hl_mul (hl_EXP p (hl_index p n)) m = n /\ (n = hl_NUMERAL hl_zero \/ (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ ~ hl_num_divides p m = 1)).
Admitted.

// HOL Light: Library/prime.ml:1440 / INDEX_DECOMPOSITION_PRIME   (hash md5:cf72804d62dec999dd94335a79fa67ed)
Theorem hlt_INDEX_DECOMPOSITION_PRIME : forall n p :e omega, hl_prime p = 1 -> exists m :e omega, hl_mul (hl_EXP p (hl_index p n)) m = n /\ (n = hl_NUMERAL hl_zero \/ hl_num_coprime (hl_pair omega omega p m) = 1).
Admitted.

// HOL Light: Library/prime.ml:1449 / INDEX_DECOMPOSITION_LE   (hash md5:b40e388ec8b73ca2f669d8835e5a1da3)
Theorem hlt_INDEX_DECOMPOSITION_LE : forall p e1 m1 e2 m2 :e omega, hl_mul (hl_EXP p e1) m1 = hl_mul (hl_EXP p e2) m2 /\ (~ p = hl_NUMERAL hl_zero /\ ~ hl_num_divides p m2 = 1) -> hl_le e1 e2 = 1.
Admitted.

// HOL Light: Library/prime.ml:1460 / INDEX_DECOMPOSITION_UNIQUE   (hash md5:06d4cc1fb10ec7258e702e8b4b8aa872)
Theorem hlt_INDEX_DECOMPOSITION_UNIQUE : forall p e1 m1 e2 m2 :e omega, hl_mul (hl_EXP p e1) m1 = hl_mul (hl_EXP p e2) m2 /\ (~ p = hl_NUMERAL hl_zero /\ (~ hl_num_divides p m1 = 1 /\ ~ hl_num_divides p m2 = 1)) -> e1 = e2.
Admitted.

// HOL Light: Library/prime.ml:1468 / INDEX_UNIQUE   (hash md5:36b170fef22d9b5277ebec90cefa78de)
Theorem hlt_INDEX_UNIQUE : forall p m n e1 :e omega, hl_mul (hl_EXP p e1) m = n /\ ((p = hl_NUMERAL hl_zero -> e1 = hl_NUMERAL hl_zero) /\ ~ hl_num_divides p m = 1) -> hl_index p n = e1.
Admitted.

// HOL Light: Library/prime.ml:1485 / INDEX_UNIQUE_EQ   (hash md5:a73443ec2f4834d9bce212af82430109)
Theorem hlt_INDEX_UNIQUE_EQ : forall n p k :e omega, hl_index p n = k <-> (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ n = hl_NUMERAL hl_zero) /\ k = hl_NUMERAL hl_zero \/ ~ (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ n = hl_NUMERAL hl_zero) /\ forall j :e omega, hl_num_divides (hl_EXP p j) n = 1 <-> hl_le j k = 1.
Admitted.

// HOL Light: Library/prime.ml:1495 / INDEX_UNIQUE_ALT   (hash md5:10abf45142ea731b8a97fc7abcca17e8)
Theorem hlt_INDEX_UNIQUE_ALT : forall n p k :e omega, hl_index p n = k <-> (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ n = hl_NUMERAL hl_zero) /\ k = hl_NUMERAL hl_zero \/ ~ (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ n = hl_NUMERAL hl_zero) /\ (hl_num_divides (hl_EXP p k) n = 1 /\ ~ hl_num_divides (hl_EXP p (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1).
Admitted.

// HOL Light: Library/prime.ml:1509 / INDEX_ADD_MIN   (hash md5:b7c9b686332abad82b77ff1168451f0a)
Theorem hlt_INDEX_ADD_MIN : forall p m n :e omega, hl_le (hl_MIN (hl_index p m) (hl_index p n)) (hl_index p (hl_add m n)) = 1.
Admitted.

// HOL Light: Library/prime.ml:1520 / INDEX_SUB_MIN   (hash md5:d6509ede7edef102d57c3d7e05b84a5e)
Theorem hlt_INDEX_SUB_MIN : forall p m n :e omega, hl_lt n m = 1 -> hl_le (hl_MIN (hl_index p m) (hl_index p n)) (hl_index p (hl_sub m n)) = 1.
Admitted.

// HOL Light: Library/prime.ml:1532 / INDEX_ADD   (hash md5:56a1a5f9f4f72716998d0c64a5d18a68)
Theorem hlt_INDEX_ADD : forall p n m :e omega, ~ n = hl_NUMERAL hl_zero /\ (~ m = hl_NUMERAL hl_zero -> hl_lt (hl_index p n) (hl_index p m) = 1) -> hl_index p (hl_add m n) = hl_index p n.
Admitted.

// HOL Light: Library/prime.ml:1546 / INDEX_MULT_BASE   (hash md5:7e19c9f793568875c41019982be1ebfc)
Theorem hlt_INDEX_MULT_BASE : (forall p n :e omega, hl_index p (hl_mul p n) = hl_COND omega (if hl_le p (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 \/ n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL hl_zero) (hl_add (hl_index p n) (hl_NUMERAL (hl_BIT1 hl_zero)))) /\ forall p n :e omega, hl_index p (hl_mul n p) = hl_COND omega (if hl_le p (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 \/ n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL hl_zero) (hl_add (hl_index p n) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/prime.ml:1560 / INDEX_MULT_EXP   (hash md5:bcf89e56b1ed98336df217a8601a3a98)
Theorem hlt_INDEX_MULT_EXP : (forall p n k :e omega, hl_index p (hl_mul (hl_EXP p k) n) = hl_COND omega (if hl_le p (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 \/ n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL hl_zero) (hl_add k (hl_index p n))) /\ forall p n k :e omega, hl_index p (hl_mul n (hl_EXP p k)) = hl_COND omega (if n = hl_NUMERAL hl_zero \/ hl_le p (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 then 1 else 0) (hl_NUMERAL hl_zero) (hl_add (hl_index p n) k).
Admitted.

// HOL Light: Library/prime.ml:1575 / INDEX_MULT_ADD   (hash md5:f804a8a470e85a8d438c81706161a00d)
Theorem hlt_INDEX_MULT_ADD : (forall p m n k :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_lt (hl_index p n) k = 1 -> hl_index p (hl_add (hl_mul (hl_EXP p k) m) n) = hl_index p n) /\ ((forall p m n k :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_lt (hl_index p n) k = 1 -> hl_index p (hl_add (hl_mul m (hl_EXP p k)) n) = hl_index p n) /\ ((forall p m n k :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_lt (hl_index p n) k = 1 -> hl_index p (hl_add n (hl_mul m (hl_EXP p k))) = hl_index p n) /\ forall p m n k :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_lt (hl_index p n) k = 1 -> hl_index p (hl_add n (hl_mul (hl_EXP p k) m)) = hl_index p n)).
Admitted.

// HOL Light: Library/prime.ml:1591 / INDEX_NSUM_LE   (hash md5:55346c8727457f2689e2b01ce4a849f4)
Theorem hlt_INDEX_NSUM_LE : forall A:set, A <> Empty -> forall f :e omega :^: A, forall p n :e omega, forall k :e 2 :^: A, hl_FINITE A k = 1 /\ (~ k = hl_EMPTY A /\ (forall a :e A, hl_IN A a k = 1 -> hl_le n (hl_index p (f a)) = 1)) -> hl_le n (hl_index p (hl_nsum A k f)) = 1.
Admitted.

// HOL Light: Library/prime.ml:1601 / DIVIDES_INDEX   (hash md5:17cc3380d7badd8c7ac60df7cbfc709f)
Theorem hlt_DIVIDES_INDEX : forall m n :e omega, hl_num_divides m n = 1 <-> n = hl_NUMERAL hl_zero \/ ~ m = hl_NUMERAL hl_zero /\ forall p :e omega, hl_prime p = 1 -> hl_le (hl_index p m) (hl_index p n) = 1.
Admitted.

// HOL Light: Library/prime.ml:1613 / EQ_INDEX   (hash md5:8cc7668e40f4bb4c61c22bad324e30f6)
Theorem hlt_EQ_INDEX : forall m n :e omega, m = n <-> (m = hl_NUMERAL hl_zero <-> n = hl_NUMERAL hl_zero) /\ forall p :e omega, hl_prime p = 1 -> hl_index p m = hl_index p n.
Admitted.

// HOL Light: Library/prime.ml:1620 / COPRIME_INDEX   (hash md5:a9a7342d19f2a207a74b3448c1905fd1)
Theorem hlt_COPRIME_INDEX : forall m n :e omega, hl_num_coprime (hl_pair omega omega m n) = 1 <-> (m = hl_NUMERAL hl_zero -> n = hl_NUMERAL (hl_BIT1 hl_zero)) /\ ((n = hl_NUMERAL hl_zero -> m = hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall p :e omega, hl_prime p = 1 -> hl_index p m = hl_NUMERAL hl_zero \/ hl_index p n = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/prime.ml:1629 / INDEX_GCD   (hash md5:8514386bb045c8e9a113f367cfc5baad)
Theorem hlt_INDEX_GCD : forall m n p :e omega, hl_prime p = 1 -> hl_index p (hl_num_gcd (hl_pair omega omega m n)) = hl_COND omega (if m = hl_NUMERAL hl_zero then 1 else 0) (hl_index p n) (hl_COND omega (if n = hl_NUMERAL hl_zero then 1 else 0) (hl_index p m) (hl_MIN (hl_index p m) (hl_index p n))).
Admitted.

// HOL Light: Library/prime.ml:1647 / FORALL_PRIME_INDEX   (hash md5:c31b6b94bf13396a4c5c09f8a12b079a)
Theorem hlt_FORALL_PRIME_INDEX : (forall p :e omega, hl_prime p = 1 -> forall P :e 2 :^: omega, (forall x :e omega, P (hl_index p x) = 1) <-> forall k :e omega, P k = 1) /\ forall p :e omega, hl_prime p = 1 -> forall P :e 2 :^: omega, (forall x :e omega, ~ x = hl_NUMERAL hl_zero -> P (hl_index p x) = 1) <-> forall k :e omega, P k = 1.
Admitted.

// HOL Light: Library/prime.ml:1656 / INDEX_FACT_PRIME_MULT   (hash md5:32dad8032ca835b4088003f0b36bdb63)
Theorem hlt_INDEX_FACT_PRIME_MULT : forall p n :e omega, hl_prime p = 1 -> hl_index p (hl_FACT (hl_mul p n)) = hl_add n (hl_index p (hl_FACT n)).
Admitted.

// HOL Light: Library/prime.ml:1678 / PRIME_FACTORIZATION_INDEX   (hash md5:3ad8b2203a481b7c8d6769961f7b2498)
Theorem hlt_PRIME_FACTORIZATION_INDEX : forall k :e omega :^: omega, hl_FINITE omega (hl_GSPEC omega (fun GEN_PVAR_739 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_739 (if hl_prime p = 1 /\ ~ k p = hl_NUMERAL hl_zero then 1 else 0) p = 1 then 1 else 0)) = 1 -> exists n :e omega, ~ n = hl_NUMERAL hl_zero /\ forall p :e omega, hl_prime p = 1 -> hl_index p n = k p.
Admitted.

// HOL Light: Library/prime.ml:1707 / PRIME_POWER_EXISTS   (hash md5:d71248f382cd095abda4160594adc2c2)
Theorem hlt_PRIME_POWER_EXISTS : forall n q :e omega, hl_prime q = 1 -> ((exists i :e omega, n = hl_EXP q i) <-> forall p :e omega, hl_prime p = 1 /\ hl_num_divides p n = 1 -> p = q).
Admitted.

// HOL Light: Library/prime.ml:1732 / PRIME_POWER_EXISTS_ALT   (hash md5:657a5d22d61e1485170198a4addde9d1)
Theorem hlt_PRIME_POWER_EXISTS_ALT : forall n p :e omega, hl_prime p = 1 -> ((exists i :e omega, n = hl_EXP p i) <-> forall d :e omega, hl_num_divides d n = 1 -> d = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_num_divides p d = 1).
Admitted.

// HOL Light: Library/prime.ml:1740 / PRIME_FACTORIZATION_ALT   (hash md5:260a5413ab81b955ae45c5d0b201d311)
Theorem hlt_PRIME_FACTORIZATION_ALT : forall n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_nproduct omega (hl_GSPEC omega (fun GEN_PVAR_740 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_740 (hl_prime p) p = 1 then 1 else 0)) (fun p :e omega => hl_EXP p (hl_index p n)) = n.
Admitted.

// HOL Light: Library/prime.ml:1767 / PRIME_FACTORIZATION   (hash md5:62d3fbcc6fd5fbedeb96c767afcfa3ec)
Theorem hlt_PRIME_FACTORIZATION : forall n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_nproduct omega (hl_GSPEC omega (fun GEN_PVAR_741 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_741 (if hl_prime p = 1 /\ hl_num_divides p n = 1 then 1 else 0) p = 1 then 1 else 0)) (fun p :e omega => hl_EXP p (hl_index p n)) = n.
Admitted.

// HOL Light: Library/prime.ml:1782 / lcm   (hash md5:7e6d8867fca1c23a07f66302a830c04d)
Theorem hlt_lcm : forall m n :e omega, hl_num_lcm (hl_pair omega omega m n) = hl_COND omega (if hl_mul m n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL hl_zero) (hl_DIV (hl_mul m n) (hl_num_gcd (hl_pair omega omega m n))).
Admitted.

// HOL Light: Library/prime.ml:1788 / LCM_DIVIDES   (hash md5:f5d98ece37af4806a440a1e997591607)
Theorem hlt_LCM_DIVIDES : forall m n d :e omega, hl_num_divides (hl_num_lcm (hl_pair omega omega m n)) d = 1 <-> hl_num_divides m d = 1 /\ hl_num_divides n d = 1.
Admitted.

// HOL Light: Library/prime.ml:1792 / LCM   (hash md5:d53fa331eabbf3d52d3ad3cce746ce5a)
Theorem hlt_LCM : forall m n :e omega, hl_num_divides m (hl_num_lcm (hl_pair omega omega m n)) = 1 /\ (hl_num_divides n (hl_num_lcm (hl_pair omega omega m n)) = 1 /\ forall d :e omega, hl_num_divides m d = 1 /\ hl_num_divides n d = 1 -> hl_num_divides (hl_num_lcm (hl_pair omega omega m n)) d = 1).
Admitted.

// HOL Light: Library/prime.ml:1798 / LCM_DIVIDES_MUL   (hash md5:0c219ef9dd3ef15bc0408a6c2fafa500)
Theorem hlt_LCM_DIVIDES_MUL : forall m n :e omega, hl_num_divides (hl_num_lcm (hl_pair omega omega m n)) (hl_mul m n) = 1.
Admitted.

// HOL Light: Library/prime.ml:1802 / DIVIDES_LCM   (hash md5:5a66a4054856a2a72046ce243bdb773b)
Theorem hlt_DIVIDES_LCM : forall m n r :e omega, hl_num_divides r m = 1 \/ hl_num_divides r n = 1 -> hl_num_divides r (hl_num_lcm (hl_pair omega omega m n)) = 1.
Admitted.

// HOL Light: Library/prime.ml:1809 / LCM_0   (hash md5:71bfdbcd6492e1c9d49ae63fec77e4f6)
Theorem hlt_LCM_0 : (forall n :e omega, hl_num_lcm (hl_pair omega omega (hl_NUMERAL hl_zero) n) = hl_NUMERAL hl_zero) /\ forall n :e omega, hl_num_lcm (hl_pair omega omega n (hl_NUMERAL hl_zero)) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:1813 / LCM_1   (hash md5:d57be2da21d706372db611b00060afda)
Theorem hlt_LCM_1 : (forall n :e omega, hl_num_lcm (hl_pair omega omega (hl_NUMERAL (hl_BIT1 hl_zero)) n) = n) /\ forall n :e omega, hl_num_lcm (hl_pair omega omega n (hl_NUMERAL (hl_BIT1 hl_zero))) = n.
Admitted.

// HOL Light: Library/prime.ml:1817 / LCM_SYM   (hash md5:8841ae55dde92073ccd41cc412230507)
Theorem hlt_LCM_SYM : forall m n :e omega, hl_num_lcm (hl_pair omega omega m n) = hl_num_lcm (hl_pair omega omega n m).
Admitted.

// HOL Light: Library/prime.ml:1821 / DIVIDES_LCM_GCD   (hash md5:009f2c22046f2f2c62635128e164aa95)
Theorem hlt_DIVIDES_LCM_GCD : forall m n d :e omega, hl_num_divides d (hl_num_lcm (hl_pair omega omega m n)) = 1 <-> hl_num_divides (hl_mul d (hl_num_gcd (hl_pair omega omega m n))) (hl_mul m n) = 1.
Admitted.

// HOL Light: Library/prime.ml:1825 / PRIMEPOW_DIVIDES_LCM   (hash md5:1c615468192a92248abba0b990068dd2)
Theorem hlt_PRIMEPOW_DIVIDES_LCM : forall m n p k :e omega, hl_prime p = 1 -> (hl_num_divides (hl_EXP p k) (hl_num_lcm (hl_pair omega omega m n)) = 1 <-> hl_num_divides (hl_EXP p k) m = 1 \/ hl_num_divides (hl_EXP p k) n = 1).
Admitted.

// HOL Light: Library/prime.ml:1873 / PRIME_DIVIDES_LCM   (hash md5:e44046d526f62578dcd64680287246bf)
Theorem hlt_PRIME_DIVIDES_LCM : forall m n p :e omega, hl_prime p = 1 -> (hl_num_divides p (hl_num_lcm (hl_pair omega omega m n)) = 1 <-> hl_num_divides p m = 1 \/ hl_num_divides p n = 1).
Admitted.

// HOL Light: Library/prime.ml:1881 / LCM_ZERO   (hash md5:7802be9e3604398e1570b5189f096552)
Theorem hlt_LCM_ZERO : forall m n :e omega, hl_num_lcm (hl_pair omega omega m n) = hl_NUMERAL hl_zero <-> m = hl_NUMERAL hl_zero \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:1889 / INDEX_LCM   (hash md5:e1e65522f4a45a1abbb7470606f02f9c)
Theorem hlt_INDEX_LCM : forall m n p :e omega, hl_prime p = 1 -> hl_index p (hl_num_lcm (hl_pair omega omega m n)) = hl_COND omega (if m = hl_NUMERAL hl_zero \/ n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL hl_zero) (hl_MAX (hl_index p m) (hl_index p n)).
Admitted.

// HOL Light: Library/prime.ml:1905 / LCM_ASSOC   (hash md5:16abb6a8b67ffd02324c3a906e403178)
Theorem hlt_LCM_ASSOC : forall m n p :e omega, hl_num_lcm (hl_pair omega omega m (hl_num_lcm (hl_pair omega omega n p))) = hl_num_lcm (hl_pair omega omega (hl_num_lcm (hl_pair omega omega m n)) p).
Admitted.

// HOL Light: Library/prime.ml:1911 / LCM_REFL   (hash md5:d31e92cb8b415428e0064194bef5ef94)
Theorem hlt_LCM_REFL : forall n :e omega, hl_num_lcm (hl_pair omega omega n n) = n.
Admitted.

// HOL Light: Library/prime.ml:1916 / LCM_MULTIPLE   (hash md5:7d60a6c6bd194322185b0ca656888050)
Theorem hlt_LCM_MULTIPLE : forall a b :e omega, hl_num_lcm (hl_pair omega omega b (hl_mul a b)) = hl_mul a b.
Admitted.

// HOL Light: Library/prime.ml:1920 / LCM_GCD_DISTRIB   (hash md5:88439aef1688656a2d68b425e4da74c4)
Theorem hlt_LCM_GCD_DISTRIB : forall a b c :e omega, hl_num_lcm (hl_pair omega omega a (hl_num_gcd (hl_pair omega omega b c))) = hl_num_gcd (hl_pair omega omega (hl_num_lcm (hl_pair omega omega a b)) (hl_num_lcm (hl_pair omega omega a c))).
Admitted.

// HOL Light: Library/prime.ml:1925 / GCD_LCM_DISTRIB   (hash md5:7adc6ef8339436f2b0e1f855bd370d77)
Theorem hlt_GCD_LCM_DISTRIB : forall a b c :e omega, hl_num_gcd (hl_pair omega omega a (hl_num_lcm (hl_pair omega omega b c))) = hl_num_lcm (hl_pair omega omega (hl_num_gcd (hl_pair omega omega a b)) (hl_num_gcd (hl_pair omega omega a c))).
Admitted.

// HOL Light: Library/prime.ml:1930 / LCM_UNIQUE   (hash md5:657f35e22c5afcf575bc26b4cbd43dca)
Theorem hlt_LCM_UNIQUE : forall d m n :e omega, hl_num_divides m d = 1 /\ (hl_num_divides n d = 1 /\ (forall e1 :e omega, hl_num_divides m e1 = 1 /\ hl_num_divides n e1 = 1 -> hl_num_divides d e1 = 1)) <-> d = hl_num_lcm (hl_pair omega omega m n).
Admitted.

// HOL Light: Library/prime.ml:1938 / LCM_EQ   (hash md5:d70a2db3e126ae59bdc9150dff4c6a87)
Theorem hlt_LCM_EQ : forall x y u v :e omega, (forall d :e omega, hl_num_divides x d = 1 /\ hl_num_divides y d = 1 <-> hl_num_divides u d = 1 /\ hl_num_divides v d = 1) -> hl_num_lcm (hl_pair omega omega x y) = hl_num_lcm (hl_pair omega omega u v).
Admitted.

// HOL Light: Library/prime.ml:1943 / LCM_EQ_1   (hash md5:8fd711dfb464c16686ee764292af124a)
Theorem hlt_LCM_EQ_1 : forall m n :e omega, hl_num_lcm (hl_pair omega omega m n) = hl_NUMERAL (hl_BIT1 hl_zero) <-> m = hl_NUMERAL (hl_BIT1 hl_zero) /\ n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:1948 / DIVIDES_LCM_LEFT   (hash md5:8a67c107f5eeb72b1e85f1e8201b8159)
Theorem hlt_DIVIDES_LCM_LEFT : forall m n :e omega, hl_num_divides n m = 1 <-> hl_num_lcm (hl_pair omega omega m n) = m.
Admitted.

// HOL Light: Library/prime.ml:1953 / DIVIDES_LCM_RIGHT   (hash md5:a2da2d8e08a0f2634a726b6f1e0a473f)
Theorem hlt_DIVIDES_LCM_RIGHT : forall m n :e omega, hl_num_divides m n = 1 <-> hl_num_lcm (hl_pair omega omega m n) = n.
Admitted.

// HOL Light: Library/prime.ml:1958 / MULT_LCM_GCD   (hash md5:3051e5f1eb0cda906cf26b9516abdb8e)
Theorem hlt_MULT_LCM_GCD : forall m n :e omega, hl_mul (hl_num_lcm (hl_pair omega omega m n)) (hl_num_gcd (hl_pair omega omega m n)) = hl_mul m n.
Admitted.

// HOL Light: Library/prime.ml:1966 / MULT_GCD_LCM   (hash md5:f05ab69768860fdf1e96ada46af32cdc)
Theorem hlt_MULT_GCD_LCM : forall m n :e omega, hl_mul (hl_num_gcd (hl_pair omega omega m n)) (hl_num_lcm (hl_pair omega omega m n)) = hl_mul m n.
Admitted.

// HOL Light: Library/prime.ml:1970 / LCM_LMUL   (hash md5:1f174dcd9f96618f1ee8307e2850772f)
Theorem hlt_LCM_LMUL : forall a b c :e omega, hl_num_lcm (hl_pair omega omega (hl_mul c a) (hl_mul c b)) = hl_mul c (hl_num_lcm (hl_pair omega omega a b)).
Admitted.

// HOL Light: Library/prime.ml:1985 / LCM_RMUL   (hash md5:9d68c5136f8762ca33c552a85fa7e31b)
Theorem hlt_LCM_RMUL : forall a b c :e omega, hl_num_lcm (hl_pair omega omega (hl_mul a c) (hl_mul b c)) = hl_mul c (hl_num_lcm (hl_pair omega omega a b)).
Admitted.

// HOL Light: Library/prime.ml:1989 / LCM_EXP   (hash md5:dc8df7e8a900f71f72a397990301be94)
Theorem hlt_LCM_EXP : forall n a b :e omega, hl_num_lcm (hl_pair omega omega (hl_EXP a n) (hl_EXP b n)) = hl_EXP (hl_num_lcm (hl_pair omega omega a b)) n.
Admitted.

// HOL Light: Library/prime.ml:2005 / LCM_COPRIME_DECOMP   (hash md5:9f49b538da2047d9e9fe4b1bd90704d3)
Theorem hlt_LCM_COPRIME_DECOMP : forall m n :e omega, exists m' n' :e omega, hl_num_divides m' m = 1 /\ (hl_num_divides n' n = 1 /\ (hl_num_coprime (hl_pair omega omega m' n') = 1 /\ hl_mul m' n' = hl_num_lcm (hl_pair omega omega m n))).
Admitted.

// HOL Light: Library/prime.ml:2031 / LE_LCM   (hash md5:0b8d2940146e14309caf9b92e9250eeb)
Theorem hlt_LE_LCM : (forall m n :e omega, hl_le m (hl_num_lcm (hl_pair omega omega m n)) = 1 <-> n = hl_NUMERAL hl_zero -> m = hl_NUMERAL hl_zero) /\ forall m n :e omega, hl_le n (hl_num_lcm (hl_pair omega omega m n)) = 1 <-> m = hl_NUMERAL hl_zero -> n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:2040 / LCM_LE_MULT   (hash md5:a40a7fd68d0a0f7d5993f476a212a955)
Theorem hlt_LCM_LE_MULT : forall m n :e omega, hl_le (hl_num_lcm (hl_pair omega omega m n)) (hl_mul m n) = 1.
Admitted.

// HOL Light: Library/prime.ml:2045 / LCM_EQ_MULT   (hash md5:c828447d1f35415eb6c818cd97beb827)
Theorem hlt_LCM_EQ_MULT : forall m n :e omega, hl_num_lcm (hl_pair omega omega m n) = hl_mul m n <-> m = hl_NUMERAL hl_zero \/ (n = hl_NUMERAL hl_zero \/ hl_num_coprime (hl_pair omega omega m n) = 1).
Admitted.

// HOL Light: Library/prime.ml:2052 / MAX_LE_LCM_EQ   (hash md5:cc3fc17d586804a43a310b0f39bba1ae)
Theorem hlt_MAX_LE_LCM_EQ : forall m n :e omega, hl_le (hl_MAX m n) (hl_num_lcm (hl_pair omega omega m n)) = 1 <-> (m = hl_NUMERAL hl_zero <-> n = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/prime.ml:2058 / MAX_LE_LCM   (hash md5:03613766e4e9e56f289b7110eebf7037)
Theorem hlt_MAX_LE_LCM : forall m n :e omega, (m = hl_NUMERAL hl_zero <-> n = hl_NUMERAL hl_zero) -> hl_le (hl_MAX m n) (hl_num_lcm (hl_pair omega omega m n)) = 1.
Admitted.

// HOL Light: Library/prime.ml:2066 / NEUTRAL_GCD   (hash md5:a500556c6580c62f41a359ff1e3a87c2)
Theorem hlt_NEUTRAL_GCD : hl_neutral omega (fun m :e omega => fun n :e omega => hl_num_gcd (hl_pair omega omega m n)) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:2070 / MONOIDAL_GCD   (hash md5:171479be9128203b9ef60d7842e14527)
Theorem hlt_MONOIDAL_GCD : hl_monoidal omega (fun m :e omega => fun n :e omega => hl_num_gcd (hl_pair omega omega m n)) = 1.
Admitted.

// HOL Light: Library/prime.ml:2075 / NEUTRAL_LCM   (hash md5:d90a343b1f0f9ad9ee958ec578b41fdc)
Theorem hlt_NEUTRAL_LCM : hl_neutral omega (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:2079 / MONOIDAL_LCM   (hash md5:7e005894afe2d6b9ab7ddc65f4513569)
Theorem hlt_MONOIDAL_LCM : hl_monoidal omega (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) = 1.
Admitted.

// HOL Light: Library/prime.ml:2084 / ITERATE_GCD_DIVIDES   (hash md5:cad68caf2963b569facbf8816dcb8ed8)
Theorem hlt_ITERATE_GCD_DIVIDES : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall i :e K, hl_FINITE K k = 1 /\ hl_IN K i k = 1 -> hl_num_divides (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_gcd (hl_pair omega omega m n)) k f) (f i) = 1.
Admitted.

// HOL Light: Library/prime.ml:2093 / ITERATE_GCD_DIVIDES_EQ   (hash md5:5f345b3db7ceab088c2ee565fb7f08cb)
Theorem hlt_ITERATE_GCD_DIVIDES_EQ : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall i :e K, hl_IN K i k = 1 -> (hl_num_divides (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_gcd (hl_pair omega omega m n)) k f) (f i) = 1 <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_742 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_742 (if hl_IN K j k = 1 /\ ~ f j = hl_NUMERAL hl_zero then 1 else 0) j = 1 then 1 else 0)) = 1 \/ f i = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/prime.ml:2106 / DIVIDES_ITERATE_GCD   (hash md5:317e84498fa473a93e79b4ce1aa9ac4f)
Theorem hlt_DIVIDES_ITERATE_GCD : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall d :e omega, hl_FINITE K k = 1 -> (hl_num_divides d (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_gcd (hl_pair omega omega m n)) k f) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_num_divides d (f i) = 1).
Admitted.

// HOL Light: Library/prime.ml:2116 / DIVIDES_ITERATE_GCD_GEN   (hash md5:5f60d50878e96671c3c985a5f6b8aacf)
Theorem hlt_DIVIDES_ITERATE_GCD_GEN : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall d :e omega, hl_num_divides d (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_gcd (hl_pair omega omega m n)) k f) = 1 <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_743 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_743 (if hl_IN K j k = 1 /\ ~ f j = hl_NUMERAL hl_zero then 1 else 0) j = 1 then 1 else 0)) = 1 -> forall i :e K, hl_IN K i k = 1 -> hl_num_divides d (f i) = 1.
Admitted.

// HOL Light: Library/prime.ml:2126 / DIVIDES_ITERATE_LCM   (hash md5:883b7d42cf1a09a45e67030b99b57cdd)
Theorem hlt_DIVIDES_ITERATE_LCM : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall i :e K, hl_FINITE K k = 1 /\ hl_IN K i k = 1 -> hl_num_divides (f i) (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) k f) = 1.
Admitted.

// HOL Light: Library/prime.ml:2135 / DIVIDES_ITERATE_LCM_GEN   (hash md5:6c983b66a55d2033a072203fd1305d9e)
Theorem hlt_DIVIDES_ITERATE_LCM_GEN : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall i :e K, hl_IN K i k = 1 -> (hl_num_divides (f i) (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) k f) = 1 <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_744 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_744 (if hl_IN K j k = 1 /\ ~ f j = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) j = 1 then 1 else 0)) = 1 \/ f i = hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/prime.ml:2148 / ITERATE_LCM_DIVIDES   (hash md5:47218cf5d010d7bff79c188e671cbfc5)
Theorem hlt_ITERATE_LCM_DIVIDES : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall n :e omega, hl_FINITE K k = 1 -> (hl_num_divides (hl_iterate omega K (fun m :e omega => fun n1 :e omega => hl_num_lcm (hl_pair omega omega m n1)) k f) n = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_num_divides (f i) n = 1).
Admitted.

// HOL Light: Library/prime.ml:2158 / ITERATE_LCM_DIVIDES_GEN   (hash md5:73071d01e819aaffc36a2b54bd025824)
Theorem hlt_ITERATE_LCM_DIVIDES_GEN : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall n :e omega, hl_num_divides (hl_iterate omega K (fun m :e omega => fun n1 :e omega => hl_num_lcm (hl_pair omega omega m n1)) k f) n = 1 <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_745 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_745 (if hl_IN K j k = 1 /\ ~ f j = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) j = 1 then 1 else 0)) = 1 -> forall i :e K, hl_IN K i k = 1 -> hl_num_divides (f i) n = 1.
Admitted.

// HOL Light: Library/prime.ml:2167 / PRIMEPOW_DIVIDES_ITERATE_LCM   (hash md5:858d8755252a5ecbf92d8d2ae6187754)
Theorem hlt_PRIMEPOW_DIVIDES_ITERATE_LCM : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall p m :e omega, hl_FINITE K k = 1 /\ hl_prime p = 1 -> (hl_num_divides (hl_EXP p m) (hl_iterate omega K (fun m1 :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m1 n)) k f) = 1 <-> m = hl_NUMERAL hl_zero \/ exists i :e K, hl_IN K i k = 1 /\ hl_num_divides (hl_EXP p m) (f i) = 1).
Admitted.

// HOL Light: Library/prime.ml:2178 / PRIMEPOW_DIVIDES_ITERATE_LCM_GEN   (hash md5:d510a786cc7b772f9a876a677d0917e0)
Theorem hlt_PRIMEPOW_DIVIDES_ITERATE_LCM_GEN : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall p m :e omega, hl_prime p = 1 -> (hl_num_divides (hl_EXP p m) (hl_iterate omega K (fun m1 :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m1 n)) k f) = 1 <-> m = hl_NUMERAL hl_zero \/ hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_746 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_746 (if hl_IN K j k = 1 /\ ~ f j = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) j = 1 then 1 else 0)) = 1 /\ exists i :e K, hl_IN K i k = 1 /\ hl_num_divides (hl_EXP p m) (f i) = 1).
Admitted.

// HOL Light: Library/prime.ml:2193 / PRIME_DIVIDES_ITERATE_LCM_GEN   (hash md5:f969584edc34f74f707780b7aaec7edd)
Theorem hlt_PRIME_DIVIDES_ITERATE_LCM_GEN : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall p :e omega, hl_prime p = 1 -> (hl_num_divides p (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) k f) = 1 <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_747 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_747 (if hl_IN K j k = 1 /\ ~ f j = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) j = 1 then 1 else 0)) = 1 /\ exists i :e K, hl_IN K i k = 1 /\ hl_num_divides p (f i) = 1).
Admitted.

// HOL Light: Library/prime.ml:2204 / PRIME_DIVIDES_ITERATE_LCM   (hash md5:9e572dd489dc2fbb9b9c096d727619c5)
Theorem hlt_PRIME_DIVIDES_ITERATE_LCM : forall K:set, K <> Empty -> forall f :e omega :^: K, forall k :e 2 :^: K, forall p :e omega, hl_FINITE K k = 1 /\ hl_prime p = 1 -> (hl_num_divides p (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) k f) = 1 <-> exists i :e K, hl_IN K i k = 1 /\ hl_num_divides p (f i) = 1).
Admitted.

// HOL Light: Library/prime.ml:2211 / ITERATE_LCM_EQ_0_GEN   (hash md5:7c97e0a0c4be4434ecb7fbf6719d15c8)
Theorem hlt_ITERATE_LCM_EQ_0_GEN : forall K:set, K <> Empty -> forall k :e 2 :^: K, forall f :e omega :^: K, hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) k f = hl_NUMERAL hl_zero <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_750 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_750 (if hl_IN K j k = 1 /\ ~ f j = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) j = 1 then 1 else 0)) = 1 /\ exists j :e K, hl_IN K j k = 1 /\ f j = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:2232 / ITERATE_LCM_EQ_0   (hash md5:415a11b6ad2fb1253b2b4f1ef07acc50)
Theorem hlt_ITERATE_LCM_EQ_0 : forall K:set, K <> Empty -> forall k :e 2 :^: K, forall f :e omega :^: K, hl_FINITE K k = 1 -> (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) k f = hl_NUMERAL hl_zero <-> exists j :e K, hl_IN K j k = 1 /\ f j = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/prime.ml:2239 / ITERATE_LCM_EQ_1_GEN   (hash md5:9ff748a020a2fc7a461cbdb216e2c8b5)
Theorem hlt_ITERATE_LCM_EQ_1_GEN : forall K:set, K <> Empty -> forall k :e 2 :^: K, forall f :e omega :^: K, hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) k f = hl_NUMERAL (hl_BIT1 hl_zero) <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_753 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_753 (if hl_IN K j k = 1 /\ ~ f j = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) j = 1 then 1 else 0)) = 1 -> forall j :e K, hl_IN K j k = 1 -> f j = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/prime.ml:2256 / ITERATE_LCM_EQ_1   (hash md5:5fbfb640bd716708b008bad131380eb3)
Theorem hlt_ITERATE_LCM_EQ_1 : forall K:set, K <> Empty -> forall k :e 2 :^: K, forall f :e omega :^: K, hl_FINITE K k = 1 -> (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) k f = hl_NUMERAL (hl_BIT1 hl_zero) <-> forall j :e K, hl_IN K j k = 1 -> f j = hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/prime.ml:2263 / ITERATE_GCD_EQ_0_GEN   (hash md5:0dd6bb992669fab07e5a0abe0c785d21)
Theorem hlt_ITERATE_GCD_EQ_0_GEN : forall K:set, K <> Empty -> forall k :e 2 :^: K, forall f :e omega :^: K, hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_gcd (hl_pair omega omega m n)) k f = hl_NUMERAL hl_zero <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_756 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_756 (if hl_IN K j k = 1 /\ ~ f j = hl_NUMERAL hl_zero then 1 else 0) j = 1 then 1 else 0)) = 1 -> forall j :e K, hl_IN K j k = 1 -> f j = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/prime.ml:2280 / ITERATE_GCD_EQ_0   (hash md5:0ffd2408a8df5edc95373ced46e57390)
Theorem hlt_ITERATE_GCD_EQ_0 : forall K:set, K <> Empty -> forall k :e 2 :^: K, forall f :e omega :^: K, hl_FINITE K k = 1 -> (hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_gcd (hl_pair omega omega m n)) k f = hl_NUMERAL hl_zero <-> forall j :e K, hl_IN K j k = 1 -> f j = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/prime.ml:2291 / INDUCT_COPRIME   (hash md5:f3dee4423fd1870437b68cc3dfca1da5)
Theorem hlt_INDUCT_COPRIME : forall P :e 2 :^: omega, (forall a b :e omega, hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) a = 1 /\ (hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) b = 1 /\ (hl_num_coprime (hl_pair omega omega a b) = 1 /\ (P a = 1 /\ P b = 1))) -> P (hl_mul a b) = 1) /\ (forall p k :e omega, hl_prime p = 1 -> P (hl_EXP p k) = 1) -> forall n :e omega, hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> P n = 1.
Admitted.

// HOL Light: Library/prime.ml:2334 / INDUCT_COPRIME_STRONG   (hash md5:650cc80aeca2ebb1185dc288f6e49c8a)
Theorem hlt_INDUCT_COPRIME_STRONG : forall P :e 2 :^: omega, (forall a b :e omega, hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) a = 1 /\ (hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) b = 1 /\ (hl_num_coprime (hl_pair omega omega a b) = 1 /\ (P a = 1 /\ P b = 1))) -> P (hl_mul a b) = 1) /\ (forall p k :e omega, hl_prime p = 1 /\ ~ k = hl_NUMERAL hl_zero -> P (hl_EXP p k) = 1) -> forall n :e omega, hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> P n = 1.
Admitted.

// HOL Light: Library/prime.ml:2345 / INDUCT_COPRIME_ALT   (hash md5:ca332f98f6cef3af319ea46f5c02eaa0)
Theorem hlt_INDUCT_COPRIME_ALT : forall P :e 2 :^: omega, P (hl_NUMERAL hl_zero) = 1 /\ ((forall a b :e omega, hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) a = 1 /\ (hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) b = 1 /\ (hl_num_coprime (hl_pair omega omega a b) = 1 /\ (P a = 1 /\ P b = 1))) -> P (hl_mul a b) = 1) /\ (forall p k :e omega, hl_prime p = 1 -> P (hl_EXP p k) = 1)) -> forall n :e omega, P n = 1.
Admitted.

