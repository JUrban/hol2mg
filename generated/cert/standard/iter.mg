// hol2mg certification module (private): shard iter of profile standard.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Library/iter.ml:7 / ITER   (hash md5:3964f67cb302a3c00db547a3c5d6cfb8)
// not bridged: 
Theorem ITER : forall A:set, forall x :e A, (forall f:set -> set, (forall x0 :e A, f x0 :e A) -> iter_fun 0 f x = x) /\ forall f:set -> set, (forall x0 :e A, f x0 :e A) -> forall n :e omega, iter_fun (ordsucc n) f x = f (iter_fun n f x).
Admitted.

// HOL Light: Library/iter.ml:11 / ITER_POINTLESS   (hash md5:87cd6cd80cdf992f58de0579df7527a4)
// not bridged: 
Theorem ITER_POINTLESS : forall A B:set, A <> Empty -> B <> Empty -> (forall f:set -> set, (forall x :e A, f x :e A) -> forall x :e A, iter_fun 0 f x = x) /\ forall f:set -> set, (forall x :e B, f x :e B) -> forall n :e omega, forall x :e B, iter_fun (ordsucc n) f x = f (iter_fun n f x).
Admitted.

// HOL Light: Library/iter.ml:16 / ITER_ALT   (hash md5:f44055ace7b3635e8c55d093cb1c1f35)
// not bridged: 
Theorem ITER_ALT : forall A B:set, A <> Empty -> B <> Empty -> (forall f:set -> set, (forall x :e A, f x :e A) -> forall x :e A, iter_fun 0 f x = x) /\ forall f:set -> set, (forall x :e B, f x :e B) -> forall n :e omega, forall x :e B, iter_fun (ordsucc n) f x = iter_fun n f (f x).
Admitted.

// HOL Light: Library/iter.ml:22 / ITER_ALT_POINTLESS   (hash md5:29cc3e0f851d0c8a8485551c2f67e4f4)
// not bridged: 
Theorem ITER_ALT_POINTLESS : forall A B:set, A <> Empty -> B <> Empty -> (forall f:set -> set, (forall x :e A, f x :e A) -> forall x :e A, iter_fun 0 f x = x) /\ forall f:set -> set, (forall x :e B, f x :e B) -> forall n :e omega, forall x :e B, iter_fun (ordsucc n) f x = iter_fun n f (f x).
Admitted.

// HOL Light: Library/iter.ml:27 / ITER_1   (hash md5:12e971279c186ebdb3ca7a6c5188c384)
// not bridged: 
Theorem ITER_1 : forall A:set, forall f:set -> set, (forall x :e A, f x :e A) -> forall x :e A, iter_fun 1 f x = f x.
Admitted.

// HOL Light: Library/iter.ml:31 / ITER_ADD   (hash md5:da469fedb64dd66ec337fc7ec9b21088)
// not bridged: 
Theorem ITER_ADD : forall A:set, forall f:set -> set, (forall x :e A, f x :e A) -> forall n m :e omega, forall x :e A, iter_fun n f (iter_fun m f x) = iter_fun (n + m) f x.
Admitted.

// HOL Light: Library/iter.ml:35 / ITER_ADD_POINTLESS   (hash md5:14f533aaf63196e46faa7929ed497b1a)
// not bridged: 
Theorem ITER_ADD_POINTLESS : forall A:set, forall f:set -> set, (forall x :e A, f x :e A) -> forall m n :e omega, forall x :e A, iter_fun (m + n) f x = iter_fun m f (iter_fun n f x).
Admitted.

// HOL Light: Library/iter.ml:39 / ITER_MUL   (hash md5:88bdc611438cc86b7b237b315350b1f8)
// not bridged: 
Theorem ITER_MUL : forall A:set, forall f:set -> set, (forall x :e A, f x :e A) -> forall n m :e omega, forall x :e A, iter_fun n (fun x0:set => iter_fun m f x0) x = iter_fun (n * m) f x.
Admitted.

// HOL Light: Library/iter.ml:44 / ITER_FIXPOINT   (hash md5:521a235c07f96841ceb86e01168f098a)
// not bridged: 
Theorem ITER_FIXPOINT : forall A:set, forall f:set -> set, (forall x :e A, f x :e A) -> forall n :e omega, forall x :e A, f x = x -> iter_fun n f x = x.
Admitted.

