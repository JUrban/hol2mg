// hol2mg literal statements (private): shard realax of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: realax.ml:65 / DIST_LZERO   (hash md5:04661d2bb3851b4d752e8a6cdab98b3f)
Theorem hlt_DIST_LZERO : forall n :e omega, hl_dist (hl_pair omega omega (hl_NUMERAL hl_zero) n) = n.
Admitted.

// HOL Light: realax.ml:69 / DIST_RZERO   (hash md5:6fbe87b28c4b5f3382719518440c5418)
Theorem hlt_DIST_RZERO : forall n :e omega, hl_dist (hl_pair omega omega n (hl_NUMERAL hl_zero)) = n.
Admitted.

// HOL Light: realax.ml:77 / DIST_LADD   (hash md5:1e36b83324036d175e4172b3dac8d39d)
Theorem hlt_DIST_LADD : forall m p n :e omega, hl_dist (hl_pair omega omega (hl_add m n) (hl_add m p)) = hl_dist (hl_pair omega omega n p).
Admitted.

// HOL Light: realax.ml:81 / DIST_RADD   (hash md5:9c6800d939e5f71627a4519e2f5ce9fd)
Theorem hlt_DIST_RADD : forall m p n :e omega, hl_dist (hl_pair omega omega (hl_add m p) (hl_add n p)) = hl_dist (hl_pair omega omega m n).
Admitted.

// HOL Light: realax.ml:85 / DIST_LADD_0   (hash md5:1bc36ce203bd5401ca8151c1d92e2f3d)
Theorem hlt_DIST_LADD_0 : forall m n :e omega, hl_dist (hl_pair omega omega (hl_add m n) m) = n.
Admitted.

// HOL Light: realax.ml:89 / DIST_RADD_0   (hash md5:35e6e9b188b102651488fd402c953e42)
Theorem hlt_DIST_RADD_0 : forall m n :e omega, hl_dist (hl_pair omega omega m (hl_add m n)) = n.
Admitted.

// HOL Light: realax.ml:93 / DIST_LMUL   (hash md5:b29e6efd1b68ac3fd8ebbd2ac019738f)
Theorem hlt_DIST_LMUL : forall m n p :e omega, hl_mul m (hl_dist (hl_pair omega omega n p)) = hl_dist (hl_pair omega omega (hl_mul m n) (hl_mul m p)).
Admitted.

// HOL Light: realax.ml:97 / DIST_RMUL   (hash md5:04b3e12554cf65d70f7e24054a7fcbf1)
Theorem hlt_DIST_RMUL : forall m n p :e omega, hl_mul (hl_dist (hl_pair omega omega m n)) p = hl_dist (hl_pair omega omega (hl_mul m p) (hl_mul n p)).
Admitted.

// HOL Light: realax.ml:109 / DIST_ELIM_THM   (hash md5:6832c76e6a4de30364f18cbb1dfebe30)
Theorem hlt_DIST_ELIM_THM : forall P :e 2 :^: omega, forall x y :e omega, P (hl_dist (hl_pair omega omega x y)) = 1 <-> forall d :e omega, (x = hl_add y d -> P d = 1) /\ (y = hl_add x d -> P d = 1).
Admitted.

// HOL Light: realax.ml:125 / DIST_ADD2   (hash md5:6da136930bd01b6b36d6cfd1d4d5b25d)
Theorem hlt_DIST_ADD2 : forall m n p q :e omega, hl_le (hl_dist (hl_pair omega omega (hl_add m n) (hl_add p q))) (hl_add (hl_dist (hl_pair omega omega m p)) (hl_dist (hl_pair omega omega n q))) = 1.
Admitted.

// HOL Light: realax.ml:125 / DIST_ADD2_REV   (hash md5:9bb675936acbadd455253ed570bd70bc)
Theorem hlt_DIST_ADD2_REV : forall m n p q :e omega, hl_le (hl_dist (hl_pair omega omega m p)) (hl_add (hl_dist (hl_pair omega omega (hl_add m n) (hl_add p q))) (hl_dist (hl_pair omega omega n q))) = 1.
Admitted.

