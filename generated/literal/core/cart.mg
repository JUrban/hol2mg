// hol2mg literal statements (private): shard cart of profile core.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: cart.ml:14 / dimindex   (hash md5:ddb3842890aa45dff1fd71f34edb013d)
Theorem hlt_dimindex_thm : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_dimindex A s = hl_COND omega (hl_FINITE A (hl_UNIV A)) (hl_CARD A (hl_UNIV A)) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: cart.ml:17 / DIMINDEX_NONZERO   (hash md5:d3725a45e0820e3b712217990615246b)
Theorem hlt_DIMINDEX_NONZERO : forall A:set, A <> Empty -> forall s :e 2 :^: A, ~ hl_dimindex A s = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: cart.ml:22 / DIMINDEX_GE_1   (hash md5:6330d948a4ade390789c61f4944f6861)
Theorem hlt_DIMINDEX_GE_1 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A s) = 1.
Admitted.

// HOL Light: cart.ml:26 / DIMINDEX_UNIV   (hash md5:6d36efb94145933ec1aa58b078c73e98)
Theorem hlt_DIMINDEX_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_dimindex A s = hl_dimindex A (hl_UNIV A).
Admitted.

// HOL Light: cart.ml:30 / DIMINDEX_UNIQUE   (hash md5:88a36c49579122ac8804e8363815cddd)
Theorem hlt_DIMINDEX_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, hl_HAS_SIZE A (hl_UNIV A) n = 1 -> hl_dimindex A (hl_UNIV A) = n.
Admitted.

// HOL Light: cart.ml:34 / UNIV_HAS_SIZE_DIMINDEX   (hash md5:23dd1460f611c1c44082919eb9c4ba65)
Theorem hlt_UNIV_HAS_SIZE_DIMINDEX : forall N:set, N <> Empty -> (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> hl_FINITE N (hl_UNIV N) = 1).
Admitted.

// HOL Light: cart.ml:38 / HAS_SIZE_1   (hash md5:3db80a1713101542583ad1c917c7c9ae)
Theorem hlt_HAS_SIZE_1 : hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: cart.ml:44 / NUMSEG_LT_DIMINDEX   (hash md5:ab5eb52dade02e50e59e1fda3e75b94a)
Theorem hlt_NUMSEG_LT_DIMINDEX : forall N:set, N <> Empty -> hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0) = hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: cart.ml:48 / DIMINDEX_1   (hash md5:49a9d44c0dac1fb1c010affe48096fff)
Theorem hlt_DIMINDEX_1 : hl_dimindex 1 (hl_UNIV 1) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: cart.ml:54 / finite_image_tybij   (hash md5:f0d14a9c0235c438b189e2ac2ee50929)
Theorem hlt_finite_image_tybij : forall A:set, A <> Empty -> (forall a :e hl_ty_finite_image A, hl_finite_index A (hl_dest_finite_image A a) = a) /\ forall r :e omega, hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A))) = 1 <-> hl_dest_finite_image A (hl_finite_index A r) = r.
Admitted.

// HOL Light: cart.ml:60 / FINITE_IMAGE_IMAGE   (hash md5:2f5c954f5fc2c6948e501c8f48cea905)
Theorem hlt_FINITE_IMAGE_IMAGE : forall A:set, A <> Empty -> hl_UNIV (hl_ty_finite_image A) = hl_IMAGE omega (hl_ty_finite_image A) (hl_finite_index A) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A))).
Admitted.

// HOL Light: cart.ml:69 / HAS_SIZE_FINITE_IMAGE   (hash md5:bd453ada18d19f4873e5fb3bed116dd0)
Theorem hlt_HAS_SIZE_FINITE_IMAGE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_HAS_SIZE (hl_ty_finite_image A) (hl_UNIV (hl_ty_finite_image A)) (hl_dimindex A s) = 1.
Admitted.

// HOL Light: cart.ml:76 / CARD_FINITE_IMAGE   (hash md5:0c37ef1b1f81cc58e7a9bd6194e8dc16)
Theorem hlt_CARD_FINITE_IMAGE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_CARD (hl_ty_finite_image A) (hl_UNIV (hl_ty_finite_image A)) = hl_dimindex A s.
Admitted.

// HOL Light: cart.ml:80 / FINITE_FINITE_IMAGE   (hash md5:1dc7a67c001b36009e2f22ba859fec70)
Theorem hlt_FINITE_FINITE_IMAGE : forall A:set, A <> Empty -> hl_FINITE (hl_ty_finite_image A) (hl_UNIV (hl_ty_finite_image A)) = 1.
Admitted.

// HOL Light: cart.ml:84 / DIMINDEX_FINITE_IMAGE   (hash md5:4b22e9f54781a67df9b807fb7e70c2da)
Theorem hlt_DIMINDEX_FINITE_IMAGE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_finite_image A, forall t :e 2 :^: A, hl_dimindex (hl_ty_finite_image A) s = hl_dimindex A t.
Admitted.

// HOL Light: cart.ml:90 / FINITE_INDEX_WORKS   (hash md5:810a83eb9dfb8d6360f6ae65701e1d0a)
Theorem hlt_FINITE_INDEX_WORKS : forall A:set, A <> Empty -> forall i :e hl_ty_finite_image A, hl_exists_unique omega (fun n :e omega => if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex A (hl_UNIV A)) = 1 /\ hl_finite_index A n = i) then 1 else 0) = 1.
Admitted.

// HOL Light: cart.ml:95 / FINITE_INDEX_INJ   (hash md5:ed3f2b168a80aa1187743fa433a8d6e6)
Theorem hlt_FINITE_INDEX_INJ : forall A:set, A <> Empty -> forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex A (hl_UNIV A)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex A (hl_UNIV A)) = 1)) -> (hl_finite_index A i = hl_finite_index A j <-> i = j).
Admitted.

// HOL Light: cart.ml:102 / FORALL_FINITE_INDEX   (hash md5:43ac0aa393472f102dd0f56823d962d3)
Theorem hlt_FORALL_FINITE_INDEX : forall N:set, N <> Empty -> forall P :e 2 :^: hl_ty_finite_image N, (forall k :e hl_ty_finite_image N, P k = 1) <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P (hl_finite_index N i) = 1.
Admitted.

