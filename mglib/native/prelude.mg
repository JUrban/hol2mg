// hol2mg native prelude: reviewed, hand-written infrastructure shared by
// generated HOL Light statement modules.  Checked after the God1 signature.
// Theorems here are proved (Qed) or visibly Admitted; nothing is an Axiom.

// Choice on a carrier: a member of A satisfying P when one exists,
// otherwise an arbitrary member of A (the HOL Light behaviour of @x. P x
// when A is nonempty).
Definition choose_in : set -> (set -> prop) -> set :=
  fun A P => if (exists x :e A, P x) then Eps_i (fun x => x :e A /\ P x) else Eps_i (fun x => x :e A).

Theorem choose_in_spec : forall A:set, forall P:set -> prop, (exists x :e A, P x) -> choose_in A P :e A /\ P (choose_in A P).
let A. let P. assume H: exists x :e A, P x.
prove (if (exists x :e A, P x) then Eps_i (fun x => x :e A /\ P x) else Eps_i (fun x => x :e A)) :e A /\ P (if (exists x :e A, P x) then Eps_i (fun x => x :e A /\ P x) else Eps_i (fun x => x :e A)).
rewrite (If_i_1 (exists x :e A, P x) (Eps_i (fun x => x :e A /\ P x)) (Eps_i (fun x => x :e A)) H).
exact (Eps_i_ex (fun x => x :e A /\ P x) H).
Qed.

Theorem choose_in_in : forall A:set, A <> Empty -> forall P:set -> prop, choose_in A P :e A.
let A. assume HA: A <> Empty. let P.
prove (if (exists x :e A, P x) then Eps_i (fun x => x :e A /\ P x) else Eps_i (fun x => x :e A)) :e A.
apply (xm (exists x :e A, P x)).
- assume H: exists x :e A, P x.
  rewrite (If_i_1 (exists x :e A, P x) (Eps_i (fun x => x :e A /\ P x)) (Eps_i (fun x => x :e A)) H).
  exact (andEL (Eps_i (fun x => x :e A /\ P x) :e A) (P (Eps_i (fun x => x :e A /\ P x))) (Eps_i_ex (fun x => x :e A /\ P x) H)).
- assume H: ~ exists x :e A, P x.
  rewrite (If_i_0 (exists x :e A, P x) (Eps_i (fun x => x :e A /\ P x)) (Eps_i (fun x => x :e A)) H).
  claim L: exists x, x :e A.
  { apply (xm (exists x, x :e A)).
    + assume H1: exists x, x :e A. exact H1.
    + assume H1: ~ exists x, x :e A.
      exact (FalseE (HA (Empty_eq A (fun x => fun Hx: x :e A => H1 (fun p:prop => fun Hp: (forall x, x :e A -> p) => Hp x Hx)))) (exists x, x :e A)). }
  exact (Eps_i_ex (fun x => x :e A) L).
Qed.

// Natural-number operations of HOL Light that have no God1 counterpart.
// All are stated on omega using the surreal arithmetic that God1 uses for
// naturals (add_SNo, mul_SNo, minus_SNo, SNoLt, SNoLe).

// truncated subtraction: m - n = 0 when n > m
Definition minus_nat : set -> set -> set := fun m n => if n <= m then m + - n else 0.

// predecessor with PRE 0 = 0
Definition nat_pred : set -> set := fun n => if n = 0 then 0 else n + - 1.

// quotient and remainder with m div 0 = 0 and m mod 0 = m (HOL Light conventions)
Definition div_nat : set -> set -> set :=
  fun m n => if n = 0 then 0 else Eps_i (fun q => q :e omega /\ exists r :e omega, r < n /\ m = q * n + r).
Definition mod_nat : set -> set -> set := fun m n => if n = 0 then m else m + - div_nat m n * n.

Definition even_nat : set -> prop := fun n => exists k :e omega, n = 2 * k.
Definition odd_nat : set -> prop := fun n => exists k :e omega, n = 2 * k + 1.



