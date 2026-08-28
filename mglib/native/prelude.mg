// hol2mg native prelude: reviewed, hand-written infrastructure shared by
// generated HOL Light statement modules.  Checked after the God1 signature.
// Theorems here are proved (Qed) or visibly Admitted; nothing is an Axiom.

// Choice on a carrier: a member of A satisfying P when one exists,
// otherwise an arbitrary member of A (the HOL Light behaviour of @x. P x
// when A is nonempty).
Definition choose_in : set -> (set -> prop) -> set :=
  fun A P => if (exists x :e A, P x) then Eps_i (fun x => x :e A /\ P x) else Eps_i (fun x => x :e A).

Theorem choose_in_spec : forall A:set, forall P:set -> prop, (exists x :e A, P x) -> choose_in A P :e A /\ P (choose_in A P).
Admitted.

Theorem choose_in_in : forall A:set, A <> Empty -> forall P:set -> prop, choose_in A P :e A.
Admitted.

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


// closure facts (to be proved)
Theorem minus_nat_omega : forall m n :e omega, minus_nat m n :e omega.
Admitted.
Theorem nat_pred_omega : forall n :e omega, nat_pred n :e omega.
Admitted.
Theorem div_nat_omega : forall m n :e omega, div_nat m n :e omega.
Admitted.
Theorem mod_nat_omega : forall m n :e omega, mod_nat m n :e omega.
Admitted.
Theorem div_mod_nat : forall m n :e omega, n <> 0 -> m = div_nat m n * n + mod_nat m n /\ mod_nat m n < n.
Admitted.

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
Admitted.
Theorem dimindex_ge_1 : forall N:set, 1 <= dimindex N.
Admitted.
Theorem idx_n_equip : forall n :e omega, equip (idx_n n) n.
Admitted.
Theorem dimindex_idx_n : forall n :e omega, 1 <= n -> dimindex (idx_n n) = n.
Admitted.
Theorem idx_idx_n : forall n :e omega, 1 <= n -> idx (idx_n n) = idx_n n.
Admitted.
Theorem dimindex_one : dimindex 1 = 1.
Admitted.

// Concatenation and splitting of vectors (HOL Light pastecart/fstcart/sndcart);
// the index types are passed explicitly because the dimensions depend on them.
Definition pastecart : set -> set -> set -> set -> set :=
  fun M N x y => fun i :e idx_n (dimindex M + dimindex N) => if i <= dimindex M then x i else y (minus_nat i (dimindex M)).
Definition fstcart : set -> set -> set := fun M z => fun i :e idx M => z i.
Definition sndcart : set -> set -> set -> set := fun M N z => fun i :e idx N => z (i + dimindex M).