// HOL Light: cart.ml:111 / cart_tybij   (hash md5:131fcfadc4569b53594fb6d3afe4208b)
Theorem hlt_cart_tybij : forall A B:set, A <> Empty -> B <> Empty -> (forall a :e hl_ty_cart A B, hl_mk_cart B A (hl_dest_cart A B a) = a) /\ forall r :e A :^: hl_ty_finite_image B, True <-> hl_dest_cart A B (hl_mk_cart B A r) = r.
Admitted.

// HOL Light: cart.ml:117 / finite_index   (hash md5:9217c3b619651f33cf632eea33df50fd)
Theorem hlt_finite_index : forall A N:set, A <> Empty -> N <> Empty -> forall x :e hl_ty_cart A N, forall i :e omega, hl_vindex A N x i = hl_dest_cart A N x (hl_finite_index N i).
Admitted.

// HOL Light: cart.ml:120 / CART_EQ   (hash md5:12d2a2739958dbd8cafb139a4bfa94c3)
Theorem hlt_CART_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall x y :e hl_ty_cart A B, x = y <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex B (hl_UNIV B)) = 1 -> hl_vindex A B x i = hl_vindex A B y i.
Admitted.

// HOL Light: cart.ml:128 / lambda   (hash md5:889ac2dbf8ca12a13a4d66fd3cda1b19)
Theorem hlt_lambda : forall A B:set, A <> Empty -> B <> Empty -> forall g :e A :^: omega, hl_lambda A B g = hl_select (hl_ty_cart A B) (fun f :e hl_ty_cart A B => if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex B (hl_UNIV B)) = 1 -> hl_vindex A B f i = g i then 1 else 0).
Admitted.

// HOL Light: cart.ml:132 / LAMBDA_BETA   (hash md5:a1b73e7882037b5a6a9034c65eb72d73)
Theorem hlt_LAMBDA_BETA : forall A B:set, A <> Empty -> B <> Empty -> forall g :e A :^: omega, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex B (hl_UNIV B)) = 1 -> hl_vindex A B (hl_lambda A B g) i = g i.
Admitted.

// HOL Light: cart.ml:143 / LAMBDA_UNIQUE   (hash md5:98f52daf731bf32f6aa2183889e678e4)
Theorem hlt_LAMBDA_UNIQUE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart A B, forall g :e A :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex B (hl_UNIV B)) = 1 -> hl_vindex A B f i = g i) <-> hl_lambda A B g = f.
Admitted.

// HOL Light: cart.ml:149 / LAMBDA_ETA   (hash md5:bf7a9034dc52575b2f124f169fb89276)
Theorem hlt_LAMBDA_ETA : forall A B:set, A <> Empty -> B <> Empty -> forall g :e hl_ty_cart A B, hl_lambda A B (fun i :e omega => hl_vindex A B g i) = g.
Admitted.

// HOL Light: cart.ml:157 / FINITE_INDEX_INRANGE   (hash md5:e4e13395427e83a1f49cafbe2f46d467)
Theorem hlt_FINITE_INDEX_INRANGE : forall A N:set, A <> Empty -> N <> Empty -> forall i :e omega, exists k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ forall x :e hl_ty_cart A N, hl_vindex A N x i = hl_vindex A N x k).
Admitted.

// HOL Light: cart.ml:161 / FINITE_INDEX_INRANGE_2   (hash md5:36e035204485169198b7e98d40aec6bc)
Theorem hlt_FINITE_INDEX_INRANGE_2 : forall A B N:set, A <> Empty -> B <> Empty -> N <> Empty -> forall i :e omega, exists k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ ((forall x :e hl_ty_cart A N, hl_vindex A N x i = hl_vindex A N x k) /\ forall y :e hl_ty_cart B N, hl_vindex B N y i = hl_vindex B N y k)).
Admitted.

// HOL Light: cart.ml:166 / CART_EQ_FULL   (hash md5:955cf716b47b18c6a131edcb1725c1c6)
Theorem hlt_CART_EQ_FULL : forall A N:set, A <> Empty -> N <> Empty -> forall x y :e hl_ty_cart A N, x = y <-> forall i :e omega, hl_vindex A N x i = hl_vindex A N y i.
Admitted.

// HOL Light: cart.ml:174 / finite_sum_tybij   (hash md5:6c76cb57384adacc9d787a28f7988e48)
Theorem hlt_finite_sum_tybij : forall A B:set, A <> Empty -> B <> Empty -> (forall a :e hl_ty_finite_sum A B, hl_mk_finite_sum A B (hl_dest_finite_sum A B a) = a) /\ forall r :e omega, hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))) = 1 <-> hl_dest_finite_sum A B (hl_mk_finite_sum A B r) = r.
Admitted.

// HOL Light: cart.ml:181 / pastecart   (hash md5:970d4141355f6d6f39b68b7eb74facb6)
Theorem hlt_pastecart_thm : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart A M, forall g :e hl_ty_cart A N, hl_pastecart A M N f g = hl_lambda A (hl_ty_finite_sum M N) (fun i :e omega => hl_COND A (hl_le i (hl_dimindex M (hl_UNIV M))) (hl_vindex A M f i) (hl_vindex A N g (hl_sub i (hl_dimindex M (hl_UNIV M))))).
Admitted.

// HOL Light: cart.ml:186 / fstcart   (hash md5:076ed5c08efac66eaf24e72ed8087ff0)
Theorem hlt_fstcart_thm : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart A (hl_ty_finite_sum M N), hl_fstcart A M N f = hl_lambda A M (fun i :e omega => hl_vindex A (hl_ty_finite_sum M N) f i).
Admitted.

// HOL Light: cart.ml:189 / sndcart   (hash md5:442acce9e11ba375a5854f0ad07e5d3d)
Theorem hlt_sndcart_thm : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart A (hl_ty_finite_sum M N), hl_sndcart A M N f = hl_lambda A N (fun i :e omega => hl_vindex A (hl_ty_finite_sum M N) f (hl_add i (hl_dimindex M (hl_UNIV M)))).
Admitted.