// HOL Light: Library/iter.ml:52 / ORDER_EXISTENCE_GEN   (hash md5:18f40c25173f9c84b3afea41c5db67b9)
Theorem hlt_ORDER_EXISTENCE_GEN : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall f :e A :^: omega, P (f (hl_NUMERAL hl_zero)) = 1 /\ (forall m n :e omega, P (f m) = 1 /\ ~ m = hl_NUMERAL hl_zero -> (P (f (hl_add m n)) = 1 <-> P (f n) = 1)) -> exists d :e omega, forall n :e omega, P (f n) = 1 <-> hl_num_divides d n = 1.
Admitted.
Theorem ORDER_EXISTENCE_GEN_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall f :e A :^: omega, P (f (hl_NUMERAL hl_zero)) = 1 /\ (forall m n :e omega, P (f m) = 1 /\ ~ m = hl_NUMERAL hl_zero -> (P (f (hl_add m n)) = 1 <-> P (f n) = 1)) -> exists d :e omega, forall n :e omega, P (f n) = 1 <-> hl_num_divides d n = 1) -> (forall A:set, A <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e omega, f x :e A) -> P (f 0) /\ (forall m n :e omega, P (f m) /\ ~ m = 0 -> (P (f (m + n)) <-> P (f n))) -> exists d :e omega, forall n :e omega, P (f n) <-> divides_nat d n).
exact (fun H__top A HAne => ((imp_forall_pred (A) (fun P => forall f :e A :^: omega, P (f (hl_NUMERAL hl_zero)) = 1 /\ (forall m n :e omega, P (f m) = 1 /\ ~ m = hl_NUMERAL hl_zero -> (P (f (hl_add m n)) = 1 <-> P (f n) = 1)) -> exists d :e omega, forall n :e omega, P (f n) = 1 <-> hl_num_divides d n = 1) (fun P => forall f:set -> set, (forall x :e omega, f x :e A) -> P (f 0) /\ (forall m n :e omega, P (f m) /\ ~ m = 0 -> (P (f (m + n)) <-> P (f n))) -> exists d :e omega, forall n :e omega, P (f n) <-> divides_nat d n) (fun P => (imp_forall_fun (omega) (A) (fun f => hl_chip A P (f (hl_NUMERAL hl_zero)) = 1 /\ (forall m n :e omega, hl_chip A P (f m) = 1 /\ ~ m = hl_NUMERAL hl_zero -> (hl_chip A P (f (hl_add m n)) = 1 <-> hl_chip A P (f n) = 1)) -> exists d :e omega, forall n :e omega, hl_chip A P (f n) = 1 <-> hl_num_divides d n = 1) (fun f => P (f 0) /\ (forall m n :e omega, P (f m) /\ ~ m = 0 -> (P (f (m + n)) <-> P (f n))) -> exists d :e omega, forall n :e omega, P (f n) <-> divides_nat d n) (fun f Hfc => (fun H__L : ((hl_chip A P (hl_lam omega f (hl_NUMERAL hl_zero)) = 1 /\ forall m n :e omega, hl_chip A P (hl_lam omega f m) = 1 /\ ~ m = hl_NUMERAL hl_zero -> (hl_chip A P (hl_lam omega f (hl_add m n)) = 1 <-> hl_chip A P (hl_lam omega f n) = 1)) -> (exists d :e omega, forall n :e omega, hl_chip A P (hl_lam omega f n) = 1 <-> hl_num_divides d n = 1)) => fun H__hyp2 : (P (f 0) /\ forall m n :e omega, P (f m) /\ ~ m = 0 -> (P (f (m + n)) <-> P (f n))) => (imp_exists_in (omega) (fun d => forall n :e omega, hl_chip A P (hl_lam omega f n) = 1 <-> hl_num_divides d n = 1) (fun d => forall n :e omega, P (f n) <-> divides_nat d n) (fun d Hd => (imp_forall_in (omega) (fun n => hl_chip A P (hl_lam omega f n) = 1 <-> hl_num_divides d n = 1) (fun n => P (f n) <-> divides_nat d n) (fun n Hn => (imp_iff (hl_chip A P (hl_lam omega f n) = 1) (P (f n)) (hl_num_divides d n = 1) (divides_nat d n) (iffEL (hl_chip A P (hl_lam omega f n) = 1) (P (f n)) (((hl_lam_ap (omega) f) (n) Hn) (fun hl__u hl__v => hl_chip A P (hl_lam omega f n) = 1 <-> P hl__u) ((hl_chip_iff (A) P) (hl_lam omega f n) (setexp_ap (omega) (A) (hl_lam omega f) (hl_lam_Pi (omega) (A) f Hfc) (n) Hn)))) (iffER (hl_chip A P (hl_lam omega f n) = 1) (P (f n)) (((hl_lam_ap (omega) f) (n) Hn) (fun hl__u hl__v => hl_chip A P (hl_lam omega f n) = 1 <-> P hl__u) ((hl_chip_iff (A) P) (hl_lam omega f n) (setexp_ap (omega) (A) (hl_lam omega f) (hl_lam_Pi (omega) (A) f Hfc) (n) Hn)))) (iffEL (hl_num_divides d n = 1) (divides_nat d n) ((hl_num_divides_compat) (d) Hd (n) Hn)) (iffER (hl_num_divides d n = 1) (divides_nat d n) ((hl_num_divides_compat) (d) Hd (n) Hn))))))) (H__L ((imp_and_dep_bwd (hl_chip A P (hl_lam omega f (hl_NUMERAL hl_zero)) = 1) (P (f 0)) (forall m n :e omega, hl_chip A P (hl_lam omega f m) = 1 /\ ~ m = hl_NUMERAL hl_zero -> (hl_chip A P (hl_lam omega f (hl_add m n)) = 1 <-> hl_chip A P (hl_lam omega f n) = 1)) (forall m n :e omega, P (f m) /\ ~ m = 0 -> (P (f (m + n)) <-> P (f n))) (iffER (hl_chip A P (hl_lam omega f (hl_NUMERAL hl_zero)) = 1) (P (f 0)) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_lam omega f (hl_NUMERAL hl_zero) = f hl__u) ((hl_lam_ap (omega) f) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_chip A P (hl_lam omega f (hl_NUMERAL hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (A) P) (hl_lam omega f (hl_NUMERAL hl_zero)) (setexp_ap (omega) (A) (hl_lam omega f) (hl_lam_Pi (omega) (A) f Hfc) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))))) (fun H__and3 : (P (f 0)) => (imp_forall_in (omega) (fun m => forall n :e omega, P (f m) /\ ~ m = 0 -> (P (f (m + n)) <-> P (f n))) (fun m => forall n :e omega, hl_chip A P (hl_lam omega f m) = 1 /\ ~ m = hl_NUMERAL hl_zero -> (hl_chip A P (hl_lam omega f (hl_add m n)) = 1 <-> hl_chip A P (hl_lam omega f n) = 1)) (fun m Hm => (imp_forall_in (omega) (fun n => P (f m) /\ ~ m = 0 -> (P (f (m + n)) <-> P (f n))) (fun n => hl_chip A P (hl_lam omega f m) = 1 /\ ~ m = hl_NUMERAL hl_zero -> (hl_chip A P (hl_lam omega f (hl_add m n)) = 1 <-> hl_chip A P (hl_lam omega f n) = 1)) (fun n Hn => (fun H__N : ((P (f m) /\ ~ m = 0) -> (P (f (m + n)) <-> P (f n))) => fun H__hyp6 : (hl_chip A P (hl_lam omega f m) = 1 /\ ~ m = hl_NUMERAL hl_zero) => (imp_iff (P (f (m + n))) (hl_chip A P (hl_lam omega f (hl_add m n)) = 1) (P (f n)) (hl_chip A P (hl_lam omega f n) = 1) (iffER (hl_chip A P (hl_lam omega f (hl_add m n)) = 1) (P (f (m + n))) ((((hl_add_compat) (m) Hm (n) Hn) (fun hl__u hl__v => hl_lam omega f (hl_add m n) = f hl__u) ((hl_lam_ap (omega) f) (hl_add m n) (setexp_ap (omega) (omega) (hl_add m) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (m) Hm) (n) Hn))) (fun hl__u hl__v => hl_chip A P (hl_lam omega f (hl_add m n)) = 1 <-> P hl__u) ((hl_chip_iff (A) P) (hl_lam omega f (hl_add m n)) (setexp_ap (omega) (A) (hl_lam omega f) (hl_lam_Pi (omega) (A) f Hfc) (hl_add m n) (setexp_ap (omega) (omega) (hl_add m) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (m) Hm) (n) Hn))))) (iffEL (hl_chip A P (hl_lam omega f (hl_add m n)) = 1) (P (f (m + n))) ((((hl_add_compat) (m) Hm (n) Hn) (fun hl__u hl__v => hl_lam omega f (hl_add m n) = f hl__u) ((hl_lam_ap (omega) f) (hl_add m n) (setexp_ap (omega) (omega) (hl_add m) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (m) Hm) (n) Hn))) (fun hl__u hl__v => hl_chip A P (hl_lam omega f (hl_add m n)) = 1 <-> P hl__u) ((hl_chip_iff (A) P) (hl_lam omega f (hl_add m n)) (setexp_ap (omega) (A) (hl_lam omega f) (hl_lam_Pi (omega) (A) f Hfc) (hl_add m n) (setexp_ap (omega) (omega) (hl_add m) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (m) Hm) (n) Hn))))) (iffER (hl_chip A P (hl_lam omega f n) = 1) (P (f n)) (((hl_lam_ap (omega) f) (n) Hn) (fun hl__u hl__v => hl_chip A P (hl_lam omega f n) = 1 <-> P hl__u) ((hl_chip_iff (A) P) (hl_lam omega f n) (setexp_ap (omega) (A) (hl_lam omega f) (hl_lam_Pi (omega) (A) f Hfc) (n) Hn)))) (iffEL (hl_chip A P (hl_lam omega f n) = 1) (P (f n)) (((hl_lam_ap (omega) f) (n) Hn) (fun hl__u hl__v => hl_chip A P (hl_lam omega f n) = 1 <-> P hl__u) ((hl_chip_iff (A) P) (hl_lam omega f n) (setexp_ap (omega) (A) (hl_lam omega f) (hl_lam_Pi (omega) (A) f Hfc) (n) Hn))))) (H__N ((imp_and_dep (hl_chip A P (hl_lam omega f m) = 1) (P (f m)) (~ m = hl_NUMERAL hl_zero) (~ m = 0) (iffEL (hl_chip A P (hl_lam omega f m) = 1) (P (f m)) (((hl_lam_ap (omega) f) (m) Hm) (fun hl__u hl__v => hl_chip A P (hl_lam omega f m) = 1 <-> P hl__u) ((hl_chip_iff (A) P) (hl_lam omega f m) (setexp_ap (omega) (A) (hl_lam omega f) (hl_lam_Pi (omega) (A) f Hfc) (m) Hm)))) (fun H__and7 : (P (f m)) => (imp_not (m = hl_NUMERAL hl_zero) (m = 0) (imp_eq (m) (m) (0) (hl_NUMERAL hl_zero) (eq_sym_i (m) (m) (fun q H => H)) (eq_sym_i (hl_NUMERAL hl_zero) (0) (eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat)))))) H__hyp6))))))))) H__hyp2))))))) (H__top A HAne))).
Qed.
Theorem ORDER_EXISTENCE_GEN : forall A:set, A <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e omega, f x :e A) -> P (f 0) /\ (forall m n :e omega, P (f m) /\ ~ m = 0 -> (P (f (m + n)) <-> P (f n))) -> exists d :e omega, forall n :e omega, P (f n) <-> divides_nat d n.
exact (ORDER_EXISTENCE_GEN_bridge hlt_ORDER_EXISTENCE_GEN).
Admitted.

