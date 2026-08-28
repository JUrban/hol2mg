// hol2mg native finite sequences (the carrier for HOL Light lists).
// A finite sequence over A of length n is the pair (n, f) with f :e A :^: n.
// The pair is needed because a set-function does not determine its domain
// (fun i :e n => 0 is Empty for every n).  Requires prelude.mg.

Definition finseq : set -> set := fun A => Sigma_ n :e omega, A :^: n.
Definition seq_len : set -> set := fun l => l 0.
Definition seq_nth : set -> set -> set := fun l i => l 1 i.
Definition seq_mk : set -> (set -> set) -> set := fun n f => (n, fun i :e n => f i).
Definition seq_nil : set := (0, Empty).
Definition seq_cons : set -> set -> set :=
  fun a l => (ordsucc (seq_len l), fun i :e ordsucc (seq_len l) => if i = 0 then a else seq_nth l (nat_pred i)).
Definition seq_map : (set -> set) -> set -> set := fun f l => (seq_len l, fun i :e seq_len l => f (seq_nth l i)).
Definition seq_map2 : (set -> set -> set) -> set -> set -> set :=
  fun f l m => (seq_len l, fun i :e seq_len l => f (seq_nth l i) (seq_nth m i)).
Definition seq_append : set -> set -> set :=
  fun l m => (seq_len l + seq_len m,
              fun i :e seq_len l + seq_len m => if i :e seq_len l then seq_nth l i else seq_nth m (i + - seq_len l)).
Definition seq_mem : set -> set -> prop := fun a l => exists i :e seq_len l, seq_nth l i = a.
Definition seq_hd : set -> set := fun l => seq_nth l 0.
Definition seq_tl : set -> set := fun l => (nat_pred (seq_len l), fun i :e nat_pred (seq_len l) => seq_nth l (ordsucc i)).
Definition seq_last : set -> set := fun l => seq_nth l (nat_pred (seq_len l)).
Definition seq_butlast : set -> set := fun l => (nat_pred (seq_len l), fun i :e nat_pred (seq_len l) => seq_nth l i).
Definition seq_rev : set -> set := fun l => (seq_len l, fun i :e seq_len l => seq_nth l (seq_len l + - ordsucc i)).
Definition seq_replicate : set -> set -> set := fun n a => (n, fun i :e n => a).
Definition seq_zip : set -> set -> set := fun l m => (seq_len l, fun i :e seq_len l => (seq_nth l i, seq_nth m i)).
Definition seq_all : (set -> prop) -> set -> prop := fun P l => forall i :e seq_len l, P (seq_nth l i).
Definition seq_ex : (set -> prop) -> set -> prop := fun P l => exists i :e seq_len l, P (seq_nth l i).
Definition seq_all2 : (set -> set -> prop) -> set -> set -> prop :=
  fun P l m => seq_len l = seq_len m /\ forall i :e seq_len l, P (seq_nth l i) (seq_nth m i).
Definition seq_pairwise : (set -> set -> prop) -> set -> prop :=
  fun R l => forall i j :e seq_len l, i < j -> R (seq_nth l i) (seq_nth l j).
// right fold: seq_foldr f (x0,...,x_{n-1}) b = f x0 (f x1 (... (f x_{n-1} b)))
Definition seq_foldr : (set -> set -> set) -> set -> set -> set :=
  fun f l b => nat_primrec b (fun i r => f (seq_nth l (seq_len l + - ordsucc i)) r) (seq_len l).
Definition seq_foldr2 : (set -> set -> set -> set) -> set -> set -> set -> set :=
  fun f l m b => nat_primrec b (fun i r => f (seq_nth l (seq_len l + - ordsucc i)) (seq_nth m (seq_len l + - ordsucc i)) r) (seq_len l).
Definition seq_filter : (set -> prop) -> set -> set :=
  fun P l => seq_foldr (fun x acc => if P x then seq_cons x acc else acc) l seq_nil.
Definition seq_set : set -> set := fun l => {seq_nth l i | i :e seq_len l}.
Definition seq_assoc : set -> set -> set := fun a l => seq_hd (seq_filter (fun p => p 0 = a) l) 1.