// HOL Light: cart.ml:193 / FINITE_SUM_IMAGE   (hash md5:e0d0c0b3edf6d1958b0df8612704ce3f)
Theorem hlt_FINITE_SUM_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> hl_UNIV (hl_ty_finite_sum A B) = hl_IMAGE omega (hl_ty_finite_sum A B) (hl_mk_finite_sum A B) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))).
Admitted.

// HOL Light: cart.ml:199 / DIMINDEX_HAS_SIZE_FINITE_SUM   (hash md5:bf62af096e5852240b46a2bcac0c7182)
Theorem hlt_DIMINDEX_HAS_SIZE_FINITE_SUM : forall M N:set, M <> Empty -> N <> Empty -> hl_HAS_SIZE (hl_ty_finite_sum M N) (hl_UNIV (hl_ty_finite_sum M N)) (hl_add (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: cart.ml:206 / DIMINDEX_FINITE_SUM   (hash md5:9c92b496f688797b7d7b3bea395b3a9d)
Theorem hlt_DIMINDEX_FINITE_SUM : forall M N:set, M <> Empty -> N <> Empty -> hl_dimindex (hl_ty_finite_sum M N) (hl_UNIV (hl_ty_finite_sum M N)) = hl_add (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: cart.ml:211 / FSTCART_PASTECART   (hash md5:b2889d73733e2663083534f610fe26ec)
Theorem hlt_FSTCART_PASTECART : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e hl_ty_cart A M, forall y :e hl_ty_cart A N, hl_fstcart A M N (hl_pastecart A M N x y) = x.
Admitted.

// HOL Light: cart.ml:216 / SNDCART_PASTECART   (hash md5:5b9d48344251d0303100de806e31cd7c)
Theorem hlt_SNDCART_PASTECART : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e hl_ty_cart A M, forall y :e hl_ty_cart A N, hl_sndcart A M N (hl_pastecart A M N x y) = y.
Admitted.

// HOL Light: cart.ml:227 / PASTECART_FST_SND   (hash md5:cd1c341f949d2e3cc3661e480bad612d)
Theorem hlt_PASTECART_FST_SND : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall z :e hl_ty_cart A (hl_ty_finite_sum M N), hl_pastecart A M N (hl_fstcart A M N z) (hl_sndcart A M N z) = z.
Admitted.

// HOL Light: cart.ml:236 / PASTECART_EQ   (hash md5:4acc7a40e97f7ac44ece1a7ded40cc5e)
Theorem hlt_PASTECART_EQ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x y :e hl_ty_cart A (hl_ty_finite_sum M N), x = y <-> hl_fstcart A M N x = hl_fstcart A M N y /\ hl_sndcart A M N x = hl_sndcart A M N y.
Admitted.

// HOL Light: cart.ml:241 / FORALL_PASTECART   (hash md5:24bf22d217fff4040bd926669c496c75)
Theorem hlt_FORALL_PASTECART : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall P :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N), (forall p :e hl_ty_cart A (hl_ty_finite_sum M N), P p = 1) <-> forall x :e hl_ty_cart A M, forall y :e hl_ty_cart A N, P (hl_pastecart A M N x y) = 1.
Admitted.

// HOL Light: cart.ml:245 / EXISTS_PASTECART   (hash md5:a53a9dbdade76ad7d49219b1a7ed0865)
Theorem hlt_EXISTS_PASTECART : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall P :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N), (exists p :e hl_ty_cart A (hl_ty_finite_sum M N), P p = 1) <-> exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, P (hl_pastecart A M N x y) = 1.
Admitted.

// HOL Light: cart.ml:249 / PASTECART_INJ   (hash md5:870f4c2845b9ddb14f21953c1d4ea97e)
Theorem hlt_PASTECART_INJ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e hl_ty_cart A M, forall y :e hl_ty_cart A N, forall w :e hl_ty_cart A M, forall z :e hl_ty_cart A N, hl_pastecart A M N x y = hl_pastecart A M N w z <-> x = w /\ y = z.
Admitted.

// HOL Light: cart.ml:253 / FSTCART_COMPONENT   (hash md5:254b42d30d51ff285f5b66d3f841e710)
Theorem hlt_FSTCART_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e hl_ty_cart A (hl_ty_finite_sum M N), forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> hl_vindex A M (hl_fstcart A M N x) i = hl_vindex A (hl_ty_finite_sum M N) x i.
Admitted.

// HOL Light: cart.ml:258 / SNDCART_COMPONENT   (hash md5:2b6160de571744152be36a7b149e5233)
Theorem hlt_SNDCART_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e hl_ty_cart A (hl_ty_finite_sum M N), forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vindex A N (hl_sndcart A M N x) i = hl_vindex A (hl_ty_finite_sum M N) x (hl_add i (hl_dimindex M (hl_UNIV M))).
Admitted.

// HOL Light: cart.ml:263 / PASTECART_COMPONENT   (hash md5:3f9168ec3097f0cde3fbc786aea3cc91)
Theorem hlt_PASTECART_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall u :e hl_ty_cart A M, forall v :e hl_ty_cart A N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 -> hl_vindex A (hl_ty_finite_sum M N) (hl_pastecart A M N u v) i = hl_vindex A M u i) /\ forall u :e hl_ty_cart A M, forall v :e hl_ty_cart A N, forall i :e omega, hl_le (hl_add (hl_dimindex M (hl_UNIV M)) (hl_NUMERAL (hl_BIT1 hl_zero))) i = 1 /\ hl_le i (hl_add (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_vindex A (hl_ty_finite_sum M N) (hl_pastecart A M N u v) i = hl_vindex A N v (hl_sub i (hl_dimindex M (hl_UNIV M))).
Admitted.

// HOL Light: cart.ml:279 / finite_diff_tybij   (hash md5:f4fb2b8e55ab73d15217e1479128f438)
Theorem hlt_finite_diff_tybij : forall A B:set, A <> Empty -> B <> Empty -> (forall a :e hl_ty_finite_diff A B, hl_mk_finite_diff A B (hl_dest_finite_diff A B a) = a) /\ forall r :e omega, hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_COND omega (hl_lt (hl_dimindex B (hl_UNIV B)) (hl_dimindex A (hl_UNIV A))) (hl_sub (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))) (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 <-> hl_dest_finite_diff A B (hl_mk_finite_diff A B r) = r.
Admitted.

// HOL Light: cart.ml:286 / FINITE_DIFF_IMAGE   (hash md5:d51e953337acbc3ea1493f1b4055c668)
Theorem hlt_FINITE_DIFF_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> hl_UNIV (hl_ty_finite_diff A B) = hl_IMAGE omega (hl_ty_finite_diff A B) (hl_mk_finite_diff A B) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_COND omega (hl_lt (hl_dimindex B (hl_UNIV B)) (hl_dimindex A (hl_UNIV A))) (hl_sub (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))) (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: cart.ml:294 / DIMINDEX_HAS_SIZE_FINITE_DIFF   (hash md5:6d6170cc672bc6cae12e288b5cec6547)
Theorem hlt_DIMINDEX_HAS_SIZE_FINITE_DIFF : forall M N:set, M <> Empty -> N <> Empty -> hl_HAS_SIZE (hl_ty_finite_diff M N) (hl_UNIV (hl_ty_finite_diff M N)) (hl_COND omega (hl_lt (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M))) (hl_sub (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N))) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: cart.ml:302 / DIMINDEX_FINITE_DIFF   (hash md5:28a5bc47fc80defeda10fe4b95c2cb9d)
Theorem hlt_DIMINDEX_FINITE_DIFF : forall M N:set, M <> Empty -> N <> Empty -> hl_dimindex (hl_ty_finite_diff M N) (hl_UNIV (hl_ty_finite_diff M N)) = hl_COND omega (hl_lt (hl_dimindex N (hl_UNIV N)) (hl_dimindex M (hl_UNIV M))) (hl_sub (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N))) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: cart.ml:312 / finite_prod_tybij   (hash md5:37559532491c95f065282e2b4bfd9bc7)
Theorem hlt_finite_prod_tybij : forall A B:set, A <> Empty -> B <> Empty -> (forall a :e hl_ty_finite_prod A B, hl_mk_finite_prod A B (hl_dest_finite_prod A B a) = a) /\ forall r :e omega, hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_mul (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))) = 1 <-> hl_dest_finite_prod A B (hl_mk_finite_prod A B r) = r.
Admitted.