// HOL Light: Library/iter.ml:75 / ORDER_EXISTENCE_ITER   (hash md5:ca24a6c945c59e82db8b3403fa801497)
// not bridged: 
Theorem ORDER_EXISTENCE_ITER : forall A:set, forall R0:set -> set -> prop, forall f:set -> set, (forall x :e A, f x :e A) -> forall z :e A, R0 z z /\ ((forall x y :e A, R0 x y -> R0 y x) /\ ((forall x y z0 :e A, R0 x y /\ R0 y z0 -> R0 x z0) /\ (forall x y :e A, R0 x y -> R0 (f x) (f y)))) -> exists d :e omega, forall n :e omega, R0 (iter_fun n f z) z <-> divides_nat d n.
Admitted.

// HOL Light: Library/iter.ml:97 / ORDER_EXISTENCE_CARD   (hash md5:df3a7d765bd87e090cdfa41aef70c409)
// not bridged: 
Theorem ORDER_EXISTENCE_CARD : forall A:set, forall R0 :e Power A :^: A, forall f:set -> set, (forall x :e A, f x :e A) -> forall z :e A, forall k :e omega, finite {R0 (iter_fun n f z) | n :e omega, n :e omega} /\ (finite_cardinality {R0 (iter_fun n f z) | n :e omega, n :e omega} <= k /\ (z :e R0 z /\ ((forall x y :e A, y :e R0 x -> x :e R0 y) /\ ((forall x y z0 :e A, y :e R0 x /\ z0 :e R0 y -> z0 :e R0 x) /\ (forall x y :e A, f y :e R0 (f x) <-> y :e R0 x))))) -> exists d :e omega, 0 < d /\ (d <= k /\ forall n :e omega, z :e R0 (iter_fun n f z) <-> divides_nat d n).
Admitted.

// HOL Light: Library/iter.ml:146 / ORDER_EXISTENCE_FINITE   (hash md5:476dd335351f1753fd4322f8dbfdb7c3)
// not bridged: 
Theorem ORDER_EXISTENCE_FINITE : forall A:set, forall R0 :e Power A :^: A, forall f:set -> set, (forall x :e A, f x :e A) -> forall z :e A, finite {R0 (iter_fun n f z) | n :e omega, n :e omega} /\ (z :e R0 z /\ ((forall x y :e A, y :e R0 x -> x :e R0 y) /\ ((forall x y z0 :e A, y :e R0 x /\ z0 :e R0 y -> z0 :e R0 x) /\ (forall x y :e A, f y :e R0 (f x) <-> y :e R0 x)))) -> exists d :e omega, 0 < d /\ forall n :e omega, z :e R0 (iter_fun n f z) <-> divides_nat d n.
Admitted.

