// hol2mg certification module (private): shard grouptheory of profile multivariate.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Library/grouptheory.ml:13 / group_tybij   (hash md5:84b04d28309566c48641ece6c5d8ca33)
// not bridged: 
Theorem group_tybij : forall A:set, (forall a :e group_hl A, a = a) /\ forall r :e Power A :*: (A :*: (A :^: A :*: A :^: A :^: A)), r 1 0 :e r 0 /\ ((forall x :e A, x :e r 0 -> r 1 1 0 x :e r 0) /\ ((forall x y :e A, x :e r 0 /\ y :e r 0 -> r 1 1 1 x y :e r 0) /\ ((forall x y z :e A, x :e r 0 /\ (y :e r 0 /\ z :e r 0) -> r 1 1 1 x (r 1 1 1 y z) = r 1 1 1 (r 1 1 1 x y) z) /\ ((forall x :e A, x :e r 0 -> r 1 1 1 (r 1 0) x = x /\ r 1 1 1 x (r 1 0) = x) /\ (forall x :e A, x :e r 0 -> r 1 1 1 (r 1 1 0 x) x = r 1 0 /\ r 1 1 1 x (r 1 1 0 x) = r 1 0))))) <-> r = r.
Admitted.

// HOL Light: Library/grouptheory.ml:29 / group_carrier   (hash md5:6c29ae9cc1317f389730942996e43187)
// not bridged: 
Theorem group_carrier_thm : forall A:set, A <> Empty -> forall g :e group_hl A, group_carrier A g = g 0.
Admitted.

// HOL Light: Library/grouptheory.ml:32 / group_id   (hash md5:c7184555bf9e8fc6950bdbc8a5ad1c34)
// not bridged: 
Theorem group_id_thm : forall A:set, A <> Empty -> forall g :e group_hl A, group_id A g = g 1 0.
Admitted.

// HOL Light: Library/grouptheory.ml:35 / group_inv   (hash md5:a3f69b8495e7a64a6327b63d7c57a0e7)
// not bridged: 
Theorem group_inv_thm : forall A:set, forall g :e group_hl A, forall x :e A, group_inv A g x = g 1 1 0 x.
Admitted.

// HOL Light: Library/grouptheory.ml:38 / group_mul   (hash md5:e198d0d4ab92121ede318474d48e4cc6)
// not bridged: 
Theorem group_mul_thm : forall A:set, forall g :e group_hl A, forall x x0 :e A, group_mul A g x x0 = g 1 1 1 x x0.
Admitted.

// HOL Light: Library/grouptheory.ml:66 / GROUPS_EQ   (hash md5:ac6b24d1e62a3e584ea2eec574e99e7d)
// not bridged: 
Theorem GROUPS_EQ : forall A:set, A <> Empty -> forall G H :e group_hl A, G = H <-> group_carrier A G = group_carrier A H /\ (group_id A G = group_id A H /\ ((forall x :e A, group_inv A G x = group_inv A H x) /\ forall x x0 :e A, group_mul A G x x0 = group_mul A H x x0)).
Admitted.

// HOL Light: Library/grouptheory.ml:77 / GROUP_CARRIER_NONEMPTY   (hash md5:f34cf7937e4405f14e5dad5c40c3c596)
// not bridged: 
Theorem GROUP_CARRIER_NONEMPTY : forall A:set, A <> Empty -> forall G :e group_hl A, ~ group_carrier A G = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:85 / singleton_group   (hash md5:6eaa4df489445315945a76574ae8b272)
// not bridged: 
Theorem singleton_group_thm : forall A:set, forall a :e A, singleton_group A a = ({a},(a,(fun x :e A => a,fun x :e A => fun y :e A => a))).
Admitted.

// HOL Light: Library/grouptheory.ml:88 / SINGLETON_GROUP   (hash md5:34f3de4d7776299b60e1f9a5d803d962)
// not bridged: 
Theorem SINGLETON_GROUP : forall A:set, (forall a :e A, group_carrier A (singleton_group A a) = {a}) /\ ((forall a :e A, group_id A (singleton_group A a) = a) /\ ((forall a x :e A, group_inv A (singleton_group A a) x = a) /\ forall a x y :e A, group_mul A (singleton_group A a) x y = a)).
Admitted.

// HOL Light: Library/grouptheory.ml:100 / trivial_group   (hash md5:2adbef48a10a0a0c3ab0dd42be235865)
// not bridged: 
Theorem trivial_group_thm : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G <-> group_carrier A G = {group_id A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:103 / TRIVIAL_IMP_FINITE_GROUP   (hash md5:a2adbc828cb1cabdc600063f118cd24e)
// not bridged: 
Theorem TRIVIAL_IMP_FINITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G -> finite (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:107 / TRIVIAL_GROUP_SINGLETON_GROUP   (hash md5:ddf2cd78a0d4f98d7a5a46bcda6da3ba)
// not bridged: 
Theorem TRIVIAL_GROUP_SINGLETON_GROUP : forall A:set, forall a :e A, trivial_group A (singleton_group A a).
Admitted.

// HOL Light: Library/grouptheory.ml:111 / FINITE_SINGLETON_GROUP   (hash md5:c2b29112b85afa61c2db6f184149611c)
// not bridged: 
Theorem FINITE_SINGLETON_GROUP : forall A:set, forall a :e A, finite (group_carrier A (singleton_group A a)).
Admitted.

// HOL Light: Library/grouptheory.ml:115 / TRIVIAL_GROUP_SUBSET   (hash md5:75401009201d74e38947c24091317ee1)
// not bridged: 
Theorem TRIVIAL_GROUP_SUBSET : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G <-> group_carrier A G c= {group_id A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:119 / TRIVIAL_GROUP   (hash md5:3e62435109193cc24146e082673239b2)
// not bridged: 
Theorem TRIVIAL_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G <-> exists a :e A, group_carrier A G = {a}.
Admitted.

// HOL Light: Library/grouptheory.ml:125 / TRIVIAL_GROUP_ALT   (hash md5:8ed2eca6907b4add49eca39ad08fe92e)
// not bridged: 
Theorem TRIVIAL_GROUP_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G <-> exists a :e A, group_carrier A G c= {a}.
Admitted.

// HOL Light: Library/grouptheory.ml:130 / TRIVIAL_GROUP_HAS_SIZE_1   (hash md5:90cf383cdf5be7ab024fe7cd0b589872)
// not bridged: 
Theorem TRIVIAL_GROUP_HAS_SIZE_1 : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G <-> equip (group_carrier A G) 1.
Admitted.

// HOL Light: Library/grouptheory.ml:135 / GROUP_CARRIER_HAS_SIZE_1   (hash md5:908f04a0195f45f424ed623d0f6598f3)
// not bridged: 
Theorem GROUP_CARRIER_HAS_SIZE_1 : forall A:set, A <> Empty -> forall G :e group_hl A, equip (group_carrier A G) 1 <-> trivial_group A G.
Admitted.

// HOL Light: Library/grouptheory.ml:143 / opposite_group   (hash md5:e735e9841bd36fa3b7f6dc593061bba2)
// not bridged: 
Theorem opposite_group_thm : forall A:set, A <> Empty -> forall G :e group_hl A, opposite_group A G = (group_carrier A G,(group_id A G,(fun x :e A => group_inv A G x,fun x :e A => fun y :e A => group_mul A G y x))).
Admitted.

// HOL Light: Library/grouptheory.ml:148 / OPPOSITE_GROUP   (hash md5:27526ccca7e091197a1a124e2610b419)
// not bridged: 
Theorem OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, group_carrier A (opposite_group A G) = group_carrier A G /\ (group_id A (opposite_group A G) = group_id A G /\ ((forall x :e A, group_inv A (opposite_group A G) x = group_inv A G x) /\ forall x y :e A, group_mul A (opposite_group A G) x y = group_mul A G y x)).
Admitted.

// HOL Light: Library/grouptheory.ml:162 / OPPOSITE_OPPOSITE_GROUP   (hash md5:21a62bce8c0ae3df5bce44ed8bdf3f3f)
// not bridged: 
Theorem OPPOSITE_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, opposite_group A (opposite_group A G) = G.
Admitted.

// HOL Light: Library/grouptheory.ml:169 / OPPOSITE_GROUP_INV   (hash md5:f234044a5baf0f11fdf885ef1aaf252b)
// not bridged: 
Theorem OPPOSITE_GROUP_INV : forall A:set, forall G :e group_hl A, forall x :e A, group_inv A (opposite_group A G) x = group_inv A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:173 / OPPOSITE_GROUP_MUL   (hash md5:8e99aaa3d92eac7325dc12c925d85edf)
// not bridged: 
Theorem OPPOSITE_GROUP_MUL : forall A:set, forall G :e group_hl A, forall x y :e A, group_mul A (opposite_group A G) x y = group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:177 / OPPOSITE_SINGLETON_GROUP   (hash md5:96eb60c282793db088ad555e5afab58a)
// not bridged: 
Theorem OPPOSITE_SINGLETON_GROUP : forall A:set, forall a :e A, opposite_group A (singleton_group A a) = singleton_group A a.
Admitted.

// HOL Light: Library/grouptheory.ml:181 / TRIVIAL_OPPOSITE_GROUP   (hash md5:e9ea21a56113e048075afd9ac6b063b6)
// not bridged: 
Theorem TRIVIAL_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A (opposite_group A G) <-> trivial_group A G.
Admitted.

// HOL Light: Library/grouptheory.ml:185 / FINITE_OPPOSITE_GROUP   (hash md5:48106bdbca284579367232ff7d2ed029)
// not bridged: 
Theorem FINITE_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, finite (group_carrier A (opposite_group A G)) <-> finite (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:195 / group_div   (hash md5:7de4a2daa8affbe123012eef7c7406f9)
// not bridged: 
Theorem group_div_thm : forall A:set, forall x :e A, forall G :e group_hl A, forall y :e A, group_div A G x y = group_mul A G x (group_inv A G y).
Admitted.

// HOL Light: Library/grouptheory.ml:198 / GROUP_DIV   (hash md5:3060cbb33d2de9381fa0b7dfb0e3f42f)
// not bridged: 
Theorem GROUP_DIV : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_div A G x y :e group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:204 / GROUP_MUL_LCANCEL   (hash md5:c0d851ec5d083253a4f9648e5270bfce)
// not bridged: 
Theorem GROUP_MUL_LCANCEL : forall A:set, forall G :e group_hl A, forall x y z :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ z :e group_carrier A G) -> (group_mul A G x y = group_mul A G x z <-> y = z).
Admitted.

// HOL Light: Library/grouptheory.ml:212 / GROUP_MUL_LCANCEL_IMP   (hash md5:437bd2a8749bafed93283be5b1fdb3be)
// not bridged: 
Theorem GROUP_MUL_LCANCEL_IMP : forall A:set, forall G :e group_hl A, forall x y z :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (z :e group_carrier A G /\ group_mul A G x y = group_mul A G x z)) -> y = z.
Admitted.

// HOL Light: Library/grouptheory.ml:219 / GROUP_MUL_RCANCEL   (hash md5:c9b146919e8bc28996c8342da36425a0)
// not bridged: 
Theorem GROUP_MUL_RCANCEL : forall A:set, forall G :e group_hl A, forall x y z :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ z :e group_carrier A G) -> (group_mul A G x z = group_mul A G y z <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:226 / GROUP_MUL_RCANCEL_IMP   (hash md5:c1b3a5529c3667c67e00548b8334dc63)
// not bridged: 
Theorem GROUP_MUL_RCANCEL_IMP : forall A:set, forall G :e group_hl A, forall x y z :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (z :e group_carrier A G /\ group_mul A G x z = group_mul A G y z)) -> x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:233 / GROUP_LID_UNIQUE   (hash md5:6214dc6596bfa4f109539f1cf32dde83)
// not bridged: 
Theorem GROUP_LID_UNIQUE : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = y) -> x = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:239 / GROUP_RID_UNIQUE   (hash md5:bfde81022ab67b73b34878b9aa8154d6)
// not bridged: 
Theorem GROUP_RID_UNIQUE : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = x) -> y = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:245 / GROUP_LID_EQ   (hash md5:516c601f04eb07184c41a87401108c94)
// not bridged: 
Theorem GROUP_LID_EQ : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_mul A G x y = y <-> x = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:251 / GROUP_RID_EQ   (hash md5:cfef9f7ae0791c47aa76bff53aa41561)
// not bridged: 
Theorem GROUP_RID_EQ : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_mul A G x y = x <-> y = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:257 / GROUP_LINV_UNIQUE   (hash md5:813e16a79d2fe61cf9b5cb18e4676a79)
// not bridged: 
Theorem GROUP_LINV_UNIQUE : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_id A G) -> group_inv A G x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:264 / GROUP_RINV_UNIQUE   (hash md5:73a0212721c326689250b067fd3cca09)
// not bridged: 
Theorem GROUP_RINV_UNIQUE : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_id A G) -> group_inv A G y = x.
Admitted.

// HOL Light: Library/grouptheory.ml:271 / GROUP_LINV_EQ   (hash md5:d47a19443d393f14f710c4fea8e7d110)
// not bridged: 
Theorem GROUP_LINV_EQ : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_inv A G x = y <-> group_mul A G x y = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:277 / GROUP_RINV_EQ   (hash md5:8b510179dc902186a56fa39e5cbf85bb)
// not bridged: 
Theorem GROUP_RINV_EQ : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_inv A G x = y <-> group_mul A G y x = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:283 / GROUP_MUL_EQ_ID   (hash md5:47e609172db46c0fdba3dab5f8a0e18d)
// not bridged: 
Theorem GROUP_MUL_EQ_ID : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_mul A G x y = group_id A G <-> group_mul A G y x = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:289 / GROUP_INV_INV   (hash md5:e0a9cd05c2827ffd9469a4fd893f578c)
// not bridged: 
Theorem GROUP_INV_INV : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_inv A G (group_inv A G x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:294 / GROUP_INV_ID   (hash md5:1bda76b9d6b14f65819ac74e89ba5467)
// not bridged: 
Theorem GROUP_INV_ID : forall A:set, A <> Empty -> forall G :e group_hl A, group_inv A G (group_id A G) = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:299 / GROUP_INV_EQ_ID   (hash md5:faaf08b98bb12f35f8812fc18d8516cc)
// not bridged: 
Theorem GROUP_INV_EQ_ID : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> (group_inv A G x = group_id A G <-> x = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:305 / GROUP_INV_MUL   (hash md5:ae318437c0f39a9c942c1944f3ca4f00)
// not bridged: 
Theorem GROUP_INV_MUL : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_inv A G (group_mul A G x y) = group_mul A G (group_inv A G y) (group_inv A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:318 / GROUP_INV_EQ   (hash md5:f6fa014cc3c2c2e4d6659b62879778ab)
// not bridged: 
Theorem GROUP_INV_EQ : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_inv A G x = group_inv A G y <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:323 / GROUP_DIV_REFL   (hash md5:3b770fa5549f093674c2a82c9f25856e)
// not bridged: 
Theorem GROUP_DIV_REFL : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_div A G x x = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:327 / GROUP_DIV_EQ_ID   (hash md5:7cf2e961575b2e7afaaa35504556c205)
// not bridged: 
Theorem GROUP_DIV_EQ_ID : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_div A G x y = group_id A G <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:336 / GROUP_COMMUTES_INV   (hash md5:6b749ff610ec72fd79066f6145aaac95)
// not bridged: 
Theorem GROUP_COMMUTES_INV : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_mul A G y x) -> group_mul A G (group_inv A G x) y = group_mul A G y (group_inv A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:347 / GROUP_COMMUTES_INV_EQ   (hash md5:a69e86aabae6507019fceb72ec09b02a)
// not bridged: 
Theorem GROUP_COMMUTES_INV_EQ : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_mul A G (group_inv A G x) y = group_mul A G y (group_inv A G x) <-> group_mul A G x y = group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:354 / GROUP_COMMUTES_MUL   (hash md5:a1c21e00f1abf9cc509554f84fa36008)
// not bridged: 
Theorem GROUP_COMMUTES_MUL : forall A:set, forall G :e group_hl A, forall x y z :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (z :e group_carrier A G /\ (group_mul A G x z = group_mul A G z x /\ group_mul A G y z = group_mul A G z y))) -> group_mul A G (group_mul A G x y) z = group_mul A G z (group_mul A G x y).
Admitted.

// HOL Light: Library/grouptheory.ml:364 / FORALL_IN_GROUP_CARRIER_INV   (hash md5:c491bbf020fb224f1ff2af9de740a1e0)
// not bridged: 
Theorem FORALL_IN_GROUP_CARRIER_INV : forall A:set, forall P:set -> prop, forall G :e group_hl A, (forall x :e A, x :e group_carrier A G -> P (group_inv A G x)) <-> forall x :e A, x :e group_carrier A G -> P x.
Admitted.

// HOL Light: Library/grouptheory.ml:370 / EXISTS_IN_GROUP_CARRIER_INV   (hash md5:1deabdc3403bf497021c274b416efbfd)
// not bridged: 
Theorem EXISTS_IN_GROUP_CARRIER_INV : forall A:set, forall P:set -> prop, forall G :e group_hl A, (exists x :e A, x :e group_carrier A G /\ P (group_inv A G x)) <-> exists x :e A, x :e group_carrier A G /\ P x.
Admitted.

// HOL Light: Library/grouptheory.ml:376 / group_pow   (hash md5:3835fe8db55afcd2ef2c2d354b3dda1e)
// not bridged: 
Theorem group_pow_thm : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, group_pow A G x 0 = group_id A G /\ group_pow A G x (ordsucc n) = group_mul A G x (group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:380 / GROUP_POW   (hash md5:3d646110876de48cf041ab17defed000)
// not bridged: 
Theorem GROUP_POW : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, x :e group_carrier A G -> group_pow A G x n :e group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:386 / GROUP_POW_0   (hash md5:8116a8f460e048406e9806b163794861)
// not bridged: 
Theorem GROUP_POW_0 : forall A:set, forall G :e group_hl A, forall x :e A, group_pow A G x 0 = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:390 / GROUP_POW_1   (hash md5:d08913bc53a25dd358388e9078b7b557)
// not bridged: 
Theorem GROUP_POW_1 : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_pow A G x 1 = x.
Admitted.

// HOL Light: Library/grouptheory.ml:394 / GROUP_POW_2   (hash md5:98da8d18e219e346296013b973d161b1)
// not bridged: 
Theorem GROUP_POW_2 : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_pow A G x 2 = group_mul A G x x.
Admitted.

// HOL Light: Library/grouptheory.ml:398 / GROUP_POW_ID   (hash md5:aca8edc3424664d90ab3f530db98eb50)
// not bridged: 
Theorem GROUP_POW_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, group_pow A G (group_id A G) n = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:402 / GROUP_POW_ADD   (hash md5:d0426686bb5ba89b85c73bce45dbc97b)
// not bridged: 
Theorem GROUP_POW_ADD : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, x :e group_carrier A G -> group_pow A G x (m + n) = group_mul A G (group_pow A G x m) (group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:413 / GROUP_POW_SUB   (hash md5:7a01f5fb13d3dab5976b26c1e9f55d74)
// not bridged: 
Theorem GROUP_POW_SUB : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, x :e group_carrier A G /\ n <= m -> group_pow A G x (minus_nat m n) = group_div A G (group_pow A G x m) (group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:424 / GROUP_POW_SUB_ALT   (hash md5:0a573c7ec58d9f4dba40193c85dbcc37)
// not bridged: 
Theorem GROUP_POW_SUB_ALT : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, x :e group_carrier A G /\ n <= m -> group_pow A G x (minus_nat m n) = group_mul A G (group_inv A G (group_pow A G x n)) (group_pow A G x m).
Admitted.

// HOL Light: Library/grouptheory.ml:435 / GROUP_INV_POW   (hash md5:c63b8a8ba68739f77aca8576808c4005)
// not bridged: 
Theorem GROUP_INV_POW : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, x :e group_carrier A G -> group_inv A G (group_pow A G x n) = group_pow A G (group_inv A G x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:445 / GROUP_POW_MUL   (hash md5:cc2db4e595ac6ed15e934fe4d6edd070)
// not bridged: 
Theorem GROUP_POW_MUL : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, x :e group_carrier A G -> group_pow A G x (m * n) = group_pow A G (group_pow A G x m) n.
Admitted.

// HOL Light: Library/grouptheory.ml:454 / GROUP_POW_POW   (hash md5:be1c80cd1255563ffcc6d06041868a34)
// not bridged: 
Theorem GROUP_POW_POW : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, x :e group_carrier A G -> group_pow A G (group_pow A G x m) n = group_pow A G x (m * n).
Admitted.

// HOL Light: Library/grouptheory.ml:460 / GROUP_COMMUTES_POW   (hash md5:d008df95e324b06e333d7305c4fe31a3)
// not bridged: 
Theorem GROUP_COMMUTES_POW : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e omega, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_mul A G y x) -> group_mul A G (group_pow A G x n) y = group_mul A G y (group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:470 / GROUP_MUL_POW   (hash md5:a2c0c107839ca36283767ade9b6fbd83)
// not bridged: 
Theorem GROUP_MUL_POW : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e omega, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_mul A G y x) -> group_pow A G (group_mul A G x y) n = group_mul A G (group_pow A G x n) (group_pow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:485 / group_zpow   (hash md5:6058e8d691ce8951a84d378acba1d35f)
// not bridged: 
Theorem group_zpow_thm : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e int, group_zpow A G x n = if 0 <= n then group_pow A G x (if n :e omega then n else 0) else group_inv A G (group_pow A G x (if - n :e omega then - n else 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:490 / GROUP_ZPOW   (hash md5:bf1ecfa11405b64383a4ca7126a9ba66)
// not bridged: 
Theorem GROUP_ZPOW : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e int, x :e group_carrier A G -> group_zpow A G x n :e group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:495 / GROUP_NPOW   (hash md5:157da0dfed293aa5566f6df4e7fc562c)
// not bridged: 
Theorem GROUP_NPOW : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, group_zpow A G x n = group_pow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:499 / GROUP_ZPOW_0   (hash md5:ee1948e55e2ec91f975ac0995ed067c2)
// not bridged: 
Theorem GROUP_ZPOW_0 : forall A:set, forall G :e group_hl A, forall x :e A, group_zpow A G x 0 = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:503 / GROUP_ZPOW_1   (hash md5:c7e4de523738a7c54c5dbd6dc0fdc808)
// not bridged: 
Theorem GROUP_ZPOW_1 : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_zpow A G x 1 = x.
Admitted.

// HOL Light: Library/grouptheory.ml:507 / GROUP_ZPOW_2   (hash md5:85dfe3e01a6a3864899ce8edd9851369)
// not bridged: 
Theorem GROUP_ZPOW_2 : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_zpow A G x 2 = group_mul A G x x.
Admitted.

// HOL Light: Library/grouptheory.ml:511 / GROUP_ZPOW_ID   (hash md5:c680b1c07e22f22f06281575bcdb4c5c)
// not bridged: 
Theorem GROUP_ZPOW_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e int, group_zpow A G (group_id A G) n = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:515 / GROUP_ZPOW_NEG   (hash md5:e26b3722f140727d1756246bdea87d5f)
// not bridged: 
Theorem GROUP_ZPOW_NEG : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e int, x :e group_carrier A G -> group_zpow A G x (- n) = group_inv A G (group_zpow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:526 / GROUP_ZPOW_MINUS1   (hash md5:5f23315c7482e6a7480e03b2d6ca14ca)
// not bridged: 
Theorem GROUP_ZPOW_MINUS1 : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_zpow A G x (- 1) = group_inv A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:530 / GROUP_ZPOW_POW   (hash md5:f007814563cb1226f4a3b5bea8fe8a33)
// not bridged: 
Theorem GROUP_ZPOW_POW : forall A:set, (forall G :e group_hl A, forall x :e A, forall n :e omega, group_zpow A G x n = group_pow A G x n) /\ forall G :e group_hl A, forall x :e A, forall n :e omega, group_zpow A G x (- n) = group_inv A G (group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:538 / GROUP_ZPOW_ABS_EQ_ID   (hash md5:2a0e6fe2363e540869688417e7f25440)
// not bridged: 
Theorem GROUP_ZPOW_ABS_EQ_ID : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e int, x :e group_carrier A G -> (group_zpow A G x (abs_SNo n) = group_id A G <-> group_zpow A G x n = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:547 / GROUP_ZPOW_ADD   (hash md5:75c78d887b43182a2af4d6bcaba4158c)
// not bridged: 
Theorem GROUP_ZPOW_ADD : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e int, x :e group_carrier A G -> group_zpow A G x (m + n) = group_mul A G (group_zpow A G x m) (group_zpow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:577 / GROUP_ZPOW_SUB   (hash md5:39290df61617234308b7f57a8f46a1f2)
// not bridged: 
Theorem GROUP_ZPOW_SUB : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e int, x :e group_carrier A G -> group_zpow A G x (m + - n) = group_div A G (group_zpow A G x m) (group_zpow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:584 / GROUP_ZPOW_SUB_ALT   (hash md5:491efc9ec8fa85b6522977e777411ca2)
// not bridged: 
Theorem GROUP_ZPOW_SUB_ALT : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e int, x :e group_carrier A G -> group_zpow A G x (m + - n) = group_mul A G (group_inv A G (group_zpow A G x n)) (group_zpow A G x m).
Admitted.

// HOL Light: Library/grouptheory.ml:592 / GROUP_INV_ZPOW   (hash md5:313394a507ef1eadd46e1533cc00bed7)
// not bridged: 
Theorem GROUP_INV_ZPOW : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e int, x :e group_carrier A G -> group_inv A G (group_zpow A G x n) = group_zpow A G (group_inv A G x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:599 / GROUP_ZPOW_INV   (hash md5:2ce1d31d6ff29fecf0ae53a92a82e270)
// not bridged: 
Theorem GROUP_ZPOW_INV : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e int, x :e group_carrier A G -> group_zpow A G (group_inv A G x) n = group_zpow A G x (- n).
Admitted.

// HOL Light: Library/grouptheory.ml:605 / GROUP_ZPOW_MUL   (hash md5:5646399ca4c1e0405cd6d47a53d360be)
// not bridged: 
Theorem GROUP_ZPOW_MUL : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e int, x :e group_carrier A G -> group_zpow A G x (m * n) = group_zpow A G (group_zpow A G x m) n.
Admitted.

// HOL Light: Library/grouptheory.ml:620 / GROUP_COMMUTES_ZPOW   (hash md5:174b920d9a8060b51e1fd071ed27dd1f)
// not bridged: 
Theorem GROUP_COMMUTES_ZPOW : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e int, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_mul A G y x) -> group_mul A G (group_zpow A G x n) y = group_mul A G y (group_zpow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:630 / GROUP_MUL_ZPOW   (hash md5:5b8d696d36085de6b0a96d8cd9323fb1)
// not bridged: 
Theorem GROUP_MUL_ZPOW : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e int, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_mul A G y x) -> group_zpow A G (group_mul A G x y) n = group_mul A G (group_zpow A G x n) (group_zpow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:644 / abelian_group   (hash md5:a271522a959d209297e565074a514c3a)
// not bridged: 
Theorem abelian_group_thm : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G <-> forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_mul A G x y = group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:649 / TRIVIAL_IMP_ABELIAN_GROUP   (hash md5:6cf010d7f578cdbbe18d359046efd84d)
// not bridged: 
Theorem TRIVIAL_IMP_ABELIAN_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G -> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:653 / ABELIAN_SINGLETON_GROUP   (hash md5:98894e639ae4c0d0d0aa909e6e7b30d8)
// not bridged: 
Theorem ABELIAN_SINGLETON_GROUP : forall A:set, forall a :e A, abelian_group_hl A (singleton_group A a).
Admitted.

// HOL Light: Library/grouptheory.ml:657 / ABELIAN_OPPOSITE_GROUP   (hash md5:140ea1d5f96951b204b06782b3c1fa65)
// not bridged: 
Theorem ABELIAN_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A (opposite_group A G) <-> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:662 / ABELIAN_GROUP_MUL_POW   (hash md5:7673304f1378ef757fd1409722eadda2)
// not bridged: 
Theorem ABELIAN_GROUP_MUL_POW : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e omega, abelian_group_hl A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> group_pow A G (group_mul A G x y) n = group_mul A G (group_pow A G x n) (group_pow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:669 / ABELIAN_GROUP_MUL_ZPOW   (hash md5:d67cf2697c16fabf712f275b3d5863f3)
// not bridged: 
Theorem ABELIAN_GROUP_MUL_ZPOW : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e int, abelian_group_hl A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> group_zpow A G (group_mul A G x y) n = group_mul A G (group_zpow A G x n) (group_zpow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:676 / ABELIAN_GROUP_DIV_ZPOW   (hash md5:d7e3149f5393ae5829b7f6584c4c2fc1)
// not bridged: 
Theorem ABELIAN_GROUP_DIV_ZPOW : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e int, abelian_group_hl A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> group_zpow A G (group_div A G x y) n = group_div A G (group_zpow A G x n) (group_zpow A G y n).
Admitted.

// HOL Light: Library/grouptheory.ml:683 / ABELIAN_GROUP_MUL_AC   (hash md5:7d2a86834e527ab644997eee5f801ea0)
// not bridged: 
Theorem ABELIAN_GROUP_MUL_AC : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G <-> (forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_mul A G x y = group_mul A G y x) /\ ((forall x y z :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ z :e group_carrier A G) -> group_mul A G (group_mul A G x y) z = group_mul A G x (group_mul A G y z)) /\ forall x y z :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ z :e group_carrier A G) -> group_mul A G x (group_mul A G y z) = group_mul A G y (group_mul A G x z)).
Admitted.

// HOL Light: Library/grouptheory.ml:704 / group_neg   (hash md5:3d94d2f3e9ffad1ad2a248ad30bbb0a3)
// not bridged: 
Theorem group_neg_thm : forall A:set, forall G :e group_hl A, forall x :e A, group_neg A G x = if x :e group_carrier A G then group_inv A G x else x.
Admitted.

// HOL Light: Library/grouptheory.ml:707 / group_add   (hash md5:72a818adb8c01722e73807cec8e9d706)
// not bridged: 
Theorem group_add_thm : forall A:set, forall y x :e A, forall G :e group_hl A, group_add A G x y = if x :e group_carrier A G /\ y :e group_carrier A G then group_mul A G x y else if x :e group_carrier A G then y else if y :e group_carrier A G then x else choose_in A (fun w:set => ~ w :e group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:715 / group_nmul   (hash md5:1d67c84457cd0d47b9bfec5372dc058d)
// not bridged: 
Theorem group_nmul_thm : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, group_nmul A G 0 x = group_id A G /\ group_nmul A G (ordsucc n) x = group_add A G x (group_nmul A G n x).
Admitted.

// HOL Light: Library/grouptheory.ml:719 / GROUP_NEG   (hash md5:d9ef9858613e92bcd52a7b8aa2316879)
// not bridged: 
Theorem GROUP_NEG : forall A:set, forall G :e group_hl A, forall x :e A, group_neg A G x :e group_carrier A G <-> x :e group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:723 / GROUP_ADD   (hash md5:729d5630723169a8784159f4009b0e7c)
// not bridged: 
Theorem GROUP_ADD : forall A:set, forall G :e group_hl A, forall x y :e A, group_add A G x y :e group_carrier A G <-> x :e group_carrier A G /\ y :e group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:729 / GROUP_NEG_EQ_INV   (hash md5:4bbec75206f679f7c64deca9cfdf85f2)
// not bridged: 
Theorem GROUP_NEG_EQ_INV : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_neg A G x = group_inv A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:733 / GROUP_ADD_EQ_MUL   (hash md5:17abc6f51ff61d58f445ec7a37135bf7)
// not bridged: 
Theorem GROUP_ADD_EQ_MUL : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_add A G x y = group_mul A G x y.
Admitted.

// HOL Light: Library/grouptheory.ml:739 / GROUP_ADD_LID   (hash md5:e7b581b6f5c3283e0a5d20f5ea60ae72)
// not bridged: 
Theorem GROUP_ADD_LID : forall A:set, forall G :e group_hl A, forall x :e A, group_add A G (group_id A G) x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:743 / GROUP_ADD_RID   (hash md5:cb69ee955173f06f8da8c2208c40b4b2)
// not bridged: 
Theorem GROUP_ADD_RID : forall A:set, forall G :e group_hl A, forall x :e A, group_add A G x (group_id A G) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:747 / GROUP_ADD_ASSOC   (hash md5:144f1204d9d2c89634d63409d02bcf70)
// not bridged: 
Theorem GROUP_ADD_ASSOC : forall A:set, forall G :e group_hl A, forall x y z :e A, group_add A G x (group_add A G y z) = group_add A G (group_add A G x y) z.
Admitted.

// HOL Light: Library/grouptheory.ml:759 / GROUP_NEG_ADD   (hash md5:a1fee19238a2711ed3ff41e57385b8a7)
// not bridged: 
Theorem GROUP_NEG_ADD : forall A:set, forall G :e group_hl A, forall x y :e A, group_neg A G (group_add A G x y) = group_add A G (group_neg A G y) (group_neg A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:770 / GROUP_NEG_NEG   (hash md5:9149863332dd1ad2c98fdab27e3d46aa)
// not bridged: 
Theorem GROUP_NEG_NEG : forall A:set, forall G :e group_hl A, forall x :e A, group_neg A G (group_neg A G x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:775 / GROUP_NEG_ID   (hash md5:c1d033db0ed3fad8e244bb878141fa0b)
// not bridged: 
Theorem GROUP_NEG_ID : forall A:set, A <> Empty -> forall G :e group_hl A, group_neg A G (group_id A G) = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:779 / GROUP_ADD_EQ_ID   (hash md5:4d89615ee8798f115a3566d47596d42d)
// not bridged: 
Theorem GROUP_ADD_EQ_ID : forall A:set, forall G :e group_hl A, forall x y :e A, group_add A G x y = group_id A G <-> group_add A G y x = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:784 / GROUP_NEG_EQ_ID   (hash md5:8e22034d8fcf67dc47499fa9c87539ac)
// not bridged: 
Theorem GROUP_NEG_EQ_ID : forall A:set, forall G :e group_hl A, forall x :e A, group_neg A G x = group_id A G <-> x = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:788 / GROUP_NMUL_EQ_POW   (hash md5:7030ef35a63aa7e5cc3196a4a6605970)
// not bridged: 
Theorem GROUP_NMUL_EQ_POW : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, x :e group_carrier A G -> group_nmul A G n x = group_pow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:794 / GROUP_NMUL_ADD   (hash md5:da1572f9b660bd425ace32a8a0b309f7)
// not bridged: 
Theorem GROUP_NMUL_ADD : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, group_nmul A G (m + n) x = group_add A G (group_nmul A G m x) (group_nmul A G n x).
Admitted.

// HOL Light: Library/grouptheory.ml:802 / GROUP_NMUL_MUL   (hash md5:8b769f32443be0adc9eaf1672477cb1c)
// not bridged: 
Theorem GROUP_NMUL_MUL : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, group_nmul A G (m * n) x = group_nmul A G m (group_nmul A G n x).
Admitted.

// HOL Light: Library/grouptheory.ml:810 / GROUP_NMUL_1   (hash md5:2f6f02970b945cf8cea63a938c89a586)
// not bridged: 
Theorem GROUP_NMUL_1 : forall A:set, forall G :e group_hl A, forall x :e A, group_nmul A G 1 x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:814 / GROUP_NEG_NMUL   (hash md5:5e819adda60f2292dc018ee9b57880cd)
// not bridged: 
Theorem GROUP_NEG_NMUL : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, group_neg A G (group_nmul A G n x) = group_nmul A G n (group_neg A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:823 / GROUP_ADD_SYM   (hash md5:8b04816274b77558ae02a6c05a1d4cb2)
// not bridged: 
Theorem GROUP_ADD_SYM : forall A:set, forall G :e group_hl A, forall x y :e A, abelian_group_hl A G -> group_add A G x y = group_add A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:827 / GROUP_ADD_SYM_EQ   (hash md5:3da8db99e72d4563344bdaed2aae8574)
// not bridged: 
Theorem GROUP_ADD_SYM_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, (forall x y :e A, group_add A G x y = group_add A G y x) <-> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:831 / GROUP_ADD_NMUL   (hash md5:ba947dff68f0310877477779e58ab9e8)
// not bridged: 
Theorem GROUP_ADD_NMUL : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e omega, abelian_group_hl A G -> group_nmul A G n (group_add A G x y) = group_add A G (group_nmul A G n x) (group_nmul A G n y).
Admitted.

// HOL Light: Library/grouptheory.ml:843 / NEUTRAL_GROUP_ADD   (hash md5:9a555f3486a51e9780299d9921f0feb4)
// not bridged: 
Theorem NEUTRAL_GROUP_ADD : forall A:set, A <> Empty -> forall G :e group_hl A, neutral_of A (group_add A G) = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:848 / MONOIDAL_GROUP_ADD   (hash md5:7d2462ffeba7f17ed04060a9466a7848)
// not bridged: 
Theorem MONOIDAL_GROUP_ADD : forall A:set, A <> Empty -> forall G :e group_hl A, (forall x y :e A, group_add A G x y = group_add A G y x) /\ (forall x y z :e A, group_add A G x (group_add A G y z) = group_add A G (group_add A G x y) z) /\ (forall x :e A, group_add A G (neutral_of A (group_add A G)) x = x) <-> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:1074 / group_product   (hash md5:b55e6215b76a21538861491d68c1c259)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1078 / group_sum   (hash md5:1e67107706d3f4e580412b5183ed3187)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1082 / GROUP_PRODUCT_EQ   (hash md5:8dc93e0d4e414e9d1c2921056ac4490a)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1088 / GROUP_SUM_EQ   (hash md5:deb6fa7aa159510bc4dbcc8a785c9b3a)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1103 / GROUP_PRODUCT_CLOSED   (hash md5:b009c94753ea242f6a65cc6001480a68)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1119 / GROUP_SUM_CLOSED   (hash md5:dfa5911924ce0eeb4bec9997172426b6)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1129 / GROUP_PRODUCT   (hash md5:b90ac70341fae04613c7a89edcfd879b)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1135 / GROUP_SUM   (hash md5:06ec0cb271f70f2f3f03d975141c7a42)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1139 / GROUP_PRODUCT_SUPPORT   (hash md5:35d696adfd611a764b3ce9600344f944)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1147 / GROUP_SUM_SUPPORT   (hash md5:d7e56e6392b8b9b057e6be3a33a428dc)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1153 / GROUP_PRODUCT_RESTRICT   (hash md5:84887f87711dc38c62428ba608a96ce6)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1161 / GROUP_SUM_RESTRICT   (hash md5:0a3d4185d711155d5741b6ee1b38ce94)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1167 / GROUP_PRODUCT_EXPAND_CASES   (hash md5:1e922acc748e4735322dc972fa55082d)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1177 / GROUP_SUM_EXPAND_CASES   (hash md5:49e04301a3e836ef170a7e9542024eb8)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1187 / GROUP_PRODUCT_RESTRICT_SET   (hash md5:f4ab9984ada1f955c5b1da03873153d8)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1196 / GROUP_SUM_RESTRICT_SET   (hash md5:dfb2a28aedb0c780b762cc5b03f5f515)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1202 / GROUP_PRODUCT_SUPERSET   (hash md5:7bae341f3b8795b0a7487c3122526833)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1209 / GROUP_SUM_SUPERSET   (hash md5:5779bcf2894b852c2d66abc65cfeea00)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1215 / GROUP_PRODUCT_CLAUSES   (hash md5:0bf12d949f5b93d42ba58d69573a44a7)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1229 / GROUP_PRODUCT_CLAUSES_EXISTS   (hash md5:621b59a486cf350c8aaee6c7a67444ed)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1241 / GROUP_SUM_CLAUSES_EXISTS   (hash md5:f215141401713f6c5d0c19832ad289a2)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1252 / GROUP_PRODUCT_EQ_ID   (hash md5:23610035f866e474884ace1c63466b8c)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1260 / GROUP_SUM_EQ_ID   (hash md5:8cc831be09e5d35106764e74ff65e4e5)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1266 / GROUP_PRODUCT_ID   (hash md5:86b315238420c55371cf9a61cc99237f)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1271 / GROUP_SUM_ID   (hash md5:5d4409f79787cae56d3c9d6c1ad24778)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1276 / GROUP_COMMUTES_PRODUCT   (hash md5:0913a75867d856168edaa1d7251181ff)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1289 / GROUP_COMMUTES_SUM   (hash md5:530301459831f132a073fb395e42e964)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1297 / GROUP_PRODUCT_SING   (hash md5:d9606e175360c160c981028eee2a6a42)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1305 / GROUP_SUM_SING   (hash md5:e291d54723e327766bb374e000084276)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1311 / GROUP_PRODUCT_UNION   (hash md5:47cca6e3cf74845fc83e58eb1285331f)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1382 / GROUP_PRODUCT_CLAUSES_LEFT   (hash md5:5d82f1d7e8b011925ca86ce8a618c17b)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1401 / GROUP_PRODUCT_CLAUSES_RIGHT   (hash md5:86934b8d4337463cd75284276f3a64b0)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1426 / GROUP_PRODUCT_CLAUSES_NUMSEG   (hash md5:8afbf046c291169975b2d077b35861b8)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1444 / GROUP_PRODUCT_CLAUSES_COMMUTING   (hash md5:46e6c3f0460bce998afee1f6bf068f16)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1488 / ABELIAN_GROUP_PRODUCT_CLAUSES   (hash md5:d8e9d30db2ca046b1e7b6713e67e5dd0)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1500 / GROUP_SUM_CLAUSES_COMMUTING   (hash md5:6f56a8df35d6359cc0f2462510149030)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1514 / ABELIAN_GROUP_SUM_CLAUSES   (hash md5:146407fef9470775da69955db76f65ec)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1525 / GROUP_PRODUCT_MUL   (hash md5:22c80f0157f5d9693b0af63345ba7af6)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1608 / GROUP_SUM_MUL   (hash md5:9d7c68c62a755ada6600fbc0e008f106)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1620 / ABELIAN_GROUP_SUM_MUL   (hash md5:d71124b327685009b1b871671f604915)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1631 / GROUP_SUM_INV   (hash md5:bb308ba32b0087234dae6615c0cf92ca)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1651 / ABELIAN_GROUP_SUM_INV   (hash md5:28fa33863d71adfdc6a8b3500a729a5e)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1661 / GROUP_SUM_POW   (hash md5:43c633dd6619ef6c9dea03981ee76d4a)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1681 / ABELIAN_GROUP_SUM_POW   (hash md5:5fc7f5ed6bf8896d515a04fcb4315377)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1691 / GROUP_SUM_ZPOW   (hash md5:b11479a94ffbca63422edeb790fee6e6)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1712 / ABELIAN_GROUP_SUM_ZPOW   (hash md5:a7c1e9c1c99ff131b77ddcf3b3a71895)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1722 / GROUP_SUM_IMAGE   (hash md5:b914d4678596e7c43568aa1196bba15a)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1751 / ABELIAN_GROUP_PRODUCT_ITERATE   (hash md5:914d1ef8b7f8b80ff974b5917968efd8)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1779 / ABELIAN_GROUP_SUM_ITERATE   (hash md5:23bbf32c93d98532e417092b153124ef)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1788 / ABELIAN_GROUP_ITERATE   (hash md5:4647ccfbc609a3a3b156905b2c2c9c5f)
// not bridged: 
Theorem ABELIAN_GROUP_ITERATE : forall A K:set, A <> Empty -> K <> Empty -> forall G :e group_hl A, forall x:set -> set, (forall x0 :e K, x x0 :e A) -> forall k c= K, abelian_group_hl A G /\ (forall i :e K, i :e k -> x i :e group_carrier A G) -> iterate_op A (group_add A G) k x :e group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:1799 / group_conjugation   (hash md5:c66ebeb641b65ac91a526f168a5bdcee)
// not bridged: 
Theorem group_conjugation_thm : forall A:set, forall x :e A, forall G :e group_hl A, forall a :e A, group_conjugation A G a x = group_mul A G a (group_mul A G x (group_inv A G a)).
Admitted.

// HOL Light: Library/grouptheory.ml:1802 / GROUP_CONJUGATION   (hash md5:84ce7fe7003277b1c5eda5e5f1de4d1f)
// not bridged: 
Theorem GROUP_CONJUGATION : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_conjugation A G x y :e group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:1808 / GROUP_CONJUGATION_CONJUGATION   (hash md5:f4a7371a89824d4d82dcb769733a7445)
// not bridged: 
Theorem GROUP_CONJUGATION_CONJUGATION : forall A:set, forall G :e group_hl A, forall a b x :e A, a :e group_carrier A G /\ (b :e group_carrier A G /\ x :e group_carrier A G) -> group_conjugation A G a (group_conjugation A G b x) = group_conjugation A G (group_mul A G a b) x.
Admitted.

// HOL Light: Library/grouptheory.ml:1815 / GROUP_CONJUGATION_EQ   (hash md5:45b97ec3831dfa4883d6008b9ec0b08c)
// not bridged: 
Theorem GROUP_CONJUGATION_EQ : forall A:set, forall G :e group_hl A, forall a x y :e A, a :e group_carrier A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> (group_conjugation A G a x = group_conjugation A G a y <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:1821 / GROUP_CONJUGATION_EQ_SELF   (hash md5:80dbff6c05b043a4898d77c5e1e214c8)
// not bridged: 
Theorem GROUP_CONJUGATION_EQ_SELF : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_conjugation A G x y = y <-> group_mul A G x y = group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:1828 / GROUP_CONJUGATION_EQ_ID   (hash md5:bc7113839ceafd344dfc5ede63dab085)
// not bridged: 
Theorem GROUP_CONJUGATION_EQ_ID : forall A:set, forall G :e group_hl A, forall a x :e A, a :e group_carrier A G /\ x :e group_carrier A G -> (group_conjugation A G a x = group_id A G <-> x = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:1834 / GROUP_CONJUGATION_BY_ID   (hash md5:55672facea48f60c09cbe515d6316c11)
// not bridged: 
Theorem GROUP_CONJUGATION_BY_ID : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_conjugation A G (group_id A G) x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:1838 / GROUP_CONJUGATION_LINV   (hash md5:0bdffd463bd9ef9a564355a9e4c4c6b8)
// not bridged: 
Theorem GROUP_CONJUGATION_LINV : forall A:set, forall G :e group_hl A, forall a x :e A, a :e group_carrier A G /\ x :e group_carrier A G -> group_conjugation A G (group_inv A G a) (group_conjugation A G a x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:1845 / GROUP_CONJUGATION_RINV   (hash md5:7b59b0a3148579dda38f3342b831764d)
// not bridged: 
Theorem GROUP_CONJUGATION_RINV : forall A:set, forall G :e group_hl A, forall a x :e A, a :e group_carrier A G /\ x :e group_carrier A G -> group_conjugation A G a (group_conjugation A G (group_inv A G a) x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:1852 / IN_IMAGE_GROUP_CONJUGATION   (hash md5:012c5138ce6602b3e795cc48c9516a0b)
// not bridged: 
Theorem IN_IMAGE_GROUP_CONJUGATION : forall A:set, forall G :e group_hl A, forall s c= A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ s c= group_carrier A G) -> (x :e {group_conjugation A G y x0 | x0 :e s} <-> group_conjugation A G (group_inv A G y) x :e s).
Admitted.

// HOL Light: Library/grouptheory.ml:1865 / IMAGE_GROUP_CONJUGATION_SUBSET   (hash md5:6708babefe755723efc66efae05277a4)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION_SUBSET : forall A:set, forall G :e group_hl A, forall a :e A, forall s c= A, a :e group_carrier A G /\ s c= group_carrier A G -> {group_conjugation A G a x | x :e s} c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:1871 / IMAGE_GROUP_CONJUGATION_BY_ID   (hash md5:714a1a90c28150cbabb36362ed2bda6b)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION_BY_ID : forall A:set, forall G :e group_hl A, forall s c= A, s c= group_carrier A G -> {group_conjugation A G (group_id A G) x | x :e s} = s.
Admitted.

// HOL Light: Library/grouptheory.ml:1879 / IMAGE_GROUP_CONJUGATION_BY_MUL   (hash md5:3ceaeb60ccf0bfc1f83a5b4702fb8a28)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION_BY_MUL : forall A:set, forall G :e group_hl A, forall s c= A, forall a b :e A, a :e group_carrier A G /\ (b :e group_carrier A G /\ s c= group_carrier A G) -> {group_conjugation A G (group_mul A G a b) x | x :e s} = {group_conjugation A G a x | x :e {group_conjugation A G b x | x :e s}}.
Admitted.

// HOL Light: Library/grouptheory.ml:1890 / IMAGE_GROUP_CONJUGATION_BY_INV   (hash md5:03acae1666ef771c2d6559b615159567)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION_BY_INV : forall A:set, forall G :e group_hl A, forall a :e A, forall s t c= A, a :e group_carrier A G /\ (s c= group_carrier A G /\ t c= group_carrier A G) -> ({group_conjugation A G (group_inv A G a) x | x :e s} = t <-> {group_conjugation A G a x | x :e t} = s).
Admitted.

// HOL Light: Library/grouptheory.ml:1902 / IMAGE_GROUP_CONJUGATION_EQ_SWAP   (hash md5:183905e7163b93c7835dc5d364263456)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION_EQ_SWAP : forall A:set, forall G :e group_hl A, forall a :e A, forall s t c= A, a :e group_carrier A G /\ (s c= group_carrier A G /\ (t c= group_carrier A G /\ {group_conjugation A G (group_inv A G a) x | x :e s} = t)) -> {group_conjugation A G a x | x :e t} = s.
Admitted.

// HOL Light: Library/grouptheory.ml:1911 / IMAGE_GROUP_CONJUGATION_EQ_PREIMAGE   (hash md5:8cbaa5b888ff781a46f012d86eedf9f1)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION_EQ_PREIMAGE : forall A:set, forall G :e group_hl A, forall a :e A, forall s t c= A, a :e group_carrier A G /\ (s c= group_carrier A G /\ t c= group_carrier A G) -> ({group_conjugation A G a x | x :e s} = t <-> {x :e A | x :e group_carrier A G /\ group_conjugation A G a x :e t} = s).
Admitted.

// HOL Light: Library/grouptheory.ml:1936 / subgroup_of   (hash md5:38d8a4c2d36f6a2ed3ef72684bdcc4d2)
// not bridged: 
Theorem subgroup_of_thm : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_of A s G <-> s c= group_carrier A G /\ (group_id A G :e s /\ ((forall x :e A, x :e s -> group_inv A G x :e s) /\ forall x y :e A, x :e s /\ y :e s -> group_mul A G x y :e s)).
Admitted.

// HOL Light: Library/grouptheory.ml:1943 / IN_SUBGROUP_ID   (hash md5:d63b5a2a4d61a94834da1478dcfe649f)
// not bridged: 
Theorem IN_SUBGROUP_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> group_id A G :e h.
Admitted.

// HOL Light: Library/grouptheory.ml:1947 / IN_SUBGROUP_INV   (hash md5:fe698b7bbbb2498f9b34b118a010e0d3)
// not bridged: 
Theorem IN_SUBGROUP_INV : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G /\ x :e h -> group_inv A G x :e h.
Admitted.

// HOL Light: Library/grouptheory.ml:1951 / IN_SUBGROUP_MUL   (hash md5:cb600ee8c7b807b0986b66b71eb1f189)
// not bridged: 
Theorem IN_SUBGROUP_MUL : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e h /\ y :e h) -> group_mul A G x y :e h.
Admitted.

// HOL Light: Library/grouptheory.ml:1955 / IN_SUBGROUP_DIV   (hash md5:75720ec9d42d268d588c94a3852955dd)
// not bridged: 
Theorem IN_SUBGROUP_DIV : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e h /\ y :e h) -> group_div A G x y :e h.
Admitted.

// HOL Light: Library/grouptheory.ml:1959 / IN_SUBGROUP_POW   (hash md5:eafc44d80bc43a660de006d9a0f20b74)
// not bridged: 
Theorem IN_SUBGROUP_POW : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, forall n :e omega, subgroup_of A h G /\ x :e h -> group_pow A G x n :e h.
Admitted.

// HOL Light: Library/grouptheory.ml:1965 / IN_SUBGROUP_ZPOW   (hash md5:a9b38a908e3d3bfd6f944e9e17f860e2)
// not bridged: 
Theorem IN_SUBGROUP_ZPOW : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, forall n :e int, subgroup_of A h G /\ x :e h -> group_zpow A G x n :e h.
Admitted.

// HOL Light: Library/grouptheory.ml:1970 / IN_SUBGROUP_CONJUGATION   (hash md5:0517c28390faf1e1b4f082d4a053ce3a)
// not bridged: 
Theorem IN_SUBGROUP_CONJUGATION : forall A:set, forall G :e group_hl A, forall h c= A, forall a x :e A, subgroup_of A h G /\ (a :e h /\ x :e h) -> group_conjugation A G a x :e h.
Admitted.

// HOL Light: Library/grouptheory.ml:1975 / IN_SUBGROUP_PRODUCT   (hash md5:cba9e0f32846932af910605043cb9199)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1984 / IN_SUBGROUP_SUM   (hash md5:6bfd955be9ba867af3465eeabc28ced8)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:1991 / IMAGE_GROUP_CONJUGATION_SUBGROUP   (hash md5:a73e0af2a8fba2b8c3deb36b3fa0b103)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION_SUBGROUP : forall A:set, forall G :e group_hl A, forall h c= A, forall a :e A, subgroup_of A h G /\ a :e h -> {group_conjugation A G a x | x :e h} = h.
Admitted.

// HOL Light: Library/grouptheory.ml:2001 / SUBGROUP_OF_INTERS   (hash md5:754c280e9935182813f8b6494d4cd902)
// not bridged: 
Theorem SUBGROUP_OF_INTERS : forall A:set, A <> Empty -> forall G :e group_hl A, forall gs c= Power A, (forall g c= A, g :e gs -> subgroup_of A g G) /\ ~ gs = Empty -> subgroup_of A {x :e A | forall Y :e gs, x :e Y} G.
Admitted.

// HOL Light: Library/grouptheory.ml:2007 / SUBGROUP_OF_INTER   (hash md5:85efd65a6d62bb9b2fe8435d5aaa7168)
// not bridged: 
Theorem SUBGROUP_OF_INTER : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> subgroup_of A (g :/\: h) G.
Admitted.

// HOL Light: Library/grouptheory.ml:2012 / SUBGROUP_OF_UNIONS   (hash md5:b740a25787f81fae06d7d86298d62b4f)
// not bridged: 
Theorem SUBGROUP_OF_UNIONS : forall A:set, A <> Empty -> forall G :e group_hl A, forall u c= Power A, ~ u = Empty /\ ((forall h c= A, h :e u -> subgroup_of A h G) /\ (forall g h c= A, g :e u /\ h :e u -> g c= h \/ h c= g)) -> subgroup_of A (Union u) G.
Admitted.

// HOL Light: Library/grouptheory.ml:2020 / SUBGROUP_OF_OPPOSITE_GROUP   (hash md5:4cf7ad02599e106748ed09cdd05254b3)
// not bridged: 
Theorem SUBGROUP_OF_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h (opposite_group A G) <-> subgroup_of A h G.
Admitted.

// HOL Light: Library/grouptheory.ml:2024 / SUBGROUP_OF_IMP_SUBSET   (hash md5:489306efa44435c5bd26087514115564)
// not bridged: 
Theorem SUBGROUP_OF_IMP_SUBSET : forall A:set, forall G :e group_hl A, forall s c= A, subgroup_of A s G -> s c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:2028 / SUBGROUP_OF_IMP_NONEMPTY   (hash md5:59fa134720a197d170711077d8790618)
// not bridged: 
Theorem SUBGROUP_OF_IMP_NONEMPTY : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_of A s G -> ~ s = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:2032 / TRIVIAL_SUBGROUP_OF   (hash md5:0505b33a0d300dcc91732b01d784cdaf)
// not bridged: 
Theorem TRIVIAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e group_hl A, subgroup_of A {group_id A G} G.
Admitted.

// HOL Light: Library/grouptheory.ml:2037 / CARRIER_SUBGROUP_OF   (hash md5:acb6a91ec4d4b2679a9da03849ec6b53)
// not bridged: 
Theorem CARRIER_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e group_hl A, subgroup_of A (group_carrier A G) G.
Admitted.

// HOL Light: Library/grouptheory.ml:2041 / FINITE_SUBGROUPS   (hash md5:441d508592f3849366bfb6902f73a4c8)
// not bridged: 
Theorem FINITE_SUBGROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, finite (group_carrier A G) -> finite {h :e Power A | subgroup_of A h G}.
Admitted.

// HOL Light: Library/grouptheory.ml:2047 / FINITE_RESTRICTED_SUBGROUPS   (hash md5:6ca6b28607e8c662a0513c17ff2e3209)
// not bridged: 
Theorem FINITE_RESTRICTED_SUBGROUPS : forall A:set, A <> Empty -> forall P:set -> prop, forall G :e group_hl A, finite (group_carrier A G) -> finite {h :e Power A | subgroup_of A h G /\ P h}.
Admitted.

// HOL Light: Library/grouptheory.ml:2054 / subgroup_generated   (hash md5:9d928b08a94e89a7037fedc206ad364f)
// not bridged: 
Theorem subgroup_generated_thm : forall A:set, A <> Empty -> forall s c= A, forall G :e group_hl A, subgroup_generated A G s = ({x :e A | forall Y :e {h :e Power A | subgroup_of A h G /\ group_carrier A G :/\: s c= h}, x :e Y},(group_id A G,(fun x :e A => group_inv A G x,fun x :e A => fun x0 :e A => group_mul A G x x0))).
Admitted.

// HOL Light: Library/grouptheory.ml:2059 / SUBGROUP_GENERATED   (hash md5:a1359371d85c975b620a5ce5c3097a1d)
// not bridged: 
Theorem SUBGROUP_GENERATED : forall A:set, A <> Empty -> (forall G :e group_hl A, forall s c= A, group_carrier A (subgroup_generated A G s) = {x :e A | forall Y :e {h :e Power A | subgroup_of A h G /\ group_carrier A G :/\: s c= h}, x :e Y}) /\ ((forall G :e group_hl A, forall s c= A, group_id A (subgroup_generated A G s) = group_id A G) /\ ((forall G :e group_hl A, forall s c= A, forall x :e A, group_inv A (subgroup_generated A G s) x = group_inv A G x) /\ forall G :e group_hl A, forall s c= A, forall x x0 :e A, group_mul A (subgroup_generated A G s) x x0 = group_mul A G x x0)).
Admitted.

// HOL Light: Library/grouptheory.ml:2081 / SUBGROUP_GENERATED_EQ   (hash md5:535f4c785bdc640e74329a8085c19935)
// not bridged: 
Theorem SUBGROUP_GENERATED_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_generated A G s = G <-> group_carrier A (subgroup_generated A G s) = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:2088 / GROUP_ID_SUBGROUP   (hash md5:7db51db5ef8c61020f9a7a969bc37065)
// not bridged: 
Theorem GROUP_ID_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_id A G :e group_carrier A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2092 / GROUP_INV_SUBGROUP   (hash md5:25042e873e4788f9a9a028d981e8f66a)
// not bridged: 
Theorem GROUP_INV_SUBGROUP : forall A:set, forall G :e group_hl A, forall s c= A, forall x :e A, x :e group_carrier A (subgroup_generated A G s) -> group_inv A G x :e group_carrier A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2097 / GROUP_MUL_SUBGROUP   (hash md5:284c5ec64c74e696cc5d505df5eb82fe)
// not bridged: 
Theorem GROUP_MUL_SUBGROUP : forall A:set, forall G :e group_hl A, forall s c= A, forall x y :e A, x :e group_carrier A (subgroup_generated A G s) /\ y :e group_carrier A (subgroup_generated A G s) -> group_mul A G x y :e group_carrier A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2103 / ABELIAN_SUBGROUP_GENERATED   (hash md5:b12a10d91746f5123f73055bd1bbfabf)
// not bridged: 
Theorem ABELIAN_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, abelian_group_hl A G -> abelian_group_hl A (subgroup_generated A G h).
Admitted.

// HOL Light: Library/grouptheory.ml:2112 / GROUP_DIV_SUBGROUP_GENERATED   (hash md5:56294cce692341c21d78e3dd484e5409)
// not bridged: 
Theorem GROUP_DIV_SUBGROUP_GENERATED : forall A:set, forall G :e group_hl A, forall s c= A, forall x x0 :e A, group_div A (subgroup_generated A G s) x x0 = group_div A G x x0.
Admitted.

// HOL Light: Library/grouptheory.ml:2116 / GROUP_POW_SUBGROUP_GENERATED   (hash md5:7a0ebc382f33da941af3c1c7f4cfff57)
// not bridged: 
Theorem GROUP_POW_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_pow A (subgroup_generated A G s) = group_pow A G.
Admitted.

// HOL Light: Library/grouptheory.ml:2121 / GROUP_ZPOW_SUBGROUP_GENERATED   (hash md5:09cc4ad212332f88ad65c9f2652d9eba)
// not bridged: 
Theorem GROUP_ZPOW_SUBGROUP_GENERATED : forall A:set, forall G :e group_hl A, forall s c= A, forall x :e A, forall x0 :e int, group_zpow A (subgroup_generated A G s) x x0 = group_zpow A G x x0.
Admitted.

// HOL Light: Library/grouptheory.ml:2126 / GROUP_CONJUGATION_SUBGROUP_GENERATED   (hash md5:b62520f6585937dfafa94f0ca4e6d8cf)
// not bridged: 
Theorem GROUP_CONJUGATION_SUBGROUP_GENERATED : forall A:set, forall G :e group_hl A, forall s c= A, forall x x0 :e A, group_conjugation A (subgroup_generated A G s) x x0 = group_conjugation A G x x0.
Admitted.

// HOL Light: Library/grouptheory.ml:2131 / SUBGROUP_GENERATED_RESTRICT   (hash md5:6608cff9c9e675f72f99bf917acc2dc5)
// not bridged: 
Theorem SUBGROUP_GENERATED_RESTRICT : forall A:set, forall G :e group_hl A, forall s c= A, subgroup_generated A G s = subgroup_generated A G (group_carrier A G :/\: s).
Admitted.

// HOL Light: Library/grouptheory.ml:2137 / SUBGROUP_SUBGROUP_GENERATED   (hash md5:ff29f36b09774ff210b84d78a28cff5a)
// not bridged: 
Theorem SUBGROUP_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_of A (group_carrier A (subgroup_generated A G s)) G.
Admitted.

// HOL Light: Library/grouptheory.ml:2145 / SUBGROUP_GENERATED_MONO   (hash md5:ae2fc739ce860c662c32871a97b8b41e)
// not bridged: 
Theorem SUBGROUP_GENERATED_MONO : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, s c= t -> group_carrier A (subgroup_generated A G s) c= group_carrier A (subgroup_generated A G t).
Admitted.

// HOL Light: Library/grouptheory.ml:2152 / SUBGROUP_GENERATED_MINIMAL   (hash md5:c13831bd8a7f52ea41445ad459ea3397)
// not bridged: 
Theorem SUBGROUP_GENERATED_MINIMAL : forall A:set, A <> Empty -> forall G :e group_hl A, forall h s c= A, s c= h /\ subgroup_of A h G -> group_carrier A (subgroup_generated A G s) c= h.
Admitted.

// HOL Light: Library/grouptheory.ml:2158 / SUBGROUPS_GENERATED_EQ   (hash md5:0db20f92421d74752a505ed42f8ac138)
// not bridged: 
Theorem SUBGROUPS_GENERATED_EQ : forall A:set, forall G :e group_hl A, forall s t c= A, s c= group_carrier A (subgroup_generated A G t) /\ t c= group_carrier A (subgroup_generated A G s) -> subgroup_generated A G s = subgroup_generated A G t.
Admitted.

// HOL Light: Library/grouptheory.ml:2168 / SUBGROUP_GENERATED_INDUCT   (hash md5:73eb3261854aa925c3962d40e8a8134f)
// not bridged: 
Theorem SUBGROUP_GENERATED_INDUCT : forall A:set, forall G :e group_hl A, forall P:set -> prop, forall s c= A, (forall x :e A, x :e group_carrier A G /\ x :e s -> P x) /\ (P (group_id A G) /\ ((forall x :e A, P x -> P (group_inv A G x)) /\ (forall x y :e A, P x /\ P y -> P (group_mul A G x y)))) -> forall x :e A, x :e group_carrier A (subgroup_generated A G s) -> P x.
Admitted.

// HOL Light: Library/grouptheory.ml:2187 / GROUP_CARRIER_SUBGROUP_GENERATED_SUBSET   (hash md5:86d93461f50903ec3c5b8485c2bd70e4)
// not bridged: 
Theorem GROUP_CARRIER_SUBGROUP_GENERATED_SUBSET : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, group_carrier A (subgroup_generated A G h) c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:2194 / SUBGROUP_GENERATED_SUPERSET   (hash md5:43a22dd00b9acce0748a9771ced9c0f3)
// not bridged: 
Theorem SUBGROUP_GENERATED_SUPERSET : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_generated A G s = G <-> group_carrier A G c= group_carrier A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2201 / SUBGROUP_OF_SUBGROUP_GENERATED_EQ   (hash md5:f09fdd82377f00d0dd66bbb3fc888634)
// not bridged: 
Theorem SUBGROUP_OF_SUBGROUP_GENERATED_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall h k c= A, subgroup_of A h (subgroup_generated A G k) <-> subgroup_of A h G /\ h c= group_carrier A (subgroup_generated A G k).
Admitted.

// HOL Light: Library/grouptheory.ml:2208 / SUBGROUP_GENERATED_INDUCT_STRONG   (hash md5:cb077e5215197729ae8cad36defb2c8c)
// not bridged: 
Theorem SUBGROUP_GENERATED_INDUCT_STRONG : forall A:set, forall G :e group_hl A, forall P:set -> prop, forall s c= A, (forall x :e A, x :e group_carrier A G /\ x :e s -> P x) /\ (P (group_id A G) /\ ((forall x :e A, x :e group_carrier A G /\ P x -> P (group_inv A G x)) /\ (forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (P x /\ P y)) -> P (group_mul A G x y)))) -> forall x :e A, x :e group_carrier A (subgroup_generated A G s) -> P x.
Admitted.

// HOL Light: Library/grouptheory.ml:2224 / SUBGROUP_GENERATED_INDUCT_ALT   (hash md5:7f397f7c067e67dda6750f044554ffce)
// not bridged: 
Theorem SUBGROUP_GENERATED_INDUCT_ALT : forall A:set, forall G :e group_hl A, forall P:set -> prop, forall s c= A, P (group_id A G) /\ ((forall x :e A, x :e group_carrier A G /\ x :e s -> P x /\ P (group_inv A G x)) /\ (forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (P x /\ P y)) -> P (group_mul A G x y))) -> forall x :e A, x :e group_carrier A (subgroup_generated A G s) -> P x.
Admitted.

// HOL Light: Library/grouptheory.ml:2239 / SUBGROUP_GENERATED_INDUCT_LEFT   (hash md5:d87e1f947ea41be287f1164d5b639a5c)
// not bridged: 
Theorem SUBGROUP_GENERATED_INDUCT_LEFT : forall A:set, forall G :e group_hl A, forall P:set -> prop, forall s c= A, P (group_id A G) /\ (forall x y :e A, x :e group_carrier A G /\ (x :e s /\ (y :e group_carrier A G /\ P y)) -> P (group_mul A G x y) /\ P (group_mul A G (group_inv A G x) y)) -> forall x :e A, x :e group_carrier A (subgroup_generated A G s) -> P x.
Admitted.

// HOL Light: Library/grouptheory.ml:2256 / FINITE_SUBGROUP_GENERATED   (hash md5:a4f5200964c54fc1b49675b2b5d0e77e)
// not bridged: 
Theorem FINITE_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, finite (group_carrier A G) -> finite (group_carrier A (subgroup_generated A G s)).
Admitted.

// HOL Light: Library/grouptheory.ml:2262 / CARD_LE_SUBGROUP_GENERATED   (hash md5:02984ad6009ffee75f2f1a5e4ea7d1cd)
// not bridged: 
Theorem CARD_LE_SUBGROUP_GENERATED : forall A K:set, A <> Empty -> K <> Empty -> forall G :e group_hl A, forall s c= A, forall k c= K, infinite k /\ atleastp s k -> atleastp (group_carrier A (subgroup_generated A G s)) k.
Admitted.

// HOL Light: Library/grouptheory.ml:2303 / COUNTABLE_SUBGROUP_GENERATED   (hash md5:ebf06ae74f8c213b19ac9d90eaf071c3)
// not bridged: 
Theorem COUNTABLE_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, countable (group_carrier A G) \/ countable s -> countable (group_carrier A (subgroup_generated A G s)).
Admitted.

// HOL Light: Library/grouptheory.ml:2314 / SUBGROUP_GENERATED_SUBSET_CARRIER   (hash md5:8cb41d243f9b1f406691138863fe74e6)
// not bridged: 
Theorem SUBGROUP_GENERATED_SUBSET_CARRIER : forall A:set, forall G :e group_hl A, forall h c= A, group_carrier A G :/\: h c= group_carrier A (subgroup_generated A G h).
Admitted.

// HOL Light: Library/grouptheory.ml:2319 / SUBSET_CARRIER_SUBGROUP_GENERATED   (hash md5:9bf6e3d76a65e588a57ee4854c5243b1)
// not bridged: 
Theorem SUBSET_CARRIER_SUBGROUP_GENERATED : forall A:set, forall G :e group_hl A, forall s t c= A, s c= group_carrier A G /\ s c= t -> s c= group_carrier A (subgroup_generated A G t).
Admitted.

// HOL Light: Library/grouptheory.ml:2325 / SUBGROUP_GENERATED_MINIMAL_EQ   (hash md5:bfe76ce8c2418f402ff46b34c627fa42)
// not bridged: 
Theorem SUBGROUP_GENERATED_MINIMAL_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall h s c= A, subgroup_of A h G -> (group_carrier A (subgroup_generated A G s) c= h <-> group_carrier A G :/\: s c= h).
Admitted.

// HOL Light: Library/grouptheory.ml:2336 / CARRIER_SUBGROUP_GENERATED_SUBGROUP   (hash md5:bb1c20541c3f837f39de4abf1500c9f0)
// not bridged: 
Theorem CARRIER_SUBGROUP_GENERATED_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> group_carrier A (subgroup_generated A G h) = h.
Admitted.

// HOL Light: Library/grouptheory.ml:2346 / SUBGROUP_OF_SUBGROUP_GENERATED_SUBGROUP_EQ   (hash md5:3a93b3b4c32b29b9f22e4ef37f02d7ed)
// not bridged: 
Theorem SUBGROUP_OF_SUBGROUP_GENERATED_SUBGROUP_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall h k c= A, subgroup_of A k G -> (subgroup_of A h (subgroup_generated A G k) <-> subgroup_of A h G /\ h c= k).
Admitted.

// HOL Light: Library/grouptheory.ml:2354 / SUBGROUP_GENERATED_GROUP_CARRIER   (hash md5:060763608219a72bb679b499d50525cb)
// not bridged: 
Theorem SUBGROUP_GENERATED_GROUP_CARRIER : forall A:set, A <> Empty -> forall G :e group_hl A, subgroup_generated A G (group_carrier A G) = G.
Admitted.

// HOL Light: Library/grouptheory.ml:2360 / SUBGROUP_OF_SUBGROUP_GENERATED   (hash md5:8f758aefac96c2bc4f9f6b79ec74005a)
// not bridged: 
Theorem SUBGROUP_OF_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ g c= h -> subgroup_of A g (subgroup_generated A G h).
Admitted.

// HOL Light: Library/grouptheory.ml:2366 / SUBGROUP_GENERATED_SUBSET_CARRIER_SUBSET   (hash md5:d52894f47b828d3ac19e2d05cdaceb1f)
// not bridged: 
Theorem SUBGROUP_GENERATED_SUBSET_CARRIER_SUBSET : forall A:set, forall G :e group_hl A, forall s c= A, s c= group_carrier A G -> s c= group_carrier A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2373 / SUBGROUP_GENERATED_REFL   (hash md5:0194b5d9908ce6348e2b0a964738a1c4)
// not bridged: 
Theorem SUBGROUP_GENERATED_REFL : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_carrier A G c= s -> subgroup_generated A G s = G.
Admitted.

// HOL Light: Library/grouptheory.ml:2380 / SUBGROUP_GENERATED_INC   (hash md5:419c2943cfdb3d6ba639ca58f7a32977)
// not bridged: 
Theorem SUBGROUP_GENERATED_INC : forall A:set, forall G :e group_hl A, forall s c= A, forall x :e A, s c= group_carrier A G /\ x :e s -> x :e group_carrier A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2387 / SUBGROUP_GENERATED_INC_GEN   (hash md5:dd1d0bec0f2094ddede205d9e7c97ceb)
// not bridged: 
Theorem SUBGROUP_GENERATED_INC_GEN : forall A:set, forall G :e group_hl A, forall s c= A, forall x :e A, x :e group_carrier A G /\ x :e s -> x :e group_carrier A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2393 / SUBGROUP_OF_SUBGROUP_GENERATED_REV   (hash md5:1ed7bfec42c82a295b396235834c64b5)
// not bridged: 
Theorem SUBGROUP_OF_SUBGROUP_GENERATED_REV : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g (subgroup_generated A G h) -> subgroup_of A g G.
Admitted.

// HOL Light: Library/grouptheory.ml:2400 / TRIVIAL_GROUP_SUBGROUP_GENERATED   (hash md5:479a1f89eaa703ea6357de03d6b92bf3)
// not bridged: 
Theorem TRIVIAL_GROUP_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, trivial_group A G -> trivial_group A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2406 / TRIVIAL_GROUP_SUBGROUP_GENERATED_TRIVIAL   (hash md5:244fd649c9980906a4ad7ed711d7ebe1)
// not bridged: 
Theorem TRIVIAL_GROUP_SUBGROUP_GENERATED_TRIVIAL : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, s c= {group_id A G} -> trivial_group A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2416 / TRIVIAL_GROUP_SUBGROUP_GENERATED_EQ   (hash md5:87a6a25358f85a540cea70c7143da7c7)
// not bridged: 
Theorem TRIVIAL_GROUP_SUBGROUP_GENERATED_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, trivial_group A (subgroup_generated A G s) <-> group_carrier A G :/\: s c= {group_id A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:2428 / TRIVIAL_GROUP_GENERATED_BY_ANYTHING   (hash md5:d59e5e14906f2f536101b956bca4301d)
// not bridged: 
Theorem TRIVIAL_GROUP_GENERATED_BY_ANYTHING : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, trivial_group A G -> subgroup_generated A G s = G.
Admitted.

// HOL Light: Library/grouptheory.ml:2437 / SUBGROUP_GENERATED_BY_SUBGROUP_GENERATED   (hash md5:2fdcd06856f90a7ceae24147f02b7b54)
// not bridged: 
Theorem SUBGROUP_GENERATED_BY_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_generated A G (group_carrier A (subgroup_generated A G s)) = subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2449 / SUBGROUP_GENERATED_INSERT_ID   (hash md5:9275c173d281b3b86cf647ce595e2b02)
// not bridged: 
Theorem SUBGROUP_GENERATED_INSERT_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_generated A G (SetAdjoin s (group_id A G)) = subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2459 / GROUP_CARRIER_SUBGROUP_GENERATED_MONO   (hash md5:d783fce2efe5ffff517b2d020ae6c75f)
// not bridged: 
Theorem GROUP_CARRIER_SUBGROUP_GENERATED_MONO : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, group_carrier A (subgroup_generated A (subgroup_generated A G s) t) c= group_carrier A (subgroup_generated A G t).
Admitted.

// HOL Light: Library/grouptheory.ml:2474 / SUBGROUP_GENERATED_IDEMPOT_GEN   (hash md5:4141f0a8e18e8d9ff4dc98177bd7b2f3)
// not bridged: 
Theorem SUBGROUP_GENERATED_IDEMPOT_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, s c= group_carrier A (subgroup_generated A G t) -> subgroup_generated A (subgroup_generated A G t) s = subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2487 / SUBGROUP_GENERATED_IDEMPOT   (hash md5:d58b566b2bcefe067b6559aadb104a29)
// not bridged: 
Theorem SUBGROUP_GENERATED_IDEMPOT : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, s c= t -> subgroup_generated A (subgroup_generated A G t) s = subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2503 / SUBGROUP_GENERATED_BY_SUBGROUP_GENERATED_IDEMPOT   (hash md5:c8cd69fcb09260b5417ae3b8519f6afa)
// not bridged: 
Theorem SUBGROUP_GENERATED_BY_SUBGROUP_GENERATED_IDEMPOT : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, s c= t -> subgroup_generated A (subgroup_generated A G t) (group_carrier A (subgroup_generated A G s)) = subgroup_generated A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:2512 / SUBGROUP_GENERATED_UNION_LEFT   (hash md5:e799c3a621f1b7fa304ef07bab2e6d0f)
// not bridged: 
Theorem SUBGROUP_GENERATED_UNION_LEFT : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, subgroup_generated A G (group_carrier A (subgroup_generated A G s) :\/: t) = subgroup_generated A G (s :\/: t).
Admitted.

// HOL Light: Library/grouptheory.ml:2531 / SUBGROUP_GENERATED_UNION_RIGHT   (hash md5:1fed18add18ba340731ccbd8f32a4030)
// not bridged: 
Theorem SUBGROUP_GENERATED_UNION_RIGHT : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, subgroup_generated A G (s :\/: group_carrier A (subgroup_generated A G t)) = subgroup_generated A G (s :\/: t).
Admitted.

// HOL Light: Library/grouptheory.ml:2538 / SUBGROUP_GENERATED_UNION   (hash md5:09ce0f5c3c49837d83e705cded48ac75)
// not bridged: 
Theorem SUBGROUP_GENERATED_UNION : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, subgroup_generated A G (group_carrier A (subgroup_generated A G s) :\/: group_carrier A (subgroup_generated A G t)) = subgroup_generated A G (s :\/: t).
Admitted.

// HOL Light: Library/grouptheory.ml:2546 / TRIVIAL_GROUP_SUBGROUP_GENERATED_EMPTY   (hash md5:002c1ded8da50ddee5d8173b1fa72372)
// not bridged: 
Theorem TRIVIAL_GROUP_SUBGROUP_GENERATED_EMPTY : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A (subgroup_generated A G Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:2550 / SUBGROUP_OF_COMMUTING_ELEMENTS   (hash md5:fc50735aa82e8d9da1d5f8fd581256cb)
// not bridged: 
Theorem SUBGROUP_OF_COMMUTING_ELEMENTS : forall A:set, forall G :e group_hl A, forall z :e A, z :e group_carrier A G -> subgroup_of A {x :e A | x :e group_carrier A G /\ group_mul A G x z = group_mul A G z x} G.
Admitted.

// HOL Light: Library/grouptheory.ml:2559 / GROUP_COMMUTES_SUBGROUP_GENERATED_EQ   (hash md5:01e28820e15abd71f5c51406b0e42835)
// not bridged: 
Theorem GROUP_COMMUTES_SUBGROUP_GENERATED_EQ : forall A:set, forall G :e group_hl A, forall s c= A, forall z :e A, z :e group_carrier A G -> ((forall x :e A, x :e group_carrier A (subgroup_generated A G s) -> group_mul A G x z = group_mul A G z x) <-> forall x :e A, x :e group_carrier A G /\ x :e s -> group_mul A G x z = group_mul A G z x).
Admitted.

// HOL Light: Library/grouptheory.ml:2575 / GROUP_COMMUTES_SUBGROUP_GENERATED   (hash md5:e434d7c3eea297799b83352084dc231c)
// not bridged: 
Theorem GROUP_COMMUTES_SUBGROUP_GENERATED : forall A:set, forall G :e group_hl A, forall s c= A, forall z :e A, (forall x :e A, x :e s -> group_mul A G x z = group_mul A G z x) /\ z :e group_carrier A G -> forall x :e A, x :e group_carrier A (subgroup_generated A G s) -> group_mul A G x z = group_mul A G z x.
Admitted.

// HOL Light: Library/grouptheory.ml:2583 / GROUP_COMMUTES_SUBGROUPS_GENERATED_EQ   (hash md5:02460e7cb5df0393e8da5fd5f27d2106)
// not bridged: 
Theorem GROUP_COMMUTES_SUBGROUPS_GENERATED_EQ : forall A:set, forall G :e group_hl A, forall s t c= A, (forall x y :e A, x :e group_carrier A (subgroup_generated A G s) /\ y :e group_carrier A (subgroup_generated A G t) -> group_mul A G x y = group_mul A G y x) <-> forall x y :e A, x :e group_carrier A G /\ (x :e s /\ (y :e group_carrier A G /\ y :e t)) -> group_mul A G x y = group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:2604 / ABELIAN_GROUP_SUBGROUP_GENERATED_GEN   (hash md5:18f77a114d2482710db73c44f53ae5b8)
// not bridged: 
Theorem ABELIAN_GROUP_SUBGROUP_GENERATED_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, (forall x y :e A, x :e group_carrier A G /\ (x :e s /\ (y :e group_carrier A G /\ y :e s)) -> group_mul A G x y = group_mul A G y x) -> abelian_group_hl A (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:2617 / prod_group   (hash md5:f9c77f1cd70f8581aca2505d55f9f5c3)
// not bridged: 
Theorem prod_group_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, prod_group A B G G' = (group_carrier A G :*: group_carrier B G',((group_id A G,group_id B G'),(fun p :e A :*: B => (group_inv A G (p 0),group_inv B G' (p 1)),fun p :e A :*: B => fun p0 :e A :*: B => (group_mul A G (p 0) (p0 0),group_mul B G' (p 1) (p0 1))))).
Admitted.

// HOL Light: Library/grouptheory.ml:2624 / PROD_GROUP   (hash md5:6e45f20ddbd607b63e0b7b52545e21f2)
// not bridged: 
Theorem PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> (forall G :e group_hl A, forall G' :e group_hl B, group_carrier (A :*: B) (prod_group A B G G') = group_carrier A G :*: group_carrier B G') /\ ((forall G :e group_hl A, forall G' :e group_hl B, group_id (A :*: B) (prod_group A B G G') = (group_id A G,group_id B G')) /\ ((forall G :e group_hl A, forall G' :e group_hl B, forall x :e A :*: B, group_inv (A :*: B) (prod_group A B G G') x = (group_inv A G (x 0),group_inv B G' (x 1))) /\ forall G :e group_hl A, forall G' :e group_hl B, forall x x0 :e A :*: B, group_mul (A :*: B) (prod_group A B G G') x x0 = (group_mul A G (x 0) (x0 0),group_mul B G' (x 1) (x0 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:2646 / GROUP_POW_PROD_GROUP   (hash md5:3134841329f45eb1835379585d4be847)
// not bridged: 
Theorem GROUP_POW_PROD_GROUP : forall A B:set, forall G :e group_hl A, forall H :e group_hl B, forall x :e A, forall y :e B, forall n :e omega, x :e group_carrier A G /\ y :e group_carrier B H -> group_pow (A :*: B) (prod_group A B G H) (x,y) n = (group_pow A G x n,group_pow B H y n).
Admitted.

// HOL Light: Library/grouptheory.ml:2654 / GROUP_ZPOW_PROD_GROUP   (hash md5:e362fd9ff61faa84878f653a6d96260f)
// not bridged: 
Theorem GROUP_ZPOW_PROD_GROUP : forall A B:set, forall G :e group_hl A, forall H :e group_hl B, forall x :e A, forall y :e B, forall n :e int, x :e group_carrier A G /\ y :e group_carrier B H -> group_zpow (A :*: B) (prod_group A B G H) (x,y) n = (group_zpow A G x n,group_zpow B H y n).
Admitted.

// HOL Light: Library/grouptheory.ml:2662 / OPPOSITE_PROD_GROUP   (hash md5:5f670aba83f05d74d2e30072ffb6f57c)
// not bridged: 
Theorem OPPOSITE_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, opposite_group (A :*: B) (prod_group A B G1 G2) = prod_group A B (opposite_group A G1) (opposite_group B G2).
Admitted.

// HOL Light: Library/grouptheory.ml:2669 / TRIVIAL_PROD_GROUP   (hash md5:3e42961736ec7477c407e2f906b37942)
// not bridged: 
Theorem TRIVIAL_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, trivial_group (A :*: B) (prod_group A B G H) <-> trivial_group A G /\ trivial_group B H.
Admitted.

// HOL Light: Library/grouptheory.ml:2676 / FINITE_PROD_GROUP   (hash md5:58fd6174f6ae70bff0138cf2431c1585)
// not bridged: 
Theorem FINITE_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, finite (group_carrier (A :*: B) (prod_group A B G H)) <-> finite (group_carrier A G) /\ finite (group_carrier B H).
Admitted.

// HOL Light: Library/grouptheory.ml:2682 / ABELIAN_PROD_GROUP   (hash md5:868ad91c1980cd12637997cefed1b743)
// not bridged: 
Theorem ABELIAN_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, abelian_group_hl (A :*: B) (prod_group A B G H) <-> abelian_group_hl A G /\ abelian_group_hl B H.
Admitted.

// HOL Light: Library/grouptheory.ml:2691 / CROSS_SUBGROUP_OF_PROD_GROUP   (hash md5:637c9ca5e9b47f197282c4931acd5537)
// not bridged: 
Theorem CROSS_SUBGROUP_OF_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall h1 c= A, forall h2 c= B, subgroup_of (A :*: B) (h1 :*: h2) (prod_group A B G1 G2) <-> subgroup_of A h1 G1 /\ subgroup_of B h2 G2.
Admitted.

// HOL Light: Library/grouptheory.ml:2699 / PROD_GROUP_SUBGROUP_GENERATED   (hash md5:3cf0a13b6c5ab2ed4ff485d5774e04ed)
// not bridged: 
Theorem PROD_GROUP_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall h1 c= A, forall h2 c= B, subgroup_of A h1 G1 /\ subgroup_of B h2 G2 -> prod_group A B (subgroup_generated A G1 h1) (subgroup_generated B G2 h2) = subgroup_generated (A :*: B) (prod_group A B G1 G2) (h1 :*: h2).
Admitted.

// HOL Light: Library/grouptheory.ml:2708 / product_group   (hash md5:5a6ab471af52632c66c93d6ab27ab3c3)
// not bridged: 
Theorem product_group_thm : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> product_group A K k G = ({f :e A :^: K | (forall i :e k, f i :e {x0 :e A | x0 :e group_carrier A (G i)}) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)},(fun x :e K => if x :e k then group_id A (G x) else choose_in A (fun y:set => False),(fun x :e A :^: K => fun x0 :e K => if x0 :e k then group_inv A (G x0) (x x0) else choose_in A (fun y:set => False),fun x :e A :^: K => fun y :e A :^: K => fun x0 :e K => if x0 :e k then group_mul A (G x0) (x x0) (y x0) else choose_in A (fun y0:set => False)))).
Admitted.

// HOL Light: Library/grouptheory.ml:2715 / PRODUCT_GROUP   (hash md5:8b03aeac91e07e372034b420034915d9)
// not bridged: 
Theorem PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> (forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> group_carrier (A :^: K) (product_group A K k G) = {f :e A :^: K | (forall i :e k, f i :e {x0 :e A | x0 :e group_carrier A (G i)}) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)}) /\ ((forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall x :e K, group_id (A :^: K) (product_group A K k G) x = if x :e k then group_id A (G x) else choose_in A (fun y:set => False)) /\ ((forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall x :e A :^: K, forall x0 :e K, group_inv (A :^: K) (product_group A K k G) x x0 = if x0 :e k then group_inv A (G x0) (x x0) else choose_in A (fun y:set => False)) /\ forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall x y :e A :^: K, forall x0 :e K, group_mul (A :^: K) (product_group A K k G) x y x0 = if x0 :e k then group_mul A (G x0) (x x0) (y x0) else choose_in A (fun y0:set => False))).
Admitted.

// HOL Light: Library/grouptheory.ml:2741 / GROUP_POW_PRODUCT_GROUP   (hash md5:a079cb989c5675e4b11877cfe839f404)
// not bridged: 
Theorem GROUP_POW_PRODUCT_GROUP : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall x :e A :^: K, forall n :e omega, forall x0 :e K, group_pow (A :^: K) (product_group A K k G) x n x0 = if x0 :e k then group_pow A (G x0) (x x0) n else choose_in A (fun y:set => False).
Admitted.

// HOL Light: Library/grouptheory.ml:2749 / GROUP_ZPOW_PRODUCT_GROUP   (hash md5:1a93234cd50e8da89e8c4450d7905199)
// not bridged: 
Theorem GROUP_ZPOW_PRODUCT_GROUP : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall x :e A :^: K, forall n :e int, forall x0 :e K, group_zpow (A :^: K) (product_group A K k G) x n x0 = if x0 :e k then group_zpow A (G x0) (x x0) n else choose_in A (fun y:set => False).
Admitted.

// HOL Light: Library/grouptheory.ml:2757 / OPPOSITE_PRODUCT_GROUP   (hash md5:c98dfdb415c7b982e82b92fb7f1ea824)
// not bridged: 
Theorem OPPOSITE_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, opposite_group (A :^: K) (product_group A K k G) = product_group A K k (fun i:set => opposite_group A (G i)).
Admitted.

// HOL Light: Library/grouptheory.ml:2764 / GROUP_PRODUCT_INJECTION   (hash md5:3c411aa40d94f5a02bd9ff013aa60d44)
// not bridged: 
Theorem GROUP_PRODUCT_INJECTION : forall A K:set, forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall a :e A, forall i :e K, (fun x :e K => if x :e k then if x = i then a else group_id A (G x) else choose_in A (fun y:set => False)) :e group_carrier (A :^: K) (product_group A K k G) <-> i :e k -> a :e group_carrier A (G i).
Admitted.

// HOL Light: Library/grouptheory.ml:2772 / TRIVIAL_PRODUCT_GROUP   (hash md5:12f206fd267a302b98306127fc3ad87f)
// not bridged: 
Theorem TRIVIAL_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (trivial_group (A :^: K) (product_group A K k G) <-> forall i :e K, i :e k -> trivial_group A (G i)).
Admitted.

// HOL Light: Library/grouptheory.ml:2781 / CARTESIAN_PRODUCT_SUBGROUP_OF_PRODUCT_GROUP   (hash md5:66192b552454729aa53fd2896713cdd3)
// not bridged: 
Theorem CARTESIAN_PRODUCT_SUBGROUP_OF_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall h :e Power A :^: K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (subgroup_of (A :^: K) {f :e A :^: K | (forall i :e k, f i :e h i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} (product_group A K k G) <-> forall i :e K, i :e k -> subgroup_of A (h i) (G i)).
Admitted.

// HOL Light: Library/grouptheory.ml:2796 / PRODUCT_GROUP_SUBGROUP_GENERATED   (hash md5:10dbcb73e0f1dd25742333d26118a312)
// not bridged: 
Theorem PRODUCT_GROUP_SUBGROUP_GENERATED : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall h :e Power A :^: K, (forall i :e K, i :e k -> subgroup_of A (h i) (G i)) -> product_group A K k (fun i:set => subgroup_generated A (G i) (h i)) = subgroup_generated (A :^: K) (product_group A K k G) {f :e A :^: K | (forall i :e k, f i :e h i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)}.
Admitted.

// HOL Light: Library/grouptheory.ml:2808 / FINITE_PRODUCT_GROUP   (hash md5:97d1b56a608bd48d79694c69b1099ad0)
// not bridged: 
Theorem FINITE_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (finite (group_carrier (A :^: K) (product_group A K k G)) <-> finite {i :e K | i :e k /\ ~ trivial_group A (G i)} /\ forall i :e K, i :e k -> finite (group_carrier A (G i))).
Admitted.

// HOL Light: Library/grouptheory.ml:2817 / ABELIAN_PRODUCT_GROUP   (hash md5:28c82e7684d2f691bed24cdf548fab96)
// not bridged: 
Theorem ABELIAN_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (abelian_group_hl (A :^: K) (product_group A K k G) <-> forall i :e K, i :e k -> abelian_group_hl A (G i)).
Admitted.

// HOL Light: Library/grouptheory.ml:2834 / sum_group   (hash md5:7ceb44aecfcd1ec4fa1786450c1b576b)
// not bridged: 
Theorem sum_group_thm : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> sum_group A K k G = subgroup_generated (A :^: K) (product_group A K k G) {x :e A :^: K | x :e {f :e A :^: K | (forall i :e k, f i :e {x1 :e A | x1 :e group_carrier A (G i)}) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} /\ finite {i :e K | i :e k /\ ~ x i = group_id A (G i)}}.
Admitted.

// HOL Light: Library/grouptheory.ml:2841 / SUM_GROUP_ALT   (hash md5:49506b6c91442bc923fd3dda53526e69)
// not bridged: 
Theorem SUM_GROUP_ALT : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> sum_group A K k G = subgroup_generated (A :^: K) (product_group A K k G) {x :e A :^: K | finite {i :e K | i :e k /\ ~ x i = group_id A (G i)}}.
Admitted.

// HOL Light: Library/grouptheory.ml:2850 / SUM_GROUP_EQ_PRODUCT_GROUP   (hash md5:38bfc5a9e2aa93585a8cbe6ca482b685)
// not bridged: 
Theorem SUM_GROUP_EQ_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> finite k -> sum_group A K k G = product_group A K k G.
Admitted.

// HOL Light: Library/grouptheory.ml:2856 / SUBGROUP_SUM_GROUP   (hash md5:532246afa42c55fc4d980fbde21c1f86)
// not bridged: 
Theorem SUBGROUP_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> subgroup_of (A :^: K) {x :e A :^: K | x :e {f :e A :^: K | (forall i :e k, f i :e {x1 :e A | x1 :e group_carrier A (G i)}) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} /\ finite {i :e K | i :e k /\ ~ x i = group_id A (G i)}} (product_group A K k G).
Admitted.

// HOL Light: Library/grouptheory.ml:2875 / SUM_GROUP_CLAUSES   (hash md5:c18d9f98c223318f60693a49095ea2a4)
// not bridged: 
Theorem SUM_GROUP_CLAUSES : forall A K:set, A <> Empty -> K <> Empty -> (forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> group_carrier (A :^: K) (sum_group A K k G) = {x :e A :^: K | x :e {f :e A :^: K | (forall i :e k, f i :e {x1 :e A | x1 :e group_carrier A (G i)}) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} /\ finite {i :e K | i :e k /\ ~ x i = group_id A (G i)}}) /\ ((forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall x :e K, group_id (A :^: K) (sum_group A K k G) x = if x :e k then group_id A (G x) else choose_in A (fun y:set => False)) /\ ((forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall x :e A :^: K, forall x0 :e K, group_inv (A :^: K) (sum_group A K k G) x x0 = if x0 :e k then group_inv A (G x0) (x x0) else choose_in A (fun y:set => False)) /\ forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall x y :e A :^: K, forall x0 :e K, group_mul (A :^: K) (sum_group A K k G) x y x0 = if x0 :e k then group_mul A (G x0) (x x0) (y x0) else choose_in A (fun y0:set => False))).
Admitted.

// HOL Light: Library/grouptheory.ml:2893 / GROUP_POW_SUM_GROUP   (hash md5:2b11a7217997f96dab4f1fbf95caa0c7)
// not bridged: 
Theorem GROUP_POW_SUM_GROUP : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall x :e A :^: K, forall n :e omega, forall x0 :e K, group_pow (A :^: K) (sum_group A K k G) x n x0 = if x0 :e k then group_pow A (G x0) (x x0) n else choose_in A (fun y:set => False).
Admitted.

// HOL Light: Library/grouptheory.ml:2900 / GROUP_ZPOW_SUM_GROUP   (hash md5:91f562d954759bf101f4aba506ef0e1f)
// not bridged: 
Theorem GROUP_ZPOW_SUM_GROUP : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall x :e A :^: K, forall n :e int, forall x0 :e K, group_zpow (A :^: K) (sum_group A K k G) x n x0 = if x0 :e k then group_zpow A (G x0) (x x0) n else choose_in A (fun y:set => False).
Admitted.

// HOL Light: Library/grouptheory.ml:2907 / GROUP_SUM_INJECTION   (hash md5:ce9931e20dad69aa1c74126ca4616c91)
// not bridged: 
Theorem GROUP_SUM_INJECTION : forall A K:set, forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall a :e A, forall i :e K, (fun x :e K => if x :e k then if x = i then a else group_id A (G x) else choose_in A (fun y:set => False)) :e group_carrier (A :^: K) (sum_group A K k G) <-> i :e k -> a :e group_carrier A (G i).
Admitted.

// HOL Light: Library/grouptheory.ml:2920 / TRIVIAL_SUM_GROUP   (hash md5:d2669f4cb056b1ed3753831ee8be9db1)
// not bridged: 
Theorem TRIVIAL_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (trivial_group (A :^: K) (sum_group A K k G) <-> forall i :e K, i :e k -> trivial_group A (G i)).
Admitted.

// HOL Light: Library/grouptheory.ml:2945 / CARTESIAN_PRODUCT_SUBGROUP_OF_SUM_GROUP   (hash md5:a0865121708a1b4e96c7b95d29b3b2a6)
// not bridged: 
Theorem CARTESIAN_PRODUCT_SUBGROUP_OF_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall h :e Power A :^: K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (subgroup_of (A :^: K) {f :e A :^: K | (forall i :e k, f i :e h i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} (sum_group A K k G) <-> (forall i :e K, i :e k -> subgroup_of A (h i) (G i)) /\ forall z :e A :^: K, z :e {f :e A :^: K | (forall i :e k, f i :e h i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} -> finite {i :e K | i :e k /\ ~ z i = group_id A (G i)}).
Admitted.

// HOL Light: Library/grouptheory.ml:2963 / SUM_GROUP_SUBGROUP_GENERATED   (hash md5:24b58a475584a7dab0e2803c655333f9)
// not bridged: 
Theorem SUM_GROUP_SUBGROUP_GENERATED : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall h :e Power A :^: K, (forall i :e K, i :e k -> subgroup_of A (h i) (G i)) -> sum_group A K k (fun i:set => subgroup_generated A (G i) (h i)) = subgroup_generated (A :^: K) (sum_group A K k G) {f :e A :^: K | (forall i :e k, f i :e h i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)}.
Admitted.

// HOL Light: Library/grouptheory.ml:2991 / ABELIAN_SUM_GROUP   (hash md5:fc91bbcf81ab7ff50c7be9083cfe33d4)
// not bridged: 
Theorem ABELIAN_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (abelian_group_hl (A :^: K) (sum_group A K k G) <-> forall i :e K, i :e k -> abelian_group_hl A (G i)).
Admitted.

// HOL Light: Library/grouptheory.ml:3011 / group_homomorphism   (hash md5:23b78f503f4dc1b28bdf14a29513a436)
// not bridged: 
Theorem group_homomorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_homomorphism_hl A B (G,G') f <-> {f x | x :e group_carrier A G} c= group_carrier B G' /\ (f (group_id A G) = group_id B G' /\ ((forall x :e A, x :e group_carrier A G -> f (group_inv A G x) = group_inv B G' (f x)) /\ forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> f (group_mul A G x y) = group_mul B G' (f x) (f y)))).
Admitted.

// HOL Light: Library/grouptheory.ml:3020 / group_monomorphism   (hash md5:7ead6d5dd5cb8788d85c8c9f3ed3bb11)
// not bridged: 
Theorem group_monomorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G' :e group_hl B, forall G :e group_hl A, forall f:set -> set, (forall x :e A, f x :e B) -> (group_monomorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ f x = f y) -> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:3026 / group_epimorphism   (hash md5:1844581349df6f4dad102ba518614b85)
// not bridged: 
Theorem group_epimorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall G' :e group_hl B, group_epimorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ {f x | x :e group_carrier A G} = group_carrier B G'.
Admitted.

// HOL Light: Library/grouptheory.ml:3031 / group_endomorphism   (hash md5:cc1653539206af2c4d881ce021b7803b)
// not bridged: 
Theorem group_endomorphism_thm : forall A:set, A <> Empty -> forall G :e group_hl A, forall f:set -> set, (forall x :e A, f x :e A) -> (group_endomorphism A G f <-> group_homomorphism_hl A A (G,G) f).
Admitted.

// HOL Light: Library/grouptheory.ml:3034 / group_isomorphisms   (hash md5:3e18c663fc29577d3e65ce33c1152395)
// not bridged: 
Theorem group_isomorphisms_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f :e B :^: A, forall g :e A :^: B, group_isomorphisms A B (G,G') (f,g) <-> group_homomorphism_hl A B (G,G') (fun x:set => f x) /\ (group_homomorphism_hl B A (G',G) (fun x:set => g x) /\ ((forall x :e A, x :e group_carrier A G -> g (f x) = x) /\ forall y :e B, y :e group_carrier B G' -> f (g y) = y)).
Admitted.

// HOL Light: Library/grouptheory.ml:3041 / group_isomorphism   (hash md5:22bd9d440207778848516dad942e625e)
// not bridged: 
Theorem group_isomorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f :e B :^: A, group_isomorphism_hl A B (G,G') (fun x:set => f x) <-> exists g :e A :^: B, group_isomorphisms A B (G,G') (f,g).
Admitted.

// HOL Light: Library/grouptheory.ml:3044 / group_automorphism   (hash md5:b38cc07163547ce48377780ad2266ee4)
// not bridged: 
Theorem group_automorphism_thm : forall A:set, A <> Empty -> forall G :e group_hl A, forall f:set -> set, (forall x :e A, f x :e A) -> (group_automorphism_hl A G f <-> group_isomorphism_hl A A (G,G) f).
Admitted.

// HOL Light: Library/grouptheory.ml:3047 / GROUP_HOMOMORPHISM_EQ   (hash md5:63bef0edc0d3ea648d1bc5950cec0383)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall f':set -> set, (forall x :e A, f' x :e B) -> group_homomorphism_hl A B (G,H) f /\ (forall x :e A, x :e group_carrier A G -> f' x = f x) -> group_homomorphism_hl A B (G,H) f'.
Admitted.

// HOL Light: Library/grouptheory.ml:3055 / GROUP_MONOMORPHISM_EQ   (hash md5:66a8a4e817a74d2206dcd22b8cd98ef2)
// not bridged: 
Theorem GROUP_MONOMORPHISM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall f':set -> set, (forall x :e A, f' x :e B) -> group_monomorphism A B (G,H) f /\ (forall x :e A, x :e group_carrier A G -> f' x = f x) -> group_monomorphism A B (G,H) f'.
Admitted.

// HOL Light: Library/grouptheory.ml:3064 / GROUP_EPIMORPHISM_EQ   (hash md5:417bbf3cb1a8a1d42272c5ef535de8bc)
// not bridged: 
Theorem GROUP_EPIMORPHISM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall f':set -> set, (forall x :e A, f' x :e B) -> group_epimorphism A B (G,H) f /\ (forall x :e A, x :e group_carrier A G -> f' x = f x) -> group_epimorphism A B (G,H) f'.
Admitted.

// HOL Light: Library/grouptheory.ml:3073 / GROUP_ENDOMORPHISM_EQ   (hash md5:b65d877ec089155b5653cdf8052e1f0f)
// not bridged: 
Theorem GROUP_ENDOMORPHISM_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall f:set -> set, (forall x :e A, f x :e A) -> forall f':set -> set, (forall x :e A, f' x :e A) -> group_endomorphism A G f /\ (forall x :e A, x :e group_carrier A G -> f' x = f x) -> group_endomorphism A G f'.
Admitted.

// HOL Light: Library/grouptheory.ml:3080 / GROUP_ISOMORPHISMS_EQ   (hash md5:dbaf5f5861b294c88ff37405ee89f2a9)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f' :e B :^: A, forall g' :e A :^: B, forall G :e group_hl A, forall H :e group_hl B, forall f :e B :^: A, forall g :e A :^: B, group_isomorphisms A B (G,H) (f,g) /\ ((forall x :e A, x :e group_carrier A G -> f' x = f x) /\ (forall y :e B, y :e group_carrier B H -> g' y = g y)) -> group_isomorphisms A B (G,H) (f',g').
Admitted.

// HOL Light: Library/grouptheory.ml:3090 / GROUP_ISOMORPHISM_EQ   (hash md5:52d4b2244c1c5eec8f306ffd7869f3e3)
// not bridged: 
Theorem GROUP_ISOMORPHISM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall f':set -> set, (forall x :e A, f' x :e B) -> group_isomorphism_hl A B (G,H) f /\ (forall x :e A, x :e group_carrier A G -> f' x = f x) -> group_isomorphism_hl A B (G,H) f'.
Admitted.

// HOL Light: Library/grouptheory.ml:3099 / GROUP_AUTOMORPHISM_EQ   (hash md5:243db79509f64a31af9f33ecbb567a39)
// not bridged: 
Theorem GROUP_AUTOMORPHISM_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall f:set -> set, (forall x :e A, f x :e A) -> forall f':set -> set, (forall x :e A, f' x :e A) -> group_automorphism_hl A G f /\ (forall x :e A, x :e group_carrier A G -> f' x = f x) -> group_automorphism_hl A G f'.
Admitted.

// HOL Light: Library/grouptheory.ml:3106 / GROUP_HOMOMORPHISMS_EQ_ON_GENERATORS   (hash md5:47d68480a10c0d3b25bc4ffacda30d09)
// not bridged: 
Theorem GROUP_HOMOMORPHISMS_EQ_ON_GENERATORS : forall A B:set, B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall s c= A, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> group_homomorphism_hl A B (G,H) f /\ (group_homomorphism_hl A B (G,H) g /\ (forall x :e A, x :e group_carrier A G /\ x :e s -> f x = g x)) -> forall x :e A, x :e group_carrier A (subgroup_generated A G s) -> f x = g x.
Admitted.

// HOL Light: Library/grouptheory.ml:3117 / GROUP_ISOMORPHISMS_SYM   (hash md5:c54898a49e6fdc0fcbbec3f51865bb45)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f :e B :^: A, forall g :e A :^: B, group_isomorphisms A B (G,G') (f,g) <-> group_isomorphisms B A (G',G) (g,f).
Admitted.

// HOL Light: Library/grouptheory.ml:3122 / GROUP_ISOMORPHISMS_IMP_ISOMORPHISM   (hash md5:d2342e9e35f84875b5e29107a4ba07f3)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_IMP_ISOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e A :^: B, forall G :e group_hl A, forall G' :e group_hl B, group_isomorphisms A B (G,G') (f,g) -> group_isomorphism_hl A B (G,G') (fun x:set => f x).
Admitted.

// HOL Light: Library/grouptheory.ml:3127 / GROUP_ISOMORPHISMS_IMP_ISOMORPHISM_ALT   (hash md5:77b011fdcc8e34dc3e2f9d8e9f64b1fd)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_IMP_ISOMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e A :^: B, forall G :e group_hl A, forall G' :e group_hl B, group_isomorphisms A B (G,G') (f,g) -> group_isomorphism_hl B A (G',G) (fun x:set => g x).
Admitted.

// HOL Light: Library/grouptheory.ml:3132 / GROUP_HOMOMORPHISM   (hash md5:852636abb1b4a077cac7b75be589d3fc)
// not bridged: 
Theorem GROUP_HOMOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_homomorphism_hl A B (G,G') f <-> {f x | x :e group_carrier A G} c= group_carrier B G' /\ forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> f (group_mul A G x y) = group_mul B G' (f x) (f y)).
Admitted.

// HOL Light: Library/grouptheory.ml:3151 / GROUP_EPIMORPHISM_SUBSET   (hash md5:1d36454d6e93bbb99ddd3d242693e262)
// not bridged: 
Theorem GROUP_EPIMORPHISM_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_epimorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ group_carrier B G' c= {f x | x :e group_carrier A G}).
Admitted.

// HOL Light: Library/grouptheory.ml:3159 / GROUP_ISOMORPHISMS   (hash md5:4577b211672893aa26f1b2166f3f2f2c)
// not bridged: 
Theorem GROUP_ISOMORPHISMS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f :e B :^: A, forall g :e A :^: B, group_isomorphisms A B (G,H) (f,g) <-> group_homomorphism_hl A B (G,H) (fun x:set => f x) /\ ((forall x :e A, x :e group_carrier A G -> g (f x) = x) /\ forall y :e B, y :e group_carrier B H -> g y :e group_carrier A G /\ f (g y) = y).
Admitted.

// HOL Light: Library/grouptheory.ml:3170 / GROUP_HOMOMORPHISM_OF_ID   (hash md5:b057f3dd2c280c8e99866fbafe1b62d8)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_OF_ID : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall G' :e group_hl B, group_homomorphism_hl A B (G,G') f -> f (group_id A G) = group_id B G'.
Admitted.

// HOL Light: Library/grouptheory.ml:3175 / GROUP_HOMOMORPHISM_INV   (hash md5:eea477b92eaa61c61d93ed9cf8f79937)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_INV : forall A B:set, B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> forall x :e A, x :e group_carrier A G -> f (group_inv A G x) = group_inv B G' (f x).
Admitted.

// HOL Light: Library/grouptheory.ml:3182 / GROUP_HOMOMORPHISM_MUL   (hash md5:3d8682432eb1440c06591b69ce8e405a)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_MUL : forall A B:set, B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> f (group_mul A G x y) = group_mul B G' (f x) (f y).
Admitted.

// HOL Light: Library/grouptheory.ml:3189 / GROUP_HOMOMORPHISM_DIV   (hash md5:2a3f56fe02e91e578f8643db7803167e)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_DIV : forall A B:set, B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> f (group_div A G x y) = group_div B G' (f x) (f y).
Admitted.

// HOL Light: Library/grouptheory.ml:3197 / GROUP_HOMOMORPHISM_POW   (hash md5:7793a351c48d2fe5663c4690bc1b3228)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_POW : forall A B:set, B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> forall x :e A, forall n :e omega, x :e group_carrier A G -> f (group_pow A G x n) = group_pow B G' (f x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:3206 / GROUP_HOMOMORPHISM_ZPOW   (hash md5:0c7d1e5c7cadb59f59ca603505a1f288)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_ZPOW : forall A B:set, B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> forall x :e A, forall n :e int, x :e group_carrier A G -> f (group_zpow A G x n) = group_zpow B G' (f x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:3215 / GROUP_HOMOMORPHISM_TRIVIAL   (hash md5:7d4b4f0ad96a6d02ea19feee6256b927)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl B, forall H :e group_hl A, group_homomorphism_hl B A (G,H) (fun x:set => group_id A H).
Admitted.

// HOL Light: Library/grouptheory.ml:3220 / GROUP_HOMOMORPHISM_ID   (hash md5:83244bb352ed7c3dfbef75e6d8c9891b)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_ID : forall A:set, A <> Empty -> forall G :e group_hl A, group_homomorphism_hl A A (G,G) (fun x:set => x).
Admitted.

// HOL Light: Library/grouptheory.ml:3224 / GROUP_MONOMORPHISM_ID   (hash md5:752a2b4e746d0a3d430a0d2147e0f1b1)
// not bridged: 
Theorem GROUP_MONOMORPHISM_ID : forall A:set, A <> Empty -> forall G :e group_hl A, group_monomorphism A A (G,G) (fun x:set => x).
Admitted.

// HOL Light: Library/grouptheory.ml:3228 / GROUP_EPIMORPHISM_ID   (hash md5:c0f73d2588fc518e86d702f6b9bcd1ed)
// not bridged: 
Theorem GROUP_EPIMORPHISM_ID : forall A:set, A <> Empty -> forall G :e group_hl A, group_epimorphism A A (G,G) (fun x:set => x).
Admitted.

// HOL Light: Library/grouptheory.ml:3232 / GROUP_ISOMORPHISMS_ID   (hash md5:8d7c9804beb165cc80564cd2587774aa)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_ID : forall A:set, A <> Empty -> forall G :e group_hl A, group_isomorphisms A A (G,G) (fun x :e A => x,fun x :e A => x).
Admitted.

// HOL Light: Library/grouptheory.ml:3236 / GROUP_ISOMORPHISM_ID   (hash md5:7b434b4601c5e541a06aabfcfec5ed47)
// not bridged: 
Theorem GROUP_ISOMORPHISM_ID : forall A:set, A <> Empty -> forall G :e group_hl A, group_isomorphism_hl A A (G,G) (fun x:set => x).
Admitted.

// HOL Light: Library/grouptheory.ml:3240 / GROUP_HOMOMORPHISM_COMPOSE   (hash md5:f94e4508df9db2e54d3d258d1595ff4f)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall G3 :e group_hl C, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> group_homomorphism_hl A B (G1,G2) f /\ group_homomorphism_hl B C (G2,G3) g -> group_homomorphism_hl A C (G1,G3) (fun x:set => g (f x)).
Admitted.

// HOL Light: Library/grouptheory.ml:3246 / GROUP_MONOMORPHISM_COMPOSE   (hash md5:ffceaef21ed13a2f3957739bb0c3d81c)
// not bridged: 
Theorem GROUP_MONOMORPHISM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall G3 :e group_hl C, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> group_monomorphism A B (G1,G2) f /\ group_monomorphism B C (G2,G3) g -> group_monomorphism A C (G1,G3) (fun x:set => g (f x)).
Admitted.

// HOL Light: Library/grouptheory.ml:3253 / GROUP_MONOMORPHISM_COMPOSE_REV   (hash md5:94acb70a55ffcf7ea068742840e11e7f)
// not bridged: 
Theorem GROUP_MONOMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_homomorphism_hl A B (A0,B0) f /\ (group_homomorphism_hl B C (B0,C0) g /\ group_monomorphism A C (A0,C0) (fun x:set => g (f x))) -> group_monomorphism A B (A0,B0) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3260 / GROUP_EPIMORPHISM_COMPOSE   (hash md5:9c5596f0bd77af6f61d5f50a13a3b1bf)
// not bridged: 
Theorem GROUP_EPIMORPHISM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall G3 :e group_hl C, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> group_epimorphism A B (G1,G2) f /\ group_epimorphism B C (G2,G3) g -> group_epimorphism A C (G1,G3) (fun x:set => g (f x)).
Admitted.

// HOL Light: Library/grouptheory.ml:3267 / GROUP_EPIMORPHISM_COMPOSE_REV   (hash md5:54c3d41a43e9d23e862e188ecad21850)
// not bridged: 
Theorem GROUP_EPIMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_homomorphism_hl A B (A0,B0) f /\ (group_homomorphism_hl B C (B0,C0) g /\ group_epimorphism A C (A0,C0) (fun x:set => g (f x))) -> group_epimorphism B C (B0,C0) g.
Admitted.

// HOL Light: Library/grouptheory.ml:3275 / GROUP_MONOMORPHISM_LEFT_INVERTIBLE   (hash md5:126eab4d4dea4b347368b65753b9b723)
// not bridged: 
Theorem GROUP_MONOMORPHISM_LEFT_INVERTIBLE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e A) -> group_homomorphism_hl A B (G,H) f /\ (forall x :e A, x :e group_carrier A G -> g (f x) = x) -> group_monomorphism A B (G,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3283 / GROUP_EPIMORPHISM_RIGHT_INVERTIBLE   (hash md5:c256def24757294beb0f6082db27f228)
// not bridged: 
Theorem GROUP_EPIMORPHISM_RIGHT_INVERTIBLE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e A) -> group_homomorphism_hl A B (G,H) f /\ (group_homomorphism_hl B A (H,G) g /\ (forall x :e A, x :e group_carrier A G -> g (f x) = x)) -> group_epimorphism B A (H,G) g.
Admitted.

// HOL Light: Library/grouptheory.ml:3292 / GROUP_HOMOMORPHISM_INTO_SUBGROUP   (hash md5:b7dc42fcc6627150a161c73c8dcbde72)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_INTO_SUBGROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall h c= B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f /\ {f x | x :e group_carrier A G} c= h -> group_homomorphism_hl A B (G,subgroup_generated B G' h) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3299 / GROUP_HOMOMORPHISM_INTO_SUBGROUP_EQ_GEN   (hash md5:0d39f3cd495d87029920e4db7892e9e3)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_INTO_SUBGROUP_EQ_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, forall s c= B, group_homomorphism_hl A B (G,subgroup_generated B H s) f <-> group_homomorphism_hl A B (G,H) f /\ {f x | x :e group_carrier A G} c= group_carrier B (subgroup_generated B H s).
Admitted.

// HOL Light: Library/grouptheory.ml:3309 / GROUP_HOMOMORPHISM_INTO_SUBGROUP_EQ   (hash md5:8389a780d6e8791e0e45aa3a7a0bfe95)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_INTO_SUBGROUP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall h c= B, forall f:set -> set, (forall x :e A, f x :e B) -> subgroup_of B h G' -> (group_homomorphism_hl A B (G,subgroup_generated B G' h) f <-> group_homomorphism_hl A B (G,G') f /\ {f x | x :e group_carrier A G} c= h).
Admitted.

// HOL Light: Library/grouptheory.ml:3318 / GROUP_HOMOMORPHISM_FROM_SUBGROUP_GENERATED   (hash md5:52b5eff9d29c3e4461f92551c45cc758)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_FROM_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, forall s c= A, group_homomorphism_hl A B (G,H) f -> group_homomorphism_hl A B (subgroup_generated A G s,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3327 / GROUP_HOMOMORPHISM_BETWEEN_SUBGROUPS   (hash md5:134583022a53a8d552d5c141bb4e3d5f)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall g c= A, forall h c= B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f /\ {f x | x :e g} c= h -> group_homomorphism_hl A B (subgroup_generated A G g,subgroup_generated B H h) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3349 / GROUP_HOMOMORPHISM_BETWEEN_SUBGROUPS_ALT   (hash md5:3553152d50437bd9ccf8208bc0bcdf04)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_BETWEEN_SUBGROUPS_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall g c= A, forall h c= B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f /\ {f x | x :e group_carrier A G :/\: g} c= h -> group_homomorphism_hl A B (subgroup_generated A G g,subgroup_generated B H h) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3356 / GROUP_MONOMORPHISM_FROM_SUBGROUP_GENERATED   (hash md5:c0f609985d03495ebdd0f9cc70148f50)
// not bridged: 
Theorem GROUP_MONOMORPHISM_FROM_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, forall s c= A, group_monomorphism A B (G,H) f -> group_monomorphism A B (subgroup_generated A G s,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3367 / GROUP_MONOMORPHISM_BETWEEN_SUBGROUPS   (hash md5:88d3888a6a5a00c70b06c7def2ebcb65)
// not bridged: 
Theorem GROUP_MONOMORPHISM_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall s c= A, forall t c= B, forall f:set -> set, (forall x :e A, f x :e B) -> group_monomorphism A B (G,H) f /\ {f x | x :e s} c= t -> group_monomorphism A B (subgroup_generated A G s,subgroup_generated B H t) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3377 / GROUP_MONOMORPHISM_INTO_SUPERGROUP   (hash md5:81ecbac0efe30d385870731ed2adbeab)
// not bridged: 
Theorem GROUP_MONOMORPHISM_INTO_SUPERGROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall t c= B, forall f:set -> set, (forall x :e A, f x :e B) -> group_monomorphism A B (G,subgroup_generated B G' t) f -> group_monomorphism A B (G,G') f.
Admitted.

// HOL Light: Library/grouptheory.ml:3384 / GROUP_HOMOMORPHISM_INCLUSION   (hash md5:973febd23ad6294097768ef02538986c)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_INCLUSION : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_homomorphism_hl A A (subgroup_generated A G s,G) (fun x:set => x).
Admitted.

// HOL Light: Library/grouptheory.ml:3389 / GROUP_MONOMORPHISM_INCLUSION   (hash md5:e393648be622a96299e39dd13d470d6d)
// not bridged: 
Theorem GROUP_MONOMORPHISM_INCLUSION : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_monomorphism A A (subgroup_generated A G s,G) (fun x:set => x).
Admitted.

// HOL Light: Library/grouptheory.ml:3394 / SUBGROUP_GENERATED_BY_HOMOMORPHIC_IMAGE   (hash md5:ad471ea0db0195d6c3f9f91af4576469)
// not bridged: 
Theorem SUBGROUP_GENERATED_BY_HOMOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall s c= A, group_homomorphism_hl A B (G,H) f /\ s c= group_carrier A G -> group_carrier B (subgroup_generated B H {f x | x :e s}) = {f x | x :e group_carrier A (subgroup_generated A G s)}.
Admitted.

// HOL Light: Library/grouptheory.ml:3413 / SUBGROUP_GENERATED_BY_HOMOMORPHIC_IMAGE_EQ   (hash md5:462230a335e96279897254ba529a49b3)
// not bridged: 
Theorem SUBGROUP_GENERATED_BY_HOMOMORPHIC_IMAGE_EQ : forall A B:set, B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall s t c= A, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f /\ (s c= group_carrier A G /\ (t c= group_carrier A G /\ subgroup_generated A G s = subgroup_generated A G t)) -> subgroup_generated B H {f x | x :e s} = subgroup_generated B H {f x | x :e t}.
Admitted.

// HOL Light: Library/grouptheory.ml:3425 / SUBGROUP_GENERATED_BY_EPIMORPHIC_IMAGE   (hash md5:0db8c9cb81ce8349930d1121f68d1dc3)
// not bridged: 
Theorem SUBGROUP_GENERATED_BY_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall s c= A, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f /\ (s c= group_carrier A G /\ subgroup_generated A G s = G) -> subgroup_generated B H {f x | x :e s} = H.
Admitted.

// HOL Light: Library/grouptheory.ml:3434 / GROUP_EPIMORPHISM_BETWEEN_SUBGROUPS   (hash md5:246abb0016dfbe0df0c2a83f16d7aea4)
// not bridged: 
Theorem GROUP_EPIMORPHISM_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall s c= A, forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f /\ s c= group_carrier A G -> group_epimorphism A B (subgroup_generated A G s,subgroup_generated B H {f x | x :e s}) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3443 / GROUP_EPIMORPHISM_INTO_SUBGROUP_EQ_GEN   (hash md5:e2186f1f8aa8e90e67779a3669980428)
// not bridged: 
Theorem GROUP_EPIMORPHISM_INTO_SUBGROUP_EQ_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, forall s c= B, group_epimorphism A B (G,subgroup_generated B H s) f <-> group_homomorphism_hl A B (G,H) f /\ {f x | x :e group_carrier A G} = group_carrier B (subgroup_generated B H s).
Admitted.

// HOL Light: Library/grouptheory.ml:3451 / GROUP_EPIMORPHISM_INTO_SUBGROUP_EQ   (hash md5:8faec75103274dcedaf59af3d3654af8)
// not bridged: 
Theorem GROUP_EPIMORPHISM_INTO_SUBGROUP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall h c= B, forall f:set -> set, (forall x :e A, f x :e B) -> subgroup_of B h G' -> (group_epimorphism A B (G,subgroup_generated B G' h) f <-> group_homomorphism_hl A B (G,G') f /\ {f x | x :e group_carrier A G} = h).
Admitted.

// HOL Light: Library/grouptheory.ml:3460 / GROUP_ISOMORPHISM   (hash md5:57a4c1f248692824768f281685b477fe)
// not bridged: 
Theorem GROUP_ISOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_isomorphism_hl A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ ({f x | x :e group_carrier A G} = group_carrier B G' /\ forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ f x = f y) -> x = y)).
Admitted.

// HOL Light: Library/grouptheory.ml:3478 / GROUP_ISOMORPHISM_SUBSET   (hash md5:e417d488da6cf1c99bba5d18dd5cec41)
// not bridged: 
Theorem GROUP_ISOMORPHISM_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_isomorphism_hl A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ ((forall z :e B, z :e group_carrier B G' -> exists x :e A, x :e group_carrier A G /\ f x = z) /\ forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ f x = f y) -> x = y)).
Admitted.

// HOL Light: Library/grouptheory.ml:3488 / SUBGROUP_OF_HOMOMORPHIC_IMAGE   (hash md5:feedad870dd178bb845969092987bf6d)
// not bridged: 
Theorem SUBGROUP_OF_HOMOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall h c= A, forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f /\ subgroup_of A h G -> subgroup_of B {f x | x :e h} G'.
Admitted.

// HOL Light: Library/grouptheory.ml:3494 / SUBGROUP_OF_HOMOMORPHIC_PREIMAGE   (hash md5:8d6a0ab20b039096050b78b811b1f3b6)
// not bridged: 
Theorem SUBGROUP_OF_HOMOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall h c= B, group_homomorphism_hl A B (G,H) f /\ subgroup_of B h H -> subgroup_of A {x :e A | x :e group_carrier A G /\ f x :e h} G.
Admitted.

// HOL Light: Library/grouptheory.ml:3502 / SUBGROUP_OF_EPIMORPHIC_PREIMAGE   (hash md5:2b5ebf3058e7da2276c578ce08285309)
// not bridged: 
Theorem SUBGROUP_OF_EPIMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall h c= B, group_epimorphism A B (G,H) f /\ subgroup_of B h H -> subgroup_of A {x :e A | x :e group_carrier A G /\ f x :e h} G /\ {f x | x :e {x :e A | x :e group_carrier A G /\ f x :e h}} = h.
Admitted.

// HOL Light: Library/grouptheory.ml:3513 / GROUP_MONOMORPHISM_EPIMORPHISM   (hash md5:b6fe89ad3bdb21353baf8d3bcbe0caa1)
// not bridged: 
Theorem GROUP_MONOMORPHISM_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_monomorphism A B (G,G') f /\ group_epimorphism A B (G,G') f <-> group_isomorphism_hl A B (G,G') f).
Admitted.

// HOL Light: Library/grouptheory.ml:3520 / GROUP_ISOMORPHISM_EPIMORPHISM   (hash md5:3d68d5fdcbb9a4caa241f142fa79e2f2)
// not bridged: 
Theorem GROUP_ISOMORPHISM_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_isomorphism_hl A B (G,G') f <-> group_epimorphism A B (G,G') f /\ forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ f x = f y) -> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:3530 / SUBGROUP_MONOMORPHISM_EPIMORPHISM   (hash md5:8c40461e29e707d8d4335a493bbef506)
// not bridged: 
Theorem SUBGROUP_MONOMORPHISM_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall s c= B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_monomorphism A B (G,G') f /\ group_epimorphism A B (G,subgroup_generated B G' s) f <-> group_isomorphism_hl A B (G,subgroup_generated B G' s) f).
Admitted.

// HOL Light: Library/grouptheory.ml:3539 / GROUP_ISOMORPHISM_IMP_MONOMORPHISM   (hash md5:a41e4b108053a899eef4eb468d1de564)
// not bridged: 
Theorem GROUP_ISOMORPHISM_IMP_MONOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_isomorphism_hl A B (G,G') f -> group_monomorphism A B (G,G') f.
Admitted.

// HOL Light: Library/grouptheory.ml:3544 / GROUP_ISOMORPHISM_IMP_EPIMORPHISM   (hash md5:68cd301340d349f06dcbdc44bee06133)
// not bridged: 
Theorem GROUP_ISOMORPHISM_IMP_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_isomorphism_hl A B (G,G') f -> group_epimorphism A B (G,G') f.
Admitted.

// HOL Light: Library/grouptheory.ml:3549 / GROUP_MONOMORPHISM_IMP_HOMOMORPHISM   (hash md5:861f2eb75a53582a61b4288ee792c55a)
// not bridged: 
Theorem GROUP_MONOMORPHISM_IMP_HOMOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, group_monomorphism A B (G,H) f -> group_homomorphism_hl A B (G,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3553 / GROUP_EPIMORPHISM_IMP_HOMOMORPHISM   (hash md5:3ae2db3845d165ace4e267a0c39c566a)
// not bridged: 
Theorem GROUP_EPIMORPHISM_IMP_HOMOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, group_epimorphism A B (G,H) f -> group_homomorphism_hl A B (G,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3557 / GROUP_ISOMORPHISM_IMP_HOMOMORPHISM   (hash md5:6ca608a51a2eabd250d9f3d62d8ad137)
// not bridged: 
Theorem GROUP_ISOMORPHISM_IMP_HOMOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, group_isomorphism_hl A B (G,H) f -> group_homomorphism_hl A B (G,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3561 / GROUP_AUTOMORPHISM_IMP_ENDOMORPHISM   (hash md5:3b8a688f5a25825f5e0c66ad217324df)
// not bridged: 
Theorem GROUP_AUTOMORPHISM_IMP_ENDOMORPHISM : forall A:set, A <> Empty -> forall G :e group_hl A, forall f:set -> set, (forall x :e A, f x :e A) -> group_automorphism_hl A G f -> group_endomorphism A G f.
Admitted.

// HOL Light: Library/grouptheory.ml:3566 / GROUP_ISOMORPHISM_EQ_MONOMORPHISM_FINITE   (hash md5:f5fe312ddc6d0eb5183c112d3aa15ad8)
// not bridged: 
Theorem GROUP_ISOMORPHISM_EQ_MONOMORPHISM_FINITE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> finite (group_carrier A G) /\ (finite (group_carrier B H) /\ finite_cardinality (group_carrier A G) = finite_cardinality (group_carrier B H)) -> (group_isomorphism_hl A B (G,H) f <-> group_monomorphism A B (G,H) f).
Admitted.

// HOL Light: Library/grouptheory.ml:3581 / GROUP_ISOMORPHISM_EQ_EPIMORPHISM_FINITE   (hash md5:1135097619db0f278daee939c2357bd1)
// not bridged: 
Theorem GROUP_ISOMORPHISM_EQ_EPIMORPHISM_FINITE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> finite (group_carrier A G) /\ (finite (group_carrier B H) /\ finite_cardinality (group_carrier A G) = finite_cardinality (group_carrier B H)) -> (group_isomorphism_hl A B (G,H) f <-> group_epimorphism A B (G,H) f).
Admitted.

// HOL Light: Library/grouptheory.ml:3596 / GROUP_ISOMORPHISMS_CONJUGATION   (hash md5:44e2570468d6b43068a1305c8ee7c6c0)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_CONJUGATION : forall A:set, forall G :e group_hl A, forall a :e A, a :e group_carrier A G -> group_isomorphisms A A (G,G) (fun x :e A => group_conjugation A G a x,fun x :e A => group_conjugation A G (group_inv A G a) x).
Admitted.

// HOL Light: Library/grouptheory.ml:3607 / GROUP_AUTOMORPHISM_CONJUGATION   (hash md5:c48bad5fa5181f223b6aa4d71f3576bb)
// not bridged: 
Theorem GROUP_AUTOMORPHISM_CONJUGATION : forall A:set, forall G :e group_hl A, forall a :e A, a :e group_carrier A G -> group_automorphism_hl A G (group_conjugation A G a).
Admitted.

// HOL Light: Library/grouptheory.ml:3613 / GROUP_ISOMORPHISM_CONJUGATION   (hash md5:b802a31fab6f1845b56c5d74746e5645)
// not bridged: 
Theorem GROUP_ISOMORPHISM_CONJUGATION : forall A:set, forall G :e group_hl A, forall a :e A, a :e group_carrier A G -> group_isomorphism_hl A A (G,G) (group_conjugation A G a).
Admitted.

// HOL Light: Library/grouptheory.ml:3618 / GROUP_HOMOMORPHISM_CONJUGATION   (hash md5:bee0e9e1661f0510a278df082bdae637)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_CONJUGATION : forall A:set, forall G :e group_hl A, forall a :e A, a :e group_carrier A G -> group_homomorphism_hl A A (G,G) (group_conjugation A G a).
Admitted.

// HOL Light: Library/grouptheory.ml:3624 / CARD_LE_GROUP_MONOMORPHIC_IMAGE   (hash md5:65fbba4e80a4d608f02ede300f61e6f4)
// not bridged: 
Theorem CARD_LE_GROUP_MONOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_monomorphism A B (G,H) f -> atleastp (group_carrier A G) (group_carrier B H).
Admitted.

// HOL Light: Library/grouptheory.ml:3630 / CARD_LE_GROUP_EPIMORPHIC_IMAGE   (hash md5:66c6c810de7936b9a1dc57b09fa7a664)
// not bridged: 
Theorem CARD_LE_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f -> atleastp (group_carrier B H) (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:3636 / CARD_EQ_GROUP_ISOMORPHIC_IMAGE   (hash md5:1eebcf0641e19ae2e1b39c7db1a1595f)
// not bridged: 
Theorem CARD_EQ_GROUP_ISOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_isomorphism_hl A B (G,H) f -> equip (group_carrier A G) (group_carrier B H).
Admitted.

// HOL Light: Library/grouptheory.ml:3642 / FINITE_GROUP_MONOMORPHIC_PREIMAGE   (hash md5:7d72ea92462469137e24613128422b5a)
// not bridged: 
Theorem FINITE_GROUP_MONOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_monomorphism A B (G,H) f /\ finite (group_carrier B H) -> finite (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:3648 / FINITE_GROUP_EPIMORPHIC_IMAGE   (hash md5:c0499d1b00a696b5956d90f18e438c59)
// not bridged: 
Theorem FINITE_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f /\ finite (group_carrier A G) -> finite (group_carrier B H).
Admitted.

// HOL Light: Library/grouptheory.ml:3656 / CARD_EQ_GROUP_MONOMORPHIC_IMAGE   (hash md5:90f59f5a0859ab1f232ea1bd63c06e6b)
// not bridged: 
Theorem CARD_EQ_GROUP_MONOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_monomorphism A B (G,H) f -> equip {f x | x :e group_carrier A G} (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:3662 / GROUP_ISOMORPHISMS_BETWEEN_SUBGROUPS   (hash md5:6225b45f0c4e4975ced6aa5d7bab9375)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall g c= A, forall h c= B, forall f :e B :^: A, forall f' :e A :^: B, group_isomorphisms A B (G,H) (f,f') /\ ({f x | x :e g} c= h /\ {f' x | x :e h} c= g) -> group_isomorphisms A B (subgroup_generated A G g,subgroup_generated B H h) (f,f').
Admitted.

// HOL Light: Library/grouptheory.ml:3671 / GROUP_ISOMORPHISMS_BETWEEN_SUBGROUPS_ALT   (hash md5:382822a0c48ccf5f67c02b128608ea43)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_BETWEEN_SUBGROUPS_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall g c= A, forall h c= B, forall f :e B :^: A, forall f' :e A :^: B, group_isomorphisms A B (G,H) (f,f') /\ ({f x | x :e group_carrier A G :/\: g} c= h /\ {f' x | x :e group_carrier B H :/\: h} c= g) -> group_isomorphisms A B (subgroup_generated A G g,subgroup_generated B H h) (f,f').
Admitted.

// HOL Light: Library/grouptheory.ml:3681 / GROUP_ISOMORPHISM_BETWEEN_SUBGROUPS   (hash md5:69c781d1628c31d00830f0e9d27832ee)
// not bridged: 
Theorem GROUP_ISOMORPHISM_BETWEEN_SUBGROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall g c= A, forall h c= B, forall f:set -> set, (forall x :e A, f x :e B) -> group_isomorphism_hl A B (G,H) f /\ (g c= group_carrier A G /\ {f x | x :e g} = h) -> group_isomorphism_hl A B (subgroup_generated A G g,subgroup_generated B H h) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3699 / GROUP_ISOMORPHISMS_COMPOSE   (hash md5:fd0520b0b191796b265008c80c160c88)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall G3 :e group_hl C, forall f1 :e B :^: A, forall f2 :e C :^: B, forall g1 :e A :^: B, forall g2 :e B :^: C, group_isomorphisms A B (G1,G2) (f1,g1) /\ group_isomorphisms B C (G2,G3) (f2,g2) -> group_isomorphisms A C (G1,G3) (fun x :e A => f2 (f1 x),fun x :e C => g1 (g2 x)).
Admitted.

// HOL Light: Library/grouptheory.ml:3706 / GROUP_ISOMORPHISM_COMPOSE   (hash md5:8580ca73b2a674322fc33e0796b4705d)
// not bridged: 
Theorem GROUP_ISOMORPHISM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall G3 :e group_hl C, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> group_isomorphism_hl A B (G1,G2) f /\ group_isomorphism_hl B C (G2,G3) g -> group_isomorphism_hl A C (G1,G3) (fun x:set => g (f x)).
Admitted.

// HOL Light: Library/grouptheory.ml:3712 / GROUP_ISOMORPHISM_COMPOSE_REV   (hash md5:63c97a7cf495901b58fe7579889eaec7)
// not bridged: 
Theorem GROUP_ISOMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_homomorphism_hl A B (A0,B0) f /\ (group_homomorphism_hl B C (B0,C0) g /\ group_isomorphism_hl A C (A0,C0) (fun x:set => g (f x))) -> group_monomorphism A B (A0,B0) f /\ group_epimorphism B C (B0,C0) g.
Admitted.

// HOL Light: Library/grouptheory.ml:3720 / GROUP_EPIMORPHISM_ISOMORPHISM_COMPOSE_REV   (hash md5:3712fba21a0b9ee872a8d621029e8f79)
// not bridged: 
Theorem GROUP_EPIMORPHISM_ISOMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_epimorphism A B (A0,B0) f /\ (group_homomorphism_hl B C (B0,C0) g /\ group_isomorphism_hl A C (A0,C0) (fun x:set => g (f x))) -> group_isomorphism_hl A B (A0,B0) f /\ group_isomorphism_hl B C (B0,C0) g.
Admitted.

// HOL Light: Library/grouptheory.ml:3741 / GROUP_MONOMORPHISM_ISOMORPHISM_COMPOSE_REV   (hash md5:f265a0ab1cab934949ac69de0ed004a8)
// not bridged: 
Theorem GROUP_MONOMORPHISM_ISOMORPHISM_COMPOSE_REV : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_homomorphism_hl A B (A0,B0) f /\ (group_monomorphism B C (B0,C0) g /\ group_isomorphism_hl A C (A0,C0) (fun x:set => g (f x))) -> group_isomorphism_hl A B (A0,B0) f /\ group_isomorphism_hl B C (B0,C0) g.
Admitted.

// HOL Light: Library/grouptheory.ml:3762 / GROUP_ISOMORPHISM_INVERSE   (hash md5:bd515964cc4fb916ceee74af29c122a0)
// not bridged: 
Theorem GROUP_ISOMORPHISM_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e A) -> forall G :e group_hl A, forall H :e group_hl B, group_isomorphism_hl A B (G,H) f /\ (forall x :e A, x :e group_carrier A G -> g (f x) = x) -> group_isomorphism_hl B A (H,G) g.
Admitted.

// HOL Light: Library/grouptheory.ml:3778 / GROUP_ISOMORPHISMS_OPPOSITE_GROUP   (hash md5:7c2fcfdb7df5041a71cb4a999d2fbc51)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, group_isomorphisms A A (G,opposite_group A G) (fun x :e A => group_inv A G x,fun x :e A => group_inv A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:3785 / GROUP_ISOMORPHISM_OPPOSITE_GROUP   (hash md5:45c2be629eee0820e74f5f42c133e87b)
// not bridged: 
Theorem GROUP_ISOMORPHISM_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, group_isomorphism_hl A A (G,opposite_group A G) (group_inv A G).
Admitted.

// HOL Light: Library/grouptheory.ml:3791 / GROUP_HOMOMORPHISM_FROM_TRIVIAL_GROUP   (hash md5:d97bce96ecbe54c9daf70c8ff9f000c5)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, trivial_group A G -> (group_homomorphism_hl A B (G,H) f <-> f (group_id A G) = group_id B H).
Admitted.

// HOL Light: Library/grouptheory.ml:3801 / GROUP_MONOMORPHISM_FROM_TRIVIAL_GROUP   (hash md5:1ba0ef4ac9054f6c59c5a4d027c93e4d)
// not bridged: 
Theorem GROUP_MONOMORPHISM_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, trivial_group A G -> (group_monomorphism A B (G,H) f <-> group_homomorphism_hl A B (G,H) f).
Admitted.

// HOL Light: Library/grouptheory.ml:3807 / GROUP_MONOMORPHISM_TO_TRIVIAL_GROUP   (hash md5:6b792da481d60082c2bc56ea04748950)
// not bridged: 
Theorem GROUP_MONOMORPHISM_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, trivial_group B H -> (group_monomorphism A B (G,H) f <-> group_homomorphism_hl A B (G,H) f /\ trivial_group A G).
Admitted.

// HOL Light: Library/grouptheory.ml:3815 / GROUP_EPIMORPHISM_FROM_TRIVIAL_GROUP   (hash md5:3dde3348e33be037e8a905f6e4f1ae57)
// not bridged: 
Theorem GROUP_EPIMORPHISM_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, trivial_group A G -> (group_epimorphism A B (G,H) f <-> group_homomorphism_hl A B (G,H) f /\ trivial_group B H).
Admitted.

// HOL Light: Library/grouptheory.ml:3823 / GROUP_EPIMORPHISM_TO_TRIVIAL_GROUP   (hash md5:1ef286bf9f014646dd99d3c642392fe5)
// not bridged: 
Theorem GROUP_EPIMORPHISM_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, trivial_group B H -> (group_epimorphism A B (G,H) f <-> group_homomorphism_hl A B (G,H) f).
Admitted.

// HOL Light: Library/grouptheory.ml:3833 / GROUP_HOMOMORPHISM_PAIRWISE   (hash md5:c6a1b2bfc862a55e27e1a048fb395778)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PAIRWISE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B :*: C) -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, group_homomorphism_hl A (B :*: C) (G,prod_group B C H K) f <-> group_homomorphism_hl A B (G,H) (fun x:set => f x 0) /\ group_homomorphism_hl A C (G,K) (fun x:set => f x 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3842 / GROUP_HOMOMORPHISM_PAIRED   (hash md5:b7df8ecc316fd0b830ff7344b8103467)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PAIRED : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e C) -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, group_homomorphism_hl A (B :*: C) (G,prod_group B C H K) (fun x:set => (f x,g x)) <-> group_homomorphism_hl A B (G,H) f /\ group_homomorphism_hl A C (G,K) g.
Admitted.

// HOL Light: Library/grouptheory.ml:3849 / GROUP_HOMOMORPHISM_PAIRED2   (hash md5:7bf41c121263243202d644819d966ba8)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PAIRED2 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e C, g x :e D) -> forall G :e group_hl A, forall H :e group_hl C, forall G' :e group_hl B, forall H' :e group_hl D, group_homomorphism_hl (A :*: C) (B :*: D) (prod_group A C G H,prod_group B D G' H') (fun p:set => (f (p 0),g (p 1))) <-> group_homomorphism_hl A B (G,G') f /\ group_homomorphism_hl C D (H,H') g.
Admitted.

// HOL Light: Library/grouptheory.ml:3858 / GROUP_ISOMORPHISMS_PAIRED2   (hash md5:c6a6703665e68dfa0f76845fa7c42ec3)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_PAIRED2 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e D :^: C, forall f' :e A :^: B, forall g' :e C :^: D, forall G :e group_hl A, forall H :e group_hl C, forall G' :e group_hl B, forall H' :e group_hl D, group_isomorphisms (A :*: C) (B :*: D) (prod_group A C G H,prod_group B D G' H') (fun p :e A :*: C => (f (p 0),g (p 1)),fun p :e B :*: D => (f' (p 0),g' (p 1))) <-> group_isomorphisms A B (G,G') (f,f') /\ group_isomorphisms C D (H,H') (g,g').
Admitted.

// HOL Light: Library/grouptheory.ml:3868 / GROUP_ISOMORPHISM_PAIRED2   (hash md5:d4528f1bd457660c4b4df433722f243d)
// not bridged: 
Theorem GROUP_ISOMORPHISM_PAIRED2 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e C, g x :e D) -> forall G :e group_hl A, forall H :e group_hl C, forall G' :e group_hl B, forall H' :e group_hl D, group_isomorphism_hl (A :*: C) (B :*: D) (prod_group A C G H,prod_group B D G' H') (fun p:set => (f (p 0),g (p 1))) <-> group_isomorphism_hl A B (G,G') f /\ group_isomorphism_hl C D (H,H') g.
Admitted.

// HOL Light: Library/grouptheory.ml:3878 / GROUP_HOMOMORPHISM_OF_FST   (hash md5:d1c96df49e37b63c59dd19a0d0b6ac15)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_OF_FST : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e C) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_homomorphism_hl (A :*: B) C (prod_group A B A0 B0,C0) (fun x:set => f (x 0)) <-> group_homomorphism_hl A C (A0,C0) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3885 / GROUP_HOMOMORPHISM_OF_SND   (hash md5:8b0a960d26b148a9663285962577ecac)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_OF_SND : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e B, f x :e C) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_homomorphism_hl (A :*: B) C (prod_group A B A0 B0,C0) (fun x:set => f (x 1)) <-> group_homomorphism_hl B C (B0,C0) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3892 / GROUP_EPIMORPHISM_OF_FST   (hash md5:2e7c9264454122bd0b9f49b1743d20be)
// not bridged: 
Theorem GROUP_EPIMORPHISM_OF_FST : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e C) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_epimorphism (A :*: B) C (prod_group A B A0 B0,C0) (fun x:set => f (x 0)) <-> group_epimorphism A C (A0,C0) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3899 / GROUP_EPIMORPHISM_OF_SND   (hash md5:93d20addf595a1ce0652aa9e02764ed4)
// not bridged: 
Theorem GROUP_EPIMORPHISM_OF_SND : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e B, f x :e C) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_epimorphism (A :*: B) C (prod_group A B A0 B0,C0) (fun x:set => f (x 1)) <-> group_epimorphism B C (B0,C0) f.
Admitted.

// HOL Light: Library/grouptheory.ml:3906 / GROUP_HOMOMORPHISM_FST   (hash md5:cdebd4857a315ea4e37e05c400093aa5)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_FST : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e group_hl A, forall B0 :e group_hl B, group_homomorphism_hl (A :*: B) A (prod_group A B A0 B0,A0) (fun x:set => x 0).
Admitted.

// HOL Light: Library/grouptheory.ml:3911 / GROUP_HOMOMORPHISM_SND   (hash md5:7a3560842c2c45a746224c54393dcb85)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_SND : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e group_hl A, forall B0 :e group_hl B, group_homomorphism_hl (A :*: B) B (prod_group A B A0 B0,B0) (fun x:set => x 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3916 / GROUP_EPIMORPHISM_FST   (hash md5:1c4f99be1a17c62408a6b6d03c63f8f4)
// not bridged: 
Theorem GROUP_EPIMORPHISM_FST : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e group_hl A, forall B0 :e group_hl B, group_epimorphism (A :*: B) A (prod_group A B A0 B0,A0) (fun x:set => x 0).
Admitted.

// HOL Light: Library/grouptheory.ml:3921 / GROUP_EPIMORPHISM_SND   (hash md5:523e7d333663aefa1e35a7a87f737ea4)
// not bridged: 
Theorem GROUP_EPIMORPHISM_SND : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e group_hl A, forall B0 :e group_hl B, group_epimorphism (A :*: B) B (prod_group A B A0 B0,B0) (fun x:set => x 1).
Admitted.

// HOL Light: Library/grouptheory.ml:3926 / GROUP_ISOMORPHISM_FST   (hash md5:96c892b55918fd5491690da5b204f904)
// not bridged: 
Theorem GROUP_ISOMORPHISM_FST : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, group_isomorphism_hl (A :*: B) A (prod_group A B G H,G) (fun x:set => x 0) <-> trivial_group B H.
Admitted.

// HOL Light: Library/grouptheory.ml:3937 / GROUP_ISOMORPHISM_SND   (hash md5:80c4877af8afed0456b51481b58eac59)
// not bridged: 
Theorem GROUP_ISOMORPHISM_SND : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, group_isomorphism_hl (A :*: B) B (prod_group A B G H,H) (fun x:set => x 1) <-> trivial_group A G.
Admitted.

// HOL Light: Library/grouptheory.ml:3948 / GROUP_ISOMORPHISMS_PROD_GROUP_SWAP   (hash md5:2e76fd4117c92af581e926fbce8986db)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_PROD_GROUP_SWAP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, group_isomorphisms (A :*: B) (B :*: A) (prod_group A B G H,prod_group B A H G) (fun p :e A :*: B => (p 1,p 0),fun p :e B :*: A => (p 1,p 0)).
Admitted.

// HOL Light: Library/grouptheory.ml:3958 / GROUP_HOMOMORPHISM_COMPONENTWISE   (hash md5:ed816dbc66a02b0e073715adb12a5801)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_COMPONENTWISE : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall G :e group_hl A, forall k c= K, forall H:set -> set, (forall x :e K, H x :e group_hl B) -> forall f :e B :^: K :^: A, group_homomorphism_hl A (B :^: K) (G,product_group B K k H) (fun x:set => f x) <-> {f x | x :e group_carrier A G} c= {x :e B :^: K | forall x0 :e K, ~ x0 :e k -> x x0 = choose_in B (fun y:set => False)} /\ forall i :e K, i :e k -> group_homomorphism_hl A B (G,H i) (fun x:set => f x i).
Admitted.

// HOL Light: Library/grouptheory.ml:3974 / GROUP_HOMOMORPHISM_COMPONENTWISE_UNIV   (hash md5:fab59ca378ba4a780f406c8acde053d5)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_COMPONENTWISE_UNIV : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall G :e group_hl A, forall H:set -> set, (forall x :e K, H x :e group_hl B) -> forall f :e B :^: K :^: A, group_homomorphism_hl A (B :^: K) (G,product_group B K K H) (fun x:set => f x) <-> forall i :e K, group_homomorphism_hl A B (G,H i) (fun x:set => f x i).
Admitted.

// HOL Light: Library/grouptheory.ml:3982 / GROUP_HOMOMORPHISM_PRODUCT_PROJECTION   (hash md5:e0a5c5d5d15cd2c6fd77568968477acf)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PRODUCT_PROJECTION : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall i :e K, i :e k -> group_homomorphism_hl (A :^: K) A (product_group A K k G,G i) (fun x:set => x i).
Admitted.

// HOL Light: Library/grouptheory.ml:3992 / GROUP_HOMOMORPHISM_SUM_PROJECTION   (hash md5:746752e9215c591b59fd65f26c1d4524)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_SUM_PROJECTION : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall i :e K, i :e k -> group_homomorphism_hl (A :^: K) A (sum_group A K k G,G i) (fun x:set => x i).
Admitted.

// HOL Light: Library/grouptheory.ml:3999 / GROUP_HOMOMORPHISM_PRODUCT_INJECTION   (hash md5:83eb5f31dbad963db3a99398144e5496)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PRODUCT_INJECTION : forall A K:set, A <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall i :e K, group_homomorphism_hl A (A :^: K) (G i,product_group A K k G) (fun x:set => fun x0 :e K => if x0 :e k then if x0 = i then x else group_id A (G x0) else choose_in A (fun y:set => False)).
Admitted.

// HOL Light: Library/grouptheory.ml:4010 / GROUP_HOMOMORPHISM_SUM_INJECTION   (hash md5:43dfc7cf0a6d7c1fc0f4bf61ad2d7c6e)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_SUM_INJECTION : forall A K:set, A <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall i :e K, group_homomorphism_hl A (A :^: K) (G i,sum_group A K k G) (fun x:set => fun x0 :e K => if x0 :e k then if x0 = i then x else group_id A (G x0) else choose_in A (fun y:set => False)).
Admitted.

// HOL Light: Library/grouptheory.ml:4024 / GROUP_HOMOMORPHISM_PRODUCT   (hash md5:674a05cbbba6d6b41240e26c483757c0)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PRODUCT : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall f:set -> set -> set, (forall x :e K, forall y :e A, f x y :e B) -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall H:set -> set, (forall x :e K, H x :e group_hl B) -> (group_homomorphism_hl (A :^: K) (B :^: K) (product_group A K k G,product_group B K k H) (fun x:set => fun x0 :e K => if x0 :e k then f x0 (x x0) else choose_in B (fun y:set => False)) <-> forall i :e K, i :e k -> group_homomorphism_hl A B (G i,H i) (f i)).
Admitted.

// HOL Light: Library/grouptheory.ml:4050 / GROUP_HOMOMORPHISM_SUM   (hash md5:cf6fc13813d3dcebc79611aea2563f13)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_SUM : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall f:set -> set -> set, (forall x :e K, forall y :e A, f x y :e B) -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall H:set -> set, (forall x :e K, H x :e group_hl B) -> (group_homomorphism_hl (A :^: K) (B :^: K) (sum_group A K k G,sum_group B K k H) (fun x:set => fun x0 :e K => if x0 :e k then f x0 (x x0) else choose_in B (fun y:set => False)) <-> forall i :e K, i :e k -> group_homomorphism_hl A B (G i,H i) (f i)).
Admitted.

// HOL Light: Library/grouptheory.ml:4081 / GROUP_EPIMORPHISM_PRODUCT_PROJECTION   (hash md5:5360c336c065c932a7c09b54f9e0d0c9)
// not bridged: 
Theorem GROUP_EPIMORPHISM_PRODUCT_PROJECTION : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall i :e K, i :e k -> group_epimorphism (A :^: K) A (product_group A K k G,G i) (fun x:set => x i).
Admitted.

// HOL Light: Library/grouptheory.ml:4088 / GROUP_ISOMORPHISM_PRODUCT_PROJECTION   (hash md5:691eebe98d76e976180ab742ee54fb0b)
// not bridged: 
Theorem GROUP_ISOMORPHISM_PRODUCT_PROJECTION : forall A B:set, A <> Empty -> forall G:set -> set, (forall x :e B, G x :e group_hl A) -> forall k :e B, group_isomorphism_hl (A :^: B) A (product_group A B {k} G,G k) (fun x:set => x k).
Admitted.

// HOL Light: Library/grouptheory.ml:4096 / GROUP_EPIMORPHISM_SUM_PROJECTION   (hash md5:31cdf75db02e610156973a1eda2fabc6)
// not bridged: 
Theorem GROUP_EPIMORPHISM_SUM_PROJECTION : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall i :e K, i :e k -> group_epimorphism (A :^: K) A (sum_group A K k G,G i) (fun x:set => x i).
Admitted.

// HOL Light: Library/grouptheory.ml:4110 / GROUP_ISOMORPHISM_SUM_PROJECTION   (hash md5:5b82720769a5d00f79b7aefcdfc45198)
// not bridged: 
Theorem GROUP_ISOMORPHISM_SUM_PROJECTION : forall A B:set, A <> Empty -> forall G:set -> set, (forall x :e B, G x :e group_hl A) -> forall k :e B, group_isomorphism_hl (A :^: B) A (sum_group A B {k} G,G k) (fun x:set => x k).
Admitted.

// HOL Light: Library/grouptheory.ml:4118 / ABELIAN_GROUP_EPIMORPHIC_IMAGE   (hash md5:d41c7fa4c3007b082c54a7adbd3b1f38)
// not bridged: 
Theorem ABELIAN_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f /\ abelian_group_hl A G -> abelian_group_hl B H.
Admitted.

// HOL Light: Library/grouptheory.ml:4126 / ABELIAN_GROUP_HOMOMORPHISM_GROUP_MUL   (hash md5:a0519d45047e31f899920cfc0c3eaff1)
// not bridged: 
Theorem ABELIAN_GROUP_HOMOMORPHISM_GROUP_MUL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> forall A0 :e group_hl A, forall B0 :e group_hl B, abelian_group_hl B B0 /\ (group_homomorphism_hl A B (A0,B0) f /\ group_homomorphism_hl A B (A0,B0) g) -> group_homomorphism_hl A B (A0,B0) (fun x:set => group_mul B B0 (f x) (g x)).
Admitted.

// HOL Light: Library/grouptheory.ml:4135 / ABELIAN_GROUP_HOMOMORPHISM_INVERSION   (hash md5:269372fe2f9c12d90ca3ecd489be9f70)
// not bridged: 
Theorem ABELIAN_GROUP_HOMOMORPHISM_INVERSION : forall A:set, A <> Empty -> forall G :e group_hl A, group_homomorphism_hl A A (G,G) (group_inv A G) <-> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:4141 / ABELIAN_GROUP_ISOMORPHISMS_INVERSION   (hash md5:4184d9c3fe2e6fb1d037a519464c5b78)
// not bridged: 
Theorem ABELIAN_GROUP_ISOMORPHISMS_INVERSION : forall A:set, A <> Empty -> forall G :e group_hl A, group_isomorphisms A A (G,G) (fun x :e A => group_inv A G x,fun x :e A => group_inv A G x) <-> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:4147 / ABELIAN_GROUP_ISOMORPHISM_INVERSION   (hash md5:73294d226d22acefd9ae8c54c39ce915)
// not bridged: 
Theorem ABELIAN_GROUP_ISOMORPHISM_INVERSION : forall A:set, A <> Empty -> forall G :e group_hl A, group_isomorphism_hl A A (G,G) (group_inv A G) <-> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:4154 / ABELIAN_GROUP_MONOMORPHISM_INVERSION   (hash md5:f21f92919dca02fd7b2da6455de4dccd)
// not bridged: 
Theorem ABELIAN_GROUP_MONOMORPHISM_INVERSION : forall A:set, A <> Empty -> forall G :e group_hl A, group_monomorphism A A (G,G) (group_inv A G) <-> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:4161 / ABELIAN_GROUP_EPIMORPHISM_INVERSION   (hash md5:7d51794334fa4244f20d17292502fa75)
// not bridged: 
Theorem ABELIAN_GROUP_EPIMORPHISM_INVERSION : forall A:set, A <> Empty -> forall G :e group_hl A, group_epimorphism A A (G,G) (group_inv A G) <-> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:4168 / ABELIAN_GROUP_HOMOMORPHISM_POWERING   (hash md5:4dc5befdb95b26d36c3d5a81ed73ecc4)
// not bridged: 
Theorem ABELIAN_GROUP_HOMOMORPHISM_POWERING : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G -> group_homomorphism_hl A A (G,G) (fun x:set => group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:4174 / ABELIAN_GROUP_HOMOMORPHISM_ZPOWERING   (hash md5:bde89420704ba4ec21099827211bbf00)
// not bridged: 
Theorem ABELIAN_GROUP_HOMOMORPHISM_ZPOWERING : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e int, abelian_group_hl A G -> group_homomorphism_hl A A (G,G) (fun x:set => group_zpow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:4186 / isomorphic_group   (hash md5:5f782e879eb5f8b261c71f2c84ba252f)
// not bridged: 
Theorem isomorphic_group_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, isomorphic_group A B G G' <-> exists f:set -> set, (forall x :e A, f x :e B) /\ group_isomorphism_hl A B (G,G') f.
Admitted.

// HOL Light: Library/grouptheory.ml:4189 / GROUP_ISOMORPHISM_IMP_ISOMORPHIC   (hash md5:86e4d308130da24dabb4a7df0e53e2bb)
// not bridged: 
Theorem GROUP_ISOMORPHISM_IMP_ISOMORPHIC : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_isomorphism_hl A B (G,H) f -> isomorphic_group A B G H.
Admitted.

// HOL Light: Library/grouptheory.ml:4193 / ISOMORPHIC_PRODUCT_GROUP_SING   (hash md5:a41b60185016f69b71d57bac70690124)
// not bridged: 
Theorem ISOMORPHIC_PRODUCT_GROUP_SING : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k :e K, isomorphic_group (A :^: K) A (product_group A K {k} G) (G k).
Admitted.

// HOL Light: Library/grouptheory.ml:4198 / ISOMORPHIC_SUM_GROUP_SING   (hash md5:e273dfefc690989aa00cb4daed9e8930)
// not bridged: 
Theorem ISOMORPHIC_SUM_GROUP_SING : forall A K:set, A <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k :e K, isomorphic_group (A :^: K) A (sum_group A K {k} G) (G k).
Admitted.

// HOL Light: Library/grouptheory.ml:4203 / ISOMORPHIC_GROUP_REFL   (hash md5:df0d7c3533aa82873d65bfbef119d85e)
// not bridged: 
Theorem ISOMORPHIC_GROUP_REFL : forall A:set, A <> Empty -> forall G :e group_hl A, isomorphic_group A A G G.
Admitted.

// HOL Light: Library/grouptheory.ml:4208 / ISOMORPHIC_GROUP_SYM   (hash md5:6d295ea7cc13075fcac60ca6d635948d)
// not bridged: 
Theorem ISOMORPHIC_GROUP_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H <-> isomorphic_group B A H G.
Admitted.

// HOL Light: Library/grouptheory.ml:4213 / ISOMORPHIC_GROUP_TRANS   (hash md5:70e5da112886254712c64066105305ea)
// not bridged: 
Theorem ISOMORPHIC_GROUP_TRANS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall G3 :e group_hl C, isomorphic_group A B G1 G2 /\ isomorphic_group B C G2 G3 -> isomorphic_group A C G1 G3.
Admitted.

// HOL Light: Library/grouptheory.ml:4219 / ISOMORPHIC_GROUP_OPPOSITE_GROUP   (hash md5:bb0ab2be2d0a2c42bcf8ffc7a6f016da)
// not bridged: 
Theorem ISOMORPHIC_GROUP_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, isomorphic_group A A (opposite_group A G) G.
Admitted.

// HOL Light: Library/grouptheory.ml:4225 / ISOMORPHIC_GROUP_TRIVIALITY   (hash md5:97e9cace363f9a0d3bb9536ebbbd5369)
// not bridged: 
Theorem ISOMORPHIC_GROUP_TRIVIALITY : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H -> (trivial_group A G <-> trivial_group B H).
Admitted.

// HOL Light: Library/grouptheory.ml:4232 / ISOMORPHIC_TO_TRIVIAL_GROUP   (hash md5:b9c5db8da4d6dae718bc751f48eabeaa)
// not bridged: 
Theorem ISOMORPHIC_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> (forall G :e group_hl A, forall H :e group_hl B, trivial_group A G -> (isomorphic_group A B G H <-> trivial_group B H)) /\ forall G :e group_hl A, forall H :e group_hl B, trivial_group B H -> (isomorphic_group A B G H <-> trivial_group A G).
Admitted.

// HOL Light: Library/grouptheory.ml:4254 / ISOMORPHIC_TRIVIAL_GROUPS   (hash md5:beaf1a68ab43ea8d54923960726971db)
// not bridged: 
Theorem ISOMORPHIC_TRIVIAL_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, trivial_group A G /\ trivial_group B H -> isomorphic_group A B G H.
Admitted.

// HOL Light: Library/grouptheory.ml:4260 / ISOMORPHIC_GROUP_SINGLETON_GROUP   (hash md5:4ce4f24647faba3abc39d958557ec510)
// not bridged: 
Theorem ISOMORPHIC_GROUP_SINGLETON_GROUP : forall A B:set, A <> Empty -> B <> Empty -> (forall G :e group_hl A, forall b :e B, isomorphic_group A B G (singleton_group B b) <-> trivial_group A G) /\ forall a :e A, forall G :e group_hl B, isomorphic_group A B (singleton_group A a) G <-> trivial_group B G.
Admitted.

// HOL Light: Library/grouptheory.ml:4267 / ISOMORPHIC_GROUP_PROD_GROUPS   (hash md5:760e2c99efea8115c276422e11861b46)
// not bridged: 
Theorem ISOMORPHIC_GROUP_PROD_GROUPS : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall H :e group_hl C, forall H' :e group_hl D, isomorphic_group A B G G' /\ isomorphic_group C D H H' -> isomorphic_group (A :*: C) (B :*: D) (prod_group A C G H) (prod_group B D G' H').
Admitted.

// HOL Light: Library/grouptheory.ml:4275 / ISOMORPHIC_GROUP_PROD_GROUP_SYM   (hash md5:ae05e4bdfd6edc2ef38aec6ad21e2360)
// not bridged: 
Theorem ISOMORPHIC_GROUP_PROD_GROUP_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group (A :*: B) (B :*: A) (prod_group A B G H) (prod_group B A H G).
Admitted.

// HOL Light: Library/grouptheory.ml:4281 / ISOMORPHIC_GROUP_PROD_GROUP_SWAP_LEFT   (hash md5:9dee50de6e0c21f8971f6e59deeec0bf)
// not bridged: 
Theorem ISOMORPHIC_GROUP_PROD_GROUP_SWAP_LEFT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, isomorphic_group (A :*: B) C (prod_group A B G H) K <-> isomorphic_group (B :*: A) C (prod_group B A H G) K.
Admitted.

// HOL Light: Library/grouptheory.ml:4289 / ISOMORPHIC_GROUP_PROD_GROUP_SWAP_RIGHT   (hash md5:736f99ce94e720f8c6ca4b4bc6229301)
// not bridged: 
Theorem ISOMORPHIC_GROUP_PROD_GROUP_SWAP_RIGHT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, isomorphic_group A (B :*: C) G (prod_group B C H K) <-> isomorphic_group A (C :*: B) G (prod_group C B K H).
Admitted.

// HOL Light: Library/grouptheory.ml:4296 / ISOMORPHIC_PROD_TRIVIAL_GROUP   (hash md5:ee7897aaed84ff9814d25a6016cfd861)
// not bridged: 
Theorem ISOMORPHIC_PROD_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> (forall G :e group_hl A, forall H :e group_hl B, trivial_group A G -> isomorphic_group (A :*: B) B (prod_group A B G H) H) /\ ((forall G :e group_hl A, forall H :e group_hl B, trivial_group B H -> isomorphic_group (A :*: B) A (prod_group A B G H) G) /\ ((forall G :e group_hl A, forall H :e group_hl B, trivial_group A G -> isomorphic_group B (A :*: B) H (prod_group A B G H)) /\ forall G :e group_hl A, forall H :e group_hl B, trivial_group B H -> isomorphic_group A (A :*: B) G (prod_group A B G H))).
Admitted.

// HOL Light: Library/grouptheory.ml:4317 / ISOMORPHIC_PRODUCT_GROUP_SUPPORT   (hash md5:2f79691903fb1bff61277c5b61114176)
// not bridged: 
Theorem ISOMORPHIC_PRODUCT_GROUP_SUPPORT : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> isomorphic_group (A :^: K) (A :^: K) (product_group A K {i :e K | i :e k /\ ~ trivial_group A (G i)} G) (product_group A K k G).
Admitted.

// HOL Light: Library/grouptheory.ml:4336 / ISOMORPHIC_PRODUCT_GROUP_SYMDIFF   (hash md5:4908a860eda17074b8344d3adbb88f48)
// not bridged: 
Theorem ISOMORPHIC_PRODUCT_GROUP_SYMDIFF : forall A K:set, A <> Empty -> K <> Empty -> forall k l c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (forall i :e K, i :e (k :\: l) :\/: (l :\: k) -> trivial_group A (G i)) -> isomorphic_group (A :^: K) (A :^: K) (product_group A K k G) (product_group A K l G).
Admitted.

// HOL Light: Library/grouptheory.ml:4352 / ISOMORPHIC_SUM_GROUP_SUPPORT   (hash md5:5019ecf9dd6ee5635a45a779e90bc134)
// not bridged: 
Theorem ISOMORPHIC_SUM_GROUP_SUPPORT : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> isomorphic_group (A :^: K) (A :^: K) (sum_group A K {i :e K | i :e k /\ ~ trivial_group A (G i)} G) (sum_group A K k G).
Admitted.

// HOL Light: Library/grouptheory.ml:4380 / ISOMORPHIC_SUM_GROUP_SYMDIFF   (hash md5:fc1b3df5245e0e300d7ebe567e3ff60d)
// not bridged: 
Theorem ISOMORPHIC_SUM_GROUP_SYMDIFF : forall A K:set, A <> Empty -> K <> Empty -> forall k l c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (forall i :e K, i :e (k :\: l) :\/: (l :\: k) -> trivial_group A (G i)) -> isomorphic_group (A :^: K) (A :^: K) (sum_group A K k G) (sum_group A K l G).
Admitted.

// HOL Light: Library/grouptheory.ml:4396 / ISOMORPHIC_PRODUCT_GROUP_BIJECTIONS   (hash md5:b422d422039272ec318a502c245eed2a)
// not bridged: 
Theorem ISOMORPHIC_PRODUCT_GROUP_BIJECTIONS : forall A B K L:set, A <> Empty -> B <> Empty -> K <> Empty -> L <> Empty -> forall s c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall t c= L, forall H:set -> set, (forall x :e L, H x :e group_hl B) -> forall f:set -> set, (forall x :e K, f x :e L) -> forall g:set -> set, (forall x :e L, g x :e K) -> (forall x :e K, x :e s -> f x :e t /\ g (f x) = x) /\ ((forall y :e L, y :e t -> g y :e s /\ f (g y) = y) /\ (forall i :e K, i :e s -> isomorphic_group A B (G i) (H (f i)))) -> isomorphic_group (A :^: K) (B :^: L) (product_group A K s G) (product_group B L t H).
Admitted.

// HOL Light: Library/grouptheory.ml:4396 / ISOMORPHIC_SUM_GROUP_BIJECTIONS   (hash md5:4aa8977a11d66f203c117064376a9173)
// not bridged: 
Theorem ISOMORPHIC_SUM_GROUP_BIJECTIONS : forall A B K L:set, A <> Empty -> B <> Empty -> K <> Empty -> L <> Empty -> forall s c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall t c= L, forall H:set -> set, (forall x :e L, H x :e group_hl B) -> forall f:set -> set, (forall x :e K, f x :e L) -> forall g:set -> set, (forall x :e L, g x :e K) -> (forall x :e K, x :e s -> f x :e t /\ g (f x) = x) /\ ((forall y :e L, y :e t -> g y :e s /\ f (g y) = y) /\ (forall i :e K, i :e s -> isomorphic_group A B (G i) (H (f i)))) -> isomorphic_group (A :^: K) (B :^: L) (sum_group A K s G) (sum_group B L t H).
Admitted.

// HOL Light: Library/grouptheory.ml:4452 / ISOMORPHIC_GROUP_PRODUCT_GROUP   (hash md5:2998836b154614a77f32712a5042d48d)
// not bridged: 
Theorem ISOMORPHIC_GROUP_PRODUCT_GROUP : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall H:set -> set, (forall x :e K, H x :e group_hl B) -> forall k c= K, (forall i :e K, i :e k -> isomorphic_group A B (G i) (H i)) -> isomorphic_group (A :^: K) (B :^: K) (product_group A K k G) (product_group B K k H).
Admitted.

// HOL Light: Library/grouptheory.ml:4459 / ISOMORPHIC_GROUP_SUM_GROUP   (hash md5:507ae07a23a852a1fd20d1697282becc)
// not bridged: 
Theorem ISOMORPHIC_GROUP_SUM_GROUP : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall H:set -> set, (forall x :e K, H x :e group_hl B) -> forall k c= K, (forall i :e K, i :e k -> isomorphic_group A B (G i) (H i)) -> isomorphic_group (A :^: K) (B :^: K) (sum_group A K k G) (sum_group B K k H).
Admitted.

// HOL Light: Library/grouptheory.ml:4466 / GROUP_ISOMORPHISMS_PRODUCT_GROUP_DISJOINT_UNION   (hash md5:7bbf7599b28192ee905f81a904bc9cd7)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_PRODUCT_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f:set -> set, (forall x :e K, f x :e group_hl A) -> forall k l c= K, k :/\: l = Empty -> group_isomorphisms (A :^: K) (A :^: K :*: A :^: K) (product_group A K (k :\/: l) f,prod_group (A :^: K) (A :^: K) (product_group A K k f) (product_group A K l f)) (fun f0 :e A :^: K => (fun x :e K => if x :e k then f0 x else choose_in A (fun y:set => False),fun x :e K => if x :e l then f0 x else choose_in A (fun y:set => False)),fun p :e A :^: K :*: A :^: K => fun x :e K => if x :e k then p 0 x else p 1 x).
Admitted.

// HOL Light: Library/grouptheory.ml:4485 / GROUP_ISOMORPHISMS_SUM_GROUP_DISJOINT_UNION   (hash md5:691c2fc8bbfb1d07cf154d139cc4b2bc)
// not bridged: 
Theorem GROUP_ISOMORPHISMS_SUM_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f:set -> set, (forall x :e K, f x :e group_hl A) -> forall k l c= K, k :/\: l = Empty -> group_isomorphisms (A :^: K) (A :^: K :*: A :^: K) (sum_group A K (k :\/: l) f,prod_group (A :^: K) (A :^: K) (sum_group A K k f) (sum_group A K l f)) (fun f0 :e A :^: K => (fun x :e K => if x :e k then f0 x else choose_in A (fun y:set => False),fun x :e K => if x :e l then f0 x else choose_in A (fun y:set => False)),fun p :e A :^: K :*: A :^: K => fun x :e K => if x :e k then p 0 x else p 1 x).
Admitted.

// HOL Light: Library/grouptheory.ml:4520 / GROUP_ISOMORPHISM_PRODUCT_GROUP_DISJOINT_UNION   (hash md5:7ea81ed73d4534f03fb92b48d38b4050)
// not bridged: 
Theorem GROUP_ISOMORPHISM_PRODUCT_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f:set -> set, (forall x :e K, f x :e group_hl A) -> forall k l c= K, k :/\: l = Empty -> group_isomorphism_hl (A :^: K) (A :^: K :*: A :^: K) (product_group A K (k :\/: l) f,prod_group (A :^: K) (A :^: K) (product_group A K k f) (product_group A K l f)) (fun f0:set => (fun x :e K => if x :e k then f0 x else choose_in A (fun y:set => False),fun x :e K => if x :e l then f0 x else choose_in A (fun y:set => False))).
Admitted.

// HOL Light: Library/grouptheory.ml:4530 / GROUP_ISOMORPHISM_SUM_GROUP_DISJOINT_UNION   (hash md5:8297539be8714c4de26837d69b58cdf8)
// not bridged: 
Theorem GROUP_ISOMORPHISM_SUM_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f:set -> set, (forall x :e K, f x :e group_hl A) -> forall k l c= K, k :/\: l = Empty -> group_isomorphism_hl (A :^: K) (A :^: K :*: A :^: K) (sum_group A K (k :\/: l) f,prod_group (A :^: K) (A :^: K) (sum_group A K k f) (sum_group A K l f)) (fun f0:set => (fun x :e K => if x :e k then f0 x else choose_in A (fun y:set => False),fun x :e K => if x :e l then f0 x else choose_in A (fun y:set => False))).
Admitted.

// HOL Light: Library/grouptheory.ml:4540 / ISOMORPHIC_PRODUCT_GROUP_DISJOINT_UNION   (hash md5:2b8adcd344234a32465a93e1ce18d949)
// not bridged: 
Theorem ISOMORPHIC_PRODUCT_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f:set -> set, (forall x :e K, f x :e group_hl A) -> forall k l c= K, k :/\: l = Empty -> isomorphic_group (A :^: K) (A :^: K :*: A :^: K) (product_group A K (k :\/: l) f) (prod_group (A :^: K) (A :^: K) (product_group A K k f) (product_group A K l f)).
Admitted.

// HOL Light: Library/grouptheory.ml:4548 / ISOMORPHIC_SUM_GROUP_DISJOINT_UNION   (hash md5:a5128b18e9322a86ebe25a68718ae853)
// not bridged: 
Theorem ISOMORPHIC_SUM_GROUP_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall f:set -> set, (forall x :e K, f x :e group_hl A) -> forall k l c= K, k :/\: l = Empty -> isomorphic_group (A :^: K) (A :^: K :*: A :^: K) (sum_group A K (k :\/: l) f) (prod_group (A :^: K) (A :^: K) (sum_group A K k f) (sum_group A K l f)).
Admitted.

// HOL Light: Library/grouptheory.ml:4556 / ISOMORPHIC_PRODUCT_GROUP_INSERT   (hash md5:81b6645e4c9cae0928b3e7dc5e072757)
// not bridged: 
Theorem ISOMORPHIC_PRODUCT_GROUP_INSERT : forall A K:set, A <> Empty -> forall f:set -> set, (forall x :e K, f x :e group_hl A) -> forall i :e K, forall k c= K, ~ i :e k -> isomorphic_group (A :^: K) (A :*: A :^: K) (product_group A K (SetAdjoin k i) f) (prod_group A (A :^: K) (f i) (product_group A K k f)).
Admitted.

// HOL Light: Library/grouptheory.ml:4569 / ISOMORPHIC_SUM_GROUP_INSERT   (hash md5:cebf81d857f44cf504284e532535b958)
// not bridged: 
Theorem ISOMORPHIC_SUM_GROUP_INSERT : forall A K:set, A <> Empty -> forall f:set -> set, (forall x :e K, f x :e group_hl A) -> forall i :e K, forall k c= K, ~ i :e k -> isomorphic_group (A :^: K) (A :*: A :^: K) (sum_group A K (SetAdjoin k i) f) (prod_group A (A :^: K) (f i) (sum_group A K k f)).
Admitted.

// HOL Light: Library/grouptheory.ml:4582 / ISOMORPHIC_GROUP_CARD_EQ   (hash md5:0f6431bcf93625ff12b42381dfee3d9e)
// not bridged: 
Theorem ISOMORPHIC_GROUP_CARD_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H -> equip (group_carrier A G) (group_carrier B H).
Admitted.

// HOL Light: Library/grouptheory.ml:4588 / ISOMORPHIC_GROUP_FINITENESS   (hash md5:f5e6e1b2c21827f7d518873588303084)
// not bridged: 
Theorem ISOMORPHIC_GROUP_FINITENESS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H -> (finite (group_carrier A G) <-> finite (group_carrier B H)).
Admitted.

// HOL Light: Library/grouptheory.ml:4596 / ISOMORPHIC_GROUP_INFINITENESS   (hash md5:88cba551ba794b36493332adc2e04038)
// not bridged: 
Theorem ISOMORPHIC_GROUP_INFINITENESS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H -> (infinite (group_carrier A G) <-> infinite (group_carrier B H)).
Admitted.

// HOL Light: Library/grouptheory.ml:4603 / ISOMORPHIC_GROUP_HAS_ORDER   (hash md5:d979dffd73dd16540ceab6634d89fd74)
// not bridged: 
Theorem ISOMORPHIC_GROUP_HAS_ORDER : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall n :e omega, isomorphic_group A B G H -> (equip (group_carrier A G) n <-> equip (group_carrier B H) n).
Admitted.

// HOL Light: Library/grouptheory.ml:4611 / ISOMORPHIC_GROUP_ORDER   (hash md5:7c7228b7f97c123c871aa30c0fdbe230)
// not bridged: 
Theorem ISOMORPHIC_GROUP_ORDER : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H /\ (finite (group_carrier A G) \/ finite (group_carrier B H)) -> finite_cardinality (group_carrier A G) = finite_cardinality (group_carrier B H).
Admitted.

// HOL Light: Library/grouptheory.ml:4619 / ISOMORPHIC_GROUP_ABELIANNESS   (hash md5:70161d986913ad827661c8f4c35f09a2)
// not bridged: 
Theorem ISOMORPHIC_GROUP_ABELIANNESS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H -> (abelian_group_hl A G <-> abelian_group_hl B H).
Admitted.

// HOL Light: Library/grouptheory.ml:4627 / CREATE_ISOMORPHIC_COPY_OF_GROUP   (hash md5:5853a0dc7160a800f9a828f765fd4b88)
// not bridged: 
Theorem CREATE_ISOMORPHIC_COPY_OF_GROUP : forall A B:set, A <> Empty -> forall f :e B :^: A, forall g :e A :^: B, forall G :e group_hl A, forall s c= B, forall z :e B, forall i :e B :^: B, forall m :e B :^: B :^: B, z :e s /\ ((forall x :e A, x :e group_carrier A G -> f x :e s /\ g (f x) = x) /\ ((forall y :e B, y :e s -> g y :e group_carrier A G /\ f (g y) = y) /\ (g z = group_id A G /\ ((forall x :e B, x :e s -> i x = f (group_inv A G (g x))) /\ (forall x y :e B, x :e s /\ y :e s -> m x y = f (group_mul A G (g x) (g y))))))) -> group_isomorphisms A B (G,(s,(z,(i,m)))) (f,g) /\ (group_carrier B (s,(z,(i,m))) = s /\ (group_id B (s,(z,(i,m))) = z /\ ((forall x :e B, group_inv B (s,(z,(i,m))) x = i x) /\ forall x x0 :e B, group_mul B (s,(z,(i,m))) x x0 = m x x0))).
Admitted.

// HOL Light: Library/grouptheory.ml:4656 / ISOMORPHIC_COPY_OF_GROUP   (hash md5:5381bc09d2002066fd928b37b6be194e)
// not bridged: 
Theorem ISOMORPHIC_COPY_OF_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall s c= B, (exists G' :e group_hl B, group_carrier B G' = s /\ isomorphic_group A B G G') <-> equip (group_carrier A G) s.
Admitted.

// HOL Light: Library/grouptheory.ml:4681 / GROUP_DIRECT_LIMIT   (hash md5:889190d5f6652d91b655cae4e67ba497)
// not bridged: 
Theorem GROUP_DIRECT_LIMIT : forall A:set, A <> Empty -> forall c c= group_hl A, ~ c = Empty /\ (forall g g' :e group_hl A, g :e c /\ g' :e c -> exists G :e group_hl A, G :e c /\ (group_monomorphism A A (g,G) (fun x:set => x) /\ group_monomorphism A A (g',G) (fun x:set => x))) -> exists G :e group_hl A, group_carrier A G = Union {group_carrier A g | g :e group_hl A, g :e c} /\ forall g :e group_hl A, g :e c -> group_monomorphism A A (g,G) (fun x:set => x).
Admitted.

// HOL Light: Library/grouptheory.ml:4751 / group_setinv   (hash md5:45a6c3b6fc751f74083394db663f2b05)
// not bridged: 
Theorem group_setinv_thm : forall A:set, A <> Empty -> forall g c= A, forall G :e group_hl A, group_setinv A G g = {group_inv A G x | x :e A, x :e g}.
Admitted.

// HOL Light: Library/grouptheory.ml:4754 / group_setmul   (hash md5:acfda8ec3c88dc92ec939cc81f54379b)
// not bridged: 
Theorem group_setmul_thm : forall A:set, A <> Empty -> forall g h c= A, forall G :e group_hl A, group_setmul A G g h = \/_ x :e A, {group_mul A G x y | y :e A, x :e g /\ y :e h}.
Admitted.

// HOL Light: Library/grouptheory.ml:4757 / GROUP_SETINV_AS_IMAGE   (hash md5:4fe34591f31a9a874aca834def5b7421)
// not bridged: 
Theorem GROUP_SETINV_AS_IMAGE : forall A:set, A <> Empty -> forall G :e group_hl A, forall x c= A, group_setinv A G x = {group_inv A G x0 | x0 :e x}.
Admitted.

// HOL Light: Library/grouptheory.ml:4761 / SUBGROUP_OF_SETWISE   (hash md5:0445750d778d3c1ffe77761486d08cfa)
// not bridged: 
Theorem SUBGROUP_OF_SETWISE : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_of A s G <-> s c= group_carrier A G /\ (group_id A G :e s /\ (group_setinv A G s c= s /\ group_setmul A G s s c= s)).
Admitted.

// HOL Light: Library/grouptheory.ml:4770 / FINITE_SUBGROUP_OF_SETWISE   (hash md5:bda34af9f69876728faf7aa887c3d8ad)
// not bridged: 
Theorem FINITE_SUBGROUP_OF_SETWISE : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, finite s -> (subgroup_of A s G <-> s c= group_carrier A G /\ (~ s = Empty /\ group_setmul A G s s c= s)).
Admitted.

// HOL Light: Library/grouptheory.ml:4791 / OPPOSITE_GROUP_SETINV   (hash md5:a9af97a11ba81bb6b3fbb63f904a5ef4)
// not bridged: 
Theorem OPPOSITE_GROUP_SETINV : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_setinv A (opposite_group A G) s = group_setinv A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:4796 / OPPOSITE_GROUP_SETMUL   (hash md5:95ab61cda68e888a3cfce5056f8b856d)
// not bridged: 
Theorem OPPOSITE_GROUP_SETMUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, group_setmul A (opposite_group A G) s t = group_setmul A G t s.
Admitted.

// HOL Light: Library/grouptheory.ml:4802 / GROUP_SETINV_EQ_EMPTY   (hash md5:f398fadcbb1c73a00a07096648b89339)
// not bridged: 
Theorem GROUP_SETINV_EQ_EMPTY : forall A:set, A <> Empty -> forall G :e group_hl A, forall g c= A, group_setinv A G g = Empty <-> g = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:4806 / GROUP_SETMUL_EQ_EMPTY   (hash md5:ceef947bce244543e106453548164bde)
// not bridged: 
Theorem GROUP_SETMUL_EQ_EMPTY : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, group_setmul A G g h = Empty <-> g = Empty \/ h = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:4810 / GROUP_SETMUL_EMPTY   (hash md5:e52471e866b3908c2be1722075126f01)
// not bridged: 
Theorem GROUP_SETMUL_EMPTY : forall A:set, A <> Empty -> (forall G :e group_hl A, forall s c= A, group_setmul A G s Empty = Empty) /\ forall G :e group_hl A, forall t c= A, group_setmul A G Empty t = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:4815 / GROUP_SETINV_MONO   (hash md5:239e9e1ad3566d7f86bb1302aba6931e)
// not bridged: 
Theorem GROUP_SETINV_MONO : forall A:set, A <> Empty -> forall G :e group_hl A, forall s s' c= A, s c= s' -> group_setinv A G s c= group_setinv A G s'.
Admitted.

// HOL Light: Library/grouptheory.ml:4820 / GROUP_SETMUL_MONO   (hash md5:750c993ec37e8b5c9b4401d036a3e937)
// not bridged: 
Theorem GROUP_SETMUL_MONO : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t s' t' c= A, s c= s' /\ t c= t' -> group_setmul A G s t c= group_setmul A G s' t'.
Admitted.

// HOL Light: Library/grouptheory.ml:4826 / GROUP_SETMUL_INC_GEN   (hash md5:104f564386988ccef10db0cec5fd2e5e)
// not bridged: 
Theorem GROUP_SETMUL_INC_GEN : forall A:set, (forall G :e group_hl A, forall s t c= A, group_id A G :e s /\ t c= group_carrier A G -> t c= group_setmul A G s t) /\ forall G :e group_hl A, forall s t c= A, s c= group_carrier A G /\ group_id A G :e t -> s c= group_setmul A G s t.
Admitted.

// HOL Light: Library/grouptheory.ml:4839 / GROUP_SETMUL_INC   (hash md5:fc91cd28f59acc05f3b02de102365963)
// not bridged: 
Theorem GROUP_SETMUL_INC : forall A:set, (forall G :e group_hl A, forall s t c= A, subgroup_of A s G /\ subgroup_of A t G -> t c= group_setmul A G s t) /\ forall G :e group_hl A, forall s t c= A, subgroup_of A s G /\ subgroup_of A t G -> s c= group_setmul A G s t.
Admitted.

// HOL Light: Library/grouptheory.ml:4846 / FINITE_GROUP_SETMUL   (hash md5:9815aa6a8e01c8b8a3782908801e7592)
// not bridged: 
Theorem FINITE_GROUP_SETMUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, finite s /\ finite t -> finite (group_setmul A G s t).
Admitted.

// HOL Light: Library/grouptheory.ml:4851 / GROUP_SETMUL_SYM_ELEMENTWISE   (hash md5:987337683ccae0cc30208afb21a7b089)
// not bridged: 
Theorem GROUP_SETMUL_SYM_ELEMENTWISE : forall A:set, forall G :e group_hl A, forall s t u c= A, (forall a :e A, a :e s -> group_setmul A G {a} t = group_setmul A G u {a}) -> group_setmul A G s t = group_setmul A G u s.
Admitted.

// HOL Light: Library/grouptheory.ml:4857 / GROUP_SETINV_SING   (hash md5:65c6a5b50c89c21c4b9b6f37a0646be2)
// not bridged: 
Theorem GROUP_SETINV_SING : forall A:set, forall G :e group_hl A, forall x :e A, group_setinv A G {x} = {group_inv A G x}.
Admitted.

// HOL Light: Library/grouptheory.ml:4861 / GROUP_SETMUL_SING   (hash md5:301069c7a9751324878fb05f1d6fac07)
// not bridged: 
Theorem GROUP_SETMUL_SING : forall A:set, forall G :e group_hl A, forall x y :e A, group_setmul A G {x} {y} = {group_mul A G x y}.
Admitted.

// HOL Light: Library/grouptheory.ml:4865 / GROUP_SETINV   (hash md5:ad22615915a599dcecf1f2cc8fb6a691)
// not bridged: 
Theorem GROUP_SETINV : forall A:set, A <> Empty -> forall G :e group_hl A, forall g c= A, g c= group_carrier A G -> group_setinv A G g c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:4870 / GROUP_SETMUL   (hash md5:1e08414d6986bd1e5926e36f9ea4dd4f)
// not bridged: 
Theorem GROUP_SETMUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, g c= group_carrier A G /\ h c= group_carrier A G -> group_setmul A G g h c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:4876 / GROUP_SETMUL_LID   (hash md5:97482e4905f59075e8a546e0fa28fa0b)
// not bridged: 
Theorem GROUP_SETMUL_LID : forall A:set, A <> Empty -> forall G :e group_hl A, forall g c= A, g c= group_carrier A G -> group_setmul A G {group_id A G} g = g.
Admitted.

// HOL Light: Library/grouptheory.ml:4883 / GROUP_SETMUL_RID   (hash md5:fcc73f7e9a725b6e4c7d765b39915223)
// not bridged: 
Theorem GROUP_SETMUL_RID : forall A:set, A <> Empty -> forall G :e group_hl A, forall g c= A, g c= group_carrier A G -> group_setmul A G g {group_id A G} = g.
Admitted.

// HOL Light: Library/grouptheory.ml:4889 / GROUP_SETMUL_ASSOC   (hash md5:b18924884fc171bb1137dfb1eed0818d)
// not bridged: 
Theorem GROUP_SETMUL_ASSOC : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h i c= A, g c= group_carrier A G /\ (h c= group_carrier A G /\ i c= group_carrier A G) -> group_setmul A G g (group_setmul A G h i) = group_setmul A G (group_setmul A G g h) i.
Admitted.

// HOL Light: Library/grouptheory.ml:4908 / GROUP_SETMUL_SYM   (hash md5:f77081ab516569a5ea8163f79f169c07)
// not bridged: 
Theorem GROUP_SETMUL_SYM : forall A:set, forall G :e group_hl A, forall g h c= A, abelian_group_hl A G /\ (g c= group_carrier A G /\ h c= group_carrier A G) -> group_setmul A G g h = group_setmul A G h g.
Admitted.

// HOL Light: Library/grouptheory.ml:4914 / GROUP_SETINV_SUBGROUP   (hash md5:de3e6f60a22111dcf0531c3814513fff)
// not bridged: 
Theorem GROUP_SETINV_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> group_setinv A G h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:4921 / GROUP_SETMUL_LSUBSET   (hash md5:b88b8133aca51c69da1731ac43adb958)
// not bridged: 
Theorem GROUP_SETMUL_LSUBSET : forall A:set, forall G :e group_hl A, forall h s c= A, subgroup_of A h G /\ (s c= h /\ ~ s = Empty) -> group_setmul A G s h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:4933 / GROUP_SETMUL_RSUBSET   (hash md5:e7632cf3103625e220cee28554f0e814)
// not bridged: 
Theorem GROUP_SETMUL_RSUBSET : forall A:set, forall G :e group_hl A, forall h s c= A, subgroup_of A h G /\ (s c= h /\ ~ s = Empty) -> group_setmul A G h s = h.
Admitted.

// HOL Light: Library/grouptheory.ml:4939 / GROUP_SETMUL_LSUBSET_EQ   (hash md5:d13ef768e7d54b74f34317719fb53392)
// not bridged: 
Theorem GROUP_SETMUL_LSUBSET_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall h s c= A, subgroup_of A h G /\ s c= group_carrier A G -> (group_setmul A G s h = h <-> s c= h /\ ~ s = Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:4954 / GROUP_SETMUL_RSUBSET_EQ   (hash md5:4db6d3066b7ba8a1671d2b3eb0160158)
// not bridged: 
Theorem GROUP_SETMUL_RSUBSET_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall h s c= A, subgroup_of A h G /\ s c= group_carrier A G -> (group_setmul A G h s = h <-> s c= h /\ ~ s = Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:4962 / IMAGE_GROUP_CONJUGATION   (hash md5:b9f9bc79680b7b31261e3ead211e2526)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION : forall A:set, forall G :e group_hl A, forall a :e A, forall s c= A, {group_conjugation A G a x | x :e s} = group_setmul A G {a} (group_setmul A G s {group_inv A G a}).
Admitted.

// HOL Light: Library/grouptheory.ml:4968 / IMAGE_GROUP_CONJUGATION_EQ   (hash md5:c0cc37c0546dcd6a971ba736cf4b0982)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION_EQ : forall A:set, forall G :e group_hl A, forall a :e A, forall s t c= A, a :e group_carrier A G /\ (s c= group_carrier A G /\ t c= group_carrier A G) -> ({group_conjugation A G a x | x :e s} = t <-> group_setmul A G {a} s = group_setmul A G t {a}).
Admitted.

// HOL Light: Library/grouptheory.ml:4982 / GROUP_SETMUL_SUBGROUP   (hash md5:5009b60d255a05b54b40060e4b2be3e0)
// not bridged: 
Theorem GROUP_SETMUL_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> group_setmul A G h h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:4988 / GROUP_SETMUL_LCANCEL   (hash md5:649b20a4989ee35138e70ca3a4cb6e32)
// not bridged: 
Theorem GROUP_SETMUL_LCANCEL : forall A:set, forall G :e group_hl A, forall g h c= A, forall x :e A, x :e group_carrier A G /\ (g c= group_carrier A G /\ h c= group_carrier A G) -> (group_setmul A G {x} g = group_setmul A G {x} h <-> g = h).
Admitted.

// HOL Light: Library/grouptheory.ml:4998 / GROUP_SETMUL_RCANCEL   (hash md5:f1677ac7a04eba656a8fe1d1fbaeef7b)
// not bridged: 
Theorem GROUP_SETMUL_RCANCEL : forall A:set, forall G :e group_hl A, forall g h c= A, forall x :e A, x :e group_carrier A G /\ (g c= group_carrier A G /\ h c= group_carrier A G) -> (group_setmul A G g {x} = group_setmul A G h {x} <-> g = h).
Admitted.

// HOL Light: Library/grouptheory.ml:5006 / GROUP_SETMUL_LCANCEL_SET   (hash md5:1c5f6e8efd86dee9b5d218963c9c1dcb)
// not bridged: 
Theorem GROUP_SETMUL_LCANCEL_SET : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ subgroup_of A h G) -> (group_setmul A G h {x} = group_setmul A G h {y} <-> group_div A G x y :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:5024 / GROUP_SETMUL_RCANCEL_SET   (hash md5:d505c7ce9edf0ccdf035f9a00b4a3abc)
// not bridged: 
Theorem GROUP_SETMUL_RCANCEL_SET : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ subgroup_of A h G) -> (group_setmul A G {x} h = group_setmul A G {y} h <-> group_mul A G (group_inv A G x) y :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:5034 / SUBGROUP_SETMUL_EQ   (hash md5:495ac701176edd34de2c3c3ecc4e5afe)
// not bridged: 
Theorem SUBGROUP_SETMUL_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> (subgroup_of A (group_setmul A G g h) G <-> group_setmul A G g h = group_setmul A G h g).
Admitted.

// HOL Light: Library/grouptheory.ml:5094 / SUBGROUP_SETMUL   (hash md5:e1dafa9952de1304f78e57d87dfe897b)
// not bridged: 
Theorem SUBGROUP_SETMUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, abelian_group_hl A G /\ (subgroup_of A g G /\ subgroup_of A h G) -> subgroup_of A (group_setmul A G g h) G.
Admitted.

// HOL Light: Library/grouptheory.ml:5100 / SUBGROUP_GENERATED_SETMUL   (hash md5:2e298865b9c62b9b8a41ba1d21a2bdb6)
// not bridged: 
Theorem SUBGROUP_GENERATED_SETMUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> subgroup_generated A G (group_setmul A G g h) = subgroup_generated A G (g :\/: h).
Admitted.

// HOL Light: Library/grouptheory.ml:5123 / CARRIER_SUBGROUP_GENERATED_UNION   (hash md5:a8cec8dc107c4ce45d02602081e994f9)
// not bridged: 
Theorem CARRIER_SUBGROUP_GENERATED_UNION : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ (subgroup_of A h G /\ group_setmul A G g h = group_setmul A G h g) -> group_carrier A (subgroup_generated A G (g :\/: h)) = group_setmul A G g h.
Admitted.

// HOL Light: Library/grouptheory.ml:5136 / group_action   (hash md5:0cda23e7bb7043abd86c3b3cf1ef361a)
// not bridged: 
Theorem group_action_thm : forall A X:set, A <> Empty -> X <> Empty -> forall s c= X, forall G :e group_hl A, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> (group_action_hl A X G s a <-> (forall g :e A, forall x :e X, g :e group_carrier A G /\ x :e s -> a g x :e s) /\ ((forall x :e X, x :e s -> a (group_id A G) x = x) /\ forall g h :e A, forall x :e X, g :e group_carrier A G /\ (h :e group_carrier A G /\ x :e s) -> a (group_mul A G g h) x = a g (a h x))).
Admitted.

// HOL Light: Library/grouptheory.ml:5143 / GROUP_ACTION_ALT   (hash md5:614269bd79abe3a713baa6efa451059a)
// not bridged: 
Theorem GROUP_ACTION_ALT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> (group_action_hl A X G s a <-> (forall g :e A, forall x :e X, g :e group_carrier A G /\ x :e s -> a g x :e s) /\ ((forall x :e X, x :e s -> a (group_id A G) x = x) /\ forall g h :e A, forall x :e X, g :e group_carrier A G /\ (h :e group_carrier A G /\ x :e s) -> a g (a h x) = a (group_mul A G g h) x)).
Admitted.

// HOL Light: Library/grouptheory.ml:5152 / GROUP_ACTION_MUL   (hash md5:88d9ca9e01df8e732dc87e4abf08ea38)
// not bridged: 
Theorem GROUP_ACTION_MUL : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall g h :e A, forall x :e X, group_action_hl A X G s a /\ (g :e group_carrier A G /\ (h :e group_carrier A G /\ x :e s)) -> a g (a h x) = a (group_mul A G g h) x.
Admitted.

// HOL Light: Library/grouptheory.ml:5161 / GROUP_ACTION_LINV   (hash md5:73804b9d3117e0bc474f6c02e96479ca)
// not bridged: 
Theorem GROUP_ACTION_LINV : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall g :e A, forall x :e X, group_action_hl A X G s a /\ (g :e group_carrier A G /\ x :e s) -> a (group_inv A G g) (a g x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:5167 / GROUP_ACTION_RINV   (hash md5:a1e4c6a640bfff6447c9e6f2d40b2ba3)
// not bridged: 
Theorem GROUP_ACTION_RINV : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall g :e A, forall x :e X, group_action_hl A X G s a /\ (g :e group_carrier A G /\ x :e s) -> a g (a (group_inv A G g) x) = x.
Admitted.

// HOL Light: Library/grouptheory.ml:5173 / GROUP_ACTION_BIJECTIVE   (hash md5:67cfe96d9264870f7ec849c8841ffacd)
// not bridged: 
Theorem GROUP_ACTION_BIJECTIVE : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall g :e A, group_action_hl A X G s a /\ g :e group_carrier A G -> forall y :e X, y :e s -> exists x :e X, x :e s /\ a g x = y /\ forall y0 :e X, y0 :e s /\ a g y0 = y -> y0 = x.
Admitted.

// HOL Light: Library/grouptheory.ml:5179 / GROUP_ACTION_SURJECTIVE   (hash md5:e4133e5957240c9b798ed657b5d89854)
// not bridged: 
Theorem GROUP_ACTION_SURJECTIVE : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall g :e A, forall y :e X, group_action_hl A X G s a /\ (g :e group_carrier A G /\ y :e s) -> exists x :e X, a g x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:5185 / GROUP_ACTION_INJECTIVE   (hash md5:e42554b6bf808c49474bd180e6981318)
// not bridged: 
Theorem GROUP_ACTION_INJECTIVE : forall A X:set, forall g :e A, forall x y :e X, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x0 :e A, forall y0 :e X, a x0 y0 :e X) -> group_action_hl A X G s a /\ (g :e group_carrier A G /\ (x :e s /\ y :e s)) -> (a g x = a g y <-> x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:5191 / GROUP_ACTION_ON_SUBSET   (hash md5:2e2f8e48dbc46009e6a923301ad4be1d)
// not bridged: 
Theorem GROUP_ACTION_ON_SUBSET : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s t c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> group_action_hl A X G s a /\ (t c= s /\ (forall g :e A, forall x :e X, g :e group_carrier A G /\ x :e t -> a g x :e t)) -> group_action_hl A X G t a.
Admitted.

// HOL Light: Library/grouptheory.ml:5199 / GROUP_ACTION_FROM_SUBGROUP   (hash md5:9a20e2e5791236aaf498fce5d0b049b8)
// not bridged: 
Theorem GROUP_ACTION_FROM_SUBGROUP : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall h c= A, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> group_action_hl A X G s a -> group_action_hl A X (subgroup_generated A G h) s a.
Admitted.

// HOL Light: Library/grouptheory.ml:5207 / GROUP_ACTIONS_EQ_ON_GENERATORS   (hash md5:109a384d2904c6d3796871dadfdb34fb)
// not bridged: 
Theorem GROUP_ACTIONS_EQ_ON_GENERATORS : forall A X:set, forall G :e group_hl A, forall t c= A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall a':set -> set -> set, (forall x :e A, forall y :e X, a' x y :e X) -> group_action_hl A X G s a /\ (group_action_hl A X G s a' /\ (forall g :e A, forall x :e X, g :e group_carrier A G /\ (g :e t /\ x :e s) -> a g x = a' g x)) -> forall g :e A, forall x :e X, g :e group_carrier A (subgroup_generated A G t) /\ x :e s -> a g x = a' g x.
Admitted.

// HOL Light: Library/grouptheory.ml:5231 / GROUP_ACTION_IMAGE   (hash md5:9b66c200319904d80b525a14ece0df4e)
// not bridged: 
Theorem GROUP_ACTION_IMAGE : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall u c= Power X, forall s c= X, forall a :e X :^: X :^: A, group_action_hl A X G s (fun x:set => fun x0:set => a x x0) /\ ((forall t c= X, t :e u -> t c= s) /\ (forall g :e A, forall t c= X, g :e group_carrier A G /\ t :e u -> {a g x | x :e t} :e u)) -> group_action_hl A (Power X) G u (fun x:set => fun x0:set => (fun x0 :e Power X => {x1 :e X | x1 :e {a x x1 | x1 :e x0}}) x0).
Admitted.

// HOL Light: Library/grouptheory.ml:5239 / GROUP_ACTION_IMAGE_SIZED   (hash md5:4b10ee14baf17808d35546ec322e886b)
// not bridged: 
Theorem GROUP_ACTION_IMAGE_SIZED : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall k :e omega, forall a :e X :^: X :^: A, group_action_hl A X G s (fun x:set => fun x0:set => a x x0) -> group_action_hl A (Power X) G {t :e Power X | t c= s /\ equip t k} (fun x:set => fun x0:set => (fun x0 :e Power X => {x1 :e X | x1 :e {a x x1 | x1 :e x0}}) x0).
Admitted.

// HOL Light: Library/grouptheory.ml:5250 / group_stabilizer   (hash md5:291880b986967e55f569f9e5e795e5b0)
// not bridged: 
Theorem group_stabilizer_thm : forall A X:set, A <> Empty -> forall G :e group_hl A, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_stabilizer A X G a x = {g :e A | g :e group_carrier A G /\ a g x = x}.
Admitted.

// HOL Light: Library/grouptheory.ml:5253 / GROUP_STABILIZER_SUBSET_CARRIER   (hash md5:dace2fe24a17be8d328bb8477ae8aa63)
// not bridged: 
Theorem GROUP_STABILIZER_SUBSET_CARRIER : forall A B:set, B <> Empty -> forall G :e group_hl B, forall a:set -> set -> set, (forall x :e B, forall y :e A, a x y :e A) -> forall x :e A, group_stabilizer B A G a x c= group_carrier B G.
Admitted.

// HOL Light: Library/grouptheory.ml:5257 / FINITE_GROUP_STABILIZER   (hash md5:eaa755a3c3fc2503e44e6a4688efe5b9)
// not bridged: 
Theorem FINITE_GROUP_STABILIZER : forall A X:set, A <> Empty -> forall G :e group_hl A, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, finite (group_carrier A G) -> finite (group_stabilizer A X G a x).
Admitted.

// HOL Light: Library/grouptheory.ml:5262 / SUBGROUP_OF_GROUP_STABILIZER   (hash md5:a5c441cee3356cbd48c42413681067a0)
// not bridged: 
Theorem SUBGROUP_OF_GROUP_STABILIZER : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a /\ x :e s -> subgroup_of A (group_stabilizer A X G a x) G.
Admitted.

// HOL Light: Library/grouptheory.ml:5269 / GROUP_STABILIZER_NONEMPTY   (hash md5:d5ab039904b1c882007397608010d02c)
// not bridged: 
Theorem GROUP_STABILIZER_NONEMPTY : forall A X:set, A <> Empty -> forall G :e group_hl A, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall s c= X, forall x :e X, group_action_hl A X G s a /\ x :e s -> ~ group_stabilizer A X G a x = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:5276 / GROUP_STABILIZER_SUBGROUP_GENERATED   (hash md5:db24de50250bb41eb26644e882a5e6b0)
// not bridged: 
Theorem GROUP_STABILIZER_SUBGROUP_GENERATED : forall A X:set, A <> Empty -> forall G :e group_hl A, forall h c= A, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_stabilizer A X (subgroup_generated A G h) a x = group_carrier A (subgroup_generated A G h) :/\: group_stabilizer A X G a x.
Admitted.

// HOL Light: Library/grouptheory.ml:5283 / GROUP_STABILIZER_ON_SUBGROUP   (hash md5:a16d5585b454cd4c13f5fa0dc415dbd9)
// not bridged: 
Theorem GROUP_STABILIZER_ON_SUBGROUP : forall A X:set, A <> Empty -> forall G :e group_hl A, forall h c= A, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, subgroup_of A h G -> group_stabilizer A X (subgroup_generated A G h) a x = h :/\: group_stabilizer A X G a x.
Admitted.

// HOL Light: Library/grouptheory.ml:5291 / GROUP_ACTION_KERNEL_POINTWISE   (hash md5:36578e83cfad340c656a248cbf8dd3e0)
// not bridged: 
Theorem GROUP_ACTION_KERNEL_POINTWISE : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> {g :e A | g :e group_carrier A G /\ forall x :e X, x :e s -> a g x = x} = if s = Empty then group_carrier A G else {x :e A | forall Y :e {group_stabilizer A X G a x | x :e X, x :e s}, x :e Y}.
Admitted.

// HOL Light: Library/grouptheory.ml:5299 / GROUP_ACTION_EQ   (hash md5:b23a418036c727940b9198a202761fb5)
// not bridged: 
Theorem GROUP_ACTION_EQ : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall g h :e A, forall x :e X, group_action_hl A X G s a /\ (g :e group_carrier A G /\ (h :e group_carrier A G /\ x :e s)) -> (a g x = a h x <-> group_mul A G (group_inv A G g) h :e group_stabilizer A X G a x).
Admitted.

// HOL Light: Library/grouptheory.ml:5315 / GROUP_ACTION_FIBRES   (hash md5:acf813cc2deeb375db6bd56ca856434f)
// not bridged: 
Theorem GROUP_ACTION_FIBRES : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall h :e A, forall x :e X, group_action_hl A X G s a /\ (h :e group_carrier A G /\ x :e s) -> {g :e A | g :e group_carrier A G /\ a g x = a h x} = {group_mul A G h x0 | x0 :e group_stabilizer A X G a x}.
Admitted.

// HOL Light: Library/grouptheory.ml:5330 / group_orbit   (hash md5:058a9967872c6788dad756c8f0c2e0cd)
// not bridged: 
Theorem group_orbit_thm : forall A X:set, A <> Empty -> forall s c= X, forall G :e group_hl A, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_orbit A X G s a x y <-> x :e s /\ (y :e s /\ exists g :e A, g :e group_carrier A G /\ a g x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:5334 / GROUP_ORBIT_IN_SET   (hash md5:646df3db99f2fb662fbb28a4389f5950)
// not bridged: 
Theorem GROUP_ORBIT_IN_SET : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_orbit A X G s a x y -> x :e s /\ y :e s.
Admitted.

// HOL Light: Library/grouptheory.ml:5339 / IN_GROUP_ORBIT   (hash md5:95c5188d6aac957a3f02ace59e85b71d)
// not bridged: 
Theorem IN_GROUP_ORBIT : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, y :e {x0 :e X | group_orbit A X G s a x x0} <-> x :e s /\ (y :e s /\ exists g :e A, g :e group_carrier A G /\ a g x = y).
Admitted.

// HOL Light: Library/grouptheory.ml:5346 / GROUP_ORBIT   (hash md5:3906b4212b03442d8bd1c716b84da331)
// not bridged: 
Theorem GROUP_ORBIT : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a -> forall x0 :e X, group_orbit A X G s a x x0 <-> (x :e s -> x0 :e {a g x | g :e A, g :e group_carrier A G}) /\ (~ x :e s -> x0 :e Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:5356 / GROUP_ORBIT_SUBSET   (hash md5:f157202f5c827cba196e76483b9859d2)
// not bridged: 
Theorem GROUP_ORBIT_SUBSET : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, {x0 :e X | group_orbit A X G s a x x0} c= s.
Admitted.

// HOL Light: Library/grouptheory.ml:5361 / GROUP_ORBIT_ON_SUBSET   (hash md5:9f7109a693495d959156d4f4873b2d46)
// not bridged: 
Theorem GROUP_ORBIT_ON_SUBSET : forall A X:set, A <> Empty -> forall x :e X, forall G :e group_hl A, forall s t c= X, forall a:set -> set -> set, (forall x0 :e A, forall y :e X, a x0 y :e X) -> t c= s /\ x :e t -> forall x0 :e X, group_orbit A X G t a x x0 <-> x0 :e t :/\: {x1 :e X | group_orbit A X G s a x x1}.
Admitted.

// HOL Light: Library/grouptheory.ml:5369 / FINITE_GROUP_ORBIT   (hash md5:02fdedf1eec840e5e9799c1829b8dccc)
// not bridged: 
Theorem FINITE_GROUP_ORBIT : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, finite (group_carrier A G) \/ finite s -> finite {x0 :e X | group_orbit A X G s a x x0}.
Admitted.

// HOL Light: Library/grouptheory.ml:5379 / GROUP_ORBIT_REFL_EQ   (hash md5:a6cafadbd40fd5c5a5e64c370e9e90ef)
// not bridged: 
Theorem GROUP_ORBIT_REFL_EQ : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a -> (group_orbit A X G s a x x <-> x :e s).
Admitted.

// HOL Light: Library/grouptheory.ml:5384 / GROUP_ORBIT_REFL   (hash md5:fc41d3a5012703e75d4d4e7f79b0eacc)
// not bridged: 
Theorem GROUP_ORBIT_REFL : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a /\ x :e s -> group_orbit A X G s a x x.
Admitted.

// HOL Light: Library/grouptheory.ml:5390 / IN_GROUP_ORBIT_SELF   (hash md5:661a55687b0d615da399fd439585b4b8)
// not bridged: 
Theorem IN_GROUP_ORBIT_SELF : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a /\ x :e s -> x :e {x0 :e X | group_orbit A X G s a x x0}.
Admitted.

// HOL Light: Library/grouptheory.ml:5396 / GROUP_ORBIT_EMPTY   (hash md5:5dcd83e6e77387b29672320f75477955)
// not bridged: 
Theorem GROUP_ORBIT_EMPTY : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, ~ x :e s -> forall x0 :e X, group_orbit A X G s a x x0 <-> x0 :e Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:5400 / GROUP_ORBIT_EQ_EMPTY   (hash md5:c200432fc3f8d89b8531358e814a3ba5)
// not bridged: 
Theorem GROUP_ORBIT_EQ_EMPTY : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a -> ((forall x0 :e X, group_orbit A X G s a x x0 <-> x0 :e Empty) <-> ~ x :e s).
Admitted.

// HOL Light: Library/grouptheory.ml:5407 / GROUP_ORBIT_SYM_EQ   (hash md5:0f4338688b7ea0c6ca1c161367b96e71)
// not bridged: 
Theorem GROUP_ORBIT_SYM_EQ : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_action_hl A X G s a -> (group_orbit A X G s a x y <-> group_orbit A X G s a y x).
Admitted.

// HOL Light: Library/grouptheory.ml:5414 / GROUP_ORBIT_SYM   (hash md5:908a7704ea09e2f4285d1e91969d9cb1)
// not bridged: 
Theorem GROUP_ORBIT_SYM : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_action_hl A X G s a /\ group_orbit A X G s a x y -> group_orbit A X G s a y x.
Admitted.

// HOL Light: Library/grouptheory.ml:5420 / GROUP_ORBIT_TRANS   (hash md5:b322b53bf9ba022cef33e19d9a9f3bb2)
// not bridged: 
Theorem GROUP_ORBIT_TRANS : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y z :e X, group_action_hl A X G s a /\ (group_orbit A X G s a x y /\ group_orbit A X G s a y z) -> group_orbit A X G s a x z.
Admitted.

// HOL Light: Library/grouptheory.ml:5427 / GROUP_ORBIT_EQ   (hash md5:475f3ce4449113746e285f9c2fc18a42)
// not bridged: 
Theorem GROUP_ORBIT_EQ : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_action_hl A X G s a /\ (x :e s /\ y :e s) -> ((forall x0 :e X, group_orbit A X G s a x x0 <-> group_orbit A X G s a y x0) <-> group_orbit A X G s a x y).
Admitted.

// HOL Light: Library/grouptheory.ml:5435 / CLOSED_GROUP_ORBIT   (hash md5:9c608e02b907834ecaa7958a83f9cbbf)
// not bridged: 
Theorem CLOSED_GROUP_ORBIT : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, forall g :e A, group_action_hl A X G s a /\ g :e group_carrier A G -> {a g x0 | x0 :e {x0 :e X | group_orbit A X G s a x x0}} c= {x0 :e X | group_orbit A X G s a x x0}.
Admitted.

// HOL Light: Library/grouptheory.ml:5443 / GROUP_ORBIT_EQ_SING   (hash md5:333ba25c2db6366b18e80be94bd9509b)
// not bridged: 
Theorem GROUP_ORBIT_EQ_SING : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_action_hl A X G s a -> ((forall x0 :e X, group_orbit A X G s a y x0 <-> x0 :e SetAdjoin Empty x) <-> x :e s /\ (y = x /\ forall g :e A, g :e group_carrier A G -> a g x = x)).
Admitted.

// HOL Light: Library/grouptheory.ml:5454 / GROUP_ORBIT_EQ_SING_SELF   (hash md5:0606b40dbb3c7872b2e40cc4a9d31c20)
// not bridged: 
Theorem GROUP_ORBIT_EQ_SING_SELF : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a -> ((forall x0 :e X, group_orbit A X G s a x x0 <-> x0 :e SetAdjoin Empty x) <-> x :e s /\ forall g :e A, g :e group_carrier A G -> a g x = x).
Admitted.

// HOL Light: Library/grouptheory.ml:5461 / GROUP_ORBIT_HAS_SIZE_1   (hash md5:8cf8ce4a2aebccaed34cb1b5cc215d6a)
// not bridged: 
Theorem GROUP_ORBIT_HAS_SIZE_1 : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a -> (equip {x0 :e X | group_orbit A X G s a x x0} 1 <-> x :e s /\ forall g :e A, g :e group_carrier A G -> a g x = x).
Admitted.

// HOL Light: Library/grouptheory.ml:5469 / GROUP_ACTION_INVARIANT_SUBSET   (hash md5:73ee831410d0dbe1fc26ddc241a0f027)
// not bridged: 
Theorem GROUP_ACTION_INVARIANT_SUBSET : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall t c= X, group_action_hl A X G s a /\ t c= s -> ((forall g :e A, g :e group_carrier A G -> {a g x | x :e t} c= t) <-> forall g :e A, g :e group_carrier A G -> {a g x | x :e t} = t).
Admitted.

// HOL Light: Library/grouptheory.ml:5484 / GROUP_ACTION_CLOSED   (hash md5:c5119761d55036aa41917d28f30234ee)
// not bridged: 
Theorem GROUP_ACTION_CLOSED : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall g :e A, group_action_hl A X G s a /\ g :e group_carrier A G -> {a g x | x :e s} c= s.
Admitted.

// HOL Light: Library/grouptheory.ml:5490 / GROUP_ACTION_INVARIANT   (hash md5:876a4f75c1491907c0cec1dedf36f95b)
// not bridged: 
Theorem GROUP_ACTION_INVARIANT : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall g :e A, group_action_hl A X G s a /\ g :e group_carrier A G -> {a g x | x :e s} = s.
Admitted.

// HOL Light: Library/grouptheory.ml:5496 / INVARIANT_GROUP_ORBIT   (hash md5:cd371df81fe2b56469fc862287a52078)
// not bridged: 
Theorem INVARIANT_GROUP_ORBIT : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, forall g :e A, group_action_hl A X G s a /\ g :e group_carrier A G -> forall x0 :e X, x0 :e {a g x0 | x0 :e {x1 :e X | group_orbit A X G s a x x1}} <-> group_orbit A X G s a x x0.
Admitted.

// HOL Light: Library/grouptheory.ml:5503 / SUBSET_GROUP_ORBIT_CLOSED   (hash md5:48cfa9ba5eb678b09fda87da77399b9c)
// not bridged: 
Theorem SUBSET_GROUP_ORBIT_CLOSED : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, forall t c= X, group_action_hl A X G s a /\ (t c= s /\ (forall g :e A, g :e group_carrier A G -> {a g x | x :e t} c= t)) -> ({x0 :e X | group_orbit A X G s a x x0} c= t <-> x :e s -> ~ {x0 :e X | group_orbit A X G s a x x0} :/\: t = Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:5524 / SUBSET_GROUP_ORBIT_INVARIANT   (hash md5:90f99cf66045f4179c0b56610365a94e)
// not bridged: 
Theorem SUBSET_GROUP_ORBIT_INVARIANT : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, forall t c= X, group_action_hl A X G s a /\ (t c= s /\ (forall g :e A, g :e group_carrier A G -> {a g x | x :e t} = t)) -> ({x0 :e X | group_orbit A X G s a x x0} c= t <-> x :e s -> ~ {x0 :e X | group_orbit A X G s a x x0} :/\: t = Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:5533 / GROUP_ORBITS_EQ   (hash md5:b26b00c016eaaa095e6a2d757afcb5d9)
// not bridged: 
Theorem GROUP_ORBITS_EQ : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_action_hl A X G s a /\ (x :e s /\ y :e s) -> ((forall x0 :e X, group_orbit A X G s a x x0 <-> group_orbit A X G s a y x0) <-> ~ {x0 :e X | group_orbit A X G s a x x0} :/\: {x0 :e X | group_orbit A X G s a y x0} = Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:5541 / DISJOINT_GROUP_ORBITS   (hash md5:351786553fd9b046fd6c730872d6cafd)
// not bridged: 
Theorem DISJOINT_GROUP_ORBITS : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_action_hl A X G s a /\ (x :e s /\ y :e s) -> ({x0 :e X | group_orbit A X G s a x x0} :/\: {x0 :e X | group_orbit A X G s a y x0} = Empty <-> ~ forall x0 :e X, group_orbit A X G s a x x0 <-> group_orbit A X G s a y x0).
Admitted.

// HOL Light: Library/grouptheory.ml:5548 / PAIRWISE_DISJOINT_GROUP_ORBITS   (hash md5:605e577880d30fa458e33e5428c288eb)
// not bridged: 
Theorem PAIRWISE_DISJOINT_GROUP_ORBITS : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> group_action_hl A X G s a -> forall x y :e {{x0 :e X | group_orbit A X G s a x x0} | x :e X, x :e s}, x <> y -> x :/\: y = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:5555 / UNIONS_GROUP_ORBITS_CLOSED   (hash md5:9eb7a8f5f6fb98119db9157a9bf98b0e)
// not bridged: 
Theorem UNIONS_GROUP_ORBITS_CLOSED : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall t c= X, group_action_hl A X G s a /\ (t c= s /\ (forall g :e A, g :e group_carrier A G -> {a g x | x :e t} c= t)) -> Union {{x0 :e X | group_orbit A X G s a x x0} | x :e X, x :e t} = t.
Admitted.

// HOL Light: Library/grouptheory.ml:5568 / UNIONS_GROUP_ORBITS_INVARIANT   (hash md5:5ca744e21c0ad102bfdb8c893ac33c33)
// not bridged: 
Theorem UNIONS_GROUP_ORBITS_INVARIANT : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall t c= X, group_action_hl A X G s a /\ (t c= s /\ (forall g :e A, g :e group_carrier A G -> {a g x | x :e t} = t)) -> Union {{x0 :e X | group_orbit A X G s a x x0} | x :e X, x :e t} = t.
Admitted.

// HOL Light: Library/grouptheory.ml:5576 / UNIONS_GROUP_ORBITS   (hash md5:7b17f10d891e8ecc8c8d12beafbafe08)
// not bridged: 
Theorem UNIONS_GROUP_ORBITS : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> group_action_hl A X G s a -> Union {{x0 :e X | group_orbit A X G s a x x0} | x :e X, x :e s} = s.
Admitted.

// HOL Light: Library/grouptheory.ml:5583 / NSUM_CARD_GROUP_ORBITS   (hash md5:3d961be62c7d243461baee831bd85fd0)
// not bridged: 
Theorem NSUM_CARD_GROUP_ORBITS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> group_action_hl A X G s a /\ finite s -> finsum {{x0 :e X | group_orbit A X G s a x x0} | x :e X, x :e s} (fun x:set => finite_cardinality x) = finite_cardinality s.
Admitted.

// HOL Light: Library/grouptheory.ml:5595 / ORBIT_STABILIZER_MUL_GEN   (hash md5:dbbceaf1323430fb89c2fc1e3769a888)
// not bridged: 
Theorem ORBIT_STABILIZER_MUL_GEN : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a /\ x :e s -> equip ({x0 :e X | group_orbit A X G s a x x0} :*: group_stabilizer A X G a x) (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:5608 / ORBIT_STABILIZER_MUL   (hash md5:ec149b5a955937411d0ea6413b565197)
// not bridged: 
Theorem ORBIT_STABILIZER_MUL : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, finite (group_carrier A G) /\ (group_action_hl A X G s a /\ x :e s) -> finite_cardinality {x0 :e X | group_orbit A X G s a x x0} * finite_cardinality (group_stabilizer A X G a x) = finite_cardinality (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:5618 / CARD_GROUP_ORBIT_DIVIDES   (hash md5:8f8bec8ed6084c96503b12c2b75033ab)
// not bridged: 
Theorem CARD_GROUP_ORBIT_DIVIDES : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, finite (group_carrier A G) /\ (group_action_hl A X G s a /\ x :e s) -> divides_nat (finite_cardinality {x0 :e X | group_orbit A X G s a x x0}) (finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:5626 / CARD_GROUP_STABILIZER_DIVIDES   (hash md5:f2cd67c12ca937858300ec4493509bb3)
// not bridged: 
Theorem CARD_GROUP_STABILIZER_DIVIDES : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, finite (group_carrier A G) /\ (group_action_hl A X G s a /\ x :e s) -> divides_nat (finite_cardinality (group_stabilizer A X G a x)) (finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:5634 / GROUP_STABILIZER_OF_ACTION   (hash md5:0f66b0b0cb631c12b8c82adfe8b376aa)
// not bridged: 
Theorem GROUP_STABILIZER_OF_ACTION : forall A X:set, forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall g :e A, forall x :e X, group_action_hl A X G s a /\ (g :e group_carrier A G /\ x :e s) -> group_stabilizer A X G a (a g x) = {group_conjugation A G g x0 | x0 :e group_stabilizer A X G a x}.
Admitted.

// HOL Light: Library/grouptheory.ml:5656 / GROUP_ACTION_SUBGROUP_TRANSLATION   (hash md5:f65b7e33a770f7f943bcd7d247d94de6)
// not bridged: 
Theorem GROUP_ACTION_SUBGROUP_TRANSLATION : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, group_action_hl A A (subgroup_generated A G h) (group_carrier A G) (group_mul A G).
Admitted.

// HOL Light: Library/grouptheory.ml:5665 / GROUP_STABILIZER_SUBGROUP_TRANSLATION   (hash md5:36d257bf5cceece23735f270807846a2)
// not bridged: 
Theorem GROUP_STABILIZER_SUBGROUP_TRANSLATION : forall A:set, forall G :e group_hl A, forall h c= A, forall a :e A, subgroup_of A h G /\ a :e group_carrier A G -> group_stabilizer A A (subgroup_generated A G h) (group_mul A G) a = {group_id A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:5678 / GROUP_ACTION_GROUP_TRANSLATION   (hash md5:d901026be00796e06a7757f6b6dc7955)
// not bridged: 
Theorem GROUP_ACTION_GROUP_TRANSLATION : forall A:set, A <> Empty -> forall G :e group_hl A, group_action_hl A A G (group_carrier A G) (group_mul A G).
Admitted.

// HOL Light: Library/grouptheory.ml:5683 / GROUP_STABILIZER_GROUP_TRANSLATION   (hash md5:3536d35ef7123721f7a39f15f594adb6)
// not bridged: 
Theorem GROUP_STABILIZER_GROUP_TRANSLATION : forall A:set, forall G :e group_hl A, forall a :e A, a :e group_carrier A G -> group_stabilizer A A G (group_mul A G) a = {group_id A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:5692 / GROUP_ACTION_SUBSET_TRANSLATION   (hash md5:08d271f64473201be8fa500ad7f46720)
// not bridged: 
Theorem GROUP_ACTION_SUBSET_TRANSLATION : forall A:set, A <> Empty -> forall G :e group_hl A, forall u c= Power A, (forall s c= A, s :e u -> s c= group_carrier A G) /\ (forall a :e A, forall s c= A, a :e group_carrier A G /\ s :e u -> {group_mul A G a x | x :e s} :e u) -> group_action_hl A (Power A) G u (fun x:set => fun x0:set => (fun x0 :e Power A => {x1 :e A | x1 :e {(fun x0 :e A => group_mul A G x x0) x1 | x1 :e x0}}) x0).
Admitted.

// HOL Light: Library/grouptheory.ml:5700 / GROUP_ACTION_CONJUGATION   (hash md5:ab6ce09b8c4719c67efbf021406f8cad)
// not bridged: 
Theorem GROUP_ACTION_CONJUGATION : forall A:set, A <> Empty -> forall G :e group_hl A, group_action_hl A A G (group_carrier A G) (group_conjugation A G).
Admitted.

// HOL Light: Library/grouptheory.ml:5706 / CARD_GROUP_SETMUL_GEN   (hash md5:8eaaac836df4d8779a45779726bf3b85)
// not bridged: 
Theorem CARD_GROUP_SETMUL_GEN : forall A:set, forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> equip (group_setmul A G g h :*: g :/\: h) (g :*: h).
Admitted.

// HOL Light: Library/grouptheory.ml:5766 / CARD_GROUP_SETMUL_MUL   (hash md5:af165f82450a832cb418fa2b2950472c)
// not bridged: 
Theorem CARD_GROUP_SETMUL_MUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, finite g /\ (finite h /\ (subgroup_of A g G /\ subgroup_of A h G)) -> finite_cardinality (group_setmul A G g h) * finite_cardinality (g :/\: h) = finite_cardinality g * finite_cardinality h.
Admitted.

// HOL Light: Library/grouptheory.ml:5776 / CARD_GROUP_SETMUL   (hash md5:56c636455e1a69334505d0229f0c64db)
// not bridged: 
Theorem CARD_GROUP_SETMUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, finite g /\ (finite h /\ (subgroup_of A g G /\ subgroup_of A h G)) -> finite_cardinality (group_setmul A G g h) = div_nat (finite_cardinality g * finite_cardinality h) (finite_cardinality (g :/\: h)).
Admitted.

// HOL Light: Library/grouptheory.ml:5787 / CARD_GROUP_SETMUL_DIVIDES   (hash md5:63d7ebed973ca8ec84db60833867c3ea)
// not bridged: 
Theorem CARD_GROUP_SETMUL_DIVIDES : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, finite g /\ (finite h /\ (subgroup_of A g G /\ subgroup_of A h G)) -> divides_nat (finite_cardinality (group_setmul A G g h)) (finite_cardinality g * finite_cardinality h).
Admitted.

// HOL Light: Library/grouptheory.ml:5794 / GROUP_ORBIT_COMMON_DIVISOR   (hash md5:633e24ba37dc3172e9ffa98bffe6fdda)
// not bridged: 
Theorem GROUP_ORBIT_COMMON_DIVISOR : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall n :e omega, group_action_hl A X G s a /\ (finite s /\ (forall x :e X, x :e s -> divides_nat n (finite_cardinality {x0 :e X | group_orbit A X G s a x x0}))) -> divides_nat n (finite_cardinality s).
Admitted.

// HOL Light: Library/grouptheory.ml:5809 / GROUP_ORBIT_COMMON_INDEX   (hash md5:293b784192fd18e057f12a2981a28e08)
// not bridged: 
Theorem GROUP_ORBIT_COMMON_INDEX : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall p k :e omega, group_action_hl A X G s a /\ (finite s /\ ((s = Empty -> k = 0) /\ (forall x :e X, x :e s -> k <= prime_index p (finite_cardinality {x0 :e X | group_orbit A X G s a x x0})))) -> k <= prime_index p (finite_cardinality s).
Admitted.

// HOL Light: Library/grouptheory.ml:5825 / right_coset   (hash md5:7214122b86d22c9ee73ce0f1dedeef07)
// not bridged: 
Theorem right_coset_thm : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, right_coset_hl A G h x = group_setmul A G h {x}.
Admitted.

// HOL Light: Library/grouptheory.ml:5828 / left_coset   (hash md5:1303ad4e4e4826f96482dc41f4ad094c)
// not bridged: 
Theorem left_coset_thm : forall A:set, forall G :e group_hl A, forall x :e A, forall h c= A, left_coset_hl A G x h = group_setmul A G {x} h.
Admitted.

// HOL Light: Library/grouptheory.ml:5831 / LEFT_COSET_AS_IMAGE   (hash md5:547658179f7a9bf44ff361583da4e46a)
// not bridged: 
Theorem LEFT_COSET_AS_IMAGE : forall A:set, forall G :e group_hl A, forall x :e A, forall h c= A, left_coset_hl A G x h = {group_mul A G x x0 | x0 :e h}.
Admitted.

// HOL Light: Library/grouptheory.ml:5835 / RIGHT_COSET   (hash md5:0088550f765c025117d75b04f0b5c7d3)
// not bridged: 
Theorem RIGHT_COSET : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, x :e group_carrier A G /\ h c= group_carrier A G -> right_coset_hl A G h x c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:5841 / LEFT_COSET   (hash md5:968460dc0711e9373e11299c9acf389f)
// not bridged: 
Theorem LEFT_COSET : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, x :e group_carrier A G /\ h c= group_carrier A G -> left_coset_hl A G x h c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:5847 / IN_RIGHT_COSET   (hash md5:29a7d14fe0619543b50d6d33e4a1115f)
// not bridged: 
Theorem IN_RIGHT_COSET : forall A:set, forall G :e group_hl A, forall h c= A, forall x a :e A, h c= group_carrier A G /\ (a :e group_carrier A G /\ x :e group_carrier A G) -> (x :e right_coset_hl A G h a <-> group_mul A G x (group_inv A G a) :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:5862 / IN_LEFT_COSET   (hash md5:e3df7b388b8c3aeefa827cbe31196b62)
// not bridged: 
Theorem IN_LEFT_COSET : forall A:set, forall G :e group_hl A, forall h c= A, forall x a :e A, h c= group_carrier A G /\ (a :e group_carrier A G /\ x :e group_carrier A G) -> (x :e left_coset_hl A G a h <-> group_mul A G (group_inv A G a) x :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:5877 / IN_RIGHT_COSET_INV   (hash md5:fcf53254470ce46f0097ff0c97fcb703)
// not bridged: 
Theorem IN_RIGHT_COSET_INV : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, h c= group_carrier A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> (x :e right_coset_hl A G h (group_inv A G y) <-> group_mul A G x y :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:5885 / IN_LEFT_COSET_INV   (hash md5:17bd4a29455c734545422adc7d824399)
// not bridged: 
Theorem IN_LEFT_COSET_INV : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, h c= group_carrier A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> (x :e left_coset_hl A G (group_inv A G y) h <-> group_mul A G y x :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:5893 / GROUP_SETINV_LEFT_COSET_GEN   (hash md5:06969a95fa822b35fa72180a3aa701a4)
// not bridged: 
Theorem GROUP_SETINV_LEFT_COSET_GEN : forall A:set, forall G :e group_hl A, forall h c= A, forall a :e A, subgroup_of A h G /\ a :e group_carrier A G -> group_setinv A G (left_coset_hl A G a h) = right_coset_hl A G h (group_inv A G a).
Admitted.

// HOL Light: Library/grouptheory.ml:5893 / GROUP_SETINV_RIGHT_COSET_GEN   (hash md5:09a809bc3697bc9575ea102c62de409c)
// not bridged: 
Theorem GROUP_SETINV_RIGHT_COSET_GEN : forall A:set, forall G :e group_hl A, forall h c= A, forall a :e A, subgroup_of A h G /\ a :e group_carrier A G -> group_setinv A G (right_coset_hl A G h a) = left_coset_hl A G (group_inv A G a) h.
Admitted.

// HOL Light: Library/grouptheory.ml:5922 / RIGHT_COSET_OPPOSITE_GROUP   (hash md5:e08fcd37d4f7d9796f5d493bb2a79fee)
// not bridged: 
Theorem RIGHT_COSET_OPPOSITE_GROUP : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, right_coset_hl A G h x = left_coset_hl A (opposite_group A G) x h.
Admitted.

// HOL Light: Library/grouptheory.ml:5926 / LEFT_COSET_OPPOSITE_GROUP   (hash md5:c05c074c5c9071716d19987c583eb1da)
// not bridged: 
Theorem LEFT_COSET_OPPOSITE_GROUP : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, left_coset_hl A G x h = right_coset_hl A (opposite_group A G) h x.
Admitted.

// HOL Light: Library/grouptheory.ml:5930 / GROUP_CONJUGATION_RIGHT_COSET   (hash md5:a17446f6f118c09c68d6498b70f3941b)
// not bridged: 
Theorem GROUP_CONJUGATION_RIGHT_COSET : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, x :e group_carrier A G /\ h c= group_carrier A G -> {group_conjugation A G x x0 | x0 :e right_coset_hl A G h x} = left_coset_hl A G x h.
Admitted.

// HOL Light: Library/grouptheory.ml:5938 / RIGHT_COSET_GROUP_CONJUGATION   (hash md5:e2794d9aa5762dc32daa32ed671c7396)
// not bridged: 
Theorem RIGHT_COSET_GROUP_CONJUGATION : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, x :e group_carrier A G /\ h c= group_carrier A G -> right_coset_hl A G {group_conjugation A G x x0 | x0 :e h} x = left_coset_hl A G x h.
Admitted.

// HOL Light: Library/grouptheory.ml:5947 / LEFT_COSET_LEFT_COSET   (hash md5:353d60b86e4c7c8030c62279682db98f)
// not bridged: 
Theorem LEFT_COSET_LEFT_COSET : forall A:set, forall G :e group_hl A, forall x y :e A, forall h c= A, x :e group_carrier A G /\ (y :e group_carrier A G /\ h c= group_carrier A G) -> left_coset_hl A G x (left_coset_hl A G y h) = left_coset_hl A G (group_mul A G x y) h.
Admitted.

// HOL Light: Library/grouptheory.ml:5959 / RIGHT_COSET_RIGHT_COSET   (hash md5:af6b0aa44b831fad733f42680423cbcb)
// not bridged: 
Theorem RIGHT_COSET_RIGHT_COSET : forall A:set, forall G :e group_hl A, forall x y :e A, forall h c= A, h c= group_carrier A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> right_coset_hl A G (right_coset_hl A G h x) y = right_coset_hl A G h (group_mul A G x y).
Admitted.

// HOL Light: Library/grouptheory.ml:5969 / RIGHT_COSET_ID   (hash md5:0a3b9df7facbc15561de3e81ec870697)
// not bridged: 
Theorem RIGHT_COSET_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, h c= group_carrier A G -> right_coset_hl A G h (group_id A G) = h.
Admitted.

// HOL Light: Library/grouptheory.ml:5978 / LEFT_COSET_ID   (hash md5:6f37bd68257f29bd69a5c111555111ea)
// not bridged: 
Theorem LEFT_COSET_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, h c= group_carrier A G -> left_coset_hl A G (group_id A G) h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:5983 / LEFT_COSET_TRIVIAL   (hash md5:d441b1ae30ccd43f6470d91876ebf1b9)
// not bridged: 
Theorem LEFT_COSET_TRIVIAL : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> left_coset_hl A G x {group_id A G} = {x}.
Admitted.

// HOL Light: Library/grouptheory.ml:5987 / RIGHT_COSET_TRIVIAL   (hash md5:6cba916f618267772e7bc8eb92f1a016)
// not bridged: 
Theorem RIGHT_COSET_TRIVIAL : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> right_coset_hl A G {group_id A G} x = {x}.
Admitted.

// HOL Light: Library/grouptheory.ml:5991 / LEFT_COSET_CARRIER   (hash md5:fe56f1f5cf09b4a683a7e3e61cc9eb35)
// not bridged: 
Theorem LEFT_COSET_CARRIER : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> left_coset_hl A G x (group_carrier A G) = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:5997 / RIGHT_COSET_CARRIER   (hash md5:7a8b5aeac0a640004870563dbd9d7511)
// not bridged: 
Theorem RIGHT_COSET_CARRIER : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> right_coset_hl A G (group_carrier A G) x = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6003 / RIGHT_COSET_EQ   (hash md5:701ae9951ac79b8f8319e6bc8b6c2988)
// not bridged: 
Theorem RIGHT_COSET_EQ : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> (right_coset_hl A G h x = right_coset_hl A G h y <-> group_div A G x y :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:6009 / LEFT_COSET_EQ   (hash md5:aaf1ed9a2e6902b84640dff89e3951d7)
// not bridged: 
Theorem LEFT_COSET_EQ : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> (left_coset_hl A G x h = left_coset_hl A G y h <-> group_mul A G (group_inv A G x) y :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:6016 / RIGHT_COSET_EQ_SUBGROUP   (hash md5:fc012c86b2c7f1e62608c1dce0138998)
// not bridged: 
Theorem RIGHT_COSET_EQ_SUBGROUP : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G /\ x :e group_carrier A G -> (right_coset_hl A G h x = h <-> x :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:6023 / LEFT_COSET_EQ_SUBGROUP   (hash md5:0b0f60b6d93ab967c7652709413e744e)
// not bridged: 
Theorem LEFT_COSET_EQ_SUBGROUP : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G /\ x :e group_carrier A G -> (left_coset_hl A G x h = h <-> x :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:6030 / RIGHT_COSET_EQ_EMPTY   (hash md5:ba16f698692cf789e90b1aedff11eafd)
// not bridged: 
Theorem RIGHT_COSET_EQ_EMPTY : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, right_coset_hl A G h x = Empty <-> h = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:6034 / LEFT_COSET_EQ_EMPTY   (hash md5:cce83c0f19d9f3c45814d6cc71ca1d3b)
// not bridged: 
Theorem LEFT_COSET_EQ_EMPTY : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, left_coset_hl A G x h = Empty <-> h = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:6038 / RIGHT_COSET_NONEMPTY   (hash md5:7ef3ebf6d9cbd5ddefca2c20c069c930)
// not bridged: 
Theorem RIGHT_COSET_NONEMPTY : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G -> ~ right_coset_hl A G h x = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:6042 / LEFT_COSET_NONEMPTY   (hash md5:c1113565ca564e0643881f5db74168cc)
// not bridged: 
Theorem LEFT_COSET_NONEMPTY : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G -> ~ left_coset_hl A G x h = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:6046 / IN_RIGHT_COSET_SELF   (hash md5:39048a64c6c3b31461c244d163506914)
// not bridged: 
Theorem IN_RIGHT_COSET_SELF : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G /\ x :e group_carrier A G -> x :e right_coset_hl A G h x.
Admitted.

// HOL Light: Library/grouptheory.ml:6052 / IN_LEFT_COSET_SELF   (hash md5:91bed8db978906982c02c18442b14c92)
// not bridged: 
Theorem IN_LEFT_COSET_SELF : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G /\ x :e group_carrier A G -> x :e left_coset_hl A G x h.
Admitted.

// HOL Light: Library/grouptheory.ml:6058 / UNIONS_RIGHT_COSETS   (hash md5:21c77c8d0ddf5f0b1d5ceb01df06b7e4)
// not bridged: 
Theorem UNIONS_RIGHT_COSETS : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> Union {right_coset_hl A G h x | x :e A, x :e group_carrier A G} = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6069 / UNIONS_LEFT_COSETS   (hash md5:68904c0ef9ded0582090bab91b5e90b9)
// not bridged: 
Theorem UNIONS_LEFT_COSETS : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> Union {left_coset_hl A G x h | x :e A, x :e group_carrier A G} = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6080 / RIGHT_COSETS_EQ   (hash md5:3ab12b3bfe83623617f0f0863f10a070)
// not bridged: 
Theorem RIGHT_COSETS_EQ : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> (right_coset_hl A G h x = right_coset_hl A G h y <-> ~ right_coset_hl A G h x :/\: right_coset_hl A G h y = Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:6099 / LEFT_COSETS_EQ   (hash md5:90da5f66709f96d16e9e7ab60d82dfec)
// not bridged: 
Theorem LEFT_COSETS_EQ : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> (left_coset_hl A G x h = left_coset_hl A G y h <-> ~ left_coset_hl A G x h :/\: left_coset_hl A G y h = Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:6107 / DISJOINT_RIGHT_COSETS   (hash md5:02f15c3b4e95329ce377a487c55cb376)
// not bridged: 
Theorem DISJOINT_RIGHT_COSETS : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> (right_coset_hl A G h x :/\: right_coset_hl A G h y = Empty <-> ~ right_coset_hl A G h x = right_coset_hl A G h y).
Admitted.

// HOL Light: Library/grouptheory.ml:6114 / DISJOINT_LEFT_COSETS   (hash md5:65dc376e0e9ef08fc96dc97d9f2827c4)
// not bridged: 
Theorem DISJOINT_LEFT_COSETS : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> (left_coset_hl A G x h :/\: left_coset_hl A G y h = Empty <-> ~ left_coset_hl A G x h = left_coset_hl A G y h).
Admitted.

// HOL Light: Library/grouptheory.ml:6121 / PAIRWISE_DISJOINT_RIGHT_COSETS   (hash md5:0acdd0a17d97609543378774040a9908)
// not bridged: 
Theorem PAIRWISE_DISJOINT_RIGHT_COSETS : forall A:set, forall G :e group_hl A, forall h c= A, subgroup_of A h G -> forall x y :e {right_coset_hl A G h a | a :e A, a :e group_carrier A G}, x <> y -> x :/\: y = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:6128 / PAIRWISE_DISJOINT_LEFT_COSETS   (hash md5:a6404f4e7fce2a58934d26a162898a37)
// not bridged: 
Theorem PAIRWISE_DISJOINT_LEFT_COSETS : forall A:set, forall G :e group_hl A, forall h c= A, subgroup_of A h G -> forall x y :e {left_coset_hl A G a h | a :e A, a :e group_carrier A G}, x <> y -> x :/\: y = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:6135 / IMAGE_RIGHT_COSET_SWITCH   (hash md5:81261f00e9d44fc8c2a19649be2f346c)
// not bridged: 
Theorem IMAGE_RIGHT_COSET_SWITCH : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> {group_mul A G a (group_mul A G (group_inv A G x) y) | a :e right_coset_hl A G h x} = right_coset_hl A G h y.
Admitted.

// HOL Light: Library/grouptheory.ml:6150 / IMAGE_LEFT_COSET_SWITCH   (hash md5:f779df82e07b61f7445980ba27962642)
// not bridged: 
Theorem IMAGE_LEFT_COSET_SWITCH : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> {group_mul A G (group_div A G y x) a | a :e left_coset_hl A G x h} = left_coset_hl A G y h.
Admitted.

// HOL Light: Library/grouptheory.ml:6165 / CARD_EQ_LEFT_RIGHT_COSETS   (hash md5:629af28f837894425cefa3458be33315)
// not bridged: 
Theorem CARD_EQ_LEFT_RIGHT_COSETS : forall A:set, forall G :e group_hl A, forall h c= A, subgroup_of A h G -> equip {left_coset_hl A G x h | x :e A, x :e group_carrier A G} {right_coset_hl A G h x | x :e A, x :e group_carrier A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:6178 / HAS_SIZE_LEFT_RIGHT_COSETS   (hash md5:55020199f44be25d5c4ee52e5d249f7c)
// not bridged: 
Theorem HAS_SIZE_LEFT_RIGHT_COSETS : forall A:set, A <> Empty -> forall n :e omega, forall G :e group_hl A, forall h c= A, subgroup_of A h G -> (equip {left_coset_hl A G x h | x :e A, x :e group_carrier A G} n <-> equip {right_coset_hl A G h x | x :e A, x :e group_carrier A G} n).
Admitted.

// HOL Light: Library/grouptheory.ml:6186 / CARD_EQ_RIGHT_COSETS   (hash md5:eeca1287b9d93076715718d8f3ebdc7e)
// not bridged: 
Theorem CARD_EQ_RIGHT_COSETS : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> equip (right_coset_hl A G h x) (right_coset_hl A G h y).
Admitted.

// HOL Light: Library/grouptheory.ml:6204 / GROUP_ID_IN_LEFT_COSET_GEN   (hash md5:f4ab7acf00cbf8a1c11c373ef56a584b)
// not bridged: 
Theorem GROUP_ID_IN_LEFT_COSET_GEN : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, h c= group_carrier A G /\ x :e group_carrier A G -> (group_id A G :e left_coset_hl A G x h <-> group_inv A G x :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:6211 / GROUP_ID_IN_LEFT_COSET   (hash md5:f77caa078292b20f3f8c800ddd7cda1f)
// not bridged: 
Theorem GROUP_ID_IN_LEFT_COSET : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G /\ x :e group_carrier A G -> (group_id A G :e left_coset_hl A G x h <-> x :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:6218 / SUBGROUP_OF_LEFT_COSET   (hash md5:5cad00445b17b5adf3919de5063c7497)
// not bridged: 
Theorem SUBGROUP_OF_LEFT_COSET : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G /\ x :e group_carrier A G -> (subgroup_of A (left_coset_hl A G x h) G <-> left_coset_hl A G x h = h).
Admitted.

// HOL Light: Library/grouptheory.ml:6224 / GROUP_ID_IN_RIGHT_COSET_GEN   (hash md5:826dc0a9ee1c6d924feeb2ca01bd8ec4)
// not bridged: 
Theorem GROUP_ID_IN_RIGHT_COSET_GEN : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, h c= group_carrier A G /\ x :e group_carrier A G -> (group_id A G :e right_coset_hl A G h x <-> group_inv A G x :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:6231 / GROUP_ID_IN_RIGHT_COSET   (hash md5:274a09b1962f8c368b4e719f9ef9e485)
// not bridged: 
Theorem GROUP_ID_IN_RIGHT_COSET : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G /\ x :e group_carrier A G -> (group_id A G :e right_coset_hl A G h x <-> x :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:6238 / SUBGROUP_OF_RIGHT_COSET   (hash md5:9123bbd16e26febaa44808703abb5c91)
// not bridged: 
Theorem SUBGROUP_OF_RIGHT_COSET : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, subgroup_of A h G /\ x :e group_carrier A G -> (subgroup_of A (right_coset_hl A G h x) G <-> right_coset_hl A G h x = h).
Admitted.

// HOL Light: Library/grouptheory.ml:6244 / CARD_EQ_LEFT_COSETS   (hash md5:0b938736da7050281fc2059169aa53c1)
// not bridged: 
Theorem CARD_EQ_LEFT_COSETS : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> equip (left_coset_hl A G x h) (left_coset_hl A G y h).
Admitted.

// HOL Light: Library/grouptheory.ml:6251 / CARD_EQ_RIGHT_COSET_SUBGROUP   (hash md5:c1e028218909a904c45ea79e7b62cf28)
// not bridged: 
Theorem CARD_EQ_RIGHT_COSET_SUBGROUP : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> equip (right_coset_hl A G h x) h.
Admitted.

// HOL Light: Library/grouptheory.ml:6258 / CARD_EQ_LEFT_COSET_SUBGROUP   (hash md5:9add896060ec26614c845e5cb050bb7a)
// not bridged: 
Theorem CARD_EQ_LEFT_COSET_SUBGROUP : forall A:set, forall G :e group_hl A, forall h c= A, forall x y :e A, subgroup_of A h G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> equip (left_coset_hl A G x h) h.
Admitted.

// HOL Light: Library/grouptheory.ml:6265 / GROUP_ORBIT_SUBGROUP_TRANSLATION   (hash md5:4909bb4b7db21fb53c30b6b0684b5db0)
// not bridged: 
Theorem GROUP_ORBIT_SUBGROUP_TRANSLATION : forall A:set, forall G :e group_hl A, forall h c= A, forall a :e A, subgroup_of A h G /\ a :e group_carrier A G -> forall x :e A, group_orbit A A (subgroup_generated A G h) (group_carrier A G) (group_mul A G) a x <-> x :e right_coset_hl A G h a.
Admitted.

// HOL Light: Library/grouptheory.ml:6276 / GROUP_ORBIT_GROUP_TRANSLATION   (hash md5:2d54ec9a7f3fe1c58eef51367d4abf4d)
// not bridged: 
Theorem GROUP_ORBIT_GROUP_TRANSLATION : forall A:set, forall G :e group_hl A, forall a :e A, a :e group_carrier A G -> forall x :e A, group_orbit A A G (group_carrier A G) (group_mul A G) a x <-> x :e group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6286 / ORBIT_STABILIZER_GEN   (hash md5:435e0011aac120ce440653f0169a57b6)
// not bridged: 
Theorem ORBIT_STABILIZER_GEN : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, group_action_hl A X G s a /\ x :e s -> equip {x0 :e X | group_orbit A X G s a x x0} {left_coset_hl A G g (group_stabilizer A X G a x) | g :e A, g :e group_carrier A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:6296 / ORBIT_STABILIZER   (hash md5:a76b4b0866f27f367a92c13d1c209f3e)
// not bridged: 
Theorem ORBIT_STABILIZER : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x :e X, finite (group_carrier A G) /\ (group_action_hl A X G s a /\ x :e s) -> finite_cardinality {x0 :e X | group_orbit A X G s a x x0} = finite_cardinality {left_coset_hl A G g (group_stabilizer A X G a x) | g :e A, g :e group_carrier A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:6307 / GROUP_ACTION_LEFT_COSET_MULTIPLICATION   (hash md5:3705b568d3524bdcaf3f271c6be3a543)
// not bridged: 
Theorem GROUP_ACTION_LEFT_COSET_MULTIPLICATION : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, h c= group_carrier A G -> group_action_hl A (Power A) G {left_coset_hl A G x h | x :e A, x :e group_carrier A G} (fun x:set => fun x0:set => (fun x0 :e Power A => {x1 :e A | x1 :e {(fun x0 :e A => group_mul A G x x0) x1 | x1 :e x0}}) x0).
Admitted.

// HOL Light: Library/grouptheory.ml:6320 / GROUP_ORBIT_LEFT_COSET_MULTIPLICATION   (hash md5:2878457af74af9be0aeed4f4a4b1bf5b)
// not bridged: 
Theorem GROUP_ORBIT_LEFT_COSET_MULTIPLICATION : forall A:set, forall G :e group_hl A, forall h c= A, forall a :e A, a :e group_carrier A G /\ subgroup_of A h G -> forall x c= A, group_orbit A (Power A) G {left_coset_hl A G x0 h | x0 :e A, x0 :e group_carrier A G} (fun x0:set => fun x1:set => (fun x1 :e Power A => {x2 :e A | x2 :e {(fun x1 :e A => group_mul A G x0 x1) x2 | x2 :e x1}}) x1) (left_coset_hl A G a h) x <-> x :e {left_coset_hl A G x0 h | x0 :e A, x0 :e group_carrier A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:6343 / GROUP_STABILIZER_LEFT_COSET_MULTIPLICATION   (hash md5:23989700c4d0e88107b317c4c9e2fe8f)
// not bridged: 
Theorem GROUP_STABILIZER_LEFT_COSET_MULTIPLICATION : forall A:set, forall G :e group_hl A, forall h c= A, forall a :e A, a :e group_carrier A G /\ subgroup_of A h G -> group_stabilizer A (Power A) G (fun x:set => fun x0:set => (fun x0 :e Power A => {x1 :e A | x1 :e {(fun x0 :e A => group_mul A G x x0) x1 | x1 :e x0}}) x0) (left_coset_hl A G a h) = {group_conjugation A G a x | x :e h}.
Admitted.

// HOL Light: Library/grouptheory.ml:6363 / GROUP_ORBIT_LEFT_COSET_MULTIPLICATION_ID   (hash md5:5ad58ed352954731782b39f487eea8be)
// not bridged: 
Theorem GROUP_ORBIT_LEFT_COSET_MULTIPLICATION_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> forall x c= A, group_orbit A (Power A) G {left_coset_hl A G x0 h | x0 :e A, x0 :e group_carrier A G} (fun x0:set => fun x1:set => (fun x1 :e Power A => {x2 :e A | x2 :e {(fun x1 :e A => group_mul A G x0 x1) x2 | x2 :e x1}}) x1) h x <-> x :e {left_coset_hl A G x0 h | x0 :e A, x0 :e group_carrier A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:6374 / GROUP_STABILIZER_LEFT_COSET_MULTIPLICATION_ID   (hash md5:7cc3f89e7b2a500f9d8726ce5f76adaa)
// not bridged: 
Theorem GROUP_STABILIZER_LEFT_COSET_MULTIPLICATION_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> group_stabilizer A (Power A) G (fun x:set => fun x0:set => (fun x0 :e Power A => {x1 :e A | x1 :e {(fun x0 :e A => group_mul A G x x0) x1 | x1 :e x0}}) x0) h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:6386 / LAGRANGE_THEOREM_LEFT_GEN   (hash md5:bc5589a68f3f3eb9da9a56689511bbeb)
// not bridged: 
Theorem LAGRANGE_THEOREM_LEFT_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> equip ({left_coset_hl A G x h | x :e A, x :e group_carrier A G} :*: h) (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:6401 / LAGRANGE_THEOREM_RIGHT_GEN   (hash md5:fc5eb1e6941deb9d18d04b0be3acce69)
// not bridged: 
Theorem LAGRANGE_THEOREM_RIGHT_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> equip ({right_coset_hl A G h x | x :e A, x :e group_carrier A G} :*: h) (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:6411 / LAGRANGE_THEOREM_LEFT   (hash md5:c37a116e52dfe7da245c99225c659f96)
// not bridged: 
Theorem LAGRANGE_THEOREM_LEFT : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, finite (group_carrier A G) /\ subgroup_of A h G -> finite_cardinality {left_coset_hl A G x h | x :e A, x :e group_carrier A G} * finite_cardinality h = finite_cardinality (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:6423 / LAGRANGE_THEOREM_RIGHT   (hash md5:26946f5e3bb4c2795238f50c976ef3ce)
// not bridged: 
Theorem LAGRANGE_THEOREM_RIGHT : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, finite (group_carrier A G) /\ subgroup_of A h G -> finite_cardinality {right_coset_hl A G h x | x :e A, x :e group_carrier A G} * finite_cardinality h = finite_cardinality (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:6433 / LAGRANGE_THEOREM   (hash md5:861fc0968db7f35f5e38efedf378f7d5)
// not bridged: 
Theorem LAGRANGE_THEOREM : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, finite (group_carrier A G) /\ subgroup_of A h G -> divides_nat (finite_cardinality h) (finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:6441 / CARD_LEFT_COSETS_DIVIDES   (hash md5:73ecaeecc2f677968580dea422f7373a)
// not bridged: 
Theorem CARD_LEFT_COSETS_DIVIDES : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, finite (group_carrier A G) /\ subgroup_of A h G -> divides_nat (finite_cardinality {left_coset_hl A G x h | x :e A, x :e group_carrier A G}) (finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:6448 / CARD_RIGHT_COSETS_DIVIDES   (hash md5:7281b2d779419c48675748a242d26607)
// not bridged: 
Theorem CARD_RIGHT_COSETS_DIVIDES : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, finite (group_carrier A G) /\ subgroup_of A h G -> divides_nat (finite_cardinality {right_coset_hl A G h x | x :e A, x :e group_carrier A G}) (finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:6455 / LAGRANGE_THEOREM_LEFT_DIV   (hash md5:d1c88326780a9c3f45274e3b3a2d9810)
// not bridged: 
Theorem LAGRANGE_THEOREM_LEFT_DIV : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, finite (group_carrier A G) /\ subgroup_of A h G -> finite_cardinality {left_coset_hl A G x h | x :e A, x :e group_carrier A G} = div_nat (finite_cardinality (group_carrier A G)) (finite_cardinality h).
Admitted.

// HOL Light: Library/grouptheory.ml:6467 / LAGRANGE_THEOREM_RIGHT_DIV   (hash md5:53b863b11c5fc3c0b3a8be8a93262794)
// not bridged: 
Theorem LAGRANGE_THEOREM_RIGHT_DIV : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, finite (group_carrier A G) /\ subgroup_of A h G -> finite_cardinality {right_coset_hl A G h x | x :e A, x :e group_carrier A G} = div_nat (finite_cardinality (group_carrier A G)) (finite_cardinality h).
Admitted.

// HOL Light: Library/grouptheory.ml:6479 / GROUP_SETMUL_PROD_GROUP   (hash md5:008030c8cda5bd7309fcf58cd7f8b173)
// not bridged: 
Theorem GROUP_SETMUL_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall s1 c= A, forall s2 c= B, forall t1 c= A, forall t2 c= B, group_setmul (A :*: B) (prod_group A B G1 G2) (s1 :*: s2) (t1 :*: t2) = group_setmul A G1 s1 t1 :*: group_setmul B G2 s2 t2.
Admitted.

// HOL Light: Library/grouptheory.ml:6488 / RIGHT_COSET_PROD_GROUP   (hash md5:3695ffb02de73bd825c3e7971664f27c)
// not bridged: 
Theorem RIGHT_COSET_PROD_GROUP : forall A B:set, forall G1 :e group_hl A, forall G2 :e group_hl B, forall h1 c= A, forall h2 c= B, forall x1 :e A, forall x2 :e B, right_coset_hl (A :*: B) (prod_group A B G1 G2) (h1 :*: h2) (x1,x2) = right_coset_hl A G1 h1 x1 :*: right_coset_hl B G2 h2 x2.
Admitted.

// HOL Light: Library/grouptheory.ml:6494 / LEFT_COSET_PROD_GROUP   (hash md5:93e16d75d950e83a4c085f58208c089a)
// not bridged: 
Theorem LEFT_COSET_PROD_GROUP : forall A B:set, forall G1 :e group_hl A, forall G2 :e group_hl B, forall h1 c= A, forall h2 c= B, forall x1 :e A, forall x2 :e B, left_coset_hl (A :*: B) (prod_group A B G1 G2) (x1,x2) (h1 :*: h2) = left_coset_hl A G1 x1 h1 :*: left_coset_hl B G2 x2 h2.
Admitted.

// HOL Light: Library/grouptheory.ml:6500 / GROUP_SETMUL_PRODUCT_GROUP   (hash md5:36ecc27211beade00453e7b0696ded66)
// not bridged: 
Theorem GROUP_SETMUL_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall s t :e Power A :^: K, group_setmul (A :^: K) (product_group A K k G) {f :e A :^: K | (forall i :e k, f i :e s i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} {f :e A :^: K | (forall i :e k, f i :e t i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} = {f :e A :^: K | (forall i :e k, f i :e {x0 :e A | x0 :e group_setmul A (G i) (s i) (t i)}) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)}.
Admitted.

// HOL Light: Library/grouptheory.ml:6523 / RIGHT_COSET_PRODUCT_GROUP   (hash md5:9fbd6d954de8ba3950790a83a1eb2d88)
// not bridged: 
Theorem RIGHT_COSET_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall h :e Power A :^: K, forall x :e A :^: K, forall k c= K, right_coset_hl (A :^: K) (product_group A K k G) {f :e A :^: K | (forall i :e k, f i :e h i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} x = {f :e A :^: K | (forall i :e k, f i :e {x1 :e A | x1 :e right_coset_hl A (G i) (h i) (x i)}) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)}.
Admitted.

// HOL Light: Library/grouptheory.ml:6536 / LEFT_COSET_PRODUCT_GROUP   (hash md5:f3f7709a17f9d4466123294ef1f369ce)
// not bridged: 
Theorem LEFT_COSET_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall h :e Power A :^: K, forall x :e A :^: K, forall k c= K, left_coset_hl (A :^: K) (product_group A K k G) x {f :e A :^: K | (forall i :e k, f i :e h i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} = {f :e A :^: K | (forall i :e k, f i :e {x1 :e A | x1 :e left_coset_hl A (G i) (x i) (h i)}) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)}.
Admitted.

// HOL Light: Library/grouptheory.ml:6543 / GROUP_SETINV_SUBGROUP_GENERATED   (hash md5:507306a078cc45a25fe3cf78024d544f)
// not bridged: 
Theorem GROUP_SETINV_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall h x c= A, group_setinv A (subgroup_generated A G h) x = group_setinv A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:6548 / GROUP_SETMUL_SUBGROUP_GENERATED   (hash md5:d247be7a54c293023a4aedd2ce405445)
// not bridged: 
Theorem GROUP_SETMUL_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall h x x0 c= A, group_setmul A (subgroup_generated A G h) x x0 = group_setmul A G x x0.
Admitted.

// HOL Light: Library/grouptheory.ml:6553 / RIGHT_COSET_SUBGROUP_GENERATED   (hash md5:77d787773343a7f03c81cf71b5b875e2)
// not bridged: 
Theorem RIGHT_COSET_SUBGROUP_GENERATED : forall A:set, forall G :e group_hl A, forall h k c= A, forall x :e A, right_coset_hl A (subgroup_generated A G h) k x = right_coset_hl A G k x.
Admitted.

// HOL Light: Library/grouptheory.ml:6557 / LEFT_COSET_SUBGROUP_GENERATED   (hash md5:c26e73bc953c6a551101def3bc230708)
// not bridged: 
Theorem LEFT_COSET_SUBGROUP_GENERATED : forall A:set, forall G :e group_hl A, forall h k c= A, forall x :e A, left_coset_hl A (subgroup_generated A G h) x k = left_coset_hl A G x k.
Admitted.

// HOL Light: Library/grouptheory.ml:6561 / SCHREIER_TRANSVERSAL_LEMMA   (hash md5:271230f6fd977cdf746674125217c98f)
// not bridged: 
Theorem SCHREIER_TRANSVERSAL_LEMMA : forall A:set, A <> Empty -> forall G :e group_hl A, forall h s t c= A, subgroup_of A h G /\ (s c= group_carrier A G /\ (subgroup_generated A G s = G /\ ((forall x :e A, x :e s -> group_inv A G x :e s) /\ (t c= group_carrier A G /\ (Union {right_coset_hl A G h x | x :e A, x :e t} = group_carrier A G /\ t :/\: h c= {group_id A G}))))) -> group_carrier A (subgroup_generated A G (h :/\: group_setmul A G t (group_setmul A G s (group_setinv A G t)))) = h.
Admitted.

// HOL Light: Library/grouptheory.ml:6695 / normal_subgroup_of   (hash md5:308218b83665ac589cdbb21310c2c731)
// not bridged: 
Theorem normal_subgroup_of_thm : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G <-> subgroup_of A n G /\ forall x :e A, x :e group_carrier A G -> left_coset_hl A G x n = right_coset_hl A G n x.
Admitted.

// HOL Light: Library/grouptheory.ml:6700 / NORMAL_SUBGROUP_IMP_SUBGROUP   (hash md5:ff2939cf9869eed5ed1f25f3306dc6eb)
// not bridged: 
Theorem NORMAL_SUBGROUP_IMP_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> subgroup_of A n G.
Admitted.

// HOL Light: Library/grouptheory.ml:6704 / NORMAL_SUBGROUP_OF_IMP_SUBSET   (hash md5:00cffeb0b7e5b22b03316e140afe7d47)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_IMP_SUBSET : forall A:set, forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> n c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:6708 / NORMAL_SUBGROUP_OF_OPPOSITE_GROUP   (hash md5:c84fc38c58154b38f9ac2cbba1d25d1c)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_OPPOSITE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n (opposite_group A G) <-> normal_subgroup_of A n G.
Admitted.

// HOL Light: Library/grouptheory.ml:6716 / ABELIAN_GROUP_NORMAL_SUBGROUP   (hash md5:b6052f66e3c9f1b7b8d865dfba97c96b)
// not bridged: 
Theorem ABELIAN_GROUP_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, abelian_group_hl A G -> (normal_subgroup_of A n G <-> subgroup_of A n G).
Admitted.

// HOL Light: Library/grouptheory.ml:6722 / NORMAL_SUBGROUP_CONJUGATE_ALT   (hash md5:653fb7af5b9f7650df3bb04955db1499)
// not bridged: 
Theorem NORMAL_SUBGROUP_CONJUGATE_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G <-> subgroup_of A n G /\ forall x :e A, x :e group_carrier A G -> group_setmul A G {group_inv A G x} (group_setmul A G n {x}) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:6741 / NORMAL_SUBGROUP_CONJUGATE_INV   (hash md5:3cf459964ae2b62de8fe392a040cb99c)
// not bridged: 
Theorem NORMAL_SUBGROUP_CONJUGATE_INV : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G <-> subgroup_of A n G /\ forall x :e A, x :e group_carrier A G -> group_setmul A G {group_inv A G x} (group_setmul A G n {x}) c= n.
Admitted.

// HOL Light: Library/grouptheory.ml:6769 / NORMAL_SUBGROUP_CONJUGATION_EQ   (hash md5:b6de01b20035665e1ed50dc6b40b0129)
// not bridged: 
Theorem NORMAL_SUBGROUP_CONJUGATION_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, normal_subgroup_of A h G <-> subgroup_of A h G /\ forall a :e A, a :e group_carrier A G -> {group_conjugation A G a x | x :e h} = h.
Admitted.

// HOL Light: Library/grouptheory.ml:6788 / NORMAL_SUBGROUP_CONJUGATION   (hash md5:414cfa3685d405753a00b43680c776ac)
// not bridged: 
Theorem NORMAL_SUBGROUP_CONJUGATION : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, normal_subgroup_of A h G <-> subgroup_of A h G /\ forall a :e A, a :e group_carrier A G -> {group_conjugation A G a x | x :e h} c= h.
Admitted.

// HOL Light: Library/grouptheory.ml:6806 / NORMAL_SUBGROUP_CONJUGATION_SUPERSET   (hash md5:894e220033dbee6660daf351ddfd5b63)
// not bridged: 
Theorem NORMAL_SUBGROUP_CONJUGATION_SUPERSET : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, normal_subgroup_of A h G <-> subgroup_of A h G /\ forall a :e A, a :e group_carrier A G -> h c= {group_conjugation A G a x | x :e h}.
Admitted.

// HOL Light: Library/grouptheory.ml:6823 / ABELIAN_GROUP_CONJUGATION   (hash md5:625c55c10c4c9b740ee1b3fbd99ad85d)
// not bridged: 
Theorem ABELIAN_GROUP_CONJUGATION : forall A:set, forall G :e group_hl A, forall a x :e A, abelian_group_hl A G /\ (a :e group_carrier A G /\ x :e group_carrier A G) -> group_conjugation A G a x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:6829 / NORMAL_SUBGROUP_OF_INTERS   (hash md5:4a5730d0ec1947e1360be33d1bfbc7d2)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_INTERS : forall A:set, A <> Empty -> forall G :e group_hl A, forall gs c= Power A, (forall g c= A, g :e gs -> normal_subgroup_of A g G) /\ ~ gs = Empty -> normal_subgroup_of A {x :e A | forall Y :e gs, x :e Y} G.
Admitted.

// HOL Light: Library/grouptheory.ml:6834 / NORMAL_SUBGROUP_OF_INTER   (hash md5:e483fe429475ee7f36a912052bd4229e)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_INTER : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, normal_subgroup_of A g G /\ normal_subgroup_of A h G -> normal_subgroup_of A (g :/\: h) G.
Admitted.

// HOL Light: Library/grouptheory.ml:6842 / NORMAL_SUBGROUP_OF_UNIONS   (hash md5:43bfb45720c3645ba2426a72a18d7f9c)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_UNIONS : forall A:set, A <> Empty -> forall G :e group_hl A, forall u c= Power A, ~ u = Empty /\ ((forall h c= A, h :e u -> normal_subgroup_of A h G) /\ (forall g h c= A, g :e u /\ h :e u -> g c= h \/ h c= g)) -> normal_subgroup_of A (Union u) G.
Admitted.

// HOL Light: Library/grouptheory.ml:6850 / NORMAL_SUBGROUP_ACTION_KERNEL   (hash md5:47ba7a25c4998dd06c7afe9273ccd762)
// not bridged: 
Theorem NORMAL_SUBGROUP_ACTION_KERNEL : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> group_action_hl A X G s a -> normal_subgroup_of A {g :e A | g :e group_carrier A G /\ forall x :e X, x :e s -> a g x = x} G.
Admitted.

// HOL Light: Library/grouptheory.ml:6869 / NORMAL_SUBGROUP_LEFT_EQ_RIGHT_COSETS   (hash md5:865daef346c621a61423b36cb50bb344)
// not bridged: 
Theorem NORMAL_SUBGROUP_LEFT_EQ_RIGHT_COSETS : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G <-> subgroup_of A n G /\ {left_coset_hl A G x n | x :e A, x :e group_carrier A G} = {right_coset_hl A G n x | x :e A, x :e group_carrier A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:6914 / NORMAL_SUBGROUP_MUL_SYM   (hash md5:45b0c2338b29517883c32e02a6f2ea08)
// not bridged: 
Theorem NORMAL_SUBGROUP_MUL_SYM : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, normal_subgroup_of A h G <-> subgroup_of A h G /\ forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_mul A G x y :e h <-> group_mul A G y x :e h).
Admitted.

// HOL Light: Library/grouptheory.ml:6935 / TRIVIAL_NORMAL_SUBGROUP_OF   (hash md5:a4ea6690c00308f1fb5f07b9e188cfdf)
// not bridged: 
Theorem TRIVIAL_NORMAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e group_hl A, normal_subgroup_of A {group_id A G} G.
Admitted.

// HOL Light: Library/grouptheory.ml:6940 / CARRIER_NORMAL_SUBGROUP_OF   (hash md5:f8ac205eb263948f8b754247c639a303)
// not bridged: 
Theorem CARRIER_NORMAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e group_hl A, normal_subgroup_of A (group_carrier A G) G.
Admitted.

// HOL Light: Library/grouptheory.ml:6945 / GROUP_SETINV_RIGHT_COSET   (hash md5:3bcb1e3369edcdf31130f1204df2f522)
// not bridged: 
Theorem GROUP_SETINV_RIGHT_COSET : forall A:set, forall G :e group_hl A, forall n c= A, forall a :e A, normal_subgroup_of A n G /\ a :e group_carrier A G -> group_setinv A G (right_coset_hl A G n a) = right_coset_hl A G n (group_inv A G a).
Admitted.

// HOL Light: Library/grouptheory.ml:6964 / GROUP_SETINV_LEFT_COSET   (hash md5:61c0fd3905fe6e93a9c2a5ac0522e691)
// not bridged: 
Theorem GROUP_SETINV_LEFT_COSET : forall A:set, forall G :e group_hl A, forall n c= A, forall a :e A, normal_subgroup_of A n G /\ a :e group_carrier A G -> group_setinv A G (left_coset_hl A G a n) = left_coset_hl A G (group_inv A G a) n.
Admitted.

// HOL Light: Library/grouptheory.ml:6974 / GROUP_SETMUL_RIGHT_COSET   (hash md5:3dd6bd602df5630c05d8527880ceb39f)
// not bridged: 
Theorem GROUP_SETMUL_RIGHT_COSET : forall A:set, forall G :e group_hl A, forall n c= A, forall a b :e A, normal_subgroup_of A n G /\ (a :e group_carrier A G /\ b :e group_carrier A G) -> group_setmul A G (right_coset_hl A G n a) (right_coset_hl A G n b) = right_coset_hl A G n (group_mul A G a b).
Admitted.

// HOL Light: Library/grouptheory.ml:6997 / GROUP_SETMUL_LEFT_COSET   (hash md5:a1b19347d4fbc57615e186a2751a2fe5)
// not bridged: 
Theorem GROUP_SETMUL_LEFT_COSET : forall A:set, forall G :e group_hl A, forall n c= A, forall a b :e A, normal_subgroup_of A n G /\ (a :e group_carrier A G /\ b :e group_carrier A G) -> group_setmul A G (left_coset_hl A G a n) (left_coset_hl A G b n) = left_coset_hl A G (group_mul A G a b) n.
Admitted.

// HOL Light: Library/grouptheory.ml:7007 / CROSS_NORMAL_SUBGROUP_OF_PROD_GROUP   (hash md5:596a101291f7681bc35ddeb4be8581b9)
// not bridged: 
Theorem CROSS_NORMAL_SUBGROUP_OF_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall h1 c= A, forall h2 c= B, normal_subgroup_of (A :*: B) (h1 :*: h2) (prod_group A B G1 G2) <-> normal_subgroup_of A h1 G1 /\ normal_subgroup_of B h2 G2.
Admitted.

// HOL Light: Library/grouptheory.ml:7019 / NORMAL_SUBGROUP_OF_SUBGROUP_GENERATED_GEN   (hash md5:fd8024f4290d275c07fd4b5ece71f24e)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_SUBGROUP_GENERATED_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall s h c= A, normal_subgroup_of A h G /\ h c= group_carrier A (subgroup_generated A G s) -> normal_subgroup_of A h (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:7028 / NORMAL_SUBGROUP_OF_SUBGROUP_GENERATED   (hash md5:f55c5d51d41f4d2240aa9fb3815b7294)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall s h c= A, normal_subgroup_of A h G /\ h c= s -> normal_subgroup_of A h (subgroup_generated A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:7041 / GROUP_SETMUL_NORMAL_SUBGROUP_LEFT   (hash md5:a25bfb508585ff9a769a45b5365a63f5)
// not bridged: 
Theorem GROUP_SETMUL_NORMAL_SUBGROUP_LEFT : forall A:set, A <> Empty -> forall G :e group_hl A, forall n h c= A, normal_subgroup_of A n G /\ subgroup_of A h G -> subgroup_of A (group_setmul A G n h) G.
Admitted.

// HOL Light: Library/grouptheory.ml:7056 / GROUP_SETMUL_NORMAL_SUBGROUP_RIGHT   (hash md5:223042f7364c842ccd7665aa4e74bf37)
// not bridged: 
Theorem GROUP_SETMUL_NORMAL_SUBGROUP_RIGHT : forall A:set, A <> Empty -> forall G :e group_hl A, forall h n c= A, subgroup_of A h G /\ normal_subgroup_of A n G -> subgroup_of A (group_setmul A G h n) G.
Admitted.

// HOL Light: Library/grouptheory.ml:7071 / GROUP_SETMUL_NORMAL_SUBGROUP   (hash md5:7ef34baad5bfe6fa50eda41237be1c9c)
// not bridged: 
Theorem GROUP_SETMUL_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall h k c= A, normal_subgroup_of A h G /\ normal_subgroup_of A k G -> normal_subgroup_of A (group_setmul A G h k) G.
Admitted.

// HOL Light: Library/grouptheory.ml:7083 / CARRIER_SUBGROUP_GENERATED_UNION_LEFT   (hash md5:57725e188a3119a8cdb8460b07225188)
// not bridged: 
Theorem CARRIER_SUBGROUP_GENERATED_UNION_LEFT : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, normal_subgroup_of A g G /\ subgroup_of A h G -> group_carrier A (subgroup_generated A G (g :\/: h)) = group_setmul A G g h.
Admitted.

// HOL Light: Library/grouptheory.ml:7092 / CARRIER_SUBGROUP_GENERATED_UNION_RIGHT   (hash md5:6f32d2d9eded6325e08e0be46a1a716f)
// not bridged: 
Theorem CARRIER_SUBGROUP_GENERATED_UNION_RIGHT : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ normal_subgroup_of A h G -> group_carrier A (subgroup_generated A G (g :\/: h)) = group_setmul A G g h.
Admitted.

// HOL Light: Library/grouptheory.ml:7105 / group_conjugate   (hash md5:a93ce3df276d7a91a1c0d092558dafbf)
// not bridged: 
Theorem group_conjugate_thm : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, group_conjugate A G s t <-> s c= group_carrier A G /\ (t c= group_carrier A G /\ exists a :e A, a :e group_carrier A G /\ {group_conjugation A G a x | x :e s} = t).
Admitted.

// HOL Light: Library/grouptheory.ml:7111 / GROUP_CONJUGATE_REFL   (hash md5:6933e8e7bf2df31ae6c4d6d0cfb5a429)
// not bridged: 
Theorem GROUP_CONJUGATE_REFL : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_conjugate A G s s <-> s c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:7117 / GROUP_CONJUGATE_SYM   (hash md5:919ab22e7bab21d93b5eb630bf8b0445)
// not bridged: 
Theorem GROUP_CONJUGATE_SYM : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, group_conjugate A G s t <-> group_conjugate A G t s.
Admitted.

// HOL Light: Library/grouptheory.ml:7124 / GROUP_CONJUGATE_TRANS   (hash md5:68ec9befcae7ec044e4f7e845993b138)
// not bridged: 
Theorem GROUP_CONJUGATE_TRANS : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t u c= A, group_conjugate A G s t /\ group_conjugate A G t u -> group_conjugate A G s u.
Admitted.

// HOL Light: Library/grouptheory.ml:7131 / GROUP_CONJUGATE_SUBGROUPS_GENERATED   (hash md5:6ccab9aa36bed97bfeaa7f94c3324b31)
// not bridged: 
Theorem GROUP_CONJUGATE_SUBGROUPS_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, group_conjugate A G s t -> group_conjugate A G (group_carrier A (subgroup_generated A G s)) (group_carrier A (subgroup_generated A G t)).
Admitted.

// HOL Light: Library/grouptheory.ml:7144 / GROUP_CONJUGATE_IMP_ISOMORPHIC   (hash md5:7d662afbe4c605826b0676e0ca66e10b)
// not bridged: 
Theorem GROUP_CONJUGATE_IMP_ISOMORPHIC : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, group_conjugate A G s t -> isomorphic_group A A (subgroup_generated A G s) (subgroup_generated A G t).
Admitted.

// HOL Light: Library/grouptheory.ml:7156 / GROUP_CONJUGATE_IMP_CARD_EQ   (hash md5:cf71fcc4128a10aacce6665d3bbe6185)
// not bridged: 
Theorem GROUP_CONJUGATE_IMP_CARD_EQ : forall A:set, forall G :e group_hl A, forall s t c= A, group_conjugate A G s t -> equip s t.
Admitted.

// HOL Light: Library/grouptheory.ml:7163 / GROUP_ORBIT_CONJUGATE_STABILIZERS   (hash md5:d1ef8404416139c714026f0e0892494a)
// not bridged: 
Theorem GROUP_ORBIT_CONJUGATE_STABILIZERS : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_action_hl A X G s a /\ group_orbit A X G s a x y -> group_conjugate A G (group_stabilizer A X G a x) (group_stabilizer A X G a y).
Admitted.

// HOL Light: Library/grouptheory.ml:7174 / CARD_EQ_GROUP_ORBIT_STABILIZERS   (hash md5:46363fee497ccfac65514c51ccfed3f3)
// not bridged: 
Theorem CARD_EQ_GROUP_ORBIT_STABILIZERS : forall A X:set, A <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall x y :e X, group_action_hl A X G s a /\ group_orbit A X G s a x y -> equip (group_stabilizer A X G a x) (group_stabilizer A X G a y).
Admitted.

// HOL Light: Library/grouptheory.ml:7184 / group_centralizer   (hash md5:c8066165d0541c0d88c9b560f37bf874)
// not bridged: 
Theorem group_centralizer_thm : forall A:set, A <> Empty -> forall s c= A, forall G :e group_hl A, group_centralizer A G s = {x :e A | x :e group_carrier A G /\ forall y :e A, y :e group_carrier A G /\ y :e s -> group_mul A G x y = group_mul A G y x}.
Admitted.

// HOL Light: Library/grouptheory.ml:7190 / group_normalizer   (hash md5:79e307d1845b3d6f1e6aa9fde1e7b9a8)
// not bridged: 
Theorem group_normalizer_thm : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_normalizer A G s = {x :e A | x :e group_carrier A G /\ group_setmul A G {x} (group_carrier A G :/\: s) = group_setmul A G (group_carrier A G :/\: s) {x}}.
Admitted.

// HOL Light: Library/grouptheory.ml:7196 / GROUP_CENTRALIZER   (hash md5:2031bdec2ddc6fe3db8f648109d0c95e)
// not bridged: 
Theorem GROUP_CENTRALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, s c= group_carrier A G -> group_centralizer A G s = {x :e A | x :e group_carrier A G /\ forall y :e A, y :e s -> group_mul A G x y = group_mul A G y x}.
Admitted.

// HOL Light: Library/grouptheory.ml:7204 / GROUP_NORMALIZER   (hash md5:0b2b0152979f3097a91aa84021236339)
// not bridged: 
Theorem GROUP_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, s c= group_carrier A G -> group_normalizer A G s = {x :e A | x :e group_carrier A G /\ group_setmul A G {x} s = group_setmul A G s {x}}.
Admitted.

// HOL Light: Library/grouptheory.ml:7212 / GROUP_NORMALIZER_CONJUGATION_EQ   (hash md5:d7742e8c521fbc6aae45f3dba0236d08)
// not bridged: 
Theorem GROUP_NORMALIZER_CONJUGATION_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_normalizer A G s = {x :e A | x :e group_carrier A G /\ {group_conjugation A G x x0 | x0 :e group_carrier A G :/\: s} = group_carrier A G :/\: s}.
Admitted.

// HOL Light: Library/grouptheory.ml:7222 / GROUP_NORMALIZER_CONJUGATION   (hash md5:9c9d0fa8290ea25f5926f0138bdaa9eb)
// not bridged: 
Theorem GROUP_NORMALIZER_CONJUGATION : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, s c= group_carrier A G -> group_normalizer A G s = {x :e A | x :e group_carrier A G /\ {group_conjugation A G x x0 | x0 :e s} = s}.
Admitted.

// HOL Light: Library/grouptheory.ml:7230 / GROUP_NORMALIZER_FINITE   (hash md5:86338d00f2e9c52518b6ea038a3a3a8d)
// not bridged: 
Theorem GROUP_NORMALIZER_FINITE : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, s c= group_carrier A G /\ finite s -> group_normalizer A G s = {x :e A | x :e group_carrier A G /\ {group_conjugation A G x x0 | x0 :e s} c= s}.
Admitted.

// HOL Light: Library/grouptheory.ml:7243 / GROUP_CENTRALIZER_RESTRICT   (hash md5:867d96e60e94d25aa77f2c2fb36887e2)
// not bridged: 
Theorem GROUP_CENTRALIZER_RESTRICT : forall A:set, forall G :e group_hl A, forall s c= A, group_centralizer A G s = group_centralizer A G (group_carrier A G :/\: s).
Admitted.

// HOL Light: Library/grouptheory.ml:7249 / GROUP_NORMALIZER_RESTRICT   (hash md5:a0eacc59ec94684a7bb5af36fbda63e3)
// not bridged: 
Theorem GROUP_NORMALIZER_RESTRICT : forall A:set, forall G :e group_hl A, forall s c= A, group_normalizer A G s = group_normalizer A G (group_carrier A G :/\: s).
Admitted.

// HOL Light: Library/grouptheory.ml:7255 / GROUP_CENTRALIZER_SUBSET_CARRIER   (hash md5:d007283e3c03d9aed217c8ea97efdb8f)
// not bridged: 
Theorem GROUP_CENTRALIZER_SUBSET_CARRIER : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_centralizer A G s c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:7259 / GROUP_NORMALIZER_SUBSET_CARRIER   (hash md5:60b79289c886f2ce92d5a5661dbe4ab5)
// not bridged: 
Theorem GROUP_NORMALIZER_SUBSET_CARRIER : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_normalizer A G s c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:7263 / FINITE_GROUP_CENTRALIZER   (hash md5:bb7f35c775e1eb0a2a1a02114eb9d968)
// not bridged: 
Theorem FINITE_GROUP_CENTRALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, finite (group_carrier A G) -> finite (group_centralizer A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:7267 / FINITE_GROUP_NORMALIZER   (hash md5:3e8e171a79a1074bcc6191948ee1b80e)
// not bridged: 
Theorem FINITE_GROUP_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, finite (group_carrier A G) -> finite (group_normalizer A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:7271 / GROUP_CENTRALIZER_SUBSET_NORMALIZER   (hash md5:a7e51541b03c7e3ac3f8e4eaa76864d7)
// not bridged: 
Theorem GROUP_CENTRALIZER_SUBSET_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_centralizer A G s c= group_normalizer A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:7278 / SUBGROUP_GROUP_CENTRALIZER   (hash md5:5c71c5b94bc4f920205da8abd9d45869)
// not bridged: 
Theorem SUBGROUP_GROUP_CENTRALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_of A (group_centralizer A G s) G.
Admitted.

// HOL Light: Library/grouptheory.ml:7289 / SUBGROUP_GROUP_NORMALIZER   (hash md5:3b53f9001d33112927e02016208df062)
// not bridged: 
Theorem SUBGROUP_GROUP_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, subgroup_of A (group_normalizer A G s) G.
Admitted.

// HOL Light: Library/grouptheory.ml:7301 / GROUP_CENTRALIZER_SUBGROUP_GENERATED   (hash md5:369b138fb8c779f301c42f9af2a653a1)
// not bridged: 
Theorem GROUP_CENTRALIZER_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall h s c= A, s c= h /\ subgroup_of A h G -> group_centralizer A (subgroup_generated A G h) s = h :/\: group_centralizer A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:7313 / GROUP_NORMALIZER_SUBGROUP_GENERATED   (hash md5:1b83455616275f70f75424288bdb5c1a)
// not bridged: 
Theorem GROUP_NORMALIZER_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall h s c= A, s c= h /\ subgroup_of A h G -> group_normalizer A (subgroup_generated A G h) s = h :/\: group_normalizer A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:7325 / IN_GROUP_CENTRALIZER_ID   (hash md5:eb3e6789d6f4a9d6ecf30ddd87c39c16)
// not bridged: 
Theorem IN_GROUP_CENTRALIZER_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_id A G :e group_centralizer A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:7330 / IN_GROUP_NORMALIZER_ID   (hash md5:08b802ea5eca37bda41c9a139b106fcf)
// not bridged: 
Theorem IN_GROUP_NORMALIZER_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_id A G :e group_normalizer A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:7335 / GROUP_CENTRALIZER_NONEMPTY   (hash md5:f4f5f6ffad7d7551a8bfd1edbc21008f)
// not bridged: 
Theorem GROUP_CENTRALIZER_NONEMPTY : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, ~ group_centralizer A G s = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:7339 / GROUP_NORMALIZER_NONEMPTY   (hash md5:3657baa230b7e1ebb12d2cf8bee62a9b)
// not bridged: 
Theorem GROUP_NORMALIZER_NONEMPTY : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, ~ group_normalizer A G s = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:7343 / GROUP_CENTRALIZER_SUBSET   (hash md5:1f1b439180d964fc233e6812f8b7a835)
// not bridged: 
Theorem GROUP_CENTRALIZER_SUBSET : forall A:set, forall G :e group_hl A, forall s c= A, s c= group_centralizer A G s <-> s c= group_carrier A G /\ forall a b :e A, a :e s /\ b :e s -> group_mul A G a b = group_mul A G b a.
Admitted.

// HOL Light: Library/grouptheory.ml:7350 / GROUP_CENTRALIZER_SUBSET_EQ   (hash md5:ce7fefdfb3c5f643dfc1559ec95d3e8e)
// not bridged: 
Theorem GROUP_CENTRALIZER_SUBSET_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G -> (h c= group_centralizer A G h <-> abelian_group_hl A (subgroup_generated A G h)).
Admitted.

// HOL Light: Library/grouptheory.ml:7359 / GROUP_CENTRE_EQ_CARRIER   (hash md5:ef3ccb6368cbd97847a053db52320ea0)
// not bridged: 
Theorem GROUP_CENTRE_EQ_CARRIER : forall A:set, A <> Empty -> forall G :e group_hl A, group_centralizer A G (group_carrier A G) = group_carrier A G <-> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:7365 / GROUP_CENTRALIZER_CENTRALIZER_SUBSET   (hash md5:ecc8c42ee089ea11cc4c4be55a49bbea)
// not bridged: 
Theorem GROUP_CENTRALIZER_CENTRALIZER_SUBSET : forall A:set, forall G :e group_hl A, forall s c= A, s c= group_centralizer A G (group_centralizer A G s) <-> s c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:7371 / GROUP_NORMALIZER_MAXIMAL_GEN   (hash md5:96f728886fa67e73a774e450d4648893)
// not bridged: 
Theorem GROUP_NORMALIZER_MAXIMAL_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall h n c= A, normal_subgroup_of A h (subgroup_generated A G n) <-> subgroup_of A h (subgroup_generated A G n) /\ group_carrier A G :/\: n c= group_normalizer A G h.
Admitted.

// HOL Light: Library/grouptheory.ml:7385 / GROUP_NORMALIZER_MAXIMAL   (hash md5:2f5ff6bb63f8a13d69fff58c651006f5)
// not bridged: 
Theorem GROUP_NORMALIZER_MAXIMAL : forall A:set, A <> Empty -> forall G :e group_hl A, forall h n c= A, subgroup_of A n G -> (normal_subgroup_of A h (subgroup_generated A G n) <-> subgroup_of A h G /\ (h c= n /\ n c= group_normalizer A G h)).
Admitted.

// HOL Light: Library/grouptheory.ml:7395 / NORMAL_SUBGROUP_NORMALIZER_CONTAINS_CARRIER   (hash md5:b36da9c2a455aa9ce01a79e2eaff643c)
// not bridged: 
Theorem NORMAL_SUBGROUP_NORMALIZER_CONTAINS_CARRIER : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G <-> subgroup_of A n G /\ group_carrier A G c= group_normalizer A G n.
Admitted.

// HOL Light: Library/grouptheory.ml:7405 / NORMAL_SUBGROUP_NORMALIZER_EQ_CARRIER   (hash md5:1cff13a8eaf0c1987f1892f0e7c81d24)
// not bridged: 
Theorem NORMAL_SUBGROUP_NORMALIZER_EQ_CARRIER : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G <-> subgroup_of A n G /\ group_normalizer A G n = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:7412 / GROUP_NORMALIZER_SUBSET   (hash md5:8126eaed749a68c6f02ca5b139d03ad8)
// not bridged: 
Theorem GROUP_NORMALIZER_SUBSET : forall A:set, forall G :e group_hl A, forall h c= A, subgroup_of A h G -> h c= group_normalizer A G h.
Admitted.

// HOL Light: Library/grouptheory.ml:7419 / NORMAL_SUBGROUP_OF_NORMALIZER   (hash md5:bff456ed9197580893e5b18208d10e9f)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, normal_subgroup_of A h (subgroup_generated A G (group_normalizer A G h)) <-> subgroup_of A h G.
Admitted.

// HOL Light: Library/grouptheory.ml:7427 / GROUP_CENTRALIZER_POINTWISE   (hash md5:ab1de62802871aa83530229f6d15437e)
// not bridged: 
Theorem GROUP_CENTRALIZER_POINTWISE : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_centralizer A G s = if s = Empty then group_carrier A G else {x :e A | forall Y :e {group_centralizer A G {x} | x :e A, x :e s}, x :e Y}.
Admitted.

// HOL Light: Library/grouptheory.ml:7436 / GROUP_CENTRALIZER_ALT   (hash md5:6ae480d952df4e13a2b77fff42cdc12f)
// not bridged: 
Theorem GROUP_CENTRALIZER_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, group_centralizer A G s = {x :e A | x :e group_carrier A G /\ forall y :e A, y :e group_carrier A G /\ y :e s -> group_conjugation A G x y = y}.
Admitted.

// HOL Light: Library/grouptheory.ml:7445 / NORMAL_SUBGROUP_CENTRALIZER_NORMALIZER   (hash md5:e5ffe96fd893405878c557c697648fa2)
// not bridged: 
Theorem NORMAL_SUBGROUP_CENTRALIZER_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, normal_subgroup_of A (group_centralizer A G h) (subgroup_generated A G (group_normalizer A G h)).
Admitted.

// HOL Light: Library/grouptheory.ml:7476 / NORMAL_SUBGROUP_CENTRALIZER   (hash md5:efaa7909dc161f928ef8669e6cd7ec42)
// not bridged: 
Theorem NORMAL_SUBGROUP_CENTRALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> normal_subgroup_of A (group_centralizer A G n) G.
Admitted.

// HOL Light: Library/grouptheory.ml:7484 / GROUP_NORMALIZER_SING   (hash md5:62d0680d51c31c96cbf0258abe427982)
// not bridged: 
Theorem GROUP_NORMALIZER_SING : forall A:set, forall G :e group_hl A, forall a :e A, group_normalizer A G {a} = group_centralizer A G {a}.
Admitted.

// HOL Light: Library/grouptheory.ml:7496 / GROUP_CENTRALIZER_GALOIS_EQ   (hash md5:4f76d1edbf9ce213f3121062137e088a)
// not bridged: 
Theorem GROUP_CENTRALIZER_GALOIS_EQ : forall A:set, forall G :e group_hl A, forall s t c= A, s c= group_carrier A G /\ t c= group_carrier A G -> (s c= group_centralizer A G t <-> t c= group_centralizer A G s).
Admitted.

// HOL Light: Library/grouptheory.ml:7503 / GROUP_CENTRALIZER_GALOIS   (hash md5:403dcb8468999c2b192ef352620aab01)
// not bridged: 
Theorem GROUP_CENTRALIZER_GALOIS : forall A:set, forall G :e group_hl A, forall s t c= A, s c= group_carrier A G /\ t c= group_centralizer A G s -> s c= group_centralizer A G t.
Admitted.

// HOL Light: Library/grouptheory.ml:7509 / GROUP_CENTRALIZER_MONO   (hash md5:ef9d819014b734507c161a43bc0b7a6c)
// not bridged: 
Theorem GROUP_CENTRALIZER_MONO : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, s c= t -> group_centralizer A G t c= group_centralizer A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:7514 / GROUP_ACTION_CONJUGATION_NORMAL_SUBGROUP   (hash md5:0d0e475580fd4b17d9d3224d775143bb)
// not bridged: 
Theorem GROUP_ACTION_CONJUGATION_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> group_action_hl A A G n (group_conjugation A G).
Admitted.

// HOL Light: Library/grouptheory.ml:7524 / GROUP_STABILIZER_CONJUGATION   (hash md5:118a79625c008edfca562f1407631274)
// not bridged: 
Theorem GROUP_STABILIZER_CONJUGATION : forall A:set, forall G :e group_hl A, forall a :e A, a :e group_carrier A G -> group_stabilizer A A G (group_conjugation A G) a = group_centralizer A G {a}.
Admitted.

// HOL Light: Library/grouptheory.ml:7533 / GROUP_ORBIT_CONJUGATION_GEN   (hash md5:602c6409d5442b5718eb2bb37623fb53)
// not bridged: 
Theorem GROUP_ORBIT_CONJUGATION_GEN : forall A:set, forall G :e group_hl A, forall s c= A, forall x :e A, s c= group_carrier A G -> forall x0 :e A, group_orbit A A G s (group_conjugation A G) x x0 <-> (x :e s -> x0 :e {y :e A | y :e s /\ group_conjugate A G {x} {y}}) /\ (~ x :e s -> x0 :e Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:7544 / GROUP_ORBIT_CONJUGATION   (hash md5:aef4b42efc653c4c5b39526fb97268b7)
// not bridged: 
Theorem GROUP_ORBIT_CONJUGATION : forall A:set, forall G :e group_hl A, forall x x0 :e A, group_orbit A A G (group_carrier A G) (group_conjugation A G) x x0 <-> (x :e group_carrier A G -> x0 :e {y :e A | y :e group_carrier A G /\ group_conjugate A G {x} {y}}) /\ (~ x :e group_carrier A G -> x0 :e Empty).
Admitted.

// HOL Light: Library/grouptheory.ml:7552 / GROUP_ACTION_IMAGE_CONJUGATION   (hash md5:b1a80069f129b2abb53ccaeac3888203)
// not bridged: 
Theorem GROUP_ACTION_IMAGE_CONJUGATION : forall A:set, A <> Empty -> forall G :e group_hl A, forall u c= Power A, (forall t c= A, t :e u -> t c= group_carrier A G) /\ (forall g :e A, forall t c= A, g :e group_carrier A G /\ t :e u -> {group_conjugation A G g x | x :e t} :e u) -> group_action_hl A (Power A) G u (fun x:set => fun x0:set => (fun x0 :e Power A => {x1 :e A | x1 :e {(fun x0 :e A => group_conjugation A G x x0) x1 | x1 :e x0}}) x0).
Admitted.

// HOL Light: Library/grouptheory.ml:7562 / GROUP_STABILIZER_IMAGE_CONJUGATION   (hash md5:8c9d5fd124e29fe192f65faebe843a82)
// not bridged: 
Theorem GROUP_STABILIZER_IMAGE_CONJUGATION : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, s c= group_carrier A G -> group_stabilizer A (Power A) G (fun x:set => fun x0:set => (fun x0 :e Power A => {x1 :e A | x1 :e {(fun x0 :e A => group_conjugation A G x x0) x1 | x1 :e x0}}) x0) s = group_normalizer A G s.
Admitted.

// HOL Light: Library/grouptheory.ml:7569 / GROUP_ACTION_IMAGE_CONJUGATION_CARRIER   (hash md5:2a0979b008e32fdfc4f8c4d3d2cc3f60)
// not bridged: 
Theorem GROUP_ACTION_IMAGE_CONJUGATION_CARRIER : forall A:set, A <> Empty -> forall G :e group_hl A, group_action_hl A (Power A) G {s :e Power A | s c= group_carrier A G} (fun x:set => fun x0:set => (fun x0 :e Power A => {x1 :e A | x1 :e {(fun x0 :e A => group_conjugation A G x x0) x1 | x1 :e x0}}) x0).
Admitted.

// HOL Light: Library/grouptheory.ml:7575 / GROUP_ACTION_IMAGE_CONJUGATION_SUBGROUPS   (hash md5:06722d1383d8fbc3cb5d0bbf3d964b36)
// not bridged: 
Theorem GROUP_ACTION_IMAGE_CONJUGATION_SUBGROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, group_action_hl A (Power A) G {n :e Power A | subgroup_of A n G} (fun x:set => fun x0:set => (fun x0 :e Power A => {x1 :e A | x1 :e {(fun x0 :e A => group_conjugation A G x x0) x1 | x1 :e x0}}) x0).
Admitted.

// HOL Light: Library/grouptheory.ml:7583 / GROUP_ORBIT_IMAGE_CONJUGATION   (hash md5:897c97d3b824296b33e0893cb4c72309)
// not bridged: 
Theorem GROUP_ORBIT_IMAGE_CONJUGATION : forall A:set, A <> Empty -> forall G :e group_hl A, forall x x0 c= A, group_orbit A (Power A) G {s :e Power A | s c= group_carrier A G} (fun x1:set => fun x2:set => (fun x2 :e Power A => {x3 :e A | x3 :e {(fun x2 :e A => group_conjugation A G x1 x2) x3 | x3 :e x2}}) x2) x x0 <-> group_conjugate A G x x0.
Admitted.

// HOL Light: Library/grouptheory.ml:7589 / GROUP_ORBIT_IMAGE_CONJUGATION_GEN   (hash md5:252880915157e1146027992fa9a1788e)
// not bridged: 
Theorem GROUP_ORBIT_IMAGE_CONJUGATION_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall u c= Power A, forall s c= A, (forall t c= A, t :e u -> t c= group_carrier A G) /\ s :e u -> forall t c= A, group_orbit A (Power A) G u (fun x:set => fun x0:set => (fun x0 :e Power A => {x1 :e A | x1 :e {(fun x0 :e A => group_conjugation A G x x0) x1 | x1 :e x0}}) x0) s t <-> t :e u /\ group_conjugate A G s t.
Admitted.

// HOL Light: Library/grouptheory.ml:7597 / CARD_CONJUGATE_SUBSETS_MUL_GEN   (hash md5:fd8e07ca18f976ba0bf6e5dea65c19b1)
// not bridged: 
Theorem CARD_CONJUGATE_SUBSETS_MUL_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, s c= group_carrier A G -> equip ({t :e Power A | group_conjugate A G s t} :*: group_normalizer A G s) (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:7610 / CARD_CONJUGATE_SUBSETS_MUL   (hash md5:ffafc3706b959bcd2fe64d1a3138ccb1)
// not bridged: 
Theorem CARD_CONJUGATE_SUBSETS_MUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, finite (group_carrier A G) /\ s c= group_carrier A G -> finite_cardinality {t :e Power A | group_conjugate A G s t} * finite_cardinality (group_normalizer A G s) = finite_cardinality (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:7624 / CARD_CONJUGATE_SUBSETS   (hash md5:dc10ca12b5968354441de3c0f41e32e5)
// not bridged: 
Theorem CARD_CONJUGATE_SUBSETS : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, finite (group_carrier A G) /\ s c= group_carrier A G -> finite_cardinality {t :e Power A | group_conjugate A G s t} = div_nat (finite_cardinality (group_carrier A G)) (finite_cardinality (group_normalizer A G s)).
Admitted.

// HOL Light: Library/grouptheory.ml:7640 / quotient_group   (hash md5:16d57c618dc39469534c6adbc3d0d594)
// not bridged: 
Theorem quotient_group_thm : forall A:set, A <> Empty -> forall n c= A, forall G :e group_hl A, quotient_group A G n = ({right_coset_hl A G n x | x :e A, x :e group_carrier A G},(n,(fun x :e Power A => group_setinv A G x,fun x :e Power A => fun x0 :e Power A => group_setmul A G x x0))).
Admitted.

// HOL Light: Library/grouptheory.ml:7645 / QUOTIENT_GROUP   (hash md5:9317200f9e58ad8ae51d7c7fb1f8bce0)
// not bridged: 
Theorem QUOTIENT_GROUP : forall A:set, A <> Empty -> (forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> group_carrier (Power A) (quotient_group A G n) = {right_coset_hl A G n x | x :e A, x :e group_carrier A G}) /\ ((forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> group_id (Power A) (quotient_group A G n) = n) /\ ((forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> forall x c= A, forall x0 :e A, x0 :e group_inv (Power A) (quotient_group A G n) x <-> x0 :e group_setinv A G x) /\ forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> forall x x0 c= A, forall x1 :e A, x1 :e group_mul (Power A) (quotient_group A G n) x x0 <-> x1 :e group_setmul A G x x0)).
Admitted.

// HOL Light: Library/grouptheory.ml:7685 / ABELIAN_QUOTIENT_GROUP   (hash md5:4773446d719a39f2c59111d95ed25d35)
// not bridged: 
Theorem ABELIAN_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, abelian_group_hl A G /\ subgroup_of A n G -> abelian_group_hl (Power A) (quotient_group A G n).
Admitted.

// HOL Light: Library/grouptheory.ml:7693 / FINITE_QUOTIENT_GROUP   (hash md5:e6c64e86d1ec4c60fc95106773670a9b)
// not bridged: 
Theorem FINITE_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, finite (group_carrier A G) /\ normal_subgroup_of A n G -> finite (group_carrier (Power A) (quotient_group A G n)).
Admitted.

// HOL Light: Library/grouptheory.ml:7700 / TRIVIAL_QUOTIENT_GROUP   (hash md5:3a11dac9f34083600c7bccb33bceee5f)
// not bridged: 
Theorem TRIVIAL_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, trivial_group A G /\ normal_subgroup_of A n G -> trivial_group (Power A) (quotient_group A G n).
Admitted.

// HOL Light: Library/grouptheory.ml:7709 / QUOTIENT_GROUP_ID   (hash md5:7f29a4cda5b0060b3465956b7be8c86b)
// not bridged: 
Theorem QUOTIENT_GROUP_ID : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> group_id (Power A) (quotient_group A G n) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:7715 / QUOTIENT_GROUP_INV   (hash md5:e2d200ef04b1dc0aa0be19ca8fc8d0c1)
// not bridged: 
Theorem QUOTIENT_GROUP_INV : forall A:set, forall G :e group_hl A, forall n c= A, forall a :e A, normal_subgroup_of A n G /\ a :e group_carrier A G -> forall x :e A, x :e group_inv (Power A) (quotient_group A G n) (right_coset_hl A G n a) <-> x :e right_coset_hl A G n (group_inv A G a).
Admitted.

// HOL Light: Library/grouptheory.ml:7722 / QUOTIENT_GROUP_MUL   (hash md5:a47f0e0c2c679de9ab77ed3a48c093da)
// not bridged: 
Theorem QUOTIENT_GROUP_MUL : forall A:set, forall G :e group_hl A, forall n c= A, forall a b :e A, normal_subgroup_of A n G /\ (a :e group_carrier A G /\ b :e group_carrier A G) -> forall x :e A, x :e group_mul (Power A) (quotient_group A G n) (right_coset_hl A G n a) (right_coset_hl A G n b) <-> x :e right_coset_hl A G n (group_mul A G a b).
Admitted.

// HOL Light: Library/grouptheory.ml:7730 / QUOTIENT_GROUP_DIV   (hash md5:882b51c867da7ceb7508e9c034e072c3)
// not bridged: 
Theorem QUOTIENT_GROUP_DIV : forall A:set, forall G :e group_hl A, forall n c= A, forall a b :e A, normal_subgroup_of A n G /\ (a :e group_carrier A G /\ b :e group_carrier A G) -> group_div (Power A) (quotient_group A G n) (right_coset_hl A G n a) (right_coset_hl A G n b) = right_coset_hl A G n (group_div A G a b).
Admitted.

// HOL Light: Library/grouptheory.ml:7738 / QUOTIENT_GROUP_POW   (hash md5:842c5d76e2f9154d6988e6e45d24b891)
// not bridged: 
Theorem QUOTIENT_GROUP_POW : forall A:set, forall G :e group_hl A, forall n c= A, forall a :e A, forall k :e omega, normal_subgroup_of A n G /\ a :e group_carrier A G -> group_pow (Power A) (quotient_group A G n) (right_coset_hl A G n a) k = right_coset_hl A G n (group_pow A G a k).
Admitted.

// HOL Light: Library/grouptheory.ml:7748 / QUOTIENT_GROUP_ZPOW   (hash md5:2e959082e0b59351508931d93832c240)
// not bridged: 
Theorem QUOTIENT_GROUP_ZPOW : forall A:set, forall G :e group_hl A, forall n c= A, forall a :e A, forall k :e int, normal_subgroup_of A n G /\ a :e group_carrier A G -> group_zpow (Power A) (quotient_group A G n) (right_coset_hl A G n a) k = right_coset_hl A G n (group_zpow A G a k).
Admitted.

// HOL Light: Library/grouptheory.ml:7756 / GROUP_HOMOMORPHISM_RIGHT_COSET   (hash md5:d2a7924891c2e58dae18fef473459d62)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> group_homomorphism_hl A (Power A) (G,quotient_group A G n) (fun x:set => {x0 :e A | x0 :e right_coset_hl A G n x}).
Admitted.

// HOL Light: Library/grouptheory.ml:7764 / GROUP_EPIMORPHISM_RIGHT_COSET   (hash md5:798d7105686746d772fb577a204b3c12)
// not bridged: 
Theorem GROUP_EPIMORPHISM_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> group_epimorphism A (Power A) (G,quotient_group A G n) (fun x:set => {x0 :e A | x0 :e right_coset_hl A G n x}).
Admitted.

// HOL Light: Library/grouptheory.ml:7771 / CARD_LE_QUOTIENT_GROUP   (hash md5:41d166a5dd68bd99008c0636f359a8bd)
// not bridged: 
Theorem CARD_LE_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> atleastp (group_carrier (Power A) (quotient_group A G n)) (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:7779 / CARD_QUOTIENT_GROUP_DIVIDES   (hash md5:ce1c12414ce667d61ad0c5563b369b9c)
// not bridged: 
Theorem CARD_QUOTIENT_GROUP_DIVIDES : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, finite (group_carrier A G) /\ normal_subgroup_of A n G -> divides_nat (finite_cardinality (group_carrier (Power A) (quotient_group A G n))) (finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:7787 / TRIVIAL_QUOTIENT_GROUP_EQ   (hash md5:2ed6bbec8f530338344ad906c7eb8468)
// not bridged: 
Theorem TRIVIAL_QUOTIENT_GROUP_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> (trivial_group (Power A) (quotient_group A G n) <-> n = group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:7798 / TRIVIAL_QUOTIENT_GROUP_SELF   (hash md5:b984b90d40af063cb23e1133e7546f8a)
// not bridged: 
Theorem TRIVIAL_QUOTIENT_GROUP_SELF : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group (Power A) (quotient_group A G (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:7802 / QUOTIENT_GROUP_TRIVIAL   (hash md5:a1c69c2272caf806511dbf01888b093a)
// not bridged: 
Theorem QUOTIENT_GROUP_TRIVIAL : forall A:set, A <> Empty -> forall G :e group_hl A, isomorphic_group (Power A) A (quotient_group A G {group_id A G}) G.
Admitted.

// HOL Light: Library/grouptheory.ml:7812 / GROUP_ISOMORPHISM_PROD_QUOTIENT_GROUP   (hash md5:127780a2167ff3512e8abba86a121e8c)
// not bridged: 
Theorem GROUP_ISOMORPHISM_PROD_QUOTIENT_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall n1 c= A, forall n2 c= B, normal_subgroup_of A n1 G1 /\ normal_subgroup_of B n2 G2 -> group_isomorphism_hl (Power A :*: Power B) (Power (A :*: B)) (prod_group (Power A) (Power B) (quotient_group A G1 n1) (quotient_group B G2 n2),quotient_group (A :*: B) (prod_group A B G1 G2) (n1 :*: n2)) (fun x:set => {x0 :e A :*: B | x0 :e x 0 :*: x 1}).
Admitted.

// HOL Light: Library/grouptheory.ml:7840 / ISOMORPHIC_QUOTIENT_PROD_GROUP   (hash md5:11ae14aa32ebb9d3ce33f70f7232d428)
// not bridged: 
Theorem ISOMORPHIC_QUOTIENT_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G1 :e group_hl A, forall G2 :e group_hl B, forall n1 c= A, forall n2 c= B, normal_subgroup_of A n1 G1 /\ normal_subgroup_of B n2 G2 -> isomorphic_group (Power (A :*: B)) (Power A :*: Power B) (quotient_group (A :*: B) (prod_group A B G1 G2) (n1 :*: n2)) (prod_group (Power A) (Power B) (quotient_group A G1 n1) (quotient_group B G2 n2)).
Admitted.

// HOL Light: Library/grouptheory.ml:7849 / CARTESIAN_PRODUCT_NORMAL_SUBGROUP_OF_PRODUCT_GROUP   (hash md5:b94e8e8854c399424b6a52f330408957)
// not bridged: 
Theorem CARTESIAN_PRODUCT_NORMAL_SUBGROUP_OF_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall h :e Power A :^: K, forall k c= K, normal_subgroup_of (A :^: K) {f :e A :^: K | (forall i :e k, f i :e h i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)} (product_group A K k G) <-> forall i :e K, i :e k -> normal_subgroup_of A (h i) (G i).
Admitted.

// HOL Light: Library/grouptheory.ml:7864 / GROUP_ISOMORPHISM_PRODUCT_QUOTIENT_GROUP   (hash md5:146ef7fee86048d5b756e9940ea657df)
// not bridged: 
Theorem GROUP_ISOMORPHISM_PRODUCT_QUOTIENT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall n :e Power A :^: K, forall k c= K, (forall i :e K, i :e k -> normal_subgroup_of A (n i) (G i)) -> group_isomorphism_hl (Power A :^: K) (Power (A :^: K)) (product_group (Power A) K k (fun i:set => quotient_group A (G i) (n i)),quotient_group (A :^: K) (product_group A K k G) {f :e A :^: K | (forall i :e k, f i :e n i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)}) (fun x:set => {x0 :e A :^: K | x0 :e {f :e A :^: K | (forall i :e k, f i :e x i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)}}).
Admitted.

// HOL Light: Library/grouptheory.ml:7905 / ISOMORPHIC_QUOTIENT_PRODUCT_GROUP   (hash md5:e444a70e7de0fc2f962fe0c6d8871060)
// not bridged: 
Theorem ISOMORPHIC_QUOTIENT_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall n :e Power A :^: K, forall k c= K, (forall i :e K, i :e k -> normal_subgroup_of A (n i) (G i)) -> isomorphic_group (Power (A :^: K)) (Power A :^: K) (quotient_group (A :^: K) (product_group A K k G) {f :e A :^: K | (forall i :e k, f i :e n i) /\ forall i :e K, ~ i :e k -> f i = choose_in A (fun y:set => False)}) (product_group (Power A) K k (fun i:set => quotient_group A (G i) (n i))).
Admitted.

// HOL Light: Library/grouptheory.ml:7915 / SUBGROUP_OF_QUOTIENT_GROUP   (hash md5:af672b0ecf9f6ab0c67e6683fec818bf)
// not bridged: 
Theorem SUBGROUP_OF_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, forall h c= Power A, normal_subgroup_of A n G -> (subgroup_of (Power A) h (quotient_group A G n) <-> exists k c= A, subgroup_of A k G /\ {right_coset_hl A G n x | x :e A, x :e k} = h).
Admitted.

// HOL Light: Library/grouptheory.ml:7915 / SUBGROUP_OF_QUOTIENT_GROUP_ALT   (hash md5:878ae539a650d729521a82dec1129d0b)
// not bridged: 
Theorem SUBGROUP_OF_QUOTIENT_GROUP_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, forall h c= Power A, normal_subgroup_of A n G -> (subgroup_of (Power A) h (quotient_group A G n) <-> exists k c= A, subgroup_of A k G /\ (n c= k /\ {right_coset_hl A G n x | x :e A, x :e k} = h)).
Admitted.

// HOL Light: Library/grouptheory.ml:7955 / SUBGROUP_OF_QUOTIENT_GROUP_GENERATED_BY   (hash md5:843c162f13950f453388060e1d5b62ce)
// not bridged: 
Theorem SUBGROUP_OF_QUOTIENT_GROUP_GENERATED_BY : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, forall h c= Power A, normal_subgroup_of A n G /\ subgroup_of (Power A) h (quotient_group A G n) -> exists k c= A, subgroup_of A k G /\ (n c= k /\ quotient_group A (subgroup_generated A G k) n = subgroup_generated (Power A) (quotient_group A G n) h).
Admitted.

// HOL Light: Library/grouptheory.ml:7973 / QUOTIENT_GROUP_SUBGROUP_GENERATED   (hash md5:dbcd987947bce36c91ca096c82a49a17)
// not bridged: 
Theorem QUOTIENT_GROUP_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall h n c= A, normal_subgroup_of A n G /\ (subgroup_of A h G /\ n c= h) -> quotient_group A (subgroup_generated A G h) n = subgroup_generated (Power A) (quotient_group A G n) {right_coset_hl A G n x | x :e A, x :e h}.
Admitted.

// HOL Light: Library/grouptheory.ml:7993 / group_kernel   (hash md5:e85dade13567e8c8ee92ea6e49d889b5)
// not bridged: 
Theorem group_kernel_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall f:set -> set, (forall x :e A, f x :e B) -> forall G' :e group_hl B, group_kernel A B (G,G') f = {x :e A | x :e group_carrier A G /\ f x = group_id B G'}.
Admitted.

// HOL Light: Library/grouptheory.ml:7997 / group_image   (hash md5:c143c07f8b392ae9b32d1d364b4d541f)
// not bridged: 
Theorem group_image_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, group_image A B (G,G') f = {f x | x :e group_carrier A G}.
Admitted.

// HOL Light: Library/grouptheory.ml:8000 / GROUP_KERNEL_ID   (hash md5:81e3511065788b52f29b46ad487f82a8)
// not bridged: 
Theorem GROUP_KERNEL_ID : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> group_id A G :e group_kernel A B (G,G') f.
Admitted.

// HOL Light: Library/grouptheory.ml:8006 / GROUP_KERNEL_NONEMPTY   (hash md5:219654d5f75041ab85cce7759b69c67c)
// not bridged: 
Theorem GROUP_KERNEL_NONEMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f -> ~ group_kernel A B (G,H) f = Empty.
Admitted.

// HOL Light: Library/grouptheory.ml:8011 / GROUP_KERNEL_SUBSET_CARRIER   (hash md5:9551de2e1cbd6d476cb365e48fbd08fa)
// not bridged: 
Theorem GROUP_KERNEL_SUBSET_CARRIER : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_kernel A B (G,H) f c= group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8015 / GROUP_MONOMORPHISM   (hash md5:09f458573fed956a680c808fc5aa480a)
// not bridged: 
Theorem GROUP_MONOMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_monomorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ group_kernel A B (G,G') f = {group_id A G}).
Admitted.

// HOL Light: Library/grouptheory.ml:8040 / GROUP_MONOMORPHISM_ALT   (hash md5:d07c8092923e0f5e7eb12f77a180c11c)
// not bridged: 
Theorem GROUP_MONOMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_monomorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ forall x :e A, x :e group_carrier A G /\ f x = group_id B G' -> x = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8049 / GROUP_MONOMORPHISM_ALT_EQ   (hash md5:9d9ea11ba9f7c2b2b12181243d79e728)
// not bridged: 
Theorem GROUP_MONOMORPHISM_ALT_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_monomorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ forall x :e A, x :e group_carrier A G -> (f x = group_id B G' <-> x = group_id A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:8056 / GROUP_EPIMORPHISM   (hash md5:8c65caeb87063dd295f575629fe141a9)
// not bridged: 
Theorem GROUP_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_epimorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ group_image A B (G,G') f = group_carrier B G').
Admitted.

// HOL Light: Library/grouptheory.ml:8063 / GROUP_EPIMORPHISM_ALT   (hash md5:7130ac74f0a2edfc16b99ab8fbd41273)
// not bridged: 
Theorem GROUP_EPIMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_epimorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ group_carrier B G' c= group_image A B (G,G') f).
Admitted.

// HOL Light: Library/grouptheory.ml:8071 / GROUP_ISOMORPHISM_EPIMORPHISM_ALT   (hash md5:36a23d8357c2a9607a8585fb3d7ebfb6)
// not bridged: 
Theorem GROUP_ISOMORPHISM_EPIMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_isomorphism_hl A B (G,G') f <-> group_epimorphism A B (G,G') f /\ forall x :e A, x :e group_carrier A G /\ f x = group_id B G' -> x = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8080 / GROUP_ISOMORPHISM_GROUP_KERNEL_GROUP_IMAGE   (hash md5:df78cc7299b8b1eb64c1b2f6fdd41b2d)
// not bridged: 
Theorem GROUP_ISOMORPHISM_GROUP_KERNEL_GROUP_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_isomorphism_hl A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ (group_kernel A B (G,G') f = {group_id A G} /\ group_image A B (G,G') f = group_carrier B G')).
Admitted.

// HOL Light: Library/grouptheory.ml:8089 / GROUP_ISOMORPHISM_ALT   (hash md5:a480632109deb17594ce6b6cdf0c9357)
// not bridged: 
Theorem GROUP_ISOMORPHISM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> (group_isomorphism_hl A B (G,G') f <-> {f x | x :e group_carrier A G} = group_carrier B G' /\ ((forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> f (group_mul A G x y) = group_mul B G' (f x) (f y)) /\ forall x :e A, x :e group_carrier A G /\ f x = group_id B G' -> x = group_id A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:8104 / SUBGROUP_GROUP_KERNEL   (hash md5:b3b733f32bc197af6d8126593406c88a)
// not bridged: 
Theorem SUBGROUP_GROUP_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> subgroup_of A (group_kernel A B (G,G') f) G.
Admitted.

// HOL Light: Library/grouptheory.ml:8111 / SUBGROUP_GROUP_IMAGE   (hash md5:6a642bfc073fbf2e0df839e1ee963cd7)
// not bridged: 
Theorem SUBGROUP_GROUP_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> subgroup_of B (group_image A B (G,G') f) G'.
Admitted.

// HOL Light: Library/grouptheory.ml:8118 / GROUP_KERNEL_TO_SUBGROUP_GENERATED   (hash md5:01dbd50b6ba19a213297631de97002d1)
// not bridged: 
Theorem GROUP_KERNEL_TO_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall s c= B, forall f:set -> set, (forall x :e A, f x :e B) -> group_kernel A B (G,subgroup_generated B H s) f = group_kernel A B (G,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:8123 / GROUP_IMAGE_TO_SUBGROUP_GENERATED   (hash md5:c018500e2cf974b7f1372216b713f436)
// not bridged: 
Theorem GROUP_IMAGE_TO_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall s c= B, forall f:set -> set, (forall x :e A, f x :e B) -> group_image A B (G,subgroup_generated B H s) f = group_image A B (G,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:8128 / GROUP_KERNEL_FROM_SUBGROUP_GENERATED   (hash md5:66ee82f0de33d8f4a45bc466180e2434)
// not bridged: 
Theorem GROUP_KERNEL_FROM_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall s c= A, forall f:set -> set, (forall x :e A, f x :e B) -> subgroup_of A s G -> group_kernel A B (subgroup_generated A G s,H) f = group_kernel A B (G,H) f :/\: s.
Admitted.

// HOL Light: Library/grouptheory.ml:8136 / GROUP_IMAGE_FROM_SUBGROUP_GENERATED   (hash md5:d9cc59f5c28f2970ad448f0fce2b04b1)
// not bridged: 
Theorem GROUP_IMAGE_FROM_SUBGROUP_GENERATED : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall s c= A, forall f:set -> set, (forall x :e A, f x :e B) -> subgroup_of A s G -> group_image A B (subgroup_generated A G s,H) f = group_image A B (G,H) f :/\: {f x | x :e s}.
Admitted.

// HOL Light: Library/grouptheory.ml:8144 / GROUP_ISOMORPHISM_ONTO_IMAGE   (hash md5:26b4bf9f757f30f6a182363c05a837aa)
// not bridged: 
Theorem GROUP_ISOMORPHISM_ONTO_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, group_isomorphism_hl A B (G,subgroup_generated B H (group_image A B (G,H) f)) f <-> group_monomorphism A B (G,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:8156 / NORMAL_SUBGROUP_GROUP_KERNEL   (hash md5:4982cb1f707ab9441d38cfa3df54d25d)
// not bridged: 
Theorem NORMAL_SUBGROUP_GROUP_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> normal_subgroup_of A (group_kernel A B (G,G') f) G.
Admitted.

// HOL Light: Library/grouptheory.ml:8169 / GROUP_KERNEL_RIGHT_COSET   (hash md5:225b881550aa1dc20c5285a45191b2e5)
// not bridged: 
Theorem GROUP_KERNEL_RIGHT_COSET : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> group_kernel A (Power A) (G,quotient_group A G n) (fun x:set => {x0 :e A | x0 :e right_coset_hl A G n x}) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:8179 / CARD_EQ_GROUP_IMAGE_KERNEL   (hash md5:e6994c1766ab631094cd5a4fff5760bf)
// not bridged: 
Theorem CARD_EQ_GROUP_IMAGE_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f -> equip (group_image A B (G,H) f :*: group_kernel A B (G,H) f) (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8199 / CARD_DIVIDES_GROUP_MONOMORPHIC_IMAGE   (hash md5:01eb99869b56dfd14a453e62ba7a3c6a)
// not bridged: 
Theorem CARD_DIVIDES_GROUP_MONOMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_monomorphism A B (G,H) f /\ finite (group_carrier B H) -> divides_nat (finite_cardinality (group_carrier A G)) (finite_cardinality (group_carrier B H)).
Admitted.

// HOL Light: Library/grouptheory.ml:8213 / CARD_DIVIDES_GROUP_EPIMORPHIC_IMAGE   (hash md5:dc94befd4cc484f375a2dbd32d7dd6fa)
// not bridged: 
Theorem CARD_DIVIDES_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f /\ finite (group_carrier A G) -> divides_nat (finite_cardinality (group_carrier B H)) (finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:8226 / QUOTIENT_GROUP_UNIVERSAL_EXPLICIT   (hash md5:a7944831fb5c1b2073d91122f39de773)
// not bridged: 
Theorem QUOTIENT_GROUP_UNIVERSAL_EXPLICIT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall n c= A, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f /\ (normal_subgroup_of A n G /\ (forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ right_coset_hl A G n x = right_coset_hl A G n y) -> f x = f y)) -> exists g:set -> set, (forall x :e Power A, g x :e B) /\ (group_homomorphism_hl (Power A) B (quotient_group A G n,G') g /\ forall x :e A, x :e group_carrier A G -> g (right_coset_hl A G n x) = f x).
Admitted.

// HOL Light: Library/grouptheory.ml:8247 / QUOTIENT_GROUP_UNIVERSAL   (hash md5:593783f94c2278ce81464c990e952c20)
// not bridged: 
Theorem QUOTIENT_GROUP_UNIVERSAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall n c= A, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f /\ (normal_subgroup_of A n G /\ n c= group_kernel A B (G,G') f) -> exists g:set -> set, (forall x :e Power A, g x :e B) /\ (group_homomorphism_hl (Power A) B (quotient_group A G n,G') g /\ forall x :e A, x :e group_carrier A G -> g (right_coset_hl A G n x) = f x).
Admitted.

// HOL Light: Library/grouptheory.ml:8264 / QUOTIENT_GROUP_UNIVERSAL_EPIMORPHISM   (hash md5:bb0038ead7c965242af146ca7d95bfd5)
// not bridged: 
Theorem QUOTIENT_GROUP_UNIVERSAL_EPIMORPHISM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall n c= A, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,G') f /\ (normal_subgroup_of A n G /\ n c= group_kernel A B (G,G') f) -> exists g:set -> set, (forall x :e Power A, g x :e B) /\ (group_epimorphism (Power A) B (quotient_group A G n,G') g /\ forall x :e A, x :e group_carrier A G -> g (right_coset_hl A G n x) = f x).
Admitted.

// HOL Light: Library/grouptheory.ml:8277 / GROUP_KERNEL_FROM_TRIVIAL_GROUP   (hash md5:b91851a551000a8c4a5bbe35907b587c)
// not bridged: 
Theorem GROUP_KERNEL_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f /\ trivial_group A G -> group_kernel A B (G,H) f = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8284 / GROUP_IMAGE_FROM_TRIVIAL_GROUP   (hash md5:b832e0d7d316ae131c2a968c7bfc13e7)
// not bridged: 
Theorem GROUP_IMAGE_FROM_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f /\ trivial_group A G -> group_image A B (G,H) f = {group_id B H}.
Admitted.

// HOL Light: Library/grouptheory.ml:8291 / GROUP_KERNEL_TO_TRIVIAL_GROUP   (hash md5:5cb1d5c727bd18f992d3589aec5c56a1)
// not bridged: 
Theorem GROUP_KERNEL_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f /\ trivial_group B H -> group_kernel A B (G,H) f = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8298 / GROUP_IMAGE_TO_TRIVIAL_GROUP   (hash md5:b24e32e14349f8c50f9e0dd3b16bf231)
// not bridged: 
Theorem GROUP_IMAGE_TO_TRIVIAL_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,H) f /\ trivial_group B H -> group_image A B (G,H) f = group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:8307 / FIRST_GROUP_ISOMORPHISM_THEOREM   (hash md5:a09c3399a43762878ce5fc6cb960f116)
// not bridged: 
Theorem FIRST_GROUP_ISOMORPHISM_THEOREM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_homomorphism_hl A B (G,G') f -> isomorphic_group (Power A) B (quotient_group A G (group_kernel A B (G,G') f)) (subgroup_generated B G' (group_image A B (G,G') f)).
Admitted.

// HOL Light: Library/grouptheory.ml:8332 / FIRST_GROUP_EPIMORPHISM_THEOREM   (hash md5:9403878b13be697415e72b88117fdbc5)
// not bridged: 
Theorem FIRST_GROUP_EPIMORPHISM_THEOREM : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall G' :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,G') f -> isomorphic_group (Power A) B (quotient_group A G (group_kernel A B (G,G') f)) G'.
Admitted.

// HOL Light: Library/grouptheory.ml:8340 / GROUP_HOMOMORPHISM_PREIMAGE_IMAGE_RIGHT   (hash md5:b2a389d2cd52213112779e7d3445922d)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PREIMAGE_IMAGE_RIGHT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall s c= A, group_homomorphism_hl A B (G,H) f /\ s c= group_carrier A G -> {x :e A | x :e group_carrier A G /\ f x :e {f x | x :e s}} = group_setmul A G s (group_kernel A B (G,H) f).
Admitted.

// HOL Light: Library/grouptheory.ml:8371 / GROUP_HOMOMORPHISM_PREIMAGE_IMAGE_LEFT   (hash md5:6120c1ad6fd206c8578ef4eaa4c3eb27)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PREIMAGE_IMAGE_LEFT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall s c= A, group_homomorphism_hl A B (G,H) f /\ s c= group_carrier A G -> {x :e A | x :e group_carrier A G /\ f x :e {f x | x :e s}} = group_setmul A G (group_kernel A B (G,H) f) s.
Admitted.

// HOL Light: Library/grouptheory.ml:8403 / GROUP_HOMOMORPHISM_IMAGE_PREIMAGE   (hash md5:48da75a643294d8fc97c14916f794e65)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_IMAGE_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall t c= B, group_homomorphism_hl A B (G,H) f -> {f x | x :e {x :e A | x :e group_carrier A G /\ f x :e t}} = t :/\: group_image A B (G,H) f.
Admitted.

// HOL Light: Library/grouptheory.ml:8410 / GROUP_HOMOMORPHISM_PREIMAGE_IMAGE   (hash md5:79de45331c5a1d3b37ed9b17257140d1)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PREIMAGE_IMAGE : forall A B:set, B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall s c= A, group_homomorphism_hl A B (G,H) f /\ (group_kernel A B (G,H) f c= s /\ subgroup_of A s G) -> {x :e A | x :e group_carrier A G /\ f x :e {f x | x :e s}} = s.
Admitted.

// HOL Light: Library/grouptheory.ml:8425 / GROUP_HOMOMORPHISM_IMAGE_PREIMAGE_EQ   (hash md5:da31f088b73f875354a80e9bfbaf98a1)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_IMAGE_PREIMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall t c= B, group_homomorphism_hl A B (G,H) f /\ t c= group_image A B (G,H) f -> {f x | x :e {x :e A | x :e group_carrier A G /\ f x :e t}} = t.
Admitted.

// HOL Light: Library/grouptheory.ml:8431 / GROUP_EPIMORPHISM_SUBGROUP_CORRESPONDENCE   (hash md5:ffb1a85af431218ac79fd6d89ff71a81)
// not bridged: 
Theorem GROUP_EPIMORPHISM_SUBGROUP_CORRESPONDENCE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall k c= B, group_epimorphism A B (G,H) f -> (subgroup_of B k H <-> exists j c= A, subgroup_of A j G /\ (group_kernel A B (G,H) f c= j /\ ({x :e A | x :e group_carrier A G /\ f x :e k} = j /\ {f x | x :e j} = k))).
Admitted.

// HOL Light: Library/grouptheory.ml:8450 / GROUP_EPIMORPHISM_SUBGROUP_CORRESPONDENCE_ALT   (hash md5:c93395f9df280761320b0e8fae898b10)
// not bridged: 
Theorem GROUP_EPIMORPHISM_SUBGROUP_CORRESPONDENCE_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall j c= A, group_epimorphism A B (G,H) f -> (subgroup_of A j G /\ group_kernel A B (G,H) f c= j <-> exists k c= B, subgroup_of B k H /\ ({x :e A | x :e group_carrier A G /\ f x :e k} = j /\ {f x | x :e j} = k)).
Admitted.

// HOL Light: Library/grouptheory.ml:8485 / NORMAL_SUBGROUP_OF_HOMOMORPHIC_PREIMAGE   (hash md5:604c77a8f0b68b7c92e93d60b3abdbec)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_HOMOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall j c= B, group_homomorphism_hl A B (G,H) f /\ normal_subgroup_of B j H -> normal_subgroup_of A {x :e A | x :e group_carrier A G /\ f x :e j} G.
Admitted.

// HOL Light: Library/grouptheory.ml:8496 / NORMAL_SUBGROUP_OF_EPIMORPHIC_IMAGE   (hash md5:418c559812d39fa92d6806364f03fb5b)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall n c= A, group_epimorphism A B (G,H) f /\ normal_subgroup_of A n G -> normal_subgroup_of B {f x | x :e n} H.
Admitted.

// HOL Light: Library/grouptheory.ml:8518 / NORMAL_SUBGROUP_OF_EPIMORPHIC_PREIMAGE_EQ   (hash md5:4c9234f3c636d1c94a6011bee0f0252b)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_EPIMORPHIC_PREIMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall j c= A, forall k c= B, group_epimorphism A B (G,H) f /\ (subgroup_of B k H /\ {x :e A | x :e group_carrier A G /\ f x :e k} = j) -> (normal_subgroup_of A j G <-> normal_subgroup_of B k H).
Admitted.

// HOL Light: Library/grouptheory.ml:8533 / GROUP_EPIMORPHISM_NORMAL_SUBGROUP_CORRESPONDENCE   (hash md5:ce024a155b151631c00cd6c4b27e118f)
// not bridged: 
Theorem GROUP_EPIMORPHISM_NORMAL_SUBGROUP_CORRESPONDENCE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall k c= B, group_epimorphism A B (G,H) f -> (normal_subgroup_of B k H <-> exists j c= A, normal_subgroup_of A j G /\ (group_kernel A B (G,H) f c= j /\ ({x :e A | x :e group_carrier A G /\ f x :e k} = j /\ {f x | x :e j} = k))).
Admitted.

// HOL Light: Library/grouptheory.ml:8545 / GROUP_EPIMORPHISM_NORMAL_SUBGROUP_CORRESPONDENCE_ALT   (hash md5:35140daac370af87cc95c6a6ab664663)
// not bridged: 
Theorem GROUP_EPIMORPHISM_NORMAL_SUBGROUP_CORRESPONDENCE_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall j c= A, group_epimorphism A B (G,H) f -> (normal_subgroup_of A j G /\ group_kernel A B (G,H) f c= j <-> exists k c= B, normal_subgroup_of B k H /\ ({x :e A | x :e group_carrier A G /\ f x :e k} = j /\ {f x | x :e j} = k)).
Admitted.

// HOL Light: Library/grouptheory.ml:8556 / SUBGROUP_OF_ISOMORPHIC_IMAGE_EQ   (hash md5:7e501120f29d53da6fe191b7f5b3d8c3)
// not bridged: 
Theorem SUBGROUP_OF_ISOMORPHIC_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall j c= A, group_isomorphism_hl A B (G,H) f /\ j c= group_carrier A G -> (subgroup_of B {f x | x :e j} H <-> subgroup_of A j G).
Admitted.

// HOL Light: Library/grouptheory.ml:8572 / NORMAL_SUBGROUP_OF_ISOMORPHIC_IMAGE_EQ   (hash md5:790c68fad17bc96da960a5a715ed978b)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_ISOMORPHIC_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall j c= A, group_isomorphism_hl A B (G,H) f /\ j c= group_carrier A G -> (normal_subgroup_of B {f x | x :e j} H <-> normal_subgroup_of A j G).
Admitted.

// HOL Light: Library/grouptheory.ml:8588 / GROUP_CONJUGATE_SUBGROUP_OF   (hash md5:f4038dc69162d9dbf94e6b3e348e44c2)
// not bridged: 
Theorem GROUP_CONJUGATE_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, group_conjugate A G s t -> (subgroup_of A s G <-> subgroup_of A t G).
Admitted.

// HOL Light: Library/grouptheory.ml:8599 / GROUP_CONJUGATE_NORMAL_SUBGROUP_OF   (hash md5:06f83c0fbe345a80094c104f0a594ef8)
// not bridged: 
Theorem GROUP_CONJUGATE_NORMAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= A, group_conjugate A G s t -> (normal_subgroup_of A s G <-> normal_subgroup_of A t G).
Admitted.

// HOL Light: Library/grouptheory.ml:8610 / NORMAL_SUBGROUP_CONJUGATE   (hash md5:491ab39232eba4701b14c82da4ed58cd)
// not bridged: 
Theorem NORMAL_SUBGROUP_CONJUGATE : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G <-> subgroup_of A n G /\ forall n' c= A, group_conjugate A G n n' -> n' = n.
Admitted.

// HOL Light: Library/grouptheory.ml:8618 / NORMAL_SUBGROUP_CONJUGATE_EQ   (hash md5:dae009bcb27cb09d1b0e7b2e7d1e9382)
// not bridged: 
Theorem NORMAL_SUBGROUP_CONJUGATE_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall n n' c= A, normal_subgroup_of A n G \/ normal_subgroup_of A n' G -> (group_conjugate A G n n' <-> n = n').
Admitted.

// HOL Light: Library/grouptheory.ml:8625 / QUOTIENT_SUBGROUP_CORRESPONDENCE   (hash md5:5de7cb35e63e16d57e4cdac50c146b47)
// not bridged: 
Theorem QUOTIENT_SUBGROUP_CORRESPONDENCE : forall A:set, A <> Empty -> forall G :e group_hl A, forall j c= A, forall k c= Power A, normal_subgroup_of A j G -> (subgroup_of (Power A) k (quotient_group A G j) <-> exists i c= A, subgroup_of A i G /\ (j c= i /\ ({x :e A | x :e group_carrier A G /\ right_coset_hl A G j x :e k} = i /\ {{x0 :e A | x0 :e right_coset_hl A G j x} | x :e i} = k))).
Admitted.

// HOL Light: Library/grouptheory.ml:8637 / QUOTIENT_NORMAL_SUBGROUP_CORRESPONDENCE   (hash md5:0aff3b9b809a6e95e187985d8be31a13)
// not bridged: 
Theorem QUOTIENT_NORMAL_SUBGROUP_CORRESPONDENCE : forall A:set, A <> Empty -> forall G :e group_hl A, forall j c= A, forall k c= Power A, normal_subgroup_of A j G -> (normal_subgroup_of (Power A) k (quotient_group A G j) <-> exists i c= A, normal_subgroup_of A i G /\ (j c= i /\ ({x :e A | x :e group_carrier A G /\ right_coset_hl A G j x :e k} = i /\ {{x0 :e A | x0 :e right_coset_hl A G j x} | x :e i} = k))).
Admitted.

// HOL Light: Library/grouptheory.ml:8650 / FIRST_GROUP_ISOMORPHISM_THEOREM_GEN   (hash md5:ebce582aa017bc1a902d530c3098e66a)
// not bridged: 
Theorem FIRST_GROUP_ISOMORPHISM_THEOREM_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall j c= A, forall k c= B, group_epimorphism A B (G,H) f /\ (normal_subgroup_of B k H /\ {x :e A | x :e group_carrier A G /\ f x :e k} = j) -> isomorphic_group (Power A) (Power B) (quotient_group A G j) (quotient_group B H k).
Admitted.

// HOL Light: Library/grouptheory.ml:8672 / FIRST_GROUP_ISOMORPHISM_THEOREM_GEN_ALT   (hash md5:70d79193616f51fbe5988880d3070b92)
// not bridged: 
Theorem FIRST_GROUP_ISOMORPHISM_THEOREM_GEN_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall j c= A, forall k c= B, group_epimorphism A B (G,H) f /\ (normal_subgroup_of A j G /\ (group_kernel A B (G,H) f c= j /\ {f x | x :e j} = k)) -> isomorphic_group (Power A) (Power B) (quotient_group A G j) (quotient_group B H k).
Admitted.

// HOL Light: Library/grouptheory.ml:8681 / SIMPLE_GROUP_EPIMORPHIC_IMAGE_EQ   (hash md5:e31041a22bf22b7a5e516511e6fb1b55)
// not bridged: 
Theorem SIMPLE_GROUP_EPIMORPHIC_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f -> ((forall k c= B, normal_subgroup_of B k H -> k = {group_id B H} \/ k = group_carrier B H) <-> forall h c= A, normal_subgroup_of A h G /\ (group_kernel A B (G,H) f c= h /\ group_kernel A B (G,H) f <> h) -> h = group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8706 / NO_PROPER_SUBGROUP_EPIMORPHIC_IMAGE_EQ   (hash md5:3d8a6b1ded22bd922f5ce3361ccc70c1)
// not bridged: 
Theorem NO_PROPER_SUBGROUP_EPIMORPHIC_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f -> ((forall k c= B, subgroup_of B k H -> k = {group_id B H} \/ k = group_carrier B H) <-> forall h c= A, subgroup_of A h G /\ (group_kernel A B (G,H) f c= h /\ group_kernel A B (G,H) f <> h) -> h = group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8730 / MAXIMAL_SUBGROUP   (hash md5:cdab9fcb55192a461e0e8c7e43381d70)
// not bridged: 
Theorem MAXIMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> ((forall h c= A, subgroup_of A h G /\ (n c= h /\ n <> h) -> h = group_carrier A G) <-> forall k c= Power A, subgroup_of (Power A) k (quotient_group A G n) -> k = {group_id (Power A) (quotient_group A G n)} \/ k = group_carrier (Power A) (quotient_group A G n)).
Admitted.

// HOL Light: Library/grouptheory.ml:8743 / MAXIMAL_NORMAL_SUBGROUP   (hash md5:381498a24b943cff16666047f36ca8fd)
// not bridged: 
Theorem MAXIMAL_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> ((forall h c= A, normal_subgroup_of A h G /\ (n c= h /\ n <> h) -> h = group_carrier A G) <-> forall k c= Power A, normal_subgroup_of (Power A) k (quotient_group A G n) -> k = {group_id (Power A) (quotient_group A G n)} \/ k = group_carrier (Power A) (quotient_group A G n)).
Admitted.

// HOL Light: Library/grouptheory.ml:8761 / trivial_homomorphism   (hash md5:77bfa060fc136183aea38c01e324970f)
// not bridged: 
Theorem trivial_homomorphism_thm : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall f:set -> set, (forall x :e A, f x :e B) -> forall G' :e group_hl B, trivial_homomorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ forall x :e A, x :e group_carrier A G -> f x = group_id B G'.
Admitted.

// HOL Light: Library/grouptheory.ml:8766 / GROUP_KERNEL_IMAGE_TRIVIAL   (hash md5:3b26ec9b04fa3869cd5de8ce112acd15)
// not bridged: 
Theorem GROUP_KERNEL_IMAGE_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall G' :e group_hl B, group_homomorphism_hl A B (G,G') f -> (group_kernel A B (G,G') f = group_carrier A G <-> group_image A B (G,G') f = {group_id B G'}).
Admitted.

// HOL Light: Library/grouptheory.ml:8775 / TRIVIAL_HOMOMORPHISM_GROUP_KERNEL   (hash md5:fc57fc40095cdaba518b550347835eb9)
// not bridged: 
Theorem TRIVIAL_HOMOMORPHISM_GROUP_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall G' :e group_hl B, trivial_homomorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ group_kernel A B (G,G') f = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8784 / TRIVIAL_HOMOMORPHISM_GROUP_IMAGE   (hash md5:f33ebd6f33bb12c135d8203ca52843f2)
// not bridged: 
Theorem TRIVIAL_HOMOMORPHISM_GROUP_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall G' :e group_hl B, trivial_homomorphism A B (G,G') f <-> group_homomorphism_hl A B (G,G') f /\ group_image A B (G,G') f = {group_id B G'}.
Admitted.

// HOL Light: Library/grouptheory.ml:8791 / TRIVIAL_HOMOMORPHISM_TRIVIAL   (hash md5:b8a775b1756ab1f27f1dcb1e8ffed71b)
// not bridged: 
Theorem TRIVIAL_HOMOMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl B, forall H :e group_hl A, trivial_homomorphism B A (G,H) (fun x:set => group_id A H).
Admitted.

// HOL Light: Library/grouptheory.ml:8795 / GROUP_MONOMORPHISM_TRIVIAL   (hash md5:f84e0643b2b2bd6f190cbda70bd27b10)
// not bridged: 
Theorem GROUP_MONOMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl B, forall H :e group_hl A, group_monomorphism B A (G,H) (fun x:set => group_id A H) <-> trivial_group B G.
Admitted.

// HOL Light: Library/grouptheory.ml:8800 / GROUP_EPIMORPHISM_TRIVIAL   (hash md5:647b37feae578b26b41dd9dae3f98ed8)
// not bridged: 
Theorem GROUP_EPIMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl B, forall H :e group_hl A, group_epimorphism B A (G,H) (fun x:set => group_id A H) <-> trivial_group A H.
Admitted.

// HOL Light: Library/grouptheory.ml:8807 / GROUP_ISOMORPHISM_TRIVIAL   (hash md5:84ba4c33c317fabb53b693b294816fc9)
// not bridged: 
Theorem GROUP_ISOMORPHISM_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl B, forall H :e group_hl A, group_isomorphism_hl B A (G,H) (fun x:set => group_id A H) <-> trivial_group B G /\ trivial_group A H.
Admitted.

// HOL Light: Library/grouptheory.ml:8819 / group_element_order   (hash md5:9cfa321b79ed9eb5d14cfa95225b37c1)
// not bridged: 
Theorem group_element_order_thm : forall A:set, forall x :e A, forall G :e group_hl A, group_element_order_hl A G x = choose_in omega (fun d:set => forall n :e omega, group_pow A G x n = group_id A G <-> divides_nat d n).
Admitted.

// HOL Light: Library/grouptheory.ml:8823 / GROUP_POW_EQ_ID   (hash md5:a8855df4b25e0c69e6e7b0ba84db460c)
// not bridged: 
Theorem GROUP_POW_EQ_ID : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, x :e group_carrier A G -> (group_pow A G x n = group_id A G <-> divides_nat (group_element_order_hl A G x) n).
Admitted.

// HOL Light: Library/grouptheory.ml:8850 / GROUP_POW_EQ_ID_DIVISOR   (hash md5:51053a1aafe788801f76ad9e5f5c0973)
// not bridged: 
Theorem GROUP_POW_EQ_ID_DIVISOR : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, x :e group_carrier A G /\ (group_pow A G x m = group_id A G /\ divides_nat m n) -> group_pow A G x n = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8858 / GROUP_POW_ELEMENT_ORDER   (hash md5:edf8fe03764cf9d73953d67d55ab6ac2)
// not bridged: 
Theorem GROUP_POW_ELEMENT_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_pow A G x (group_element_order_hl A G x) = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8863 / GROUP_ZPOW_EQ_ID   (hash md5:622ca246112c06474a134a3e3c64b940)
// not bridged: 
Theorem GROUP_ZPOW_EQ_ID : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e int, x :e group_carrier A G -> (group_zpow A G x n = group_id A G <-> divides_int (group_element_order_hl A G x) n).
Admitted.

// HOL Light: Library/grouptheory.ml:8875 / GROUP_ZPOW_EQ_ID_DIVISOR   (hash md5:7ada509117a71190eb7ab3b2bd04fffa)
// not bridged: 
Theorem GROUP_ZPOW_EQ_ID_DIVISOR : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e int, x :e group_carrier A G /\ (group_zpow A G x m = group_id A G /\ divides_int m n) -> group_zpow A G x n = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:8883 / GROUP_ZPOW_EQ_ALT   (hash md5:9ea560738c27ee24b5021ce6c71498b7)
// not bridged: 
Theorem GROUP_ZPOW_EQ_ALT : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e int, x :e group_carrier A G -> (group_zpow A G x m = group_zpow A G x n <-> divides_int (group_element_order_hl A G x) (n + - m)).
Admitted.

// HOL Light: Library/grouptheory.ml:8891 / GROUP_ZPOW_EQ   (hash md5:e03b9486d8b9fa212d531e5bfc561c94)
// not bridged: 
Theorem GROUP_ZPOW_EQ : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e int, x :e group_carrier A G -> (group_zpow A G x m = group_zpow A G x n <-> divides_int (group_element_order_hl A G x) (m + - n)).
Admitted.

// HOL Light: Library/grouptheory.ml:8899 / GROUP_POW_EQ   (hash md5:4fd1c4dd0bea924c34caabb9ed80c15d)
// not bridged: 
Theorem GROUP_POW_EQ : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, x :e group_carrier A G -> (group_pow A G x m = group_pow A G x n <-> exists q1 q2 :e omega, m + group_element_order_hl A G x * q1 = n + group_element_order_hl A G x * q2).
Admitted.

// HOL Light: Library/grouptheory.ml:8906 / GROUP_ZPOW_REM_ELEMENT_ORDER   (hash md5:dad2330a008866691d24002898293295)
// not bridged: 
Theorem GROUP_ZPOW_REM_ELEMENT_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e int, x :e group_carrier A G -> group_zpow A G x (rem_int n (group_element_order_hl A G x)) = group_zpow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:8914 / GROUP_POW_MOD_ELEMENT_ORDER   (hash md5:810cb1c36dec0f9d1ebe52cddb2422e6)
// not bridged: 
Theorem GROUP_POW_MOD_ELEMENT_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, x :e group_carrier A G -> group_pow A G x (mod_nat n (group_element_order_hl A G x)) = group_pow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:8922 / GROUP_ELEMENT_ORDER_EQ_0   (hash md5:6cfd11c4c7a78b9cdb7a967bd140d8c9)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_EQ_0 : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> (group_element_order_hl A G x = 0 <-> forall n :e omega, ~ n = 0 -> ~ group_pow A G x n = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8930 / GROUP_ELEMENT_ORDER_UNIQUE   (hash md5:0dec4e86508e4229f1f4d721675db1e9)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_UNIQUE : forall A:set, forall G :e group_hl A, forall x :e A, forall d :e omega, x :e group_carrier A G -> (group_element_order_hl A G x = d <-> forall n :e omega, group_pow A G x n = group_id A G <-> divides_nat d n).
Admitted.

// HOL Light: Library/grouptheory.ml:8940 / GROUP_ELEMENT_ORDER_EQ_1   (hash md5:5ab27b08cb1abd3cf0addaf44d19da14)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_EQ_1 : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> (group_element_order_hl A G x = 1 <-> x = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8947 / GROUP_ELEMENT_ORDER_UNIQUE_PRIME   (hash md5:521eda3d3692ce7fcec0de7035eae334)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_UNIQUE_PRIME : forall A:set, forall G :e group_hl A, forall x :e A, forall p :e omega, x :e group_carrier A G /\ prime_nat p -> (group_element_order_hl A G x = p <-> ~ x = group_id A G /\ group_pow A G x p = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8956 / GROUP_ELEMENT_ORDER_ID   (hash md5:55a0d144f19194a7250d89d346ce433d)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_ID : forall A:set, A <> Empty -> forall G :e group_hl A, group_element_order_hl A G (group_id A G) = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:8960 / GROUP_ELEMENT_ORDER_INV   (hash md5:1e5275f2ca3bc5c1034c73991801bc80)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_INV : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_element_order_hl A G (group_inv A G x) = group_element_order_hl A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:8967 / GROUP_POW_GCD_EQ_ID   (hash md5:67de937ebe8bc74bc79a744f25951911)
// not bridged: 
Theorem GROUP_POW_GCD_EQ_ID : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, x :e group_carrier A G -> (group_pow A G x (gcd_int m n) = group_id A G <-> group_pow A G x m = group_id A G /\ group_pow A G x n = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8974 / GROUP_POW_COPRIME_EQ_ID   (hash md5:1efafe48f2ae36139abb70834513f7dd)
// not bridged: 
Theorem GROUP_POW_COPRIME_EQ_ID : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, x :e group_carrier A G /\ gcd_int m n = 1 -> (group_pow A G x m = group_id A G /\ group_pow A G x n = group_id A G <-> x = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:8981 / FINITE_GROUP_ELEMENT_ORDER_NONZERO   (hash md5:a2a2908c9af788ec9f8e7120d60bb1e8)
// not bridged: 
Theorem FINITE_GROUP_ELEMENT_ORDER_NONZERO : forall A:set, forall G :e group_hl A, forall x :e A, finite (group_carrier A G) /\ x :e group_carrier A G -> ~ group_element_order_hl A G x = 0.
Admitted.

// HOL Light: Library/grouptheory.ml:8995 / GROUP_ELEMENT_ORDER_POW   (hash md5:601ee4316f2244d0ff4ade487f9e73a0)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_POW : forall A:set, forall G :e group_hl A, forall x :e A, forall k :e omega, x :e group_carrier A G /\ (~ k = 0 /\ divides_nat k (group_element_order_hl A G x)) -> group_element_order_hl A G (group_pow A G x k) = div_nat (group_element_order_hl A G x) k.
Admitted.

// HOL Light: Library/grouptheory.ml:9006 / GROUP_ELEMENT_ORDER_POW_GEN   (hash md5:c1dc6ea7d3c89f0f01720fc91a1b8a3a)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_POW_GEN : forall A:set, forall G :e group_hl A, forall x :e A, forall k :e omega, x :e group_carrier A G -> group_element_order_hl A G (group_pow A G x k) = if k = 0 then 1 else div_nat (group_element_order_hl A G x) (gcd_int (group_element_order_hl A G x) k).
Admitted.

// HOL Light: Library/grouptheory.ml:9027 / GROUP_ELEMENT_ORDER_MUL_DIVIDES_GEN   (hash md5:56d55c96c1ace0b2c5b148fa9cfa553c)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_MUL_DIVIDES_GEN : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e omega, x :e group_carrier A G /\ (y :e group_carrier A G /\ (group_mul A G x y = group_mul A G y x /\ (divides_nat (group_element_order_hl A G x) n /\ divides_nat (group_element_order_hl A G y) n))) -> divides_nat (group_element_order_hl A G (group_mul A G x y)) n.
Admitted.

// HOL Light: Library/grouptheory.ml:9039 / ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES_GEN   (hash md5:6ddc9144d646b4a7fba145f419d7d488)
// not bridged: 
Theorem ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES_GEN : forall A:set, forall G :e group_hl A, forall x y :e A, forall n :e omega, abelian_group_hl A G /\ (x :e group_carrier A G /\ (y :e group_carrier A G /\ (divides_nat (group_element_order_hl A G x) n /\ divides_nat (group_element_order_hl A G y) n))) -> divides_nat (group_element_order_hl A G (group_mul A G x y)) n.
Admitted.

// HOL Light: Library/grouptheory.ml:9050 / GROUP_ELEMENT_ORDER_MUL_DIVIDES_LCM   (hash md5:ea1b09331348d8809a64d6874680407d)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_MUL_DIVIDES_LCM : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_mul A G y x) -> divides_nat (group_element_order_hl A G (group_mul A G x y)) (lcm_int (group_element_order_hl A G x) (group_element_order_hl A G y)).
Admitted.

// HOL Light: Library/grouptheory.ml:9060 / ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES_LCM   (hash md5:22fb041932cc5c363ec4b4838a8b307e)
// not bridged: 
Theorem ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES_LCM : forall A:set, forall G :e group_hl A, forall x y :e A, abelian_group_hl A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> divides_nat (group_element_order_hl A G (group_mul A G x y)) (lcm_int (group_element_order_hl A G x) (group_element_order_hl A G y)).
Admitted.

// HOL Light: Library/grouptheory.ml:9070 / GROUP_ELEMENT_ORDER_HOMOMORPHIC_IMAGE   (hash md5:e91e9454195c7c3119551b0331b4bc33)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_HOMOMORPHIC_IMAGE : forall A B:set, B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall x :e A, group_homomorphism_hl A B (G,H) f /\ x :e group_carrier A G -> divides_nat (group_element_order_hl B H (f x)) (group_element_order_hl A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:9082 / GROUP_ELEMENT_ORDER_MONOMORPHIC_IMAGE   (hash md5:c8ec76ee66682c72d78c49d5221cf49c)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_MONOMORPHIC_IMAGE : forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall G :e group_hl A, forall H :e group_hl B, forall x :e A, group_monomorphism A B (G,H) f /\ x :e group_carrier A G -> group_element_order_hl B H (f x) = group_element_order_hl A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:9090 / ISOMORPHIC_GROUP_TORSION   (hash md5:cfa23d2c4fd966bd31f667a7d5a666b3)
// not bridged: 
Theorem ISOMORPHIC_GROUP_TORSION : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H -> ((forall x :e A, x :e group_carrier A G -> P (group_element_order_hl A G x)) <-> forall y :e B, y :e group_carrier B H -> P (group_element_order_hl B H y)).
Admitted.

// HOL Light: Library/grouptheory.ml:9101 / GROUP_ELEMENT_ORDER_CONJUGATION   (hash md5:eb55455e347f842143855619ff56fab9)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_CONJUGATION : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_element_order_hl A G (group_conjugation A G x y) = group_element_order_hl A G y.
Admitted.

// HOL Light: Library/grouptheory.ml:9112 / GROUP_ELEMENT_ORDER_MUL_DIVIDES   (hash md5:d71914e9fbef586e4dfdb1e72d2ac619)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_MUL_DIVIDES : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_mul A G y x) -> divides_nat (group_element_order_hl A G (group_mul A G x y)) (group_element_order_hl A G x * group_element_order_hl A G y).
Admitted.

// HOL Light: Library/grouptheory.ml:9125 / ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES   (hash md5:59d21eb13014741b80f495bd31ee9792)
// not bridged: 
Theorem ABELIAN_GROUP_ELEMENT_ORDER_MUL_DIVIDES : forall A:set, forall G :e group_hl A, forall x y :e A, abelian_group_hl A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> divides_nat (group_element_order_hl A G (group_mul A G x y)) (group_element_order_hl A G x * group_element_order_hl A G y).
Admitted.

// HOL Light: Library/grouptheory.ml:9132 / GROUP_POW_MUL_EQ_ID_SYM   (hash md5:8ea3b27f9606a94611a37982735e4a9b)
// not bridged: 
Theorem GROUP_POW_MUL_EQ_ID_SYM : forall A:set, forall G :e group_hl A, forall n :e omega, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> (group_pow A G (group_mul A G x y) n = group_id A G <-> group_pow A G (group_mul A G y x) n = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:9155 / GROUP_ELEMENT_ORDER_MUL_SYM   (hash md5:792176d8f2281d7834bcb9353f2f677d)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_MUL_SYM : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_element_order_hl A G (group_mul A G x y) = group_element_order_hl A G (group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:9163 / GROUP_ELEMENT_ORDER_UNIQUE_ALT   (hash md5:ca69e9863139c6c7f9e3079542dd27e3)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_UNIQUE_ALT : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, x :e group_carrier A G /\ ~ n = 0 -> (group_element_order_hl A G x = n <-> group_pow A G x n = group_id A G /\ forall m :e omega, 0 < m /\ m < n -> ~ group_pow A G x m = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:9190 / GROUP_ELEMENT_ORDER_EQ_2   (hash md5:3ef2f0848bcd25e5c6d287f3dc2fc3e8)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_EQ_2 : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> (group_element_order_hl A G x = 2 <-> ~ x = group_id A G /\ group_pow A G x 2 = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:9200 / GROUP_ELEMENT_ORDER_EQ_2_ALT   (hash md5:1aff5dd4ccc61a13c77b9f32d838e5f9)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_EQ_2_ALT : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> (group_element_order_hl A G x = 2 <-> ~ x = group_id A G /\ group_inv A G x = x).
Admitted.

// HOL Light: Library/grouptheory.ml:9207 / GROUP_ELEMENT_ORDER_POW_DIVIDES   (hash md5:f7a44a797deeaf11e0f1034b699bc850)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_POW_DIVIDES : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, x :e group_carrier A G -> divides_nat (group_element_order_hl A G (group_pow A G x n)) (group_element_order_hl A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:9216 / GROUP_ELEMENT_ORDER_MUL_EQ   (hash md5:c2be4a3469cdae0110d357026d837817)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_MUL_EQ : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (group_mul A G x y = group_mul A G y x /\ gcd_int (group_element_order_hl A G x) (group_element_order_hl A G y) = 1)) -> group_element_order_hl A G (group_mul A G x y) = group_element_order_hl A G x * group_element_order_hl A G y.
Admitted.

// HOL Light: Library/grouptheory.ml:9243 / GROUP_ELEMENT_ORDER_EQ_MUL_GEN   (hash md5:1cb4390d50547e4e1866dcf1832cae5a)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_EQ_MUL_GEN : forall A:set, forall G :e group_hl A, forall x :e A, forall k n :e omega, x :e group_carrier A G /\ ~ k = 0 -> (group_element_order_hl A G x = k * n <-> divides_nat k (group_element_order_hl A G x) /\ group_element_order_hl A G (group_pow A G x k) = n).
Admitted.

// HOL Light: Library/grouptheory.ml:9257 / GROUP_ELEMENT_ORDER_EQ_MUL   (hash md5:e392db7991e594688420a2ea39b27a29)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_EQ_MUL : forall A:set, forall G :e group_hl A, forall x :e A, forall k n :e omega, x :e group_carrier A G /\ (~ k = 0 /\ divides_nat k n) -> (group_element_order_hl A G x = k * n <-> group_element_order_hl A G (group_pow A G x k) = n).
Admitted.

// HOL Light: Library/grouptheory.ml:9265 / ABELIAN_GROUP_ELEMENT_ORDER_MUL_EQ   (hash md5:5c16c4c380b7b9258a4a328068e7f647)
// not bridged: 
Theorem ABELIAN_GROUP_ELEMENT_ORDER_MUL_EQ : forall A:set, forall G :e group_hl A, forall x y :e A, abelian_group_hl A G /\ (x :e group_carrier A G /\ (y :e group_carrier A G /\ gcd_int (group_element_order_hl A G x) (group_element_order_hl A G y) = 1)) -> group_element_order_hl A G (group_mul A G x y) = group_element_order_hl A G x * group_element_order_hl A G y.
Admitted.

// HOL Light: Library/grouptheory.ml:9274 / GROUP_ELEMENT_ORDER_LCM_EXISTS   (hash md5:f7f7c01b615a259442f6f2972899df72)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_LCM_EXISTS : forall A:set, forall G :e group_hl A, forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_mul A G x y = group_mul A G y x) -> exists z :e A, z :e group_carrier A G /\ group_element_order_hl A G z = lcm_int (group_element_order_hl A G x) (group_element_order_hl A G y).
Admitted.

// HOL Light: Library/grouptheory.ml:9311 / ABELIAN_GROUP_ELEMENT_ORDER_LCM_EXISTS   (hash md5:28dd68fc01580a0810f2f943bc16c543)
// not bridged: 
Theorem ABELIAN_GROUP_ELEMENT_ORDER_LCM_EXISTS : forall A:set, forall G :e group_hl A, forall x y :e A, abelian_group_hl A G /\ (x :e group_carrier A G /\ y :e group_carrier A G) -> exists z :e A, z :e group_carrier A G /\ group_element_order_hl A G z = lcm_int (group_element_order_hl A G x) (group_element_order_hl A G y).
Admitted.

// HOL Light: Library/grouptheory.ml:9321 / ABELIAN_GROUP_ORDER_DIVIDES_MAXIMAL   (hash md5:b33f07dc3335f206f08057654e105132)
// not bridged: 
Theorem ABELIAN_GROUP_ORDER_DIVIDES_MAXIMAL : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G /\ finite (group_carrier A G) -> exists x :e A, x :e group_carrier A G /\ forall y :e A, y :e group_carrier A G -> divides_nat (group_element_order_hl A G y) (group_element_order_hl A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:9341 / ABELIAN_GROUP_ELEMENT_ORDER_DIVIDES_MAXIMAL_ALT   (hash md5:588413a92716e6853b55ff78da86623e)
// not bridged: 
Theorem ABELIAN_GROUP_ELEMENT_ORDER_DIVIDES_MAXIMAL_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G /\ finite (group_carrier A G) -> exists x :e A, x :e group_carrier A G /\ forall y :e A, y :e group_carrier A G -> group_pow A G y (group_element_order_hl A G x) = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:9350 / GROUP_ELEMENT_ORDER_SUBGROUP_GENERATED   (hash md5:acdb31106a5c0481c38e3a96ebbf88a2)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_SUBGROUP_GENERATED : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, group_element_order_hl A (subgroup_generated A G h) x = group_element_order_hl A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:9357 / GROUP_ELEMENT_ORDER_PROD_GROUP   (hash md5:c16abfea94cc6411c971fe7746d0d823)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_PROD_GROUP : forall A B:set, forall G :e group_hl A, forall H :e group_hl B, forall x :e A, forall y :e B, x :e group_carrier A G /\ y :e group_carrier B H -> group_element_order_hl (A :*: B) (prod_group A B G H) (x,y) = lcm_int (group_element_order_hl A G x) (group_element_order_hl B H y).
Admitted.

// HOL Light: Library/grouptheory.ml:9366 / GROUP_ELEMENT_ORDER_PROD_GROUP_ALT   (hash md5:7689b86dd93216bb7b4e2afdfdfd7e32)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_PROD_GROUP_ALT : forall A B:set, forall G :e group_hl A, forall H :e group_hl B, forall z :e A :*: B, z :e group_carrier (A :*: B) (prod_group A B G H) -> group_element_order_hl (A :*: B) (prod_group A B G H) z = lcm_int (group_element_order_hl A G (z 0)) (group_element_order_hl B H (z 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:9374 / GROUP_ELEMENT_ORDER_SUM_GROUP   (hash md5:00ebe00fbf201c8f8cb9eed5b01b799d)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall x :e A :^: K, x :e group_carrier (A :^: K) (sum_group A K k G) -> group_element_order_hl (A :^: K) (sum_group A K k G) x = iterate_op omega (fun a:set => fun b:set => lcm_int a b) k (fun i:set => group_element_order_hl A (G i) (x i)).
Admitted.

// HOL Light: Library/grouptheory.ml:9392 / GROUP_ELEMENT_ORDER_SUM_GROUP_EQ_0   (hash md5:4e440c05b6391b2b4bbec173fe212734)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_SUM_GROUP_EQ_0 : forall A K:set, A <> Empty -> K <> Empty -> forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall k c= K, forall x :e A :^: K, x :e group_carrier (A :^: K) (sum_group A K k G) -> (group_element_order_hl (A :^: K) (sum_group A K k G) x = 0 <-> exists i :e K, i :e k /\ group_element_order_hl A (G i) (x i) = 0).
Admitted.

// HOL Light: Library/grouptheory.ml:9404 / GROUP_ELEMENT_ORDER_COPRIME_DECOMP_EXPLICIT   (hash md5:b434a76a2af56aec97dbe755f55a2a2e)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_COPRIME_DECOMP_EXPLICIT : forall A:set, forall G :e group_hl A, forall x :e A, forall m n :e omega, gcd_int m n = 1 /\ (x :e group_carrier A G /\ group_element_order_hl A G x = m * n) -> exists r s :e int, group_element_order_hl A G (group_zpow A G x r) = m /\ (group_element_order_hl A G (group_zpow A G x s) = n /\ group_mul A G (group_zpow A G x r) (group_zpow A G x s) = x).
Admitted.

// HOL Light: Library/grouptheory.ml:9426 / GROUP_ELEMENT_ORDER_COPRIME_DECOMP_UNIQUE   (hash md5:e03eea6844cb6c3cb4842ccd4a59d332)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_COPRIME_DECOMP_UNIQUE : forall A:set, forall G :e group_hl A, forall z :e A, forall m n :e omega, gcd_int m n = 1 /\ (z :e group_carrier A G /\ group_element_order_hl A G z = m * n) -> exists x :e A :*: A, x 0 :e group_carrier A G /\ (x 1 :e group_carrier A G /\ (group_mul A G (x 0) (x 1) = z /\ (group_mul A G (x 1) (x 0) = z /\ (group_element_order_hl A G (x 0) = m /\ group_element_order_hl A G (x 1) = n)))) /\ forall y :e A :*: A, y 0 :e group_carrier A G /\ (y 1 :e group_carrier A G /\ (group_mul A G (y 0) (y 1) = z /\ (group_mul A G (y 1) (y 0) = z /\ (group_element_order_hl A G (y 0) = m /\ group_element_order_hl A G (y 1) = n)))) -> y = x.
Admitted.

// HOL Light: Library/grouptheory.ml:9470 / GROUP_ELEMENT_ORDER_COPRIME_DECOMP   (hash md5:780c33043af62fd94a8bfdafa54e3c3f)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_COPRIME_DECOMP : forall A:set, forall G :e group_hl A, forall z :e A, forall m n :e omega, gcd_int m n = 1 /\ (z :e group_carrier A G /\ group_element_order_hl A G z = m * n) -> exists x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (group_mul A G x y = z /\ (group_mul A G y x = z /\ (group_element_order_hl A G x = m /\ group_element_order_hl A G y = n)))).
Admitted.

// HOL Light: Library/grouptheory.ml:9485 / GROUP_ELEMENT_ORDER_COPRIME_DECOMP_DIVIDES   (hash md5:1dcb2fd9a5573e30fa930cdc9e71488c)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_COPRIME_DECOMP_DIVIDES : forall A:set, forall G :e group_hl A, forall z :e A, forall m n :e omega, gcd_int m n = 1 /\ (z :e group_carrier A G /\ divides_nat (group_element_order_hl A G z) (m * n)) -> exists x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (group_mul A G x y = z /\ (group_mul A G y x = z /\ (divides_nat (group_element_order_hl A G x) m /\ divides_nat (group_element_order_hl A G y) n)))).
Admitted.

// HOL Light: Library/grouptheory.ml:9507 / GROUP_POW_EQ_ID_DECOMP   (hash md5:728b30c5b0e9a4674fdc56ec4d65dbac)
// not bridged: 
Theorem GROUP_POW_EQ_ID_DECOMP : forall A:set, forall G :e group_hl A, forall z :e A, forall m n :e omega, gcd_int m n = 1 /\ (z :e group_carrier A G /\ group_pow A G z (m * n) = group_id A G) -> exists x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (group_mul A G x y = z /\ (group_mul A G y x = z /\ (group_pow A G x m = group_id A G /\ group_pow A G y n = group_id A G)))).
Admitted.

// HOL Light: Library/grouptheory.ml:9519 / GROUP_ELEMENT_ORDER_PRIMEPOW_DECOMP   (hash md5:0930c95e745c9e6322f786613b938713)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_PRIMEPOW_DECOMP : forall A:set, forall G :e group_hl A, forall z :e A, forall p :e omega, prime_nat p /\ (z :e group_carrier A G /\ ~ group_element_order_hl A G z = 0) -> exists x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ (group_mul A G x y = z /\ (group_mul A G y x = z /\ ((exists k :e omega, group_element_order_hl A G x = p ^ k) /\ gcd_int p (group_element_order_hl A G y) = 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:9543 / SUBGROUP_OF_TORSION_GENERAL   (hash md5:d0ba97d98a91fe162a36bd8e8f40f520)
// not bridged: 
Theorem SUBGROUP_OF_TORSION_GENERAL : forall A:set, A <> Empty -> forall P:set -> prop, forall G :e group_hl A, abelian_group_hl A G /\ (P 1 /\ (forall m n p :e omega, divides_nat p (lcm_int m n) /\ (P m /\ P n) -> P p)) -> subgroup_of A {x :e A | x :e group_carrier A G /\ P (group_element_order_hl A G x)} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9557 / SUBGROUP_OF_TORSION_GEN   (hash md5:48c3f03673f5e70b9375c8602686bc5c)
// not bridged: 
Theorem SUBGROUP_OF_TORSION_GEN : forall A:set, A <> Empty -> forall P:set -> prop, forall G :e group_hl A, abelian_group_hl A G /\ (P 1 /\ (forall m n p :e omega, divides_nat p (m * n) /\ (P m /\ P n) -> P p)) -> subgroup_of A {x :e A | x :e group_carrier A G /\ P (group_element_order_hl A G x)} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9569 / SUBGROUP_OF_TORSION   (hash md5:637ed20e2a6cdaa888c9318e627e12e4)
// not bridged: 
Theorem SUBGROUP_OF_TORSION : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G -> subgroup_of A {x :e A | x :e group_carrier A G /\ ~ group_element_order_hl A G x = 0} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9577 / SUBGROUP_OF_PRIMES_TORSION   (hash md5:37bdde3be3888bb2ec4c5381f4abe3e0)
// not bridged: 
Theorem SUBGROUP_OF_PRIMES_TORSION : forall A:set, A <> Empty -> forall G :e group_hl A, forall Q:set -> prop, abelian_group_hl A G -> subgroup_of A {x :e A | x :e group_carrier A G /\ forall p :e omega, prime_nat p /\ divides_nat p (group_element_order_hl A G x) -> Q p} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9587 / SUBGROUP_OF_PRIME_TORSION   (hash md5:b5cc22d5effb57338eb29ba5988f1cf1)
// not bridged: 
Theorem SUBGROUP_OF_PRIME_TORSION : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, abelian_group_hl A G /\ prime_nat p -> subgroup_of A {x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9594 / SUBGROUP_OF_LOWER_ORDER   (hash md5:3fc0461a36ab1b383cc0b756f4c65686)
// not bridged: 
Theorem SUBGROUP_OF_LOWER_ORDER : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G -> subgroup_of A {x :e A | x :e group_carrier A G /\ divides_nat (group_element_order_hl A G x) n} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9602 / SUBGROUP_OF_LOWER_ORDER_ALT   (hash md5:ef2dc485117e40cb1371e2355e660840)
// not bridged: 
Theorem SUBGROUP_OF_LOWER_ORDER_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G -> subgroup_of A {x :e A | x :e group_carrier A G /\ group_pow A G x n = group_id A G} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9612 / SUBGROUP_OF_NONDIVISIBLE_ORDER   (hash md5:be7f1e54612046581894db8154d0a512)
// not bridged: 
Theorem SUBGROUP_OF_NONDIVISIBLE_ORDER : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, abelian_group_hl A G /\ prime_nat p -> subgroup_of A {x :e A | x :e group_carrier A G /\ ~ divides_nat p (group_element_order_hl A G x)} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9622 / SUBGROUP_OF_COPRIME_ORDER   (hash md5:5fe8bdd80220c75270e2dbed7820c930)
// not bridged: 
Theorem SUBGROUP_OF_COPRIME_ORDER : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G -> subgroup_of A {x :e A | x :e group_carrier A G /\ gcd_int n (group_element_order_hl A G x) = 1} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9631 / TORSION_FREE_GROUP   (hash md5:23d77da2997f2e92528d15fa7b7e189d)
// not bridged: 
Theorem TORSION_FREE_GROUP : forall A:set, forall G :e group_hl A, (forall x :e A, x :e group_carrier A G -> group_element_order_hl A G x <= 1) <-> forall x :e A, x :e group_carrier A G /\ ~ x = group_id A G -> group_element_order_hl A G x = 0.
Admitted.

// HOL Light: Library/grouptheory.ml:9639 / TORSION_FREE_GROUP_ALT   (hash md5:316a126e4a3b8ca9265342db9c90cc71)
// not bridged: 
Theorem TORSION_FREE_GROUP_ALT : forall A:set, forall G :e group_hl A, (forall x :e A, x :e group_carrier A G -> group_element_order_hl A G x <= 1) <-> forall x :e A, forall n :e omega, x :e group_carrier A G /\ group_pow A G x n = group_id A G -> x = group_id A G \/ n = 0.
Admitted.

// HOL Light: Library/grouptheory.ml:9646 / QUOTIENT_GROUP_POW_EQ_ID   (hash md5:af9d491d6b3c9daa72d444623ff6545c)
// not bridged: 
Theorem QUOTIENT_GROUP_POW_EQ_ID : forall A:set, forall G :e group_hl A, forall n c= A, forall x :e A, forall k :e omega, normal_subgroup_of A n G /\ x :e group_carrier A G -> (group_pow (Power A) (quotient_group A G n) (right_coset_hl A G n x) k = group_id (Power A) (quotient_group A G n) <-> group_pow A G x k :e n).
Admitted.

// HOL Light: Library/grouptheory.ml:9655 / TORSION_FREE_QUOTIENT_GROUP   (hash md5:efb5d64d9bed22554af8a07196803430)
// not bridged: 
Theorem TORSION_FREE_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall H :e group_hl (Power A), abelian_group_hl A G /\ quotient_group A G {x :e A | x :e group_carrier A G /\ ~ group_element_order_hl A G x = 0} = H -> forall x c= A, x :e group_carrier (Power A) H -> group_element_order_hl (Power A) H x <= 1.
Admitted.

// HOL Light: Library/grouptheory.ml:9670 / IMAGE_GROUP_CONJUGATION_TORSION_GEN   (hash md5:39f16a3f71f0fb5da8034fa9918e4049)
// not bridged: 
Theorem IMAGE_GROUP_CONJUGATION_TORSION_GEN : forall A:set, forall G :e group_hl A, forall P:set -> prop, forall a :e A, a :e group_carrier A G -> {group_conjugation A G a x | x :e {x :e A | x :e group_carrier A G /\ P (group_element_order_hl A G x)}} = {x :e A | x :e group_carrier A G /\ P (group_element_order_hl A G x)}.
Admitted.

// HOL Light: Library/grouptheory.ml:9684 / NORMAL_SUBGROUP_OF_TORSION_GEN   (hash md5:3fc03e83f0b8dc4347bbad74a174f592)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_TORSION_GEN : forall A:set, A <> Empty -> forall P:set -> prop, forall G :e group_hl A, normal_subgroup_of A {x :e A | x :e group_carrier A G /\ P (group_element_order_hl A G x)} G <-> subgroup_of A {x :e A | x :e group_carrier A G /\ P (group_element_order_hl A G x)} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9693 / NORMAL_SUBGROUP_OF_TORSION   (hash md5:b50c811abbdb577c8c1c5b117f7e5841)
// not bridged: 
Theorem NORMAL_SUBGROUP_OF_TORSION : forall A:set, A <> Empty -> forall G :e group_hl A, normal_subgroup_of A {x :e A | x :e group_carrier A G /\ ~ group_element_order_hl A G x = 0} G <-> subgroup_of A {x :e A | x :e group_carrier A G /\ ~ group_element_order_hl A G x = 0} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9705 / SUBGROUP_OF_POWERS   (hash md5:a2b99696edaaae4d442d3fa16b1a985b)
// not bridged: 
Theorem SUBGROUP_OF_POWERS : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> subgroup_of A {group_zpow A G x n | n :e int, n :e int} G.
Admitted.

// HOL Light: Library/grouptheory.ml:9713 / CARRIER_SUBGROUP_GENERATED_BY_SING   (hash md5:60ab34b93a34e2e1bf14d97173f64a2c)
// not bridged: 
Theorem CARRIER_SUBGROUP_GENERATED_BY_SING : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_carrier A (subgroup_generated A G {x}) = {group_zpow A G x n | n :e int, n :e int}.
Admitted.

// HOL Light: Library/grouptheory.ml:9735 / cyclic_group   (hash md5:ce2f42295e4b9aa08c15a0750ff843c3)
// not bridged: 
Theorem cyclic_group_thm : forall A:set, A <> Empty -> forall G :e group_hl A, cyclic_group_hl A G <-> exists x :e A, x :e group_carrier A G /\ subgroup_generated A G {x} = G.
Admitted.

// HOL Light: Library/grouptheory.ml:9739 / CYCLIC_GROUP   (hash md5:710097fc2b41646d2c95be436fb41204)
// not bridged: 
Theorem CYCLIC_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, cyclic_group_hl A G <-> exists x :e A, x :e group_carrier A G /\ group_carrier A G = {group_zpow A G x n | n :e int, n :e int}.
Admitted.

// HOL Light: Library/grouptheory.ml:9750 / CYCLIC_IMP_ABELIAN_GROUP   (hash md5:ec1fb9c986f01915375e386d2816839e)
// not bridged: 
Theorem CYCLIC_IMP_ABELIAN_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, cyclic_group_hl A G -> abelian_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:9756 / TRIVIAL_IMP_CYCLIC_GROUP   (hash md5:e2ae3e44d5d3315ce62f17c9b92763eb)
// not bridged: 
Theorem TRIVIAL_IMP_CYCLIC_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G -> cyclic_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:9762 / CYCLIC_GROUP_ALT   (hash md5:5a4239a964fb460589da9cdd1a6672b2)
// not bridged: 
Theorem CYCLIC_GROUP_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, cyclic_group_hl A G <-> exists x :e A, subgroup_generated A G {x} = G.
Admitted.

// HOL Light: Library/grouptheory.ml:9773 / CYCLIC_GROUP_GENERATED   (hash md5:c7573e851d6042436673bd7ad1bc7bbe)
// not bridged: 
Theorem CYCLIC_GROUP_GENERATED : forall A:set, forall G :e group_hl A, forall x :e A, cyclic_group_hl A (subgroup_generated A G {x}).
Admitted.

// HOL Light: Library/grouptheory.ml:9780 / CYCLIC_GROUP_EPIMORPHIC_IMAGE   (hash md5:249129cee01f77b867f2bd1fc930024b)
// not bridged: 
Theorem CYCLIC_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f /\ cyclic_group_hl A G -> cyclic_group_hl B H.
Admitted.

// HOL Light: Library/grouptheory.ml:9794 / ISOMORPHIC_GROUP_CYCLICITY   (hash md5:03508d45206d23be791766ad5d8b80e2)
// not bridged: 
Theorem ISOMORPHIC_GROUP_CYCLICITY : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H -> (cyclic_group_hl A G <-> cyclic_group_hl B H).
Admitted.

// HOL Light: Library/grouptheory.ml:9802 / SUBGROUP_OF_CYCLIC_GROUP_EXPLICIT   (hash md5:7e7b4747ff0f0476a1d31da3af9b6e8a)
// not bridged: 
Theorem SUBGROUP_OF_CYCLIC_GROUP_EXPLICIT : forall A:set, forall G :e group_hl A, forall h c= A, forall x :e A, x :e group_carrier A G /\ subgroup_of A h (subgroup_generated A G {x}) -> exists k :e omega, h = {group_zpow A G x (k * n) | n :e int, n :e int}.
Admitted.

// HOL Light: Library/grouptheory.ml:9866 / SUBGROUP_OF_CYCLIC_GROUP   (hash md5:6b0dd151e7edfbc75a50ae0ed06997ba)
// not bridged: 
Theorem SUBGROUP_OF_CYCLIC_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, cyclic_group_hl A G /\ subgroup_of A h G -> cyclic_group_hl A (subgroup_generated A G h).
Admitted.

// HOL Light: Library/grouptheory.ml:9883 / CYCLIC_GROUP_QUOTIENT_GROUP   (hash md5:84e6d17244c6e1faafd5692cab2424ea)
// not bridged: 
Theorem CYCLIC_GROUP_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, cyclic_group_hl A G /\ subgroup_of A n G -> cyclic_group_hl (Power A) (quotient_group A G n).
Admitted.

// HOL Light: Library/grouptheory.ml:9889 / NO_PROPER_SUBGROUPS_IMP_CYCLIC   (hash md5:e0d443fcfb7383f9e37ac48093486006)
// not bridged: 
Theorem NO_PROPER_SUBGROUPS_IMP_CYCLIC : forall A:set, A <> Empty -> forall G :e group_hl A, (forall h c= A, subgroup_of A h G -> h c= {group_id A G} \/ h = group_carrier A G) -> cyclic_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:9973 / FINITE_CYCLIC_SUBGROUP_ORDER   (hash md5:0d6538a5fc53f514932cbe2fc5510d75)
// not bridged: 
Theorem FINITE_CYCLIC_SUBGROUP_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> (finite (group_carrier A (subgroup_generated A G {x})) <-> ~ group_element_order_hl A G x = 0).
Admitted.

// HOL Light: Library/grouptheory.ml:9981 / INFINITE_CYCLIC_SUBGROUP_ORDER   (hash md5:ea8a30af4468a6dcd0190761d39577a8)
// not bridged: 
Theorem INFINITE_CYCLIC_SUBGROUP_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> (infinite (group_carrier A (subgroup_generated A G {x})) <-> group_element_order_hl A G x = 0).
Admitted.

// HOL Light: Library/grouptheory.ml:9988 / FINITE_CYCLIC_SUBGROUP_EXPLICIT   (hash md5:2def54342c59e95f8d39d8e662da284f)
// not bridged: 
Theorem FINITE_CYCLIC_SUBGROUP_EXPLICIT : forall A:set, forall G :e group_hl A, forall x :e A, finite (group_carrier A (subgroup_generated A G {x})) /\ x :e group_carrier A G -> group_carrier A (subgroup_generated A G {x}) = {group_pow A G x n | n :e omega, n < group_element_order_hl A G x}.
Admitted.

// HOL Light: Library/grouptheory.ml:10008 / FINITE_SUBGROUPS_EQ   (hash md5:dafb67e7a72ebda9eb60db651cac6ac2)
// not bridged: 
Theorem FINITE_SUBGROUPS_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, finite {h :e Power A | subgroup_of A h G} <-> finite (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:10050 / CARD_CYCLIC_SUBGROUP_ORDER   (hash md5:5d0a00c5eb4ec3119ca9a2200ed515c2)
// not bridged: 
Theorem CARD_CYCLIC_SUBGROUP_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, finite (group_carrier A (subgroup_generated A G {x})) /\ x :e group_carrier A G -> finite_cardinality (group_carrier A (subgroup_generated A G {x})) = group_element_order_hl A G x.
Admitted.

// HOL Light: Library/grouptheory.ml:10065 / PRIME_ORDER_IMP_NO_PROPER_SUBGROUPS   (hash md5:1297c8241138d6589be01ec9c2929197)
// not bridged: 
Theorem PRIME_ORDER_IMP_NO_PROPER_SUBGROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, equip (group_carrier A G) p /\ (p = 1 \/ prime_nat p) -> forall h c= A, subgroup_of A h G -> h = {group_id A G} \/ h = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:10170 / ABELIAN_SIMPLE_GROUP   (hash md5:733d32c8e3c4cf8f726d8f85c205aa5c)
// not bridged: 
Theorem ABELIAN_SIMPLE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G -> ((forall h c= A, normal_subgroup_of A h G -> h = {group_id A G} \/ h = group_carrier A G) <-> finite (group_carrier A G) /\ (finite_cardinality (group_carrier A G) = 1 \/ prime_nat (finite_cardinality (group_carrier A G)))).
Admitted.

// HOL Light: Library/grouptheory.ml:10180 / PRIME_ORDER_IMP_CYCLIC_GROUP   (hash md5:06c5cd6b04de931e181741d70dc97037)
// not bridged: 
Theorem PRIME_ORDER_IMP_CYCLIC_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, finite (group_carrier A G) /\ (finite_cardinality (group_carrier A G) = 1 \/ prime_nat (finite_cardinality (group_carrier A G))) -> cyclic_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:10189 / GROUP_ELEMENT_ORDER_DIVIDES_GROUP_ORDER   (hash md5:ea77ad4b4e8dbe4e006f00df4be1ecf7)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_DIVIDES_GROUP_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G /\ finite (group_carrier A G) -> divides_nat (group_element_order_hl A G x) (finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:10198 / GROUP_POW_GROUP_ORDER   (hash md5:c4480ce8f957e94563344c4dbb8e3b4f)
// not bridged: 
Theorem GROUP_POW_GROUP_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G /\ finite (group_carrier A G) -> group_pow A G x (finite_cardinality (group_carrier A G)) = group_id A G.
Admitted.

// HOL Light: Library/grouptheory.ml:10204 / GROUP_ZPOW_REM_ORDER   (hash md5:63b59378222e127a6d6aef48991658db)
// not bridged: 
Theorem GROUP_ZPOW_REM_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e int, finite (group_carrier A G) /\ x :e group_carrier A G -> group_zpow A G x (rem_int n (finite_cardinality (group_carrier A G))) = group_zpow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:10217 / GROUP_POW_MOD_ORDER   (hash md5:b5f0bd50514b3da6596c24db3262771f)
// not bridged: 
Theorem GROUP_POW_MOD_ORDER : forall A:set, forall G :e group_hl A, forall x :e A, forall n :e omega, finite (group_carrier A G) /\ x :e group_carrier A G -> group_pow A G x (mod_nat n (finite_cardinality (group_carrier A G))) = group_pow A G x n.
Admitted.

// HOL Light: Library/grouptheory.ml:10225 / SUBGROUP_OF_FINITE_CYCLIC_GROUP   (hash md5:072abdc690f8b58ad629cb80290729b0)
// not bridged: 
Theorem SUBGROUP_OF_FINITE_CYCLIC_GROUP : forall A:set, forall G :e group_hl A, forall h c= A, forall a :e A, finite (group_carrier A G) /\ (a :e group_carrier A G /\ subgroup_generated A G {a} = G) -> (subgroup_of A h G <-> exists d :e omega, divides_nat d (finite_cardinality (group_carrier A G)) /\ h = group_carrier A (subgroup_generated A G {group_pow A G a d})).
Admitted.

// HOL Light: Library/grouptheory.ml:10252 / COUNT_FINITE_CYCLIC_GROUP_SUBGROUPS   (hash md5:ecf95032255f5553d6e70d0d5ac1915b)
// not bridged: 
Theorem COUNT_FINITE_CYCLIC_GROUP_SUBGROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, forall d :e omega, finite (group_carrier A G) /\ cyclic_group_hl A G -> finite_cardinality {h :e Power A | subgroup_of A h G /\ finite_cardinality h = d} = if divides_nat d (finite_cardinality (group_carrier A G)) then 1 else 0.
Admitted.

// HOL Light: Library/grouptheory.ml:10312 / COUNT_FINITE_CYCLIC_GROUP_SUBGROUPS_ALL   (hash md5:c09c5b41a45bd007e7cd526f909fffcf)
// not bridged: 
Theorem COUNT_FINITE_CYCLIC_GROUP_SUBGROUPS_ALL : forall A:set, A <> Empty -> forall G :e group_hl A, finite (group_carrier A G) /\ cyclic_group_hl A G -> finite_cardinality {h :e Power A | subgroup_of A h G} = finite_cardinality {d :e omega | divides_nat d (finite_cardinality (group_carrier A G))}.
Admitted.

// HOL Light: Library/grouptheory.ml:10331 / MAXIMAL_SUBGROUP_PRIME_INDEX   (hash md5:a78bd1eaf25290c2c807598aa75ac7cd)
// not bridged: 
Theorem MAXIMAL_SUBGROUP_PRIME_INDEX : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> ((forall h c= A, subgroup_of A h G /\ (n c= h /\ n <> h) -> h = group_carrier A G) <-> finite {right_coset_hl A G n x | x :e A, x :e group_carrier A G} /\ (finite_cardinality {right_coset_hl A G n x | x :e A, x :e group_carrier A G} = 1 \/ prime_nat (finite_cardinality {right_coset_hl A G n x | x :e A, x :e group_carrier A G}))).
Admitted.

// HOL Light: Library/grouptheory.ml:10341 / PRIME_INDEX_MAXIMAL_PROPER_SUBGROUP   (hash md5:566d4d032140b068836d5b0779515df3)
// not bridged: 
Theorem PRIME_INDEX_MAXIMAL_PROPER_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> (finite {right_coset_hl A G n x | x :e A, x :e group_carrier A G} /\ prime_nat (finite_cardinality {right_coset_hl A G n x | x :e A, x :e group_carrier A G}) <-> ~ n = group_carrier A G /\ forall h c= A, subgroup_of A h G /\ (n c= h /\ n <> h) -> h = group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:10353 / MAXIMAL_PROPER_SUBGROUP_PRIME_INDEX   (hash md5:c23a8b38d450e86a2a45488425c19f81)
// not bridged: 
Theorem MAXIMAL_PROPER_SUBGROUP_PRIME_INDEX : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G /\ ~ n = group_carrier A G -> ((forall h c= A, subgroup_of A h G /\ (n c= h /\ n <> h) -> h = group_carrier A G) <-> finite {right_coset_hl A G n x | x :e A, x :e group_carrier A G} /\ prime_nat (finite_cardinality {right_coset_hl A G n x | x :e A, x :e group_carrier A G})).
Admitted.

// HOL Light: Library/grouptheory.ml:10361 / GROUP_ZPOW_CANCEL   (hash md5:40a2445659618b807ec8c9e76d992f75)
// not bridged: 
Theorem GROUP_ZPOW_CANCEL : forall A:set, forall G :e group_hl A, forall n :e int, forall x y :e A, finite (group_carrier A G) /\ (gcd_int n (finite_cardinality (group_carrier A G)) = 1 /\ (x :e group_carrier A G /\ (y :e group_carrier A G /\ group_zpow A G x n = group_zpow A G y n))) -> x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:10383 / GROUP_POW_CANCEL   (hash md5:c001d729dcc670d72673bbb347a13f56)
// not bridged: 
Theorem GROUP_POW_CANCEL : forall A:set, forall G :e group_hl A, forall n :e omega, forall x y :e A, finite (group_carrier A G) /\ (gcd_int n (finite_cardinality (group_carrier A G)) = 1 /\ (x :e group_carrier A G /\ (y :e group_carrier A G /\ group_pow A G x n = group_pow A G y n))) -> x = y.
Admitted.

// HOL Light: Library/grouptheory.ml:10395 / finitely_generated_group   (hash md5:e6cf866e755775139c5c3360fb48fa50)
// not bridged: 
Theorem finitely_generated_group_thm : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G <-> exists s c= A, finite s /\ subgroup_generated A G s = G.
Admitted.

// HOL Light: Library/grouptheory.ml:10399 / FINITELY_GENERATED_GROUP   (hash md5:1eb4d172647f73322020475006b99618)
// not bridged: 
Theorem FINITELY_GENERATED_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G <-> exists s c= A, finite s /\ (s c= group_carrier A G /\ subgroup_generated A G s = G).
Admitted.

// HOL Light: Library/grouptheory.ml:10408 / CYCLIC_IMP_FINITELY_GENERATED_GROUP   (hash md5:a7185d1d39ac20d54e429fc88abb51da)
// not bridged: 
Theorem CYCLIC_IMP_FINITELY_GENERATED_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, cyclic_group_hl A G -> finitely_generated_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:10413 / FINITE_IMP_FINITELY_GENERATED_GROUP   (hash md5:5874781df3f13a0e6894a0532cffd551)
// not bridged: 
Theorem FINITE_IMP_FINITELY_GENERATED_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, finite (group_carrier A G) -> finitely_generated_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:10418 / TRIVIAL_IMP_FINITELY_GENERATED_GROUP   (hash md5:bb0a295067cba55a009a8b19c142606f)
// not bridged: 
Theorem TRIVIAL_IMP_FINITELY_GENERATED_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G -> finitely_generated_group_hl A G.
Admitted.

// HOL Light: Library/grouptheory.ml:10423 / FINITELY_GENERATED_GROUP_EPIMORPHIC_IMAGE   (hash md5:0f53cc2fdd2508129d963ece095c19c9)
// not bridged: 
Theorem FINITELY_GENERATED_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f /\ finitely_generated_group_hl A G -> finitely_generated_group_hl B H.
Admitted.

// HOL Light: Library/grouptheory.ml:10437 / ISOMORPHIC_GROUP_FINITE_GENERATION   (hash md5:216675dd838a5f9577437a44cb3243de)
// not bridged: 
Theorem ISOMORPHIC_GROUP_FINITE_GENERATION : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H -> (finitely_generated_group_hl A G <-> finitely_generated_group_hl B H).
Admitted.

// HOL Light: Library/grouptheory.ml:10447 / FINITELY_GENERATED_GROUP_QUOTIENT_GROUP   (hash md5:12f4bfe7763497104d2a65ff883c9d71)
// not bridged: 
Theorem FINITELY_GENERATED_GROUP_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, finitely_generated_group_hl A G /\ normal_subgroup_of A n G -> finitely_generated_group_hl (Power A) (quotient_group A G n).
Admitted.

// HOL Light: Library/grouptheory.ml:10454 / FINITELY_GENERATED_IMP_COUNTABLE_GROUP   (hash md5:d6a7004d502d58cfd545b2789c8a654f)
// not bridged: 
Theorem FINITELY_GENERATED_IMP_COUNTABLE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G -> countable (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:10459 / FINITELY_GENERATED_PROD_GROUP   (hash md5:677d70e623bf59e78e3b8674f016e357)
// not bridged: 
Theorem FINITELY_GENERATED_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, finitely_generated_group_hl (A :*: B) (prod_group A B G H) <-> finitely_generated_group_hl A G /\ finitely_generated_group_hl B H.
Admitted.

// HOL Light: Library/grouptheory.ml:10505 / FINITELY_GENERATED_PRODUCT_GROUP   (hash md5:5c175156aee33b621607b14938a2fcea)
// not bridged: 
Theorem FINITELY_GENERATED_PRODUCT_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (finitely_generated_group_hl (A :^: K) (product_group A K k G) <-> finite {i :e K | i :e k /\ ~ trivial_group A (G i)} /\ forall i :e K, i :e k -> finitely_generated_group_hl A (G i)).
Admitted.

// HOL Light: Library/grouptheory.ml:10548 / FINITELY_GENERATED_SUM_GROUP   (hash md5:e7ef06e6b3a61a06a1693cbe54fa5e5d)
// not bridged: 
Theorem FINITELY_GENERATED_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> (finitely_generated_group_hl (A :^: K) (sum_group A K k G) <-> finite {i :e K | i :e k /\ ~ trivial_group A (G i)} /\ forall i :e K, i :e k -> finitely_generated_group_hl A (G i)).
Admitted.

// HOL Light: Library/grouptheory.ml:10605 / FINITE_GROUP_ACTIONS   (hash md5:f7f1816faa950423a1bca142119f63a5)
// not bridged: 
Theorem FINITE_GROUP_ACTIONS : forall A B X:set, A <> Empty -> B <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall f:set -> set, (forall x :e X :^: X :^: A, f x :e B) -> finitely_generated_group_hl A G /\ (finite s /\ (forall a a' :e X :^: X :^: A, (forall g :e A, forall x :e X, g :e group_carrier A G /\ x :e s -> a g x = a' g x) -> f a = f a')) -> finite {f a | a :e X :^: X :^: A, group_action_hl A X G s (fun x:set => fun x0:set => a x x0)}.
Admitted.

// HOL Light: Library/grouptheory.ml:10628 / FINITELY_GENERATED_FIXED_INDEX_SUBGROUPS   (hash md5:7e557c8ded8187dbf832b7a55a6b2ca9)
// not bridged: 
Theorem FINITELY_GENERATED_FIXED_INDEX_SUBGROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, finitely_generated_group_hl A G -> finite {h :e Power A | subgroup_of A h G /\ equip {right_coset_hl A G h x | x :e A, x :e group_carrier A G} n}.
Admitted.

// HOL Light: Library/grouptheory.ml:10679 / FINITELY_GENERATED_FINITE_INDEX_SUBGROUP   (hash md5:43b20a131b650eef8d5b5f76fef2daf4)
// not bridged: 
Theorem FINITELY_GENERATED_FINITE_INDEX_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, finitely_generated_group_hl A G /\ (subgroup_of A h G /\ finite {right_coset_hl A G h x | x :e A, x :e group_carrier A G}) -> finitely_generated_group_hl A (subgroup_generated A G h).
Admitted.

// HOL Light: Library/grouptheory.ml:10750 / FINITELY_GENERATED_ABELIAN_SUBGROUP_EXPLICIT   (hash md5:156bcb49ad1a608c87c3138759bd7e66)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_SUBGROUP_EXPLICIT : forall A:set, forall G :e group_hl A, forall s h c= A, finite s /\ (s c= group_carrier A G /\ (abelian_group_hl A G /\ subgroup_of A h (subgroup_generated A G s))) -> exists t c= A, finite t /\ (t c= group_carrier A G /\ (finite_cardinality t <= finite_cardinality s /\ subgroup_generated A G t = subgroup_generated A G h)).
Admitted.

// HOL Light: Library/grouptheory.ml:11115 / FINITELY_GENERATED_ABELIAN_SUBGROUP   (hash md5:728d442cecbf6583c48f188811b011d6)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, finitely_generated_group_hl A G /\ (abelian_group_hl A G /\ subgroup_of A h G) -> finitely_generated_group_hl A (subgroup_generated A G h).
Admitted.

// HOL Light: Library/grouptheory.ml:11127 / MAXIMAL_SUBGROUP_EXISTS   (hash md5:7ee6a0623ec8b17bd2a256c73a87c69c)
// not bridged: 
Theorem MAXIMAL_SUBGROUP_EXISTS : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ ~ trivial_group A G -> exists h c= A, subgroup_of A h G /\ (~ h = group_carrier A G /\ forall h' c= A, subgroup_of A h' G /\ (h c= h' /\ h <> h') -> h' = group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:11189 / MAXIMAL_NORMAL_SUBGROUP_EXISTS   (hash md5:d57a8b1766cfeaf1dae9377708cf2cc2)
// not bridged: 
Theorem MAXIMAL_NORMAL_SUBGROUP_EXISTS : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ ~ trivial_group A G -> exists h c= A, normal_subgroup_of A h G /\ (~ h = group_carrier A G /\ forall h' c= A, normal_subgroup_of A h' G /\ (h c= h' /\ h <> h') -> h' = group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:11255 / integer_group   (hash md5:48b8c7b4e4d5c1cd86b413dce364e123)
// not bridged: 
Theorem integer_group_thm : integer_group = (int,(0,(fun x :e int => - x,fun x :e int => fun x0 :e int => x + x0))).
Admitted.

// HOL Light: Library/grouptheory.ml:11258 / INTEGER_GROUP   (hash md5:a58a7185bcf332820430804b0f835246)
// not bridged: 
Theorem INTEGER_GROUP : group_carrier int integer_group = int /\ (group_id int integer_group = 0 /\ ((forall x :e int, group_inv int integer_group x = - x) /\ forall x x0 :e int, group_mul int integer_group x x0 = x + x0)).
Admitted.

// HOL Light: Library/grouptheory.ml:11270 / ABELIAN_INTEGER_GROUP   (hash md5:51f15154e06ea197fff32f010fd33ffa)
// not bridged: 
Theorem ABELIAN_INTEGER_GROUP : abelian_group_hl int integer_group.
Admitted.

// HOL Light: Library/grouptheory.ml:11274 / INFINITE_INTEGER_GROUP   (hash md5:866a7344dcd6dc05003b0bc2584c3d95)
// not bridged: 
Theorem INFINITE_INTEGER_GROUP : infinite (group_carrier int integer_group).
Admitted.

// HOL Light: Library/grouptheory.ml:11278 / GROUP_POW_INTEGER_GROUP   (hash md5:fa0ef31b06b753c7830044ad5f48aec5)
// not bridged: 
Theorem GROUP_POW_INTEGER_GROUP : forall x :e int, forall n :e omega, group_pow int integer_group x n = n * x.
Admitted.

// HOL Light: Library/grouptheory.ml:11284 / GROUP_ZPOW_INTEGER_GROUP   (hash md5:67c27915a327f8e19a3902300b5ab6ef)
// not bridged: 
Theorem GROUP_ZPOW_INTEGER_GROUP : forall x n :e int, group_zpow int integer_group x n = n * x.
Admitted.

// HOL Light: Library/grouptheory.ml:11291 / GROUP_ELEMENT_ORDER_INTEGER_GROUP   (hash md5:619fffe65bdbbb75ad2cb16f2e754de8)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_INTEGER_GROUP : forall n :e int, group_element_order_hl int integer_group n = if n = 0 then 1 else 0.
Admitted.

// HOL Light: Library/grouptheory.ml:11299 / GROUP_ENDOMORPHISM_INTEGER_GROUP_MUL   (hash md5:b8284dd5ce2bfcb95a60d006df290bfe)
// not bridged: 
Theorem GROUP_ENDOMORPHISM_INTEGER_GROUP_MUL : forall c :e int, group_endomorphism int integer_group (fun x:set => c * x).
Admitted.

// HOL Light: Library/grouptheory.ml:11304 / GROUP_ENDOMORPHISM_INTEGER_GROUP_EXPLICIT   (hash md5:c37b6a8a3a2539669bb11a33dff6b6a0)
// not bridged: 
Theorem GROUP_ENDOMORPHISM_INTEGER_GROUP_EXPLICIT : forall f:set -> set, (forall x :e int, f x :e int) -> group_endomorphism int integer_group f -> forall x :e int, f x = f 1 * x.
Admitted.

// HOL Light: Library/grouptheory.ml:11333 / GROUP_HOMOMORPHISM_GROUP_ZPOW   (hash md5:282f49f0ecc23ea8e9984fcb3653c38f)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_GROUP_ZPOW : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_homomorphism_hl int A (integer_group,G) (group_zpow A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:11340 / GROUP_EPIMORPHISM_GROUP_ZPOW   (hash md5:d986b89f194f144435dff206180d51a6)
// not bridged: 
Theorem GROUP_EPIMORPHISM_GROUP_ZPOW : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_epimorphism int A (integer_group,subgroup_generated A G {x}) (group_zpow A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:11353 / GROUP_ISOMORPHISM_GROUP_ZPOW   (hash md5:69e9cc984a1b006507849386b5a358e3)
// not bridged: 
Theorem GROUP_ISOMORPHISM_GROUP_ZPOW : forall A:set, forall G :e group_hl A, forall x :e A, infinite (group_carrier A (subgroup_generated A G {x})) /\ x :e group_carrier A G -> group_isomorphism_hl int A (integer_group,subgroup_generated A G {x}) (group_zpow A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:11365 / ISOMORPHIC_GROUP_INFINITE_CYCLIC_INTEGER   (hash md5:e4e1d6c3ae3d91c106ffe177a7e3cc14)
// not bridged: 
Theorem ISOMORPHIC_GROUP_INFINITE_CYCLIC_INTEGER : forall A:set, A <> Empty -> forall G :e group_hl A, cyclic_group_hl A G /\ infinite (group_carrier A G) -> isomorphic_group A int G integer_group.
Admitted.

// HOL Light: Library/grouptheory.ml:11375 / ISOMORPHIC_INFINITE_CYCLIC_GROUPS   (hash md5:029dda88760ff2e9633ddb295f82821f)
// not bridged: 
Theorem ISOMORPHIC_INFINITE_CYCLIC_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, cyclic_group_hl A G /\ (infinite (group_carrier A G) /\ (cyclic_group_hl B H /\ infinite (group_carrier B H))) -> isomorphic_group A B G H.
Admitted.

// HOL Light: Library/grouptheory.ml:11388 / integer_mod_group   (hash md5:c5d90ac53041bbfea339a98e7b0e9018)
// not bridged: 
Theorem integer_mod_group_thm : forall n :e omega, integer_mod_group n = if n = 0 then integer_group else ({m :e int | 0 <= m /\ m < n},(0,(fun a :e int => rem_int (- a) n,fun a :e int => fun b :e int => rem_int (a + b) n))).
Admitted.

// HOL Light: Library/grouptheory.ml:11396 / INTEGER_MOD_GROUP   (hash md5:98730c6960e94459ddd0d6c48c34d389)
// not bridged: 
Theorem INTEGER_MOD_GROUP : group_carrier int (integer_mod_group 0) = int /\ ((forall n :e omega, 0 < n -> group_carrier int (integer_mod_group n) = {m :e int | 0 <= m /\ m < n}) /\ ((forall n :e omega, group_id int (integer_mod_group n) = 0) /\ ((forall n :e omega, forall a :e int, group_inv int (integer_mod_group n) a = rem_int (- a) n) /\ forall n :e omega, forall a b :e int, group_mul int (integer_mod_group n) a b = rem_int (a + b) n))).
Admitted.

// HOL Light: Library/grouptheory.ml:11419 / INTEGER_MOD_GROUP_TRIVIAL   (hash md5:cca6ae3ca8eb4464020e2c436f1586c4)
// not bridged: 
Theorem INTEGER_MOD_GROUP_TRIVIAL : integer_mod_group 0 = integer_group.
Admitted.

// HOL Light: Library/grouptheory.ml:11423 / GROUP_CARRIER_INTEGER_MOD_GROUP   (hash md5:8d6922a48203fe33fbf44120de66e5ab)
// not bridged: 
Theorem GROUP_CARRIER_INTEGER_MOD_GROUP : forall n :e omega, group_carrier int (integer_mod_group n) = {rem_int x n | x :e int}.
Admitted.

// HOL Light: Library/grouptheory.ml:11434 / GROUP_POW_INTEGER_MOD_GROUP   (hash md5:04466cd6e55a41026b340fe720ec88d9)
// not bridged: 
Theorem GROUP_POW_INTEGER_MOD_GROUP : forall n :e omega, forall x :e int, forall m :e omega, group_pow int (integer_mod_group n) x m = rem_int (m * x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:11444 / GROUP_ZPOW_INTEGER_MOD_GROUP   (hash md5:f04ca2c7f2ca6c5b5d3f2e412e77dab7)
// not bridged: 
Theorem GROUP_ZPOW_INTEGER_MOD_GROUP : forall n :e omega, forall x m :e int, group_zpow int (integer_mod_group n) x m = rem_int (m * x) n.
Admitted.

// HOL Light: Library/grouptheory.ml:11453 / ABELIAN_INTEGER_MOD_GROUP   (hash md5:112bed7b9a23a26e804b020c60d94909)
// not bridged: 
Theorem ABELIAN_INTEGER_MOD_GROUP : forall n :e omega, abelian_group_hl int (integer_mod_group n).
Admitted.

// HOL Light: Library/grouptheory.ml:11457 / INTEGER_MOD_GROUP_0   (hash md5:5cc78a9a3ed67d3d9d1c8c91cb70b0d1)
// not bridged: 
Theorem INTEGER_MOD_GROUP_0 : forall n :e omega, 0 :e group_carrier int (integer_mod_group n).
Admitted.

// HOL Light: Library/grouptheory.ml:11461 / INTEGER_MOD_GROUP_1R   (hash md5:bbcef374c834b2d5fd5962018ddcd73c)
// not bridged: 
Theorem INTEGER_MOD_GROUP_1R : forall n :e omega, forall x :e int, rem_int x n :e group_carrier int (integer_mod_group n).
Admitted.

// HOL Light: Library/grouptheory.ml:11468 / INTEGER_MOD_GROUP_1   (hash md5:9f0ef0c7b473684432e2368f2d20e9dc)
// not bridged: 
Theorem INTEGER_MOD_GROUP_1 : forall n :e omega, 1 :e group_carrier int (integer_mod_group n) <-> ~ n = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11476 / GROUP_HOMOMORPHISM_PROD_INTEGER_MOD_GROUP   (hash md5:19e6e414d6a2371756d48645f3e62053)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_PROD_INTEGER_MOD_GROUP : forall m n :e omega, group_homomorphism_hl int (int :*: int) (integer_mod_group (m * n),prod_group int int (integer_mod_group m) (integer_mod_group n)) (fun a:set => (rem_int a m,rem_int a n)).
Admitted.

// HOL Light: Library/grouptheory.ml:11488 / TRIVIAL_INTEGER_MOD_GROUP   (hash md5:eecf0f104d2aa8ea056b1e89e2483af5)
// not bridged: 
Theorem TRIVIAL_INTEGER_MOD_GROUP : forall n :e omega, trivial_group int (integer_mod_group n) <-> n = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11499 / NON_TRIVIAL_INTEGER_GROUP   (hash md5:483ff991dd93d9d82161ea43c965a56a)
// not bridged: 
Theorem NON_TRIVIAL_INTEGER_GROUP : ~ trivial_group int integer_group.
Admitted.

// HOL Light: Library/grouptheory.ml:11504 / GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP_1   (hash md5:19bcf6c9d26cd08be2bfd1284aab921c)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP_1 : forall n :e omega, group_element_order_hl int (integer_mod_group n) 1 = n.
Admitted.

// HOL Light: Library/grouptheory.ml:11514 / GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP_1R   (hash md5:4ce1631ab50ce0179b1524c639d30bcf)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP_1R : forall n :e omega, group_element_order_hl int (integer_mod_group n) (rem_int 1 n) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:11525 / GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP   (hash md5:e33bb27343b1ad0473189d7dd41aece6)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_INTEGER_MOD_GROUP : forall n m :e omega, group_element_order_hl int (integer_mod_group n) m = if m = 0 /\ n = 0 then 1 else div_nat n (gcd_int n m).
Admitted.

// HOL Light: Library/grouptheory.ml:11541 / INTEGER_MOD_SUBGROUP_GENERATED_BY_1R   (hash md5:6cfdca63c2f70c18ef8fa58f77de8622)
// not bridged: 
Theorem INTEGER_MOD_SUBGROUP_GENERATED_BY_1R : forall n :e omega, subgroup_generated int (integer_mod_group n) {rem_int 1 n} = integer_mod_group n.
Admitted.

// HOL Light: Library/grouptheory.ml:11556 / INTEGER_MOD_SUBGROUP_GENERATED_BY_1   (hash md5:7b375bfd2ea65b15b5a5989bc9762e05)
// not bridged: 
Theorem INTEGER_MOD_SUBGROUP_GENERATED_BY_1 : forall n :e omega, subgroup_generated int (integer_mod_group n) {1} = integer_mod_group n.
Admitted.

// HOL Light: Library/grouptheory.ml:11568 / CYCLIC_GROUP_INTEGER_MOD_GROUP   (hash md5:1c6053d5c5c142865ec311fa74820921)
// not bridged: 
Theorem CYCLIC_GROUP_INTEGER_MOD_GROUP : forall n :e omega, cyclic_group_hl int (integer_mod_group n).
Admitted.

// HOL Light: Library/grouptheory.ml:11573 / CYCLIC_INTEGER_GROUP   (hash md5:2b6a9306757e5a96634861833e047a62)
// not bridged: 
Theorem CYCLIC_INTEGER_GROUP : cyclic_group_hl int integer_group.
Admitted.

// HOL Light: Library/grouptheory.ml:11578 / FINITE_INTEGER_MOD_GROUP   (hash md5:fbb2c413dd4ba07f4563850f98a21f73)
// not bridged: 
Theorem FINITE_INTEGER_MOD_GROUP : forall n :e omega, finite (group_carrier int (integer_mod_group n)) <-> ~ n = 0.
Admitted.

// HOL Light: Library/grouptheory.ml:11584 / GROUP_EPIMORPHISM_INTEGER_MOD_GROUP_ZPOW   (hash md5:633dc88f1ea102f2c5275421759e90af)
// not bridged: 
Theorem GROUP_EPIMORPHISM_INTEGER_MOD_GROUP_ZPOW : forall n :e omega, ~ n = 1 -> group_epimorphism int int (integer_group,integer_mod_group n) (group_zpow int (integer_mod_group n) 1).
Admitted.

// HOL Light: Library/grouptheory.ml:11591 / GROUP_ISOMORPHISM_GROUP_ZPOW_GEN   (hash md5:edae71b305315779dbef1371197dbdeb)
// not bridged: 
Theorem GROUP_ISOMORPHISM_GROUP_ZPOW_GEN : forall A:set, forall G :e group_hl A, forall x :e A, x :e group_carrier A G -> group_isomorphism_hl int A (integer_mod_group (group_element_order_hl A G x),subgroup_generated A G {x}) (group_zpow A G x).
Admitted.

// HOL Light: Library/grouptheory.ml:11616 / ISOMORPHIC_GROUP_CYCLIC_INTEGER   (hash md5:e513498fa1bc682690c1eddfb6679e3a)
// not bridged: 
Theorem ISOMORPHIC_GROUP_CYCLIC_INTEGER : forall A:set, A <> Empty -> forall G :e group_hl A, cyclic_group_hl A G <-> exists n :e omega, isomorphic_group A int G (integer_mod_group n).
Admitted.

// HOL Light: Library/grouptheory.ml:11624 / ORDER_INTEGER_MOD_GROUP   (hash md5:bc3a3c943e97b19ff4781ad87e181d97)
// not bridged: 
Theorem ORDER_INTEGER_MOD_GROUP : forall n :e omega, ~ n = 0 -> finite_cardinality (group_carrier int (integer_mod_group n)) = n.
Admitted.

// HOL Light: Library/grouptheory.ml:11636 / ISOMORPHIC_FINITE_CYCLIC_INTEGER_MOD_GROUP   (hash md5:b0299f2000cd12256367fe9ef65d5752)
// not bridged: 
Theorem ISOMORPHIC_FINITE_CYCLIC_INTEGER_MOD_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, cyclic_group_hl A G /\ finite (group_carrier A G) -> isomorphic_group A int G (integer_mod_group (finite_cardinality (group_carrier A G))).
Admitted.

// HOL Light: Library/grouptheory.ml:11648 / ISOMORPHIC_GROUP_INTEGER_MOD_GROUP   (hash md5:0638fe9abfafc47378cc0d81f0eb71c8)
// not bridged: 
Theorem ISOMORPHIC_GROUP_INTEGER_MOD_GROUP : forall A:set, A <> Empty -> (forall G :e group_hl A, forall n :e omega, isomorphic_group A int G (integer_mod_group n) <-> cyclic_group_hl A G /\ (n = 0 /\ infinite (group_carrier A G) \/ ~ n = 0 /\ equip (group_carrier A G) n)) /\ forall G :e group_hl A, forall n :e omega, isomorphic_group int A (integer_mod_group n) G <-> cyclic_group_hl A G /\ (n = 0 /\ infinite (group_carrier A G) \/ ~ n = 0 /\ equip (group_carrier A G) n).
Admitted.

// HOL Light: Library/grouptheory.ml:11674 / ISOMORPHIC_INTEGER_MOD_GROUPS   (hash md5:a6e5336f0d257025ed6fd1a2f2ddc3b2)
// not bridged: 
Theorem ISOMORPHIC_INTEGER_MOD_GROUPS : forall m n :e omega, isomorphic_group int int (integer_mod_group m) (integer_mod_group n) <-> m = n.
Admitted.

// HOL Light: Library/grouptheory.ml:11682 / ISOMORPHIC_FINITE_CYCLIC_GROUPS   (hash md5:92a6a58f8be5184cd65fee5d3c5cdfd7)
// not bridged: 
Theorem ISOMORPHIC_FINITE_CYCLIC_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, cyclic_group_hl A G /\ (cyclic_group_hl B H /\ (finite (group_carrier A G) /\ (finite (group_carrier B H) /\ finite_cardinality (group_carrier A G) = finite_cardinality (group_carrier B H)))) -> isomorphic_group A B G H.
Admitted.

// HOL Light: Library/grouptheory.ml:11693 / CYCLIC_IMP_COUNTABLE_GROUP   (hash md5:e0fc9da210d31f99bcfbf2a4e9f8cfb1)
// not bridged: 
Theorem CYCLIC_IMP_COUNTABLE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, cyclic_group_hl A G -> countable (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:11699 / SUBGROUP_GENERATED_ELEMENT_ORDER   (hash md5:32ecff44923274404ab609d1a98becd0)
// not bridged: 
Theorem SUBGROUP_GENERATED_ELEMENT_ORDER : forall A:set, forall G :e group_hl A, forall a :e A, finite (group_carrier A G) /\ a :e group_carrier A G -> (subgroup_generated A G {a} = G <-> group_element_order_hl A G a = finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:11715 / CYCLIC_GROUP_ELEMENT_ORDER   (hash md5:e550dbc7175ef9fae9b7443bc1143d91)
// not bridged: 
Theorem CYCLIC_GROUP_ELEMENT_ORDER : forall A:set, A <> Empty -> forall G :e group_hl A, finite (group_carrier A G) -> (cyclic_group_hl A G <-> exists a :e A, a :e group_carrier A G /\ group_element_order_hl A G a = finite_cardinality (group_carrier A G)).
Admitted.

// HOL Light: Library/grouptheory.ml:11808 / CYCLIC_PROD_GROUP   (hash md5:9fbcec4b24614e2d3bbc7a8ac166f83d)
// not bridged: 
Theorem CYCLIC_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, cyclic_group_hl (A :*: B) (prod_group A B G H) <-> cyclic_group_hl A G /\ (cyclic_group_hl B H /\ (trivial_group A G \/ (trivial_group B H \/ finite (group_carrier A G) /\ (finite (group_carrier B H) /\ gcd_int (finite_cardinality (group_carrier A G)) (finite_cardinality (group_carrier B H)) = 1)))).
Admitted.

// HOL Light: Library/grouptheory.ml:11851 / CYCLIC_PRIME_ORDER_GROUP   (hash md5:10c8b1fe6f8b2b4449add80c1c4f6f9d)
// not bridged: 
Theorem CYCLIC_PRIME_ORDER_GROUP : forall A:set, forall G :e group_hl A, forall a :e A, finite (group_carrier A G) /\ ((finite_cardinality (group_carrier A G) = 1 \/ prime_nat (finite_cardinality (group_carrier A G))) /\ (a :e group_carrier A G /\ ~ a = group_id A G)) -> subgroup_generated A G {a} = G.
Admitted.

// HOL Light: Library/grouptheory.ml:11863 / GROUP_ELEMENT_ORDER_PRIME   (hash md5:15dc109d4f9470f0bfd1a5465ed29dbc)
// not bridged: 
Theorem GROUP_ELEMENT_ORDER_PRIME : forall A:set, forall p :e omega, forall G :e group_hl A, forall a :e A, prime_nat p /\ (equip (group_carrier A G) p /\ a :e group_carrier A G) -> group_element_order_hl A G a = if a = group_id A G then 1 else finite_cardinality (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:11871 / GENERATOR_INTEGER_MOD_GROUP   (hash md5:a3ba59cf8e852976ec121f714ecdd4ec)
// not bridged: 
Theorem GENERATOR_INTEGER_MOD_GROUP : forall n :e omega, forall a :e int, subgroup_generated int (integer_mod_group n) {a} = integer_mod_group n <-> (n <= 1 \/ 0 <= a /\ a < n) /\ gcd_int n a = 1.
Admitted.

// HOL Light: Library/grouptheory.ml:11903 / CYCLIC_GROUP_PRIME_ORDER_EQ   (hash md5:76aa24ef05127736f056cbd9b1b9808f)
// not bridged: 
Theorem CYCLIC_GROUP_PRIME_ORDER_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, (forall a :e A, a :e group_carrier A G /\ ~ a = group_id A G -> subgroup_generated A G {a} = G) <-> finite (group_carrier A G) /\ (finite_cardinality (group_carrier A G) = 1 \/ prime_nat (finite_cardinality (group_carrier A G))).
Admitted.

// HOL Light: Library/grouptheory.ml:11952 / pgroup   (hash md5:391d801e579690a174939293bfab4934)
// not bridged: 
Theorem pgroup_thm : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= omega, pgroup A s G <-> forall p :e omega, forall x :e A, prime_nat p /\ (x :e group_carrier A G /\ divides_nat p (group_element_order_hl A G x)) -> p :e s.
Admitted.

// HOL Light: Library/grouptheory.ml:11959 / PGROUP_MONOMORPHIC_PREIMAGE   (hash md5:cb1778ed311a8391561fe7078e95250b)
// not bridged: 
Theorem PGROUP_MONOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall s c= omega, group_monomorphism A B (G,H) f /\ pgroup B s H -> pgroup A s G.
Admitted.

// HOL Light: Library/grouptheory.ml:11968 / PGROUP_EPIMORPHIC_IMAGE   (hash md5:c275b332453374746d920ddc82d40df6)
// not bridged: 
Theorem PGROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall s c= omega, group_epimorphism A B (G,H) f /\ pgroup A s G -> pgroup B s H.
Admitted.

// HOL Light: Library/grouptheory.ml:11976 / PGROUP_QUOTIENT_GROUP   (hash md5:874e3c2e79a5cef80f8e050fbebd1893)
// not bridged: 
Theorem PGROUP_QUOTIENT_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, forall s c= omega, normal_subgroup_of A n G /\ pgroup A s G -> pgroup (Power A) s (quotient_group A G n).
Admitted.

// HOL Light: Library/grouptheory.ml:11981 / PGROUP_SUBGROUP_GENERATED   (hash md5:4acefe9bfa9ac90cdbc5219b62d338f2)
// not bridged: 
Theorem PGROUP_SUBGROUP_GENERATED : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= omega, forall h c= A, pgroup A s G -> pgroup A s (subgroup_generated A G h).
Admitted.

// HOL Light: Library/grouptheory.ml:11986 / PGROUP_PROD_GROUP   (hash md5:61887e2e0f091cc8e49652648bca1d03)
// not bridged: 
Theorem PGROUP_PROD_GROUP : forall A:set, A <> Empty -> forall G H :e group_hl A, forall s c= omega, pgroup (A :*: A) s (prod_group A A G H) <-> pgroup A s G /\ pgroup A s H.
Admitted.

// HOL Light: Library/grouptheory.ml:11996 / PGROUP_EMPTY   (hash md5:3e1f8de27bcce209899233ef8f98ba8d)
// not bridged: 
Theorem PGROUP_EMPTY : forall A:set, A <> Empty -> forall G :e group_hl A, pgroup A Empty G <-> trivial_group A G.
Admitted.

// HOL Light: Library/grouptheory.ml:12003 / PGROUP_MONO   (hash md5:1689a99eea58f6001510b25abbd2f49d)
// not bridged: 
Theorem PGROUP_MONO : forall A:set, A <> Empty -> forall G :e group_hl A, forall s t c= omega, pgroup A s G /\ s c= t -> pgroup A t G.
Admitted.

// HOL Light: Library/grouptheory.ml:12007 / PGROUP_SUM_GROUP   (hash md5:4ea8a6ac8dca9e15a6c645a6a2325eb9)
// not bridged: 
Theorem PGROUP_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G:set -> set, (forall x :e K, G x :e group_hl A) -> forall s c= omega, pgroup (A :^: K) s (sum_group A K k G) <-> forall i :e K, i :e k -> pgroup A s (G i).
Admitted.

// HOL Light: Library/grouptheory.ml:12020 / PGROUP_SING   (hash md5:4d64d2c2ce8c6da57da7cdd9a785b982)
// not bridged: 
Theorem PGROUP_SING : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, prime_nat p -> (pgroup A {p} G <-> forall x :e A, x :e group_carrier A G -> exists k :e omega, group_element_order_hl A G x = p ^ k).
Admitted.

// HOL Light: Library/grouptheory.ml:12028 / SYLOW_THEOREM_COUNT_MOD   (hash md5:0bd7f5f67345f1bfcb02b9fea50f37ba)
// not bridged: 
Theorem SYLOW_THEOREM_COUNT_MOD : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, finite (group_carrier A G) /\ (prime_nat p /\ divides_nat (p ^ k) (finite_cardinality (group_carrier A G))) -> exists q1 q2 :e omega, finite_cardinality {h :e Power A | subgroup_of A h G /\ finite_cardinality h = p ^ k} + p * q1 = 1 + p * q2.
Admitted.

// HOL Light: Library/grouptheory.ml:12262 / SYLOW_THEOREM   (hash md5:4e298c67af9dfd115281ead9d67cd629)
// not bridged: 
Theorem SYLOW_THEOREM : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, finite (group_carrier A G) /\ (prime_nat p /\ divides_nat (p ^ k) (finite_cardinality (group_carrier A G))) -> exists h c= A, subgroup_of A h G /\ finite_cardinality h = p ^ k.
Admitted.

// HOL Light: Library/grouptheory.ml:12276 / CAUCHY_GROUP_THEOREM   (hash md5:511075860c09f8eb14ff0f5bab74429b)
// not bridged: 
Theorem CAUCHY_GROUP_THEOREM : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, finite (group_carrier A G) /\ (prime_nat p /\ divides_nat p (finite_cardinality (group_carrier A G))) -> exists x :e A, x :e group_carrier A G /\ group_element_order_hl A G x = p.
Admitted.

// HOL Light: Library/grouptheory.ml:12302 / PRIME_DIVIDES_GROUP_ORDER   (hash md5:7879be659585a74bfb3e125fe10d7822)
// not bridged: 
Theorem PRIME_DIVIDES_GROUP_ORDER : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, finite (group_carrier A G) /\ prime_nat p -> ((exists x :e A, x :e group_carrier A G /\ divides_nat p (group_element_order_hl A G x)) <-> divides_nat p (finite_cardinality (group_carrier A G))).
Admitted.

// HOL Light: Library/grouptheory.ml:12310 / COPRIME_GROUP_ORDER   (hash md5:3cb6d4c4e2dc77d31a593525333618ef)
// not bridged: 
Theorem COPRIME_GROUP_ORDER : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, finite (group_carrier A G) -> ((forall x :e A, x :e group_carrier A G -> gcd_int (group_element_order_hl A G x) n = 1) <-> gcd_int (finite_cardinality (group_carrier A G)) n = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12317 / FINITE_PGROUP   (hash md5:389602d07cefeb06e73dfa150443ba49)
// not bridged: 
Theorem FINITE_PGROUP : forall A:set, A <> Empty -> forall s c= omega, forall G :e group_hl A, finite (group_carrier A G) -> (pgroup A s G <-> forall p :e omega, prime_nat p /\ divides_nat p (finite_cardinality (group_carrier A G)) -> p :e s).
Admitted.

// HOL Light: Library/grouptheory.ml:12326 / FINITE_PGROUP_SING   (hash md5:de56c684b1861a77f5718b482ddadb6e)
// not bridged: 
Theorem FINITE_PGROUP_SING : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, finite (group_carrier A G) /\ prime_nat p -> (pgroup A {p} G <-> exists k :e omega, finite_cardinality (group_carrier A G) = p ^ k).
Admitted.

// HOL Light: Library/grouptheory.ml:12332 / FINITE_AND_PGROUP_SING   (hash md5:024cf3aeb987356ad29e443526eb83ff)
// not bridged: 
Theorem FINITE_AND_PGROUP_SING : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, prime_nat p -> (finite (group_carrier A G) /\ pgroup A {p} G <-> exists k :e omega, equip (group_carrier A G) (p ^ k)).
Admitted.

// HOL Light: Library/grouptheory.ml:12339 / FINITE_GROUP_POW_INJECTIVE_EQ   (hash md5:bf281cc20dd5d41e4dd09eca0cd6c3dd)
// not bridged: 
Theorem FINITE_GROUP_POW_INJECTIVE_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, finite (group_carrier A G) -> ((forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_pow A G x n = group_pow A G y n) -> x = y) <-> gcd_int n (finite_cardinality (group_carrier A G)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12358 / FINITE_GROUP_ZPOW_INJECTIVE_EQ   (hash md5:20a7458d0f23510ca04cd622b39fd2a5)
// not bridged: 
Theorem FINITE_GROUP_ZPOW_INJECTIVE_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e int, finite (group_carrier A G) -> ((forall x y :e A, x :e group_carrier A G /\ (y :e group_carrier A G /\ group_zpow A G x n = group_zpow A G y n) -> x = y) <-> gcd_int n (finite_cardinality (group_carrier A G)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12370 / FINITE_GROUP_POW_SURJECTIVE_EQ   (hash md5:b85915c6c25a3a838045d2e6d49680f3)
// not bridged: 
Theorem FINITE_GROUP_POW_SURJECTIVE_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, finite (group_carrier A G) -> ((forall x :e A, x :e group_carrier A G -> exists y :e A, y :e group_carrier A G /\ group_pow A G y n = x) <-> gcd_int n (finite_cardinality (group_carrier A G)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12383 / FINITE_GROUP_ZPOW_SURJECTIVE_EQ   (hash md5:95f73e3fa17d848e7a33a6a6ed440fcc)
// not bridged: 
Theorem FINITE_GROUP_ZPOW_SURJECTIVE_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e int, finite (group_carrier A G) -> ((forall x :e A, x :e group_carrier A G -> exists y :e A, y :e group_carrier A G /\ group_zpow A G y n = x) <-> gcd_int n (finite_cardinality (group_carrier A G)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12396 / FINITE_GROUP_ZROOT_EXISTS   (hash md5:b6395fabdb1cf8b9beada99c302f6b6c)
// not bridged: 
Theorem FINITE_GROUP_ZROOT_EXISTS : forall A:set, forall G :e group_hl A, forall n :e int, forall x :e A, finite (group_carrier A G) /\ (gcd_int n (finite_cardinality (group_carrier A G)) = 1 /\ x :e group_carrier A G) -> exists y :e A, y :e group_carrier A G /\ group_zpow A G y n = x.
Admitted.

// HOL Light: Library/grouptheory.ml:12404 / FINITE_GROUP_ROOT_EXISTS   (hash md5:68955f4c6ec2454538e3cee5a7980459)
// not bridged: 
Theorem FINITE_GROUP_ROOT_EXISTS : forall A:set, forall G :e group_hl A, forall n :e omega, forall x :e A, finite (group_carrier A G) /\ (gcd_int n (finite_cardinality (group_carrier A G)) = 1 /\ x :e group_carrier A G) -> exists y :e A, y :e group_carrier A G /\ group_pow A G y n = x.
Admitted.

// HOL Light: Library/grouptheory.ml:12412 / ABELIAN_GROUP_MONOMORPHISM_POWERING_EQ   (hash md5:222defb0971948cb42b6f9cc5c40d0b9)
// not bridged: 
Theorem ABELIAN_GROUP_MONOMORPHISM_POWERING_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G /\ finite (group_carrier A G) -> (group_monomorphism A A (G,G) (fun x:set => group_pow A G x n) <-> gcd_int n (finite_cardinality (group_carrier A G)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12420 / ABELIAN_GROUP_MONOMORPHISM_POWERING   (hash md5:3757c4f233a67374e3dedfc048fe20ad)
// not bridged: 
Theorem ABELIAN_GROUP_MONOMORPHISM_POWERING : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G /\ (finite (group_carrier A G) /\ gcd_int n (finite_cardinality (group_carrier A G)) = 1) -> group_monomorphism A A (G,G) (fun x:set => group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:12427 / ABELIAN_GROUP_ISOMORPHISM_POWERING_EQ   (hash md5:3363ac6406514e1dc0ef5770029ff37a)
// not bridged: 
Theorem ABELIAN_GROUP_ISOMORPHISM_POWERING_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G /\ finite (group_carrier A G) -> (group_isomorphism_hl A A (G,G) (fun x:set => group_pow A G x n) <-> gcd_int n (finite_cardinality (group_carrier A G)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12435 / ABELIAN_GROUP_ISOMORPHISM_POWERING   (hash md5:725635bdec3b6a6176f630f8ab5cd089)
// not bridged: 
Theorem ABELIAN_GROUP_ISOMORPHISM_POWERING : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G /\ (finite (group_carrier A G) /\ gcd_int n (finite_cardinality (group_carrier A G)) = 1) -> group_isomorphism_hl A A (G,G) (fun x:set => group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:12442 / ABELIAN_GROUP_EPIMORPHISM_POWERING_EQ   (hash md5:93363ec4dd5025db687eb4fdad7e0415)
// not bridged: 
Theorem ABELIAN_GROUP_EPIMORPHISM_POWERING_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G /\ finite (group_carrier A G) -> (group_epimorphism A A (G,G) (fun x:set => group_pow A G x n) <-> gcd_int n (finite_cardinality (group_carrier A G)) = 1).
Admitted.

// HOL Light: Library/grouptheory.ml:12450 / ABELIAN_GROUP_EPIMORPHISM_POWERING   (hash md5:fd2de0aa6181966a220806b289222a3b)
// not bridged: 
Theorem ABELIAN_GROUP_EPIMORPHISM_POWERING : forall A:set, A <> Empty -> forall G :e group_hl A, forall n :e omega, abelian_group_hl A G /\ (finite (group_carrier A G) /\ gcd_int n (finite_cardinality (group_carrier A G)) = 1) -> group_epimorphism A A (G,G) (fun x:set => group_pow A G x n).
Admitted.

// HOL Light: Library/grouptheory.ml:12457 / PGROUP_ACTION_FIXPOINTS   (hash md5:4a03150fa28b27f72ca89e403f252d76)
// not bridged: 
Theorem PGROUP_ACTION_FIXPOINTS : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall p :e omega, group_action_hl A X G s a /\ (finite s /\ (prime_nat p /\ (finite (group_carrier A G) /\ pgroup A {p} G))) -> exists q1 q2 :e omega, finite_cardinality {x :e X | x :e s /\ forall g :e A, g :e group_carrier A G -> a g x = x} + p * q1 = finite_cardinality s + p * q2.
Admitted.

// HOL Light: Library/grouptheory.ml:12498 / PGROUP_ACTION_FIXPOINT   (hash md5:4e707f6ef5a54aac50b256733843e51c)
// not bridged: 
Theorem PGROUP_ACTION_FIXPOINT : forall A X:set, A <> Empty -> X <> Empty -> forall G :e group_hl A, forall s c= X, forall a:set -> set -> set, (forall x :e A, forall y :e X, a x y :e X) -> forall p :e omega, group_action_hl A X G s a /\ (prime_nat p /\ (finite (group_carrier A G) /\ (pgroup A {p} G /\ (finite s /\ ~ divides_nat p (finite_cardinality s))))) -> exists x :e X, x :e s /\ forall g :e A, g :e group_carrier A G -> a g x = x.
Admitted.

// HOL Light: Library/grouptheory.ml:12511 / SYLOW_THEOREM_CONJUGATE_GEN   (hash md5:e60d78fcf685b03b16ff6a975c72961d)
// not bridged: 
Theorem SYLOW_THEOREM_CONJUGATE_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h j c= A, prime_nat p /\ (subgroup_of A h G /\ (finite {left_coset_hl A G x h | x :e A, x :e group_carrier A G} /\ (~ divides_nat p (finite_cardinality {left_coset_hl A G x h | x :e A, x :e group_carrier A G}) /\ (subgroup_of A j G /\ (finite j /\ finite_cardinality j = p ^ k))))) -> exists a :e A, a :e group_carrier A G /\ j c= {group_conjugation A G a x | x :e h}.
Admitted.

// HOL Light: Library/grouptheory.ml:12549 / SYLOW_THEOREM_CONJUGATE_SUBSET   (hash md5:cdfcbd52fd0bb3d84fb88b45e332682c)
// not bridged: 
Theorem SYLOW_THEOREM_CONJUGATE_SUBSET : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k l :e omega, forall h j c= A, finite (group_carrier A G) /\ (prime_nat p /\ (~ divides_nat (p ^ (k + 1)) (finite_cardinality (group_carrier A G)) /\ (subgroup_of A h G /\ (finite_cardinality h = p ^ k /\ (subgroup_of A j G /\ finite_cardinality j = p ^ l))))) -> exists a :e A, a :e group_carrier A G /\ j c= {group_conjugation A G a x | x :e h}.
Admitted.

// HOL Light: Library/grouptheory.ml:12567 / SYLOW_THEOREM_CONJUGATE_ALT   (hash md5:c9d8a484325257a3144ad573d0fa2c51)
// not bridged: 
Theorem SYLOW_THEOREM_CONJUGATE_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h h' c= A, finite (group_carrier A G) /\ (prime_nat p /\ (~ divides_nat (p ^ (k + 1)) (finite_cardinality (group_carrier A G)) /\ (subgroup_of A h G /\ (finite_cardinality h = p ^ k /\ (subgroup_of A h' G /\ finite_cardinality h' = p ^ k))))) -> group_conjugate A G h h'.
Admitted.

// HOL Light: Library/grouptheory.ml:12583 / SYLOW_THEOREM_CONJUGATE   (hash md5:116c77bde9f8be05fee2fd5abac1c6ec)
// not bridged: 
Theorem SYLOW_THEOREM_CONJUGATE : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h h' c= A, finite (group_carrier A G) /\ (prime_nat p /\ (prime_index p (finite_cardinality (group_carrier A G)) = k /\ (subgroup_of A h G /\ (finite_cardinality h = p ^ k /\ (subgroup_of A h' G /\ finite_cardinality h' = p ^ k))))) -> group_conjugate A G h h'.
Admitted.

// HOL Light: Library/grouptheory.ml:12596 / SYLOW_THEOREM_CONJUGATE_EQ   (hash md5:7aee06b888e6219170020cb212ac154e)
// not bridged: 
Theorem SYLOW_THEOREM_CONJUGATE_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h h' c= A, finite (group_carrier A G) /\ (prime_nat p /\ (prime_index p (finite_cardinality (group_carrier A G)) = k /\ (subgroup_of A h G /\ finite_cardinality h = p ^ k))) -> (subgroup_of A h' G /\ finite_cardinality h' = p ^ k <-> group_conjugate A G h h').
Admitted.

// HOL Light: Library/grouptheory.ml:12609 / SYLOW_THEOREM_PGROUP_SUPERSET   (hash md5:103cdee1c8f79c891f7b05fb4960e277)
// not bridged: 
Theorem SYLOW_THEOREM_PGROUP_SUPERSET : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h c= A, finite (group_carrier A G) /\ (prime_nat p /\ (subgroup_of A h G /\ finite_cardinality h = p ^ k)) -> exists h' c= A, subgroup_of A h' G /\ (h c= h' /\ finite_cardinality h' = p ^ prime_index p (finite_cardinality (group_carrier A G))).
Admitted.

// HOL Light: Library/grouptheory.ml:12636 / SYLOW_THEOREM_NORMAL_UNIQUE   (hash md5:222568b6c80f4137451bba7b4e74f16b)
// not bridged: 
Theorem SYLOW_THEOREM_NORMAL_UNIQUE : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h h' c= A, finite (group_carrier A G) /\ (prime_nat p /\ (prime_index p (finite_cardinality (group_carrier A G)) = k /\ (normal_subgroup_of A h G /\ finite_cardinality h = p ^ k))) -> (subgroup_of A h' G /\ finite_cardinality h' = p ^ k <-> h' = h).
Admitted.

// HOL Light: Library/grouptheory.ml:12645 / SYLOW_THEOREM_COUNT_NORMALIZER   (hash md5:86e092cc4e2fcf2e91b68056971f95aa)
// not bridged: 
Theorem SYLOW_THEOREM_COUNT_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, forall p k :e omega, finite (group_carrier A G) /\ (prime_nat p /\ (prime_index p (finite_cardinality (group_carrier A G)) = k /\ (subgroup_of A h G /\ finite_cardinality h = p ^ k))) -> finite_cardinality {h0 :e Power A | subgroup_of A h0 G /\ finite_cardinality h0 = p ^ k} = div_nat (finite_cardinality (group_carrier A G)) (finite_cardinality (group_normalizer A G h)).
Admitted.

// HOL Light: Library/grouptheory.ml:12658 / SYLOW_THEOREM_COUNT_NORMALIZER_MUL   (hash md5:b15114cd74e4cf2fe44051cbc7d44825)
// not bridged: 
Theorem SYLOW_THEOREM_COUNT_NORMALIZER_MUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, forall p k :e omega, finite (group_carrier A G) /\ (prime_nat p /\ (prime_index p (finite_cardinality (group_carrier A G)) = k /\ (subgroup_of A h G /\ finite_cardinality h = p ^ k))) -> finite_cardinality {h0 :e Power A | subgroup_of A h0 G /\ finite_cardinality h0 = p ^ k} * finite_cardinality (group_normalizer A G h) = finite_cardinality (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:12674 / SYLOW_THEOREM_NORMAL_UNIQUE_EQ   (hash md5:e70d9e06652dfbc176ec3582bd861d2e)
// not bridged: 
Theorem SYLOW_THEOREM_NORMAL_UNIQUE_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h c= A, finite (group_carrier A G) /\ (prime_nat p /\ (prime_index p (finite_cardinality (group_carrier A G)) = k /\ (subgroup_of A h G /\ finite_cardinality h = p ^ k))) -> ((forall h' c= A, subgroup_of A h' G /\ finite_cardinality h' = p ^ k <-> h' = h) <-> normal_subgroup_of A h G).
Admitted.

// HOL Light: Library/grouptheory.ml:12694 / SYLOW_THEOREM_UNIQUE   (hash md5:850a6b500da788c575d5009376f152c2)
// not bridged: 
Theorem SYLOW_THEOREM_UNIQUE : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, finite (group_carrier A G) /\ (prime_nat p /\ prime_index p (finite_cardinality (group_carrier A G)) = k) -> ((exists h c= A, subgroup_of A h G /\ finite_cardinality h = p ^ k /\ forall y c= A, subgroup_of A y G /\ finite_cardinality y = p ^ k -> y = h) <-> exists h c= A, normal_subgroup_of A h G /\ finite_cardinality h = p ^ k).
Admitted.

// HOL Light: Library/grouptheory.ml:12711 / SYLOW_THEOREM_COUNT_DIVISOR   (hash md5:416e5222d99d87db10065ed1cbf12b1b)
// not bridged: 
Theorem SYLOW_THEOREM_COUNT_DIVISOR : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, finite (group_carrier A G) /\ (prime_nat p /\ prime_index p (finite_cardinality (group_carrier A G)) = k) -> divides_nat (finite_cardinality {h :e Power A | subgroup_of A h G /\ finite_cardinality h = p ^ k}) (div_nat (finite_cardinality (group_carrier A G)) (p ^ k)).
Admitted.

// HOL Light: Library/grouptheory.ml:12733 / PGROUP_NONTRIVIAL_CENTRE_GEN   (hash md5:b8462918a40f20dfb21e7cd5c11afdbd)
// not bridged: 
Theorem PGROUP_NONTRIVIAL_CENTRE_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, forall p :e omega, prime_nat p /\ (finite (group_carrier A G) /\ (pgroup A {p} G /\ (normal_subgroup_of A n G /\ ~ n = {group_id A G}))) -> {group_id A G} c= group_centralizer A G (group_carrier A G) :/\: n /\ {group_id A G} <> group_centralizer A G (group_carrier A G) :/\: n.
Admitted.

// HOL Light: Library/grouptheory.ml:12782 / PGROUP_NONTRIVIAL_CENTRE   (hash md5:bccfac5f707f5e888aec20ebf2634f95)
// not bridged: 
Theorem PGROUP_NONTRIVIAL_CENTRE : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, prime_nat p /\ (~ k = 0 /\ equip (group_carrier A G) (p ^ k)) -> {group_id A G} c= group_centralizer A G (group_carrier A G) /\ {group_id A G} <> group_centralizer A G (group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:12794 / PGROUP_DIVIDES_NORMALIZER_QUOTIENT   (hash md5:f064fc006feb095406eba5bd22beb360)
// not bridged: 
Theorem PGROUP_DIVIDES_NORMALIZER_QUOTIENT : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h c= A, finite (group_carrier A G) /\ (prime_nat p /\ (subgroup_of A h G /\ (finite_cardinality h = p ^ k /\ divides_nat p (div_nat (finite_cardinality (group_carrier A G)) (finite_cardinality h))))) -> divides_nat p (div_nat (finite_cardinality (group_normalizer A G h)) (finite_cardinality h)).
Admitted.

// HOL Light: Library/grouptheory.ml:12863 / PGROUP_SUBGROUP_PSUBSET_NORMALIZER   (hash md5:402423daed90b46eed817b8c797ce5ae)
// not bridged: 
Theorem PGROUP_SUBGROUP_PSUBSET_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, forall h c= A, prime_nat p /\ (finite (group_carrier A G) /\ (pgroup A {p} G /\ (subgroup_of A h G /\ ~ h = group_carrier A G))) -> h c= group_normalizer A G h /\ h <> group_normalizer A G h.
Admitted.

// HOL Light: Library/grouptheory.ml:12886 / PGROUP_MAXIMAL_NORMAL_SUBGROUP_OF   (hash md5:b43c24014775e88f4e43071c261e81a9)
// not bridged: 
Theorem PGROUP_MAXIMAL_NORMAL_SUBGROUP_OF : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, forall h c= A, prime_nat p /\ (finite (group_carrier A G) /\ (pgroup A {p} G /\ (subgroup_of A h G /\ (forall h' c= A, subgroup_of A h' G /\ (h c= h' /\ h <> h') -> h' = group_carrier A G)))) -> normal_subgroup_of A h G.
Admitted.

// HOL Light: Library/grouptheory.ml:12899 / PGROUP_FRATTINI   (hash md5:b92d3f76e2ce786c100c92570af45dea)
// not bridged: 
Theorem PGROUP_FRATTINI : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h j c= A, prime_nat p /\ (finite j /\ (normal_subgroup_of A j G /\ (h c= j /\ (subgroup_of A h G /\ (prime_index p (finite_cardinality j) = k /\ finite_cardinality h = p ^ k))))) -> group_setmul A G (group_normalizer A G h) j = group_carrier A G.
Admitted.

// HOL Light: Library/grouptheory.ml:12944 / PGROUP_SELF_NORMALIZER   (hash md5:720c5b13b992b8f78acdad796470dca7)
// not bridged: 
Theorem PGROUP_SELF_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall s h c= A, finite (group_carrier A G) /\ (prime_nat p /\ (prime_index p (finite_cardinality (group_carrier A G)) = k /\ (subgroup_of A s G /\ (finite_cardinality s = p ^ k /\ (subgroup_of A h G /\ group_normalizer A G s c= h))))) -> group_normalizer A G h = h.
Admitted.

// HOL Light: Library/grouptheory.ml:12993 / PGROUP_NORMALIZER_NORMALIZER   (hash md5:29251eca3f4f9ff6ec4c782514f9a57d)
// not bridged: 
Theorem PGROUP_NORMALIZER_NORMALIZER : forall A:set, A <> Empty -> forall G :e group_hl A, forall p k :e omega, forall h c= A, finite (group_carrier A G) /\ (prime_nat p /\ (prime_index p (finite_cardinality (group_carrier A G)) = k /\ (subgroup_of A h G /\ finite_cardinality h = p ^ k))) -> group_normalizer A G (group_normalizer A G h) = group_normalizer A G h.
Admitted.

// HOL Light: Library/grouptheory.ml:13008 / GROUP_DISJOINT_SUM_ALT   (hash md5:50773b611af58c10591a1af71c275f56)
// not bridged: 
Theorem GROUP_DISJOINT_SUM_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> (g :/\: h c= {group_id A G} <-> g :/\: h = {group_id A G}).
Admitted.

// HOL Light: Library/grouptheory.ml:13014 / GROUP_DISJOINT_SUM_ID   (hash md5:01ef20d969de83ba6ca81e70ca2dffbb)
// not bridged: 
Theorem GROUP_DISJOINT_SUM_ID : forall A:set, forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> (g :/\: h c= {group_id A G} <-> forall x y :e A, x :e g /\ (y :e h /\ group_mul A G x y = group_id A G) -> x = group_id A G /\ y = group_id A G).
Admitted.

// HOL Light: Library/grouptheory.ml:13030 / GROUP_DISJOINT_SUM_CANCEL   (hash md5:045eb58aa4f308223cdd041f40a61d09)
// not bridged: 
Theorem GROUP_DISJOINT_SUM_CANCEL : forall A:set, forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> (g :/\: h c= {group_id A G} <-> forall x x' y y' :e A, x :e g /\ (x' :e g /\ (y :e h /\ (y' :e h /\ group_mul A G x y = group_mul A G x' y'))) -> x = x' /\ y = y').
Admitted.

// HOL Light: Library/grouptheory.ml:13058 / GROUP_SUM_COMMUTING_IMP_NORMAL   (hash md5:5717a0f8c872daeeb044ae9655468bfa)
// not bridged: 
Theorem GROUP_SUM_COMMUTING_IMP_NORMAL : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ (subgroup_of A h G /\ (group_carrier A G c= group_setmul A G g h /\ (forall x y :e A, x :e g /\ y :e h -> group_mul A G x y = group_mul A G y x))) -> normal_subgroup_of A g G /\ normal_subgroup_of A h G.
Admitted.

// HOL Light: Library/grouptheory.ml:13092 / GROUP_SUM_NORMAL_IMP_COMMUTING   (hash md5:d49ec6e3db7159c7028930881bf61530)
// not bridged: 
Theorem GROUP_SUM_NORMAL_IMP_COMMUTING : forall A:set, forall G :e group_hl A, forall g h c= A, normal_subgroup_of A g G /\ (normal_subgroup_of A h G /\ g :/\: h c= {group_id A G}) -> forall x y :e A, x :e g /\ y :e h -> group_mul A G x y = group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:13127 / GROUP_SUM_NORMAL_EQ_COMMUTING   (hash md5:8fdd99afb2fc82e66a8bdc60b78f3a7b)
// not bridged: 
Theorem GROUP_SUM_NORMAL_EQ_COMMUTING : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ (subgroup_of A h G /\ (group_carrier A G c= group_setmul A G g h /\ g :/\: h c= {group_id A G})) -> (normal_subgroup_of A g G /\ normal_subgroup_of A h G <-> forall x y :e A, x :e g /\ y :e h -> group_mul A G x y = group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:13139 / GROUP_HOMOMORPHISM_GROUP_MUL_GEN   (hash md5:5bc58abb09125927ec3a07fb96a053c9)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_GROUP_MUL_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, group_homomorphism_hl (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h),G) (fun p:set => group_mul A G (p 0) (p 1)) <-> forall x y :e A, x :e group_carrier A G /\ (x :e g /\ (y :e group_carrier A G /\ y :e h)) -> group_mul A G x y = group_mul A G y x.
Admitted.

// HOL Light: Library/grouptheory.ml:13174 / GROUP_HOMOMORPHISM_GROUP_MUL_EQ   (hash md5:3825c40823c8856f141aca9ab2776d46)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_GROUP_MUL_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> (group_homomorphism_hl (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h),G) (fun p:set => group_mul A G (p 0) (p 1)) <-> forall x y :e A, x :e g /\ y :e h -> group_mul A G x y = group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:13184 / GROUP_HOMOMORPHISM_GROUP_MUL   (hash md5:bd21400452c62d36262441c033037532)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_GROUP_MUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, abelian_group_hl A G -> group_homomorphism_hl (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h),G) (fun p:set => group_mul A G (p 0) (p 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:13193 / GROUP_EPIMORPHISM_GROUP_MUL_EQ   (hash md5:7edfe51bebf230de2b2ae5a532eab76e)
// not bridged: 
Theorem GROUP_EPIMORPHISM_GROUP_MUL_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> (group_epimorphism (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h),G) (fun p:set => group_mul A G (p 0) (p 1)) <-> group_setmul A G g h = group_carrier A G /\ forall x y :e A, x :e g /\ y :e h -> group_mul A G x y = group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:13208 / GROUP_MONOMORPHISM_GROUP_MUL_EQ   (hash md5:56171413ef3da0d3de5d44c4f75de184)
// not bridged: 
Theorem GROUP_MONOMORPHISM_GROUP_MUL_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> (group_monomorphism (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h),G) (fun p:set => group_mul A G (p 0) (p 1)) <-> g :/\: h = {group_id A G} /\ forall x y :e A, x :e g /\ y :e h -> group_mul A G x y = group_mul A G y x).
Admitted.

// HOL Light: Library/grouptheory.ml:13223 / GROUP_ISOMORPHISM_GROUP_MUL_ALT   (hash md5:f4f7015702fdd2755b0335190977b834)
// not bridged: 
Theorem GROUP_ISOMORPHISM_GROUP_MUL_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> (group_isomorphism_hl (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h),G) (fun p:set => group_mul A G (p 0) (p 1)) <-> g :/\: h = {group_id A G} /\ (group_setmul A G g h = group_carrier A G /\ forall x y :e A, x :e g /\ y :e h -> group_mul A G x y = group_mul A G y x)).
Admitted.

// HOL Light: Library/grouptheory.ml:13237 / GROUP_ISOMORPHISM_GROUP_MUL_EQ   (hash md5:8bf5d1f1b8d1e86998059ef64a049223)
// not bridged: 
Theorem GROUP_ISOMORPHISM_GROUP_MUL_EQ : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, subgroup_of A g G /\ subgroup_of A h G -> (group_isomorphism_hl (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h),G) (fun p:set => group_mul A G (p 0) (p 1)) <-> normal_subgroup_of A g G /\ (normal_subgroup_of A h G /\ (g :/\: h = {group_id A G} /\ group_setmul A G g h = group_carrier A G))).
Admitted.

// HOL Light: Library/grouptheory.ml:13253 / GROUP_ISOMORPHISM_GROUP_MUL_GEN   (hash md5:1242ca189c7172aa73ce8cefeb402517)
// not bridged: 
Theorem GROUP_ISOMORPHISM_GROUP_MUL_GEN : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, normal_subgroup_of A g G /\ normal_subgroup_of A h G -> (group_isomorphism_hl (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h),G) (fun p:set => group_mul A G (p 0) (p 1)) <-> g :/\: h c= {group_id A G} /\ group_setmul A G g h = group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:13264 / GROUP_ISOMORPHISM_GROUP_MUL   (hash md5:9f815f0cd154bb3160fe4dfb1bfe8e13)
// not bridged: 
Theorem GROUP_ISOMORPHISM_GROUP_MUL : forall A:set, A <> Empty -> forall G :e group_hl A, forall g h c= A, abelian_group_hl A G /\ (subgroup_of A g G /\ subgroup_of A h G) -> (group_isomorphism_hl (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h),G) (fun p:set => group_mul A G (p 0) (p 1)) <-> g :/\: h c= {group_id A G} /\ group_setmul A G g h = group_carrier A G).
Admitted.

// HOL Light: Library/grouptheory.ml:13275 / ISOMORPHIC_PROD_GROUP_SUBGROUP_GENERATED   (hash md5:bc4c6ab0f7873f542f6c877f852b149d)
// not bridged: 
Theorem ISOMORPHIC_PROD_GROUP_SUBGROUP_GENERATED : forall A:set, forall G :e group_hl A, forall g h c= A, normal_subgroup_of A g G /\ (normal_subgroup_of A h G /\ g :/\: h = {group_id A G}) -> isomorphic_group (A :*: A) A (prod_group A A (subgroup_generated A G g) (subgroup_generated A G h)) (subgroup_generated A G (group_setmul A G g h)).
Admitted.

// HOL Light: Library/grouptheory.ml:13296 / GROUP_INTER_IM_KER   (hash md5:b559e959a3949255c69bf442e5a9f8a5)
// not bridged: 
Theorem GROUP_INTER_IM_KER : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, group_homomorphism_hl A B (G,H) f /\ (group_homomorphism_hl B C (H,K) g /\ group_monomorphism A C (G,K) (fun x:set => g (f x))) -> group_image A B (G,H) f :/\: group_kernel B C (H,K) g = {group_id B H}.
Admitted.

// HOL Light: Library/grouptheory.ml:13308 / GROUP_SUM_IM_KER   (hash md5:967da436864ae7c40f7d07094febf6dc)
// not bridged: 
Theorem GROUP_SUM_IM_KER : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, group_homomorphism_hl A B (G,H) f /\ (group_homomorphism_hl B C (H,K) g /\ group_epimorphism A C (G,K) (fun x:set => g (f x))) -> group_setmul B H (group_image A B (G,H) f) (group_kernel B C (H,K) g) = group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:13334 / GROUP_SUM_KER_IM   (hash md5:b150977fc99ada7471244008b2b69aea)
// not bridged: 
Theorem GROUP_SUM_KER_IM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, group_homomorphism_hl A B (G,H) f /\ (group_homomorphism_hl B C (H,K) g /\ group_epimorphism A C (G,K) (fun x:set => g (f x))) -> group_setmul B H (group_kernel B C (H,K) g) (group_image A B (G,H) f) = group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:13362 / GROUP_SEMIDIRECT_SUM_IM_KER   (hash md5:0e5b39b1184828cb5f375a575edfd8db)
// not bridged: 
Theorem GROUP_SEMIDIRECT_SUM_IM_KER : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, group_homomorphism_hl A B (G,H) f /\ (group_homomorphism_hl B C (H,K) g /\ group_isomorphism_hl A C (G,K) (fun x:set => g (f x))) -> group_image A B (G,H) f :/\: group_kernel B C (H,K) g = {group_id B H} /\ group_setmul B H (group_image A B (G,H) f) (group_kernel B C (H,K) g) = group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:13373 / GROUP_SEMIDIRECT_SUM_KER_IM   (hash md5:2f047e75f5897c9352362c8842dee525)
// not bridged: 
Theorem GROUP_SEMIDIRECT_SUM_KER_IM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, group_homomorphism_hl A B (G,H) f /\ (group_homomorphism_hl B C (H,K) g /\ group_isomorphism_hl A C (G,K) (fun x:set => g (f x))) -> group_kernel B C (H,K) g :/\: group_image A B (G,H) f = {group_id B H} /\ group_setmul B H (group_kernel B C (H,K) g) (group_image A B (G,H) f) = group_carrier B H.
Admitted.

// HOL Light: Library/grouptheory.ml:13385 / GROUP_ISOMORPHISM_GROUP_MUL_IM_KER   (hash md5:17f6762cd5abfaeb4f92503d71a9f09a)
// not bridged: 
Theorem GROUP_ISOMORPHISM_GROUP_MUL_IM_KER : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, abelian_group_hl B H /\ (group_homomorphism_hl A B (G,H) f /\ (group_homomorphism_hl B C (H,K) g /\ group_isomorphism_hl A C (G,K) (fun x:set => g (f x)))) -> group_isomorphism_hl (B :*: B) B (prod_group B B (subgroup_generated B H (group_image A B (G,H) f)) (subgroup_generated B H (group_kernel B C (H,K) g)),H) (fun p:set => group_mul B H (p 0) (p 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:13399 / GROUP_ISOMORPHISM_GROUP_MUL_KER_IM   (hash md5:4394154ff27d44d7241ab4bc83413b11)
// not bridged: 
Theorem GROUP_ISOMORPHISM_GROUP_MUL_KER_IM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall G :e group_hl A, forall H :e group_hl B, forall K :e group_hl C, abelian_group_hl B H /\ (group_homomorphism_hl A B (G,H) f /\ (group_homomorphism_hl B C (H,K) g /\ group_isomorphism_hl A C (G,K) (fun x:set => g (f x)))) -> group_isomorphism_hl (B :*: B) B (prod_group B B (subgroup_generated B H (group_kernel B C (H,K) g)) (subgroup_generated B H (group_image A B (G,H) f)),H) (fun p:set => group_mul B H (p 0) (p 1)).
Admitted.

// HOL Light: Library/grouptheory.ml:13417 / GROUP_HOMOMORPHISM_GROUP_SUM_GEN   (hash md5:260b6dfb656e6da13c23b144c8981d20)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13507 / GROUP_HOMOMORPHISM_GROUP_SUM_EQ   (hash md5:4035fba06316807b817d79cea1a6152f)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13519 / GROUP_HOMOMORPHISM_GROUP_SUM   (hash md5:6f907f9385694feba3618cd6ab233bd6)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13529 / GROUP_HOMOMORPHISM_ABELIAN_GROUP_SUM   (hash md5:9aa4d8661537e669c2020b1b5cd07b09)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13538 / ABELIAN_GROUP_HOMOMORPHISM_GROUP_SUM   (hash md5:5df8bcc4a591d5cfad24899abe7fde70)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13558 / SUBGROUP_EPIMORPHISM_GROUP_SUM_GEN   (hash md5:3d1e610febb4133c55225a98aeb6ff02)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13607 / SUBGROUP_EPIMORPHISM_GROUP_SUM_EQ   (hash md5:ba6c8d6f14817aebe42707cbcc7af5c6)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13620 / SUBGROUP_EPIMORPHISM_GROUP_SUM   (hash md5:d4b3343b7e783099005e5320e883cc38)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13631 / SUBGROUP_EPIMORPHISM_ABELIAN_GROUP_SUM   (hash md5:90c94841c396da1e107f327fbd7cebe8)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13641 / GROUP_EPIMORPHISM_GROUP_SUM_GEN   (hash md5:39c58e41f5bf4407fd8d0f59add5b9d5)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13656 / GROUP_EPIMORPHISM_GROUP_SUM_EQ   (hash md5:7f2b4ee4e5ec64b77be4f4a626ba49ce)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13669 / GROUP_EPIMORPHISM_GROUP_SUM   (hash md5:b0b1212f77d5f3d9386929e6743ab123)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13680 / GROUP_EPIMORPHISM_ABELIAN_GROUP_SUM   (hash md5:56afdc315e514d71ed77411b818f74d1)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13690 / GROUP_MONOMORPHISM_GROUP_SUM_GEN   (hash md5:41b0ca1e575d7e14b04d25780856b5d9)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13810 / GROUP_MONOMORPHISM_GROUP_SUM_EQ   (hash md5:64a413ae6eb1af2cf47cd64a5b970f41)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13826 / GROUP_MONOMORPHISM_GROUP_SUM   (hash md5:efeaf85372e1b9c7985702eb5ca1fd96)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13840 / GROUP_MONOMORPHISM_ABELIAN_GROUP_SUM   (hash md5:cba4cbc8d6ab738f7be5b1d770c3a60e)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13854 / SUBGROUP_ISOMORPHISM_GROUP_SUM_GEN   (hash md5:27127a1dd9c4d73d7cac547a94a2be84)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13873 / SUBGROUP_ISOMORPHISM_GROUP_SUM_EQ   (hash md5:f243bb770b9fd2a329d6b8a673064764)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13891 / SUBGROUP_ISOMORPHISM_GROUP_SUM   (hash md5:30983bc2e09b9467842adb781b054b64)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13909 / SUBGROUP_ISOMORPHISM_ABELIAN_GROUP_SUM   (hash md5:a43588e8423165c03835534c04a1fe4e)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13925 / GROUP_ISOMORPHISM_GROUP_SUM_GEN   (hash md5:c315a874e9543cfa8e19cba856507b12)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13944 / GROUP_ISOMORPHISM_GROUP_SUM_EQ   (hash md5:373d05d7f66f755e24d15b47c6d186b0)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13962 / GROUP_ISOMORPHISM_GROUP_SUM   (hash md5:e183909cec53e7bbc921257a4a305d1f)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13980 / GROUP_ISOMORPHISM_ABELIAN_GROUP_SUM   (hash md5:aa705393776f12256241c86680c5a4c9)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:13996 / ISOMORPHIC_SUM_GROUP_GEN   (hash md5:4c6dca97e9e3fe202ab7a6e0ae066b57)
// not bridged: 
Theorem ISOMORPHIC_SUM_GROUP_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G :e group_hl A, forall h :e Power A :^: K, (forall x y :e k, x <> y -> forall x0 y0 :e A, x0 :e group_carrier A G /\ (x0 :e h x /\ (y0 :e group_carrier A G /\ y0 :e h y)) -> group_mul A G x0 y0 = group_mul A G y0 x0) /\ (subgroup_generated A G (Union {h i | i :e K, i :e k}) = G /\ (forall i :e K, i :e k -> group_carrier A (subgroup_generated A G (h i)) :/\: group_carrier A (subgroup_generated A G (Union {h j | j :e K, j :e k :\: {i}})) = {group_id A G})) -> isomorphic_group (A :^: K) A (sum_group A K k (fun i:set => subgroup_generated A G (h i))) G.
Admitted.

// HOL Light: Library/grouptheory.ml:14012 / ISOMORPHIC_SUM_GROUP   (hash md5:320f3ef86f4b9f3fc9f8693c5fcddf16)
// not bridged: 
Theorem ISOMORPHIC_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G :e group_hl A, forall h :e Power A :^: K, (forall i :e K, i :e k -> subgroup_of A (h i) G) /\ ((forall x y :e k, x <> y -> forall x0 y0 :e A, x0 :e h x /\ y0 :e h y -> group_mul A G x0 y0 = group_mul A G y0 x0) /\ (subgroup_generated A G (Union {h i | i :e K, i :e k}) = G /\ (forall i :e K, i :e k -> h i :/\: group_carrier A (subgroup_generated A G (Union {h j | j :e K, j :e k :\: {i}})) = {group_id A G}))) -> isomorphic_group (A :^: K) A (sum_group A K k (fun i:set => subgroup_generated A G (h i))) G.
Admitted.

// HOL Light: Library/grouptheory.ml:14028 / ISOMORPHIC_ABELIAN_SUM_GROUP   (hash md5:bec1360eb0405908a8a73f87eda843ea)
// not bridged: 
Theorem ISOMORPHIC_ABELIAN_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G :e group_hl A, forall h :e Power A :^: K, abelian_group_hl A G /\ ((forall i :e K, i :e k -> subgroup_of A (h i) G) /\ (subgroup_generated A G (Union {h i | i :e K, i :e k}) = G /\ (forall i :e K, i :e k -> h i :/\: group_carrier A (subgroup_generated A G (Union {h j | j :e K, j :e k :\: {i}})) = {group_id A G}))) -> isomorphic_group (A :^: K) A (sum_group A K k (fun i:set => subgroup_generated A G (h i))) G.
Admitted.

// HOL Light: Library/grouptheory.ml:14043 / ISOMORPHIC_NORMAL_SUM_GROUP   (hash md5:74cab3f22bc82ffd47d4fac2e04b31e1)
// not bridged: 
Theorem ISOMORPHIC_NORMAL_SUM_GROUP : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall G :e group_hl A, forall h :e Power A :^: K, (forall i :e K, i :e k -> normal_subgroup_of A (h i) G) /\ (subgroup_generated A G (Union {h i | i :e K, i :e k}) = G /\ (forall i :e K, i :e k -> h i :/\: group_carrier A (subgroup_generated A G (Union {h j | j :e K, j :e k :\: {i}})) = {group_id A G})) -> isomorphic_group (A :^: K) A (sum_group A K k (fun i:set => subgroup_generated A G (h i))) G.
Admitted.

// HOL Light: Library/grouptheory.ml:14068 / CARRIER_SUBGROUP_GENERATED_UNIONS   (hash md5:a0a5f372364f98b5bc8b1ac3c9f54da9)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14082 / CARRIER_SUBGROUP_GENERATED_UNIONS_ALT   (hash md5:95bb622dd957cd851c87203e5e2d5dff)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14099 / CARRIER_SUBGROUP_GENERATED_UNIONS_FINITE   (hash md5:0cd0aefa1b9c35aeeadc48f51e797e70)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14107 / CARRIER_SUBGROUP_GENERATED_UNIONS_EXPLICIT   (hash md5:2faf1ae02ae76b13f5eb8ac74a095e8f)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14134 / CARRIER_SUBGROUP_GENERATED_ALT   (hash md5:bd2c26fefc42faa29962110261cf730a)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14199 / CARRIER_SUBGROUP_GENERATED_FINITE   (hash md5:facc683b8e2cec08924fad5d9d24e454)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14206 / CARRIER_SUBGROUP_GENERATED_EXPLICIT   (hash md5:2c3b6fd1de33cc39498adf9aeb13eef2)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14235 / SUBGROUP_GENERATED_UNIONS_PRIME_TORSION_FINITE   (hash md5:ec26000d638882f4c46aa788fc3e3e19)
// not bridged: 
Theorem SUBGROUP_GENERATED_UNIONS_PRIME_TORSION_FINITE : forall A:set, A <> Empty -> forall G :e group_hl A, forall P:set -> prop, finite {p :e omega | prime_nat p /\ P p} -> subgroup_generated A G (Union {{x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k} | p :e omega, prime_nat p /\ P p}) = subgroup_generated A G {x :e A | x :e group_carrier A G /\ forall p :e omega, prime_nat p /\ divides_nat p (group_element_order_hl A G x) -> P p}.
Admitted.

// HOL Light: Library/grouptheory.ml:14307 / SUBGROUP_GENERATED_UNIONS_PRIME_TORSION   (hash md5:59b3b58792db37be56d05d5de1f23e45)
// not bridged: 
Theorem SUBGROUP_GENERATED_UNIONS_PRIME_TORSION : forall A:set, A <> Empty -> forall G :e group_hl A, forall P:set -> prop, subgroup_generated A G (Union {{x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k} | p :e omega, prime_nat p /\ P p}) = subgroup_generated A G {x :e A | x :e group_carrier A G /\ (~ group_element_order_hl A G x = 0 /\ forall p :e omega, prime_nat p /\ divides_nat p (group_element_order_hl A G x) -> P p)}.
Admitted.

// HOL Light: Library/grouptheory.ml:14338 / SUBGROUP_GENERATED_UNIONS_PRIME_TORSION_FULL   (hash md5:fef34daf570e9cc469170e0f4ab9c43f)
// not bridged: 
Theorem SUBGROUP_GENERATED_UNIONS_PRIME_TORSION_FULL : forall A:set, A <> Empty -> forall G :e group_hl A, subgroup_generated A G (Union {{x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k} | p :e omega, prime_nat p}) = subgroup_generated A G {x :e A | x :e group_carrier A G /\ ~ group_element_order_hl A G x = 0}.
Admitted.

// HOL Light: Library/grouptheory.ml:14350 / PGROUP_PRIME_TORSION   (hash md5:87455f9daaf469d9c73673d9167f0312)
// not bridged: 
Theorem PGROUP_PRIME_TORSION : forall A:set, A <> Empty -> forall G :e group_hl A, forall p :e omega, abelian_group_hl A G /\ prime_nat p -> pgroup A {p} (subgroup_generated A G {x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k}).
Admitted.

// HOL Light: Library/grouptheory.ml:14361 / PGROUP_SUBSET_PRIME_TORSION   (hash md5:db7fc531da122355b5414fd1f36fbd39)
// not bridged: 
Theorem PGROUP_SUBSET_PRIME_TORSION : forall A:set, forall G :e group_hl A, forall p :e omega, forall s c= A, prime_nat p /\ (s c= group_carrier A G /\ pgroup A {p} (subgroup_generated A G s)) -> s c= {x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k}.
Admitted.

// HOL Light: Library/grouptheory.ml:14374 / ABELIAN_GROUP_TORSION_ISOMORPHISM   (hash md5:2b90c805f1ae44d0cf3a362f0e899b07)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14411 / ABELIAN_GROUP_TORSION_STRUCTURE   (hash md5:a3c2a44eb14a51e325cece56d2c7a549)
// not bridged: 
Theorem ABELIAN_GROUP_TORSION_STRUCTURE : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G -> isomorphic_group A (A :^: omega) (subgroup_generated A G {x :e A | x :e group_carrier A G /\ ~ group_element_order_hl A G x = 0}) (sum_group A omega {p :e omega | prime_nat p} (fun p:set => subgroup_generated A G {x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k})).
Admitted.

// HOL Light: Library/grouptheory.ml:14425 / TORSION_ABELIAN_GROUP_ISOMORPHISM   (hash md5:f63e394d3fb092e0eb123b998855491c)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14443 / TORSION_ABELIAN_GROUP_STRUCTURE   (hash md5:27c19e430a5f38aec80974b96b74b063)
// not bridged: 
Theorem TORSION_ABELIAN_GROUP_STRUCTURE : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G /\ (forall x :e A, x :e group_carrier A G -> ~ group_element_order_hl A G x = 0) -> isomorphic_group A (A :^: omega) G (sum_group A omega {p :e omega | prime_nat p} (fun p:set => subgroup_generated A G {x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k})).
Admitted.

// HOL Light: Library/grouptheory.ml:14456 / FINITE_ABELIAN_GROUP_STRUCTURE   (hash md5:3af8cc117d1bfd55cda9bdb00356eed7)
// not bridged: 
Theorem FINITE_ABELIAN_GROUP_STRUCTURE : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G /\ finite (group_carrier A G) -> isomorphic_group A (A :^: omega) G (sum_group A omega {p :e omega | prime_nat p /\ divides_nat p (finite_cardinality (group_carrier A G))} (fun p:set => subgroup_generated A G {x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k})).
Admitted.

// HOL Light: Library/grouptheory.ml:14483 / FINITE_ABELIAN_GROUP_STRUCTURE_ALT   (hash md5:7cfe3c09a8e5ec3440d61b2ee053f317)
// not bridged: 
Theorem FINITE_ABELIAN_GROUP_STRUCTURE_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G /\ finite (group_carrier A G) -> isomorphic_group A (A :^: omega) G (product_group A omega {p :e omega | prime_nat p /\ divides_nat p (finite_cardinality (group_carrier A G))} (fun p:set => subgroup_generated A G {x :e A | x :e group_carrier A G /\ exists k :e omega, group_element_order_hl A G x = p ^ k})).
Admitted.

// HOL Light: Library/grouptheory.ml:14498 / TORSION_ABELIAN_GROUP_AS_SUM_OF_PGROUPS   (hash md5:27fcae8a355e49d9575a96f2aae59dd4)
// not bridged: 
Theorem TORSION_ABELIAN_GROUP_AS_SUM_OF_PGROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G -> ((forall x :e A, x :e group_carrier A G -> ~ group_element_order_hl A G x = 0) <-> exists H:set -> set, (forall x :e omega, H x :e group_hl A) /\ ((forall p :e omega, prime_nat p -> pgroup A {p} (H p)) /\ isomorphic_group A (A :^: omega) G (sum_group A omega {p :e omega | prime_nat p} H))).
Admitted.

// HOL Light: Library/grouptheory.ml:14537 / FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_ISOMORPHISM   (hash md5:95c87a42636547bd28da045526bd7371)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14924 / FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_ISOMORPHISM_ALT   (hash md5:e01bd97a1b8b12c66a37c7daea1cf87b)
// no native statement (pending_mapping): literal fact only

// HOL Light: Library/grouptheory.ml:14937 / FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_EXPLICIT   (hash md5:c370d05792df4a964815778b7743d750)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_EXPLICIT : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, abelian_group_hl A G /\ finite s -> exists t c= A, finite t /\ (finite_cardinality t <= finite_cardinality s /\ (t c= group_carrier A G /\ (subgroup_generated A G t = subgroup_generated A G s /\ isomorphic_group A (A :^: A) (subgroup_generated A G s) (sum_group A A t (fun x:set => subgroup_generated A G {x}))))).
Admitted.

// HOL Light: Library/grouptheory.ml:14950 / FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_EXPLICIT_ALT   (hash md5:4d99aedff426ab705ee7896f94f434be)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_SUBGROUP_STRUCTURE_EXPLICIT_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, forall s c= A, abelian_group_hl A G /\ finite s -> exists t c= A, finite t /\ (finite_cardinality t <= finite_cardinality s /\ (t c= group_carrier A G /\ (subgroup_generated A G t = subgroup_generated A G s /\ isomorphic_group A (A :^: A) (subgroup_generated A G s) (product_group A A t (fun x:set => subgroup_generated A G {x}))))).
Admitted.

// HOL Light: Library/grouptheory.ml:14961 / FINITELY_GENERATED_ABELIAN_GROUP_STRUCTURE_EXPLICIT   (hash md5:cda9f268b52fd16b296a232b0c300ec4)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_GROUP_STRUCTURE_EXPLICIT : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ abelian_group_hl A G <-> exists t c= A, finite t /\ (t c= group_carrier A G /\ isomorphic_group A (A :^: A) G (sum_group A A t (fun x:set => subgroup_generated A G {x}))).
Admitted.

// HOL Light: Library/grouptheory.ml:14978 / FINITELY_GENERATED_ABELIAN_GROUP_STRUCTURE_EXPLICIT_ALT   (hash md5:2b35172010324633a3d1c8e1fc14bb6c)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_GROUP_STRUCTURE_EXPLICIT_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ abelian_group_hl A G <-> exists t c= A, finite t /\ (t c= group_carrier A G /\ isomorphic_group A (A :^: A) G (product_group A A t (fun x:set => subgroup_generated A G {x}))).
Admitted.

// HOL Light: Library/grouptheory.ml:14986 / FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_CYCLIC_GROUPS   (hash md5:8438f5283e4c61b4986738791396063f)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_CYCLIC_GROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ abelian_group_hl A G <-> exists n :e omega, exists H:set -> set, (forall x :e omega, H x :e group_hl A) /\ ((forall i :e omega, 1 <= i /\ i <= n -> cyclic_group_hl A (H i)) /\ isomorphic_group A (A :^: omega) G (sum_group A omega (idx_n n) H)).
Admitted.

// HOL Light: Library/grouptheory.ml:15016 / FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_CYCLIC_GROUPS   (hash md5:2e34056d2becbba9fa2b31ed08aa2dbb)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_CYCLIC_GROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ abelian_group_hl A G <-> exists n :e omega, exists H:set -> set, (forall x :e omega, H x :e group_hl A) /\ ((forall i :e omega, 1 <= i /\ i <= n -> cyclic_group_hl A (H i)) /\ isomorphic_group A (A :^: omega) G (product_group A omega (idx_n n) H)).
Admitted.

// HOL Light: Library/grouptheory.ml:15025 / FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_INTEGER_MOD_GROUPS   (hash md5:3c8f409e45da5032381de6bffbb66cdc)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_INTEGER_MOD_GROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ abelian_group_hl A G <-> exists n :e omega, exists d:set -> set, (forall x :e omega, d x :e omega) /\ isomorphic_group A (int :^: omega) G (sum_group int omega (idx_n n) (fun i:set => integer_mod_group (d i))).
Admitted.

// HOL Light: Library/grouptheory.ml:15049 / FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_INTEGER_MOD_GROUPS   (hash md5:2bb1a10e9dac440c89068fd605763164)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_INTEGER_MOD_GROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ abelian_group_hl A G <-> exists n :e omega, exists d:set -> set, (forall x :e omega, d x :e omega) /\ isomorphic_group A (int :^: omega) G (product_group int omega (idx_n n) (fun i:set => integer_mod_group (d i))).
Admitted.

// HOL Light: Library/grouptheory.ml:15058 / FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_INTEGER_GROUPS   (hash md5:8ec6bb3ffc1a497b750c2cf52710c0e0)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_GROUP_AS_SUM_OF_INTEGER_GROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ (abelian_group_hl A G /\ (forall x :e A, x :e group_carrier A G -> group_element_order_hl A G x <= 1)) <-> exists n :e omega, isomorphic_group A (int :^: omega) G (sum_group int omega (idx_n n) (fun i:set => integer_group)).
Admitted.

// HOL Light: Library/grouptheory.ml:15128 / FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_INTEGER_GROUPS   (hash md5:61f087f15fedc233485066a3956d85ca)
// not bridged: 
Theorem FINITELY_GENERATED_ABELIAN_GROUP_AS_PRODUCT_OF_INTEGER_GROUPS : forall A:set, A <> Empty -> forall G :e group_hl A, finitely_generated_group_hl A G /\ (abelian_group_hl A G /\ (forall x :e A, x :e group_carrier A G -> group_element_order_hl A G x <= 1)) <-> exists n :e omega, isomorphic_group A (int :^: omega) G (product_group int omega (idx_n n) (fun i:set => integer_group)).
Admitted.

// HOL Light: Library/grouptheory.ml:15140 / free_abelian_group   (hash md5:0f21e97c09696381bc54b97bd6fbf8c6)
// not bridged: 
Theorem free_abelian_group_thm : forall A:set, A <> Empty -> forall s c= A, free_abelian_group A s = ({c :e frag A | frag_support A c c= s},(frag_0 A,(fun x :e frag A => frag_neg A x,fun x :e frag A => fun x0 :e frag A => frag_add A x x0))).
Admitted.

// HOL Light: Library/grouptheory.ml:15144 / FREE_ABELIAN_GROUP   (hash md5:a83140f54b40c69d9dd24f2f60af01f6)
// not bridged: 
Theorem FREE_ABELIAN_GROUP : forall A:set, A <> Empty -> (forall s c= A, group_carrier (frag A) (free_abelian_group A s) = {c :e frag A | frag_support A c c= s}) /\ ((forall s c= A, group_id (frag A) (free_abelian_group A s) = frag_0 A) /\ ((forall s c= A, forall x :e frag A, group_inv (frag A) (free_abelian_group A s) x = frag_neg A x) /\ forall s c= A, forall x x0 :e frag A, group_mul (frag A) (free_abelian_group A s) x x0 = frag_add A x x0)).
Admitted.

// HOL Light: Library/grouptheory.ml:15163 / ABELIAN_FREE_ABELIAN_GROUP   (hash md5:a17037c15eb5c6be1166aa4553d55d5b)
// not bridged: 
Theorem ABELIAN_FREE_ABELIAN_GROUP : forall A:set, A <> Empty -> forall s c= A, abelian_group_hl (frag A) (free_abelian_group A s).
Admitted.

// HOL Light: Library/grouptheory.ml:15168 / FREE_ABELIAN_GROUP_POW   (hash md5:9d4cfb2faf26f9640393da8713834921)
// not bridged: 
Theorem FREE_ABELIAN_GROUP_POW : forall A:set, A <> Empty -> forall s c= A, forall x :e frag A, forall n :e omega, group_pow (frag A) (free_abelian_group A s) x n = frag_cmul A n x.
Admitted.

// HOL Light: Library/grouptheory.ml:15175 / FREE_ABELIAN_GROUP_ZPOW   (hash md5:0e12e308afb2d9eb00376335666d1f65)
// not bridged: 
Theorem FREE_ABELIAN_GROUP_ZPOW : forall A:set, A <> Empty -> forall s c= A, forall x :e frag A, forall n :e int, group_zpow (frag A) (free_abelian_group A s) x n = frag_cmul A n x.
Admitted.

// HOL Light: Library/grouptheory.ml:15182 / FRAG_OF_IN_FREE_ABELIAN_GROUP   (hash md5:7ecec38e3e40787d77be42bdbb62c28b)
// not bridged: 
Theorem FRAG_OF_IN_FREE_ABELIAN_GROUP : forall A:set, forall s c= A, forall x :e A, frag_of A x :e group_carrier (frag A) (free_abelian_group A s) <-> x :e s.
Admitted.

// HOL Light: Library/grouptheory.ml:15186 / FREE_ABELIAN_GROUP_INDUCT   (hash md5:eb54737c55f03274862bda2f02c4bb76)
// not bridged: 
Theorem FREE_ABELIAN_GROUP_INDUCT : forall A:set, A <> Empty -> forall P:set -> prop, forall s c= A, P (frag_0 A) /\ ((forall x y :e frag A, x :e group_carrier (frag A) (free_abelian_group A s) /\ (y :e group_carrier (frag A) (free_abelian_group A s) /\ (P x /\ P y)) -> P (frag_sub A x y)) /\ (forall a :e A, a :e s -> P (frag_of A a))) -> forall x :e frag A, x :e group_carrier (frag A) (free_abelian_group A s) -> P x.
Admitted.

// HOL Light: Library/grouptheory.ml:15202 / FREE_ABELIAN_GROUP_UNIVERSAL   (hash md5:7333f2ebf3e1aacedb768a07b3911c87)
// not bridged: 
Theorem FREE_ABELIAN_GROUP_UNIVERSAL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall s c= A, forall G :e group_hl B, {f x | x :e s} c= group_carrier B G /\ abelian_group_hl B G -> exists h:set -> set, (forall x :e frag A, h x :e B) /\ (group_homomorphism_hl (frag A) B (free_abelian_group A s,G) h /\ forall x :e A, x :e s -> h (frag_of A x) = f x).
Admitted.

// HOL Light: Library/grouptheory.ml:15257 / ISOMORPHIC_GROUP_INTEGER_FREE_ABELIAN_GROUP_SING   (hash md5:36c52cd4bd4938ab15bd3acd83463460)
// not bridged: 
Theorem ISOMORPHIC_GROUP_INTEGER_FREE_ABELIAN_GROUP_SING : forall A:set, forall x :e A, isomorphic_group int (frag A) integer_group (free_abelian_group A {x}).
Admitted.

// HOL Light: Library/grouptheory.ml:15279 / GROUP_HOMOMORPHISM_FREE_ABELIAN_GROUPS_ID   (hash md5:74cec142258cbc81fb92eb8d77aae8ed)
// not bridged: 
Theorem GROUP_HOMOMORPHISM_FREE_ABELIAN_GROUPS_ID : forall A:set, A <> Empty -> forall k k' c= A, group_homomorphism_hl (frag A) (frag A) (free_abelian_group A k,free_abelian_group A k') (fun x:set => x) <-> k c= k'.
Admitted.

// HOL Light: Library/grouptheory.ml:15290 / GROUP_ISOMORPHISM_FREE_ABELIAN_GROUP_SUM   (hash md5:312fa27596c4c981a89aedbf3b554bed)
// not bridged: 
Theorem GROUP_ISOMORPHISM_FREE_ABELIAN_GROUP_SUM : forall A K:set, A <> Empty -> K <> Empty -> forall k c= K, forall f :e Power A :^: K, (forall x y :e k, x <> y -> f x :/\: f y = Empty) -> group_isomorphism_hl (frag A :^: K) (frag A) (sum_group (frag A) K k (fun i:set => free_abelian_group A (f i)),free_abelian_group A (Union {f i | i :e K, i :e k})) (fun x:set => iterate_op (frag A) (frag_add A) k (fun x0:set => x x0)).
Admitted.

// HOL Light: Library/grouptheory.ml:15388 / ISOMORPHIC_FREE_ABELIAN_GROUP_UNIONS   (hash md5:a33204cd216b28a0ebe35c08f2b2761c)
// not bridged: 
Theorem ISOMORPHIC_FREE_ABELIAN_GROUP_UNIONS : forall A:set, A <> Empty -> forall k c= Power A, (forall x y :e k, x <> y -> x :/\: y = Empty) -> isomorphic_group (frag A) (frag A :^: Power A) (free_abelian_group A (Union k)) (sum_group (frag A) (Power A) k (free_abelian_group A)).
Admitted.

// HOL Light: Library/grouptheory.ml:15400 / ISOMORPHIC_SUM_INTEGER_GROUP   (hash md5:0017a60f1b54bc92ff0370cd61908c33)
// not bridged: 
Theorem ISOMORPHIC_SUM_INTEGER_GROUP : forall A:set, A <> Empty -> forall k c= A, isomorphic_group (int :^: A) (frag A) (sum_group int A k (fun i:set => integer_group)) (free_abelian_group A k).
Admitted.

// HOL Light: Library/grouptheory.ml:15415 / CARD_EQ_FREE_ABELIAN_GROUP_INFINITE   (hash md5:e332464b95ee92f9e7536fab5864011d)
// not bridged: 
Theorem CARD_EQ_FREE_ABELIAN_GROUP_INFINITE : forall A:set, A <> Empty -> forall s c= A, infinite s -> equip (group_carrier (frag A) (free_abelian_group A s)) s.
Admitted.

// HOL Light: Library/grouptheory.ml:15448 / CARD_EQ_HOMOMORPHISMS_FROM_FREE_ABELIAN_GROUP   (hash md5:8390b13426f35461c386c42654ab1414)
// not bridged: 
Theorem CARD_EQ_HOMOMORPHISMS_FROM_FREE_ABELIAN_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall s c= A, forall G :e group_hl B, abelian_group_hl B G -> equip {f :e B :^: frag A | (forall x :e frag A, ~ x :e group_carrier (frag A) (free_abelian_group A s) -> f x = choose_in B (fun y:set => False)) /\ group_homomorphism_hl (frag A) B (free_abelian_group A s,G) (fun x:set => f x)} {f :e B :^: A | (forall x :e s, f x :e group_carrier B G) /\ forall x :e A, ~ x :e s -> f x = choose_in B (fun y:set => False)}.
Admitted.

// HOL Light: Library/grouptheory.ml:15503 / ISOMORPHIC_FREE_ABELIAN_GROUPS   (hash md5:c2b70f87fdddbe949805239d5138ca82)
// not bridged: 
Theorem ISOMORPHIC_FREE_ABELIAN_GROUPS : forall A B:set, A <> Empty -> B <> Empty -> forall s c= A, forall t c= B, isomorphic_group (frag A) (frag B) (free_abelian_group A s) (free_abelian_group B t) <-> equip s t.
Admitted.

// HOL Light: Library/grouptheory.ml:15620 / solvable_group   (hash md5:4f0f5b8d22ea22492bb52d72316216a9)
// not bridged: 
Theorem solvable_group_thm : forall A:set, A <> Empty -> forall G :e group_hl A, solvable_group A G <-> exists k :e omega, exists c :e Power A :^: omega, c 0 = group_carrier A G /\ (c k = {group_id A G} /\ forall i :e omega, i < k -> normal_subgroup_of A (c (ordsucc i)) (subgroup_generated A G (c i)) /\ abelian_group_hl (Power A) (quotient_group A (subgroup_generated A G (c i)) (c (ordsucc i)))).
Admitted.

// HOL Light: Library/grouptheory.ml:15634 / SOLVABLE_GROUP_ALT   (hash md5:b37df99574dd9d0b4ea4b78719fbf4d0)
// not bridged: 
Theorem SOLVABLE_GROUP_ALT : forall A:set, A <> Empty -> forall G :e group_hl A, solvable_group A G <-> exists k :e omega, exists c :e Power A :^: omega, c 0 = {group_id A G} /\ (c k = group_carrier A G /\ forall i :e omega, i < k -> normal_subgroup_of A (c i) (subgroup_generated A G (c (ordsucc i))) /\ abelian_group_hl (Power A) (quotient_group A (subgroup_generated A G (c (ordsucc i))) (c i))).
Admitted.

// HOL Light: Library/grouptheory.ml:15674 / ABELIAN_QUOTIENT_COMMUTATOR   (hash md5:21fc074c707d6f262748f4dc42ca03f5)
// not bridged: 
Theorem ABELIAN_QUOTIENT_COMMUTATOR : forall A:set, forall G :e group_hl A, forall n c= A, forall x y :e A, normal_subgroup_of A n G /\ (abelian_group_hl (Power A) (quotient_group A G n) /\ (x :e group_carrier A G /\ y :e group_carrier A G)) -> group_mul A G (group_inv A G x) (group_mul A G (group_inv A G y) (group_mul A G x y)) :e n.
Admitted.

// HOL Light: Library/grouptheory.ml:15707 / TRIVIAL_IMP_SOLVABLE_GROUP   (hash md5:9be284f4771e0e9927d231633ecb079c)
// not bridged: 
Theorem TRIVIAL_IMP_SOLVABLE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, trivial_group A G -> solvable_group A G.
Admitted.

// HOL Light: Library/grouptheory.ml:15717 / ABELIAN_IMP_SOLVABLE_GROUP   (hash md5:a1add45a3d248c9403d7fb07882295cf)
// not bridged: 
Theorem ABELIAN_IMP_SOLVABLE_GROUP : forall A:set, A <> Empty -> forall G :e group_hl A, abelian_group_hl A G -> solvable_group A G.
Admitted.

// HOL Light: Library/grouptheory.ml:15738 / SOLVABLE_GROUP_NORMAL_EXTENSION   (hash md5:cb97330b2d9034c3068662177de3615b)
// not bridged: 
Theorem SOLVABLE_GROUP_NORMAL_EXTENSION : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G /\ (abelian_group_hl (Power A) (quotient_group A G n) /\ solvable_group A (subgroup_generated A G n)) -> solvable_group A G.
Admitted.

// HOL Light: Library/grouptheory.ml:15855 / ABELIAN_QUOTIENT_EPIMORPHIC_IMAGE   (hash md5:35e4e34adb6a711abfbfa5d4e18cd93f)
// not bridged: 
Theorem ABELIAN_QUOTIENT_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> forall n c= A, group_epimorphism A B (G,H) f /\ (normal_subgroup_of A n G /\ abelian_group_hl (Power A) (quotient_group A G n)) -> normal_subgroup_of B {f x | x :e n} H /\ abelian_group_hl (Power B) (quotient_group B H {f x | x :e n}).
Admitted.

// HOL Light: Library/grouptheory.ml:15906 / SOLVABLE_GROUP_EPIMORPHIC_IMAGE   (hash md5:ed393bf447befa8a6c6cc729f4427f7f)
// not bridged: 
Theorem SOLVABLE_GROUP_EPIMORPHIC_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_epimorphism A B (G,H) f /\ solvable_group A G -> solvable_group B H.
Admitted.

// HOL Light: Library/grouptheory.ml:15967 / SOLVABLE_GROUP_QUOTIENT   (hash md5:b35fa6a969fc7f2e6e1a112ac82fa8cf)
// not bridged: 
Theorem SOLVABLE_GROUP_QUOTIENT : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, solvable_group A G /\ normal_subgroup_of A n G -> solvable_group (Power A) (quotient_group A G n).
Admitted.

// HOL Light: Library/grouptheory.ml:15979 / ISOMORPHIC_GROUP_SOLVABILITY   (hash md5:73c61092b5d809a2fc57e0a963c19c7f)
// not bridged: 
Theorem ISOMORPHIC_GROUP_SOLVABILITY : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, isomorphic_group A B G H -> (solvable_group A G <-> solvable_group B H).
Admitted.

// HOL Light: Library/grouptheory.ml:15998 / COMMUTATOR_IMP_ABELIAN_QUOTIENT   (hash md5:cb819144cf199c018bcc5e2fef3e1947)
// not bridged: 
Theorem COMMUTATOR_IMP_ABELIAN_QUOTIENT : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G /\ (forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_mul A G (group_inv A G x) (group_mul A G (group_inv A G y) (group_mul A G x y)) :e n) -> abelian_group_hl (Power A) (quotient_group A G n).
Admitted.

// HOL Light: Library/grouptheory.ml:16022 / ABELIAN_QUOTIENT_GROUP_DIV   (hash md5:2d5a101b344cbe976583430a2f343610)
// not bridged: 
Theorem ABELIAN_QUOTIENT_GROUP_DIV : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G /\ (forall x y :e A, x :e group_carrier A G /\ y :e group_carrier A G -> group_div A G (group_mul A G x y) (group_mul A G y x) :e n) -> abelian_group_hl (Power A) (quotient_group A G n).
Admitted.

// HOL Light: Library/grouptheory.ml:16045 / SOLVABLE_GROUP_SUBGROUP   (hash md5:67c85e9e6085d18f91c7b78a133f5de8)
// not bridged: 
Theorem SOLVABLE_GROUP_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall h c= A, subgroup_of A h G /\ solvable_group A G -> solvable_group A (subgroup_generated A G h).
Admitted.

// HOL Light: Library/grouptheory.ml:16198 / SOLVABLE_GROUP_MONOMORPHIC_PREIMAGE   (hash md5:885d197fa4999d623c78523cdd31c8f0)
// not bridged: 
Theorem SOLVABLE_GROUP_MONOMORPHIC_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, forall f:set -> set, (forall x :e A, f x :e B) -> group_monomorphism A B (G,H) f /\ solvable_group B H -> solvable_group A G.
Admitted.

// HOL Light: Library/grouptheory.ml:16216 / SOLVABLE_GROUP_SOLVABLE_QUOTIENT   (hash md5:477245e6a3b1bdaf1206d6ec87832c95)
// not bridged: 
Theorem SOLVABLE_GROUP_SOLVABLE_QUOTIENT : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G /\ (solvable_group A (subgroup_generated A G n) /\ solvable_group (Power A) (quotient_group A G n)) -> solvable_group A G.
Admitted.

// HOL Light: Library/grouptheory.ml:16504 / group_exactness   (hash md5:2d8deb9624fa8147171aadecc4de74ec)
// not bridged: 
Theorem group_exactness_thm : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall G :e group_hl A, forall f :e B :^: A, forall H :e group_hl B, forall K :e group_hl C, forall g :e C :^: B, group_exactness A B C (G,(H,K)) (f,g) <-> group_homomorphism_hl A B (G,H) (fun x:set => f x) /\ (group_homomorphism_hl B C (H,K) (fun x:set => g x) /\ group_image A B (G,H) (fun x:set => f x) = group_kernel B C (H,K) (fun x:set => g x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16509 / short_exact_sequence   (hash md5:47ae57ed4510eb0b91840a012a6b6e2a)
// not bridged: 
Theorem short_exact_sequence_thm : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall A0 :e group_hl A, forall f :e B :^: A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall g :e C :^: B, short_exact_sequence A B C (A0,(B0,C0)) (f,g) <-> group_monomorphism A B (A0,B0) (fun x:set => f x) /\ (group_exactness A B C (A0,(B0,C0)) (f,g) /\ group_epimorphism B C (B0,C0) (fun x:set => g x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16515 / SHORT_EXACT_SEQUENCE   (hash md5:77796c9615deb8467dd69244fd4f01dd)
// not bridged: 
Theorem SHORT_EXACT_SEQUENCE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, short_exact_sequence A B C (A0,(B0,C0)) (f,g) <-> group_monomorphism A B (A0,B0) (fun x:set => f x) /\ (group_epimorphism B C (B0,C0) (fun x:set => g x) /\ group_image A B (A0,B0) (fun x:set => f x) = group_kernel B C (B0,C0) (fun x:set => g x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16525 / GROUP_EXACTNESS_MONOMORPHISM   (hash md5:370dd4f285bbb940b0fe40e1247774cb)
// not bridged: 
Theorem GROUP_EXACTNESS_MONOMORPHISM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, trivial_group A A0 -> (group_exactness A B C (A0,(B0,C0)) (f,g) <-> group_homomorphism_hl A B (A0,B0) (fun x:set => f x) /\ group_monomorphism B C (B0,C0) (fun x:set => g x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16534 / GROUP_EXACTNESS_EPIMORPHISM   (hash md5:90d2bcd9819a4edee00fa9dc25f5b407)
// not bridged: 
Theorem GROUP_EXACTNESS_EPIMORPHISM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, trivial_group C C0 -> (group_exactness A B C (A0,(B0,C0)) (f,g) <-> group_epimorphism A B (A0,B0) (fun x:set => f x) /\ group_homomorphism_hl B C (B0,C0) (fun x:set => g x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16542 / EXTREMELY_SHORT_EXACT_SEQUENCE   (hash md5:c882dee0545cc329f7a5808dc374b5a6)
// not bridged: 
Theorem EXTREMELY_SHORT_EXACT_SEQUENCE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, group_exactness A B C (A0,(B0,C0)) (f,g) /\ (trivial_group A A0 /\ trivial_group C C0) -> trivial_group B B0.
Admitted.

// HOL Light: Library/grouptheory.ml:16551 / GROUP_EXACTNESS_EPIMORPHISM_EQ_TRIVIALITY   (hash md5:b7bada82c51083efec65f038cd8ccbd0)
// not bridged: 
Theorem GROUP_EXACTNESS_EPIMORPHISM_EQ_TRIVIALITY : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, group_exactness A B C (A0,(B0,C0)) (f,g) /\ group_exactness B C D (B0,(C0,D0)) (g,h) -> (group_epimorphism A B (A0,B0) (fun x:set => f x) <-> trivial_homomorphism B C (B0,C0) (fun x:set => g x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16559 / GROUP_EXACTNESS_MONOMORPHISM_EQ_TRIVIALITY   (hash md5:2247399cd0f37e74cb016cf3ee8601e6)
// not bridged: 
Theorem GROUP_EXACTNESS_MONOMORPHISM_EQ_TRIVIALITY : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, group_exactness A B C (A0,(B0,C0)) (f,g) /\ group_exactness B C D (B0,(C0,D0)) (g,h) -> (group_monomorphism C D (C0,D0) (fun x:set => h x) <-> trivial_homomorphism B C (B0,C0) (fun x:set => g x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16567 / VERY_SHORT_EXACT_SEQUENCE   (hash md5:eb115a68c45e9c63dcf9010ea36bfe13)
// not bridged: 
Theorem VERY_SHORT_EXACT_SEQUENCE : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ (trivial_group A A0 /\ trivial_group D D0)) -> group_isomorphism_hl B C (B0,C0) (fun x:set => g x).
Admitted.

// HOL Light: Library/grouptheory.ml:16578 / GROUP_EXACTNESS_EQ_TRIVIALITY   (hash md5:2edfb7d2e387be7f55a09bcaf77d1968)
// not bridged: 
Theorem GROUP_EXACTNESS_EQ_TRIVIALITY : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall k :e E :^: D, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall E0 :e group_hl E, group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ group_exactness C D E (C0,(D0,E0)) (h,k)) -> (trivial_group C C0 <-> group_epimorphism A B (A0,B0) (fun x:set => f x) /\ group_monomorphism D E (D0,E0) (fun x:set => k x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16591 / GROUP_EXACTNESS_IMP_TRIVIALITY   (hash md5:773585e19128fd5e7e482479b6bc55ae)
// not bridged: 
Theorem GROUP_EXACTNESS_IMP_TRIVIALITY : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall k :e E :^: D, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall E0 :e group_hl E, group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ (group_exactness C D E (C0,(D0,E0)) (h,k) /\ (group_isomorphism_hl A B (A0,B0) (fun x:set => f x) /\ group_isomorphism_hl D E (D0,E0) (fun x:set => k x)))) -> trivial_group C C0.
Admitted.

// HOL Light: Library/grouptheory.ml:16602 / GROUP_EXACTNESS_ISOMORPHISM_EQ_TRIVIALITY   (hash md5:76f35a708daca30eb20d7c2e4b62afcb)
// not bridged: 
Theorem GROUP_EXACTNESS_ISOMORPHISM_EQ_TRIVIALITY : forall A B C D E G:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> G <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall j :e E :^: D, forall k :e G :^: E, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall E0 :e group_hl E, forall G0 :e group_hl G, group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ (group_exactness C D E (C0,(D0,E0)) (h,j) /\ group_exactness D E G (D0,(E0,G0)) (j,k))) -> (group_isomorphism_hl C D (C0,D0) (fun x:set => h x) <-> trivial_homomorphism B C (B0,C0) (fun x:set => g x) /\ trivial_homomorphism D E (D0,E0) (fun x:set => j x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16616 / GROUP_EXACTNESS_ISOMORPHISM_EQ_MONO_EPI   (hash md5:2999f259d0656f8a78127589a76c51cc)
// not bridged: 
Theorem GROUP_EXACTNESS_ISOMORPHISM_EQ_MONO_EPI : forall A B C D E G:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> G <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall j :e E :^: D, forall k :e G :^: E, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall E0 :e group_hl E, forall G0 :e group_hl G, group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ (group_exactness C D E (C0,(D0,E0)) (h,j) /\ group_exactness D E G (D0,(E0,G0)) (j,k))) -> (group_isomorphism_hl C D (C0,D0) (fun x:set => h x) <-> group_epimorphism A B (A0,B0) (fun x:set => f x) /\ group_monomorphism E G (E0,G0) (fun x:set => k x)).
Admitted.

// HOL Light: Library/grouptheory.ml:16628 / SHORT_EXACT_SEQUENCE_NORMAL_SUBGROUP   (hash md5:c6b0ff0645046ca100594d3c05e662cc)
// not bridged: 
Theorem SHORT_EXACT_SEQUENCE_NORMAL_SUBGROUP : forall A:set, A <> Empty -> forall G :e group_hl A, forall n c= A, normal_subgroup_of A n G -> short_exact_sequence A A (Power A) (subgroup_generated A G n,(G,quotient_group A G n)) (fun x :e A => x,fun x :e A => right_coset_hl A G n x).
Admitted.

// HOL Light: Library/grouptheory.ml:16641 / SHORT_EXACT_SEQUENCE_PROD_GROUP   (hash md5:cc102dacc4b18ac22f2d17756c871d0f)
// not bridged: 
Theorem SHORT_EXACT_SEQUENCE_PROD_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, short_exact_sequence A (A :*: B) B (G,(prod_group A B G H,H)) (fun x :e A => (x,group_id B H),fun x :e A :*: B => x 1).
Admitted.

// HOL Light: Library/grouptheory.ml:16653 / SHORT_EXACT_SEQUENCE_PROD_GROUP_ALT   (hash md5:b9b66cd920b325312503e6ca52ecbf94)
// not bridged: 
Theorem SHORT_EXACT_SEQUENCE_PROD_GROUP_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall G :e group_hl A, forall H :e group_hl B, short_exact_sequence B (A :*: B) A (H,(prod_group A B G H,G)) (fun x :e B => (group_id A G,x),fun x :e A :*: B => x 0).
Admitted.

// HOL Light: Library/grouptheory.ml:16665 / EXACT_SEQUENCE_SUM_LEMMA   (hash md5:af3fafbe0bf9bd9db2902e317369e97f)
// not bridged: 
Theorem EXACT_SEQUENCE_SUM_LEMMA : forall A B C D X:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> X <> Empty -> forall f :e C :^: X, forall g :e D :^: X, forall h:set -> set, (forall x :e A, h x :e C) -> forall i :e X :^: A, forall j :e X :^: B, forall k:set -> set, (forall x :e B, k x :e D) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall X0 :e group_hl X, abelian_group_hl X X0 /\ (group_isomorphism_hl A C (A0,C0) h /\ (group_isomorphism_hl B D (B0,D0) k /\ (group_exactness A X D (A0,(X0,D0)) (i,g) /\ (group_exactness B X C (B0,(X0,C0)) (j,f) /\ ((forall x :e A, x :e group_carrier A A0 -> f (i x) = h x) /\ (forall x :e B, x :e group_carrier B B0 -> g (j x) = k x)))))) -> group_isomorphism_hl (A :*: B) X (prod_group A B A0 B0,X0) (fun p:set => group_mul X X0 (i (p 0)) (j (p 1))) /\ group_isomorphism_hl X (C :*: D) (X0,prod_group C D C0 D0) (fun z:set => (f z,g z)).
Admitted.

// HOL Light: Library/grouptheory.ml:16731 / SHORT_EXACT_SEQUENCE_QUOTIENT   (hash md5:5e8cd59ea966d58f45b3b5f573e62785)
// not bridged: 
Theorem SHORT_EXACT_SEQUENCE_QUOTIENT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, short_exact_sequence A B C (A0,(B0,C0)) (f,g) -> isomorphic_group B A (subgroup_generated B B0 (group_image A B (A0,B0) (fun x:set => f x))) A0 /\ isomorphic_group (Power B) C (quotient_group B B0 (group_image A B (A0,B0) (fun x:set => f x))) C0.
Admitted.

// HOL Light: Library/grouptheory.ml:16747 / TRIVIAL_GROUPS_IMP_SHORT_EXACT_SEQUENCE   (hash md5:ed10b916aa677dfb52776a7b7e18dcd1)
// not bridged: 
Theorem TRIVIAL_GROUPS_IMP_SHORT_EXACT_SEQUENCE : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall k :e E :^: D, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall E0 :e group_hl E, trivial_group A A0 /\ (trivial_group E E0 /\ (group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ group_exactness C D E (C0,(D0,E0)) (h,k)))) -> short_exact_sequence B C D (B0,(C0,D0)) (g,h).
Admitted.

// HOL Light: Library/grouptheory.ml:16757 / SHORT_EXACT_SEQUENCE_TRIVIAL_GROUPS   (hash md5:280c2d880d6cf8dad088308571910f2f)
// not bridged: 
Theorem SHORT_EXACT_SEQUENCE_TRIVIAL_GROUPS : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> forall g :e C :^: B, forall h :e D :^: C, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, short_exact_sequence B C D (B0,(C0,D0)) (g,h) <-> exists f :e B :^: A, exists k :e E :^: D, exists A0 :e group_hl A, exists E0 :e group_hl E, trivial_group A A0 /\ (trivial_group E E0 /\ (group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ group_exactness C D E (C0,(D0,E0)) (h,k)))).
Admitted.

// HOL Light: Library/grouptheory.ml:16776 / SPLITTING_SUBLEMMA_GEN   (hash md5:d901f43a80e05077f0ca71d5faa7c169)
// not bridged: 
Theorem SPLITTING_SUBLEMMA_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall h k c= B, group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_image A B (A0,B0) (fun x:set => f x) = h /\ (subgroup_of B k B0 /\ (h :/\: k c= {group_id B B0} /\ group_setmul B B0 h k = group_carrier B B0))) -> group_isomorphism_hl B C (subgroup_generated B B0 k,subgroup_generated C C0 (group_image B C (B0,C0) (fun x:set => g x))) (fun x:set => g x).
Admitted.

// HOL Light: Library/grouptheory.ml:16817 / SPLITTING_SUBLEMMA   (hash md5:0ec51da577f20f1d863ea623dfafb2c2)
// not bridged: 
Theorem SPLITTING_SUBLEMMA : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall h k c= B, short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (group_image A B (A0,B0) (fun x:set => f x) = h /\ (subgroup_of B k B0 /\ (h :/\: k c= {group_id B B0} /\ group_setmul B B0 h k = group_carrier B B0))) -> group_isomorphism_hl A B (A0,subgroup_generated B B0 h) (fun x:set => f x) /\ group_isomorphism_hl B C (subgroup_generated B B0 k,C0) (fun x:set => g x).
Admitted.

// HOL Light: Library/grouptheory.ml:16833 / SPLITTING_LEMMA_LEFT_GEN   (hash md5:c117bc249cf5ccbfb33b3547776842bc)
// not bridged: 
Theorem SPLITTING_LEMMA_LEFT_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall f':set -> set, (forall x :e B, f' x :e A) -> forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (group_homomorphism_hl B A (B0,A0) f' /\ group_isomorphism_hl A A (A0,A0) (fun x:set => f' (f x))) -> exists h k c= B, normal_subgroup_of B h B0 /\ (normal_subgroup_of B k B0 /\ (h :/\: k c= {group_id B B0} /\ (group_setmul B B0 h k = group_carrier B B0 /\ (group_isomorphism_hl A B (A0,subgroup_generated B B0 h) (fun x:set => f x) /\ group_isomorphism_hl B C (subgroup_generated B B0 k,C0) (fun x:set => g x))))).
Admitted.

// HOL Light: Library/grouptheory.ml:16859 / SPLITTING_LEMMA_LEFT   (hash md5:ef19d59d8548515856e65103eb126bac)
// not bridged: 
Theorem SPLITTING_LEMMA_LEFT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall f':set -> set, (forall x :e B, f' x :e A) -> forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (group_homomorphism_hl B A (B0,A0) f' /\ (forall x :e A, x :e group_carrier A A0 -> f' (f x) = x)) -> exists h k c= B, normal_subgroup_of B h B0 /\ (normal_subgroup_of B k B0 /\ (h :/\: k c= {group_id B B0} /\ (group_setmul B B0 h k = group_carrier B B0 /\ (group_isomorphism_hl A B (A0,subgroup_generated B B0 h) (fun x:set => f x) /\ group_isomorphism_hl B C (subgroup_generated B B0 k,C0) (fun x:set => g x))))).
Admitted.

// HOL Light: Library/grouptheory.ml:16874 / SPLITTING_LEMMA_LEFT_PROD_GROUP   (hash md5:ce2985657392975f23897b4f54ef517e)
// not bridged: 
Theorem SPLITTING_LEMMA_LEFT_PROD_GROUP : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall f':set -> set, (forall x :e B, f' x :e A) -> forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (abelian_group_hl B B0 /\ (group_homomorphism_hl B A (B0,A0) f' /\ (forall x :e A, x :e group_carrier A A0 -> f' (f x) = x))) -> isomorphic_group B (A :*: C) B0 (prod_group A C A0 C0).
Admitted.

// HOL Light: Library/grouptheory.ml:16899 / SPLITTING_LEMMA_RIGHT_GEN   (hash md5:988a774bd2be8671e0003c6c63769c64)
// not bridged: 
Theorem SPLITTING_LEMMA_RIGHT_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall g':set -> set, (forall x :e C, g' x :e B) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (group_homomorphism_hl C B (C0,B0) g' /\ group_isomorphism_hl C C (C0,C0) (fun x:set => g (g' x))) -> exists h k c= B, normal_subgroup_of B h B0 /\ (subgroup_of B k B0 /\ (h :/\: k c= {group_id B B0} /\ (group_setmul B B0 h k = group_carrier B B0 /\ (group_isomorphism_hl A B (A0,subgroup_generated B B0 h) (fun x:set => f x) /\ group_isomorphism_hl B C (subgroup_generated B B0 k,C0) (fun x:set => g x))))).
Admitted.

// HOL Light: Library/grouptheory.ml:16926 / SPLITTING_LEMMA_RIGHT   (hash md5:e03e89ff01c50c9cc79850a6f30d4b46)
// not bridged: 
Theorem SPLITTING_LEMMA_RIGHT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall g':set -> set, (forall x :e C, g' x :e B) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (group_homomorphism_hl C B (C0,B0) g' /\ (forall z :e C, z :e group_carrier C C0 -> g (g' z) = z)) -> exists h k c= B, normal_subgroup_of B h B0 /\ (subgroup_of B k B0 /\ (h :/\: k c= {group_id B B0} /\ (group_setmul B B0 h k = group_carrier B B0 /\ (group_isomorphism_hl A B (A0,subgroup_generated B B0 h) (fun x:set => f x) /\ group_isomorphism_hl B C (subgroup_generated B B0 k,C0) (fun x:set => g x))))).
Admitted.

// HOL Light: Library/grouptheory.ml:16941 / SPLITTING_LEMMA_RIGHT_PROD_GROUP   (hash md5:3572a5b1148dd00fe3a7dfedda4cb721)
// not bridged: 
Theorem SPLITTING_LEMMA_RIGHT_PROD_GROUP : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall g':set -> set, (forall x :e C, g' x :e B) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (abelian_group_hl B B0 /\ (group_homomorphism_hl C B (C0,B0) g' /\ (forall z :e C, z :e group_carrier C C0 -> g (g' z) = z))) -> isomorphic_group B (A :*: C) B0 (prod_group A C A0 C0).
Admitted.

// HOL Light: Library/grouptheory.ml:16966 / SPLITTING_LEMMA_FREE_ABELIAN_GROUP   (hash md5:542f50fd24e75d285599467896b47127)
// not bridged: 
Theorem SPLITTING_LEMMA_FREE_ABELIAN_GROUP : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall s c= D, short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (abelian_group_hl B B0 /\ isomorphic_group C (frag D) C0 (free_abelian_group D s)) -> isomorphic_group B (A :*: C) B0 (prod_group A C A0 C0).
Admitted.

// HOL Light: Library/grouptheory.ml:17015 / FOUR_LEMMA_MONO   (hash md5:8dc9f363c1e05debb303b8d03f3d6c90)
// not bridged: 
Theorem FOUR_LEMMA_MONO : forall A A_ B B_ C C_ D D_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> D <> Empty -> D_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall h' :e D_ :^: C_, forall a:set -> set, (forall x :e A, a x :e A_) -> forall b:set -> set, (forall x :e B, b x :e B_) -> forall c:set -> set, (forall x :e C, c x :e C_) -> forall d:set -> set, (forall x :e D, d x :e D_) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall A' :e group_hl A_, forall B' :e group_hl B_, forall C' :e group_hl C_, forall D' :e group_hl D_, group_epimorphism A A_ (A0,A') a /\ (group_monomorphism B B_ (B0,B') b /\ (group_homomorphism_hl C C_ (C0,C') c /\ (group_monomorphism D D_ (D0,D') d /\ (group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ (group_exactness A_ B_ C_ (A',(B',C')) (f',g') /\ (group_exactness B_ C_ D_ (B',(C',D')) (g',h') /\ ((forall x :e A, x :e group_carrier A A0 -> f' (a x) = b (f x)) /\ ((forall y :e B, y :e group_carrier B B0 -> g' (b y) = c (g y)) /\ (forall z :e C, z :e group_carrier C C0 -> h' (c z) = d (h z))))))))))) -> group_monomorphism C C_ (C0,C') c.
Admitted.

// HOL Light: Library/grouptheory.ml:17045 / FOUR_LEMMA_EPI   (hash md5:cfc813055daa10e248299c1b694cb18d)
// not bridged: 
Theorem FOUR_LEMMA_EPI : forall A A_ B B_ C C_ D D_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> D <> Empty -> D_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall h' :e D_ :^: C_, forall a:set -> set, (forall x :e A, a x :e A_) -> forall b:set -> set, (forall x :e B, b x :e B_) -> forall c:set -> set, (forall x :e C, c x :e C_) -> forall d:set -> set, (forall x :e D, d x :e D_) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall A' :e group_hl A_, forall B' :e group_hl B_, forall C' :e group_hl C_, forall D' :e group_hl D_, group_epimorphism A A_ (A0,A') a /\ (group_homomorphism_hl B B_ (B0,B') b /\ (group_epimorphism C C_ (C0,C') c /\ (group_monomorphism D D_ (D0,D') d /\ (group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ (group_exactness A_ B_ C_ (A',(B',C')) (f',g') /\ (group_exactness B_ C_ D_ (B',(C',D')) (g',h') /\ ((forall x :e A, x :e group_carrier A A0 -> f' (a x) = b (f x)) /\ ((forall y :e B, y :e group_carrier B B0 -> g' (b y) = c (g y)) /\ (forall z :e C, z :e group_carrier C C0 -> h' (c z) = d (h z))))))))))) -> group_epimorphism B B_ (B0,B') b.
Admitted.

// HOL Light: Library/grouptheory.ml:17094 / FIVE_LEMMA   (hash md5:408d1f7d46040cd9b63f334578d2fc32)
// not bridged: 
Theorem FIVE_LEMMA : forall A A_ B B_ C C_ D D_ E E_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> D <> Empty -> D_ <> Empty -> E <> Empty -> E_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall h :e D :^: C, forall k :e E :^: D, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall h' :e D_ :^: C_, forall k' :e E_ :^: D_, forall a:set -> set, (forall x :e A, a x :e A_) -> forall b:set -> set, (forall x :e B, b x :e B_) -> forall c:set -> set, (forall x :e C, c x :e C_) -> forall d:set -> set, (forall x :e D, d x :e D_) -> forall e0:set -> set, (forall x :e E, e0 x :e E_) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall E0 :e group_hl E, forall A' :e group_hl A_, forall B' :e group_hl B_, forall C' :e group_hl C_, forall D' :e group_hl D_, forall E' :e group_hl E_, group_epimorphism A A_ (A0,A') a /\ (group_isomorphism_hl B B_ (B0,B') b /\ (group_homomorphism_hl C C_ (C0,C') c /\ (group_isomorphism_hl D D_ (D0,D') d /\ (group_monomorphism E E_ (E0,E') e0 /\ (group_exactness A B C (A0,(B0,C0)) (f,g) /\ (group_exactness B C D (B0,(C0,D0)) (g,h) /\ (group_exactness C D E (C0,(D0,E0)) (h,k) /\ (group_exactness A_ B_ C_ (A',(B',C')) (f',g') /\ (group_exactness B_ C_ D_ (B',(C',D')) (g',h') /\ (group_exactness C_ D_ E_ (C',(D',E')) (h',k') /\ ((forall x :e A, x :e group_carrier A A0 -> f' (a x) = b (f x)) /\ ((forall y :e B, y :e group_carrier B B0 -> g' (b y) = c (g y)) /\ ((forall z :e C, z :e group_carrier C C0 -> h' (c z) = d (h z)) /\ (forall w :e D, w :e group_carrier D D0 -> k' (d w) = e0 (k w))))))))))))))) -> group_isomorphism_hl C C_ (C0,C') c.
Admitted.

// HOL Light: Library/grouptheory.ml:17125 / SHORT_FIVE_LEMMA_MONO   (hash md5:46468b28bcb9eee18e75b8cb9a090f11)
// not bridged: 
Theorem SHORT_FIVE_LEMMA_MONO : forall A A_ B B_ C C_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall a:set -> set, (forall x :e A, a x :e A_) -> forall b:set -> set, (forall x :e B, b x :e B_) -> forall c:set -> set, (forall x :e C, c x :e C_) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall A' :e group_hl A_, forall B' :e group_hl B_, forall C' :e group_hl C_, group_monomorphism A A_ (A0,A') a /\ (group_homomorphism_hl B B_ (B0,B') b /\ (group_monomorphism C C_ (C0,C') c /\ (short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (short_exact_sequence A_ B_ C_ (A',(B',C')) (f',g') /\ ((forall x :e A, x :e group_carrier A A0 -> f' (a x) = b (f x)) /\ (forall y :e B, y :e group_carrier B B0 -> g' (b y) = c (g y))))))) -> group_monomorphism B B_ (B0,B') b.
Admitted.

// HOL Light: Library/grouptheory.ml:17162 / SHORT_FIVE_LEMMA_EPI   (hash md5:f1141c18e07bd10d61008f80f22b41ef)
// not bridged: 
Theorem SHORT_FIVE_LEMMA_EPI : forall A A_ B B_ C C_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall a:set -> set, (forall x :e A, a x :e A_) -> forall b:set -> set, (forall x :e B, b x :e B_) -> forall c:set -> set, (forall x :e C, c x :e C_) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall A' :e group_hl A_, forall B' :e group_hl B_, forall C' :e group_hl C_, group_epimorphism A A_ (A0,A') a /\ (group_homomorphism_hl B B_ (B0,B') b /\ (group_epimorphism C C_ (C0,C') c /\ (short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (short_exact_sequence A_ B_ C_ (A',(B',C')) (f',g') /\ ((forall x :e A, x :e group_carrier A A0 -> f' (a x) = b (f x)) /\ (forall y :e B, y :e group_carrier B B0 -> g' (b y) = c (g y))))))) -> group_epimorphism B B_ (B0,B') b.
Admitted.

// HOL Light: Library/grouptheory.ml:17199 / SHORT_FIVE_LEMMA   (hash md5:06a1f0147c4cf5cb44fc0d6823a10123)
// not bridged: 
Theorem SHORT_FIVE_LEMMA : forall A A_ B B_ C C_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> C <> Empty -> C_ <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall f' :e B_ :^: A_, forall g' :e C_ :^: B_, forall a:set -> set, (forall x :e A, a x :e A_) -> forall b:set -> set, (forall x :e B, b x :e B_) -> forall c:set -> set, (forall x :e C, c x :e C_) -> forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall A' :e group_hl A_, forall B' :e group_hl B_, forall C' :e group_hl C_, group_isomorphism_hl A A_ (A0,A') a /\ (group_homomorphism_hl B B_ (B0,B') b /\ (group_isomorphism_hl C C_ (C0,C') c /\ (short_exact_sequence A B C (A0,(B0,C0)) (f,g) /\ (short_exact_sequence A_ B_ C_ (A',(B',C')) (f',g') /\ ((forall x :e A, x :e group_carrier A A0 -> f' (a x) = b (f x)) /\ (forall y :e B, y :e group_carrier B B0 -> g' (b y) = c (g y))))))) -> group_isomorphism_hl B B_ (B0,B') b.
Admitted.

// HOL Light: Library/grouptheory.ml:17218 / EXACT_SEQUENCE_HEXAGON_LEMMA   (hash md5:71363db207087173c212e459faa6834d)
// not bridged: 
Theorem EXACT_SEQUENCE_HEXAGON_LEMMA : forall A B C D W X Y:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> X <> Empty -> Y <> Empty -> forall f :e C :^: X, forall g :e D :^: X, forall h :e C :^: A, forall h' :e A :^: C, forall i :e X :^: A, forall j :e X :^: B, forall k :e D :^: B, forall k' :e B :^: D, forall a:set -> set, (forall x :e A, a x :e Y) -> forall b:set -> set, (forall x :e B, b x :e Y) -> forall c:set -> set, (forall x :e W, c x :e C) -> forall d:set -> set, (forall x :e W, d x :e D) -> forall l :e X :^: W, forall m :e Y :^: X, forall A0 :e group_hl A, forall B0 :e group_hl B, forall C0 :e group_hl C, forall D0 :e group_hl D, forall W0 :e group_hl W, forall X0 :e group_hl X, forall Y0 :e group_hl Y, abelian_group_hl X X0 /\ (group_homomorphism_hl A Y (A0,Y0) a /\ (group_homomorphism_hl B Y (B0,Y0) b /\ (group_homomorphism_hl W C (W0,C0) c /\ (group_homomorphism_hl W D (W0,D0) d /\ (group_isomorphisms A C (A0,C0) (h,h') /\ (group_isomorphisms B D (B0,D0) (k,k') /\ (group_exactness A X D (A0,(X0,D0)) (i,g) /\ (group_exactness B X C (B0,(X0,C0)) (j,f) /\ (group_exactness W X Y (W0,(X0,Y0)) (l,m) /\ ((forall x :e W, x :e group_carrier W W0 -> f (l x) = c x) /\ ((forall x :e W, x :e group_carrier W W0 -> g (l x) = d x) /\ ((forall x :e A, x :e group_carrier A A0 -> f (i x) = h x) /\ ((forall x :e A, x :e group_carrier A A0 -> m (i x) = a x) /\ ((forall x :e B, x :e group_carrier B B0 -> g (j x) = k x) /\ (forall x :e B, x :e group_carrier B B0 -> m (j x) = b x))))))))))))))) -> forall x :e W, x :e group_carrier W W0 -> group_inv Y Y0 (a (h' (c x))) = b (k' (d x)).
Admitted.