// HOL Light: cart.ml:319 / FINITE_PROD_IMAGE   (hash md5:a5ee3cdead3b443082a051624eb564f2)
Theorem hlt_FINITE_PROD_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> hl_UNIV (hl_ty_finite_prod A B) = hl_IMAGE omega (hl_ty_finite_prod A B) (hl_mk_finite_prod A B) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_mul (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))).
Admitted.

// HOL Light: cart.ml:325 / DIMINDEX_HAS_SIZE_FINITE_PROD   (hash md5:90b3f294442e548ae34f01c37b5d1098)
Theorem hlt_DIMINDEX_HAS_SIZE_FINITE_PROD : forall M N:set, M <> Empty -> N <> Empty -> hl_HAS_SIZE (hl_ty_finite_prod M N) (hl_UNIV (hl_ty_finite_prod M N)) (hl_mul (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: cart.ml:332 / DIMINDEX_FINITE_PROD   (hash md5:1149f086d1eb0f908226b89aaa56b44b)
Theorem hlt_DIMINDEX_FINITE_PROD : forall M N:set, M <> Empty -> N <> Empty -> hl_dimindex (hl_ty_finite_prod M N) (hl_UNIV (hl_ty_finite_prod M N)) = hl_mul (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: cart.ml:341 / tybit0_INDUCT   (hash md5:78d927b0732f0cf2715fce6ad6aa283b)
Theorem hlt_tybit0_INDUCT : forall A:set, A <> Empty -> forall P :e 2 :^: idx_n (2 * dimindex A), (forall a :e hl_ty_finite_sum A A, P (hl_mktybit0 A a) = 1) -> forall x :e idx_n (2 * dimindex A), P x = 1.
Admitted.

// HOL Light: cart.ml:341 / tybit0_RECURSION   (hash md5:9fa6df9bc475b4aacb910c31a4a7e571)
Theorem hlt_tybit0_RECURSION : forall A Z:set, A <> Empty -> Z <> Empty -> forall f :e Z :^: hl_ty_finite_sum A A, exists fn :e Z :^: idx_n (2 * dimindex A), forall a :e hl_ty_finite_sum A A, fn (hl_mktybit0 A a) = f a.
Admitted.

// HOL Light: cart.ml:344 / tybit1_INDUCT   (hash md5:37e8ee45727d8dddc94744b2e20590cf)
Theorem hlt_tybit1_INDUCT : forall A:set, A <> Empty -> forall P :e 2 :^: idx_n (2 * dimindex A + 1), (forall a :e hl_ty_finite_sum (hl_ty_finite_sum A A) 1, P (hl_mktybit1 A a) = 1) -> forall x :e idx_n (2 * dimindex A + 1), P x = 1.
Admitted.

// HOL Light: cart.ml:344 / tybit1_RECURSION   (hash md5:6ecdce784840dbafa08ce3b5f0f03ab6)
Theorem hlt_tybit1_RECURSION : forall A Z:set, A <> Empty -> Z <> Empty -> forall f :e Z :^: hl_ty_finite_sum (hl_ty_finite_sum A A) 1, exists fn :e Z :^: idx_n (2 * dimindex A + 1), forall a :e hl_ty_finite_sum (hl_ty_finite_sum A A) 1, fn (hl_mktybit1 A a) = f a.
Admitted.

// HOL Light: cart.ml:347 / HAS_SIZE_TYBIT0   (hash md5:ea3d837c4014ac0c3ad86b5e9d5d04f4)
Theorem hlt_HAS_SIZE_TYBIT0 : forall A:set, A <> Empty -> hl_HAS_SIZE (idx_n (2 * dimindex A)) (hl_UNIV (idx_n (2 * dimindex A))) (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex A (hl_UNIV A))) = 1.
Admitted.

// HOL Light: cart.ml:360 / HAS_SIZE_TYBIT1   (hash md5:c1d060ab4d4fb3722685a5022fd13b92)
Theorem hlt_HAS_SIZE_TYBIT1 : forall A:set, A <> Empty -> hl_HAS_SIZE (idx_n (2 * dimindex A + 1)) (hl_UNIV (idx_n (2 * dimindex A + 1))) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex A (hl_UNIV A))) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: cart.ml:373 / DIMINDEX_TYBIT0   (hash md5:2726109efadf953501db3fedb4c44ec0)
Theorem hlt_DIMINDEX_TYBIT0 : forall A:set, A <> Empty -> hl_dimindex (idx_n (2 * dimindex A)) (hl_UNIV (idx_n (2 * dimindex A))) = hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex A (hl_UNIV A)).
Admitted.

