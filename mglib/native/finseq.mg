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


// the set-lambda over the empty domain is the empty set
Theorem lam_0 : forall F:set -> set, (fun i :e 0 => F i) = Empty.
let F. apply Empty_eq. let z. assume Hz: z :e (fun i :e 0 => F i).
apply (exandE_i (fun i => i :e 0) (fun i => exists y :e F i, z = setsum i y) (lamE 0 F z Hz)).
let i. assume Hi: i :e 0. assume _. exact (EmptyE i Hi).
Qed.




// a finite sequence is the pair of its length and its function part
Theorem seq_fun_in : forall A:set, forall l :e finseq A, l 1 :e A :^: seq_len l.
let A l. assume Hl: l :e finseq A.
claim L1: proj1 l :e A :^: proj0 l.
{ exact (proj1_Sigma omega (fun n => A :^: n) l Hl). }
prove l 1 :e A :^: l 0.
rewrite <- (proj1_ap_1 l). rewrite <- (proj0_ap_0 l). exact L1.
Qed.

Theorem seq_eta : forall A:set, forall l :e finseq A, (seq_len l, fun i :e seq_len l => seq_nth l i) = l.
let A l. assume Hl: l :e finseq A.
prove (l 0, fun i :e l 0 => l 1 i) = l.
rewrite (Pi_eta (l 0) (fun _ => A) (l 1) (seq_fun_in A l Hl)).
exact (tuple_Sigma_eta omega (fun n => A :^: n) l Hl).
Qed.

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
Theorem seq_cons_finseq : forall A:set, forall a :e A, forall l :e finseq A, seq_cons a l :e finseq A.
let A a. assume Ha. let l. assume Hl.
claim Ln: nat_p (seq_len l).
{ exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
prove (ordsucc (seq_len l), fun i :e ordsucc (seq_len l) => if i = 0 then a else seq_nth l (nat_pred i)) :e Sigma_ n :e omega, A :^: n.
apply (tuple_2_Sigma omega (fun n => A :^: n) (ordsucc (seq_len l)) (omega_ordsucc (seq_len l) (seq_len_omega A l Hl))).
prove (fun i :e ordsucc (seq_len l) => if i = 0 then a else seq_nth l (nat_pred i)) :e Pi_ y :e ordsucc (seq_len l), A.
apply (lam_Pi (ordsucc (seq_len l)) (fun _ => A) (fun i => if i = 0 then a else seq_nth l (nat_pred i))).
let i. assume Hi: i :e ordsucc (seq_len l).
prove (if i = 0 then a else seq_nth l (nat_pred i)) :e A.
apply (xm (i = 0)).
- assume H0: i = 0. rewrite (If_i_1 (i = 0) a (seq_nth l (nat_pred i)) H0). exact Ha.
- assume H0: ~ (i = 0). rewrite (If_i_0 (i = 0) a (seq_nth l (nat_pred i)) H0).
  exact (seq_nth_in A l Hl (nat_pred i) (nat_pred_in (seq_len l) Ln i Hi H0)).
Qed.
Theorem seq_len_cons : forall A:set, forall a :e A, forall l :e finseq A, seq_len (seq_cons a l) = ordsucc (seq_len l).
let A a. assume Ha. let l. assume Hl.
exact (tuple_2_0_eq (ordsucc (seq_len l)) (fun i :e ordsucc (seq_len l) => if i = 0 then a else seq_nth l (nat_pred i))).
Qed.
Theorem seq_nth_cons_0 : forall A:set, forall a :e A, forall l :e finseq A, seq_nth (seq_cons a l) 0 = a.
let A a. assume Ha. let l. assume Hl.
set F := fun i :e ordsucc (seq_len l) => if i = 0 then a else seq_nth l (nat_pred i).
claim L0: 0 :e ordsucc (seq_len l).
{ exact (nat_0_in_ordsucc (seq_len l) (omega_nat_p (seq_len l) (seq_len_omega A l Hl))). }
claim L1: (ordsucc (seq_len l), F) 1 0 = F 0.
{ rewrite (tuple_2_1_eq (ordsucc (seq_len l)) F). exact (fun q H => H). }
claim L2: F 0 = (if 0 = 0 then a else seq_nth l (nat_pred 0)).
{ exact (beta (ordsucc (seq_len l)) (fun i => if i = 0 then a else seq_nth l (nat_pred i)) 0 L0). }
claim L3: (if 0 = 0 then a else seq_nth l (nat_pred 0)) = a.
{ exact (If_i_1 (0 = 0) a (seq_nth l (nat_pred 0)) (fun q H => H)). }
exact (eq_trans ((ordsucc (seq_len l), F) 1 0) (F 0) a L1 (eq_trans (F 0) (if 0 = 0 then a else seq_nth l (nat_pred 0)) a L2 L3)).
Qed.
Theorem seq_nth_cons_S : forall A:set, forall a :e A, forall l :e finseq A, forall i :e seq_len l, seq_nth (seq_cons a l) (ordsucc i) = seq_nth l i.
let A a. assume Ha. let l. assume Hl. let i. assume Hi: i :e seq_len l.
set F := fun i :e ordsucc (seq_len l) => if i = 0 then a else seq_nth l (nat_pred i).
claim Ln: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
claim Hi2: nat_p i. { exact (nat_p_trans (seq_len l) Ln i Hi). }
claim Hi': ordsucc i :e ordsucc (seq_len l). { exact (nat_ordsucc_in_ordsucc (seq_len l) Ln i Hi). }
claim L1: (ordsucc (seq_len l), F) 1 (ordsucc i) = F (ordsucc i).
{ rewrite (tuple_2_1_eq (ordsucc (seq_len l)) F). exact (fun q H => H). }
claim L2: F (ordsucc i) = (if ordsucc i = 0 then a else seq_nth l (nat_pred (ordsucc i))).
{ exact (beta (ordsucc (seq_len l)) (fun i => if i = 0 then a else seq_nth l (nat_pred i)) (ordsucc i) Hi'). }
claim L3: (if ordsucc i = 0 then a else seq_nth l (nat_pred (ordsucc i))) = seq_nth l (nat_pred (ordsucc i)).
{ exact (If_i_0 (ordsucc i = 0) a (seq_nth l (nat_pred (ordsucc i))) (neq_ordsucc_0 i)). }
claim L4: nat_pred (ordsucc i) = i.
{ prove (if ordsucc i = 0 then 0 else ordsucc i + - 1) = i.
  rewrite (If_i_0 (ordsucc i = 0) 0 (ordsucc i + - 1) (neq_ordsucc_0 i)).
  rewrite <- (add_SNo_1_ordsucc i (nat_p_omega i Hi2)) at 1.
  exact (add_SNo_minus_R2 i 1 (nat_p_SNo i Hi2) SNo_1). }
claim L5: seq_nth l (nat_pred (ordsucc i)) = seq_nth l i.
{ rewrite L4. exact (fun q H => H). }
exact (eq_trans ((ordsucc (seq_len l), F) 1 (ordsucc i)) (F (ordsucc i)) (seq_nth l i) L1 (eq_trans (F (ordsucc i)) (if ordsucc i = 0 then a else seq_nth l (nat_pred (ordsucc i))) (seq_nth l i) L2 (eq_trans (if ordsucc i = 0 then a else seq_nth l (nat_pred (ordsucc i))) (seq_nth l (nat_pred (ordsucc i))) (seq_nth l i) L3 L5))).
Qed.
Theorem seq_ext : forall A:set, forall l m :e finseq A, seq_len l = seq_len m -> (forall i :e seq_len l, seq_nth l i = seq_nth m i) -> l = m.
let A l. assume Hl: l :e finseq A. let m. assume Hm: m :e finseq A.
assume H1: seq_len l = seq_len m. assume H2: forall i :e seq_len l, seq_nth l i = seq_nth m i.
claim L0: l = (seq_len m, fun i :e seq_len m => seq_nth l i).
{ rewrite <- H1. exact (eq_sym (seq_len l, fun i :e seq_len l => seq_nth l i) l (seq_eta A l Hl)). }
claim HF: (fun i :e seq_len m => seq_nth l i) :e Pi_ y :e seq_len m, A.
{ apply (lam_Pi (seq_len m) (fun _ => A) (fun i => seq_nth l i)).
  let i. assume Hi2: i :e seq_len m.
  claim Hi: i :e seq_len l. { rewrite H1. exact Hi2. }
  exact (seq_nth_in A l Hl i Hi). }
claim HG: (fun i :e seq_len m => seq_nth m i) :e Pi_ y :e seq_len m, A.
{ apply (lam_Pi (seq_len m) (fun _ => A) (fun i => seq_nth m i)).
  let i. assume Hi2: i :e seq_len m. exact (seq_nth_in A m Hm i Hi2). }
claim L1: (fun i :e seq_len m => seq_nth l i) = (fun i :e seq_len m => seq_nth m i).
{ apply (Pi_ext (seq_len m) (fun _ => A) (fun i :e seq_len m => seq_nth l i) HF (fun i :e seq_len m => seq_nth m i) HG).
  let i. assume Hi2: i :e seq_len m.
  claim Hi: i :e seq_len l. { rewrite H1. exact Hi2. }
  rewrite (beta (seq_len m) (fun i => seq_nth l i) i Hi2).
  rewrite (beta (seq_len m) (fun i => seq_nth m i) i Hi2).
  exact (H2 i Hi). }
claim L2: (seq_len m, fun i :e seq_len m => seq_nth l i) = (seq_len m, fun i :e seq_len m => seq_nth m i).
{ rewrite L1. exact (fun q H => H). }
exact (eq_trans l (seq_len m, fun i :e seq_len m => seq_nth l i) m L0 (eq_trans (seq_len m, fun i :e seq_len m => seq_nth l i) (seq_len m, fun i :e seq_len m => seq_nth m i) m L2 (seq_eta A m Hm))).
Qed.

// computation rules for seq_tl and the empty sequence



// a nonempty sequence is the cons of its head and tail


// computation rules for seq_map
Theorem seq_len_map : forall f:set -> set, forall l:set, seq_len (seq_map f l) = seq_len l.
let f l. exact (tuple_2_0_eq (seq_len l) (fun i :e seq_len l => f (seq_nth l i))).
Qed.

Theorem seq_nth_map : forall f:set -> set, forall l:set, forall i :e seq_len l, seq_nth (seq_map f l) i = f (seq_nth l i).
let f l i. assume Hi: i :e seq_len l.
set F := fun i :e seq_len l => f (seq_nth l i).
claim L1: (seq_len l, F) 1 i = F i.
{ rewrite (tuple_2_1_eq (seq_len l) F). exact (fun q H => H). }
claim L2: F i = f (seq_nth l i).
{ exact (beta (seq_len l) (fun i => f (seq_nth l i)) i Hi). }
exact (eq_trans ((seq_len l, F) 1 i) (F i) (f (seq_nth l i)) L1 L2).
Qed.

Theorem seq_map_finseq : forall A B:set, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_map f l :e finseq B.
let A B f. assume Hf: forall x :e A, f x :e B. let l. assume Hl: l :e finseq A.
prove (seq_len l, fun i :e seq_len l => f (seq_nth l i)) :e Sigma_ n :e omega, B :^: n.
apply (tuple_2_Sigma omega (fun n => B :^: n) (seq_len l) (seq_len_omega A l Hl)).
prove (fun i :e seq_len l => f (seq_nth l i)) :e Pi_ y :e seq_len l, B.
apply (lam_Pi (seq_len l) (fun _ => B) (fun i => f (seq_nth l i))).
let i. assume Hi: i :e seq_len l. exact (Hf (seq_nth l i) (seq_nth_in A l Hl i Hi)).
Qed.
Theorem seq_map_nil : forall f:set -> set, seq_map f seq_nil = seq_nil.
let f.
prove (seq_len seq_nil, fun i :e seq_len seq_nil => f (seq_nth seq_nil i)) = (0, Empty).
rewrite seq_len_nil.
rewrite (lam_0 (fun i => f (seq_nth seq_nil i))).
exact (fun q H => H).
Qed.
Theorem seq_map_cons : forall A:set, forall f:set -> set, forall a :e A, forall l :e finseq A, seq_map f (seq_cons a l) = seq_cons (f a) (seq_map f l).
let A f a. assume Ha: a :e A. let l. assume Hl: l :e finseq A.
set B := {f x | x :e A}.
claim Hf: forall x :e A, f x :e B. { let x. assume Hx. exact (ReplI A f x Hx). }
claim Ln: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
claim Hcons: seq_cons a l :e finseq A. { exact (seq_cons_finseq A a Ha l Hl). }
claim Hmap: seq_map f l :e finseq B. { exact (seq_map_finseq A B f Hf l Hl). }
claim Hfa: f a :e B. { exact (Hf a Ha). }
apply (seq_ext B (seq_map f (seq_cons a l)) (seq_map_finseq A B f Hf (seq_cons a l) Hcons) (seq_cons (f a) (seq_map f l)) (seq_cons_finseq B (f a) Hfa (seq_map f l) Hmap)).
- rewrite (seq_len_map f (seq_cons a l)). rewrite (seq_len_cons A a Ha l Hl).
  rewrite (seq_len_cons B (f a) Hfa (seq_map f l) Hmap). rewrite (seq_len_map f l). exact (fun q H => H).
- let i. assume Hi: i :e seq_len (seq_map f (seq_cons a l)).
  claim Hi1: i :e ordsucc (seq_len l).
  { rewrite <- (seq_len_cons A a Ha l Hl). rewrite <- (seq_len_map f (seq_cons a l)). exact Hi. }
  claim Hi0: i :e seq_len (seq_cons a l).
  { rewrite <- (seq_len_map f (seq_cons a l)). exact Hi. }
  rewrite (seq_nth_map f (seq_cons a l) i Hi0).
  claim Hi': nat_p i. { exact (nat_p_trans (ordsucc (seq_len l)) (nat_ordsucc (seq_len l) Ln) i Hi1). }
  apply (nat_inv i Hi').
  + assume H0: i = 0. rewrite H0.
    rewrite (seq_nth_cons_0 A a Ha l Hl). rewrite (seq_nth_cons_0 B (f a) Hfa (seq_map f l) Hmap). exact (fun q H => H).
  + assume H1: exists x, nat_p x /\ i = ordsucc x.
    apply (exandE_i nat_p (fun x => i = ordsucc x) H1).
    let j. assume Hj: nat_p j. assume Hij: i = ordsucc j.
    claim Hjl: j :e seq_len l.
    { claim Hsj: ordsucc j :e ordsucc (seq_len l). { rewrite <- Hij. exact Hi1. }
      apply (ordsuccE (seq_len l) (ordsucc j) Hsj).
      * assume H2: ordsucc j :e seq_len l. exact (nat_trans (seq_len l) Ln (ordsucc j) H2 j (ordsuccI2 j)).
      * assume H2: ordsucc j = seq_len l. rewrite <- H2. exact (ordsuccI2 j). }
    claim Hjm: j :e seq_len (seq_map f l). { rewrite (seq_len_map f l). exact Hjl. }
    rewrite Hij.
    rewrite (seq_nth_cons_S A a Ha l Hl j Hjl).
    rewrite (seq_nth_cons_S B (f a) Hfa (seq_map f l) Hmap j Hjm).
    rewrite (seq_nth_map f l j Hjl). exact (fun q H => H).
Qed.
Theorem seq_append_finseq : forall A:set, forall l m :e finseq A, seq_append l m :e finseq A.
let A l. assume Hl: l :e finseq A. let m. assume Hm: m :e finseq A.
claim Hlo: seq_len l :e omega. { exact (seq_len_omega A l Hl). }
claim Hmo: seq_len m :e omega. { exact (seq_len_omega A m Hm). }
prove (seq_len l + seq_len m, fun i :e seq_len l + seq_len m => if i :e seq_len l then seq_nth l i else seq_nth m (i + - seq_len l)) :e Sigma_ n :e omega, A :^: n.
apply (tuple_2_Sigma omega (fun n => A :^: n) (seq_len l + seq_len m) (add_SNo_In_omega (seq_len l) Hlo (seq_len m) Hmo)).
prove (fun i :e seq_len l + seq_len m => if i :e seq_len l then seq_nth l i else seq_nth m (i + - seq_len l)) :e Pi_ y :e seq_len l + seq_len m, A.
apply (lam_Pi (seq_len l + seq_len m) (fun _ => A) (fun i => if i :e seq_len l then seq_nth l i else seq_nth m (i + - seq_len l))).
let i. assume Hi: i :e seq_len l + seq_len m.
prove (if i :e seq_len l then seq_nth l i else seq_nth m (i + - seq_len l)) :e A.
apply (xm (i :e seq_len l)).
- assume H: i :e seq_len l. rewrite (If_i_1 (i :e seq_len l) (seq_nth l i) (seq_nth m (i + - seq_len l)) H). exact (seq_nth_in A l Hl i H).
- assume H: ~ (i :e seq_len l). rewrite (If_i_0 (i :e seq_len l) (seq_nth l i) (seq_nth m (i + - seq_len l)) H).
  exact (seq_nth_in A m Hm (i + - seq_len l) (minus_shift_in (seq_len l) Hlo (seq_len m) Hmo i Hi H)).
Qed.
Theorem seq_append_nil : forall A:set, forall m :e finseq A, seq_append seq_nil m = m.
let A m. assume Hm: m :e finseq A.
claim Lm: SNo (seq_len m). { exact (omega_SNo (seq_len m) (seq_len_omega A m Hm)). }
claim L0: 0 + seq_len m = seq_len m. { exact (add_SNo_0L (seq_len m) Lm). }
prove (seq_len seq_nil + seq_len m, fun i :e seq_len seq_nil + seq_len m => if i :e seq_len seq_nil then seq_nth seq_nil i else seq_nth m (i + - seq_len seq_nil)) = m.
rewrite seq_len_nil.
rewrite L0.
claim L1: (fun i :e seq_len m => if i :e 0 then seq_nth seq_nil i else seq_nth m (i + - 0)) = (fun i :e seq_len m => seq_nth m i).
{ apply (Pi_ext (seq_len m) (fun _ => A) (fun i :e seq_len m => if i :e 0 then seq_nth seq_nil i else seq_nth m (i + - 0))).
  - apply (lam_Pi (seq_len m) (fun _ => A) (fun i => if i :e 0 then seq_nth seq_nil i else seq_nth m (i + - 0))).
    let i. assume Hi: i :e seq_len m.
    prove (if i :e 0 then seq_nth seq_nil i else seq_nth m (i + - 0)) :e A.
    rewrite (If_i_0 (i :e 0) (seq_nth seq_nil i) (seq_nth m (i + - 0)) (EmptyE i)).
    rewrite minus_SNo_0.
    rewrite (add_SNo_0R i (nat_p_SNo i (nat_p_trans (seq_len m) (omega_nat_p (seq_len m) (seq_len_omega A m Hm)) i Hi))).
    exact (seq_nth_in A m Hm i Hi).
  - apply (lam_Pi (seq_len m) (fun _ => A) (fun i => seq_nth m i)).
    let i. assume Hi: i :e seq_len m. exact (seq_nth_in A m Hm i Hi).
  - let i. assume Hi: i :e seq_len m.
    rewrite (beta (seq_len m) (fun i => if i :e 0 then seq_nth seq_nil i else seq_nth m (i + - 0)) i Hi).
    rewrite (beta (seq_len m) (fun i => seq_nth m i) i Hi).
    prove (if i :e 0 then seq_nth seq_nil i else seq_nth m (i + - 0)) = seq_nth m i.
    rewrite (If_i_0 (i :e 0) (seq_nth seq_nil i) (seq_nth m (i + - 0)) (EmptyE i)).
    rewrite minus_SNo_0.
    rewrite (add_SNo_0R i (nat_p_SNo i (nat_p_trans (seq_len m) (omega_nat_p (seq_len m) (seq_len_omega A m Hm)) i Hi))).
    exact (fun q H => H). }
rewrite L1.
exact (seq_eta A m Hm).
Qed.
Theorem seq_append_cons : forall A:set, forall a :e A, forall l m :e finseq A, seq_append (seq_cons a l) m = seq_cons a (seq_append l m).
Admitted.
Theorem seq_rev_finseq : forall A:set, forall l :e finseq A, seq_rev l :e finseq A.
let A l. assume Hl: l :e finseq A.
prove (seq_len l, fun i :e seq_len l => seq_nth l (seq_len l + - ordsucc i)) :e Sigma_ n :e omega, A :^: n.
apply (tuple_2_Sigma omega (fun n => A :^: n) (seq_len l) (seq_len_omega A l Hl)).
prove (fun i :e seq_len l => seq_nth l (seq_len l + - ordsucc i)) :e Pi_ y :e seq_len l, A.
apply (lam_Pi (seq_len l) (fun _ => A) (fun i => seq_nth l (seq_len l + - ordsucc i))).
let i. assume Hi: i :e seq_len l.
exact (seq_nth_in A l Hl (seq_len l + - ordsucc i) (minus_nat_in (seq_len l) (seq_len_omega A l Hl) i Hi)).
Qed.
Theorem seq_filter_finseq : forall A:set, forall P:set -> prop, forall l :e finseq A, seq_filter P l :e finseq A.
Admitted.
Theorem seq_replicate_finseq : forall A:set, forall n :e omega, forall a :e A, seq_replicate n a :e finseq A.
let A n. assume Hn: n :e omega. let a. assume Ha: a :e A.
prove (n, fun i :e n => a) :e Sigma_ m :e omega, A :^: m.
apply (tuple_2_Sigma omega (fun m => A :^: m) n Hn).
prove (fun i :e n => a) :e Pi_ y :e n, A.
apply (lam_Pi n (fun _ => A) (fun _ => a)).
let i. assume Hi. exact Ha.
Qed.
Theorem seq_zip_finseq : forall A B:set, forall l :e finseq A, forall m :e finseq B, seq_len l = seq_len m -> seq_zip l m :e finseq (A :*: B).
let A B l. assume Hl: l :e finseq A. let m. assume Hm: m :e finseq B. assume Hlm: seq_len l = seq_len m.
prove (seq_len l, fun i :e seq_len l => (seq_nth l i, seq_nth m i)) :e Sigma_ n :e omega, (A :*: B) :^: n.
apply (tuple_2_Sigma omega (fun n => (A :*: B) :^: n) (seq_len l) (seq_len_omega A l Hl)).
prove (fun i :e seq_len l => (seq_nth l i, seq_nth m i)) :e Pi_ y :e seq_len l, A :*: B.
apply (lam_Pi (seq_len l) (fun _ => A :*: B) (fun i => (seq_nth l i, seq_nth m i))).
let i. assume Hi: i :e seq_len l.
claim Hi2: i :e seq_len m. { rewrite <- Hlm. exact Hi. }
exact (tuple_2_setprod A B (seq_nth l i) (seq_nth_in A l Hl i Hi) (seq_nth m i) (seq_nth_in B m Hm i Hi2)).
Qed.
Theorem seq_tl_finseq : forall A:set, forall l :e finseq A, seq_tl l :e finseq A.
let A l. assume Hl: l :e finseq A.
claim Ln: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
prove (nat_pred (seq_len l), fun i :e nat_pred (seq_len l) => seq_nth l (ordsucc i)) :e Sigma_ n :e omega, A :^: n.
apply (tuple_2_Sigma omega (fun n => A :^: n) (nat_pred (seq_len l)) (nat_pred_omega (seq_len l) (seq_len_omega A l Hl))).
prove (fun i :e nat_pred (seq_len l) => seq_nth l (ordsucc i)) :e Pi_ y :e nat_pred (seq_len l), A.
apply (lam_Pi (nat_pred (seq_len l)) (fun _ => A) (fun i => seq_nth l (ordsucc i))).
let i. assume Hi: i :e nat_pred (seq_len l).
exact (seq_nth_in A l Hl (ordsucc i) (nat_pred_succ_in (seq_len l) Ln i Hi)).
Qed.

Theorem seq_len_tl : forall l:set, seq_len (seq_tl l) = nat_pred (seq_len l).
let l. exact (tuple_2_0_eq (nat_pred (seq_len l)) (fun i :e nat_pred (seq_len l) => seq_nth l (ordsucc i))).
Qed.

Theorem seq_nth_tl : forall l:set, forall i :e nat_pred (seq_len l), seq_nth (seq_tl l) i = seq_nth l (ordsucc i).
let l i. assume Hi: i :e nat_pred (seq_len l).
set F := fun i :e nat_pred (seq_len l) => seq_nth l (ordsucc i).
claim L1: (nat_pred (seq_len l), F) 1 i = F i.
{ rewrite (tuple_2_1_eq (nat_pred (seq_len l)) F). exact (fun q H => H). }
claim L2: F i = seq_nth l (ordsucc i).
{ exact (beta (nat_pred (seq_len l)) (fun i => seq_nth l (ordsucc i)) i Hi). }
exact (eq_trans ((nat_pred (seq_len l), F) 1 i) (F i) (seq_nth l (ordsucc i)) L1 L2).
Qed.

Theorem seq_len_0_nil : forall A:set, forall l :e finseq A, seq_len l = 0 -> l = seq_nil.
let A l. assume Hl: l :e finseq A. assume H0: seq_len l = 0.
apply (seq_ext A l Hl seq_nil (seq_nil_finseq A)).
- rewrite H0. rewrite seq_len_nil. exact (fun q H => H).
- let i. assume Hi: i :e seq_len l.
  claim Hi0: i :e 0. { rewrite <- H0. exact Hi. }
  exact (FalseE (EmptyE i Hi0) (seq_nth l i = seq_nth seq_nil i)).
Qed.

Theorem seq_cons_hd_tl : forall A:set, forall l :e finseq A, seq_len l <> 0 -> l = seq_cons (seq_nth l 0) (seq_tl l).
let A l. assume Hl: l :e finseq A. assume Hne: seq_len l <> 0.
claim Ln: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
claim H0: 0 :e seq_len l.
{ apply (nat_inv (seq_len l) Ln).
  - assume H: seq_len l = 0. exact (FalseE (Hne H) (0 :e seq_len l)).
  - assume H: exists x, nat_p x /\ seq_len l = ordsucc x.
    apply (exandE_i nat_p (fun x => seq_len l = ordsucc x) H).
    let x. assume Hx: nat_p x. assume Hlx: seq_len l = ordsucc x.
    rewrite Hlx. exact (nat_0_in_ordsucc x Hx). }
claim Ha: seq_nth l 0 :e A. { exact (seq_nth_in A l Hl 0 H0). }
claim Ht: seq_tl l :e finseq A. { exact (seq_tl_finseq A l Hl). }
claim Lpred: ordsucc (nat_pred (seq_len l)) = seq_len l.
{ apply (nat_inv (seq_len l) Ln).
  - assume H: seq_len l = 0. exact (FalseE (Hne H) (ordsucc (nat_pred (seq_len l)) = seq_len l)).
  - assume H: exists x, nat_p x /\ seq_len l = ordsucc x.
    apply (exandE_i nat_p (fun x => seq_len l = ordsucc x) H).
    let x. assume Hx: nat_p x. assume Hlx: seq_len l = ordsucc x.
    rewrite Hlx.
    prove ordsucc (if ordsucc x = 0 then 0 else ordsucc x + - 1) = ordsucc x.
    rewrite (If_i_0 (ordsucc x = 0) 0 (ordsucc x + - 1) (neq_ordsucc_0 x)).
    claim L1: ordsucc x + - 1 = x.
    { rewrite <- (add_SNo_1_ordsucc x (nat_p_omega x Hx)) at 1. exact (add_SNo_minus_R2 x 1 (nat_p_SNo x Hx) SNo_1). }
    rewrite L1. exact (fun q H => H). }
apply (seq_ext A l Hl (seq_cons (seq_nth l 0) (seq_tl l)) (seq_cons_finseq A (seq_nth l 0) Ha (seq_tl l) Ht)).
- rewrite (seq_len_cons A (seq_nth l 0) Ha (seq_tl l) Ht). rewrite (seq_len_tl l). rewrite Lpred. exact (fun q H => H).
- let i. assume Hi: i :e seq_len l.
  claim Hi': nat_p i. { exact (nat_p_trans (seq_len l) Ln i Hi). }
  apply (nat_inv i Hi').
  + assume Hi0: i = 0. rewrite Hi0. rewrite (seq_nth_cons_0 A (seq_nth l 0) Ha (seq_tl l) Ht). exact (fun q H => H).
  + assume H1: exists x, nat_p x /\ i = ordsucc x.
    apply (exandE_i nat_p (fun x => i = ordsucc x) H1).
    let j. assume Hj: nat_p j. assume Hij: i = ordsucc j.
    claim Hjt: j :e seq_len (seq_tl l).
    { rewrite (seq_len_tl l).
      claim Hsj: ordsucc j :e seq_len l. { rewrite <- Hij. exact Hi. }
      claim Hsj': ordsucc j :e ordsucc (nat_pred (seq_len l)). { rewrite Lpred. exact Hsj. }
      claim Lp: nat_p (nat_pred (seq_len l)). { exact (omega_nat_p (nat_pred (seq_len l)) (nat_pred_omega (seq_len l) (seq_len_omega A l Hl))). }
      apply (ordsuccE (nat_pred (seq_len l)) (ordsucc j) Hsj').
      * assume H2: ordsucc j :e nat_pred (seq_len l). exact (nat_trans (nat_pred (seq_len l)) Lp (ordsucc j) H2 j (ordsuccI2 j)).
      * assume H2: ordsucc j = nat_pred (seq_len l). rewrite <- H2. exact (ordsuccI2 j). }
    claim Hjp: j :e nat_pred (seq_len l). { rewrite <- (seq_len_tl l). exact Hjt. }
    rewrite Hij. rewrite (seq_nth_cons_S A (seq_nth l 0) Ha (seq_tl l) Ht j Hjt). rewrite (seq_nth_tl l j Hjp). exact (fun q H => H).
Qed.

Theorem seq_cases : forall A:set, forall l :e finseq A, l = seq_nil \/ exists a :e A, exists m :e finseq A, l = seq_cons a m.
let A l. assume Hl: l :e finseq A.
apply (xm (seq_len l = 0)).
- assume H0: seq_len l = 0. apply orIL. exact (seq_len_0_nil A l Hl H0).
- assume Hne: seq_len l <> 0. apply orIR.
  claim Ln: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
  claim H0: 0 :e seq_len l.
  { apply (nat_inv (seq_len l) Ln).
    + assume H: seq_len l = 0. exact (FalseE (Hne H) (0 :e seq_len l)).
    + assume H: exists x, nat_p x /\ seq_len l = ordsucc x.
      apply (exandE_i nat_p (fun x => seq_len l = ordsucc x) H).
      let x. assume Hx: nat_p x. assume Hlx: seq_len l = ordsucc x.
      rewrite Hlx. exact (nat_0_in_ordsucc x Hx). }
  witness (seq_nth l 0). apply andI.
  + exact (seq_nth_in A l Hl 0 H0).
  + witness (seq_tl l). apply andI.
    * exact (seq_tl_finseq A l Hl).
    * exact (seq_cons_hd_tl A l Hl Hne).
Qed.

Theorem seq_induct : forall A:set, forall P:set -> prop, P seq_nil -> (forall a :e A, forall l :e finseq A, P l -> P (seq_cons a l)) -> forall l :e finseq A, P l.
let A P. assume H0: P seq_nil. assume HS: forall a :e A, forall l :e finseq A, P l -> P (seq_cons a l).
claim L: forall n, nat_p n -> forall l :e finseq A, seq_len l = n -> P l.
{ apply nat_ind.
  - let l. assume Hl: l :e finseq A. assume Hn: seq_len l = 0.
    rewrite (seq_len_0_nil A l Hl Hn). exact H0.
  - let n. assume Hn: nat_p n. assume IH: forall l :e finseq A, seq_len l = n -> P l.
    let l. assume Hl: l :e finseq A. assume Hln: seq_len l = ordsucc n.
    claim Hne: seq_len l <> 0. { rewrite Hln. exact (neq_ordsucc_0 n). }
    claim Ht: seq_tl l :e finseq A. { exact (seq_tl_finseq A l Hl). }
    claim Htn: seq_len (seq_tl l) = n.
    { rewrite (seq_len_tl l). rewrite Hln.
      prove (if ordsucc n = 0 then 0 else ordsucc n + - 1) = n.
      rewrite (If_i_0 (ordsucc n = 0) 0 (ordsucc n + - 1) (neq_ordsucc_0 n)).
      rewrite <- (add_SNo_1_ordsucc n (nat_p_omega n Hn)) at 1. exact (add_SNo_minus_R2 n 1 (nat_p_SNo n Hn) SNo_1). }
    claim H0l: 0 :e seq_len l. { rewrite Hln. exact (nat_0_in_ordsucc n Hn). }
    claim Ha: seq_nth l 0 :e A. { exact (seq_nth_in A l Hl 0 H0l). }
    claim HPC: P (seq_cons (seq_nth l 0) (seq_tl l)).
    { exact (HS (seq_nth l 0) Ha (seq_tl l) Ht (IH (seq_tl l) Ht Htn)). }
    exact (seq_cons_hd_tl A l Hl Hne (fun a b => P b) HPC). }
let l. assume Hl: l :e finseq A.
exact (L (seq_len l) (omega_nat_p (seq_len l) (seq_len_omega A l Hl)) l Hl (fun q H => H)).
Qed.
Theorem seq_butlast_finseq : forall A:set, forall l :e finseq A, seq_butlast l :e finseq A.
let A l. assume Hl: l :e finseq A.
claim Ln: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
prove (nat_pred (seq_len l), fun i :e nat_pred (seq_len l) => seq_nth l i) :e Sigma_ n :e omega, A :^: n.
apply (tuple_2_Sigma omega (fun n => A :^: n) (nat_pred (seq_len l)) (nat_pred_omega (seq_len l) (seq_len_omega A l Hl))).
prove (fun i :e nat_pred (seq_len l) => seq_nth l i) :e Pi_ y :e nat_pred (seq_len l), A.
apply (lam_Pi (nat_pred (seq_len l)) (fun _ => A) (fun i => seq_nth l i)).
let i. assume Hi: i :e nat_pred (seq_len l).
claim Hi2: i :e seq_len l.
{ exact (nat_trans (seq_len l) Ln (ordsucc i) (nat_pred_succ_in (seq_len l) Ln i Hi) i (ordsuccI2 i)). }
exact (seq_nth_in A l Hl i Hi2).
Qed.
Theorem seq_mk_finseq : forall A:set, forall n :e omega, forall f:set -> set, (forall i :e n, f i :e A) -> seq_mk n f :e finseq A.
let A n. assume Hn: n :e omega. let f. assume Hf: forall i :e n, f i :e A.
prove (n, fun i :e n => f i) :e Sigma_ m :e omega, A :^: m.
apply (tuple_2_Sigma omega (fun m => A :^: m) n Hn).
prove (fun i :e n => f i) :e Pi_ y :e n, A.
exact (lam_Pi n (fun _ => A) f Hf).
Qed.
Theorem seq_foldr_nil : forall f:set -> set -> set, forall b:set, seq_foldr f seq_nil b = b.
let f b.
prove nat_primrec b (fun i r => f (seq_nth seq_nil (seq_len seq_nil + - ordsucc i)) r) (seq_len seq_nil) = b.
rewrite seq_len_nil.
exact (nat_primrec_0 b (fun i r => f (seq_nth seq_nil (0 + - ordsucc i)) r)).
Qed.
Theorem seq_foldr_cons : forall A:set, forall f:set -> set -> set, forall a :e A, forall l :e finseq A, forall b:set, seq_foldr f (seq_cons a l) b = f a (seq_foldr f l b).
Admitted.
Theorem finseq_Empty : finseq Empty = {seq_nil}.
apply set_ext.
- let l. assume Hl: l :e finseq Empty.
  claim Ln: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega Empty l Hl)). }
  claim Lf: l 1 :e Empty :^: l 0. { exact (seq_fun_in Empty l Hl). }
  claim L0: l 0 = 0.
  { apply (nat_inv (l 0) Ln).
    + assume H: l 0 = 0. exact H.
    + assume H: exists x, nat_p x /\ l 0 = ordsucc x.
      apply (exandE_i nat_p (fun x => l 0 = ordsucc x) H).
      let x. assume Hx: nat_p x. assume Hlx: l 0 = ordsucc x.
      claim L00: 0 :e l 0. { rewrite Hlx. exact (nat_0_in_ordsucc x Hx). }
      exact (FalseE (EmptyE (l 1 0) (ap_Pi (l 0) (fun _ => Empty) (l 1) 0 Lf L00)) (l 0 = 0)). }
  claim L1: l 1 = Empty.
  { claim Lf0: l 1 :e Empty :^: 0. { rewrite <- L0 at 3. exact Lf. }
    rewrite <- (Pi_eta 0 (fun _ => Empty) (l 1) Lf0).
    exact (lam_0 (fun x => l 1 x)). }
  claim L2: l = seq_nil.
  { rewrite <- (tuple_Sigma_eta omega (fun n => Empty :^: n) l Hl). rewrite L0. rewrite L1. exact (fun q H => H). }
  rewrite L2. exact (SingI seq_nil).
- let l. assume Hl: l :e {seq_nil}.
  rewrite (SingE seq_nil l Hl). exact (seq_nil_finseq Empty).
Qed.

// an enumeration of a finite set as a sequence, and folds over finite sets (HOL Light ITSET)
Definition seq_of_set : set -> set :=
  fun s => choose_in (finseq s) (fun l => seq_set l = s /\ seq_len l = finite_cardinality s).
Definition set_foldr : (set -> set -> set) -> set -> set -> set := fun f s b => seq_foldr f (seq_of_set s) b.