// nonnegative integers are natural numbers
Theorem int_nonneg_omega : forall x :e int, 0 <= x -> x :e omega.
let x. assume Hx: x :e int. assume H0: 0 <= x.
apply (int_3_cases x Hx (x :e omega)).
- let m. assume Hm: m :e omega. assume Hxm: x = - ordsucc m.
  claim L1: 0 < ordsucc m.
  { exact (ordinal_In_SNoLt (ordsucc m) (nat_p_ordinal (ordsucc m) (nat_ordsucc m (omega_nat_p m Hm))) 0 (nat_0_in_ordsucc m (omega_nat_p m Hm))). }
  claim L3: - ordsucc m < - 0.
  { exact (minus_SNo_Lt_contra 0 (ordsucc m) SNo_0 (omega_SNo (ordsucc m) (omega_ordsucc m Hm)) L1). }
  claim L2: - ordsucc m < 0.
  { rewrite <- minus_SNo_0 at 1. exact L3. }
  claim L4: x < 0. { rewrite Hxm. exact L2. }
  exact (FalseE (SNoLt_irref 0 (SNoLeLt_tra 0 x 0 SNo_0 (int_SNo x Hx) SNo_0 H0 L4)) (x :e omega)).
- assume H: x = 0. rewrite H. exact (nat_p_omega 0 nat_0).
- let m. assume Hm: m :e omega. assume H: x = ordsucc m. rewrite H. exact (omega_ordsucc m Hm).
Qed.


// on omega, membership and the surreal order agree
Theorem omega_In_SNoLt : forall n :e omega, forall i :e n, i < n.
let n. assume Hn: n :e omega. let i. assume Hi: i :e n.
exact (ordinal_In_SNoLt n (nat_p_ordinal n (omega_nat_p n Hn)) i Hi).
Qed.

Theorem omega_SNoLt_In : forall n i :e omega, i < n -> i :e n.
let n. assume Hn: n :e omega. let i. assume Hi: i :e omega. assume H: i < n.
exact (ordinal_SNoLt_In i n (nat_p_ordinal i (omega_nat_p i Hi)) (nat_p_ordinal n (omega_nat_p n Hn)) H).
Qed.