// HOL Light: cart.ml:377 / DIMINDEX_TYBIT1   (hash md5:18db18f4fd77000629321bf157fb1353)
Theorem hlt_DIMINDEX_TYBIT1 : forall A:set, A <> Empty -> hl_dimindex (idx_n (2 * dimindex A + 1)) (hl_UNIV (idx_n (2 * dimindex A + 1))) = hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex A (hl_UNIV A))) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: cart.ml:381 / DIMINDEX_CLAUSES   (hash md5:1c9164d9e863112afb3e9f170701e014)
Theorem hlt_DIMINDEX_CLAUSES : forall A:set, A <> Empty -> hl_dimindex 1 (hl_UNIV 1) = hl_NUMERAL (hl_BIT1 hl_zero) /\ (hl_dimindex (idx_n (2 * dimindex A)) (hl_UNIV (idx_n (2 * dimindex A))) = hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex A (hl_UNIV A)) /\ hl_dimindex (idx_n (2 * dimindex A + 1)) (hl_UNIV (idx_n (2 * dimindex A + 1))) = hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex A (hl_UNIV A))) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: cart.ml:389 / FINITE_1   (hash md5:90a6cd0195246fd82f4fbaf42c36e52d)
Theorem hlt_FINITE_1 : hl_FINITE 1 (hl_UNIV 1) = 1.
Admitted.

// HOL Light: cart.ml:393 / FINITE_TYBIT0   (hash md5:7028ce5cbd4cf522cc4d8615d9b239b9)
Theorem hlt_FINITE_TYBIT0 : forall A:set, A <> Empty -> hl_FINITE (idx_n (2 * dimindex A)) (hl_UNIV (idx_n (2 * dimindex A))) = 1.
Admitted.

// HOL Light: cart.ml:397 / FINITE_TYBIT1   (hash md5:a64758743525884a577bc64816c96b00)
Theorem hlt_FINITE_TYBIT1 : forall A:set, A <> Empty -> hl_FINITE (idx_n (2 * dimindex A + 1)) (hl_UNIV (idx_n (2 * dimindex A + 1))) = 1.
Admitted.

// HOL Light: cart.ml:401 / FINITE_CLAUSES   (hash md5:42e8dcd423445931474546e2e60002e4)
Theorem hlt_FINITE_CLAUSES : forall A:set, A <> Empty -> hl_FINITE 1 (hl_UNIV 1) = 1 /\ (hl_FINITE (idx_n (2 * dimindex A)) (hl_UNIV (idx_n (2 * dimindex A))) = 1 /\ hl_FINITE (idx_n (2 * dimindex A + 1)) (hl_UNIV (idx_n (2 * dimindex A + 1))) = 1).
Admitted.

