// hol2mg native relations and orders (HOL Light Library/rstc.ml, Library/wo.ml).
// Relations are meta-level predicates R : set -> set -> prop; where HOL Light
// quantifies over a type, the carrier A is an explicit argument.

// closures
Definition RC_rel : (set -> set -> prop) -> set -> set -> prop := fun R x y => R x y \/ x = y.
Definition SC_rel : (set -> set -> prop) -> set -> set -> prop := fun R x y => R x y \/ R y x.
Definition TC_on : set -> (set -> set -> prop) -> set -> set -> prop :=
  fun A R x y => forall P:set -> set -> prop,
    (forall a b :e A, R a b -> P a b) -> (forall a b c :e A, P a b -> P b c -> P a c) -> P x y.
Definition INV_rel : (set -> set -> prop) -> set -> set -> prop := fun R x y => R y x.

// fields and order predicates on a carrier
Definition fld_on : set -> (set -> set -> prop) -> set := fun A R => {x :e A | exists y :e A, R x y \/ R y x}.
Definition qoset_on : set -> (set -> set -> prop) -> prop :=
  fun A l => (forall x :e fld_on A l, l x x) /\ (forall x y z :e A, l x y /\ l y z -> l x z).
Definition poset_on : set -> (set -> set -> prop) -> prop :=
  fun A l => qoset_on A l /\ (forall x y :e A, l x y /\ l y x -> x = y).
Definition toset_on : set -> (set -> set -> prop) -> prop :=
  fun A l => poset_on A l /\ (forall x y :e fld_on A l, l x y \/ l y x).
Definition woset_on : set -> (set -> set -> prop) -> prop :=
  fun A l => toset_on A l /\ (forall s c= fld_on A l, s <> Empty -> exists x :e s, forall y :e s, l x y).
Definition wqoset_on : set -> (set -> set -> prop) -> prop :=
  fun A l => qoset_on A l /\ (forall s c= fld_on A l, exists t c= s, finite t /\ forall y :e s, exists x :e t, l x y).
Definition chain_on : set -> (set -> set -> prop) -> set -> prop := fun A l s => forall x y :e s, l x y \/ l y x.
Definition antichain_on : set -> (set -> set -> prop) -> set -> prop :=
  fun A l s => s c= fld_on A l /\ forall x y :e s, x <> y -> ~ l x y.
Definition strictly_rel : (set -> set -> prop) -> set -> set -> prop := fun R x y => R x y /\ ~ R y x.
Definition properly_rel : (set -> set -> prop) -> set -> set -> prop := fun R x y => R x y /\ x <> y.
Definition inseg_on : set -> (set -> set -> prop) -> (set -> set -> prop) -> prop :=
  fun A l m => forall x y :e A, l x y <-> m x y /\ y :e fld_on A l.
Definition linseg_rel : (set -> set -> prop) -> set -> set -> set -> prop := fun l a x y => l x y /\ properly_rel l y a.
Definition ordinal_on : set -> (set -> set -> prop) -> prop :=
  fun A l => woset_on A l /\ forall x :e fld_on A l, x = choose_in A (fun y => ~ properly_rel l y x).

// n-fold relational composition (HOL Light RELPOW): a path of length n
Definition relpow_on : set -> set -> (set -> set -> prop) -> set -> set -> prop :=
  fun A n R x y => exists s :e A :^: ordsucc n, s 0 = x /\ s n = y /\ forall i :e n, R (s i) (s (ordsucc i)).