// HOL Light: realax.ml:125 / DIST_ADDBOUND   (hash md5:290b0b7d002de8b3e690b7e4e70c2288)
Theorem hlt_DIST_ADDBOUND : forall m n :e omega, hl_le (hl_dist (hl_pair omega omega m n)) (hl_add m n) = 1.
Admitted.

// HOL Light: realax.ml:125 / DIST_LE_CASES   (hash md5:2cb461bb1082d0372a4bdc4a052a0d39)
Theorem hlt_DIST_LE_CASES : forall m n p :e omega, hl_le (hl_dist (hl_pair omega omega m n)) p = 1 <-> hl_le m (hl_add n p) = 1 /\ hl_le n (hl_add m p) = 1.
Admitted.

// HOL Light: realax.ml:161 / DIST_TRIANGLES_LE   (hash md5:36d4c10eb2822f3300d5487766dcf2ec)
Theorem hlt_DIST_TRIANGLES_LE : forall m n p q r s :e omega, hl_le (hl_dist (hl_pair omega omega m n)) r = 1 /\ hl_le (hl_dist (hl_pair omega omega p q)) s = 1 -> hl_le (hl_dist (hl_pair omega omega m p)) (hl_add (hl_dist (hl_pair omega omega n q)) (hl_add r s)) = 1.
Admitted.

// HOL Light: realax.ml:176 / BOUNDS_LINEAR   (hash md5:c057c0f22cb183ad0dbcced755e63d25)
Theorem hlt_BOUNDS_LINEAR : forall A B C :e omega, (forall n :e omega, hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) <-> hl_le A B = 1.
Admitted.

// HOL Light: realax.ml:188 / BOUNDS_LINEAR_0   (hash md5:5ad77f70c8d16293232ac47479307650)
Theorem hlt_BOUNDS_LINEAR_0 : forall A B :e omega, (forall n :e omega, hl_le (hl_mul A n) B = 1) <-> A = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: realax.ml:193 / BOUNDS_DIVIDED   (hash md5:97deb79f6cab1005e729ef8d1e0fde97)
Theorem hlt_BOUNDS_DIVIDED : forall P :e omega :^: omega, (exists B :e omega, forall n :e omega, hl_le (P n) B = 1) <-> exists A B :e omega, forall n :e omega, hl_le (hl_mul n (P n)) (hl_add (hl_mul A n) B) = 1.
Admitted.

