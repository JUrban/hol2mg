// hol2mg literal statements (private): shard grouptheory of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/grouptheory.ml:13 / group_tybij   (hash md5:84b04d28309566c48641ece6c5d8ca33)
Theorem hlt_group_tybij : forall A:set, A <> Empty -> (forall a :e hl_ty_group A, hl_group A (hl_group_operations A a) = a) /\ forall r :e 2 :^: A :*: (A :*: (A :^: A :*: A :^: A :^: A)), hl_IN A (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ ((forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_IN A (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) /\ ((forall x y :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ hl_IN A y (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_IN A (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x y) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) /\ ((forall x y z :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ (hl_IN A y (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ hl_IN A z (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) y z) = hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x y) z) /\ ((forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x = x /\ hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) = x) /\ (forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) x = hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) /\ hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) = hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)))))) <-> hl_group_operations A (hl_group A r) = r.
Admitted.

// HOL Light: Library/grouptheory.ml:29 / group_carrier   (hash md5:6c29ae9cc1317f389730942996e43187)
Theorem hlt_group_carrier_thm : forall A:set, A <> Empty -> hl_group_carrier A = fun g :e hl_ty_group A => hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_operations A g).
Admitted.

// HOL Light: Library/grouptheory.ml:32 / group_id   (hash md5:c7184555bf9e8fc6950bdbc8a5ad1c34)
Theorem hlt_group_id_thm : forall A:set, A <> Empty -> hl_group_id A = fun g :e hl_ty_group A => hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_operations A g)).
Admitted.

// HOL Light: Library/grouptheory.ml:35 / group_inv   (hash md5:a3f69b8495e7a64a6327b63d7c57a0e7)
Theorem hlt_group_inv_thm : forall A:set, A <> Empty -> hl_group_inv A = fun g :e hl_ty_group A => hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_operations A g))).
Admitted.

// HOL Light: Library/grouptheory.ml:38 / group_mul   (hash md5:e198d0d4ab92121ede318474d48e4cc6)
Theorem hlt_group_mul_thm : forall A:set, A <> Empty -> hl_group_mul A = fun g :e hl_ty_group A => hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_operations A g))).
Admitted.

// HOL Light: Library/grouptheory.ml:66 / GROUPS_EQ   (hash md5:ac6b24d1e62a3e584ea2eec574e99e7d)
Theorem hlt_GROUPS_EQ : forall A:set, A <> Empty -> forall G H :e hl_ty_group A, G = H <-> hl_group_carrier A G = hl_group_carrier A H /\ (hl_group_id A G = hl_group_id A H /\ (hl_group_inv A G = hl_group_inv A H /\ hl_group_mul A G = hl_group_mul A H)).
Admitted.

// HOL Light: Library/grouptheory.ml:77 / GROUP_CARRIER_NONEMPTY   (hash md5:f34cf7937e4405f14e5dad5c40c3c596)
Theorem hlt_GROUP_CARRIER_NONEMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, ~ hl_group_carrier A G = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:85 / singleton_group   (hash md5:6eaa4df489445315945a76574ae8b272)
Theorem hlt_singleton_group_thm : forall A:set, A <> Empty -> forall a :e A, hl_singleton_group A a = hl_group A (hl_pair (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_INSERT A a (hl_EMPTY A)) (hl_pair A (A :^: A :*: A :^: A :^: A) a (hl_pair (A :^: A) (A :^: A :^: A) (fun x :e A => a) (fun x :e A => fun y :e A => a)))).
Admitted.

// HOL Light: Library/grouptheory.ml:88 / SINGLETON_GROUP   (hash md5:34f3de4d7776299b60e1f9a5d803d962)
Theorem hlt_SINGLETON_GROUP : forall A:set, A <> Empty -> (forall a :e A, hl_group_carrier A (hl_singleton_group A a) = hl_INSERT A a (hl_EMPTY A)) /\ ((forall a :e A, hl_group_id A (hl_singleton_group A a) = a) /\ ((forall a :e A, hl_group_inv A (hl_singleton_group A a) = fun x :e A => a) /\ forall a :e A, hl_group_mul A (hl_singleton_group A a) = fun x :e A => fun y :e A => a)).
Admitted.

// HOL Light: Library/grouptheory.ml:100 / trivial_group   (hash md5:2adbef48a10a0a0c3ab0dd42be235865)
Theorem hlt_trivial_group_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 <-> hl_group_carrier A G = hl_INSERT A (hl_group_id A G) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:103 / TRIVIAL_IMP_FINITE_GROUP   (hash md5:a2adbc828cb1cabdc600063f118cd24e)
Theorem hlt_TRIVIAL_IMP_FINITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 -> hl_FINITE A (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:107 / TRIVIAL_GROUP_SINGLETON_GROUP   (hash md5:ddf2cd78a0d4f98d7a5a46bcda6da3ba)
Theorem hlt_TRIVIAL_GROUP_SINGLETON_GROUP : forall A:set, A <> Empty -> forall a :e A, hl_trivial_group A (hl_singleton_group A a) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:111 / FINITE_SINGLETON_GROUP   (hash md5:c2b29112b85afa61c2db6f184149611c)
Theorem hlt_FINITE_SINGLETON_GROUP : forall A:set, A <> Empty -> forall a :e A, hl_FINITE A (hl_group_carrier A (hl_singleton_group A a)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:115 / TRIVIAL_GROUP_SUBSET   (hash md5:75401009201d74e38947c24091317ee1)
Theorem hlt_TRIVIAL_GROUP_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 <-> hl_SUBSET A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:119 / TRIVIAL_GROUP   (hash md5:3e62435109193cc24146e082673239b2)
Theorem hlt_TRIVIAL_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 <-> exists a :e A, hl_group_carrier A G = hl_INSERT A a (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:125 / TRIVIAL_GROUP_ALT   (hash md5:8ed2eca6907b4add49eca39ad08fe92e)
Theorem hlt_TRIVIAL_GROUP_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 <-> exists a :e A, hl_SUBSET A (hl_group_carrier A G) (hl_INSERT A a (hl_EMPTY A)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:130 / TRIVIAL_GROUP_HAS_SIZE_1   (hash md5:90cf383cdf5be7ab024fe7cd0b589872)
Theorem hlt_TRIVIAL_GROUP_HAS_SIZE_1 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 <-> hl_HAS_SIZE A (hl_group_carrier A G) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:135 / GROUP_CARRIER_HAS_SIZE_1   (hash md5:908f04a0195f45f424ed623d0f6598f3)
Theorem hlt_GROUP_CARRIER_HAS_SIZE_1 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_HAS_SIZE A (hl_group_carrier A G) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> hl_trivial_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:143 / opposite_group   (hash md5:e735e9841bd36fa3b7f6dc593061bba2)
Theorem hlt_opposite_group_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_opposite_group A G = hl_group A (hl_pair (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_carrier A G) (hl_pair A (A :^: A :*: A :^: A :^: A) (hl_group_id A G) (hl_pair (A :^: A) (A :^: A :^: A) (hl_group_inv A G) (fun x :e A => fun y :e A => hl_group_mul A G y x)))).
Admitted.

// HOL Light: Library/grouptheory.ml:148 / OPPOSITE_GROUP   (hash md5:27526ccca7e091197a1a124e2610b419)
Theorem hlt_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_carrier A (hl_opposite_group A G) = hl_group_carrier A G /\ (hl_group_id A (hl_opposite_group A G) = hl_group_id A G /\ (hl_group_inv A (hl_opposite_group A G) = hl_group_inv A G /\ hl_group_mul A (hl_opposite_group A G) = fun x :e A => fun y :e A => hl_group_mul A G y x)).
Admitted.

// HOL Light: Library/grouptheory.ml:162 / OPPOSITE_OPPOSITE_GROUP   (hash md5:21a62bce8c0ae3df5bce44ed8bdf3f3f)
Theorem hlt_OPPOSITE_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_opposite_group A (hl_opposite_group A G) = G.
Admitted.

// HOL Light: Library/grouptheory.ml:169 / OPPOSITE_GROUP_INV   (hash md5:f234044a5baf0f11fdf885ef1aaf252b)
Theorem hlt_OPPOSITE_GROUP_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_inv A (hl_opposite_group A G) x = hl_group_inv A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:173 / OPPOSITE_GROUP_MUL   (hash md5:8e99aaa3d92eac7325dc12c925d85edf)
Theorem hlt_OPPOSITE_GROUP_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_group_mul A (hl_opposite_group A G) x y = hl_group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:177 / OPPOSITE_SINGLETON_GROUP   (hash md5:96eb60c282793db088ad555e5afab58a)
Theorem hlt_OPPOSITE_SINGLETON_GROUP : forall A:set, A <> Empty -> forall a :e A, hl_opposite_group A (hl_singleton_group A a) = hl_singleton_group A a.
Admitted.

// HOL Light: Library/grouptheory.ml:181 / TRIVIAL_OPPOSITE_GROUP   (hash md5:e9ea21a56113e048075afd9ac6b063b6)
Theorem hlt_TRIVIAL_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A (hl_opposite_group A G) = 1 <-> hl_trivial_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:185 / FINITE_OPPOSITE_GROUP   (hash md5:48106bdbca284579367232ff7d2ed029)
Theorem hlt_FINITE_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_FINITE A (hl_group_carrier A (hl_opposite_group A G)) = 1 <-> hl_FINITE A (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:195 / group_div   (hash md5:7de4a2daa8affbe123012eef7c7406f9)
Theorem hlt_group_div_thm : forall A:set, A <> Empty -> forall x :e A, forall G :e hl_ty_group A, forall y :e A, hl_group_div A G x y = hl_group_mul A G x (hl_group_inv A G y).
Admitted.

// HOL Light: Library/grouptheory.ml:198 / GROUP_DIV   (hash md5:3060cbb33d2de9381fa0b7dfb0e3f42f)
Theorem hlt_GROUP_DIV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_IN A (hl_group_div A G x y) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:204 / GROUP_MUL_LCANCEL   (hash md5:c0d851ec5d083253a4f9648e5270bfce)
Theorem hlt_GROUP_MUL_LCANCEL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y z :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A z (hl_group_carrier A G) = 1) -> (hl_group_mul A G x y = hl_group_mul A G x z <-> y = z).
Admitted.

// HOL Light: Library/grouptheory.ml:212 / GROUP_MUL_LCANCEL_IMP   (hash md5:437bd2a8749bafed93283be5b1fdb3be)
Theorem hlt_GROUP_MUL_LCANCEL_IMP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y z :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_IN A z (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_mul A G x z)) -> y = z.
Admitted.

// HOL Light: Library/grouptheory.ml:219 / GROUP_MUL_RCANCEL   (hash md5:c9b146919e8bc28996c8342da36425a0)
Theorem hlt_GROUP_MUL_RCANCEL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y z :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A z (hl_group_carrier A G) = 1) -> (hl_group_mul A G x z = hl_group_mul A G y z <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:226 / GROUP_MUL_RCANCEL_IMP   (hash md5:c1b3a5529c3667c67e00548b8334dc63)
Theorem hlt_GROUP_MUL_RCANCEL_IMP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y z :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_IN A z (hl_group_carrier A G) = 1 /\ hl_group_mul A G x z = hl_group_mul A G y z)) -> x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:233 / GROUP_LID_UNIQUE   (hash md5:6214dc6596bfa4f109539f1cf32dde83)
Theorem hlt_GROUP_LID_UNIQUE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = y) -> x = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:239 / GROUP_RID_UNIQUE   (hash md5:bfde81022ab67b73b34878b9aa8154d6)
Theorem hlt_GROUP_RID_UNIQUE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = x) -> y = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:245 / GROUP_LID_EQ   (hash md5:516c601f04eb07184c41a87401108c94)
Theorem hlt_GROUP_LID_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_mul A G x y = y <-> x = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:251 / GROUP_RID_EQ   (hash md5:cfef9f7ae0791c47aa76bff53aa41561)
Theorem hlt_GROUP_RID_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_mul A G x y = x <-> y = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:257 / GROUP_LINV_UNIQUE   (hash md5:813e16a79d2fe61cf9b5cb18e4676a79)
Theorem hlt_GROUP_LINV_UNIQUE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_id A G) -> hl_group_inv A G x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:264 / GROUP_RINV_UNIQUE   (hash md5:73a0212721c326689250b067fd3cca09)
Theorem hlt_GROUP_RINV_UNIQUE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_id A G) -> hl_group_inv A G y = x.
Admitted.

// HOL Light: Library/grouptheory.ml:271 / GROUP_LINV_EQ   (hash md5:d47a19443d393f14f710c4fea8e7d110)
Theorem hlt_GROUP_LINV_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_inv A G x = y <-> hl_group_mul A G x y = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:277 / GROUP_RINV_EQ   (hash md5:8b510179dc902186a56fa39e5cbf85bb)
Theorem hlt_GROUP_RINV_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_inv A G x = y <-> hl_group_mul A G y x = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:283 / GROUP_MUL_EQ_ID   (hash md5:47e609172db46c0fdba3dab5f8a0e18d)
Theorem hlt_GROUP_MUL_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_mul A G x y = hl_group_id A G <-> hl_group_mul A G y x = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:289 / GROUP_INV_INV   (hash md5:e0a9cd05c2827ffd9469a4fd893f578c)
Theorem hlt_GROUP_INV_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_inv A G (hl_group_inv A G x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:294 / GROUP_INV_ID   (hash md5:1bda76b9d6b14f65819ac74e89ba5467)
Theorem hlt_GROUP_INV_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_inv A G (hl_group_id A G) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:299 / GROUP_INV_EQ_ID   (hash md5:faaf08b98bb12f35f8812fc18d8516cc)
Theorem hlt_GROUP_INV_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_inv A G x = hl_group_id A G <-> x = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:305 / GROUP_INV_MUL   (hash md5:ae318437c0f39a9c942c1944f3ca4f00)
Theorem hlt_GROUP_INV_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_group_inv A G (hl_group_mul A G x y) = hl_group_mul A G (hl_group_inv A G y) (hl_group_inv A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:318 / GROUP_INV_EQ   (hash md5:f6fa014cc3c2c2e4d6659b62879778ab)
Theorem hlt_GROUP_INV_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_inv A G x = hl_group_inv A G y <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:323 / GROUP_DIV_REFL   (hash md5:3b770fa5549f093674c2a82c9f25856e)
Theorem hlt_GROUP_DIV_REFL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_div A G x x = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:327 / GROUP_DIV_EQ_ID   (hash md5:7cf2e961575b2e7afaaa35504556c205)
Theorem hlt_GROUP_DIV_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_div A G x y = hl_group_id A G <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:336 / GROUP_COMMUTES_INV   (hash md5:6b749ff610ec72fd79066f6145aaac95)
Theorem hlt_GROUP_COMMUTES_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_mul A G y x) -> hl_group_mul A G (hl_group_inv A G x) y = hl_group_mul A G y (hl_group_inv A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:347 / GROUP_COMMUTES_INV_EQ   (hash md5:a69e86aabae6507019fceb72ec09b02a)
Theorem hlt_GROUP_COMMUTES_INV_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_mul A G (hl_group_inv A G x) y = hl_group_mul A G y (hl_group_inv A G x) <-> hl_group_mul A G x y = hl_group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:354 / GROUP_COMMUTES_MUL   (hash md5:a1c21e00f1abf9cc509554f84fa36008)
Theorem hlt_GROUP_COMMUTES_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y z :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_IN A z (hl_group_carrier A G) = 1 /\ (hl_group_mul A G x z = hl_group_mul A G z x /\ hl_group_mul A G y z = hl_group_mul A G z y))) -> hl_group_mul A G (hl_group_mul A G x y) z = hl_group_mul A G z (hl_group_mul A G x y).
Admitted.

// HOL Light: Library/grouptheory.ml:364 / FORALL_IN_GROUP_CARRIER_INV   (hash md5:c491bbf020fb224f1ff2af9de740a1e0)
Theorem hlt_FORALL_IN_GROUP_CARRIER_INV : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall G :e hl_ty_group A, (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> P (hl_group_inv A G x) = 1) <-> forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> P x = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:370 / EXISTS_IN_GROUP_CARRIER_INV   (hash md5:1deabdc3403bf497021c274b416efbfd)
Theorem hlt_EXISTS_IN_GROUP_CARRIER_INV : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall G :e hl_ty_group A, (exists x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ P (hl_group_inv A G x) = 1) <-> exists x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ P x = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:376 / group_pow   (hash md5:3835fe8db55afcd2ef2c2d354b3dda1e)
Theorem hlt_group_pow_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_group_pow A G x (hl_NUMERAL hl_zero) = hl_group_id A G /\ hl_group_pow A G x (hl_SUC n) = hl_group_mul A G x (hl_group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:380 / GROUP_POW   (hash md5:3d646110876de48cf041ab17defed000)
Theorem hlt_GROUP_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> hl_IN A (hl_group_pow A G x n) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:386 / GROUP_POW_0   (hash md5:8116a8f460e048406e9806b163794861)
Theorem hlt_GROUP_POW_0 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_pow A G x (hl_NUMERAL hl_zero) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:390 / GROUP_POW_1   (hash md5:d08913bc53a25dd358388e9078b7b557)
Theorem hlt_GROUP_POW_1 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_pow A G x (hl_NUMERAL (hl_BIT1 hl_zero)) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:394 / GROUP_POW_2   (hash md5:98da8d18e219e346296013b973d161b1)
Theorem hlt_GROUP_POW_2 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_pow A G x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_group_mul A G x x.
Admitted.

// HOL Light: Library/grouptheory.ml:398 / GROUP_POW_ID   (hash md5:aca8edc3424664d90ab3f530db98eb50)
Theorem hlt_GROUP_POW_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_group_pow A G (hl_group_id A G) n = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:402 / GROUP_POW_ADD   (hash md5:d0426686bb5ba89b85c73bce45dbc97b)
Theorem hlt_GROUP_POW_ADD : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_pow A G x (hl_add m n) = hl_group_mul A G (hl_group_pow A G x m) (hl_group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:413 / GROUP_POW_SUB   (hash md5:7a01f5fb13d3dab5976b26c1e9f55d74)
Theorem hlt_GROUP_POW_SUB : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_le n m = 1 -> hl_group_pow A G x (hl_sub m n) = hl_group_div A G (hl_group_pow A G x m) (hl_group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:424 / GROUP_POW_SUB_ALT   (hash md5:0a573c7ec58d9f4dba40193c85dbcc37)
Theorem hlt_GROUP_POW_SUB_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_le n m = 1 -> hl_group_pow A G x (hl_sub m n) = hl_group_mul A G (hl_group_inv A G (hl_group_pow A G x n)) (hl_group_pow A G x m).
Admitted.

// HOL Light: Library/grouptheory.ml:435 / GROUP_INV_POW   (hash md5:c63b8a8ba68739f77aca8576808c4005)
Theorem hlt_GROUP_INV_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_inv A G (hl_group_pow A G x n) = hl_group_pow A G (hl_group_inv A G x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:445 / GROUP_POW_MUL   (hash md5:cc2db4e595ac6ed15e934fe4d6edd070)
Theorem hlt_GROUP_POW_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_pow A G x (hl_mul m n) = hl_group_pow A G (hl_group_pow A G x m) n.
Admitted.

// HOL Light: Library/grouptheory.ml:454 / GROUP_POW_POW   (hash md5:be1c80cd1255563ffcc6d06041868a34)
Theorem hlt_GROUP_POW_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_pow A G (hl_group_pow A G x m) n = hl_group_pow A G x (hl_mul m n).
Admitted.

// HOL Light: Library/grouptheory.ml:460 / GROUP_COMMUTES_POW   (hash md5:d008df95e324b06e333d7305c4fe31a3)
Theorem hlt_GROUP_COMMUTES_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_mul A G y x) -> hl_group_mul A G (hl_group_pow A G x n) y = hl_group_mul A G y (hl_group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:470 / GROUP_MUL_POW   (hash md5:a2c0c107839ca36283767ade9b6fbd83)
Theorem hlt_GROUP_MUL_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_mul A G y x) -> hl_group_pow A G (hl_group_mul A G x y) n = hl_group_mul A G (hl_group_pow A G x n) (hl_group_pow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:485 / group_zpow   (hash md5:6058e8d691ce8951a84d378acba1d35f)
Theorem hlt_group_zpow_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e hl_ty_int, hl_group_zpow A G x n = hl_COND A (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n) (hl_group_pow A G x (hl_num_of_int n)) (hl_group_inv A G (hl_group_pow A G x (hl_num_of_int (hl_int_neg n)))).
Admitted.

// HOL Light: Library/grouptheory.ml:490 / GROUP_ZPOW   (hash md5:bf1ecfa11405b64383a4ca7126a9ba66)
Theorem hlt_GROUP_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> hl_IN A (hl_group_zpow A G x n) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:495 / GROUP_NPOW   (hash md5:157da0dfed293aa5566f6df4e7fc562c)
Theorem hlt_GROUP_NPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_group_zpow A G x (hl_int_of_num n) = hl_group_pow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:499 / GROUP_ZPOW_0   (hash md5:ee1948e55e2ec91f975ac0995ed067c2)
Theorem hlt_GROUP_ZPOW_0 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_zpow A G x (hl_int_of_num (hl_NUMERAL hl_zero)) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:503 / GROUP_ZPOW_1   (hash md5:c7e4de523738a7c54c5dbd6dc0fdc808)
Theorem hlt_GROUP_ZPOW_1 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:507 / GROUP_ZPOW_2   (hash md5:85dfe3e01a6a3864899ce8edd9851369)
Theorem hlt_GROUP_ZPOW_2 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_group_mul A G x x.
Admitted.

// HOL Light: Library/grouptheory.ml:511 / GROUP_ZPOW_ID   (hash md5:c680b1c07e22f22f06281575bcdb4c5c)
Theorem hlt_GROUP_ZPOW_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e hl_ty_int, hl_group_zpow A G (hl_group_id A G) n = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:515 / GROUP_ZPOW_NEG   (hash md5:e26b3722f140727d1756246bdea87d5f)
Theorem hlt_GROUP_ZPOW_NEG : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_int_neg n) = hl_group_inv A G (hl_group_zpow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:526 / GROUP_ZPOW_MINUS1   (hash md5:5f23315c7482e6a7480e03b2d6ca14ca)
Theorem hlt_GROUP_ZPOW_MINUS1 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_group_inv A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:530 / GROUP_ZPOW_POW   (hash md5:f007814563cb1226f4a3b5bea8fe8a33)
Theorem hlt_GROUP_ZPOW_POW : forall A:set, A <> Empty -> (forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_group_zpow A G x (hl_int_of_num n) = hl_group_pow A G x n) /\ forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_group_zpow A G x (hl_int_neg (hl_int_of_num n)) = hl_group_inv A G (hl_group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:538 / GROUP_ZPOW_ABS_EQ_ID   (hash md5:2a0e6fe2363e540869688417e7f25440)
Theorem hlt_GROUP_ZPOW_ABS_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_zpow A G x (hl_int_abs n) = hl_group_id A G <-> hl_group_zpow A G x n = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:547 / GROUP_ZPOW_ADD   (hash md5:75c78d887b43182a2af4d6bcaba4158c)
Theorem hlt_GROUP_ZPOW_ADD : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_int_add m n) = hl_group_mul A G (hl_group_zpow A G x m) (hl_group_zpow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:577 / GROUP_ZPOW_SUB   (hash md5:39290df61617234308b7f57a8f46a1f2)
Theorem hlt_GROUP_ZPOW_SUB : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_int_sub m n) = hl_group_div A G (hl_group_zpow A G x m) (hl_group_zpow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:584 / GROUP_ZPOW_SUB_ALT   (hash md5:491efc9ec8fa85b6522977e777411ca2)
Theorem hlt_GROUP_ZPOW_SUB_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_int_sub m n) = hl_group_mul A G (hl_group_inv A G (hl_group_zpow A G x n)) (hl_group_zpow A G x m).
Admitted.

// HOL Light: Library/grouptheory.ml:592 / GROUP_INV_ZPOW   (hash md5:313394a507ef1eadd46e1533cc00bed7)
Theorem hlt_GROUP_INV_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_inv A G (hl_group_zpow A G x n) = hl_group_zpow A G (hl_group_inv A G x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:599 / GROUP_ZPOW_INV   (hash md5:2ce1d31d6ff29fecf0ae53a92a82e270)
Theorem hlt_GROUP_ZPOW_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G (hl_group_inv A G x) n = hl_group_zpow A G x (hl_int_neg n).
Admitted.

// HOL Light: Library/grouptheory.ml:605 / GROUP_ZPOW_MUL   (hash md5:5646399ca4c1e0405cd6d47a53d360be)
Theorem hlt_GROUP_ZPOW_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_int_mul m n) = hl_group_zpow A G (hl_group_zpow A G x m) n.
Admitted.

// HOL Light: Library/grouptheory.ml:620 / GROUP_COMMUTES_ZPOW   (hash md5:174b920d9a8060b51e1fd071ed27dd1f)
Theorem hlt_GROUP_COMMUTES_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_mul A G y x) -> hl_group_mul A G (hl_group_zpow A G x n) y = hl_group_mul A G y (hl_group_zpow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:630 / GROUP_MUL_ZPOW   (hash md5:5b8d696d36085de6b0a96d8cd9323fb1)
Theorem hlt_GROUP_MUL_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_mul A G y x) -> hl_group_zpow A G (hl_group_mul A G x y) n = hl_group_mul A G (hl_group_zpow A G x n) (hl_group_zpow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:644 / abelian_group   (hash md5:a271522a959d209297e565074a514c3a)
Theorem hlt_abelian_group_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 <-> forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:649 / TRIVIAL_IMP_ABELIAN_GROUP   (hash md5:6cf010d7f578cdbbe18d359046efd84d)
Theorem hlt_TRIVIAL_IMP_ABELIAN_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 -> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:653 / ABELIAN_SINGLETON_GROUP   (hash md5:98894e639ae4c0d0d0aa909e6e7b30d8)
Theorem hlt_ABELIAN_SINGLETON_GROUP : forall A:set, A <> Empty -> forall a :e A, hl_abelian_group A (hl_singleton_group A a) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:657 / ABELIAN_OPPOSITE_GROUP   (hash md5:140ea1d5f96951b204b06782b3c1fa65)
Theorem hlt_ABELIAN_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A (hl_opposite_group A G) = 1 <-> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:662 / ABELIAN_GROUP_MUL_POW   (hash md5:7673304f1378ef757fd1409722eadda2)
Theorem hlt_ABELIAN_GROUP_MUL_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e omega, hl_abelian_group A G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_group_pow A G (hl_group_mul A G x y) n = hl_group_mul A G (hl_group_pow A G x n) (hl_group_pow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:669 / ABELIAN_GROUP_MUL_ZPOW   (hash md5:d67cf2697c16fabf712f275b3d5863f3)
Theorem hlt_ABELIAN_GROUP_MUL_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e hl_ty_int, hl_abelian_group A G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_group_zpow A G (hl_group_mul A G x y) n = hl_group_mul A G (hl_group_zpow A G x n) (hl_group_zpow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:676 / ABELIAN_GROUP_DIV_ZPOW   (hash md5:d7e3149f5393ae5829b7f6584c4c2fc1)
Theorem hlt_ABELIAN_GROUP_DIV_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e hl_ty_int, hl_abelian_group A G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_group_zpow A G (hl_group_div A G x y) n = hl_group_div A G (hl_group_zpow A G x n) (hl_group_zpow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:683 / ABELIAN_GROUP_MUL_AC   (hash md5:7d2a86834e527ab644997eee5f801ea0)
Theorem hlt_ABELIAN_GROUP_MUL_AC : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 <-> (forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x) /\ ((forall x y z :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A z (hl_group_carrier A G) = 1) -> hl_group_mul A G (hl_group_mul A G x y) z = hl_group_mul A G x (hl_group_mul A G y z)) /\ forall x y z :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A z (hl_group_carrier A G) = 1) -> hl_group_mul A G x (hl_group_mul A G y z) = hl_group_mul A G y (hl_group_mul A G x z)).
Admitted.

// HOL Light: Library/grouptheory.ml:704 / group_neg   (hash md5:3d94d2f3e9ffad1ad2a248ad30bbb0a3)
Theorem hlt_group_neg_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_neg A G x = hl_COND A (hl_IN A x (hl_group_carrier A G)) (hl_group_inv A G x) x.
Admitted.

// HOL Light: Library/grouptheory.ml:707 / group_add   (hash md5:72a818adb8c01722e73807cec8e9d706)
Theorem hlt_group_add_thm : forall A:set, A <> Empty -> forall y x :e A, forall G :e hl_ty_group A, hl_group_add A G x y = hl_COND A (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 then 1 else 0) (hl_group_mul A G x y) (hl_COND A (hl_IN A x (hl_group_carrier A G)) y (hl_COND A (hl_IN A y (hl_group_carrier A G)) x (hl_select A (fun w :e A => if ~ hl_IN A w (hl_group_carrier A G) = 1 then 1 else 0)))).
Admitted.

// HOL Light: Library/grouptheory.ml:715 / group_nmul   (hash md5:1d67c84457cd0d47b9bfec5372dc058d)
Theorem hlt_group_nmul_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_group_nmul A G (hl_NUMERAL hl_zero) x = hl_group_id A G /\ hl_group_nmul A G (hl_SUC n) x = hl_group_add A G x (hl_group_nmul A G n x).
Admitted.

// HOL Light: Library/grouptheory.ml:719 / GROUP_NEG   (hash md5:d9ef9858613e92bcd52a7b8aa2316879)
Theorem hlt_GROUP_NEG : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A (hl_group_neg A G x) (hl_group_carrier A G) = 1 <-> hl_IN A x (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:723 / GROUP_ADD   (hash md5:729d5630723169a8784159f4009b0e7c)
Theorem hlt_GROUP_ADD : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A (hl_group_add A G x y) (hl_group_carrier A G) = 1 <-> hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:729 / GROUP_NEG_EQ_INV   (hash md5:4bbec75206f679f7c64deca9cfdf85f2)
Theorem hlt_GROUP_NEG_EQ_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_neg A G x = hl_group_inv A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:733 / GROUP_ADD_EQ_MUL   (hash md5:17abc6f51ff61d58f445ec7a37135bf7)
Theorem hlt_GROUP_ADD_EQ_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_group_add A G x y = hl_group_mul A G x y.
Admitted.

// HOL Light: Library/grouptheory.ml:739 / GROUP_ADD_LID   (hash md5:e7b581b6f5c3283e0a5d20f5ea60ae72)
Theorem hlt_GROUP_ADD_LID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_add A G (hl_group_id A G) x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:743 / GROUP_ADD_RID   (hash md5:cb69ee955173f06f8da8c2208c40b4b2)
Theorem hlt_GROUP_ADD_RID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_add A G x (hl_group_id A G) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:747 / GROUP_ADD_ASSOC   (hash md5:144f1204d9d2c89634d63409d02bcf70)
Theorem hlt_GROUP_ADD_ASSOC : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y z :e A, hl_group_add A G x (hl_group_add A G y z) = hl_group_add A G (hl_group_add A G x y) z.
Admitted.

// HOL Light: Library/grouptheory.ml:759 / GROUP_NEG_ADD   (hash md5:a1fee19238a2711ed3ff41e57385b8a7)
Theorem hlt_GROUP_NEG_ADD : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_group_neg A G (hl_group_add A G x y) = hl_group_add A G (hl_group_neg A G y) (hl_group_neg A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:770 / GROUP_NEG_NEG   (hash md5:9149863332dd1ad2c98fdab27e3d46aa)
Theorem hlt_GROUP_NEG_NEG : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_neg A G (hl_group_neg A G x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:775 / GROUP_NEG_ID   (hash md5:c1d033db0ed3fad8e244bb878141fa0b)
Theorem hlt_GROUP_NEG_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_neg A G (hl_group_id A G) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:779 / GROUP_ADD_EQ_ID   (hash md5:4d89615ee8798f115a3566d47596d42d)
Theorem hlt_GROUP_ADD_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_group_add A G x y = hl_group_id A G <-> hl_group_add A G y x = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:784 / GROUP_NEG_EQ_ID   (hash md5:8e22034d8fcf67dc47499fa9c87539ac)
Theorem hlt_GROUP_NEG_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_neg A G x = hl_group_id A G <-> x = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:788 / GROUP_NMUL_EQ_POW   (hash md5:7030ef35a63aa7e5cc3196a4a6605970)
Theorem hlt_GROUP_NMUL_EQ_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_nmul A G n x = hl_group_pow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:794 / GROUP_NMUL_ADD   (hash md5:da1572f9b660bd425ace32a8a0b309f7)
Theorem hlt_GROUP_NMUL_ADD : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_group_nmul A G (hl_add m n) x = hl_group_add A G (hl_group_nmul A G m x) (hl_group_nmul A G n x).
Admitted.

// HOL Light: Library/grouptheory.ml:802 / GROUP_NMUL_MUL   (hash md5:8b769f32443be0adc9eaf1672477cb1c)
Theorem hlt_GROUP_NMUL_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_group_nmul A G (hl_mul m n) x = hl_group_nmul A G m (hl_group_nmul A G n x).
Admitted.

// HOL Light: Library/grouptheory.ml:810 / GROUP_NMUL_1   (hash md5:2f6f02970b945cf8cea63a938c89a586)
Theorem hlt_GROUP_NMUL_1 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_nmul A G (hl_NUMERAL (hl_BIT1 hl_zero)) x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:814 / GROUP_NEG_NMUL   (hash md5:5e819adda60f2292dc018ee9b57880cd)
Theorem hlt_GROUP_NEG_NMUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_group_neg A G (hl_group_nmul A G n x) = hl_group_nmul A G n (hl_group_neg A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:823 / GROUP_ADD_SYM   (hash md5:8b04816274b77558ae02a6c05a1d4cb2)
Theorem hlt_GROUP_ADD_SYM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_abelian_group A G = 1 -> hl_group_add A G x y = hl_group_add A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:827 / GROUP_ADD_SYM_EQ   (hash md5:3da8db99e72d4563344bdaed2aae8574)
Theorem hlt_GROUP_ADD_SYM_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, (forall x y :e A, hl_group_add A G x y = hl_group_add A G y x) <-> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:831 / GROUP_ADD_NMUL   (hash md5:ba947dff68f0310877477779e58ab9e8)
Theorem hlt_GROUP_ADD_NMUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e omega, hl_abelian_group A G = 1 -> hl_group_nmul A G n (hl_group_add A G x y) = hl_group_add A G (hl_group_nmul A G n x) (hl_group_nmul A G n y).
Admitted.

// HOL Light: Library/grouptheory.ml:843 / NEUTRAL_GROUP_ADD   (hash md5:9a555f3486a51e9780299d9921f0feb4)
Theorem hlt_NEUTRAL_GROUP_ADD : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_neutral A (hl_group_add A G) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:848 / MONOIDAL_GROUP_ADD   (hash md5:7d2462ffeba7f17ed04060a9466a7848)
Theorem hlt_MONOIDAL_GROUP_ADD : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_monoidal A (hl_group_add A G) = 1 <-> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1074 / group_product   (hash md5:b55e6215b76a21538861491d68c1c259)
Theorem hlt_group_product : forall B A:set, B <> Empty -> A <> Empty -> forall G :e hl_ty_group A, hl_group_product A B G = hl_iterato A B (hl_group_carrier A G) (hl_group_id A G) (hl_group_mul A G).
Admitted.

// HOL Light: Library/grouptheory.ml:1078 / group_sum   (hash md5:1e67107706d3f4e580412b5183ed3187)
Theorem hlt_group_sum : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, hl_group_sum A K G = hl_group_product A K G (hl_select (2 :^: K :^: K) (fun l :e 2 :^: K :^: K => if hl_woset K l = 1 /\ hl_fld K l = hl_UNIV K then 1 else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:1082 / GROUP_PRODUCT_EQ   (hash md5:8dc93e0d4e414e9d1c2921056ac4490a)
Theorem hlt_GROUP_PRODUCT_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f g :e A :^: K, (forall i :e K, hl_IN K i k = 1 -> f i = g i) -> hl_group_product A K G lt k f = hl_group_product A K G lt k g.
Admitted.

// HOL Light: Library/grouptheory.ml:1088 / GROUP_SUM_EQ   (hash md5:deb6fa7aa159510bc4dbcc8a785c9b3a)
Theorem hlt_GROUP_SUM_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f g :e A :^: K, (forall i :e K, hl_IN K i k = 1 -> f i = g i) -> hl_group_sum A K G k f = hl_group_sum A K G k g.
Admitted.

// HOL Light: Library/grouptheory.ml:1103 / GROUP_PRODUCT_CLOSED   (hash md5:b009c94753ea242f6a65cc6001480a68)
Theorem hlt_GROUP_PRODUCT_CLOSED : forall A K:set, A <> Empty -> K <> Empty -> forall P :e 2 :^: A, forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, P (hl_group_id A G) = 1 /\ ((forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (P x = 1 /\ P y = 1)) -> P (hl_group_mul A G x y) = 1) /\ (forall i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_group_carrier A G) = 1 /\ ~ f i = hl_group_id A G) -> P (f i) = 1)) -> P (hl_group_product A K G lt k f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1119 / GROUP_SUM_CLOSED   (hash md5:dfa5911924ce0eeb4bec9997172426b6)
Theorem hlt_GROUP_SUM_CLOSED : forall A K:set, A <> Empty -> K <> Empty -> forall P :e 2 :^: A, forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, P (hl_group_id A G) = 1 /\ ((forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (P x = 1 /\ P y = 1)) -> P (hl_group_mul A G x y) = 1) /\ (forall i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_group_carrier A G) = 1 /\ ~ f i = hl_group_id A G) -> P (f i) = 1)) -> P (hl_group_sum A K G k f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1129 / GROUP_PRODUCT   (hash md5:b90ac70341fae04613c7a89edcfd879b)
Theorem hlt_GROUP_PRODUCT : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, hl_IN A (hl_group_product A K G lt k f) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1135 / GROUP_SUM   (hash md5:06ec0cb271f70f2f3f03d975141c7a42)
Theorem hlt_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, hl_IN A (hl_group_sum A K G k f) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1139 / GROUP_PRODUCT_SUPPORT   (hash md5:35d696adfd611a764b3ce9600344f944)
Theorem hlt_GROUP_PRODUCT_SUPPORT : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, hl_group_product A K G lt (hl_GSPEC K (fun GEN_PVAR_757 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_757 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) f = hl_group_product A K G lt k f.
Admitted.

// HOL Light: Library/grouptheory.ml:1147 / GROUP_SUM_SUPPORT   (hash md5:d7e56e6392b8b9b057e6be3a33a428dc)
Theorem hlt_GROUP_SUM_SUPPORT : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, hl_group_sum A K G (hl_GSPEC K (fun GEN_PVAR_758 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_758 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) f = hl_group_sum A K G k f.
Admitted.

// HOL Light: Library/grouptheory.ml:1153 / GROUP_PRODUCT_RESTRICT   (hash md5:84887f87711dc38c62428ba608a96ce6)
Theorem hlt_GROUP_PRODUCT_RESTRICT : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, hl_group_product A K G lt (hl_GSPEC K (fun GEN_PVAR_759 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_759 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_group_carrier A G) = 1 then 1 else 0) i = 1 then 1 else 0)) f = hl_group_product A K G lt k f.
Admitted.

// HOL Light: Library/grouptheory.ml:1161 / GROUP_SUM_RESTRICT   (hash md5:0a3d4185d711155d5741b6ee1b38ce94)
Theorem hlt_GROUP_SUM_RESTRICT : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, hl_group_sum A K G (hl_GSPEC K (fun GEN_PVAR_760 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_760 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_group_carrier A G) = 1 then 1 else 0) i = 1 then 1 else 0)) f = hl_group_sum A K G k f.
Admitted.

// HOL Light: Library/grouptheory.ml:1167 / GROUP_PRODUCT_EXPAND_CASES   (hash md5:1e922acc748e4735322dc972fa55082d)
Theorem hlt_GROUP_PRODUCT_EXPAND_CASES : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, hl_group_product A K G lt k f = hl_COND A (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_761 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_761 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0))) (hl_group_product A K G lt (hl_GSPEC K (fun GEN_PVAR_762 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_762 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) f) (hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:1177 / GROUP_SUM_EXPAND_CASES   (hash md5:49e04301a3e836ef170a7e9542024eb8)
Theorem hlt_GROUP_SUM_EXPAND_CASES : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, hl_group_sum A K G k f = hl_COND A (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_763 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_763 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0))) (hl_group_sum A K G (hl_GSPEC K (fun GEN_PVAR_764 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_764 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) f) (hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:1187 / GROUP_PRODUCT_RESTRICT_SET   (hash md5:f4ab9984ada1f955c5b1da03873153d8)
Theorem hlt_GROUP_PRODUCT_RESTRICT_SET : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall P s :e 2 :^: K, forall f :e A :^: K, hl_group_product A K G lt (hl_GSPEC K (fun GEN_PVAR_765 :e K => if exists x :e K, hl_SETSPEC K GEN_PVAR_765 (if hl_IN K x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_group_product A K G lt s (fun x :e K => hl_COND A (P x) (f x) (hl_group_id A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:1196 / GROUP_SUM_RESTRICT_SET   (hash md5:dfb2a28aedb0c780b762cc5b03f5f515)
Theorem hlt_GROUP_SUM_RESTRICT_SET : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall P s :e 2 :^: K, forall f :e A :^: K, hl_group_sum A K G (hl_GSPEC K (fun GEN_PVAR_766 :e K => if exists x :e K, hl_SETSPEC K GEN_PVAR_766 (if hl_IN K x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_group_sum A K G s (fun x :e K => hl_COND A (P x) (f x) (hl_group_id A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:1202 / GROUP_PRODUCT_SUPERSET   (hash md5:7bae341f3b8795b0a7487c3122526833)
Theorem hlt_GROUP_PRODUCT_SUPERSET : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall s t :e 2 :^: K, forall f :e A :^: K, hl_SUBSET K t s = 1 /\ (forall x :e K, hl_IN K x s = 1 /\ ~ hl_IN K x t = 1 -> f x = hl_group_id A G) -> hl_group_product A K G lt s f = hl_group_product A K G lt t f.
Admitted.

// HOL Light: Library/grouptheory.ml:1209 / GROUP_SUM_SUPERSET   (hash md5:5779bcf2894b852c2d66abc65cfeea00)
Theorem hlt_GROUP_SUM_SUPERSET : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: K, forall f :e A :^: K, hl_SUBSET K t s = 1 /\ (forall x :e K, hl_IN K x s = 1 /\ ~ hl_IN K x t = 1 -> f x = hl_group_id A G) -> hl_group_sum A K G s f = hl_group_sum A K G t f.
Admitted.

// HOL Light: Library/grouptheory.ml:1215 / GROUP_PRODUCT_CLAUSES   (hash md5:0bf12d949f5b93d42ba58d69573a44a7)
Theorem hlt_GROUP_PRODUCT_CLAUSES : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall f :e A :^: K, hl_group_product A K G lt (hl_EMPTY K) f = hl_group_id A G /\ forall i :e K, forall k :e 2 :^: K, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_767 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_767 (if hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) j = 1 then 1 else 0)) = 1 /\ (forall j :e K, hl_IN K j k = 1 -> lt i j = 1 /\ ~ lt j i = 1) -> hl_group_product A K G lt (hl_INSERT K i k) f = hl_COND A (if hl_IN A (f i) (hl_group_carrier A G) = 1 -> hl_IN K i k = 1 then 1 else 0) (hl_group_product A K G lt k f) (hl_group_mul A G (f i) (hl_group_product A K G lt k f)).
Admitted.

// HOL Light: Library/grouptheory.ml:1229 / GROUP_PRODUCT_CLAUSES_EXISTS   (hash md5:621b59a486cf350c8aaee6c7a67444ed)
Theorem hlt_GROUP_PRODUCT_CLAUSES_EXISTS : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall f :e A :^: K, hl_group_product A K G lt (hl_EMPTY K) f = hl_group_id A G /\ forall k :e 2 :^: K, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_768 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_768 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ~ hl_GSPEC K (fun GEN_PVAR_769 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_769 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0) = hl_EMPTY K -> exists i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 /\ hl_group_product A K G lt k f = hl_group_mul A G (f i) (hl_group_product A K G lt (hl_DELETE K k i) f)).
Admitted.

// HOL Light: Library/grouptheory.ml:1241 / GROUP_SUM_CLAUSES_EXISTS   (hash md5:f215141401713f6c5d0c19832ad289a2)
Theorem hlt_GROUP_SUM_CLAUSES_EXISTS : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall f :e A :^: K, hl_group_sum A K G (hl_EMPTY K) f = hl_group_id A G /\ forall k :e 2 :^: K, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_770 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_770 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ~ hl_GSPEC K (fun GEN_PVAR_771 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_771 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0) = hl_EMPTY K -> exists i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 /\ hl_group_sum A K G k f = hl_group_mul A G (f i) (hl_group_sum A K G (hl_DELETE K k i) f)).
Admitted.

// HOL Light: Library/grouptheory.ml:1252 / GROUP_PRODUCT_EQ_ID   (hash md5:23610035f866e474884ace1c63466b8c)
Theorem hlt_GROUP_PRODUCT_EQ_ID : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall s :e 2 :^: K, forall f :e A :^: K, (forall i :e K, hl_IN K i s = 1 -> f i = hl_group_id A G) -> hl_group_product A K G lt s f = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:1260 / GROUP_SUM_EQ_ID   (hash md5:8cc831be09e5d35106764e74ff65e4e5)
Theorem hlt_GROUP_SUM_EQ_ID : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: K, forall f :e A :^: K, (forall i :e K, hl_IN K i s = 1 -> f i = hl_group_id A G) -> hl_group_sum A K G s f = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:1266 / GROUP_PRODUCT_ID   (hash md5:86b315238420c55371cf9a61cc99237f)
Theorem hlt_GROUP_PRODUCT_ID : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall s :e 2 :^: K, hl_group_product A K G lt s (fun x :e K => hl_group_id A G) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:1271 / GROUP_SUM_ID   (hash md5:5d4409f79787cae56d3c9d6c1ad24778)
Theorem hlt_GROUP_SUM_ID : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: K, hl_group_sum A K G s (fun x :e K => hl_group_id A G) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:1276 / GROUP_COMMUTES_PRODUCT   (hash md5:0913a75867d856168edaa1d7251181ff)
Theorem hlt_GROUP_COMMUTES_PRODUCT : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, forall z :e A, (forall i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_group_carrier A G) = 1 /\ ~ f i = hl_group_id A G) -> hl_group_mul A G (f i) z = hl_group_mul A G z (f i)) /\ hl_IN A z (hl_group_carrier A G) = 1 -> hl_group_mul A G (hl_group_product A K G lt k f) z = hl_group_mul A G z (hl_group_product A K G lt k f).
Admitted.

// HOL Light: Library/grouptheory.ml:1289 / GROUP_COMMUTES_SUM   (hash md5:530301459831f132a073fb395e42e964)
Theorem hlt_GROUP_COMMUTES_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, forall z :e A, (forall i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_group_carrier A G) = 1 /\ ~ f i = hl_group_id A G) -> hl_group_mul A G (f i) z = hl_group_mul A G z (f i)) /\ hl_IN A z (hl_group_carrier A G) = 1 -> hl_group_mul A G (hl_group_sum A K G k f) z = hl_group_mul A G z (hl_group_sum A K G k f).
Admitted.

// HOL Light: Library/grouptheory.ml:1297 / GROUP_PRODUCT_SING   (hash md5:d9606e175360c160c981028eee2a6a42)
Theorem hlt_GROUP_PRODUCT_SING : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall i :e K, forall f :e A :^: K, hl_group_product A K G lt (hl_INSERT K i (hl_EMPTY K)) f = hl_COND A (hl_IN A (f i) (hl_group_carrier A G)) (f i) (hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:1305 / GROUP_SUM_SING   (hash md5:e291d54723e327766bb374e000084276)
Theorem hlt_GROUP_SUM_SING : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall i :e K, forall f :e A :^: K, hl_group_sum A K G (hl_INSERT K i (hl_EMPTY K)) f = hl_COND A (hl_IN A (f i) (hl_group_carrier A G)) (f i) (hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:1311 / GROUP_PRODUCT_UNION   (hash md5:47cca6e3cf74845fc83e58eb1285331f)
Theorem hlt_GROUP_PRODUCT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall f :e A :^: K, forall s t :e 2 :^: K, hl_woset K lt = 1 /\ (hl_fld K lt = hl_UNIV K /\ ((hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_782 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_782 (if hl_IN K i s = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_783 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_783 (if hl_IN K i t = 1 /\ hl_IN A (f i) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1) /\ (forall x y :e K, hl_IN K x s = 1 /\ hl_IN K y t = 1 -> lt x y = 1 /\ ~ x = y))) -> hl_group_product A K G lt (hl_UNION K s t) f = hl_group_mul A G (hl_group_product A K G lt s f) (hl_group_product A K G lt t f).
Admitted.

// HOL Light: Library/grouptheory.ml:1382 / GROUP_PRODUCT_CLAUSES_LEFT   (hash md5:5d82f1d7e8b011925ca86ce8a618c17b)
Theorem hlt_GROUP_PRODUCT_CLAUSES_LEFT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall f :e A :^: omega, forall m n :e omega, hl_group_product A omega G hl_le (hl_numseg m n) f = hl_COND A (hl_le m n) (hl_COND A (hl_IN A (f m) (hl_group_carrier A G)) (hl_group_mul A G (f m) (hl_group_product A omega G hl_le (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f)) (hl_group_product A omega G hl_le (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f)) (hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:1401 / GROUP_PRODUCT_CLAUSES_RIGHT   (hash md5:86934b8d4337463cd75284276f3a64b0)
Theorem hlt_GROUP_PRODUCT_CLAUSES_RIGHT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall f :e A :^: omega, forall m n :e omega, hl_group_product A omega G hl_le (hl_numseg m n) f = hl_COND A (hl_le m n) (hl_COND A (hl_IN A (f n) (hl_group_carrier A G)) (hl_COND A (if n = hl_NUMERAL hl_zero then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_group_mul A G (hl_group_product A omega G hl_le (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (f n))) (hl_group_product A omega G hl_le (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f)) (hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:1426 / GROUP_PRODUCT_CLAUSES_NUMSEG   (hash md5:8afbf046c291169975b2d077b35861b8)
Theorem hlt_GROUP_PRODUCT_CLAUSES_NUMSEG : forall A:set, A <> Empty -> (forall G :e hl_ty_group A, forall m :e omega, forall f :e A :^: omega, hl_group_product A omega G hl_le (hl_numseg m (hl_NUMERAL hl_zero)) f = hl_COND A (if m = hl_NUMERAL hl_zero /\ hl_IN A (f (hl_NUMERAL hl_zero)) (hl_group_carrier A G) = 1 then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_group_id A G)) /\ forall G :e hl_ty_group A, forall m n :e omega, forall f :e A :^: omega, hl_group_product A omega G hl_le (hl_numseg m (hl_SUC n)) f = hl_COND A (if hl_le m (hl_SUC n) = 1 /\ hl_IN A (f (hl_SUC n)) (hl_group_carrier A G) = 1 then 1 else 0) (hl_group_mul A G (hl_group_product A omega G hl_le (hl_numseg m n) f) (f (hl_SUC n))) (hl_group_product A omega G hl_le (hl_numseg m n) f).
Admitted.

// HOL Light: Library/grouptheory.ml:1444 / GROUP_PRODUCT_CLAUSES_COMMUTING   (hash md5:46e6c3f0460bce998afee1f6bf068f16)
Theorem hlt_GROUP_PRODUCT_CLAUSES_COMMUTING : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall i :e K, forall k :e 2 :^: K, forall f :e A :^: K, hl_woset K lt = 1 /\ (hl_fld K lt = hl_UNIV K /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_786 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_786 (if hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) j = 1 then 1 else 0)) = 1 /\ (forall j :e K, hl_IN K j k = 1 /\ (lt j i = 1 /\ (~ j = i /\ (hl_IN A (f i) (hl_group_carrier A G) = 1 /\ hl_IN A (f j) (hl_group_carrier A G) = 1))) -> hl_group_mul A G (f i) (f j) = hl_group_mul A G (f j) (f i)))) -> hl_group_product A K G lt (hl_INSERT K i k) f = hl_COND A (if hl_IN A (f i) (hl_group_carrier A G) = 1 -> hl_IN K i k = 1 then 1 else 0) (hl_group_product A K G lt k f) (hl_group_mul A G (f i) (hl_group_product A K G lt k f)).
Admitted.

// HOL Light: Library/grouptheory.ml:1488 / ABELIAN_GROUP_PRODUCT_CLAUSES   (hash md5:d8e9d30db2ca046b1e7b6713e67e5dd0)
Theorem hlt_ABELIAN_GROUP_PRODUCT_CLAUSES : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall i :e K, forall k :e 2 :^: K, forall f :e A :^: K, hl_woset K lt = 1 /\ (hl_fld K lt = hl_UNIV K /\ (hl_abelian_group A G = 1 /\ hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_787 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_787 (if hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) j = 1 then 1 else 0)) = 1)) -> hl_group_product A K G lt (hl_INSERT K i k) f = hl_COND A (if hl_IN A (f i) (hl_group_carrier A G) = 1 -> hl_IN K i k = 1 then 1 else 0) (hl_group_product A K G lt k f) (hl_group_mul A G (f i) (hl_group_product A K G lt k f)).
Admitted.

// HOL Light: Library/grouptheory.ml:1500 / GROUP_SUM_CLAUSES_COMMUTING   (hash md5:6f56a8df35d6359cc0f2462510149030)
Theorem hlt_GROUP_SUM_CLAUSES_COMMUTING : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall i :e K, forall k :e 2 :^: K, forall f :e A :^: K, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_788 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_788 (if hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) j = 1 then 1 else 0)) = 1 /\ (forall j :e K, hl_IN K j k = 1 /\ (~ j = i /\ (hl_IN A (f i) (hl_group_carrier A G) = 1 /\ hl_IN A (f j) (hl_group_carrier A G) = 1)) -> hl_group_mul A G (f i) (f j) = hl_group_mul A G (f j) (f i)) -> hl_group_sum A K G (hl_INSERT K i k) f = hl_COND A (if hl_IN A (f i) (hl_group_carrier A G) = 1 -> hl_IN K i k = 1 then 1 else 0) (hl_group_sum A K G k f) (hl_group_mul A G (f i) (hl_group_sum A K G k f)).
Admitted.

// HOL Light: Library/grouptheory.ml:1514 / ABELIAN_GROUP_SUM_CLAUSES   (hash md5:146407fef9470775da69955db76f65ec)
Theorem hlt_ABELIAN_GROUP_SUM_CLAUSES : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall i :e K, forall k :e 2 :^: K, forall f :e A :^: K, hl_abelian_group A G = 1 /\ hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_789 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_789 (if hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A (hl_group_carrier A G) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) = 1 then 1 else 0) j = 1 then 1 else 0)) = 1 -> hl_group_sum A K G (hl_INSERT K i k) f = hl_COND A (if hl_IN A (f i) (hl_group_carrier A G) = 1 -> hl_IN K i k = 1 then 1 else 0) (hl_group_sum A K G k f) (hl_group_mul A G (f i) (hl_group_sum A K G k f)).
Admitted.

// HOL Light: Library/grouptheory.ml:1525 / GROUP_PRODUCT_MUL   (hash md5:22c80f0157f5d9693b0af63345ba7af6)
Theorem hlt_GROUP_PRODUCT_MUL : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f g :e A :^: K, hl_woset K lt = 1 /\ (hl_fld K lt = hl_UNIV K /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_790 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_790 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_791 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_791 (if hl_IN K i k = 1 /\ ~ g i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ((forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (hl_group_carrier A G) = 1 /\ hl_IN A (g i) (hl_group_carrier A G) = 1) /\ hl_pairwise K (fun i :e K => fun j :e K => if hl_group_mul A G (f i) (g j) = hl_group_mul A G (g j) (f i) then 1 else 0) k = 1)))) -> hl_group_product A K G lt k (fun i :e K => hl_group_mul A G (f i) (g i)) = hl_group_mul A G (hl_group_product A K G lt k f) (hl_group_product A K G lt k g).
Admitted.

// HOL Light: Library/grouptheory.ml:1608 / GROUP_SUM_MUL   (hash md5:9d7c68c62a755ada6600fbc0e008f106)
Theorem hlt_GROUP_SUM_MUL : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f g :e A :^: K, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_792 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_792 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_793 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_793 (if hl_IN K i k = 1 /\ ~ g i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ((forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (hl_group_carrier A G) = 1 /\ hl_IN A (g i) (hl_group_carrier A G) = 1) /\ hl_pairwise K (fun i :e K => fun j :e K => if hl_group_mul A G (f i) (g j) = hl_group_mul A G (g j) (f i) then 1 else 0) k = 1)) -> hl_group_sum A K G k (fun i :e K => hl_group_mul A G (f i) (g i)) = hl_group_mul A G (hl_group_sum A K G k f) (hl_group_sum A K G k g).
Admitted.

// HOL Light: Library/grouptheory.ml:1620 / ABELIAN_GROUP_SUM_MUL   (hash md5:d71124b327685009b1b871671f604915)
Theorem hlt_ABELIAN_GROUP_SUM_MUL : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f g :e A :^: K, hl_abelian_group A G = 1 /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_794 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_794 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_795 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_795 (if hl_IN K i k = 1 /\ ~ g i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (hl_group_carrier A G) = 1 /\ hl_IN A (g i) (hl_group_carrier A G) = 1))) -> hl_group_sum A K G k (fun i :e K => hl_group_mul A G (f i) (g i)) = hl_group_mul A G (hl_group_sum A K G k f) (hl_group_sum A K G k g).
Admitted.

// HOL Light: Library/grouptheory.ml:1631 / GROUP_SUM_INV   (hash md5:bb308ba32b0087234dae6615c0cf92ca)
Theorem hlt_GROUP_SUM_INV : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_796 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_796 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ((forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (hl_group_carrier A G) = 1) /\ hl_pairwise K (fun i :e K => fun j :e K => if hl_group_mul A G (f i) (f j) = hl_group_mul A G (f j) (f i) then 1 else 0) k = 1) -> hl_group_sum A K G k (fun i :e K => hl_group_inv A G (f i)) = hl_group_inv A G (hl_group_sum A K G k f).
Admitted.

// HOL Light: Library/grouptheory.ml:1651 / ABELIAN_GROUP_SUM_INV   (hash md5:28fa33863d71adfdc6a8b3500a729a5e)
Theorem hlt_ABELIAN_GROUP_SUM_INV : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, hl_abelian_group A G = 1 /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_797 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_797 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (hl_group_carrier A G) = 1)) -> hl_group_sum A K G k (fun i :e K => hl_group_inv A G (f i)) = hl_group_inv A G (hl_group_sum A K G k f).
Admitted.

// HOL Light: Library/grouptheory.ml:1661 / GROUP_SUM_POW   (hash md5:43c633dd6619ef6c9dea03981ee76d4a)
Theorem hlt_GROUP_SUM_POW : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, forall n :e omega, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_798 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_798 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ((forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (hl_group_carrier A G) = 1) /\ hl_pairwise K (fun i :e K => fun j :e K => if hl_group_mul A G (f i) (f j) = hl_group_mul A G (f j) (f i) then 1 else 0) k = 1) -> hl_group_sum A K G k (fun i :e K => hl_group_pow A G (f i) n) = hl_group_pow A G (hl_group_sum A K G k f) n.
Admitted.

// HOL Light: Library/grouptheory.ml:1681 / ABELIAN_GROUP_SUM_POW   (hash md5:5fc7f5ed6bf8896d515a04fcb4315377)
Theorem hlt_ABELIAN_GROUP_SUM_POW : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, forall n :e omega, hl_abelian_group A G = 1 /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_799 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_799 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (hl_group_carrier A G) = 1)) -> hl_group_sum A K G k (fun i :e K => hl_group_pow A G (f i) n) = hl_group_pow A G (hl_group_sum A K G k f) n.
Admitted.

// HOL Light: Library/grouptheory.ml:1691 / GROUP_SUM_ZPOW   (hash md5:b11479a94ffbca63422edeb790fee6e6)
Theorem hlt_GROUP_SUM_ZPOW : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, forall n :e hl_ty_int, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_800 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_800 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ((forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (hl_group_carrier A G) = 1) /\ hl_pairwise K (fun i :e K => fun j :e K => if hl_group_mul A G (f i) (f j) = hl_group_mul A G (f j) (f i) then 1 else 0) k = 1) -> hl_group_sum A K G k (fun i :e K => hl_group_zpow A G (f i) n) = hl_group_zpow A G (hl_group_sum A K G k f) n.
Admitted.

// HOL Light: Library/grouptheory.ml:1712 / ABELIAN_GROUP_SUM_ZPOW   (hash md5:a7c1e9c1c99ff131b77ddcf3b3a71895)
Theorem hlt_ABELIAN_GROUP_SUM_ZPOW : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall f :e A :^: K, forall n :e hl_ty_int, hl_abelian_group A G = 1 /\ (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_801 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_801 (if hl_IN K i k = 1 /\ ~ f i = hl_group_id A G then 1 else 0) i = 1 then 1 else 0)) = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (hl_group_carrier A G) = 1)) -> hl_group_sum A K G k (fun i :e K => hl_group_zpow A G (f i) n) = hl_group_zpow A G (hl_group_sum A K G k f) n.
Admitted.

// HOL Light: Library/grouptheory.ml:1722 / GROUP_SUM_IMAGE   (hash md5:b914d4678596e7c43568aa1196bba15a)
Theorem hlt_GROUP_SUM_IMAGE : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall G :e hl_ty_group B, forall f :e A :^: K, forall g :e B :^: A, forall s :e 2 :^: K, hl_abelian_group B G = 1 /\ (forall x y :e K, hl_IN K x s = 1 /\ (hl_IN K y s = 1 /\ f x = f y) -> x = y) -> hl_group_sum B A G (hl_IMAGE K A f s) g = hl_group_sum B K G s (hl_o A B K g f).
Admitted.

// HOL Light: Library/grouptheory.ml:1751 / ABELIAN_GROUP_PRODUCT_ITERATE   (hash md5:914d1ef8b7f8b80ff974b5917968efd8)
Theorem hlt_ABELIAN_GROUP_PRODUCT_ITERATE : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall lt :e 2 :^: K :^: K, forall x :e A :^: K, forall k :e 2 :^: K, hl_woset K lt = 1 /\ (hl_fld K lt = hl_UNIV K /\ (hl_abelian_group A G = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_IN A (x i) (hl_group_carrier A G) = 1))) -> hl_group_product A K G lt k x = hl_iterate A K (hl_group_add A G) k x.
Admitted.

// HOL Light: Library/grouptheory.ml:1779 / ABELIAN_GROUP_SUM_ITERATE   (hash md5:23bbf32c93d98532e417092b153124ef)
Theorem hlt_ABELIAN_GROUP_SUM_ITERATE : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall x :e A :^: K, forall k :e 2 :^: K, hl_abelian_group A G = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_IN A (x i) (hl_group_carrier A G) = 1) -> hl_group_sum A K G k x = hl_iterate A K (hl_group_add A G) k x.
Admitted.

// HOL Light: Library/grouptheory.ml:1788 / ABELIAN_GROUP_ITERATE   (hash md5:4647ccfbc609a3a3b156905b2c2c9c5f)
Theorem hlt_ABELIAN_GROUP_ITERATE : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall x :e A :^: K, forall k :e 2 :^: K, hl_abelian_group A G = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_IN A (x i) (hl_group_carrier A G) = 1) -> hl_IN A (hl_iterate A K (hl_group_add A G) k x) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1799 / group_conjugation   (hash md5:c66ebeb641b65ac91a526f168a5bdcee)
Theorem hlt_group_conjugation_thm : forall A:set, A <> Empty -> forall x :e A, forall G :e hl_ty_group A, forall a :e A, hl_group_conjugation A G a x = hl_group_mul A G a (hl_group_mul A G x (hl_group_inv A G a)).
Admitted.

// HOL Light: Library/grouptheory.ml:1802 / GROUP_CONJUGATION   (hash md5:84ce7fe7003277b1c5eda5e5f1de4d1f)
Theorem hlt_GROUP_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_IN A (hl_group_conjugation A G x y) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1808 / GROUP_CONJUGATION_CONJUGATION   (hash md5:f4a7371a89824d4d82dcb769733a7445)
Theorem hlt_GROUP_CONJUGATION_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a b x :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ (hl_IN A b (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1) -> hl_group_conjugation A G a (hl_group_conjugation A G b x) = hl_group_conjugation A G (hl_group_mul A G a b) x.
Admitted.

// HOL Light: Library/grouptheory.ml:1815 / GROUP_CONJUGATION_EQ   (hash md5:45b97ec3831dfa4883d6008b9ec0b08c)
Theorem hlt_GROUP_CONJUGATION_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a x y :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> (hl_group_conjugation A G a x = hl_group_conjugation A G a y <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:1821 / GROUP_CONJUGATION_EQ_SELF   (hash md5:80dbff6c05b043a4898d77c5e1e214c8)
Theorem hlt_GROUP_CONJUGATION_EQ_SELF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_conjugation A G x y = y <-> hl_group_mul A G x y = hl_group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:1828 / GROUP_CONJUGATION_EQ_ID   (hash md5:bc7113839ceafd344dfc5ede63dab085)
Theorem hlt_GROUP_CONJUGATION_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a x :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_conjugation A G a x = hl_group_id A G <-> x = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:1834 / GROUP_CONJUGATION_BY_ID   (hash md5:55672facea48f60c09cbe515d6316c11)
Theorem hlt_GROUP_CONJUGATION_BY_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_conjugation A G (hl_group_id A G) x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:1838 / GROUP_CONJUGATION_LINV   (hash md5:0bdffd463bd9ef9a564355a9e4c4c6b8)
Theorem hlt_GROUP_CONJUGATION_LINV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a x :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_conjugation A G (hl_group_inv A G a) (hl_group_conjugation A G a x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:1845 / GROUP_CONJUGATION_RINV   (hash md5:7b59b0a3148579dda38f3342b831764d)
Theorem hlt_GROUP_CONJUGATION_RINV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a x :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_conjugation A G a (hl_group_conjugation A G (hl_group_inv A G a) x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:1852 / IN_IMAGE_GROUP_CONJUGATION   (hash md5:012c5138ce6602b3e795cc48c9516a0b)
Theorem hlt_IN_IMAGE_GROUP_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1) -> (hl_IN A x (hl_IMAGE A A (hl_group_conjugation A G y) s) = 1 <-> hl_IN A (hl_group_conjugation A G (hl_group_inv A G y) x) s = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:1865 / IMAGE_GROUP_CONJUGATION_SUBSET   (hash md5:6708babefe755723efc66efae05277a4)
Theorem hlt_IMAGE_GROUP_CONJUGATION_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, forall s :e 2 :^: A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_SUBSET A (hl_IMAGE A A (hl_group_conjugation A G a) s) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1871 / IMAGE_GROUP_CONJUGATION_BY_ID   (hash md5:714a1a90c28150cbabb36362ed2bda6b)
Theorem hlt_IMAGE_GROUP_CONJUGATION_BY_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_IMAGE A A (hl_group_conjugation A G (hl_group_id A G)) s = s.
Admitted.

// HOL Light: Library/grouptheory.ml:1879 / IMAGE_GROUP_CONJUGATION_BY_MUL   (hash md5:3ceaeb60ccf0bfc1f83a5b4702fb8a28)
Theorem hlt_IMAGE_GROUP_CONJUGATION_BY_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall a b :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ (hl_IN A b (hl_group_carrier A G) = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1) -> hl_IMAGE A A (hl_group_conjugation A G (hl_group_mul A G a b)) s = hl_IMAGE A A (hl_group_conjugation A G a) (hl_IMAGE A A (hl_group_conjugation A G b) s).
Admitted.

// HOL Light: Library/grouptheory.ml:1890 / IMAGE_GROUP_CONJUGATION_BY_INV   (hash md5:03acae1666ef771c2d6559b615159567)
Theorem hlt_IMAGE_GROUP_CONJUGATION_BY_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, forall s t :e 2 :^: A, hl_IN A a (hl_group_carrier A G) = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_SUBSET A t (hl_group_carrier A G) = 1) -> (hl_IMAGE A A (hl_group_conjugation A G (hl_group_inv A G a)) s = t <-> hl_IMAGE A A (hl_group_conjugation A G a) t = s).
Admitted.

// HOL Light: Library/grouptheory.ml:1902 / IMAGE_GROUP_CONJUGATION_EQ_SWAP   (hash md5:183905e7163b93c7835dc5d364263456)
Theorem hlt_IMAGE_GROUP_CONJUGATION_EQ_SWAP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, forall s t :e 2 :^: A, hl_IN A a (hl_group_carrier A G) = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ hl_IMAGE A A (hl_group_conjugation A G (hl_group_inv A G a)) s = t)) -> hl_IMAGE A A (hl_group_conjugation A G a) t = s.
Admitted.

// HOL Light: Library/grouptheory.ml:1911 / IMAGE_GROUP_CONJUGATION_EQ_PREIMAGE   (hash md5:8cbaa5b888ff781a46f012d86eedf9f1)
Theorem hlt_IMAGE_GROUP_CONJUGATION_EQ_PREIMAGE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, forall s t :e 2 :^: A, hl_IN A a (hl_group_carrier A G) = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_SUBSET A t (hl_group_carrier A G) = 1) -> (hl_IMAGE A A (hl_group_conjugation A G a) s = t <-> hl_GSPEC A (fun GEN_PVAR_807 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_807 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A (hl_group_conjugation A G a x) t = 1 then 1 else 0) x = 1 then 1 else 0) = s).
Admitted.

// HOL Light: Library/grouptheory.ml:1936 / subgroup_of   (hash md5:38d8a4c2d36f6a2ed3ef72684bdcc4d2)
Theorem hlt_subgroup_of_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_of A s G = 1 <-> hl_SUBSET A s (hl_group_carrier A G) = 1 /\ (hl_IN A (hl_group_id A G) s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (hl_group_inv A G x) s = 1) /\ forall x y :e A, hl_IN A x s = 1 /\ hl_IN A y s = 1 -> hl_IN A (hl_group_mul A G x y) s = 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:1943 / IN_SUBGROUP_ID   (hash md5:d63b5a2a4d61a94834da1478dcfe649f)
Theorem hlt_IN_SUBGROUP_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_IN A (hl_group_id A G) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1947 / IN_SUBGROUP_INV   (hash md5:fe698b7bbbb2498f9b34b118a010e0d3)
Theorem hlt_IN_SUBGROUP_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 /\ hl_IN A x h = 1 -> hl_IN A (hl_group_inv A G x) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1951 / IN_SUBGROUP_MUL   (hash md5:cb600ee8c7b807b0986b66b71eb1f189)
Theorem hlt_IN_SUBGROUP_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x h = 1 /\ hl_IN A y h = 1) -> hl_IN A (hl_group_mul A G x y) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1955 / IN_SUBGROUP_DIV   (hash md5:75720ec9d42d268d588c94a3852955dd)
Theorem hlt_IN_SUBGROUP_DIV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x h = 1 /\ hl_IN A y h = 1) -> hl_IN A (hl_group_div A G x y) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1959 / IN_SUBGROUP_POW   (hash md5:eafc44d80bc43a660de006d9a0f20b74)
Theorem hlt_IN_SUBGROUP_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, forall n :e omega, hl_subgroup_of A h G = 1 /\ hl_IN A x h = 1 -> hl_IN A (hl_group_pow A G x n) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1965 / IN_SUBGROUP_ZPOW   (hash md5:a9b38a908e3d3bfd6f944e9e17f860e2)
Theorem hlt_IN_SUBGROUP_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, forall n :e hl_ty_int, hl_subgroup_of A h G = 1 /\ hl_IN A x h = 1 -> hl_IN A (hl_group_zpow A G x n) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1970 / IN_SUBGROUP_CONJUGATION   (hash md5:0517c28390faf1e1b4f082d4a053ce3a)
Theorem hlt_IN_SUBGROUP_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a x :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A a h = 1 /\ hl_IN A x h = 1) -> hl_IN A (hl_group_conjugation A G a x) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1975 / IN_SUBGROUP_PRODUCT   (hash md5:cba9e0f32846932af910605043cb9199)
Theorem hlt_IN_SUBGROUP_PRODUCT : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, hl_subgroup_of A h G = 1 /\ (forall i :e K, hl_IN K i k = 1 /\ hl_IN A (f i) (hl_group_carrier A G) = 1 -> hl_IN A (f i) h = 1) -> hl_IN A (hl_group_product A K G lt k f) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1984 / IN_SUBGROUP_SUM   (hash md5:6bfd955be9ba867af3465eeabc28ced8)
Theorem hlt_IN_SUBGROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall k :e 2 :^: K, forall f :e A :^: K, hl_subgroup_of A h G = 1 /\ (forall i :e K, hl_IN K i k = 1 /\ hl_IN A (f i) (hl_group_carrier A G) = 1 -> hl_IN A (f i) h = 1) -> hl_IN A (hl_group_sum A K G k f) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:1991 / IMAGE_GROUP_CONJUGATION_SUBGROUP   (hash md5:a73e0af2a8fba2b8c3deb36b3fa0b103)
Theorem hlt_IMAGE_GROUP_CONJUGATION_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e A, hl_subgroup_of A h G = 1 /\ hl_IN A a h = 1 -> hl_IMAGE A A (hl_group_conjugation A G a) h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:2001 / SUBGROUP_OF_INTERS   (hash md5:754c280e9935182813f8b6494d4cd902)
Theorem hlt_SUBGROUP_OF_INTERS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall gs :e 2 :^: (2 :^: A), (forall g :e 2 :^: A, hl_IN (2 :^: A) g gs = 1 -> hl_subgroup_of A g G = 1) /\ ~ gs = hl_EMPTY (2 :^: A) -> hl_subgroup_of A (hl_INTERS A gs) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2007 / SUBGROUP_OF_INTER   (hash md5:85efd65a6d62bb9b2fe8435d5aaa7168)
Theorem hlt_SUBGROUP_OF_INTER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> hl_subgroup_of A (hl_INTER A g h) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2012 / SUBGROUP_OF_UNIONS   (hash md5:b740a25787f81fae06d7d86298d62b4f)
Theorem hlt_SUBGROUP_OF_UNIONS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: A), ~ u = hl_EMPTY (2 :^: A) /\ ((forall h :e 2 :^: A, hl_IN (2 :^: A) h u = 1 -> hl_subgroup_of A h G = 1) /\ (forall g h :e 2 :^: A, hl_IN (2 :^: A) g u = 1 /\ hl_IN (2 :^: A) h u = 1 -> hl_SUBSET A g h = 1 \/ hl_SUBSET A h g = 1)) -> hl_subgroup_of A (hl_UNIONS A u) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2020 / SUBGROUP_OF_OPPOSITE_GROUP   (hash md5:4cf7ad02599e106748ed09cdd05254b3)
Theorem hlt_SUBGROUP_OF_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h (hl_opposite_group A G) = 1 <-> hl_subgroup_of A h G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2024 / SUBGROUP_OF_IMP_SUBSET   (hash md5:489306efa44435c5bd26087514115564)
Theorem hlt_SUBGROUP_OF_IMP_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_of A s G = 1 -> hl_SUBSET A s (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2028 / SUBGROUP_OF_IMP_NONEMPTY   (hash md5:59fa134720a197d170711077d8790618)
Theorem hlt_SUBGROUP_OF_IMP_NONEMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_of A s G = 1 -> ~ s = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:2032 / TRIVIAL_SUBGROUP_OF   (hash md5:0505b33a0d300dcc91732b01d784cdaf)
Theorem hlt_TRIVIAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_subgroup_of A (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2037 / CARRIER_SUBGROUP_OF   (hash md5:acb6a91ec4d4b2679a9da03849ec6b53)
Theorem hlt_CARRIER_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_subgroup_of A (hl_group_carrier A G) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2041 / FINITE_SUBGROUPS   (hash md5:441d508592f3849366bfb6902f73a4c8)
Theorem hlt_FINITE_SUBGROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_FINITE A (hl_group_carrier A G) = 1 -> hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_809 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_809 (hl_subgroup_of A h G) h = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2047 / FINITE_RESTRICTED_SUBGROUPS   (hash md5:6ca6b28607e8c662a0513c17ff2e3209)
Theorem hlt_FINITE_RESTRICTED_SUBGROUPS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall G :e hl_ty_group A, hl_FINITE A (hl_group_carrier A G) = 1 -> hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_811 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_811 (if hl_subgroup_of A h G = 1 /\ P h = 1 then 1 else 0) h = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2054 / subgroup_generated   (hash md5:9d928b08a94e89a7037fedc206ad364f)
Theorem hlt_subgroup_generated_thm : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall G :e hl_ty_group A, hl_subgroup_generated A G s = hl_group A (hl_pair (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_812 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_812 (if hl_subgroup_of A h G = 1 /\ hl_SUBSET A (hl_INTER A (hl_group_carrier A G) s) h = 1 then 1 else 0) h = 1 then 1 else 0))) (hl_pair A (A :^: A :*: A :^: A :^: A) (hl_group_id A G) (hl_pair (A :^: A) (A :^: A :^: A) (hl_group_inv A G) (hl_group_mul A G)))).
Admitted.

// HOL Light: Library/grouptheory.ml:2059 / SUBGROUP_GENERATED   (hash md5:a1359371d85c975b620a5ce5c3097a1d)
Theorem hlt_SUBGROUP_GENERATED : forall A:set, A <> Empty -> (forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_carrier A (hl_subgroup_generated A G s) = hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_813 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_813 (if hl_subgroup_of A h G = 1 /\ hl_SUBSET A (hl_INTER A (hl_group_carrier A G) s) h = 1 then 1 else 0) h = 1 then 1 else 0))) /\ ((forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_id A (hl_subgroup_generated A G s) = hl_group_id A G) /\ ((forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_inv A (hl_subgroup_generated A G s) = hl_group_inv A G) /\ forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_mul A (hl_subgroup_generated A G s) = hl_group_mul A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:2081 / SUBGROUP_GENERATED_EQ   (hash md5:535f4c785bdc640e74329a8085c19935)
Theorem hlt_SUBGROUP_GENERATED_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_generated A G s = G <-> hl_group_carrier A (hl_subgroup_generated A G s) = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:2088 / GROUP_ID_SUBGROUP   (hash md5:7db51db5ef8c61020f9a7a969bc37065)
Theorem hlt_GROUP_ID_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_IN A (hl_group_id A G) (hl_group_carrier A (hl_subgroup_generated A G s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2092 / GROUP_INV_SUBGROUP   (hash md5:25042e873e4788f9a9a028d981e8f66a)
Theorem hlt_GROUP_INV_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall x :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> hl_IN A (hl_group_inv A G x) (hl_group_carrier A (hl_subgroup_generated A G s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2097 / GROUP_MUL_SUBGROUP   (hash md5:284c5ec64c74e696cc5d505df5eb82fe)
Theorem hlt_GROUP_MUL_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall x y :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 /\ hl_IN A y (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> hl_IN A (hl_group_mul A G x y) (hl_group_carrier A (hl_subgroup_generated A G s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2103 / ABELIAN_SUBGROUP_GENERATED   (hash md5:b12a10d91746f5123f73055bd1bbfabf)
Theorem hlt_ABELIAN_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_abelian_group A G = 1 -> hl_abelian_group A (hl_subgroup_generated A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2112 / GROUP_DIV_SUBGROUP_GENERATED   (hash md5:56294cce692341c21d78e3dd484e5409)
Theorem hlt_GROUP_DIV_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_div A (hl_subgroup_generated A G s) = hl_group_div A G.
Admitted.

// HOL Light: Library/grouptheory.ml:2116 / GROUP_POW_SUBGROUP_GENERATED   (hash md5:7a0ebc382f33da941af3c1c7f4cfff57)
Theorem hlt_GROUP_POW_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_pow A (hl_subgroup_generated A G s) = hl_group_pow A G.
Admitted.

// HOL Light: Library/grouptheory.ml:2121 / GROUP_ZPOW_SUBGROUP_GENERATED   (hash md5:09cc4ad212332f88ad65c9f2652d9eba)
Theorem hlt_GROUP_ZPOW_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_zpow A (hl_subgroup_generated A G s) = hl_group_zpow A G.
Admitted.

// HOL Light: Library/grouptheory.ml:2126 / GROUP_CONJUGATION_SUBGROUP_GENERATED   (hash md5:b62520f6585937dfafa94f0ca4e6d8cf)
Theorem hlt_GROUP_CONJUGATION_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_conjugation A (hl_subgroup_generated A G s) = hl_group_conjugation A G.
Admitted.

// HOL Light: Library/grouptheory.ml:2131 / SUBGROUP_GENERATED_RESTRICT   (hash md5:6608cff9c9e675f72f99bf917acc2dc5)
Theorem hlt_SUBGROUP_GENERATED_RESTRICT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_generated A G s = hl_subgroup_generated A G (hl_INTER A (hl_group_carrier A G) s).
Admitted.

// HOL Light: Library/grouptheory.ml:2137 / SUBGROUP_SUBGROUP_GENERATED   (hash md5:ff29f36b09774ff210b84d78a28cff5a)
Theorem hlt_SUBGROUP_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_of A (hl_group_carrier A (hl_subgroup_generated A G s)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2145 / SUBGROUP_GENERATED_MONO   (hash md5:ae2fc739ce860c662c32871a97b8b41e)
Theorem hlt_SUBGROUP_GENERATED_MONO : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 -> hl_SUBSET A (hl_group_carrier A (hl_subgroup_generated A G s)) (hl_group_carrier A (hl_subgroup_generated A G t)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2152 / SUBGROUP_GENERATED_MINIMAL   (hash md5:c13831bd8a7f52ea41445ad459ea3397)
Theorem hlt_SUBGROUP_GENERATED_MINIMAL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h s :e 2 :^: A, hl_SUBSET A s h = 1 /\ hl_subgroup_of A h G = 1 -> hl_SUBSET A (hl_group_carrier A (hl_subgroup_generated A G s)) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2158 / SUBGROUPS_GENERATED_EQ   (hash md5:0db20f92421d74752a505ed42f8ac138)
Theorem hlt_SUBGROUPS_GENERATED_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A (hl_subgroup_generated A G t)) = 1 /\ hl_SUBSET A t (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> hl_subgroup_generated A G s = hl_subgroup_generated A G t.
Admitted.

// HOL Light: Library/grouptheory.ml:2168 / SUBGROUP_GENERATED_INDUCT   (hash md5:73eb3261854aa925c3962d40e8a8134f)
Theorem hlt_SUBGROUP_GENERATED_INDUCT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall P s :e 2 :^: A, (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A x s = 1 -> P x = 1) /\ (P (hl_group_id A G) = 1 /\ ((forall x :e A, P x = 1 -> P (hl_group_inv A G x) = 1) /\ (forall x y :e A, P x = 1 /\ P y = 1 -> P (hl_group_mul A G x y) = 1))) -> forall x :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> P x = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2187 / GROUP_CARRIER_SUBGROUP_GENERATED_SUBSET   (hash md5:86d93461f50903ec3c5b8485c2bd70e4)
Theorem hlt_GROUP_CARRIER_SUBGROUP_GENERATED_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_SUBSET A (hl_group_carrier A (hl_subgroup_generated A G h)) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2194 / SUBGROUP_GENERATED_SUPERSET   (hash md5:43a22dd00b9acce0748a9771ced9c0f3)
Theorem hlt_SUBGROUP_GENERATED_SUPERSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_generated A G s = G <-> hl_SUBSET A (hl_group_carrier A G) (hl_group_carrier A (hl_subgroup_generated A G s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2201 / SUBGROUP_OF_SUBGROUP_GENERATED_EQ   (hash md5:f09fdd82377f00d0dd66bbb3fc888634)
Theorem hlt_SUBGROUP_OF_SUBGROUP_GENERATED_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h k :e 2 :^: A, hl_subgroup_of A h (hl_subgroup_generated A G k) = 1 <-> hl_subgroup_of A h G = 1 /\ hl_SUBSET A h (hl_group_carrier A (hl_subgroup_generated A G k)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2208 / SUBGROUP_GENERATED_INDUCT_STRONG   (hash md5:cb077e5215197729ae8cad36defb2c8c)
Theorem hlt_SUBGROUP_GENERATED_INDUCT_STRONG : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall P s :e 2 :^: A, (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A x s = 1 -> P x = 1) /\ (P (hl_group_id A G) = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ P x = 1 -> P (hl_group_inv A G x) = 1) /\ (forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (P x = 1 /\ P y = 1)) -> P (hl_group_mul A G x y) = 1))) -> forall x :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> P x = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2224 / SUBGROUP_GENERATED_INDUCT_ALT   (hash md5:7f397f7c067e67dda6750f044554ffce)
Theorem hlt_SUBGROUP_GENERATED_INDUCT_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall P s :e 2 :^: A, P (hl_group_id A G) = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A x s = 1 -> P x = 1 /\ P (hl_group_inv A G x) = 1) /\ (forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (P x = 1 /\ P y = 1)) -> P (hl_group_mul A G x y) = 1)) -> forall x :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> P x = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2239 / SUBGROUP_GENERATED_INDUCT_LEFT   (hash md5:d87e1f947ea41be287f1164d5b639a5c)
Theorem hlt_SUBGROUP_GENERATED_INDUCT_LEFT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall P s :e 2 :^: A, P (hl_group_id A G) = 1 /\ (forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x s = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ P y = 1)) -> P (hl_group_mul A G x y) = 1 /\ P (hl_group_mul A G (hl_group_inv A G x) y) = 1) -> forall x :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> P x = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2256 / FINITE_SUBGROUP_GENERATED   (hash md5:a4f5200964c54fc1b49675b2b5d0e77e)
Theorem hlt_FINITE_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 -> hl_FINITE A (hl_group_carrier A (hl_subgroup_generated A G s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2262 / CARD_LE_SUBGROUP_GENERATED   (hash md5:02984ad6009ffee75f2f1a5e4ea7d1cd)
Theorem hlt_CARD_LE_SUBGROUP_GENERATED : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall k :e 2 :^: K, hl_INFINITE K k = 1 /\ hl_sym_3c3d5f63 A K s k = 1 -> hl_sym_3c3d5f63 A K (hl_group_carrier A (hl_subgroup_generated A G s)) k = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2303 / COUNTABLE_SUBGROUP_GENERATED   (hash md5:ebf06ae74f8c213b19ac9d90eaf071c3)
Theorem hlt_COUNTABLE_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_COUNTABLE A (hl_group_carrier A G) = 1 \/ hl_COUNTABLE A s = 1 -> hl_COUNTABLE A (hl_group_carrier A (hl_subgroup_generated A G s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2314 / SUBGROUP_GENERATED_SUBSET_CARRIER   (hash md5:8cb41d243f9b1f406691138863fe74e6)
Theorem hlt_SUBGROUP_GENERATED_SUBSET_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_SUBSET A (hl_INTER A (hl_group_carrier A G) h) (hl_group_carrier A (hl_subgroup_generated A G h)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2319 / SUBSET_CARRIER_SUBGROUP_GENERATED   (hash md5:9bf6e3d76a65e588a57ee4854c5243b1)
Theorem hlt_SUBSET_CARRIER_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_SUBSET A s t = 1 -> hl_SUBSET A s (hl_group_carrier A (hl_subgroup_generated A G t)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2325 / SUBGROUP_GENERATED_MINIMAL_EQ   (hash md5:bfe76ce8c2418f402ff46b34c627fa42)
Theorem hlt_SUBGROUP_GENERATED_MINIMAL_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h s :e 2 :^: A, hl_subgroup_of A h G = 1 -> (hl_SUBSET A (hl_group_carrier A (hl_subgroup_generated A G s)) h = 1 <-> hl_SUBSET A (hl_INTER A (hl_group_carrier A G) s) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:2336 / CARRIER_SUBGROUP_GENERATED_SUBGROUP   (hash md5:bb1c20541c3f837f39de4abf1500c9f0)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_group_carrier A (hl_subgroup_generated A G h) = h.
Admitted.

// HOL Light: Library/grouptheory.ml:2346 / SUBGROUP_OF_SUBGROUP_GENERATED_SUBGROUP_EQ   (hash md5:3a93b3b4c32b29b9f22e4ef37f02d7ed)
Theorem hlt_SUBGROUP_OF_SUBGROUP_GENERATED_SUBGROUP_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h k :e 2 :^: A, hl_subgroup_of A k G = 1 -> (hl_subgroup_of A h (hl_subgroup_generated A G k) = 1 <-> hl_subgroup_of A h G = 1 /\ hl_SUBSET A h k = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:2354 / SUBGROUP_GENERATED_GROUP_CARRIER   (hash md5:060763608219a72bb679b499d50525cb)
Theorem hlt_SUBGROUP_GENERATED_GROUP_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_subgroup_generated A G (hl_group_carrier A G) = G.
Admitted.

// HOL Light: Library/grouptheory.ml:2360 / SUBGROUP_OF_SUBGROUP_GENERATED   (hash md5:8f758aefac96c2bc4f9f6b79ec74005a)
Theorem hlt_SUBGROUP_OF_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_SUBSET A g h = 1 -> hl_subgroup_of A g (hl_subgroup_generated A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2366 / SUBGROUP_GENERATED_SUBSET_CARRIER_SUBSET   (hash md5:d52894f47b828d3ac19e2d05cdaceb1f)
Theorem hlt_SUBGROUP_GENERATED_SUBSET_CARRIER_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_SUBSET A s (hl_group_carrier A (hl_subgroup_generated A G s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2373 / SUBGROUP_GENERATED_REFL   (hash md5:0194b5d9908ce6348e2b0a964738a1c4)
Theorem hlt_SUBGROUP_GENERATED_REFL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A (hl_group_carrier A G) s = 1 -> hl_subgroup_generated A G s = G.
Admitted.

// HOL Light: Library/grouptheory.ml:2380 / SUBGROUP_GENERATED_INC   (hash md5:419c2943cfdb3d6ba639ca58f7a32977)
Theorem hlt_SUBGROUP_GENERATED_INC : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_IN A x s = 1 -> hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2387 / SUBGROUP_GENERATED_INC_GEN   (hash md5:dd1d0bec0f2094ddede205d9e7c97ceb)
Theorem hlt_SUBGROUP_GENERATED_INC_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A x s = 1 -> hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2393 / SUBGROUP_OF_SUBGROUP_GENERATED_REV   (hash md5:1ed7bfec42c82a295b396235834c64b5)
Theorem hlt_SUBGROUP_OF_SUBGROUP_GENERATED_REV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g (hl_subgroup_generated A G h) = 1 -> hl_subgroup_of A g G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2400 / TRIVIAL_GROUP_SUBGROUP_GENERATED   (hash md5:479a1f89eaa703ea6357de03d6b92bf3)
Theorem hlt_TRIVIAL_GROUP_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_trivial_group A G = 1 -> hl_trivial_group A (hl_subgroup_generated A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2406 / TRIVIAL_GROUP_SUBGROUP_GENERATED_TRIVIAL   (hash md5:244fd649c9980906a4ad7ed711d7ebe1)
Theorem hlt_TRIVIAL_GROUP_SUBGROUP_GENERATED_TRIVIAL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1 -> hl_trivial_group A (hl_subgroup_generated A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2416 / TRIVIAL_GROUP_SUBGROUP_GENERATED_EQ   (hash md5:87a6a25358f85a540cea70c7143da7c7)
Theorem hlt_TRIVIAL_GROUP_SUBGROUP_GENERATED_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_trivial_group A (hl_subgroup_generated A G s) = 1 <-> hl_SUBSET A (hl_INTER A (hl_group_carrier A G) s) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2428 / TRIVIAL_GROUP_GENERATED_BY_ANYTHING   (hash md5:d59e5e14906f2f536101b956bca4301d)
Theorem hlt_TRIVIAL_GROUP_GENERATED_BY_ANYTHING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_trivial_group A G = 1 -> hl_subgroup_generated A G s = G.
Admitted.

// HOL Light: Library/grouptheory.ml:2437 / SUBGROUP_GENERATED_BY_SUBGROUP_GENERATED   (hash md5:2fdcd06856f90a7ceae24147f02b7b54)
Theorem hlt_SUBGROUP_GENERATED_BY_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_generated A G (hl_group_carrier A (hl_subgroup_generated A G s)) = hl_subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2449 / SUBGROUP_GENERATED_INSERT_ID   (hash md5:9275c173d281b3b86cf647ce595e2b02)
Theorem hlt_SUBGROUP_GENERATED_INSERT_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_generated A G (hl_INSERT A (hl_group_id A G) s) = hl_subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2459 / GROUP_CARRIER_SUBGROUP_GENERATED_MONO   (hash md5:d783fce2efe5ffff517b2d020ae6c75f)
Theorem hlt_GROUP_CARRIER_SUBGROUP_GENERATED_MONO : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A (hl_group_carrier A (hl_subgroup_generated A (hl_subgroup_generated A G s) t)) (hl_group_carrier A (hl_subgroup_generated A G t)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2474 / SUBGROUP_GENERATED_IDEMPOT_GEN   (hash md5:4141f0a8e18e8d9ff4dc98177bd7b2f3)
Theorem hlt_SUBGROUP_GENERATED_IDEMPOT_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A (hl_subgroup_generated A G t)) = 1 -> hl_subgroup_generated A (hl_subgroup_generated A G t) s = hl_subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2487 / SUBGROUP_GENERATED_IDEMPOT   (hash md5:d58b566b2bcefe067b6559aadb104a29)
Theorem hlt_SUBGROUP_GENERATED_IDEMPOT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 -> hl_subgroup_generated A (hl_subgroup_generated A G t) s = hl_subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2503 / SUBGROUP_GENERATED_BY_SUBGROUP_GENERATED_IDEMPOT   (hash md5:c8cd69fcb09260b5417ae3b8519f6afa)
Theorem hlt_SUBGROUP_GENERATED_BY_SUBGROUP_GENERATED_IDEMPOT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 -> hl_subgroup_generated A (hl_subgroup_generated A G t) (hl_group_carrier A (hl_subgroup_generated A G s)) = hl_subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2512 / SUBGROUP_GENERATED_UNION_LEFT   (hash md5:e799c3a621f1b7fa304ef07bab2e6d0f)
Theorem hlt_SUBGROUP_GENERATED_UNION_LEFT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_subgroup_generated A G (hl_UNION A (hl_group_carrier A (hl_subgroup_generated A G s)) t) = hl_subgroup_generated A G (hl_UNION A s t).
Admitted.

// HOL Light: Library/grouptheory.ml:2531 / SUBGROUP_GENERATED_UNION_RIGHT   (hash md5:1fed18add18ba340731ccbd8f32a4030)
Theorem hlt_SUBGROUP_GENERATED_UNION_RIGHT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_subgroup_generated A G (hl_UNION A s (hl_group_carrier A (hl_subgroup_generated A G t))) = hl_subgroup_generated A G (hl_UNION A s t).
Admitted.

// HOL Light: Library/grouptheory.ml:2538 / SUBGROUP_GENERATED_UNION   (hash md5:09ce0f5c3c49837d83e705cded48ac75)
Theorem hlt_SUBGROUP_GENERATED_UNION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_subgroup_generated A G (hl_UNION A (hl_group_carrier A (hl_subgroup_generated A G s)) (hl_group_carrier A (hl_subgroup_generated A G t))) = hl_subgroup_generated A G (hl_UNION A s t).
Admitted.

// HOL Light: Library/grouptheory.ml:2546 / TRIVIAL_GROUP_SUBGROUP_GENERATED_EMPTY   (hash md5:002c1ded8da50ddee5d8173b1fa72372)
Theorem hlt_TRIVIAL_GROUP_SUBGROUP_GENERATED_EMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A (hl_subgroup_generated A G (hl_EMPTY A)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2550 / SUBGROUP_OF_COMMUTING_ELEMENTS   (hash md5:fc50735aa82e8d9da1d5f8fd581256cb)
Theorem hlt_SUBGROUP_OF_COMMUTING_ELEMENTS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall z :e A, hl_IN A z (hl_group_carrier A G) = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_816 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_816 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_group_mul A G x z = hl_group_mul A G z x then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2559 / GROUP_COMMUTES_SUBGROUP_GENERATED_EQ   (hash md5:01e28820e15abd71f5c51406b0e42835)
Theorem hlt_GROUP_COMMUTES_SUBGROUP_GENERATED_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall z :e A, hl_IN A z (hl_group_carrier A G) = 1 -> ((forall x :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> hl_group_mul A G x z = hl_group_mul A G z x) <-> forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A x s = 1 -> hl_group_mul A G x z = hl_group_mul A G z x).
Admitted.

// HOL Light: Library/grouptheory.ml:2575 / GROUP_COMMUTES_SUBGROUP_GENERATED   (hash md5:e434d7c3eea297799b83352084dc231c)
Theorem hlt_GROUP_COMMUTES_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall z :e A, (forall x :e A, hl_IN A x s = 1 -> hl_group_mul A G x z = hl_group_mul A G z x) /\ hl_IN A z (hl_group_carrier A G) = 1 -> forall x :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> hl_group_mul A G x z = hl_group_mul A G z x.
Admitted.

// HOL Light: Library/grouptheory.ml:2583 / GROUP_COMMUTES_SUBGROUPS_GENERATED_EQ   (hash md5:02460e7cb5df0393e8da5fd5f27d2106)
Theorem hlt_GROUP_COMMUTES_SUBGROUPS_GENERATED_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, (forall x y :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 /\ hl_IN A y (hl_group_carrier A (hl_subgroup_generated A G t)) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x) <-> forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x s = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y t = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:2604 / ABELIAN_GROUP_SUBGROUP_GENERATED_GEN   (hash md5:18f77a114d2482710db73c44f53ae5b8)
Theorem hlt_ABELIAN_GROUP_SUBGROUP_GENERATED_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x s = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y s = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x) -> hl_abelian_group A (hl_subgroup_generated A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2617 / prod_group   (hash md5:f9c77f1cd70f8581aca2505d55f9f5c3)
Theorem hlt_prod_group_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_prod_group A B G G' = hl_group (A :*: B) (hl_pair (2 :^: (A :*: B)) (A :*: B :*: ((A :*: B) :^: (A :*: B) :*: (A :*: B) :^: (A :*: B) :^: (A :*: B))) (hl_CROSS A B (hl_group_carrier A G) (hl_group_carrier B G')) (hl_pair (A :*: B) ((A :*: B) :^: (A :*: B) :*: (A :*: B) :^: (A :*: B) :^: (A :*: B)) (hl_pair A B (hl_group_id A G) (hl_group_id B G')) (hl_pair ((A :*: B) :^: (A :*: B)) ((A :*: B) :^: (A :*: B) :^: (A :*: B)) (hl_GABS ((A :*: B) :^: (A :*: B)) (fun f :e (A :*: B) :^: (A :*: B) => if forall x :e A, forall x' :e B, hl_GEQ (A :*: B) (f (hl_pair A B x x')) (hl_pair A B (hl_group_inv A G x) (hl_group_inv B G' x')) = 1 then 1 else 0)) (hl_GABS ((A :*: B) :^: (A :*: B) :^: (A :*: B)) (fun f :e (A :*: B) :^: (A :*: B) :^: (A :*: B) => if forall x :e A, forall x' :e B, hl_GEQ ((A :*: B) :^: (A :*: B)) (f (hl_pair A B x x')) (hl_GABS ((A :*: B) :^: (A :*: B)) (fun f1 :e (A :*: B) :^: (A :*: B) => if forall y :e A, forall y' :e B, hl_GEQ (A :*: B) (f1 (hl_pair A B y y')) (hl_pair A B (hl_group_mul A G x y) (hl_group_mul B G' x' y')) = 1 then 1 else 0)) = 1 then 1 else 0))))).
Admitted.

// HOL Light: Library/grouptheory.ml:2624 / PROD_GROUP   (hash md5:6e45f20ddbd607b63e0b7b52545e21f2)
Theorem hlt_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> (forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_group_carrier (A :*: B) (hl_prod_group A B G G') = hl_CROSS A B (hl_group_carrier A G) (hl_group_carrier B G')) /\ ((forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_group_id (A :*: B) (hl_prod_group A B G G') = hl_pair A B (hl_group_id A G) (hl_group_id B G')) /\ ((forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_group_inv (A :*: B) (hl_prod_group A B G G') = hl_GABS ((A :*: B) :^: (A :*: B)) (fun f :e (A :*: B) :^: (A :*: B) => if forall x :e A, forall x' :e B, hl_GEQ (A :*: B) (f (hl_pair A B x x')) (hl_pair A B (hl_group_inv A G x) (hl_group_inv B G' x')) = 1 then 1 else 0)) /\ forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_group_mul (A :*: B) (hl_prod_group A B G G') = hl_GABS ((A :*: B) :^: (A :*: B) :^: (A :*: B)) (fun f :e (A :*: B) :^: (A :*: B) :^: (A :*: B) => if forall x :e A, forall x' :e B, hl_GEQ ((A :*: B) :^: (A :*: B)) (f (hl_pair A B x x')) (hl_GABS ((A :*: B) :^: (A :*: B)) (fun f1 :e (A :*: B) :^: (A :*: B) => if forall y :e A, forall y' :e B, hl_GEQ (A :*: B) (f1 (hl_pair A B y y')) (hl_pair A B (hl_group_mul A G x y) (hl_group_mul B G' x' y')) = 1 then 1 else 0)) = 1 then 1 else 0))).
Admitted.

// HOL Light: Library/grouptheory.ml:2646 / GROUP_POW_PROD_GROUP   (hash md5:3134841329f45eb1835379585d4be847)
Theorem hlt_GROUP_POW_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall x :e A, forall y :e B, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B y (hl_group_carrier B H) = 1 -> hl_group_pow (A :*: B) (hl_prod_group A B G H) (hl_pair A B x y) n = hl_pair A B (hl_group_pow A G x n) (hl_group_pow B H y n).
Admitted.

// HOL Light: Library/grouptheory.ml:2654 / GROUP_ZPOW_PROD_GROUP   (hash md5:e362fd9ff61faa84878f653a6d96260f)
Theorem hlt_GROUP_ZPOW_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall x :e A, forall y :e B, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B y (hl_group_carrier B H) = 1 -> hl_group_zpow (A :*: B) (hl_prod_group A B G H) (hl_pair A B x y) n = hl_pair A B (hl_group_zpow A G x n) (hl_group_zpow B H y n).
Admitted.

// HOL Light: Library/grouptheory.ml:2662 / OPPOSITE_PROD_GROUP   (hash md5:5f670aba83f05d74d2e30072ffb6f57c)
Theorem hlt_OPPOSITE_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, hl_opposite_group (A :*: B) (hl_prod_group A B G1 G2) = hl_prod_group A B (hl_opposite_group A G1) (hl_opposite_group B G2).
Admitted.

// HOL Light: Library/grouptheory.ml:2669 / TRIVIAL_PROD_GROUP   (hash md5:3e42961736ec7477c407e2f906b37942)
Theorem hlt_TRIVIAL_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group (A :*: B) (hl_prod_group A B G H) = 1 <-> hl_trivial_group A G = 1 /\ hl_trivial_group B H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2676 / FINITE_PROD_GROUP   (hash md5:58fd6174f6ae70bff0138cf2431c1585)
Theorem hlt_FINITE_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_FINITE (A :*: B) (hl_group_carrier (A :*: B) (hl_prod_group A B G H)) = 1 <-> hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_FINITE B (hl_group_carrier B H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2682 / ABELIAN_PROD_GROUP   (hash md5:868ad91c1980cd12637997cefed1b743)
Theorem hlt_ABELIAN_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_abelian_group (A :*: B) (hl_prod_group A B G H) = 1 <-> hl_abelian_group A G = 1 /\ hl_abelian_group B H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2691 / CROSS_SUBGROUP_OF_PROD_GROUP   (hash md5:637c9ca5e9b47f197282c4931acd5537)
Theorem hlt_CROSS_SUBGROUP_OF_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall h1 :e 2 :^: A, forall h2 :e 2 :^: B, hl_subgroup_of (A :*: B) (hl_CROSS A B h1 h2) (hl_prod_group A B G1 G2) = 1 <-> hl_subgroup_of A h1 G1 = 1 /\ hl_subgroup_of B h2 G2 = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2699 / PROD_GROUP_SUBGROUP_GENERATED   (hash md5:3cf0a13b6c5ab2ed4ff485d5774e04ed)
Theorem hlt_PROD_GROUP_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall h1 :e 2 :^: A, forall h2 :e 2 :^: B, hl_subgroup_of A h1 G1 = 1 /\ hl_subgroup_of B h2 G2 = 1 -> hl_prod_group A B (hl_subgroup_generated A G1 h1) (hl_subgroup_generated B G2 h2) = hl_subgroup_generated (A :*: B) (hl_prod_group A B G1 G2) (hl_CROSS A B h1 h2).
Admitted.

// HOL Light: Library/grouptheory.ml:2708 / product_group   (hash md5:5a6ab471af52632c66c93d6ab27ab3c3)
Theorem hlt_product_group_thm : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_product_group K A k G = hl_group (A :^: K) (hl_pair (2 :^: (A :^: K)) (A :^: K :*: (A :^: K :^: (A :^: K) :*: A :^: K :^: (A :^: K) :^: (A :^: K))) (hl_cartesian_product K A k (fun i :e K => hl_group_carrier A (G i))) (hl_pair (A :^: K) (A :^: K :^: (A :^: K) :*: A :^: K :^: (A :^: K) :^: (A :^: K)) (hl_RESTRICTION K A k (fun i :e K => hl_group_id A (G i))) (hl_pair (A :^: K :^: (A :^: K)) (A :^: K :^: (A :^: K) :^: (A :^: K)) (fun x :e A :^: K => hl_RESTRICTION K A k (fun i :e K => hl_group_inv A (G i) (x i))) (fun x :e A :^: K => fun y :e A :^: K => hl_RESTRICTION K A k (fun i :e K => hl_group_mul A (G i) (x i) (y i)))))).
Admitted.

// HOL Light: Library/grouptheory.ml:2715 / PRODUCT_GROUP   (hash md5:8b03aeac91e07e372034b420034915d9)
Theorem hlt_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> (forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_group_carrier (A :^: K) (hl_product_group K A k G) = hl_cartesian_product K A k (fun i :e K => hl_group_carrier A (G i))) /\ ((forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_group_id (A :^: K) (hl_product_group K A k G) = hl_RESTRICTION K A k (fun i :e K => hl_group_id A (G i))) /\ ((forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_group_inv (A :^: K) (hl_product_group K A k G) = fun x :e A :^: K => hl_RESTRICTION K A k (fun i :e K => hl_group_inv A (G i) (x i))) /\ forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_group_mul (A :^: K) (hl_product_group K A k G) = fun x :e A :^: K => fun y :e A :^: K => hl_RESTRICTION K A k (fun i :e K => hl_group_mul A (G i) (x i) (y i)))).
Admitted.

// HOL Light: Library/grouptheory.ml:2741 / GROUP_POW_PRODUCT_GROUP   (hash md5:a079cb989c5675e4b11877cfe839f404)
Theorem hlt_GROUP_POW_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall x :e A :^: K, forall n :e omega, hl_group_pow (A :^: K) (hl_product_group K A k G) x n = hl_RESTRICTION K A k (fun i :e K => hl_group_pow A (G i) (x i) n).
Admitted.

// HOL Light: Library/grouptheory.ml:2749 / GROUP_ZPOW_PRODUCT_GROUP   (hash md5:1a93234cd50e8da89e8c4450d7905199)
Theorem hlt_GROUP_ZPOW_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall x :e A :^: K, forall n :e hl_ty_int, hl_group_zpow (A :^: K) (hl_product_group K A k G) x n = hl_RESTRICTION K A k (fun i :e K => hl_group_zpow A (G i) (x i) n).
Admitted.

// HOL Light: Library/grouptheory.ml:2757 / OPPOSITE_PRODUCT_GROUP   (hash md5:c98dfdb415c7b982e82b92fb7f1ea824)
Theorem hlt_OPPOSITE_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, hl_opposite_group (A :^: K) (hl_product_group K A k G) = hl_product_group K A k (fun i :e K => hl_opposite_group A (G i)).
Admitted.

// HOL Light: Library/grouptheory.ml:2764 / GROUP_PRODUCT_INJECTION   (hash md5:3c411aa40d94f5a02bd9ff013aa60d44)
Theorem hlt_GROUP_PRODUCT_INJECTION : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall a :e A, forall i :e K, hl_IN (A :^: K) (hl_RESTRICTION K A k (fun j :e K => hl_COND A (if j = i then 1 else 0) a (hl_group_id A (G j)))) (hl_group_carrier (A :^: K) (hl_product_group K A k G)) = 1 <-> hl_IN K i k = 1 -> hl_IN A a (hl_group_carrier A (G i)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2772 / TRIVIAL_PRODUCT_GROUP   (hash md5:12f206fd267a302b98306127fc3ad87f)
Theorem hlt_TRIVIAL_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_trivial_group (A :^: K) (hl_product_group K A k G) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_trivial_group A (G i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2781 / CARTESIAN_PRODUCT_SUBGROUP_OF_PRODUCT_GROUP   (hash md5:66192b552454729aa53fd2896713cdd3)
Theorem hlt_CARTESIAN_PRODUCT_SUBGROUP_OF_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall h :e 2 :^: A :^: K, forall G :e hl_ty_group A :^: K, hl_subgroup_of (A :^: K) (hl_cartesian_product K A k h) (hl_product_group K A k G) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) (G i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2796 / PRODUCT_GROUP_SUBGROUP_GENERATED   (hash md5:10dbcb73e0f1dd25742333d26118a312)
Theorem hlt_PRODUCT_GROUP_SUBGROUP_GENERATED : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) (G i) = 1) -> hl_product_group K A k (fun i :e K => hl_subgroup_generated A (G i) (h i)) = hl_subgroup_generated (A :^: K) (hl_product_group K A k G) (hl_cartesian_product K A k h).
Admitted.

// HOL Light: Library/grouptheory.ml:2808 / FINITE_PRODUCT_GROUP   (hash md5:97d1b56a608bd48d79694c69b1099ad0)
Theorem hlt_FINITE_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_FINITE (A :^: K) (hl_group_carrier (A :^: K) (hl_product_group K A k G)) = 1 <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_820 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_820 (if hl_IN K i k = 1 /\ ~ hl_trivial_group A (G i) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_FINITE A (hl_group_carrier A (G i)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2817 / ABELIAN_PRODUCT_GROUP   (hash md5:28c82e7684d2f691bed24cdf548fab96)
Theorem hlt_ABELIAN_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_abelian_group (A :^: K) (hl_product_group K A k G) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_abelian_group A (G i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2834 / sum_group   (hash md5:7ceb44aecfcd1ec4fa1786450c1b576b)
Theorem hlt_sum_group_thm : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_sum_group K A k G = hl_subgroup_generated (A :^: K) (hl_product_group K A k G) (hl_GSPEC (A :^: K) (fun GEN_PVAR_822 :e A :^: K => if exists x :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_822 (if hl_IN (A :^: K) x (hl_cartesian_product K A k (fun i :e K => hl_group_carrier A (G i))) = 1 /\ hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_821 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_821 (if hl_IN K i k = 1 /\ ~ x i = hl_group_id A (G i) then 1 else 0) i = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:2841 / SUM_GROUP_ALT   (hash md5:49506b6c91442bc923fd3dda53526e69)
Theorem hlt_SUM_GROUP_ALT : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_sum_group K A k G = hl_subgroup_generated (A :^: K) (hl_product_group K A k G) (hl_GSPEC (A :^: K) (fun GEN_PVAR_824 :e A :^: K => if exists x :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_824 (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_823 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_823 (if hl_IN K i k = 1 /\ ~ x i = hl_group_id A (G i) then 1 else 0) i = 1 then 1 else 0))) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:2850 / SUM_GROUP_EQ_PRODUCT_GROUP   (hash md5:38bfc5a9e2aa93585a8cbe6ca482b685)
Theorem hlt_SUM_GROUP_EQ_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_FINITE K k = 1 -> hl_sum_group K A k G = hl_product_group K A k G.
Admitted.

// HOL Light: Library/grouptheory.ml:2856 / SUBGROUP_SUM_GROUP   (hash md5:532246afa42c55fc4d980fbde21c1f86)
Theorem hlt_SUBGROUP_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_subgroup_of (A :^: K) (hl_GSPEC (A :^: K) (fun GEN_PVAR_826 :e A :^: K => if exists x :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_826 (if hl_IN (A :^: K) x (hl_cartesian_product K A k (fun i :e K => hl_group_carrier A (G i))) = 1 /\ hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_825 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_825 (if hl_IN K i k = 1 /\ ~ x i = hl_group_id A (G i) then 1 else 0) i = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_product_group K A k G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2875 / SUM_GROUP_CLAUSES   (hash md5:c18d9f98c223318f60693a49095ea2a4)
Theorem hlt_SUM_GROUP_CLAUSES : forall A K:set, A <> Empty -> K <> Empty -> (forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_group_carrier (A :^: K) (hl_sum_group K A k G) = hl_GSPEC (A :^: K) (fun GEN_PVAR_828 :e A :^: K => if exists x :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_828 (if hl_IN (A :^: K) x (hl_cartesian_product K A k (fun i :e K => hl_group_carrier A (G i))) = 1 /\ hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_827 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_827 (if hl_IN K i k = 1 /\ ~ x i = hl_group_id A (G i) then 1 else 0) i = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)) /\ ((forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_group_id (A :^: K) (hl_sum_group K A k G) = hl_RESTRICTION K A k (fun i :e K => hl_group_id A (G i))) /\ ((forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_group_inv (A :^: K) (hl_sum_group K A k G) = fun x :e A :^: K => hl_RESTRICTION K A k (fun i :e K => hl_group_inv A (G i) (x i))) /\ forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_group_mul (A :^: K) (hl_sum_group K A k G) = fun x :e A :^: K => fun y :e A :^: K => hl_RESTRICTION K A k (fun i :e K => hl_group_mul A (G i) (x i) (y i)))).
Admitted.

// HOL Light: Library/grouptheory.ml:2893 / GROUP_POW_SUM_GROUP   (hash md5:2b11a7217997f96dab4f1fbf95caa0c7)
Theorem hlt_GROUP_POW_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall x :e A :^: K, forall n :e omega, hl_group_pow (A :^: K) (hl_sum_group K A k G) x n = hl_RESTRICTION K A k (fun i :e K => hl_group_pow A (G i) (x i) n).
Admitted.

// HOL Light: Library/grouptheory.ml:2900 / GROUP_ZPOW_SUM_GROUP   (hash md5:91f562d954759bf101f4aba506ef0e1f)
Theorem hlt_GROUP_ZPOW_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall x :e A :^: K, forall n :e hl_ty_int, hl_group_zpow (A :^: K) (hl_sum_group K A k G) x n = hl_RESTRICTION K A k (fun i :e K => hl_group_zpow A (G i) (x i) n).
Admitted.

// HOL Light: Library/grouptheory.ml:2907 / GROUP_SUM_INJECTION   (hash md5:ce9931e20dad69aa1c74126ca4616c91)
Theorem hlt_GROUP_SUM_INJECTION : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall a :e A, forall i :e K, hl_IN (A :^: K) (hl_RESTRICTION K A k (fun j :e K => hl_COND A (if j = i then 1 else 0) a (hl_group_id A (G j)))) (hl_group_carrier (A :^: K) (hl_sum_group K A k G)) = 1 <-> hl_IN K i k = 1 -> hl_IN A a (hl_group_carrier A (G i)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2920 / TRIVIAL_SUM_GROUP   (hash md5:d2669f4cb056b1ed3753831ee8be9db1)
Theorem hlt_TRIVIAL_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_trivial_group (A :^: K) (hl_sum_group K A k G) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_trivial_group A (G i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2945 / CARTESIAN_PRODUCT_SUBGROUP_OF_SUM_GROUP   (hash md5:a0865121708a1b4e96c7b95d29b3b2a6)
Theorem hlt_CARTESIAN_PRODUCT_SUBGROUP_OF_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall h :e 2 :^: A :^: K, forall G :e hl_ty_group A :^: K, hl_subgroup_of (A :^: K) (hl_cartesian_product K A k h) (hl_sum_group K A k G) = 1 <-> (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) (G i) = 1) /\ forall z :e A :^: K, hl_IN (A :^: K) z (hl_cartesian_product K A k h) = 1 -> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_829 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_829 (if hl_IN K i k = 1 /\ ~ z i = hl_group_id A (G i) then 1 else 0) i = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:2963 / SUM_GROUP_SUBGROUP_GENERATED   (hash md5:24b58a475584a7dab0e2803c655333f9)
Theorem hlt_SUM_GROUP_SUBGROUP_GENERATED : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) (G i) = 1) -> hl_sum_group K A k (fun i :e K => hl_subgroup_generated A (G i) (h i)) = hl_subgroup_generated (A :^: K) (hl_sum_group K A k G) (hl_cartesian_product K A k h).
Admitted.

// HOL Light: Library/grouptheory.ml:2991 / ABELIAN_SUM_GROUP   (hash md5:fc91bbcf81ab7ff50c7be9083cfe33d4)
Theorem hlt_ABELIAN_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_abelian_group (A :^: K) (hl_sum_group K A k G) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_abelian_group A (G i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3011 / group_homomorphism   (hash md5:23b78f503f4dc1b28bdf14a29513a436)
Theorem hlt_group_homomorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_group_carrier A G)) (hl_group_carrier B G') = 1 /\ (f (hl_group_id A G) = hl_group_id B G' /\ ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f (hl_group_inv A G x) = hl_group_inv B G' (f x)) /\ forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> f (hl_group_mul A G x y) = hl_group_mul B G' (f x) (f y))).
Admitted.

// HOL Light: Library/grouptheory.ml:3020 / group_monomorphism   (hash md5:7ead6d5dd5cb8788d85c8c9f3ed3bb11)
Theorem hlt_group_monomorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G' :e hl_ty_group B, forall G :e hl_ty_group A, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:3026 / group_epimorphism   (hash md5:1844581349df6f4dad102ba518614b85)
Theorem hlt_group_epimorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_IMAGE A B f (hl_group_carrier A G) = hl_group_carrier B G'.
Admitted.

// HOL Light: Library/grouptheory.ml:3031 / group_endomorphism   (hash md5:cc1653539206af2c4d881ce021b7803b)
Theorem hlt_group_endomorphism_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall f :e A :^: A, hl_group_endomorphism A G f = 1 <-> hl_group_homomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3034 / group_isomorphisms   (hash md5:3e18c663fc29577d3e65ce33c1152395)
Theorem hlt_group_isomorphisms_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, forall g :e A :^: B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') (hl_pair (B :^: A) (A :^: B) f g) = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ (hl_group_homomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) G' G) g = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> g (f x) = x) /\ forall y :e B, hl_IN B y (hl_group_carrier B G') = 1 -> f (g y) = y)).
Admitted.

// HOL Light: Library/grouptheory.ml:3041 / group_isomorphism   (hash md5:22bd9d440207778848516dad942e625e)
Theorem hlt_group_isomorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> exists g :e A :^: B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') (hl_pair (B :^: A) (A :^: B) f g) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3044 / group_automorphism   (hash md5:b38cc07163547ce48377780ad2266ee4)
Theorem hlt_group_automorphism_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall f :e A :^: A, hl_group_automorphism A G f = 1 <-> hl_group_isomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3047 / GROUP_HOMOMORPHISM_EQ   (hash md5:63bef0edc0d3ea648d1bc5950cec0383)
Theorem hlt_GROUP_HOMOMORPHISM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f f' :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f' x = f x) -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3055 / GROUP_MONOMORPHISM_EQ   (hash md5:66a8a4e817a74d2206dcd22b8cd98ef2)
Theorem hlt_GROUP_MONOMORPHISM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f f' :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f' x = f x) -> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3064 / GROUP_EPIMORPHISM_EQ   (hash md5:417bbf3cb1a8a1d42272c5ef535de8bc)
Theorem hlt_GROUP_EPIMORPHISM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f f' :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f' x = f x) -> hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3073 / GROUP_ENDOMORPHISM_EQ   (hash md5:b65d877ec089155b5653cdf8052e1f0f)
Theorem hlt_GROUP_ENDOMORPHISM_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall f f' :e A :^: A, hl_group_endomorphism A G f = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f' x = f x) -> hl_group_endomorphism A G f' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3080 / GROUP_ISOMORPHISMS_EQ   (hash md5:dbaf5f5861b294c88ff37405ee89f2a9)
Theorem hlt_GROUP_ISOMORPHISMS_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f' :e B :^: A, forall g' :e A :^: B, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall g :e A :^: B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) (hl_pair (B :^: A) (A :^: B) f g) = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f' x = f x) /\ (forall y :e B, hl_IN B y (hl_group_carrier B H) = 1 -> g' y = g y)) -> hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) (hl_pair (B :^: A) (A :^: B) f' g') = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3090 / GROUP_ISOMORPHISM_EQ   (hash md5:52d4b2244c1c5eec8f306ffd7869f3e3)
Theorem hlt_GROUP_ISOMORPHISM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f f' :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f' x = f x) -> hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3099 / GROUP_AUTOMORPHISM_EQ   (hash md5:243db79509f64a31af9f33ecbb567a39)
Theorem hlt_GROUP_AUTOMORPHISM_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall f f' :e A :^: A, hl_group_automorphism A G f = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f' x = f x) -> hl_group_automorphism A G f' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3106 / GROUP_HOMOMORPHISMS_EQ_ON_GENERATORS   (hash md5:47d68480a10c0d3b25bc4ffacda30d09)
Theorem hlt_GROUP_HOMOMORPHISMS_EQ_ON_GENERATORS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: A, forall f g :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) g = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A x s = 1 -> f x = g x)) -> forall x :e A, hl_IN A x (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> f x = g x.
Admitted.

// HOL Light: Library/grouptheory.ml:3117 / GROUP_ISOMORPHISMS_SYM   (hash md5:c54898a49e6fdc0fcbbec3f51865bb45)
Theorem hlt_GROUP_ISOMORPHISMS_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, forall g :e A :^: B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') (hl_pair (B :^: A) (A :^: B) f g) = 1 <-> hl_group_isomorphisms B A (hl_pair (hl_ty_group B) (hl_ty_group A) G' G) (hl_pair (A :^: B) (B :^: A) g f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3122 / GROUP_ISOMORPHISMS_IMP_ISOMORPHISM   (hash md5:d2342e9e35f84875b5e29107a4ba07f3)
Theorem hlt_GROUP_ISOMORPHISMS_IMP_ISOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e A :^: B, forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') (hl_pair (B :^: A) (A :^: B) f g) = 1 -> hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3127 / GROUP_ISOMORPHISMS_IMP_ISOMORPHISM_ALT   (hash md5:77b011fdcc8e34dc3e2f9d8e9f64b1fd)
Theorem hlt_GROUP_ISOMORPHISMS_IMP_ISOMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e A :^: B, forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') (hl_pair (B :^: A) (A :^: B) f g) = 1 -> hl_group_isomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) G' G) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3132 / GROUP_HOMOMORPHISM   (hash md5:852636abb1b4a077cac7b75be589d3fc)
Theorem hlt_GROUP_HOMOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_group_carrier A G)) (hl_group_carrier B G') = 1 /\ forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> f (hl_group_mul A G x y) = hl_group_mul B G' (f x) (f y).
Admitted.

// HOL Light: Library/grouptheory.ml:3151 / GROUP_EPIMORPHISM_SUBSET   (hash md5:1d36454d6e93bbb99ddd3d242693e262)
Theorem hlt_GROUP_EPIMORPHISM_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_SUBSET B (hl_group_carrier B G') (hl_IMAGE A B f (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3159 / GROUP_ISOMORPHISMS   (hash md5:4577b211672893aa26f1b2166f3f2f2c)
Theorem hlt_GROUP_ISOMORPHISMS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall g :e A :^: B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) (hl_pair (B :^: A) (A :^: B) f g) = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> g (f x) = x) /\ forall y :e B, hl_IN B y (hl_group_carrier B H) = 1 -> hl_IN A (g y) (hl_group_carrier A G) = 1 /\ f (g y) = y).
Admitted.

// HOL Light: Library/grouptheory.ml:3170 / GROUP_HOMOMORPHISM_OF_ID   (hash md5:b057f3dd2c280c8e99866fbafe1b62d8)
Theorem hlt_GROUP_HOMOMORPHISM_OF_ID : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> f (hl_group_id A G) = hl_group_id B G'.
Admitted.

// HOL Light: Library/grouptheory.ml:3175 / GROUP_HOMOMORPHISM_INV   (hash md5:eea477b92eaa61c61d93ed9cf8f79937)
Theorem hlt_GROUP_HOMOMORPHISM_INV : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f (hl_group_inv A G x) = hl_group_inv B G' (f x).
Admitted.

// HOL Light: Library/grouptheory.ml:3182 / GROUP_HOMOMORPHISM_MUL   (hash md5:3d8682432eb1440c06591b69ce8e405a)
Theorem hlt_GROUP_HOMOMORPHISM_MUL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> f (hl_group_mul A G x y) = hl_group_mul B G' (f x) (f y).
Admitted.

// HOL Light: Library/grouptheory.ml:3189 / GROUP_HOMOMORPHISM_DIV   (hash md5:2a3f56fe02e91e578f8643db7803167e)
Theorem hlt_GROUP_HOMOMORPHISM_DIV : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> f (hl_group_div A G x y) = hl_group_div B G' (f x) (f y).
Admitted.

// HOL Light: Library/grouptheory.ml:3197 / GROUP_HOMOMORPHISM_POW   (hash md5:7793a351c48d2fe5663c4690bc1b3228)
Theorem hlt_GROUP_HOMOMORPHISM_POW : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> forall x :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> f (hl_group_pow A G x n) = hl_group_pow B G' (f x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:3206 / GROUP_HOMOMORPHISM_ZPOW   (hash md5:0c7d1e5c7cadb59f59ca603505a1f288)
Theorem hlt_GROUP_HOMOMORPHISM_ZPOW : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> forall x :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> f (hl_group_zpow A G x n) = hl_group_zpow B G' (f x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:3215 / GROUP_HOMOMORPHISM_TRIVIAL   (hash md5:7d4b4f0ad96a6d02ea19feee6256b927)
Theorem hlt_GROUP_HOMOMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group B, forall H :e hl_ty_group A, hl_group_homomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) G H) (fun x :e B => hl_group_id A H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3220 / GROUP_HOMOMORPHISM_ID   (hash md5:83244bb352ed7c3dfbef75e6d8c9891b)
Theorem hlt_GROUP_HOMOMORPHISM_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_homomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3224 / GROUP_MONOMORPHISM_ID   (hash md5:752a2b4e746d0a3d430a0d2147e0f1b1)
Theorem hlt_GROUP_MONOMORPHISM_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_monomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3228 / GROUP_EPIMORPHISM_ID   (hash md5:c0f73d2588fc518e86d702f6b9bcd1ed)
Theorem hlt_GROUP_EPIMORPHISM_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_epimorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3232 / GROUP_ISOMORPHISMS_ID   (hash md5:8d7c9804beb165cc80564cd2587774aa)
Theorem hlt_GROUP_ISOMORPHISMS_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_isomorphisms A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (hl_pair (A :^: A) (A :^: A) (fun x :e A => x) (fun x :e A => x)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3236 / GROUP_ISOMORPHISM_ID   (hash md5:7b434b4601c5e541a06aabfcfec5ed47)
Theorem hlt_GROUP_ISOMORPHISM_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_isomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3240 / GROUP_HOMOMORPHISM_COMPOSE   (hash md5:f94e4508df9db2e54d3d258d1595ff4f)
Theorem hlt_GROUP_HOMOMORPHISM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall G3 :e hl_ty_group C, forall f :e B :^: A, forall g :e C :^: B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G1 G2) f = 1 /\ hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) G2 G3) g = 1 -> hl_group_homomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G1 G3) (hl_o B C A g f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3246 / GROUP_MONOMORPHISM_COMPOSE   (hash md5:ffceaef21ed13a2f3957739bb0c3d81c)
Theorem hlt_GROUP_MONOMORPHISM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall G3 :e hl_ty_group C, forall f :e B :^: A, forall g :e C :^: B, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G1 G2) f = 1 /\ hl_group_monomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) G2 G3) g = 1 -> hl_group_monomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G1 G3) (hl_o B C A g f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3253 / GROUP_MONOMORPHISM_COMPOSE_REV   (hash md5:94acb70a55ffcf7ea068742840e11e7f)
Theorem hlt_GROUP_MONOMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1 /\ hl_group_monomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) A1 C1) (hl_o B C A g f) = 1) -> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3260 / GROUP_EPIMORPHISM_COMPOSE   (hash md5:9c5596f0bd77af6f61d5f50a13a3b1bf)
Theorem hlt_GROUP_EPIMORPHISM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall G3 :e hl_ty_group C, forall f :e B :^: A, forall g :e C :^: B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G1 G2) f = 1 /\ hl_group_epimorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) G2 G3) g = 1 -> hl_group_epimorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G1 G3) (hl_o B C A g f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3267 / GROUP_EPIMORPHISM_COMPOSE_REV   (hash md5:54c3d41a43e9d23e862e188ecad21850)
Theorem hlt_GROUP_EPIMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1 /\ hl_group_epimorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) A1 C1) (hl_o B C A g f) = 1) -> hl_group_epimorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3275 / GROUP_MONOMORPHISM_LEFT_INVERTIBLE   (hash md5:126eab4d4dea4b347368b65753b9b723)
Theorem hlt_GROUP_MONOMORPHISM_LEFT_INVERTIBLE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall g :e A :^: B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> g (f x) = x) -> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3283 / GROUP_EPIMORPHISM_RIGHT_INVERTIBLE   (hash md5:c256def24757294beb0f6082db27f228)
Theorem hlt_GROUP_EPIMORPHISM_RIGHT_INVERTIBLE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall g :e A :^: B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) H G) g = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> g (f x) = x)) -> hl_group_epimorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) H G) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3292 / GROUP_HOMOMORPHISM_INTO_SUBGROUP   (hash md5:b7dc42fcc6627150a161c73c8dcbde72)
Theorem hlt_GROUP_HOMOMORPHISM_INTO_SUBGROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall h :e 2 :^: B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_SUBSET B (hl_IMAGE A B f (hl_group_carrier A G)) h = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B G' h)) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3299 / GROUP_HOMOMORPHISM_INTO_SUBGROUP_EQ_GEN   (hash md5:0d39f3cd495d87029920e4db7892e9e3)
Theorem hlt_GROUP_HOMOMORPHISM_INTO_SUBGROUP_EQ_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B H s)) f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET B (hl_IMAGE A B f (hl_group_carrier A G)) (hl_group_carrier B (hl_subgroup_generated B H s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3309 / GROUP_HOMOMORPHISM_INTO_SUBGROUP_EQ   (hash md5:8389a780d6e8791e0e45aa3a7a0bfe95)
Theorem hlt_GROUP_HOMOMORPHISM_INTO_SUBGROUP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall h :e 2 :^: B, forall f :e B :^: A, hl_subgroup_of B h G' = 1 -> (hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B G' h)) f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_SUBSET B (hl_IMAGE A B f (hl_group_carrier A G)) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3318 / GROUP_HOMOMORPHISM_FROM_SUBGROUP_GENERATED   (hash md5:52b5eff9d29c3e4461f92551c45cc758)
Theorem hlt_GROUP_HOMOMORPHISM_FROM_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G s) H) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3327 / GROUP_HOMOMORPHISM_BETWEEN_SUBGROUPS   (hash md5:134583022a53a8d552d5c141bb4e3d5f)
Theorem hlt_GROUP_HOMOMORPHISM_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall g :e 2 :^: A, forall h :e 2 :^: B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET B (hl_IMAGE A B f g) h = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G g) (hl_subgroup_generated B H h)) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3349 / GROUP_HOMOMORPHISM_BETWEEN_SUBGROUPS_ALT   (hash md5:3553152d50437bd9ccf8208bc0bcdf04)
Theorem hlt_GROUP_HOMOMORPHISM_BETWEEN_SUBGROUPS_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall g :e 2 :^: A, forall h :e 2 :^: B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET B (hl_IMAGE A B f (hl_INTER A (hl_group_carrier A G) g)) h = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G g) (hl_subgroup_generated B H h)) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3356 / GROUP_MONOMORPHISM_FROM_SUBGROUP_GENERATED   (hash md5:c0f609985d03495ebdd0f9cc70148f50)
Theorem hlt_GROUP_MONOMORPHISM_FROM_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G s) H) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3367 / GROUP_MONOMORPHISM_BETWEEN_SUBGROUPS   (hash md5:88d3888a6a5a00c70b06c7def2ebcb65)
Theorem hlt_GROUP_MONOMORPHISM_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET B (hl_IMAGE A B f s) t = 1 -> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G s) (hl_subgroup_generated B H t)) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3377 / GROUP_MONOMORPHISM_INTO_SUPERGROUP   (hash md5:81ecbac0efe30d385870731ed2adbeab)
Theorem hlt_GROUP_MONOMORPHISM_INTO_SUPERGROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall t :e 2 :^: B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B G' t)) f = 1 -> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3384 / GROUP_HOMOMORPHISM_INCLUSION   (hash md5:973febd23ad6294097768ef02538986c)
Theorem hlt_GROUP_HOMOMORPHISM_INCLUSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_homomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) (hl_subgroup_generated A G s) G) (fun x :e A => x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3389 / GROUP_MONOMORPHISM_INCLUSION   (hash md5:e393648be622a96299e39dd13d470d6d)
Theorem hlt_GROUP_MONOMORPHISM_INCLUSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_monomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) (hl_subgroup_generated A G s) G) (fun x :e A => x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3394 / SUBGROUP_GENERATED_BY_HOMOMORPHIC_IMAGE   (hash md5:ad471ea0db0195d6c3f9f91af4576469)
Theorem hlt_SUBGROUP_GENERATED_BY_HOMOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall s :e 2 :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_group_carrier B (hl_subgroup_generated B H (hl_IMAGE A B f s)) = hl_IMAGE A B f (hl_group_carrier A (hl_subgroup_generated A G s)).
Admitted.

// HOL Light: Library/grouptheory.ml:3413 / SUBGROUP_GENERATED_BY_HOMOMORPHIC_IMAGE_EQ   (hash md5:462230a335e96279897254ba529a49b3)
Theorem hlt_SUBGROUP_GENERATED_BY_HOMOMORPHIC_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s t :e 2 :^: A, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ hl_subgroup_generated A G s = hl_subgroup_generated A G t)) -> hl_subgroup_generated B H (hl_IMAGE A B f s) = hl_subgroup_generated B H (hl_IMAGE A B f t).
Admitted.

// HOL Light: Library/grouptheory.ml:3425 / SUBGROUP_GENERATED_BY_EPIMORPHIC_IMAGE   (hash md5:0db8c9cb81ce8349930d1121f68d1dc3)
Theorem hlt_SUBGROUP_GENERATED_BY_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: A, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_subgroup_generated A G s = G) -> hl_subgroup_generated B H (hl_IMAGE A B f s) = H.
Admitted.

// HOL Light: Library/grouptheory.ml:3434 / GROUP_EPIMORPHISM_BETWEEN_SUBGROUPS   (hash md5:246abb0016dfbe0df0c2a83f16d7aea4)
Theorem hlt_GROUP_EPIMORPHISM_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G s) (hl_subgroup_generated B H (hl_IMAGE A B f s))) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3443 / GROUP_EPIMORPHISM_INTO_SUBGROUP_EQ_GEN   (hash md5:e2186f1f8aa8e90e67779a3669980428)
Theorem hlt_GROUP_EPIMORPHISM_INTO_SUBGROUP_EQ_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B H s)) f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_IMAGE A B f (hl_group_carrier A G) = hl_group_carrier B (hl_subgroup_generated B H s).
Admitted.

// HOL Light: Library/grouptheory.ml:3451 / GROUP_EPIMORPHISM_INTO_SUBGROUP_EQ   (hash md5:8faec75103274dcedaf59af3d3654af8)
Theorem hlt_GROUP_EPIMORPHISM_INTO_SUBGROUP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall h :e 2 :^: B, forall f :e B :^: A, hl_subgroup_of B h G' = 1 -> (hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B G' h)) f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_IMAGE A B f (hl_group_carrier A G) = h).
Admitted.

// HOL Light: Library/grouptheory.ml:3460 / GROUP_ISOMORPHISM   (hash md5:57a4c1f248692824768f281685b477fe)
Theorem hlt_GROUP_ISOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ (hl_IMAGE A B f (hl_group_carrier A G) = hl_group_carrier B G' /\ forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ f x = f y) -> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:3478 / GROUP_ISOMORPHISM_SUBSET   (hash md5:e417d488da6cf1c99bba5d18dd5cec41)
Theorem hlt_GROUP_ISOMORPHISM_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ ((forall z :e B, hl_IN B z (hl_group_carrier B G') = 1 -> exists x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ f x = z) /\ forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ f x = f y) -> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:3488 / SUBGROUP_OF_HOMOMORPHIC_IMAGE   (hash md5:feedad870dd178bb845969092987bf6d)
Theorem hlt_SUBGROUP_OF_HOMOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall h :e 2 :^: A, forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_subgroup_of A h G = 1 -> hl_subgroup_of B (hl_IMAGE A B f h) G' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3494 / SUBGROUP_OF_HOMOMORPHIC_PREIMAGE   (hash md5:8d6a0ab20b039096050b78b811b1f3b6)
Theorem hlt_SUBGROUP_OF_HOMOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall h :e 2 :^: B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_subgroup_of B h H = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_830 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_830 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) h = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3502 / SUBGROUP_OF_EPIMORPHIC_PREIMAGE   (hash md5:2b5ebf3058e7da2276c578ce08285309)
Theorem hlt_SUBGROUP_OF_EPIMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall h :e 2 :^: B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_subgroup_of B h H = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_831 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_831 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) h = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1 /\ hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_832 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_832 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) h = 1 then 1 else 0) x = 1 then 1 else 0)) = h.
Admitted.

// HOL Light: Library/grouptheory.ml:3513 / GROUP_MONOMORPHISM_EPIMORPHISM   (hash md5:b6fe89ad3bdb21353baf8d3bcbe0caa1)
Theorem hlt_GROUP_MONOMORPHISM_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3520 / GROUP_ISOMORPHISM_EPIMORPHISM   (hash md5:3d68d5fdcbb9a4caa241f142fa79e2f2)
Theorem hlt_GROUP_ISOMORPHISM_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:3530 / SUBGROUP_MONOMORPHISM_EPIMORPHISM   (hash md5:8c40461e29e707d8d4335a493bbef506)
Theorem hlt_SUBGROUP_MONOMORPHISM_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall s :e 2 :^: B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B G' s)) f = 1 <-> hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B G' s)) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3539 / GROUP_ISOMORPHISM_IMP_MONOMORPHISM   (hash md5:a41e4b108053a899eef4eb468d1de564)
Theorem hlt_GROUP_ISOMORPHISM_IMP_MONOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3544 / GROUP_ISOMORPHISM_IMP_EPIMORPHISM   (hash md5:68cd301340d349f06dcbdc44bee06133)
Theorem hlt_GROUP_ISOMORPHISM_IMP_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3549 / GROUP_MONOMORPHISM_IMP_HOMOMORPHISM   (hash md5:861f2eb75a53582a61b4288ee792c55a)
Theorem hlt_GROUP_MONOMORPHISM_IMP_HOMOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3553 / GROUP_EPIMORPHISM_IMP_HOMOMORPHISM   (hash md5:3ae2db3845d165ace4e267a0c39c566a)
Theorem hlt_GROUP_EPIMORPHISM_IMP_HOMOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3557 / GROUP_ISOMORPHISM_IMP_HOMOMORPHISM   (hash md5:6ca608a51a2eabd250d9f3d62d8ad137)
Theorem hlt_GROUP_ISOMORPHISM_IMP_HOMOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3561 / GROUP_AUTOMORPHISM_IMP_ENDOMORPHISM   (hash md5:3b8a688f5a25825f5e0c66ad217324df)
Theorem hlt_GROUP_AUTOMORPHISM_IMP_ENDOMORPHISM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall f :e A :^: A, hl_group_automorphism A G f = 1 -> hl_group_endomorphism A G f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3566 / GROUP_ISOMORPHISM_EQ_MONOMORPHISM_FINITE   (hash md5:f5fe312ddc6d0eb5183c112d3aa15ad8)
Theorem hlt_GROUP_ISOMORPHISM_EQ_MONOMORPHISM_FINITE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_FINITE B (hl_group_carrier B H) = 1 /\ hl_CARD A (hl_group_carrier A G) = hl_CARD B (hl_group_carrier B H)) -> (hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 <-> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3581 / GROUP_ISOMORPHISM_EQ_EPIMORPHISM_FINITE   (hash md5:1135097619db0f278daee939c2357bd1)
Theorem hlt_GROUP_ISOMORPHISM_EQ_EPIMORPHISM_FINITE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_FINITE B (hl_group_carrier B H) = 1 /\ hl_CARD A (hl_group_carrier A G) = hl_CARD B (hl_group_carrier B H)) -> (hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 <-> hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3596 / GROUP_ISOMORPHISMS_CONJUGATION   (hash md5:44e2570468d6b43068a1305c8ee7c6c0)
Theorem hlt_GROUP_ISOMORPHISMS_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_isomorphisms A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (hl_pair (A :^: A) (A :^: A) (hl_group_conjugation A G a) (hl_group_conjugation A G (hl_group_inv A G a))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3607 / GROUP_AUTOMORPHISM_CONJUGATION   (hash md5:c48bad5fa5181f223b6aa4d71f3576bb)
Theorem hlt_GROUP_AUTOMORPHISM_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_automorphism A G (hl_group_conjugation A G a) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3613 / GROUP_ISOMORPHISM_CONJUGATION   (hash md5:b802a31fab6f1845b56c5d74746e5645)
Theorem hlt_GROUP_ISOMORPHISM_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_isomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (hl_group_conjugation A G a) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3618 / GROUP_HOMOMORPHISM_CONJUGATION   (hash md5:bee0e9e1661f0510a278df082bdae637)
Theorem hlt_GROUP_HOMOMORPHISM_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_homomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (hl_group_conjugation A G a) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3624 / CARD_LE_GROUP_MONOMORPHIC_IMAGE   (hash md5:65fbba4e80a4d608f02ede300f61e6f4)
Theorem hlt_CARD_LE_GROUP_MONOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_sym_3c3d5f63 A B (hl_group_carrier A G) (hl_group_carrier B H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3630 / CARD_LE_GROUP_EPIMORPHIC_IMAGE   (hash md5:66c6c810de7936b9a1dc57b09fa7a664)
Theorem hlt_CARD_LE_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_sym_3c3d5f63 B A (hl_group_carrier B H) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3636 / CARD_EQ_GROUP_ISOMORPHIC_IMAGE   (hash md5:1eebcf0641e19ae2e1b39c7db1a1595f)
Theorem hlt_CARD_EQ_GROUP_ISOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_sym_3d5f63 A B (hl_group_carrier A G) (hl_group_carrier B H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3642 / FINITE_GROUP_MONOMORPHIC_PREIMAGE   (hash md5:7d72ea92462469137e24613128422b5a)
Theorem hlt_FINITE_GROUP_MONOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_FINITE B (hl_group_carrier B H) = 1 -> hl_FINITE A (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3648 / FINITE_GROUP_EPIMORPHIC_IMAGE   (hash md5:c0499d1b00a696b5956d90f18e438c59)
Theorem hlt_FINITE_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> hl_FINITE B (hl_group_carrier B H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3656 / CARD_EQ_GROUP_MONOMORPHIC_IMAGE   (hash md5:90f59f5a0859ab1f232ea1bd63c06e6b)
Theorem hlt_CARD_EQ_GROUP_MONOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_sym_3d5f63 B A (hl_IMAGE A B f (hl_group_carrier A G)) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3662 / GROUP_ISOMORPHISMS_BETWEEN_SUBGROUPS   (hash md5:6225b45f0c4e4975ced6aa5d7bab9375)
Theorem hlt_GROUP_ISOMORPHISMS_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall g :e 2 :^: A, forall h :e 2 :^: B, forall f :e B :^: A, forall f' :e A :^: B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) (hl_pair (B :^: A) (A :^: B) f f') = 1 /\ (hl_SUBSET B (hl_IMAGE A B f g) h = 1 /\ hl_SUBSET A (hl_IMAGE B A f' h) g = 1) -> hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G g) (hl_subgroup_generated B H h)) (hl_pair (B :^: A) (A :^: B) f f') = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3671 / GROUP_ISOMORPHISMS_BETWEEN_SUBGROUPS_ALT   (hash md5:382822a0c48ccf5f67c02b128608ea43)
Theorem hlt_GROUP_ISOMORPHISMS_BETWEEN_SUBGROUPS_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall g :e 2 :^: A, forall h :e 2 :^: B, forall f :e B :^: A, forall f' :e A :^: B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) (hl_pair (B :^: A) (A :^: B) f f') = 1 /\ (hl_SUBSET B (hl_IMAGE A B f (hl_INTER A (hl_group_carrier A G) g)) h = 1 /\ hl_SUBSET A (hl_IMAGE B A f' (hl_INTER B (hl_group_carrier B H) h)) g = 1) -> hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G g) (hl_subgroup_generated B H h)) (hl_pair (B :^: A) (A :^: B) f f') = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3681 / GROUP_ISOMORPHISM_BETWEEN_SUBGROUPS   (hash md5:69c781d1628c31d00830f0e9d27832ee)
Theorem hlt_GROUP_ISOMORPHISM_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall g :e 2 :^: A, forall h :e 2 :^: B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_SUBSET A g (hl_group_carrier A G) = 1 /\ hl_IMAGE A B f g = h) -> hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G g) (hl_subgroup_generated B H h)) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3699 / GROUP_ISOMORPHISMS_COMPOSE   (hash md5:fd0520b0b191796b265008c80c160c88)
Theorem hlt_GROUP_ISOMORPHISMS_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall G3 :e hl_ty_group C, forall f1 :e B :^: A, forall f2 :e C :^: B, forall g1 :e A :^: B, forall g2 :e B :^: C, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G1 G2) (hl_pair (B :^: A) (A :^: B) f1 g1) = 1 /\ hl_group_isomorphisms B C (hl_pair (hl_ty_group B) (hl_ty_group C) G2 G3) (hl_pair (C :^: B) (B :^: C) f2 g2) = 1 -> hl_group_isomorphisms A C (hl_pair (hl_ty_group A) (hl_ty_group C) G1 G3) (hl_pair (C :^: A) (A :^: C) (hl_o B C A f2 f1) (hl_o B A C g1 g2)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3706 / GROUP_ISOMORPHISM_COMPOSE   (hash md5:8580ca73b2a674322fc33e0796b4705d)
Theorem hlt_GROUP_ISOMORPHISM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall G3 :e hl_ty_group C, forall f :e B :^: A, forall g :e C :^: B, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G1 G2) f = 1 /\ hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) G2 G3) g = 1 -> hl_group_isomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G1 G3) (hl_o B C A g f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3712 / GROUP_ISOMORPHISM_COMPOSE_REV   (hash md5:63c97a7cf495901b58fe7579889eaec7)
Theorem hlt_GROUP_ISOMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1 /\ hl_group_isomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) A1 C1) (hl_o B C A g f) = 1) -> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ hl_group_epimorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3720 / GROUP_EPIMORPHISM_ISOMORPHISM_COMPOSE_REV   (hash md5:3712fba21a0b9ee872a8d621029e8f79)
Theorem hlt_GROUP_EPIMORPHISM_ISOMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1 /\ hl_group_isomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) A1 C1) (hl_o B C A g f) = 1) -> hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3741 / GROUP_MONOMORPHISM_ISOMORPHISM_COMPOSE_REV   (hash md5:f265a0ab1cab934949ac69de0ed004a8)
Theorem hlt_GROUP_MONOMORPHISM_ISOMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ (hl_group_monomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1 /\ hl_group_isomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) A1 C1) (hl_o B C A g f) = 1) -> hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3762 / GROUP_ISOMORPHISM_INVERSE   (hash md5:bd515964cc4fb916ceee74af29c122a0)
Theorem hlt_GROUP_ISOMORPHISM_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e A :^: B, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> g (f x) = x) -> hl_group_isomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) H G) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3778 / GROUP_ISOMORPHISMS_OPPOSITE_GROUP   (hash md5:7c2fcfdb7df5041a71cb4a999d2fbc51)
Theorem hlt_GROUP_ISOMORPHISMS_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_isomorphisms A A (hl_pair (hl_ty_group A) (hl_ty_group A) G (hl_opposite_group A G)) (hl_pair (A :^: A) (A :^: A) (hl_group_inv A G) (hl_group_inv A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3785 / GROUP_ISOMORPHISM_OPPOSITE_GROUP   (hash md5:45c2be629eee0820e74f5f42c133e87b)
Theorem hlt_GROUP_ISOMORPHISM_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_isomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G (hl_opposite_group A G)) (hl_group_inv A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3791 / GROUP_HOMOMORPHISM_FROM_TRIVIAL_GROUP   (hash md5:d97bce96ecbe54c9daf70c8ff9f000c5)
Theorem hlt_GROUP_HOMOMORPHISM_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group A G = 1 -> (hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 <-> f (hl_group_id A G) = hl_group_id B H).
Admitted.

// HOL Light: Library/grouptheory.ml:3801 / GROUP_MONOMORPHISM_FROM_TRIVIAL_GROUP   (hash md5:1ba0ef4ac9054f6c59c5a4d027c93e4d)
Theorem hlt_GROUP_MONOMORPHISM_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group A G = 1 -> (hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3807 / GROUP_MONOMORPHISM_TO_TRIVIAL_GROUP   (hash md5:6b792da481d60082c2bc56ea04748950)
Theorem hlt_GROUP_MONOMORPHISM_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group B H = 1 -> (hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_trivial_group A G = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3815 / GROUP_EPIMORPHISM_FROM_TRIVIAL_GROUP   (hash md5:3dde3348e33be037e8a905f6e4f1ae57)
Theorem hlt_GROUP_EPIMORPHISM_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group A G = 1 -> (hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_trivial_group B H = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3823 / GROUP_EPIMORPHISM_TO_TRIVIAL_GROUP   (hash md5:1ef286bf9f014646dd99d3c642392fe5)
Theorem hlt_GROUP_EPIMORPHISM_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group B H = 1 -> (hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3833 / GROUP_HOMOMORPHISM_PAIRWISE   (hash md5:c6a1b2bfc862a55e27e1a048fb395778)
Theorem hlt_GROUP_HOMOMORPHISM_PAIRWISE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e (B :*: C) :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_group_homomorphism A (B :*: C) (hl_pair (hl_ty_group A) (hl_ty_group (B :*: C)) G (hl_prod_group B C H K)) f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) (hl_o (B :*: C) B A (hl_FST B C) f) = 1 /\ hl_group_homomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G K) (hl_o (B :*: C) C A (hl_SND B C) f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3842 / GROUP_HOMOMORPHISM_PAIRED   (hash md5:b7df8ecc316fd0b830ff7344b8103467)
Theorem hlt_GROUP_HOMOMORPHISM_PAIRED : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_group_homomorphism A (B :*: C) (hl_pair (hl_ty_group A) (hl_ty_group (B :*: C)) G (hl_prod_group B C H K)) (fun x :e A => hl_pair B C (f x) (g x)) = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_group_homomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G K) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3849 / GROUP_HOMOMORPHISM_PAIRED2   (hash md5:7bf41c121263243202d644819d966ba8)
Theorem hlt_GROUP_HOMOMORPHISM_PAIRED2 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e D :^: C, forall G :e hl_ty_group A, forall H :e hl_ty_group C, forall G' :e hl_ty_group B, forall H' :e hl_ty_group D, hl_group_homomorphism (A :*: C) (B :*: D) (hl_pair (hl_ty_group (A :*: C)) (hl_ty_group (B :*: D)) (hl_prod_group A C G H) (hl_prod_group B D G' H')) (hl_GABS ((B :*: D) :^: (A :*: C)) (fun f1 :e (B :*: D) :^: (A :*: C) => if forall x :e A, forall y :e C, hl_GEQ (B :*: D) (f1 (hl_pair A C x y)) (hl_pair B D (f x) (g y)) = 1 then 1 else 0)) = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_group_homomorphism C D (hl_pair (hl_ty_group C) (hl_ty_group D) H H') g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3858 / GROUP_ISOMORPHISMS_PAIRED2   (hash md5:c6a6703665e68dfa0f76845fa7c42ec3)
Theorem hlt_GROUP_ISOMORPHISMS_PAIRED2 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e D :^: C, forall f' :e A :^: B, forall g' :e C :^: D, forall G :e hl_ty_group A, forall H :e hl_ty_group C, forall G' :e hl_ty_group B, forall H' :e hl_ty_group D, hl_group_isomorphisms (A :*: C) (B :*: D) (hl_pair (hl_ty_group (A :*: C)) (hl_ty_group (B :*: D)) (hl_prod_group A C G H) (hl_prod_group B D G' H')) (hl_pair ((B :*: D) :^: (A :*: C)) ((A :*: C) :^: (B :*: D)) (hl_GABS ((B :*: D) :^: (A :*: C)) (fun f1 :e (B :*: D) :^: (A :*: C) => if forall x :e A, forall y :e C, hl_GEQ (B :*: D) (f1 (hl_pair A C x y)) (hl_pair B D (f x) (g y)) = 1 then 1 else 0)) (hl_GABS ((A :*: C) :^: (B :*: D)) (fun f1 :e (A :*: C) :^: (B :*: D) => if forall x :e B, forall y :e D, hl_GEQ (A :*: C) (f1 (hl_pair B D x y)) (hl_pair A C (f' x) (g' y)) = 1 then 1 else 0))) = 1 <-> hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') (hl_pair (B :^: A) (A :^: B) f f') = 1 /\ hl_group_isomorphisms C D (hl_pair (hl_ty_group C) (hl_ty_group D) H H') (hl_pair (D :^: C) (C :^: D) g g') = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3868 / GROUP_ISOMORPHISM_PAIRED2   (hash md5:d4528f1bd457660c4b4df433722f243d)
Theorem hlt_GROUP_ISOMORPHISM_PAIRED2 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e D :^: C, forall G :e hl_ty_group A, forall H :e hl_ty_group C, forall G' :e hl_ty_group B, forall H' :e hl_ty_group D, hl_group_isomorphism (A :*: C) (B :*: D) (hl_pair (hl_ty_group (A :*: C)) (hl_ty_group (B :*: D)) (hl_prod_group A C G H) (hl_prod_group B D G' H')) (hl_GABS ((B :*: D) :^: (A :*: C)) (fun f1 :e (B :*: D) :^: (A :*: C) => if forall x :e A, forall y :e C, hl_GEQ (B :*: D) (f1 (hl_pair A C x y)) (hl_pair B D (f x) (g y)) = 1 then 1 else 0)) = 1 <-> hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_group_isomorphism C D (hl_pair (hl_ty_group C) (hl_ty_group D) H H') g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3878 / GROUP_HOMOMORPHISM_OF_FST   (hash md5:d1c96df49e37b63c59dd19a0d0b6ac15)
Theorem hlt_GROUP_HOMOMORPHISM_OF_FST : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: A, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_homomorphism (A :*: B) C (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group C) (hl_prod_group A B A1 B1) C1) (hl_o A C (A :*: B) f (hl_FST A B)) = 1 <-> hl_group_homomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) A1 C1) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3885 / GROUP_HOMOMORPHISM_OF_SND   (hash md5:8b0a960d26b148a9663285962577ecac)
Theorem hlt_GROUP_HOMOMORPHISM_OF_SND : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_homomorphism (A :*: B) C (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group C) (hl_prod_group A B A1 B1) C1) (hl_o B C (A :*: B) f (hl_SND A B)) = 1 <-> hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3892 / GROUP_EPIMORPHISM_OF_FST   (hash md5:2e7c9264454122bd0b9f49b1743d20be)
Theorem hlt_GROUP_EPIMORPHISM_OF_FST : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: A, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_epimorphism (A :*: B) C (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group C) (hl_prod_group A B A1 B1) C1) (hl_o A C (A :*: B) f (hl_FST A B)) = 1 <-> hl_group_epimorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) A1 C1) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3899 / GROUP_EPIMORPHISM_OF_SND   (hash md5:93d20addf595a1ce0652aa9e02764ed4)
Theorem hlt_GROUP_EPIMORPHISM_OF_SND : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_epimorphism (A :*: B) C (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group C) (hl_prod_group A B A1 B1) C1) (hl_o B C (A :*: B) f (hl_SND A B)) = 1 <-> hl_group_epimorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3906 / GROUP_HOMOMORPHISM_FST   (hash md5:cdebd4857a315ea4e37e05c400093aa5)
Theorem hlt_GROUP_HOMOMORPHISM_FST : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, hl_group_homomorphism (A :*: B) A (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group A) (hl_prod_group A B A1 B1) A1) (hl_FST A B) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3911 / GROUP_HOMOMORPHISM_SND   (hash md5:7a3560842c2c45a746224c54393dcb85)
Theorem hlt_GROUP_HOMOMORPHISM_SND : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, hl_group_homomorphism (A :*: B) B (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group B) (hl_prod_group A B A1 B1) B1) (hl_SND A B) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3916 / GROUP_EPIMORPHISM_FST   (hash md5:1c4f99be1a17c62408a6b6d03c63f8f4)
Theorem hlt_GROUP_EPIMORPHISM_FST : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, hl_group_epimorphism (A :*: B) A (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group A) (hl_prod_group A B A1 B1) A1) (hl_FST A B) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3921 / GROUP_EPIMORPHISM_SND   (hash md5:523e7d333663aefa1e35a7a87f737ea4)
Theorem hlt_GROUP_EPIMORPHISM_SND : forall A B:set, A <> Empty -> B <> Empty -> forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, hl_group_epimorphism (A :*: B) B (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group B) (hl_prod_group A B A1 B1) B1) (hl_SND A B) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3926 / GROUP_ISOMORPHISM_FST   (hash md5:96c892b55918fd5491690da5b204f904)
Theorem hlt_GROUP_ISOMORPHISM_FST : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_group_isomorphism (A :*: B) A (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group A) (hl_prod_group A B G H) G) (hl_FST A B) = 1 <-> hl_trivial_group B H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3937 / GROUP_ISOMORPHISM_SND   (hash md5:80c4877af8afed0456b51481b58eac59)
Theorem hlt_GROUP_ISOMORPHISM_SND : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_group_isomorphism (A :*: B) B (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group B) (hl_prod_group A B G H) H) (hl_SND A B) = 1 <-> hl_trivial_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3948 / GROUP_ISOMORPHISMS_PROD_GROUP_SWAP   (hash md5:2e76fd4117c92af581e926fbce8986db)
Theorem hlt_GROUP_ISOMORPHISMS_PROD_GROUP_SWAP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_group_isomorphisms (A :*: B) (B :*: A) (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group (B :*: A)) (hl_prod_group A B G H) (hl_prod_group B A H G)) (hl_pair ((B :*: A) :^: (A :*: B)) ((A :*: B) :^: (B :*: A)) (hl_GABS ((B :*: A) :^: (A :*: B)) (fun f :e (B :*: A) :^: (A :*: B) => if forall x :e A, forall y :e B, hl_GEQ (B :*: A) (f (hl_pair A B x y)) (hl_pair B A y x) = 1 then 1 else 0)) (hl_GABS ((A :*: B) :^: (B :*: A)) (fun f :e (A :*: B) :^: (B :*: A) => if forall y :e B, forall x :e A, hl_GEQ (A :*: B) (f (hl_pair B A y x)) (hl_pair A B x y) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3958 / GROUP_HOMOMORPHISM_COMPONENTWISE   (hash md5:ed816dbc66a02b0e073715adb12a5801)
Theorem hlt_GROUP_HOMOMORPHISM_COMPONENTWISE : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall k :e 2 :^: K, forall H :e hl_ty_group B :^: K, forall f :e B :^: K :^: A, hl_group_homomorphism A (B :^: K) (hl_pair (hl_ty_group A) (hl_ty_group (B :^: K)) G (hl_product_group K B k H)) f = 1 <-> hl_SUBSET (B :^: K) (hl_IMAGE A (B :^: K) f (hl_group_carrier A G)) (hl_EXTENSIONAL K B k) = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (H i)) (fun x :e A => f x i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3974 / GROUP_HOMOMORPHISM_COMPONENTWISE_UNIV   (hash md5:fab59ca378ba4a780f406c8acde053d5)
Theorem hlt_GROUP_HOMOMORPHISM_COMPONENTWISE_UNIV : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B :^: K, forall f :e B :^: K :^: A, hl_group_homomorphism A (B :^: K) (hl_pair (hl_ty_group A) (hl_ty_group (B :^: K)) G (hl_product_group K B (hl_UNIV K) H)) f = 1 <-> forall i :e K, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (H i)) (fun x :e A => f x i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3982 / GROUP_HOMOMORPHISM_PRODUCT_PROJECTION   (hash md5:e0a5c5d5d15cd2c6fd77568968477acf)
Theorem hlt_GROUP_HOMOMORPHISM_PRODUCT_PROJECTION : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall i :e K, hl_IN K i k = 1 -> hl_group_homomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_product_group K A k G) (G i)) (fun x :e A :^: K => x i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3992 / GROUP_HOMOMORPHISM_SUM_PROJECTION   (hash md5:746752e9215c591b59fd65f26c1d4524)
Theorem hlt_GROUP_HOMOMORPHISM_SUM_PROJECTION : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall i :e K, hl_IN K i k = 1 -> hl_group_homomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k G) (G i)) (fun x :e A :^: K => x i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:3999 / GROUP_HOMOMORPHISM_PRODUCT_INJECTION   (hash md5:83eb5f31dbad963db3a99398144e5496)
Theorem hlt_GROUP_HOMOMORPHISM_PRODUCT_INJECTION : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall i :e K, hl_group_homomorphism A (A :^: K) (hl_pair (hl_ty_group A) (hl_ty_group (A :^: K)) (G i) (hl_product_group K A k G)) (fun a :e A => hl_RESTRICTION K A k (fun j :e K => hl_COND A (if j = i then 1 else 0) a (hl_group_id A (G j)))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4010 / GROUP_HOMOMORPHISM_SUM_INJECTION   (hash md5:43dfc7cf0a6d7c1fc0f4bf61ad2d7c6e)
Theorem hlt_GROUP_HOMOMORPHISM_SUM_INJECTION : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall i :e K, hl_group_homomorphism A (A :^: K) (hl_pair (hl_ty_group A) (hl_ty_group (A :^: K)) (G i) (hl_sum_group K A k G)) (fun a :e A => hl_RESTRICTION K A k (fun j :e K => hl_COND A (if j = i then 1 else 0) a (hl_group_id A (G j)))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4024 / GROUP_HOMOMORPHISM_PRODUCT   (hash md5:674a05cbbba6d6b41240e26c483757c0)
Theorem hlt_GROUP_HOMOMORPHISM_PRODUCT : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall f :e B :^: A :^: K, forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall H :e hl_ty_group B :^: K, hl_group_homomorphism (A :^: K) (B :^: K) (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group (B :^: K)) (hl_product_group K A k G) (hl_product_group K B k H)) (fun x :e A :^: K => hl_RESTRICTION K B k (fun i :e K => f i (x i))) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (G i) (H i)) (f i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4050 / GROUP_HOMOMORPHISM_SUM   (hash md5:cf6fc13813d3dcebc79611aea2563f13)
Theorem hlt_GROUP_HOMOMORPHISM_SUM : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall f :e B :^: A :^: K, forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall H :e hl_ty_group B :^: K, hl_group_homomorphism (A :^: K) (B :^: K) (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group (B :^: K)) (hl_sum_group K A k G) (hl_sum_group K B k H)) (fun x :e A :^: K => hl_RESTRICTION K B k (fun i :e K => f i (x i))) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (G i) (H i)) (f i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4081 / GROUP_EPIMORPHISM_PRODUCT_PROJECTION   (hash md5:5360c336c065c932a7c09b54f9e0d0c9)
Theorem hlt_GROUP_EPIMORPHISM_PRODUCT_PROJECTION : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall i :e K, hl_IN K i k = 1 -> hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_product_group K A k G) (G i)) (fun x :e A :^: K => x i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4088 / GROUP_ISOMORPHISM_PRODUCT_PROJECTION   (hash md5:691eebe98d76e976180ab742ee54fb0b)
Theorem hlt_GROUP_ISOMORPHISM_PRODUCT_PROJECTION : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A :^: B, forall k :e B, hl_group_isomorphism (A :^: B) A (hl_pair (hl_ty_group (A :^: B)) (hl_ty_group A) (hl_product_group B A (hl_INSERT B k (hl_EMPTY B)) G) (G k)) (fun x :e A :^: B => x k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4096 / GROUP_EPIMORPHISM_SUM_PROJECTION   (hash md5:31cdf75db02e610156973a1eda2fabc6)
Theorem hlt_GROUP_EPIMORPHISM_SUM_PROJECTION : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall i :e K, hl_IN K i k = 1 -> hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k G) (G i)) (fun x :e A :^: K => x i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4110 / GROUP_ISOMORPHISM_SUM_PROJECTION   (hash md5:5b82720769a5d00f79b7aefcdfc45198)
Theorem hlt_GROUP_ISOMORPHISM_SUM_PROJECTION : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A :^: B, forall k :e B, hl_group_isomorphism (A :^: B) A (hl_pair (hl_ty_group (A :^: B)) (hl_ty_group A) (hl_sum_group B A (hl_INSERT B k (hl_EMPTY B)) G) (G k)) (fun x :e A :^: B => x k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4118 / ABELIAN_GROUP_EPIMORPHIC_IMAGE   (hash md5:d41c7fa4c3007b082c54a7adbd3b1f38)
Theorem hlt_ABELIAN_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_abelian_group A G = 1 -> hl_abelian_group B H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4126 / ABELIAN_GROUP_HOMOMORPHISM_GROUP_MUL   (hash md5:a0519d45047e31f899920cfc0c3eaff1)
Theorem hlt_ABELIAN_GROUP_HOMOMORPHISM_GROUP_MUL : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, hl_abelian_group B B1 = 1 /\ (hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) g = 1) -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) (fun x :e A => hl_group_mul B B1 (f x) (g x)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4135 / ABELIAN_GROUP_HOMOMORPHISM_INVERSION   (hash md5:269372fe2f9c12d90ca3ecd489be9f70)
Theorem hlt_ABELIAN_GROUP_HOMOMORPHISM_INVERSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_homomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (hl_group_inv A G) = 1 <-> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4141 / ABELIAN_GROUP_ISOMORPHISMS_INVERSION   (hash md5:4184d9c3fe2e6fb1d037a519464c5b78)
Theorem hlt_ABELIAN_GROUP_ISOMORPHISMS_INVERSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_isomorphisms A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (hl_pair (A :^: A) (A :^: A) (hl_group_inv A G) (hl_group_inv A G)) = 1 <-> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4147 / ABELIAN_GROUP_ISOMORPHISM_INVERSION   (hash md5:73294d226d22acefd9ae8c54c39ce915)
Theorem hlt_ABELIAN_GROUP_ISOMORPHISM_INVERSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_isomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (hl_group_inv A G) = 1 <-> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4154 / ABELIAN_GROUP_MONOMORPHISM_INVERSION   (hash md5:f21f92919dca02fd7b2da6455de4dccd)
Theorem hlt_ABELIAN_GROUP_MONOMORPHISM_INVERSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_monomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (hl_group_inv A G) = 1 <-> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4161 / ABELIAN_GROUP_EPIMORPHISM_INVERSION   (hash md5:7d51794334fa4244f20d17292502fa75)
Theorem hlt_ABELIAN_GROUP_EPIMORPHISM_INVERSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_epimorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (hl_group_inv A G) = 1 <-> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4168 / ABELIAN_GROUP_HOMOMORPHISM_POWERING   (hash md5:4dc5befdb95b26d36c3d5a81ed73ecc4)
Theorem hlt_ABELIAN_GROUP_HOMOMORPHISM_POWERING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 -> hl_group_homomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => hl_group_pow A G x n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4174 / ABELIAN_GROUP_HOMOMORPHISM_ZPOWERING   (hash md5:bde89420704ba4ec21099827211bbf00)
Theorem hlt_ABELIAN_GROUP_HOMOMORPHISM_ZPOWERING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e hl_ty_int, hl_abelian_group A G = 1 -> hl_group_homomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => hl_group_zpow A G x n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4186 / isomorphic_group   (hash md5:5f782e879eb5f8b261c71f2c84ba252f)
Theorem hlt_isomorphic_group_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_isomorphic_group A B G G' = 1 <-> exists f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4189 / GROUP_ISOMORPHISM_IMP_ISOMORPHIC   (hash md5:86e4d308130da24dabb4a7df0e53e2bb)
Theorem hlt_GROUP_ISOMORPHISM_IMP_ISOMORPHIC : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_isomorphic_group A B G H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4193 / ISOMORPHIC_PRODUCT_GROUP_SING   (hash md5:a41b60185016f69b71d57bac70690124)
Theorem hlt_ISOMORPHIC_PRODUCT_GROUP_SING : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e K, hl_isomorphic_group (A :^: K) A (hl_product_group K A (hl_INSERT K k (hl_EMPTY K)) G) (G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4198 / ISOMORPHIC_SUM_GROUP_SING   (hash md5:e273dfefc690989aa00cb4daed9e8930)
Theorem hlt_ISOMORPHIC_SUM_GROUP_SING : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e K, hl_isomorphic_group (A :^: K) A (hl_sum_group K A (hl_INSERT K k (hl_EMPTY K)) G) (G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4203 / ISOMORPHIC_GROUP_REFL   (hash md5:df0d7c3533aa82873d65bfbef119d85e)
Theorem hlt_ISOMORPHIC_GROUP_REFL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_isomorphic_group A A G G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4208 / ISOMORPHIC_GROUP_SYM   (hash md5:6d295ea7cc13075fcac60ca6d635948d)
Theorem hlt_ISOMORPHIC_GROUP_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 <-> hl_isomorphic_group B A H G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4213 / ISOMORPHIC_GROUP_TRANS   (hash md5:70e5da112886254712c64066105305ea)
Theorem hlt_ISOMORPHIC_GROUP_TRANS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall G3 :e hl_ty_group C, hl_isomorphic_group A B G1 G2 = 1 /\ hl_isomorphic_group B C G2 G3 = 1 -> hl_isomorphic_group A C G1 G3 = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4219 / ISOMORPHIC_GROUP_OPPOSITE_GROUP   (hash md5:bb0ab2be2d0a2c42bcf8ffc7a6f016da)
Theorem hlt_ISOMORPHIC_GROUP_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_isomorphic_group A A (hl_opposite_group A G) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4225 / ISOMORPHIC_GROUP_TRIVIALITY   (hash md5:97e9cace363f9a0d3bb9536ebbbd5369)
Theorem hlt_ISOMORPHIC_GROUP_TRIVIALITY : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 -> (hl_trivial_group A G = 1 <-> hl_trivial_group B H = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:4232 / ISOMORPHIC_TO_TRIVIAL_GROUP   (hash md5:b9c5db8da4d6dae718bc751f48eabeaa)
Theorem hlt_ISOMORPHIC_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> (forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group A G = 1 -> (hl_isomorphic_group A B G H = 1 <-> hl_trivial_group B H = 1)) /\ forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group B H = 1 -> (hl_isomorphic_group A B G H = 1 <-> hl_trivial_group A G = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:4254 / ISOMORPHIC_TRIVIAL_GROUPS   (hash md5:beaf1a68ab43ea8d54923960726971db)
Theorem hlt_ISOMORPHIC_TRIVIAL_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group A G = 1 /\ hl_trivial_group B H = 1 -> hl_isomorphic_group A B G H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4260 / ISOMORPHIC_GROUP_SINGLETON_GROUP   (hash md5:4ce4f24647faba3abc39d958557ec510)
Theorem hlt_ISOMORPHIC_GROUP_SINGLETON_GROUP : forall A B:set, A <> Empty -> B <> Empty -> (forall G :e hl_ty_group A, forall b :e B, hl_isomorphic_group A B G (hl_singleton_group B b) = 1 <-> hl_trivial_group A G = 1) /\ forall a :e A, forall G :e hl_ty_group B, hl_isomorphic_group A B (hl_singleton_group A a) G = 1 <-> hl_trivial_group B G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4267 / ISOMORPHIC_GROUP_PROD_GROUPS   (hash md5:760e2c99efea8115c276422e11861b46)
Theorem hlt_ISOMORPHIC_GROUP_PROD_GROUPS : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall H :e hl_ty_group C, forall H' :e hl_ty_group D, hl_isomorphic_group A B G G' = 1 /\ hl_isomorphic_group C D H H' = 1 -> hl_isomorphic_group (A :*: C) (B :*: D) (hl_prod_group A C G H) (hl_prod_group B D G' H') = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4275 / ISOMORPHIC_GROUP_PROD_GROUP_SYM   (hash md5:ae05e4bdfd6edc2ef38aec6ad21e2360)
Theorem hlt_ISOMORPHIC_GROUP_PROD_GROUP_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group (A :*: B) (B :*: A) (hl_prod_group A B G H) (hl_prod_group B A H G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4281 / ISOMORPHIC_GROUP_PROD_GROUP_SWAP_LEFT   (hash md5:9dee50de6e0c21f8971f6e59deeec0bf)
Theorem hlt_ISOMORPHIC_GROUP_PROD_GROUP_SWAP_LEFT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_isomorphic_group (A :*: B) C (hl_prod_group A B G H) K = 1 <-> hl_isomorphic_group (B :*: A) C (hl_prod_group B A H G) K = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4289 / ISOMORPHIC_GROUP_PROD_GROUP_SWAP_RIGHT   (hash md5:736f99ce94e720f8c6ca4b4bc6229301)
Theorem hlt_ISOMORPHIC_GROUP_PROD_GROUP_SWAP_RIGHT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_isomorphic_group A (B :*: C) G (hl_prod_group B C H K) = 1 <-> hl_isomorphic_group A (C :*: B) G (hl_prod_group C B K H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4296 / ISOMORPHIC_PROD_TRIVIAL_GROUP   (hash md5:ee7897aaed84ff9814d25a6016cfd861)
Theorem hlt_ISOMORPHIC_PROD_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> (forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group A G = 1 -> hl_isomorphic_group (A :*: B) B (hl_prod_group A B G H) H = 1) /\ ((forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group B H = 1 -> hl_isomorphic_group (A :*: B) A (hl_prod_group A B G H) G = 1) /\ ((forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group A G = 1 -> hl_isomorphic_group B (A :*: B) H (hl_prod_group A B G H) = 1) /\ forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_trivial_group B H = 1 -> hl_isomorphic_group A (A :*: B) G (hl_prod_group A B G H) = 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:4317 / ISOMORPHIC_PRODUCT_GROUP_SUPPORT   (hash md5:2f79691903fb1bff61277c5b61114176)
Theorem hlt_ISOMORPHIC_PRODUCT_GROUP_SUPPORT : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_isomorphic_group (A :^: K) (A :^: K) (hl_product_group K A (hl_GSPEC K (fun GEN_PVAR_834 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_834 (if hl_IN K i k = 1 /\ ~ hl_trivial_group A (G i) = 1 then 1 else 0) i = 1 then 1 else 0)) G) (hl_product_group K A k G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4336 / ISOMORPHIC_PRODUCT_GROUP_SYMDIFF   (hash md5:4908a860eda17074b8344d3adbb88f48)
Theorem hlt_ISOMORPHIC_PRODUCT_GROUP_SYMDIFF : forall A K:set, A <> Empty -> K <> Empty -> forall k l :e 2 :^: K, forall G :e hl_ty_group A :^: K, (forall i :e K, hl_IN K i (hl_UNION K (hl_DIFF K k l) (hl_DIFF K l k)) = 1 -> hl_trivial_group A (G i) = 1) -> hl_isomorphic_group (A :^: K) (A :^: K) (hl_product_group K A k G) (hl_product_group K A l G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4352 / ISOMORPHIC_SUM_GROUP_SUPPORT   (hash md5:5019ecf9dd6ee5635a45a779e90bc134)
Theorem hlt_ISOMORPHIC_SUM_GROUP_SUPPORT : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_isomorphic_group (A :^: K) (A :^: K) (hl_sum_group K A (hl_GSPEC K (fun GEN_PVAR_836 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_836 (if hl_IN K i k = 1 /\ ~ hl_trivial_group A (G i) = 1 then 1 else 0) i = 1 then 1 else 0)) G) (hl_sum_group K A k G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4380 / ISOMORPHIC_SUM_GROUP_SYMDIFF   (hash md5:fc1b3df5245e0e300d7ebe567e3ff60d)
Theorem hlt_ISOMORPHIC_SUM_GROUP_SYMDIFF : forall A K:set, A <> Empty -> K <> Empty -> forall k l :e 2 :^: K, forall G :e hl_ty_group A :^: K, (forall i :e K, hl_IN K i (hl_UNION K (hl_DIFF K k l) (hl_DIFF K l k)) = 1 -> hl_trivial_group A (G i) = 1) -> hl_isomorphic_group (A :^: K) (A :^: K) (hl_sum_group K A k G) (hl_sum_group K A l G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4396 / ISOMORPHIC_PRODUCT_GROUP_BIJECTIONS   (hash md5:b422d422039272ec318a502c245eed2a)
Theorem hlt_ISOMORPHIC_PRODUCT_GROUP_BIJECTIONS : forall A B K L:set, A <> Empty -> B <> Empty -> K <> Empty -> L <> Empty -> forall s :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall t :e 2 :^: L, forall H :e hl_ty_group B :^: L, forall f :e L :^: K, forall g :e K :^: L, (forall x :e K, hl_IN K x s = 1 -> hl_IN L (f x) t = 1 /\ g (f x) = x) /\ ((forall y :e L, hl_IN L y t = 1 -> hl_IN K (g y) s = 1 /\ f (g y) = y) /\ (forall i :e K, hl_IN K i s = 1 -> hl_isomorphic_group A B (G i) (H (f i)) = 1)) -> hl_isomorphic_group (A :^: K) (B :^: L) (hl_product_group K A s G) (hl_product_group L B t H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4396 / ISOMORPHIC_SUM_GROUP_BIJECTIONS   (hash md5:4aa8977a11d66f203c117064376a9173)
Theorem hlt_ISOMORPHIC_SUM_GROUP_BIJECTIONS : forall A B K L:set, A <> Empty -> B <> Empty -> K <> Empty -> L <> Empty -> forall s :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall t :e 2 :^: L, forall H :e hl_ty_group B :^: L, forall f :e L :^: K, forall g :e K :^: L, (forall x :e K, hl_IN K x s = 1 -> hl_IN L (f x) t = 1 /\ g (f x) = x) /\ ((forall y :e L, hl_IN L y t = 1 -> hl_IN K (g y) s = 1 /\ f (g y) = y) /\ (forall i :e K, hl_IN K i s = 1 -> hl_isomorphic_group A B (G i) (H (f i)) = 1)) -> hl_isomorphic_group (A :^: K) (B :^: L) (hl_sum_group K A s G) (hl_sum_group L B t H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4452 / ISOMORPHIC_GROUP_PRODUCT_GROUP   (hash md5:2998836b154614a77f32712a5042d48d)
Theorem hlt_ISOMORPHIC_GROUP_PRODUCT_GROUP : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall H :e hl_ty_group B :^: K, forall k :e 2 :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_isomorphic_group A B (G i) (H i) = 1) -> hl_isomorphic_group (A :^: K) (B :^: K) (hl_product_group K A k G) (hl_product_group K B k H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4459 / ISOMORPHIC_GROUP_SUM_GROUP   (hash md5:507ae07a23a852a1fd20d1697282becc)
Theorem hlt_ISOMORPHIC_GROUP_SUM_GROUP : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall H :e hl_ty_group B :^: K, forall k :e 2 :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_isomorphic_group A B (G i) (H i) = 1) -> hl_isomorphic_group (A :^: K) (B :^: K) (hl_sum_group K A k G) (hl_sum_group K B k H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4466 / GROUP_ISOMORPHISMS_PRODUCT_GROUP_DISJOINT_UNION   (hash md5:7bbf7599b28192ee905f81a904bc9cd7)
Theorem hlt_GROUP_ISOMORPHISMS_PRODUCT_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f :e hl_ty_group A :^: K, forall k l :e 2 :^: K, hl_DISJOINT K k l = 1 -> hl_group_isomorphisms (A :^: K) (A :^: K :*: A :^: K) (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group (A :^: K :*: A :^: K)) (hl_product_group K A (hl_UNION K k l) f) (hl_prod_group (A :^: K) (A :^: K) (hl_product_group K A k f) (hl_product_group K A l f))) (hl_pair ((A :^: K :*: A :^: K) :^: (A :^: K)) (A :^: K :^: (A :^: K :*: A :^: K)) (fun f1 :e A :^: K => hl_pair (A :^: K) (A :^: K) (hl_RESTRICTION K A k f1) (hl_RESTRICTION K A l f1)) (hl_GABS (A :^: K :^: (A :^: K :*: A :^: K)) (fun f1 :e A :^: K :^: (A :^: K :*: A :^: K) => if forall f2 g :e A :^: K, hl_GEQ (A :^: K) (f1 (hl_pair (A :^: K) (A :^: K) f2 g)) (fun x :e K => hl_COND A (hl_IN K x k) (f2 x) (g x)) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4485 / GROUP_ISOMORPHISMS_SUM_GROUP_DISJOINT_UNION   (hash md5:691c2fc8bbfb1d07cf154d139cc4b2bc)
Theorem hlt_GROUP_ISOMORPHISMS_SUM_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f :e hl_ty_group A :^: K, forall k l :e 2 :^: K, hl_DISJOINT K k l = 1 -> hl_group_isomorphisms (A :^: K) (A :^: K :*: A :^: K) (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group (A :^: K :*: A :^: K)) (hl_sum_group K A (hl_UNION K k l) f) (hl_prod_group (A :^: K) (A :^: K) (hl_sum_group K A k f) (hl_sum_group K A l f))) (hl_pair ((A :^: K :*: A :^: K) :^: (A :^: K)) (A :^: K :^: (A :^: K :*: A :^: K)) (fun f1 :e A :^: K => hl_pair (A :^: K) (A :^: K) (hl_RESTRICTION K A k f1) (hl_RESTRICTION K A l f1)) (hl_GABS (A :^: K :^: (A :^: K :*: A :^: K)) (fun f1 :e A :^: K :^: (A :^: K :*: A :^: K) => if forall f2 g :e A :^: K, hl_GEQ (A :^: K) (f1 (hl_pair (A :^: K) (A :^: K) f2 g)) (fun x :e K => hl_COND A (hl_IN K x k) (f2 x) (g x)) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4520 / GROUP_ISOMORPHISM_PRODUCT_GROUP_DISJOINT_UNION   (hash md5:7ea81ed73d4534f03fb92b48d38b4050)
Theorem hlt_GROUP_ISOMORPHISM_PRODUCT_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f :e hl_ty_group A :^: K, forall k l :e 2 :^: K, hl_DISJOINT K k l = 1 -> hl_group_isomorphism (A :^: K) (A :^: K :*: A :^: K) (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group (A :^: K :*: A :^: K)) (hl_product_group K A (hl_UNION K k l) f) (hl_prod_group (A :^: K) (A :^: K) (hl_product_group K A k f) (hl_product_group K A l f))) (fun f1 :e A :^: K => hl_pair (A :^: K) (A :^: K) (hl_RESTRICTION K A k f1) (hl_RESTRICTION K A l f1)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4530 / GROUP_ISOMORPHISM_SUM_GROUP_DISJOINT_UNION   (hash md5:8297539be8714c4de26837d69b58cdf8)
Theorem hlt_GROUP_ISOMORPHISM_SUM_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f :e hl_ty_group A :^: K, forall k l :e 2 :^: K, hl_DISJOINT K k l = 1 -> hl_group_isomorphism (A :^: K) (A :^: K :*: A :^: K) (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group (A :^: K :*: A :^: K)) (hl_sum_group K A (hl_UNION K k l) f) (hl_prod_group (A :^: K) (A :^: K) (hl_sum_group K A k f) (hl_sum_group K A l f))) (fun f1 :e A :^: K => hl_pair (A :^: K) (A :^: K) (hl_RESTRICTION K A k f1) (hl_RESTRICTION K A l f1)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4540 / ISOMORPHIC_PRODUCT_GROUP_DISJOINT_UNION   (hash md5:2b8adcd344234a32465a93e1ce18d949)
Theorem hlt_ISOMORPHIC_PRODUCT_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f :e hl_ty_group A :^: K, forall k l :e 2 :^: K, hl_DISJOINT K k l = 1 -> hl_isomorphic_group (A :^: K) (A :^: K :*: A :^: K) (hl_product_group K A (hl_UNION K k l) f) (hl_prod_group (A :^: K) (A :^: K) (hl_product_group K A k f) (hl_product_group K A l f)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4548 / ISOMORPHIC_SUM_GROUP_DISJOINT_UNION   (hash md5:a5128b18e9322a86ebe25a68718ae853)
Theorem hlt_ISOMORPHIC_SUM_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f :e hl_ty_group A :^: K, forall k l :e 2 :^: K, hl_DISJOINT K k l = 1 -> hl_isomorphic_group (A :^: K) (A :^: K :*: A :^: K) (hl_sum_group K A (hl_UNION K k l) f) (hl_prod_group (A :^: K) (A :^: K) (hl_sum_group K A k f) (hl_sum_group K A l f)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4556 / ISOMORPHIC_PRODUCT_GROUP_INSERT   (hash md5:81b6645e4c9cae0928b3e7dc5e072757)
Theorem hlt_ISOMORPHIC_PRODUCT_GROUP_INSERT : forall A K:set, A <> Empty -> K <> Empty -> forall f :e hl_ty_group A :^: K, forall i :e K, forall k :e 2 :^: K, ~ hl_IN K i k = 1 -> hl_isomorphic_group (A :^: K) (A :*: A :^: K) (hl_product_group K A (hl_INSERT K i k) f) (hl_prod_group A (A :^: K) (f i) (hl_product_group K A k f)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4569 / ISOMORPHIC_SUM_GROUP_INSERT   (hash md5:cebf81d857f44cf504284e532535b958)
Theorem hlt_ISOMORPHIC_SUM_GROUP_INSERT : forall A K:set, A <> Empty -> K <> Empty -> forall f :e hl_ty_group A :^: K, forall i :e K, forall k :e 2 :^: K, ~ hl_IN K i k = 1 -> hl_isomorphic_group (A :^: K) (A :*: A :^: K) (hl_sum_group K A (hl_INSERT K i k) f) (hl_prod_group A (A :^: K) (f i) (hl_sum_group K A k f)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4582 / ISOMORPHIC_GROUP_CARD_EQ   (hash md5:0f6431bcf93625ff12b42381dfee3d9e)
Theorem hlt_ISOMORPHIC_GROUP_CARD_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 -> hl_sym_3d5f63 A B (hl_group_carrier A G) (hl_group_carrier B H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4588 / ISOMORPHIC_GROUP_FINITENESS   (hash md5:f5e6e1b2c21827f7d518873588303084)
Theorem hlt_ISOMORPHIC_GROUP_FINITENESS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 -> (hl_FINITE A (hl_group_carrier A G) = 1 <-> hl_FINITE B (hl_group_carrier B H) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:4596 / ISOMORPHIC_GROUP_INFINITENESS   (hash md5:88cba551ba794b36493332adc2e04038)
Theorem hlt_ISOMORPHIC_GROUP_INFINITENESS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 -> (hl_INFINITE A (hl_group_carrier A G) = 1 <-> hl_INFINITE B (hl_group_carrier B H) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:4603 / ISOMORPHIC_GROUP_HAS_ORDER   (hash md5:d979dffd73dd16540ceab6634d89fd74)
Theorem hlt_ISOMORPHIC_GROUP_HAS_ORDER : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall n :e omega, hl_isomorphic_group A B G H = 1 -> (hl_HAS_SIZE A (hl_group_carrier A G) n = 1 <-> hl_HAS_SIZE B (hl_group_carrier B H) n = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:4611 / ISOMORPHIC_GROUP_ORDER   (hash md5:7c7228b7f97c123c871aa30c0fdbe230)
Theorem hlt_ISOMORPHIC_GROUP_ORDER : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 \/ hl_FINITE B (hl_group_carrier B H) = 1) -> hl_CARD A (hl_group_carrier A G) = hl_CARD B (hl_group_carrier B H).
Admitted.

// HOL Light: Library/grouptheory.ml:4619 / ISOMORPHIC_GROUP_ABELIANNESS   (hash md5:70161d986913ad827661c8f4c35f09a2)
Theorem hlt_ISOMORPHIC_GROUP_ABELIANNESS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 -> (hl_abelian_group A G = 1 <-> hl_abelian_group B H = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:4627 / CREATE_ISOMORPHIC_COPY_OF_GROUP   (hash md5:5853a0dc7160a800f9a828f765fd4b88)
Theorem hlt_CREATE_ISOMORPHIC_COPY_OF_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e A :^: B, forall G :e hl_ty_group A, forall s :e 2 :^: B, forall z :e B, forall i :e B :^: B, forall m :e B :^: B :^: B, hl_IN B z s = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_IN B (f x) s = 1 /\ g (f x) = x) /\ ((forall y :e B, hl_IN B y s = 1 -> hl_IN A (g y) (hl_group_carrier A G) = 1 /\ f (g y) = y) /\ (g z = hl_group_id A G /\ ((forall x :e B, hl_IN B x s = 1 -> i x = f (hl_group_inv A G (g x))) /\ (forall x y :e B, hl_IN B x s = 1 /\ hl_IN B y s = 1 -> m x y = f (hl_group_mul A G (g x) (g y))))))) -> hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_group B (hl_pair (2 :^: B) (B :*: (B :^: B :*: B :^: B :^: B)) s (hl_pair B (B :^: B :*: B :^: B :^: B) z (hl_pair (B :^: B) (B :^: B :^: B) i m))))) (hl_pair (B :^: A) (A :^: B) f g) = 1 /\ (hl_group_carrier B (hl_group B (hl_pair (2 :^: B) (B :*: (B :^: B :*: B :^: B :^: B)) s (hl_pair B (B :^: B :*: B :^: B :^: B) z (hl_pair (B :^: B) (B :^: B :^: B) i m)))) = s /\ (hl_group_id B (hl_group B (hl_pair (2 :^: B) (B :*: (B :^: B :*: B :^: B :^: B)) s (hl_pair B (B :^: B :*: B :^: B :^: B) z (hl_pair (B :^: B) (B :^: B :^: B) i m)))) = z /\ (hl_group_inv B (hl_group B (hl_pair (2 :^: B) (B :*: (B :^: B :*: B :^: B :^: B)) s (hl_pair B (B :^: B :*: B :^: B :^: B) z (hl_pair (B :^: B) (B :^: B :^: B) i m)))) = i /\ hl_group_mul B (hl_group B (hl_pair (2 :^: B) (B :*: (B :^: B :*: B :^: B :^: B)) s (hl_pair B (B :^: B :*: B :^: B :^: B) z (hl_pair (B :^: B) (B :^: B :^: B) i m)))) = m))).
Admitted.

// HOL Light: Library/grouptheory.ml:4656 / ISOMORPHIC_COPY_OF_GROUP   (hash md5:5381bc09d2002066fd928b37b6be194e)
Theorem hlt_ISOMORPHIC_COPY_OF_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: B, (exists G' :e hl_ty_group B, hl_group_carrier B G' = s /\ hl_isomorphic_group A B G G' = 1) <-> hl_sym_3d5f63 A B (hl_group_carrier A G) s = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4681 / GROUP_DIRECT_LIMIT   (hash md5:889190d5f6652d91b655cae4e67ba497)
Theorem hlt_GROUP_DIRECT_LIMIT : forall A:set, A <> Empty -> forall c :e 2 :^: hl_ty_group A, ~ c = hl_EMPTY (hl_ty_group A) /\ (forall g g' :e hl_ty_group A, hl_IN (hl_ty_group A) g c = 1 /\ hl_IN (hl_ty_group A) g' c = 1 -> exists G :e hl_ty_group A, hl_IN (hl_ty_group A) G c = 1 /\ (hl_group_monomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) g G) (hl_I A) = 1 /\ hl_group_monomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) g' G) (hl_I A) = 1)) -> exists G :e hl_ty_group A, hl_group_carrier A G = hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_843 :e 2 :^: A => if exists g :e hl_ty_group A, hl_SETSPEC (2 :^: A) GEN_PVAR_843 (hl_IN (hl_ty_group A) g c) (hl_group_carrier A g) = 1 then 1 else 0)) /\ forall g :e hl_ty_group A, hl_IN (hl_ty_group A) g c = 1 -> hl_group_monomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) g G) (hl_I A) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4751 / group_setinv   (hash md5:45a6c3b6fc751f74083394db663f2b05)
Theorem hlt_group_setinv_thm : forall A:set, A <> Empty -> forall g :e 2 :^: A, forall G :e hl_ty_group A, hl_group_setinv A G g = hl_GSPEC A (fun GEN_PVAR_844 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_844 (hl_IN A x g) (hl_group_inv A G x) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:4754 / group_setmul   (hash md5:acfda8ec3c88dc92ec939cc81f54379b)
Theorem hlt_group_setmul_thm : forall A:set, A <> Empty -> forall g h :e 2 :^: A, forall G :e hl_ty_group A, hl_group_setmul A G g h = hl_GSPEC A (fun GEN_PVAR_845 :e A => if exists x y :e A, hl_SETSPEC A GEN_PVAR_845 (if hl_IN A x g = 1 /\ hl_IN A y h = 1 then 1 else 0) (hl_group_mul A G x y) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:4757 / GROUP_SETINV_AS_IMAGE   (hash md5:4fe34591f31a9a874aca834def5b7421)
Theorem hlt_GROUP_SETINV_AS_IMAGE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_setinv A G = hl_IMAGE A A (hl_group_inv A G).
Admitted.

// HOL Light: Library/grouptheory.ml:4761 / SUBGROUP_OF_SETWISE   (hash md5:0445750d778d3c1ffe77761486d08cfa)
Theorem hlt_SUBGROUP_OF_SETWISE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_of A s G = 1 <-> hl_SUBSET A s (hl_group_carrier A G) = 1 /\ (hl_IN A (hl_group_id A G) s = 1 /\ (hl_SUBSET A (hl_group_setinv A G s) s = 1 /\ hl_SUBSET A (hl_group_setmul A G s s) s = 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:4770 / FINITE_SUBGROUP_OF_SETWISE   (hash md5:bda34af9f69876728faf7aa887c3d8ad)
Theorem hlt_FINITE_SUBGROUP_OF_SETWISE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_subgroup_of A s G = 1 <-> hl_SUBSET A s (hl_group_carrier A G) = 1 /\ (~ s = hl_EMPTY A /\ hl_SUBSET A (hl_group_setmul A G s s) s = 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:4791 / OPPOSITE_GROUP_SETINV   (hash md5:a9af97a11ba81bb6b3fbb63f904a5ef4)
Theorem hlt_OPPOSITE_GROUP_SETINV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_setinv A (hl_opposite_group A G) s = hl_group_setinv A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:4796 / OPPOSITE_GROUP_SETMUL   (hash md5:95ab61cda68e888a3cfce5056f8b856d)
Theorem hlt_OPPOSITE_GROUP_SETMUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_group_setmul A (hl_opposite_group A G) s t = hl_group_setmul A G t s.
Admitted.

// HOL Light: Library/grouptheory.ml:4802 / GROUP_SETINV_EQ_EMPTY   (hash md5:f398fadcbb1c73a00a07096648b89339)
Theorem hlt_GROUP_SETINV_EQ_EMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g :e 2 :^: A, hl_group_setinv A G g = hl_EMPTY A <-> g = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:4806 / GROUP_SETMUL_EQ_EMPTY   (hash md5:ceef947bce244543e106453548164bde)
Theorem hlt_GROUP_SETMUL_EQ_EMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_group_setmul A G g h = hl_EMPTY A <-> g = hl_EMPTY A \/ h = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:4810 / GROUP_SETMUL_EMPTY   (hash md5:e52471e866b3908c2be1722075126f01)
Theorem hlt_GROUP_SETMUL_EMPTY : forall A:set, A <> Empty -> (forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_setmul A G s (hl_EMPTY A) = hl_EMPTY A) /\ forall G :e hl_ty_group A, forall t :e 2 :^: A, hl_group_setmul A G (hl_EMPTY A) t = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:4815 / GROUP_SETINV_MONO   (hash md5:239e9e1ad3566d7f86bb1302aba6931e)
Theorem hlt_GROUP_SETINV_MONO : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s s' :e 2 :^: A, hl_SUBSET A s s' = 1 -> hl_SUBSET A (hl_group_setinv A G s) (hl_group_setinv A G s') = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4820 / GROUP_SETMUL_MONO   (hash md5:750c993ec37e8b5c9b4401d036a3e937)
Theorem hlt_GROUP_SETMUL_MONO : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t s' t' :e 2 :^: A, hl_SUBSET A s s' = 1 /\ hl_SUBSET A t t' = 1 -> hl_SUBSET A (hl_group_setmul A G s t) (hl_group_setmul A G s' t') = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4826 / GROUP_SETMUL_INC_GEN   (hash md5:104f564386988ccef10db0cec5fd2e5e)
Theorem hlt_GROUP_SETMUL_INC_GEN : forall A:set, A <> Empty -> (forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_IN A (hl_group_id A G) s = 1 /\ hl_SUBSET A t (hl_group_carrier A G) = 1 -> hl_SUBSET A t (hl_group_setmul A G s t) = 1) /\ forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_IN A (hl_group_id A G) t = 1 -> hl_SUBSET A s (hl_group_setmul A G s t) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4839 / GROUP_SETMUL_INC   (hash md5:fc91cd28f59acc05f3b02de102365963)
Theorem hlt_GROUP_SETMUL_INC : forall A:set, A <> Empty -> (forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_subgroup_of A s G = 1 /\ hl_subgroup_of A t G = 1 -> hl_SUBSET A t (hl_group_setmul A G s t) = 1) /\ forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_subgroup_of A s G = 1 /\ hl_subgroup_of A t G = 1 -> hl_SUBSET A s (hl_group_setmul A G s t) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4846 / FINITE_GROUP_SETMUL   (hash md5:9815aa6a8e01c8b8a3782908801e7592)
Theorem hlt_FINITE_GROUP_SETMUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_FINITE A (hl_group_setmul A G s t) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4851 / GROUP_SETMUL_SYM_ELEMENTWISE   (hash md5:987337683ccae0cc30208afb21a7b089)
Theorem hlt_GROUP_SETMUL_SYM_ELEMENTWISE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t u :e 2 :^: A, (forall a :e A, hl_IN A a s = 1 -> hl_group_setmul A G (hl_INSERT A a (hl_EMPTY A)) t = hl_group_setmul A G u (hl_INSERT A a (hl_EMPTY A))) -> hl_group_setmul A G s t = hl_group_setmul A G u s.
Admitted.

// HOL Light: Library/grouptheory.ml:4857 / GROUP_SETINV_SING   (hash md5:65c6a5b50c89c21c4b9b6f37a0646be2)
Theorem hlt_GROUP_SETINV_SING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_setinv A G (hl_INSERT A x (hl_EMPTY A)) = hl_INSERT A (hl_group_inv A G x) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:4861 / GROUP_SETMUL_SING   (hash md5:301069c7a9751324878fb05f1d6fac07)
Theorem hlt_GROUP_SETMUL_SING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_group_setmul A G (hl_INSERT A x (hl_EMPTY A)) (hl_INSERT A y (hl_EMPTY A)) = hl_INSERT A (hl_group_mul A G x y) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:4865 / GROUP_SETINV   (hash md5:ad22615915a599dcecf1f2cc8fb6a691)
Theorem hlt_GROUP_SETINV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g :e 2 :^: A, hl_SUBSET A g (hl_group_carrier A G) = 1 -> hl_SUBSET A (hl_group_setinv A G g) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4870 / GROUP_SETMUL   (hash md5:1e08414d6986bd1e5926e36f9ea4dd4f)
Theorem hlt_GROUP_SETMUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_SUBSET A g (hl_group_carrier A G) = 1 /\ hl_SUBSET A h (hl_group_carrier A G) = 1 -> hl_SUBSET A (hl_group_setmul A G g h) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:4876 / GROUP_SETMUL_LID   (hash md5:97482e4905f59075e8a546e0fa28fa0b)
Theorem hlt_GROUP_SETMUL_LID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g :e 2 :^: A, hl_SUBSET A g (hl_group_carrier A G) = 1 -> hl_group_setmul A G (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) g = g.
Admitted.

// HOL Light: Library/grouptheory.ml:4883 / GROUP_SETMUL_RID   (hash md5:fcc73f7e9a725b6e4c7d765b39915223)
Theorem hlt_GROUP_SETMUL_RID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g :e 2 :^: A, hl_SUBSET A g (hl_group_carrier A G) = 1 -> hl_group_setmul A G g (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = g.
Admitted.

// HOL Light: Library/grouptheory.ml:4889 / GROUP_SETMUL_ASSOC   (hash md5:b18924884fc171bb1137dfb1eed0818d)
Theorem hlt_GROUP_SETMUL_ASSOC : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h i :e 2 :^: A, hl_SUBSET A g (hl_group_carrier A G) = 1 /\ (hl_SUBSET A h (hl_group_carrier A G) = 1 /\ hl_SUBSET A i (hl_group_carrier A G) = 1) -> hl_group_setmul A G g (hl_group_setmul A G h i) = hl_group_setmul A G (hl_group_setmul A G g h) i.
Admitted.

// HOL Light: Library/grouptheory.ml:4908 / GROUP_SETMUL_SYM   (hash md5:f77081ab516569a5ea8163f79f169c07)
Theorem hlt_GROUP_SETMUL_SYM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_abelian_group A G = 1 /\ (hl_SUBSET A g (hl_group_carrier A G) = 1 /\ hl_SUBSET A h (hl_group_carrier A G) = 1) -> hl_group_setmul A G g h = hl_group_setmul A G h g.
Admitted.

// HOL Light: Library/grouptheory.ml:4914 / GROUP_SETINV_SUBGROUP   (hash md5:de3e6f60a22111dcf0531c3814513fff)
Theorem hlt_GROUP_SETINV_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_group_setinv A G h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:4921 / GROUP_SETMUL_LSUBSET   (hash md5:b88b8133aca51c69da1731ac43adb958)
Theorem hlt_GROUP_SETMUL_LSUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h s :e 2 :^: A, hl_subgroup_of A h G = 1 /\ (hl_SUBSET A s h = 1 /\ ~ s = hl_EMPTY A) -> hl_group_setmul A G s h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:4933 / GROUP_SETMUL_RSUBSET   (hash md5:e7632cf3103625e220cee28554f0e814)
Theorem hlt_GROUP_SETMUL_RSUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h s :e 2 :^: A, hl_subgroup_of A h G = 1 /\ (hl_SUBSET A s h = 1 /\ ~ s = hl_EMPTY A) -> hl_group_setmul A G h s = h.
Admitted.

// HOL Light: Library/grouptheory.ml:4939 / GROUP_SETMUL_LSUBSET_EQ   (hash md5:d13ef768e7d54b74f34317719fb53392)
Theorem hlt_GROUP_SETMUL_LSUBSET_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h s :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> (hl_group_setmul A G s h = h <-> hl_SUBSET A s h = 1 /\ ~ s = hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:4954 / GROUP_SETMUL_RSUBSET_EQ   (hash md5:4db6d3066b7ba8a1671d2b3eb0160158)
Theorem hlt_GROUP_SETMUL_RSUBSET_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h s :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> (hl_group_setmul A G h s = h <-> hl_SUBSET A s h = 1 /\ ~ s = hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:4962 / IMAGE_GROUP_CONJUGATION   (hash md5:b9f9bc79680b7b31261e3ead211e2526)
Theorem hlt_IMAGE_GROUP_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, forall s :e 2 :^: A, hl_IMAGE A A (hl_group_conjugation A G a) s = hl_group_setmul A G (hl_INSERT A a (hl_EMPTY A)) (hl_group_setmul A G s (hl_INSERT A (hl_group_inv A G a) (hl_EMPTY A))).
Admitted.

// HOL Light: Library/grouptheory.ml:4968 / IMAGE_GROUP_CONJUGATION_EQ   (hash md5:c0cc37c0546dcd6a971ba736cf4b0982)
Theorem hlt_IMAGE_GROUP_CONJUGATION_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, forall s t :e 2 :^: A, hl_IN A a (hl_group_carrier A G) = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_SUBSET A t (hl_group_carrier A G) = 1) -> (hl_IMAGE A A (hl_group_conjugation A G a) s = t <-> hl_group_setmul A G (hl_INSERT A a (hl_EMPTY A)) s = hl_group_setmul A G t (hl_INSERT A a (hl_EMPTY A))).
Admitted.

// HOL Light: Library/grouptheory.ml:4982 / GROUP_SETMUL_SUBGROUP   (hash md5:5009b60d255a05b54b40060e4b2be3e0)
Theorem hlt_GROUP_SETMUL_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_group_setmul A G h h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:4988 / GROUP_SETMUL_LCANCEL   (hash md5:649b20a4989ee35138e70ca3a4cb6e32)
Theorem hlt_GROUP_SETMUL_LCANCEL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_SUBSET A g (hl_group_carrier A G) = 1 /\ hl_SUBSET A h (hl_group_carrier A G) = 1) -> (hl_group_setmul A G (hl_INSERT A x (hl_EMPTY A)) g = hl_group_setmul A G (hl_INSERT A x (hl_EMPTY A)) h <-> g = h).
Admitted.

// HOL Light: Library/grouptheory.ml:4998 / GROUP_SETMUL_RCANCEL   (hash md5:f1677ac7a04eba656a8fe1d1fbaeef7b)
Theorem hlt_GROUP_SETMUL_RCANCEL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_SUBSET A g (hl_group_carrier A G) = 1 /\ hl_SUBSET A h (hl_group_carrier A G) = 1) -> (hl_group_setmul A G g (hl_INSERT A x (hl_EMPTY A)) = hl_group_setmul A G h (hl_INSERT A x (hl_EMPTY A)) <-> g = h).
Admitted.

// HOL Light: Library/grouptheory.ml:5006 / GROUP_SETMUL_LCANCEL_SET   (hash md5:1c5f6e8efd86dee9b5d218963c9c1dcb)
Theorem hlt_GROUP_SETMUL_LCANCEL_SET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1) -> (hl_group_setmul A G h (hl_INSERT A x (hl_EMPTY A)) = hl_group_setmul A G h (hl_INSERT A y (hl_EMPTY A)) <-> hl_IN A (hl_group_div A G x y) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5024 / GROUP_SETMUL_RCANCEL_SET   (hash md5:d505c7ce9edf0ccdf035f9a00b4a3abc)
Theorem hlt_GROUP_SETMUL_RCANCEL_SET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1) -> (hl_group_setmul A G (hl_INSERT A x (hl_EMPTY A)) h = hl_group_setmul A G (hl_INSERT A y (hl_EMPTY A)) h <-> hl_IN A (hl_group_mul A G (hl_group_inv A G x) y) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5034 / SUBGROUP_SETMUL_EQ   (hash md5:495ac701176edd34de2c3c3ecc4e5afe)
Theorem hlt_SUBGROUP_SETMUL_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> (hl_subgroup_of A (hl_group_setmul A G g h) G = 1 <-> hl_group_setmul A G g h = hl_group_setmul A G h g).
Admitted.

// HOL Light: Library/grouptheory.ml:5094 / SUBGROUP_SETMUL   (hash md5:e1dafa9952de1304f78e57d87dfe897b)
Theorem hlt_SUBGROUP_SETMUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_abelian_group A G = 1 /\ (hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1) -> hl_subgroup_of A (hl_group_setmul A G g h) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5100 / SUBGROUP_GENERATED_SETMUL   (hash md5:2e298865b9c62b9b8a41ba1d21a2bdb6)
Theorem hlt_SUBGROUP_GENERATED_SETMUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> hl_subgroup_generated A G (hl_group_setmul A G g h) = hl_subgroup_generated A G (hl_UNION A g h).
Admitted.

// HOL Light: Library/grouptheory.ml:5123 / CARRIER_SUBGROUP_GENERATED_UNION   (hash md5:a8cec8dc107c4ce45d02602081e994f9)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_UNION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ (hl_subgroup_of A h G = 1 /\ hl_group_setmul A G g h = hl_group_setmul A G h g) -> hl_group_carrier A (hl_subgroup_generated A G (hl_UNION A g h)) = hl_group_setmul A G g h.
Admitted.

// HOL Light: Library/grouptheory.ml:5136 / group_action   (hash md5:0cda23e7bb7043abd86c3b3cf1ef361a)
Theorem hlt_group_action_thm : forall A X:set, A <> Empty -> X <> Empty -> forall s :e 2 :^: X, forall G :e hl_ty_group A, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 <-> (forall g :e A, forall x :e X, hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1 -> hl_IN X (a g x) s = 1) /\ ((forall x :e X, hl_IN X x s = 1 -> a (hl_group_id A G) x = x) /\ forall g h :e A, forall x :e X, hl_IN A g (hl_group_carrier A G) = 1 /\ (hl_IN A h (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1) -> a (hl_group_mul A G g h) x = a g (a h x)).
Admitted.

// HOL Light: Library/grouptheory.ml:5143 / GROUP_ACTION_ALT   (hash md5:614269bd79abe3a713baa6efa451059a)
Theorem hlt_GROUP_ACTION_ALT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 <-> (forall g :e A, forall x :e X, hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1 -> hl_IN X (a g x) s = 1) /\ ((forall x :e X, hl_IN X x s = 1 -> a (hl_group_id A G) x = x) /\ forall g h :e A, forall x :e X, hl_IN A g (hl_group_carrier A G) = 1 /\ (hl_IN A h (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1) -> a g (a h x) = a (hl_group_mul A G g h) x).
Admitted.

// HOL Light: Library/grouptheory.ml:5152 / GROUP_ACTION_MUL   (hash md5:88d9ca9e01df8e732dc87e4abf08ea38)
Theorem hlt_GROUP_ACTION_MUL : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall g h :e A, forall x :e X, hl_group_action A X G s a = 1 /\ (hl_IN A g (hl_group_carrier A G) = 1 /\ (hl_IN A h (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1)) -> a g (a h x) = a (hl_group_mul A G g h) x.
Admitted.

// HOL Light: Library/grouptheory.ml:5161 / GROUP_ACTION_LINV   (hash md5:73804b9d3117e0bc474f6c02e96479ca)
Theorem hlt_GROUP_ACTION_LINV : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall g :e A, forall x :e X, hl_group_action A X G s a = 1 /\ (hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1) -> a (hl_group_inv A G g) (a g x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:5167 / GROUP_ACTION_RINV   (hash md5:a1e4c6a640bfff6447c9e6f2d40b2ba3)
Theorem hlt_GROUP_ACTION_RINV : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall g :e A, forall x :e X, hl_group_action A X G s a = 1 /\ (hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1) -> a g (a (hl_group_inv A G g) x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:5173 / GROUP_ACTION_BIJECTIVE   (hash md5:67cfe96d9264870f7ec849c8841ffacd)
Theorem hlt_GROUP_ACTION_BIJECTIVE : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall g :e A, hl_group_action A X G s a = 1 /\ hl_IN A g (hl_group_carrier A G) = 1 -> forall y :e X, hl_IN X y s = 1 -> hl_exists_unique X (fun x :e X => if hl_IN X x s = 1 /\ a g x = y then 1 else 0) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5179 / GROUP_ACTION_SURJECTIVE   (hash md5:e4133e5957240c9b798ed657b5d89854)
Theorem hlt_GROUP_ACTION_SURJECTIVE : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall g :e A, forall y :e X, hl_group_action A X G s a = 1 /\ (hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN X y s = 1) -> exists x :e X, a g x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:5185 / GROUP_ACTION_INJECTIVE   (hash md5:e42554b6bf808c49474bd180e6981318)
Theorem hlt_GROUP_ACTION_INJECTIVE : forall A X:set, A <> Empty -> X <> Empty -> forall g :e A, forall x y :e X, forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 /\ (hl_IN A g (hl_group_carrier A G) = 1 /\ (hl_IN X x s = 1 /\ hl_IN X y s = 1)) -> (a g x = a g y <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:5191 / GROUP_ACTION_ON_SUBSET   (hash md5:2e2f8e48dbc46009e6a923301ad4be1d)
Theorem hlt_GROUP_ACTION_ON_SUBSET : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: X, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 /\ (hl_SUBSET X t s = 1 /\ (forall g :e A, forall x :e X, hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN X x t = 1 -> hl_IN X (a g x) t = 1)) -> hl_group_action A X G t a = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5199 / GROUP_ACTION_FROM_SUBGROUP   (hash md5:9a20e2e5791236aaf498fce5d0b049b8)
Theorem hlt_GROUP_ACTION_FROM_SUBGROUP : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall h :e 2 :^: A, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 -> hl_group_action A X (hl_subgroup_generated A G h) s a = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5207 / GROUP_ACTIONS_EQ_ON_GENERATORS   (hash md5:109a384d2904c6d3796871dadfdb34fb)
Theorem hlt_GROUP_ACTIONS_EQ_ON_GENERATORS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall t :e 2 :^: A, forall s :e 2 :^: X, forall a a' :e X :^: X :^: A, hl_group_action A X G s a = 1 /\ (hl_group_action A X G s a' = 1 /\ (forall g :e A, forall x :e X, hl_IN A g (hl_group_carrier A G) = 1 /\ (hl_IN A g t = 1 /\ hl_IN X x s = 1) -> a g x = a' g x)) -> forall g :e A, forall x :e X, hl_IN A g (hl_group_carrier A (hl_subgroup_generated A G t)) = 1 /\ hl_IN X x s = 1 -> a g x = a' g x.
Admitted.

// HOL Light: Library/grouptheory.ml:5231 / GROUP_ACTION_IMAGE   (hash md5:9b66c200319904d80b525a14ece0df4e)
Theorem hlt_GROUP_ACTION_IMAGE : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: X), forall s :e 2 :^: X, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 /\ ((forall t :e 2 :^: X, hl_IN (2 :^: X) t u = 1 -> hl_SUBSET X t s = 1) /\ (forall g :e A, forall t :e 2 :^: X, hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN (2 :^: X) t u = 1 -> hl_IN (2 :^: X) (hl_IMAGE X X (a g) t) u = 1)) -> hl_group_action A (2 :^: X) G u (hl_o (X :^: X) (2 :^: X :^: (2 :^: X)) A (hl_IMAGE X X) a) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5239 / GROUP_ACTION_IMAGE_SIZED   (hash md5:4b10ee14baf17808d35546ec322e886b)
Theorem hlt_GROUP_ACTION_IMAGE_SIZED : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall k :e omega, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 -> hl_group_action A (2 :^: X) G (hl_GSPEC (2 :^: X) (fun GEN_PVAR_856 :e 2 :^: X => if exists t :e 2 :^: X, hl_SETSPEC (2 :^: X) GEN_PVAR_856 (if hl_SUBSET X t s = 1 /\ hl_HAS_SIZE X t k = 1 then 1 else 0) t = 1 then 1 else 0)) (hl_o (X :^: X) (2 :^: X :^: (2 :^: X)) A (hl_IMAGE X X) a) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5250 / group_stabilizer   (hash md5:291880b986967e55f569f9e5e795e5b0)
Theorem hlt_group_stabilizer_thm : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall a :e X :^: X :^: A, forall x :e X, hl_group_stabilizer A X G a x = hl_GSPEC A (fun GEN_PVAR_857 :e A => if exists g :e A, hl_SETSPEC A GEN_PVAR_857 (if hl_IN A g (hl_group_carrier A G) = 1 /\ a g x = x then 1 else 0) g = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:5253 / GROUP_STABILIZER_SUBSET_CARRIER   (hash md5:dace2fe24a17be8d328bb8477ae8aa63)
Theorem hlt_GROUP_STABILIZER_SUBSET_CARRIER : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group B, forall a :e A :^: A :^: B, forall x :e A, hl_SUBSET B (hl_group_stabilizer B A G a x) (hl_group_carrier B G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5257 / FINITE_GROUP_STABILIZER   (hash md5:eaa755a3c3fc2503e44e6a4688efe5b9)
Theorem hlt_FINITE_GROUP_STABILIZER : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall a :e X :^: X :^: A, forall x :e X, hl_FINITE A (hl_group_carrier A G) = 1 -> hl_FINITE A (hl_group_stabilizer A X G a x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5262 / SUBGROUP_OF_GROUP_STABILIZER   (hash md5:a5c441cee3356cbd48c42413681067a0)
Theorem hlt_SUBGROUP_OF_GROUP_STABILIZER : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 /\ hl_IN X x s = 1 -> hl_subgroup_of A (hl_group_stabilizer A X G a x) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5269 / GROUP_STABILIZER_NONEMPTY   (hash md5:d5ab039904b1c882007397608010d02c)
Theorem hlt_GROUP_STABILIZER_NONEMPTY : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall a :e X :^: X :^: A, forall s :e 2 :^: X, forall x :e X, hl_group_action A X G s a = 1 /\ hl_IN X x s = 1 -> ~ hl_group_stabilizer A X G a x = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:5276 / GROUP_STABILIZER_SUBGROUP_GENERATED   (hash md5:db24de50250bb41eb26644e882a5e6b0)
Theorem hlt_GROUP_STABILIZER_SUBGROUP_GENERATED : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e X :^: X :^: A, forall x :e X, hl_group_stabilizer A X (hl_subgroup_generated A G h) a x = hl_INTER A (hl_group_carrier A (hl_subgroup_generated A G h)) (hl_group_stabilizer A X G a x).
Admitted.

// HOL Light: Library/grouptheory.ml:5283 / GROUP_STABILIZER_ON_SUBGROUP   (hash md5:a16d5585b454cd4c13f5fa0dc415dbd9)
Theorem hlt_GROUP_STABILIZER_ON_SUBGROUP : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e X :^: X :^: A, forall x :e X, hl_subgroup_of A h G = 1 -> hl_group_stabilizer A X (hl_subgroup_generated A G h) a x = hl_INTER A h (hl_group_stabilizer A X G a x).
Admitted.

// HOL Light: Library/grouptheory.ml:5291 / GROUP_ACTION_KERNEL_POINTWISE   (hash md5:36578e83cfad340c656a248cbf8dd3e0)
Theorem hlt_GROUP_ACTION_KERNEL_POINTWISE : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, hl_GSPEC A (fun GEN_PVAR_858 :e A => if exists g :e A, hl_SETSPEC A GEN_PVAR_858 (if hl_IN A g (hl_group_carrier A G) = 1 /\ forall x :e X, hl_IN X x s = 1 -> a g x = x then 1 else 0) g = 1 then 1 else 0) = hl_COND (2 :^: A) (if s = hl_EMPTY X then 1 else 0) (hl_group_carrier A G) (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_859 :e 2 :^: A => if exists x :e X, hl_SETSPEC (2 :^: A) GEN_PVAR_859 (hl_IN X x s) (hl_group_stabilizer A X G a x) = 1 then 1 else 0))).
Admitted.

// HOL Light: Library/grouptheory.ml:5299 / GROUP_ACTION_EQ   (hash md5:b23a418036c727940b9198a202761fb5)
Theorem hlt_GROUP_ACTION_EQ : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall g h :e A, forall x :e X, hl_group_action A X G s a = 1 /\ (hl_IN A g (hl_group_carrier A G) = 1 /\ (hl_IN A h (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1)) -> (a g x = a h x <-> hl_IN A (hl_group_mul A G (hl_group_inv A G g) h) (hl_group_stabilizer A X G a x) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5315 / GROUP_ACTION_FIBRES   (hash md5:acf813cc2deeb375db6bd56ca856434f)
Theorem hlt_GROUP_ACTION_FIBRES : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall h :e A, forall x :e X, hl_group_action A X G s a = 1 /\ (hl_IN A h (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1) -> hl_GSPEC A (fun GEN_PVAR_861 :e A => if exists g :e A, hl_SETSPEC A GEN_PVAR_861 (if hl_IN A g (hl_group_carrier A G) = 1 /\ a g x = a h x then 1 else 0) g = 1 then 1 else 0) = hl_IMAGE A A (hl_group_mul A G h) (hl_group_stabilizer A X G a x).
Admitted.

// HOL Light: Library/grouptheory.ml:5330 / group_orbit   (hash md5:058a9967872c6788dad756c8f0c2e0cd)
Theorem hlt_group_orbit_thm : forall A X:set, A <> Empty -> X <> Empty -> forall s :e 2 :^: X, forall G :e hl_ty_group A, forall a :e X :^: X :^: A, forall x y :e X, hl_group_orbit A X G s a x y = 1 <-> hl_IN X x s = 1 /\ (hl_IN X y s = 1 /\ exists g :e A, hl_IN A g (hl_group_carrier A G) = 1 /\ a g x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:5334 / GROUP_ORBIT_IN_SET   (hash md5:646df3db99f2fb662fbb28a4389f5950)
Theorem hlt_GROUP_ORBIT_IN_SET : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_group_orbit A X G s a x y = 1 -> hl_IN X x s = 1 /\ hl_IN X y s = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5339 / IN_GROUP_ORBIT   (hash md5:95c5188d6aac957a3f02ace59e85b71d)
Theorem hlt_IN_GROUP_ORBIT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_IN X y (hl_group_orbit A X G s a x) = 1 <-> hl_IN X x s = 1 /\ (hl_IN X y s = 1 /\ exists g :e A, hl_IN A g (hl_group_carrier A G) = 1 /\ a g x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:5346 / GROUP_ORBIT   (hash md5:3906b4212b03442d8bd1c716b84da331)
Theorem hlt_GROUP_ORBIT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 -> hl_group_orbit A X G s a x = hl_COND (2 :^: X) (hl_IN X x s) (hl_GSPEC X (fun GEN_PVAR_862 :e X => if exists g :e A, hl_SETSPEC X GEN_PVAR_862 (hl_IN A g (hl_group_carrier A G)) (a g x) = 1 then 1 else 0)) (hl_EMPTY X).
Admitted.

// HOL Light: Library/grouptheory.ml:5356 / GROUP_ORBIT_SUBSET   (hash md5:f157202f5c827cba196e76483b9859d2)
Theorem hlt_GROUP_ORBIT_SUBSET : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_SUBSET X (hl_group_orbit A X G s a x) s = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5361 / GROUP_ORBIT_ON_SUBSET   (hash md5:9f7109a693495d959156d4f4873b2d46)
Theorem hlt_GROUP_ORBIT_ON_SUBSET : forall A X:set, A <> Empty -> X <> Empty -> forall x :e X, forall G :e hl_ty_group A, forall s t :e 2 :^: X, forall a :e X :^: X :^: A, hl_SUBSET X t s = 1 /\ hl_IN X x t = 1 -> hl_group_orbit A X G t a x = hl_INTER X t (hl_group_orbit A X G s a x).
Admitted.

// HOL Light: Library/grouptheory.ml:5369 / FINITE_GROUP_ORBIT   (hash md5:02fdedf1eec840e5e9799c1829b8dccc)
Theorem hlt_FINITE_GROUP_ORBIT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_FINITE A (hl_group_carrier A G) = 1 \/ hl_FINITE X s = 1 -> hl_FINITE X (hl_group_orbit A X G s a x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5379 / GROUP_ORBIT_REFL_EQ   (hash md5:a6cafadbd40fd5c5a5e64c370e9e90ef)
Theorem hlt_GROUP_ORBIT_REFL_EQ : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 -> (hl_group_orbit A X G s a x x = 1 <-> hl_IN X x s = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5384 / GROUP_ORBIT_REFL   (hash md5:fc41d3a5012703e75d4d4e7f79b0eacc)
Theorem hlt_GROUP_ORBIT_REFL : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 /\ hl_IN X x s = 1 -> hl_group_orbit A X G s a x x = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5390 / IN_GROUP_ORBIT_SELF   (hash md5:661a55687b0d615da399fd439585b4b8)
Theorem hlt_IN_GROUP_ORBIT_SELF : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 /\ hl_IN X x s = 1 -> hl_IN X x (hl_group_orbit A X G s a x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5396 / GROUP_ORBIT_EMPTY   (hash md5:5dcd83e6e77387b29672320f75477955)
Theorem hlt_GROUP_ORBIT_EMPTY : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, ~ hl_IN X x s = 1 -> hl_group_orbit A X G s a x = hl_EMPTY X.
Admitted.

// HOL Light: Library/grouptheory.ml:5400 / GROUP_ORBIT_EQ_EMPTY   (hash md5:c200432fc3f8d89b8531358e814a3ba5)
Theorem hlt_GROUP_ORBIT_EQ_EMPTY : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 -> (hl_group_orbit A X G s a x = hl_EMPTY X <-> ~ hl_IN X x s = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5407 / GROUP_ORBIT_SYM_EQ   (hash md5:0f4338688b7ea0c6ca1c161367b96e71)
Theorem hlt_GROUP_ORBIT_SYM_EQ : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_group_action A X G s a = 1 -> (hl_group_orbit A X G s a x y = 1 <-> hl_group_orbit A X G s a y x = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5414 / GROUP_ORBIT_SYM   (hash md5:908a7704ea09e2f4285d1e91969d9cb1)
Theorem hlt_GROUP_ORBIT_SYM : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_group_action A X G s a = 1 /\ hl_group_orbit A X G s a x y = 1 -> hl_group_orbit A X G s a y x = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5420 / GROUP_ORBIT_TRANS   (hash md5:b322b53bf9ba022cef33e19d9a9f3bb2)
Theorem hlt_GROUP_ORBIT_TRANS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y z :e X, hl_group_action A X G s a = 1 /\ (hl_group_orbit A X G s a x y = 1 /\ hl_group_orbit A X G s a y z = 1) -> hl_group_orbit A X G s a x z = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5427 / GROUP_ORBIT_EQ   (hash md5:475f3ce4449113746e285f9c2fc18a42)
Theorem hlt_GROUP_ORBIT_EQ : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_group_action A X G s a = 1 /\ (hl_IN X x s = 1 /\ hl_IN X y s = 1) -> (hl_group_orbit A X G s a x = hl_group_orbit A X G s a y <-> hl_group_orbit A X G s a x y = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5435 / CLOSED_GROUP_ORBIT   (hash md5:9c608e02b907834ecaa7958a83f9cbbf)
Theorem hlt_CLOSED_GROUP_ORBIT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, forall g :e A, hl_group_action A X G s a = 1 /\ hl_IN A g (hl_group_carrier A G) = 1 -> hl_SUBSET X (hl_IMAGE X X (a g) (hl_group_orbit A X G s a x)) (hl_group_orbit A X G s a x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5443 / GROUP_ORBIT_EQ_SING   (hash md5:333ba25c2db6366b18e80be94bd9509b)
Theorem hlt_GROUP_ORBIT_EQ_SING : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_group_action A X G s a = 1 -> (hl_group_orbit A X G s a y = hl_INSERT X x (hl_EMPTY X) <-> hl_IN X x s = 1 /\ (y = x /\ forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> a g x = x)).
Admitted.

// HOL Light: Library/grouptheory.ml:5454 / GROUP_ORBIT_EQ_SING_SELF   (hash md5:0606b40dbb3c7872b2e40cc4a9d31c20)
Theorem hlt_GROUP_ORBIT_EQ_SING_SELF : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 -> (hl_group_orbit A X G s a x = hl_INSERT X x (hl_EMPTY X) <-> hl_IN X x s = 1 /\ forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> a g x = x).
Admitted.

// HOL Light: Library/grouptheory.ml:5461 / GROUP_ORBIT_HAS_SIZE_1   (hash md5:8cf8ce4a2aebccaed34cb1b5cc215d6a)
Theorem hlt_GROUP_ORBIT_HAS_SIZE_1 : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 -> (hl_HAS_SIZE X (hl_group_orbit A X G s a x) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> hl_IN X x s = 1 /\ forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> a g x = x).
Admitted.

// HOL Light: Library/grouptheory.ml:5469 / GROUP_ACTION_INVARIANT_SUBSET   (hash md5:73ee831410d0dbe1fc26ddc241a0f027)
Theorem hlt_GROUP_ACTION_INVARIANT_SUBSET : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall t :e 2 :^: X, hl_group_action A X G s a = 1 /\ hl_SUBSET X t s = 1 -> ((forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> hl_SUBSET X (hl_IMAGE X X (a g) t) t = 1) <-> forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> hl_IMAGE X X (a g) t = t).
Admitted.

// HOL Light: Library/grouptheory.ml:5484 / GROUP_ACTION_CLOSED   (hash md5:c5119761d55036aa41917d28f30234ee)
Theorem hlt_GROUP_ACTION_CLOSED : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall g :e A, hl_group_action A X G s a = 1 /\ hl_IN A g (hl_group_carrier A G) = 1 -> hl_SUBSET X (hl_IMAGE X X (a g) s) s = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5490 / GROUP_ACTION_INVARIANT   (hash md5:876a4f75c1491907c0cec1dedf36f95b)
Theorem hlt_GROUP_ACTION_INVARIANT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall g :e A, hl_group_action A X G s a = 1 /\ hl_IN A g (hl_group_carrier A G) = 1 -> hl_IMAGE X X (a g) s = s.
Admitted.

// HOL Light: Library/grouptheory.ml:5496 / INVARIANT_GROUP_ORBIT   (hash md5:cd371df81fe2b56469fc862287a52078)
Theorem hlt_INVARIANT_GROUP_ORBIT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, forall g :e A, hl_group_action A X G s a = 1 /\ hl_IN A g (hl_group_carrier A G) = 1 -> hl_IMAGE X X (a g) (hl_group_orbit A X G s a x) = hl_group_orbit A X G s a x.
Admitted.

// HOL Light: Library/grouptheory.ml:5503 / SUBSET_GROUP_ORBIT_CLOSED   (hash md5:48cfa9ba5eb678b09fda87da77399b9c)
Theorem hlt_SUBSET_GROUP_ORBIT_CLOSED : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, forall t :e 2 :^: X, hl_group_action A X G s a = 1 /\ (hl_SUBSET X t s = 1 /\ (forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> hl_SUBSET X (hl_IMAGE X X (a g) t) t = 1)) -> (hl_SUBSET X (hl_group_orbit A X G s a x) t = 1 <-> hl_IN X x s = 1 -> ~ hl_DISJOINT X (hl_group_orbit A X G s a x) t = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5524 / SUBSET_GROUP_ORBIT_INVARIANT   (hash md5:90f99cf66045f4179c0b56610365a94e)
Theorem hlt_SUBSET_GROUP_ORBIT_INVARIANT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, forall t :e 2 :^: X, hl_group_action A X G s a = 1 /\ (hl_SUBSET X t s = 1 /\ (forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> hl_IMAGE X X (a g) t = t)) -> (hl_SUBSET X (hl_group_orbit A X G s a x) t = 1 <-> hl_IN X x s = 1 -> ~ hl_DISJOINT X (hl_group_orbit A X G s a x) t = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5533 / GROUP_ORBITS_EQ   (hash md5:b26b00c016eaaa095e6a2d757afcb5d9)
Theorem hlt_GROUP_ORBITS_EQ : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_group_action A X G s a = 1 /\ (hl_IN X x s = 1 /\ hl_IN X y s = 1) -> (hl_group_orbit A X G s a x = hl_group_orbit A X G s a y <-> ~ hl_DISJOINT X (hl_group_orbit A X G s a x) (hl_group_orbit A X G s a y) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5541 / DISJOINT_GROUP_ORBITS   (hash md5:351786553fd9b046fd6c730872d6cafd)
Theorem hlt_DISJOINT_GROUP_ORBITS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_group_action A X G s a = 1 /\ (hl_IN X x s = 1 /\ hl_IN X y s = 1) -> (hl_DISJOINT X (hl_group_orbit A X G s a x) (hl_group_orbit A X G s a y) = 1 <-> ~ hl_group_orbit A X G s a x = hl_group_orbit A X G s a y).
Admitted.

// HOL Light: Library/grouptheory.ml:5548 / PAIRWISE_DISJOINT_GROUP_ORBITS   (hash md5:605e577880d30fa458e33e5428c288eb)
Theorem hlt_PAIRWISE_DISJOINT_GROUP_ORBITS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 -> hl_pairwise (2 :^: X) (hl_DISJOINT X) (hl_GSPEC (2 :^: X) (fun GEN_PVAR_863 :e 2 :^: X => if exists x :e X, hl_SETSPEC (2 :^: X) GEN_PVAR_863 (hl_IN X x s) (hl_group_orbit A X G s a x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5555 / UNIONS_GROUP_ORBITS_CLOSED   (hash md5:9eb7a8f5f6fb98119db9157a9bf98b0e)
Theorem hlt_UNIONS_GROUP_ORBITS_CLOSED : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall t :e 2 :^: X, hl_group_action A X G s a = 1 /\ (hl_SUBSET X t s = 1 /\ (forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> hl_SUBSET X (hl_IMAGE X X (a g) t) t = 1)) -> hl_UNIONS X (hl_GSPEC (2 :^: X) (fun GEN_PVAR_865 :e 2 :^: X => if exists x :e X, hl_SETSPEC (2 :^: X) GEN_PVAR_865 (hl_IN X x t) (hl_group_orbit A X G s a x) = 1 then 1 else 0)) = t.
Admitted.

// HOL Light: Library/grouptheory.ml:5568 / UNIONS_GROUP_ORBITS_INVARIANT   (hash md5:5ca744e21c0ad102bfdb8c893ac33c33)
Theorem hlt_UNIONS_GROUP_ORBITS_INVARIANT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall t :e 2 :^: X, hl_group_action A X G s a = 1 /\ (hl_SUBSET X t s = 1 /\ (forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> hl_IMAGE X X (a g) t = t)) -> hl_UNIONS X (hl_GSPEC (2 :^: X) (fun GEN_PVAR_866 :e 2 :^: X => if exists x :e X, hl_SETSPEC (2 :^: X) GEN_PVAR_866 (hl_IN X x t) (hl_group_orbit A X G s a x) = 1 then 1 else 0)) = t.
Admitted.

// HOL Light: Library/grouptheory.ml:5576 / UNIONS_GROUP_ORBITS   (hash md5:7b17f10d891e8ecc8c8d12beafbafe08)
Theorem hlt_UNIONS_GROUP_ORBITS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 -> hl_UNIONS X (hl_GSPEC (2 :^: X) (fun GEN_PVAR_867 :e 2 :^: X => if exists x :e X, hl_SETSPEC (2 :^: X) GEN_PVAR_867 (hl_IN X x s) (hl_group_orbit A X G s a x) = 1 then 1 else 0)) = s.
Admitted.

// HOL Light: Library/grouptheory.ml:5583 / NSUM_CARD_GROUP_ORBITS   (hash md5:3d961be62c7d243461baee831bd85fd0)
Theorem hlt_NSUM_CARD_GROUP_ORBITS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 /\ hl_FINITE X s = 1 -> hl_nsum (2 :^: X) (hl_GSPEC (2 :^: X) (fun GEN_PVAR_868 :e 2 :^: X => if exists x :e X, hl_SETSPEC (2 :^: X) GEN_PVAR_868 (hl_IN X x s) (hl_group_orbit A X G s a x) = 1 then 1 else 0)) (hl_CARD X) = hl_CARD X s.
Admitted.

// HOL Light: Library/grouptheory.ml:5595 / ORBIT_STABILIZER_MUL_GEN   (hash md5:dbbceaf1323430fb89c2fc1e3769a888)
Theorem hlt_ORBIT_STABILIZER_MUL_GEN : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 /\ hl_IN X x s = 1 -> hl_sym_3d5f63 (X :*: A) A (hl_sym_2a5f63 X A (hl_group_orbit A X G s a x) (hl_group_stabilizer A X G a x)) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5608 / ORBIT_STABILIZER_MUL   (hash md5:ec149b5a955937411d0ea6413b565197)
Theorem hlt_ORBIT_STABILIZER_MUL : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_group_action A X G s a = 1 /\ hl_IN X x s = 1) -> hl_mul (hl_CARD X (hl_group_orbit A X G s a x)) (hl_CARD A (hl_group_stabilizer A X G a x)) = hl_CARD A (hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:5618 / CARD_GROUP_ORBIT_DIVIDES   (hash md5:8f8bec8ed6084c96503b12c2b75033ab)
Theorem hlt_CARD_GROUP_ORBIT_DIVIDES : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_group_action A X G s a = 1 /\ hl_IN X x s = 1) -> hl_num_divides (hl_CARD X (hl_group_orbit A X G s a x)) (hl_CARD A (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5626 / CARD_GROUP_STABILIZER_DIVIDES   (hash md5:f2cd67c12ca937858300ec4493509bb3)
Theorem hlt_CARD_GROUP_STABILIZER_DIVIDES : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_group_action A X G s a = 1 /\ hl_IN X x s = 1) -> hl_num_divides (hl_CARD A (hl_group_stabilizer A X G a x)) (hl_CARD A (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5634 / GROUP_STABILIZER_OF_ACTION   (hash md5:0f66b0b0cb631c12b8c82adfe8b376aa)
Theorem hlt_GROUP_STABILIZER_OF_ACTION : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall g :e A, forall x :e X, hl_group_action A X G s a = 1 /\ (hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1) -> hl_group_stabilizer A X G a (a g x) = hl_IMAGE A A (hl_group_conjugation A G g) (hl_group_stabilizer A X G a x).
Admitted.

// HOL Light: Library/grouptheory.ml:5656 / GROUP_ACTION_SUBGROUP_TRANSLATION   (hash md5:f65b7e33a770f7f943bcd7d247d94de6)
Theorem hlt_GROUP_ACTION_SUBGROUP_TRANSLATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_group_action A A (hl_subgroup_generated A G h) (hl_group_carrier A G) (hl_group_mul A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5665 / GROUP_STABILIZER_SUBGROUP_TRANSLATION   (hash md5:36d257bf5cceece23735f270807846a2)
Theorem hlt_GROUP_STABILIZER_SUBGROUP_TRANSLATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e A, hl_subgroup_of A h G = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_stabilizer A A (hl_subgroup_generated A G h) (hl_group_mul A G) a = hl_INSERT A (hl_group_id A G) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:5678 / GROUP_ACTION_GROUP_TRANSLATION   (hash md5:d901026be00796e06a7757f6b6dc7955)
Theorem hlt_GROUP_ACTION_GROUP_TRANSLATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_action A A G (hl_group_carrier A G) (hl_group_mul A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5683 / GROUP_STABILIZER_GROUP_TRANSLATION   (hash md5:3536d35ef7123721f7a39f15f594adb6)
Theorem hlt_GROUP_STABILIZER_GROUP_TRANSLATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_stabilizer A A G (hl_group_mul A G) a = hl_INSERT A (hl_group_id A G) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:5692 / GROUP_ACTION_SUBSET_TRANSLATION   (hash md5:08d271f64473201be8fa500ad7f46720)
Theorem hlt_GROUP_ACTION_SUBSET_TRANSLATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: A), (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_SUBSET A s (hl_group_carrier A G) = 1) /\ (forall a :e A, forall s :e 2 :^: A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN (2 :^: A) s u = 1 -> hl_IN (2 :^: A) (hl_IMAGE A A (hl_group_mul A G a) s) u = 1) -> hl_group_action A (2 :^: A) G u (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_mul A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5700 / GROUP_ACTION_CONJUGATION   (hash md5:ab6ce09b8c4719c67efbf021406f8cad)
Theorem hlt_GROUP_ACTION_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_action A A G (hl_group_carrier A G) (hl_group_conjugation A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5706 / CARD_GROUP_SETMUL_GEN   (hash md5:8eaaac836df4d8779a45779726bf3b85)
Theorem hlt_CARD_GROUP_SETMUL_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> hl_sym_3d5f63 (A :*: A) (A :*: A) (hl_sym_2a5f63 A A (hl_group_setmul A G g h) (hl_INTER A g h)) (hl_sym_2a5f63 A A g h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5766 / CARD_GROUP_SETMUL_MUL   (hash md5:af165f82450a832cb418fa2b2950472c)
Theorem hlt_CARD_GROUP_SETMUL_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_FINITE A g = 1 /\ (hl_FINITE A h = 1 /\ (hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1)) -> hl_mul (hl_CARD A (hl_group_setmul A G g h)) (hl_CARD A (hl_INTER A g h)) = hl_mul (hl_CARD A g) (hl_CARD A h).
Admitted.

// HOL Light: Library/grouptheory.ml:5776 / CARD_GROUP_SETMUL   (hash md5:56c636455e1a69334505d0229f0c64db)
Theorem hlt_CARD_GROUP_SETMUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_FINITE A g = 1 /\ (hl_FINITE A h = 1 /\ (hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1)) -> hl_CARD A (hl_group_setmul A G g h) = hl_DIV (hl_mul (hl_CARD A g) (hl_CARD A h)) (hl_CARD A (hl_INTER A g h)).
Admitted.

// HOL Light: Library/grouptheory.ml:5787 / CARD_GROUP_SETMUL_DIVIDES   (hash md5:63d7ebed973ca8ec84db60833867c3ea)
Theorem hlt_CARD_GROUP_SETMUL_DIVIDES : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_FINITE A g = 1 /\ (hl_FINITE A h = 1 /\ (hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1)) -> hl_num_divides (hl_CARD A (hl_group_setmul A G g h)) (hl_mul (hl_CARD A g) (hl_CARD A h)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5794 / GROUP_ORBIT_COMMON_DIVISOR   (hash md5:633e24ba37dc3172e9ffa98bffe6fdda)
Theorem hlt_GROUP_ORBIT_COMMON_DIVISOR : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall n :e omega, hl_group_action A X G s a = 1 /\ (hl_FINITE X s = 1 /\ (forall x :e X, hl_IN X x s = 1 -> hl_num_divides n (hl_CARD X (hl_group_orbit A X G s a x)) = 1)) -> hl_num_divides n (hl_CARD X s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5809 / GROUP_ORBIT_COMMON_INDEX   (hash md5:293b784192fd18e057f12a2981a28e08)
Theorem hlt_GROUP_ORBIT_COMMON_INDEX : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall p k :e omega, hl_group_action A X G s a = 1 /\ (hl_FINITE X s = 1 /\ ((s = hl_EMPTY X -> k = hl_NUMERAL hl_zero) /\ (forall x :e X, hl_IN X x s = 1 -> hl_le k (hl_index p (hl_CARD X (hl_group_orbit A X G s a x))) = 1))) -> hl_le k (hl_index p (hl_CARD X s)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5825 / right_coset   (hash md5:7214122b86d22c9ee73ce0f1dedeef07)
Theorem hlt_right_coset_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_right_coset A G h x = hl_group_setmul A G h (hl_INSERT A x (hl_EMPTY A)).
Admitted.

// HOL Light: Library/grouptheory.ml:5828 / left_coset   (hash md5:1303ad4e4e4826f96482dc41f4ad094c)
Theorem hlt_left_coset_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall h :e 2 :^: A, hl_left_coset A G x h = hl_group_setmul A G (hl_INSERT A x (hl_EMPTY A)) h.
Admitted.

// HOL Light: Library/grouptheory.ml:5831 / LEFT_COSET_AS_IMAGE   (hash md5:547658179f7a9bf44ff361583da4e46a)
Theorem hlt_LEFT_COSET_AS_IMAGE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall h :e 2 :^: A, hl_left_coset A G x h = hl_IMAGE A A (hl_group_mul A G x) h.
Admitted.

// HOL Light: Library/grouptheory.ml:5835 / RIGHT_COSET   (hash md5:0088550f765c025117d75b04f0b5c7d3)
Theorem hlt_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_SUBSET A h (hl_group_carrier A G) = 1 -> hl_SUBSET A (hl_right_coset A G h x) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5841 / LEFT_COSET   (hash md5:968460dc0711e9373e11299c9acf389f)
Theorem hlt_LEFT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_SUBSET A h (hl_group_carrier A G) = 1 -> hl_SUBSET A (hl_left_coset A G x h) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:5847 / IN_RIGHT_COSET   (hash md5:29a7d14fe0619543b50d6d33e4a1115f)
Theorem hlt_IN_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x a :e A, hl_SUBSET A h (hl_group_carrier A G) = 1 /\ (hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1) -> (hl_IN A x (hl_right_coset A G h a) = 1 <-> hl_IN A (hl_group_mul A G x (hl_group_inv A G a)) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5862 / IN_LEFT_COSET   (hash md5:e3df7b388b8c3aeefa827cbe31196b62)
Theorem hlt_IN_LEFT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x a :e A, hl_SUBSET A h (hl_group_carrier A G) = 1 /\ (hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1) -> (hl_IN A x (hl_left_coset A G a h) = 1 <-> hl_IN A (hl_group_mul A G (hl_group_inv A G a) x) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5877 / IN_RIGHT_COSET_INV   (hash md5:fcf53254470ce46f0097ff0c97fcb703)
Theorem hlt_IN_RIGHT_COSET_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_SUBSET A h (hl_group_carrier A G) = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> (hl_IN A x (hl_right_coset A G h (hl_group_inv A G y)) = 1 <-> hl_IN A (hl_group_mul A G x y) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5885 / IN_LEFT_COSET_INV   (hash md5:17bd4a29455c734545422adc7d824399)
Theorem hlt_IN_LEFT_COSET_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_SUBSET A h (hl_group_carrier A G) = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> (hl_IN A x (hl_left_coset A G (hl_group_inv A G y) h) = 1 <-> hl_IN A (hl_group_mul A G y x) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:5893 / GROUP_SETINV_LEFT_COSET_GEN   (hash md5:06969a95fa822b35fa72180a3aa701a4)
Theorem hlt_GROUP_SETINV_LEFT_COSET_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e A, hl_subgroup_of A h G = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_setinv A G (hl_left_coset A G a h) = hl_right_coset A G h (hl_group_inv A G a).
Admitted.

// HOL Light: Library/grouptheory.ml:5893 / GROUP_SETINV_RIGHT_COSET_GEN   (hash md5:09a809bc3697bc9575ea102c62de409c)
Theorem hlt_GROUP_SETINV_RIGHT_COSET_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e A, hl_subgroup_of A h G = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_setinv A G (hl_right_coset A G h a) = hl_left_coset A G (hl_group_inv A G a) h.
Admitted.

// HOL Light: Library/grouptheory.ml:5922 / RIGHT_COSET_OPPOSITE_GROUP   (hash md5:e08fcd37d4f7d9796f5d493bb2a79fee)
Theorem hlt_RIGHT_COSET_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_right_coset A G h x = hl_left_coset A (hl_opposite_group A G) x h.
Admitted.

// HOL Light: Library/grouptheory.ml:5926 / LEFT_COSET_OPPOSITE_GROUP   (hash md5:c05c074c5c9071716d19987c583eb1da)
Theorem hlt_LEFT_COSET_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_left_coset A G x h = hl_right_coset A (hl_opposite_group A G) h x.
Admitted.

// HOL Light: Library/grouptheory.ml:5930 / GROUP_CONJUGATION_RIGHT_COSET   (hash md5:a17446f6f118c09c68d6498b70f3941b)
Theorem hlt_GROUP_CONJUGATION_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_SUBSET A h (hl_group_carrier A G) = 1 -> hl_IMAGE A A (hl_group_conjugation A G x) (hl_right_coset A G h x) = hl_left_coset A G x h.
Admitted.

// HOL Light: Library/grouptheory.ml:5938 / RIGHT_COSET_GROUP_CONJUGATION   (hash md5:e2794d9aa5762dc32daa32ed671c7396)
Theorem hlt_RIGHT_COSET_GROUP_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_SUBSET A h (hl_group_carrier A G) = 1 -> hl_right_coset A G (hl_IMAGE A A (hl_group_conjugation A G x) h) x = hl_left_coset A G x h.
Admitted.

// HOL Light: Library/grouptheory.ml:5947 / LEFT_COSET_LEFT_COSET   (hash md5:353d60b86e4c7c8030c62279682db98f)
Theorem hlt_LEFT_COSET_LEFT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall h :e 2 :^: A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_SUBSET A h (hl_group_carrier A G) = 1) -> hl_left_coset A G x (hl_left_coset A G y h) = hl_left_coset A G (hl_group_mul A G x y) h.
Admitted.

// HOL Light: Library/grouptheory.ml:5959 / RIGHT_COSET_RIGHT_COSET   (hash md5:af6b0aa44b831fad733f42680423cbcb)
Theorem hlt_RIGHT_COSET_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall h :e 2 :^: A, hl_SUBSET A h (hl_group_carrier A G) = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_right_coset A G (hl_right_coset A G h x) y = hl_right_coset A G h (hl_group_mul A G x y).
Admitted.

// HOL Light: Library/grouptheory.ml:5969 / RIGHT_COSET_ID   (hash md5:0a3b9df7facbc15561de3e81ec870697)
Theorem hlt_RIGHT_COSET_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_SUBSET A h (hl_group_carrier A G) = 1 -> hl_right_coset A G h (hl_group_id A G) = h.
Admitted.

// HOL Light: Library/grouptheory.ml:5978 / LEFT_COSET_ID   (hash md5:6f37bd68257f29bd69a5c111555111ea)
Theorem hlt_LEFT_COSET_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_SUBSET A h (hl_group_carrier A G) = 1 -> hl_left_coset A G (hl_group_id A G) h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:5983 / LEFT_COSET_TRIVIAL   (hash md5:d441b1ae30ccd43f6470d91876ebf1b9)
Theorem hlt_LEFT_COSET_TRIVIAL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_left_coset A G x (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = hl_INSERT A x (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:5987 / RIGHT_COSET_TRIVIAL   (hash md5:6cba916f618267772e7bc8eb92f1a016)
Theorem hlt_RIGHT_COSET_TRIVIAL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_right_coset A G (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) x = hl_INSERT A x (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:5991 / LEFT_COSET_CARRIER   (hash md5:fe56f1f5cf09b4a683a7e3e61cc9eb35)
Theorem hlt_LEFT_COSET_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_left_coset A G x (hl_group_carrier A G) = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:5997 / RIGHT_COSET_CARRIER   (hash md5:7a8b5aeac0a640004870563dbd9d7511)
Theorem hlt_RIGHT_COSET_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_right_coset A G (hl_group_carrier A G) x = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6003 / RIGHT_COSET_EQ   (hash md5:701ae9951ac79b8f8319e6bc8b6c2988)
Theorem hlt_RIGHT_COSET_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> (hl_right_coset A G h x = hl_right_coset A G h y <-> hl_IN A (hl_group_div A G x y) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6009 / LEFT_COSET_EQ   (hash md5:aaf1ed9a2e6902b84640dff89e3951d7)
Theorem hlt_LEFT_COSET_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> (hl_left_coset A G x h = hl_left_coset A G y h <-> hl_IN A (hl_group_mul A G (hl_group_inv A G x) y) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6016 / RIGHT_COSET_EQ_SUBGROUP   (hash md5:fc012c86b2c7f1e62608c1dce0138998)
Theorem hlt_RIGHT_COSET_EQ_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_right_coset A G h x = h <-> hl_IN A x h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6023 / LEFT_COSET_EQ_SUBGROUP   (hash md5:0b0f60b6d93ab967c7652709413e744e)
Theorem hlt_LEFT_COSET_EQ_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_left_coset A G x h = h <-> hl_IN A x h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6030 / RIGHT_COSET_EQ_EMPTY   (hash md5:ba16f698692cf789e90b1aedff11eafd)
Theorem hlt_RIGHT_COSET_EQ_EMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_right_coset A G h x = hl_EMPTY A <-> h = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:6034 / LEFT_COSET_EQ_EMPTY   (hash md5:cce83c0f19d9f3c45814d6cc71ca1d3b)
Theorem hlt_LEFT_COSET_EQ_EMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_left_coset A G x h = hl_EMPTY A <-> h = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:6038 / RIGHT_COSET_NONEMPTY   (hash md5:7ef3ebf6d9cbd5ddefca2c20c069c930)
Theorem hlt_RIGHT_COSET_NONEMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 -> ~ hl_right_coset A G h x = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:6042 / LEFT_COSET_NONEMPTY   (hash md5:c1113565ca564e0643881f5db74168cc)
Theorem hlt_LEFT_COSET_NONEMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 -> ~ hl_left_coset A G x h = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:6046 / IN_RIGHT_COSET_SELF   (hash md5:39048a64c6c3b31461c244d163506914)
Theorem hlt_IN_RIGHT_COSET_SELF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_IN A x (hl_right_coset A G h x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6052 / IN_LEFT_COSET_SELF   (hash md5:91bed8db978906982c02c18442b14c92)
Theorem hlt_IN_LEFT_COSET_SELF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_IN A x (hl_left_coset A G x h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6058 / UNIONS_RIGHT_COSETS   (hash md5:21c77c8d0ddf5f0b1d5ceb01df06b7e4)
Theorem hlt_UNIONS_RIGHT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_876 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_876 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G h x) = 1 then 1 else 0)) = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6069 / UNIONS_LEFT_COSETS   (hash md5:68904c0ef9ded0582090bab91b5e90b9)
Theorem hlt_UNIONS_LEFT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_877 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_877 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0)) = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6080 / RIGHT_COSETS_EQ   (hash md5:3ab12b3bfe83623617f0f0863f10a070)
Theorem hlt_RIGHT_COSETS_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> (hl_right_coset A G h x = hl_right_coset A G h y <-> ~ hl_DISJOINT A (hl_right_coset A G h x) (hl_right_coset A G h y) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6099 / LEFT_COSETS_EQ   (hash md5:90da5f66709f96d16e9e7ab60d82dfec)
Theorem hlt_LEFT_COSETS_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> (hl_left_coset A G x h = hl_left_coset A G y h <-> ~ hl_DISJOINT A (hl_left_coset A G x h) (hl_left_coset A G y h) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6107 / DISJOINT_RIGHT_COSETS   (hash md5:02f15c3b4e95329ce377a487c55cb376)
Theorem hlt_DISJOINT_RIGHT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> (hl_DISJOINT A (hl_right_coset A G h x) (hl_right_coset A G h y) = 1 <-> ~ hl_right_coset A G h x = hl_right_coset A G h y).
Admitted.

// HOL Light: Library/grouptheory.ml:6114 / DISJOINT_LEFT_COSETS   (hash md5:65dc376e0e9ef08fc96dc97d9f2827c4)
Theorem hlt_DISJOINT_LEFT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> (hl_DISJOINT A (hl_left_coset A G x h) (hl_left_coset A G y h) = 1 <-> ~ hl_left_coset A G x h = hl_left_coset A G y h).
Admitted.

// HOL Light: Library/grouptheory.ml:6121 / PAIRWISE_DISJOINT_RIGHT_COSETS   (hash md5:0acdd0a17d97609543378774040a9908)
Theorem hlt_PAIRWISE_DISJOINT_RIGHT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_pairwise (2 :^: A) (hl_DISJOINT A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_878 :e 2 :^: A => if exists a :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_878 (hl_IN A a (hl_group_carrier A G)) (hl_right_coset A G h a) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6128 / PAIRWISE_DISJOINT_LEFT_COSETS   (hash md5:a6404f4e7fce2a58934d26a162898a37)
Theorem hlt_PAIRWISE_DISJOINT_LEFT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_pairwise (2 :^: A) (hl_DISJOINT A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_879 :e 2 :^: A => if exists a :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_879 (hl_IN A a (hl_group_carrier A G)) (hl_left_coset A G a h) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6135 / IMAGE_RIGHT_COSET_SWITCH   (hash md5:81261f00e9d44fc8c2a19649be2f346c)
Theorem hlt_IMAGE_RIGHT_COSET_SWITCH : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_IMAGE A A (fun a :e A => hl_group_mul A G a (hl_group_mul A G (hl_group_inv A G x) y)) (hl_right_coset A G h x) = hl_right_coset A G h y.
Admitted.

// HOL Light: Library/grouptheory.ml:6150 / IMAGE_LEFT_COSET_SWITCH   (hash md5:f779df82e07b61f7445980ba27962642)
Theorem hlt_IMAGE_LEFT_COSET_SWITCH : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_IMAGE A A (fun a :e A => hl_group_mul A G (hl_group_div A G y x) a) (hl_left_coset A G x h) = hl_left_coset A G y h.
Admitted.

// HOL Light: Library/grouptheory.ml:6165 / CARD_EQ_LEFT_RIGHT_COSETS   (hash md5:629af28f837894425cefa3458be33315)
Theorem hlt_CARD_EQ_LEFT_RIGHT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_sym_3d5f63 (2 :^: A) (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_880 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_880 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_881 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_881 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G h x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6178 / HAS_SIZE_LEFT_RIGHT_COSETS   (hash md5:55020199f44be25d5c4ee52e5d249f7c)
Theorem hlt_HAS_SIZE_LEFT_RIGHT_COSETS : forall A:set, A <> Empty -> forall n :e omega, forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> (hl_HAS_SIZE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_882 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_882 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0)) n = 1 <-> hl_HAS_SIZE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_883 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_883 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G h x) = 1 then 1 else 0)) n = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6186 / CARD_EQ_RIGHT_COSETS   (hash md5:eeca1287b9d93076715718d8f3ebdc7e)
Theorem hlt_CARD_EQ_RIGHT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_sym_3d5f63 A A (hl_right_coset A G h x) (hl_right_coset A G h y) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6204 / GROUP_ID_IN_LEFT_COSET_GEN   (hash md5:f4ab7acf00cbf8a1c11c373ef56a584b)
Theorem hlt_GROUP_ID_IN_LEFT_COSET_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_SUBSET A h (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_IN A (hl_group_id A G) (hl_left_coset A G x h) = 1 <-> hl_IN A (hl_group_inv A G x) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6211 / GROUP_ID_IN_LEFT_COSET   (hash md5:f77caa078292b20f3f8c800ddd7cda1f)
Theorem hlt_GROUP_ID_IN_LEFT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_IN A (hl_group_id A G) (hl_left_coset A G x h) = 1 <-> hl_IN A x h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6218 / SUBGROUP_OF_LEFT_COSET   (hash md5:5cad00445b17b5adf3919de5063c7497)
Theorem hlt_SUBGROUP_OF_LEFT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_subgroup_of A (hl_left_coset A G x h) G = 1 <-> hl_left_coset A G x h = h).
Admitted.

// HOL Light: Library/grouptheory.ml:6224 / GROUP_ID_IN_RIGHT_COSET_GEN   (hash md5:826dc0a9ee1c6d924feeb2ca01bd8ec4)
Theorem hlt_GROUP_ID_IN_RIGHT_COSET_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_SUBSET A h (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_IN A (hl_group_id A G) (hl_right_coset A G h x) = 1 <-> hl_IN A (hl_group_inv A G x) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6231 / GROUP_ID_IN_RIGHT_COSET   (hash md5:274a09b1962f8c368b4e719f9ef9e485)
Theorem hlt_GROUP_ID_IN_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_IN A (hl_group_id A G) (hl_right_coset A G h x) = 1 <-> hl_IN A x h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6238 / SUBGROUP_OF_RIGHT_COSET   (hash md5:9123bbd16e26febaa44808703abb5c91)
Theorem hlt_SUBGROUP_OF_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_subgroup_of A h G = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_subgroup_of A (hl_right_coset A G h x) G = 1 <-> hl_right_coset A G h x = h).
Admitted.

// HOL Light: Library/grouptheory.ml:6244 / CARD_EQ_LEFT_COSETS   (hash md5:0b938736da7050281fc2059169aa53c1)
Theorem hlt_CARD_EQ_LEFT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_sym_3d5f63 A A (hl_left_coset A G x h) (hl_left_coset A G y h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6251 / CARD_EQ_RIGHT_COSET_SUBGROUP   (hash md5:c1e028218909a904c45ea79e7b62cf28)
Theorem hlt_CARD_EQ_RIGHT_COSET_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_sym_3d5f63 A A (hl_right_coset A G h x) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6258 / CARD_EQ_LEFT_COSET_SUBGROUP   (hash md5:9add896060ec26614c845e5cb050bb7a)
Theorem hlt_CARD_EQ_LEFT_COSET_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x y :e A, hl_subgroup_of A h G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_sym_3d5f63 A A (hl_left_coset A G x h) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6265 / GROUP_ORBIT_SUBGROUP_TRANSLATION   (hash md5:4909bb4b7db21fb53c30b6b0684b5db0)
Theorem hlt_GROUP_ORBIT_SUBGROUP_TRANSLATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e A, hl_subgroup_of A h G = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_orbit A A (hl_subgroup_generated A G h) (hl_group_carrier A G) (hl_group_mul A G) a = hl_right_coset A G h a.
Admitted.

// HOL Light: Library/grouptheory.ml:6276 / GROUP_ORBIT_GROUP_TRANSLATION   (hash md5:2d54ec9a7f3fe1c58eef51367d4abf4d)
Theorem hlt_GROUP_ORBIT_GROUP_TRANSLATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_orbit A A G (hl_group_carrier A G) (hl_group_mul A G) a = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6286 / ORBIT_STABILIZER_GEN   (hash md5:435e0011aac120ce440653f0169a57b6)
Theorem hlt_ORBIT_STABILIZER_GEN : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_group_action A X G s a = 1 /\ hl_IN X x s = 1 -> hl_sym_3d5f63 X (2 :^: A) (hl_group_orbit A X G s a x) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_884 :e 2 :^: A => if exists g :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_884 (hl_IN A g (hl_group_carrier A G)) (hl_left_coset A G g (hl_group_stabilizer A X G a x)) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6296 / ORBIT_STABILIZER   (hash md5:a76b4b0866f27f367a92c13d1c209f3e)
Theorem hlt_ORBIT_STABILIZER : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x :e X, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_group_action A X G s a = 1 /\ hl_IN X x s = 1) -> hl_CARD X (hl_group_orbit A X G s a x) = hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_885 :e 2 :^: A => if exists g :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_885 (hl_IN A g (hl_group_carrier A G)) (hl_left_coset A G g (hl_group_stabilizer A X G a x)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:6307 / GROUP_ACTION_LEFT_COSET_MULTIPLICATION   (hash md5:3705b568d3524bdcaf3f271c6be3a543)
Theorem hlt_GROUP_ACTION_LEFT_COSET_MULTIPLICATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_SUBSET A h (hl_group_carrier A G) = 1 -> hl_group_action A (2 :^: A) G (hl_GSPEC (2 :^: A) (fun GEN_PVAR_886 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_886 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0)) (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_mul A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6320 / GROUP_ORBIT_LEFT_COSET_MULTIPLICATION   (hash md5:2878457af74af9be0aeed4f4a4b1bf5b)
Theorem hlt_GROUP_ORBIT_LEFT_COSET_MULTIPLICATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1 -> hl_group_orbit A (2 :^: A) G (hl_GSPEC (2 :^: A) (fun GEN_PVAR_887 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_887 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0)) (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_mul A G)) (hl_left_coset A G a h) = hl_GSPEC (2 :^: A) (fun GEN_PVAR_888 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_888 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:6343 / GROUP_STABILIZER_LEFT_COSET_MULTIPLICATION   (hash md5:23989700c4d0e88107b317c4c9e2fe8f)
Theorem hlt_GROUP_STABILIZER_LEFT_COSET_MULTIPLICATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1 -> hl_group_stabilizer A (2 :^: A) G (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_mul A G)) (hl_left_coset A G a h) = hl_IMAGE A A (hl_group_conjugation A G a) h.
Admitted.

// HOL Light: Library/grouptheory.ml:6363 / GROUP_ORBIT_LEFT_COSET_MULTIPLICATION_ID   (hash md5:5ad58ed352954731782b39f487eea8be)
Theorem hlt_GROUP_ORBIT_LEFT_COSET_MULTIPLICATION_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_group_orbit A (2 :^: A) G (hl_GSPEC (2 :^: A) (fun GEN_PVAR_890 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_890 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0)) (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_mul A G)) h = hl_GSPEC (2 :^: A) (fun GEN_PVAR_891 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_891 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:6374 / GROUP_STABILIZER_LEFT_COSET_MULTIPLICATION_ID   (hash md5:7cc3f89e7b2a500f9d8726ce5f76adaa)
Theorem hlt_GROUP_STABILIZER_LEFT_COSET_MULTIPLICATION_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_group_stabilizer A (2 :^: A) G (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_mul A G)) h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:6386 / LAGRANGE_THEOREM_LEFT_GEN   (hash md5:bc5589a68f3f3eb9da9a56689511bbeb)
Theorem hlt_LAGRANGE_THEOREM_LEFT_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_sym_3d5f63 (2 :^: A :*: A) A (hl_sym_2a5f63 (2 :^: A) A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_892 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_892 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0)) h) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6401 / LAGRANGE_THEOREM_RIGHT_GEN   (hash md5:fc5eb1e6941deb9d18d04b0be3acce69)
Theorem hlt_LAGRANGE_THEOREM_RIGHT_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_sym_3d5f63 (2 :^: A :*: A) A (hl_sym_2a5f63 (2 :^: A) A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_893 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_893 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G h x) = 1 then 1 else 0)) h) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6411 / LAGRANGE_THEOREM_LEFT   (hash md5:c37a116e52dfe7da245c99225c659f96)
Theorem hlt_LAGRANGE_THEOREM_LEFT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1 -> hl_mul (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_894 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_894 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0))) (hl_CARD A h) = hl_CARD A (hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:6423 / LAGRANGE_THEOREM_RIGHT   (hash md5:26946f5e3bb4c2795238f50c976ef3ce)
Theorem hlt_LAGRANGE_THEOREM_RIGHT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1 -> hl_mul (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_895 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_895 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G h x) = 1 then 1 else 0))) (hl_CARD A h) = hl_CARD A (hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:6433 / LAGRANGE_THEOREM   (hash md5:861fc0968db7f35f5e38efedf378f7d5)
Theorem hlt_LAGRANGE_THEOREM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1 -> hl_num_divides (hl_CARD A h) (hl_CARD A (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6441 / CARD_LEFT_COSETS_DIVIDES   (hash md5:73ecaeecc2f677968580dea422f7373a)
Theorem hlt_CARD_LEFT_COSETS_DIVIDES : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1 -> hl_num_divides (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_896 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_896 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0))) (hl_CARD A (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6448 / CARD_RIGHT_COSETS_DIVIDES   (hash md5:7281b2d779419c48675748a242d26607)
Theorem hlt_CARD_RIGHT_COSETS_DIVIDES : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1 -> hl_num_divides (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_897 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_897 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G h x) = 1 then 1 else 0))) (hl_CARD A (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6455 / LAGRANGE_THEOREM_LEFT_DIV   (hash md5:d1c88326780a9c3f45274e3b3a2d9810)
Theorem hlt_LAGRANGE_THEOREM_LEFT_DIV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1 -> hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_898 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_898 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0)) = hl_DIV (hl_CARD A (hl_group_carrier A G)) (hl_CARD A h).
Admitted.

// HOL Light: Library/grouptheory.ml:6467 / LAGRANGE_THEOREM_RIGHT_DIV   (hash md5:53b863b11c5fc3c0b3a8be8a93262794)
Theorem hlt_LAGRANGE_THEOREM_RIGHT_DIV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h G = 1 -> hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_899 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_899 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G h x) = 1 then 1 else 0)) = hl_DIV (hl_CARD A (hl_group_carrier A G)) (hl_CARD A h).
Admitted.

// HOL Light: Library/grouptheory.ml:6479 / GROUP_SETMUL_PROD_GROUP   (hash md5:008030c8cda5bd7309fcf58cd7f8b173)
Theorem hlt_GROUP_SETMUL_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall s1 :e 2 :^: A, forall s2 :e 2 :^: B, forall t1 :e 2 :^: A, forall t2 :e 2 :^: B, hl_group_setmul (A :*: B) (hl_prod_group A B G1 G2) (hl_CROSS A B s1 s2) (hl_CROSS A B t1 t2) = hl_CROSS A B (hl_group_setmul A G1 s1 t1) (hl_group_setmul B G2 s2 t2).
Admitted.

// HOL Light: Library/grouptheory.ml:6488 / RIGHT_COSET_PROD_GROUP   (hash md5:3695ffb02de73bd825c3e7971664f27c)
Theorem hlt_RIGHT_COSET_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall h1 :e 2 :^: A, forall h2 :e 2 :^: B, forall x1 :e A, forall x2 :e B, hl_right_coset (A :*: B) (hl_prod_group A B G1 G2) (hl_CROSS A B h1 h2) (hl_pair A B x1 x2) = hl_CROSS A B (hl_right_coset A G1 h1 x1) (hl_right_coset B G2 h2 x2).
Admitted.

// HOL Light: Library/grouptheory.ml:6494 / LEFT_COSET_PROD_GROUP   (hash md5:93e16d75d950e83a4c085f58208c089a)
Theorem hlt_LEFT_COSET_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall h1 :e 2 :^: A, forall h2 :e 2 :^: B, forall x1 :e A, forall x2 :e B, hl_left_coset (A :*: B) (hl_prod_group A B G1 G2) (hl_pair A B x1 x2) (hl_CROSS A B h1 h2) = hl_CROSS A B (hl_left_coset A G1 x1 h1) (hl_left_coset B G2 x2 h2).
Admitted.

// HOL Light: Library/grouptheory.ml:6500 / GROUP_SETMUL_PRODUCT_GROUP   (hash md5:36ecc27211beade00453e7b0696ded66)
Theorem hlt_GROUP_SETMUL_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall s t :e 2 :^: A :^: K, hl_group_setmul (A :^: K) (hl_product_group K A k G) (hl_cartesian_product K A k s) (hl_cartesian_product K A k t) = hl_cartesian_product K A k (fun i :e K => hl_group_setmul A (G i) (s i) (t i)).
Admitted.

// HOL Light: Library/grouptheory.ml:6523 / RIGHT_COSET_PRODUCT_GROUP   (hash md5:9fbd6d954de8ba3950790a83a1eb2d88)
Theorem hlt_RIGHT_COSET_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall h :e 2 :^: A :^: K, forall x :e A :^: K, forall k :e 2 :^: K, hl_right_coset (A :^: K) (hl_product_group K A k G) (hl_cartesian_product K A k h) x = hl_cartesian_product K A k (fun i :e K => hl_right_coset A (G i) (h i) (x i)).
Admitted.

// HOL Light: Library/grouptheory.ml:6536 / LEFT_COSET_PRODUCT_GROUP   (hash md5:f3f7709a17f9d4466123294ef1f369ce)
Theorem hlt_LEFT_COSET_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall h :e 2 :^: A :^: K, forall x :e A :^: K, forall k :e 2 :^: K, hl_left_coset (A :^: K) (hl_product_group K A k G) x (hl_cartesian_product K A k h) = hl_cartesian_product K A k (fun i :e K => hl_left_coset A (G i) (x i) (h i)).
Admitted.

// HOL Light: Library/grouptheory.ml:6543 / GROUP_SETINV_SUBGROUP_GENERATED   (hash md5:507306a078cc45a25fe3cf78024d544f)
Theorem hlt_GROUP_SETINV_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_group_setinv A (hl_subgroup_generated A G h) = hl_group_setinv A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6548 / GROUP_SETMUL_SUBGROUP_GENERATED   (hash md5:d247be7a54c293023a4aedd2ce405445)
Theorem hlt_GROUP_SETMUL_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_group_setmul A (hl_subgroup_generated A G h) = hl_group_setmul A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6553 / RIGHT_COSET_SUBGROUP_GENERATED   (hash md5:77d787773343a7f03c81cf71b5b875e2)
Theorem hlt_RIGHT_COSET_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h k :e 2 :^: A, forall x :e A, hl_right_coset A (hl_subgroup_generated A G h) k x = hl_right_coset A G k x.
Admitted.

// HOL Light: Library/grouptheory.ml:6557 / LEFT_COSET_SUBGROUP_GENERATED   (hash md5:c26e73bc953c6a551101def3bc230708)
Theorem hlt_LEFT_COSET_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h k :e 2 :^: A, forall x :e A, hl_left_coset A (hl_subgroup_generated A G h) x k = hl_left_coset A G x k.
Admitted.

// HOL Light: Library/grouptheory.ml:6561 / SCHREIER_TRANSVERSAL_LEMMA   (hash md5:271230f6fd977cdf746674125217c98f)
Theorem hlt_SCHREIER_TRANSVERSAL_LEMMA : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h s t :e 2 :^: A, hl_subgroup_of A h G = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ (hl_subgroup_generated A G s = G /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (hl_group_inv A G x) s = 1) /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_918 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_918 (hl_IN A x t) (hl_right_coset A G h x) = 1 then 1 else 0)) = hl_group_carrier A G /\ hl_SUBSET A (hl_INTER A t h) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1))))) -> hl_group_carrier A (hl_subgroup_generated A G (hl_INTER A h (hl_group_setmul A G t (hl_group_setmul A G s (hl_group_setinv A G t))))) = h.
Admitted.

// HOL Light: Library/grouptheory.ml:6695 / normal_subgroup_of   (hash md5:308218b83665ac589cdbb21310c2c731)
Theorem hlt_normal_subgroup_of_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_left_coset A G x n = hl_right_coset A G n x.
Admitted.

// HOL Light: Library/grouptheory.ml:6700 / NORMAL_SUBGROUP_IMP_SUBGROUP   (hash md5:ff2939cf9869eed5ed1f25f3306dc6eb)
Theorem hlt_NORMAL_SUBGROUP_IMP_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_subgroup_of A n G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6704 / NORMAL_SUBGROUP_OF_IMP_SUBSET   (hash md5:00cffeb0b7e5b22b03316e140afe7d47)
Theorem hlt_NORMAL_SUBGROUP_OF_IMP_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_SUBSET A n (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6708 / NORMAL_SUBGROUP_OF_OPPOSITE_GROUP   (hash md5:c84fc38c58154b38f9ac2cbba1d25d1c)
Theorem hlt_NORMAL_SUBGROUP_OF_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n (hl_opposite_group A G) = 1 <-> hl_normal_subgroup_of A n G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6716 / ABELIAN_GROUP_NORMAL_SUBGROUP   (hash md5:b6052f66e3c9f1b7b8d865dfba97c96b)
Theorem hlt_ABELIAN_GROUP_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_abelian_group A G = 1 -> (hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6722 / NORMAL_SUBGROUP_CONJUGATE_ALT   (hash md5:653fb7af5b9f7650df3bb04955db1499)
Theorem hlt_NORMAL_SUBGROUP_CONJUGATE_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_setmul A G (hl_INSERT A (hl_group_inv A G x) (hl_EMPTY A)) (hl_group_setmul A G n (hl_INSERT A x (hl_EMPTY A))) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:6741 / NORMAL_SUBGROUP_CONJUGATE_INV   (hash md5:3cf459964ae2b62de8fe392a040cb99c)
Theorem hlt_NORMAL_SUBGROUP_CONJUGATE_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_SUBSET A (hl_group_setmul A G (hl_INSERT A (hl_group_inv A G x) (hl_EMPTY A)) (hl_group_setmul A G n (hl_INSERT A x (hl_EMPTY A)))) n = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6769 / NORMAL_SUBGROUP_CONJUGATION_EQ   (hash md5:b6de01b20035665e1ed50dc6b40b0129)
Theorem hlt_NORMAL_SUBGROUP_CONJUGATION_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 <-> hl_subgroup_of A h G = 1 /\ forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_IMAGE A A (hl_group_conjugation A G a) h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:6788 / NORMAL_SUBGROUP_CONJUGATION   (hash md5:414cfa3685d405753a00b43680c776ac)
Theorem hlt_NORMAL_SUBGROUP_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 <-> hl_subgroup_of A h G = 1 /\ forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_SUBSET A (hl_IMAGE A A (hl_group_conjugation A G a) h) h = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6806 / NORMAL_SUBGROUP_CONJUGATION_SUPERSET   (hash md5:894e220033dbee6660daf351ddfd5b63)
Theorem hlt_NORMAL_SUBGROUP_CONJUGATION_SUPERSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 <-> hl_subgroup_of A h G = 1 /\ forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_SUBSET A h (hl_IMAGE A A (hl_group_conjugation A G a) h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6823 / ABELIAN_GROUP_CONJUGATION   (hash md5:625c55c10c4c9b740ee1b3fbd99ad85d)
Theorem hlt_ABELIAN_GROUP_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a x :e A, hl_abelian_group A G = 1 /\ (hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1) -> hl_group_conjugation A G a x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:6829 / NORMAL_SUBGROUP_OF_INTERS   (hash md5:4a5730d0ec1947e1360be33d1bfbc7d2)
Theorem hlt_NORMAL_SUBGROUP_OF_INTERS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall gs :e 2 :^: (2 :^: A), (forall g :e 2 :^: A, hl_IN (2 :^: A) g gs = 1 -> hl_normal_subgroup_of A g G = 1) /\ ~ gs = hl_EMPTY (2 :^: A) -> hl_normal_subgroup_of A (hl_INTERS A gs) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6834 / NORMAL_SUBGROUP_OF_INTER   (hash md5:e483fe429475ee7f36a912052bd4229e)
Theorem hlt_NORMAL_SUBGROUP_OF_INTER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_normal_subgroup_of A g G = 1 /\ hl_normal_subgroup_of A h G = 1 -> hl_normal_subgroup_of A (hl_INTER A g h) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6842 / NORMAL_SUBGROUP_OF_UNIONS   (hash md5:43bfb45720c3645ba2426a72a18d7f9c)
Theorem hlt_NORMAL_SUBGROUP_OF_UNIONS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: A), ~ u = hl_EMPTY (2 :^: A) /\ ((forall h :e 2 :^: A, hl_IN (2 :^: A) h u = 1 -> hl_normal_subgroup_of A h G = 1) /\ (forall g h :e 2 :^: A, hl_IN (2 :^: A) g u = 1 /\ hl_IN (2 :^: A) h u = 1 -> hl_SUBSET A g h = 1 \/ hl_SUBSET A h g = 1)) -> hl_normal_subgroup_of A (hl_UNIONS A u) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6850 / NORMAL_SUBGROUP_ACTION_KERNEL   (hash md5:47ba7a25c4998dd06c7afe9273ccd762)
Theorem hlt_NORMAL_SUBGROUP_ACTION_KERNEL : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, hl_group_action A X G s a = 1 -> hl_normal_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_923 :e A => if exists g :e A, hl_SETSPEC A GEN_PVAR_923 (if hl_IN A g (hl_group_carrier A G) = 1 /\ forall x :e X, hl_IN X x s = 1 -> a g x = x then 1 else 0) g = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6869 / NORMAL_SUBGROUP_LEFT_EQ_RIGHT_COSETS   (hash md5:865daef346c621a61423b36cb50bb344)
Theorem hlt_NORMAL_SUBGROUP_LEFT_EQ_RIGHT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1 /\ hl_GSPEC (2 :^: A) (fun GEN_PVAR_928 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_928 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x n) = 1 then 1 else 0) = hl_GSPEC (2 :^: A) (fun GEN_PVAR_929 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_929 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:6914 / NORMAL_SUBGROUP_MUL_SYM   (hash md5:45b0c2338b29517883c32e02a6f2ea08)
Theorem hlt_NORMAL_SUBGROUP_MUL_SYM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 <-> hl_subgroup_of A h G = 1 /\ forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_IN A (hl_group_mul A G x y) h = 1 <-> hl_IN A (hl_group_mul A G y x) h = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:6935 / TRIVIAL_NORMAL_SUBGROUP_OF   (hash md5:a4ea6690c00308f1fb5f07b9e188cfdf)
Theorem hlt_TRIVIAL_NORMAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_normal_subgroup_of A (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6940 / CARRIER_NORMAL_SUBGROUP_OF   (hash md5:f8ac205eb263948f8b754247c639a303)
Theorem hlt_CARRIER_NORMAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_normal_subgroup_of A (hl_group_carrier A G) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:6945 / GROUP_SETINV_RIGHT_COSET   (hash md5:3bcb1e3369edcdf31130f1204df2f522)
Theorem hlt_GROUP_SETINV_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall a :e A, hl_normal_subgroup_of A n G = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_setinv A G (hl_right_coset A G n a) = hl_right_coset A G n (hl_group_inv A G a).
Admitted.

// HOL Light: Library/grouptheory.ml:6964 / GROUP_SETINV_LEFT_COSET   (hash md5:61c0fd3905fe6e93a9c2a5ac0522e691)
Theorem hlt_GROUP_SETINV_LEFT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall a :e A, hl_normal_subgroup_of A n G = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_setinv A G (hl_left_coset A G a n) = hl_left_coset A G (hl_group_inv A G a) n.
Admitted.

// HOL Light: Library/grouptheory.ml:6974 / GROUP_SETMUL_RIGHT_COSET   (hash md5:3dd6bd602df5630c05d8527880ceb39f)
Theorem hlt_GROUP_SETMUL_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall a b :e A, hl_normal_subgroup_of A n G = 1 /\ (hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A b (hl_group_carrier A G) = 1) -> hl_group_setmul A G (hl_right_coset A G n a) (hl_right_coset A G n b) = hl_right_coset A G n (hl_group_mul A G a b).
Admitted.

// HOL Light: Library/grouptheory.ml:6997 / GROUP_SETMUL_LEFT_COSET   (hash md5:a1b19347d4fbc57615e186a2751a2fe5)
Theorem hlt_GROUP_SETMUL_LEFT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall a b :e A, hl_normal_subgroup_of A n G = 1 /\ (hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A b (hl_group_carrier A G) = 1) -> hl_group_setmul A G (hl_left_coset A G a n) (hl_left_coset A G b n) = hl_left_coset A G (hl_group_mul A G a b) n.
Admitted.

// HOL Light: Library/grouptheory.ml:7007 / CROSS_NORMAL_SUBGROUP_OF_PROD_GROUP   (hash md5:596a101291f7681bc35ddeb4be8581b9)
Theorem hlt_CROSS_NORMAL_SUBGROUP_OF_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall h1 :e 2 :^: A, forall h2 :e 2 :^: B, hl_normal_subgroup_of (A :*: B) (hl_CROSS A B h1 h2) (hl_prod_group A B G1 G2) = 1 <-> hl_normal_subgroup_of A h1 G1 = 1 /\ hl_normal_subgroup_of B h2 G2 = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7019 / NORMAL_SUBGROUP_OF_SUBGROUP_GENERATED_GEN   (hash md5:fd8024f4290d275c07fd4b5ece71f24e)
Theorem hlt_NORMAL_SUBGROUP_OF_SUBGROUP_GENERATED_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 /\ hl_SUBSET A h (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 -> hl_normal_subgroup_of A h (hl_subgroup_generated A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7028 / NORMAL_SUBGROUP_OF_SUBGROUP_GENERATED   (hash md5:f55c5d51d41f4d2240aa9fb3815b7294)
Theorem hlt_NORMAL_SUBGROUP_OF_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 /\ hl_SUBSET A h s = 1 -> hl_normal_subgroup_of A h (hl_subgroup_generated A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7041 / GROUP_SETMUL_NORMAL_SUBGROUP_LEFT   (hash md5:a25bfb508585ff9a769a45b5365a63f5)
Theorem hlt_GROUP_SETMUL_NORMAL_SUBGROUP_LEFT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n h :e 2 :^: A, hl_normal_subgroup_of A n G = 1 /\ hl_subgroup_of A h G = 1 -> hl_subgroup_of A (hl_group_setmul A G n h) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7056 / GROUP_SETMUL_NORMAL_SUBGROUP_RIGHT   (hash md5:223042f7364c842ccd7665aa4e74bf37)
Theorem hlt_GROUP_SETMUL_NORMAL_SUBGROUP_RIGHT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h n :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_normal_subgroup_of A n G = 1 -> hl_subgroup_of A (hl_group_setmul A G h n) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7071 / GROUP_SETMUL_NORMAL_SUBGROUP   (hash md5:7ef34baad5bfe6fa50eda41237be1c9c)
Theorem hlt_GROUP_SETMUL_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h k :e 2 :^: A, hl_normal_subgroup_of A h G = 1 /\ hl_normal_subgroup_of A k G = 1 -> hl_normal_subgroup_of A (hl_group_setmul A G h k) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7083 / CARRIER_SUBGROUP_GENERATED_UNION_LEFT   (hash md5:57725e188a3119a8cdb8460b07225188)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_UNION_LEFT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_normal_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> hl_group_carrier A (hl_subgroup_generated A G (hl_UNION A g h)) = hl_group_setmul A G g h.
Admitted.

// HOL Light: Library/grouptheory.ml:7092 / CARRIER_SUBGROUP_GENERATED_UNION_RIGHT   (hash md5:6f32d2d9eded6325e08e0be46a1a716f)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_UNION_RIGHT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_normal_subgroup_of A h G = 1 -> hl_group_carrier A (hl_subgroup_generated A G (hl_UNION A g h)) = hl_group_setmul A G g h.
Admitted.

// HOL Light: Library/grouptheory.ml:7105 / group_conjugate   (hash md5:a93ce3df276d7a91a1c0d092558dafbf)
Theorem hlt_group_conjugate_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_group_conjugate A G s t = 1 <-> hl_SUBSET A s (hl_group_carrier A G) = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ exists a :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IMAGE A A (hl_group_conjugation A G a) s = t).
Admitted.

// HOL Light: Library/grouptheory.ml:7111 / GROUP_CONJUGATE_REFL   (hash md5:6933e8e7bf2df31ae6c4d6d0cfb5a429)
Theorem hlt_GROUP_CONJUGATE_REFL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_conjugate A G s s = 1 <-> hl_SUBSET A s (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7117 / GROUP_CONJUGATE_SYM   (hash md5:919ab22e7bab21d93b5eb630bf8b0445)
Theorem hlt_GROUP_CONJUGATE_SYM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_group_conjugate A G s t = 1 <-> hl_group_conjugate A G t s = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7124 / GROUP_CONJUGATE_TRANS   (hash md5:68ec9befcae7ec044e4f7e845993b138)
Theorem hlt_GROUP_CONJUGATE_TRANS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t u :e 2 :^: A, hl_group_conjugate A G s t = 1 /\ hl_group_conjugate A G t u = 1 -> hl_group_conjugate A G s u = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7131 / GROUP_CONJUGATE_SUBGROUPS_GENERATED   (hash md5:6ccab9aa36bed97bfeaa7f94c3324b31)
Theorem hlt_GROUP_CONJUGATE_SUBGROUPS_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_group_conjugate A G s t = 1 -> hl_group_conjugate A G (hl_group_carrier A (hl_subgroup_generated A G s)) (hl_group_carrier A (hl_subgroup_generated A G t)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7144 / GROUP_CONJUGATE_IMP_ISOMORPHIC   (hash md5:7d662afbe4c605826b0676e0ca66e10b)
Theorem hlt_GROUP_CONJUGATE_IMP_ISOMORPHIC : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_group_conjugate A G s t = 1 -> hl_isomorphic_group A A (hl_subgroup_generated A G s) (hl_subgroup_generated A G t) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7156 / GROUP_CONJUGATE_IMP_CARD_EQ   (hash md5:cf71fcc4128a10aacce6665d3bbe6185)
Theorem hlt_GROUP_CONJUGATE_IMP_CARD_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_group_conjugate A G s t = 1 -> hl_sym_3d5f63 A A s t = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7163 / GROUP_ORBIT_CONJUGATE_STABILIZERS   (hash md5:d1ef8404416139c714026f0e0892494a)
Theorem hlt_GROUP_ORBIT_CONJUGATE_STABILIZERS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_group_action A X G s a = 1 /\ hl_group_orbit A X G s a x y = 1 -> hl_group_conjugate A G (hl_group_stabilizer A X G a x) (hl_group_stabilizer A X G a y) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7174 / CARD_EQ_GROUP_ORBIT_STABILIZERS   (hash md5:46363fee497ccfac65514c51ccfed3f3)
Theorem hlt_CARD_EQ_GROUP_ORBIT_STABILIZERS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall x y :e X, hl_group_action A X G s a = 1 /\ hl_group_orbit A X G s a x y = 1 -> hl_sym_3d5f63 A A (hl_group_stabilizer A X G a x) (hl_group_stabilizer A X G a y) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7184 / group_centralizer   (hash md5:c8066165d0541c0d88c9b560f37bf874)
Theorem hlt_group_centralizer_thm : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall G :e hl_ty_group A, hl_group_centralizer A G s = hl_GSPEC A (fun GEN_PVAR_946 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_946 (if hl_IN A x (hl_group_carrier A G) = 1 /\ forall y :e A, hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y s = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:7190 / group_normalizer   (hash md5:79e307d1845b3d6f1e6aa9fde1e7b9a8)
Theorem hlt_group_normalizer_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_normalizer A G s = hl_GSPEC A (fun GEN_PVAR_947 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_947 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_group_setmul A G (hl_INSERT A x (hl_EMPTY A)) (hl_INTER A (hl_group_carrier A G) s) = hl_group_setmul A G (hl_INTER A (hl_group_carrier A G) s) (hl_INSERT A x (hl_EMPTY A)) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:7196 / GROUP_CENTRALIZER   (hash md5:2031bdec2ddc6fe3db8f648109d0c95e)
Theorem hlt_GROUP_CENTRALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_group_centralizer A G s = hl_GSPEC A (fun GEN_PVAR_948 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_948 (if hl_IN A x (hl_group_carrier A G) = 1 /\ forall y :e A, hl_IN A y s = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:7204 / GROUP_NORMALIZER   (hash md5:0b2b0152979f3097a91aa84021236339)
Theorem hlt_GROUP_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_group_normalizer A G s = hl_GSPEC A (fun GEN_PVAR_949 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_949 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_group_setmul A G (hl_INSERT A x (hl_EMPTY A)) s = hl_group_setmul A G s (hl_INSERT A x (hl_EMPTY A)) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:7212 / GROUP_NORMALIZER_CONJUGATION_EQ   (hash md5:d7742e8c521fbc6aae45f3dba0236d08)
Theorem hlt_GROUP_NORMALIZER_CONJUGATION_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_normalizer A G s = hl_GSPEC A (fun GEN_PVAR_950 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_950 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IMAGE A A (hl_group_conjugation A G x) (hl_INTER A (hl_group_carrier A G) s) = hl_INTER A (hl_group_carrier A G) s then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:7222 / GROUP_NORMALIZER_CONJUGATION   (hash md5:9c9d0fa8290ea25f5926f0138bdaa9eb)
Theorem hlt_GROUP_NORMALIZER_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_group_normalizer A G s = hl_GSPEC A (fun GEN_PVAR_951 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_951 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IMAGE A A (hl_group_conjugation A G x) s = s then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:7230 / GROUP_NORMALIZER_FINITE   (hash md5:86338d00f2e9c52518b6ea038a3a3a8d)
Theorem hlt_GROUP_NORMALIZER_FINITE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_FINITE A s = 1 -> hl_group_normalizer A G s = hl_GSPEC A (fun GEN_PVAR_952 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_952 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_SUBSET A (hl_IMAGE A A (hl_group_conjugation A G x) s) s = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:7243 / GROUP_CENTRALIZER_RESTRICT   (hash md5:867d96e60e94d25aa77f2c2fb36887e2)
Theorem hlt_GROUP_CENTRALIZER_RESTRICT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_centralizer A G s = hl_group_centralizer A G (hl_INTER A (hl_group_carrier A G) s).
Admitted.

// HOL Light: Library/grouptheory.ml:7249 / GROUP_NORMALIZER_RESTRICT   (hash md5:a0eacc59ec94684a7bb5af36fbda63e3)
Theorem hlt_GROUP_NORMALIZER_RESTRICT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_normalizer A G s = hl_group_normalizer A G (hl_INTER A (hl_group_carrier A G) s).
Admitted.

// HOL Light: Library/grouptheory.ml:7255 / GROUP_CENTRALIZER_SUBSET_CARRIER   (hash md5:d007283e3c03d9aed217c8ea97efdb8f)
Theorem hlt_GROUP_CENTRALIZER_SUBSET_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A (hl_group_centralizer A G s) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7259 / GROUP_NORMALIZER_SUBSET_CARRIER   (hash md5:60b79289c886f2ce92d5a5661dbe4ab5)
Theorem hlt_GROUP_NORMALIZER_SUBSET_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A (hl_group_normalizer A G s) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7263 / FINITE_GROUP_CENTRALIZER   (hash md5:bb7f35c775e1eb0a2a1a02114eb9d968)
Theorem hlt_FINITE_GROUP_CENTRALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 -> hl_FINITE A (hl_group_centralizer A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7267 / FINITE_GROUP_NORMALIZER   (hash md5:3e8e171a79a1074bcc6191948ee1b80e)
Theorem hlt_FINITE_GROUP_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 -> hl_FINITE A (hl_group_normalizer A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7271 / GROUP_CENTRALIZER_SUBSET_NORMALIZER   (hash md5:a7e51541b03c7e3ac3f8e4eaa76864d7)
Theorem hlt_GROUP_CENTRALIZER_SUBSET_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A (hl_group_centralizer A G s) (hl_group_normalizer A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7278 / SUBGROUP_GROUP_CENTRALIZER   (hash md5:5c71c5b94bc4f920205da8abd9d45869)
Theorem hlt_SUBGROUP_GROUP_CENTRALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_of A (hl_group_centralizer A G s) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7289 / SUBGROUP_GROUP_NORMALIZER   (hash md5:3b53f9001d33112927e02016208df062)
Theorem hlt_SUBGROUP_GROUP_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_subgroup_of A (hl_group_normalizer A G s) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7301 / GROUP_CENTRALIZER_SUBGROUP_GENERATED   (hash md5:369b138fb8c779f301c42f9af2a653a1)
Theorem hlt_GROUP_CENTRALIZER_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h s :e 2 :^: A, hl_SUBSET A s h = 1 /\ hl_subgroup_of A h G = 1 -> hl_group_centralizer A (hl_subgroup_generated A G h) s = hl_INTER A h (hl_group_centralizer A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:7313 / GROUP_NORMALIZER_SUBGROUP_GENERATED   (hash md5:1b83455616275f70f75424288bdb5c1a)
Theorem hlt_GROUP_NORMALIZER_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h s :e 2 :^: A, hl_SUBSET A s h = 1 /\ hl_subgroup_of A h G = 1 -> hl_group_normalizer A (hl_subgroup_generated A G h) s = hl_INTER A h (hl_group_normalizer A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:7325 / IN_GROUP_CENTRALIZER_ID   (hash md5:eb3e6789d6f4a9d6ecf30ddd87c39c16)
Theorem hlt_IN_GROUP_CENTRALIZER_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_IN A (hl_group_id A G) (hl_group_centralizer A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7330 / IN_GROUP_NORMALIZER_ID   (hash md5:08b802ea5eca37bda41c9a139b106fcf)
Theorem hlt_IN_GROUP_NORMALIZER_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_IN A (hl_group_id A G) (hl_group_normalizer A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7335 / GROUP_CENTRALIZER_NONEMPTY   (hash md5:f4f5f6ffad7d7551a8bfd1edbc21008f)
Theorem hlt_GROUP_CENTRALIZER_NONEMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, ~ hl_group_centralizer A G s = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:7339 / GROUP_NORMALIZER_NONEMPTY   (hash md5:3657baa230b7e1ebb12d2cf8bee62a9b)
Theorem hlt_GROUP_NORMALIZER_NONEMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, ~ hl_group_normalizer A G s = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:7343 / GROUP_CENTRALIZER_SUBSET   (hash md5:1f1b439180d964fc233e6812f8b7a835)
Theorem hlt_GROUP_CENTRALIZER_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_centralizer A G s) = 1 <-> hl_SUBSET A s (hl_group_carrier A G) = 1 /\ forall a b :e A, hl_IN A a s = 1 /\ hl_IN A b s = 1 -> hl_group_mul A G a b = hl_group_mul A G b a.
Admitted.

// HOL Light: Library/grouptheory.ml:7350 / GROUP_CENTRALIZER_SUBSET_EQ   (hash md5:ce7fefdfb3c5f643dfc1559ec95d3e8e)
Theorem hlt_GROUP_CENTRALIZER_SUBSET_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> (hl_SUBSET A h (hl_group_centralizer A G h) = 1 <-> hl_abelian_group A (hl_subgroup_generated A G h) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:7359 / GROUP_CENTRE_EQ_CARRIER   (hash md5:ef3ccb6368cbd97847a053db52320ea0)
Theorem hlt_GROUP_CENTRE_EQ_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_centralizer A G (hl_group_carrier A G) = hl_group_carrier A G <-> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7365 / GROUP_CENTRALIZER_CENTRALIZER_SUBSET   (hash md5:ecc8c42ee089ea11cc4c4be55a49bbea)
Theorem hlt_GROUP_CENTRALIZER_CENTRALIZER_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_centralizer A G (hl_group_centralizer A G s)) = 1 <-> hl_SUBSET A s (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7371 / GROUP_NORMALIZER_MAXIMAL_GEN   (hash md5:96f728886fa67e73a774e450d4648893)
Theorem hlt_GROUP_NORMALIZER_MAXIMAL_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h n :e 2 :^: A, hl_normal_subgroup_of A h (hl_subgroup_generated A G n) = 1 <-> hl_subgroup_of A h (hl_subgroup_generated A G n) = 1 /\ hl_SUBSET A (hl_INTER A (hl_group_carrier A G) n) (hl_group_normalizer A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7385 / GROUP_NORMALIZER_MAXIMAL   (hash md5:2f5ff6bb63f8a13d69fff58c651006f5)
Theorem hlt_GROUP_NORMALIZER_MAXIMAL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h n :e 2 :^: A, hl_subgroup_of A n G = 1 -> (hl_normal_subgroup_of A h (hl_subgroup_generated A G n) = 1 <-> hl_subgroup_of A h G = 1 /\ (hl_SUBSET A h n = 1 /\ hl_SUBSET A n (hl_group_normalizer A G h) = 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:7395 / NORMAL_SUBGROUP_NORMALIZER_CONTAINS_CARRIER   (hash md5:b36da9c2a455aa9ce01a79e2eaff643c)
Theorem hlt_NORMAL_SUBGROUP_NORMALIZER_CONTAINS_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1 /\ hl_SUBSET A (hl_group_carrier A G) (hl_group_normalizer A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7405 / NORMAL_SUBGROUP_NORMALIZER_EQ_CARRIER   (hash md5:1cff13a8eaf0c1987f1892f0e7c81d24)
Theorem hlt_NORMAL_SUBGROUP_NORMALIZER_EQ_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1 /\ hl_group_normalizer A G n = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:7412 / GROUP_NORMALIZER_SUBSET   (hash md5:8126eaed749a68c6f02ca5b139d03ad8)
Theorem hlt_GROUP_NORMALIZER_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_SUBSET A h (hl_group_normalizer A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7419 / NORMAL_SUBGROUP_OF_NORMALIZER   (hash md5:bff456ed9197580893e5b18208d10e9f)
Theorem hlt_NORMAL_SUBGROUP_OF_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_normal_subgroup_of A h (hl_subgroup_generated A G (hl_group_normalizer A G h)) = 1 <-> hl_subgroup_of A h G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7427 / GROUP_CENTRALIZER_POINTWISE   (hash md5:ab1de62802871aa83530229f6d15437e)
Theorem hlt_GROUP_CENTRALIZER_POINTWISE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_centralizer A G s = hl_COND (2 :^: A) (if s = hl_EMPTY A then 1 else 0) (hl_group_carrier A G) (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_954 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_954 (hl_IN A x s) (hl_group_centralizer A G (hl_INSERT A x (hl_EMPTY A))) = 1 then 1 else 0))).
Admitted.

// HOL Light: Library/grouptheory.ml:7436 / GROUP_CENTRALIZER_ALT   (hash md5:6ae480d952df4e13a2b77fff42cdc12f)
Theorem hlt_GROUP_CENTRALIZER_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_group_centralizer A G s = hl_GSPEC A (fun GEN_PVAR_955 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_955 (if hl_IN A x (hl_group_carrier A G) = 1 /\ forall y :e A, hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y s = 1 -> hl_group_conjugation A G x y = y then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:7445 / NORMAL_SUBGROUP_CENTRALIZER_NORMALIZER   (hash md5:e5ffe96fd893405878c557c697648fa2)
Theorem hlt_NORMAL_SUBGROUP_CENTRALIZER_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_normal_subgroup_of A (hl_group_centralizer A G h) (hl_subgroup_generated A G (hl_group_normalizer A G h)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7476 / NORMAL_SUBGROUP_CENTRALIZER   (hash md5:efaa7909dc161f928ef8669e6cd7ec42)
Theorem hlt_NORMAL_SUBGROUP_CENTRALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_normal_subgroup_of A (hl_group_centralizer A G n) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7484 / GROUP_NORMALIZER_SING   (hash md5:62d0680d51c31c96cbf0258abe427982)
Theorem hlt_GROUP_NORMALIZER_SING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_group_normalizer A G (hl_INSERT A a (hl_EMPTY A)) = hl_group_centralizer A G (hl_INSERT A a (hl_EMPTY A)).
Admitted.

// HOL Light: Library/grouptheory.ml:7496 / GROUP_CENTRALIZER_GALOIS_EQ   (hash md5:4f76d1edbf9ce213f3121062137e088a)
Theorem hlt_GROUP_CENTRALIZER_GALOIS_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_SUBSET A t (hl_group_carrier A G) = 1 -> (hl_SUBSET A s (hl_group_centralizer A G t) = 1 <-> hl_SUBSET A t (hl_group_centralizer A G s) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:7503 / GROUP_CENTRALIZER_GALOIS   (hash md5:403dcb8468999c2b192ef352620aab01)
Theorem hlt_GROUP_CENTRALIZER_GALOIS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_SUBSET A t (hl_group_centralizer A G s) = 1 -> hl_SUBSET A s (hl_group_centralizer A G t) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7509 / GROUP_CENTRALIZER_MONO   (hash md5:ef9d819014b734507c161a43bc0b7a6c)
Theorem hlt_GROUP_CENTRALIZER_MONO : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 -> hl_SUBSET A (hl_group_centralizer A G t) (hl_group_centralizer A G s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7514 / GROUP_ACTION_CONJUGATION_NORMAL_SUBGROUP   (hash md5:0d0e475580fd4b17d9d3224d775143bb)
Theorem hlt_GROUP_ACTION_CONJUGATION_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_group_action A A G n (hl_group_conjugation A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7524 / GROUP_STABILIZER_CONJUGATION   (hash md5:118a79625c008edfca562f1407631274)
Theorem hlt_GROUP_STABILIZER_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_stabilizer A A G (hl_group_conjugation A G) a = hl_group_centralizer A G (hl_INSERT A a (hl_EMPTY A)).
Admitted.

// HOL Light: Library/grouptheory.ml:7533 / GROUP_ORBIT_CONJUGATION_GEN   (hash md5:602c6409d5442b5718eb2bb37623fb53)
Theorem hlt_GROUP_ORBIT_CONJUGATION_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_group_orbit A A G s (hl_group_conjugation A G) x = hl_COND (2 :^: A) (hl_IN A x s) (hl_GSPEC A (fun GEN_PVAR_956 :e A => if exists y :e A, hl_SETSPEC A GEN_PVAR_956 (if hl_IN A y s = 1 /\ hl_group_conjugate A G (hl_INSERT A x (hl_EMPTY A)) (hl_INSERT A y (hl_EMPTY A)) = 1 then 1 else 0) y = 1 then 1 else 0)) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:7544 / GROUP_ORBIT_CONJUGATION   (hash md5:aef4b42efc653c4c5b39526fb97268b7)
Theorem hlt_GROUP_ORBIT_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_group_orbit A A G (hl_group_carrier A G) (hl_group_conjugation A G) x = hl_COND (2 :^: A) (hl_IN A x (hl_group_carrier A G)) (hl_GSPEC A (fun GEN_PVAR_957 :e A => if exists y :e A, hl_SETSPEC A GEN_PVAR_957 (if hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_conjugate A G (hl_INSERT A x (hl_EMPTY A)) (hl_INSERT A y (hl_EMPTY A)) = 1 then 1 else 0) y = 1 then 1 else 0)) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:7552 / GROUP_ACTION_IMAGE_CONJUGATION   (hash md5:b1a80069f129b2abb53ccaeac3888203)
Theorem hlt_GROUP_ACTION_IMAGE_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: A), (forall t :e 2 :^: A, hl_IN (2 :^: A) t u = 1 -> hl_SUBSET A t (hl_group_carrier A G) = 1) /\ (forall g :e A, forall t :e 2 :^: A, hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN (2 :^: A) t u = 1 -> hl_IN (2 :^: A) (hl_IMAGE A A (hl_group_conjugation A G g) t) u = 1) -> hl_group_action A (2 :^: A) G u (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_conjugation A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7562 / GROUP_STABILIZER_IMAGE_CONJUGATION   (hash md5:8c9d5fd124e29fe192f65faebe843a82)
Theorem hlt_GROUP_STABILIZER_IMAGE_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_group_stabilizer A (2 :^: A) G (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_conjugation A G)) s = hl_group_normalizer A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:7569 / GROUP_ACTION_IMAGE_CONJUGATION_CARRIER   (hash md5:2a0979b008e32fdfc4f8c4d3d2cc3f60)
Theorem hlt_GROUP_ACTION_IMAGE_CONJUGATION_CARRIER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_action A (2 :^: A) G (hl_GSPEC (2 :^: A) (fun GEN_PVAR_958 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_958 (hl_SUBSET A s (hl_group_carrier A G)) s = 1 then 1 else 0)) (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_conjugation A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7575 / GROUP_ACTION_IMAGE_CONJUGATION_SUBGROUPS   (hash md5:06722d1383d8fbc3cb5d0bbf3d964b36)
Theorem hlt_GROUP_ACTION_IMAGE_CONJUGATION_SUBGROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_action A (2 :^: A) G (hl_GSPEC (2 :^: A) (fun GEN_PVAR_959 :e 2 :^: A => if exists n :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_959 (hl_subgroup_of A n G) n = 1 then 1 else 0)) (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_conjugation A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7583 / GROUP_ORBIT_IMAGE_CONJUGATION   (hash md5:897c97d3b824296b33e0893cb4c72309)
Theorem hlt_GROUP_ORBIT_IMAGE_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_orbit A (2 :^: A) G (hl_GSPEC (2 :^: A) (fun GEN_PVAR_960 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_960 (hl_SUBSET A s (hl_group_carrier A G)) s = 1 then 1 else 0)) (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_conjugation A G)) = hl_group_conjugate A G.
Admitted.

// HOL Light: Library/grouptheory.ml:7589 / GROUP_ORBIT_IMAGE_CONJUGATION_GEN   (hash md5:252880915157e1146027992fa9a1788e)
Theorem hlt_GROUP_ORBIT_IMAGE_CONJUGATION_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: A), forall s :e 2 :^: A, (forall t :e 2 :^: A, hl_IN (2 :^: A) t u = 1 -> hl_SUBSET A t (hl_group_carrier A G) = 1) /\ hl_IN (2 :^: A) s u = 1 -> hl_group_orbit A (2 :^: A) G u (hl_o (A :^: A) (2 :^: A :^: (2 :^: A)) A (hl_IMAGE A A) (hl_group_conjugation A G)) s = fun t :e 2 :^: A => if hl_IN (2 :^: A) t u = 1 /\ hl_group_conjugate A G s t = 1 then 1 else 0.
Admitted.

// HOL Light: Library/grouptheory.ml:7597 / CARD_CONJUGATE_SUBSETS_MUL_GEN   (hash md5:fd8e07ca18f976ba0bf6e5dea65c19b1)
Theorem hlt_CARD_CONJUGATE_SUBSETS_MUL_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_sym_3d5f63 (2 :^: A :*: A) A (hl_sym_2a5f63 (2 :^: A) A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_962 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_962 (hl_group_conjugate A G s t) t = 1 then 1 else 0)) (hl_group_normalizer A G s)) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7610 / CARD_CONJUGATE_SUBSETS_MUL   (hash md5:ffafc3706b959bcd2fe64d1a3138ccb1)
Theorem hlt_CARD_CONJUGATE_SUBSETS_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_mul (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_963 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_963 (hl_group_conjugate A G s t) t = 1 then 1 else 0))) (hl_CARD A (hl_group_normalizer A G s)) = hl_CARD A (hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:7624 / CARD_CONJUGATE_SUBSETS   (hash md5:dc10ca12b5968354441de3c0f41e32e5)
Theorem hlt_CARD_CONJUGATE_SUBSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_964 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_964 (hl_group_conjugate A G s t) t = 1 then 1 else 0)) = hl_DIV (hl_CARD A (hl_group_carrier A G)) (hl_CARD A (hl_group_normalizer A G s)).
Admitted.

// HOL Light: Library/grouptheory.ml:7640 / quotient_group   (hash md5:16d57c618dc39469534c6adbc3d0d594)
Theorem hlt_quotient_group_thm : forall A:set, A <> Empty -> forall n :e 2 :^: A, forall G :e hl_ty_group A, hl_quotient_group A G n = hl_group (2 :^: A) (hl_pair (2 :^: (2 :^: A)) (2 :^: A :*: (2 :^: A :^: (2 :^: A) :*: 2 :^: A :^: (2 :^: A) :^: (2 :^: A))) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_965 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_965 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0)) (hl_pair (2 :^: A) (2 :^: A :^: (2 :^: A) :*: 2 :^: A :^: (2 :^: A) :^: (2 :^: A)) n (hl_pair (2 :^: A :^: (2 :^: A)) (2 :^: A :^: (2 :^: A) :^: (2 :^: A)) (hl_group_setinv A G) (hl_group_setmul A G)))).
Admitted.

// HOL Light: Library/grouptheory.ml:7645 / QUOTIENT_GROUP   (hash md5:9317200f9e58ad8ae51d7c7fb1f8bce0)
Theorem hlt_QUOTIENT_GROUP : forall A:set, A <> Empty -> (forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_group_carrier (2 :^: A) (hl_quotient_group A G n) = hl_GSPEC (2 :^: A) (fun GEN_PVAR_966 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_966 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0)) /\ ((forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_group_id (2 :^: A) (hl_quotient_group A G n) = n) /\ ((forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_group_inv (2 :^: A) (hl_quotient_group A G n) = hl_group_setinv A G) /\ forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_group_mul (2 :^: A) (hl_quotient_group A G n) = hl_group_setmul A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:7685 / ABELIAN_QUOTIENT_GROUP   (hash md5:4773446d719a39f2c59111d95ed25d35)
Theorem hlt_ABELIAN_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_abelian_group A G = 1 /\ hl_subgroup_of A n G = 1 -> hl_abelian_group (2 :^: A) (hl_quotient_group A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7693 / FINITE_QUOTIENT_GROUP   (hash md5:e6c64e86d1ec4c60fc95106773670a9b)
Theorem hlt_FINITE_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_normal_subgroup_of A n G = 1 -> hl_FINITE (2 :^: A) (hl_group_carrier (2 :^: A) (hl_quotient_group A G n)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7700 / TRIVIAL_QUOTIENT_GROUP   (hash md5:3a11dac9f34083600c7bccb33bceee5f)
Theorem hlt_TRIVIAL_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_trivial_group A G = 1 /\ hl_normal_subgroup_of A n G = 1 -> hl_trivial_group (2 :^: A) (hl_quotient_group A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7709 / QUOTIENT_GROUP_ID   (hash md5:7f29a4cda5b0060b3465956b7be8c86b)
Theorem hlt_QUOTIENT_GROUP_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_group_id (2 :^: A) (hl_quotient_group A G n) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:7715 / QUOTIENT_GROUP_INV   (hash md5:e2d200ef04b1dc0aa0be19ca8fc8d0c1)
Theorem hlt_QUOTIENT_GROUP_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall a :e A, hl_normal_subgroup_of A n G = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_inv (2 :^: A) (hl_quotient_group A G n) (hl_right_coset A G n a) = hl_right_coset A G n (hl_group_inv A G a).
Admitted.

// HOL Light: Library/grouptheory.ml:7722 / QUOTIENT_GROUP_MUL   (hash md5:a47f0e0c2c679de9ab77ed3a48c093da)
Theorem hlt_QUOTIENT_GROUP_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall a b :e A, hl_normal_subgroup_of A n G = 1 /\ (hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A b (hl_group_carrier A G) = 1) -> hl_group_mul (2 :^: A) (hl_quotient_group A G n) (hl_right_coset A G n a) (hl_right_coset A G n b) = hl_right_coset A G n (hl_group_mul A G a b).
Admitted.

// HOL Light: Library/grouptheory.ml:7730 / QUOTIENT_GROUP_DIV   (hash md5:882b51c867da7ceb7508e9c034e072c3)
Theorem hlt_QUOTIENT_GROUP_DIV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall a b :e A, hl_normal_subgroup_of A n G = 1 /\ (hl_IN A a (hl_group_carrier A G) = 1 /\ hl_IN A b (hl_group_carrier A G) = 1) -> hl_group_div (2 :^: A) (hl_quotient_group A G n) (hl_right_coset A G n a) (hl_right_coset A G n b) = hl_right_coset A G n (hl_group_div A G a b).
Admitted.

// HOL Light: Library/grouptheory.ml:7738 / QUOTIENT_GROUP_POW   (hash md5:842c5d76e2f9154d6988e6e45d24b891)
Theorem hlt_QUOTIENT_GROUP_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall a :e A, forall k :e omega, hl_normal_subgroup_of A n G = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_pow (2 :^: A) (hl_quotient_group A G n) (hl_right_coset A G n a) k = hl_right_coset A G n (hl_group_pow A G a k).
Admitted.

// HOL Light: Library/grouptheory.ml:7748 / QUOTIENT_GROUP_ZPOW   (hash md5:2e959082e0b59351508931d93832c240)
Theorem hlt_QUOTIENT_GROUP_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall a :e A, forall k :e hl_ty_int, hl_normal_subgroup_of A n G = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> hl_group_zpow (2 :^: A) (hl_quotient_group A G n) (hl_right_coset A G n a) k = hl_right_coset A G n (hl_group_zpow A G a k).
Admitted.

// HOL Light: Library/grouptheory.ml:7756 / GROUP_HOMOMORPHISM_RIGHT_COSET   (hash md5:d2a7924891c2e58dae18fef473459d62)
Theorem hlt_GROUP_HOMOMORPHISM_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_group_homomorphism A (2 :^: A) (hl_pair (hl_ty_group A) (hl_ty_group (2 :^: A)) G (hl_quotient_group A G n)) (hl_right_coset A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7764 / GROUP_EPIMORPHISM_RIGHT_COSET   (hash md5:798d7105686746d772fb577a204b3c12)
Theorem hlt_GROUP_EPIMORPHISM_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_group_epimorphism A (2 :^: A) (hl_pair (hl_ty_group A) (hl_ty_group (2 :^: A)) G (hl_quotient_group A G n)) (hl_right_coset A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7771 / CARD_LE_QUOTIENT_GROUP   (hash md5:41d166a5dd68bd99008c0636f359a8bd)
Theorem hlt_CARD_LE_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_sym_3c3d5f63 (2 :^: A) A (hl_group_carrier (2 :^: A) (hl_quotient_group A G n)) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7779 / CARD_QUOTIENT_GROUP_DIVIDES   (hash md5:ce1c12414ce667d61ad0c5563b369b9c)
Theorem hlt_CARD_QUOTIENT_GROUP_DIVIDES : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_normal_subgroup_of A n G = 1 -> hl_num_divides (hl_CARD (2 :^: A) (hl_group_carrier (2 :^: A) (hl_quotient_group A G n))) (hl_CARD A (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7787 / TRIVIAL_QUOTIENT_GROUP_EQ   (hash md5:2ed6bbec8f530338344ad906c7eb8468)
Theorem hlt_TRIVIAL_QUOTIENT_GROUP_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> (hl_trivial_group (2 :^: A) (hl_quotient_group A G n) = 1 <-> n = hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:7798 / TRIVIAL_QUOTIENT_GROUP_SELF   (hash md5:b984b90d40af063cb23e1133e7546f8a)
Theorem hlt_TRIVIAL_QUOTIENT_GROUP_SELF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group (2 :^: A) (hl_quotient_group A G (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7802 / QUOTIENT_GROUP_TRIVIAL   (hash md5:a1c69c2272caf806511dbf01888b093a)
Theorem hlt_QUOTIENT_GROUP_TRIVIAL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_isomorphic_group (2 :^: A) A (hl_quotient_group A G (hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7812 / GROUP_ISOMORPHISM_PROD_QUOTIENT_GROUP   (hash md5:127780a2167ff3512e8abba86a121e8c)
Theorem hlt_GROUP_ISOMORPHISM_PROD_QUOTIENT_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall n1 :e 2 :^: A, forall n2 :e 2 :^: B, hl_normal_subgroup_of A n1 G1 = 1 /\ hl_normal_subgroup_of B n2 G2 = 1 -> hl_group_isomorphism (2 :^: A :*: 2 :^: B) (2 :^: (A :*: B)) (hl_pair (hl_ty_group (2 :^: A :*: 2 :^: B)) (hl_ty_group (2 :^: (A :*: B))) (hl_prod_group (2 :^: A) (2 :^: B) (hl_quotient_group A G1 n1) (hl_quotient_group B G2 n2)) (hl_quotient_group (A :*: B) (hl_prod_group A B G1 G2) (hl_CROSS A B n1 n2))) (hl_GABS (2 :^: (A :*: B) :^: (2 :^: A :*: 2 :^: B)) (fun f :e 2 :^: (A :*: B) :^: (2 :^: A :*: 2 :^: B) => if forall s :e 2 :^: A, forall t :e 2 :^: B, hl_GEQ (2 :^: (A :*: B)) (f (hl_pair (2 :^: A) (2 :^: B) s t)) (hl_CROSS A B s t) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7840 / ISOMORPHIC_QUOTIENT_PROD_GROUP   (hash md5:11ae14aa32ebb9d3ce33f70f7232d428)
Theorem hlt_ISOMORPHIC_QUOTIENT_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e hl_ty_group A, forall G2 :e hl_ty_group B, forall n1 :e 2 :^: A, forall n2 :e 2 :^: B, hl_normal_subgroup_of A n1 G1 = 1 /\ hl_normal_subgroup_of B n2 G2 = 1 -> hl_isomorphic_group (2 :^: (A :*: B)) (2 :^: A :*: 2 :^: B) (hl_quotient_group (A :*: B) (hl_prod_group A B G1 G2) (hl_CROSS A B n1 n2)) (hl_prod_group (2 :^: A) (2 :^: B) (hl_quotient_group A G1 n1) (hl_quotient_group B G2 n2)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7849 / CARTESIAN_PRODUCT_NORMAL_SUBGROUP_OF_PRODUCT_GROUP   (hash md5:b94e8e8854c399424b6a52f330408957)
Theorem hlt_CARTESIAN_PRODUCT_NORMAL_SUBGROUP_OF_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall h :e 2 :^: A :^: K, forall k :e 2 :^: K, hl_normal_subgroup_of (A :^: K) (hl_cartesian_product K A k h) (hl_product_group K A k G) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_normal_subgroup_of A (h i) (G i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7864 / GROUP_ISOMORPHISM_PRODUCT_QUOTIENT_GROUP   (hash md5:146ef7fee86048d5b756e9940ea657df)
Theorem hlt_GROUP_ISOMORPHISM_PRODUCT_QUOTIENT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall n :e 2 :^: A :^: K, forall k :e 2 :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_normal_subgroup_of A (n i) (G i) = 1) -> hl_group_isomorphism (2 :^: A :^: K) (2 :^: (A :^: K)) (hl_pair (hl_ty_group (2 :^: A :^: K)) (hl_ty_group (2 :^: (A :^: K))) (hl_product_group K (2 :^: A) k (fun i :e K => hl_quotient_group A (G i) (n i))) (hl_quotient_group (A :^: K) (hl_product_group K A k G) (hl_cartesian_product K A k n))) (hl_cartesian_product K A k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7905 / ISOMORPHIC_QUOTIENT_PRODUCT_GROUP   (hash md5:e444a70e7de0fc2f962fe0c6d8871060)
Theorem hlt_ISOMORPHIC_QUOTIENT_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall n :e 2 :^: A :^: K, forall k :e 2 :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_normal_subgroup_of A (n i) (G i) = 1) -> hl_isomorphic_group (2 :^: (A :^: K)) (2 :^: A :^: K) (hl_quotient_group (A :^: K) (hl_product_group K A k G) (hl_cartesian_product K A k n)) (hl_product_group K (2 :^: A) k (fun i :e K => hl_quotient_group A (G i) (n i))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:7915 / SUBGROUP_OF_QUOTIENT_GROUP   (hash md5:af672b0ecf9f6ab0c67e6683fec818bf)
Theorem hlt_SUBGROUP_OF_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall h :e 2 :^: (2 :^: A), hl_normal_subgroup_of A n G = 1 -> (hl_subgroup_of (2 :^: A) h (hl_quotient_group A G n) = 1 <-> exists k :e 2 :^: A, hl_subgroup_of A k G = 1 /\ hl_GSPEC (2 :^: A) (fun GEN_PVAR_970 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_970 (hl_IN A x k) (hl_right_coset A G n x) = 1 then 1 else 0) = h).
Admitted.

// HOL Light: Library/grouptheory.ml:7915 / SUBGROUP_OF_QUOTIENT_GROUP_ALT   (hash md5:878ae539a650d729521a82dec1129d0b)
Theorem hlt_SUBGROUP_OF_QUOTIENT_GROUP_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall h :e 2 :^: (2 :^: A), hl_normal_subgroup_of A n G = 1 -> (hl_subgroup_of (2 :^: A) h (hl_quotient_group A G n) = 1 <-> exists k :e 2 :^: A, hl_subgroup_of A k G = 1 /\ (hl_SUBSET A n k = 1 /\ hl_GSPEC (2 :^: A) (fun GEN_PVAR_971 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_971 (hl_IN A x k) (hl_right_coset A G n x) = 1 then 1 else 0) = h)).
Admitted.

// HOL Light: Library/grouptheory.ml:7955 / SUBGROUP_OF_QUOTIENT_GROUP_GENERATED_BY   (hash md5:843c162f13950f453388060e1d5b62ce)
Theorem hlt_SUBGROUP_OF_QUOTIENT_GROUP_GENERATED_BY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall h :e 2 :^: (2 :^: A), hl_normal_subgroup_of A n G = 1 /\ hl_subgroup_of (2 :^: A) h (hl_quotient_group A G n) = 1 -> exists k :e 2 :^: A, hl_subgroup_of A k G = 1 /\ (hl_SUBSET A n k = 1 /\ hl_quotient_group A (hl_subgroup_generated A G k) n = hl_subgroup_generated (2 :^: A) (hl_quotient_group A G n) h).
Admitted.

// HOL Light: Library/grouptheory.ml:7973 / QUOTIENT_GROUP_SUBGROUP_GENERATED   (hash md5:dbcd987947bce36c91ca096c82a49a17)
Theorem hlt_QUOTIENT_GROUP_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 /\ (hl_subgroup_of A h G = 1 /\ hl_SUBSET A n h = 1) -> hl_quotient_group A (hl_subgroup_generated A G h) n = hl_subgroup_generated (2 :^: A) (hl_quotient_group A G n) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_972 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_972 (hl_IN A x h) (hl_right_coset A G n x) = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:7993 / group_kernel   (hash md5:e85dade13567e8c8ee92ea6e49d889b5)
Theorem hlt_group_kernel_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall f :e B :^: A, forall G' :e hl_ty_group B, hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_GSPEC A (fun GEN_PVAR_973 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_973 (if hl_IN A x (hl_group_carrier A G) = 1 /\ f x = hl_group_id B G' then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:7997 / group_image   (hash md5:c143c07f8b392ae9b32d1d364b4d541f)
Theorem hlt_group_image_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G' :e hl_ty_group B, forall f :e B :^: A, forall G :e hl_ty_group A, hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_IMAGE A B f (hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8000 / GROUP_KERNEL_ID   (hash md5:81e3511065788b52f29b46ad487f82a8)
Theorem hlt_GROUP_KERNEL_ID : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> hl_IN A (hl_group_id A G) (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8006 / GROUP_KERNEL_NONEMPTY   (hash md5:219654d5f75041ab85cce7759b69c67c)
Theorem hlt_GROUP_KERNEL_NONEMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> ~ hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = hl_EMPTY A.
Admitted.

// HOL Light: Library/grouptheory.ml:8011 / GROUP_KERNEL_SUBSET_CARRIER   (hash md5:9551de2e1cbd6d476cb365e48fbd08fa)
Theorem hlt_GROUP_KERNEL_SUBSET_CARRIER : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_SUBSET A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8015 / GROUP_MONOMORPHISM   (hash md5:09f458573fed956a680c808fc5aa480a)
Theorem hlt_GROUP_MONOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_INSERT A (hl_group_id A G) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:8040 / GROUP_MONOMORPHISM_ALT   (hash md5:d07c8092923e0f5e7eb12f77a180c11c)
Theorem hlt_GROUP_MONOMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ f x = hl_group_id B G' -> x = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8049 / GROUP_MONOMORPHISM_ALT_EQ   (hash md5:9d9ea11ba9f7c2b2b12181243d79e728)
Theorem hlt_GROUP_MONOMORPHISM_ALT_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (f x = hl_group_id B G' <-> x = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8056 / GROUP_EPIMORPHISM   (hash md5:8c65caeb87063dd295f575629fe141a9)
Theorem hlt_GROUP_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_group_carrier B G'.
Admitted.

// HOL Light: Library/grouptheory.ml:8063 / GROUP_EPIMORPHISM_ALT   (hash md5:7130ac74f0a2edfc16b99ab8fbd41273)
Theorem hlt_GROUP_EPIMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_SUBSET B (hl_group_carrier B G') (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8071 / GROUP_ISOMORPHISM_EPIMORPHISM_ALT   (hash md5:36a23d8357c2a9607a8585fb3d7ebfb6)
Theorem hlt_GROUP_ISOMORPHISM_EPIMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ f x = hl_group_id B G' -> x = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8080 / GROUP_ISOMORPHISM_GROUP_KERNEL_GROUP_IMAGE   (hash md5:df78cc7299b8b1eb64c1b2f6fdd41b2d)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_KERNEL_GROUP_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) /\ hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_group_carrier B G').
Admitted.

// HOL Light: Library/grouptheory.ml:8089 / GROUP_ISOMORPHISM_ALT   (hash md5:a480632109deb17594ce6b6cdf0c9357)
Theorem hlt_GROUP_ISOMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_IMAGE A B f (hl_group_carrier A G) = hl_group_carrier B G' /\ ((forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> f (hl_group_mul A G x y) = hl_group_mul B G' (f x) (f y)) /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ f x = hl_group_id B G' -> x = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8104 / SUBGROUP_GROUP_KERNEL   (hash md5:b3b733f32bc197af6d8126593406c88a)
Theorem hlt_SUBGROUP_GROUP_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> hl_subgroup_of A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8111 / SUBGROUP_GROUP_IMAGE   (hash md5:6a642bfc073fbf2e0df839e1ee963cd7)
Theorem hlt_SUBGROUP_GROUP_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> hl_subgroup_of B (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f) G' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8118 / GROUP_KERNEL_TO_SUBGROUP_GENERATED   (hash md5:01dbd50b6ba19a213297631de97002d1)
Theorem hlt_GROUP_KERNEL_TO_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: B, forall f :e B :^: A, hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B H s)) f = hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:8123 / GROUP_IMAGE_TO_SUBGROUP_GENERATED   (hash md5:c018500e2cf974b7f1372216b713f436)
Theorem hlt_GROUP_IMAGE_TO_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: B, forall f :e B :^: A, hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B H s)) f = hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:8128 / GROUP_KERNEL_FROM_SUBGROUP_GENERATED   (hash md5:66ee82f0de33d8f4a45bc466180e2434)
Theorem hlt_GROUP_KERNEL_FROM_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: A, forall f :e B :^: A, hl_subgroup_of A s G = 1 -> hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G s) H) f = hl_INTER A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) s.
Admitted.

// HOL Light: Library/grouptheory.ml:8136 / GROUP_IMAGE_FROM_SUBGROUP_GENERATED   (hash md5:d9cc59f5c28f2970ad448f0fce2b04b1)
Theorem hlt_GROUP_IMAGE_FROM_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall s :e 2 :^: A, forall f :e B :^: A, hl_subgroup_of A s G = 1 -> hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_subgroup_generated A G s) H) f = hl_INTER B (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) (hl_IMAGE A B f s).
Admitted.

// HOL Light: Library/grouptheory.ml:8144 / GROUP_ISOMORPHISM_ONTO_IMAGE   (hash md5:26b4bf9f757f30f6a182363c05a837aa)
Theorem hlt_GROUP_ISOMORPHISM_ONTO_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G (hl_subgroup_generated B H (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f))) f = 1 <-> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8156 / NORMAL_SUBGROUP_GROUP_KERNEL   (hash md5:4982cb1f707ab9441d38cfa3df54d25d)
Theorem hlt_NORMAL_SUBGROUP_GROUP_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> hl_normal_subgroup_of A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8169 / GROUP_KERNEL_RIGHT_COSET   (hash md5:225b881550aa1dc20c5285a45191b2e5)
Theorem hlt_GROUP_KERNEL_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_group_kernel A (2 :^: A) (hl_pair (hl_ty_group A) (hl_ty_group (2 :^: A)) G (hl_quotient_group A G n)) (hl_right_coset A G n) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:8179 / CARD_EQ_GROUP_IMAGE_KERNEL   (hash md5:e6994c1766ab631094cd5a4fff5760bf)
Theorem hlt_CARD_EQ_GROUP_IMAGE_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_sym_3d5f63 (B :*: A) A (hl_sym_2a5f63 B A (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f)) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8199 / CARD_DIVIDES_GROUP_MONOMORPHIC_IMAGE   (hash md5:01eb99869b56dfd14a453e62ba7a3c6a)
Theorem hlt_CARD_DIVIDES_GROUP_MONOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_FINITE B (hl_group_carrier B H) = 1 -> hl_num_divides (hl_CARD A (hl_group_carrier A G)) (hl_CARD B (hl_group_carrier B H)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8213 / CARD_DIVIDES_GROUP_EPIMORPHIC_IMAGE   (hash md5:dc94befd4cc484f375a2dbd32d7dd6fa)
Theorem hlt_CARD_DIVIDES_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> hl_num_divides (hl_CARD B (hl_group_carrier B H)) (hl_CARD A (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8226 / QUOTIENT_GROUP_UNIVERSAL_EXPLICIT   (hash md5:a7944831fb5c1b2073d91122f39de773)
Theorem hlt_QUOTIENT_GROUP_UNIVERSAL_EXPLICIT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall n :e 2 :^: A, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ (hl_normal_subgroup_of A n G = 1 /\ (forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_right_coset A G n x = hl_right_coset A G n y) -> f x = f y)) -> exists g :e B :^: (2 :^: A), hl_group_homomorphism (2 :^: A) B (hl_pair (hl_ty_group (2 :^: A)) (hl_ty_group B) (hl_quotient_group A G n) G') g = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> g (hl_right_coset A G n x) = f x.
Admitted.

// HOL Light: Library/grouptheory.ml:8247 / QUOTIENT_GROUP_UNIVERSAL   (hash md5:593783f94c2278ce81464c990e952c20)
Theorem hlt_QUOTIENT_GROUP_UNIVERSAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall n :e 2 :^: A, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ (hl_normal_subgroup_of A n G = 1 /\ hl_SUBSET A n (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f) = 1) -> exists g :e B :^: (2 :^: A), hl_group_homomorphism (2 :^: A) B (hl_pair (hl_ty_group (2 :^: A)) (hl_ty_group B) (hl_quotient_group A G n) G') g = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> g (hl_right_coset A G n x) = f x.
Admitted.

// HOL Light: Library/grouptheory.ml:8264 / QUOTIENT_GROUP_UNIVERSAL_EPIMORPHISM   (hash md5:bb0038ead7c965242af146ca7d95bfd5)
Theorem hlt_QUOTIENT_GROUP_UNIVERSAL_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall n :e 2 :^: A, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ (hl_normal_subgroup_of A n G = 1 /\ hl_SUBSET A n (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f) = 1) -> exists g :e B :^: (2 :^: A), hl_group_epimorphism (2 :^: A) B (hl_pair (hl_ty_group (2 :^: A)) (hl_ty_group B) (hl_quotient_group A G n) G') g = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> g (hl_right_coset A G n x) = f x.
Admitted.

// HOL Light: Library/grouptheory.ml:8277 / GROUP_KERNEL_FROM_TRIVIAL_GROUP   (hash md5:b91851a551000a8c4a5bbe35907b587c)
Theorem hlt_GROUP_KERNEL_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_trivial_group A G = 1 -> hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8284 / GROUP_IMAGE_FROM_TRIVIAL_GROUP   (hash md5:b832e0d7d316ae131c2a968c7bfc13e7)
Theorem hlt_GROUP_IMAGE_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_trivial_group A G = 1 -> hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = hl_INSERT B (hl_group_id B H) (hl_EMPTY B).
Admitted.

// HOL Light: Library/grouptheory.ml:8291 / GROUP_KERNEL_TO_TRIVIAL_GROUP   (hash md5:5cb1d5c727bd18f992d3589aec5c56a1)
Theorem hlt_GROUP_KERNEL_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_trivial_group B H = 1 -> hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8298 / GROUP_IMAGE_TO_TRIVIAL_GROUP   (hash md5:b24e32e14349f8c50f9e0dd3b16bf231)
Theorem hlt_GROUP_IMAGE_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_trivial_group B H = 1 -> hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = hl_group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:8307 / FIRST_GROUP_ISOMORPHISM_THEOREM   (hash md5:a09c3399a43762878ce5fc6cb960f116)
Theorem hlt_FIRST_GROUP_ISOMORPHISM_THEOREM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> hl_isomorphic_group (2 :^: A) B (hl_quotient_group A G (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f)) (hl_subgroup_generated B G' (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8332 / FIRST_GROUP_EPIMORPHISM_THEOREM   (hash md5:9403878b13be697415e72b88117fdbc5)
Theorem hlt_FIRST_GROUP_EPIMORPHISM_THEOREM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall G' :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> hl_isomorphic_group (2 :^: A) B (hl_quotient_group A G (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f)) G' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8340 / GROUP_HOMOMORPHISM_PREIMAGE_IMAGE_RIGHT   (hash md5:b2a389d2cd52213112779e7d3445922d)
Theorem hlt_GROUP_HOMOMORPHISM_PREIMAGE_IMAGE_RIGHT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall s :e 2 :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_GSPEC A (fun GEN_PVAR_978 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_978 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) (hl_IMAGE A B f s) = 1 then 1 else 0) x = 1 then 1 else 0) = hl_group_setmul A G s (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f).
Admitted.

// HOL Light: Library/grouptheory.ml:8371 / GROUP_HOMOMORPHISM_PREIMAGE_IMAGE_LEFT   (hash md5:6120c1ad6fd206c8578ef4eaa4c3eb27)
Theorem hlt_GROUP_HOMOMORPHISM_PREIMAGE_IMAGE_LEFT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall s :e 2 :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_GSPEC A (fun GEN_PVAR_979 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_979 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) (hl_IMAGE A B f s) = 1 then 1 else 0) x = 1 then 1 else 0) = hl_group_setmul A G (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) s.
Admitted.

// HOL Light: Library/grouptheory.ml:8403 / GROUP_HOMOMORPHISM_IMAGE_PREIMAGE   (hash md5:48da75a643294d8fc97c14916f794e65)
Theorem hlt_GROUP_HOMOMORPHISM_IMAGE_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall t :e 2 :^: B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_980 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_980 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = hl_INTER B t (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f).
Admitted.

// HOL Light: Library/grouptheory.ml:8410 / GROUP_HOMOMORPHISM_PREIMAGE_IMAGE   (hash md5:79de45331c5a1d3b37ed9b17257140d1)
Theorem hlt_GROUP_HOMOMORPHISM_PREIMAGE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall s :e 2 :^: A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_SUBSET A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) s = 1 /\ hl_subgroup_of A s G = 1) -> hl_GSPEC A (fun GEN_PVAR_981 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_981 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) (hl_IMAGE A B f s) = 1 then 1 else 0) x = 1 then 1 else 0) = s.
Admitted.

// HOL Light: Library/grouptheory.ml:8425 / GROUP_HOMOMORPHISM_IMAGE_PREIMAGE_EQ   (hash md5:da31f088b73f875354a80e9bfbaf98a1)
Theorem hlt_GROUP_HOMOMORPHISM_IMAGE_PREIMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall t :e 2 :^: B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET B t (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) = 1 -> hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_982 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_982 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = t.
Admitted.

// HOL Light: Library/grouptheory.ml:8431 / GROUP_EPIMORPHISM_SUBGROUP_CORRESPONDENCE   (hash md5:ffb1a85af431218ac79fd6d89ff71a81)
Theorem hlt_GROUP_EPIMORPHISM_SUBGROUP_CORRESPONDENCE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall k :e 2 :^: B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> (hl_subgroup_of B k H = 1 <-> exists j :e 2 :^: A, hl_subgroup_of A j G = 1 /\ (hl_SUBSET A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) j = 1 /\ (hl_GSPEC A (fun GEN_PVAR_984 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_984 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) k = 1 then 1 else 0) x = 1 then 1 else 0) = j /\ hl_IMAGE A B f j = k))).
Admitted.

// HOL Light: Library/grouptheory.ml:8450 / GROUP_EPIMORPHISM_SUBGROUP_CORRESPONDENCE_ALT   (hash md5:c93395f9df280761320b0e8fae898b10)
Theorem hlt_GROUP_EPIMORPHISM_SUBGROUP_CORRESPONDENCE_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall j :e 2 :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> (hl_subgroup_of A j G = 1 /\ hl_SUBSET A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) j = 1 <-> exists k :e 2 :^: B, hl_subgroup_of B k H = 1 /\ (hl_GSPEC A (fun GEN_PVAR_986 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_986 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) k = 1 then 1 else 0) x = 1 then 1 else 0) = j /\ hl_IMAGE A B f j = k)).
Admitted.

// HOL Light: Library/grouptheory.ml:8485 / NORMAL_SUBGROUP_OF_HOMOMORPHIC_PREIMAGE   (hash md5:604c77a8f0b68b7c92e93d60b3abdbec)
Theorem hlt_NORMAL_SUBGROUP_OF_HOMOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall j :e 2 :^: B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_normal_subgroup_of B j H = 1 -> hl_normal_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_987 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_987 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) j = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8496 / NORMAL_SUBGROUP_OF_EPIMORPHIC_IMAGE   (hash md5:418c559812d39fa92d6806364f03fb5b)
Theorem hlt_NORMAL_SUBGROUP_OF_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall n :e 2 :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_normal_subgroup_of A n G = 1 -> hl_normal_subgroup_of B (hl_IMAGE A B f n) H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8518 / NORMAL_SUBGROUP_OF_EPIMORPHIC_PREIMAGE_EQ   (hash md5:4c9234f3c636d1c94a6011bee0f0252b)
Theorem hlt_NORMAL_SUBGROUP_OF_EPIMORPHIC_PREIMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall j :e 2 :^: A, forall k :e 2 :^: B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_subgroup_of B k H = 1 /\ hl_GSPEC A (fun GEN_PVAR_988 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_988 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) k = 1 then 1 else 0) x = 1 then 1 else 0) = j) -> (hl_normal_subgroup_of A j G = 1 <-> hl_normal_subgroup_of B k H = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8533 / GROUP_EPIMORPHISM_NORMAL_SUBGROUP_CORRESPONDENCE   (hash md5:ce024a155b151631c00cd6c4b27e118f)
Theorem hlt_GROUP_EPIMORPHISM_NORMAL_SUBGROUP_CORRESPONDENCE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall k :e 2 :^: B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> (hl_normal_subgroup_of B k H = 1 <-> exists j :e 2 :^: A, hl_normal_subgroup_of A j G = 1 /\ (hl_SUBSET A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) j = 1 /\ (hl_GSPEC A (fun GEN_PVAR_989 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_989 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) k = 1 then 1 else 0) x = 1 then 1 else 0) = j /\ hl_IMAGE A B f j = k))).
Admitted.

// HOL Light: Library/grouptheory.ml:8545 / GROUP_EPIMORPHISM_NORMAL_SUBGROUP_CORRESPONDENCE_ALT   (hash md5:35140daac370af87cc95c6a6ab664663)
Theorem hlt_GROUP_EPIMORPHISM_NORMAL_SUBGROUP_CORRESPONDENCE_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall j :e 2 :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> (hl_normal_subgroup_of A j G = 1 /\ hl_SUBSET A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) j = 1 <-> exists k :e 2 :^: B, hl_normal_subgroup_of B k H = 1 /\ (hl_GSPEC A (fun GEN_PVAR_990 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_990 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) k = 1 then 1 else 0) x = 1 then 1 else 0) = j /\ hl_IMAGE A B f j = k)).
Admitted.

// HOL Light: Library/grouptheory.ml:8556 / SUBGROUP_OF_ISOMORPHIC_IMAGE_EQ   (hash md5:7e501120f29d53da6fe191b7f5b3d8c3)
Theorem hlt_SUBGROUP_OF_ISOMORPHIC_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall j :e 2 :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET A j (hl_group_carrier A G) = 1 -> (hl_subgroup_of B (hl_IMAGE A B f j) H = 1 <-> hl_subgroup_of A j G = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8572 / NORMAL_SUBGROUP_OF_ISOMORPHIC_IMAGE_EQ   (hash md5:790c68fad17bc96da960a5a715ed978b)
Theorem hlt_NORMAL_SUBGROUP_OF_ISOMORPHIC_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall j :e 2 :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_SUBSET A j (hl_group_carrier A G) = 1 -> (hl_normal_subgroup_of B (hl_IMAGE A B f j) H = 1 <-> hl_normal_subgroup_of A j G = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8588 / GROUP_CONJUGATE_SUBGROUP_OF   (hash md5:f4038dc69162d9dbf94e6b3e348e44c2)
Theorem hlt_GROUP_CONJUGATE_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_group_conjugate A G s t = 1 -> (hl_subgroup_of A s G = 1 <-> hl_subgroup_of A t G = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8599 / GROUP_CONJUGATE_NORMAL_SUBGROUP_OF   (hash md5:06f83c0fbe345a80094c104f0a594ef8)
Theorem hlt_GROUP_CONJUGATE_NORMAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: A, hl_group_conjugate A G s t = 1 -> (hl_normal_subgroup_of A s G = 1 <-> hl_normal_subgroup_of A t G = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8610 / NORMAL_SUBGROUP_CONJUGATE   (hash md5:491ab39232eba4701b14c82da4ed58cd)
Theorem hlt_NORMAL_SUBGROUP_CONJUGATE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1 /\ forall n' :e 2 :^: A, hl_group_conjugate A G n n' = 1 -> n' = n.
Admitted.

// HOL Light: Library/grouptheory.ml:8618 / NORMAL_SUBGROUP_CONJUGATE_EQ   (hash md5:dae009bcb27cb09d1b0e7b2e7d1e9382)
Theorem hlt_NORMAL_SUBGROUP_CONJUGATE_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n n' :e 2 :^: A, hl_normal_subgroup_of A n G = 1 \/ hl_normal_subgroup_of A n' G = 1 -> (hl_group_conjugate A G n n' = 1 <-> n = n').
Admitted.

// HOL Light: Library/grouptheory.ml:8625 / QUOTIENT_SUBGROUP_CORRESPONDENCE   (hash md5:5de7cb35e63e16d57e4cdac50c146b47)
Theorem hlt_QUOTIENT_SUBGROUP_CORRESPONDENCE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall j :e 2 :^: A, forall k :e 2 :^: (2 :^: A), hl_normal_subgroup_of A j G = 1 -> (hl_subgroup_of (2 :^: A) k (hl_quotient_group A G j) = 1 <-> exists i :e 2 :^: A, hl_subgroup_of A i G = 1 /\ (hl_SUBSET A j i = 1 /\ (hl_GSPEC A (fun GEN_PVAR_992 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_992 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN (2 :^: A) (hl_right_coset A G j x) k = 1 then 1 else 0) x = 1 then 1 else 0) = i /\ hl_IMAGE A (2 :^: A) (hl_right_coset A G j) i = k))).
Admitted.

// HOL Light: Library/grouptheory.ml:8637 / QUOTIENT_NORMAL_SUBGROUP_CORRESPONDENCE   (hash md5:0aff3b9b809a6e95e187985d8be31a13)
Theorem hlt_QUOTIENT_NORMAL_SUBGROUP_CORRESPONDENCE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall j :e 2 :^: A, forall k :e 2 :^: (2 :^: A), hl_normal_subgroup_of A j G = 1 -> (hl_normal_subgroup_of (2 :^: A) k (hl_quotient_group A G j) = 1 <-> exists i :e 2 :^: A, hl_normal_subgroup_of A i G = 1 /\ (hl_SUBSET A j i = 1 /\ (hl_GSPEC A (fun GEN_PVAR_993 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_993 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN (2 :^: A) (hl_right_coset A G j x) k = 1 then 1 else 0) x = 1 then 1 else 0) = i /\ hl_IMAGE A (2 :^: A) (hl_right_coset A G j) i = k))).
Admitted.

// HOL Light: Library/grouptheory.ml:8650 / FIRST_GROUP_ISOMORPHISM_THEOREM_GEN   (hash md5:ebce582aa017bc1a902d530c3098e66a)
Theorem hlt_FIRST_GROUP_ISOMORPHISM_THEOREM_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall j :e 2 :^: A, forall k :e 2 :^: B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_normal_subgroup_of B k H = 1 /\ hl_GSPEC A (fun GEN_PVAR_994 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_994 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B (f x) k = 1 then 1 else 0) x = 1 then 1 else 0) = j) -> hl_isomorphic_group (2 :^: A) (2 :^: B) (hl_quotient_group A G j) (hl_quotient_group B H k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8672 / FIRST_GROUP_ISOMORPHISM_THEOREM_GEN_ALT   (hash md5:70d79193616f51fbe5988880d3070b92)
Theorem hlt_FIRST_GROUP_ISOMORPHISM_THEOREM_GEN_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall j :e 2 :^: A, forall k :e 2 :^: B, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_normal_subgroup_of A j G = 1 /\ (hl_SUBSET A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) j = 1 /\ hl_IMAGE A B f j = k)) -> hl_isomorphic_group (2 :^: A) (2 :^: B) (hl_quotient_group A G j) (hl_quotient_group B H k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8681 / SIMPLE_GROUP_EPIMORPHIC_IMAGE_EQ   (hash md5:e31041a22bf22b7a5e516511e6fb1b55)
Theorem hlt_SIMPLE_GROUP_EPIMORPHIC_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> ((forall k :e 2 :^: B, hl_normal_subgroup_of B k H = 1 -> k = hl_INSERT B (hl_group_id B H) (hl_EMPTY B) \/ k = hl_group_carrier B H) <-> forall h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 /\ hl_PSUBSET A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) h = 1 -> h = hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8706 / NO_PROPER_SUBGROUP_EPIMORPHIC_IMAGE_EQ   (hash md5:3d8a6b1ded22bd922f5ce3361ccc70c1)
Theorem hlt_NO_PROPER_SUBGROUP_EPIMORPHIC_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 -> ((forall k :e 2 :^: B, hl_subgroup_of B k H = 1 -> k = hl_INSERT B (hl_group_id B H) (hl_EMPTY B) \/ k = hl_group_carrier B H) <-> forall h :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_PSUBSET A (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) h = 1 -> h = hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8730 / MAXIMAL_SUBGROUP   (hash md5:cdab9fcb55192a461e0e8c7e43381d70)
Theorem hlt_MAXIMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> ((forall h :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_PSUBSET A n h = 1 -> h = hl_group_carrier A G) <-> forall k :e 2 :^: (2 :^: A), hl_subgroup_of (2 :^: A) k (hl_quotient_group A G n) = 1 -> k = hl_INSERT (2 :^: A) (hl_group_id (2 :^: A) (hl_quotient_group A G n)) (hl_EMPTY (2 :^: A)) \/ k = hl_group_carrier (2 :^: A) (hl_quotient_group A G n)).
Admitted.

// HOL Light: Library/grouptheory.ml:8743 / MAXIMAL_NORMAL_SUBGROUP   (hash md5:381498a24b943cff16666047f36ca8fd)
Theorem hlt_MAXIMAL_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> ((forall h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 /\ hl_PSUBSET A n h = 1 -> h = hl_group_carrier A G) <-> forall k :e 2 :^: (2 :^: A), hl_normal_subgroup_of (2 :^: A) k (hl_quotient_group A G n) = 1 -> k = hl_INSERT (2 :^: A) (hl_group_id (2 :^: A) (hl_quotient_group A G n)) (hl_EMPTY (2 :^: A)) \/ k = hl_group_carrier (2 :^: A) (hl_quotient_group A G n)).
Admitted.

// HOL Light: Library/grouptheory.ml:8761 / trivial_homomorphism   (hash md5:77bfa060fc136183aea38c01e324970f)
Theorem hlt_trivial_homomorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall f :e B :^: A, forall G' :e hl_ty_group B, hl_trivial_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> f x = hl_group_id B G'.
Admitted.

// HOL Light: Library/grouptheory.ml:8766 / GROUP_KERNEL_IMAGE_TRIVIAL   (hash md5:3b26ec9b04fa3869cd5de8ce112acd15)
Theorem hlt_GROUP_KERNEL_IMAGE_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 -> (hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_group_carrier A G <-> hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_INSERT B (hl_group_id B G') (hl_EMPTY B)).
Admitted.

// HOL Light: Library/grouptheory.ml:8775 / TRIVIAL_HOMOMORPHISM_GROUP_KERNEL   (hash md5:fc57fc40095cdaba518b550347835eb9)
Theorem hlt_TRIVIAL_HOMOMORPHISM_GROUP_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_trivial_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_group_kernel A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8784 / TRIVIAL_HOMOMORPHISM_GROUP_IMAGE   (hash md5:f33ebd6f33bb12c135d8203ca52843f2)
Theorem hlt_TRIVIAL_HOMOMORPHISM_GROUP_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall G' :e hl_ty_group B, hl_trivial_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = 1 /\ hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G G') f = hl_INSERT B (hl_group_id B G') (hl_EMPTY B).
Admitted.

// HOL Light: Library/grouptheory.ml:8791 / TRIVIAL_HOMOMORPHISM_TRIVIAL   (hash md5:b8a775b1756ab1f27f1dcb1e8ffed71b)
Theorem hlt_TRIVIAL_HOMOMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group B, forall H :e hl_ty_group A, hl_trivial_homomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) G H) (fun x :e B => hl_group_id A H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8795 / GROUP_MONOMORPHISM_TRIVIAL   (hash md5:f84e0643b2b2bd6f190cbda70bd27b10)
Theorem hlt_GROUP_MONOMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group B, forall H :e hl_ty_group A, hl_group_monomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) G H) (fun x :e B => hl_group_id A H) = 1 <-> hl_trivial_group B G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8800 / GROUP_EPIMORPHISM_TRIVIAL   (hash md5:647b37feae578b26b41dd9dae3f98ed8)
Theorem hlt_GROUP_EPIMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group B, forall H :e hl_ty_group A, hl_group_epimorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) G H) (fun x :e B => hl_group_id A H) = 1 <-> hl_trivial_group A H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8807 / GROUP_ISOMORPHISM_TRIVIAL   (hash md5:84ba4c33c317fabb53b693b294816fc9)
Theorem hlt_GROUP_ISOMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group B, forall H :e hl_ty_group A, hl_group_isomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) G H) (fun x :e B => hl_group_id A H) = 1 <-> hl_trivial_group B G = 1 /\ hl_trivial_group A H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8819 / group_element_order   (hash md5:9cfa321b79ed9eb5d14cfa95225b37c1)
Theorem hlt_group_element_order_thm : forall A:set, A <> Empty -> forall x :e A, forall G :e hl_ty_group A, hl_group_element_order A G x = hl_select omega (fun d :e omega => if forall n :e omega, hl_group_pow A G x n = hl_group_id A G <-> hl_num_divides d n = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:8823 / GROUP_POW_EQ_ID   (hash md5:a8855df4b25e0c69e6e7b0ba84db460c)
Theorem hlt_GROUP_POW_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_pow A G x n = hl_group_id A G <-> hl_num_divides (hl_group_element_order A G x) n = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8850 / GROUP_POW_EQ_ID_DIVISOR   (hash md5:51053a1aafe788801f76ad9e5f5c0973)
Theorem hlt_GROUP_POW_EQ_ID_DIVISOR : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_group_pow A G x m = hl_group_id A G /\ hl_num_divides m n = 1) -> hl_group_pow A G x n = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8858 / GROUP_POW_ELEMENT_ORDER   (hash md5:edf8fe03764cf9d73953d67d55ab6ac2)
Theorem hlt_GROUP_POW_ELEMENT_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_pow A G x (hl_group_element_order A G x) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8863 / GROUP_ZPOW_EQ_ID   (hash md5:622ca246112c06474a134a3e3c64b940)
Theorem hlt_GROUP_ZPOW_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_zpow A G x n = hl_group_id A G <-> hl_int_divides (hl_int_of_num (hl_group_element_order A G x)) n = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8875 / GROUP_ZPOW_EQ_ID_DIVISOR   (hash md5:7ada509117a71190eb7ab3b2bd04fffa)
Theorem hlt_GROUP_ZPOW_EQ_ID_DIVISOR : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_group_zpow A G x m = hl_group_id A G /\ hl_int_divides m n = 1) -> hl_group_zpow A G x n = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8883 / GROUP_ZPOW_EQ_ALT   (hash md5:9ea560738c27ee24b5021ce6c71498b7)
Theorem hlt_GROUP_ZPOW_EQ_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_zpow A G x m = hl_group_zpow A G x n <-> hl_int_divides (hl_int_of_num (hl_group_element_order A G x)) (hl_int_sub n m) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8891 / GROUP_ZPOW_EQ   (hash md5:e03b9486d8b9fa212d531e5bfc561c94)
Theorem hlt_GROUP_ZPOW_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_zpow A G x m = hl_group_zpow A G x n <-> hl_sym_3d3d hl_ty_int m n (hl_int_mod (hl_int_of_num (hl_group_element_order A G x))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8899 / GROUP_POW_EQ   (hash md5:4fd1c4dd0bea924c34caabb9ed80c15d)
Theorem hlt_GROUP_POW_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_pow A G x m = hl_group_pow A G x n <-> hl_sym_3d3d omega m n (hl_num_mod (hl_group_element_order A G x)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8906 / GROUP_ZPOW_REM_ELEMENT_ORDER   (hash md5:dad2330a008866691d24002898293295)
Theorem hlt_GROUP_ZPOW_REM_ELEMENT_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e hl_ty_int, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_rem n (hl_int_of_num (hl_group_element_order A G x))) = hl_group_zpow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:8914 / GROUP_POW_MOD_ELEMENT_ORDER   (hash md5:810cb1c36dec0f9d1ebe52cddb2422e6)
Theorem hlt_GROUP_POW_MOD_ELEMENT_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_pow A G x (hl_MOD n (hl_group_element_order A G x)) = hl_group_pow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:8922 / GROUP_ELEMENT_ORDER_EQ_0   (hash md5:6cfd11c4c7a78b9cdb7a967bd140d8c9)
Theorem hlt_GROUP_ELEMENT_ORDER_EQ_0 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_element_order A G x = hl_NUMERAL hl_zero <-> forall n :e omega, ~ n = hl_NUMERAL hl_zero -> ~ hl_group_pow A G x n = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8930 / GROUP_ELEMENT_ORDER_UNIQUE   (hash md5:0dec4e86508e4229f1f4d721675db1e9)
Theorem hlt_GROUP_ELEMENT_ORDER_UNIQUE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall d :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_element_order A G x = d <-> forall n :e omega, hl_group_pow A G x n = hl_group_id A G <-> hl_num_divides d n = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:8940 / GROUP_ELEMENT_ORDER_EQ_1   (hash md5:5ab27b08cb1abd3cf0addaf44d19da14)
Theorem hlt_GROUP_ELEMENT_ORDER_EQ_1 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_element_order A G x = hl_NUMERAL (hl_BIT1 hl_zero) <-> x = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8947 / GROUP_ELEMENT_ORDER_UNIQUE_PRIME   (hash md5:521eda3d3692ce7fcec0de7035eae334)
Theorem hlt_GROUP_ELEMENT_ORDER_UNIQUE_PRIME : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall p :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_prime p = 1 -> (hl_group_element_order A G x = p <-> ~ x = hl_group_id A G /\ hl_group_pow A G x p = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8956 / GROUP_ELEMENT_ORDER_ID   (hash md5:55a0d144f19194a7250d89d346ce433d)
Theorem hlt_GROUP_ELEMENT_ORDER_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_group_element_order A G (hl_group_id A G) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/grouptheory.ml:8960 / GROUP_ELEMENT_ORDER_INV   (hash md5:1e5275f2ca3bc5c1034c73991801bc80)
Theorem hlt_GROUP_ELEMENT_ORDER_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_element_order A G (hl_group_inv A G x) = hl_group_element_order A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:8967 / GROUP_POW_GCD_EQ_ID   (hash md5:67de937ebe8bc74bc79a744f25951911)
Theorem hlt_GROUP_POW_GCD_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_pow A G x (hl_num_gcd (hl_pair omega omega m n)) = hl_group_id A G <-> hl_group_pow A G x m = hl_group_id A G /\ hl_group_pow A G x n = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8974 / GROUP_POW_COPRIME_EQ_ID   (hash md5:1efafe48f2ae36139abb70834513f7dd)
Theorem hlt_GROUP_POW_COPRIME_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1 -> (hl_group_pow A G x m = hl_group_id A G /\ hl_group_pow A G x n = hl_group_id A G <-> x = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8981 / FINITE_GROUP_ELEMENT_ORDER_NONZERO   (hash md5:a2a2908c9af788ec9f8e7120d60bb1e8)
Theorem hlt_FINITE_GROUP_ELEMENT_ORDER_NONZERO : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> ~ hl_group_element_order A G x = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/grouptheory.ml:8995 / GROUP_ELEMENT_ORDER_POW   (hash md5:601ee4316f2244d0ff4ade487f9e73a0)
Theorem hlt_GROUP_ELEMENT_ORDER_POW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall k :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ (~ k = hl_NUMERAL hl_zero /\ hl_num_divides k (hl_group_element_order A G x) = 1) -> hl_group_element_order A G (hl_group_pow A G x k) = hl_DIV (hl_group_element_order A G x) k.
Admitted.

// HOL Light: Library/grouptheory.ml:9006 / GROUP_ELEMENT_ORDER_POW_GEN   (hash md5:c1dc6ea7d3c89f0f01720fc91a1b8a3a)
Theorem hlt_GROUP_ELEMENT_ORDER_POW_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall k :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_element_order A G (hl_group_pow A G x k) = hl_COND omega (if k = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_DIV (hl_group_element_order A G x) (hl_num_gcd (hl_pair omega omega (hl_group_element_order A G x) k))).
Admitted.

// HOL Light: Library/grouptheory.ml:9027 / GROUP_ELEMENT_ORDER_MUL_DIVIDES_GEN   (hash md5:56d55c96c1ace0b2c5b148fa9cfa553c)
Theorem hlt_GROUP_ELEMENT_ORDER_MUL_DIVIDES_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_group_mul A G x y = hl_group_mul A G y x /\ (hl_num_divides (hl_group_element_order A G x) n = 1 /\ hl_num_divides (hl_group_element_order A G y) n = 1))) -> hl_num_divides (hl_group_element_order A G (hl_group_mul A G x y)) n = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9039 / ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES_GEN   (hash md5:6ddc9144d646b4a7fba145f419d7d488)
Theorem hlt_ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, forall n :e omega, hl_abelian_group A G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_num_divides (hl_group_element_order A G x) n = 1 /\ hl_num_divides (hl_group_element_order A G y) n = 1))) -> hl_num_divides (hl_group_element_order A G (hl_group_mul A G x y)) n = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9050 / GROUP_ELEMENT_ORDER_MUL_DIVIDES_LCM   (hash md5:ea1b09331348d8809a64d6874680407d)
Theorem hlt_GROUP_ELEMENT_ORDER_MUL_DIVIDES_LCM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_mul A G y x) -> hl_num_divides (hl_group_element_order A G (hl_group_mul A G x y)) (hl_num_lcm (hl_pair omega omega (hl_group_element_order A G x) (hl_group_element_order A G y))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9060 / ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES_LCM   (hash md5:22fb041932cc5c363ec4b4838a8b307e)
Theorem hlt_ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES_LCM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_abelian_group A G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_num_divides (hl_group_element_order A G (hl_group_mul A G x y)) (hl_num_lcm (hl_pair omega omega (hl_group_element_order A G x) (hl_group_element_order A G y))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9070 / GROUP_ELEMENT_ORDER_HOMOMORPHIC_IMAGE   (hash md5:e91e9454195c7c3119551b0331b4bc33)
Theorem hlt_GROUP_ELEMENT_ORDER_HOMOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall x :e A, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_num_divides (hl_group_element_order B H (f x)) (hl_group_element_order A G x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9082 / GROUP_ELEMENT_ORDER_MONOMORPHIC_IMAGE   (hash md5:c8ec76ee66682c72d78c49d5221cf49c)
Theorem hlt_GROUP_ELEMENT_ORDER_MONOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall x :e A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_element_order B H (f x) = hl_group_element_order A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:9090 / ISOMORPHIC_GROUP_TORSION   (hash md5:cfa23d2c4fd966bd31f667a7d5a666b3)
Theorem hlt_ISOMORPHIC_GROUP_TORSION : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: omega, forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 -> ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> P (hl_group_element_order A G x) = 1) <-> forall y :e B, hl_IN B y (hl_group_carrier B H) = 1 -> P (hl_group_element_order B H y) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:9101 / GROUP_ELEMENT_ORDER_CONJUGATION   (hash md5:eb55455e347f842143855619ff56fab9)
Theorem hlt_GROUP_ELEMENT_ORDER_CONJUGATION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_group_element_order A G (hl_group_conjugation A G x y) = hl_group_element_order A G y.
Admitted.

// HOL Light: Library/grouptheory.ml:9112 / GROUP_ELEMENT_ORDER_MUL_DIVIDES   (hash md5:d71914e9fbef586e4dfdb1e72d2ac619)
Theorem hlt_GROUP_ELEMENT_ORDER_MUL_DIVIDES : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_mul A G y x) -> hl_num_divides (hl_group_element_order A G (hl_group_mul A G x y)) (hl_mul (hl_group_element_order A G x) (hl_group_element_order A G y)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9125 / ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES   (hash md5:59d21eb13014741b80f495bd31ee9792)
Theorem hlt_ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_abelian_group A G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> hl_num_divides (hl_group_element_order A G (hl_group_mul A G x y)) (hl_mul (hl_group_element_order A G x) (hl_group_element_order A G y)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9132 / GROUP_POW_MUL_EQ_ID_SYM   (hash md5:8ea3b27f9606a94611a37982735e4a9b)
Theorem hlt_GROUP_POW_MUL_EQ_ID_SYM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> (hl_group_pow A G (hl_group_mul A G x y) n = hl_group_id A G <-> hl_group_pow A G (hl_group_mul A G y x) n = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:9155 / GROUP_ELEMENT_ORDER_MUL_SYM   (hash md5:792176d8f2281d7834bcb9353f2f677d)
Theorem hlt_GROUP_ELEMENT_ORDER_MUL_SYM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_group_element_order A G (hl_group_mul A G x y) = hl_group_element_order A G (hl_group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:9163 / GROUP_ELEMENT_ORDER_UNIQUE_ALT   (hash md5:ca69e9863139c6c7f9e3079542dd27e3)
Theorem hlt_GROUP_ELEMENT_ORDER_UNIQUE_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ ~ n = hl_NUMERAL hl_zero -> (hl_group_element_order A G x = n <-> hl_group_pow A G x n = hl_group_id A G /\ forall m :e omega, hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_lt m n = 1 -> ~ hl_group_pow A G x m = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:9190 / GROUP_ELEMENT_ORDER_EQ_2   (hash md5:3ef2f0848bcd25e5c6d287f3dc2fc3e8)
Theorem hlt_GROUP_ELEMENT_ORDER_EQ_2 : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_element_order A G x = hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)) <-> ~ x = hl_group_id A G /\ hl_group_pow A G x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:9200 / GROUP_ELEMENT_ORDER_EQ_2_ALT   (hash md5:1aff5dd4ccc61a13c77b9f32d838e5f9)
Theorem hlt_GROUP_ELEMENT_ORDER_EQ_2_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_element_order A G x = hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)) <-> ~ x = hl_group_id A G /\ hl_group_inv A G x = x).
Admitted.

// HOL Light: Library/grouptheory.ml:9207 / GROUP_ELEMENT_ORDER_POW_DIVIDES   (hash md5:f7a44a797deeaf11e0f1034b699bc850)
Theorem hlt_GROUP_ELEMENT_ORDER_POW_DIVIDES : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 -> hl_num_divides (hl_group_element_order A G (hl_group_pow A G x n)) (hl_group_element_order A G x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9216 / GROUP_ELEMENT_ORDER_MUL_EQ   (hash md5:c2be4a3469cdae0110d357026d837817)
Theorem hlt_GROUP_ELEMENT_ORDER_MUL_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_group_mul A G x y = hl_group_mul A G y x /\ hl_num_coprime (hl_pair omega omega (hl_group_element_order A G x) (hl_group_element_order A G y)) = 1)) -> hl_group_element_order A G (hl_group_mul A G x y) = hl_mul (hl_group_element_order A G x) (hl_group_element_order A G y).
Admitted.

// HOL Light: Library/grouptheory.ml:9243 / GROUP_ELEMENT_ORDER_EQ_MUL_GEN   (hash md5:1cb4390d50547e4e1866dcf1832cae5a)
Theorem hlt_GROUP_ELEMENT_ORDER_EQ_MUL_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall k n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ ~ k = hl_NUMERAL hl_zero -> (hl_group_element_order A G x = hl_mul k n <-> hl_num_divides k (hl_group_element_order A G x) = 1 /\ hl_group_element_order A G (hl_group_pow A G x k) = n).
Admitted.

// HOL Light: Library/grouptheory.ml:9257 / GROUP_ELEMENT_ORDER_EQ_MUL   (hash md5:e392db7991e594688420a2ea39b27a29)
Theorem hlt_GROUP_ELEMENT_ORDER_EQ_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall k n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ (~ k = hl_NUMERAL hl_zero /\ hl_num_divides k n = 1) -> (hl_group_element_order A G x = hl_mul k n <-> hl_group_element_order A G (hl_group_pow A G x k) = n).
Admitted.

// HOL Light: Library/grouptheory.ml:9265 / ABELIAN_GROUP_ELEMENT_ORDER_MUL_EQ   (hash md5:5c16c4c380b7b9258a4a328068e7f647)
Theorem hlt_ABELIAN_GROUP_ELEMENT_ORDER_MUL_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_abelian_group A G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_num_coprime (hl_pair omega omega (hl_group_element_order A G x) (hl_group_element_order A G y)) = 1)) -> hl_group_element_order A G (hl_group_mul A G x y) = hl_mul (hl_group_element_order A G x) (hl_group_element_order A G y).
Admitted.

// HOL Light: Library/grouptheory.ml:9274 / GROUP_ELEMENT_ORDER_LCM_EXISTS   (hash md5:f7f7c01b615a259442f6f2972899df72)
Theorem hlt_GROUP_ELEMENT_ORDER_LCM_EXISTS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_mul A G x y = hl_group_mul A G y x) -> exists z :e A, hl_IN A z (hl_group_carrier A G) = 1 /\ hl_group_element_order A G z = hl_num_lcm (hl_pair omega omega (hl_group_element_order A G x) (hl_group_element_order A G y)).
Admitted.

// HOL Light: Library/grouptheory.ml:9311 / ABELIAN_GROUP_ELEMENT_ORDER_LCM_EXISTS   (hash md5:28dd68fc01580a0810f2f943bc16c543)
Theorem hlt_ABELIAN_GROUP_ELEMENT_ORDER_LCM_EXISTS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_abelian_group A G = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1) -> exists z :e A, hl_IN A z (hl_group_carrier A G) = 1 /\ hl_group_element_order A G z = hl_num_lcm (hl_pair omega omega (hl_group_element_order A G x) (hl_group_element_order A G y)).
Admitted.

// HOL Light: Library/grouptheory.ml:9321 / ABELIAN_GROUP_ORDER_DIVIDES_MAXIMAL   (hash md5:b33f07dc3335f206f08057654e105132)
Theorem hlt_ABELIAN_GROUP_ORDER_DIVIDES_MAXIMAL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> exists x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ forall y :e A, hl_IN A y (hl_group_carrier A G) = 1 -> hl_num_divides (hl_group_element_order A G y) (hl_group_element_order A G x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9341 / ABELIAN_GROUP_ELEMENT_ORDER_DIVIDES_MAXIMAL_ALT   (hash md5:588413a92716e6853b55ff78da86623e)
Theorem hlt_ABELIAN_GROUP_ELEMENT_ORDER_DIVIDES_MAXIMAL_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> exists x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ forall y :e A, hl_IN A y (hl_group_carrier A G) = 1 -> hl_group_pow A G y (hl_group_element_order A G x) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:9350 / GROUP_ELEMENT_ORDER_SUBGROUP_GENERATED   (hash md5:acdb31106a5c0481c38e3a96ebbf88a2)
Theorem hlt_GROUP_ELEMENT_ORDER_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_group_element_order A (hl_subgroup_generated A G h) x = hl_group_element_order A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:9357 / GROUP_ELEMENT_ORDER_PROD_GROUP   (hash md5:c16abfea94cc6411c971fe7746d0d823)
Theorem hlt_GROUP_ELEMENT_ORDER_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall x :e A, forall y :e B, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN B y (hl_group_carrier B H) = 1 -> hl_group_element_order (A :*: B) (hl_prod_group A B G H) (hl_pair A B x y) = hl_num_lcm (hl_pair omega omega (hl_group_element_order A G x) (hl_group_element_order B H y)).
Admitted.

// HOL Light: Library/grouptheory.ml:9366 / GROUP_ELEMENT_ORDER_PROD_GROUP_ALT   (hash md5:7689b86dd93216bb7b4e2afdfdfd7e32)
Theorem hlt_GROUP_ELEMENT_ORDER_PROD_GROUP_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall z :e A :*: B, hl_IN (A :*: B) z (hl_group_carrier (A :*: B) (hl_prod_group A B G H)) = 1 -> hl_group_element_order (A :*: B) (hl_prod_group A B G H) z = hl_num_lcm (hl_pair omega omega (hl_group_element_order A G (hl_FST A B z)) (hl_group_element_order B H (hl_SND A B z))).
Admitted.

// HOL Light: Library/grouptheory.ml:9374 / GROUP_ELEMENT_ORDER_SUM_GROUP   (hash md5:00ebe00fbf201c8f8cb9eed5b01b799d)
Theorem hlt_GROUP_ELEMENT_ORDER_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall x :e A :^: K, hl_IN (A :^: K) x (hl_group_carrier (A :^: K) (hl_sum_group K A k G)) = 1 -> hl_group_element_order (A :^: K) (hl_sum_group K A k G) x = hl_iterate omega K (fun m :e omega => fun n :e omega => hl_num_lcm (hl_pair omega omega m n)) k (fun i :e K => hl_group_element_order A (G i) (x i)).
Admitted.

// HOL Light: Library/grouptheory.ml:9392 / GROUP_ELEMENT_ORDER_SUM_GROUP_EQ_0   (hash md5:4e440c05b6391b2b4bbec173fe212734)
Theorem hlt_GROUP_ELEMENT_ORDER_SUM_GROUP_EQ_0 : forall A K:set, A <> Empty -> K <> Empty -> forall G :e hl_ty_group A :^: K, forall k :e 2 :^: K, forall x :e A :^: K, hl_IN (A :^: K) x (hl_group_carrier (A :^: K) (hl_sum_group K A k G)) = 1 -> (hl_group_element_order (A :^: K) (hl_sum_group K A k G) x = hl_NUMERAL hl_zero <-> exists i :e K, hl_IN K i k = 1 /\ hl_group_element_order A (G i) (x i) = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/grouptheory.ml:9404 / GROUP_ELEMENT_ORDER_COPRIME_DECOMP_EXPLICIT   (hash md5:b434a76a2af56aec97dbe755f55a2a2e)
Theorem hlt_GROUP_ELEMENT_ORDER_COPRIME_DECOMP_EXPLICIT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall m n :e omega, hl_num_coprime (hl_pair omega omega m n) = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_group_element_order A G x = hl_mul m n) -> exists r s :e hl_ty_int, hl_group_element_order A G (hl_group_zpow A G x r) = m /\ (hl_group_element_order A G (hl_group_zpow A G x s) = n /\ hl_group_mul A G (hl_group_zpow A G x r) (hl_group_zpow A G x s) = x).
Admitted.

// HOL Light: Library/grouptheory.ml:9426 / GROUP_ELEMENT_ORDER_COPRIME_DECOMP_UNIQUE   (hash md5:e03eea6844cb6c3cb4842ccd4a59d332)
Theorem hlt_GROUP_ELEMENT_ORDER_COPRIME_DECOMP_UNIQUE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall z :e A, forall m n :e omega, hl_num_coprime (hl_pair omega omega m n) = 1 /\ (hl_IN A z (hl_group_carrier A G) = 1 /\ hl_group_element_order A G z = hl_mul m n) -> hl_exists_unique (A :*: A) (hl_GABS (2 :^: (A :*: A)) (fun f :e 2 :^: (A :*: A) => if forall x y :e A, hl_GEQ 2 (f (hl_pair A A x y)) (if hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_group_mul A G x y = z /\ (hl_group_mul A G y x = z /\ (hl_group_element_order A G x = m /\ hl_group_element_order A G y = n)))) then 1 else 0) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9470 / GROUP_ELEMENT_ORDER_COPRIME_DECOMP   (hash md5:780c33043af62fd94a8bfdafa54e3c3f)
Theorem hlt_GROUP_ELEMENT_ORDER_COPRIME_DECOMP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall z :e A, forall m n :e omega, hl_num_coprime (hl_pair omega omega m n) = 1 /\ (hl_IN A z (hl_group_carrier A G) = 1 /\ hl_group_element_order A G z = hl_mul m n) -> exists x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_group_mul A G x y = z /\ (hl_group_mul A G y x = z /\ (hl_group_element_order A G x = m /\ hl_group_element_order A G y = n)))).
Admitted.

// HOL Light: Library/grouptheory.ml:9485 / GROUP_ELEMENT_ORDER_COPRIME_DECOMP_DIVIDES   (hash md5:1dcb2fd9a5573e30fa930cdc9e71488c)
Theorem hlt_GROUP_ELEMENT_ORDER_COPRIME_DECOMP_DIVIDES : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall z :e A, forall m n :e omega, hl_num_coprime (hl_pair omega omega m n) = 1 /\ (hl_IN A z (hl_group_carrier A G) = 1 /\ hl_num_divides (hl_group_element_order A G z) (hl_mul m n) = 1) -> exists x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_group_mul A G x y = z /\ (hl_group_mul A G y x = z /\ (hl_num_divides (hl_group_element_order A G x) m = 1 /\ hl_num_divides (hl_group_element_order A G y) n = 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:9507 / GROUP_POW_EQ_ID_DECOMP   (hash md5:728b30c5b0e9a4674fdc56ec4d65dbac)
Theorem hlt_GROUP_POW_EQ_ID_DECOMP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall z :e A, forall m n :e omega, hl_num_coprime (hl_pair omega omega m n) = 1 /\ (hl_IN A z (hl_group_carrier A G) = 1 /\ hl_group_pow A G z (hl_mul m n) = hl_group_id A G) -> exists x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_group_mul A G x y = z /\ (hl_group_mul A G y x = z /\ (hl_group_pow A G x m = hl_group_id A G /\ hl_group_pow A G y n = hl_group_id A G)))).
Admitted.

// HOL Light: Library/grouptheory.ml:9519 / GROUP_ELEMENT_ORDER_PRIMEPOW_DECOMP   (hash md5:0930c95e745c9e6322f786613b938713)
Theorem hlt_GROUP_ELEMENT_ORDER_PRIMEPOW_DECOMP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall z :e A, forall p :e omega, hl_prime p = 1 /\ (hl_IN A z (hl_group_carrier A G) = 1 /\ ~ hl_group_element_order A G z = hl_NUMERAL hl_zero) -> exists x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ (hl_group_mul A G x y = z /\ (hl_group_mul A G y x = z /\ ((exists k :e omega, hl_group_element_order A G x = hl_EXP p k) /\ hl_num_coprime (hl_pair omega omega p (hl_group_element_order A G y)) = 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:9543 / SUBGROUP_OF_TORSION_GENERAL   (hash md5:d0ba97d98a91fe162a36bd8e8f40f520)
Theorem hlt_SUBGROUP_OF_TORSION_GENERAL : forall A:set, A <> Empty -> forall P :e 2 :^: omega, forall G :e hl_ty_group A, hl_abelian_group A G = 1 /\ (P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (forall m n p :e omega, hl_num_divides p (hl_num_lcm (hl_pair omega omega m n)) = 1 /\ (P m = 1 /\ P n = 1) -> P p = 1)) -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_995 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_995 (if hl_IN A x (hl_group_carrier A G) = 1 /\ P (hl_group_element_order A G x) = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9557 / SUBGROUP_OF_TORSION_GEN   (hash md5:48c3f03673f5e70b9375c8602686bc5c)
Theorem hlt_SUBGROUP_OF_TORSION_GEN : forall A:set, A <> Empty -> forall P :e 2 :^: omega, forall G :e hl_ty_group A, hl_abelian_group A G = 1 /\ (P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (forall m n p :e omega, hl_num_divides p (hl_mul m n) = 1 /\ (P m = 1 /\ P n = 1) -> P p = 1)) -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_996 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_996 (if hl_IN A x (hl_group_carrier A G) = 1 /\ P (hl_group_element_order A G x) = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9569 / SUBGROUP_OF_TORSION   (hash md5:637ed20e2a6cdaa888c9318e627e12e4)
Theorem hlt_SUBGROUP_OF_TORSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_997 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_997 (if hl_IN A x (hl_group_carrier A G) = 1 /\ ~ hl_group_element_order A G x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9577 / SUBGROUP_OF_PRIMES_TORSION   (hash md5:37bdde3be3888bb2ec4c5381f4abe3e0)
Theorem hlt_SUBGROUP_OF_PRIMES_TORSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall Q :e 2 :^: omega, hl_abelian_group A G = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_998 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_998 (if hl_IN A x (hl_group_carrier A G) = 1 /\ forall p :e omega, hl_prime p = 1 /\ hl_num_divides p (hl_group_element_order A G x) = 1 -> Q p = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9587 / SUBGROUP_OF_PRIME_TORSION   (hash md5:b5cc22d5effb57338eb29ba5988f1cf1)
Theorem hlt_SUBGROUP_OF_PRIME_TORSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, hl_abelian_group A G = 1 /\ hl_prime p = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_999 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_999 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9594 / SUBGROUP_OF_LOWER_ORDER   (hash md5:3fc0461a36ab1b383cc0b756f4c65686)
Theorem hlt_SUBGROUP_OF_LOWER_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_1000 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1000 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_num_divides (hl_group_element_order A G x) n = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9602 / SUBGROUP_OF_LOWER_ORDER_ALT   (hash md5:ef2dc485117e40cb1371e2355e660840)
Theorem hlt_SUBGROUP_OF_LOWER_ORDER_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_1001 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1001 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_group_pow A G x n = hl_group_id A G then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9612 / SUBGROUP_OF_NONDIVISIBLE_ORDER   (hash md5:be7f1e54612046581894db8154d0a512)
Theorem hlt_SUBGROUP_OF_NONDIVISIBLE_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, hl_abelian_group A G = 1 /\ hl_prime p = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_1002 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1002 (if hl_IN A x (hl_group_carrier A G) = 1 /\ ~ hl_num_divides p (hl_group_element_order A G x) = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9622 / SUBGROUP_OF_COPRIME_ORDER   (hash md5:5fe8bdd80220c75270e2dbed7820c930)
Theorem hlt_SUBGROUP_OF_COPRIME_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_1003 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1003 (if hl_IN A x (hl_group_carrier A G) = 1 /\ hl_num_coprime (hl_pair omega omega n (hl_group_element_order A G x)) = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9631 / TORSION_FREE_GROUP   (hash md5:23d77da2997f2e92528d15fa7b7e189d)
Theorem hlt_TORSION_FREE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_le (hl_group_element_order A G x) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) <-> forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ ~ x = hl_group_id A G -> hl_group_element_order A G x = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/grouptheory.ml:9639 / TORSION_FREE_GROUP_ALT   (hash md5:316a126e4a3b8ca9265342db9c90cc71)
Theorem hlt_TORSION_FREE_GROUP_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_le (hl_group_element_order A G x) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) <-> forall x :e A, forall n :e omega, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_group_pow A G x n = hl_group_id A G -> x = hl_group_id A G \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/grouptheory.ml:9646 / QUOTIENT_GROUP_POW_EQ_ID   (hash md5:af9d491d6b3c9daa72d444623ff6545c)
Theorem hlt_QUOTIENT_GROUP_POW_EQ_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall x :e A, forall k :e omega, hl_normal_subgroup_of A n G = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> (hl_group_pow (2 :^: A) (hl_quotient_group A G n) (hl_right_coset A G n x) k = hl_group_id (2 :^: A) (hl_quotient_group A G n) <-> hl_IN A (hl_group_pow A G x k) n = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:9655 / TORSION_FREE_QUOTIENT_GROUP   (hash md5:efb5d64d9bed22554af8a07196803430)
Theorem hlt_TORSION_FREE_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group (2 :^: A), hl_abelian_group A G = 1 /\ hl_quotient_group A G (hl_GSPEC A (fun GEN_PVAR_1004 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1004 (if hl_IN A x (hl_group_carrier A G) = 1 /\ ~ hl_group_element_order A G x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)) = H -> forall x :e 2 :^: A, hl_IN (2 :^: A) x (hl_group_carrier (2 :^: A) H) = 1 -> hl_le (hl_group_element_order (2 :^: A) H x) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9670 / IMAGE_GROUP_CONJUGATION_TORSION_GEN   (hash md5:39f16a3f71f0fb5da8034fa9918e4049)
Theorem hlt_IMAGE_GROUP_CONJUGATION_TORSION_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall P :e 2 :^: omega, forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 -> hl_IMAGE A A (hl_group_conjugation A G a) (hl_GSPEC A (fun GEN_PVAR_1005 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1005 (if hl_IN A x (hl_group_carrier A G) = 1 /\ P (hl_group_element_order A G x) = 1 then 1 else 0) x = 1 then 1 else 0)) = hl_GSPEC A (fun GEN_PVAR_1006 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1006 (if hl_IN A x (hl_group_carrier A G) = 1 /\ P (hl_group_element_order A G x) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:9684 / NORMAL_SUBGROUP_OF_TORSION_GEN   (hash md5:3fc03e83f0b8dc4347bbad74a174f592)
Theorem hlt_NORMAL_SUBGROUP_OF_TORSION_GEN : forall A:set, A <> Empty -> forall P :e 2 :^: omega, forall G :e hl_ty_group A, hl_normal_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_1007 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1007 (if hl_IN A x (hl_group_carrier A G) = 1 /\ P (hl_group_element_order A G x) = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1 <-> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_1008 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1008 (if hl_IN A x (hl_group_carrier A G) = 1 /\ P (hl_group_element_order A G x) = 1 then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9693 / NORMAL_SUBGROUP_OF_TORSION   (hash md5:b50c811abbdb577c8c1c5b117f7e5841)
Theorem hlt_NORMAL_SUBGROUP_OF_TORSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_normal_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_1009 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1009 (if hl_IN A x (hl_group_carrier A G) = 1 /\ ~ hl_group_element_order A G x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)) G = 1 <-> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_1010 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1010 (if hl_IN A x (hl_group_carrier A G) = 1 /\ ~ hl_group_element_order A G x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9705 / SUBGROUP_OF_POWERS   (hash md5:a2b99696edaaae4d442d3fa16b1a985b)
Theorem hlt_SUBGROUP_OF_POWERS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_subgroup_of A (hl_GSPEC A (fun GEN_PVAR_1011 :e A => if exists n :e hl_ty_int, hl_SETSPEC A GEN_PVAR_1011 (hl_IN hl_ty_int n (hl_UNIV hl_ty_int)) (hl_group_zpow A G x n) = 1 then 1 else 0)) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9713 / CARRIER_SUBGROUP_GENERATED_BY_SING   (hash md5:60ab34b93a34e2e1bf14d97173f64a2c)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_BY_SING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A))) = hl_GSPEC A (fun GEN_PVAR_1012 :e A => if exists n :e hl_ty_int, hl_SETSPEC A GEN_PVAR_1012 (hl_IN hl_ty_int n (hl_UNIV hl_ty_int)) (hl_group_zpow A G x n) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:9735 / cyclic_group   (hash md5:ce2f42295e4b9aa08c15a0750ff843c3)
Theorem hlt_cyclic_group_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_cyclic_group A G = 1 <-> exists x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)) = G.
Admitted.

// HOL Light: Library/grouptheory.ml:9739 / CYCLIC_GROUP   (hash md5:710097fc2b41646d2c95be436fb41204)
Theorem hlt_CYCLIC_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_cyclic_group A G = 1 <-> exists x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_group_carrier A G = hl_GSPEC A (fun GEN_PVAR_1013 :e A => if exists n :e hl_ty_int, hl_SETSPEC A GEN_PVAR_1013 (hl_IN hl_ty_int n (hl_UNIV hl_ty_int)) (hl_group_zpow A G x n) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:9750 / CYCLIC_IMP_ABELIAN_GROUP   (hash md5:ec1fb9c986f01915375e386d2816839e)
Theorem hlt_CYCLIC_IMP_ABELIAN_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_cyclic_group A G = 1 -> hl_abelian_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9756 / TRIVIAL_IMP_CYCLIC_GROUP   (hash md5:e2ae3e44d5d3315ce62f17c9b92763eb)
Theorem hlt_TRIVIAL_IMP_CYCLIC_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 -> hl_cyclic_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9762 / CYCLIC_GROUP_ALT   (hash md5:5a4239a964fb460589da9cdd1a6672b2)
Theorem hlt_CYCLIC_GROUP_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_cyclic_group A G = 1 <-> exists x :e A, hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)) = G.
Admitted.

// HOL Light: Library/grouptheory.ml:9773 / CYCLIC_GROUP_GENERATED   (hash md5:c7573e851d6042436673bd7ad1bc7bbe)
Theorem hlt_CYCLIC_GROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_cyclic_group A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9780 / CYCLIC_GROUP_EPIMORPHIC_IMAGE   (hash md5:249129cee01f77b867f2bd1fc930024b)
Theorem hlt_CYCLIC_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_cyclic_group A G = 1 -> hl_cyclic_group B H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9794 / ISOMORPHIC_GROUP_CYCLICITY   (hash md5:03508d45206d23be791766ad5d8b80e2)
Theorem hlt_ISOMORPHIC_GROUP_CYCLICITY : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 -> (hl_cyclic_group A G = 1 <-> hl_cyclic_group B H = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:9802 / SUBGROUP_OF_CYCLIC_GROUP_EXPLICIT   (hash md5:7e7b4747ff0f0476a1d31da3af9b6e8a)
Theorem hlt_SUBGROUP_OF_CYCLIC_GROUP_EXPLICIT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_subgroup_of A h (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A))) = 1 -> exists k :e omega, h = hl_GSPEC A (fun GEN_PVAR_1017 :e A => if exists n :e hl_ty_int, hl_SETSPEC A GEN_PVAR_1017 (hl_IN hl_ty_int n (hl_UNIV hl_ty_int)) (hl_group_zpow A G x (hl_int_mul (hl_int_of_num k) n)) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:9866 / SUBGROUP_OF_CYCLIC_GROUP   (hash md5:6b0dd151e7edfbc75a50ae0ed06997ba)
Theorem hlt_SUBGROUP_OF_CYCLIC_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_cyclic_group A G = 1 /\ hl_subgroup_of A h G = 1 -> hl_cyclic_group A (hl_subgroup_generated A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9883 / CYCLIC_GROUP_QUOTIENT_GROUP   (hash md5:84e6d17244c6e1faafd5692cab2424ea)
Theorem hlt_CYCLIC_GROUP_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_cyclic_group A G = 1 /\ hl_subgroup_of A n G = 1 -> hl_cyclic_group (2 :^: A) (hl_quotient_group A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9889 / NO_PROPER_SUBGROUPS_IMP_CYCLIC   (hash md5:e0d443fcfb7383f9e37ac48093486006)
Theorem hlt_NO_PROPER_SUBGROUPS_IMP_CYCLIC : forall A:set, A <> Empty -> forall G :e hl_ty_group A, (forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> hl_SUBSET A h (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1 \/ h = hl_group_carrier A G) -> hl_cyclic_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9973 / FINITE_CYCLIC_SUBGROUP_ORDER   (hash md5:0d6538a5fc53f514932cbe2fc5510d75)
Theorem hlt_FINITE_CYCLIC_SUBGROUP_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_FINITE A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1 <-> ~ hl_group_element_order A G x = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/grouptheory.ml:9981 / INFINITE_CYCLIC_SUBGROUP_ORDER   (hash md5:ea8a30af4468a6dcd0190761d39577a8)
Theorem hlt_INFINITE_CYCLIC_SUBGROUP_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_INFINITE A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1 <-> hl_group_element_order A G x = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/grouptheory.ml:9988 / FINITE_CYCLIC_SUBGROUP_EXPLICIT   (hash md5:2def54342c59e95f8d39d8e662da284f)
Theorem hlt_FINITE_CYCLIC_SUBGROUP_EXPLICIT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_FINITE A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A))) = hl_GSPEC A (fun GEN_PVAR_1018 :e A => if exists n :e omega, hl_SETSPEC A GEN_PVAR_1018 (hl_lt n (hl_group_element_order A G x)) (hl_group_pow A G x n) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:10008 / FINITE_SUBGROUPS_EQ   (hash md5:dafb67e7a72ebda9eb60db651cac6ac2)
Theorem hlt_FINITE_SUBGROUPS_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1020 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1020 (hl_subgroup_of A h G) h = 1 then 1 else 0)) = 1 <-> hl_FINITE A (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10050 / CARD_CYCLIC_SUBGROUP_ORDER   (hash md5:5d0a00c5eb4ec3119ca9a2200ed515c2)
Theorem hlt_CARD_CYCLIC_SUBGROUP_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_FINITE A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_CARD A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = hl_group_element_order A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:10065 / PRIME_ORDER_IMP_NO_PROPER_SUBGROUPS   (hash md5:1297c8241138d6589be01ec9c2929197)
Theorem hlt_PRIME_ORDER_IMP_NO_PROPER_SUBGROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, hl_HAS_SIZE A (hl_group_carrier A G) p = 1 /\ (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime p = 1) -> forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> h = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) \/ h = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:10170 / ABELIAN_SIMPLE_GROUP   (hash md5:733d32c8e3c4cf8f726d8f85c205aa5c)
Theorem hlt_ABELIAN_SIMPLE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 -> ((forall h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 -> h = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) \/ h = hl_group_carrier A G) <-> hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_CARD A (hl_group_carrier A G) = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime (hl_CARD A (hl_group_carrier A G)) = 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:10180 / PRIME_ORDER_IMP_CYCLIC_GROUP   (hash md5:06c5cd6b04de931e181741d70dc97037)
Theorem hlt_PRIME_ORDER_IMP_CYCLIC_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_CARD A (hl_group_carrier A G) = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime (hl_CARD A (hl_group_carrier A G)) = 1) -> hl_cyclic_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10189 / GROUP_ELEMENT_ORDER_DIVIDES_GROUP_ORDER   (hash md5:ea77ad4b4e8dbe4e006f00df4be1ecf7)
Theorem hlt_GROUP_ELEMENT_ORDER_DIVIDES_GROUP_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> hl_num_divides (hl_group_element_order A G x) (hl_CARD A (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10198 / GROUP_POW_GROUP_ORDER   (hash md5:c4480ce8f957e94563344c4dbb8e3b4f)
Theorem hlt_GROUP_POW_GROUP_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> hl_group_pow A G x (hl_CARD A (hl_group_carrier A G)) = hl_group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:10204 / GROUP_ZPOW_REM_ORDER   (hash md5:63b59378222e127a6d6aef48991658db)
Theorem hlt_GROUP_ZPOW_REM_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e hl_ty_int, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_zpow A G x (hl_rem n (hl_int_of_num (hl_CARD A (hl_group_carrier A G)))) = hl_group_zpow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:10217 / GROUP_POW_MOD_ORDER   (hash md5:b5f0bd50514b3da6596c24db3262771f)
Theorem hlt_GROUP_POW_MOD_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, forall n :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_pow A G x (hl_MOD n (hl_CARD A (hl_group_carrier A G))) = hl_group_pow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:10225 / SUBGROUP_OF_FINITE_CYCLIC_GROUP   (hash md5:072abdc690f8b58ad629cb80290729b0)
Theorem hlt_SUBGROUP_OF_FINITE_CYCLIC_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall a :e A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_IN A a (hl_group_carrier A G) = 1 /\ hl_subgroup_generated A G (hl_INSERT A a (hl_EMPTY A)) = G) -> (hl_subgroup_of A h G = 1 <-> exists d :e omega, hl_num_divides d (hl_CARD A (hl_group_carrier A G)) = 1 /\ h = hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A (hl_group_pow A G a d) (hl_EMPTY A)))).
Admitted.

// HOL Light: Library/grouptheory.ml:10252 / COUNT_FINITE_CYCLIC_GROUP_SUBGROUPS   (hash md5:ecf95032255f5553d6e70d0d5ac1915b)
Theorem hlt_COUNT_FINITE_CYCLIC_GROUP_SUBGROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall d :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_cyclic_group A G = 1 -> hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1024 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1024 (if hl_subgroup_of A h G = 1 /\ hl_CARD A h = d then 1 else 0) h = 1 then 1 else 0)) = hl_COND omega (hl_num_divides d (hl_CARD A (hl_group_carrier A G))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/grouptheory.ml:10312 / COUNT_FINITE_CYCLIC_GROUP_SUBGROUPS_ALL   (hash md5:c09c5b41a45bd007e7cd526f909fffcf)
Theorem hlt_COUNT_FINITE_CYCLIC_GROUP_SUBGROUPS_ALL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_cyclic_group A G = 1 -> hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1027 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1027 (hl_subgroup_of A h G) h = 1 then 1 else 0)) = hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_1028 :e omega => if exists d :e omega, hl_SETSPEC omega GEN_PVAR_1028 (hl_num_divides d (hl_CARD A (hl_group_carrier A G))) d = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:10331 / MAXIMAL_SUBGROUP_PRIME_INDEX   (hash md5:a78bd1eaf25290c2c807598aa75ac7cd)
Theorem hlt_MAXIMAL_SUBGROUP_PRIME_INDEX : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> ((forall h :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_PSUBSET A n h = 1 -> h = hl_group_carrier A G) <-> hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1029 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1029 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0)) = 1 /\ (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1030 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1030 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0)) = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1031 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1031 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0))) = 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:10341 / PRIME_INDEX_MAXIMAL_PROPER_SUBGROUP   (hash md5:566d4d032140b068836d5b0779515df3)
Theorem hlt_PRIME_INDEX_MAXIMAL_PROPER_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> (hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1032 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1032 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0)) = 1 /\ hl_prime (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1033 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1033 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0))) = 1 <-> ~ n = hl_group_carrier A G /\ forall h :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_PSUBSET A n h = 1 -> h = hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:10353 / MAXIMAL_PROPER_SUBGROUP_PRIME_INDEX   (hash md5:c23a8b38d450e86a2a45488425c19f81)
Theorem hlt_MAXIMAL_PROPER_SUBGROUP_PRIME_INDEX : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 /\ ~ n = hl_group_carrier A G -> ((forall h :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_PSUBSET A n h = 1 -> h = hl_group_carrier A G) <-> hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1034 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1034 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0)) = 1 /\ hl_prime (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1035 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1035 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:10361 / GROUP_ZPOW_CANCEL   (hash md5:40a2445659618b807ec8c9e76d992f75)
Theorem hlt_GROUP_ZPOW_CANCEL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e hl_ty_int, forall x y :e A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_int_coprime (hl_pair hl_ty_int hl_ty_int n (hl_int_of_num (hl_CARD A (hl_group_carrier A G)))) = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_zpow A G x n = hl_group_zpow A G y n))) -> x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:10383 / GROUP_POW_CANCEL   (hash md5:c001d729dcc670d72673bbb347a13f56)
Theorem hlt_GROUP_POW_CANCEL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, forall x y :e A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_pow A G x n = hl_group_pow A G y n))) -> x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:10395 / finitely_generated_group   (hash md5:e6cf866e755775139c5c3360fb48fa50)
Theorem hlt_finitely_generated_group_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 <-> exists s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_subgroup_generated A G s = G.
Admitted.

// HOL Light: Library/grouptheory.ml:10399 / FINITELY_GENERATED_GROUP   (hash md5:1eb4d172647f73322020475006b99618)
Theorem hlt_FINITELY_GENERATED_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 <-> exists s :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_subgroup_generated A G s = G).
Admitted.

// HOL Light: Library/grouptheory.ml:10408 / CYCLIC_IMP_FINITELY_GENERATED_GROUP   (hash md5:a7185d1d39ac20d54e429fc88abb51da)
Theorem hlt_CYCLIC_IMP_FINITELY_GENERATED_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_cyclic_group A G = 1 -> hl_finitely_generated_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10413 / FINITE_IMP_FINITELY_GENERATED_GROUP   (hash md5:5874781df3f13a0e6894a0532cffd551)
Theorem hlt_FINITE_IMP_FINITELY_GENERATED_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_FINITE A (hl_group_carrier A G) = 1 -> hl_finitely_generated_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10418 / TRIVIAL_IMP_FINITELY_GENERATED_GROUP   (hash md5:bb0a295067cba55a009a8b19c142606f)
Theorem hlt_TRIVIAL_IMP_FINITELY_GENERATED_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 -> hl_finitely_generated_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10423 / FINITELY_GENERATED_GROUP_EPIMORPHIC_IMAGE   (hash md5:0f53cc2fdd2508129d963ece095c19c9)
Theorem hlt_FINITELY_GENERATED_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_finitely_generated_group A G = 1 -> hl_finitely_generated_group B H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10437 / ISOMORPHIC_GROUP_FINITE_GENERATION   (hash md5:216675dd838a5f9577437a44cb3243de)
Theorem hlt_ISOMORPHIC_GROUP_FINITE_GENERATION : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 -> (hl_finitely_generated_group A G = 1 <-> hl_finitely_generated_group B H = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:10447 / FINITELY_GENERATED_GROUP_QUOTIENT_GROUP   (hash md5:12f4bfe7763497104d2a65ff883c9d71)
Theorem hlt_FINITELY_GENERATED_GROUP_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_finitely_generated_group A G = 1 /\ hl_normal_subgroup_of A n G = 1 -> hl_finitely_generated_group (2 :^: A) (hl_quotient_group A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10454 / FINITELY_GENERATED_IMP_COUNTABLE_GROUP   (hash md5:d6a7004d502d58cfd545b2789c8a654f)
Theorem hlt_FINITELY_GENERATED_IMP_COUNTABLE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 -> hl_COUNTABLE A (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10459 / FINITELY_GENERATED_PROD_GROUP   (hash md5:677d70e623bf59e78e3b8674f016e357)
Theorem hlt_FINITELY_GENERATED_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_finitely_generated_group (A :*: B) (hl_prod_group A B G H) = 1 <-> hl_finitely_generated_group A G = 1 /\ hl_finitely_generated_group B H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10505 / FINITELY_GENERATED_PRODUCT_GROUP   (hash md5:5c175156aee33b621607b14938a2fcea)
Theorem hlt_FINITELY_GENERATED_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_finitely_generated_group (A :^: K) (hl_product_group K A k G) = 1 <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_1040 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_1040 (if hl_IN K i k = 1 /\ ~ hl_trivial_group A (G i) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_finitely_generated_group A (G i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10548 / FINITELY_GENERATED_SUM_GROUP   (hash md5:e7ef06e6b3a61a06a1693cbe54fa5e5d)
Theorem hlt_FINITELY_GENERATED_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, hl_finitely_generated_group (A :^: K) (hl_sum_group K A k G) = 1 <-> hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_1046 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_1046 (if hl_IN K i k = 1 /\ ~ hl_trivial_group A (G i) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_finitely_generated_group A (G i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10605 / FINITE_GROUP_ACTIONS   (hash md5:f7f1816faa950423a1bca142119f63a5)
Theorem hlt_FINITE_GROUP_ACTIONS : forall A B X:set, A <> Empty -> B <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall f :e B :^: (X :^: X :^: A), hl_finitely_generated_group A G = 1 /\ (hl_FINITE X s = 1 /\ (forall a a' :e X :^: X :^: A, (forall g :e A, forall x :e X, hl_IN A g (hl_group_carrier A G) = 1 /\ hl_IN X x s = 1 -> a g x = a' g x) -> f a = f a')) -> hl_FINITE B (hl_GSPEC B (fun GEN_PVAR_1047 :e B => if exists a :e X :^: X :^: A, hl_SETSPEC B GEN_PVAR_1047 (hl_group_action A X G s a) (f a) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10628 / FINITELY_GENERATED_FIXED_INDEX_SUBGROUPS   (hash md5:7e557c8ded8187dbf832b7a55a6b2ca9)
Theorem hlt_FINITELY_GENERATED_FIXED_INDEX_SUBGROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_finitely_generated_group A G = 1 -> hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1051 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1051 (if hl_subgroup_of A h G = 1 /\ hl_HAS_SIZE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1050 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1050 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G h x) = 1 then 1 else 0)) n = 1 then 1 else 0) h = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10679 / FINITELY_GENERATED_FINITE_INDEX_SUBGROUP   (hash md5:43b20a131b650eef8d5b5f76fef2daf4)
Theorem hlt_FINITELY_GENERATED_FINITE_INDEX_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_finitely_generated_group A G = 1 /\ (hl_subgroup_of A h G = 1 /\ hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1053 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1053 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G h x) = 1 then 1 else 0)) = 1) -> hl_finitely_generated_group A (hl_subgroup_generated A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:10750 / FINITELY_GENERATED_ABELIAN_SUBGROUP_EXPLICIT   (hash md5:156bcb49ad1a608c87c3138759bd7e66)
Theorem hlt_FINITELY_GENERATED_ABELIAN_SUBGROUP_EXPLICIT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s h :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ (hl_abelian_group A G = 1 /\ hl_subgroup_of A h (hl_subgroup_generated A G s) = 1)) -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ (hl_le (hl_CARD A t) (hl_CARD A s) = 1 /\ hl_subgroup_generated A G t = hl_subgroup_generated A G h)).
Admitted.

// HOL Light: Library/grouptheory.ml:11115 / FINITELY_GENERATED_ABELIAN_SUBGROUP   (hash md5:728d442cecbf6583c48f188811b011d6)
Theorem hlt_FINITELY_GENERATED_ABELIAN_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_finitely_generated_group A G = 1 /\ (hl_abelian_group A G = 1 /\ hl_subgroup_of A h G = 1) -> hl_finitely_generated_group A (hl_subgroup_generated A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11127 / MAXIMAL_SUBGROUP_EXISTS   (hash md5:7ee6a0623ec8b17bd2a256c73a87c69c)
Theorem hlt_MAXIMAL_SUBGROUP_EXISTS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ ~ hl_trivial_group A G = 1 -> exists h :e 2 :^: A, hl_subgroup_of A h G = 1 /\ (~ h = hl_group_carrier A G /\ forall h' :e 2 :^: A, hl_subgroup_of A h' G = 1 /\ hl_PSUBSET A h h' = 1 -> h' = hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:11189 / MAXIMAL_NORMAL_SUBGROUP_EXISTS   (hash md5:d57a8b1766cfeaf1dae9377708cf2cc2)
Theorem hlt_MAXIMAL_NORMAL_SUBGROUP_EXISTS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ ~ hl_trivial_group A G = 1 -> exists h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 /\ (~ h = hl_group_carrier A G /\ forall h' :e 2 :^: A, hl_normal_subgroup_of A h' G = 1 /\ hl_PSUBSET A h h' = 1 -> h' = hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:11255 / integer_group   (hash md5:48b8c7b4e4d5c1cd86b413dce364e123)
Theorem hlt_integer_group_thm : hl_integer_group = hl_group hl_ty_int (hl_pair (2 :^: hl_ty_int) (hl_ty_int :*: (hl_ty_int :^: hl_ty_int :*: hl_ty_int :^: hl_ty_int :^: hl_ty_int)) (hl_UNIV hl_ty_int) (hl_pair hl_ty_int (hl_ty_int :^: hl_ty_int :*: hl_ty_int :^: hl_ty_int :^: hl_ty_int) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_pair (hl_ty_int :^: hl_ty_int) (hl_ty_int :^: hl_ty_int :^: hl_ty_int) hl_int_neg hl_int_add))).
Admitted.

// HOL Light: Library/grouptheory.ml:11258 / INTEGER_GROUP   (hash md5:a58a7185bcf332820430804b0f835246)
Theorem hlt_INTEGER_GROUP : hl_group_carrier hl_ty_int hl_integer_group = hl_UNIV hl_ty_int /\ (hl_group_id hl_ty_int hl_integer_group = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_group_inv hl_ty_int hl_integer_group = hl_int_neg /\ hl_group_mul hl_ty_int hl_integer_group = hl_int_add)).
Admitted.

// HOL Light: Library/grouptheory.ml:11270 / ABELIAN_INTEGER_GROUP   (hash md5:51f15154e06ea197fff32f010fd33ffa)
Theorem hlt_ABELIAN_INTEGER_GROUP : hl_abelian_group hl_ty_int hl_integer_group = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11274 / INFINITE_INTEGER_GROUP   (hash md5:866a7344dcd6dc05003b0bc2584c3d95)
Theorem hlt_INFINITE_INTEGER_GROUP : hl_INFINITE hl_ty_int (hl_group_carrier hl_ty_int hl_integer_group) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11278 / GROUP_POW_INTEGER_GROUP   (hash md5:fa0ef31b06b753c7830044ad5f48aec5)
Theorem hlt_GROUP_POW_INTEGER_GROUP : forall x :e hl_ty_int, forall n :e omega, hl_group_pow hl_ty_int hl_integer_group x n = hl_int_mul (hl_int_of_num n) x.
Admitted.

// HOL Light: Library/grouptheory.ml:11284 / GROUP_ZPOW_INTEGER_GROUP   (hash md5:67c27915a327f8e19a3902300b5ab6ef)
Theorem hlt_GROUP_ZPOW_INTEGER_GROUP : forall x n :e hl_ty_int, hl_group_zpow hl_ty_int hl_integer_group x n = hl_int_mul n x.
Admitted.

// HOL Light: Library/grouptheory.ml:11291 / GROUP_ELEMENT_ORDER_INTEGER_GROUP   (hash md5:619fffe65bdbbb75ad2cb16f2e754de8)
Theorem hlt_GROUP_ELEMENT_ORDER_INTEGER_GROUP : forall n :e hl_ty_int, hl_group_element_order hl_ty_int hl_integer_group n = hl_COND omega (if n = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/grouptheory.ml:11299 / GROUP_ENDOMORPHISM_INTEGER_GROUP_MUL   (hash md5:b8284dd5ce2bfcb95a60d006df290bfe)
Theorem hlt_GROUP_ENDOMORPHISM_INTEGER_GROUP_MUL : forall c :e hl_ty_int, hl_group_endomorphism hl_ty_int hl_integer_group (fun x :e hl_ty_int => hl_int_mul c x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11304 / GROUP_ENDOMORPHISM_INTEGER_GROUP_EXPLICIT   (hash md5:c37b6a8a3a2539669bb11a33dff6b6a0)
Theorem hlt_GROUP_ENDOMORPHISM_INTEGER_GROUP_EXPLICIT : forall f :e hl_ty_int :^: hl_ty_int, hl_group_endomorphism hl_ty_int hl_integer_group f = 1 -> f = fun x :e hl_ty_int => hl_int_mul (f (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) x.
Admitted.

// HOL Light: Library/grouptheory.ml:11333 / GROUP_HOMOMORPHISM_GROUP_ZPOW   (hash md5:282f49f0ecc23ea8e9984fcb3653c38f)
Theorem hlt_GROUP_HOMOMORPHISM_GROUP_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_homomorphism hl_ty_int A (hl_pair (hl_ty_group hl_ty_int) (hl_ty_group A) hl_integer_group G) (hl_group_zpow A G x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11340 / GROUP_EPIMORPHISM_GROUP_ZPOW   (hash md5:d986b89f194f144435dff206180d51a6)
Theorem hlt_GROUP_EPIMORPHISM_GROUP_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_epimorphism hl_ty_int A (hl_pair (hl_ty_group hl_ty_int) (hl_ty_group A) hl_integer_group (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) (hl_group_zpow A G x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11353 / GROUP_ISOMORPHISM_GROUP_ZPOW   (hash md5:69e9cc984a1b006507849386b5a358e3)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_ZPOW : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_INFINITE A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_isomorphism hl_ty_int A (hl_pair (hl_ty_group hl_ty_int) (hl_ty_group A) hl_integer_group (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) (hl_group_zpow A G x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11365 / ISOMORPHIC_GROUP_INFINITE_CYCLIC_INTEGER   (hash md5:e4e1d6c3ae3d91c106ffe177a7e3cc14)
Theorem hlt_ISOMORPHIC_GROUP_INFINITE_CYCLIC_INTEGER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_cyclic_group A G = 1 /\ hl_INFINITE A (hl_group_carrier A G) = 1 -> hl_isomorphic_group A hl_ty_int G hl_integer_group = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11375 / ISOMORPHIC_INFINITE_CYCLIC_GROUPS   (hash md5:029dda88760ff2e9633ddb295f82821f)
Theorem hlt_ISOMORPHIC_INFINITE_CYCLIC_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_cyclic_group A G = 1 /\ (hl_INFINITE A (hl_group_carrier A G) = 1 /\ (hl_cyclic_group B H = 1 /\ hl_INFINITE B (hl_group_carrier B H) = 1)) -> hl_isomorphic_group A B G H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11388 / integer_mod_group   (hash md5:c5d90ac53041bbfea339a98e7b0e9018)
Theorem hlt_integer_mod_group_thm : forall n :e omega, hl_integer_mod_group n = hl_COND (hl_ty_group hl_ty_int) (if n = hl_NUMERAL hl_zero then 1 else 0) hl_integer_group (hl_group hl_ty_int (hl_pair (2 :^: hl_ty_int) (hl_ty_int :*: (hl_ty_int :^: hl_ty_int :*: hl_ty_int :^: hl_ty_int :^: hl_ty_int)) (hl_GSPEC hl_ty_int (fun GEN_PVAR_1057 :e hl_ty_int => if exists m :e hl_ty_int, hl_SETSPEC hl_ty_int GEN_PVAR_1057 (if hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1 /\ hl_int_lt m (hl_int_of_num n) = 1 then 1 else 0) m = 1 then 1 else 0)) (hl_pair hl_ty_int (hl_ty_int :^: hl_ty_int :*: hl_ty_int :^: hl_ty_int :^: hl_ty_int) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_pair (hl_ty_int :^: hl_ty_int) (hl_ty_int :^: hl_ty_int :^: hl_ty_int) (fun a :e hl_ty_int => hl_rem (hl_int_neg a) (hl_int_of_num n)) (fun a :e hl_ty_int => fun b :e hl_ty_int => hl_rem (hl_int_add a b) (hl_int_of_num n)))))).
Admitted.

// HOL Light: Library/grouptheory.ml:11396 / INTEGER_MOD_GROUP   (hash md5:98730c6960e94459ddd0d6c48c34d389)
Theorem hlt_INTEGER_MOD_GROUP : hl_group_carrier hl_ty_int (hl_integer_mod_group (hl_NUMERAL hl_zero)) = hl_UNIV hl_ty_int /\ ((forall n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 -> hl_group_carrier hl_ty_int (hl_integer_mod_group n) = hl_GSPEC hl_ty_int (fun GEN_PVAR_1058 :e hl_ty_int => if exists m :e hl_ty_int, hl_SETSPEC hl_ty_int GEN_PVAR_1058 (if hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1 /\ hl_int_lt m (hl_int_of_num n) = 1 then 1 else 0) m = 1 then 1 else 0)) /\ ((forall n :e omega, hl_group_id hl_ty_int (hl_integer_mod_group n) = hl_int_of_num (hl_NUMERAL hl_zero)) /\ ((forall n :e omega, hl_group_inv hl_ty_int (hl_integer_mod_group n) = fun a :e hl_ty_int => hl_rem (hl_int_neg a) (hl_int_of_num n)) /\ forall n :e omega, hl_group_mul hl_ty_int (hl_integer_mod_group n) = fun a :e hl_ty_int => fun b :e hl_ty_int => hl_rem (hl_int_add a b) (hl_int_of_num n)))).
Admitted.

// HOL Light: Library/grouptheory.ml:11419 / INTEGER_MOD_GROUP_TRIVIAL   (hash md5:cca6ae3ca8eb4464020e2c436f1586c4)
Theorem hlt_INTEGER_MOD_GROUP_TRIVIAL : hl_integer_mod_group (hl_NUMERAL hl_zero) = hl_integer_group.
Admitted.

// HOL Light: Library/grouptheory.ml:11423 / GROUP_CARRIER_INTEGER_MOD_GROUP   (hash md5:8d6922a48203fe33fbf44120de66e5ab)
Theorem hlt_GROUP_CARRIER_INTEGER_MOD_GROUP : forall n :e omega, hl_group_carrier hl_ty_int (hl_integer_mod_group n) = hl_IMAGE hl_ty_int hl_ty_int (fun x :e hl_ty_int => hl_rem x (hl_int_of_num n)) (hl_UNIV hl_ty_int).
Admitted.

// HOL Light: Library/grouptheory.ml:11434 / GROUP_POW_INTEGER_MOD_GROUP   (hash md5:04466cd6e55a41026b340fe720ec88d9)
Theorem hlt_GROUP_POW_INTEGER_MOD_GROUP : forall n :e omega, forall x :e hl_ty_int, forall m :e omega, hl_group_pow hl_ty_int (hl_integer_mod_group n) x m = hl_rem (hl_int_mul (hl_int_of_num m) x) (hl_int_of_num n).
Admitted.

// HOL Light: Library/grouptheory.ml:11444 / GROUP_ZPOW_INTEGER_MOD_GROUP   (hash md5:f04ca2c7f2ca6c5b5d3f2e412e77dab7)
Theorem hlt_GROUP_ZPOW_INTEGER_MOD_GROUP : forall n :e omega, forall x m :e hl_ty_int, hl_group_zpow hl_ty_int (hl_integer_mod_group n) x m = hl_rem (hl_int_mul m x) (hl_int_of_num n).
Admitted.

// HOL Light: Library/grouptheory.ml:11453 / ABELIAN_INTEGER_MOD_GROUP   (hash md5:112bed7b9a23a26e804b020c60d94909)
Theorem hlt_ABELIAN_INTEGER_MOD_GROUP : forall n :e omega, hl_abelian_group hl_ty_int (hl_integer_mod_group n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11457 / INTEGER_MOD_GROUP_0   (hash md5:5cc78a9a3ed67d3d9d1c8c91cb70b0d1)
Theorem hlt_INTEGER_MOD_GROUP_0 : forall n :e omega, hl_IN hl_ty_int (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_group_carrier hl_ty_int (hl_integer_mod_group n)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11461 / INTEGER_MOD_GROUP_1R   (hash md5:bbcef374c834b2d5fd5962018ddcd73c)
Theorem hlt_INTEGER_MOD_GROUP_1R : forall n :e omega, forall x :e hl_ty_int, hl_IN hl_ty_int (hl_rem x (hl_int_of_num n)) (hl_group_carrier hl_ty_int (hl_integer_mod_group n)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11468 / INTEGER_MOD_GROUP_1   (hash md5:9f0ef0c7b473684432e2368f2d20e9dc)
Theorem hlt_INTEGER_MOD_GROUP_1 : forall n :e omega, hl_IN hl_ty_int (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_group_carrier hl_ty_int (hl_integer_mod_group n)) = 1 <-> ~ n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/grouptheory.ml:11476 / GROUP_HOMOMORPHISM_PROD_INTEGER_MOD_GROUP   (hash md5:19e6e414d6a2371756d48645f3e62053)
Theorem hlt_GROUP_HOMOMORPHISM_PROD_INTEGER_MOD_GROUP : forall m n :e omega, hl_group_homomorphism hl_ty_int (hl_ty_int :*: hl_ty_int) (hl_pair (hl_ty_group hl_ty_int) (hl_ty_group (hl_ty_int :*: hl_ty_int)) (hl_integer_mod_group (hl_mul m n)) (hl_prod_group hl_ty_int hl_ty_int (hl_integer_mod_group m) (hl_integer_mod_group n))) (fun a :e hl_ty_int => hl_pair hl_ty_int hl_ty_int (hl_rem a (hl_int_of_num m)) (hl_rem a (hl_int_of_num n))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11488 / TRIVIAL_INTEGER_MOD_GROUP   (hash md5:eecf0f104d2aa8ea056b1e89e2483af5)
Theorem hlt_TRIVIAL_INTEGER_MOD_GROUP : forall n :e omega, hl_trivial_group hl_ty_int (hl_integer_mod_group n) = 1 <-> n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/grouptheory.ml:11499 / NON_TRIVIAL_INTEGER_GROUP   (hash md5:483ff991dd93d9d82161ea43c965a56a)
Theorem hlt_NON_TRIVIAL_INTEGER_GROUP : ~ hl_trivial_group hl_ty_int hl_integer_group = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11504 / GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP_1   (hash md5:19bcf6c9d26cd08be2bfd1284aab921c)
Theorem hlt_GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP_1 : forall n :e omega, hl_group_element_order hl_ty_int (hl_integer_mod_group n) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:11514 / GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP_1R   (hash md5:4ce1631ab50ce0179b1524c639d30bcf)
Theorem hlt_GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP_1R : forall n :e omega, hl_group_element_order hl_ty_int (hl_integer_mod_group n) (hl_rem (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_of_num n)) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:11525 / GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP   (hash md5:e33bb27343b1ad0473189d7dd41aece6)
Theorem hlt_GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP : forall n m :e omega, hl_group_element_order hl_ty_int (hl_integer_mod_group n) (hl_int_of_num m) = hl_COND omega (if m = hl_NUMERAL hl_zero /\ n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_DIV n (hl_num_gcd (hl_pair omega omega n m))).
Admitted.

// HOL Light: Library/grouptheory.ml:11541 / INTEGER_MOD_SUBGROUP_GENERATED_BY_1R   (hash md5:6cfdca63c2f70c18ef8fa58f77de8622)
Theorem hlt_INTEGER_MOD_SUBGROUP_GENERATED_BY_1R : forall n :e omega, hl_subgroup_generated hl_ty_int (hl_integer_mod_group n) (hl_INSERT hl_ty_int (hl_rem (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_of_num n)) (hl_EMPTY hl_ty_int)) = hl_integer_mod_group n.
Admitted.

// HOL Light: Library/grouptheory.ml:11556 / INTEGER_MOD_SUBGROUP_GENERATED_BY_1   (hash md5:7b375bfd2ea65b15b5a5989bc9762e05)
Theorem hlt_INTEGER_MOD_SUBGROUP_GENERATED_BY_1 : forall n :e omega, hl_subgroup_generated hl_ty_int (hl_integer_mod_group n) (hl_INSERT hl_ty_int (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_EMPTY hl_ty_int)) = hl_integer_mod_group n.
Admitted.

// HOL Light: Library/grouptheory.ml:11568 / CYCLIC_GROUP_INTEGER_MOD_GROUP   (hash md5:1c6053d5c5c142865ec311fa74820921)
Theorem hlt_CYCLIC_GROUP_INTEGER_MOD_GROUP : forall n :e omega, hl_cyclic_group hl_ty_int (hl_integer_mod_group n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11573 / CYCLIC_INTEGER_GROUP   (hash md5:2b6a9306757e5a96634861833e047a62)
Theorem hlt_CYCLIC_INTEGER_GROUP : hl_cyclic_group hl_ty_int hl_integer_group = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11578 / FINITE_INTEGER_MOD_GROUP   (hash md5:fbb2c413dd4ba07f4563850f98a21f73)
Theorem hlt_FINITE_INTEGER_MOD_GROUP : forall n :e omega, hl_FINITE hl_ty_int (hl_group_carrier hl_ty_int (hl_integer_mod_group n)) = 1 <-> ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/grouptheory.ml:11584 / GROUP_EPIMORPHISM_INTEGER_MOD_GROUP_ZPOW   (hash md5:633dc88f1ea102f2c5275421759e90af)
Theorem hlt_GROUP_EPIMORPHISM_INTEGER_MOD_GROUP_ZPOW : forall n :e omega, ~ n = hl_NUMERAL (hl_BIT1 hl_zero) -> hl_group_epimorphism hl_ty_int hl_ty_int (hl_pair (hl_ty_group hl_ty_int) (hl_ty_group hl_ty_int) hl_integer_group (hl_integer_mod_group n)) (hl_group_zpow hl_ty_int (hl_integer_mod_group n) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11591 / GROUP_ISOMORPHISM_GROUP_ZPOW_GEN   (hash md5:edae71b305315779dbef1371197dbdeb)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_ZPOW_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_isomorphism hl_ty_int A (hl_pair (hl_ty_group hl_ty_int) (hl_ty_group A) (hl_integer_mod_group (hl_group_element_order A G x)) (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) (hl_group_zpow A G x) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11616 / ISOMORPHIC_GROUP_CYCLIC_INTEGER   (hash md5:e513498fa1bc682690c1eddfb6679e3a)
Theorem hlt_ISOMORPHIC_GROUP_CYCLIC_INTEGER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_cyclic_group A G = 1 <-> exists n :e omega, hl_isomorphic_group A hl_ty_int G (hl_integer_mod_group n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11624 / ORDER_INTEGER_MOD_GROUP   (hash md5:bc3a3c943e97b19ff4781ad87e181d97)
Theorem hlt_ORDER_INTEGER_MOD_GROUP : forall n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_CARD hl_ty_int (hl_group_carrier hl_ty_int (hl_integer_mod_group n)) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:11636 / ISOMORPHIC_FINITE_CYCLIC_INTEGER_MOD_GROUP   (hash md5:b0299f2000cd12256367fe9ef65d5752)
Theorem hlt_ISOMORPHIC_FINITE_CYCLIC_INTEGER_MOD_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_cyclic_group A G = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> hl_isomorphic_group A hl_ty_int G (hl_integer_mod_group (hl_CARD A (hl_group_carrier A G))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11648 / ISOMORPHIC_GROUP_INTEGER_MOD_GROUP   (hash md5:0638fe9abfafc47378cc0d81f0eb71c8)
Theorem hlt_ISOMORPHIC_GROUP_INTEGER_MOD_GROUP : forall A:set, A <> Empty -> (forall G :e hl_ty_group A, forall n :e omega, hl_isomorphic_group A hl_ty_int G (hl_integer_mod_group n) = 1 <-> hl_cyclic_group A G = 1 /\ (n = hl_NUMERAL hl_zero /\ hl_INFINITE A (hl_group_carrier A G) = 1 \/ ~ n = hl_NUMERAL hl_zero /\ hl_HAS_SIZE A (hl_group_carrier A G) n = 1)) /\ forall G :e hl_ty_group A, forall n :e omega, hl_isomorphic_group hl_ty_int A (hl_integer_mod_group n) G = 1 <-> hl_cyclic_group A G = 1 /\ (n = hl_NUMERAL hl_zero /\ hl_INFINITE A (hl_group_carrier A G) = 1 \/ ~ n = hl_NUMERAL hl_zero /\ hl_HAS_SIZE A (hl_group_carrier A G) n = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:11674 / ISOMORPHIC_INTEGER_MOD_GROUPS   (hash md5:a6e5336f0d257025ed6fd1a2f2ddc3b2)
Theorem hlt_ISOMORPHIC_INTEGER_MOD_GROUPS : forall m n :e omega, hl_isomorphic_group hl_ty_int hl_ty_int (hl_integer_mod_group m) (hl_integer_mod_group n) = 1 <-> m = n.
Admitted.

// HOL Light: Library/grouptheory.ml:11682 / ISOMORPHIC_FINITE_CYCLIC_GROUPS   (hash md5:92a6a58f8be5184cd65fee5d3c5cdfd7)
Theorem hlt_ISOMORPHIC_FINITE_CYCLIC_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_cyclic_group A G = 1 /\ (hl_cyclic_group B H = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_FINITE B (hl_group_carrier B H) = 1 /\ hl_CARD A (hl_group_carrier A G) = hl_CARD B (hl_group_carrier B H)))) -> hl_isomorphic_group A B G H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11693 / CYCLIC_IMP_COUNTABLE_GROUP   (hash md5:e0fc9da210d31f99bcfbf2a4e9f8cfb1)
Theorem hlt_CYCLIC_IMP_COUNTABLE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_cyclic_group A G = 1 -> hl_COUNTABLE A (hl_group_carrier A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11699 / SUBGROUP_GENERATED_ELEMENT_ORDER   (hash md5:32ecff44923274404ab609d1a98becd0)
Theorem hlt_SUBGROUP_GENERATED_ELEMENT_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_IN A a (hl_group_carrier A G) = 1 -> (hl_subgroup_generated A G (hl_INSERT A a (hl_EMPTY A)) = G <-> hl_group_element_order A G a = hl_CARD A (hl_group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:11715 / CYCLIC_GROUP_ELEMENT_ORDER   (hash md5:e550dbc7175ef9fae9b7443bc1143d91)
Theorem hlt_CYCLIC_GROUP_ELEMENT_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_FINITE A (hl_group_carrier A G) = 1 -> (hl_cyclic_group A G = 1 <-> exists a :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_group_element_order A G a = hl_CARD A (hl_group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:11808 / CYCLIC_PROD_GROUP   (hash md5:9fbcec4b24614e2d3bbc7a8ac166f83d)
Theorem hlt_CYCLIC_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_cyclic_group (A :*: B) (hl_prod_group A B G H) = 1 <-> hl_cyclic_group A G = 1 /\ (hl_cyclic_group B H = 1 /\ (hl_trivial_group A G = 1 \/ (hl_trivial_group B H = 1 \/ hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_FINITE B (hl_group_carrier B H) = 1 /\ hl_num_coprime (hl_pair omega omega (hl_CARD A (hl_group_carrier A G)) (hl_CARD B (hl_group_carrier B H))) = 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:11851 / CYCLIC_PRIME_ORDER_GROUP   (hash md5:10c8b1fe6f8b2b4449add80c1c4f6f9d)
Theorem hlt_CYCLIC_PRIME_ORDER_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall a :e A, hl_FINITE A (hl_group_carrier A G) = 1 /\ ((hl_CARD A (hl_group_carrier A G) = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime (hl_CARD A (hl_group_carrier A G)) = 1) /\ (hl_IN A a (hl_group_carrier A G) = 1 /\ ~ a = hl_group_id A G)) -> hl_subgroup_generated A G (hl_INSERT A a (hl_EMPTY A)) = G.
Admitted.

// HOL Light: Library/grouptheory.ml:11863 / GROUP_ELEMENT_ORDER_PRIME   (hash md5:15dc109d4f9470f0bfd1a5465ed29dbc)
Theorem hlt_GROUP_ELEMENT_ORDER_PRIME : forall A:set, A <> Empty -> forall p :e omega, forall G :e hl_ty_group A, forall a :e A, hl_prime p = 1 /\ (hl_HAS_SIZE A (hl_group_carrier A G) p = 1 /\ hl_IN A a (hl_group_carrier A G) = 1) -> hl_group_element_order A G a = hl_COND omega (if a = hl_group_id A G then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_CARD A (hl_group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:11871 / GENERATOR_INTEGER_MOD_GROUP   (hash md5:a3ba59cf8e852976ec121f714ecdd4ec)
Theorem hlt_GENERATOR_INTEGER_MOD_GROUP : forall n :e omega, forall a :e hl_ty_int, hl_subgroup_generated hl_ty_int (hl_integer_mod_group n) (hl_INSERT hl_ty_int a (hl_EMPTY hl_ty_int)) = hl_integer_mod_group n <-> (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 \/ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) a = 1 /\ hl_int_lt a (hl_int_of_num n) = 1) /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_of_num n) a) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11903 / CYCLIC_GROUP_PRIME_ORDER_EQ   (hash md5:76aa24ef05127736f056cbd9b1b9808f)
Theorem hlt_CYCLIC_GROUP_PRIME_ORDER_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, (forall a :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ ~ a = hl_group_id A G -> hl_subgroup_generated A G (hl_INSERT A a (hl_EMPTY A)) = G) <-> hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_CARD A (hl_group_carrier A G) = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime (hl_CARD A (hl_group_carrier A G)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:11952 / pgroup   (hash md5:391d801e579690a174939293bfab4934)
Theorem hlt_pgroup_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: omega, hl_pgroup A s G = 1 <-> forall p :e omega, forall x :e A, hl_prime p = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_num_divides p (hl_group_element_order A G x) = 1) -> hl_IN omega p s = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11959 / PGROUP_MONOMORPHIC_PREIMAGE   (hash md5:cb1778ed311a8391561fe7078e95250b)
Theorem hlt_PGROUP_MONOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall s :e 2 :^: omega, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_pgroup B s H = 1 -> hl_pgroup A s G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11968 / PGROUP_EPIMORPHIC_IMAGE   (hash md5:c275b332453374746d920ddc82d40df6)
Theorem hlt_PGROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall s :e 2 :^: omega, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_pgroup A s G = 1 -> hl_pgroup B s H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11976 / PGROUP_QUOTIENT_GROUP   (hash md5:874e3c2e79a5cef80f8e050fbebd1893)
Theorem hlt_PGROUP_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall s :e 2 :^: omega, hl_normal_subgroup_of A n G = 1 /\ hl_pgroup A s G = 1 -> hl_pgroup (2 :^: A) s (hl_quotient_group A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11981 / PGROUP_SUBGROUP_GENERATED   (hash md5:4acefe9bfa9ac90cdbc5219b62d338f2)
Theorem hlt_PGROUP_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: omega, forall h :e 2 :^: A, hl_pgroup A s G = 1 -> hl_pgroup A s (hl_subgroup_generated A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11986 / PGROUP_PROD_GROUP   (hash md5:61887e2e0f091cc8e49652648bca1d03)
Theorem hlt_PGROUP_PROD_GROUP : forall A:set, A <> Empty -> forall G H :e hl_ty_group A, forall s :e 2 :^: omega, hl_pgroup (A :*: A) s (hl_prod_group A A G H) = 1 <-> hl_pgroup A s G = 1 /\ hl_pgroup A s H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11996 / PGROUP_EMPTY   (hash md5:3e1f8de27bcce209899233ef8f98ba8d)
Theorem hlt_PGROUP_EMPTY : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_pgroup A (hl_EMPTY omega) G = 1 <-> hl_trivial_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12003 / PGROUP_MONO   (hash md5:1689a99eea58f6001510b25abbd2f49d)
Theorem hlt_PGROUP_MONO : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s t :e 2 :^: omega, hl_pgroup A s G = 1 /\ hl_SUBSET omega s t = 1 -> hl_pgroup A t G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12007 / PGROUP_SUM_GROUP   (hash md5:4ea8a6ac8dca9e15a6c645a6a2325eb9)
Theorem hlt_PGROUP_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A :^: K, forall s :e 2 :^: omega, hl_pgroup (A :^: K) s (hl_sum_group K A k G) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_pgroup A s (G i) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12020 / PGROUP_SING   (hash md5:4d64d2c2ce8c6da57da7cdd9a785b982)
Theorem hlt_PGROUP_SING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, hl_prime p = 1 -> (hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) G = 1 <-> forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> exists k :e omega, hl_group_element_order A G x = hl_EXP p k).
Admitted.

// HOL Light: Library/grouptheory.ml:12028 / SYLOW_THEOREM_COUNT_MOD   (hash md5:0bd7f5f67345f1bfcb02b9fea50f37ba)
Theorem hlt_SYLOW_THEOREM_COUNT_MOD : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ hl_num_divides (hl_EXP p k) (hl_CARD A (hl_group_carrier A G)) = 1) -> hl_sym_3d3d omega (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1079 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1079 (if hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k then 1 else 0) h = 1 then 1 else 0))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod p) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12262 / SYLOW_THEOREM   (hash md5:4e298c67af9dfd115281ead9d67cd629)
Theorem hlt_SYLOW_THEOREM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ hl_num_divides (hl_EXP p k) (hl_CARD A (hl_group_carrier A G)) = 1) -> exists h :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k.
Admitted.

// HOL Light: Library/grouptheory.ml:12276 / CAUCHY_GROUP_THEOREM   (hash md5:511075860c09f8eb14ff0f5bab74429b)
Theorem hlt_CAUCHY_GROUP_THEOREM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ hl_num_divides p (hl_CARD A (hl_group_carrier A G)) = 1) -> exists x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_group_element_order A G x = p.
Admitted.

// HOL Light: Library/grouptheory.ml:12302 / PRIME_DIVIDES_GROUP_ORDER   (hash md5:7879be659585a74bfb3e125fe10d7822)
Theorem hlt_PRIME_DIVIDES_GROUP_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_prime p = 1 -> ((exists x :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_num_divides p (hl_group_element_order A G x) = 1) <-> hl_num_divides p (hl_CARD A (hl_group_carrier A G)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12310 / COPRIME_GROUP_ORDER   (hash md5:3cb6d4c4e2dc77d31a593525333618ef)
Theorem hlt_COPRIME_GROUP_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_FINITE A (hl_group_carrier A G) = 1 -> ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_num_coprime (hl_pair omega omega (hl_group_element_order A G x) n) = 1) <-> hl_num_coprime (hl_pair omega omega (hl_CARD A (hl_group_carrier A G)) n) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12317 / FINITE_PGROUP   (hash md5:389602d07cefeb06e73dfa150443ba49)
Theorem hlt_FINITE_PGROUP : forall A:set, A <> Empty -> forall s :e 2 :^: omega, forall G :e hl_ty_group A, hl_FINITE A (hl_group_carrier A G) = 1 -> (hl_pgroup A s G = 1 <-> forall p :e omega, hl_prime p = 1 /\ hl_num_divides p (hl_CARD A (hl_group_carrier A G)) = 1 -> hl_IN omega p s = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12326 / FINITE_PGROUP_SING   (hash md5:de56c684b1861a77f5718b482ddadb6e)
Theorem hlt_FINITE_PGROUP_SING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_prime p = 1 -> (hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) G = 1 <-> exists k :e omega, hl_CARD A (hl_group_carrier A G) = hl_EXP p k).
Admitted.

// HOL Light: Library/grouptheory.ml:12332 / FINITE_AND_PGROUP_SING   (hash md5:024cf3aeb987356ad29e443526eb83ff)
Theorem hlt_FINITE_AND_PGROUP_SING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, hl_prime p = 1 -> (hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) G = 1 <-> exists k :e omega, hl_HAS_SIZE A (hl_group_carrier A G) (hl_EXP p k) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12339 / FINITE_GROUP_POW_INJECTIVE_EQ   (hash md5:bf281cc20dd5d41e4dd09eca0cd6c3dd)
Theorem hlt_FINITE_GROUP_POW_INJECTIVE_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_FINITE A (hl_group_carrier A G) = 1 -> ((forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_pow A G x n = hl_group_pow A G y n) -> x = y) <-> hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12358 / FINITE_GROUP_ZPOW_INJECTIVE_EQ   (hash md5:20a7458d0f23510ca04cd622b39fd2a5)
Theorem hlt_FINITE_GROUP_ZPOW_INJECTIVE_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e hl_ty_int, hl_FINITE A (hl_group_carrier A G) = 1 -> ((forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_zpow A G x n = hl_group_zpow A G y n) -> x = y) <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int n (hl_int_of_num (hl_CARD A (hl_group_carrier A G)))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12370 / FINITE_GROUP_POW_SURJECTIVE_EQ   (hash md5:b85915c6c25a3a838045d2e6d49680f3)
Theorem hlt_FINITE_GROUP_POW_SURJECTIVE_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_FINITE A (hl_group_carrier A G) = 1 -> ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> exists y :e A, hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_pow A G y n = x) <-> hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12383 / FINITE_GROUP_ZPOW_SURJECTIVE_EQ   (hash md5:95f73e3fa17d848e7a33a6a6ed440fcc)
Theorem hlt_FINITE_GROUP_ZPOW_SURJECTIVE_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e hl_ty_int, hl_FINITE A (hl_group_carrier A G) = 1 -> ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> exists y :e A, hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_zpow A G y n = x) <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int n (hl_int_of_num (hl_CARD A (hl_group_carrier A G)))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12396 / FINITE_GROUP_ZROOT_EXISTS   (hash md5:b6395fabdb1cf8b9beada99c302f6b6c)
Theorem hlt_FINITE_GROUP_ZROOT_EXISTS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e hl_ty_int, forall x :e A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_int_coprime (hl_pair hl_ty_int hl_ty_int n (hl_int_of_num (hl_CARD A (hl_group_carrier A G)))) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1) -> exists y :e A, hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_zpow A G y n = x.
Admitted.

// HOL Light: Library/grouptheory.ml:12404 / FINITE_GROUP_ROOT_EXISTS   (hash md5:68955f4c6ec2454538e3cee5a7980459)
Theorem hlt_FINITE_GROUP_ROOT_EXISTS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, forall x :e A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1 /\ hl_IN A x (hl_group_carrier A G) = 1) -> exists y :e A, hl_IN A y (hl_group_carrier A G) = 1 /\ hl_group_pow A G y n = x.
Admitted.

// HOL Light: Library/grouptheory.ml:12412 / ABELIAN_GROUP_MONOMORPHISM_POWERING_EQ   (hash md5:222defb0971948cb42b6f9cc5c40d0b9)
Theorem hlt_ABELIAN_GROUP_MONOMORPHISM_POWERING_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> (hl_group_monomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => hl_group_pow A G x n) = 1 <-> hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12420 / ABELIAN_GROUP_MONOMORPHISM_POWERING   (hash md5:3757c4f233a67374e3dedfc048fe20ad)
Theorem hlt_ABELIAN_GROUP_MONOMORPHISM_POWERING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1) -> hl_group_monomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => hl_group_pow A G x n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12427 / ABELIAN_GROUP_ISOMORPHISM_POWERING_EQ   (hash md5:3363ac6406514e1dc0ef5770029ff37a)
Theorem hlt_ABELIAN_GROUP_ISOMORPHISM_POWERING_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> (hl_group_isomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => hl_group_pow A G x n) = 1 <-> hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12435 / ABELIAN_GROUP_ISOMORPHISM_POWERING   (hash md5:725635bdec3b6a6176f630f8ab5cd089)
Theorem hlt_ABELIAN_GROUP_ISOMORPHISM_POWERING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1) -> hl_group_isomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => hl_group_pow A G x n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12442 / ABELIAN_GROUP_EPIMORPHISM_POWERING_EQ   (hash md5:93363ec4dd5025db687eb4fdad7e0415)
Theorem hlt_ABELIAN_GROUP_EPIMORPHISM_POWERING_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> (hl_group_epimorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => hl_group_pow A G x n) = 1 <-> hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12450 / ABELIAN_GROUP_EPIMORPHISM_POWERING   (hash md5:fd2de0aa6181966a220806b289222a3b)
Theorem hlt_ABELIAN_GROUP_EPIMORPHISM_POWERING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e omega, hl_abelian_group A G = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_num_coprime (hl_pair omega omega n (hl_CARD A (hl_group_carrier A G))) = 1) -> hl_group_epimorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) G G) (fun x :e A => hl_group_pow A G x n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12457 / PGROUP_ACTION_FIXPOINTS   (hash md5:4a03150fa28b27f72ca89e403f252d76)
Theorem hlt_PGROUP_ACTION_FIXPOINTS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall p :e omega, hl_group_action A X G s a = 1 /\ (hl_FINITE X s = 1 /\ (hl_prime p = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) G = 1))) -> hl_sym_3d3d omega (hl_CARD X (hl_GSPEC X (fun GEN_PVAR_1085 :e X => if exists x :e X, hl_SETSPEC X GEN_PVAR_1085 (if hl_IN X x s = 1 /\ forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> a g x = x then 1 else 0) x = 1 then 1 else 0))) (hl_CARD X s) (hl_num_mod p) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12498 / PGROUP_ACTION_FIXPOINT   (hash md5:4e707f6ef5a54aac50b256733843e51c)
Theorem hlt_PGROUP_ACTION_FIXPOINT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: X, forall a :e X :^: X :^: A, forall p :e omega, hl_group_action A X G s a = 1 /\ (hl_prime p = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) G = 1 /\ (hl_FINITE X s = 1 /\ ~ hl_num_divides p (hl_CARD X s) = 1)))) -> exists x :e X, hl_IN X x s = 1 /\ forall g :e A, hl_IN A g (hl_group_carrier A G) = 1 -> a g x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:12511 / SYLOW_THEOREM_CONJUGATE_GEN   (hash md5:e60d78fcf685b03b16ff6a975c72961d)
Theorem hlt_SYLOW_THEOREM_CONJUGATE_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h j :e 2 :^: A, hl_prime p = 1 /\ (hl_subgroup_of A h G = 1 /\ (hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1087 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1087 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0)) = 1 /\ (~ hl_num_divides p (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1088 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1088 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x h) = 1 then 1 else 0))) = 1 /\ (hl_subgroup_of A j G = 1 /\ (hl_FINITE A j = 1 /\ hl_CARD A j = hl_EXP p k))))) -> exists a :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_SUBSET A j (hl_IMAGE A A (hl_group_conjugation A G a) h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12549 / SYLOW_THEOREM_CONJUGATE_SUBSET   (hash md5:cdfcbd52fd0bb3d84fb88b45e332682c)
Theorem hlt_SYLOW_THEOREM_CONJUGATE_SUBSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k l :e omega, forall h j :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (~ hl_num_divides (hl_EXP p (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD A (hl_group_carrier A G)) = 1 /\ (hl_subgroup_of A h G = 1 /\ (hl_CARD A h = hl_EXP p k /\ (hl_subgroup_of A j G = 1 /\ hl_CARD A j = hl_EXP p l))))) -> exists a :e A, hl_IN A a (hl_group_carrier A G) = 1 /\ hl_SUBSET A j (hl_IMAGE A A (hl_group_conjugation A G a) h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12567 / SYLOW_THEOREM_CONJUGATE_ALT   (hash md5:c9d8a484325257a3144ad573d0fa2c51)
Theorem hlt_SYLOW_THEOREM_CONJUGATE_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h h' :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (~ hl_num_divides (hl_EXP p (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD A (hl_group_carrier A G)) = 1 /\ (hl_subgroup_of A h G = 1 /\ (hl_CARD A h = hl_EXP p k /\ (hl_subgroup_of A h' G = 1 /\ hl_CARD A h' = hl_EXP p k))))) -> hl_group_conjugate A G h h' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12583 / SYLOW_THEOREM_CONJUGATE   (hash md5:116c77bde9f8be05fee2fd5abac1c6ec)
Theorem hlt_SYLOW_THEOREM_CONJUGATE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h h' :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_index p (hl_CARD A (hl_group_carrier A G)) = k /\ (hl_subgroup_of A h G = 1 /\ (hl_CARD A h = hl_EXP p k /\ (hl_subgroup_of A h' G = 1 /\ hl_CARD A h' = hl_EXP p k))))) -> hl_group_conjugate A G h h' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12596 / SYLOW_THEOREM_CONJUGATE_EQ   (hash md5:7aee06b888e6219170020cb212ac154e)
Theorem hlt_SYLOW_THEOREM_CONJUGATE_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h h' :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_index p (hl_CARD A (hl_group_carrier A G)) = k /\ (hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k))) -> (hl_subgroup_of A h' G = 1 /\ hl_CARD A h' = hl_EXP p k <-> hl_group_conjugate A G h h' = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12609 / SYLOW_THEOREM_PGROUP_SUPERSET   (hash md5:103cdee1c8f79c891f7b05fb4960e277)
Theorem hlt_SYLOW_THEOREM_PGROUP_SUPERSET : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k)) -> exists h' :e 2 :^: A, hl_subgroup_of A h' G = 1 /\ (hl_SUBSET A h h' = 1 /\ hl_CARD A h' = hl_EXP p (hl_index p (hl_CARD A (hl_group_carrier A G)))).
Admitted.

// HOL Light: Library/grouptheory.ml:12636 / SYLOW_THEOREM_NORMAL_UNIQUE   (hash md5:222568b6c80f4137451bba7b4e74f16b)
Theorem hlt_SYLOW_THEOREM_NORMAL_UNIQUE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h h' :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_index p (hl_CARD A (hl_group_carrier A G)) = k /\ (hl_normal_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k))) -> (hl_subgroup_of A h' G = 1 /\ hl_CARD A h' = hl_EXP p k <-> h' = h).
Admitted.

// HOL Light: Library/grouptheory.ml:12645 / SYLOW_THEOREM_COUNT_NORMALIZER   (hash md5:86e092cc4e2fcf2e91b68056971f95aa)
Theorem hlt_SYLOW_THEOREM_COUNT_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall p k :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_index p (hl_CARD A (hl_group_carrier A G)) = k /\ (hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k))) -> hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1089 :e 2 :^: A => if exists h1 :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1089 (if hl_subgroup_of A h1 G = 1 /\ hl_CARD A h1 = hl_EXP p k then 1 else 0) h1 = 1 then 1 else 0)) = hl_DIV (hl_CARD A (hl_group_carrier A G)) (hl_CARD A (hl_group_normalizer A G h)).
Admitted.

// HOL Light: Library/grouptheory.ml:12658 / SYLOW_THEOREM_COUNT_NORMALIZER_MUL   (hash md5:b15114cd74e4cf2fe44051cbc7d44825)
Theorem hlt_SYLOW_THEOREM_COUNT_NORMALIZER_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, forall p k :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_index p (hl_CARD A (hl_group_carrier A G)) = k /\ (hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k))) -> hl_mul (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1090 :e 2 :^: A => if exists h1 :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1090 (if hl_subgroup_of A h1 G = 1 /\ hl_CARD A h1 = hl_EXP p k then 1 else 0) h1 = 1 then 1 else 0))) (hl_CARD A (hl_group_normalizer A G h)) = hl_CARD A (hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:12674 / SYLOW_THEOREM_NORMAL_UNIQUE_EQ   (hash md5:e70d9e06652dfbc176ec3582bd861d2e)
Theorem hlt_SYLOW_THEOREM_NORMAL_UNIQUE_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_index p (hl_CARD A (hl_group_carrier A G)) = k /\ (hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k))) -> ((forall h' :e 2 :^: A, hl_subgroup_of A h' G = 1 /\ hl_CARD A h' = hl_EXP p k <-> h' = h) <-> hl_normal_subgroup_of A h G = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12694 / SYLOW_THEOREM_UNIQUE   (hash md5:850a6b500da788c575d5009376f152c2)
Theorem hlt_SYLOW_THEOREM_UNIQUE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ hl_index p (hl_CARD A (hl_group_carrier A G)) = k) -> (hl_exists_unique (2 :^: A) (fun h :e 2 :^: A => if hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k then 1 else 0) = 1 <-> exists h :e 2 :^: A, hl_normal_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k).
Admitted.

// HOL Light: Library/grouptheory.ml:12711 / SYLOW_THEOREM_COUNT_DIVISOR   (hash md5:416e5222d99d87db10065ed1cbf12b1b)
Theorem hlt_SYLOW_THEOREM_COUNT_DIVISOR : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ hl_index p (hl_CARD A (hl_group_carrier A G)) = k) -> hl_num_divides (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1092 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1092 (if hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k then 1 else 0) h = 1 then 1 else 0))) (hl_DIV (hl_CARD A (hl_group_carrier A G)) (hl_EXP p k)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12733 / PGROUP_NONTRIVIAL_CENTRE_GEN   (hash md5:b8462918a40f20dfb21e7cd5c11afdbd)
Theorem hlt_PGROUP_NONTRIVIAL_CENTRE_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall p :e omega, hl_prime p = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) G = 1 /\ (hl_normal_subgroup_of A n G = 1 /\ ~ n = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)))) -> hl_PSUBSET A (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) (hl_INTER A (hl_group_centralizer A G (hl_group_carrier A G)) n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12782 / PGROUP_NONTRIVIAL_CENTRE   (hash md5:bccfac5f707f5e888aec20ebf2634f95)
Theorem hlt_PGROUP_NONTRIVIAL_CENTRE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, hl_prime p = 1 /\ (~ k = hl_NUMERAL hl_zero /\ hl_HAS_SIZE A (hl_group_carrier A G) (hl_EXP p k) = 1) -> hl_PSUBSET A (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) (hl_group_centralizer A G (hl_group_carrier A G)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12794 / PGROUP_DIVIDES_NORMALIZER_QUOTIENT   (hash md5:f064fc006feb095406eba5bd22beb360)
Theorem hlt_PGROUP_DIVIDES_NORMALIZER_QUOTIENT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_subgroup_of A h G = 1 /\ (hl_CARD A h = hl_EXP p k /\ hl_num_divides p (hl_DIV (hl_CARD A (hl_group_carrier A G)) (hl_CARD A h)) = 1))) -> hl_num_divides p (hl_DIV (hl_CARD A (hl_group_normalizer A G h)) (hl_CARD A h)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12863 / PGROUP_SUBGROUP_PSUBSET_NORMALIZER   (hash md5:402423daed90b46eed817b8c797ce5ae)
Theorem hlt_PGROUP_SUBGROUP_PSUBSET_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, forall h :e 2 :^: A, hl_prime p = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) G = 1 /\ (hl_subgroup_of A h G = 1 /\ ~ h = hl_group_carrier A G))) -> hl_PSUBSET A h (hl_group_normalizer A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12886 / PGROUP_MAXIMAL_NORMAL_SUBGROUP_OF   (hash md5:b43c24014775e88f4e43071c261e81a9)
Theorem hlt_PGROUP_MAXIMAL_NORMAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, forall h :e 2 :^: A, hl_prime p = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) G = 1 /\ (hl_subgroup_of A h G = 1 /\ (forall h' :e 2 :^: A, hl_subgroup_of A h' G = 1 /\ hl_PSUBSET A h h' = 1 -> h' = hl_group_carrier A G)))) -> hl_normal_subgroup_of A h G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:12899 / PGROUP_FRATTINI   (hash md5:b92d3f76e2ce786c100c92570af45dea)
Theorem hlt_PGROUP_FRATTINI : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h j :e 2 :^: A, hl_prime p = 1 /\ (hl_FINITE A j = 1 /\ (hl_normal_subgroup_of A j G = 1 /\ (hl_SUBSET A h j = 1 /\ (hl_subgroup_of A h G = 1 /\ (hl_index p (hl_CARD A j) = k /\ hl_CARD A h = hl_EXP p k))))) -> hl_group_setmul A G (hl_group_normalizer A G h) j = hl_group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:12944 / PGROUP_SELF_NORMALIZER   (hash md5:720c5b13b992b8f78acdad796470dca7)
Theorem hlt_PGROUP_SELF_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall s h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_index p (hl_CARD A (hl_group_carrier A G)) = k /\ (hl_subgroup_of A s G = 1 /\ (hl_CARD A s = hl_EXP p k /\ (hl_subgroup_of A h G = 1 /\ hl_SUBSET A (hl_group_normalizer A G s) h = 1))))) -> hl_group_normalizer A G h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:12993 / PGROUP_NORMALIZER_NORMALIZER   (hash md5:29251eca3f4f9ff6ec4c782514f9a57d)
Theorem hlt_PGROUP_NORMALIZER_NORMALIZER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p k :e omega, forall h :e 2 :^: A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_prime p = 1 /\ (hl_index p (hl_CARD A (hl_group_carrier A G)) = k /\ (hl_subgroup_of A h G = 1 /\ hl_CARD A h = hl_EXP p k))) -> hl_group_normalizer A G (hl_group_normalizer A G h) = hl_group_normalizer A G h.
Admitted.

// HOL Light: Library/grouptheory.ml:13008 / GROUP_DISJOINT_SUM_ALT   (hash md5:50773b611af58c10591a1af71c275f56)
Theorem hlt_GROUP_DISJOINT_SUM_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> (hl_SUBSET A (hl_INTER A g h) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1 <-> hl_INTER A g h = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)).
Admitted.

// HOL Light: Library/grouptheory.ml:13014 / GROUP_DISJOINT_SUM_ID   (hash md5:01ef20d969de83ba6ca81e70ca2dffbb)
Theorem hlt_GROUP_DISJOINT_SUM_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> (hl_SUBSET A (hl_INTER A g h) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1 <-> forall x y :e A, hl_IN A x g = 1 /\ (hl_IN A y h = 1 /\ hl_group_mul A G x y = hl_group_id A G) -> x = hl_group_id A G /\ y = hl_group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:13030 / GROUP_DISJOINT_SUM_CANCEL   (hash md5:045eb58aa4f308223cdd041f40a61d09)
Theorem hlt_GROUP_DISJOINT_SUM_CANCEL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> (hl_SUBSET A (hl_INTER A g h) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1 <-> forall x x' y y' :e A, hl_IN A x g = 1 /\ (hl_IN A x' g = 1 /\ (hl_IN A y h = 1 /\ (hl_IN A y' h = 1 /\ hl_group_mul A G x y = hl_group_mul A G x' y'))) -> x = x' /\ y = y').
Admitted.

// HOL Light: Library/grouptheory.ml:13058 / GROUP_SUM_COMMUTING_IMP_NORMAL   (hash md5:5717a0f8c872daeeb044ae9655468bfa)
Theorem hlt_GROUP_SUM_COMMUTING_IMP_NORMAL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ (hl_subgroup_of A h G = 1 /\ (hl_SUBSET A (hl_group_carrier A G) (hl_group_setmul A G g h) = 1 /\ (forall x y :e A, hl_IN A x g = 1 /\ hl_IN A y h = 1 -> hl_group_mul A G x y = hl_group_mul A G y x))) -> hl_normal_subgroup_of A g G = 1 /\ hl_normal_subgroup_of A h G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13092 / GROUP_SUM_NORMAL_IMP_COMMUTING   (hash md5:d49ec6e3db7159c7028930881bf61530)
Theorem hlt_GROUP_SUM_NORMAL_IMP_COMMUTING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_normal_subgroup_of A g G = 1 /\ (hl_normal_subgroup_of A h G = 1 /\ hl_SUBSET A (hl_INTER A g h) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1) -> forall x y :e A, hl_IN A x g = 1 /\ hl_IN A y h = 1 -> hl_group_mul A G x y = hl_group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:13127 / GROUP_SUM_NORMAL_EQ_COMMUTING   (hash md5:8fdd99afb2fc82e66a8bdc60b78f3a7b)
Theorem hlt_GROUP_SUM_NORMAL_EQ_COMMUTING : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ (hl_subgroup_of A h G = 1 /\ (hl_SUBSET A (hl_group_carrier A G) (hl_group_setmul A G g h) = 1 /\ hl_SUBSET A (hl_INTER A g h) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1)) -> (hl_normal_subgroup_of A g G = 1 /\ hl_normal_subgroup_of A h G = 1 <-> forall x y :e A, hl_IN A x g = 1 /\ hl_IN A y h = 1 -> hl_group_mul A G x y = hl_group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:13139 / GROUP_HOMOMORPHISM_GROUP_MUL_GEN   (hash md5:5bc58abb09125927ec3a07fb96a053c9)
Theorem hlt_GROUP_HOMOMORPHISM_GROUP_MUL_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_group_homomorphism (A :*: A) A (hl_pair (hl_ty_group (A :*: A)) (hl_ty_group A) (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) G) (hl_GABS (A :^: (A :*: A)) (fun f :e A :^: (A :*: A) => if forall x y :e A, hl_GEQ A (f (hl_pair A A x y)) (hl_group_mul A G x y) = 1 then 1 else 0)) = 1 <-> forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x g = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y h = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:13174 / GROUP_HOMOMORPHISM_GROUP_MUL_EQ   (hash md5:3825c40823c8856f141aca9ab2776d46)
Theorem hlt_GROUP_HOMOMORPHISM_GROUP_MUL_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> (hl_group_homomorphism (A :*: A) A (hl_pair (hl_ty_group (A :*: A)) (hl_ty_group A) (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) G) (hl_GABS (A :^: (A :*: A)) (fun f :e A :^: (A :*: A) => if forall x y :e A, hl_GEQ A (f (hl_pair A A x y)) (hl_group_mul A G x y) = 1 then 1 else 0)) = 1 <-> forall x y :e A, hl_IN A x g = 1 /\ hl_IN A y h = 1 -> hl_group_mul A G x y = hl_group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:13184 / GROUP_HOMOMORPHISM_GROUP_MUL   (hash md5:bd21400452c62d36262441c033037532)
Theorem hlt_GROUP_HOMOMORPHISM_GROUP_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_abelian_group A G = 1 -> hl_group_homomorphism (A :*: A) A (hl_pair (hl_ty_group (A :*: A)) (hl_ty_group A) (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) G) (hl_GABS (A :^: (A :*: A)) (fun f :e A :^: (A :*: A) => if forall x y :e A, hl_GEQ A (f (hl_pair A A x y)) (hl_group_mul A G x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13193 / GROUP_EPIMORPHISM_GROUP_MUL_EQ   (hash md5:7edfe51bebf230de2b2ae5a532eab76e)
Theorem hlt_GROUP_EPIMORPHISM_GROUP_MUL_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> (hl_group_epimorphism (A :*: A) A (hl_pair (hl_ty_group (A :*: A)) (hl_ty_group A) (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) G) (hl_GABS (A :^: (A :*: A)) (fun f :e A :^: (A :*: A) => if forall x y :e A, hl_GEQ A (f (hl_pair A A x y)) (hl_group_mul A G x y) = 1 then 1 else 0)) = 1 <-> hl_group_setmul A G g h = hl_group_carrier A G /\ forall x y :e A, hl_IN A x g = 1 /\ hl_IN A y h = 1 -> hl_group_mul A G x y = hl_group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:13208 / GROUP_MONOMORPHISM_GROUP_MUL_EQ   (hash md5:56171413ef3da0d3de5d44c4f75de184)
Theorem hlt_GROUP_MONOMORPHISM_GROUP_MUL_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> (hl_group_monomorphism (A :*: A) A (hl_pair (hl_ty_group (A :*: A)) (hl_ty_group A) (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) G) (hl_GABS (A :^: (A :*: A)) (fun f :e A :^: (A :*: A) => if forall x y :e A, hl_GEQ A (f (hl_pair A A x y)) (hl_group_mul A G x y) = 1 then 1 else 0)) = 1 <-> hl_INTER A g h = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) /\ forall x y :e A, hl_IN A x g = 1 /\ hl_IN A y h = 1 -> hl_group_mul A G x y = hl_group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:13223 / GROUP_ISOMORPHISM_GROUP_MUL_ALT   (hash md5:f4f7015702fdd2755b0335190977b834)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_MUL_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> (hl_group_isomorphism (A :*: A) A (hl_pair (hl_ty_group (A :*: A)) (hl_ty_group A) (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) G) (hl_GABS (A :^: (A :*: A)) (fun f :e A :^: (A :*: A) => if forall x y :e A, hl_GEQ A (f (hl_pair A A x y)) (hl_group_mul A G x y) = 1 then 1 else 0)) = 1 <-> hl_INTER A g h = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) /\ (hl_group_setmul A G g h = hl_group_carrier A G /\ forall x y :e A, hl_IN A x g = 1 /\ hl_IN A y h = 1 -> hl_group_mul A G x y = hl_group_mul A G y x)).
Admitted.

// HOL Light: Library/grouptheory.ml:13237 / GROUP_ISOMORPHISM_GROUP_MUL_EQ   (hash md5:8bf5d1f1b8d1e86998059ef64a049223)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_MUL_EQ : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1 -> (hl_group_isomorphism (A :*: A) A (hl_pair (hl_ty_group (A :*: A)) (hl_ty_group A) (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) G) (hl_GABS (A :^: (A :*: A)) (fun f :e A :^: (A :*: A) => if forall x y :e A, hl_GEQ A (f (hl_pair A A x y)) (hl_group_mul A G x y) = 1 then 1 else 0)) = 1 <-> hl_normal_subgroup_of A g G = 1 /\ (hl_normal_subgroup_of A h G = 1 /\ (hl_INTER A g h = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) /\ hl_group_setmul A G g h = hl_group_carrier A G))).
Admitted.

// HOL Light: Library/grouptheory.ml:13253 / GROUP_ISOMORPHISM_GROUP_MUL_GEN   (hash md5:1242ca189c7172aa73ce8cefeb402517)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_MUL_GEN : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_normal_subgroup_of A g G = 1 /\ hl_normal_subgroup_of A h G = 1 -> (hl_group_isomorphism (A :*: A) A (hl_pair (hl_ty_group (A :*: A)) (hl_ty_group A) (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) G) (hl_GABS (A :^: (A :*: A)) (fun f :e A :^: (A :*: A) => if forall x y :e A, hl_GEQ A (f (hl_pair A A x y)) (hl_group_mul A G x y) = 1 then 1 else 0)) = 1 <-> hl_SUBSET A (hl_INTER A g h) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1 /\ hl_group_setmul A G g h = hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:13264 / GROUP_ISOMORPHISM_GROUP_MUL   (hash md5:9f815f0cd154bb3160fe4dfb1bfe8e13)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_abelian_group A G = 1 /\ (hl_subgroup_of A g G = 1 /\ hl_subgroup_of A h G = 1) -> (hl_group_isomorphism (A :*: A) A (hl_pair (hl_ty_group (A :*: A)) (hl_ty_group A) (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) G) (hl_GABS (A :^: (A :*: A)) (fun f :e A :^: (A :*: A) => if forall x y :e A, hl_GEQ A (f (hl_pair A A x y)) (hl_group_mul A G x y) = 1 then 1 else 0)) = 1 <-> hl_SUBSET A (hl_INTER A g h) (hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) = 1 /\ hl_group_setmul A G g h = hl_group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:13275 / ISOMORPHIC_PROD_GROUP_SUBGROUP_GENERATED   (hash md5:bc4c6ab0f7873f542f6c877f852b149d)
Theorem hlt_ISOMORPHIC_PROD_GROUP_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall g h :e 2 :^: A, hl_normal_subgroup_of A g G = 1 /\ (hl_normal_subgroup_of A h G = 1 /\ hl_INTER A g h = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)) -> hl_isomorphic_group (A :*: A) A (hl_prod_group A A (hl_subgroup_generated A G g) (hl_subgroup_generated A G h)) (hl_subgroup_generated A G (hl_group_setmul A G g h)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13296 / GROUP_INTER_IM_KER   (hash md5:b559e959a3949255c69bf442e5a9f8a5)
Theorem hlt_GROUP_INTER_IM_KER : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g = 1 /\ hl_group_monomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G K) (hl_o B C A g f) = 1) -> hl_INTER B (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) (hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g) = hl_INSERT B (hl_group_id B H) (hl_EMPTY B).
Admitted.

// HOL Light: Library/grouptheory.ml:13308 / GROUP_SUM_IM_KER   (hash md5:967da436864ae7c40f7d07094febf6dc)
Theorem hlt_GROUP_SUM_IM_KER : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g = 1 /\ hl_group_epimorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G K) (hl_o B C A g f) = 1) -> hl_group_setmul B H (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) (hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g) = hl_group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:13334 / GROUP_SUM_KER_IM   (hash md5:b150977fc99ada7471244008b2b69aea)
Theorem hlt_GROUP_SUM_KER_IM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g = 1 /\ hl_group_epimorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G K) (hl_o B C A g f) = 1) -> hl_group_setmul B H (hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g) (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) = hl_group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:13362 / GROUP_SEMIDIRECT_SUM_IM_KER   (hash md5:0e5b39b1184828cb5f375a575edfd8db)
Theorem hlt_GROUP_SEMIDIRECT_SUM_IM_KER : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g = 1 /\ hl_group_isomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G K) (hl_o B C A g f) = 1) -> hl_INTER B (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) (hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g) = hl_INSERT B (hl_group_id B H) (hl_EMPTY B) /\ hl_group_setmul B H (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) (hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g) = hl_group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:13373 / GROUP_SEMIDIRECT_SUM_KER_IM   (hash md5:2f047e75f5897c9352362c8842dee525)
Theorem hlt_GROUP_SEMIDIRECT_SUM_KER_IM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g = 1 /\ hl_group_isomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G K) (hl_o B C A g f) = 1) -> hl_INTER B (hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g) (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) = hl_INSERT B (hl_group_id B H) (hl_EMPTY B) /\ hl_group_setmul B H (hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g) (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f) = hl_group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:13385 / GROUP_ISOMORPHISM_GROUP_MUL_IM_KER   (hash md5:17f6762cd5abfaeb4f92503d71a9f09a)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_MUL_IM_KER : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_abelian_group B H = 1 /\ (hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g = 1 /\ hl_group_isomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G K) (hl_o B C A g f) = 1)) -> hl_group_isomorphism (B :*: B) B (hl_pair (hl_ty_group (B :*: B)) (hl_ty_group B) (hl_prod_group B B (hl_subgroup_generated B H (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f)) (hl_subgroup_generated B H (hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g))) H) (hl_GABS (B :^: (B :*: B)) (fun f1 :e B :^: (B :*: B) => if forall x y :e B, hl_GEQ B (f1 (hl_pair B B x y)) (hl_group_mul B H x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13399 / GROUP_ISOMORPHISM_GROUP_MUL_KER_IM   (hash md5:4394154ff27d44d7241ab4bc83413b11)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_MUL_KER_IM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, hl_abelian_group B H = 1 /\ (hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g = 1 /\ hl_group_isomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) G K) (hl_o B C A g f) = 1)) -> hl_group_isomorphism (B :*: B) B (hl_pair (hl_ty_group (B :*: B)) (hl_ty_group B) (hl_prod_group B B (hl_subgroup_generated B H (hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g)) (hl_subgroup_generated B H (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f))) H) (hl_GABS (B :^: (B :*: B)) (fun f1 :e B :^: (B :*: B) => if forall x y :e B, hl_GEQ B (f1 (hl_pair B B x y)) (hl_group_mul B H x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13417 / GROUP_HOMOMORPHISM_GROUP_SUM_GEN   (hash md5:260b6dfb656e6da13c23b144c8981d20)
Theorem hlt_GROUP_HOMOMORPHISM_GROUP_SUM_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall k l :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_SUBSET K k l = 1 -> (hl_group_homomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A l (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x (h i) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y (h j) = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:13507 / GROUP_HOMOMORPHISM_GROUP_SUM_EQ   (hash md5:4035fba06316807b817d79cea1a6152f)
Theorem hlt_GROUP_HOMOMORPHISM_GROUP_SUM_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall k l :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_SUBSET K k l = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) -> (hl_group_homomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A l (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:13519 / GROUP_HOMOMORPHISM_GROUP_SUM   (hash md5:6f907f9385694feba3618cd6ab233bd6)
Theorem hlt_GROUP_HOMOMORPHISM_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 -> hl_group_homomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13529 / GROUP_HOMOMORPHISM_ABELIAN_GROUP_SUM   (hash md5:9aa4d8661537e669c2020b1b5cd07b09)
Theorem hlt_GROUP_HOMOMORPHISM_ABELIAN_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_abelian_group A G = 1 -> hl_group_homomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13538 / ABELIAN_GROUP_HOMOMORPHISM_GROUP_SUM   (hash md5:5df8bcc4a591d5cfad24899abe7fde70)
Theorem hlt_ABELIAN_GROUP_HOMOMORPHISM_GROUP_SUM : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall f :e B :^: A :^: K, forall k :e 2 :^: K, forall A1 :e hl_ty_group A :^: K, forall B1 :e hl_ty_group B, hl_abelian_group B B1 = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (A1 i) B1) (f i) = 1) -> hl_group_homomorphism (A :^: K) B (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group B) (hl_sum_group K A k A1) B1) (fun x :e A :^: K => hl_group_sum B K B1 k (fun i :e K => f i (x i))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13558 / SUBGROUP_EPIMORPHISM_GROUP_SUM_GEN   (hash md5:3d1e610febb4133c55225a98aeb6ff02)
Theorem hlt_SUBGROUP_EPIMORPHISM_GROUP_SUM_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall k l :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_SUBSET K k l = 1 -> (hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A l (fun i :e K => hl_subgroup_generated A G (h i))) (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1104 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1104 (hl_IN K i k) (h i) = 1 then 1 else 0))))) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x (h i) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y (h j) = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:13607 / SUBGROUP_EPIMORPHISM_GROUP_SUM_EQ   (hash md5:ba6c8d6f14817aebe42707cbcc7af5c6)
Theorem hlt_SUBGROUP_EPIMORPHISM_GROUP_SUM_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall k l :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_SUBSET K k l = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) -> (hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A l (fun i :e K => hl_subgroup_generated A G (h i))) (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1105 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1105 (hl_IN K i k) (h i) = 1 then 1 else 0))))) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:13620 / SUBGROUP_EPIMORPHISM_GROUP_SUM   (hash md5:d4b3343b7e783099005e5320e883cc38)
Theorem hlt_SUBGROUP_EPIMORPHISM_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 -> hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1106 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1106 (hl_IN K i k) (h i) = 1 then 1 else 0))))) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13631 / SUBGROUP_EPIMORPHISM_ABELIAN_GROUP_SUM   (hash md5:90c94841c396da1e107f327fbd7cebe8)
Theorem hlt_SUBGROUP_EPIMORPHISM_ABELIAN_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_abelian_group A G = 1 -> hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1107 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1107 (hl_IN K i k) (h i) = 1 then 1 else 0))))) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13641 / GROUP_EPIMORPHISM_GROUP_SUM_GEN   (hash md5:39c58e41f5bf4407fd8d0f59add5b9d5)
Theorem hlt_GROUP_EPIMORPHISM_GROUP_SUM_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall k l :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_SUBSET K k l = 1 -> (hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A l (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x (h i) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y (h j) = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1108 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1108 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G).
Admitted.

// HOL Light: Library/grouptheory.ml:13656 / GROUP_EPIMORPHISM_GROUP_SUM_EQ   (hash md5:7f2b4ee4e5ec64b77be4f4a626ba49ce)
Theorem hlt_GROUP_EPIMORPHISM_GROUP_SUM_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall k l :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_SUBSET K k l = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) -> (hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A l (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1109 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1109 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G).
Admitted.

// HOL Light: Library/grouptheory.ml:13669 / GROUP_EPIMORPHISM_GROUP_SUM   (hash md5:b0b1212f77d5f3d9386929e6743ab123)
Theorem hlt_GROUP_EPIMORPHISM_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1110 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1110 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G -> hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13680 / GROUP_EPIMORPHISM_ABELIAN_GROUP_SUM   (hash md5:56afdc315e514d71ed77411b818f74d1)
Theorem hlt_GROUP_EPIMORPHISM_ABELIAN_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_abelian_group A G = 1 /\ hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1111 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1111 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G -> hl_group_epimorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13690 / GROUP_MONOMORPHISM_GROUP_SUM_GEN   (hash md5:41b0ca1e575d7e14b04d25780856b5d9)
Theorem hlt_GROUP_MONOMORPHISM_GROUP_SUM_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_group_monomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x (h i) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y (h j) = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_INTER A (hl_group_carrier A (hl_subgroup_generated A G (h i))) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1112 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1112 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:13810 / GROUP_MONOMORPHISM_GROUP_SUM_EQ   (hash md5:64a413ae6eb1af2cf47cd64a5b970f41)
Theorem hlt_GROUP_MONOMORPHISM_GROUP_SUM_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) -> (hl_group_monomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1113 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1113 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)).
Admitted.

// HOL Light: Library/grouptheory.ml:13826 / GROUP_MONOMORPHISM_GROUP_SUM   (hash md5:efeaf85372e1b9c7985702eb5ca1fd96)
Theorem hlt_GROUP_MONOMORPHISM_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) /\ (hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1114 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1114 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) -> hl_group_monomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13840 / GROUP_MONOMORPHISM_ABELIAN_GROUP_SUM   (hash md5:cba4cbc8d6ab738f7be5b1d770c3a60e)
Theorem hlt_GROUP_MONOMORPHISM_ABELIAN_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_abelian_group A G = 1 /\ ((forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1115 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1115 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) -> hl_group_monomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13854 / SUBGROUP_ISOMORPHISM_GROUP_SUM_GEN   (hash md5:27127a1dd9c4d73d7cac547a94a2be84)
Theorem hlt_SUBGROUP_ISOMORPHISM_GROUP_SUM_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_group_isomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1116 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1116 (hl_IN K i k) (h i) = 1 then 1 else 0))))) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x (h i) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y (h j) = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_INTER A (hl_group_carrier A (hl_subgroup_generated A G (h i))) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1117 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1117 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A).
Admitted.

// HOL Light: Library/grouptheory.ml:13873 / SUBGROUP_ISOMORPHISM_GROUP_SUM_EQ   (hash md5:f243bb770b9fd2a329d6b8a673064764)
Theorem hlt_SUBGROUP_ISOMORPHISM_GROUP_SUM_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) -> (hl_group_isomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1118 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1118 (hl_IN K i k) (h i) = 1 then 1 else 0))))) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1119 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1119 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)).
Admitted.

// HOL Light: Library/grouptheory.ml:13891 / SUBGROUP_ISOMORPHISM_GROUP_SUM   (hash md5:30983bc2e09b9467842adb781b054b64)
Theorem hlt_SUBGROUP_ISOMORPHISM_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) /\ (hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1120 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1120 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) -> hl_group_isomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1121 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1121 (hl_IN K i k) (h i) = 1 then 1 else 0))))) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13909 / SUBGROUP_ISOMORPHISM_ABELIAN_GROUP_SUM   (hash md5:a43588e8423165c03835534c04a1fe4e)
Theorem hlt_SUBGROUP_ISOMORPHISM_ABELIAN_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_abelian_group A G = 1 /\ ((forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1122 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1122 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) -> hl_group_isomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1123 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1123 (hl_IN K i k) (h i) = 1 then 1 else 0))))) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13925 / GROUP_ISOMORPHISM_GROUP_SUM_GEN   (hash md5:c315a874e9543cfa8e19cba856507b12)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_SUM_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_group_isomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x (h i) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y (h j) = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1124 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1124 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G /\ forall i :e K, hl_IN K i k = 1 -> hl_INTER A (hl_group_carrier A (hl_subgroup_generated A G (h i))) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1125 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1125 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)).
Admitted.

// HOL Light: Library/grouptheory.ml:13944 / GROUP_ISOMORPHISM_GROUP_SUM_EQ   (hash md5:373d05d7f66f755e24d15b47c6d186b0)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_SUM_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) -> (hl_group_isomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1 <-> hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1126 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1126 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G /\ forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1127 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1127 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A))).
Admitted.

// HOL Light: Library/grouptheory.ml:13962 / GROUP_ISOMORPHISM_GROUP_SUM   (hash md5:e183909cec53e7bbc921257a4a305d1f)
Theorem hlt_GROUP_ISOMORPHISM_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) /\ (hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1128 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1128 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1129 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1129 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)))) -> hl_group_isomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13980 / GROUP_ISOMORPHISM_ABELIAN_GROUP_SUM   (hash md5:aa705393776f12256241c86680c5a4c9)
Theorem hlt_GROUP_ISOMORPHISM_ABELIAN_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_abelian_group A G = 1 /\ ((forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) /\ (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1130 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1130 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1131 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1131 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)))) -> hl_group_isomorphism (A :^: K) A (hl_pair (hl_ty_group (A :^: K)) (hl_ty_group A) (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G) (hl_group_sum A K G k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:13996 / ISOMORPHIC_SUM_GROUP_GEN   (hash md5:4c6dca97e9e3fe202ab7a6e0ae066b57)
Theorem hlt_ISOMORPHIC_SUM_GROUP_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A x (h i) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A y (h j) = 1)) -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1132 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1132 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (hl_group_carrier A (hl_subgroup_generated A G (h i))) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1133 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1133 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) -> hl_isomorphic_group (A :^: K) A (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14012 / ISOMORPHIC_SUM_GROUP   (hash md5:320f3ef86f4b9f3fc9f8693c5fcddf16)
Theorem hlt_ISOMORPHIC_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) /\ (hl_pairwise K (fun i :e K => fun j :e K => if forall x y :e A, hl_IN A x (h i) = 1 /\ hl_IN A y (h j) = 1 -> hl_group_mul A G x y = hl_group_mul A G y x then 1 else 0) k = 1 /\ (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1134 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1134 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1135 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1135 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)))) -> hl_isomorphic_group (A :^: K) A (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14028 / ISOMORPHIC_ABELIAN_SUM_GROUP   (hash md5:bec1360eb0405908a8a73f87eda843ea)
Theorem hlt_ISOMORPHIC_ABELIAN_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, hl_abelian_group A G = 1 /\ ((forall i :e K, hl_IN K i k = 1 -> hl_subgroup_of A (h i) G = 1) /\ (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1136 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1136 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1137 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1137 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A)))) -> hl_isomorphic_group (A :^: K) A (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14043 / ISOMORPHIC_NORMAL_SUM_GROUP   (hash md5:74cab3f22bc82ffd47d4fac2e04b31e1)
Theorem hlt_ISOMORPHIC_NORMAL_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall G :e hl_ty_group A, forall h :e 2 :^: A :^: K, (forall i :e K, hl_IN K i k = 1 -> hl_normal_subgroup_of A (h i) G = 1) /\ (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1138 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1138 (hl_IN K i k) (h i) = 1 then 1 else 0))) = G /\ (forall i :e K, hl_IN K i k = 1 -> hl_INTER A (h i) (hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1139 :e 2 :^: A => if exists j :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1139 (hl_IN K j (hl_DELETE K k i)) (h j) = 1 then 1 else 0))))) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A))) -> hl_isomorphic_group (A :^: K) A (hl_sum_group K A k (fun i :e K => hl_subgroup_generated A G (h i))) G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14068 / CARRIER_SUBGROUP_GENERATED_UNIONS   (hash md5:a0a5f372364f98b5bc8b1ac3c9f54da9)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_UNIONS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: A), hl_abelian_group A G = 1 -> hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A u)) = hl_IMAGE (A :^: (2 :^: A)) A (hl_group_sum A (2 :^: A) G u) (hl_group_carrier (A :^: (2 :^: A)) (hl_sum_group (2 :^: A) A u (fun i :e 2 :^: A => hl_subgroup_generated A G i))).
Admitted.

// HOL Light: Library/grouptheory.ml:14082 / CARRIER_SUBGROUP_GENERATED_UNIONS_ALT   (hash md5:95bb622dd957cd851c87203e5e2d5dff)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_UNIONS_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: A), hl_abelian_group A G = 1 -> hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A u)) = hl_GSPEC A (fun GEN_PVAR_1144 :e A => if exists f :e A :^: (2 :^: A), hl_SETSPEC A GEN_PVAR_1144 (if (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_IN A (f s) (hl_group_carrier A (hl_subgroup_generated A G s)) = 1) /\ hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1143 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1143 (if hl_IN (2 :^: A) s u = 1 /\ ~ f s = hl_group_id A G then 1 else 0) s = 1 then 1 else 0)) = 1 then 1 else 0) (hl_group_sum A (2 :^: A) G u f) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:14099 / CARRIER_SUBGROUP_GENERATED_UNIONS_FINITE   (hash md5:0cd0aefa1b9c35aeeadc48f51e797e70)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_UNIONS_FINITE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: A), hl_abelian_group A G = 1 /\ hl_FINITE (2 :^: A) u = 1 -> hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A u)) = hl_GSPEC A (fun GEN_PVAR_1145 :e A => if exists f :e A :^: (2 :^: A), hl_SETSPEC A GEN_PVAR_1145 (if forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_IN A (f s) (hl_group_carrier A (hl_subgroup_generated A G s)) = 1 then 1 else 0) (hl_group_sum A (2 :^: A) G u f) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:14107 / CARRIER_SUBGROUP_GENERATED_UNIONS_EXPLICIT   (hash md5:2faf1ae02ae76b13f5eb8ac74a095e8f)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_UNIONS_EXPLICIT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall u :e 2 :^: (2 :^: A), hl_abelian_group A G = 1 -> hl_group_carrier A (hl_subgroup_generated A G (hl_UNIONS A u)) = hl_GSPEC A (fun GEN_PVAR_1148 :e A => if exists t :e 2 :^: (2 :^: A), exists f :e A :^: (2 :^: A), hl_SETSPEC A GEN_PVAR_1148 (if hl_FINITE (2 :^: A) t = 1 /\ (hl_SUBSET (2 :^: A) t u = 1 /\ forall s :e 2 :^: A, hl_IN (2 :^: A) s t = 1 -> hl_IN A (f s) (hl_group_carrier A (hl_subgroup_generated A G s)) = 1) then 1 else 0) (hl_group_sum A (2 :^: A) G t f) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:14134 / CARRIER_SUBGROUP_GENERATED_ALT   (hash md5:bd2c26fefc42faa29962110261cf730a)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_abelian_group A G = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_group_carrier A (hl_subgroup_generated A G s) = hl_GSPEC A (fun GEN_PVAR_1155 :e A => if exists n :e hl_ty_int :^: A, hl_SETSPEC A GEN_PVAR_1155 (hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_1154 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1154 (if hl_IN A x s = 1 /\ ~ n x = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) (hl_group_sum A A G s (fun x :e A => hl_group_zpow A G x (n x))) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:14199 / CARRIER_SUBGROUP_GENERATED_FINITE   (hash md5:facc683b8e2cec08924fad5d9d24e454)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_FINITE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_abelian_group A G = 1 /\ (hl_FINITE A s = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1) -> hl_group_carrier A (hl_subgroup_generated A G s) = hl_GSPEC A (fun GEN_PVAR_1156 :e A => if exists n :e hl_ty_int :^: A, hl_SETSPEC A GEN_PVAR_1156 (hl_IN (hl_ty_int :^: A) n (hl_UNIV (hl_ty_int :^: A))) (hl_group_sum A A G s (fun x :e A => hl_group_zpow A G x (n x))) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:14206 / CARRIER_SUBGROUP_GENERATED_EXPLICIT   (hash md5:2c3b6fd1de33cc39498adf9aeb13eef2)
Theorem hlt_CARRIER_SUBGROUP_GENERATED_EXPLICIT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_abelian_group A G = 1 /\ hl_SUBSET A s (hl_group_carrier A G) = 1 -> hl_group_carrier A (hl_subgroup_generated A G s) = hl_GSPEC A (fun GEN_PVAR_1159 :e A => if exists t :e 2 :^: A, exists n :e hl_ty_int :^: A, hl_SETSPEC A GEN_PVAR_1159 (if hl_FINITE A t = 1 /\ hl_SUBSET A t s = 1 then 1 else 0) (hl_group_sum A A G t (fun x :e A => hl_group_zpow A G x (n x))) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/grouptheory.ml:14235 / SUBGROUP_GENERATED_UNIONS_PRIME_TORSION_FINITE   (hash md5:ec26000d638882f4c46aa788fc3e3e19)
Theorem hlt_SUBGROUP_GENERATED_UNIONS_PRIME_TORSION_FINITE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall P :e 2 :^: omega, hl_FINITE omega (hl_GSPEC omega (fun GEN_PVAR_1166 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1166 (if hl_prime p = 1 /\ P p = 1 then 1 else 0) p = 1 then 1 else 0)) = 1 -> hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1169 :e 2 :^: A => if exists p :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_1169 (if hl_prime p = 1 /\ P p = 1 then 1 else 0) (hl_GSPEC A (fun GEN_PVAR_1168 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1168 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)) = 1 then 1 else 0))) = hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1170 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1170 (if hl_IN A x (hl_group_carrier A G) = 1 /\ forall p :e omega, hl_prime p = 1 /\ hl_num_divides p (hl_group_element_order A G x) = 1 -> P p = 1 then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:14307 / SUBGROUP_GENERATED_UNIONS_PRIME_TORSION   (hash md5:59b3b58792db37be56d05d5de1f23e45)
Theorem hlt_SUBGROUP_GENERATED_UNIONS_PRIME_TORSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall P :e 2 :^: omega, hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1178 :e 2 :^: A => if exists p :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_1178 (if hl_prime p = 1 /\ P p = 1 then 1 else 0) (hl_GSPEC A (fun GEN_PVAR_1177 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1177 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)) = 1 then 1 else 0))) = hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1179 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1179 (if hl_IN A x (hl_group_carrier A G) = 1 /\ (~ hl_group_element_order A G x = hl_NUMERAL hl_zero /\ forall p :e omega, hl_prime p = 1 /\ hl_num_divides p (hl_group_element_order A G x) = 1 -> P p = 1) then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:14338 / SUBGROUP_GENERATED_UNIONS_PRIME_TORSION_FULL   (hash md5:fef34daf570e9cc469170e0f4ab9c43f)
Theorem hlt_SUBGROUP_GENERATED_UNIONS_PRIME_TORSION_FULL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_subgroup_generated A G (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1182 :e 2 :^: A => if exists p :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_1182 (hl_prime p) (hl_GSPEC A (fun GEN_PVAR_1181 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1181 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)) = 1 then 1 else 0))) = hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1183 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1183 (if hl_IN A x (hl_group_carrier A G) = 1 /\ ~ hl_group_element_order A G x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:14350 / PGROUP_PRIME_TORSION   (hash md5:87455f9daaf469d9c73673d9167f0312)
Theorem hlt_PGROUP_PRIME_TORSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, hl_abelian_group A G = 1 /\ hl_prime p = 1 -> hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) (hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1184 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1184 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14361 / PGROUP_SUBSET_PRIME_TORSION   (hash md5:db7fc531da122355b5414fd1f36fbd39)
Theorem hlt_PGROUP_SUBSET_PRIME_TORSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall p :e omega, forall s :e 2 :^: A, hl_prime p = 1 /\ (hl_SUBSET A s (hl_group_carrier A G) = 1 /\ hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) (hl_subgroup_generated A G s) = 1) -> hl_SUBSET A s (hl_GSPEC A (fun GEN_PVAR_1185 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1185 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14374 / ABELIAN_GROUP_TORSION_ISOMORPHISM   (hash md5:2b90c805f1ae44d0cf3a362f0e899b07)
Theorem hlt_ABELIAN_GROUP_TORSION_ISOMORPHISM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 -> hl_group_isomorphism (A :^: omega) A (hl_pair (hl_ty_group (A :^: omega)) (hl_ty_group A) (hl_sum_group omega A (hl_GSPEC omega (fun GEN_PVAR_1189 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1189 (hl_prime p) p = 1 then 1 else 0)) (fun p :e omega => hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1190 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1190 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)))) (hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1191 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1191 (if hl_IN A x (hl_group_carrier A G) = 1 /\ ~ hl_group_element_order A G x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)))) (hl_group_sum A omega G (hl_GSPEC omega (fun GEN_PVAR_1192 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1192 (hl_prime p) p = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14411 / ABELIAN_GROUP_TORSION_STRUCTURE   (hash md5:a3c2a44eb14a51e325cece56d2c7a549)
Theorem hlt_ABELIAN_GROUP_TORSION_STRUCTURE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 -> hl_isomorphic_group A (A :^: omega) (hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1193 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1193 (if hl_IN A x (hl_group_carrier A G) = 1 /\ ~ hl_group_element_order A G x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0))) (hl_sum_group omega A (hl_GSPEC omega (fun GEN_PVAR_1194 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1194 (hl_prime p) p = 1 then 1 else 0)) (fun p :e omega => hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1195 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1195 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14425 / TORSION_ABELIAN_GROUP_ISOMORPHISM   (hash md5:f63e394d3fb092e0eb123b998855491c)
Theorem hlt_TORSION_ABELIAN_GROUP_ISOMORPHISM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> ~ hl_group_element_order A G x = hl_NUMERAL hl_zero) -> hl_group_isomorphism (A :^: omega) A (hl_pair (hl_ty_group (A :^: omega)) (hl_ty_group A) (hl_sum_group omega A (hl_GSPEC omega (fun GEN_PVAR_1196 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1196 (hl_prime p) p = 1 then 1 else 0)) (fun p :e omega => hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1197 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1197 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)))) G) (hl_group_sum A omega G (hl_GSPEC omega (fun GEN_PVAR_1198 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1198 (hl_prime p) p = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14443 / TORSION_ABELIAN_GROUP_STRUCTURE   (hash md5:27c19e430a5f38aec80974b96b74b063)
Theorem hlt_TORSION_ABELIAN_GROUP_STRUCTURE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> ~ hl_group_element_order A G x = hl_NUMERAL hl_zero) -> hl_isomorphic_group A (A :^: omega) G (hl_sum_group omega A (hl_GSPEC omega (fun GEN_PVAR_1199 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1199 (hl_prime p) p = 1 then 1 else 0)) (fun p :e omega => hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1200 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1200 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14456 / FINITE_ABELIAN_GROUP_STRUCTURE   (hash md5:3af8cc117d1bfd55cda9bdb00356eed7)
Theorem hlt_FINITE_ABELIAN_GROUP_STRUCTURE : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> hl_isomorphic_group A (A :^: omega) G (hl_sum_group omega A (hl_GSPEC omega (fun GEN_PVAR_1201 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1201 (if hl_prime p = 1 /\ hl_num_divides p (hl_CARD A (hl_group_carrier A G)) = 1 then 1 else 0) p = 1 then 1 else 0)) (fun p :e omega => hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1202 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1202 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14483 / FINITE_ABELIAN_GROUP_STRUCTURE_ALT   (hash md5:7cfe3c09a8e5ec3440d61b2ee053f317)
Theorem hlt_FINITE_ABELIAN_GROUP_STRUCTURE_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 /\ hl_FINITE A (hl_group_carrier A G) = 1 -> hl_isomorphic_group A (A :^: omega) G (hl_product_group omega A (hl_GSPEC omega (fun GEN_PVAR_1203 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1203 (if hl_prime p = 1 /\ hl_num_divides p (hl_CARD A (hl_group_carrier A G)) = 1 then 1 else 0) p = 1 then 1 else 0)) (fun p :e omega => hl_subgroup_generated A G (hl_GSPEC A (fun GEN_PVAR_1204 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1204 (if hl_IN A x (hl_group_carrier A G) = 1 /\ exists k :e omega, hl_group_element_order A G x = hl_EXP p k then 1 else 0) x = 1 then 1 else 0)))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:14498 / TORSION_ABELIAN_GROUP_AS_SUM_OF_PGROUPS   (hash md5:27fcae8a355e49d9575a96f2aae59dd4)
Theorem hlt_TORSION_ABELIAN_GROUP_AS_SUM_OF_PGROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 -> ((forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> ~ hl_group_element_order A G x = hl_NUMERAL hl_zero) <-> exists H :e hl_ty_group A :^: omega, (forall p :e omega, hl_prime p = 1 -> hl_pgroup A (hl_INSERT omega p (hl_EMPTY omega)) (H p) = 1) /\ hl_isomorphic_group A (A :^: omega) G (hl_sum_group omega A (hl_GSPEC omega (fun GEN_PVAR_1207 :e omega => if exists p :e omega, hl_SETSPEC omega GEN_PVAR_1207 (hl_prime p) p = 1 then 1 else 0)) H) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:14537 / FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_ISOMORPHISM   (hash md5:95c87a42636547bd28da045526bd7371)
Theorem hlt_FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_ISOMORPHISM : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_abelian_group A G = 1 /\ hl_FINITE A s = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_le (hl_CARD A t) (hl_CARD A s) = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ (hl_subgroup_generated A G t = hl_subgroup_generated A G s /\ hl_group_isomorphism (A :^: A) A (hl_pair (hl_ty_group (A :^: A)) (hl_ty_group A) (hl_sum_group A A t (fun x :e A => hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) (hl_subgroup_generated A G s)) (hl_group_sum A A G t) = 1))).
Admitted.

// HOL Light: Library/grouptheory.ml:14924 / FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_ISOMORPHISM_ALT   (hash md5:e01bd97a1b8b12c66a37c7daea1cf87b)
Theorem hlt_FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_ISOMORPHISM_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_abelian_group A G = 1 /\ hl_FINITE A s = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_le (hl_CARD A t) (hl_CARD A s) = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ (hl_subgroup_generated A G t = hl_subgroup_generated A G s /\ hl_group_isomorphism (A :^: A) A (hl_pair (hl_ty_group (A :^: A)) (hl_ty_group A) (hl_product_group A A t (fun x :e A => hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) (hl_subgroup_generated A G s)) (hl_group_sum A A G t) = 1))).
Admitted.

// HOL Light: Library/grouptheory.ml:14937 / FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_EXPLICIT   (hash md5:c370d05792df4a964815778b7743d750)
Theorem hlt_FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_EXPLICIT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_abelian_group A G = 1 /\ hl_FINITE A s = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_le (hl_CARD A t) (hl_CARD A s) = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ (hl_subgroup_generated A G t = hl_subgroup_generated A G s /\ hl_isomorphic_group A (A :^: A) (hl_subgroup_generated A G s) (hl_sum_group A A t (fun x :e A => hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1))).
Admitted.

// HOL Light: Library/grouptheory.ml:14950 / FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_EXPLICIT_ALT   (hash md5:4d99aedff426ab705ee7896f94f434be)
Theorem hlt_FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_EXPLICIT_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall s :e 2 :^: A, hl_abelian_group A G = 1 /\ hl_FINITE A s = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_le (hl_CARD A t) (hl_CARD A s) = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ (hl_subgroup_generated A G t = hl_subgroup_generated A G s /\ hl_isomorphic_group A (A :^: A) (hl_subgroup_generated A G s) (hl_product_group A A t (fun x :e A => hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1))).
Admitted.

// HOL Light: Library/grouptheory.ml:14961 / FINITELY_GENERATED_ABELIAN_GROUP_STRUCTURE_EXPLICIT   (hash md5:cda9f268b52fd16b296a232b0c300ec4)
Theorem hlt_FINITELY_GENERATED_ABELIAN_GROUP_STRUCTURE_EXPLICIT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ hl_abelian_group A G = 1 <-> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ hl_isomorphic_group A (A :^: A) G (hl_sum_group A A t (fun x :e A => hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:14978 / FINITELY_GENERATED_ABELIAN_GROUP_STRUCTURE_EXPLICIT_ALT   (hash md5:2b35172010324633a3d1c8e1fc14bb6c)
Theorem hlt_FINITELY_GENERATED_ABELIAN_GROUP_STRUCTURE_EXPLICIT_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ hl_abelian_group A G = 1 <-> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t (hl_group_carrier A G) = 1 /\ hl_isomorphic_group A (A :^: A) G (hl_product_group A A t (fun x :e A => hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:14986 / FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_CYCLIC_GROUPS   (hash md5:8438f5283e4c61b4986738791396063f)
Theorem hlt_FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_CYCLIC_GROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ hl_abelian_group A G = 1 <-> exists n :e omega, exists H :e hl_ty_group A :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i n = 1 -> hl_cyclic_group A (H i) = 1) /\ hl_isomorphic_group A (A :^: omega) G (hl_sum_group omega A (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15016 / FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_CYCLIC_GROUPS   (hash md5:2e34056d2becbba9fa2b31ed08aa2dbb)
Theorem hlt_FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_CYCLIC_GROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ hl_abelian_group A G = 1 <-> exists n :e omega, exists H :e hl_ty_group A :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i n = 1 -> hl_cyclic_group A (H i) = 1) /\ hl_isomorphic_group A (A :^: omega) G (hl_product_group omega A (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) H) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15025 / FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_INTEGER_MOD_GROUPS   (hash md5:3c8f409e45da5032381de6bffbb66cdc)
Theorem hlt_FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_INTEGER_MOD_GROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ hl_abelian_group A G = 1 <-> exists n :e omega, exists d :e omega :^: omega, hl_isomorphic_group A (hl_ty_int :^: omega) G (hl_sum_group omega hl_ty_int (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun i :e omega => hl_integer_mod_group (d i))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15049 / FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_INTEGER_MOD_GROUPS   (hash md5:2bb1a10e9dac440c89068fd605763164)
Theorem hlt_FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_INTEGER_MOD_GROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ hl_abelian_group A G = 1 <-> exists n :e omega, exists d :e omega :^: omega, hl_isomorphic_group A (hl_ty_int :^: omega) G (hl_product_group omega hl_ty_int (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun i :e omega => hl_integer_mod_group (d i))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15058 / FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_INTEGER_GROUPS   (hash md5:8ec6bb3ffc1a497b750c2cf52710c0e0)
Theorem hlt_FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_INTEGER_GROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ (hl_abelian_group A G = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_le (hl_group_element_order A G x) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1)) <-> exists n :e omega, hl_isomorphic_group A (hl_ty_int :^: omega) G (hl_sum_group omega hl_ty_int (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun i :e omega => hl_integer_group)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15128 / FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_INTEGER_GROUPS   (hash md5:61f087f15fedc233485066a3956d85ca)
Theorem hlt_FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_INTEGER_GROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_finitely_generated_group A G = 1 /\ (hl_abelian_group A G = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_le (hl_group_element_order A G x) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1)) <-> exists n :e omega, hl_isomorphic_group A (hl_ty_int :^: omega) G (hl_product_group omega hl_ty_int (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun i :e omega => hl_integer_group)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15140 / free_abelian_group   (hash md5:0f21e97c09696381bc54b97bd6fbf8c6)
Theorem hlt_free_abelian_group_thm : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_free_abelian_group A s = hl_group (hl_ty_frag A) (hl_pair (2 :^: hl_ty_frag A) (hl_ty_frag A :*: (hl_ty_frag A :^: hl_ty_frag A :*: hl_ty_frag A :^: hl_ty_frag A :^: hl_ty_frag A)) (hl_GSPEC (hl_ty_frag A) (fun GEN_PVAR_1212 :e hl_ty_frag A => if exists c :e hl_ty_frag A, hl_SETSPEC (hl_ty_frag A) GEN_PVAR_1212 (hl_SUBSET A (hl_frag_support A c) s) c = 1 then 1 else 0)) (hl_pair (hl_ty_frag A) (hl_ty_frag A :^: hl_ty_frag A :*: hl_ty_frag A :^: hl_ty_frag A :^: hl_ty_frag A) (hl_frag_0 A) (hl_pair (hl_ty_frag A :^: hl_ty_frag A) (hl_ty_frag A :^: hl_ty_frag A :^: hl_ty_frag A) (hl_frag_neg A) (hl_frag_add A)))).
Admitted.

// HOL Light: Library/grouptheory.ml:15144 / FREE_ABELIAN_GROUP   (hash md5:a83140f54b40c69d9dd24f2f60af01f6)
Theorem hlt_FREE_ABELIAN_GROUP : forall A:set, A <> Empty -> (forall s :e 2 :^: A, hl_group_carrier (hl_ty_frag A) (hl_free_abelian_group A s) = hl_GSPEC (hl_ty_frag A) (fun GEN_PVAR_1213 :e hl_ty_frag A => if exists c :e hl_ty_frag A, hl_SETSPEC (hl_ty_frag A) GEN_PVAR_1213 (hl_SUBSET A (hl_frag_support A c) s) c = 1 then 1 else 0)) /\ ((forall s :e 2 :^: A, hl_group_id (hl_ty_frag A) (hl_free_abelian_group A s) = hl_frag_0 A) /\ ((forall s :e 2 :^: A, hl_group_inv (hl_ty_frag A) (hl_free_abelian_group A s) = hl_frag_neg A) /\ forall s :e 2 :^: A, hl_group_mul (hl_ty_frag A) (hl_free_abelian_group A s) = hl_frag_add A)).
Admitted.

// HOL Light: Library/grouptheory.ml:15163 / ABELIAN_FREE_ABELIAN_GROUP   (hash md5:a17037c15eb5c6be1166aa4553d55d5b)
Theorem hlt_ABELIAN_FREE_ABELIAN_GROUP : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_abelian_group (hl_ty_frag A) (hl_free_abelian_group A s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15168 / FREE_ABELIAN_GROUP_POW   (hash md5:9d4cfb2faf26f9640393da8713834921)
Theorem hlt_FREE_ABELIAN_GROUP_POW : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e hl_ty_frag A, forall n :e omega, hl_group_pow (hl_ty_frag A) (hl_free_abelian_group A s) x n = hl_frag_cmul A (hl_int_of_num n) x.
Admitted.

// HOL Light: Library/grouptheory.ml:15175 / FREE_ABELIAN_GROUP_ZPOW   (hash md5:0e12e308afb2d9eb00376335666d1f65)
Theorem hlt_FREE_ABELIAN_GROUP_ZPOW : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e hl_ty_frag A, forall n :e hl_ty_int, hl_group_zpow (hl_ty_frag A) (hl_free_abelian_group A s) x n = hl_frag_cmul A n x.
Admitted.

// HOL Light: Library/grouptheory.ml:15182 / FRAG_OF_IN_FREE_ABELIAN_GROUP   (hash md5:7ecec38e3e40787d77be42bdbb62c28b)
Theorem hlt_FRAG_OF_IN_FREE_ABELIAN_GROUP : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e A, hl_IN (hl_ty_frag A) (hl_frag_of A x) (hl_group_carrier (hl_ty_frag A) (hl_free_abelian_group A s)) = 1 <-> hl_IN A x s = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15186 / FREE_ABELIAN_GROUP_INDUCT   (hash md5:eb54737c55f03274862bda2f02c4bb76)
Theorem hlt_FREE_ABELIAN_GROUP_INDUCT : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_frag A, forall s :e 2 :^: A, P (hl_frag_0 A) = 1 /\ ((forall x y :e hl_ty_frag A, hl_IN (hl_ty_frag A) x (hl_group_carrier (hl_ty_frag A) (hl_free_abelian_group A s)) = 1 /\ (hl_IN (hl_ty_frag A) y (hl_group_carrier (hl_ty_frag A) (hl_free_abelian_group A s)) = 1 /\ (P x = 1 /\ P y = 1)) -> P (hl_frag_sub A x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (hl_frag_of A a) = 1)) -> forall x :e hl_ty_frag A, hl_IN (hl_ty_frag A) x (hl_group_carrier (hl_ty_frag A) (hl_free_abelian_group A s)) = 1 -> P x = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15202 / FREE_ABELIAN_GROUP_UNIVERSAL   (hash md5:7333f2ebf3e1aacedb768a07b3911c87)
Theorem hlt_FREE_ABELIAN_GROUP_UNIVERSAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall G :e hl_ty_group B, hl_SUBSET B (hl_IMAGE A B f s) (hl_group_carrier B G) = 1 /\ hl_abelian_group B G = 1 -> exists h :e B :^: hl_ty_frag A, hl_group_homomorphism (hl_ty_frag A) B (hl_pair (hl_ty_group (hl_ty_frag A)) (hl_ty_group B) (hl_free_abelian_group A s) G) h = 1 /\ forall x :e A, hl_IN A x s = 1 -> h (hl_frag_of A x) = f x.
Admitted.

// HOL Light: Library/grouptheory.ml:15257 / ISOMORPHIC_GROUP_INTEGER_FREE_ABELIAN_GROUP_SING   (hash md5:36c52cd4bd4938ab15bd3acd83463460)
Theorem hlt_ISOMORPHIC_GROUP_INTEGER_FREE_ABELIAN_GROUP_SING : forall A:set, A <> Empty -> forall x :e A, hl_isomorphic_group hl_ty_int (hl_ty_frag A) hl_integer_group (hl_free_abelian_group A (hl_INSERT A x (hl_EMPTY A))) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15279 / GROUP_HOMOMORPHISM_FREE_ABELIAN_GROUPS_ID   (hash md5:74cec142258cbc81fb92eb8d77aae8ed)
Theorem hlt_GROUP_HOMOMORPHISM_FREE_ABELIAN_GROUPS_ID : forall A:set, A <> Empty -> forall k k' :e 2 :^: A, hl_group_homomorphism (hl_ty_frag A) (hl_ty_frag A) (hl_pair (hl_ty_group (hl_ty_frag A)) (hl_ty_group (hl_ty_frag A)) (hl_free_abelian_group A k) (hl_free_abelian_group A k')) (fun x :e hl_ty_frag A => x) = 1 <-> hl_SUBSET A k k' = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15290 / GROUP_ISOMORPHISM_FREE_ABELIAN_GROUP_SUM   (hash md5:312fa27596c4c981a89aedbf3b554bed)
Theorem hlt_GROUP_ISOMORPHISM_FREE_ABELIAN_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall f :e 2 :^: A :^: K, hl_pairwise K (fun i :e K => fun j :e K => hl_DISJOINT A (f i) (f j)) k = 1 -> hl_group_isomorphism (hl_ty_frag A :^: K) (hl_ty_frag A) (hl_pair (hl_ty_group (hl_ty_frag A :^: K)) (hl_ty_group (hl_ty_frag A)) (hl_sum_group K (hl_ty_frag A) k (fun i :e K => hl_free_abelian_group A (f i))) (hl_free_abelian_group A (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1216 :e 2 :^: A => if exists i :e K, hl_SETSPEC (2 :^: A) GEN_PVAR_1216 (hl_IN K i k) (f i) = 1 then 1 else 0))))) (hl_iterate (hl_ty_frag A) K (hl_frag_add A) k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15388 / ISOMORPHIC_FREE_ABELIAN_GROUP_UNIONS   (hash md5:a33204cd216b28a0ebe35c08f2b2761c)
Theorem hlt_ISOMORPHIC_FREE_ABELIAN_GROUP_UNIONS : forall A:set, A <> Empty -> forall k :e 2 :^: (2 :^: A), hl_pairwise (2 :^: A) (hl_DISJOINT A) k = 1 -> hl_isomorphic_group (hl_ty_frag A) (hl_ty_frag A :^: (2 :^: A)) (hl_free_abelian_group A (hl_UNIONS A k)) (hl_sum_group (2 :^: A) (hl_ty_frag A) k (hl_free_abelian_group A)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15400 / ISOMORPHIC_SUM_INTEGER_GROUP   (hash md5:0017a60f1b54bc92ff0370cd61908c33)
Theorem hlt_ISOMORPHIC_SUM_INTEGER_GROUP : forall A:set, A <> Empty -> forall k :e 2 :^: A, hl_isomorphic_group (hl_ty_int :^: A) (hl_ty_frag A) (hl_sum_group A hl_ty_int k (fun i :e A => hl_integer_group)) (hl_free_abelian_group A k) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15415 / CARD_EQ_FREE_ABELIAN_GROUP_INFINITE   (hash md5:e332464b95ee92f9e7536fab5864011d)
Theorem hlt_CARD_EQ_FREE_ABELIAN_GROUP_INFINITE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_INFINITE A s = 1 -> hl_sym_3d5f63 (hl_ty_frag A) A (hl_group_carrier (hl_ty_frag A) (hl_free_abelian_group A s)) s = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15448 / CARD_EQ_HOMOMORPHISMS_FROM_FREE_ABELIAN_GROUP   (hash md5:8390b13426f35461c386c42654ab1414)
Theorem hlt_CARD_EQ_HOMOMORPHISMS_FROM_FREE_ABELIAN_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall G :e hl_ty_group B, hl_abelian_group B G = 1 -> hl_sym_3d5f63 (B :^: hl_ty_frag A) (B :^: A) (hl_GSPEC (B :^: hl_ty_frag A) (fun GEN_PVAR_1220 :e B :^: hl_ty_frag A => if exists f :e B :^: hl_ty_frag A, hl_SETSPEC (B :^: hl_ty_frag A) GEN_PVAR_1220 (if hl_EXTENSIONAL (hl_ty_frag A) B (hl_group_carrier (hl_ty_frag A) (hl_free_abelian_group A s)) f = 1 /\ hl_group_homomorphism (hl_ty_frag A) B (hl_pair (hl_ty_group (hl_ty_frag A)) (hl_ty_group B) (hl_free_abelian_group A s) G) f = 1 then 1 else 0) f = 1 then 1 else 0)) (hl_sym_5e5f63 B A (hl_group_carrier B G) s) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15503 / ISOMORPHIC_FREE_ABELIAN_GROUPS   (hash md5:c2b70f87fdddbe949805239d5138ca82)
Theorem hlt_ISOMORPHIC_FREE_ABELIAN_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_isomorphic_group (hl_ty_frag A) (hl_ty_frag B) (hl_free_abelian_group A s) (hl_free_abelian_group B t) = 1 <-> hl_sym_3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15620 / solvable_group   (hash md5:4f0f5b8d22ea22492bb52d72316216a9)
Theorem hlt_solvable_group_thm : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_solvable_group A G = 1 <-> exists k :e omega, exists c :e 2 :^: A :^: omega, c (hl_NUMERAL hl_zero) = hl_group_carrier A G /\ (c k = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) /\ forall i :e omega, hl_lt i k = 1 -> hl_normal_subgroup_of A (c (hl_SUC i)) (hl_subgroup_generated A G (c i)) = 1 /\ hl_abelian_group (2 :^: A) (hl_quotient_group A (hl_subgroup_generated A G (c i)) (c (hl_SUC i))) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:15634 / SOLVABLE_GROUP_ALT   (hash md5:b37df99574dd9d0b4ea4b78719fbf4d0)
Theorem hlt_SOLVABLE_GROUP_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_solvable_group A G = 1 <-> exists k :e omega, exists c :e 2 :^: A :^: omega, c (hl_NUMERAL hl_zero) = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) /\ (c k = hl_group_carrier A G /\ forall i :e omega, hl_lt i k = 1 -> hl_normal_subgroup_of A (c i) (hl_subgroup_generated A G (c (hl_SUC i))) = 1 /\ hl_abelian_group (2 :^: A) (hl_quotient_group A (hl_subgroup_generated A G (c (hl_SUC i))) (c i)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:15674 / ABELIAN_QUOTIENT_COMMUTATOR   (hash md5:21fc074c707d6f262748f4dc42ca03f5)
Theorem hlt_ABELIAN_QUOTIENT_COMMUTATOR : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, forall x y :e A, hl_normal_subgroup_of A n G = 1 /\ (hl_abelian_group (2 :^: A) (hl_quotient_group A G n) = 1 /\ (hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1)) -> hl_IN A (hl_group_mul A G (hl_group_inv A G x) (hl_group_mul A G (hl_group_inv A G y) (hl_group_mul A G x y))) n = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15707 / TRIVIAL_IMP_SOLVABLE_GROUP   (hash md5:9be284f4771e0e9927d231633ecb079c)
Theorem hlt_TRIVIAL_IMP_SOLVABLE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_trivial_group A G = 1 -> hl_solvable_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15717 / ABELIAN_IMP_SOLVABLE_GROUP   (hash md5:a1add45a3d248c9403d7fb07882295cf)
Theorem hlt_ABELIAN_IMP_SOLVABLE_GROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_abelian_group A G = 1 -> hl_solvable_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15738 / SOLVABLE_GROUP_NORMAL_EXTENSION   (hash md5:cb97330b2d9034c3068662177de3615b)
Theorem hlt_SOLVABLE_GROUP_NORMAL_EXTENSION : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 /\ (hl_abelian_group (2 :^: A) (hl_quotient_group A G n) = 1 /\ hl_solvable_group A (hl_subgroup_generated A G n) = 1) -> hl_solvable_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15855 / ABELIAN_QUOTIENT_EPIMORPHIC_IMAGE   (hash md5:35e4e34adb6a711abfbfa5d4e18cd93f)
Theorem hlt_ABELIAN_QUOTIENT_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, forall n :e 2 :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_normal_subgroup_of A n G = 1 /\ hl_abelian_group (2 :^: A) (hl_quotient_group A G n) = 1) -> hl_normal_subgroup_of B (hl_IMAGE A B f n) H = 1 /\ hl_abelian_group (2 :^: B) (hl_quotient_group B H (hl_IMAGE A B f n)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15906 / SOLVABLE_GROUP_EPIMORPHIC_IMAGE   (hash md5:ed393bf447befa8a6c6cc729f4427f7f)
Theorem hlt_SOLVABLE_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_solvable_group A G = 1 -> hl_solvable_group B H = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15967 / SOLVABLE_GROUP_QUOTIENT   (hash md5:b35fa6a969fc7f2e6e1a112ac82fa8cf)
Theorem hlt_SOLVABLE_GROUP_QUOTIENT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_solvable_group A G = 1 /\ hl_normal_subgroup_of A n G = 1 -> hl_solvable_group (2 :^: A) (hl_quotient_group A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:15979 / ISOMORPHIC_GROUP_SOLVABILITY   (hash md5:73c61092b5d809a2fc57e0a963c19c7f)
Theorem hlt_ISOMORPHIC_GROUP_SOLVABILITY : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_isomorphic_group A B G H = 1 -> (hl_solvable_group A G = 1 <-> hl_solvable_group B H = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:15998 / COMMUTATOR_IMP_ABELIAN_QUOTIENT   (hash md5:cb819144cf199c018bcc5e2fef3e1947)
Theorem hlt_COMMUTATOR_IMP_ABELIAN_QUOTIENT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 /\ (forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_IN A (hl_group_mul A G (hl_group_inv A G x) (hl_group_mul A G (hl_group_inv A G y) (hl_group_mul A G x y))) n = 1) -> hl_abelian_group (2 :^: A) (hl_quotient_group A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16022 / ABELIAN_QUOTIENT_GROUP_DIV   (hash md5:2d5a101b344cbe976583430a2f343610)
Theorem hlt_ABELIAN_QUOTIENT_GROUP_DIV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 /\ (forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_IN A (hl_group_div A G (hl_group_mul A G x y) (hl_group_mul A G y x)) n = 1) -> hl_abelian_group (2 :^: A) (hl_quotient_group A G n) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16045 / SOLVABLE_GROUP_SUBGROUP   (hash md5:67c85e9e6085d18f91c7b78a133f5de8)
Theorem hlt_SOLVABLE_GROUP_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall h :e 2 :^: A, hl_subgroup_of A h G = 1 /\ hl_solvable_group A G = 1 -> hl_solvable_group A (hl_subgroup_generated A G h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16198 / SOLVABLE_GROUP_MONOMORPHIC_PREIMAGE   (hash md5:885d197fa4999d623c78523cdd31c8f0)
Theorem hlt_SOLVABLE_GROUP_MONOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, forall f :e B :^: A, hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ hl_solvable_group B H = 1 -> hl_solvable_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16216 / SOLVABLE_GROUP_SOLVABLE_QUOTIENT   (hash md5:477245e6a3b1bdaf1206d6ec87832c95)
Theorem hlt_SOLVABLE_GROUP_SOLVABLE_QUOTIENT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 /\ (hl_solvable_group A (hl_subgroup_generated A G n) = 1 /\ hl_solvable_group (2 :^: A) (hl_quotient_group A G n) = 1) -> hl_solvable_group A G = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16504 / group_exactness   (hash md5:2d8deb9624fa8147171aadecc4de74ec)
Theorem hlt_group_exactness_thm : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G :e hl_ty_group A, forall f :e B :^: A, forall H :e hl_ty_group B, forall K :e hl_ty_group C, forall g :e C :^: B, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) G (hl_pair (hl_ty_group B) (hl_ty_group C) H K)) (hl_pair (B :^: A) (C :^: B) f g) = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g = 1 /\ hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) G H) f = hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) H K) g).
Admitted.

// HOL Light: Library/grouptheory.ml:16509 / short_exact_sequence   (hash md5:47ae57ed4510eb0b91840a012a6b6e2a)
Theorem hlt_short_exact_sequence_thm : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall A1 :e hl_ty_group A, forall f :e B :^: A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall g :e C :^: B, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 <-> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ (hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ hl_group_epimorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:16515 / SHORT_EXACT_SEQUENCE   (hash md5:77796c9615deb8467dd69244fd4f01dd)
Theorem hlt_SHORT_EXACT_SEQUENCE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 <-> hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ (hl_group_epimorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1 /\ hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g).
Admitted.

// HOL Light: Library/grouptheory.ml:16525 / GROUP_EXACTNESS_MONOMORPHISM   (hash md5:370dd4f285bbb940b0fe40e1247774cb)
Theorem hlt_GROUP_EXACTNESS_MONOMORPHISM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_trivial_group A A1 = 1 -> (hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 <-> hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ hl_group_monomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:16534 / GROUP_EXACTNESS_EPIMORPHISM   (hash md5:90d2bcd9819a4edee00fa9dc25f5b407)
Theorem hlt_GROUP_EXACTNESS_EPIMORPHISM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_trivial_group C C1 = 1 -> (hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 <-> hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:16542 / EXTREMELY_SHORT_EXACT_SEQUENCE   (hash md5:c882dee0545cc329f7a5808dc374b5a6)
Theorem hlt_EXTREMELY_SHORT_EXACT_SEQUENCE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_trivial_group A A1 = 1 /\ hl_trivial_group C C1 = 1) -> hl_trivial_group B B1 = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16551 / GROUP_EXACTNESS_EPIMORPHISM_EQ_TRIVIALITY   (hash md5:b7bada82c51083efec65f038cd8ccbd0)
Theorem hlt_GROUP_EXACTNESS_EPIMORPHISM_EQ_TRIVIALITY : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 -> (hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 <-> hl_trivial_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:16559 / GROUP_EXACTNESS_MONOMORPHISM_EQ_TRIVIALITY   (hash md5:2247399cd0f37e74cb016cf3ee8601e6)
Theorem hlt_GROUP_EXACTNESS_MONOMORPHISM_EQ_TRIVIALITY : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 -> (hl_group_monomorphism C D (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1) h = 1 <-> hl_trivial_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:16567 / VERY_SHORT_EXACT_SEQUENCE   (hash md5:eb115a68c45e9c63dcf9010ea36bfe13)
Theorem hlt_VERY_SHORT_EXACT_SEQUENCE : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ (hl_trivial_group A A1 = 1 /\ hl_trivial_group D D1 = 1)) -> hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16578 / GROUP_EXACTNESS_EQ_TRIVIALITY   (hash md5:2edfb7d2e387be7f55a09bcaf77d1968)
Theorem hlt_GROUP_EXACTNESS_EQ_TRIVIALITY : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall k :e E :^: D, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall E1 :e hl_ty_group E, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ hl_group_exactness C D E (hl_pair (hl_ty_group C) (hl_ty_group D :*: hl_ty_group E) C1 (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1)) (hl_pair (D :^: C) (E :^: D) h k) = 1) -> (hl_trivial_group C C1 = 1 <-> hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ hl_group_monomorphism D E (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1) k = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:16591 / GROUP_EXACTNESS_IMP_TRIVIALITY   (hash md5:773585e19128fd5e7e482479b6bc55ae)
Theorem hlt_GROUP_EXACTNESS_IMP_TRIVIALITY : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall k :e E :^: D, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall E1 :e hl_ty_group E, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ (hl_group_exactness C D E (hl_pair (hl_ty_group C) (hl_ty_group D :*: hl_ty_group E) C1 (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1)) (hl_pair (D :^: C) (E :^: D) h k) = 1 /\ (hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ hl_group_isomorphism D E (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1) k = 1))) -> hl_trivial_group C C1 = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16602 / GROUP_EXACTNESS_ISOMORPHISM_EQ_TRIVIALITY   (hash md5:76f35a708daca30eb20d7c2e4b62afcb)
Theorem hlt_GROUP_EXACTNESS_ISOMORPHISM_EQ_TRIVIALITY : forall A B C D E G:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> G <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall j :e E :^: D, forall k :e G :^: E, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall E1 :e hl_ty_group E, forall G1 :e hl_ty_group G, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ (hl_group_exactness C D E (hl_pair (hl_ty_group C) (hl_ty_group D :*: hl_ty_group E) C1 (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1)) (hl_pair (D :^: C) (E :^: D) h j) = 1 /\ hl_group_exactness D E G (hl_pair (hl_ty_group D) (hl_ty_group E :*: hl_ty_group G) D1 (hl_pair (hl_ty_group E) (hl_ty_group G) E1 G1)) (hl_pair (E :^: D) (G :^: E) j k) = 1)) -> (hl_group_isomorphism C D (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1) h = 1 <-> hl_trivial_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g = 1 /\ hl_trivial_homomorphism D E (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1) j = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:16616 / GROUP_EXACTNESS_ISOMORPHISM_EQ_MONO_EPI   (hash md5:2999f259d0656f8a78127589a76c51cc)
Theorem hlt_GROUP_EXACTNESS_ISOMORPHISM_EQ_MONO_EPI : forall A B C D E G:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> G <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall j :e E :^: D, forall k :e G :^: E, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall E1 :e hl_ty_group E, forall G1 :e hl_ty_group G, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ (hl_group_exactness C D E (hl_pair (hl_ty_group C) (hl_ty_group D :*: hl_ty_group E) C1 (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1)) (hl_pair (D :^: C) (E :^: D) h j) = 1 /\ hl_group_exactness D E G (hl_pair (hl_ty_group D) (hl_ty_group E :*: hl_ty_group G) D1 (hl_pair (hl_ty_group E) (hl_ty_group G) E1 G1)) (hl_pair (E :^: D) (G :^: E) j k) = 1)) -> (hl_group_isomorphism C D (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1) h = 1 <-> hl_group_epimorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = 1 /\ hl_group_monomorphism E G (hl_pair (hl_ty_group E) (hl_ty_group G) E1 G1) k = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:16628 / SHORT_EXACT_SEQUENCE_NORMAL_SUBGROUP   (hash md5:c6b0ff0645046ca100594d3c05e662cc)
Theorem hlt_SHORT_EXACT_SEQUENCE_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 -> hl_short_exact_sequence A A (2 :^: A) (hl_pair (hl_ty_group A) (hl_ty_group A :*: hl_ty_group (2 :^: A)) (hl_subgroup_generated A G n) (hl_pair (hl_ty_group A) (hl_ty_group (2 :^: A)) G (hl_quotient_group A G n))) (hl_pair (A :^: A) (2 :^: A :^: A) (fun x :e A => x) (hl_right_coset A G n)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16641 / SHORT_EXACT_SEQUENCE_PROD_GROUP   (hash md5:cc102dacc4b18ac22f2d17756c871d0f)
Theorem hlt_SHORT_EXACT_SEQUENCE_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_short_exact_sequence A (A :*: B) B (hl_pair (hl_ty_group A) (hl_ty_group (A :*: B) :*: hl_ty_group B) G (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group B) (hl_prod_group A B G H) H)) (hl_pair ((A :*: B) :^: A) (B :^: (A :*: B)) (fun x :e A => hl_pair A B x (hl_group_id B H)) (hl_SND A B)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16653 / SHORT_EXACT_SEQUENCE_PROD_GROUP_ALT   (hash md5:b9b66cd920b325312503e6ca52ecbf94)
Theorem hlt_SHORT_EXACT_SEQUENCE_PROD_GROUP_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e hl_ty_group A, forall H :e hl_ty_group B, hl_short_exact_sequence B (A :*: B) A (hl_pair (hl_ty_group B) (hl_ty_group (A :*: B) :*: hl_ty_group A) H (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group A) (hl_prod_group A B G H) G)) (hl_pair ((A :*: B) :^: B) (A :^: (A :*: B)) (fun x :e B => hl_pair A B (hl_group_id A G) x) (hl_FST A B)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16665 / EXACT_SEQUENCE_SUM_LEMMA   (hash md5:af3fafbe0bf9bd9db2902e317369e97f)
Theorem hlt_EXACT_SEQUENCE_SUM_LEMMA : forall A B C D X:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> X <> Empty -> forall f :e C :^: X, forall g :e D :^: X, forall h :e C :^: A, forall i :e X :^: A, forall j :e X :^: B, forall k :e D :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall X1 :e hl_ty_group X, hl_abelian_group X X1 = 1 /\ (hl_group_isomorphism A C (hl_pair (hl_ty_group A) (hl_ty_group C) A1 C1) h = 1 /\ (hl_group_isomorphism B D (hl_pair (hl_ty_group B) (hl_ty_group D) B1 D1) k = 1 /\ (hl_group_exactness A X D (hl_pair (hl_ty_group A) (hl_ty_group X :*: hl_ty_group D) A1 (hl_pair (hl_ty_group X) (hl_ty_group D) X1 D1)) (hl_pair (X :^: A) (D :^: X) i g) = 1 /\ (hl_group_exactness B X C (hl_pair (hl_ty_group B) (hl_ty_group X :*: hl_ty_group C) B1 (hl_pair (hl_ty_group X) (hl_ty_group C) X1 C1)) (hl_pair (X :^: B) (C :^: X) j f) = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f (i x) = h x) /\ (forall x :e B, hl_IN B x (hl_group_carrier B B1) = 1 -> g (j x) = k x)))))) -> hl_group_isomorphism (A :*: B) X (hl_pair (hl_ty_group (A :*: B)) (hl_ty_group X) (hl_prod_group A B A1 B1) X1) (hl_GABS (X :^: (A :*: B)) (fun f1 :e X :^: (A :*: B) => if forall x :e A, forall y :e B, hl_GEQ X (f1 (hl_pair A B x y)) (hl_group_mul X X1 (i x) (j y)) = 1 then 1 else 0)) = 1 /\ hl_group_isomorphism X (C :*: D) (hl_pair (hl_ty_group X) (hl_ty_group (C :*: D)) X1 (hl_prod_group C D C1 D1)) (fun z :e X => hl_pair C D (f z) (g z)) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16731 / SHORT_EXACT_SEQUENCE_QUOTIENT   (hash md5:5e8cd59ea966d58f45b3b5f573e62785)
Theorem hlt_SHORT_EXACT_SEQUENCE_QUOTIENT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 -> hl_isomorphic_group B A (hl_subgroup_generated B B1 (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f)) A1 = 1 /\ hl_isomorphic_group (2 :^: B) C (hl_quotient_group B B1 (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f)) C1 = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16747 / TRIVIAL_GROUPS_IMP_SHORT_EXACT_SEQUENCE   (hash md5:ed10b916aa677dfb52776a7b7e18dcd1)
Theorem hlt_TRIVIAL_GROUPS_IMP_SHORT_EXACT_SEQUENCE : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall k :e E :^: D, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall E1 :e hl_ty_group E, hl_trivial_group A A1 = 1 /\ (hl_trivial_group E E1 = 1 /\ (hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ hl_group_exactness C D E (hl_pair (hl_ty_group C) (hl_ty_group D :*: hl_ty_group E) C1 (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1)) (hl_pair (D :^: C) (E :^: D) h k) = 1))) -> hl_short_exact_sequence B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16757 / SHORT_EXACT_SEQUENCE_TRIVIAL_GROUPS   (hash md5:280c2d880d6cf8dad088308571910f2f)
Theorem hlt_SHORT_EXACT_SEQUENCE_TRIVIAL_GROUPS : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> forall g :e C :^: B, forall h :e D :^: C, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, hl_short_exact_sequence B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 <-> exists f :e B :^: A, exists k :e E :^: D, exists A1 :e hl_ty_group A, exists E1 :e hl_ty_group E, hl_trivial_group A A1 = 1 /\ (hl_trivial_group E E1 = 1 /\ (hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ hl_group_exactness C D E (hl_pair (hl_ty_group C) (hl_ty_group D :*: hl_ty_group E) C1 (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1)) (hl_pair (D :^: C) (E :^: D) h k) = 1))).
Admitted.

// HOL Light: Library/grouptheory.ml:16776 / SPLITTING_SUBLEMMA_GEN   (hash md5:d901f43a80e05077f0ca71d5faa7c169)
Theorem hlt_SPLITTING_SUBLEMMA_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall h k :e 2 :^: B, hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = h /\ (hl_subgroup_of B k B1 = 1 /\ (hl_SUBSET B (hl_INTER B h k) (hl_INSERT B (hl_group_id B B1) (hl_EMPTY B)) = 1 /\ hl_group_setmul B B1 h k = hl_group_carrier B B1))) -> hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_subgroup_generated B B1 k) (hl_subgroup_generated C C1 (hl_group_image B C (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1) g))) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16817 / SPLITTING_SUBLEMMA   (hash md5:0ec51da577f20f1d863ea623dfafb2c2)
Theorem hlt_SPLITTING_SUBLEMMA : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall h k :e 2 :^: B, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 B1) f = h /\ (hl_subgroup_of B k B1 = 1 /\ (hl_SUBSET B (hl_INTER B h k) (hl_INSERT B (hl_group_id B B1) (hl_EMPTY B)) = 1 /\ hl_group_setmul B B1 h k = hl_group_carrier B B1))) -> hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 (hl_subgroup_generated B B1 h)) f = 1 /\ hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_subgroup_generated B B1 k) C1) g = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16833 / SPLITTING_LEMMA_LEFT_GEN   (hash md5:c117bc249cf5ccbfb33b3547776842bc)
Theorem hlt_SPLITTING_LEMMA_LEFT_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall f' :e A :^: B, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_homomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) B1 A1) f' = 1 /\ hl_group_isomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) A1 A1) (hl_o B A A f' f) = 1) -> exists h k :e 2 :^: B, hl_normal_subgroup_of B h B1 = 1 /\ (hl_normal_subgroup_of B k B1 = 1 /\ (hl_SUBSET B (hl_INTER B h k) (hl_INSERT B (hl_group_id B B1) (hl_EMPTY B)) = 1 /\ (hl_group_setmul B B1 h k = hl_group_carrier B B1 /\ (hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 (hl_subgroup_generated B B1 h)) f = 1 /\ hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_subgroup_generated B B1 k) C1) g = 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:16859 / SPLITTING_LEMMA_LEFT   (hash md5:ef19d59d8548515856e65103eb126bac)
Theorem hlt_SPLITTING_LEMMA_LEFT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall f' :e A :^: B, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_homomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) B1 A1) f' = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f' (f x) = x)) -> exists h k :e 2 :^: B, hl_normal_subgroup_of B h B1 = 1 /\ (hl_normal_subgroup_of B k B1 = 1 /\ (hl_SUBSET B (hl_INTER B h k) (hl_INSERT B (hl_group_id B B1) (hl_EMPTY B)) = 1 /\ (hl_group_setmul B B1 h k = hl_group_carrier B B1 /\ (hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 (hl_subgroup_generated B B1 h)) f = 1 /\ hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_subgroup_generated B B1 k) C1) g = 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:16874 / SPLITTING_LEMMA_LEFT_PROD_GROUP   (hash md5:ce2985657392975f23897b4f54ef517e)
Theorem hlt_SPLITTING_LEMMA_LEFT_PROD_GROUP : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall f' :e A :^: B, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_abelian_group B B1 = 1 /\ (hl_group_homomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) B1 A1) f' = 1 /\ (forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f' (f x) = x))) -> hl_isomorphic_group B (A :*: C) B1 (hl_prod_group A C A1 C1) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16899 / SPLITTING_LEMMA_RIGHT_GEN   (hash md5:988a774bd2be8671e0003c6c63769c64)
Theorem hlt_SPLITTING_LEMMA_RIGHT_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall g' :e B :^: C, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_homomorphism C B (hl_pair (hl_ty_group C) (hl_ty_group B) C1 B1) g' = 1 /\ hl_group_isomorphism C C (hl_pair (hl_ty_group C) (hl_ty_group C) C1 C1) (hl_o B C C g g') = 1) -> exists h k :e 2 :^: B, hl_normal_subgroup_of B h B1 = 1 /\ (hl_subgroup_of B k B1 = 1 /\ (hl_SUBSET B (hl_INTER B h k) (hl_INSERT B (hl_group_id B B1) (hl_EMPTY B)) = 1 /\ (hl_group_setmul B B1 h k = hl_group_carrier B B1 /\ (hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 (hl_subgroup_generated B B1 h)) f = 1 /\ hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_subgroup_generated B B1 k) C1) g = 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:16926 / SPLITTING_LEMMA_RIGHT   (hash md5:e03e89ff01c50c9cc79850a6f30d4b46)
Theorem hlt_SPLITTING_LEMMA_RIGHT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall g' :e B :^: C, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_homomorphism C B (hl_pair (hl_ty_group C) (hl_ty_group B) C1 B1) g' = 1 /\ (forall z :e C, hl_IN C z (hl_group_carrier C C1) = 1 -> g (g' z) = z)) -> exists h k :e 2 :^: B, hl_normal_subgroup_of B h B1 = 1 /\ (hl_subgroup_of B k B1 = 1 /\ (hl_SUBSET B (hl_INTER B h k) (hl_INSERT B (hl_group_id B B1) (hl_EMPTY B)) = 1 /\ (hl_group_setmul B B1 h k = hl_group_carrier B B1 /\ (hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) A1 (hl_subgroup_generated B B1 h)) f = 1 /\ hl_group_isomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_subgroup_generated B B1 k) C1) g = 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:16941 / SPLITTING_LEMMA_RIGHT_PROD_GROUP   (hash md5:3572a5b1148dd00fe3a7dfedda4cb721)
Theorem hlt_SPLITTING_LEMMA_RIGHT_PROD_GROUP : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall g' :e B :^: C, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_abelian_group B B1 = 1 /\ (hl_group_homomorphism C B (hl_pair (hl_ty_group C) (hl_ty_group B) C1 B1) g' = 1 /\ (forall z :e C, hl_IN C z (hl_group_carrier C C1) = 1 -> g (g' z) = z))) -> hl_isomorphic_group B (A :*: C) B1 (hl_prod_group A C A1 C1) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:16966 / SPLITTING_LEMMA_FREE_ABELIAN_GROUP   (hash md5:542f50fd24e75d285599467896b47127)
Theorem hlt_SPLITTING_LEMMA_FREE_ABELIAN_GROUP : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall s :e 2 :^: D, hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_abelian_group B B1 = 1 /\ hl_isomorphic_group C (hl_ty_frag D) C1 (hl_free_abelian_group D s) = 1) -> hl_isomorphic_group B (A :*: C) B1 (hl_prod_group A C A1 C1) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:17015 / FOUR_LEMMA_MONO   (hash md5:8dc9f363c1e05debb303b8d03f3d6c90)
Theorem hlt_FOUR_LEMMA_MONO : forall A A_ B B_ C C_ D D_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> D <> Empty -> D_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall h' :e D_ :^: C_, forall a :e A_ :^: A, forall b :e B_ :^: B, forall c :e C_ :^: C, forall d :e D_ :^: D, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall A' :e hl_ty_group A_, forall B' :e hl_ty_group B_, forall C' :e hl_ty_group C_, forall D' :e hl_ty_group D_, hl_group_epimorphism A A_ (hl_pair (hl_ty_group A) (hl_ty_group A_) A1 A') a = 1 /\ (hl_group_monomorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1 /\ (hl_group_homomorphism C C_ (hl_pair (hl_ty_group C) (hl_ty_group C_) C1 C') c = 1 /\ (hl_group_monomorphism D D_ (hl_pair (hl_ty_group D) (hl_ty_group D_) D1 D') d = 1 /\ (hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ (hl_group_exactness A_ B_ C_ (hl_pair (hl_ty_group A_) (hl_ty_group B_ :*: hl_ty_group C_) A' (hl_pair (hl_ty_group B_) (hl_ty_group C_) B' C')) (hl_pair (B_ :^: A_) (C_ :^: B_) f' g') = 1 /\ (hl_group_exactness B_ C_ D_ (hl_pair (hl_ty_group B_) (hl_ty_group C_ :*: hl_ty_group D_) B' (hl_pair (hl_ty_group C_) (hl_ty_group D_) C' D')) (hl_pair (C_ :^: B_) (D_ :^: C_) g' h') = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f' (a x) = b (f x)) /\ ((forall y :e B, hl_IN B y (hl_group_carrier B B1) = 1 -> g' (b y) = c (g y)) /\ (forall z :e C, hl_IN C z (hl_group_carrier C C1) = 1 -> h' (c z) = d (h z))))))))))) -> hl_group_monomorphism C C_ (hl_pair (hl_ty_group C) (hl_ty_group C_) C1 C') c = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:17045 / FOUR_LEMMA_EPI   (hash md5:cfc813055daa10e248299c1b694cb18d)
Theorem hlt_FOUR_LEMMA_EPI : forall A A_ B B_ C C_ D D_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> D <> Empty -> D_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall h' :e D_ :^: C_, forall a :e A_ :^: A, forall b :e B_ :^: B, forall c :e C_ :^: C, forall d :e D_ :^: D, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall A' :e hl_ty_group A_, forall B' :e hl_ty_group B_, forall C' :e hl_ty_group C_, forall D' :e hl_ty_group D_, hl_group_epimorphism A A_ (hl_pair (hl_ty_group A) (hl_ty_group A_) A1 A') a = 1 /\ (hl_group_homomorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1 /\ (hl_group_epimorphism C C_ (hl_pair (hl_ty_group C) (hl_ty_group C_) C1 C') c = 1 /\ (hl_group_monomorphism D D_ (hl_pair (hl_ty_group D) (hl_ty_group D_) D1 D') d = 1 /\ (hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ (hl_group_exactness A_ B_ C_ (hl_pair (hl_ty_group A_) (hl_ty_group B_ :*: hl_ty_group C_) A' (hl_pair (hl_ty_group B_) (hl_ty_group C_) B' C')) (hl_pair (B_ :^: A_) (C_ :^: B_) f' g') = 1 /\ (hl_group_exactness B_ C_ D_ (hl_pair (hl_ty_group B_) (hl_ty_group C_ :*: hl_ty_group D_) B' (hl_pair (hl_ty_group C_) (hl_ty_group D_) C' D')) (hl_pair (C_ :^: B_) (D_ :^: C_) g' h') = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f' (a x) = b (f x)) /\ ((forall y :e B, hl_IN B y (hl_group_carrier B B1) = 1 -> g' (b y) = c (g y)) /\ (forall z :e C, hl_IN C z (hl_group_carrier C C1) = 1 -> h' (c z) = d (h z))))))))))) -> hl_group_epimorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:17094 / FIVE_LEMMA   (hash md5:408d1f7d46040cd9b63f334578d2fc32)
Theorem hlt_FIVE_LEMMA : forall A A_ B B_ C C_ D D_ E E_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> D <> Empty -> D_ <> Empty -> E <> Empty -> E_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall k :e E :^: D, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall h' :e D_ :^: C_, forall k' :e E_ :^: D_, forall a :e A_ :^: A, forall b :e B_ :^: B, forall c :e C_ :^: C, forall d :e D_ :^: D, forall e1 :e E_ :^: E, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall E1 :e hl_ty_group E, forall A' :e hl_ty_group A_, forall B' :e hl_ty_group B_, forall C' :e hl_ty_group C_, forall D' :e hl_ty_group D_, forall E' :e hl_ty_group E_, hl_group_epimorphism A A_ (hl_pair (hl_ty_group A) (hl_ty_group A_) A1 A') a = 1 /\ (hl_group_isomorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1 /\ (hl_group_homomorphism C C_ (hl_pair (hl_ty_group C) (hl_ty_group C_) C1 C') c = 1 /\ (hl_group_isomorphism D D_ (hl_pair (hl_ty_group D) (hl_ty_group D_) D1 D') d = 1 /\ (hl_group_monomorphism E E_ (hl_pair (hl_ty_group E) (hl_ty_group E_) E1 E') e1 = 1 /\ (hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_group_exactness B C D (hl_pair (hl_ty_group B) (hl_ty_group C :*: hl_ty_group D) B1 (hl_pair (hl_ty_group C) (hl_ty_group D) C1 D1)) (hl_pair (C :^: B) (D :^: C) g h) = 1 /\ (hl_group_exactness C D E (hl_pair (hl_ty_group C) (hl_ty_group D :*: hl_ty_group E) C1 (hl_pair (hl_ty_group D) (hl_ty_group E) D1 E1)) (hl_pair (D :^: C) (E :^: D) h k) = 1 /\ (hl_group_exactness A_ B_ C_ (hl_pair (hl_ty_group A_) (hl_ty_group B_ :*: hl_ty_group C_) A' (hl_pair (hl_ty_group B_) (hl_ty_group C_) B' C')) (hl_pair (B_ :^: A_) (C_ :^: B_) f' g') = 1 /\ (hl_group_exactness B_ C_ D_ (hl_pair (hl_ty_group B_) (hl_ty_group C_ :*: hl_ty_group D_) B' (hl_pair (hl_ty_group C_) (hl_ty_group D_) C' D')) (hl_pair (C_ :^: B_) (D_ :^: C_) g' h') = 1 /\ (hl_group_exactness C_ D_ E_ (hl_pair (hl_ty_group C_) (hl_ty_group D_ :*: hl_ty_group E_) C' (hl_pair (hl_ty_group D_) (hl_ty_group E_) D' E')) (hl_pair (D_ :^: C_) (E_ :^: D_) h' k') = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f' (a x) = b (f x)) /\ ((forall y :e B, hl_IN B y (hl_group_carrier B B1) = 1 -> g' (b y) = c (g y)) /\ ((forall z :e C, hl_IN C z (hl_group_carrier C C1) = 1 -> h' (c z) = d (h z)) /\ (forall w :e D, hl_IN D w (hl_group_carrier D D1) = 1 -> k' (d w) = e1 (k w))))))))))))))) -> hl_group_isomorphism C C_ (hl_pair (hl_ty_group C) (hl_ty_group C_) C1 C') c = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:17125 / SHORT_FIVE_LEMMA_MONO   (hash md5:46468b28bcb9eee18e75b8cb9a090f11)
Theorem hlt_SHORT_FIVE_LEMMA_MONO : forall A A_ B B_ C C_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall a :e A_ :^: A, forall b :e B_ :^: B, forall c :e C_ :^: C, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall A' :e hl_ty_group A_, forall B' :e hl_ty_group B_, forall C' :e hl_ty_group C_, hl_group_monomorphism A A_ (hl_pair (hl_ty_group A) (hl_ty_group A_) A1 A') a = 1 /\ (hl_group_homomorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1 /\ (hl_group_monomorphism C C_ (hl_pair (hl_ty_group C) (hl_ty_group C_) C1 C') c = 1 /\ (hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_short_exact_sequence A_ B_ C_ (hl_pair (hl_ty_group A_) (hl_ty_group B_ :*: hl_ty_group C_) A' (hl_pair (hl_ty_group B_) (hl_ty_group C_) B' C')) (hl_pair (B_ :^: A_) (C_ :^: B_) f' g') = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f' (a x) = b (f x)) /\ (forall y :e B, hl_IN B y (hl_group_carrier B B1) = 1 -> g' (b y) = c (g y))))))) -> hl_group_monomorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:17162 / SHORT_FIVE_LEMMA_EPI   (hash md5:f1141c18e07bd10d61008f80f22b41ef)
Theorem hlt_SHORT_FIVE_LEMMA_EPI : forall A A_ B B_ C C_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall a :e A_ :^: A, forall b :e B_ :^: B, forall c :e C_ :^: C, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall A' :e hl_ty_group A_, forall B' :e hl_ty_group B_, forall C' :e hl_ty_group C_, hl_group_epimorphism A A_ (hl_pair (hl_ty_group A) (hl_ty_group A_) A1 A') a = 1 /\ (hl_group_homomorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1 /\ (hl_group_epimorphism C C_ (hl_pair (hl_ty_group C) (hl_ty_group C_) C1 C') c = 1 /\ (hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_short_exact_sequence A_ B_ C_ (hl_pair (hl_ty_group A_) (hl_ty_group B_ :*: hl_ty_group C_) A' (hl_pair (hl_ty_group B_) (hl_ty_group C_) B' C')) (hl_pair (B_ :^: A_) (C_ :^: B_) f' g') = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f' (a x) = b (f x)) /\ (forall y :e B, hl_IN B y (hl_group_carrier B B1) = 1 -> g' (b y) = c (g y))))))) -> hl_group_epimorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:17199 / SHORT_FIVE_LEMMA   (hash md5:06a1f0147c4cf5cb44fc0d6823a10123)
Theorem hlt_SHORT_FIVE_LEMMA : forall A A_ B B_ C C_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall a :e A_ :^: A, forall b :e B_ :^: B, forall c :e C_ :^: C, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall A' :e hl_ty_group A_, forall B' :e hl_ty_group B_, forall C' :e hl_ty_group C_, hl_group_isomorphism A A_ (hl_pair (hl_ty_group A) (hl_ty_group A_) A1 A') a = 1 /\ (hl_group_homomorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1 /\ (hl_group_isomorphism C C_ (hl_pair (hl_ty_group C) (hl_ty_group C_) C1 C') c = 1 /\ (hl_short_exact_sequence A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) A1 (hl_pair (hl_ty_group B) (hl_ty_group C) B1 C1)) (hl_pair (B :^: A) (C :^: B) f g) = 1 /\ (hl_short_exact_sequence A_ B_ C_ (hl_pair (hl_ty_group A_) (hl_ty_group B_ :*: hl_ty_group C_) A' (hl_pair (hl_ty_group B_) (hl_ty_group C_) B' C')) (hl_pair (B_ :^: A_) (C_ :^: B_) f' g') = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f' (a x) = b (f x)) /\ (forall y :e B, hl_IN B y (hl_group_carrier B B1) = 1 -> g' (b y) = c (g y))))))) -> hl_group_isomorphism B B_ (hl_pair (hl_ty_group B) (hl_ty_group B_) B1 B') b = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:17218 / EXACT_SEQUENCE_HEXAGON_LEMMA   (hash md5:71363db207087173c212e459faa6834d)
Theorem hlt_EXACT_SEQUENCE_HEXAGON_LEMMA : forall A B C D W X Y:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> W <> Empty -> X <> Empty -> Y <> Empty -> forall f :e C :^: X, forall g :e D :^: X, forall h :e C :^: A, forall h' :e A :^: C, forall i :e X :^: A, forall j :e X :^: B, forall k :e D :^: B, forall k' :e B :^: D, forall a :e Y :^: A, forall b :e Y :^: B, forall c :e C :^: W, forall d :e D :^: W, forall l :e X :^: W, forall m :e Y :^: X, forall A1 :e hl_ty_group A, forall B1 :e hl_ty_group B, forall C1 :e hl_ty_group C, forall D1 :e hl_ty_group D, forall W1 :e hl_ty_group W, forall X1 :e hl_ty_group X, forall Y1 :e hl_ty_group Y, hl_abelian_group X X1 = 1 /\ (hl_group_homomorphism A Y (hl_pair (hl_ty_group A) (hl_ty_group Y) A1 Y1) a = 1 /\ (hl_group_homomorphism B Y (hl_pair (hl_ty_group B) (hl_ty_group Y) B1 Y1) b = 1 /\ (hl_group_homomorphism W C (hl_pair (hl_ty_group W) (hl_ty_group C) W1 C1) c = 1 /\ (hl_group_homomorphism W D (hl_pair (hl_ty_group W) (hl_ty_group D) W1 D1) d = 1 /\ (hl_group_isomorphisms A C (hl_pair (hl_ty_group A) (hl_ty_group C) A1 C1) (hl_pair (C :^: A) (A :^: C) h h') = 1 /\ (hl_group_isomorphisms B D (hl_pair (hl_ty_group B) (hl_ty_group D) B1 D1) (hl_pair (D :^: B) (B :^: D) k k') = 1 /\ (hl_group_exactness A X D (hl_pair (hl_ty_group A) (hl_ty_group X :*: hl_ty_group D) A1 (hl_pair (hl_ty_group X) (hl_ty_group D) X1 D1)) (hl_pair (X :^: A) (D :^: X) i g) = 1 /\ (hl_group_exactness B X C (hl_pair (hl_ty_group B) (hl_ty_group X :*: hl_ty_group C) B1 (hl_pair (hl_ty_group X) (hl_ty_group C) X1 C1)) (hl_pair (X :^: B) (C :^: X) j f) = 1 /\ (hl_group_exactness W X Y (hl_pair (hl_ty_group W) (hl_ty_group X :*: hl_ty_group Y) W1 (hl_pair (hl_ty_group X) (hl_ty_group Y) X1 Y1)) (hl_pair (X :^: W) (Y :^: X) l m) = 1 /\ ((forall x :e W, hl_IN W x (hl_group_carrier W W1) = 1 -> f (l x) = c x) /\ ((forall x :e W, hl_IN W x (hl_group_carrier W W1) = 1 -> g (l x) = d x) /\ ((forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> f (i x) = h x) /\ ((forall x :e A, hl_IN A x (hl_group_carrier A A1) = 1 -> m (i x) = a x) /\ ((forall x :e B, hl_IN B x (hl_group_carrier B B1) = 1 -> g (j x) = k x) /\ (forall x :e B, hl_IN B x (hl_group_carrier B B1) = 1 -> m (j x) = b x))))))))))))))) -> forall x :e W, hl_IN W x (hl_group_carrier W W1) = 1 -> hl_group_inv Y Y1 (a (h' (c x))) = b (k' (d x)).
Admitted.