// HOL Light: cart.ml:463 / DIMINDEX_2   (hash md5:d0a8da4f2034656bd4d9e0714a4c82f2)
Theorem hlt_DIMINDEX_2 : hl_dimindex (idx_n (2 * dimindex 1)) (hl_UNIV (idx_n (2 * dimindex 1))) = hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: cart.ml:467 / DIMINDEX_3   (hash md5:51e4181dfc4fc784261ccfc05b5c00b7)
Theorem hlt_DIMINDEX_3 : hl_dimindex (idx_n (2 * dimindex 1 + 1)) (hl_UNIV (idx_n (2 * dimindex 1 + 1))) = hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: cart.ml:471 / DIMINDEX_4   (hash md5:75e488850afa71d3a191d143cb618282)
Theorem hlt_DIMINDEX_4 : hl_dimindex (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_UNIV (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) = hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: cart.ml:475 / HAS_SIZE_2   (hash md5:f82c0a70f6705c7e235e4e36d867a1a2)
Theorem hlt_HAS_SIZE_2 : hl_HAS_SIZE (idx_n (2 * dimindex 1)) (hl_UNIV (idx_n (2 * dimindex 1))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: cart.ml:476 / HAS_SIZE_3   (hash md5:ac76f67ba36d0e7b7fc0d59c010424af)
Theorem hlt_HAS_SIZE_3 : hl_HAS_SIZE (idx_n (2 * dimindex 1 + 1)) (hl_UNIV (idx_n (2 * dimindex 1 + 1))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: cart.ml:477 / HAS_SIZE_4   (hash md5:1397fa02f89f92b1eb4960c1f347e79c)
Theorem hlt_HAS_SIZE_4 : hl_HAS_SIZE (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_UNIV (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: cart.ml:483 / FINITE_CART   (hash md5:a0034d785932cd5307e955f10e16d620)
Theorem hlt_FINITE_CART : forall A N:set, A <> Empty -> N <> Empty -> forall P :e 2 :^: A :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_360 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_360 (P i x) x = 1 then 1 else 0)) = 1) -> hl_FINITE (hl_ty_cart A N) (hl_GSPEC (hl_ty_cart A N) (fun GEN_PVAR_361 :e hl_ty_cart A N => if exists v :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A N) GEN_PVAR_361 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P i (hl_vindex A N v i) = 1 then 1 else 0) v = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: cart.ml:528 / HAS_SIZE_CART_UNIV   (hash md5:b0b81bcc0d6110939002f2411bd9551c)
Theorem hlt_HAS_SIZE_CART_UNIV : forall A N:set, A <> Empty -> N <> Empty -> forall m :e omega, hl_HAS_SIZE A (hl_UNIV A) m = 1 -> hl_HAS_SIZE (hl_ty_cart A N) (hl_UNIV (hl_ty_cart A N)) (hl_EXP m (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: cart.ml:542 / CARD_CART_UNIV   (hash md5:0f9dcb75b599efb0c1ce51ea2172f442)
Theorem hlt_CARD_CART_UNIV : forall A N:set, A <> Empty -> N <> Empty -> hl_FINITE A (hl_UNIV A) = 1 -> hl_CARD (hl_ty_cart A N) (hl_UNIV (hl_ty_cart A N)) = hl_EXP (hl_CARD A (hl_UNIV A)) (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: cart.ml:546 / FINITE_CART_UNIV   (hash md5:dcf8ffbb9fadf298b171451ec20ea6dc)
Theorem hlt_FINITE_CART_UNIV : forall A N:set, A <> Empty -> N <> Empty -> hl_FINITE A (hl_UNIV A) = 1 -> hl_FINITE (hl_ty_cart A N) (hl_UNIV (hl_ty_cart A N)) = 1.
Admitted.

// HOL Light: cart.ml:554 / vector   (hash md5:56827346d192eb3c809c21ecac00effb)
Theorem hlt_vector_thm : forall A N:set, A <> Empty -> N <> Empty -> forall l :e finseq A, hl_vector A N l = hl_lambda A N (fun i :e omega => hl_EL A (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) l).
Admitted.

// HOL Light: cart.ml:561 / IN_ELIM_PASTECART_THM   (hash md5:2ad6de4e0f69d9906298f4dbf228d6e8)
Theorem hlt_IN_ELIM_PASTECART_THM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall P :e 2 :^: hl_ty_cart A N :^: hl_ty_cart A M, forall a :e hl_ty_cart A M, forall b :e hl_ty_cart A N, hl_IN (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_pastecart A M N a b) (hl_GSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_362 :e hl_ty_cart A (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_362 (P x y) (hl_pastecart A M N x y) = 1 then 1 else 0)) = 1 <-> P a b = 1.
Admitted.

// HOL Light: cart.ml:573 / PCROSS   (hash md5:4c3ed6c9a2b5bd49814870b71a43923b)
Theorem hlt_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N s t = hl_GSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_363 :e hl_ty_cart A (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_363 (if hl_IN (hl_ty_cart A M) x s = 1 /\ hl_IN (hl_ty_cart A N) y t = 1 then 1 else 0) (hl_pastecart A M N x y) = 1 then 1 else 0).
Admitted.

// HOL Light: cart.ml:576 / FORALL_IN_PCROSS   (hash md5:5f6f894c5b71d64c9d7a1f98b79c6e60)
Theorem hlt_FORALL_IN_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, forall P :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N), (forall z :e hl_ty_cart A (hl_ty_finite_sum M N), hl_IN (hl_ty_cart A (hl_ty_finite_sum M N)) z (hl_PCROSS A M N s t) = 1 -> P z = 1) <-> forall x :e hl_ty_cart A M, forall y :e hl_ty_cart A N, hl_IN (hl_ty_cart A M) x s = 1 /\ hl_IN (hl_ty_cart A N) y t = 1 -> P (hl_pastecart A M N x y) = 1.
Admitted.

// HOL Light: cart.ml:581 / EXISTS_IN_PCROSS   (hash md5:b9d75a090fc50040b27d19413f0c2df8)
Theorem hlt_EXISTS_IN_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, forall P :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N), (exists z :e hl_ty_cart A (hl_ty_finite_sum M N), hl_IN (hl_ty_cart A (hl_ty_finite_sum M N)) z (hl_PCROSS A M N s t) = 1 /\ P z = 1) <-> exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, hl_IN (hl_ty_cart A M) x s = 1 /\ (hl_IN (hl_ty_cart A N) y t = 1 /\ P (hl_pastecart A M N x y) = 1).
Admitted.

// HOL Light: cart.ml:586 / PASTECART_IN_PCROSS   (hash md5:5519d9a3f604fa1e01459dcf9f17cbb7)
Theorem hlt_PASTECART_IN_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, forall x :e hl_ty_cart A M, forall y :e hl_ty_cart A N, hl_IN (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_pastecart A M N x y) (hl_PCROSS A M N s t) = 1 <-> hl_IN (hl_ty_cart A M) x s = 1 /\ hl_IN (hl_ty_cart A N) y t = 1.
Admitted.

// HOL Light: cart.ml:590 / PCROSS_EQ_EMPTY   (hash md5:aec27866ecd08507b739be96df61dc0e)
Theorem hlt_PCROSS_EQ_EMPTY : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N s t = hl_EMPTY (hl_ty_cart A (hl_ty_finite_sum M N)) <-> s = hl_EMPTY (hl_ty_cart A M) \/ t = hl_EMPTY (hl_ty_cart A N).
Admitted.

// HOL Light: cart.ml:594 / PCROSS_EMPTY   (hash md5:9ac51b926d6b0e134aa418d49e786547)
Theorem hlt_PCROSS_EMPTY : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s :e 2 :^: hl_ty_cart A M, hl_PCROSS A M N s (hl_EMPTY (hl_ty_cart A N)) = hl_EMPTY (hl_ty_cart A (hl_ty_finite_sum M N))) /\ forall t :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N (hl_EMPTY (hl_ty_cart A M)) t = hl_EMPTY (hl_ty_cart A (hl_ty_finite_sum M N)).
Admitted.

// HOL Light: cart.ml:599 / PCROSS_SING   (hash md5:5a48e2461c22736e0c34cb481388dda6)
Theorem hlt_PCROSS_SING : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e hl_ty_cart A M, forall y :e hl_ty_cart A N, hl_PCROSS A M N (hl_INSERT (hl_ty_cart A M) x (hl_EMPTY (hl_ty_cart A M))) (hl_INSERT (hl_ty_cart A N) y (hl_EMPTY (hl_ty_cart A N))) = hl_INSERT (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_pastecart A M N x y) (hl_EMPTY (hl_ty_cart A (hl_ty_finite_sum M N))).
Admitted.

// HOL Light: cart.ml:604 / SUBSET_PCROSS   (hash md5:7076fe873cf40994e6b8cf4f6e8fc324)
Theorem hlt_SUBSET_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, forall s' :e 2 :^: hl_ty_cart A M, forall t' :e 2 :^: hl_ty_cart A N, hl_SUBSET (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) (hl_PCROSS A M N s' t') = 1 <-> s = hl_EMPTY (hl_ty_cart A M) \/ (t = hl_EMPTY (hl_ty_cart A N) \/ hl_SUBSET (hl_ty_cart A M) s s' = 1 /\ hl_SUBSET (hl_ty_cart A N) t t' = 1).
Admitted.

// HOL Light: cart.ml:611 / PCROSS_MONO   (hash md5:26edf076c18f053a8eb2e451ae39276c)
Theorem hlt_PCROSS_MONO : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, forall s' :e 2 :^: hl_ty_cart A M, forall t' :e 2 :^: hl_ty_cart A N, hl_SUBSET (hl_ty_cart A M) s s' = 1 /\ hl_SUBSET (hl_ty_cart A N) t t' = 1 -> hl_SUBSET (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) (hl_PCROSS A M N s' t') = 1.
Admitted.

// HOL Light: cart.ml:616 / PCROSS_EQ   (hash md5:d8f76283edf69a808cce56f4dfd78496)
Theorem hlt_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s s' :e 2 :^: hl_ty_cart R M, forall t t' :e 2 :^: hl_ty_cart R N, hl_PCROSS R M N s t = hl_PCROSS R M N s' t' <-> (s = hl_EMPTY (hl_ty_cart R M) \/ t = hl_EMPTY (hl_ty_cart R N)) /\ (s' = hl_EMPTY (hl_ty_cart R M) \/ t' = hl_EMPTY (hl_ty_cart R N)) \/ s = s' /\ t = t'.
Admitted.

// HOL Light: cart.ml:622 / UNIV_PCROSS_UNIV   (hash md5:3441e60d806d8492ac377d9acc2edc65)
Theorem hlt_UNIV_PCROSS_UNIV : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_PCROSS A M N (hl_UNIV (hl_ty_cart A M)) (hl_UNIV (hl_ty_cart A N)) = hl_UNIV (hl_ty_cart A (hl_ty_finite_sum M N)).
Admitted.

// HOL Light: cart.ml:626 / HAS_SIZE_PCROSS   (hash md5:bbbbede771da97bffddfd538aeb72bab)
Theorem hlt_HAS_SIZE_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, forall m n :e omega, hl_HAS_SIZE (hl_ty_cart A M) s m = 1 /\ hl_HAS_SIZE (hl_ty_cart A N) t n = 1 -> hl_HAS_SIZE (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) (hl_mul m n) = 1.
Admitted.

// HOL Light: cart.ml:639 / FINITE_PCROSS   (hash md5:6330f1a0852138ff0ef9250236a93770)
Theorem hlt_FINITE_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, hl_FINITE (hl_ty_cart A M) s = 1 /\ hl_FINITE (hl_ty_cart A N) t = 1 -> hl_FINITE (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) = 1.
Admitted.

// HOL Light: cart.ml:644 / FINITE_PCROSS_EQ   (hash md5:5e0e0f2a85a22b1a0a2c43839d5d2131)
Theorem hlt_FINITE_PCROSS_EQ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, hl_FINITE (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart A M) \/ (t = hl_EMPTY (hl_ty_cart A N) \/ hl_FINITE (hl_ty_cart A M) s = 1 /\ hl_FINITE (hl_ty_cart A N) t = 1).
Admitted.

// HOL Light: cart.ml:658 / IMAGE_FSTCART_PCROSS   (hash md5:b8867ec4ed95b15bde225c8621a0df81)
Theorem hlt_IMAGE_FSTCART_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R M) (hl_fstcart R M N) (hl_PCROSS R M N s t) = hl_COND (2 :^: hl_ty_cart R M) (if t = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_EMPTY (hl_ty_cart R M)) s.
Admitted.

// HOL Light: cart.ml:666 / IMAGE_SNDCART_PCROSS   (hash md5:8e879e01f0910ec0ad0c9e36ec8a72bf)
Theorem hlt_IMAGE_SNDCART_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R N) (hl_sndcart R M N) (hl_PCROSS R M N s t) = hl_COND (2 :^: hl_ty_cart R N) (if s = hl_EMPTY (hl_ty_cart R M) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) t.
Admitted.