// HOL Light: realax.ml:216 / BOUNDS_NOTZERO   (hash md5:564b112172498c8cd64028b48e5452b6)
Theorem hlt_BOUNDS_NOTZERO : forall P :e omega :^: omega :^: omega, forall A B :e omega, P (hl_NUMERAL hl_zero) (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero /\ (forall m n :e omega, hl_le (P m n) (hl_add (hl_mul A (hl_add m n)) B) = 1) -> exists B1 :e omega, forall m n :e omega, hl_le (P m n) (hl_mul B1 (hl_add m n)) = 1.
Admitted.

// HOL Light: realax.ml:227 / BOUNDS_IGNORE   (hash md5:c72829573494699d8b8ce0be93ab42a5)
Theorem hlt_BOUNDS_IGNORE : forall P Q :e omega :^: omega, (exists B :e omega, forall i :e omega, hl_le (P i) (hl_add (Q i) B) = 1) <-> exists B N :e omega, forall i :e omega, hl_le N i = 1 -> hl_le (P i) (hl_add (Q i) B) = 1.
Admitted.

// HOL Light: realax.ml:253 / is_nadd   (hash md5:4dbe2f4e5cb83415bee16240d25906fb)
Theorem hlt_is_nadd : forall x :e omega :^: omega, hl_is_nadd x = 1 <-> exists B :e omega, forall m n :e omega, hl_le (hl_dist (hl_pair omega omega (hl_mul m (x n)) (hl_mul n (x m)))) (hl_mul B (hl_add m n)) = 1.
Admitted.

// HOL Light: realax.ml:256 / is_nadd_0   (hash md5:16c1676967ceed1c66eeccd77dfa1cfa)
Theorem hlt_is_nadd_0 : hl_is_nadd (fun n :e omega => hl_NUMERAL hl_zero) = 1.
Admitted.

// HOL Light: realax.ml:1782 / real_sub   (hash md5:4a314d6ac46d393a0829c387e4212582)
Theorem hlt_real_sub : forall x y :e R, hl_real_sub x y = hl_real_add x (hl_real_neg y).
Admitted.

// HOL Light: realax.ml:1785 / real_lt   (hash md5:93a3a1e8d142b40e99dd3655980cdbc1)
Theorem hlt_real_lt : forall y x :e R, hl_real_lt x y = 1 <-> ~ hl_real_le y x = 1.
Admitted.

// HOL Light: realax.ml:1788 / real_ge   (hash md5:6da252bdb6156ab67419ba3c8372a3d3)
Theorem hlt_real_ge : forall y x :e R, hl_real_ge x y = 1 <-> hl_real_le y x = 1.
Admitted.

// HOL Light: realax.ml:1791 / real_gt   (hash md5:5f96069132d1c942b6fde02171b97613)
Theorem hlt_real_gt : forall y x :e R, hl_real_gt x y = 1 <-> hl_real_lt y x = 1.
Admitted.

// HOL Light: realax.ml:1794 / real_abs   (hash md5:959e0be66162db5443361d9557a2d2cb)
Theorem hlt_real_abs : forall x :e R, hl_real_abs x = hl_COND R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) x (hl_real_neg x).
Admitted.

// HOL Light: realax.ml:1797 / real_pow   (hash md5:ea2ffbd1f3fd55a4f9075bedca1a4ab1)
Theorem hlt_real_pow : forall x :e R, hl_real_pow x (hl_NUMERAL hl_zero) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall n :e omega, hl_real_pow x (hl_SUC n) = hl_real_mul x (hl_real_pow x n).
Admitted.

// HOL Light: realax.ml:1801 / real_div   (hash md5:ad6d79fef4b7aa275eff6be876bf8ab5)
Theorem hlt_real_div : forall x y :e R, hl_real_div x y = hl_real_mul x (hl_real_inv y).
Admitted.

// HOL Light: realax.ml:1804 / real_max   (hash md5:ff1873e78d4b7f77582ddd7455494247)
Theorem hlt_real_max : forall n m :e R, hl_real_max m n = hl_COND R (hl_real_le m n) n m.
Admitted.

// HOL Light: realax.ml:1807 / real_min   (hash md5:0635a4e371255e7eb6948729796d63a8)
Theorem hlt_real_min : forall m n :e R, hl_real_min m n = hl_COND R (hl_real_le m n) m n.
Admitted.

// HOL Light: realax.ml:1862 / REAL_COMPLETE_SOMEPOS   (hash md5:6c0aaa2e98058d204e2ffe9a68c78fa6)
Theorem hlt_REAL_COMPLETE_SOMEPOS : forall P :e 2 :^: R, (exists x :e R, P x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) /\ (exists M :e R, forall x :e R, P x = 1 -> hl_real_le x M = 1) -> exists M :e R, (forall x :e R, P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1.
Admitted.

// HOL Light: realax.ml:1908 / REAL_COMPLETE   (hash md5:ed89d1373d628a31ea8fceb7aa11825a)
Theorem hlt_REAL_COMPLETE : forall P :e 2 :^: R, (exists x :e R, P x = 1) /\ (exists M :e R, forall x :e R, P x = 1 -> hl_real_le x M = 1) -> exists M :e R, (forall x :e R, P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1.
Admitted.

