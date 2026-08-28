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

// cardinality of a finite set as a natural number (arbitrary on infinite sets)
Definition card : set -> set := fun X => Eps_i (fun n => n :e omega /\ equip X n).

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
Theorem card_equip : forall X:set, finite X -> equip X (card X) /\ card X :e omega.
Admitted.
