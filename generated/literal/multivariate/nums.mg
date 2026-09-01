// hol2mg literal statements (private): shard nums of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: nums.ml:22 / ONE_ONE   (hash md5:288a0d40e8446caae45da4ca6cd746c2)
Theorem hlt_ONE_ONE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, hl_ONE_ONE A B f = 1 <-> forall x1 x2 :e A, f x1 = f x2 -> x1 = x2.
Admitted.

// HOL Light: nums.ml:25 / ONTO   (hash md5:069712bfe0b0449845d319d1a7497175)
Theorem hlt_ONTO : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, hl_ONTO A B f = 1 <-> forall y :e B, exists x :e A, y = f x.
Admitted.

// HOL Light: nums.ml:28 / INFINITY_AX   (hash md5:b594b682616676f3746f7a7ad56f3206)
Theorem hlt_INFINITY_AX : exists f :e omega :^: omega, hl_ONE_ONE omega omega f = 1 /\ ~ hl_ONTO omega omega f = 1.
Admitted.

// HOL Light: nums.ml:35 / IND_SUC_0_EXISTS   (hash md5:76d6532182ac1531dac8208b34be6e12)
Theorem hlt_IND_SUC_0_EXISTS : exists f :e omega :^: omega, exists z :e omega, (forall x1 x2 :e omega, f x1 = f x2 <-> x1 = x2) /\ forall x :e omega, ~ f x = z.
Admitted.

// HOL Light: nums.ml:40 / IND_SUC_SPEC   (hash md5:24df6769b13c3bc002fe6ad687019827)
Theorem hlt_IND_SUC_SPEC : (forall x1 x2 :e omega, hl_IND_SUC x1 = hl_IND_SUC x2 <-> x1 = x2) /\ forall x :e omega, ~ hl_IND_SUC x = hl_IND_0.
Admitted.

// HOL Light: nums.ml:50 / IND_SUC_0   (hash md5:87939994943e74592d4327cf50f30d52)
Theorem hlt_IND_SUC_0 : forall x :e omega, ~ hl_IND_SUC x = hl_IND_0.
Admitted.

// HOL Light: nums.ml:50 / IND_SUC_INJ   (hash md5:1ba25963c6ce068a06aed8ba6640c30d)
Theorem hlt_IND_SUC_INJ : forall x1 x2 :e omega, hl_IND_SUC x1 = hl_IND_SUC x2 <-> x1 = x2.
Admitted.

// HOL Light: nums.ml:56 / NUM_REP_CASES   (hash md5:77961099dc796c291f7fdfa598745acf)
Theorem hlt_NUM_REP_CASES : forall a :e omega, hl_NUM_REP a = 1 <-> a = hl_IND_0 \/ exists i :e omega, a = hl_IND_SUC i /\ hl_NUM_REP i = 1.
Admitted.

// HOL Light: nums.ml:56 / NUM_REP_INDUCT   (hash md5:ebb4ad5f252bcc6de8b9fbfac2fdc78e)
Theorem hlt_NUM_REP_INDUCT : forall NUM_REP' :e 2 :^: omega, NUM_REP' hl_IND_0 = 1 /\ (forall i :e omega, NUM_REP' i = 1 -> NUM_REP' (hl_IND_SUC i) = 1) -> forall a :e omega, hl_NUM_REP a = 1 -> NUM_REP' a = 1.
Admitted.

// HOL Light: nums.ml:56 / NUM_REP_RULES   (hash md5:f8036db1c49372a5b37ba1866a9742c2)
Theorem hlt_NUM_REP_RULES : hl_NUM_REP hl_IND_0 = 1 /\ forall i :e omega, hl_NUM_REP i = 1 -> hl_NUM_REP (hl_IND_SUC i) = 1.
Admitted.

// HOL Light: nums.ml:75 / NOT_SUC   (hash md5:08c916fb9a846af5b7a22a1e10f97142)
Theorem hlt_NOT_SUC : forall n :e omega, ~ hl_SUC n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: nums.ml:80 / SUC_INJ   (hash md5:5224521fb640c43e425c96e6462ab6d0)
Theorem hlt_SUC_INJ : forall m n :e omega, hl_SUC m = hl_SUC n <-> m = n.
Admitted.

// HOL Light: nums.ml:96 / num_INDUCTION   (hash md5:95f125bb90820dfc772fce4559903527)
Theorem hlt_num_INDUCTION : forall P :e 2 :^: omega, P (hl_NUMERAL hl_zero) = 1 /\ (forall n :e omega, P n = 1 -> P (hl_SUC n) = 1) -> forall n :e omega, P n = 1.
Admitted.

// HOL Light: nums.ml:116 / num_Axiom   (hash md5:22351265077b01108064d138b673a797)
Theorem hlt_num_Axiom : forall A:set, A <> Empty -> forall e1 :e A, forall f :e A :^: omega :^: A, hl_exists_unique (A :^: omega) (fun fn :e A :^: omega => if fn (hl_NUMERAL hl_zero) = e1 /\ forall n :e omega, fn (hl_SUC n) = f (fn n) n then 1 else 0) = 1.
Admitted.

// HOL Light: nums.ml:149 / NUMERAL   (hash md5:2426be4ee095601a3317c8072e5b59f9)
Theorem hlt_NUMERAL : forall n :e omega, hl_NUMERAL n = n.
Admitted.

// HOL Light: nums.ml:169 / num_RECURSION   (hash md5:b287304fbed4be3d30468df5802532bb)
Theorem hlt_num_RECURSION : forall A:set, A <> Empty -> forall e1 :e A, forall f :e A :^: omega :^: A, exists fn :e A :^: omega, fn (hl_NUMERAL hl_zero) = e1 /\ forall n :e omega, fn (hl_SUC n) = f (fn n) n.
Admitted.

// HOL Light: nums.ml:177 / num_CASES   (hash md5:f202972a2e9786d2257c90d475eac48a)
Theorem hlt_num_CASES : forall m :e omega, m = hl_NUMERAL hl_zero \/ exists n :e omega, m = hl_SUC n.
Admitted.

// HOL Light: nums.ml:192 / BIT0_DEF   (hash md5:cee1bcf83250b63d8623c6b4cebc7e98)
Theorem hlt_BIT0_DEF : hl_BIT0 (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero /\ forall n :e omega, hl_BIT0 (hl_SUC n) = hl_SUC (hl_SUC (hl_BIT0 n)).
Admitted.

// HOL Light: nums.ml:200 / BIT1_DEF   (hash md5:bd2631f8d3c5ce7d18b1dbba22927d46)
Theorem hlt_BIT1_DEF : forall n :e omega, hl_BIT1 n = hl_SUC (hl_BIT0 n).
Admitted.