// n - (i+1) is a member of n whenever i is
Theorem minus_nat_in : forall n :e omega, forall i :e n, n + - ordsucc i :e n.
let n. assume Hn: n :e omega. let i. assume Hi: i :e n.
claim Hi': i :e omega. { exact (nat_p_omega i (nat_p_trans n (omega_nat_p n Hn) i Hi)). }
claim Hsi: ordsucc i :e omega. { exact (omega_ordsucc i Hi'). }
claim Hle: ordsucc i <= n.
{ apply (omega_Subq_SNoLe (ordsucc i) Hsi n Hn).
  exact (nat_ordsucc_trans n (omega_nat_p n Hn) (ordsucc i) (nat_ordsucc_in_ordsucc n (omega_nat_p n Hn) i Hi)). }
claim Hom: n + - ordsucc i :e omega.
{ apply (int_nonneg_omega (n + - ordsucc i)).
  - exact (int_add_SNo n (Subq_omega_int n Hn) (- ordsucc i) (int_minus_SNo_omega (ordsucc i) Hsi)).
  - claim L: 0 + ordsucc i <= n. { rewrite (add_SNo_0L (ordsucc i) (omega_SNo (ordsucc i) Hsi)). exact Hle. }
    exact (add_SNo_minus_Le2b n (ordsucc i) 0 (omega_SNo n Hn) (omega_SNo (ordsucc i) Hsi) SNo_0 L). }
apply (omega_SNoLt_In n Hn (n + - ordsucc i) Hom).
prove n + - ordsucc i < n.
apply (add_SNo_minus_Lt1b n (ordsucc i) n (omega_SNo n Hn) (omega_SNo (ordsucc i) Hsi) (omega_SNo n Hn)).
prove n < n + ordsucc i.
claim L0: 0 < ordsucc i. { exact (omega_In_SNoLt (ordsucc i) Hsi 0 (nat_0_in_ordsucc i (omega_nat_p i Hi'))). }
claim L1: n + 0 < n + ordsucc i. { exact (add_SNo_Lt2 n 0 (ordsucc i) (omega_SNo n Hn) SNo_0 (omega_SNo (ordsucc i) Hsi) L0). }
rewrite <- (add_SNo_0R n (omega_SNo n Hn)) at 1.
exact L1.
Qed.

// i - a is a member of b when i is in a + b but not in a
Theorem minus_shift_in : forall a b :e omega, forall i :e a + b, i /:e a -> i + - a :e b.
let a. assume Ha: a :e omega. let b. assume Hb: b :e omega. let i. assume Hi: i :e a + b. assume Hia: i /:e a.
claim Hab: a + b :e omega. { exact (add_SNo_In_omega a Ha b Hb). }
claim Hi': i :e omega. { exact (nat_p_omega i (nat_p_trans (a + b) (omega_nat_p (a + b) Hab) i Hi)). }
claim Hai: a <= i.
{ apply (SNoLtLe_or i a (omega_SNo i Hi') (omega_SNo a Ha)).
  - assume H: i < a. exact (FalseE (Hia (omega_SNoLt_In a Ha i Hi' H)) (a <= i)).
  - assume H: a <= i. exact H. }
claim Hom: i + - a :e omega.
{ apply (int_nonneg_omega (i + - a)).
  - exact (int_add_SNo i (Subq_omega_int i Hi') (- a) (int_minus_SNo_omega a Ha)).
  - claim L: 0 + a <= i. { rewrite (add_SNo_0L a (omega_SNo a Ha)). exact Hai. }
    exact (add_SNo_minus_Le2b i a 0 (omega_SNo i Hi') (omega_SNo a Ha) SNo_0 L). }
apply (omega_SNoLt_In b Hb (i + - a) Hom).
apply (add_SNo_minus_Lt1b i a b (omega_SNo i Hi') (omega_SNo a Ha) (omega_SNo b Hb)).
prove i < b + a.
rewrite (add_SNo_com b a (omega_SNo b Hb) (omega_SNo a Ha)).
exact (omega_In_SNoLt (a + b) Hab i Hi).
Qed.

// closure facts (to be proved)
Theorem minus_nat_omega : forall m n :e omega, minus_nat m n :e omega.
let m. assume Hm: m :e omega. let n. assume Hn: n :e omega.
prove (if n <= m then m + - n else 0) :e omega.
apply (xm (n <= m)).
- assume H: n <= m. rewrite (If_i_1 (n <= m) (m + - n) 0 H).
  apply (int_nonneg_omega (m + - n)).
  + exact (int_add_SNo m (Subq_omega_int m Hm) (- n) (int_minus_SNo_omega n Hn)).
  + claim L: 0 + n <= m. { rewrite (add_SNo_0L n (omega_SNo n Hn)). exact H. }
    exact (add_SNo_minus_Le2b m n 0 (omega_SNo m Hm) (omega_SNo n Hn) SNo_0 L).
- assume H: ~ (n <= m). rewrite (If_i_0 (n <= m) (m + - n) 0 H). exact (nat_p_omega 0 nat_0).
Qed.
Theorem nat_pred_omega : forall n :e omega, nat_pred n :e omega.
let n. assume Hn: n :e omega.
apply (nat_inv n (omega_nat_p n Hn)).
- assume H0: n = 0. rewrite H0.
  prove (if 0 = 0 then 0 else 0 + - 1) :e omega.
  rewrite (If_i_1 (0 = 0) 0 (0 + - 1) (fun q H => H)). exact (nat_p_omega 0 nat_0).
- assume H1: exists x, nat_p x /\ n = ordsucc x.
  apply (exandE_i nat_p (fun x => n = ordsucc x) H1).
  let x. assume Hx: nat_p x. assume Hnx: n = ordsucc x.
  rewrite Hnx.
  prove (if ordsucc x = 0 then 0 else ordsucc x + - 1) :e omega.
  rewrite (If_i_0 (ordsucc x = 0) 0 (ordsucc x + - 1) (neq_ordsucc_0 x)).
  claim L1: ordsucc x + - 1 = x.
  { rewrite <- (add_SNo_1_ordsucc x (nat_p_omega x Hx)) at 1. exact (add_SNo_minus_R2 x 1 (nat_p_SNo x Hx) SNo_1). }
  rewrite L1. exact (nat_p_omega x Hx).
Qed.
Theorem div_nat_omega : forall m n :e omega, div_nat m n :e omega.
Admitted.
Theorem mod_nat_omega : forall m n :e omega, mod_nat m n :e omega.
Admitted.
Theorem div_mod_nat : forall m n :e omega, n <> 0 -> m = div_nat m n * n + mod_nat m n /\ mod_nat m n < n.
Admitted.


// members of the predecessor lift to the successor
Theorem nat_pred_succ_in : forall n:set, nat_p n -> forall i :e nat_pred n, ordsucc i :e n.
let n. assume Hn: nat_p n.
apply (nat_inv n Hn).
- assume H0: n = 0. rewrite H0.
  prove forall i :e nat_pred 0, ordsucc i :e 0.
  prove forall i :e (if 0 = 0 then 0 else 0 + - 1), ordsucc i :e 0.
  rewrite (If_i_1 (0 = 0) 0 (0 + - 1) (fun q H => H)).
  let i. assume Hi: i :e 0. exact (FalseE (EmptyE i Hi) (ordsucc i :e 0)).
- assume H1: exists x, nat_p x /\ n = ordsucc x.
  apply (exandE_i nat_p (fun x => n = ordsucc x) H1).
  let x. assume Hx: nat_p x. assume Hnx: n = ordsucc x.
  rewrite Hnx.
  prove forall i :e (if ordsucc x = 0 then 0 else ordsucc x + - 1), ordsucc i :e ordsucc x.
  rewrite (If_i_0 (ordsucc x = 0) 0 (ordsucc x + - 1) (neq_ordsucc_0 x)).
  claim L1: ordsucc x + - 1 = x.
  { rewrite <- (add_SNo_1_ordsucc x (nat_p_omega x Hx)) at 1. exact (add_SNo_minus_R2 x 1 (nat_p_SNo x Hx) SNo_1). }
  rewrite L1.
  let i. assume Hi: i :e x. exact (nat_ordsucc_in_ordsucc x Hx i Hi).
Qed.

// Integer division and remainder with HOL Light's conventions:
// x div y rounds toward negative infinity, rem is nonnegative for y <> 0,
// and both are 0 when y = 0.
Definition div_int : set -> set -> set :=
  fun x y => if y = 0 then 0 else Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r).
Definition rem_int : set -> set -> set := fun x y => if y = 0 then 0 else x + - div_int x y * y.

// The neutral element of a binary operation on a carrier (HOL Light neutral).
Definition neutral_of : set -> (set -> set -> set) -> set :=
  fun A op => choose_in A (fun e => forall x :e A, op e x = x /\ op x e = x).

// Support-based finite iteration (HOL Light iterate): fold op over the
// elements of s at which f differs from the neutral element, if finitely
// many; otherwise the neutral element.
Definition iterate_op : set -> (set -> set -> set) -> set -> (set -> set) -> set :=
  fun A op s f =>
    if finite {x :e s | f x <> neutral_of A op}
    then group_word_product A op (fun i => f (finite_enumeration {x :e s | f x <> neutral_of A op} i))
           (finite_cardinality {x :e s | f x <> neutral_of A op})
    else neutral_of A op.

// Finite sums and products of surreal numbers (HOL Light sum/nsum/product/nproduct).
Definition finsum : set -> (set -> set) -> set :=
  fun s f => if finite {x :e s | f x <> 0}
             then ring_finite_sum R add_SNo {x :e s | f x <> 0} f else 0.
Definition finprod : set -> (set -> set) -> set :=
  fun s f => if finite {x :e s | f x <> 1}
             then group_word_product R mul_SNo (fun i => f (finite_enumeration {x :e s | f x <> 1} i))
                    (finite_cardinality {x :e s | f x <> 1}) else 1.

Theorem finsum_R : forall s:set, forall f:set -> set, (forall x :e s, f x :e R) -> finsum s f :e R.
Admitted.
Theorem finsum_omega : forall s:set, forall f:set -> set, (forall x :e s, f x :e omega) -> finsum s f :e omega.
Admitted.
Theorem finprod_R : forall s:set, forall f:set -> set, (forall x :e s, f x :e R) -> finprod s f :e R.
Admitted.
Theorem finprod_omega : forall s:set, forall f:set -> set, (forall x :e s, f x :e omega) -> finprod s f :e omega.
Admitted.

// gcd and lcm on integers (HOL Light int_gcd/num_gcd take a pair).
Definition gcd_int : set -> set -> set :=
  fun a b => if a = 0 /\ b = 0 then 0 else choose_in int (fun d => 0 <= d /\ gcd_reln a b d).
Definition lcm_int : set -> set -> set :=
  fun a b => if a = 0 \/ b = 0 then 0 else abs_SNo (a * b) :/: gcd_int a b.

// real polynomial functions (HOL Light polynomial_function)
Definition polynomial_function_R : (set -> set) -> prop :=
  fun p => exists m :e omega, exists c:set -> set, (forall i :e ordsucc m, c i :e R) /\ forall x :e R, p x = finsum (ordsucc m) (fun i => c i * x ^ i).

// Finite index types of HOL Light (cart.ml).  An index type N becomes a set
// parameter; its dimension is its cardinality when finite and 1 otherwise,
// and vectors A^N are functions on the 1-based index set idx N.
Definition dimindex : set -> set := fun N => if finite N then finite_cardinality N else 1.
Definition idx_n : set -> set := fun n => {i :e omega | 1 <= i /\ i <= n}.
Definition idx : set -> set := fun N => idx_n (dimindex N).

Theorem dimindex_omega : forall N:set, dimindex N :e omega.
let N.
prove (if finite N then finite_cardinality N else 1) :e omega.
apply (xm (finite N)).
- assume H1: finite N.
  rewrite (If_i_1 (finite N) (finite_cardinality N) 1 H1).
  exact (andEL (finite_cardinality N :e omega) (equip N (finite_cardinality N)) (god1_finite_cardinality_specification N H1)).
- assume H2: ~ finite N.
  rewrite (If_i_0 (finite N) (finite_cardinality N) 1 H2).
  exact (nat_p_omega 1 nat_1).
Qed.
Theorem dimindex_ge_1 : forall N:set, N <> Empty -> 1 <= dimindex N.
Admitted.
Theorem idx_n_equip : forall n :e omega, equip (idx_n n) n.
Admitted.
Theorem dimindex_idx_n : forall n :e omega, dimindex (idx_n n) = n.
Admitted.
Theorem idx_idx_n : forall n :e omega, idx (idx_n n) = idx_n n.
Admitted.
Theorem dimindex_one : dimindex 1 = 1.
prove (if finite 1 then finite_cardinality 1 else 1) = 1.
rewrite (If_i_1 (finite 1) (finite_cardinality 1) 1 (nat_finite 1 nat_1)).
exact (god1_finite_cardinality_natural 1 (nat_p_omega 1 nat_1)).
Qed.

// Concatenation and splitting of vectors (HOL Light pastecart/fstcart/sndcart);
// the index types are passed explicitly because the dimensions depend on them.
Definition pastecart : set -> set -> set -> set -> set :=
  fun M N x y => fun i :e idx_n (dimindex M + dimindex N) => if i <= dimindex M then x i else y (minus_nat i (dimindex M)).
Definition fstcart : set -> set -> set := fun M z => fun i :e idx M => z i.
Definition sndcart : set -> set -> set -> set := fun M N z => fun i :e idx N => z (i + dimindex M).

// floor of a real number as the integer n with n <= x < n + 1
Definition floor_R : set -> set := fun x => choose_in int (fun n => n <= x /\ x < n + 1).
Theorem floor_R_int : forall x :e R, floor_R x :e int /\ floor_R x <= x /\ x < floor_R x + 1.
Admitted.

// iteration of a function (HOL Light ITER n f x = f^n x)
Definition iter_fun : set -> (set -> set) -> set -> set := fun n f x => nat_primrec x (fun _ r => f r) n.

// number theory (HOL Light Library/prime.ml, pocklington.ml)
// multiplicity of p in n (0 when p <= 1 or n = 0)
Definition prime_index : set -> set -> set :=
  fun p n => if p <= 1 \/ n = 0 then 0 else finite_cardinality {j :e omega | 1 <= j /\ divides_nat (p ^ j) n}.
// Euler's totient
Definition totient : set -> set := fun n => finite_cardinality {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1}.
// modular inverse with the HOL Light conventions (1 when n <= 1)
Definition inverse_mod : set -> set -> set :=
  fun n x => if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2).
// multiplicative order of a modulo n: the d with (a^k = 1 mod n <-> d | k)
Definition mult_order : set -> set -> set :=
  fun n a => choose_in omega (fun d => forall k :e omega, (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) <-> divides_nat d k).
