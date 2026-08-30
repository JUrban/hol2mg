// hol2mg literal statements (private): shard pocklington of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/pocklington.ml:18 / nat_mod_lemma   (hash md5:a5834f0131b64a37074ae746636397d4)
Theorem hlt_nat_mod_lemma : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 /\ hl_le y x = 1 -> exists q :e omega, x = hl_add y (hl_mul n q).
Admitted.

// HOL Light: Library/pocklington.ml:28 / nat_mod   (hash md5:4bc6db4032bd0e3f5b60234fafe6cff0)
Theorem hlt_nat_mod : forall x y n :e omega, hl_num_mod n x y = 1 <-> exists q1 q2 :e omega, hl_add x (hl_mul n q1) = hl_add y (hl_mul n q2).
Admitted.

// HOL Light: Library/pocklington.ml:44 / FINITE_NUMBER_SEGMENT   (hash md5:2c90784697bc24fb5b7ffb07d63a1eb6)
Theorem hlt_FINITE_NUMBER_SEGMENT : forall n :e omega, hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_541 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_541 (if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_lt m n = 1 then 1 else 0) m = 1 then 1 else 0)) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:71 / CONG_MOD_0   (hash md5:414be93146136dd96c98a319d992e3a7)
Theorem hlt_CONG_MOD_0 : forall x y :e omega, hl_sym_3d3d omega x y (hl_num_mod (hl_NUMERAL hl_zero)) = 1 <-> x = y.
Admitted.