// HOL Light: cart.ml:674 / PCROSS_INTER   (hash md5:e18b66815ca8b5d95550d6d271cc2e0e)
Theorem hlt_PCROSS_INTER : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s :e 2 :^: hl_ty_cart A M, forall t u :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N s (hl_INTER (hl_ty_cart A N) t u) = hl_INTER (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) (hl_PCROSS A M N s u)) /\ forall s t :e 2 :^: hl_ty_cart A M, forall u :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N (hl_INTER (hl_ty_cart A M) s t) u = hl_INTER (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s u) (hl_PCROSS A M N t u).
Admitted.

// HOL Light: cart.ml:682 / PCROSS_UNION   (hash md5:66504b072fc4aef85c50f35c8cfebe7c)
Theorem hlt_PCROSS_UNION : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s :e 2 :^: hl_ty_cart A M, forall t u :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N s (hl_UNION (hl_ty_cart A N) t u) = hl_UNION (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) (hl_PCROSS A M N s u)) /\ forall s t :e 2 :^: hl_ty_cart A M, forall u :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N (hl_UNION (hl_ty_cart A M) s t) u = hl_UNION (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s u) (hl_PCROSS A M N t u).
Admitted.

// HOL Light: cart.ml:690 / PCROSS_DIFF   (hash md5:0d8964837a044408993a3f0bfcea3da8)
Theorem hlt_PCROSS_DIFF : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s :e 2 :^: hl_ty_cart A M, forall t u :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N s (hl_DIFF (hl_ty_cart A N) t u) = hl_DIFF (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) (hl_PCROSS A M N s u)) /\ forall s t :e 2 :^: hl_ty_cart A M, forall u :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N (hl_DIFF (hl_ty_cart A M) s t) u = hl_DIFF (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s u) (hl_PCROSS A M N t u).
Admitted.