// Closure, computation and induction (bridge obligations for HOL Light lists; to be proved).
Theorem seq_nil_finseq : forall A:set, seq_nil :e finseq A.
let A.
prove (0,Empty) :e Sigma_ n :e omega, A :^: n.
apply (tuple_2_Sigma omega (fun n => A :^: n) 0 (nat_p_omega 0 nat_0) Empty).
prove Empty :e Pi_ y :e 0, A.
apply (PiI 0 (fun _ => A) Empty).
- let u. assume Hu: u :e Empty. exact (FalseE (EmptyE u Hu) (pair_p u /\ u 0 :e 0)).
- let x. assume Hx: x :e 0. exact (FalseE (EmptyE x Hx) (Empty x :e A)).
Qed.
Theorem seq_cons_finseq : forall A:set, forall a :e A, forall l :e finseq A, seq_cons a l :e finseq A.
Admitted.
Theorem seq_len_omega : forall A:set, forall l :e finseq A, seq_len l :e omega.
let A l. assume Hl: l :e finseq A.
exact (ap0_Sigma omega (fun n => A :^: n) l Hl).
Qed.
Theorem seq_nth_in : forall A:set, forall l :e finseq A, forall i :e seq_len l, seq_nth l i :e A.
let A l. assume Hl: l :e finseq A. let i. assume Hi: i :e seq_len l.
claim L1: proj1 l :e A :^: proj0 l.
{ exact (proj1_Sigma omega (fun n => A :^: n) l Hl). }
claim L2: l 1 :e A :^: l 0.
{ rewrite <- (proj1_ap_1 l). rewrite <- (proj0_ap_0 l). exact L1. }
prove l 1 i :e A.
exact (ap_Pi (l 0) (fun _ => A) (l 1) i L2 Hi).
Qed.
Theorem seq_len_nil : seq_len seq_nil = 0.
exact (tuple_2_0_eq 0 Empty).
Qed.
Theorem seq_len_cons : forall A:set, forall a :e A, forall l :e finseq A, seq_len (seq_cons a l) = ordsucc (seq_len l).
Admitted.
Theorem seq_nth_cons_0 : forall A:set, forall a :e A, forall l :e finseq A, seq_nth (seq_cons a l) 0 = a.
Admitted.
Theorem seq_nth_cons_S : forall A:set, forall a :e A, forall l :e finseq A, forall i :e seq_len l, seq_nth (seq_cons a l) (ordsucc i) = seq_nth l i.
Admitted.
Theorem seq_ext : forall A:set, forall l m :e finseq A, seq_len l = seq_len m -> (forall i :e seq_len l, seq_nth l i = seq_nth m i) -> l = m.
Admitted.
Theorem seq_cases : forall A:set, forall l :e finseq A, l = seq_nil \/ exists a :e A, exists m :e finseq A, l = seq_cons a m.
Admitted.
Theorem seq_induct : forall A:set, forall P:set -> prop, P seq_nil -> (forall a :e A, forall l :e finseq A, P l -> P (seq_cons a l)) -> forall l :e finseq A, P l.
Admitted.
Theorem seq_map_finseq : forall A B:set, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_map f l :e finseq B.
Admitted.
Theorem seq_map_nil : forall f:set -> set, seq_map f seq_nil = seq_nil.
Admitted.
Theorem seq_map_cons : forall A:set, forall f:set -> set, forall a :e A, forall l :e finseq A, seq_map f (seq_cons a l) = seq_cons (f a) (seq_map f l).
Admitted.
Theorem seq_append_finseq : forall A:set, forall l m :e finseq A, seq_append l m :e finseq A.
Admitted.
Theorem seq_append_nil : forall A:set, forall m :e finseq A, seq_append seq_nil m = m.
Admitted.
Theorem seq_append_cons : forall A:set, forall a :e A, forall l m :e finseq A, seq_append (seq_cons a l) m = seq_cons a (seq_append l m).
Admitted.
Theorem seq_rev_finseq : forall A:set, forall l :e finseq A, seq_rev l :e finseq A.
Admitted.
Theorem seq_filter_finseq : forall A:set, forall P:set -> prop, forall l :e finseq A, seq_filter P l :e finseq A.
Admitted.
Theorem seq_replicate_finseq : forall A:set, forall n :e omega, forall a :e A, seq_replicate n a :e finseq A.
Admitted.
Theorem seq_zip_finseq : forall A B:set, forall l :e finseq A, forall m :e finseq B, seq_len l = seq_len m -> seq_zip l m :e finseq (A :*: B).
Admitted.
Theorem seq_tl_finseq : forall A:set, forall l :e finseq A, seq_tl l :e finseq A.
Admitted.
Theorem seq_butlast_finseq : forall A:set, forall l :e finseq A, seq_butlast l :e finseq A.
Admitted.
Theorem seq_mk_finseq : forall A:set, forall n :e omega, forall f:set -> set, (forall i :e n, f i :e A) -> seq_mk n f :e finseq A.
Admitted.
Theorem seq_foldr_nil : forall f:set -> set -> set, forall b:set, seq_foldr f seq_nil b = b.
let f b.
prove nat_primrec b (fun i r => f (seq_nth seq_nil (seq_len seq_nil + - ordsucc i)) r) (seq_len seq_nil) = b.
rewrite seq_len_nil.
exact (nat_primrec_0 b (fun i r => f (seq_nth seq_nil (0 + - ordsucc i)) r)).
Qed.
Theorem seq_foldr_cons : forall A:set, forall f:set -> set -> set, forall a :e A, forall l :e finseq A, forall b:set, seq_foldr f (seq_cons a l) b = f a (seq_foldr f l b).
Admitted.
Theorem finseq_Empty : finseq Empty = {seq_nil}.
Admitted.

// an enumeration of a finite set as a sequence, and folds over finite sets (HOL Light ITSET)
Definition seq_of_set : set -> set :=
  fun s => choose_in (finseq s) (fun l => seq_set l = s /\ seq_len l = finite_cardinality s).
Definition set_foldr : (set -> set -> set) -> set -> set -> set := fun f s b => seq_foldr f (seq_of_set s) b.
