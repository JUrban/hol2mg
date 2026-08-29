// hol2mg literal model (docs/DESIGN.md §21.4): the primitive interface of the literal
// semantic layer and its model-soundness theorems.  Checked after mglib/native/*.mg.
// Everything else in the literal layer is generated from HOL Light kernel definitions.

// ---- generic subtype machinery for translated type definitions ----
// A HOL type definition with representing carrier A and predicate P (a set function into 2)
// is the subtype {x :e A | P x = 1}; rep is the inclusion, abs maps representatives back and
// sends everything else to some member of the subtype.
Definition hl_subtype : set -> set -> set := fun A P => {x :e A | P x = 1}.
Definition hl_subtype_rep : set -> set -> set := fun A P => fun x :e hl_subtype A P => x.
Definition hl_subtype_abs : set -> set -> set :=
  fun A P => fun x :e A => if x :e hl_subtype A P then x else choose_in (hl_subtype A P) (fun _ => True).

// ---- equality and choice ----
Definition hl_eq : set -> set := fun A => fun x :e A => fun y :e A => if x = y then 1 else 0.
Definition hl_select : set -> set := fun A => fun P :e 2 :^: A => choose_in A (fun x => P x = 1).

// ---- naturals: num = omega ----
Definition hl_zero : set := 0.
Definition hl_SUC : set := fun n :e omega => ordsucc n.

// ---- pairs: prod = setprod ----
Definition hl_pair : set -> set -> set := fun A B => fun x :e A => fun y :e B => (x, y).

// ---- unit type 1 = {0} ----
Definition hl_one : set := 0.

// ---- lists: list A = finseq A ----
Definition hl_NIL : set -> set := fun A => seq_nil.
Definition hl_CONS : set -> set := fun A => fun x :e A => fun l :e finseq A => seq_cons x l.

// ---- options and sums: option A = 1 :+: A, sum A B = A :+: B ----
Definition hl_NONE : set -> set := fun A => Inj0 0.
Definition hl_SOME : set -> set := fun A => fun x :e A => Inj1 x.
Definition hl_INL : set -> set -> set := fun A B => fun x :e A => Inj0 x.
Definition hl_INR : set -> set -> set := fun A B => fun y :e B => Inj1 y.

// ---- reals: real = R ----
Definition hl_real_of_num : set := fun n :e omega => n.
Definition hl_real_neg : set := fun x :e R => - x.
Definition hl_real_add : set := fun x :e R => fun y :e R => x + y.
Definition hl_real_mul : set := fun x :e R => fun y :e R => x * y.
Definition hl_real_le : set := fun x :e R => fun y :e R => if x <= y then 1 else 0.
Definition hl_real_inv : set := fun x :e R => recip_SNo x.