// HOL Light: cart.ml:698 / INTER_PCROSS   (hash md5:006b27b152528c9897c1c1f338f459a2)
Theorem hlt_INTER_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s s' :e 2 :^: hl_ty_cart A M, forall t t' :e 2 :^: hl_ty_cart A N, hl_INTER (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) (hl_PCROSS A M N s' t') = hl_PCROSS A M N (hl_INTER (hl_ty_cart A M) s s') (hl_INTER (hl_ty_cart A N) t t').
Admitted.

// HOL Light: cart.ml:704 / PCROSS_UNIONS   (hash md5:e38b6d6d9f0494aca5fa5f91befcde0d)
Theorem hlt_PCROSS_UNIONS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s :e 2 :^: hl_ty_cart A M, forall f :e 2 :^: (2 :^: hl_ty_cart A N), hl_PCROSS A M N s (hl_UNIONS (hl_ty_cart A N) f) = hl_UNIONS (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_GSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_365 :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) => if exists t :e 2 :^: hl_ty_cart A N, hl_SETSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_365 (hl_IN (2 :^: hl_ty_cart A N) t f) (hl_PCROSS A M N s t) = 1 then 1 else 0))) /\ forall f :e 2 :^: (2 :^: hl_ty_cart A M), forall t :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N (hl_UNIONS (hl_ty_cart A M) f) t = hl_UNIONS (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_GSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_366 :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) => if exists s :e 2 :^: hl_ty_cart A M, hl_SETSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_366 (hl_IN (2 :^: hl_ty_cart A M) s f) (hl_PCROSS A M N s t) = 1 then 1 else 0)).
Admitted.

// HOL Light: cart.ml:704 / PCROSS_UNIONS_UNIONS   (hash md5:cd0df146256ca98fd8332f1daf3a41c2)
Theorem hlt_PCROSS_UNIONS_UNIONS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart A M), forall g :e 2 :^: (2 :^: hl_ty_cart A N), hl_PCROSS A M N (hl_UNIONS (hl_ty_cart A M) f) (hl_UNIONS (hl_ty_cart A N) g) = hl_UNIONS (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_GSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_364 :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) => if exists s :e 2 :^: hl_ty_cart A M, exists t :e 2 :^: hl_ty_cart A N, hl_SETSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_364 (if hl_IN (2 :^: hl_ty_cart A M) s f = 1 /\ hl_IN (2 :^: hl_ty_cart A N) t g = 1 then 1 else 0) (hl_PCROSS A M N s t) = 1 then 1 else 0)).
Admitted.

// HOL Light: cart.ml:715 / PCROSS_INTERS   (hash md5:51d0542065fcefba881368f887d66280)
Theorem hlt_PCROSS_INTERS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s :e 2 :^: hl_ty_cart A M, forall f :e 2 :^: (2 :^: hl_ty_cart A N), hl_PCROSS A M N s (hl_INTERS (hl_ty_cart A N) f) = hl_COND (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (if f = hl_EMPTY (2 :^: hl_ty_cart A N) then 1 else 0) (hl_PCROSS A M N s (hl_UNIV (hl_ty_cart A N))) (hl_INTERS (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_GSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_370 :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) => if exists t :e 2 :^: hl_ty_cart A N, hl_SETSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_370 (hl_IN (2 :^: hl_ty_cart A N) t f) (hl_PCROSS A M N s t) = 1 then 1 else 0)))) /\ forall f :e 2 :^: (2 :^: hl_ty_cart A M), forall t :e 2 :^: hl_ty_cart A N, hl_PCROSS A M N (hl_INTERS (hl_ty_cart A M) f) t = hl_COND (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (if f = hl_EMPTY (2 :^: hl_ty_cart A M) then 1 else 0) (hl_PCROSS A M N (hl_UNIV (hl_ty_cart A M)) t) (hl_INTERS (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_GSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_371 :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) => if exists s :e 2 :^: hl_ty_cart A M, hl_SETSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_371 (hl_IN (2 :^: hl_ty_cart A M) s f) (hl_PCROSS A M N s t) = 1 then 1 else 0))).
Admitted.

// HOL Light: cart.ml:715 / PCROSS_INTERS_INTERS   (hash md5:26bb2ccb6eb42f3a862c424eb0825e69)
Theorem hlt_PCROSS_INTERS_INTERS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart A M), forall g :e 2 :^: (2 :^: hl_ty_cart A N), hl_PCROSS A M N (hl_INTERS (hl_ty_cart A M) f) (hl_INTERS (hl_ty_cart A N) g) = hl_COND (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (if f = hl_EMPTY (2 :^: hl_ty_cart A M) then 1 else 0) (hl_INTERS (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_GSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_367 :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) => if exists t :e 2 :^: hl_ty_cart A N, hl_SETSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_367 (hl_IN (2 :^: hl_ty_cart A N) t g) (hl_PCROSS A M N (hl_UNIV (hl_ty_cart A M)) t) = 1 then 1 else 0))) (hl_COND (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (if g = hl_EMPTY (2 :^: hl_ty_cart A N) then 1 else 0) (hl_INTERS (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_GSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_368 :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) => if exists s :e 2 :^: hl_ty_cart A M, hl_SETSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_368 (hl_IN (2 :^: hl_ty_cart A M) s f) (hl_PCROSS A M N s (hl_UNIV (hl_ty_cart A N))) = 1 then 1 else 0))) (hl_INTERS (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_GSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_369 :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) => if exists s :e 2 :^: hl_ty_cart A M, exists t :e 2 :^: hl_ty_cart A N, hl_SETSPEC (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_369 (if hl_IN (2 :^: hl_ty_cart A M) s f = 1 /\ hl_IN (2 :^: hl_ty_cart A N) t g = 1 then 1 else 0) (hl_PCROSS A M N s t) = 1 then 1 else 0)))).
Admitted.

// HOL Light: cart.ml:729 / DISJOINT_PCROSS   (hash md5:99147df9e75446aca97f8965affc61d9)
Theorem hlt_DISJOINT_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, forall s' :e 2 :^: hl_ty_cart A M, forall t' :e 2 :^: hl_ty_cart A N, hl_DISJOINT (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) (hl_PCROSS A M N s' t') = 1 <-> hl_DISJOINT (hl_ty_cart A M) s s' = 1 \/ hl_DISJOINT (hl_ty_cart A N) t t' = 1.
Admitted.

