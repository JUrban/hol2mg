// hol2mg literal statements (private): shard floor of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/floor.ml:11 / INTEGER_CASES   (hash md5:2bdd530e59d37298b993709bc02573aa)
Theorem hlt_INTEGER_CASES : forall x :e R, hl_integer x = 1 <-> (exists n :e omega, x = hl_real_of_num n) \/ exists n :e omega, x = hl_real_neg (hl_real_of_num n).
Admitted.

// HOL Light: Library/floor.ml:15 / REAL_ABS_INTEGER_LEMMA   (hash md5:2cf9c8af16c2d0a68918bdad71ea53fa)
Theorem hlt_REAL_ABS_INTEGER_LEMMA : forall x :e R, hl_integer x = 1 /\ ~ x = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_le (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x) = 1.
Admitted.

// HOL Light: Library/floor.ml:23 / INTEGER_CLOSED   (hash md5:259b22aa9fa7ad20a9a534bc47ba2505)
Theorem hlt_INTEGER_CLOSED : (forall n :e omega, hl_integer (hl_real_of_num n) = 1) /\ ((forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> hl_integer (hl_real_add x y) = 1) /\ ((forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> hl_integer (hl_real_sub x y) = 1) /\ ((forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> hl_integer (hl_real_mul x y) = 1) /\ ((forall x :e R, forall r :e omega, hl_integer x = 1 -> hl_integer (hl_real_pow x r) = 1) /\ ((forall x :e R, hl_integer x = 1 -> hl_integer (hl_real_neg x) = 1) /\ ((forall x :e R, hl_integer x = 1 -> hl_integer (hl_real_abs x) = 1) /\ ((forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> hl_integer (hl_real_max x y) = 1) /\ forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> hl_integer (hl_real_min x y) = 1))))))).
Admitted.

// HOL Light: Library/floor.ml:55 / INTEGER_ADD   (hash md5:d3ea4652c4f48f256dcc0aed1a6af887)
Theorem hlt_INTEGER_ADD : forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> hl_integer (hl_real_add x y) = 1.
Admitted.

// HOL Light: Library/floor.ml:59 / INTEGER_SUB   (hash md5:10b7cb8083bcf2ce8d2f97c2d560e51e)
Theorem hlt_INTEGER_SUB : forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> hl_integer (hl_real_sub x y) = 1.
Admitted.

// HOL Light: Library/floor.ml:63 / INTEGER_MUL   (hash md5:f5b8f666c0f20d7d4013895c0ee10fc6)
Theorem hlt_INTEGER_MUL : forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> hl_integer (hl_real_mul x y) = 1.
Admitted.

// HOL Light: Library/floor.ml:67 / INTEGER_POW   (hash md5:9706f7daddb9bb149bc8cc9020d7d9cf)
Theorem hlt_INTEGER_POW : forall x :e R, forall n :e omega, hl_integer x = 1 -> hl_integer (hl_real_pow x n) = 1.
Admitted.

// HOL Light: Library/floor.ml:71 / REAL_LE_INTEGERS   (hash md5:cae5ff4fd5bce945ba38fe088676e98d)
Theorem hlt_REAL_LE_INTEGERS : forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> (hl_real_le x y = 1 <-> x = y \/ hl_real_le (hl_real_add x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) y = 1).
Admitted.