// HOL Light: Library/pocklington.ml:75 / CONG_MOD_1   (hash md5:c9ce1adca9bb9ceb98d7401888f93ef3)
Theorem hlt_CONG_MOD_1 : forall x y :e omega, hl_sym_3d3d omega x y (hl_num_mod (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:79 / CONG_MOD_2   (hash md5:a211a082acba9b0caf8fe39bb724ace1)
Theorem hlt_CONG_MOD_2 : forall a b :e omega, hl_sym_3d3d omega a b (hl_num_mod (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 <-> (hl_EVEN a = 1 <-> hl_EVEN b = 1).
Admitted.

// HOL Light: Library/pocklington.ml:86 / CONG_MOD_2_ALT   (hash md5:c8121f2412e42c9019170466602f2f73)
Theorem hlt_CONG_MOD_2_ALT : forall a b :e omega, hl_sym_3d3d omega a b (hl_num_mod (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 <-> (hl_ODD a = 1 <-> hl_ODD b = 1).
Admitted.

// HOL Light: Library/pocklington.ml:90 / CONG_0   (hash md5:1c6d81fa13fc7e50f3819deb864f98ee)
Theorem hlt_CONG_0 : forall x n :e omega, hl_sym_3d3d omega x (hl_NUMERAL hl_zero) (hl_num_mod n) = 1 <-> hl_num_divides n x = 1.
Admitted.

// HOL Light: Library/pocklington.ml:94 / CONG_SUB_CASES   (hash md5:281de86e54d178382c5855ebe1a7e679)
Theorem hlt_CONG_SUB_CASES : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 <-> hl_le x y = 1 /\ hl_sym_3d3d omega (hl_sub y x) (hl_NUMERAL hl_zero) (hl_num_mod n) = 1 \/ ~ hl_le x y = 1 /\ hl_sym_3d3d omega (hl_sub x y) (hl_NUMERAL hl_zero) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:104 / CONG_MINUS1   (hash md5:b74f1e0bfebc87d8520c5f696a6e8fe1)
Theorem hlt_CONG_MINUS1 : forall a n :e omega, hl_sym_3d3d omega a (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_num_mod n) = 1 <-> n = hl_NUMERAL hl_zero /\ a = hl_NUMERAL hl_zero \/ hl_num_divides n (hl_add a (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:112 / CONG_MINUS1_SQUARED   (hash md5:5c9da977fcfb51186a96d5877ed0ce2e)
Theorem hlt_CONG_MINUS1_SQUARED : forall p :e omega, hl_sym_3d3d omega (hl_EXP (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod p) = 1 <-> ~ p = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/pocklington.ml:122 / CONG_CASES   (hash md5:94c65c994ea3cb9f76ce9f028eb16604)
Theorem hlt_CONG_CASES : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 <-> (exists q :e omega, x = hl_add (hl_mul q n) y) \/ exists q :e omega, y = hl_add (hl_mul q n) x.
Admitted.

// HOL Light: Library/pocklington.ml:132 / CONG_CASE   (hash md5:146e8b09568d9444b7c001a267debbd9)
Theorem hlt_CONG_CASE : forall n a x :e omega, hl_lt a n = 1 -> (hl_sym_3d3d omega x a (hl_num_mod n) = 1 <-> exists q :e omega, x = hl_add (hl_mul q n) a).
Admitted.

// HOL Light: Library/pocklington.ml:139 / CONG_MULT_LCANCEL   (hash md5:605b7e0432e533d3bc734333191e19f9)
Theorem hlt_CONG_MULT_LCANCEL : forall a n x y :e omega, hl_num_coprime (hl_pair omega omega a n) = 1 /\ hl_sym_3d3d omega (hl_mul a x) (hl_mul a y) (hl_num_mod n) = 1 -> hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:143 / CONG_MULT_RCANCEL   (hash md5:1044cdebac6369deed79df16ae1b7ce1)
Theorem hlt_CONG_MULT_RCANCEL : forall a n x y :e omega, hl_num_coprime (hl_pair omega omega a n) = 1 /\ hl_sym_3d3d omega (hl_mul x a) (hl_mul y a) (hl_num_mod n) = 1 -> hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:147 / CONG_REFL   (hash md5:9e1c450fc5dcd58a9425f52e1746780d)
Theorem hlt_CONG_REFL : forall x n :e omega, hl_sym_3d3d omega x x (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:151 / EQ_IMP_CONG   (hash md5:9d70fa76583447e90be1578744f0bba0)
Theorem hlt_EQ_IMP_CONG : forall a b n :e omega, a = b -> hl_sym_3d3d omega a b (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:155 / CONG_SYM   (hash md5:663378a217c3b8e1206911c5dd10bea8)
Theorem hlt_CONG_SYM : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 <-> hl_sym_3d3d omega y x (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:159 / CONG_TRANS   (hash md5:84a463fcebae5f1a578d70cd9fbd8d2e)
Theorem hlt_CONG_TRANS : forall x y z n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 /\ hl_sym_3d3d omega y z (hl_num_mod n) = 1 -> hl_sym_3d3d omega x z (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:163 / CONG_ADD   (hash md5:db4ce763c3d545e9b050249ab8a33eb6)
Theorem hlt_CONG_ADD : forall n x x' y y' :e omega, hl_sym_3d3d omega x x' (hl_num_mod n) = 1 /\ hl_sym_3d3d omega y y' (hl_num_mod n) = 1 -> hl_sym_3d3d omega (hl_add x y) (hl_add x' y') (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:168 / CONG_MULT   (hash md5:bdadb70718fe59c3ce6c27e4ce96e054)
Theorem hlt_CONG_MULT : forall n x x' y y' :e omega, hl_sym_3d3d omega x x' (hl_num_mod n) = 1 /\ hl_sym_3d3d omega y y' (hl_num_mod n) = 1 -> hl_sym_3d3d omega (hl_mul x y) (hl_mul x' y') (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:173 / CONG_MULT_1   (hash md5:036d1042b1a9a672ef1939e12817ce84)
Theorem hlt_CONG_MULT_1 : forall n x y :e omega, hl_sym_3d3d omega x (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ hl_sym_3d3d omega y (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 -> hl_sym_3d3d omega (hl_mul x y) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:177 / CONG_EXP   (hash md5:9e2887c4182e7fb59eaa6c7a80e46065)
Theorem hlt_CONG_EXP : forall n k x y :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 -> hl_sym_3d3d omega (hl_EXP x k) (hl_EXP y k) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:181 / CONG_EXP_1   (hash md5:8b43b4e38d8d8b92c8fe0113f35f5c01)
Theorem hlt_CONG_EXP_1 : forall x n k :e omega, hl_sym_3d3d omega x (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 -> hl_sym_3d3d omega (hl_EXP x k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:187 / CONG_SUB   (hash md5:91a9ae27fabfd92b604c6645cc633235)
Theorem hlt_CONG_SUB : forall n x x' y y' :e omega, hl_sym_3d3d omega x x' (hl_num_mod n) = 1 /\ (hl_sym_3d3d omega y y' (hl_num_mod n) = 1 /\ (hl_le y x = 1 /\ hl_le y' x' = 1)) -> hl_sym_3d3d omega (hl_sub x y) (hl_sub x' y') (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:199 / CONG_MULT_LCANCEL_EQ   (hash md5:7dc652ced090270bba2cf6ae7b207376)
Theorem hlt_CONG_MULT_LCANCEL_EQ : forall a n x y :e omega, hl_num_coprime (hl_pair omega omega a n) = 1 -> (hl_sym_3d3d omega (hl_mul a x) (hl_mul a y) (hl_num_mod n) = 1 <-> hl_sym_3d3d omega x y (hl_num_mod n) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:203 / CONG_MULT_RCANCEL_EQ   (hash md5:38a0dc7342d1b1e0f0e97d9f5ac09690)
Theorem hlt_CONG_MULT_RCANCEL_EQ : forall a n x y :e omega, hl_num_coprime (hl_pair omega omega a n) = 1 -> (hl_sym_3d3d omega (hl_mul x a) (hl_mul y a) (hl_num_mod n) = 1 <-> hl_sym_3d3d omega x y (hl_num_mod n) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:207 / CONG_ADD_LCANCEL_EQ   (hash md5:a059b993700e1729259d9b68a0e2fa61)
Theorem hlt_CONG_ADD_LCANCEL_EQ : forall a n x y :e omega, hl_sym_3d3d omega (hl_add a x) (hl_add a y) (hl_num_mod n) = 1 <-> hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:211 / CONG_ADD_RCANCEL_EQ   (hash md5:f6ecde254c5af9b3c7525c3b3fb32198)
Theorem hlt_CONG_ADD_RCANCEL_EQ : forall a n x y :e omega, hl_sym_3d3d omega (hl_add x a) (hl_add y a) (hl_num_mod n) = 1 <-> hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:215 / CONG_ADD_RCANCEL   (hash md5:4012deb56091a0c222289ffaac374cff)
Theorem hlt_CONG_ADD_RCANCEL : forall a n x y :e omega, hl_sym_3d3d omega (hl_add x a) (hl_add y a) (hl_num_mod n) = 1 -> hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:219 / CONG_ADD_LCANCEL   (hash md5:2f9b28796917f59731cd538a804c3760)
Theorem hlt_CONG_ADD_LCANCEL : forall a n x y :e omega, hl_sym_3d3d omega (hl_add a x) (hl_add a y) (hl_num_mod n) = 1 -> hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:223 / CONG_ADD_LCANCEL_EQ_0   (hash md5:01bd393825504b1b4fc705a5d59c2066)
Theorem hlt_CONG_ADD_LCANCEL_EQ_0 : forall a n x :e omega, hl_sym_3d3d omega (hl_add a x) a (hl_num_mod n) = 1 <-> hl_sym_3d3d omega x (hl_NUMERAL hl_zero) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:227 / CONG_ADD_RCANCEL_EQ_0   (hash md5:34b793aacf8bd09eadf36ee87d1b2c90)
Theorem hlt_CONG_ADD_RCANCEL_EQ_0 : forall a n x :e omega, hl_sym_3d3d omega (hl_add x a) a (hl_num_mod n) = 1 <-> hl_sym_3d3d omega x (hl_NUMERAL hl_zero) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:231 / CONG_MULT_LCANCEL_ALL   (hash md5:90c807fde60cf41a7a51a8c84cf64123)
Theorem hlt_CONG_MULT_LCANCEL_ALL : forall a x y n :e omega, hl_sym_3d3d omega (hl_mul a x) (hl_mul a y) (hl_num_mod (hl_mul a n)) = 1 <-> a = hl_NUMERAL hl_zero \/ hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:236 / CONG_LMUL   (hash md5:7cf1ca9d8d9c6be67bbc960fa6b6ceb6)
Theorem hlt_CONG_LMUL : forall a x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 -> hl_sym_3d3d omega (hl_mul a x) (hl_mul a y) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:239 / CONG_RMUL   (hash md5:58869e089af5d572d1c4d824a2687aa1)
Theorem hlt_CONG_RMUL : forall x y a n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 -> hl_sym_3d3d omega (hl_mul x a) (hl_mul y a) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:242 / CONG_IMP_EQ   (hash md5:ad8a4415e016158fa9141be20dc44156)
Theorem hlt_CONG_IMP_EQ : forall x y n :e omega, hl_lt x n = 1 /\ (hl_lt y n = 1 /\ hl_sym_3d3d omega x y (hl_num_mod n) = 1) -> x = y.
Admitted.

// HOL Light: Library/pocklington.ml:247 / CONG_DIVIDES_MODULUS   (hash md5:303ad8f4cc3830fe1d656191e70f5f04)
Theorem hlt_CONG_DIVIDES_MODULUS : forall x y m n :e omega, hl_sym_3d3d omega x y (hl_num_mod m) = 1 /\ hl_num_divides n m = 1 -> hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:251 / CONG_0_DIVIDES   (hash md5:3c22b3e6d16c5b5a1b36f7e2bb97a4e7)
Theorem hlt_CONG_0_DIVIDES : forall n x :e omega, hl_sym_3d3d omega x (hl_NUMERAL hl_zero) (hl_num_mod n) = 1 <-> hl_num_divides n x = 1.
Admitted.

// HOL Light: Library/pocklington.ml:255 / CONG_1_DIVIDES   (hash md5:9357f64c7cb760e1c647e3420cd470ea)
Theorem hlt_CONG_1_DIVIDES : forall n x :e omega, hl_sym_3d3d omega x (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 -> hl_num_divides n (hl_sub x (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:265 / CONG_1_DIVIDES_EQ   (hash md5:949862b53d68d313ac6e4b27f45f2f81)
Theorem hlt_CONG_1_DIVIDES_EQ : forall n x :e omega, hl_sym_3d3d omega x (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> (x = hl_NUMERAL hl_zero -> n = hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_num_divides n (hl_sub x (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:273 / CONG_DIVIDES   (hash md5:69a14e56d045bb8a87429a2830357929)
Theorem hlt_CONG_DIVIDES : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 -> (hl_num_divides n x = 1 <-> hl_num_divides n y = 1).
Admitted.

// HOL Light: Library/pocklington.ml:277 / CONG_COPRIME   (hash md5:c62118c4eda8e8b21504ea066eac90c1)
Theorem hlt_CONG_COPRIME : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 -> (hl_num_coprime (hl_pair omega omega n x) = 1 <-> hl_num_coprime (hl_pair omega omega n y) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:281 / CONG_GCD_RIGHT   (hash md5:2ea83fb4a9420bb5ba7c7426256ec282)
Theorem hlt_CONG_GCD_RIGHT : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 -> hl_num_gcd (hl_pair omega omega n x) = hl_num_gcd (hl_pair omega omega n y).
Admitted.

// HOL Light: Library/pocklington.ml:285 / CONG_GCD_LEFT   (hash md5:f7eed3f9dc3598eecac50f0fbfbca958)
Theorem hlt_CONG_GCD_LEFT : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 -> hl_num_gcd (hl_pair omega omega x n) = hl_num_gcd (hl_pair omega omega y n).
Admitted.

// HOL Light: Library/pocklington.ml:289 / CONG_MOD   (hash md5:475aa1ed5fbd2df21c2f6e639acd412e)
Theorem hlt_CONG_MOD : forall a n :e omega, hl_sym_3d3d omega (hl_MOD a n) a (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:301 / MOD_MULT_CONG   (hash md5:b866f731e7708f0f8e6275d1732d228b)
Theorem hlt_MOD_MULT_CONG : forall a b x y :e omega, hl_sym_3d3d omega (hl_MOD x (hl_mul a b)) y (hl_num_mod a) = 1 <-> hl_sym_3d3d omega x y (hl_num_mod a) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:308 / CONG_MOD_LT   (hash md5:199855e32ab1292cd0704deba41226c0)
Theorem hlt_CONG_MOD_LT : forall n x y :e omega, hl_lt y n = 1 -> (hl_MOD x n = y <-> hl_sym_3d3d omega x y (hl_num_mod n) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:312 / MOD_UNIQUE   (hash md5:382b08083884d83595de31174771a9d7)
Theorem hlt_MOD_UNIQUE : forall m n p :e omega, hl_MOD m n = p <-> (n = hl_NUMERAL hl_zero /\ m = p \/ hl_lt p n = 1) /\ hl_sym_3d3d omega m p (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:319 / CONG_DIV   (hash md5:d4573725a8f5cae31b0cc00133974324)
Theorem hlt_CONG_DIV : forall m n a b :e omega, ~ m = hl_NUMERAL hl_zero /\ hl_sym_3d3d omega a (hl_mul m b) (hl_num_mod (hl_mul m n)) = 1 -> hl_sym_3d3d omega (hl_DIV a m) b (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:324 / CONG_DIV_COPRIME   (hash md5:12f33a0466d6e2a3106041617cd31cd1)
Theorem hlt_CONG_DIV_COPRIME : forall m n a b :e omega, hl_num_coprime (hl_pair omega omega m n) = 1 /\ (hl_num_divides m a = 1 /\ hl_sym_3d3d omega a (hl_mul m b) (hl_num_mod n) = 1) -> hl_sym_3d3d omega (hl_DIV a m) b (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:333 / CONG_SQUARE_1_PRIME_POWER   (hash md5:32b08a8019e8f01054b75e0f652320df)
Theorem hlt_CONG_SQUARE_1_PRIME_POWER : forall p k x :e omega, hl_prime p = 1 /\ ~ p = hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)) -> (hl_sym_3d3d omega (hl_EXP x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod (hl_EXP p k)) = 1 <-> hl_sym_3d3d omega x (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod (hl_EXP p k)) = 1 \/ hl_sym_3d3d omega x (hl_sub (hl_EXP p k) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_num_mod (hl_EXP p k)) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:361 / CONG_LT   (hash md5:70ac40442af5de4e3cabd2908a989991)
Theorem hlt_CONG_LT : forall x y n :e omega, hl_lt y n = 1 -> (hl_sym_3d3d omega x y (hl_num_mod n) = 1 <-> exists d :e omega, x = hl_add (hl_mul d n) y).
Admitted.

// HOL Light: Library/pocklington.ml:381 / CONG_LE   (hash md5:a2259a3481231ebcb73d394274c552a8)
Theorem hlt_CONG_LE : forall x y n :e omega, hl_le y x = 1 -> (hl_sym_3d3d omega x y (hl_num_mod n) = 1 <-> exists q :e omega, x = hl_add (hl_mul q n) y).
Admitted.

// HOL Light: Library/pocklington.ml:387 / CONG_TO_1   (hash md5:814a44ab1702a9d302e4af9e93418443)
Theorem hlt_CONG_TO_1 : forall a n :e omega, hl_sym_3d3d omega a (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> a = hl_NUMERAL hl_zero /\ n = hl_NUMERAL (hl_BIT1 hl_zero) \/ exists m :e omega, a = hl_add (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_mul m n).
Admitted.

// HOL Light: Library/pocklington.ml:400 / EVEN_MOD_2   (hash md5:340a9cac4fe69bc839f3661b2ad8b08d)
Theorem hlt_EVEN_MOD_2 : forall n :e omega, hl_EVEN n = 1 <-> hl_sym_3d3d omega n (hl_NUMERAL hl_zero) (hl_num_mod (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:404 / ODD_MOD_2   (hash md5:6a7ad2d9147390593bdbbdbca7727f19)
Theorem hlt_ODD_MOD_2 : forall n :e omega, hl_ODD n = 1 <-> hl_sym_3d3d omega n (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:427 / CONG_SOLVE_EQ   (hash md5:64eac60a38ae5a5469af73a227dacc8b)
Theorem hlt_CONG_SOLVE_EQ : forall n a b :e omega, (exists x :e omega, hl_sym_3d3d omega (hl_mul a x) b (hl_num_mod n) = 1) <-> hl_num_divides (hl_num_gcd (hl_pair omega omega a n)) b = 1.
Admitted.

// HOL Light: Library/pocklington.ml:438 / CONG_SOLVE_LT_EQ   (hash md5:cca5927181b354b1ce8f19ddcac0ef10)
Theorem hlt_CONG_SOLVE_LT_EQ : forall n a b :e omega, (exists x :e omega, hl_lt x n = 1 /\ hl_sym_3d3d omega (hl_mul a x) b (hl_num_mod n) = 1) <-> ~ n = hl_NUMERAL hl_zero /\ hl_num_divides (hl_num_gcd (hl_pair omega omega a n)) b = 1.
Admitted.

// HOL Light: Library/pocklington.ml:450 / CONG_SOLVE   (hash md5:af844c90402d8ca99dda4ac7bd72f878)
Theorem hlt_CONG_SOLVE : forall a b n :e omega, hl_num_coprime (hl_pair omega omega a n) = 1 -> exists x :e omega, hl_sym_3d3d omega (hl_mul a x) b (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:454 / CONG_SOLVE_UNIQUE   (hash md5:2922c6ed6668e2341ee1ee75ca82bd7d)
Theorem hlt_CONG_SOLVE_UNIQUE : forall a b n :e omega, hl_num_coprime (hl_pair omega omega a n) = 1 /\ ~ n = hl_NUMERAL hl_zero -> hl_exists_unique omega (fun x :e omega => if hl_lt x n = 1 /\ hl_sym_3d3d omega (hl_mul a x) b (hl_num_mod n) = 1 then 1 else 0) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:472 / CONG_SOLVE_UNIQUE_NONTRIVIAL   (hash md5:26c776dadfd544827cfcb1ffd630700a)
Theorem hlt_CONG_SOLVE_UNIQUE_NONTRIVIAL : forall a p x :e omega, hl_prime p = 1 /\ (hl_num_coprime (hl_pair omega omega p a) = 1 /\ (hl_lt (hl_NUMERAL hl_zero) x = 1 /\ hl_lt x p = 1)) -> hl_exists_unique omega (fun y :e omega => if hl_lt (hl_NUMERAL hl_zero) y = 1 /\ (hl_lt y p = 1 /\ hl_sym_3d3d omega (hl_mul x y) a (hl_num_mod p) = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:497 / CONG_UNIQUE_INVERSE_PRIME   (hash md5:208d6027904a87eaf03e40492c2b68ca)
Theorem hlt_CONG_UNIQUE_INVERSE_PRIME : forall p x :e omega, hl_prime p = 1 /\ (hl_lt (hl_NUMERAL hl_zero) x = 1 /\ hl_lt x p = 1) -> hl_exists_unique omega (fun y :e omega => if hl_lt (hl_NUMERAL hl_zero) y = 1 /\ (hl_lt y p = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod p) = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:503 / COUNT_CONG_SOLVE_SIMPLE   (hash md5:5c6019822b74248f11629e80d04fab10)
Theorem hlt_COUNT_CONG_SOLVE_SIMPLE : forall m n b :e omega, hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_544 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_544 (if hl_lt x (hl_mul m n) = 1 /\ hl_sym_3d3d omega x b (hl_num_mod n) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_COND omega (if n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL hl_zero) m) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:527 / COUNT_CONG_SOLVE_GEN   (hash md5:15c38c082b3e0e4264ad3b1a92425dbd)
Theorem hlt_COUNT_CONG_SOLVE_GEN : forall m n a b :e omega, hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_546 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_546 (if hl_lt x (hl_mul m n) = 1 /\ hl_sym_3d3d omega (hl_mul a x) b (hl_num_mod n) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_COND omega (if ~ n = hl_NUMERAL hl_zero /\ hl_num_divides (hl_num_gcd (hl_pair omega omega n a)) b = 1 then 1 else 0) (hl_mul m (hl_num_gcd (hl_pair omega omega n a))) (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:553 / COUNT_CONG_SOLVE   (hash md5:bb35628505915160d06ce9ba77ad5b1a)
Theorem hlt_COUNT_CONG_SOLVE : forall n a b :e omega, hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_547 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_547 (if hl_lt x n = 1 /\ hl_sym_3d3d omega (hl_mul a x) b (hl_num_mod n) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_COND omega (if ~ n = hl_NUMERAL hl_zero /\ hl_num_divides (hl_num_gcd (hl_pair omega omega n a)) b = 1 then 1 else 0) (hl_num_gcd (hl_pair omega omega n a)) (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:563 / CONG_CHINESE   (hash md5:499626f1935e2b1f0d66879e98d50f85)
Theorem hlt_CONG_CHINESE : forall a b x y :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ (hl_sym_3d3d omega x y (hl_num_mod a) = 1 /\ hl_sym_3d3d omega x y (hl_num_mod b) = 1) -> hl_sym_3d3d omega x y (hl_num_mod (hl_mul a b)) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:568 / CHINESE_REMAINDER_UNIQUE   (hash md5:d5530470c7ea0920762d6d81811eee81)
Theorem hlt_CHINESE_REMAINDER_UNIQUE : forall a b m n :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ (~ a = hl_NUMERAL hl_zero /\ ~ b = hl_NUMERAL hl_zero) -> hl_exists_unique omega (fun x :e omega => if hl_lt x (hl_mul a b) = 1 /\ (hl_sym_3d3d omega x m (hl_num_mod a) = 1 /\ hl_sym_3d3d omega x n (hl_num_mod b) = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:589 / CHINESE_REMAINDER_COPRIME_UNIQUE   (hash md5:19c3e108e1f2663432a8c0875774a5e1)
Theorem hlt_CHINESE_REMAINDER_COPRIME_UNIQUE : forall a b m n :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ (~ a = hl_NUMERAL hl_zero /\ (~ b = hl_NUMERAL hl_zero /\ (hl_num_coprime (hl_pair omega omega m a) = 1 /\ hl_num_coprime (hl_pair omega omega n b) = 1))) -> hl_exists_unique omega (fun x :e omega => if hl_num_coprime (hl_pair omega omega x (hl_mul a b)) = 1 /\ (hl_lt x (hl_mul a b) = 1 /\ (hl_sym_3d3d omega x m (hl_num_mod a) = 1 /\ hl_sym_3d3d omega x n (hl_num_mod b) = 1)) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:601 / CHINESE_REMAINDER_USUAL   (hash md5:59e019bd3588e3742ee86274ec5f6a99)
Theorem hlt_CHINESE_REMAINDER_USUAL : forall a b u v :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> exists x :e omega, hl_sym_3d3d omega x u (hl_num_mod a) = 1 /\ hl_sym_3d3d omega x v (hl_num_mod b) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:613 / CONG_CHINESE_EQ   (hash md5:1c416ef4341539f266c11d15cbb341cf)
Theorem hlt_CONG_CHINESE_EQ : forall a b x y :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> (hl_sym_3d3d omega x y (hl_num_mod (hl_mul a b)) = 1 <-> hl_sym_3d3d omega x y (hl_num_mod a) = 1 /\ hl_sym_3d3d omega x y (hl_num_mod b) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:619 / CHINESE_REMAINDER_COUNT   (hash md5:fdf67b8d39568bb091528287d3ae54fb)
Theorem hlt_CHINESE_REMAINDER_COUNT : forall P Q R1 :e 2 :^: omega, forall a b m n :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ ((forall x :e omega, hl_lt x (hl_mul a b) = 1 -> (R1 x = 1 <-> P (hl_MOD x a) = 1 /\ Q (hl_MOD x b) = 1)) /\ (hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_548 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_548 (if hl_lt x a = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) m = 1 /\ hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_549 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_549 (if hl_lt x b = 1 /\ Q x = 1 then 1 else 0) x = 1 then 1 else 0)) n = 1)) -> hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_550 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_550 (if hl_lt x (hl_mul a b) = 1 /\ R1 x = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_mul m n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:661 / CHINESE_REMAINDER_COPRIME_COUNT   (hash md5:f8a62dd3b973113260c24dc268817f13)
Theorem hlt_CHINESE_REMAINDER_COPRIME_COUNT : forall P Q R1 :e 2 :^: omega, forall a b m n :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ ((forall x :e omega, hl_lt x (hl_mul a b) = 1 -> (R1 x = 1 <-> P (hl_MOD x a) = 1 /\ Q (hl_MOD x b) = 1)) /\ (hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_551 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_551 (if hl_lt x a = 1 /\ (hl_num_coprime (hl_pair omega omega a x) = 1 /\ P x = 1) then 1 else 0) x = 1 then 1 else 0)) m = 1 /\ hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_552 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_552 (if hl_lt x b = 1 /\ (hl_num_coprime (hl_pair omega omega b x) = 1 /\ Q x = 1) then 1 else 0) x = 1 then 1 else 0)) n = 1)) -> hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_553 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_553 (if hl_lt x (hl_mul a b) = 1 /\ (hl_num_coprime (hl_pair omega omega (hl_mul a b) x) = 1 /\ R1 x = 1) then 1 else 0) x = 1 then 1 else 0)) (hl_mul m n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:676 / COUNT_ROOTS_MODULO_COPRIME   (hash md5:05567242f1543f3b56a0a9467a29e9c2)
Theorem hlt_COUNT_ROOTS_MODULO_COPRIME : forall a b k m n :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 /\ (hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_554 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_554 (if hl_lt x a = 1 /\ hl_sym_3d3d omega (hl_EXP x k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod a) = 1 then 1 else 0) x = 1 then 1 else 0)) m = 1 /\ hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_555 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_555 (if hl_lt x b = 1 /\ hl_sym_3d3d omega (hl_EXP x k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod b) = 1 then 1 else 0) x = 1 then 1 else 0)) n = 1) -> hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_556 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_556 (if hl_lt x (hl_mul a b) = 1 /\ hl_sym_3d3d omega (hl_EXP x k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod (hl_mul a b)) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_mul m n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:695 / inverse_mod   (hash md5:de62fd66c0ff5498e18c38cd361412e3)
Theorem hlt_inverse_mod_thm : forall x n :e omega, hl_inverse_mod n x = hl_COND omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/pocklington.ml:700 / INVERSE_MOD_BOUND   (hash md5:1e1c73984911cc14f58cf9fcbedc0e05)
Theorem hlt_INVERSE_MOD_BOUND : forall n x :e omega, hl_lt (hl_inverse_mod n x) n = 1 <-> hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:700 / INVERSE_MOD_RMUL_GEN   (hash md5:12e5bfcac5377ac629faf9f3c849c96a)
Theorem hlt_INVERSE_MOD_RMUL_GEN : forall n x :e omega, hl_sym_3d3d omega (hl_mul x (hl_inverse_mod n x)) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:713 / INVERSE_MOD_LMUL_GEN   (hash md5:9c3ebd316ca0044dcfd0b9f788a580bb)
Theorem hlt_INVERSE_MOD_LMUL_GEN : forall n x :e omega, hl_sym_3d3d omega (hl_mul (hl_inverse_mod n x) x) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:717 / INVERSE_MOD_RMUL_EQ   (hash md5:8043b93abdc04ebea154d29b06adb3cc)
Theorem hlt_INVERSE_MOD_RMUL_EQ : forall n x :e omega, hl_sym_3d3d omega (hl_mul x (hl_inverse_mod n x)) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_coprime (hl_pair omega omega n x) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:723 / INVERSE_MOD_LMUL_EQ   (hash md5:d53e49634a2f5f30ea4b4c299633b0c7)
Theorem hlt_INVERSE_MOD_LMUL_EQ : forall n x :e omega, hl_sym_3d3d omega (hl_mul (hl_inverse_mod n x) x) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_coprime (hl_pair omega omega n x) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:727 / INVERSE_MOD_LMUL   (hash md5:9d6cc29263f66790b019942dd3b31503)
Theorem hlt_INVERSE_MOD_LMUL : forall n x :e omega, hl_num_coprime (hl_pair omega omega n x) = 1 -> hl_sym_3d3d omega (hl_mul (hl_inverse_mod n x) x) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:731 / INVERSE_MOD_RMUL   (hash md5:bdba7a936da45ad9579e198e2b32a1ee)
Theorem hlt_INVERSE_MOD_RMUL : forall n x :e omega, hl_num_coprime (hl_pair omega omega n x) = 1 -> hl_sym_3d3d omega (hl_mul x (hl_inverse_mod n x)) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:735 / INVERSE_MOD_UNIQUE   (hash md5:b99a7a30262261ff94cea8d9ab7507ec)
Theorem hlt_INVERSE_MOD_UNIQUE : forall n a x :e omega, hl_sym_3d3d omega (hl_mul a x) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ (hl_le x n = 1 /\ ~ (n = hl_NUMERAL (hl_BIT1 hl_zero) /\ x = hl_NUMERAL hl_zero)) -> hl_inverse_mod n a = x.
Admitted.

// HOL Light: Library/pocklington.ml:757 / INVERSE_MOD_1   (hash md5:8cc99f513c364854491208cea1ca1c68)
Theorem hlt_INVERSE_MOD_1 : forall n :e omega, hl_inverse_mod n (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/pocklington.ml:764 / INVERSE_MOD_CONG   (hash md5:98d06f9abbdffd32b01d2506bd83c4f8)
Theorem hlt_INVERSE_MOD_CONG : forall n x y :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 -> hl_inverse_mod n x = hl_inverse_mod n y.
Admitted.

// HOL Light: Library/pocklington.ml:772 / INVERSE_MOD_INVERSE_MOD_CONG   (hash md5:ff45573fc2bece297325c82fff5c033d)
Theorem hlt_INVERSE_MOD_INVERSE_MOD_CONG : forall n x :e omega, hl_num_coprime (hl_pair omega omega n x) = 1 -> hl_sym_3d3d omega (hl_inverse_mod n (hl_inverse_mod n x)) x (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:784 / INVERSE_MOD_INVERSE_MOD   (hash md5:2e7161c3af0cf1c8c9e16bbb2f1b25c4)
Theorem hlt_INVERSE_MOD_INVERSE_MOD : forall n x :e omega, hl_num_coprime (hl_pair omega omega n x) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) x = 1 /\ hl_le x n = 1) -> hl_inverse_mod n (hl_inverse_mod n x) = x.
Admitted.

// HOL Light: Library/pocklington.ml:790 / INVERSE_MOD_NONZERO_ALT   (hash md5:8754fa5885824e1e904b00857046d94e)
Theorem hlt_INVERSE_MOD_NONZERO_ALT : forall n a :e omega, ~ hl_num_divides n a = 1 -> ~ hl_inverse_mod n a = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/pocklington.ml:797 / INVERSE_MOD_NONZERO   (hash md5:aa2adca935d59a66328f7ec732426159)
Theorem hlt_INVERSE_MOD_NONZERO : forall n a :e omega, hl_num_coprime (hl_pair omega omega n a) = 1 -> ~ hl_inverse_mod n a = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/pocklington.ml:805 / INVERSE_MOD_BOUND_LE   (hash md5:5da9224d0f1969b17d0a69eb3f90cda6)
Theorem hlt_INVERSE_MOD_BOUND_LE : forall n a :e omega, hl_le (hl_inverse_mod n a) n = 1 <-> ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/pocklington.ml:810 / INVERSE_MOD_INVERSION   (hash md5:3bc45133d7b6d3bb5a92f8c367df6bcd)
Theorem hlt_INVERSE_MOD_INVERSION : forall m n :e omega, hl_num_coprime (hl_pair omega omega m n) = 1 -> hl_add (hl_mul m (hl_inverse_mod n m)) (hl_mul n (hl_inverse_mod m n)) = hl_add (hl_mul m n) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/pocklington.ml:877 / squarefree   (hash md5:2adc171740ca003c25044f1f1ba5fb6c)
Theorem hlt_squarefree : forall n :e omega, hl_squarefree n = 1 <-> forall m :e omega, hl_num_divides (hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1 -> m = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/pocklington.ml:880 / SQUAREFREE_0   (hash md5:e252e335007c9fd015533a5f3caf6215)
Theorem hlt_SQUAREFREE_0 : ~ hl_squarefree (hl_NUMERAL hl_zero) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:884 / SQUAREFREE_1   (hash md5:adc4b4418294eb62f4096083986f9950)
Theorem hlt_SQUAREFREE_1 : hl_squarefree (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:888 / SQUAREFREE_IMP_NZ   (hash md5:d444cec39069199664f492c23e46c5b3)
Theorem hlt_SQUAREFREE_IMP_NZ : forall n :e omega, hl_squarefree n = 1 -> ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/pocklington.ml:892 / SQUAREFREE_PRIME   (hash md5:12dd5adc8d026bc1e9524d67b11c748d)
Theorem hlt_SQUAREFREE_PRIME : forall n :e omega, hl_squarefree n = 1 <-> forall p :e omega, hl_prime p = 1 -> ~ hl_num_divides (hl_EXP p (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:892 / SQUAREFREE_PRIME_DIVISOR   (hash md5:a9ae1afbe470f7ebcf142f75429857ce)
Theorem hlt_SQUAREFREE_PRIME_DIVISOR : forall n :e omega, hl_squarefree n = 1 <-> forall p :e omega, hl_prime p = 1 /\ hl_num_divides p n = 1 -> ~ hl_num_divides (hl_EXP p (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:909 / SQUAREFREE_INDEX   (hash md5:af70d54886ededb2e81f275473b6c067)
Theorem hlt_SQUAREFREE_INDEX : forall n :e omega, hl_squarefree n = 1 <-> ~ n = hl_NUMERAL hl_zero /\ forall m :e omega, hl_le (hl_index m n) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:920 / SQUAREFREE_PRIME_INDEX   (hash md5:963e3b1b1f51d1f9c5638eaa78e672a3)
Theorem hlt_SQUAREFREE_PRIME_INDEX : forall n :e omega, hl_squarefree n = 1 <-> ~ n = hl_NUMERAL hl_zero /\ forall p :e omega, hl_prime p = 1 -> hl_le (hl_index p n) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:929 / SQUAREFREE_COPRIME   (hash md5:4b183b13bffe93aa3806d68af7db1383)
Theorem hlt_SQUAREFREE_COPRIME : forall n :e omega, hl_squarefree n = 1 <-> forall a b :e omega, hl_mul a b = n -> hl_num_coprime (hl_pair omega omega a b) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:929 / SQUAREFREE_COPRIME_DIVISORS   (hash md5:3fa079caf7281880280beac467fe2a5a)
Theorem hlt_SQUAREFREE_COPRIME_DIVISORS : forall n :e omega, hl_squarefree n = 1 <-> forall a b :e omega, hl_num_divides (hl_mul a b) n = 1 -> hl_num_coprime (hl_pair omega omega a b) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:941 / SQUAREFREE_DIVISOR   (hash md5:8355e075d0b3e2c000638fb3ac832002)
Theorem hlt_SQUAREFREE_DIVISOR : forall m n :e omega, hl_squarefree n = 1 /\ hl_num_divides m n = 1 -> hl_squarefree m = 1.
Admitted.

// HOL Light: Library/pocklington.ml:947 / PRIME_IMP_SQUAREFREE   (hash md5:685e4fc9136e3016421fdd658e9bc2f1)
Theorem hlt_PRIME_IMP_SQUAREFREE : forall p :e omega, hl_prime p = 1 -> hl_squarefree p = 1.
Admitted.

// HOL Light: Library/pocklington.ml:956 / SQUAREFREE_MUL   (hash md5:2834a8b187f7b5dc8a7ad6eb05cba788)
Theorem hlt_SQUAREFREE_MUL : forall m n :e omega, hl_squarefree (hl_mul m n) = 1 <-> hl_num_coprime (hl_pair omega omega m n) = 1 /\ (hl_squarefree m = 1 /\ hl_squarefree n = 1).
Admitted.

// HOL Light: Library/pocklington.ml:964 / SQUAREFREE_EXP   (hash md5:0c4f73506b7c97ab71887b156775d067)
Theorem hlt_SQUAREFREE_EXP : forall n k :e omega, hl_squarefree (hl_EXP n k) = 1 <-> n = hl_NUMERAL (hl_BIT1 hl_zero) \/ (k = hl_NUMERAL hl_zero \/ hl_squarefree n = 1 /\ k = hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/pocklington.ml:974 / SQUAREFREE_DIVIDES   (hash md5:161e50a47da827a1c9d2ce32b232d043)
Theorem hlt_SQUAREFREE_DIVIDES : forall q n :e omega, hl_squarefree q = 1 -> (hl_num_divides q n = 1 <-> forall p :e omega, hl_prime p = 1 /\ hl_num_divides p q = 1 -> hl_num_divides p n = 1).
Admitted.

// HOL Light: Library/pocklington.ml:987 / SQUAREFREE_DIVEXP   (hash md5:3f7e2f4fed623090712aeb01cebd553b)
Theorem hlt_SQUAREFREE_DIVEXP : forall n q x :e omega, hl_squarefree q = 1 /\ hl_num_divides q (hl_EXP x n) = 1 -> hl_num_divides q x = 1.
Admitted.

// HOL Light: Library/pocklington.ml:991 / SQUAREFREE_DIVEXP_EQ   (hash md5:9ba7128488783014f3cd4bf90bf68751)
Theorem hlt_SQUAREFREE_DIVEXP_EQ : forall n q x :e omega, hl_squarefree q = 1 /\ ~ n = hl_NUMERAL hl_zero -> (hl_num_divides q (hl_EXP x n) = 1 <-> hl_num_divides q x = 1).
Admitted.

// HOL Light: Library/pocklington.ml:995 / SQUAREFREE   (hash md5:cb3ed8f384208821c150820c0477c5d2)
Theorem hlt_SQUAREFREE : forall n :e omega, hl_squarefree n = 1 <-> ~ n = hl_NUMERAL hl_zero /\ forall m k :e omega, hl_num_divides n (hl_EXP m k) = 1 -> hl_num_divides n m = 1.
Admitted.

// HOL Light: Library/pocklington.ml:995 / SQUAREFREE_ALT   (hash md5:3621c0980c1ad9a6c2c1017952d54b8e)
Theorem hlt_SQUAREFREE_ALT : forall n :e omega, hl_squarefree n = 1 <-> ~ n = hl_NUMERAL hl_zero /\ forall m :e omega, hl_num_divides n (hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 -> hl_num_divides n m = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1012 / SQUAREFREE_GCD   (hash md5:9dd017cbece978fc6ed1df92939d1b71)
Theorem hlt_SQUAREFREE_GCD : forall m n :e omega, hl_squarefree m = 1 \/ hl_squarefree n = 1 -> hl_squarefree (hl_num_gcd (hl_pair omega omega m n)) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1016 / SQUAREFREE_GCD_SQUARE   (hash md5:64f487a2386f9b6ed83fced9dd5150dd)
Theorem hlt_SQUAREFREE_GCD_SQUARE : forall n :e omega, hl_squarefree n = 1 <-> forall x :e omega, hl_num_divides (hl_num_gcd (hl_pair omega omega (hl_EXP x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) x = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1031 / SQUAREFREE_NPRODUCT   (hash md5:642dd4ea840e6681751a6c115ab90813)
Theorem hlt_SQUAREFREE_NPRODUCT : forall s :e 2 :^: omega, hl_FINITE omega s = 1 -> (hl_squarefree (hl_nproduct omega s (fun n :e omega => n)) = 1 <-> hl_pairwise omega (fun a :e omega => fun b :e omega => hl_num_coprime (hl_pair omega omega a b)) s = 1 /\ forall n :e omega, hl_IN omega n s = 1 -> hl_squarefree n = 1).
Admitted.

// HOL Light: Library/pocklington.ml:1040 / SQUAREFREE_EXPAND   (hash md5:dce0adb9b3d074b1fe2c3d1b9069edde)
Theorem hlt_SQUAREFREE_EXPAND : forall n :e omega, hl_squarefree n = 1 -> hl_nproduct omega (hl_GSPEC omega (fun GEN_PVAR_557 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_557 (if hl_prime p = 1 /\ hl_num_divides p n = 1 then 1 else 0) p = 1 then 1 else 0)) (fun p :e omega => p) = n.
Admitted.

// HOL Light: Library/pocklington.ml:1053 / SQUAREFREE_EXPAND_EQ   (hash md5:a1ba4cc455ad8d88b3ef61571119e03b)
Theorem hlt_SQUAREFREE_EXPAND_EQ : forall n :e omega, hl_squarefree n = 1 <-> ~ n = hl_NUMERAL hl_zero /\ hl_nproduct omega (hl_GSPEC omega (fun GEN_PVAR_558 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_558 (if hl_prime p = 1 /\ hl_num_divides p n = 1 then 1 else 0) p = 1 then 1 else 0)) (fun p :e omega => p) = n.
Admitted.

// HOL Light: Library/pocklington.ml:1064 / SQUAREFREE_DECOMPOSITION   (hash md5:cb665c1dad3700b9ec8a42242445fd51)
Theorem hlt_SQUAREFREE_DECOMPOSITION : forall n :e omega, exists m r :e omega, hl_squarefree m = 1 /\ hl_mul m (hl_EXP r (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = n.
Admitted.

// HOL Light: Library/pocklington.ml:1083 / CONG_MOD_SQUAREFREE   (hash md5:473822a7dc818ac3abca24b8205e1d29)
Theorem hlt_CONG_MOD_SQUAREFREE : forall n a b :e omega, hl_squarefree n = 1 /\ (forall p :e omega, hl_prime p = 1 /\ hl_num_divides p n = 1 -> hl_sym_3d3d omega a b (hl_num_mod p) = 1) -> hl_sym_3d3d omega a b (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1102 / CONG_MOD_SQUAREFREE_EQ   (hash md5:edccbf5f9e9d8513bfb5dd93eca3450a)
Theorem hlt_CONG_MOD_SQUAREFREE_EQ : forall n a b :e omega, hl_squarefree n = 1 -> (hl_sym_3d3d omega a b (hl_num_mod n) = 1 <-> forall p :e omega, hl_prime p = 1 /\ hl_num_divides p n = 1 -> hl_sym_3d3d omega a b (hl_num_mod p) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:1113 / phi   (hash md5:0330c24d79433e775b122852219dc3a7)
Theorem hlt_phi : forall n :e omega, hl_phi n = hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_559 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_559 (if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0) m = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/pocklington.ml:1116 / PHI_ALT   (hash md5:b7373052b7014033a5e1410794cf47a6)
Theorem hlt_PHI_ALT : forall n :e omega, hl_phi n = hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_562 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_562 (if hl_num_coprime (hl_pair omega omega m n) = 1 /\ hl_lt m n = 1 then 1 else 0) m = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/pocklington.ml:1139 / PHI_FINITE_LEMMA   (hash md5:e0960fbdf7937ca7e1592339369f9c23)
Theorem hlt_PHI_FINITE_LEMMA : forall n :e omega, hl_FINITE omega (hl_GSPEC omega (fun GEN_PVAR_563 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_563 (if hl_num_coprime (hl_pair omega omega m n) = 1 /\ hl_lt m n = 1 then 1 else 0) m = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1144 / PHI_ANOTHER   (hash md5:f320e153e2ca941dae5c92642fc1f255)
Theorem hlt_PHI_ANOTHER : forall n :e omega, ~ n = hl_NUMERAL (hl_BIT1 hl_zero) -> hl_phi n = hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_564 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_564 (if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_lt m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0) m = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/pocklington.ml:1150 / PHI_LIMIT   (hash md5:a19e67091db779f7d576976f108beb90)
Theorem hlt_PHI_LIMIT : forall n :e omega, hl_le (hl_phi n) n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1157 / PHI_LIMIT_STRONG   (hash md5:741d9613799b4684a51bac18ba2bfeff)
Theorem hlt_PHI_LIMIT_STRONG : forall n :e omega, ~ n = hl_NUMERAL (hl_BIT1 hl_zero) -> hl_le (hl_phi n) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1166 / PHI_0   (hash md5:d1506f78ff814f6d3f29b2d54b1fd2d4)
Theorem hlt_PHI_0 : hl_phi (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/pocklington.ml:1170 / PHI_1   (hash md5:fa49a1da1c183e40619f526686ffde67)
Theorem hlt_PHI_1 : hl_phi (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/pocklington.ml:1174 / PHI_LOWERBOUND_1_STRONG   (hash md5:53746b6432f19f205d9a24b861b528be)
Theorem hlt_PHI_LOWERBOUND_1_STRONG : forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_phi n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1187 / PHI_LOWERBOUND_1   (hash md5:996891bdb1f50253c6bfa64f221daf25)
Theorem hlt_PHI_LOWERBOUND_1 : forall n :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 -> hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_phi n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1191 / PHI_LOWERBOUND_2   (hash md5:bfe779b9911a3af8b96b48f25fd5275d)
Theorem hlt_PHI_LOWERBOUND_2 : forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) n = 1 -> hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_phi n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1212 / PHI_EQ_0   (hash md5:ac24fc8b781e303f55f084fa30d11019)
Theorem hlt_PHI_EQ_0 : forall n :e omega, hl_phi n = hl_NUMERAL hl_zero <-> n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/pocklington.ml:1221 / PHI_PRIME_EQ   (hash md5:10cecc0c03d7cff5f062fe06fccba774)
Theorem hlt_PHI_PRIME_EQ : forall n :e omega, hl_phi n = hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (~ n = hl_NUMERAL hl_zero /\ ~ n = hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_prime n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1240 / PHI_PRIME   (hash md5:3a8de7750031d4d2cba973f5fd3a6d9b)
Theorem hlt_PHI_PRIME : forall p :e omega, hl_prime p = 1 -> hl_phi p = hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/pocklington.ml:1244 / PHI_PRIMEPOW_SUC   (hash md5:8fe04f15561a18c56d6d4b6557725dc7)
Theorem hlt_PHI_PRIMEPOW_SUC : forall p k :e omega, hl_prime p = 1 -> hl_phi (hl_EXP p (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_sub (hl_EXP p (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_EXP p k).
Admitted.

// HOL Light: Library/pocklington.ml:1267 / PHI_PRIMEPOW   (hash md5:0c60d3497d50455ef4b51cf96e15f9fc)
Theorem hlt_PHI_PRIMEPOW : forall p k :e omega, hl_prime p = 1 -> hl_phi (hl_EXP p k) = hl_COND omega (if k = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_sub (hl_EXP p k) (hl_EXP p (hl_sub k (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Library/pocklington.ml:1274 / PHI_PRIMEPOW_ALT   (hash md5:e21f2e1b67f08906b423b1d0267b96ab)
Theorem hlt_PHI_PRIMEPOW_ALT : forall p k :e omega, hl_prime p = 1 -> hl_phi (hl_EXP p k) = hl_COND omega (if k = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_mul (hl_EXP p (hl_sub k (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/pocklington.ml:1282 / PHI_2   (hash md5:7491bd5ab2464fe2eb131e372efd0233)
Theorem hlt_PHI_2 : hl_phi (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/pocklington.ml:1290 / PHI_MULTIPLICATIVE   (hash md5:5c258d3daff19c8ec53e19e78b50ea9a)
Theorem hlt_PHI_MULTIPLICATIVE : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 -> hl_phi (hl_mul a b) = hl_mul (hl_phi a) (hl_phi b).
Admitted.

// HOL Light: Library/pocklington.ml:1311 / EVEN_PHI   (hash md5:763006611e9e9f71df75aded5063a2be)
Theorem hlt_EVEN_PHI : forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) n = 1 -> hl_EVEN (hl_phi n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1322 / EVEN_PHI_EQ   (hash md5:e5d8d4232e4f8f8a612eae892f4232ee)
Theorem hlt_EVEN_PHI_EQ : forall n :e omega, hl_EVEN (hl_phi n) = 1 <-> n = hl_NUMERAL hl_zero \/ hl_le (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1330 / ODD_PHI_EQ   (hash md5:cb0245d21ead7f4fb2db5eb25fe3c503)
Theorem hlt_ODD_PHI_EQ : forall n :e omega, hl_ODD (hl_phi n) = 1 <-> n = hl_NUMERAL (hl_BIT1 hl_zero) \/ n = hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/pocklington.ml:1334 / PHI_EQ_PRIME   (hash md5:225e8252d914a17ad47717764dd842b4)
Theorem hlt_PHI_EQ_PRIME : forall p :e omega, hl_phi p = hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)) <-> p = hl_NUMERAL hl_zero \/ hl_prime p = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1362 / PHI_LIMIT_COMPOSITE   (hash md5:3fb7cbf0a66ca120006b518938679090)
Theorem hlt_PHI_LIMIT_COMPOSITE : forall n :e omega, ~ hl_prime n = 1 /\ (~ n = hl_NUMERAL hl_zero /\ ~ n = hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_lt (hl_phi n) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1370 / NPRODUCT_MOD   (hash md5:2d2a03df84f7019ce17f3bfc180be789)
Theorem hlt_NPRODUCT_MOD : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall a :e omega :^: A, forall n :e omega, hl_FINITE A s = 1 /\ ~ n = hl_NUMERAL hl_zero -> hl_sym_3d3d omega (hl_nproduct A s (fun m :e A => hl_MOD (a m) n)) (hl_nproduct A s a) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1380 / NPRODUCT_CMUL   (hash md5:ff8fb736fb9e2588859105ca541afcb9)
Theorem hlt_NPRODUCT_CMUL : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall a :e omega :^: A, forall c :e omega, hl_FINITE A s = 1 -> hl_nproduct A s (fun m :e A => hl_mul c (a m)) = hl_mul (hl_EXP c (hl_CARD A s)) (hl_nproduct A s a).
Admitted.

// HOL Light: Library/pocklington.ml:1390 / ITERATE_OVER_COPRIME   (hash md5:7950b64e1ec1685f6fb94e98a1ee812e)
Theorem hlt_ITERATE_OVER_COPRIME : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, forall f :e A :^: omega, forall n k :e omega, hl_monoidal A op = 1 /\ (hl_num_coprime (hl_pair omega omega k n) = 1 /\ (forall x y :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 -> f x = f y)) -> hl_iterate A omega op (hl_GSPEC omega (fun GEN_PVAR_575 :e omega => if exists d :e omega, hl_SETSPEC omega GEN_PVAR_575 (if hl_num_coprime (hl_pair omega omega d n) = 1 /\ hl_lt d n = 1 then 1 else 0) d = 1 then 1 else 0)) (fun m :e omega => f (hl_mul k m)) = hl_iterate A omega op (hl_GSPEC omega (fun GEN_PVAR_576 :e omega => if exists d :e omega, hl_SETSPEC omega GEN_PVAR_576 (if hl_num_coprime (hl_pair omega omega d n) = 1 /\ hl_lt d n = 1 then 1 else 0) d = 1 then 1 else 0)) f.
Admitted.

// HOL Light: Library/pocklington.ml:1412 / ITERATE_ITERATE_DIVISORS   (hash md5:70a0e233291846b812a4f96b8e7ef1fa)
Theorem hlt_ITERATE_ITERATE_DIVISORS : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, forall f :e A :^: omega :^: omega, forall x :e omega, hl_monoidal A op = 1 -> hl_iterate A omega op (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) x) (fun n :e omega => hl_iterate A omega op (hl_GSPEC omega (fun GEN_PVAR_577 :e omega => if exists d :e omega, hl_SETSPEC omega GEN_PVAR_577 (hl_num_divides d n) d = 1 then 1 else 0)) (f n)) = hl_iterate A omega op (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) x) (fun n :e omega => hl_iterate A omega op (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_DIV x n)) (fun k :e omega => f (hl_mul k n) n)).
Admitted.

// HOL Light: Library/pocklington.ml:1441 / FERMAT_LITTLE   (hash md5:a12801caf3834288c27765182b62aff6)
Theorem hlt_FERMAT_LITTLE : forall a n :e omega, hl_num_coprime (hl_pair omega omega a n) = 1 -> hl_sym_3d3d omega (hl_EXP a (hl_phi n)) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1459 / FERMAT_LITTLE_PRIME   (hash md5:767066f98b7d4614b85b3177856bae8c)
Theorem hlt_FERMAT_LITTLE_PRIME : forall a p :e omega, hl_prime p = 1 /\ hl_num_coprime (hl_pair omega omega a p) = 1 -> hl_sym_3d3d omega (hl_EXP a (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod p) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1467 / LUCAS_COPRIME_LEMMA   (hash md5:d117a25578b92fede8eba5366c42c06e)
Theorem hlt_LUCAS_COPRIME_LEMMA : forall m n a :e omega, ~ m = hl_NUMERAL hl_zero /\ hl_sym_3d3d omega (hl_EXP a m) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 -> hl_num_coprime (hl_pair omega omega a n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1494 / LUCAS_WEAK   (hash md5:88149126fc49e598b7cadb3607cd6258)
Theorem hlt_LUCAS_WEAK : forall a n :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 /\ (hl_sym_3d3d omega (hl_EXP a (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ (forall m :e omega, hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_lt m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> ~ hl_sym_3d3d omega (hl_EXP a m) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1)) -> hl_prime n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1510 / LUCAS   (hash md5:f33036093df0a740928478a1376048b3)
Theorem hlt_LUCAS : forall a n :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 /\ (hl_sym_3d3d omega (hl_EXP a (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ (forall p :e omega, hl_prime p = 1 /\ hl_num_divides p (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> ~ hl_sym_3d3d omega (hl_EXP a (hl_DIV (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) p)) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1)) -> hl_prime n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1576 / order   (hash md5:e258975d9739164b7fceccb1e89cb8df)
Theorem hlt_order : forall a n :e omega, hl_order n a = hl_select omega (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0).
Admitted.

// HOL Light: Library/pocklington.ml:1579 / EXP_ITER   (hash md5:96c22e49541564554765344c5b2016df)
Theorem hlt_EXP_ITER : forall x n :e omega, hl_EXP x n = hl_ITER omega n (fun y :e omega => hl_mul x y) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/pocklington.ml:1583 / ORDER_DIVIDES   (hash md5:ad59ba6da0e7b28ba17819871cafc591)
Theorem hlt_ORDER_DIVIDES : forall n a d :e omega, hl_sym_3d3d omega (hl_EXP a d) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides (hl_order n a) d = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1591 / ORDER   (hash md5:98744509a30ff4e05aa2cc17ac7e8929)
Theorem hlt_ORDER : forall n a :e omega, hl_sym_3d3d omega (hl_EXP a (hl_order n a)) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1595 / ORDER_UNIQUE_ALT   (hash md5:a1f3b5ccdc5dae904476624e30db4cb3)
Theorem hlt_ORDER_UNIQUE_ALT : forall n a d :e omega, hl_order n a = d <-> forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1600 / ORDER_MINIMAL   (hash md5:2a9f8187077e135932c8073b45469462)
Theorem hlt_ORDER_MINIMAL : forall n a m :e omega, hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_lt m (hl_order n a) = 1 -> ~ hl_sym_3d3d omega (hl_EXP a m) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1605 / ORDER_WORKS   (hash md5:fe5944264ed61e8d219503b116e3f430)
Theorem hlt_ORDER_WORKS : forall n a :e omega, hl_sym_3d3d omega (hl_EXP a (hl_order n a)) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ forall m :e omega, hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_lt m (hl_order n a) = 1 -> ~ hl_sym_3d3d omega (hl_EXP a m) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1610 / ORDER_1   (hash md5:2e7b15e5ed65e0f41a661481be487c65)
Theorem hlt_ORDER_1 : forall n :e omega, hl_order n (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/pocklington.ml:1614 / ORDER_EQ_0   (hash md5:a18efaf2b25ab98bbdad9c07b1a612e6)
Theorem hlt_ORDER_EQ_0 : forall n a :e omega, hl_order n a = hl_NUMERAL hl_zero <-> ~ hl_num_coprime (hl_pair omega omega n a) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1627 / ORDER_EQ_1   (hash md5:1b55347d176d418373d6003a12759d04)
Theorem hlt_ORDER_EQ_1 : forall n a :e omega, hl_order n a = hl_NUMERAL (hl_BIT1 hl_zero) <-> hl_sym_3d3d omega a (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1632 / ORDER_UNIQUE_PRIME   (hash md5:3287fd205c30daaaff59a50f14c2a7c9)
Theorem hlt_ORDER_UNIQUE_PRIME : forall n a p :e omega, hl_prime p = 1 -> (hl_order n a = p <-> ~ hl_sym_3d3d omega a (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ hl_sym_3d3d omega (hl_EXP a p) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:1640 / ORDER_CONG   (hash md5:3d3af17f97503a29564272d585949fff)
Theorem hlt_ORDER_CONG : forall n a b :e omega, hl_sym_3d3d omega a b (hl_num_mod n) = 1 -> hl_order n a = hl_order n b.
Admitted.

// HOL Light: Library/pocklington.ml:1646 / ORDER_MOD   (hash md5:7e28f260f89972a4b3a28de40e1abe22)
Theorem hlt_ORDER_MOD : forall p n :e omega, hl_order p (hl_MOD n p) = hl_order p n.
Admitted.

// HOL Light: Library/pocklington.ml:1651 / COPRIME_ORDER   (hash md5:3917a8418cc83a7e69825d31b605efc1)
Theorem hlt_COPRIME_ORDER : forall n a :e omega, hl_num_coprime (hl_pair omega omega n a) = 1 -> hl_gt (hl_order n a) (hl_NUMERAL hl_zero) = 1 /\ (hl_sym_3d3d omega (hl_EXP a (hl_order n a)) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ forall m :e omega, hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_lt m (hl_order n a) = 1 -> ~ hl_sym_3d3d omega (hl_EXP a m) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:1659 / ORDER_DIVIDES_PHI   (hash md5:c9d590469eaff818ac861bed87414da6)
Theorem hlt_ORDER_DIVIDES_PHI : forall a n :e omega, hl_num_coprime (hl_pair omega omega n a) = 1 -> hl_num_divides (hl_order n a) (hl_phi n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1663 / ORDER_LE_PHI   (hash md5:3153ab35df96b8758afb91570adfbf9f)
Theorem hlt_ORDER_LE_PHI : forall a n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_le (hl_order n a) (hl_phi n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1671 / ORDER_DIVIDES_EXPDIFF   (hash md5:3d2f6dc2fde6ff36d681699acfe64a66)
Theorem hlt_ORDER_DIVIDES_EXPDIFF : forall a n d e1 :e omega, hl_num_coprime (hl_pair omega omega n a) = 1 -> (hl_sym_3d3d omega (hl_EXP a d) (hl_EXP a e1) (hl_num_mod n) = 1 <-> hl_sym_3d3d omega d e1 (hl_num_mod (hl_order n a)) = 1).
Admitted.

// HOL Light: Library/pocklington.ml:1688 / ORDER_UNIQUE   (hash md5:97fc3c1e75ce8158dc837c89e2782e58)
Theorem hlt_ORDER_UNIQUE : forall n a k :e omega, hl_lt (hl_NUMERAL hl_zero) k = 1 /\ (hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ (forall m :e omega, hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_lt m k = 1 -> ~ hl_sym_3d3d omega (hl_EXP a m) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1)) -> hl_order n a = k.
Admitted.

// HOL Light: Library/pocklington.ml:1704 / ORDER_MUL_LCM   (hash md5:a51af7956056c2b94814aeac6dbaa8cc)
Theorem hlt_ORDER_MUL_LCM : forall m n a :e omega, hl_num_coprime (hl_pair omega omega m n) = 1 -> hl_order (hl_mul m n) a = hl_num_lcm (hl_pair omega omega (hl_order m a) (hl_order n a)).
Admitted.

// HOL Light: Library/pocklington.ml:1713 / ORDER_EXP_GEN   (hash md5:79f8b61534c8197d3ef97afd9fabceb0)
Theorem hlt_ORDER_EXP_GEN : forall p a k :e omega, hl_order p (hl_EXP a k) = hl_COND omega (if k = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_DIV (hl_order p a) (hl_num_gcd (hl_pair omega omega (hl_order p a) k))).
Admitted.

// HOL Light: Library/pocklington.ml:1731 / ORDER_EXP   (hash md5:5780f229c37c4f0234e3008e722458f5)
Theorem hlt_ORDER_EXP : forall p a k :e omega, ~ k = hl_NUMERAL hl_zero /\ hl_num_divides k (hl_order p a) = 1 -> hl_order p (hl_EXP a k) = hl_DIV (hl_order p a) k.
Admitted.

// HOL Light: Library/pocklington.ml:1737 / ORDER_INVERSE_MOD   (hash md5:672eae568c3788b0efe51e90de579ce5)
Theorem hlt_ORDER_INVERSE_MOD : forall n a :e omega, hl_num_coprime (hl_pair omega omega n a) = 1 -> hl_order n (hl_inverse_mod n a) = hl_order n a.
Admitted.

// HOL Light: Library/pocklington.ml:1749 / ORDER_MUL_DIVIDES   (hash md5:d07440a2007dedd753ba9b03c7500cb2)
Theorem hlt_ORDER_MUL_DIVIDES : forall p a b :e omega, hl_num_divides (hl_order p (hl_mul a b)) (hl_mul (hl_order p a) (hl_order p b)) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1755 / ORDER_MUL_EQ   (hash md5:ef14b21e1a9d534d49897eadc05741ea)
Theorem hlt_ORDER_MUL_EQ : forall p a b :e omega, hl_num_coprime (hl_pair omega omega (hl_order p a) (hl_order p b)) = 1 -> hl_order p (hl_mul a b) = hl_mul (hl_order p a) (hl_order p b).
Admitted.

// HOL Light: Library/pocklington.ml:1778 / ORDER_LCM_EXISTS   (hash md5:a325d906ebffba4bd1349a93276ad519)
Theorem hlt_ORDER_LCM_EXISTS : forall p a b :e omega, exists c :e omega, hl_order p c = hl_num_lcm (hl_pair omega omega (hl_order p a) (hl_order p b)).
Admitted.

// HOL Light: Library/pocklington.ml:1802 / ORDER_DIVIDES_MAXIMAL   (hash md5:fa8c6ae6353ce2a861409601eeb98c12)
Theorem hlt_ORDER_DIVIDES_MAXIMAL : forall p :e omega, ~ p = hl_NUMERAL (hl_BIT1 hl_zero) -> exists n :e omega, hl_num_coprime (hl_pair omega omega p n) = 1 /\ forall m :e omega, hl_num_coprime (hl_pair omega omega p m) = 1 -> hl_num_divides (hl_order p m) (hl_order p n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1831 / POWER_RESIDUE_MODULO_COPRIME   (hash md5:537460f3734ff261843f6c997d641505)
Theorem hlt_POWER_RESIDUE_MODULO_COPRIME : forall n a k :e omega, hl_num_coprime (hl_pair omega omega n a) = 1 /\ hl_num_coprime (hl_pair omega omega k (hl_phi n)) = 1 -> exists x :e omega, hl_sym_3d3d omega (hl_EXP x k) a (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1843 / POWER_RESIDUE_MODULO_PRIME   (hash md5:f6a1e2b2735e56055e3a21203eefee5d)
Theorem hlt_POWER_RESIDUE_MODULO_PRIME : forall p a k :e omega, hl_prime p = 1 /\ (~ hl_num_divides p a = 1 /\ hl_num_coprime (hl_pair omega omega k (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1) -> exists x :e omega, hl_sym_3d3d omega (hl_EXP x k) a (hl_num_mod p) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1850 / INJECTIVE_EXP_MODULO   (hash md5:6ac67a3dcd36148f29137f9d6d25c2b8)
Theorem hlt_INJECTIVE_EXP_MODULO : forall n a b k :e omega, hl_num_coprime (hl_pair omega omega k (hl_phi n)) = 1 /\ (hl_num_coprime (hl_pair omega omega n a) = 1 /\ (hl_num_coprime (hl_pair omega omega n b) = 1 /\ hl_sym_3d3d omega (hl_EXP a k) (hl_EXP b k) (hl_num_mod n) = 1)) -> hl_sym_3d3d omega a b (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1874 / PRIMITIVE_ROOT_IMP_COPRIME   (hash md5:e2bc0faabd123515213c8703275b4aa1)
Theorem hlt_PRIMITIVE_ROOT_IMP_COPRIME : forall n g :e omega, hl_order n g = hl_phi n -> n = hl_NUMERAL hl_zero \/ hl_num_coprime (hl_pair omega omega n g) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1878 / PRIMITIVE_ROOT_IMP_PRIME   (hash md5:803edf76774f52ecdda3aca0c81f38ed)
Theorem hlt_PRIMITIVE_ROOT_IMP_PRIME : forall p g :e omega, hl_order p g = hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)) -> p = hl_NUMERAL hl_zero \/ hl_prime p = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1888 / PRIMITIVE_ROOT_IMAGE   (hash md5:e59be620b338c98ecc3e0d5cf7aa9c5b)
Theorem hlt_PRIMITIVE_ROOT_IMAGE : forall n g :e omega, hl_order n g = hl_phi n -> hl_IMAGE omega omega (fun i :e omega => hl_MOD (hl_EXP g i) n) (hl_GSPEC omega (fun GEN_PVAR_582 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_582 (hl_lt i (hl_phi n)) i = 1 then 1 else 0)) = hl_GSPEC omega (fun GEN_PVAR_583 :e omega => if exists a :e omega, hl_SETSPEC omega GEN_PVAR_583 (if hl_num_coprime (hl_pair omega omega a n) = 1 /\ hl_lt a n = 1 then 1 else 0) a = 1 then 1 else 0).
Admitted.

// HOL Light: Library/pocklington.ml:1915 / PRIMITIVE_ROOT_IMAGE_PRIME   (hash md5:50e32a2fcd4f327c515a4a038f4d5819)
Theorem hlt_PRIMITIVE_ROOT_IMAGE_PRIME : forall p g :e omega, hl_order p g = hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_IMAGE omega omega (fun i :e omega => hl_MOD (hl_EXP g i) p) (hl_GSPEC omega (fun GEN_PVAR_584 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_584 (hl_lt i (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)))) i = 1 then 1 else 0)) = hl_GSPEC omega (fun GEN_PVAR_585 :e omega => if exists a :e omega, hl_SETSPEC omega GEN_PVAR_585 (if hl_lt (hl_NUMERAL hl_zero) a = 1 /\ hl_lt a p = 1 then 1 else 0) a = 1 then 1 else 0).
Admitted.

// HOL Light: Library/pocklington.ml:1933 / PRIMITIVE_ROOT_SURJECTIVE   (hash md5:b66bca9d7de7b29be7d039a50260d55e)
Theorem hlt_PRIMITIVE_ROOT_SURJECTIVE : forall n g a :e omega, ~ n = hl_NUMERAL hl_zero /\ (hl_order n g = hl_phi n /\ hl_num_coprime (hl_pair omega omega a n) = 1) -> exists m :e omega, hl_lt m (hl_phi n) = 1 /\ hl_sym_3d3d omega a (hl_EXP g m) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1944 / PRIMITIVE_ROOT_SURJECTIVE_ALT   (hash md5:56aea888526c5fd3d9f5a9128f1f7875)
Theorem hlt_PRIMITIVE_ROOT_SURJECTIVE_ALT : forall n g a :e omega, hl_order n g = hl_phi n /\ hl_num_coprime (hl_pair omega omega a n) = 1 -> exists m :e omega, hl_sym_3d3d omega a (hl_EXP g m) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1951 / PRIMITIVE_ROOT_SURJECTIVE_PRIME   (hash md5:fb215f1f3512f452930d6587f7cf4255)
Theorem hlt_PRIMITIVE_ROOT_SURJECTIVE_PRIME : forall p g a :e omega, ~ p = hl_NUMERAL hl_zero /\ (hl_order p g = hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_num_coprime (hl_pair omega omega a p) = 1) -> exists m :e omega, hl_lt m (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_sym_3d3d omega a (hl_EXP g m) (hl_num_mod p) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1963 / PRIMITIVE_ROOT_SURJECTIVE_PRIME_ALT   (hash md5:2ed09b3939c10d37d3526adbd5990487)
Theorem hlt_PRIMITIVE_ROOT_SURJECTIVE_PRIME_ALT : forall p g a :e omega, hl_order p g = hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_num_coprime (hl_pair omega omega a p) = 1 -> exists m :e omega, hl_sym_3d3d omega a (hl_EXP g m) (hl_num_mod p) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:1974 / PRIME_DIVISOR_SQRT   (hash md5:15c6b7ab0ad7c1a9f6b5d1e35fe1db67)
Theorem hlt_PRIME_DIVISOR_SQRT : forall n :e omega, hl_prime n = 1 <-> ~ n = hl_NUMERAL (hl_BIT1 hl_zero) /\ forall d :e omega, hl_num_divides d n = 1 /\ hl_le (hl_EXP d (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1 -> d = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/pocklington.ml:2002 / PRIME_PRIME_FACTOR_SQRT   (hash md5:3bd21b3c379da85440182f5b02af9447)
Theorem hlt_PRIME_PRIME_FACTOR_SQRT : forall n :e omega, hl_prime n = 1 <-> ~ n = hl_NUMERAL hl_zero /\ (~ n = hl_NUMERAL (hl_BIT1 hl_zero) /\ ~ exists p :e omega, hl_prime p = 1 /\ (hl_num_divides p n = 1 /\ hl_le (hl_EXP p (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1)).
Admitted.

// HOL Light: Library/pocklington.ml:2024 / POCKLINGTON_LEMMA   (hash md5:099bf8b88f5f5db977c975a8574b5653)
Theorem hlt_POCKLINGTON_LEMMA : forall a n q r :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 /\ (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_mul q r /\ (hl_sym_3d3d omega (hl_EXP a (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ (forall p :e omega, hl_prime p = 1 /\ hl_num_divides p q = 1 -> hl_num_coprime (hl_pair omega omega (hl_sub (hl_EXP a (hl_DIV (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) p)) (hl_NUMERAL (hl_BIT1 hl_zero))) n) = 1))) -> forall p :e omega, hl_prime p = 1 /\ hl_num_divides p n = 1 -> hl_sym_3d3d omega p (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod q) = 1.
Admitted.

// HOL Light: Library/pocklington.ml:2099 / POCKLINGTON   (hash md5:477d916375234bea5be670e6b021065b)
Theorem hlt_POCKLINGTON : forall a n q r :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 /\ (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_mul q r /\ (hl_le n (hl_EXP q (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ (hl_sym_3d3d omega (hl_EXP a (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ (forall p :e omega, hl_prime p = 1 /\ hl_num_divides p q = 1 -> hl_num_coprime (hl_pair omega omega (hl_sub (hl_EXP a (hl_DIV (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) p)) (hl_NUMERAL (hl_BIT1 hl_zero))) n) = 1)))) -> hl_prime n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:2124 / POCKLINGTON_ALT   (hash md5:16ec081923d3154b28bdeacde5d7b0ce)
Theorem hlt_POCKLINGTON_ALT : forall a n q r :e omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 /\ (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_mul q r /\ (hl_le n (hl_EXP q (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ (hl_sym_3d3d omega (hl_EXP a (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ (forall p :e omega, hl_prime p = 1 /\ hl_num_divides p q = 1 -> exists b :e omega, hl_sym_3d3d omega (hl_EXP a (hl_DIV (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) p)) b (hl_num_mod n) = 1 /\ hl_num_coprime (hl_pair omega omega (hl_sub b (hl_NUMERAL (hl_BIT1 hl_zero))) n) = 1)))) -> hl_prime n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:2175 / primefact   (hash md5:8d1d234fe0ce07d33a5b1017bfc13c44)
Theorem hlt_primefact : forall n :e omega, forall ps :e finseq omega, hl_primefact ps n = 1 <-> hl_ITLIST omega omega hl_mul ps (hl_NUMERAL (hl_BIT1 hl_zero)) = n /\ forall p :e omega, hl_MEM omega p ps = 1 -> hl_prime p = 1.
Admitted.

// HOL Light: Library/pocklington.ml:2178 / PRIMEFACT   (hash md5:1e7b573abe2bd2ee509333c2fa2834a3)
Theorem hlt_PRIMEFACT : forall n :e omega, ~ n = hl_NUMERAL hl_zero -> exists ps :e finseq omega, hl_primefact ps n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:2203 / PRIMAFACT_CONTAINS   (hash md5:f5514c701cd42b0bf7e90ca7e302d51d)
Theorem hlt_PRIMAFACT_CONTAINS : forall ps :e finseq omega, forall n :e omega, hl_primefact ps n = 1 -> forall p :e omega, hl_prime p = 1 /\ hl_num_divides p n = 1 -> hl_MEM omega p ps = 1.
Admitted.

// HOL Light: Library/pocklington.ml:2216 / PRIMEFACT_VARIANT   (hash md5:f3b553946dbc0e841c52fca031ce01ba)
Theorem hlt_PRIMEFACT_VARIANT : forall ps :e finseq omega, forall n :e omega, hl_primefact ps n = 1 <-> hl_ITLIST omega omega hl_mul ps (hl_NUMERAL (hl_BIT1 hl_zero)) = n /\ hl_ALL omega hl_prime ps = 1.
Admitted.

// HOL Light: Library/pocklington.ml:2226 / LUCAS_PRIMEFACT   (hash md5:b15e9efc9c3584bbf871caddcee2750e)
Theorem hlt_LUCAS_PRIMEFACT : forall n a :e omega, forall ps :e finseq omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 /\ (hl_sym_3d3d omega (hl_EXP a (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 /\ (hl_ITLIST omega omega hl_mul ps (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_ALL omega (fun p :e omega => if hl_prime p = 1 /\ ~ hl_sym_3d3d omega (hl_EXP a (hl_DIV (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) p)) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 then 1 else 0) ps = 1)) -> hl_prime n = 1.
Admitted.

// HOL Light: Library/pocklington.ml:2248 / POCKLINGTON_PRIMEFACT   (hash md5:1e35bcba8f375e1e89fed9da598e140d)
Theorem hlt_POCKLINGTON_PRIMEFACT : forall n q r a b :e omega, forall ps :e finseq omega, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = 1 /\ (hl_mul q r = hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_le n (hl_mul q q) = 1) -> hl_MOD (hl_EXP a r) n = b -> hl_ITLIST omega omega hl_mul ps (hl_NUMERAL (hl_BIT1 hl_zero)) = q -> hl_MOD (hl_EXP b q) n = hl_NUMERAL (hl_BIT1 hl_zero) -> hl_ALL omega (fun p :e omega => if hl_prime p = 1 /\ hl_num_coprime (hl_pair omega omega (hl_sub (hl_MOD (hl_EXP b (hl_DIV q p)) n) (hl_NUMERAL (hl_BIT1 hl_zero))) n) = 1 then 1 else 0) ps = 1 -> hl_prime n = 1.
Admitted.