// HOL Light: Library/floor.ml:77 / REAL_LE_CASES_INTEGERS   (hash md5:1191649b99cc03b24478ed2381ccb2f9)
Theorem hlt_REAL_LE_CASES_INTEGERS : forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> hl_real_le x y = 1 \/ hl_real_le (hl_real_add y (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) x = 1.
Admitted.

// HOL Light: Library/floor.ml:83 / REAL_LE_REVERSE_INTEGERS   (hash md5:f36832eb3e3e7498660e43e961d79f59)
Theorem hlt_REAL_LE_REVERSE_INTEGERS : forall x y :e R, hl_integer x = 1 /\ (hl_integer y = 1 /\ ~ hl_real_le (hl_real_add y (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) x = 1) -> hl_real_le x y = 1.
Admitted.

// HOL Light: Library/floor.ml:87 / REAL_LT_INTEGERS   (hash md5:3c50d272e6b59f8b48eafcd1523bd918)
Theorem hlt_REAL_LT_INTEGERS : forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> (hl_real_lt x y = 1 <-> hl_real_le (hl_real_add x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) y = 1).
Admitted.

// HOL Light: Library/floor.ml:92 / REAL_EQ_INTEGERS   (hash md5:bb9aecdb07b3716cd3c891d34f7a654e)
Theorem hlt_REAL_EQ_INTEGERS : forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> (x = y <-> hl_real_lt (hl_real_abs (hl_real_sub x y)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1).
Admitted.

// HOL Light: Library/floor.ml:97 / REAL_EQ_INTEGERS_IMP   (hash md5:93302c5c0c945f910c840d6f048389e7)
Theorem hlt_REAL_EQ_INTEGERS_IMP : forall x y :e R, hl_integer x = 1 /\ (hl_integer y = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub x y)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> x = y.
Admitted.

// HOL Light: Library/floor.ml:101 / INTEGER_NEG   (hash md5:63672260ed117b420b3c55b5a90eeec5)
Theorem hlt_INTEGER_NEG : forall x :e R, hl_integer (hl_real_neg x) = 1 <-> hl_integer x = 1.
Admitted.

// HOL Light: Library/floor.ml:105 / INTEGER_ABS   (hash md5:b23d545cdd9c5cb9d5f608af992cf614)
Theorem hlt_INTEGER_ABS : forall x :e R, hl_integer (hl_real_abs x) = 1 <-> hl_integer x = 1.
Admitted.

// HOL Light: Library/floor.ml:110 / INTEGER_POS   (hash md5:688a5e92f6fb5816755ace5ab8162d8f)
Theorem hlt_INTEGER_POS : forall x :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 -> (hl_integer x = 1 <-> exists n :e omega, x = hl_real_of_num n).
Admitted.

// HOL Light: Library/floor.ml:114 / NONNEGATIVE_INTEGER   (hash md5:8eb511550d12326e021e5e9e83b964f7)
Theorem hlt_NONNEGATIVE_INTEGER : forall x :e R, hl_integer x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 <-> exists n :e omega, x = hl_real_of_num n.
Admitted.

// HOL Light: Library/floor.ml:118 / NONPOSITIVE_INTEGER   (hash md5:ebddc49cf96036a1a6448815c8a44ead)
Theorem hlt_NONPOSITIVE_INTEGER : forall x :e R, hl_integer x = 1 /\ hl_real_le x (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> exists n :e omega, x = hl_real_neg (hl_real_of_num n).
Admitted.

// HOL Light: Library/floor.ml:124 / NONPOSITIVE_INTEGER_ALT   (hash md5:0b55d1cf2b173ca108c909c68ca985aa)
Theorem hlt_NONPOSITIVE_INTEGER_ALT : forall x :e R, hl_integer x = 1 /\ hl_real_le x (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> exists n :e omega, hl_real_add x (hl_real_of_num n) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/floor.ml:129 / INTEGER_ADD_EQ   (hash md5:5ecbdbb63b37b564bdcfd4c97570a2e2)
Theorem hlt_INTEGER_ADD_EQ : (forall x y :e R, hl_integer x = 1 -> (hl_integer (hl_real_add x y) = 1 <-> hl_integer y = 1)) /\ forall x y :e R, hl_integer y = 1 -> (hl_integer (hl_real_add x y) = 1 <-> hl_integer x = 1).
Admitted.

// HOL Light: Library/floor.ml:134 / INTEGER_SUB_EQ   (hash md5:cf9ce4143a564523e5ff2c4f4ec2e7f8)
Theorem hlt_INTEGER_SUB_EQ : (forall x y :e R, hl_integer x = 1 -> (hl_integer (hl_real_sub x y) = 1 <-> hl_integer y = 1)) /\ forall x y :e R, hl_integer y = 1 -> (hl_integer (hl_real_sub x y) = 1 <-> hl_integer x = 1).
Admitted.

// HOL Light: Library/floor.ml:139 / FORALL_INTEGER   (hash md5:87250f94d9c239819bf287a9b5fcaa91)
Theorem hlt_FORALL_INTEGER : forall P :e 2 :^: R, (forall n :e omega, P (hl_real_of_num n) = 1) /\ (forall x :e R, P x = 1 -> P (hl_real_neg x) = 1) -> forall x :e R, hl_integer x = 1 -> P x = 1.
Admitted.

// HOL Light: Library/floor.ml:143 / INTEGER_SUM   (hash md5:9ccdd306f40a9dd7c154b1de4d53216e)
Theorem hlt_INTEGER_SUM : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_integer (f x) = 1) -> hl_integer (hl_sum A s f) = 1.
Admitted.

// HOL Light: Library/floor.ml:148 / INTEGER_ABS_MUL_EQ_1   (hash md5:d12779ceb5bb9e14f65650d2b21c9af4)
Theorem hlt_INTEGER_ABS_MUL_EQ_1 : forall x y :e R, hl_integer x = 1 /\ hl_integer y = 1 -> (hl_real_abs (hl_real_mul x y) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_real_abs x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_real_abs y = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/floor.ml:155 / INTEGER_DIV   (hash md5:dddf2e7ff09c05260ab276b4a230b8ce)
Theorem hlt_INTEGER_DIV : forall m n :e omega, hl_integer (hl_real_div (hl_real_of_num m) (hl_real_of_num n)) = 1 <-> n = hl_NUMERAL hl_zero \/ hl_num_divides n m = 1.
Admitted.

// HOL Light: Library/floor.ml:168 / rational   (hash md5:2ce3901d40c1fae22ef974e0cda82d37)
Theorem hlt_rational_thm : forall x :e R, hl_rational x = 1 <-> exists m n :e R, hl_integer m = 1 /\ (hl_integer n = 1 /\ (~ n = hl_real_of_num (hl_NUMERAL hl_zero) /\ x = hl_real_div m n)).
Admitted.

// HOL Light: Library/floor.ml:171 / RATIONAL_INTEGER   (hash md5:591df384970fda306dc826fb6775699f)
Theorem hlt_RATIONAL_INTEGER : forall x :e R, hl_integer x = 1 -> hl_rational x = 1.
Admitted.

// HOL Light: Library/floor.ml:177 / RATIONAL_NUM   (hash md5:8e62c1b5aa18d064549173ee96f1658d)
Theorem hlt_RATIONAL_NUM : forall n :e omega, hl_rational (hl_real_of_num n) = 1.
Admitted.

// HOL Light: Library/floor.ml:181 / RATIONAL_NEG   (hash md5:49d6d3ef6aa1fdafba83f12711a46ccc)
Theorem hlt_RATIONAL_NEG : forall x :e R, hl_rational x = 1 -> hl_rational (hl_real_neg x) = 1.
Admitted.

// HOL Light: Library/floor.ml:189 / RATIONAL_ABS   (hash md5:a0ed0c33818532d436cdff66486a165a)
Theorem hlt_RATIONAL_ABS : forall x :e R, hl_rational x = 1 -> hl_rational (hl_real_abs x) = 1.
Admitted.

// HOL Light: Library/floor.ml:193 / RATIONAL_INV   (hash md5:e0a7b2c8a349732b1f4ae8a40888cfbc)
Theorem hlt_RATIONAL_INV : forall x :e R, hl_rational x = 1 -> hl_rational (hl_real_inv x) = 1.
Admitted.

// HOL Light: Library/floor.ml:203 / RATIONAL_ADD   (hash md5:3c4b477bbcb980a0af22b6138f23e629)
Theorem hlt_RATIONAL_ADD : forall x y :e R, hl_rational x = 1 /\ hl_rational y = 1 -> hl_rational (hl_real_add x y) = 1.
Admitted.

// HOL Light: Library/floor.ml:213 / RATIONAL_SUB   (hash md5:a234f894cfb90b8e38bab7c64e39ac61)
Theorem hlt_RATIONAL_SUB : forall x y :e R, hl_rational x = 1 /\ hl_rational y = 1 -> hl_rational (hl_real_sub x y) = 1.
Admitted.

// HOL Light: Library/floor.ml:217 / RATIONAL_MUL   (hash md5:128bf3f00db7cd810c023a05c8e44316)
Theorem hlt_RATIONAL_MUL : forall x y :e R, hl_rational x = 1 /\ hl_rational y = 1 -> hl_rational (hl_real_mul x y) = 1.
Admitted.

// HOL Light: Library/floor.ml:227 / RATIONAL_DIV   (hash md5:ecca59958f10523d0f530647123a881b)
Theorem hlt_RATIONAL_DIV : forall x y :e R, hl_rational x = 1 /\ hl_rational y = 1 -> hl_rational (hl_real_div x y) = 1.
Admitted.

// HOL Light: Library/floor.ml:231 / RATIONAL_POW   (hash md5:e0b1ca5e81b31b04456355697991e00b)
Theorem hlt_RATIONAL_POW : forall x :e R, forall n :e omega, hl_rational x = 1 -> hl_rational (hl_real_pow x n) = 1.
Admitted.

// HOL Light: Library/floor.ml:236 / RATIONAL_CLOSED   (hash md5:3edd80319c2e7e10826b34e49eeacf88)
Theorem hlt_RATIONAL_CLOSED : (forall n :e omega, hl_rational (hl_real_of_num n) = 1) /\ ((forall x :e R, hl_integer x = 1 -> hl_rational x = 1) /\ ((forall x y :e R, hl_rational x = 1 /\ hl_rational y = 1 -> hl_rational (hl_real_add x y) = 1) /\ ((forall x y :e R, hl_rational x = 1 /\ hl_rational y = 1 -> hl_rational (hl_real_sub x y) = 1) /\ ((forall x y :e R, hl_rational x = 1 /\ hl_rational y = 1 -> hl_rational (hl_real_mul x y) = 1) /\ ((forall x y :e R, hl_rational x = 1 /\ hl_rational y = 1 -> hl_rational (hl_real_div x y) = 1) /\ ((forall x :e R, forall r :e omega, hl_rational x = 1 -> hl_rational (hl_real_pow x r) = 1) /\ ((forall x :e R, hl_rational x = 1 -> hl_rational (hl_real_neg x) = 1) /\ ((forall x :e R, hl_rational x = 1 -> hl_rational (hl_real_inv x) = 1) /\ forall x :e R, hl_rational x = 1 -> hl_rational (hl_real_abs x) = 1)))))))).
Admitted.

// HOL Light: Library/floor.ml:251 / RATIONAL_NEG_EQ   (hash md5:7603e835b50fd40b6d82f567dd362d90)
Theorem hlt_RATIONAL_NEG_EQ : forall x :e R, hl_rational (hl_real_neg x) = 1 <-> hl_rational x = 1.
Admitted.

// HOL Light: Library/floor.ml:255 / RATIONAL_ABS_EQ   (hash md5:62a316e05c61d0c85aff8ae955f544fc)
Theorem hlt_RATIONAL_ABS_EQ : forall x :e R, hl_rational (hl_real_abs x) = 1 <-> hl_rational x = 1.
Admitted.

// HOL Light: Library/floor.ml:259 / RATIONAL_INV_EQ   (hash md5:8b3b33edb824e4ffaeda6488527588b3)
Theorem hlt_RATIONAL_INV_EQ : forall x :e R, hl_rational (hl_real_inv x) = 1 <-> hl_rational x = 1.
Admitted.

// HOL Light: Library/floor.ml:263 / RATIONAL_SUM   (hash md5:00c0938a49a8f628a3859504062de6ac)
Theorem hlt_RATIONAL_SUM : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e R :^: A, (forall i :e A, hl_IN A i s = 1 -> hl_rational (x i) = 1) -> hl_rational (hl_sum A s x) = 1.
Admitted.

// HOL Light: Library/floor.ml:268 / RATIONAL_ALT   (hash md5:abe05958816dc7299fc87fd2eeabdd82)
Theorem hlt_RATIONAL_ALT : forall x :e R, hl_rational x = 1 <-> exists p q :e omega, ~ q = hl_NUMERAL hl_zero /\ hl_real_abs x = hl_real_div (hl_real_of_num p) (hl_real_of_num q).
Admitted.

// HOL Light: Library/floor.ml:283 / REAL_TRUNCATE_POS   (hash md5:06c6519a37eef894af6be8167f9f0ea9)
Theorem hlt_REAL_TRUNCATE_POS : forall x :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 -> exists n :e omega, exists r :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_real_lt r (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ x = hl_real_add (hl_real_of_num n) r).
Admitted.

// HOL Light: Library/floor.ml:300 / REAL_TRUNCATE   (hash md5:ac6ff3d778770b91dc92a9367ee5b4b7)
Theorem hlt_REAL_TRUNCATE : forall x :e R, exists n r :e R, hl_integer n = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_real_lt r (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ x = hl_real_add n r)).
Admitted.

// HOL Light: Library/floor.ml:311 / FLOOR_FRAC   (hash md5:ff243291175573d4e0d007a77b9ba9aa)
Theorem hlt_FLOOR_FRAC : forall x :e R, hl_integer (hl_floor x) = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_frac x) = 1 /\ (hl_real_lt (hl_frac x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ x = hl_real_add (hl_floor x) (hl_frac x))).
Admitted.

// HOL Light: Library/floor.ml:319 / FLOOR_UNIQUE   (hash md5:c845b6e124358f0e0acd7ea3f379ede0)
Theorem hlt_FLOOR_UNIQUE : forall x a :e R, hl_integer a = 1 /\ (hl_real_le a x = 1 /\ hl_real_lt x (hl_real_add a (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1) <-> hl_floor x = a.
Admitted.

// HOL Light: Library/floor.ml:333 / FLOOR_EQ_0   (hash md5:7c67b6164a415b72b80da898fcb4a27e)
Theorem hlt_FLOOR_EQ_0 : forall x :e R, hl_floor x = hl_real_of_num (hl_NUMERAL hl_zero) <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_lt x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/floor.ml:338 / FLOOR   (hash md5:964daa18487e5f51d73c4cf4b0a1cff6)
Theorem hlt_FLOOR : forall x :e R, hl_integer (hl_floor x) = 1 /\ (hl_real_le (hl_floor x) x = 1 /\ hl_real_lt x (hl_real_add (hl_floor x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1).
Admitted.

// HOL Light: Library/floor.ml:344 / FLOOR_DOUBLE   (hash md5:3ab58adb1cad1f9c8b7c8ab28f7f1d7e)
Theorem hlt_FLOOR_DOUBLE : forall u :e R, hl_real_le (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_floor u)) (hl_floor (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) u)) = 1 /\ hl_real_le (hl_floor (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) u)) (hl_real_add (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_floor u)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Library/floor.ml:351 / FRAC_FLOOR   (hash md5:e811a8f9f4f06332431f2446f11fe46f)
Theorem hlt_FRAC_FLOOR : forall x :e R, hl_frac x = hl_real_sub x (hl_floor x).
Admitted.

// HOL Light: Library/floor.ml:355 / FLOOR_NUM   (hash md5:3a2bd706226adcd2dfc13cc51b108ada)
Theorem hlt_FLOOR_NUM : forall n :e omega, hl_floor (hl_real_of_num n) = hl_real_of_num n.
Admitted.

// HOL Light: Library/floor.ml:359 / REAL_LE_FLOOR   (hash md5:b2f61e63a6eb39c26ff319983053c642)
Theorem hlt_REAL_LE_FLOOR : forall x n :e R, hl_integer n = 1 -> (hl_real_le n (hl_floor x) = 1 <-> hl_real_le n x = 1).
Admitted.

// HOL Light: Library/floor.ml:366 / REAL_FLOOR_LE   (hash md5:2b3a45cb22c01365c5d7ee53dca36605)
Theorem hlt_REAL_FLOOR_LE : forall x n :e R, hl_integer n = 1 -> (hl_real_le (hl_floor x) n = 1 <-> hl_real_lt (hl_real_sub x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1).
Admitted.

// HOL Light: Library/floor.ml:375 / REAL_FLOOR_LT   (hash md5:274606b9aef45f6e9f8d5d58fcbea0de)
Theorem hlt_REAL_FLOOR_LT : forall x n :e R, hl_integer n = 1 -> (hl_real_lt (hl_floor x) n = 1 <-> hl_real_lt x n = 1).
Admitted.

// HOL Light: Library/floor.ml:379 / REAL_LT_FLOOR   (hash md5:69e5c41ace2574790a54004f8f9c2e7c)
Theorem hlt_REAL_LT_FLOOR : forall x n :e R, hl_integer n = 1 -> (hl_real_lt n (hl_floor x) = 1 <-> hl_real_le n (hl_real_sub x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1).
Admitted.

// HOL Light: Library/floor.ml:383 / FLOOR_POS   (hash md5:81c8226f77ea672d13e910efbbf0eca8)
Theorem hlt_FLOOR_POS : forall x :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 -> exists n :e omega, hl_floor x = hl_real_of_num n.
Admitted.

// HOL Light: Library/floor.ml:389 / FLOOR_DIV_DIV   (hash md5:497d2dbd8ca351f5d3314d0985531251)
Theorem hlt_FLOOR_DIV_DIV : forall m n :e omega, ~ m = hl_NUMERAL hl_zero -> hl_floor (hl_real_div (hl_real_of_num n) (hl_real_of_num m)) = hl_real_of_num (hl_DIV n m).
Admitted.

// HOL Light: Library/floor.ml:396 / FLOOR_MONO   (hash md5:afb0b6acc03c21718c36f95dd00f45ed)
Theorem hlt_FLOOR_MONO : forall x y :e R, hl_real_le x y = 1 -> hl_real_le (hl_floor x) (hl_floor y) = 1.
Admitted.

// HOL Light: Library/floor.ml:402 / REAL_FLOOR_EQ   (hash md5:83727ab3402ec9b2e1aa7e4a9ea06be7)
Theorem hlt_REAL_FLOOR_EQ : forall x :e R, hl_floor x = x <-> hl_integer x = 1.
Admitted.

// HOL Light: Library/floor.ml:406 / REAL_FLOOR_LT_REFL   (hash md5:170434c51cd017d591af192b67199a79)
Theorem hlt_REAL_FLOOR_LT_REFL : forall x :e R, hl_real_lt (hl_floor x) x = 1 <-> ~ hl_integer x = 1.
Admitted.

// HOL Light: Library/floor.ml:410 / REAL_FRAC_EQ_0   (hash md5:2c45124e3a61dbd01f71d209ede8b0e5)
Theorem hlt_REAL_FRAC_EQ_0 : forall x :e R, hl_frac x = hl_real_of_num (hl_NUMERAL hl_zero) <-> hl_integer x = 1.
Admitted.

// HOL Light: Library/floor.ml:414 / REAL_FRAC_POS_LT   (hash md5:c54cc65457686c284aa6563847f7391d)
Theorem hlt_REAL_FRAC_POS_LT : forall x :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_frac x) = 1 <-> ~ hl_integer x = 1.
Admitted.

// HOL Light: Library/floor.ml:418 / FRAC_NUM   (hash md5:a50cb7ba859b49e07b44f6bc5b28a735)
Theorem hlt_FRAC_NUM : forall n :e omega, hl_frac (hl_real_of_num n) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/floor.ml:422 / REAL_FLOOR_REFL   (hash md5:79cb2428320a2d2ba9a0bcbfaaef3502)
Theorem hlt_REAL_FLOOR_REFL : forall x :e R, hl_integer x = 1 -> hl_floor x = x.
Admitted.

// HOL Light: Library/floor.ml:426 / REAL_FRAC_ZERO   (hash md5:49ae89f13968227c2810cdf9ea9af20d)
Theorem hlt_REAL_FRAC_ZERO : forall x :e R, hl_integer x = 1 -> hl_frac x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/floor.ml:430 / REAL_FLOOR_ADD   (hash md5:17a4dd3ba8d56c74ad7a73222bcbc741)
Theorem hlt_REAL_FLOOR_ADD : forall x y :e R, hl_floor (hl_real_add x y) = hl_COND R (hl_real_lt (hl_real_add (hl_frac x) (hl_frac y)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_add (hl_floor x) (hl_floor y)) (hl_real_add (hl_real_add (hl_floor x) (hl_floor y)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/floor.ml:438 / REAL_FLOOR_TRIANGLE   (hash md5:5bd9fb69b3cc1a29ad91f36904fa02cc)
Theorem hlt_REAL_FLOOR_TRIANGLE : forall x y :e R, hl_real_le (hl_real_add (hl_floor x) (hl_floor y)) (hl_floor (hl_real_add x y)) = 1 /\ hl_real_le (hl_floor (hl_real_add x y)) (hl_real_add (hl_real_add (hl_floor x) (hl_floor y)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Library/floor.ml:444 / REAL_FLOOR_NEG   (hash md5:91a456fd0503351c2e89ec4d7e1f9a5b)
Theorem hlt_REAL_FLOOR_NEG : forall x :e R, hl_floor (hl_real_neg x) = hl_COND R (hl_integer x) (hl_real_neg x) (hl_real_neg (hl_real_add (hl_floor x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Library/floor.ml:451 / REAL_FRAC_ADD   (hash md5:a75d0bb27fdc33a859c5a7a232d3c95a)
Theorem hlt_REAL_FRAC_ADD : forall x y :e R, hl_frac (hl_real_add x y) = hl_COND R (hl_real_lt (hl_real_add (hl_frac x) (hl_frac y)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_add (hl_frac x) (hl_frac y)) (hl_real_sub (hl_real_add (hl_frac x) (hl_frac y)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/floor.ml:456 / FLOOR_POS_LE   (hash md5:c0e54700bf44641d1195aed31d0aebc4)
Theorem hlt_FLOOR_POS_LE : forall x :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_floor x) = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: Library/floor.ml:460 / FRAC_UNIQUE   (hash md5:b7b4a8681a0978aa8ee103e6c46bc6d5)
Theorem hlt_FRAC_UNIQUE : forall x a :e R, hl_integer (hl_real_sub x a) = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 /\ hl_real_lt a (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) <-> hl_frac x = a.
Admitted.

// HOL Light: Library/floor.ml:466 / REAL_FRAC_EQ   (hash md5:d4b97c0fa382c07e9f8f53b60dd162e3)
Theorem hlt_REAL_FRAC_EQ : forall x :e R, hl_frac x = x <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_lt x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/floor.ml:470 / INTEGER_ROUND   (hash md5:676b593d4cacb3fd761b1654c0dd68e5)
Theorem hlt_INTEGER_ROUND : forall x :e R, exists n :e R, hl_integer n = 1 /\ hl_real_le (hl_real_abs (hl_real_sub x n)) (hl_real_div (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Library/floor.ml:476 / FRAC_DIV_MOD   (hash md5:bc80a85a27a77c72cc59e0a50214b692)
Theorem hlt_FRAC_DIV_MOD : forall m n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_frac (hl_real_div (hl_real_of_num m) (hl_real_of_num n)) = hl_real_div (hl_real_of_num (hl_MOD m n)) (hl_real_of_num n).
Admitted.

// HOL Light: Library/floor.ml:490 / FRAC_NEG   (hash md5:bd85cb82b6719266fb96456b6487ddfc)
Theorem hlt_FRAC_NEG : forall x :e R, hl_frac (hl_real_neg x) = hl_COND R (hl_integer x) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_frac x)).
Admitted.

// HOL Light: Library/floor.ml:495 / REAL_FLOOR_FLOOR_DIV   (hash md5:b1ac8cfbb2b810b2aff4b739402dae5c)
Theorem hlt_REAL_FLOOR_FLOOR_DIV : forall x :e R, forall n :e omega, hl_floor (hl_real_div (hl_floor x) (hl_real_of_num n)) = hl_floor (hl_real_div x (hl_real_of_num n)).
Admitted.

// HOL Light: Library/floor.ml:509 / INTEGER_EXISTS_BETWEEN_ALT   (hash md5:f01f76d63fc88266aa814b19d6b0c4b5)
Theorem hlt_INTEGER_EXISTS_BETWEEN_ALT : forall x y :e R, hl_real_le (hl_real_add x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) y = 1 -> exists n :e R, hl_integer n = 1 /\ (hl_real_lt x n = 1 /\ hl_real_le n y = 1).
Admitted.

// HOL Light: Library/floor.ml:514 / INTEGER_EXISTS_BETWEEN_LT   (hash md5:0622cf8ce3b692660ef1148c07da994d)
Theorem hlt_INTEGER_EXISTS_BETWEEN_LT : forall x y :e R, hl_real_lt (hl_real_add x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) y = 1 -> exists n :e R, hl_integer n = 1 /\ (hl_real_lt x n = 1 /\ hl_real_lt n y = 1).
Admitted.

// HOL Light: Library/floor.ml:524 / INTEGER_EXISTS_BETWEEN   (hash md5:10169eab9695a28878ac05322a80eb96)
Theorem hlt_INTEGER_EXISTS_BETWEEN : forall x y :e R, hl_real_le (hl_real_add x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) y = 1 -> exists n :e R, hl_integer n = 1 /\ (hl_real_le x n = 1 /\ hl_real_lt n y = 1).
Admitted.

// HOL Light: Library/floor.ml:533 / INTEGER_EXISTS_BETWEEN_ABS   (hash md5:83a545d1b31b1a613f24f961eb0a7af3)
Theorem hlt_INTEGER_EXISTS_BETWEEN_ABS : forall x y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs (hl_real_sub x y)) = 1 -> exists n :e R, hl_integer n = 1 /\ (hl_real_le x n = 1 /\ hl_real_lt n y = 1 \/ hl_real_le y n = 1 /\ hl_real_lt n x = 1).
Admitted.

// HOL Light: Library/floor.ml:543 / INTEGER_EXISTS_BETWEEN_ABS_LT   (hash md5:8ff3157dc54addb2f13ad6d2c061ef48)
Theorem hlt_INTEGER_EXISTS_BETWEEN_ABS_LT : forall x y :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs (hl_real_sub x y)) = 1 -> exists n :e R, hl_integer n = 1 /\ (hl_real_lt x n = 1 /\ hl_real_lt n y = 1 \/ hl_real_lt y n = 1 /\ hl_real_lt n x = 1).
Admitted.

// HOL Light: Library/floor.ml:557 / REAL_OF_INT_OF_REAL   (hash md5:884e4ec7b202cf2b9672513bbbbd5f33)
Theorem hlt_REAL_OF_INT_OF_REAL : forall x :e R, hl_integer x = 1 -> hl_real_of_int (hl_int_of_real x) = x.
Admitted.

// HOL Light: Library/floor.ml:561 / IMAGE_REAL_OF_INT_UNIV   (hash md5:1d1e4a1399322dd5aef50bca7cdef59e)
Theorem hlt_IMAGE_REAL_OF_INT_UNIV : hl_IMAGE hl_ty_int R hl_real_of_int (hl_UNIV hl_ty_int) = hl_integer.
Admitted.

// HOL Light: Library/floor.ml:570 / HAS_SIZE_INTSEG_NUM   (hash md5:4468e517dca0ac219e00cc8f058b104f)
Theorem hlt_HAS_SIZE_INTSEG_NUM : forall m n :e omega, hl_HAS_SIZE R (hl_GSPEC R (fun GEN_PVAR_610 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_610 (if hl_integer x = 1 /\ (hl_real_le (hl_real_of_num m) x = 1 /\ hl_real_le x (hl_real_of_num n) = 1) then 1 else 0) x = 1 then 1 else 0)) (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m) = 1.
Admitted.

// HOL Light: Library/floor.ml:585 / FINITE_INTSEG   (hash md5:25660519ca8497f5686af7c7d4e01530)
Theorem hlt_FINITE_INTSEG : forall a b :e R, hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_612 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_612 (if hl_integer x = 1 /\ (hl_real_le a x = 1 /\ hl_real_le x b = 1) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/floor.ml:604 / HAS_SIZE_INTSEG_INT   (hash md5:2c5815ed2fc6504f288d151e90ec971c)
Theorem hlt_HAS_SIZE_INTSEG_INT : forall a b :e R, hl_integer a = 1 /\ hl_integer b = 1 -> hl_HAS_SIZE R (hl_GSPEC R (fun GEN_PVAR_615 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_615 (if hl_integer x = 1 /\ (hl_real_le a x = 1 /\ hl_real_le x b = 1) then 1 else 0) x = 1 then 1 else 0)) (hl_COND omega (hl_real_lt b a) (hl_NUMERAL hl_zero) (hl_num_of_int (hl_int_of_real (hl_real_add (hl_real_sub b a) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))))) = 1.
Admitted.

// HOL Light: Library/floor.ml:630 / CARD_INTSEG_INT   (hash md5:2800252d64afe27f964f79101007a892)
Theorem hlt_CARD_INTSEG_INT : forall a b :e R, hl_integer a = 1 /\ hl_integer b = 1 -> hl_CARD R (hl_GSPEC R (fun GEN_PVAR_616 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_616 (if hl_integer x = 1 /\ (hl_real_le a x = 1 /\ hl_real_le x b = 1) then 1 else 0) x = 1 then 1 else 0)) = hl_COND omega (hl_real_lt b a) (hl_NUMERAL hl_zero) (hl_num_of_int (hl_int_of_real (hl_real_add (hl_real_sub b a) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))).
Admitted.

// HOL Light: Library/floor.ml:638 / REAL_CARD_INTSEG_INT   (hash md5:4232f2ecf6963538bb6da80b38d2fe65)
Theorem hlt_REAL_CARD_INTSEG_INT : forall a b :e R, hl_integer a = 1 /\ hl_integer b = 1 -> hl_real_of_num (hl_CARD R (hl_GSPEC R (fun GEN_PVAR_617 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_617 (if hl_integer x = 1 /\ (hl_real_le a x = 1 /\ hl_real_le x b = 1) then 1 else 0) x = 1 then 1 else 0))) = hl_COND R (hl_real_lt b a) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add (hl_real_sub b a) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/floor.ml:657 / INFINITE_INTEGER   (hash md5:41bee861250e23cebbdd6aa1792b7f77)
Theorem hlt_INFINITE_INTEGER : hl_INFINITE R hl_integer = 1.
Admitted.

// HOL Light: Library/floor.ml:666 / INFINITE_RATIONAL   (hash md5:4b5babf6a52d5eb81a5ae0918ae0cc68)
Theorem hlt_INFINITE_RATIONAL : hl_INFINITE R hl_rational = 1.
Admitted.

// HOL Light: Library/floor.ml:677 / PADIC_RATIONAL_APPROXIMATION_STRADDLE   (hash md5:7880a8361080895f245f7ad0ef14a38f)
Theorem hlt_PADIC_RATIONAL_APPROXIMATION_STRADDLE : forall p x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) p = 1 -> exists n :e omega, exists q r :e R, hl_integer q = 1 /\ (hl_integer r = 1 /\ (hl_real_lt (hl_real_div q (hl_real_pow p n)) x = 1 /\ (hl_real_lt x (hl_real_div r (hl_real_pow p n)) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub (hl_real_div q (hl_real_pow p n)) (hl_real_div r (hl_real_pow p n)))) e1 = 1))).
Admitted.

// HOL Light: Library/floor.ml:743 / RATIONAL_APPROXIMATION   (hash md5:b589664318fa47eb545d28d0f3ece9fd)
Theorem hlt_RATIONAL_APPROXIMATION : forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists r :e R, hl_rational r = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub r x)) e1 = 1.
Admitted.

// HOL Light: Library/floor.ml:753 / RATIONAL_BETWEEN   (hash md5:959c17100122e8ad6ad2061cc59ede6c)
Theorem hlt_RATIONAL_BETWEEN : forall a b :e R, hl_real_lt a b = 1 -> exists q :e R, hl_rational q = 1 /\ (hl_real_lt a q = 1 /\ hl_real_lt q b = 1).
Admitted.

// HOL Light: Library/floor.ml:760 / RATIONAL_BETWEEN_EQ   (hash md5:f22aabcc1e58f5c6403061fc3a95c318)
Theorem hlt_RATIONAL_BETWEEN_EQ : forall a b :e R, (exists q :e R, hl_rational q = 1 /\ (hl_real_lt a q = 1 /\ hl_real_lt q b = 1)) <-> hl_real_lt a b = 1.
Admitted.

// HOL Light: Library/floor.ml:764 / RATIONAL_APPROXIMATION_STRADDLE   (hash md5:1c3752b4fc496a4272fd2cd84f9b356c)
Theorem hlt_RATIONAL_APPROXIMATION_STRADDLE : forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists a b :e R, hl_rational a = 1 /\ (hl_rational b = 1 /\ (hl_real_lt a x = 1 /\ (hl_real_lt x b = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub b a)) e1 = 1))).
Admitted.

// HOL Light: Library/floor.ml:779 / RATIONAL_APPROXIMATION_ABOVE   (hash md5:3c97b79fc5db2df307141a7502d1c114)
Theorem hlt_RATIONAL_APPROXIMATION_ABOVE : forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists q :e R, hl_rational q = 1 /\ (hl_real_lt x q = 1 /\ hl_real_lt q (hl_real_add x e1) = 1).
Admitted.

// HOL Light: Library/floor.ml:787 / RATIONAL_APPROXIMATION_BELOW   (hash md5:d9883c34880f411bbc19ab385681f883)
Theorem hlt_RATIONAL_APPROXIMATION_BELOW : forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists q :e R, hl_rational q = 1 /\ (hl_real_lt (hl_real_sub x e1) q = 1 /\ hl_real_lt q x = 1).
Admitted.

// HOL Light: Library/floor.ml:794 / INFINITE_RATIONAL_IN_RANGE   (hash md5:aff900c3aca26a609cf346202dd7c603)
Theorem hlt_INFINITE_RATIONAL_IN_RANGE : forall a b :e R, hl_real_lt a b = 1 -> hl_INFINITE R (hl_GSPEC R (fun GEN_PVAR_618 :e R => if exists q :e R, hl_SETSPEC R GEN_PVAR_618 (if hl_rational q = 1 /\ (hl_real_lt a q = 1 /\ hl_real_lt q b = 1) then 1 else 0) q = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/floor.ml:817 / REAL_CONGRUENCE   (hash md5:0755911ffa5d381d03e9a37f27d2be83)
Theorem hlt_REAL_CONGRUENCE : forall a b n :e omega, hl_sym_3d3d omega a b (hl_num_mod n) = 1 <-> n = hl_NUMERAL hl_zero /\ hl_real_of_num a = hl_real_of_num b \/ ~ n = hl_NUMERAL hl_zero /\ hl_integer (hl_real_div (hl_real_sub (hl_real_of_num a) (hl_real_of_num b)) (hl_real_of_num n)) = 1.
Admitted.

// HOL Light: Library/floor.ml:832 / REAL_INT_CONGRUENCE   (hash md5:68a2b5d90b0ae62ba69dd665ead30ef0)
Theorem hlt_REAL_INT_CONGRUENCE : forall a b n :e hl_ty_int, hl_sym_3d3d hl_ty_int a b (hl_int_mod n) = 1 <-> n = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_real_of_int a = hl_real_of_int b \/ ~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_integer (hl_real_div (hl_real_sub (hl_real_of_int a) (hl_real_of_int b)) (hl_real_of_int n)) = 1.
Admitted.

