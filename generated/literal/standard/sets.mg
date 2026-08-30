// hol2mg literal statements (private): shard sets of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: sets.ml:38 / IN   (hash md5:3bfe2ada95e5a21aec33d25662746d45)
Theorem hlt_IN : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall x :e A, hl_IN A x P = 1 <-> P x = 1.
Admitted.

// HOL Light: sets.ml:45 / EXTENSION   (hash md5:f7141c939edd744d7d6f135168a24813)
Theorem hlt_EXTENSION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, s = t <-> forall x :e A, hl_IN A x s = 1 <-> hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:53 / GSPEC   (hash md5:11309182715cc213e5248c694a48f4eb)
Theorem hlt_GSPEC : forall A:set, A <> Empty -> forall p :e 2 :^: A, hl_GSPEC A p = p.
Admitted.

// HOL Light: sets.ml:56 / SETSPEC   (hash md5:62d81678fd0497eccfc67c438177a89a)
Theorem hlt_SETSPEC : forall A:set, A <> Empty -> forall P :e 2, forall v t :e A, hl_SETSPEC A v P t = 1 <-> P = 1 /\ v = t.
Admitted.

// HOL Light: sets.ml:63 / IN_ELIM_THM   (hash md5:f0b562a918d32513fbce399c8874d32d)
Theorem hlt_IN_ELIM_THM : forall A:set, A <> Empty -> (forall P :e 2 :^: (2 :^: A :^: 2), forall x :e A, hl_IN A x (hl_GSPEC A (fun v :e A => P (hl_SETSPEC A v))) = 1 <-> P (fun p :e 2 => fun t :e A => if p = 1 /\ x = t then 1 else 0) = 1) /\ ((forall p :e 2 :^: A, forall x :e A, hl_IN A x (hl_GSPEC A (fun v :e A => if exists y :e A, hl_SETSPEC A v (p y) y = 1 then 1 else 0)) = 1 <-> p x = 1) /\ ((forall P :e 2 :^: (2 :^: A :^: 2), forall x :e A, hl_GSPEC A (fun v :e A => P (hl_SETSPEC A v)) x = 1 <-> P (fun p :e 2 => fun t :e A => if p = 1 /\ x = t then 1 else 0) = 1) /\ ((forall p :e 2 :^: A, forall x :e A, hl_GSPEC A (fun v :e A => if exists y :e A, hl_SETSPEC A v (p y) y = 1 then 1 else 0) x = 1 <-> p x = 1) /\ forall p :e 2 :^: A, forall x :e A, hl_IN A x (fun y :e A => p y) = 1 <-> p x = 1))).
Admitted.

// HOL Light: sets.ml:77 / EMPTY   (hash md5:1989ccecebe524300c28d988fa7a6bf4)
Theorem hlt_EMPTY : forall A:set, A <> Empty -> hl_EMPTY A = fun x :e A => if False then 1 else 0.
Admitted.

// HOL Light: sets.ml:80 / INSERT_DEF   (hash md5:bc4aedb68c8fa7e24483a802d7b666f8)
Theorem hlt_INSERT_DEF : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e A, hl_INSERT A x s = fun y :e A => if hl_IN A y s = 1 \/ y = x then 1 else 0.
Admitted.

// HOL Light: sets.ml:87 / UNIV   (hash md5:9b0de6b0d242dd9a3fabf6a8c72fe02c)
Theorem hlt_UNIV : forall A:set, A <> Empty -> hl_UNIV A = fun x :e A => if True then 1 else 0.
Admitted.

// HOL Light: sets.ml:90 / UNION   (hash md5:eebb0c8c259b85ac701c2e562f874397)
Theorem hlt_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_UNION A s t = hl_GSPEC A (fun GEN_PVAR_0 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_0 (if hl_IN A x s = 1 \/ hl_IN A x t = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:93 / UNIONS   (hash md5:60df9e21f28899c2985f5263f7b70b4b)
Theorem hlt_UNIONS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_UNIONS A s = hl_GSPEC A (fun GEN_PVAR_1 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1 (if exists u :e 2 :^: A, hl_IN (2 :^: A) u s = 1 /\ hl_IN A x u = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:96 / INTER   (hash md5:18dc8c954674f5d67dfab9abc64007f3)
Theorem hlt_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_INTER A s t = hl_GSPEC A (fun GEN_PVAR_2 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2 (if hl_IN A x s = 1 /\ hl_IN A x t = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:99 / INTERS   (hash md5:34458dd4d8abc78d9e447bc0cb321a51)
Theorem hlt_INTERS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_INTERS A s = hl_GSPEC A (fun GEN_PVAR_3 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_3 (if forall u :e 2 :^: A, hl_IN (2 :^: A) u s = 1 -> hl_IN A x u = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:102 / DIFF   (hash md5:2ccfb5b0e79eb389ed764d3582c271bb)
Theorem hlt_DIFF : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_DIFF A s t = hl_GSPEC A (fun GEN_PVAR_4 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4 (if hl_IN A x s = 1 /\ ~ hl_IN A x t = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:105 / INSERT   (hash md5:f9ad530f26a69054b867be5fb530e000)
Theorem hlt_INSERT : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_INSERT A x s = hl_GSPEC A (fun GEN_PVAR_5 :e A => if exists y :e A, hl_SETSPEC A GEN_PVAR_5 (if hl_IN A y s = 1 \/ y = x then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:109 / DELETE   (hash md5:6cceb30a7fe2c086008d4dff1a7846b2)
Theorem hlt_DELETE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e A, hl_DELETE A s x = hl_GSPEC A (fun GEN_PVAR_6 :e A => if exists y :e A, hl_SETSPEC A GEN_PVAR_6 (if hl_IN A y s = 1 /\ ~ y = x then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:116 / SUBSET   (hash md5:9a8f6bea2c60548a8c3b62e968bfc54c)
Theorem hlt_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_SUBSET A s t = 1 <-> forall x :e A, hl_IN A x s = 1 -> hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:119 / PSUBSET   (hash md5:717c482d7dfca1a816d9b2e50f86d826)
Theorem hlt_PSUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_PSUBSET A s t = 1 <-> hl_SUBSET A s t = 1 /\ ~ s = t.
Admitted.

// HOL Light: sets.ml:122 / DISJOINT   (hash md5:06faad16c446a9a1f851e720b49c06e3)
Theorem hlt_DISJOINT : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_DISJOINT A s t = 1 <-> hl_INTER A s t = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:125 / SING   (hash md5:01a566d782ab2c62a0090eeb3600d3f4)
Theorem hlt_SING : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_SING A s = 1 <-> exists x :e A, s = hl_INSERT A x (hl_EMPTY A).
Admitted.

// HOL Light: sets.ml:132 / FINITE_CASES   (hash md5:0fbfbcb380f92d787b57d378756085a4)
Theorem hlt_FINITE_CASES : forall A:set, A <> Empty -> forall a :e 2 :^: A, hl_FINITE A a = 1 <-> a = hl_EMPTY A \/ exists x :e A, exists s :e 2 :^: A, a = hl_INSERT A x s /\ hl_FINITE A s = 1.
Admitted.

// HOL Light: sets.ml:132 / FINITE_INDUCT   (hash md5:2b3f81cf880be7cfb71f4b7eec60c37a)
Theorem hlt_FINITE_INDUCT : forall A:set, A <> Empty -> forall FINITE' :e 2 :^: (2 :^: A), FINITE' (hl_EMPTY A) = 1 /\ (forall x :e A, forall s :e 2 :^: A, FINITE' s = 1 -> FINITE' (hl_INSERT A x s) = 1) -> forall a :e 2 :^: A, hl_FINITE A a = 1 -> FINITE' a = 1.
Admitted.

// HOL Light: sets.ml:132 / FINITE_RULES   (hash md5:ef48fb6935c79f467f87c85fe2194b14)
Theorem hlt_FINITE_RULES : forall A:set, A <> Empty -> hl_FINITE A (hl_EMPTY A) = 1 /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_FINITE A (hl_INSERT A x s) = 1.
Admitted.

// HOL Light: sets.ml:137 / INFINITE   (hash md5:7c9d659d5cdcc1d82c3e2e38114de923)
Theorem hlt_INFINITE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_INFINITE A s = 1 <-> ~ hl_FINITE A s = 1.
Admitted.

// HOL Light: sets.ml:144 / IMAGE   (hash md5:b5ff447c72025d91b7483f808ad8627a)
Theorem hlt_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, hl_IMAGE A B f s = hl_GSPEC B (fun GEN_PVAR_7 :e B => if exists y :e B, hl_SETSPEC B GEN_PVAR_7 (if exists x :e A, hl_IN A x s = 1 /\ y = f x then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:147 / INJ   (hash md5:dfd4aee509198cc43c03d54f1ad412fc)
Theorem hlt_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall t :e 2 :^: B, forall s :e 2 :^: A, forall f :e B :^: A, hl_INJ A B f s t = 1 <-> (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light: sets.ml:152 / SURJ   (hash md5:0fa2b466a165ebb28e5dc0409866fdd5)
Theorem hlt_SURJ : forall A B:set, A <> Empty -> B <> Empty -> forall t :e 2 :^: B, forall s :e 2 :^: A, forall f :e B :^: A, hl_SURJ A B f s t = 1 <-> (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ forall x :e B, hl_IN B x t = 1 -> exists y :e A, hl_IN A y s = 1 /\ f y = x.
Admitted.

// HOL Light: sets.ml:157 / BIJ   (hash md5:e7c76a8cde9eadacde88eed045681195)
Theorem hlt_BIJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_BIJ A B f s t = 1 <-> hl_INJ A B f s t = 1 /\ hl_SURJ A B f s t = 1.
Admitted.

// HOL Light: sets.ml:164 / CHOICE   (hash md5:64272369e982cded412e001f071aefd5)
Theorem hlt_CHOICE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_CHOICE A s = hl_select A (fun x :e A => hl_IN A x s).
Admitted.

// HOL Light: sets.ml:167 / REST   (hash md5:e0f633a0788602734c7ec5f0f8e48f26)
Theorem hlt_REST : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_REST A s = hl_DELETE A s (hl_CHOICE A s).
Admitted.

// HOL Light: sets.ml:174 / NOT_IN_EMPTY   (hash md5:ebe8471d5c357b956cf0f5e515fe3511)
Theorem hlt_NOT_IN_EMPTY : forall A:set, A <> Empty -> forall x :e A, ~ hl_IN A x (hl_EMPTY A) = 1.
Admitted.

// HOL Light: sets.ml:178 / IN_UNIV   (hash md5:eee80073ec9a8663b3ed94c2504d029b)
Theorem hlt_IN_UNIV : forall A:set, A <> Empty -> forall x :e A, hl_IN A x (hl_UNIV A) = 1.
Admitted.

// HOL Light: sets.ml:182 / IN_UNION   (hash md5:53bfd4012ecbf824436fdec1d98ef00d)
Theorem hlt_IN_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall x :e A, hl_IN A x (hl_UNION A s t) = 1 <-> hl_IN A x s = 1 \/ hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:186 / IN_UNIONS   (hash md5:c4eb1df88efda5987e140438f90f45d8)
Theorem hlt_IN_UNIONS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), forall x :e A, hl_IN A x (hl_UNIONS A s) = 1 <-> exists t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 /\ hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:190 / IN_INTER   (hash md5:2ac4b17df4e14a7c514df10344e203a5)
Theorem hlt_IN_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall x :e A, hl_IN A x (hl_INTER A s t) = 1 <-> hl_IN A x s = 1 /\ hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:194 / IN_INTERS   (hash md5:90f987e51ed1bea30a7181c0682ececf)
Theorem hlt_IN_INTERS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), forall x :e A, hl_IN A x (hl_INTERS A s) = 1 <-> forall t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 -> hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:198 / IN_DIFF   (hash md5:b5cd0dac99fd349231cf6297ee30479a)
Theorem hlt_IN_DIFF : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall x :e A, hl_IN A x (hl_DIFF A s t) = 1 <-> hl_IN A x s = 1 /\ ~ hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:202 / IN_INSERT   (hash md5:62243c550f1aaf57081e91ad62c42ada)
Theorem hlt_IN_INSERT : forall A:set, A <> Empty -> forall x y :e A, forall s :e 2 :^: A, hl_IN A x (hl_INSERT A y s) = 1 <-> x = y \/ hl_IN A x s = 1.
Admitted.

// HOL Light: sets.ml:206 / IN_DELETE   (hash md5:9a7c37f71f31bb294187bc2cad212525)
Theorem hlt_IN_DELETE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x y :e A, hl_IN A x (hl_DELETE A s y) = 1 <-> hl_IN A x s = 1 /\ ~ x = y.
Admitted.

// HOL Light: sets.ml:210 / IN_SING   (hash md5:b97ed3ab033d2c95facb352ed3526c31)
Theorem hlt_IN_SING : forall A:set, A <> Empty -> forall x y :e A, hl_IN A x (hl_INSERT A y (hl_EMPTY A)) = 1 <-> x = y.
Admitted.

// HOL Light: sets.ml:214 / IN_IMAGE   (hash md5:c1c230701c50cc179850f00e47d436dd)
Theorem hlt_IN_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall y :e B, forall s :e 2 :^: A, forall f :e B :^: A, hl_IN B y (hl_IMAGE A B f s) = 1 <-> exists x :e A, y = f x /\ hl_IN A x s = 1.
Admitted.

// HOL Light: sets.ml:218 / IN_REST   (hash md5:8acc20d54c9fe9f5b14c8874304165a8)
Theorem hlt_IN_REST : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_IN A x (hl_REST A s) = 1 <-> hl_IN A x s = 1 /\ ~ x = hl_CHOICE A s.
Admitted.

// HOL Light: sets.ml:222 / FORALL_IN_INSERT   (hash md5:41425e040abb9d9e3c7494571128938c)
Theorem hlt_FORALL_IN_INSERT : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall a :e A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x (hl_INSERT A a s) = 1 -> P x = 1) <-> P a = 1 /\ forall x :e A, hl_IN A x s = 1 -> P x = 1.
Admitted.

// HOL Light: sets.ml:226 / EXISTS_IN_INSERT   (hash md5:9700f13ce4d7831725775ef791c7ebd1)
Theorem hlt_EXISTS_IN_INSERT : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall a :e A, forall s :e 2 :^: A, (exists x :e A, hl_IN A x (hl_INSERT A a s) = 1 /\ P x = 1) <-> P a = 1 \/ exists x :e A, hl_IN A x s = 1 /\ P x = 1.
Admitted.

// HOL Light: sets.ml:230 / FORALL_IN_UNION   (hash md5:eb1e2d3608d968c21bd6d06de108a222)
Theorem hlt_FORALL_IN_UNION : forall A:set, A <> Empty -> forall P s t :e 2 :^: A, (forall x :e A, hl_IN A x (hl_UNION A s t) = 1 -> P x = 1) <-> (forall x :e A, hl_IN A x s = 1 -> P x = 1) /\ forall x :e A, hl_IN A x t = 1 -> P x = 1.
Admitted.

// HOL Light: sets.ml:236 / EXISTS_IN_UNION   (hash md5:c955b971a917ef3dad6a5a8bb569427d)
Theorem hlt_EXISTS_IN_UNION : forall A:set, A <> Empty -> forall P s t :e 2 :^: A, (exists x :e A, hl_IN A x (hl_UNION A s t) = 1 /\ P x = 1) <-> (exists x :e A, hl_IN A x s = 1 /\ P x = 1) \/ exists x :e A, hl_IN A x t = 1 /\ P x = 1.
Admitted.

// HOL Light: sets.ml:242 / FORALL_IN_IMAGE   (hash md5:c7978b7e04133ab1326ae6b13e51b939)
Theorem hlt_FORALL_IN_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B, forall f :e B :^: A, forall s :e 2 :^: A, (forall y :e B, hl_IN B y (hl_IMAGE A B f s) = 1 -> P y = 1) <-> forall x :e A, hl_IN A x s = 1 -> P (f x) = 1.
Admitted.

// HOL Light: sets.ml:246 / EXISTS_IN_IMAGE   (hash md5:cd7cd97a0be65f5818632a8e0c9aa220)
Theorem hlt_EXISTS_IN_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B, forall f :e B :^: A, forall s :e 2 :^: A, (exists y :e B, hl_IN B y (hl_IMAGE A B f s) = 1 /\ P y = 1) <-> exists x :e A, hl_IN A x s = 1 /\ P (f x) = 1.
Admitted.

// HOL Light: sets.ml:250 / FORALL_IN_GSPEC   (hash md5:4e50b5eb28b9acf79387e641ba5fae71)
Theorem hlt_FORALL_IN_GSPEC : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> (forall P :e 2 :^: A, forall Q :e 2 :^: B, forall f :e B :^: A, (forall z :e B, hl_IN B z (hl_GSPEC B (fun GEN_PVAR_8 :e B => if exists x :e A, hl_SETSPEC B GEN_PVAR_8 (P x) (f x) = 1 then 1 else 0)) = 1 -> Q z = 1) <-> forall x :e A, P x = 1 -> Q (f x) = 1) /\ ((forall P :e 2 :^: B :^: A, forall Q :e 2 :^: C, forall f :e C :^: B :^: A, (forall z :e C, hl_IN C z (hl_GSPEC C (fun GEN_PVAR_9 :e C => if exists x :e A, exists y :e B, hl_SETSPEC C GEN_PVAR_9 (P x y) (f x y) = 1 then 1 else 0)) = 1 -> Q z = 1) <-> forall x :e A, forall y :e B, P x y = 1 -> Q (f x y) = 1) /\ ((forall P :e 2 :^: C :^: B :^: A, forall Q :e 2 :^: D, forall f :e D :^: C :^: B :^: A, (forall z :e D, hl_IN D z (hl_GSPEC D (fun GEN_PVAR_10 :e D => if exists w :e A, exists x :e B, exists y :e C, hl_SETSPEC D GEN_PVAR_10 (P w x y) (f w x y) = 1 then 1 else 0)) = 1 -> Q z = 1) <-> forall w :e A, forall x :e B, forall y :e C, P w x y = 1 -> Q (f w x y) = 1) /\ forall P :e 2 :^: D :^: C :^: B :^: A, forall Q :e 2 :^: E, forall f :e E :^: D :^: C :^: B :^: A, (forall z :e E, hl_IN E z (hl_GSPEC E (fun GEN_PVAR_11 :e E => if exists v :e A, exists w :e B, exists x :e C, exists y :e D, hl_SETSPEC E GEN_PVAR_11 (P v w x y) (f v w x y) = 1 then 1 else 0)) = 1 -> Q z = 1) <-> forall v :e A, forall w :e B, forall x :e C, forall y :e D, P v w x y = 1 -> Q (f v w x y) = 1)).
Admitted.

// HOL Light: sets.ml:263 / EXISTS_IN_GSPEC   (hash md5:1e2740daf7fb6ef5c4294dfccbcbaac5)
Theorem hlt_EXISTS_IN_GSPEC : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> (forall P :e 2 :^: A, forall Q :e 2 :^: B, forall f :e B :^: A, (exists z :e B, hl_IN B z (hl_GSPEC B (fun GEN_PVAR_12 :e B => if exists x :e A, hl_SETSPEC B GEN_PVAR_12 (P x) (f x) = 1 then 1 else 0)) = 1 /\ Q z = 1) <-> exists x :e A, P x = 1 /\ Q (f x) = 1) /\ ((forall P :e 2 :^: B :^: A, forall Q :e 2 :^: C, forall f :e C :^: B :^: A, (exists z :e C, hl_IN C z (hl_GSPEC C (fun GEN_PVAR_13 :e C => if exists x :e A, exists y :e B, hl_SETSPEC C GEN_PVAR_13 (P x y) (f x y) = 1 then 1 else 0)) = 1 /\ Q z = 1) <-> exists x :e A, exists y :e B, P x y = 1 /\ Q (f x y) = 1) /\ ((forall P :e 2 :^: C :^: B :^: A, forall Q :e 2 :^: D, forall f :e D :^: C :^: B :^: A, (exists z :e D, hl_IN D z (hl_GSPEC D (fun GEN_PVAR_14 :e D => if exists w :e A, exists x :e B, exists y :e C, hl_SETSPEC D GEN_PVAR_14 (P w x y) (f w x y) = 1 then 1 else 0)) = 1 /\ Q z = 1) <-> exists w :e A, exists x :e B, exists y :e C, P w x y = 1 /\ Q (f w x y) = 1) /\ forall P :e 2 :^: D :^: C :^: B :^: A, forall Q :e 2 :^: E, forall f :e E :^: D :^: C :^: B :^: A, (exists z :e E, hl_IN E z (hl_GSPEC E (fun GEN_PVAR_15 :e E => if exists v :e A, exists w :e B, exists x :e C, exists y :e D, hl_SETSPEC E GEN_PVAR_15 (P v w x y) (f v w x y) = 1 then 1 else 0)) = 1 /\ Q z = 1) <-> exists v :e A, exists w :e B, exists x :e C, exists y :e D, P v w x y = 1 /\ Q (f v w x y) = 1)).
Admitted.

// HOL Light: sets.ml:276 / UNIONS_IMAGE   (hash md5:094772d578113d9007fd82c976970c31)
Theorem hlt_UNIONS_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e 2 :^: B :^: A, forall s :e 2 :^: A, hl_UNIONS B (hl_IMAGE A (2 :^: B) f s) = hl_GSPEC B (fun GEN_PVAR_16 :e B => if exists y :e B, hl_SETSPEC B GEN_PVAR_16 (if exists x :e A, hl_IN A x s = 1 /\ hl_IN B y (f x) = 1 then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:281 / INTERS_IMAGE   (hash md5:286eea14e8d801fa49fcfda84bd5c0fd)
Theorem hlt_INTERS_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e 2 :^: B :^: A, forall s :e 2 :^: A, hl_INTERS B (hl_IMAGE A (2 :^: B) f s) = hl_GSPEC B (fun GEN_PVAR_17 :e B => if exists y :e B, hl_SETSPEC B GEN_PVAR_17 (if forall x :e A, hl_IN A x s = 1 -> hl_IN B y (f x) = 1 then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:286 / UNIONS_GSPEC   (hash md5:d5bd00d7cdf7673a58b1d576e087cb51)
Theorem hlt_UNIONS_GSPEC : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall P :e 2 :^: A, forall f :e 2 :^: B :^: A, hl_UNIONS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_18 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_18 (P x) (f x) = 1 then 1 else 0)) = hl_GSPEC B (fun GEN_PVAR_19 :e B => if exists a :e B, hl_SETSPEC B GEN_PVAR_19 (if exists x :e A, P x = 1 /\ hl_IN B a (f x) = 1 then 1 else 0) a = 1 then 1 else 0)) /\ ((forall P :e 2 :^: B :^: A, forall f :e 2 :^: C :^: B :^: A, hl_UNIONS C (hl_GSPEC (2 :^: C) (fun GEN_PVAR_20 :e 2 :^: C => if exists x :e A, exists y :e B, hl_SETSPEC (2 :^: C) GEN_PVAR_20 (P x y) (f x y) = 1 then 1 else 0)) = hl_GSPEC C (fun GEN_PVAR_21 :e C => if exists a :e C, hl_SETSPEC C GEN_PVAR_21 (if exists x :e A, exists y :e B, P x y = 1 /\ hl_IN C a (f x y) = 1 then 1 else 0) a = 1 then 1 else 0)) /\ forall P :e 2 :^: C :^: B :^: A, forall f :e 2 :^: D :^: C :^: B :^: A, hl_UNIONS D (hl_GSPEC (2 :^: D) (fun GEN_PVAR_22 :e 2 :^: D => if exists x :e A, exists y :e B, exists z :e C, hl_SETSPEC (2 :^: D) GEN_PVAR_22 (P x y z) (f x y z) = 1 then 1 else 0)) = hl_GSPEC D (fun GEN_PVAR_23 :e D => if exists a :e D, hl_SETSPEC D GEN_PVAR_23 (if exists x :e A, exists y :e B, exists z :e C, P x y z = 1 /\ hl_IN D a (f x y z) = 1 then 1 else 0) a = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:297 / INTERS_GSPEC   (hash md5:22d49327ba8621f40824d8664db47546)
Theorem hlt_INTERS_GSPEC : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall P :e 2 :^: A, forall f :e 2 :^: B :^: A, hl_INTERS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_24 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_24 (P x) (f x) = 1 then 1 else 0)) = hl_GSPEC B (fun GEN_PVAR_25 :e B => if exists a :e B, hl_SETSPEC B GEN_PVAR_25 (if forall x :e A, P x = 1 -> hl_IN B a (f x) = 1 then 1 else 0) a = 1 then 1 else 0)) /\ ((forall P :e 2 :^: B :^: A, forall f :e 2 :^: C :^: B :^: A, hl_INTERS C (hl_GSPEC (2 :^: C) (fun GEN_PVAR_26 :e 2 :^: C => if exists x :e A, exists y :e B, hl_SETSPEC (2 :^: C) GEN_PVAR_26 (P x y) (f x y) = 1 then 1 else 0)) = hl_GSPEC C (fun GEN_PVAR_27 :e C => if exists a :e C, hl_SETSPEC C GEN_PVAR_27 (if forall x :e A, forall y :e B, P x y = 1 -> hl_IN C a (f x y) = 1 then 1 else 0) a = 1 then 1 else 0)) /\ forall P :e 2 :^: C :^: B :^: A, forall f :e 2 :^: D :^: C :^: B :^: A, hl_INTERS D (hl_GSPEC (2 :^: D) (fun GEN_PVAR_28 :e 2 :^: D => if exists x :e A, exists y :e B, exists z :e C, hl_SETSPEC (2 :^: D) GEN_PVAR_28 (P x y z) (f x y z) = 1 then 1 else 0)) = hl_GSPEC D (fun GEN_PVAR_29 :e D => if exists a :e D, hl_SETSPEC D GEN_PVAR_29 (if forall x :e A, forall y :e B, forall z :e C, P x y z = 1 -> hl_IN D a (f x y z) = 1 then 1 else 0) a = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:312 / CHOICE_DEF   (hash md5:0b240c7b9a6613faa869add5bbe7dfb6)
Theorem hlt_CHOICE_DEF : forall A:set, A <> Empty -> forall s :e 2 :^: A, ~ s = hl_EMPTY A -> hl_IN A (hl_CHOICE A s) s = 1.
Admitted.

// HOL Light: sets.ml:341 / NOT_EQUAL_SETS   (hash md5:6354bb263f0fdabb3b111698af3765d6)
Theorem hlt_NOT_EQUAL_SETS : forall A:set, A <> Empty -> forall s t :e 2 :^: A, ~ s = t <-> exists x :e A, hl_IN A x t = 1 <-> ~ hl_IN A x s = 1.
Admitted.

// HOL Light: sets.ml:345 / INSERT_RESTRICT   (hash md5:f32421687ea4dac1a4957f2b50c523ac)
Theorem hlt_INSERT_RESTRICT : forall A:set, A <> Empty -> forall P s :e 2 :^: A, forall a :e A, hl_GSPEC A (fun GEN_PVAR_30 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_30 (if hl_IN A x (hl_INSERT A a s) = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0) = hl_COND (2 :^: A) (P a) (hl_INSERT A a (hl_GSPEC A (fun GEN_PVAR_31 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_31 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0))) (hl_GSPEC A (fun GEN_PVAR_32 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_32 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:351 / UNIV_1   (hash md5:f7a00ad14e0aa45d49558f4ae67d7f6c)
Theorem hlt_UNIV_1 : hl_UNIV 1 = hl_INSERT 1 hl_one (hl_EMPTY 1).
Admitted.

// HOL Light: sets.ml:359 / MEMBER_NOT_EMPTY   (hash md5:034de37a8d42754ce2996a70f9091391)
Theorem hlt_MEMBER_NOT_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: A, (exists x :e A, hl_IN A x s = 1) <-> ~ s = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:367 / UNIV_NOT_EMPTY   (hash md5:a4bc3abddb3a8964bf4d2475feff03ef)
Theorem hlt_UNIV_NOT_EMPTY : forall A:set, A <> Empty -> ~ hl_UNIV A = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:371 / EMPTY_NOT_UNIV   (hash md5:e882b1ce44890b0d529523d678d8a5e5)
Theorem hlt_EMPTY_NOT_UNIV : forall A:set, A <> Empty -> ~ hl_EMPTY A = hl_UNIV A.
Admitted.

// HOL Light: sets.ml:375 / EQ_UNIV   (hash md5:33fbef6b665c4e7157d202eeb19c3aea)
Theorem hlt_EQ_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1) <-> s = hl_UNIV A.
Admitted.

// HOL Light: sets.ml:383 / SUBSET_TRANS   (hash md5:018f8b838b2251133932e492a7b563c9)
Theorem hlt_SUBSET_TRANS : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_SUBSET A t u = 1 -> hl_SUBSET A s u = 1.
Admitted.

// HOL Light: sets.ml:387 / SUBSET_REFL   (hash md5:1d4e87cbcf892b81bf857e48dffdfb47)
Theorem hlt_SUBSET_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_SUBSET A s s = 1.
Admitted.

// HOL Light: sets.ml:391 / SUBSET_ANTISYM   (hash md5:66de716356ea282ff6b32df51c0f0aeb)
Theorem hlt_SUBSET_ANTISYM : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_SUBSET A t s = 1 -> s = t.
Admitted.

// HOL Light: sets.ml:395 / SUBSET_ANTISYM_EQ   (hash md5:d9309a654d96d9922b997772e0050c46)
Theorem hlt_SUBSET_ANTISYM_EQ : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_SUBSET A t s = 1 <-> s = t.
Admitted.

// HOL Light: sets.ml:399 / EMPTY_SUBSET   (hash md5:ac5fdc02e4441a076caae461078fbdcc)
Theorem hlt_EMPTY_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_SUBSET A (hl_EMPTY A) s = 1.
Admitted.

// HOL Light: sets.ml:403 / SUBSET_EMPTY   (hash md5:493907018ceb1d85891186aae6223bef)
Theorem hlt_SUBSET_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_SUBSET A s (hl_EMPTY A) = 1 <-> s = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:407 / SUBSET_UNIV   (hash md5:c0ebb156bc6d1a31bb01d11b4818cecc)
Theorem hlt_SUBSET_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_SUBSET A s (hl_UNIV A) = 1.
Admitted.

// HOL Light: sets.ml:411 / UNIV_SUBSET   (hash md5:b3d14bc364eb0f572d7bf080c2756639)
Theorem hlt_UNIV_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_SUBSET A (hl_UNIV A) s = 1 <-> s = hl_UNIV A.
Admitted.

// HOL Light: sets.ml:415 / SING_SUBSET   (hash md5:a4c53a78289631b6fae60c0b033e2b45)
Theorem hlt_SING_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e A, hl_SUBSET A (hl_INSERT A x (hl_EMPTY A)) s = 1 <-> hl_IN A x s = 1.
Admitted.

// HOL Light: sets.ml:419 / SUBSET_RESTRICT   (hash md5:df35c1478a03ffaa607c7f8190d95da4)
Theorem hlt_SUBSET_RESTRICT : forall A:set, A <> Empty -> forall s P :e 2 :^: A, hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_33 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_33 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) s = 1.
Admitted.

// HOL Light: sets.ml:427 / PSUBSET_TRANS   (hash md5:072c2c70a836f4da8c5eec4c36079bb0)
Theorem hlt_PSUBSET_TRANS : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_PSUBSET A s t = 1 /\ hl_PSUBSET A t u = 1 -> hl_PSUBSET A s u = 1.
Admitted.

// HOL Light: sets.ml:431 / PSUBSET_SUBSET_TRANS   (hash md5:add7741f91348a58c0f595a4ea6b0f70)
Theorem hlt_PSUBSET_SUBSET_TRANS : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_PSUBSET A s t = 1 /\ hl_SUBSET A t u = 1 -> hl_PSUBSET A s u = 1.
Admitted.

// HOL Light: sets.ml:435 / SUBSET_PSUBSET_TRANS   (hash md5:5e2f9be37f05432c312f92f3fbf29470)
Theorem hlt_SUBSET_PSUBSET_TRANS : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_PSUBSET A t u = 1 -> hl_PSUBSET A s u = 1.
Admitted.

// HOL Light: sets.ml:439 / PSUBSET_IRREFL   (hash md5:d51110cbc8e2e357317012caa5b80674)
Theorem hlt_PSUBSET_IRREFL : forall A:set, A <> Empty -> forall s :e 2 :^: A, ~ hl_PSUBSET A s s = 1.
Admitted.

// HOL Light: sets.ml:443 / NOT_PSUBSET_EMPTY   (hash md5:3332b221fe7ff158d43ce2e5bf4da15b)
Theorem hlt_NOT_PSUBSET_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: A, ~ hl_PSUBSET A s (hl_EMPTY A) = 1.
Admitted.

// HOL Light: sets.ml:447 / NOT_UNIV_PSUBSET   (hash md5:64269305e69e19cacffcaf4316b95018)
Theorem hlt_NOT_UNIV_PSUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, ~ hl_PSUBSET A (hl_UNIV A) s = 1.
Admitted.

// HOL Light: sets.ml:451 / PSUBSET_UNIV   (hash md5:e0a72776e96ffb60c5380c8ee19a4734)
Theorem hlt_PSUBSET_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_PSUBSET A s (hl_UNIV A) = 1 <-> exists x :e A, ~ hl_IN A x s = 1.
Admitted.

// HOL Light: sets.ml:455 / PSUBSET_ALT   (hash md5:4d1b9136cd8a9dd9fa84603c64991eeb)
Theorem hlt_PSUBSET_ALT : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_PSUBSET A s t = 1 <-> hl_SUBSET A s t = 1 /\ exists a :e A, hl_IN A a t = 1 /\ ~ hl_IN A a s = 1.
Admitted.

// HOL Light: sets.ml:463 / UNION_ASSOC   (hash md5:aa336f9b95ae5977100218daf025a609)
Theorem hlt_UNION_ASSOC : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_UNION A (hl_UNION A s t) u = hl_UNION A s (hl_UNION A t u).
Admitted.

// HOL Light: sets.ml:467 / UNION_IDEMPOT   (hash md5:0085175b54e0b1349ab31b13ae74c6c1)
Theorem hlt_UNION_IDEMPOT : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_UNION A s s = s.
Admitted.

// HOL Light: sets.ml:471 / UNION_COMM   (hash md5:513c44490f5ecc974c0be73e92dfb65d)
Theorem hlt_UNION_COMM : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_UNION A s t = hl_UNION A t s.
Admitted.

// HOL Light: sets.ml:475 / SUBSET_UNION   (hash md5:b101d72fdfd1097efc1ae74be0cc5033)
Theorem hlt_SUBSET_UNION : forall A:set, A <> Empty -> (forall s t :e 2 :^: A, hl_SUBSET A s (hl_UNION A s t) = 1) /\ forall s t :e 2 :^: A, hl_SUBSET A s (hl_UNION A t s) = 1.
Admitted.

// HOL Light: sets.ml:480 / SUBSET_UNION_ABSORPTION   (hash md5:9ca220a9daa7e40aa3ee81dd82f75b93)
Theorem hlt_SUBSET_UNION_ABSORPTION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_SUBSET A s t = 1 <-> hl_UNION A s t = t.
Admitted.

// HOL Light: sets.ml:484 / UNION_EMPTY   (hash md5:ec993fcaff0982e1d8addb344b5a71fd)
Theorem hlt_UNION_EMPTY : forall A:set, A <> Empty -> (forall s :e 2 :^: A, hl_UNION A (hl_EMPTY A) s = s) /\ forall s :e 2 :^: A, hl_UNION A s (hl_EMPTY A) = s.
Admitted.

// HOL Light: sets.ml:489 / UNION_UNIV   (hash md5:759e4ed1aec02b2a8d70ae9ae05aa90f)
Theorem hlt_UNION_UNIV : forall A:set, A <> Empty -> (forall s :e 2 :^: A, hl_UNION A (hl_UNIV A) s = hl_UNIV A) /\ forall s :e 2 :^: A, hl_UNION A s (hl_UNIV A) = hl_UNIV A.
Admitted.

// HOL Light: sets.ml:494 / EMPTY_UNION   (hash md5:9006ef350692b8d1311ee37c8d9e1f76)
Theorem hlt_EMPTY_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_UNION A s t = hl_EMPTY A <-> s = hl_EMPTY A /\ t = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:498 / UNION_SUBSET   (hash md5:a86a321c91bc434ed83b94a17431589e)
Theorem hlt_UNION_SUBSET : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_SUBSET A (hl_UNION A s t) u = 1 <-> hl_SUBSET A s u = 1 /\ hl_SUBSET A t u = 1.
Admitted.

// HOL Light: sets.ml:502 / UNION_RESTRICT   (hash md5:5937596bc899d688c962b799870ee078)
Theorem hlt_UNION_RESTRICT : forall A:set, A <> Empty -> forall P s t :e 2 :^: A, hl_GSPEC A (fun GEN_PVAR_34 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_34 (if hl_IN A x (hl_UNION A s t) = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0) = hl_UNION A (hl_GSPEC A (fun GEN_PVAR_35 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_35 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC A (fun GEN_PVAR_36 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_36 (if hl_IN A x t = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:508 / FORALL_SUBSET_UNION   (hash md5:ddd78ea921bcc6991dd4b7ce6a2c9838)
Theorem hlt_FORALL_SUBSET_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall t u :e 2 :^: A, (forall s :e 2 :^: A, hl_SUBSET A s (hl_UNION A t u) = 1 -> P s = 1) <-> forall t' u' :e 2 :^: A, hl_SUBSET A t' t = 1 /\ hl_SUBSET A u' u = 1 -> P (hl_UNION A t' u') = 1.
Admitted.

// HOL Light: sets.ml:519 / EXISTS_SUBSET_UNION   (hash md5:d1aaadf7ee1e0107f4dd6ade79936e25)
Theorem hlt_EXISTS_SUBSET_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall t u :e 2 :^: A, (exists s :e 2 :^: A, hl_SUBSET A s (hl_UNION A t u) = 1 /\ P s = 1) <-> exists t' u' :e 2 :^: A, hl_SUBSET A t' t = 1 /\ (hl_SUBSET A u' u = 1 /\ P (hl_UNION A t' u') = 1).
Admitted.

// HOL Light: sets.ml:526 / FORALL_SUBSET_INSERT   (hash md5:172a1166c27f0ecf8f3aeca66c467883)
Theorem hlt_FORALL_SUBSET_INSERT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall a :e A, forall t :e 2 :^: A, (forall s :e 2 :^: A, hl_SUBSET A s (hl_INSERT A a t) = 1 -> P s = 1) <-> forall s :e 2 :^: A, hl_SUBSET A s t = 1 -> P s = 1 /\ P (hl_INSERT A a s) = 1.
Admitted.

// HOL Light: sets.ml:535 / EXISTS_SUBSET_INSERT   (hash md5:c414850e085cad5f68db70cb6a3a9ea3)
Theorem hlt_EXISTS_SUBSET_INSERT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall a :e A, forall t :e 2 :^: A, (exists s :e 2 :^: A, hl_SUBSET A s (hl_INSERT A a t) = 1 /\ P s = 1) <-> exists s :e 2 :^: A, hl_SUBSET A s t = 1 /\ (P s = 1 \/ P (hl_INSERT A a s) = 1).
Admitted.

// HOL Light: sets.ml:545 / INTER_ASSOC   (hash md5:50bc2783945bae00b437494f376586bb)
Theorem hlt_INTER_ASSOC : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_INTER A (hl_INTER A s t) u = hl_INTER A s (hl_INTER A t u).
Admitted.

// HOL Light: sets.ml:549 / INTER_IDEMPOT   (hash md5:2e0df6f801ef9018c4ef29f06e93d2c1)
Theorem hlt_INTER_IDEMPOT : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_INTER A s s = s.
Admitted.

// HOL Light: sets.ml:553 / INTER_COMM   (hash md5:416b3e50951abe130a0a3a5b260cec6d)
Theorem hlt_INTER_COMM : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_INTER A s t = hl_INTER A t s.
Admitted.

// HOL Light: sets.ml:557 / INTER_SUBSET   (hash md5:0319db392cc3a10b0e526cde60a20818)
Theorem hlt_INTER_SUBSET : forall A:set, A <> Empty -> (forall s t :e 2 :^: A, hl_SUBSET A (hl_INTER A s t) s = 1) /\ forall s t :e 2 :^: A, hl_SUBSET A (hl_INTER A t s) s = 1.
Admitted.

// HOL Light: sets.ml:562 / SUBSET_INTER_ABSORPTION   (hash md5:b0771921756489d9fd12fc57aa73953a)
Theorem hlt_SUBSET_INTER_ABSORPTION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_SUBSET A s t = 1 <-> hl_INTER A s t = s.
Admitted.

// HOL Light: sets.ml:566 / INTER_EMPTY   (hash md5:a368e04158e4fc209fae1e662960520b)
Theorem hlt_INTER_EMPTY : forall A:set, A <> Empty -> (forall s :e 2 :^: A, hl_INTER A (hl_EMPTY A) s = hl_EMPTY A) /\ forall s :e 2 :^: A, hl_INTER A s (hl_EMPTY A) = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:571 / INTER_UNIV   (hash md5:e65272f672b7c7fb7ed6ff0a33c850ab)
Theorem hlt_INTER_UNIV : forall A:set, A <> Empty -> (forall s :e 2 :^: A, hl_INTER A (hl_UNIV A) s = s) /\ forall s :e 2 :^: A, hl_INTER A s (hl_UNIV A) = s.
Admitted.

// HOL Light: sets.ml:576 / SUBSET_INTER   (hash md5:87a2a36adf360582bf1c9bb829ce4cc6)
Theorem hlt_SUBSET_INTER : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_SUBSET A s (hl_INTER A t u) = 1 <-> hl_SUBSET A s t = 1 /\ hl_SUBSET A s u = 1.
Admitted.

// HOL Light: sets.ml:580 / INTER_RESTRICT   (hash md5:f4bc6b2879f769bc7fa8389726973390)
Theorem hlt_INTER_RESTRICT : forall A:set, A <> Empty -> forall P s t :e 2 :^: A, hl_GSPEC A (fun GEN_PVAR_37 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_37 (if hl_IN A x (hl_INTER A s t) = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0) = hl_INTER A (hl_GSPEC A (fun GEN_PVAR_38 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_38 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC A (fun GEN_PVAR_39 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_39 (if hl_IN A x t = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:590 / UNION_OVER_INTER   (hash md5:e1c8c9c420828bc180e6677aee9b68a1)
Theorem hlt_UNION_OVER_INTER : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_INTER A s (hl_UNION A t u) = hl_UNION A (hl_INTER A s t) (hl_INTER A s u).
Admitted.

// HOL Light: sets.ml:594 / INTER_OVER_UNION   (hash md5:98be514320f3d0c8c4d2515fd2c8126d)
Theorem hlt_INTER_OVER_UNION : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_UNION A s (hl_INTER A t u) = hl_INTER A (hl_UNION A s t) (hl_UNION A s u).
Admitted.

// HOL Light: sets.ml:602 / IN_DISJOINT   (hash md5:e80e1b5356d37eabe40348815c115b94)
Theorem hlt_IN_DISJOINT : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_DISJOINT A s t = 1 <-> ~ exists x :e A, hl_IN A x s = 1 /\ hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:606 / DISJOINT_SYM   (hash md5:1085f25cd461c6e326b39221496104b5)
Theorem hlt_DISJOINT_SYM : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_DISJOINT A s t = 1 <-> hl_DISJOINT A t s = 1.
Admitted.

// HOL Light: sets.ml:610 / DISJOINT_EMPTY   (hash md5:99bba4253192eb19f3c4941d92f01c4b)
Theorem hlt_DISJOINT_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_DISJOINT A (hl_EMPTY A) s = 1 /\ hl_DISJOINT A s (hl_EMPTY A) = 1.
Admitted.

// HOL Light: sets.ml:614 / DISJOINT_EMPTY_REFL   (hash md5:fbfa1763f28e63e0f3658065877cffb6)
Theorem hlt_DISJOINT_EMPTY_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: A, s = hl_EMPTY A <-> hl_DISJOINT A s s = 1.
Admitted.

// HOL Light: sets.ml:618 / DISJOINT_UNION   (hash md5:3356fa969b76da166022b8f3328d2730)
Theorem hlt_DISJOINT_UNION : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_DISJOINT A (hl_UNION A s t) u = 1 <-> hl_DISJOINT A s u = 1 /\ hl_DISJOINT A t u = 1.
Admitted.

// HOL Light: sets.ml:622 / DISJOINT_SING   (hash md5:88d37dfb31d4c032074a211deb4af883)
Theorem hlt_DISJOINT_SING : forall A:set, A <> Empty -> (forall s :e 2 :^: A, forall a :e A, hl_DISJOINT A s (hl_INSERT A a (hl_EMPTY A)) = 1 <-> ~ hl_IN A a s = 1) /\ forall s :e 2 :^: A, forall a :e A, hl_DISJOINT A (hl_INSERT A a (hl_EMPTY A)) s = 1 <-> ~ hl_IN A a s = 1.
Admitted.

// HOL Light: sets.ml:631 / DIFF_EMPTY   (hash md5:b5e5e5858b7fee878ce9b37b99ebfbca)
Theorem hlt_DIFF_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_DIFF A s (hl_EMPTY A) = s.
Admitted.

// HOL Light: sets.ml:635 / EMPTY_DIFF   (hash md5:7906091f27d7e317ac1408ff4d9d9f4c)
Theorem hlt_EMPTY_DIFF : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_DIFF A (hl_EMPTY A) s = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:639 / DIFF_UNIV   (hash md5:7b2bb4d821dacafa70d64b592be4ed0c)
Theorem hlt_DIFF_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_DIFF A s (hl_UNIV A) = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:643 / DIFF_DIFF   (hash md5:bfb1a9c784278520a24c0dd41d35a022)
Theorem hlt_DIFF_DIFF : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_DIFF A (hl_DIFF A s t) t = hl_DIFF A s t.
Admitted.

// HOL Light: sets.ml:647 / DIFF_EQ_EMPTY   (hash md5:7052563cbccc60da11568414ffbd034f)
Theorem hlt_DIFF_EQ_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_DIFF A s s = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:651 / SUBSET_DIFF   (hash md5:4d18a77fc13a927b4410774aa0392690)
Theorem hlt_SUBSET_DIFF : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_SUBSET A (hl_DIFF A s t) s = 1.
Admitted.

// HOL Light: sets.ml:655 / COMPL_COMPL   (hash md5:1d3f35fe5eb14e6d041372a69393a5a7)
Theorem hlt_COMPL_COMPL : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_DIFF A (hl_UNIV A) (hl_DIFF A (hl_UNIV A) s) = s.
Admitted.

// HOL Light: sets.ml:659 / DIFF_RESTRICT   (hash md5:b4d387abe4d661544cbddc8eccbdbbff)
Theorem hlt_DIFF_RESTRICT : forall A:set, A <> Empty -> forall P s t :e 2 :^: A, hl_GSPEC A (fun GEN_PVAR_40 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_40 (if hl_IN A x (hl_DIFF A s t) = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0) = hl_DIFF A (hl_GSPEC A (fun GEN_PVAR_41 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_41 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_GSPEC A (fun GEN_PVAR_42 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_42 (if hl_IN A x t = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:669 / COMPONENT   (hash md5:d352e4050e23691455489b429f32dab1)
Theorem hlt_COMPONENT : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_IN A x (hl_INSERT A x s) = 1.
Admitted.

// HOL Light: sets.ml:673 / DECOMPOSITION   (hash md5:d6cc4952ea5ce419eabb0276af7b40bb)
Theorem hlt_DECOMPOSITION : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e A, hl_IN A x s = 1 <-> exists t :e 2 :^: A, s = hl_INSERT A x t /\ ~ hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:679 / SET_CASES   (hash md5:f4450f0eb6fe066a264020064dcfe7f1)
Theorem hlt_SET_CASES : forall A:set, A <> Empty -> forall s :e 2 :^: A, s = hl_EMPTY A \/ exists x :e A, exists t :e 2 :^: A, s = hl_INSERT A x t /\ ~ hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:683 / ABSORPTION   (hash md5:7e1805220f639a9ed40747c603aadeeb)
Theorem hlt_ABSORPTION : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_IN A x s = 1 <-> hl_INSERT A x s = s.
Admitted.

// HOL Light: sets.ml:687 / INSERT_INSERT   (hash md5:d6a755328494b114411ea0c4d25d0295)
Theorem hlt_INSERT_INSERT : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_INSERT A x (hl_INSERT A x s) = hl_INSERT A x s.
Admitted.

// HOL Light: sets.ml:691 / INSERT_COMM   (hash md5:10490181a7105a3529f7b21be98cf238)
Theorem hlt_INSERT_COMM : forall A:set, A <> Empty -> forall x y :e A, forall s :e 2 :^: A, hl_INSERT A x (hl_INSERT A y s) = hl_INSERT A y (hl_INSERT A x s).
Admitted.

// HOL Light: sets.ml:695 / INSERT_UNIV   (hash md5:b2d8f694f6c072f6c682389e6b1dab4a)
Theorem hlt_INSERT_UNIV : forall A:set, A <> Empty -> forall x :e A, hl_INSERT A x (hl_UNIV A) = hl_UNIV A.
Admitted.

// HOL Light: sets.ml:699 / NOT_INSERT_EMPTY   (hash md5:a0b2fd03acbc96d24728ff87276caabc)
Theorem hlt_NOT_INSERT_EMPTY : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, ~ hl_INSERT A x s = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:703 / NOT_EMPTY_INSERT   (hash md5:dd0518ca5154c71eeb5a44f56dd08beb)
Theorem hlt_NOT_EMPTY_INSERT : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, ~ hl_EMPTY A = hl_INSERT A x s.
Admitted.

// HOL Light: sets.ml:707 / INSERT_UNION   (hash md5:1a7dadb6ffa9a0743c19242f05fff676)
Theorem hlt_INSERT_UNION : forall A:set, A <> Empty -> forall x :e A, forall s t :e 2 :^: A, hl_UNION A (hl_INSERT A x s) t = hl_COND (2 :^: A) (hl_IN A x t) (hl_UNION A s t) (hl_INSERT A x (hl_UNION A s t)).
Admitted.

// HOL Light: sets.ml:713 / INSERT_UNION_EQ   (hash md5:908e574a47a4f828a5c73cac0e622a21)
Theorem hlt_INSERT_UNION_EQ : forall A:set, A <> Empty -> forall x :e A, forall s t :e 2 :^: A, hl_UNION A (hl_INSERT A x s) t = hl_INSERT A x (hl_UNION A s t).
Admitted.

// HOL Light: sets.ml:717 / INSERT_INTER   (hash md5:09b20f8e778ba32a8e8f878a4b714919)
Theorem hlt_INSERT_INTER : forall A:set, A <> Empty -> forall x :e A, forall s t :e 2 :^: A, hl_INTER A (hl_INSERT A x s) t = hl_COND (2 :^: A) (hl_IN A x t) (hl_INSERT A x (hl_INTER A s t)) (hl_INTER A s t).
Admitted.

// HOL Light: sets.ml:723 / DISJOINT_INSERT   (hash md5:487f0ff498a48f9963f07e54fb39af6b)
Theorem hlt_DISJOINT_INSERT : forall A:set, A <> Empty -> forall x :e A, forall s t :e 2 :^: A, hl_DISJOINT A (hl_INSERT A x s) t = 1 <-> hl_DISJOINT A s t = 1 /\ ~ hl_IN A x t = 1.
Admitted.

// HOL Light: sets.ml:727 / INSERT_SUBSET   (hash md5:5a05c6364a30b639bab502c24188f136)
Theorem hlt_INSERT_SUBSET : forall A:set, A <> Empty -> forall x :e A, forall s t :e 2 :^: A, hl_SUBSET A (hl_INSERT A x s) t = 1 <-> hl_IN A x t = 1 /\ hl_SUBSET A s t = 1.
Admitted.

// HOL Light: sets.ml:731 / SUBSET_INSERT   (hash md5:eb0caccfd3d3a545ef7bf11f463b4198)
Theorem hlt_SUBSET_INSERT : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, ~ hl_IN A x s = 1 -> forall t :e 2 :^: A, hl_SUBSET A s (hl_INSERT A x t) = 1 <-> hl_SUBSET A s t = 1.
Admitted.

// HOL Light: sets.ml:735 / INSERT_DIFF   (hash md5:4473458d1a62a31b4dd745f33a2f58fe)
Theorem hlt_INSERT_DIFF : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall x :e A, hl_DIFF A (hl_INSERT A x s) t = hl_COND (2 :^: A) (hl_IN A x t) (hl_DIFF A s t) (hl_INSERT A x (hl_DIFF A s t)).
Admitted.

// HOL Light: sets.ml:741 / INSERT_AC   (hash md5:b22559e509e9b17a33a64e6365edf630)
Theorem hlt_INSERT_AC : forall A:set, A <> Empty -> forall x y :e A, forall s :e 2 :^: A, hl_INSERT A x (hl_INSERT A y s) = hl_INSERT A y (hl_INSERT A x s) /\ hl_INSERT A x (hl_INSERT A x s) = hl_INSERT A x s.
Admitted.

// HOL Light: sets.ml:746 / INTER_ACI   (hash md5:92b6c6a7b0ef992d524399e97cae5886)
Theorem hlt_INTER_ACI : forall A:set, A <> Empty -> forall p q r :e 2 :^: A, hl_INTER A p q = hl_INTER A q p /\ (hl_INTER A (hl_INTER A p q) r = hl_INTER A p (hl_INTER A q r) /\ (hl_INTER A p (hl_INTER A q r) = hl_INTER A q (hl_INTER A p r) /\ (hl_INTER A p p = p /\ hl_INTER A p (hl_INTER A p q) = hl_INTER A p q))).
Admitted.

// HOL Light: sets.ml:754 / UNION_ACI   (hash md5:07377596f3694561ea113c5efaff1cef)
Theorem hlt_UNION_ACI : forall A:set, A <> Empty -> forall p q r :e 2 :^: A, hl_UNION A p q = hl_UNION A q p /\ (hl_UNION A (hl_UNION A p q) r = hl_UNION A p (hl_UNION A q r) /\ (hl_UNION A p (hl_UNION A q r) = hl_UNION A q (hl_UNION A p r) /\ (hl_UNION A p p = p /\ hl_UNION A p (hl_UNION A p q) = hl_UNION A p q))).
Admitted.

// HOL Light: sets.ml:762 / DELETE_NON_ELEMENT   (hash md5:0dcda2fe35e137ee19784d94f95dcd4a)
Theorem hlt_DELETE_NON_ELEMENT : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, ~ hl_IN A x s = 1 <-> hl_DELETE A s x = s.
Admitted.

// HOL Light: sets.ml:766 / IN_DELETE_EQ   (hash md5:4a10e6e04b108d2f62a9668be6163506)
Theorem hlt_IN_DELETE_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x x' :e A, (hl_IN A x s = 1 <-> hl_IN A x' s = 1) <-> (hl_IN A x (hl_DELETE A s x') = 1 <-> hl_IN A x' (hl_DELETE A s x) = 1).
Admitted.

// HOL Light: sets.ml:771 / EMPTY_DELETE   (hash md5:a816ba184a6e97f3a6d74dbcf7d143cb)
Theorem hlt_EMPTY_DELETE : forall A:set, A <> Empty -> forall x :e A, hl_DELETE A (hl_EMPTY A) x = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:775 / DELETE_DELETE   (hash md5:dd03b55506d92979a9e8afe8ef8d4cca)
Theorem hlt_DELETE_DELETE : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_DELETE A (hl_DELETE A s x) x = hl_DELETE A s x.
Admitted.

// HOL Light: sets.ml:779 / DELETE_COMM   (hash md5:0d526cc0fd7079f4b3881a69cd0649f9)
Theorem hlt_DELETE_COMM : forall A:set, A <> Empty -> forall x y :e A, forall s :e 2 :^: A, hl_DELETE A (hl_DELETE A s x) y = hl_DELETE A (hl_DELETE A s y) x.
Admitted.

// HOL Light: sets.ml:783 / DELETE_SUBSET   (hash md5:078bc9b56a7bf03d3e7ce9ddd1af63bb)
Theorem hlt_DELETE_SUBSET : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_SUBSET A (hl_DELETE A s x) s = 1.
Admitted.

// HOL Light: sets.ml:787 / SUBSET_DELETE   (hash md5:4e7ca52ea617a097832c436b867126ea)
Theorem hlt_SUBSET_DELETE : forall A:set, A <> Empty -> forall x :e A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_DELETE A t x) = 1 <-> ~ hl_IN A x s = 1 /\ hl_SUBSET A s t = 1.
Admitted.

// HOL Light: sets.ml:791 / SUBSET_INSERT_DELETE   (hash md5:8b4bddc31c0fedf0ad4cc162f876bbce)
Theorem hlt_SUBSET_INSERT_DELETE : forall A:set, A <> Empty -> forall x :e A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_INSERT A x t) = 1 <-> hl_SUBSET A (hl_DELETE A s x) t = 1.
Admitted.

// HOL Light: sets.ml:795 / DIFF_INSERT   (hash md5:860cebd324928909d3091b1cf9720555)
Theorem hlt_DIFF_INSERT : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall x :e A, hl_DIFF A s (hl_INSERT A x t) = hl_DIFF A (hl_DELETE A s x) t.
Admitted.

// HOL Light: sets.ml:799 / PSUBSET_INSERT_SUBSET   (hash md5:2f02df101089afdad39350e37a5dd3f6)
Theorem hlt_PSUBSET_INSERT_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_PSUBSET A s t = 1 <-> exists x :e A, ~ hl_IN A x s = 1 /\ hl_SUBSET A (hl_INSERT A x s) t = 1.
Admitted.

// HOL Light: sets.ml:803 / DELETE_INSERT   (hash md5:1189cefe6e65ac793f83e648e9159f01)
Theorem hlt_DELETE_INSERT : forall A:set, A <> Empty -> forall x y :e A, forall s :e 2 :^: A, hl_DELETE A (hl_INSERT A x s) y = hl_COND (2 :^: A) (if x = y then 1 else 0) (hl_DELETE A s y) (hl_INSERT A x (hl_DELETE A s y)).
Admitted.

// HOL Light: sets.ml:810 / INSERT_DELETE   (hash md5:70ccac3a5621998e241f9f6944a6c4ab)
Theorem hlt_INSERT_DELETE : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_IN A x s = 1 -> hl_INSERT A x (hl_DELETE A s x) = s.
Admitted.

// HOL Light: sets.ml:814 / DELETE_INTER   (hash md5:83869d90747049f22e1b3d1b8f0fbf4f)
Theorem hlt_DELETE_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall x :e A, hl_INTER A (hl_DELETE A s x) t = hl_DELETE A (hl_INTER A s t) x.
Admitted.

// HOL Light: sets.ml:818 / DISJOINT_DELETE_SYM   (hash md5:2ad853455d2a68dd10a80c06f3c54763)
Theorem hlt_DISJOINT_DELETE_SYM : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall x :e A, hl_DISJOINT A (hl_DELETE A s x) t = 1 <-> hl_DISJOINT A (hl_DELETE A t x) s = 1.
Admitted.

// HOL Light: sets.ml:826 / UNIONS_0   (hash md5:4755ffa5a5126b386b54c0e903355e25)
Theorem hlt_UNIONS_0 : forall A:set, A <> Empty -> hl_UNIONS A (hl_EMPTY (2 :^: A)) = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:830 / UNIONS_1   (hash md5:39570b803e7a0418416d9ed9d896b551)
Theorem hlt_UNIONS_1 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_UNIONS A (hl_INSERT (2 :^: A) s (hl_EMPTY (2 :^: A))) = s.
Admitted.

// HOL Light: sets.ml:834 / UNIONS_2   (hash md5:63ff7d7dc33e9bd7fad4e2036838db80)
Theorem hlt_UNIONS_2 : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_UNIONS A (hl_INSERT (2 :^: A) s (hl_INSERT (2 :^: A) t (hl_EMPTY (2 :^: A)))) = hl_UNION A s t.
Admitted.

// HOL Light: sets.ml:838 / UNIONS_INSERT   (hash md5:de1ef5f54205563dbbf8b94ab8d271e9)
Theorem hlt_UNIONS_INSERT : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall u :e 2 :^: (2 :^: A), hl_UNIONS A (hl_INSERT (2 :^: A) s u) = hl_UNION A s (hl_UNIONS A u).
Admitted.

// HOL Light: sets.ml:842 / FORALL_IN_UNIONS   (hash md5:f70844cc1e1a186ecf03b3eae98115fd)
Theorem hlt_FORALL_IN_UNIONS : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall s :e 2 :^: (2 :^: A), (forall x :e A, hl_IN A x (hl_UNIONS A s) = 1 -> P x = 1) <-> forall t :e 2 :^: A, forall x :e A, hl_IN (2 :^: A) t s = 1 /\ hl_IN A x t = 1 -> P x = 1.
Admitted.

// HOL Light: sets.ml:846 / EXISTS_IN_UNIONS   (hash md5:64f7facc93b37fb8773110b2e9e97b01)
Theorem hlt_EXISTS_IN_UNIONS : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall s :e 2 :^: (2 :^: A), (exists x :e A, hl_IN A x (hl_UNIONS A s) = 1 /\ P x = 1) <-> exists t :e 2 :^: A, exists x :e A, hl_IN (2 :^: A) t s = 1 /\ (hl_IN A x t = 1 /\ P x = 1).
Admitted.

// HOL Light: sets.ml:850 / EMPTY_UNIONS   (hash md5:cc0e3747d11d2ff0112db6cd291e4243)
Theorem hlt_EMPTY_UNIONS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_UNIONS A s = hl_EMPTY A <-> forall t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 -> t = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:854 / INTER_UNIONS   (hash md5:d3e036dd31a7dc19f78126a6b965e994)
Theorem hlt_INTER_UNIONS : forall A:set, A <> Empty -> (forall s :e 2 :^: (2 :^: A), forall t :e 2 :^: A, hl_INTER A (hl_UNIONS A s) t = hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_43 :e 2 :^: A => if exists x :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_43 (hl_IN (2 :^: A) x s) (hl_INTER A x t) = 1 then 1 else 0))) /\ forall s :e 2 :^: (2 :^: A), forall t :e 2 :^: A, hl_INTER A t (hl_UNIONS A s) = hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_44 :e 2 :^: A => if exists x :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_44 (hl_IN (2 :^: A) x s) (hl_INTER A t x) = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:861 / UNIONS_SUBSET   (hash md5:2f4398e047ebc020895696a2c2b6a9ce)
Theorem hlt_UNIONS_SUBSET : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), forall t :e 2 :^: A, hl_SUBSET A (hl_UNIONS A f) t = 1 <-> forall s :e 2 :^: A, hl_IN (2 :^: A) s f = 1 -> hl_SUBSET A s t = 1.
Admitted.

// HOL Light: sets.ml:865 / SUBSET_UNIONS   (hash md5:482406cd9c11fb922d55da6d94bc5092)
Theorem hlt_SUBSET_UNIONS : forall A:set, A <> Empty -> forall f g :e 2 :^: (2 :^: A), hl_SUBSET (2 :^: A) f g = 1 -> hl_SUBSET A (hl_UNIONS A f) (hl_UNIONS A g) = 1.
Admitted.

// HOL Light: sets.ml:869 / UNIONS_UNION   (hash md5:d8fcc1613c9a24e5019aedbbc5d0afda)
Theorem hlt_UNIONS_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: (2 :^: A), hl_UNIONS A (hl_UNION (2 :^: A) s t) = hl_UNION A (hl_UNIONS A s) (hl_UNIONS A t).
Admitted.

// HOL Light: sets.ml:873 / INTERS_UNION   (hash md5:06dc38c9ec99183a5351fff7b1745301)
Theorem hlt_INTERS_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: (2 :^: A), hl_INTERS A (hl_UNION (2 :^: A) s t) = hl_INTER A (hl_INTERS A s) (hl_INTERS A t).
Admitted.

// HOL Light: sets.ml:877 / UNIONS_MONO   (hash md5:70a85a381669cc5479eac18065d6fdc5)
Theorem hlt_UNIONS_MONO : forall A:set, A <> Empty -> forall s t :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x s = 1 -> exists y :e 2 :^: A, hl_IN (2 :^: A) y t = 1 /\ hl_SUBSET A x y = 1) -> hl_SUBSET A (hl_UNIONS A s) (hl_UNIONS A t) = 1.
Admitted.

// HOL Light: sets.ml:882 / UNIONS_MONO_IMAGE   (hash md5:4326d9fcf06d4a50a28015552bc25709)
Theorem hlt_UNIONS_MONO_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e 2 :^: B :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_SUBSET B (f x) (g x) = 1) -> hl_SUBSET B (hl_UNIONS B (hl_IMAGE A (2 :^: B) f s)) (hl_UNIONS B (hl_IMAGE A (2 :^: B) g s)) = 1.
Admitted.

// HOL Light: sets.ml:888 / UNIONS_UNIV   (hash md5:ec1291cc31ce184fea8990aad05c2ed1)
Theorem hlt_UNIONS_UNIV : forall A:set, A <> Empty -> hl_UNIONS A (hl_UNIV (2 :^: A)) = hl_UNIV A.
Admitted.

// HOL Light: sets.ml:893 / UNIONS_INSERT_EMPTY   (hash md5:7b6059ec60097b3c28e98c03e03355fc)
Theorem hlt_UNIONS_INSERT_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_UNIONS A (hl_INSERT (2 :^: A) (hl_EMPTY A) s) = hl_UNIONS A s.
Admitted.

// HOL Light: sets.ml:898 / UNIONS_DELETE_EMPTY   (hash md5:28749974e3d14dff5460096563def9aa)
Theorem hlt_UNIONS_DELETE_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_UNIONS A (hl_DELETE (2 :^: A) s (hl_EMPTY A)) = hl_UNIONS A s.
Admitted.

// HOL Light: sets.ml:907 / INTERS_0   (hash md5:d34a743f9691d419efa1202d969b261f)
Theorem hlt_INTERS_0 : forall A:set, A <> Empty -> hl_INTERS A (hl_EMPTY (2 :^: A)) = hl_UNIV A.
Admitted.

// HOL Light: sets.ml:911 / INTERS_1   (hash md5:88c36b569fecd932c1ce47c3a509a047)
Theorem hlt_INTERS_1 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_INTERS A (hl_INSERT (2 :^: A) s (hl_EMPTY (2 :^: A))) = s.
Admitted.

// HOL Light: sets.ml:915 / INTERS_2   (hash md5:178b3543e4c98666f7c91d0a5e0af465)
Theorem hlt_INTERS_2 : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_INTERS A (hl_INSERT (2 :^: A) s (hl_INSERT (2 :^: A) t (hl_EMPTY (2 :^: A)))) = hl_INTER A s t.
Admitted.

// HOL Light: sets.ml:919 / INTERS_INSERT   (hash md5:aa86287310a3119611b5759a859e7fa2)
Theorem hlt_INTERS_INSERT : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall u :e 2 :^: (2 :^: A), hl_INTERS A (hl_INSERT (2 :^: A) s u) = hl_INTER A s (hl_INTERS A u).
Admitted.

// HOL Light: sets.ml:923 / SUBSET_INTERS   (hash md5:50b113008661d1193db3e5bf73d7941c)
Theorem hlt_SUBSET_INTERS : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e 2 :^: (2 :^: A), hl_SUBSET A s (hl_INTERS A f) = 1 <-> forall t :e 2 :^: A, hl_IN (2 :^: A) t f = 1 -> hl_SUBSET A s t = 1.
Admitted.

// HOL Light: sets.ml:927 / INTERS_SUBSET   (hash md5:6b20848498083bd60a4495e41eb92468)
Theorem hlt_INTERS_SUBSET : forall A:set, A <> Empty -> forall u :e 2 :^: (2 :^: A), forall s :e 2 :^: A, ~ u = hl_EMPTY (2 :^: A) /\ (forall t :e 2 :^: A, hl_IN (2 :^: A) t u = 1 -> hl_SUBSET A t s = 1) -> hl_SUBSET A (hl_INTERS A u) s = 1.
Admitted.

// HOL Light: sets.ml:932 / INTERS_SUBSET_STRONG   (hash md5:567e785f99581f3d3229069f6c3034ef)
Theorem hlt_INTERS_SUBSET_STRONG : forall A:set, A <> Empty -> forall u :e 2 :^: (2 :^: A), forall s :e 2 :^: A, (exists t :e 2 :^: A, hl_IN (2 :^: A) t u = 1 /\ hl_SUBSET A t s = 1) -> hl_SUBSET A (hl_INTERS A u) s = 1.
Admitted.

// HOL Light: sets.ml:936 / INTERS_ANTIMONO   (hash md5:e80c13090dfba7d2417f50cae231fd7f)
Theorem hlt_INTERS_ANTIMONO : forall A:set, A <> Empty -> forall f g :e 2 :^: (2 :^: A), hl_SUBSET (2 :^: A) g f = 1 -> hl_SUBSET A (hl_INTERS A f) (hl_INTERS A g) = 1.
Admitted.

// HOL Light: sets.ml:940 / INTERS_EQ_UNIV   (hash md5:6c18caf24efaac96e3a04f2d79fae594)
Theorem hlt_INTERS_EQ_UNIV : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), hl_INTERS A f = hl_UNIV A <-> forall s :e 2 :^: A, hl_IN (2 :^: A) s f = 1 -> s = hl_UNIV A.
Admitted.

// HOL Light: sets.ml:944 / INTERS_ANTIMONO_GEN   (hash md5:aa4c09fe699036da2052e077aa91b698)
Theorem hlt_INTERS_ANTIMONO_GEN : forall A:set, A <> Empty -> forall s t :e 2 :^: (2 :^: A), (forall y :e 2 :^: A, hl_IN (2 :^: A) y t = 1 -> exists x :e 2 :^: A, hl_IN (2 :^: A) x s = 1 /\ hl_SUBSET A x y = 1) -> hl_SUBSET A (hl_INTERS A s) (hl_INTERS A t) = 1.
Admitted.

// HOL Light: sets.ml:954 / IMAGE_CLAUSES   (hash md5:d971eba44eb36baa8624acc2c96acb14)
Theorem hlt_IMAGE_CLAUSES : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall x :e A, forall s :e 2 :^: A, hl_IMAGE A B f (hl_EMPTY A) = hl_EMPTY B /\ hl_IMAGE A B f (hl_INSERT A x s) = hl_INSERT B (f x) (hl_IMAGE A B f s).
Admitted.

// HOL Light: sets.ml:960 / IMAGE_UNION   (hash md5:7899e64c5c00ccaa56868de1770758e9)
Theorem hlt_IMAGE_UNION : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_IMAGE A B f (hl_UNION A s t) = hl_UNION B (hl_IMAGE A B f s) (hl_IMAGE A B f t).
Admitted.

// HOL Light: sets.ml:964 / IMAGE_ID   (hash md5:01b246c997525053fc5b3cc2cf50bc5d)
Theorem hlt_IMAGE_ID : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_IMAGE A A (fun x :e A => x) s = s.
Admitted.

// HOL Light: sets.ml:968 / IMAGE_I   (hash md5:8eaf7e71839341a7ce6527d0469812cb)
Theorem hlt_IMAGE_I : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_IMAGE A A (hl_I A) s = s.
Admitted.

// HOL Light: sets.ml:972 / IMAGE_o   (hash md5:9666e7022fca9e70698bca3379b4251d)
Theorem hlt_IMAGE_o : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B, forall g :e B :^: A, forall s :e 2 :^: A, hl_IMAGE A C (hl_o B C A f g) s = hl_IMAGE B C f (hl_IMAGE A B g s).
Admitted.

// HOL Light: sets.ml:976 / IMAGE_SUBSET   (hash md5:febade15ac821ca773e389b3ecdc7591)
Theorem hlt_IMAGE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 -> hl_SUBSET B (hl_IMAGE A B f s) (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: sets.ml:980 / IMAGE_INTER_INJ   (hash md5:00b3dc89ee9a5fee5a55e3a613178a8e)
Theorem hlt_IMAGE_INTER_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s t :e 2 :^: A, (forall x y :e A, f x = f y -> x = y) -> hl_IMAGE A B f (hl_INTER A s t) = hl_INTER B (hl_IMAGE A B f s) (hl_IMAGE A B f t).
Admitted.

// HOL Light: sets.ml:986 / IMAGE_DIFF_INJ   (hash md5:fbfa071c4f10b33a4ea36f33f883c70f)
Theorem hlt_IMAGE_DIFF_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s t :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y t = 1 /\ f x = f y) -> x = y) -> hl_IMAGE A B f (hl_DIFF A s t) = hl_DIFF B (hl_IMAGE A B f s) (hl_IMAGE A B f t).
Admitted.

// HOL Light: sets.ml:992 / IMAGE_DIFF_INJ_ALT   (hash md5:703226f3a051e27ab6d2061309be8632)
Theorem hlt_IMAGE_DIFF_INJ_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s t :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ hl_SUBSET A t s = 1 -> hl_IMAGE A B f (hl_DIFF A s t) = hl_DIFF B (hl_IMAGE A B f s) (hl_IMAGE A B f t).
Admitted.

// HOL Light: sets.ml:998 / IMAGE_DELETE_INJ   (hash md5:7a85d1f382099d8eef17b8ad41fe0148)
Theorem hlt_IMAGE_DELETE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall a :e A, (forall x :e A, hl_IN A x s = 1 /\ f x = f a -> x = a) -> hl_IMAGE A B f (hl_DELETE A s a) = hl_DELETE B (hl_IMAGE A B f s) (f a).
Admitted.

// HOL Light: sets.ml:1004 / IMAGE_DELETE_INJ_ALT   (hash md5:3d1e77bc8ffec4beaeff58d70502b88f)
Theorem hlt_IMAGE_DELETE_INJ_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall a :e A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ hl_IN A a s = 1 -> hl_IMAGE A B f (hl_DELETE A s a) = hl_DELETE B (hl_IMAGE A B f s) (f a).
Admitted.

// HOL Light: sets.ml:1010 / IMAGE_EQ_EMPTY   (hash md5:2f9ec18777abac6f7292991839d512dd)
Theorem hlt_IMAGE_EQ_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_IMAGE A B f s = hl_EMPTY B <-> s = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:1014 / FORALL_IN_IMAGE_2   (hash md5:7f377986da40325ad9d8f38b07fce960)
Theorem hlt_FORALL_IN_IMAGE_2 : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall P :e 2 :^: B :^: B, forall s :e 2 :^: A, (forall x y :e B, hl_IN B x (hl_IMAGE A B f s) = 1 /\ hl_IN B y (hl_IMAGE A B f s) = 1 -> P x y = 1) <-> forall x y :e A, hl_IN A x s = 1 /\ hl_IN A y s = 1 -> P (f x) (f y) = 1.
Admitted.

// HOL Light: sets.ml:1019 / IMAGE_CONST   (hash md5:5bd033ca0cefa6e81dcee950bc92e648)
Theorem hlt_IMAGE_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall c :e B, hl_IMAGE A B (fun x :e A => c) s = hl_COND (2 :^: B) (if s = hl_EMPTY A then 1 else 0) (hl_EMPTY B) (hl_INSERT B c (hl_EMPTY B)).
Admitted.

// HOL Light: sets.ml:1026 / SIMPLE_IMAGE   (hash md5:474c46a77fa474ddb854096d0f174af3)
Theorem hlt_SIMPLE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_GSPEC B (fun GEN_PVAR_45 :e B => if exists x :e A, hl_SETSPEC B GEN_PVAR_45 (hl_IN A x s) (f x) = 1 then 1 else 0) = hl_IMAGE A B f s.
Admitted.

// HOL Light: sets.ml:1030 / SIMPLE_IMAGE_GEN   (hash md5:80cb34ae0f8ad145188f7aacf09a506d)
Theorem hlt_SIMPLE_IMAGE_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall P :e 2 :^: A, hl_GSPEC B (fun GEN_PVAR_46 :e B => if exists x :e A, hl_SETSPEC B GEN_PVAR_46 (P x) (f x) = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_47 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_47 (P x) x = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:1034 / IMAGE_UNIONS   (hash md5:6c5953895892bfb979f2907890243739)
Theorem hlt_IMAGE_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: (2 :^: A), hl_IMAGE A B f (hl_UNIONS A s) = hl_UNIONS B (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s).
Admitted.

// HOL Light: sets.ml:1042 / FUN_IN_IMAGE   (hash md5:01dcdb4ccc6836c3c4f14f3f189c2af8)
Theorem hlt_FUN_IN_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) (hl_IMAGE A B f s) = 1.
Admitted.

// HOL Light: sets.ml:1046 / SURJECTIVE_IMAGE_EQ   (hash md5:4d41914ed1fcf40a024866f17b655c24)
Theorem hlt_SURJECTIVE_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, (forall y :e B, hl_IN B y t = 1 -> exists x :e A, f x = y) /\ (forall x :e A, hl_IN B (f x) t = 1 <-> hl_IN A x s = 1) -> hl_IMAGE A B f s = t.
Admitted.

// HOL Light: sets.ml:1052 / IMAGE_EQ   (hash md5:a3535927145e7c716764d351f650fe3d)
Theorem hlt_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = g x) -> hl_IMAGE A B f s = hl_IMAGE A B g s.
Admitted.

// HOL Light: sets.ml:1060 / EMPTY_GSPEC   (hash md5:2ed1d6bb1a68368f8a68975d3784bf02)
Theorem hlt_EMPTY_GSPEC : forall A:set, A <> Empty -> hl_GSPEC A (fun GEN_PVAR_48 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_48 (if False then 1 else 0) x = 1 then 1 else 0) = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:1064 / UNIV_GSPEC   (hash md5:0539fd35817a901f982ff7c3a597321a)
Theorem hlt_UNIV_GSPEC : forall A:set, A <> Empty -> hl_GSPEC A (fun GEN_PVAR_49 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_49 (if True then 1 else 0) x = 1 then 1 else 0) = hl_UNIV A.
Admitted.

// HOL Light: sets.ml:1068 / SING_GSPEC   (hash md5:22e0842e55f614b290e24d69b10da5cd)
Theorem hlt_SING_GSPEC : forall A:set, A <> Empty -> (forall a :e A, hl_GSPEC A (fun GEN_PVAR_50 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_50 (if x = a then 1 else 0) x = 1 then 1 else 0) = hl_INSERT A a (hl_EMPTY A)) /\ forall a :e A, hl_GSPEC A (fun GEN_PVAR_51 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_51 (if a = x then 1 else 0) x = 1 then 1 else 0) = hl_INSERT A a (hl_EMPTY A).
Admitted.

// HOL Light: sets.ml:1073 / SING_ALT   (hash md5:3b330cce0e0d138ed8a0a7e8f3f38d30)
Theorem hlt_SING_ALT : forall A:set, A <> Empty -> forall s :e 2 :^: A, (exists x :e A, s = hl_INSERT A x (hl_EMPTY A)) <-> hl_exists_unique A (fun x :e A => hl_IN A x s) = 1.
Admitted.

// HOL Light: sets.ml:1077 / IN_GSPEC   (hash md5:2e7cc3389411741b5981be931137e072)
Theorem hlt_IN_GSPEC : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_GSPEC A (fun GEN_PVAR_52 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_52 (hl_IN A x s) x = 1 then 1 else 0) = s.
Admitted.

// HOL Light: sets.ml:1081 / IN_ELIM_PAIR_THM   (hash md5:b0c826c6c5ab3d857a1f3d88effce79f)
Theorem hlt_IN_ELIM_PAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, forall a :e A, forall b :e B, hl_IN (A :*: B) (hl_pair A B a b) (hl_GSPEC (A :*: B) (fun GEN_PVAR_53 :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) GEN_PVAR_53 (P x y) (hl_pair A B x y) = 1 then 1 else 0)) = 1 <-> P a b = 1.
Admitted.

// HOL Light: sets.ml:1085 / IN_ELIM_TRIPLE_THM   (hash md5:a10a98ef55c27a8920327974e4621a93)
Theorem hlt_IN_ELIM_TRIPLE_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> (forall P :e 2 :^: C :^: B :^: A, forall a :e A, forall b :e B, forall c :e C, hl_IN (A :*: (B :*: C)) (hl_pair A (B :*: C) a (hl_pair B C b c)) (hl_GSPEC (A :*: (B :*: C)) (fun GEN_PVAR_54 :e A :*: (B :*: C) => if exists x :e A, exists y :e B, exists z :e C, hl_SETSPEC (A :*: (B :*: C)) GEN_PVAR_54 (P x y z) (hl_pair A (B :*: C) x (hl_pair B C y z)) = 1 then 1 else 0)) = 1 <-> P a b c = 1) /\ forall P :e 2 :^: C :^: B :^: A, forall a :e A, forall b :e B, forall c :e C, hl_IN (A :*: B :*: C) (hl_pair (A :*: B) C (hl_pair A B a b) c) (hl_GSPEC (A :*: B :*: C) (fun GEN_PVAR_55 :e A :*: B :*: C => if exists x :e A, exists y :e B, exists z :e C, hl_SETSPEC (A :*: B :*: C) GEN_PVAR_55 (P x y z) (hl_pair (A :*: B) C (hl_pair A B x y) z) = 1 then 1 else 0)) = 1 <-> P a b c = 1.
Admitted.

// HOL Light: sets.ml:1090 / IN_ELIM_QUAD_THM   (hash md5:b5a7c4d1fabecaa9dfaa8202f1049d21)
Theorem hlt_IN_ELIM_QUAD_THM : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall P :e 2 :^: D :^: C :^: B :^: A, forall a :e A, forall b :e B, forall c :e C, forall d :e D, hl_IN (A :*: (B :*: (C :*: D))) (hl_pair A (B :*: (C :*: D)) a (hl_pair B (C :*: D) b (hl_pair C D c d))) (hl_GSPEC (A :*: (B :*: (C :*: D))) (fun GEN_PVAR_56 :e A :*: (B :*: (C :*: D)) => if exists w :e A, exists x :e B, exists y :e C, exists z :e D, hl_SETSPEC (A :*: (B :*: (C :*: D))) GEN_PVAR_56 (P w x y z) (hl_pair A (B :*: (C :*: D)) w (hl_pair B (C :*: D) x (hl_pair C D y z))) = 1 then 1 else 0)) = 1 <-> P a b c d = 1) /\ ((forall P :e 2 :^: D :^: C :^: B :^: A, forall a :e A, forall b :e B, forall c :e C, forall d :e D, hl_IN (A :*: B :*: (C :*: D)) (hl_pair (A :*: B) (C :*: D) (hl_pair A B a b) (hl_pair C D c d)) (hl_GSPEC (A :*: B :*: (C :*: D)) (fun GEN_PVAR_57 :e A :*: B :*: (C :*: D) => if exists w :e A, exists x :e B, exists y :e C, exists z :e D, hl_SETSPEC (A :*: B :*: (C :*: D)) GEN_PVAR_57 (P w x y z) (hl_pair (A :*: B) (C :*: D) (hl_pair A B w x) (hl_pair C D y z)) = 1 then 1 else 0)) = 1 <-> P a b c d = 1) /\ forall P :e 2 :^: D :^: C :^: B :^: A, forall a :e A, forall b :e B, forall c :e C, forall d :e D, hl_IN (A :*: B :*: C :*: D) (hl_pair (A :*: B :*: C) D (hl_pair (A :*: B) C (hl_pair A B a b) c) d) (hl_GSPEC (A :*: B :*: C :*: D) (fun GEN_PVAR_58 :e A :*: B :*: C :*: D => if exists w :e A, exists x :e B, exists y :e C, exists z :e D, hl_SETSPEC (A :*: B :*: C :*: D) GEN_PVAR_58 (P w x y z) (hl_pair (A :*: B :*: C) D (hl_pair (A :*: B) C (hl_pair A B w x) y) z) = 1 then 1 else 0)) = 1 <-> P a b c d = 1).
Admitted.

// HOL Light: sets.ml:1099 / SET_PAIR_THM   (hash md5:b6a126417100e7fb01822c6609f50044)
Theorem hlt_SET_PAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), hl_GSPEC (A :*: B) (fun GEN_PVAR_59 :e A :*: B => if exists p :e A :*: B, hl_SETSPEC (A :*: B) GEN_PVAR_59 (P p) p = 1 then 1 else 0) = hl_GSPEC (A :*: B) (fun GEN_PVAR_60 :e A :*: B => if exists a :e A, exists b :e B, hl_SETSPEC (A :*: B) GEN_PVAR_60 (P (hl_pair A B a b)) (hl_pair A B a b) = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:1103 / SET_PROVE_CASES   (hash md5:d165a77e72d5fd3690f52e7e07f4feb2)
Theorem hlt_SET_PROVE_CASES : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), P (hl_EMPTY A) = 1 /\ (forall a :e A, forall s :e 2 :^: A, ~ hl_IN A a s = 1 -> P (hl_INSERT A a s) = 1) -> forall s :e 2 :^: A, P s = 1.
Admitted.

// HOL Light: sets.ml:1109 / UNIONS_SINGS_GEN   (hash md5:7bc0239890f9ad4975b2899e65a6baa9)
Theorem hlt_UNIONS_SINGS_GEN : forall A:set, A <> Empty -> forall P :e 2 :^: A, hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_61 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_61 (P x) (hl_INSERT A x (hl_EMPTY A)) = 1 then 1 else 0)) = hl_GSPEC A (fun GEN_PVAR_62 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_62 (P x) x = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:1113 / UNIONS_SINGS   (hash md5:1b2efa012ef3df19c35f483ad4ac349a)
Theorem hlt_UNIONS_SINGS : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_63 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_63 (hl_IN A x s) (hl_INSERT A x (hl_EMPTY A)) = 1 then 1 else 0)) = s.
Admitted.

// HOL Light: sets.ml:1117 / IMAGE_INTERS   (hash md5:88415c2ae5c425a5a88b718074cfabfb)
Theorem hlt_IMAGE_INTERS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: (2 :^: A), ~ s = hl_EMPTY (2 :^: A) /\ (forall x y :e A, hl_IN A x (hl_UNIONS A s) = 1 /\ (hl_IN A y (hl_UNIONS A s) = 1 /\ f x = f y) -> x = y) -> hl_IMAGE A B f (hl_INTERS A s) = hl_INTERS B (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s).
Admitted.

// HOL Light: sets.ml:1124 / DIFF_INTERS   (hash md5:1b981d0416c085dfe5b79a1ed5963e59)
Theorem hlt_DIFF_INTERS : forall A:set, A <> Empty -> forall u :e 2 :^: A, forall s :e 2 :^: (2 :^: A), hl_DIFF A u (hl_INTERS A s) = hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_64 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_64 (hl_IN (2 :^: A) t s) (hl_DIFF A u t) = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:1128 / INTERS_UNIONS   (hash md5:bcf1ee77aebb105cb94a64ab89650f78)
Theorem hlt_INTERS_UNIONS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_INTERS A s = hl_DIFF A (hl_UNIV A) (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_65 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_65 (hl_IN (2 :^: A) t s) (hl_DIFF A (hl_UNIV A) t) = 1 then 1 else 0))).
Admitted.

// HOL Light: sets.ml:1132 / UNIONS_INTERS   (hash md5:32f705243a2b8b95bf4a96857a23a8e3)
Theorem hlt_UNIONS_INTERS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_UNIONS A s = hl_DIFF A (hl_UNIV A) (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_66 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_66 (hl_IN (2 :^: A) t s) (hl_DIFF A (hl_UNIV A) t) = 1 then 1 else 0))).
Admitted.

// HOL Light: sets.ml:1138 / UNIONS_DIFF   (hash md5:8211692ff749b519f90092160738d4b7)
Theorem hlt_UNIONS_DIFF : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), forall t :e 2 :^: A, hl_DIFF A (hl_UNIONS A s) t = hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_67 :e 2 :^: A => if exists x :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_67 (hl_IN (2 :^: A) x s) (hl_DIFF A x t) = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:1142 / DIFF_UNIONS   (hash md5:b33b9d9272dfa5a4334061e6d3f37bce)
Theorem hlt_DIFF_UNIONS : forall A:set, A <> Empty -> forall u :e 2 :^: A, forall s :e 2 :^: (2 :^: A), hl_DIFF A u (hl_UNIONS A s) = hl_INTER A u (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_68 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_68 (hl_IN (2 :^: A) t s) (hl_DIFF A u t) = 1 then 1 else 0))).
Admitted.

// HOL Light: sets.ml:1146 / DIFF_UNIONS_NONEMPTY   (hash md5:d45650d2375bf668fabb1e4eca1a34b8)
Theorem hlt_DIFF_UNIONS_NONEMPTY : forall A:set, A <> Empty -> forall u :e 2 :^: A, forall s :e 2 :^: (2 :^: A), ~ s = hl_EMPTY (2 :^: A) -> hl_DIFF A u (hl_UNIONS A s) = hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_69 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_69 (hl_IN (2 :^: A) t s) (hl_DIFF A u t) = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:1150 / INTERS_OVER_UNIONS   (hash md5:d938b398ae983c87c5dc3d8bc9f6d29c)
Theorem hlt_INTERS_OVER_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e 2 :^: (2 :^: B) :^: A, forall s :e 2 :^: A, hl_INTERS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_70 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_70 (hl_IN A x s) (hl_UNIONS B (f x)) = 1 then 1 else 0)) = hl_UNIONS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_74 :e 2 :^: B => if exists g :e 2 :^: B :^: A, hl_SETSPEC (2 :^: B) GEN_PVAR_74 (if forall x :e A, hl_IN A x s = 1 -> hl_IN (2 :^: B) (g x) (f x) = 1 then 1 else 0) (hl_INTERS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_73 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_73 (hl_IN A x s) (g x) = 1 then 1 else 0))) = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:1160 / INTER_INTERS   (hash md5:ab8c4062cd2eb7a5514eb545251f7a4e)
Theorem hlt_INTER_INTERS : forall A:set, A <> Empty -> (forall f :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_INTER A s (hl_INTERS A f) = hl_COND (2 :^: A) (if f = hl_EMPTY (2 :^: A) then 1 else 0) s (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_75 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_75 (hl_IN (2 :^: A) t f) (hl_INTER A s t) = 1 then 1 else 0)))) /\ forall f :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_INTER A (hl_INTERS A f) s = hl_COND (2 :^: A) (if f = hl_EMPTY (2 :^: A) then 1 else 0) s (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_76 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_76 (hl_IN (2 :^: A) t f) (hl_INTER A t s) = 1 then 1 else 0))).
Admitted.

// HOL Light: sets.ml:1171 / UNIONS_OVER_INTERS   (hash md5:d2f3cf119ce82229bdad4cfa17039121)
Theorem hlt_UNIONS_OVER_INTERS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e 2 :^: (2 :^: B) :^: A, forall s :e 2 :^: A, hl_UNIONS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_77 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_77 (hl_IN A x s) (hl_INTERS B (f x)) = 1 then 1 else 0)) = hl_INTERS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_81 :e 2 :^: B => if exists g :e 2 :^: B :^: A, hl_SETSPEC (2 :^: B) GEN_PVAR_81 (if forall x :e A, hl_IN A x s = 1 -> hl_IN (2 :^: B) (g x) (f x) = 1 then 1 else 0) (hl_UNIONS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_80 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_80 (hl_IN A x s) (g x) = 1 then 1 else 0))) = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:1182 / UNIONS_EQ_INTERS   (hash md5:ebf6d0cf4e052aba1a3c81c9fe98b0c4)
Theorem hlt_UNIONS_EQ_INTERS : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), hl_UNIONS A f = hl_INTERS A f <-> exists s :e 2 :^: A, f = hl_INSERT (2 :^: A) s (hl_EMPTY (2 :^: A)).
Admitted.

// HOL Light: sets.ml:1188 / EXISTS_UNIQUE_UNIONS_INTERS   (hash md5:46af7a769cd97265067d44e0ec6c13f5)
Theorem hlt_EXISTS_UNIQUE_UNIONS_INTERS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_exists_unique (2 :^: A) (fun s :e 2 :^: A => P s) = 1 <-> hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_82 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_82 (P s) s = 1 then 1 else 0)) = hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_83 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_83 (P s) s = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:1192 / IMAGE_INTERS_SUBSET   (hash md5:17884b20f590e4546f3f54068df4105c)
Theorem hlt_IMAGE_INTERS_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e 2 :^: (2 :^: A), hl_SUBSET B (hl_IMAGE A B f (hl_INTERS A g)) (hl_INTERS B (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) g)) = 1.
Admitted.

// HOL Light: sets.ml:1196 / IMAGE_INTER_SUBSET   (hash md5:75e7ca0a61d476eeec450bed02be37aa)
Theorem hlt_IMAGE_INTER_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_SUBSET B (hl_IMAGE A B f (hl_INTER A s t)) (hl_INTER B (hl_IMAGE A B f s) (hl_IMAGE A B f t)) = 1.
Admitted.

// HOL Light: sets.ml:1200 / IMAGE_INTER_SATURATED_GEN   (hash md5:fd09484f3ef01e2ea6740c8d1fa4fb03)
Theorem hlt_IMAGE_INTER_SATURATED_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s t u :e 2 :^: A, hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_84 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_84 (if hl_IN A x u = 1 /\ hl_IN B (f x) (hl_IMAGE A B f s) = 1 then 1 else 0) x = 1 then 1 else 0)) s = 1 /\ hl_SUBSET A t u = 1 \/ hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_85 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_85 (if hl_IN A x u = 1 /\ hl_IN B (f x) (hl_IMAGE A B f t) = 1 then 1 else 0) x = 1 then 1 else 0)) t = 1 /\ hl_SUBSET A s u = 1 -> hl_IMAGE A B f (hl_INTER A s t) = hl_INTER B (hl_IMAGE A B f s) (hl_IMAGE A B f t).
Admitted.

// HOL Light: sets.ml:1207 / IMAGE_INTERS_SATURATED_GEN   (hash md5:84c1a5bee05f104c13d911ef953aeb03)
Theorem hlt_IMAGE_INTERS_SATURATED_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e 2 :^: (2 :^: A), forall s u :e 2 :^: A, ~ g = hl_EMPTY (2 :^: A) /\ ((forall t :e 2 :^: A, hl_IN (2 :^: A) t g = 1 -> hl_SUBSET A t u = 1) /\ (forall t :e 2 :^: A, hl_IN (2 :^: A) t (hl_DELETE (2 :^: A) g s) = 1 -> hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_87 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_87 (if hl_IN A x u = 1 /\ hl_IN B (f x) (hl_IMAGE A B f t) = 1 then 1 else 0) x = 1 then 1 else 0)) t = 1)) -> hl_IMAGE A B f (hl_INTERS A g) = hl_INTERS B (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) g).
Admitted.

// HOL Light: sets.ml:1241 / IMAGE_INTER_SATURATED   (hash md5:52aec42c366733156dbd4a4138f2617c)
Theorem hlt_IMAGE_INTER_SATURATED : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_88 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_88 (hl_IN B (f x) (hl_IMAGE A B f s)) x = 1 then 1 else 0)) s = 1 \/ hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_89 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_89 (hl_IN B (f x) (hl_IMAGE A B f t)) x = 1 then 1 else 0)) t = 1 -> hl_IMAGE A B f (hl_INTER A s t) = hl_INTER B (hl_IMAGE A B f s) (hl_IMAGE A B f t).
Admitted.

// HOL Light: sets.ml:1247 / IMAGE_INTERS_SATURATED   (hash md5:f4f89283438add8754edd987ff12a556)
Theorem hlt_IMAGE_INTERS_SATURATED : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e 2 :^: (2 :^: A), forall s :e 2 :^: A, ~ g = hl_EMPTY (2 :^: A) /\ (forall t :e 2 :^: A, hl_IN (2 :^: A) t (hl_DELETE (2 :^: A) g s) = 1 -> hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_90 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_90 (hl_IN B (f x) (hl_IMAGE A B f t)) x = 1 then 1 else 0)) t = 1) -> hl_IMAGE A B f (hl_INTERS A g) = hl_INTERS B (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) g).
Admitted.

// HOL Light: sets.ml:1259 / FINITE_INDUCT_STRONG   (hash md5:b3640f262534389f3932ad19b762be35)
Theorem hlt_FINITE_INDUCT_STRONG : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), P (hl_EMPTY A) = 1 /\ (forall x :e A, forall s :e 2 :^: A, P s = 1 /\ (~ hl_IN A x s = 1 /\ hl_FINITE A s = 1) -> P (hl_INSERT A x s) = 1) -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> P s = 1.
Admitted.

// HOL Light: sets.ml:1276 / INJECTIVE_ON_ALT   (hash md5:5aee535e3e22536e337c3681ed0346dc)
Theorem hlt_INJECTIVE_ON_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: A, forall f :e B :^: A, (forall x y :e A, P x = 1 /\ (P y = 1 /\ f x = f y) -> x = y) <-> forall x y :e A, P x = 1 /\ P y = 1 -> (f x = f y <-> x = y).
Admitted.

// HOL Light: sets.ml:1282 / INJECTIVE_ALT   (hash md5:ebd3888b66e3605c8fe2ff868e0465f1)
Theorem hlt_INJECTIVE_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall x y :e A, f x = f y -> x = y) <-> forall x y :e A, f x = f y <-> x = y.
Admitted.

// HOL Light: sets.ml:1286 / SURJECTIVE_ON_RIGHT_INVERSE   (hash md5:f53ec7165bd583fe34bb981fc48bcde2)
Theorem hlt_SURJECTIVE_ON_RIGHT_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, forall t :e 2 :^: B, (forall y :e B, hl_IN B y t = 1 -> exists x :e A, hl_IN A x s = 1 /\ f x = y) <-> exists g :e A :^: B, forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y.
Admitted.

// HOL Light: sets.ml:1292 / INJECTIVE_ON_LEFT_INVERSE   (hash md5:357506e1d16c0116c48de4cc543d61c9)
Theorem hlt_INJECTIVE_ON_LEFT_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) <-> exists g :e A :^: B, forall x :e A, hl_IN A x s = 1 -> g (f x) = x.
Admitted.

// HOL Light: sets.ml:1300 / BIJECTIVE_ON_LEFT_RIGHT_INVERSE   (hash md5:2624ab6f52d31933a6be499160f0e5ee)
Theorem hlt_BIJECTIVE_ON_LEFT_RIGHT_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) -> ((forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ (forall y :e B, hl_IN B y t = 1 -> exists x :e A, hl_IN A x s = 1 /\ f x = y) <-> exists g :e A :^: B, (forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1) /\ ((forall y :e B, hl_IN B y t = 1 -> f (g y) = y) /\ forall x :e A, hl_IN A x s = 1 -> g (f x) = x)).
Admitted.

// HOL Light: sets.ml:1313 / SURJECTIVE_RIGHT_INVERSE   (hash md5:3aed1380dff8c0a2f0f7cb251b03ff86)
Theorem hlt_SURJECTIVE_RIGHT_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) <-> exists g :e A :^: B, forall y :e B, f (g y) = y.
Admitted.

// HOL Light: sets.ml:1317 / INJECTIVE_LEFT_INVERSE   (hash md5:287082d8481a0491e363e691e47a6902)
Theorem hlt_INJECTIVE_LEFT_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall x y :e A, f x = f y -> x = y) <-> exists g :e A :^: B, forall x :e A, g (f x) = x.
Admitted.

// HOL Light: sets.ml:1323 / BIJECTIVE_LEFT_RIGHT_INVERSE   (hash md5:74d51a28850e42b3ce41ae599ea7f57c)
Theorem hlt_BIJECTIVE_LEFT_RIGHT_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall x y :e A, f x = f y -> x = y) /\ (forall y :e B, exists x :e A, f x = y) <-> exists g :e A :^: B, (forall y :e B, f (g y) = y) /\ forall x :e A, g (f x) = x.
Admitted.

// HOL Light: sets.ml:1331 / FUNCTION_FACTORS_LEFT_GEN   (hash md5:9f4dcefd48cbc13535c9708b7dfd78f5)
Theorem hlt_FUNCTION_FACTORS_LEFT_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: A, forall f :e B :^: A, forall g :e C :^: A, (forall x y :e A, P x = 1 /\ (P y = 1 /\ g x = g y) -> f x = f y) <-> exists h :e B :^: C, forall x :e A, P x = 1 -> f x = h (g x).
Admitted.

// HOL Light: sets.ml:1339 / FUNCTION_FACTORS_LEFT   (hash md5:a067a9bb2841fd5acfc6337265abbb13)
Theorem hlt_FUNCTION_FACTORS_LEFT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: A, (forall x y :e A, g x = g y -> f x = f y) <-> exists h :e B :^: C, f = hl_o C B A h g.
Admitted.

// HOL Light: sets.ml:1344 / FUNCTION_FACTORS_RIGHT_GEN   (hash md5:a1079b686af4b2b16a774553675a6691)
Theorem hlt_FUNCTION_FACTORS_RIGHT_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: A, forall f :e C :^: A, forall g :e C :^: B, (forall x :e A, P x = 1 -> exists y :e B, g y = f x) <-> exists h :e B :^: A, forall x :e A, P x = 1 -> f x = g (h x).
Admitted.

// HOL Light: sets.ml:1350 / FUNCTION_FACTORS_RIGHT   (hash md5:5dd20c9a4eb636bddb42a7bc909153d1)
Theorem hlt_FUNCTION_FACTORS_RIGHT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: A, forall g :e C :^: B, (forall x :e A, exists y :e B, g y = f x) <-> exists h :e B :^: A, f = hl_o B C A g h.
Admitted.

// HOL Light: sets.ml:1354 / SURJECTIVE_FORALL_THM   (hash md5:70cb0766794c2d8998b423c97e9b9f62)
Theorem hlt_SURJECTIVE_FORALL_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) <-> forall P :e 2 :^: B, (forall x :e A, P (f x) = 1) <-> forall y :e B, P y = 1.
Admitted.

// HOL Light: sets.ml:1359 / SURJECTIVE_EXISTS_THM   (hash md5:2f7cd8bce157c779d167d4c4b5217850)
Theorem hlt_SURJECTIVE_EXISTS_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) <-> forall P :e 2 :^: B, (exists x :e A, P (f x) = 1) <-> exists y :e B, P y = 1.
Admitted.

// HOL Light: sets.ml:1364 / SURJECTIVE_IMAGE_THM   (hash md5:e1d29dd31bd360ddccf139861fa42668)
Theorem hlt_SURJECTIVE_IMAGE_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) <-> forall P :e 2 :^: B, hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_91 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_91 (P (f x)) x = 1 then 1 else 0)) = hl_GSPEC B (fun GEN_PVAR_92 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_92 (P x) x = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:1370 / IMAGE_INJECTIVE_IMAGE_OF_SUBSET   (hash md5:389062738112fe42ecc2a3e479a67267)
Theorem hlt_IMAGE_INJECTIVE_IMAGE_OF_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, exists t :e 2 :^: A, hl_SUBSET A t s = 1 /\ (hl_IMAGE A B f s = hl_IMAGE A B f t /\ forall x y :e A, hl_IN A x t = 1 /\ (hl_IN A y t = 1 /\ f x = f y) -> x = y).
Admitted.

// HOL Light: sets.ml:1386 / FINITE_EMPTY   (hash md5:63b9756b3dc363d57c2ba5dd2500a8b7)
Theorem hlt_FINITE_EMPTY : forall A:set, A <> Empty -> hl_FINITE A (hl_EMPTY A) = 1.
Admitted.

// HOL Light: sets.ml:1390 / FINITE_SUBSET   (hash md5:cbe809cab3573cf324dd84b560f89471)
Theorem hlt_FINITE_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A t = 1 /\ hl_SUBSET A s t = 1 -> hl_FINITE A s = 1.
Admitted.

// HOL Light: sets.ml:1409 / FINITE_RESTRICT   (hash md5:b3c8e8051468a19305d044ce23783d3a)
Theorem hlt_FINITE_RESTRICT : forall A:set, A <> Empty -> forall s P :e 2 :^: A, hl_FINITE A s = 1 -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_93 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_93 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:1413 / FINITE_UNION_IMP   (hash md5:c1da4a995c5e1824f08dd83e394e7344)
Theorem hlt_FINITE_UNION_IMP : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_FINITE A (hl_UNION A s t) = 1.
Admitted.

// HOL Light: sets.ml:1422 / FINITE_UNION   (hash md5:f8031a98ed188e3cff5f6de0823f5688)
Theorem hlt_FINITE_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A (hl_UNION A s t) = 1 <-> hl_FINITE A s = 1 /\ hl_FINITE A t = 1.
Admitted.

// HOL Light: sets.ml:1429 / FINITE_INTER   (hash md5:94f495d91343ff60841a0a7b9bc4043f)
Theorem hlt_FINITE_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 \/ hl_FINITE A t = 1 -> hl_FINITE A (hl_INTER A s t) = 1.
Admitted.

// HOL Light: sets.ml:1433 / FINITE_INSERT   (hash md5:936b2d542477a68bb0155b28c77dca7d)
Theorem hlt_FINITE_INSERT : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e A, hl_FINITE A (hl_INSERT A x s) = 1 <-> hl_FINITE A s = 1.
Admitted.

// HOL Light: sets.ml:1441 / FINITE_SING   (hash md5:86da3e711c1c06602cfb347c929bf44d)
Theorem hlt_FINITE_SING : forall A:set, A <> Empty -> forall a :e A, hl_FINITE A (hl_INSERT A a (hl_EMPTY A)) = 1.
Admitted.

// HOL Light: sets.ml:1445 / FINITE_DELETE_IMP   (hash md5:a3b4af670068cb1c8bd0f6f3ac79ed80)
Theorem hlt_FINITE_DELETE_IMP : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e A, hl_FINITE A s = 1 -> hl_FINITE A (hl_DELETE A s x) = 1.
Admitted.

// HOL Light: sets.ml:1450 / FINITE_DELETE   (hash md5:f701e4d40b73274ab127e21eedc78558)
Theorem hlt_FINITE_DELETE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall x :e A, hl_FINITE A (hl_DELETE A s x) = 1 <-> hl_FINITE A s = 1.
Admitted.

// HOL Light: sets.ml:1460 / FINITE_FINITE_UNIONS   (hash md5:f89a2d4e33894c4d2a65beb9cd46bd09)
Theorem hlt_FINITE_FINITE_UNIONS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) s = 1 -> (hl_FINITE A (hl_UNIONS A s) = 1 <-> forall t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 -> hl_FINITE A t = 1).
Admitted.

// HOL Light: sets.ml:1467 / FINITE_IMAGE_EXPAND   (hash md5:dc943a7d6b3d6b1eb9fc0dd986c272fd)
Theorem hlt_FINITE_IMAGE_EXPAND : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_FINITE B (hl_GSPEC B (fun GEN_PVAR_96 :e B => if exists y :e B, hl_SETSPEC B GEN_PVAR_96 (if exists x :e A, hl_IN A x s = 1 /\ y = f x then 1 else 0) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:1479 / FINITE_IMAGE   (hash md5:432dfbca4344ace97e63aa457fdad110)
Theorem hlt_FINITE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_FINITE B (hl_IMAGE A B f s) = 1.
Admitted.

// HOL Light: sets.ml:1483 / FINITE_IMAGE_INJ_GENERAL   (hash md5:1082bb9502e3538b8ca48326bb488245)
Theorem hlt_FINITE_IMAGE_INJ_GENERAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall A1 :e 2 :^: B, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ hl_FINITE B A1 = 1 -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_97 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_97 (if hl_IN A x s = 1 /\ hl_IN B (f x) A1 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:1494 / FINITE_FINITE_PREIMAGE_GENERAL   (hash md5:c1fff981a855cb59204f69a678ca6455)
Theorem hlt_FINITE_FINITE_PREIMAGE_GENERAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE B t = 1 /\ (forall y :e B, hl_IN B y t = 1 -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_100 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_100 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_101 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_101 (if hl_IN A x s = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:1508 / FINITE_FINITE_PREIMAGE   (hash md5:30d5cc8c2c8496c85c91845bfdfcdc2e)
Theorem hlt_FINITE_FINITE_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall t :e 2 :^: B, hl_FINITE B t = 1 /\ (forall y :e B, hl_IN B y t = 1 -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_102 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_102 (if f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_103 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_103 (hl_IN B (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:1517 / FINITE_IMAGE_INJ_EQ   (hash md5:810cf0fb22286ff35b384ab0471e5652)
Theorem hlt_FINITE_IMAGE_INJ_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) -> (hl_FINITE B (hl_IMAGE A B f s) = 1 <-> hl_FINITE A s = 1).
Admitted.

// HOL Light: sets.ml:1526 / FINITE_IMAGE_INJ   (hash md5:571581d51928c9e04baf59f9a6321a07)
Theorem hlt_FINITE_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall A1 :e 2 :^: B, (forall x y :e A, f x = f y -> x = y) /\ hl_FINITE B A1 = 1 -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_104 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_104 (hl_IN B (f x) A1) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:1534 / FINITE_IMAGE_GEN   (hash md5:cfcea95eae514750535e794ccdb02ba6)
Theorem hlt_FINITE_IMAGE_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ (hl_FINITE B t = 1 /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> g x = g y)) -> hl_FINITE C (hl_IMAGE A C g s) = 1.
Admitted.

// HOL Light: sets.ml:1545 / INFINITE_IMAGE   (hash md5:d9e870584dc2baa2b940dbdf3c134786)
Theorem hlt_INFINITE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_INFINITE A s = 1 /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) -> hl_INFINITE B (hl_IMAGE A B f s) = 1.
Admitted.

// HOL Light: sets.ml:1555 / INFINITE_IMAGE_INJ   (hash md5:50b9d8686458b8ae09f8d86e7575c206)
Theorem hlt_INFINITE_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall x y :e A, f x = f y -> x = y) -> forall s :e 2 :^: A, hl_INFINITE A s = 1 -> hl_INFINITE B (hl_IMAGE A B f s) = 1.
Admitted.

// HOL Light: sets.ml:1560 / INFINITE_NONEMPTY   (hash md5:f4ba7868f4290b5f0e224feedf2de23e)
Theorem hlt_INFINITE_NONEMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_INFINITE A s = 1 -> ~ s = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:1564 / INFINITE_DIFF_FINITE   (hash md5:e66cdd1dc9fb179c46019a840fb59c20)
Theorem hlt_INFINITE_DIFF_FINITE : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_INFINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_INFINITE A (hl_DIFF A s t) = 1.
Admitted.

// HOL Light: sets.ml:1573 / SUBSET_IMAGE_INJ   (hash md5:9fb28f67c197884e156cf16999d0d9a3)
Theorem hlt_SUBSET_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: B, forall t :e 2 :^: A, hl_SUBSET B s (hl_IMAGE A B f t) = 1 <-> exists u :e 2 :^: A, hl_SUBSET A u t = 1 /\ ((forall x y :e A, hl_IN A x u = 1 /\ hl_IN A y u = 1 -> (f x = f y <-> x = y)) /\ s = hl_IMAGE A B f u).
Admitted.

// HOL Light: sets.ml:1586 / SUBSET_IMAGE   (hash md5:fe9cec82d0f00e618f72688c8ed73b2b)
Theorem hlt_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: B, forall t :e 2 :^: A, hl_SUBSET B s (hl_IMAGE A B f t) = 1 <-> exists u :e 2 :^: A, hl_SUBSET A u t = 1 /\ s = hl_IMAGE A B f u.
Admitted.

// HOL Light: sets.ml:1591 / EXISTS_SUBSET_IMAGE   (hash md5:5ed70447fcb60025a9b4fb1374a7ffeb)
Theorem hlt_EXISTS_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (exists t :e 2 :^: B, hl_SUBSET B t (hl_IMAGE A B f s) = 1 /\ P t = 1) <-> exists t :e 2 :^: A, hl_SUBSET A t s = 1 /\ P (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: sets.ml:1596 / FORALL_SUBSET_IMAGE   (hash md5:e6476c3348a5fbce4c9fb2a53a15763c)
Theorem hlt_FORALL_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (forall t :e 2 :^: B, hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> P t = 1) <-> forall t :e 2 :^: A, hl_SUBSET A t s = 1 -> P (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: sets.ml:1602 / EXISTS_SUBSET_IMAGE_INJ   (hash md5:379f6d1086e408c54377f12afe1f0187)
Theorem hlt_EXISTS_SUBSET_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (exists t :e 2 :^: B, hl_SUBSET B t (hl_IMAGE A B f s) = 1 /\ P t = 1) <-> exists t :e 2 :^: A, hl_SUBSET A t s = 1 /\ ((forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y)) /\ P (hl_IMAGE A B f t) = 1).
Admitted.

// HOL Light: sets.ml:1610 / FORALL_SUBSET_IMAGE_INJ   (hash md5:95160ea548b9dbf1a028be179140d7ef)
Theorem hlt_FORALL_SUBSET_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (forall t :e 2 :^: B, hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> P t = 1) <-> forall t :e 2 :^: A, hl_SUBSET A t s = 1 /\ (forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y)) -> P (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: sets.ml:1620 / EXISTS_FINITE_SUBSET_IMAGE_INJ   (hash md5:79bed96eeb547e2f685253c7db8b6b83)
Theorem hlt_EXISTS_FINITE_SUBSET_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (exists t :e 2 :^: B, hl_FINITE B t = 1 /\ (hl_SUBSET B t (hl_IMAGE A B f s) = 1 /\ P t = 1)) <-> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ ((forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y)) /\ P (hl_IMAGE A B f t) = 1)).
Admitted.

// HOL Light: sets.ml:1630 / FORALL_FINITE_SUBSET_IMAGE_INJ   (hash md5:83946b5944c4b9af3b4c02d68bc690dd)
Theorem hlt_FORALL_FINITE_SUBSET_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (forall t :e 2 :^: B, hl_FINITE B t = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> P t = 1) <-> forall t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ (forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y))) -> P (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: sets.ml:1640 / EXISTS_FINITE_SUBSET_IMAGE   (hash md5:3d41394b7121af38694fa71bbb73ce74)
Theorem hlt_EXISTS_FINITE_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (exists t :e 2 :^: B, hl_FINITE B t = 1 /\ (hl_SUBSET B t (hl_IMAGE A B f s) = 1 /\ P t = 1)) <-> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ P (hl_IMAGE A B f t) = 1).
Admitted.

// HOL Light: sets.ml:1648 / FORALL_FINITE_SUBSET_IMAGE   (hash md5:fec844bb2bff9366813f0a0f1b90857c)
Theorem hlt_FORALL_FINITE_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (forall t :e 2 :^: B, hl_FINITE B t = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> P t = 1) <-> forall t :e 2 :^: A, hl_FINITE A t = 1 /\ hl_SUBSET A t s = 1 -> P (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: sets.ml:1656 / FINITE_SUBSET_IMAGE   (hash md5:3bfc749889c5eaae4738ea2072dd3248)
Theorem hlt_FINITE_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE B t = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1 <-> exists s' :e 2 :^: A, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ t = hl_IMAGE A B f s').
Admitted.

// HOL Light: sets.ml:1665 / FINITE_SUBSET_IMAGE_IMP   (hash md5:d1c320223e37e55dd79a34855fd38294)
Theorem hlt_FINITE_SUBSET_IMAGE_IMP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE B t = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> exists s' :e 2 :^: A, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s') = 1).
Admitted.

// HOL Light: sets.ml:1671 / FINITE_IMAGE_EQ   (hash md5:b89c8d62e41060546fa852531a29cd53)
Theorem hlt_FINITE_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE B (hl_IMAGE A B f s) = 1 <-> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ hl_IMAGE A B f s = hl_IMAGE A B f t).
Admitted.

// HOL Light: sets.ml:1676 / FINITE_IMAGE_EQ_INJ   (hash md5:7464bed3bbe55f4e02009c8a19bd3a9a)
Theorem hlt_FINITE_IMAGE_EQ_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE B (hl_IMAGE A B f s) = 1 <-> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ (hl_IMAGE A B f s = hl_IMAGE A B f t /\ forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y))).
Admitted.

// HOL Light: sets.ml:1687 / FINITE_DIFF   (hash md5:60cfe4f67dc59c8c0afd10e32048ff1d)
Theorem hlt_FINITE_DIFF : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 -> hl_FINITE A (hl_DIFF A s t) = 1.
Admitted.

// HOL Light: sets.ml:1691 / INFINITE_SUPERSET   (hash md5:0e5df829a9916de127c8b30e0a1e66e0)
Theorem hlt_INFINITE_SUPERSET : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_INFINITE A s = 1 /\ hl_SUBSET A s t = 1 -> hl_INFINITE A t = 1.
Admitted.

// HOL Light: sets.ml:1695 / FINITE_TRANSITIVITY_CHAIN   (hash md5:fd68bb03625e9a6aed331ea88140aa39)
Theorem hlt_FINITE_TRANSITIVITY_CHAIN : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, ~ R1 x x = 1) /\ ((forall x y z :e A, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1) /\ (forall x :e A, hl_IN A x s = 1 -> exists y :e A, hl_IN A y s = 1 /\ R1 x y = 1))) -> s = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:1706 / UNIONS_MAXIMAL_SETS   (hash md5:22166c20e25d1d25fefb230862ea0ef5)
Theorem hlt_UNIONS_MAXIMAL_SETS : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) f = 1 -> hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_106 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_106 (if hl_IN (2 :^: A) t f = 1 /\ forall u :e 2 :^: A, hl_IN (2 :^: A) u f = 1 -> ~ hl_PSUBSET A t u = 1 then 1 else 0) t = 1 then 1 else 0)) = hl_UNIONS A f.
Admitted.

// HOL Light: sets.ml:1720 / FINITE_SUBSET_UNIONS   (hash md5:f67882731c00417406151860e1d63889)
Theorem hlt_FINITE_SUBSET_UNIONS : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A s (hl_UNIONS A f) = 1 -> exists f' :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) f' = 1 /\ (hl_SUBSET (2 :^: A) f' f = 1 /\ hl_SUBSET A s (hl_UNIONS A f') = 1).
Admitted.

// HOL Light: sets.ml:1733 / UNIONS_IN_CHAIN   (hash md5:4a6d64101ab99b2d32e5f21a0f5b5b4b)
Theorem hlt_UNIONS_IN_CHAIN : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) f = 1 /\ (~ f = hl_EMPTY (2 :^: A) /\ (forall s t :e 2 :^: A, hl_IN (2 :^: A) s f = 1 /\ hl_IN (2 :^: A) t f = 1 -> hl_SUBSET A s t = 1 \/ hl_SUBSET A t s = 1)) -> hl_IN (2 :^: A) (hl_UNIONS A f) f = 1.
Admitted.

// HOL Light: sets.ml:1751 / INTERS_IN_CHAIN   (hash md5:c419782a69b7ff15435904a3c1abc620)
Theorem hlt_INTERS_IN_CHAIN : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) f = 1 /\ (~ f = hl_EMPTY (2 :^: A) /\ (forall s t :e 2 :^: A, hl_IN (2 :^: A) s f = 1 /\ hl_IN (2 :^: A) t f = 1 -> hl_SUBSET A s t = 1 \/ hl_SUBSET A t s = 1)) -> hl_IN (2 :^: A) (hl_INTERS A f) f = 1.
Admitted.

// HOL Light: sets.ml:1769 / FINITE_SUBSET_UNIONS_DIRECTED_EQ   (hash md5:f5da523b28b9ef1557f21eadc9b7833a)
Theorem hlt_FINITE_SUBSET_UNIONS_DIRECTED_EQ : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), forall s :e 2 :^: A, ~ f = hl_EMPTY (2 :^: A) /\ ((forall t u :e 2 :^: A, hl_IN (2 :^: A) t f = 1 /\ hl_IN (2 :^: A) u f = 1 -> exists v :e 2 :^: A, hl_IN (2 :^: A) v f = 1 /\ (hl_SUBSET A t v = 1 /\ hl_SUBSET A u v = 1)) /\ hl_FINITE A s = 1) -> (hl_SUBSET A s (hl_UNIONS A f) = 1 <-> exists t :e 2 :^: A, hl_IN (2 :^: A) t f = 1 /\ hl_SUBSET A s t = 1).
Admitted.

// HOL Light: sets.ml:1780 / FINITE_SUBSET_UNIONS_CHAIN_EQ   (hash md5:683f5ac0d37a9a75c89b827787f5789b)
Theorem hlt_FINITE_SUBSET_UNIONS_CHAIN_EQ : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), forall s :e 2 :^: A, ~ f = hl_EMPTY (2 :^: A) /\ ((forall t u :e 2 :^: A, hl_IN (2 :^: A) t f = 1 /\ hl_IN (2 :^: A) u f = 1 -> hl_SUBSET A t u = 1 \/ hl_SUBSET A u t = 1) /\ hl_FINITE A s = 1) -> (hl_SUBSET A s (hl_UNIONS A f) = 1 <-> exists t :e 2 :^: A, hl_IN (2 :^: A) t f = 1 /\ hl_SUBSET A s t = 1).
Admitted.

// HOL Light: sets.ml:1789 / FINITE_SUBSET_UNIONS_CHAIN   (hash md5:4223b69c57f003626c1e60be68a5b8d1)
Theorem hlt_FINITE_SUBSET_UNIONS_CHAIN : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_SUBSET A s (hl_UNIONS A f) = 1 /\ (~ f = hl_EMPTY (2 :^: A) /\ (forall t u :e 2 :^: A, hl_IN (2 :^: A) t f = 1 /\ hl_IN (2 :^: A) u f = 1 -> hl_SUBSET A t u = 1 \/ hl_SUBSET A u t = 1))) -> exists t :e 2 :^: A, hl_IN (2 :^: A) t f = 1 /\ hl_SUBSET A s t = 1.
Admitted.

// HOL Light: sets.ml:1800 / FINREC   (hash md5:51fcb9941f6c19d194dd52075cfaeaee)
Theorem hlt_FINREC : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, forall s :e 2 :^: A, forall a :e B, forall n :e omega, (hl_FINREC A B f b s a (hl_NUMERAL hl_zero) = 1 <-> s = hl_EMPTY A /\ a = b) /\ (hl_FINREC A B f b s a (hl_SUC n) = 1 <-> exists x :e A, exists c :e B, hl_IN A x s = 1 /\ (hl_FINREC A B f b (hl_DELETE A s x) c n = 1 /\ a = f x c)).
Admitted.

// HOL Light: sets.ml:1807 / FINREC_1_LEMMA   (hash md5:845a13e735b8b4c9435aea58b050a56a)
Theorem hlt_FINREC_1_LEMMA : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, forall s :e 2 :^: A, forall a :e B, hl_FINREC A B f b s a (hl_SUC (hl_NUMERAL hl_zero)) = 1 <-> exists x :e A, s = hl_INSERT A x (hl_EMPTY A) /\ a = f x b.
Admitted.

// HOL Light: sets.ml:1812 / FINREC_SUC_LEMMA   (hash md5:c5d6d381ce7126749355a4d12800903d)
Theorem hlt_FINREC_SUC_LEMMA : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, (forall x y :e A, forall s :e B, ~ x = y -> f x (f y s) = f y (f x s)) -> forall n :e omega, forall s :e 2 :^: A, forall z :e B, hl_FINREC A B f b s z (hl_SUC n) = 1 -> forall x :e A, hl_IN A x s = 1 -> exists w :e B, hl_FINREC A B f b (hl_DELETE A s x) w n = 1 /\ z = f x w.
Admitted.

// HOL Light: sets.ml:1843 / FINREC_UNIQUE_LEMMA   (hash md5:61790b80302e0bcda80be44c6e99e36f)
Theorem hlt_FINREC_UNIQUE_LEMMA : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, (forall x y :e A, forall s :e B, ~ x = y -> f x (f y s) = f y (f x s)) -> forall n1 n2 :e omega, forall s :e 2 :^: A, forall a1 a2 :e B, hl_FINREC A B f b s a1 n1 = 1 /\ hl_FINREC A B f b s a2 n2 = 1 -> a1 = a2 /\ n1 = n2.
Admitted.

// HOL Light: sets.ml:1859 / FINREC_EXISTS_LEMMA   (hash md5:4e7ea1fac6e4d3b4a9f5154296c16d50)
Theorem hlt_FINREC_EXISTS_LEMMA : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, forall s :e 2 :^: A, hl_FINITE A s = 1 -> exists a :e B, exists n :e omega, hl_FINREC A B f b s a n = 1.
Admitted.

// HOL Light: sets.ml:1869 / FINREC_FUN_LEMMA   (hash md5:8fa4074cd8c357e0186104cb076daccb)
Theorem hlt_FINREC_FUN_LEMMA : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: A, forall R1 :e 2 :^: C :^: B :^: A, (forall s :e A, P s = 1 -> exists a :e B, exists n :e C, R1 s a n = 1) /\ (forall n1 n2 :e C, forall s :e A, forall a1 a2 :e B, R1 s a1 n1 = 1 /\ R1 s a2 n2 = 1 -> a1 = a2 /\ n1 = n2) -> exists f :e B :^: A, forall s :e A, forall a :e B, P s = 1 -> ((exists n :e C, R1 s a n = 1) <-> f s = a).
Admitted.

// HOL Light: sets.ml:1880 / FINREC_FUN   (hash md5:13aa8060e0179cfe57bf3ebbeb6cbb4e)
Theorem hlt_FINREC_FUN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, (forall x y :e A, forall s :e B, ~ x = y -> f x (f y s) = f y (f x s)) -> exists g :e B :^: (2 :^: A), g (hl_EMPTY A) = b /\ forall s :e 2 :^: A, forall x :e A, hl_FINITE A s = 1 /\ hl_IN A x s = 1 -> g s = f x (g (hl_DELETE A s x)).
Admitted.

// HOL Light: sets.ml:1917 / SET_RECURSION_LEMMA   (hash md5:f68d0055bb484007b14f9f9aa92bfafc)
Theorem hlt_SET_RECURSION_LEMMA : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, (forall x y :e A, forall s :e B, ~ x = y -> f x (f y s) = f y (f x s)) -> exists g :e B :^: (2 :^: A), g (hl_EMPTY A) = b /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND B (hl_IN A x s) (g s) (f x (g s)).
Admitted.

// HOL Light: sets.ml:1936 / ITSET   (hash md5:e2d310775ffddbc8336653e95c53967d)
Theorem hlt_ITSET : forall A B:set, A <> Empty -> B <> Empty -> forall b :e B, forall f :e B :^: B :^: A, forall s :e 2 :^: A, hl_ITSET A B f s b = hl_select (B :^: (2 :^: A)) (fun g :e B :^: (2 :^: A) => if g (hl_EMPTY A) = b /\ forall x :e A, forall s1 :e 2 :^: A, hl_FINITE A s1 = 1 -> g (hl_INSERT A x s1) = hl_COND B (hl_IN A x s1) (g s1) (f x (g s1)) then 1 else 0) s.
Admitted.

// HOL Light: sets.ml:1943 / FINITE_RECURSION   (hash md5:706912b716233fee2433570bb27bb0e6)
Theorem hlt_FINITE_RECURSION : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, (forall x y :e A, forall s :e B, ~ x = y -> f x (f y s) = f y (f x s)) -> hl_ITSET A B f (hl_EMPTY A) b = b /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_ITSET A B f (hl_INSERT A x s) b = hl_COND B (hl_IN A x s) (hl_ITSET A B f s b) (f x (hl_ITSET A B f s b)).
Admitted.

// HOL Light: sets.ml:1955 / FINITE_RECURSION_DELETE   (hash md5:68713e06fac517b4a30d518b8e8f19f5)
Theorem hlt_FINITE_RECURSION_DELETE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, (forall x y :e A, forall s :e B, ~ x = y -> f x (f y s) = f y (f x s)) -> hl_ITSET A B f (hl_EMPTY A) b = b /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_ITSET A B f s b = hl_COND B (hl_IN A x s) (f x (hl_ITSET A B f (hl_DELETE A s x) b)) (hl_ITSET A B f (hl_DELETE A s x) b).
Admitted.

// HOL Light: sets.ml:1974 / ITSET_EQ   (hash md5:a4e03c97ce6bc7f6e7dbc8c0dbbcf4d7)
Theorem hlt_ITSET_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f g :e B :^: B :^: A, forall b :e B, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> f x = g x) /\ ((forall x y :e A, forall s1 :e B, ~ x = y -> f x (f y s1) = f y (f x s1)) /\ (forall x y :e A, forall s1 :e B, ~ x = y -> g x (g y s1) = g y (g x s1)))) -> hl_ITSET A B f s b = hl_ITSET A B g s b.
Admitted.

// HOL Light: sets.ml:1992 / CARD   (hash md5:cc7fbff62e27fc719e56bd33ba6af05a)
Theorem hlt_CARD : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_CARD A s = hl_ITSET A omega (fun x :e A => fun n :e omega => hl_SUC n) s (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: sets.ml:1995 / CARD_CLAUSES   (hash md5:b98042a9307e6eb5805ab458d8192980)
Theorem hlt_CARD_CLAUSES : forall A:set, A <> Empty -> hl_CARD A (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_CARD A (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (hl_CARD A s) (hl_SUC (hl_CARD A s)).
Admitted.

// HOL Light: sets.ml:2003 / CARD_UNION   (hash md5:dec93797888a7880b4682d0323169b96)
Theorem hlt_CARD_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_INTER A s t = hl_EMPTY A) -> hl_CARD A (hl_UNION A s t) = hl_add (hl_CARD A s) (hl_CARD A t).
Admitted.

// HOL Light: sets.ml:2029 / CARD_DELETE   (hash md5:5d90e52e98cf466fb041e9213dda453a)
Theorem hlt_CARD_DELETE : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_CARD A (hl_DELETE A s x) = hl_COND omega (hl_IN A x s) (hl_sub (hl_CARD A s) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_CARD A s).
Admitted.

// HOL Light: sets.ml:2039 / CARD_UNION_EQ   (hash md5:f11091f2efcd011c5160b24c75d16853)
Theorem hlt_CARD_UNION_EQ : forall A:set, A <> Empty -> forall s t u :e 2 :^: A, hl_FINITE A u = 1 /\ (hl_INTER A s t = hl_EMPTY A /\ hl_UNION A s t = u) -> hl_add (hl_CARD A s) (hl_CARD A t) = hl_CARD A u.
Admitted.

// HOL Light: sets.ml:2045 / CARD_DIFF   (hash md5:e21ff818fc024a6fec3f64a99e1466c0)
Theorem hlt_CARD_DIFF : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A t s = 1 -> hl_CARD A (hl_DIFF A s t) = hl_sub (hl_CARD A s) (hl_CARD A t).
Admitted.

// HOL Light: sets.ml:2051 / CARD_EQ_0   (hash md5:e552414b14dd33cbb2da9b752e0f5159)
Theorem hlt_CARD_EQ_0 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_CARD A s = hl_NUMERAL hl_zero <-> s = hl_EMPTY A).
Admitted.

// HOL Light: sets.ml:2056 / CARD_SING   (hash md5:259b143e1a21f1771ebf782d2550b61e)
Theorem hlt_CARD_SING : forall A:set, A <> Empty -> forall a :e A, hl_CARD A (hl_INSERT A a (hl_EMPTY A)) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: sets.ml:2060 / CARD_LE_2   (hash md5:0c0bd3b9f9caab2c9f0b4a184c61ad4a)
Theorem hlt_CARD_LE_2 : forall A:set, A <> Empty -> forall a b :e A, hl_le (hl_CARD A (hl_INSERT A a (hl_INSERT A b (hl_EMPTY A)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: sets.ml:2066 / CARD_LE_3   (hash md5:99cd4c753bf0062e0eadd8c1d21a537f)
Theorem hlt_CARD_LE_3 : forall A:set, A <> Empty -> forall a b c :e A, hl_le (hl_CARD A (hl_INSERT A a (hl_INSERT A b (hl_INSERT A c (hl_EMPTY A))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: sets.ml:2072 / CARD_LE_4   (hash md5:da137bcac532c359dd58a31a7edb749a)
Theorem hlt_CARD_LE_4 : forall A:set, A <> Empty -> forall a b c d :e A, hl_le (hl_CARD A (hl_INSERT A a (hl_INSERT A b (hl_INSERT A c (hl_INSERT A d (hl_EMPTY A)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: sets.ml:2082 / FINITE_INDUCT_DELETE   (hash md5:96514f677601df5dcf44fdc7a4853c2f)
Theorem hlt_FINITE_INDUCT_DELETE : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), P (hl_EMPTY A) = 1 /\ (forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ (P (hl_DELETE A s x) = 1 -> P s = 1)) -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> P s = 1.
Admitted.

// HOL Light: sets.ml:2100 / HAS_SIZE   (hash md5:d40bb36d555c16b9e0d80663db5ee75c)
Theorem hlt_HAS_SIZE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall n :e omega, hl_HAS_SIZE A s n = 1 <-> hl_FINITE A s = 1 /\ hl_CARD A s = n.
Admitted.

// HOL Light: sets.ml:2103 / HAS_SIZE_CARD   (hash md5:0619efdcad0cf1e73377a88ebd9d8276)
Theorem hlt_HAS_SIZE_CARD : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall n :e omega, hl_HAS_SIZE A s n = 1 -> hl_CARD A s = n.
Admitted.

// HOL Light: sets.ml:2107 / HAS_SIZE_0   (hash md5:b315301e53d95a91c880c6bafbea05e1)
Theorem hlt_HAS_SIZE_0 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_HAS_SIZE A s (hl_NUMERAL hl_zero) = 1 <-> s = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:2121 / HAS_SIZE_SUC   (hash md5:1e8ef4c40c2b9f072ead1adcb77a3f21)
Theorem hlt_HAS_SIZE_SUC : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall n :e omega, hl_HAS_SIZE A s (hl_SUC n) = 1 <-> ~ s = hl_EMPTY A /\ forall a :e A, hl_IN A a s = 1 -> hl_HAS_SIZE A (hl_DELETE A s a) n = 1.
Admitted.

// HOL Light: sets.ml:2144 / HAS_SIZE_UNION   (hash md5:77b5b63f1d999eed26e944ef9eb2b5a8)
Theorem hlt_HAS_SIZE_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall m n :e omega, hl_HAS_SIZE A s m = 1 /\ (hl_HAS_SIZE A t n = 1 /\ hl_DISJOINT A s t = 1) -> hl_HAS_SIZE A (hl_UNION A s t) (hl_add m n) = 1.
Admitted.

// HOL Light: sets.ml:2150 / HAS_SIZE_DIFF   (hash md5:57f816633af40e5e1bc25f62109c8ba6)
Theorem hlt_HAS_SIZE_DIFF : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall m n :e omega, hl_HAS_SIZE A s m = 1 /\ (hl_HAS_SIZE A t n = 1 /\ hl_SUBSET A t s = 1) -> hl_HAS_SIZE A (hl_DIFF A s t) (hl_sub m n) = 1.
Admitted.

// HOL Light: sets.ml:2156 / HAS_SIZE_UNIONS   (hash md5:54b9e9d907c386ddc13af3e1c6528b64)
Theorem hlt_HAS_SIZE_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, forall m n :e omega, hl_HAS_SIZE A s m = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_HAS_SIZE B (t x) n = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> hl_DISJOINT B (t x) (t y) = 1)) -> hl_HAS_SIZE B (hl_UNIONS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_109 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_109 (hl_IN A x s) (t x) = 1 then 1 else 0))) (hl_mul m n) = 1.
Admitted.

// HOL Light: sets.ml:2184 / FINITE_HAS_SIZE   (hash md5:b03e1bd1f91f455b7aacfd4eab13743f)
Theorem hlt_FINITE_HAS_SIZE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 <-> hl_HAS_SIZE A s (hl_CARD A s) = 1.
Admitted.

// HOL Light: sets.ml:2192 / HAS_SIZE_CLAUSES   (hash md5:b9eeacf794f8f2eb48dc8c089a446b76)
Theorem hlt_HAS_SIZE_CLAUSES : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall n :e omega, (hl_HAS_SIZE A s (hl_NUMERAL hl_zero) = 1 <-> s = hl_EMPTY A) /\ (hl_HAS_SIZE A s (hl_SUC n) = 1 <-> exists a :e A, exists t :e 2 :^: A, hl_HAS_SIZE A t n = 1 /\ (~ hl_IN A a t = 1 /\ s = hl_INSERT A a t)).
Admitted.

// HOL Light: sets.ml:2247 / CARD_SUBSET_EQ   (hash md5:388d54bdc8ac028eab4c048fa5cc8aec)
Theorem hlt_CARD_SUBSET_EQ : forall A:set, A <> Empty -> forall a b :e 2 :^: A, hl_FINITE A b = 1 /\ (hl_SUBSET A a b = 1 /\ hl_CARD A a = hl_CARD A b) -> a = b.
Admitted.

// HOL Light: sets.ml:2268 / CARD_SUBSET   (hash md5:7cea7af217cad47358d0dc993c0a5150)
Theorem hlt_CARD_SUBSET : forall A:set, A <> Empty -> forall a b :e 2 :^: A, hl_SUBSET A a b = 1 /\ hl_FINITE A b = 1 -> hl_le (hl_CARD A a) (hl_CARD A b) = 1.
Admitted.

// HOL Light: sets.ml:2284 / CARD_SUBSET_LE   (hash md5:93a04abd907f8e55affa0c20ae58d743)
Theorem hlt_CARD_SUBSET_LE : forall A:set, A <> Empty -> forall a b :e 2 :^: A, hl_FINITE A b = 1 /\ (hl_SUBSET A a b = 1 /\ hl_le (hl_CARD A b) (hl_CARD A a) = 1) -> a = b.
Admitted.

// HOL Light: sets.ml:2288 / SUBSET_CARD_EQ   (hash md5:37ef9db8483d4c310c635dfa6e0b3c8c)
Theorem hlt_SUBSET_CARD_EQ : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A t = 1 /\ hl_SUBSET A s t = 1 -> (hl_CARD A s = hl_CARD A t <-> s = t).
Admitted.

// HOL Light: sets.ml:2292 / FINITE_CARD_LE_SUBSET   (hash md5:0294240cabc21a126587730c8ec4a493)
Theorem hlt_FINITE_CARD_LE_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall n :e omega, hl_SUBSET A s t = 1 /\ (hl_FINITE A t = 1 /\ hl_le (hl_CARD A t) n = 1) -> hl_FINITE A s = 1 /\ hl_le (hl_CARD A s) n = 1.
Admitted.

// HOL Light: sets.ml:2298 / CARD_PSUBSET   (hash md5:112df868e45f3ec2e5b4942423a9a7f2)
Theorem hlt_CARD_PSUBSET : forall A:set, A <> Empty -> forall a b :e 2 :^: A, hl_PSUBSET A a b = 1 /\ hl_FINITE A b = 1 -> hl_lt (hl_CARD A a) (hl_CARD A b) = 1.
Admitted.

// HOL Light: sets.ml:2309 / CARD_PSUBSET_IMP   (hash md5:eccb64de3a1afb1f04cd785ae2b351df)
Theorem hlt_CARD_PSUBSET_IMP : forall A:set, A <> Empty -> forall a b :e 2 :^: A, hl_SUBSET A a b = 1 /\ ~ hl_CARD A a = hl_CARD A b -> hl_PSUBSET A a b = 1.
Admitted.

// HOL Light: sets.ml:2313 / CARD_PSUBSET_EQ   (hash md5:c485f9330fdd7e25f487bfcc2e78dfa6)
Theorem hlt_CARD_PSUBSET_EQ : forall A:set, A <> Empty -> forall a b :e 2 :^: A, hl_FINITE A b = 1 /\ hl_SUBSET A a b = 1 -> (hl_PSUBSET A a b = 1 <-> hl_lt (hl_CARD A a) (hl_CARD A b) = 1).
Admitted.

// HOL Light: sets.ml:2317 / CARD_UNION_LE   (hash md5:107cc5a68e3867d8c14aa218160638ad)
Theorem hlt_CARD_UNION_LE : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_le (hl_CARD A (hl_UNION A s t)) (hl_add (hl_CARD A s) (hl_CARD A t)) = 1.
Admitted.

// HOL Light: sets.ml:2327 / FINITE_CARD_LE_UNION   (hash md5:14fd9429be059ab4b8b23bef36b2d6cb)
Theorem hlt_FINITE_CARD_LE_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall m n :e omega, hl_FINITE A s = 1 /\ hl_le (hl_CARD A s) m = 1 /\ (hl_FINITE A t = 1 /\ hl_le (hl_CARD A t) n = 1) -> hl_FINITE A (hl_UNION A s t) = 1 /\ hl_le (hl_CARD A (hl_UNION A s t)) (hl_add m n) = 1.
Admitted.

// HOL Light: sets.ml:2334 / CARD_UNIONS_LE   (hash md5:64944bcfff2033a36b3a54ab89febf0a)
Theorem hlt_CARD_UNIONS_LE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, forall m n :e omega, hl_HAS_SIZE A s m = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_FINITE B (t x) = 1 /\ hl_le (hl_CARD B (t x)) n = 1) -> hl_le (hl_CARD B (hl_UNIONS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_115 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_115 (hl_IN A x s) (t x) = 1 then 1 else 0)))) (hl_mul m n) = 1.
Admitted.

// HOL Light: sets.ml:2358 / CARD_UNION_GEN   (hash md5:f8c8357b5e7234334ef261501bbf6bf8)
Theorem hlt_CARD_UNION_GEN : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_CARD A (hl_UNION A s t) = hl_sub (hl_add (hl_CARD A s) (hl_CARD A t)) (hl_CARD A (hl_INTER A s t)).
Admitted.

// HOL Light: sets.ml:2369 / CARD_UNION_OVERLAP_EQ   (hash md5:8d4e6ce44b1578ccdcbd520382d59ca1)
Theorem hlt_CARD_UNION_OVERLAP_EQ : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> (hl_CARD A (hl_UNION A s t) = hl_add (hl_CARD A s) (hl_CARD A t) <-> hl_INTER A s t = hl_EMPTY A).
Admitted.

// HOL Light: sets.ml:2378 / CARD_UNION_OVERLAP   (hash md5:f037066e94018aea161c1e679e79b4de)
Theorem hlt_CARD_UNION_OVERLAP : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_lt (hl_CARD A (hl_UNION A s t)) (hl_add (hl_CARD A s) (hl_CARD A t)) = 1) -> ~ hl_INTER A s t = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:2388 / CARD_IMAGE_INJ   (hash md5:f399386eea1d58d0a78436c2e48d108e)
Theorem hlt_CARD_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ hl_FINITE A s = 1 -> hl_CARD B (hl_IMAGE A B f s) = hl_CARD A s.
Admitted.

// HOL Light: sets.ml:2399 / HAS_SIZE_IMAGE_INJ   (hash md5:ad7bebab844592359e54a8da46d551fb)
Theorem hlt_HAS_SIZE_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall n :e omega, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ hl_HAS_SIZE A s n = 1 -> hl_HAS_SIZE B (hl_IMAGE A B f s) n = 1.
Admitted.

// HOL Light: sets.ml:2405 / CARD_IMAGE_LE   (hash md5:f6bc77e8dcc60ec0ccb1436757e287b1)
Theorem hlt_CARD_IMAGE_LE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_le (hl_CARD B (hl_IMAGE A B f s)) (hl_CARD A s) = 1.
Admitted.

// HOL Light: sets.ml:2412 / FINITE_CARD_LE_IMAGE   (hash md5:bd1998a48f8353a9c0d83ddd5263ca2b)
Theorem hlt_FINITE_CARD_LE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall n :e omega, hl_FINITE A s = 1 /\ hl_le (hl_CARD A s) n = 1 -> hl_FINITE B (hl_IMAGE A B f s) = 1 /\ hl_le (hl_CARD B (hl_IMAGE A B f s)) n = 1.
Admitted.

// HOL Light: sets.ml:2417 / CARD_IMAGE_INJ_EQ   (hash md5:2c512ede01d049018afe95bbedd929b2)
Theorem hlt_CARD_IMAGE_INJ_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ (forall y :e B, hl_IN B y t = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ f x = y then 1 else 0) = 1)) -> hl_CARD B t = hl_CARD A s.
Admitted.

// HOL Light: sets.ml:2428 / CARD_SUBSET_IMAGE   (hash md5:ed98380b71f54234da209e720cb6da7c)
Theorem hlt_CARD_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: B, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ hl_SUBSET B s (hl_IMAGE A B f t) = 1 -> hl_le (hl_CARD B s) (hl_CARD A t) = 1.
Admitted.

// HOL Light: sets.ml:2432 / HAS_SIZE_IMAGE_INJ_EQ   (hash md5:8ea8a0e1cdf1accaee0b661590d72cd9)
Theorem hlt_HAS_SIZE_IMAGE_INJ_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall n :e omega, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) -> (hl_HAS_SIZE B (hl_IMAGE A B f s) n = 1 <-> hl_HAS_SIZE A s n = 1).
Admitted.

// HOL Light: sets.ml:2445 / CARD_IMAGE_EQ_INJ   (hash md5:e4e62fe4cc7a667b0d79c4ede72c67cf)
Theorem hlt_CARD_IMAGE_EQ_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_CARD B (hl_IMAGE A B f s) = hl_CARD A s <-> forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y).
Admitted.

// HOL Light: sets.ml:2464 / EXISTS_SMALL_SUBSET_IMAGE_INJ   (hash md5:14e4ad143227cdf373924d2b5c8d0013)
Theorem hlt_EXISTS_SMALL_SUBSET_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, forall n :e omega, (exists t :e 2 :^: B, hl_FINITE B t = 1 /\ (hl_lt (hl_CARD B t) n = 1 /\ (hl_SUBSET B t (hl_IMAGE A B f s) = 1 /\ P t = 1))) <-> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_lt (hl_CARD A t) n = 1 /\ (hl_SUBSET A t s = 1 /\ ((forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y)) /\ P (hl_IMAGE A B f t) = 1))).
Admitted.

// HOL Light: sets.ml:2478 / FORALL_SMALL_SUBSET_IMAGE_INJ   (hash md5:01e2d6902a11cac4fee464217eda04ad)
Theorem hlt_FORALL_SMALL_SUBSET_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, forall n :e omega, (forall t :e 2 :^: B, hl_FINITE B t = 1 /\ (hl_lt (hl_CARD B t) n = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1) -> P t = 1) <-> forall t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_lt (hl_CARD A t) n = 1 /\ (hl_SUBSET A t s = 1 /\ (forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y)))) -> P (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: sets.ml:2488 / EXISTS_SMALL_SUBSET_IMAGE   (hash md5:30c7f533404f78c470d1b7706d4ac302)
Theorem hlt_EXISTS_SMALL_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, forall n :e omega, (exists t :e 2 :^: B, hl_FINITE B t = 1 /\ (hl_lt (hl_CARD B t) n = 1 /\ (hl_SUBSET B t (hl_IMAGE A B f s) = 1 /\ P t = 1))) <-> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_lt (hl_CARD A t) n = 1 /\ (hl_SUBSET A t s = 1 /\ P (hl_IMAGE A B f t) = 1)).
Admitted.

// HOL Light: sets.ml:2497 / FORALL_SMALL_SUBSET_IMAGE   (hash md5:e1c7fe5c8fde8110007d3ab4b9bfcc51)
Theorem hlt_FORALL_SMALL_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, forall n :e omega, (forall t :e 2 :^: B, hl_FINITE B t = 1 /\ (hl_lt (hl_CARD B t) n = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1) -> P t = 1) <-> forall t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_lt (hl_CARD A t) n = 1 /\ hl_SUBSET A t s = 1) -> P (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: sets.ml:2505 / CARD_IMAGE_LE2   (hash md5:f2aed9bb1bf3f6f35526e736852691c9)
Theorem hlt_CARD_IMAGE_LE2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ g x = g y) -> f x = f y) -> hl_le (hl_CARD B (hl_IMAGE A B f s)) (hl_CARD C (hl_IMAGE A C g s)) = 1.
Admitted.

// HOL Light: sets.ml:2516 / CARD_IMAGE_LT2   (hash md5:3094f1b80e2d97bc4eabc12d7da8d6a2)
Theorem hlt_CARD_IMAGE_LT2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ g x = g y) -> f x = f y) /\ ~ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> g x = g y)) -> hl_lt (hl_CARD B (hl_IMAGE A B f s)) (hl_CARD C (hl_IMAGE A C g s)) = 1.
Admitted.

// HOL Light: sets.ml:2533 / CHOOSE_SUBSET_STRONG   (hash md5:2726c58e4e50b8350a67336d3f9f792a)
Theorem hlt_CHOOSE_SUBSET_STRONG : forall A:set, A <> Empty -> forall n :e omega, forall s :e 2 :^: A, (hl_FINITE A s = 1 -> hl_le n (hl_CARD A s) = 1) -> exists t :e 2 :^: A, hl_SUBSET A t s = 1 /\ hl_HAS_SIZE A t n = 1.
Admitted.

// HOL Light: sets.ml:2552 / CHOOSE_SUBSET_EQ   (hash md5:f6618b0e108fe69df64971fb45babe2f)
Theorem hlt_CHOOSE_SUBSET_EQ : forall A:set, A <> Empty -> forall n :e omega, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_le n (hl_CARD A s) = 1 <-> exists t :e 2 :^: A, hl_SUBSET A t s = 1 /\ hl_HAS_SIZE A t n = 1.
Admitted.

// HOL Light: sets.ml:2560 / CHOOSE_SUBSET   (hash md5:9b04d21fa309b94d5a3b961dc67f2757)
Theorem hlt_CHOOSE_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> forall n :e omega, hl_le n (hl_CARD A s) = 1 -> exists t :e 2 :^: A, hl_SUBSET A t s = 1 /\ hl_HAS_SIZE A t n = 1.
Admitted.

// HOL Light: sets.ml:2564 / CHOOSE_SUBSET_BETWEEN   (hash md5:454d0e0e950231e8eaa865aac6ff4693)
Theorem hlt_CHOOSE_SUBSET_BETWEEN : forall A:set, A <> Empty -> forall n :e omega, forall s u :e 2 :^: A, hl_SUBSET A s u = 1 /\ (hl_FINITE A s = 1 /\ (hl_le (hl_CARD A s) n = 1 /\ (hl_FINITE A u = 1 -> hl_le n (hl_CARD A u) = 1))) -> exists t :e 2 :^: A, hl_SUBSET A s t = 1 /\ (hl_SUBSET A t u = 1 /\ hl_HAS_SIZE A t n = 1).
Admitted.

// HOL Light: sets.ml:2585 / CARD_LE_UNIONS_CHAIN   (hash md5:1ff01a0a3021ec44584e0f17318b8d1c)
Theorem hlt_CARD_LE_UNIONS_CHAIN : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), forall n :e omega, (forall t u :e 2 :^: A, hl_IN (2 :^: A) t f = 1 /\ hl_IN (2 :^: A) u f = 1 -> hl_SUBSET A t u = 1 \/ hl_SUBSET A u t = 1) /\ (forall t :e 2 :^: A, hl_IN (2 :^: A) t f = 1 -> hl_FINITE A t = 1 /\ hl_le (hl_CARD A t) n = 1) -> hl_FINITE A (hl_UNIONS A f) = 1 /\ hl_le (hl_CARD A (hl_UNIONS A f)) n = 1.
Admitted.

// HOL Light: sets.ml:2603 / CARD_LE_1   (hash md5:8f4004a312862e873bb90b5822064eb7)
Theorem hlt_CARD_LE_1 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_le (hl_CARD A s) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> exists a :e A, hl_SUBSET A s (hl_INSERT A a (hl_EMPTY A)) = 1.
Admitted.

// HOL Light: sets.ml:2613 / INVOLUTION_EVEN_NOFIXPOINTS   (hash md5:c2cd1fb652ab670df4727dac2f028ea5)
Theorem hlt_INVOLUTION_EVEN_NOFIXPOINTS : forall A:set, A <> Empty -> forall f :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN A (f x) s = 1 /\ (~ f x = x /\ f (f x) = x)) -> hl_EVEN (hl_CARD A s) = 1.
Admitted.

// HOL Light: sets.ml:2638 / INVOLUTION_EVEN_FIXPOINTS   (hash md5:872a8bbb513864fc59d0b0044715e117)
Theorem hlt_INVOLUTION_EVEN_FIXPOINTS : forall A:set, A <> Empty -> forall f :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN A (f x) s = 1 /\ f (f x) = x) -> (hl_EVEN (hl_CARD A (hl_GSPEC A (fun GEN_PVAR_120 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_120 (if hl_IN A x s = 1 /\ f x = x then 1 else 0) x = 1 then 1 else 0))) = 1 <-> hl_EVEN (hl_CARD A s) = 1).
Admitted.

// HOL Light: sets.ml:2656 / HAS_SIZE_PRODUCT_DEPENDENT   (hash md5:223c55219b42bf810ed6d24543dfecf8)
Theorem hlt_HAS_SIZE_PRODUCT_DEPENDENT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall m :e omega, forall t :e 2 :^: B :^: A, forall n :e omega, hl_HAS_SIZE A s m = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_HAS_SIZE B (t x) n = 1) -> hl_HAS_SIZE (A :*: B) (hl_GSPEC (A :*: B) (fun GEN_PVAR_123 :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) GEN_PVAR_123 (if hl_IN A x s = 1 /\ hl_IN B y (t x) = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0)) (hl_mul m n) = 1.
Admitted.

// HOL Light: sets.ml:2684 / FINITE_PRODUCT_DEPENDENT   (hash md5:86ded7d13f6e6b7f131a4b72b4a1b239)
Theorem hlt_FINITE_PRODUCT_DEPENDENT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_FINITE B (t x) = 1) -> hl_FINITE C (hl_GSPEC C (fun GEN_PVAR_128 :e C => if exists x :e A, exists y :e B, hl_SETSPEC C GEN_PVAR_128 (if hl_IN A x s = 1 /\ hl_IN B y (t x) = 1 then 1 else 0) (f x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:2711 / FINITE_PRODUCT   (hash md5:93c20fc474eef987c39cfcffb984136e)
Theorem hlt_FINITE_PRODUCT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_FINITE (A :*: B) (hl_GSPEC (A :*: B) (fun GEN_PVAR_129 :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) GEN_PVAR_129 (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:2715 / CARD_PRODUCT   (hash md5:10dc63cd85bccd331d309f56459a2304)
Theorem hlt_CARD_PRODUCT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_CARD (A :*: B) (hl_GSPEC (A :*: B) (fun GEN_PVAR_130 :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) GEN_PVAR_130 (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0)) = hl_mul (hl_CARD A s) (hl_CARD B t).
Admitted.

// HOL Light: sets.ml:2723 / HAS_SIZE_PRODUCT   (hash md5:b334db6ac140b49422203dfb4a570ca7)
Theorem hlt_HAS_SIZE_PRODUCT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall m :e omega, forall t :e 2 :^: B, forall n :e omega, hl_HAS_SIZE A s m = 1 /\ hl_HAS_SIZE B t n = 1 -> hl_HAS_SIZE (A :*: B) (hl_GSPEC (A :*: B) (fun GEN_PVAR_131 :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) GEN_PVAR_131 (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0)) (hl_mul m n) = 1.
Admitted.

// HOL Light: sets.ml:2734 / CROSS   (hash md5:6e1aaac25a432e2f19b7b62c63c787fa)
Theorem hlt_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_CROSS A B s t = hl_GSPEC (A :*: B) (fun GEN_PVAR_132 :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) GEN_PVAR_132 (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:2737 / IN_CROSS   (hash md5:ed960ab7f490ac67ee857ac89ae420d6)
Theorem hlt_IN_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, forall y :e B, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_IN (A :*: B) (hl_pair A B x y) (hl_CROSS A B s t) = 1 <-> hl_IN A x s = 1 /\ hl_IN B y t = 1.
Admitted.

// HOL Light: sets.ml:2741 / HAS_SIZE_CROSS   (hash md5:2c2012206b71d9a004233f611110f73f)
Theorem hlt_HAS_SIZE_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall m n :e omega, hl_HAS_SIZE A s m = 1 /\ hl_HAS_SIZE B t n = 1 -> hl_HAS_SIZE (A :*: B) (hl_CROSS A B s t) (hl_mul m n) = 1.
Admitted.

// HOL Light: sets.ml:2746 / FINITE_CROSS   (hash md5:12892b449bb0cf81d2a595538cee5069)
Theorem hlt_FINITE_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_FINITE (A :*: B) (hl_CROSS A B s t) = 1.
Admitted.

// HOL Light: sets.ml:2750 / CARD_CROSS   (hash md5:e98f492c84401357c81713e687de88e9)
Theorem hlt_CARD_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_CARD (A :*: B) (hl_CROSS A B s t) = hl_mul (hl_CARD A s) (hl_CARD B t).
Admitted.

// HOL Light: sets.ml:2754 / CROSS_EQ_EMPTY   (hash md5:e19eaa4d015694c4c71679f6498d7ae5)
Theorem hlt_CROSS_EQ_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_CROSS A B s t = hl_EMPTY (A :*: B) <-> s = hl_EMPTY A \/ t = hl_EMPTY B.
Admitted.

// HOL Light: sets.ml:2759 / CROSS_EMPTY   (hash md5:e00925b9a577c08c474849dcdafa6f3e)
Theorem hlt_CROSS_EMPTY : forall C D A B:set, C <> Empty -> D <> Empty -> A <> Empty -> B <> Empty -> (forall s :e 2 :^: A, hl_CROSS A C s (hl_EMPTY C) = hl_EMPTY (A :*: C)) /\ forall t :e 2 :^: B, hl_CROSS D B (hl_EMPTY D) t = hl_EMPTY (D :*: B).
Admitted.

// HOL Light: sets.ml:2763 / CROSS_SING   (hash md5:7f0e5be044927d4da922ad2ea91a2fa3)
Theorem hlt_CROSS_SING : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, forall y :e B, hl_CROSS A B (hl_INSERT A x (hl_EMPTY A)) (hl_INSERT B y (hl_EMPTY B)) = hl_INSERT (A :*: B) (hl_pair A B x y) (hl_EMPTY (A :*: B)).
Admitted.

// HOL Light: sets.ml:2767 / CROSS_UNIV   (hash md5:16a8e64b599f4aab9ff422318e793382)
Theorem hlt_CROSS_UNIV : forall A B:set, A <> Empty -> B <> Empty -> hl_CROSS A B (hl_UNIV A) (hl_UNIV B) = hl_UNIV (A :*: B).
Admitted.

// HOL Light: sets.ml:2771 / FINITE_CROSS_EQ   (hash md5:12a659d68de9aa50de346ff179cd4a23)
Theorem hlt_FINITE_CROSS_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE (A :*: B) (hl_CROSS A B s t) = 1 <-> s = hl_EMPTY A \/ (t = hl_EMPTY B \/ hl_FINITE A s = 1 /\ hl_FINITE B t = 1).
Admitted.

// HOL Light: sets.ml:2786 / INFINITE_CROSS_EQ   (hash md5:f61159fa2e491710bae2d49d3f4daa9e)
Theorem hlt_INFINITE_CROSS_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_INFINITE (A :*: B) (hl_CROSS A B s t) = 1 <-> ~ s = hl_EMPTY A /\ hl_INFINITE B t = 1 \/ hl_INFINITE A s = 1 /\ ~ t = hl_EMPTY B.
Admitted.

// HOL Light: sets.ml:2792 / FINITE_CROSS_UNIV   (hash md5:59f8545fd543d6fedc4db7333f02ee5d)
Theorem hlt_FINITE_CROSS_UNIV : forall A B:set, A <> Empty -> B <> Empty -> (hl_FINITE (A :*: B) (hl_UNIV (A :*: B)) = 1 <-> hl_FINITE A (hl_UNIV A) = 1 /\ hl_FINITE B (hl_UNIV B) = 1).
Admitted.

// HOL Light: sets.ml:2796 / INFINITE_CROSS_UNIV   (hash md5:a5fc7251e0b641fbd96c2d29bb415bd7)
Theorem hlt_INFINITE_CROSS_UNIV : forall A B:set, A <> Empty -> B <> Empty -> (hl_INFINITE (A :*: B) (hl_UNIV (A :*: B)) = 1 <-> hl_INFINITE A (hl_UNIV A) = 1 \/ hl_INFINITE B (hl_UNIV B) = 1).
Admitted.

// HOL Light: sets.ml:2801 / FINITE_UNIV_PAIR   (hash md5:5efae67a277a797d022a7ff22791b5ad)
Theorem hlt_FINITE_UNIV_PAIR : forall A:set, A <> Empty -> (hl_FINITE (A :*: A) (hl_UNIV (A :*: A)) = 1 <-> hl_FINITE A (hl_UNIV A) = 1).
Admitted.

// HOL Light: sets.ml:2805 / INFINITE_UNIV_PAIR   (hash md5:cf52b0c106b37d8bd09fd497eb9ea909)
Theorem hlt_INFINITE_UNIV_PAIR : forall A:set, A <> Empty -> (hl_INFINITE (A :*: A) (hl_UNIV (A :*: A)) = 1 <-> hl_INFINITE A (hl_UNIV A) = 1).
Admitted.

// HOL Light: sets.ml:2809 / FORALL_IN_CROSS   (hash md5:7ad704a95f89ec3cd2fa6c71f7bad875)
Theorem hlt_FORALL_IN_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), forall s :e 2 :^: A, forall t :e 2 :^: B, (forall z :e A :*: B, hl_IN (A :*: B) z (hl_CROSS A B s t) = 1 -> P z = 1) <-> forall x :e A, forall y :e B, hl_IN A x s = 1 /\ hl_IN B y t = 1 -> P (hl_pair A B x y) = 1.
Admitted.

// HOL Light: sets.ml:2814 / EXISTS_IN_CROSS   (hash md5:6dd92af281bd53c5d860f8f073b83b4c)
Theorem hlt_EXISTS_IN_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), forall s :e 2 :^: A, forall t :e 2 :^: B, (exists z :e A :*: B, hl_IN (A :*: B) z (hl_CROSS A B s t) = 1 /\ P z = 1) <-> exists x :e A, exists y :e B, hl_IN A x s = 1 /\ (hl_IN B y t = 1 /\ P (hl_pair A B x y) = 1).
Admitted.

// HOL Light: sets.ml:2819 / SUBSET_CROSS   (hash md5:cbbb8e149c5e43737fd7f26ee385f35d)
Theorem hlt_SUBSET_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall s' :e 2 :^: A, forall t' :e 2 :^: B, hl_SUBSET (A :*: B) (hl_CROSS A B s t) (hl_CROSS A B s' t') = 1 <-> s = hl_EMPTY A \/ (t = hl_EMPTY B \/ hl_SUBSET A s s' = 1 /\ hl_SUBSET B t t' = 1).
Admitted.

// HOL Light: sets.ml:2826 / CROSS_MONO   (hash md5:03e087b429b093bfca312b65b321d831)
Theorem hlt_CROSS_MONO : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall s' :e 2 :^: A, forall t' :e 2 :^: B, hl_SUBSET A s s' = 1 /\ hl_SUBSET B t t' = 1 -> hl_SUBSET (A :*: B) (hl_CROSS A B s t) (hl_CROSS A B s' t') = 1.
Admitted.

// HOL Light: sets.ml:2830 / CROSS_EQ   (hash md5:b1e1fa1ea21013af576ae86b834f6a90)
Theorem hlt_CROSS_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s s' :e 2 :^: A, forall t t' :e 2 :^: B, hl_CROSS A B s t = hl_CROSS A B s' t' <-> (s = hl_EMPTY A \/ t = hl_EMPTY B) /\ (s' = hl_EMPTY A \/ t' = hl_EMPTY B) \/ s = s' /\ t = t'.
Admitted.

// HOL Light: sets.ml:2836 / IMAGE_FST_CROSS   (hash md5:ff17513908d72f5496747e8878a74074)
Theorem hlt_IMAGE_FST_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_IMAGE (A :*: B) A (hl_FST A B) (hl_CROSS A B s t) = hl_COND (2 :^: A) (if t = hl_EMPTY B then 1 else 0) (hl_EMPTY A) s.
Admitted.

// HOL Light: sets.ml:2844 / IMAGE_SND_CROSS   (hash md5:3ff9aa130550c3e8fdd039a71a207439)
Theorem hlt_IMAGE_SND_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_IMAGE (A :*: B) B (hl_SND A B) (hl_CROSS A B s t) = hl_COND (2 :^: B) (if s = hl_EMPTY A then 1 else 0) (hl_EMPTY B) t.
Admitted.

// HOL Light: sets.ml:2852 / IMAGE_PAIRED_CROSS   (hash md5:eb8ac6ae7e9e25f1d1b7df3311c1479e)
Theorem hlt_IMAGE_PAIRED_CROSS : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e B :^: A, forall g :e D :^: C, forall s :e 2 :^: A, forall t :e 2 :^: C, hl_IMAGE (A :*: C) (B :*: D) (hl_GABS ((B :*: D) :^: (A :*: C)) (fun f1 :e (B :*: D) :^: (A :*: C) => if forall x :e A, forall y :e C, hl_GEQ (B :*: D) (f1 (hl_pair A C x y)) (hl_pair B D (f x) (g y)) = 1 then 1 else 0)) (hl_CROSS A C s t) = hl_CROSS B D (hl_IMAGE A B f s) (hl_IMAGE C D g t).
Admitted.

// HOL Light: sets.ml:2859 / CROSS_INTER   (hash md5:6afde28c2c5c1f14ab6371d87dedf163)
Theorem hlt_CROSS_INTER : forall A B:set, A <> Empty -> B <> Empty -> (forall s :e 2 :^: A, forall t u :e 2 :^: B, hl_CROSS A B s (hl_INTER B t u) = hl_INTER (A :*: B) (hl_CROSS A B s t) (hl_CROSS A B s u)) /\ forall s t :e 2 :^: A, forall u :e 2 :^: B, hl_CROSS A B (hl_INTER A s t) u = hl_INTER (A :*: B) (hl_CROSS A B s u) (hl_CROSS A B t u).
Admitted.

// HOL Light: sets.ml:2867 / CROSS_UNION   (hash md5:daec6f8879e6856d64238d7ff6f589d9)
Theorem hlt_CROSS_UNION : forall A B:set, A <> Empty -> B <> Empty -> (forall s :e 2 :^: A, forall t u :e 2 :^: B, hl_CROSS A B s (hl_UNION B t u) = hl_UNION (A :*: B) (hl_CROSS A B s t) (hl_CROSS A B s u)) /\ forall s t :e 2 :^: A, forall u :e 2 :^: B, hl_CROSS A B (hl_UNION A s t) u = hl_UNION (A :*: B) (hl_CROSS A B s u) (hl_CROSS A B t u).
Admitted.

// HOL Light: sets.ml:2875 / CROSS_DIFF   (hash md5:6e1f4f9a1ac13638e124e40adffb2c90)
Theorem hlt_CROSS_DIFF : forall A B:set, A <> Empty -> B <> Empty -> (forall s :e 2 :^: A, forall t u :e 2 :^: B, hl_CROSS A B s (hl_DIFF B t u) = hl_DIFF (A :*: B) (hl_CROSS A B s t) (hl_CROSS A B s u)) /\ forall s t :e 2 :^: A, forall u :e 2 :^: B, hl_CROSS A B (hl_DIFF A s t) u = hl_DIFF (A :*: B) (hl_CROSS A B s u) (hl_CROSS A B t u).
Admitted.

// HOL Light: sets.ml:2883 / INTER_CROSS   (hash md5:93e3c74ac038b5c1693829ed1508d22e)
Theorem hlt_INTER_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s s' :e 2 :^: A, forall t t' :e 2 :^: B, hl_INTER (A :*: B) (hl_CROSS A B s t) (hl_CROSS A B s' t') = hl_CROSS A B (hl_INTER A s s') (hl_INTER B t t').
Admitted.

// HOL Light: sets.ml:2889 / CROSS_UNIONS   (hash md5:1d316d3abb10c2f642cc43d99c0f2640)
Theorem hlt_CROSS_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> (forall s :e 2 :^: A, forall f :e 2 :^: (2 :^: A), hl_CROSS A A s (hl_UNIONS A f) = hl_UNIONS (A :*: A) (hl_GSPEC (2 :^: (A :*: A)) (fun GEN_PVAR_134 :e 2 :^: (A :*: A) => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: (A :*: A)) GEN_PVAR_134 (hl_IN (2 :^: A) t f) (hl_CROSS A A s t) = 1 then 1 else 0))) /\ forall f :e 2 :^: (2 :^: A), forall t :e 2 :^: B, hl_CROSS A B (hl_UNIONS A f) t = hl_UNIONS (A :*: B) (hl_GSPEC (2 :^: (A :*: B)) (fun GEN_PVAR_135 :e 2 :^: (A :*: B) => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: (A :*: B)) GEN_PVAR_135 (hl_IN (2 :^: A) s f) (hl_CROSS A B s t) = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:2889 / CROSS_UNIONS_UNIONS   (hash md5:4d0bb1a973507a44d59c5bb5d94f6d1f)
Theorem hlt_CROSS_UNIONS_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e 2 :^: (2 :^: A), forall g :e 2 :^: (2 :^: B), hl_CROSS A B (hl_UNIONS A f) (hl_UNIONS B g) = hl_UNIONS (A :*: B) (hl_GSPEC (2 :^: (A :*: B)) (fun GEN_PVAR_133 :e 2 :^: (A :*: B) => if exists s :e 2 :^: A, exists t :e 2 :^: B, hl_SETSPEC (2 :^: (A :*: B)) GEN_PVAR_133 (if hl_IN (2 :^: A) s f = 1 /\ hl_IN (2 :^: B) t g = 1 then 1 else 0) (hl_CROSS A B s t) = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:2901 / CROSS_INTERS   (hash md5:520e67d4c78ae1a1efb95f33bc2350d8)
Theorem hlt_CROSS_INTERS : forall A B:set, A <> Empty -> B <> Empty -> (forall s :e 2 :^: A, forall f :e 2 :^: (2 :^: A), hl_CROSS A A s (hl_INTERS A f) = hl_COND (2 :^: (A :*: A)) (if f = hl_EMPTY (2 :^: A) then 1 else 0) (hl_CROSS A A s (hl_UNIV A)) (hl_INTERS (A :*: A) (hl_GSPEC (2 :^: (A :*: A)) (fun GEN_PVAR_139 :e 2 :^: (A :*: A) => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: (A :*: A)) GEN_PVAR_139 (hl_IN (2 :^: A) t f) (hl_CROSS A A s t) = 1 then 1 else 0)))) /\ forall f :e 2 :^: (2 :^: A), forall t :e 2 :^: B, hl_CROSS A B (hl_INTERS A f) t = hl_COND (2 :^: (A :*: B)) (if f = hl_EMPTY (2 :^: A) then 1 else 0) (hl_CROSS A B (hl_UNIV A) t) (hl_INTERS (A :*: B) (hl_GSPEC (2 :^: (A :*: B)) (fun GEN_PVAR_140 :e 2 :^: (A :*: B) => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: (A :*: B)) GEN_PVAR_140 (hl_IN (2 :^: A) s f) (hl_CROSS A B s t) = 1 then 1 else 0))).
Admitted.

// HOL Light: sets.ml:2901 / CROSS_INTERS_INTERS   (hash md5:14340a296ce17de620b81bc3819fd8d1)
Theorem hlt_CROSS_INTERS_INTERS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e 2 :^: (2 :^: A), forall g :e 2 :^: (2 :^: B), hl_CROSS A B (hl_INTERS A f) (hl_INTERS B g) = hl_COND (2 :^: (A :*: B)) (if f = hl_EMPTY (2 :^: A) then 1 else 0) (hl_INTERS (A :*: B) (hl_GSPEC (2 :^: (A :*: B)) (fun GEN_PVAR_136 :e 2 :^: (A :*: B) => if exists t :e 2 :^: B, hl_SETSPEC (2 :^: (A :*: B)) GEN_PVAR_136 (hl_IN (2 :^: B) t g) (hl_CROSS A B (hl_UNIV A) t) = 1 then 1 else 0))) (hl_COND (2 :^: (A :*: B)) (if g = hl_EMPTY (2 :^: B) then 1 else 0) (hl_INTERS (A :*: B) (hl_GSPEC (2 :^: (A :*: B)) (fun GEN_PVAR_137 :e 2 :^: (A :*: B) => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: (A :*: B)) GEN_PVAR_137 (hl_IN (2 :^: A) s f) (hl_CROSS A B s (hl_UNIV B)) = 1 then 1 else 0))) (hl_INTERS (A :*: B) (hl_GSPEC (2 :^: (A :*: B)) (fun GEN_PVAR_138 :e 2 :^: (A :*: B) => if exists s :e 2 :^: A, exists t :e 2 :^: B, hl_SETSPEC (2 :^: (A :*: B)) GEN_PVAR_138 (if hl_IN (2 :^: A) s f = 1 /\ hl_IN (2 :^: B) t g = 1 then 1 else 0) (hl_CROSS A B s t) = 1 then 1 else 0)))).
Admitted.

// HOL Light: sets.ml:2918 / DISJOINT_CROSS   (hash md5:701f182d1d45eff8659254f868c5177e)
Theorem hlt_DISJOINT_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall s' :e 2 :^: A, forall t' :e 2 :^: B, hl_DISJOINT (A :*: B) (hl_CROSS A B s t) (hl_CROSS A B s' t') = 1 <-> hl_DISJOINT A s s' = 1 \/ hl_DISJOINT B t t' = 1.
Admitted.

// HOL Light: sets.ml:2930 / ARB   (hash md5:b453496b4bba3b6602eb4a8f4e4f7fa5)
Theorem hlt_ARB : forall A:set, A <> Empty -> hl_ARB A = hl_select A (fun x :e A => if False then 1 else 0).
Admitted.

// HOL Light: sets.ml:2933 / EXTENSIONAL   (hash md5:808c8312c2dcfe2200f0e3a3f1f627e0)
Theorem hlt_EXTENSIONAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, hl_EXTENSIONAL A B s = hl_GSPEC (B :^: A) (fun GEN_PVAR_141 :e B :^: A => if exists f :e B :^: A, hl_SETSPEC (B :^: A) GEN_PVAR_141 (if forall x :e A, ~ hl_IN A x s = 1 -> f x = hl_ARB B then 1 else 0) f = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:2936 / IN_EXTENSIONAL   (hash md5:1281e60a81a928da3c2aa7f8780a8486)
Theorem hlt_IN_EXTENSIONAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, hl_IN (B :^: A) f (hl_EXTENSIONAL A B s) = 1 <-> forall x :e A, ~ hl_IN A x s = 1 -> f x = hl_ARB B.
Admitted.

// HOL Light: sets.ml:2940 / IN_EXTENSIONAL_UNDEFINED   (hash md5:472505a56a2a4b7d06a83bb229c409b0)
Theorem hlt_IN_EXTENSIONAL_UNDEFINED : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, forall x :e A, hl_IN (B :^: A) f (hl_EXTENSIONAL A B s) = 1 /\ ~ hl_IN A x s = 1 -> f x = hl_ARB B.
Admitted.

// HOL Light: sets.ml:2944 / EXTENSIONAL_EMPTY   (hash md5:a0a42c58948cc1b730a2b77104679357)
Theorem hlt_EXTENSIONAL_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> hl_EXTENSIONAL A B (hl_EMPTY A) = hl_INSERT (B :^: A) (fun x :e A => hl_ARB B) (hl_EMPTY (B :^: A)).
Admitted.

// HOL Light: sets.ml:2949 / EXTENSIONAL_UNIV   (hash md5:e2852671891d25590d389c532b1b3cf4)
Theorem hlt_EXTENSIONAL_UNIV : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, hl_EXTENSIONAL A B (hl_UNIV A) f = 1.
Admitted.

// HOL Light: sets.ml:2953 / EXTENSIONAL_EQ   (hash md5:d8e1dcae4fc83112898d0f3e3f784bf2)
Theorem hlt_EXTENSIONAL_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f g :e B :^: A, hl_IN (B :^: A) f (hl_EXTENSIONAL A B s) = 1 /\ (hl_IN (B :^: A) g (hl_EXTENSIONAL A B s) = 1 /\ (forall x :e A, hl_IN A x s = 1 -> f x = g x)) -> f = g.
Admitted.

// HOL Light: sets.ml:2965 / RESTRICTION   (hash md5:f0033796213e90fb39a4782262cc367f)
Theorem hlt_RESTRICTION : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, forall x :e A, hl_RESTRICTION A B s f x = hl_COND B (hl_IN A x s) (f x) (hl_ARB B).
Admitted.

// HOL Light: sets.ml:2968 / RESTRICTION_THM   (hash md5:77bb3eaf53f535793048ac122f3fae26)
Theorem hlt_RESTRICTION_THM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, hl_RESTRICTION A B s f = fun x :e A => hl_COND B (hl_IN A x s) (f x) (hl_ARB B).
Admitted.

// HOL Light: sets.ml:2972 / RESTRICTION_DEFINED   (hash md5:acd43b56eebe5ea59eeec9cb964a20c0)
Theorem hlt_RESTRICTION_DEFINED : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, forall x :e A, hl_IN A x s = 1 -> hl_RESTRICTION A B s f x = f x.
Admitted.

// HOL Light: sets.ml:2976 / RESTRICTION_UNDEFINED   (hash md5:90dd98b7049b1877dcc901afa13c4757)
Theorem hlt_RESTRICTION_UNDEFINED : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, forall x :e A, ~ hl_IN A x s = 1 -> hl_RESTRICTION A B s f x = hl_ARB B.
Admitted.

// HOL Light: sets.ml:2980 / RESTRICTION_EQ   (hash md5:b98d44a91318565adc80432231067c3c)
Theorem hlt_RESTRICTION_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, forall x :e A, forall y :e B, hl_IN A x s = 1 /\ f x = y -> hl_RESTRICTION A B s f x = y.
Admitted.

// HOL Light: sets.ml:2984 / RESTRICTION_IN_EXTENSIONAL   (hash md5:d5712d4726595006dd2f72834f5583f1)
Theorem hlt_RESTRICTION_IN_EXTENSIONAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, hl_IN (B :^: A) (hl_RESTRICTION A B s f) (hl_EXTENSIONAL A B s) = 1.
Admitted.

// HOL Light: sets.ml:2988 / RESTRICTION_EXTENSION   (hash md5:0e3cc26a78113f7c488fa36ef738cf5c)
Theorem hlt_RESTRICTION_EXTENSION : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f g :e B :^: A, hl_RESTRICTION A B s f = hl_RESTRICTION A B s g <-> forall x :e A, hl_IN A x s = 1 -> f x = g x.
Admitted.

// HOL Light: sets.ml:2993 / RESTRICTION_FIXPOINT   (hash md5:08adc1c671e27c196301e2886c563e32)
Theorem hlt_RESTRICTION_FIXPOINT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, hl_RESTRICTION A B s f = f <-> hl_IN (B :^: A) f (hl_EXTENSIONAL A B s) = 1.
Admitted.

// HOL Light: sets.ml:2997 / RESTRICTION_UNIV   (hash md5:0a774ea29febeded6bb4d7772c6b2414)
Theorem hlt_RESTRICTION_UNIV : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, hl_RESTRICTION A B (hl_UNIV A) f = f.
Admitted.

// HOL Light: sets.ml:3001 / RESTRICTION_RESTRICTION   (hash md5:6fed62274557a83f6f0a7a552cdf5ec0)
Theorem hlt_RESTRICTION_RESTRICTION : forall A B:set, A <> Empty -> B <> Empty -> forall s t :e 2 :^: A, forall f :e B :^: A, hl_SUBSET A s t = 1 -> hl_RESTRICTION A B s (hl_RESTRICTION A B t f) = hl_RESTRICTION A B s f.
Admitted.

// HOL Light: sets.ml:3006 / RESTRICTION_IDEMP   (hash md5:381ced48d85ac3c8f289acb78aeb6def)
Theorem hlt_RESTRICTION_IDEMP : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, hl_RESTRICTION A B s (hl_RESTRICTION A B s f) = hl_RESTRICTION A B s f.
Admitted.

// HOL Light: sets.ml:3010 / IMAGE_RESTRICTION   (hash md5:d3d352503417f7e5ce21f7bb39630d1c)
Theorem hlt_IMAGE_RESTRICTION : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 -> hl_IMAGE A B (hl_RESTRICTION A B t f) s = hl_IMAGE A B f s.
Admitted.

// HOL Light: sets.ml:3014 / RESTRICTION_COMPOSE_RIGHT   (hash md5:fb36d87d7590a9c8c7f6278a2fc857a2)
Theorem hlt_RESTRICTION_COMPOSE_RIGHT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall s :e 2 :^: A, hl_RESTRICTION A C s (hl_o B C A g (hl_RESTRICTION A B s f)) = hl_RESTRICTION A C s (hl_o B C A g f).
Admitted.

// HOL Light: sets.ml:3021 / RESTRICTION_COMPOSE_LEFT   (hash md5:2874b333ae2aee379d3a64c11da896d0)
Theorem hlt_RESTRICTION_COMPOSE_LEFT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_SUBSET B (hl_IMAGE A B f s) t = 1 -> hl_RESTRICTION A C s (hl_o B C A (hl_RESTRICTION B C t g) f) = hl_RESTRICTION A C s (hl_o B C A g f).
Admitted.

// HOL Light: sets.ml:3029 / RESTRICTION_COMPOSE   (hash md5:94189f1596169be889fc72a227f8d36e)
Theorem hlt_RESTRICTION_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_SUBSET B (hl_IMAGE A B f s) t = 1 -> hl_RESTRICTION A C s (hl_o B C A (hl_RESTRICTION B C t g) (hl_RESTRICTION A B s f)) = hl_RESTRICTION A C s (hl_o B C A g f).
Admitted.

// HOL Light: sets.ml:3036 / RESTRICTION_UNIQUE   (hash md5:c918f328ccbe2555ed5ca3c112f78c2b)
Theorem hlt_RESTRICTION_UNIQUE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f g :e B :^: A, hl_RESTRICTION A B s f = g <-> hl_EXTENSIONAL A B s g = 1 /\ forall x :e A, hl_IN A x s = 1 -> f x = g x.
Admitted.

// HOL Light: sets.ml:3042 / RESTRICTION_UNIQUE_ALT   (hash md5:0e4ce0394d1fb1588eb845b6a076d71b)
Theorem hlt_RESTRICTION_UNIQUE_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f g :e B :^: A, f = hl_RESTRICTION A B s g <-> hl_EXTENSIONAL A B s f = 1 /\ forall x :e A, hl_IN A x s = 1 -> f x = g x.
Admitted.

// HOL Light: sets.ml:3052 / cartesian_product   (hash md5:961ce6dcd9481a6ebfc6c3ae434cf55f)
Theorem hlt_cartesian_product : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, hl_cartesian_product K A k s = hl_GSPEC (A :^: K) (fun GEN_PVAR_142 :e A :^: K => if exists f :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_142 (if hl_EXTENSIONAL K A k f = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (s i) = 1 then 1 else 0) f = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:3056 / IN_CARTESIAN_PRODUCT   (hash md5:190d7922d0a6417b9a7ba3988a2c183c)
Theorem hlt_IN_CARTESIAN_PRODUCT : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, forall x :e A :^: K, hl_IN (A :^: K) x (hl_cartesian_product K A k s) = 1 <-> hl_EXTENSIONAL K A k x = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_IN A (x i) (s i) = 1.
Admitted.

// HOL Light: sets.ml:3062 / CARTESIAN_PRODUCT   (hash md5:078eec4a3012e2327e86a9035bb6d1c0)
Theorem hlt_CARTESIAN_PRODUCT : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, hl_cartesian_product K A k s = hl_GSPEC (A :^: K) (fun GEN_PVAR_143 :e A :^: K => if exists f :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_143 (if forall i :e K, hl_IN A (f i) (hl_COND (2 :^: A) (hl_IN K i k) (s i) (hl_INSERT A (hl_ARB A) (hl_EMPTY A))) = 1 then 1 else 0) f = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:3069 / RESTRICTION_IN_CARTESIAN_PRODUCT   (hash md5:a5e9dcb0e7ef34934a4fa6fb6a6fbfa6)
Theorem hlt_RESTRICTION_IN_CARTESIAN_PRODUCT : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, forall f :e A :^: K, hl_IN (A :^: K) (hl_RESTRICTION K A k f) (hl_cartesian_product K A k s) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (s i) = 1.
Admitted.

// HOL Light: sets.ml:3076 / CARTESIAN_PRODUCT_AS_RESTRICTIONS   (hash md5:b28d41711369d1a96071876fe8328a02)
Theorem hlt_CARTESIAN_PRODUCT_AS_RESTRICTIONS : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, hl_cartesian_product K A k s = hl_GSPEC (A :^: K) (fun GEN_PVAR_144 :e A :^: K => if exists f :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_144 (if forall i :e K, hl_IN K i k = 1 -> hl_IN A (f i) (s i) = 1 then 1 else 0) (hl_RESTRICTION K A k f) = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:3088 / CARTESIAN_PRODUCT_EQ_EMPTY   (hash md5:593fdb2663a466c343063ef9b272397d)
Theorem hlt_CARTESIAN_PRODUCT_EQ_EMPTY : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, hl_cartesian_product K A k s = hl_EMPTY (A :^: K) <-> exists i :e K, hl_IN K i k = 1 /\ s i = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:3100 / CARTESIAN_PRODUCT_EMPTY   (hash md5:85c42a6c9225e2fc017c477fda64cc42)
Theorem hlt_CARTESIAN_PRODUCT_EMPTY : forall A K:set, A <> Empty -> K <> Empty -> forall s :e 2 :^: A :^: K, hl_cartesian_product K A (hl_EMPTY K) s = hl_INSERT (A :^: K) (fun i :e K => hl_ARB A) (hl_EMPTY (A :^: K)).
Admitted.

// HOL Light: sets.ml:3105 / CARTESIAN_PRODUCT_EQ_MEMBERS   (hash md5:7c10996f163efad5b8dd80f5203f7025)
Theorem hlt_CARTESIAN_PRODUCT_EQ_MEMBERS : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, forall x y :e A :^: K, hl_IN (A :^: K) x (hl_cartesian_product K A k s) = 1 /\ (hl_IN (A :^: K) y (hl_cartesian_product K A k s) = 1 /\ (forall i :e K, hl_IN K i k = 1 -> x i = y i)) -> x = y.
Admitted.

// HOL Light: sets.ml:3114 / CARTESIAN_PRODUCT_EQ_MEMBERS_EQ   (hash md5:8c52c57644aa45875ed9661405c67005)
Theorem hlt_CARTESIAN_PRODUCT_EQ_MEMBERS_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, forall x y :e A :^: K, hl_IN (A :^: K) x (hl_cartesian_product K A k s) = 1 /\ hl_IN (A :^: K) y (hl_cartesian_product K A k s) = 1 -> (x = y <-> forall i :e K, hl_IN K i k = 1 -> x i = y i).
Admitted.

// HOL Light: sets.ml:3121 / SUBSET_CARTESIAN_PRODUCT   (hash md5:d013ce253951a33990abf1908067f853)
Theorem hlt_SUBSET_CARTESIAN_PRODUCT : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s t :e 2 :^: A :^: K, hl_SUBSET (A :^: K) (hl_cartesian_product K A k s) (hl_cartesian_product K A k t) = 1 <-> hl_cartesian_product K A k s = hl_EMPTY (A :^: K) \/ forall i :e K, hl_IN K i k = 1 -> hl_SUBSET A (s i) (t i) = 1.
Admitted.

// HOL Light: sets.ml:3141 / CARTESIAN_PRODUCT_EQ   (hash md5:869b813bcad731bc05374c414b108b70)
Theorem hlt_CARTESIAN_PRODUCT_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s t :e 2 :^: A :^: K, hl_cartesian_product K A k s = hl_cartesian_product K A k t <-> hl_cartesian_product K A k s = hl_EMPTY (A :^: K) /\ hl_cartesian_product K A k t = hl_EMPTY (A :^: K) \/ forall i :e K, hl_IN K i k = 1 -> s i = t i.
Admitted.

// HOL Light: sets.ml:3157 / INTER_CARTESIAN_PRODUCT   (hash md5:59a5d3d65635d8a56b3d3eadeede0583)
Theorem hlt_INTER_CARTESIAN_PRODUCT : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s t :e 2 :^: A :^: K, hl_INTER (A :^: K) (hl_cartesian_product K A k s) (hl_cartesian_product K A k t) = hl_cartesian_product K A k (fun i :e K => hl_INTER A (s i) (t i)).
Admitted.

// HOL Light: sets.ml:3164 / CARTESIAN_PRODUCT_UNIV   (hash md5:98c7d510ad6a73a6cfce0e45b5e05f07)
Theorem hlt_CARTESIAN_PRODUCT_UNIV : forall A K:set, A <> Empty -> K <> Empty -> hl_cartesian_product K A (hl_UNIV K) (fun i :e K => hl_UNIV A) = hl_UNIV (A :^: K).
Admitted.

// HOL Light: sets.ml:3169 / CARTESIAN_PRODUCT_SINGS   (hash md5:e8f021d2793f92b64f54266c6a87db65)
Theorem hlt_CARTESIAN_PRODUCT_SINGS : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall x :e A :^: K, hl_EXTENSIONAL K A k x = 1 -> hl_cartesian_product K A k (fun i :e K => hl_INSERT A (x i) (hl_EMPTY A)) = hl_INSERT (A :^: K) x (hl_EMPTY (A :^: K)).
Admitted.

// HOL Light: sets.ml:3175 / CARTESIAN_PRODUCT_SINGS_GEN   (hash md5:a6ace1fa44c7a74ba22f96ca3dd717a4)
Theorem hlt_CARTESIAN_PRODUCT_SINGS_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall x :e A :^: K, hl_cartesian_product K A k (fun i :e K => hl_INSERT A (x i) (hl_EMPTY A)) = hl_INSERT (A :^: K) (hl_RESTRICTION K A k x) (hl_EMPTY (A :^: K)).
Admitted.

// HOL Light: sets.ml:3181 / IMAGE_PROJECTION_CARTESIAN_PRODUCT   (hash md5:526fc84464225062ad0d6c6d6c98b5e1)
Theorem hlt_IMAGE_PROJECTION_CARTESIAN_PRODUCT : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, forall i :e K, hl_IMAGE (A :^: K) A (fun x :e A :^: K => x i) (hl_cartesian_product K A k s) = hl_COND (2 :^: A) (if hl_cartesian_product K A k s = hl_EMPTY (A :^: K) then 1 else 0) (hl_EMPTY A) (hl_COND (2 :^: A) (hl_IN K i k) (s i) (hl_INSERT A (hl_ARB A) (hl_EMPTY A))).
Admitted.

// HOL Light: sets.ml:3202 / FORALL_CARTESIAN_PRODUCT_ELEMENTS   (hash md5:82662ecf83e301c1b354b0a437a8993c)
Theorem hlt_FORALL_CARTESIAN_PRODUCT_ELEMENTS : forall A K:set, A <> Empty -> K <> Empty -> forall P :e 2 :^: A :^: K, forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, (forall z :e A :^: K, forall i :e K, hl_IN (A :^: K) z (hl_cartesian_product K A k s) = 1 /\ hl_IN K i k = 1 -> P i (z i) = 1) <-> hl_cartesian_product K A k s = hl_EMPTY (A :^: K) \/ forall i :e K, forall x :e A, hl_IN K i k = 1 /\ hl_IN A x (s i) = 1 -> P i x = 1.
Admitted.

// HOL Light: sets.ml:3222 / FORALL_CARTESIAN_PRODUCT_ELEMENTS_EQ   (hash md5:352212a37077f8c9812359b0dd3520a7)
Theorem hlt_FORALL_CARTESIAN_PRODUCT_ELEMENTS_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall P :e 2 :^: A :^: K, forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, ~ hl_cartesian_product K A k s = hl_EMPTY (A :^: K) -> ((forall i :e K, forall x :e A, hl_IN K i k = 1 /\ hl_IN A x (s i) = 1 -> P i x = 1) <-> forall z :e A :^: K, forall i :e K, hl_IN (A :^: K) z (hl_cartesian_product K A k s) = 1 /\ hl_IN K i k = 1 -> P i (z i) = 1).
Admitted.

// HOL Light: sets.ml:3229 / EXISTS_CARTESIAN_PRODUCT_ELEMENT   (hash md5:7501aa39bc428aec7fb1f94a3439d486)
Theorem hlt_EXISTS_CARTESIAN_PRODUCT_ELEMENT : forall A K:set, A <> Empty -> K <> Empty -> forall P :e 2 :^: A :^: K, forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, (exists z :e A :^: K, hl_IN (A :^: K) z (hl_cartesian_product K A k s) = 1 /\ forall i :e K, hl_IN K i k = 1 -> P i (z i) = 1) <-> forall i :e K, hl_IN K i k = 1 -> exists x :e A, hl_IN A x (s i) = 1 /\ P i x = 1.
Admitted.

// HOL Light: sets.ml:3241 / product_map   (hash md5:bbe1fe6bdf1975199489e5740d8cb88e)
Theorem hlt_product_map : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall f :e B :^: A :^: K, hl_product_map K A B k f = fun x :e A :^: K => hl_RESTRICTION K B k (fun i :e K => f i (x i)).
Admitted.

// HOL Light: sets.ml:3244 / PRODUCT_MAP_RESTRICTION   (hash md5:97d0d0213691a97fc9748f7a4a89c3fa)
Theorem hlt_PRODUCT_MAP_RESTRICTION : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall f :e B :^: A :^: K, forall k :e 2 :^: K, forall x :e A :^: K, hl_product_map K A B k f (hl_RESTRICTION K A k x) = hl_RESTRICTION K B k (fun i :e K => f i (x i)).
Admitted.

// HOL Light: sets.ml:3249 / IMAGE_PRODUCT_MAP   (hash md5:30510513348359e5bd1e182743211b03)
Theorem hlt_IMAGE_PRODUCT_MAP : forall A B K:set, A <> Empty -> B <> Empty -> K <> Empty -> forall f :e B :^: A :^: K, forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, hl_IMAGE (A :^: K) (B :^: K) (hl_product_map K A B k f) (hl_cartesian_product K A k s) = hl_cartesian_product K B k (fun i :e K => hl_IMAGE A B (f i) (s i)).
Admitted.

// HOL Light: sets.ml:3266 / disjoint_union   (hash md5:a18ceaf5b8bcad69fbddb0a15371b932)
Theorem hlt_disjoint_union : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, hl_disjoint_union K A k s = hl_GSPEC (K :*: A) (fun GEN_PVAR_145 :e K :*: A => if exists i :e K, exists x :e A, hl_SETSPEC (K :*: A) GEN_PVAR_145 (if hl_IN K i k = 1 /\ hl_IN A x (s i) = 1 then 1 else 0) (hl_pair K A i x) = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:3269 / SUBSET_DISJOINT_UNION   (hash md5:614f1755570dfc1ae2c3826bf7b60394)
Theorem hlt_SUBSET_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s t :e 2 :^: A :^: K, hl_SUBSET (K :*: A) (hl_disjoint_union K A k s) (hl_disjoint_union K A k t) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_SUBSET A (s i) (t i) = 1.
Admitted.

// HOL Light: sets.ml:3276 / DISJOINT_UNION_EQ   (hash md5:39f4070aee4fad2af26d33ea008343d4)
Theorem hlt_DISJOINT_UNION_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s t :e 2 :^: A :^: K, hl_disjoint_union K A k s = hl_disjoint_union K A k t <-> forall i :e K, hl_IN K i k = 1 -> s i = t i.
Admitted.

// HOL Light: sets.ml:3283 / SUBSET_DISJOINT_UNION_EXISTS   (hash md5:2c16b09124f97bb5b774f915cc2db1fa)
Theorem hlt_SUBSET_DISJOINT_UNION_EXISTS : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, forall u :e 2 :^: (K :*: A), hl_SUBSET (K :*: A) u (hl_disjoint_union K A k s) = 1 <-> exists t :e 2 :^: A :^: K, u = hl_disjoint_union K A k t /\ forall i :e K, hl_IN K i k = 1 -> hl_SUBSET A (t i) (s i) = 1.
Admitted.

// HOL Light: sets.ml:3294 / INTER_DISJOINT_UNION   (hash md5:4562779d2171e07dfc22aaffbbded4c5)
Theorem hlt_INTER_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s t :e 2 :^: A :^: K, hl_INTER (K :*: A) (hl_disjoint_union K A k s) (hl_disjoint_union K A k t) = hl_disjoint_union K A k (fun i :e K => hl_INTER A (s i) (t i)).
Admitted.

// HOL Light: sets.ml:3302 / UNION_DISJOINT_UNION   (hash md5:6a4eb4363d8afef80fc8f58019b8c671)
Theorem hlt_UNION_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s t :e 2 :^: A :^: K, hl_UNION (K :*: A) (hl_disjoint_union K A k s) (hl_disjoint_union K A k t) = hl_disjoint_union K A k (fun i :e K => hl_UNION A (s i) (t i)).
Admitted.

// HOL Light: sets.ml:3310 / DISJOINT_UNION_EQ_EMPTY   (hash md5:49e5091b895b52b2379900bbc03cbe86)
Theorem hlt_DISJOINT_UNION_EQ_EMPTY : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s :e 2 :^: A :^: K, hl_disjoint_union K A k s = hl_EMPTY (K :*: A) <-> forall i :e K, hl_IN K i k = 1 -> s i = hl_EMPTY A.
Admitted.

// HOL Light: sets.ml:3317 / DISJOINT_DISJOINT_UNION   (hash md5:d08aa4178f52b631b7de702dc5be6aa1)
Theorem hlt_DISJOINT_DISJOINT_UNION : forall A K:set, A <> Empty -> K <> Empty -> forall k :e 2 :^: K, forall s t :e 2 :^: A :^: K, hl_DISJOINT (K :*: A) (hl_disjoint_union K A k s) (hl_disjoint_union K A k t) = 1 <-> forall i :e K, hl_IN K i k = 1 -> hl_DISJOINT A (s i) (t i) = 1.
Admitted.

// HOL Light: sets.ml:3328 / HAS_SIZE_FUNSPACE   (hash md5:917ceee4dff4b7b5b914c7d46d6d5403)
Theorem hlt_HAS_SIZE_FUNSPACE : forall A B:set, A <> Empty -> B <> Empty -> forall d :e B, forall n :e omega, forall t :e 2 :^: B, forall m :e omega, forall s :e 2 :^: A, hl_HAS_SIZE A s m = 1 /\ hl_HAS_SIZE B t n = 1 -> hl_HAS_SIZE (B :^: A) (hl_GSPEC (B :^: A) (fun GEN_PVAR_150 :e B :^: A => if exists f :e B :^: A, hl_SETSPEC (B :^: A) GEN_PVAR_150 (if (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ forall x :e A, ~ hl_IN A x s = 1 -> f x = d then 1 else 0) f = 1 then 1 else 0)) (hl_EXP n m) = 1.
Admitted.

// HOL Light: sets.ml:3372 / CARD_FUNSPACE   (hash md5:a1b52a134e916d6b55be7f92fe165b78)
Theorem hlt_CARD_FUNSPACE : forall A B:set, A <> Empty -> B <> Empty -> forall d :e B, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_CARD (B :^: A) (hl_GSPEC (B :^: A) (fun GEN_PVAR_151 :e B :^: A => if exists f :e B :^: A, hl_SETSPEC (B :^: A) GEN_PVAR_151 (if (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ forall x :e A, ~ hl_IN A x s = 1 -> f x = d then 1 else 0) f = 1 then 1 else 0)) = hl_EXP (hl_CARD B t) (hl_CARD A s).
Admitted.

// HOL Light: sets.ml:3379 / FINITE_FUNSPACE   (hash md5:419be979dbaee0c753e9b9615239e67e)
Theorem hlt_FINITE_FUNSPACE : forall A B:set, A <> Empty -> B <> Empty -> forall d :e B, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_FINITE (B :^: A) (hl_GSPEC (B :^: A) (fun GEN_PVAR_152 :e B :^: A => if exists f :e B :^: A, hl_SETSPEC (B :^: A) GEN_PVAR_152 (if (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ forall x :e A, ~ hl_IN A x s = 1 -> f x = d then 1 else 0) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:3385 / HAS_SIZE_FUNSPACE_UNIV   (hash md5:e832abaf4c3366fd9c8716c7f3efba80)
Theorem hlt_HAS_SIZE_FUNSPACE_UNIV : forall A B:set, A <> Empty -> B <> Empty -> forall m n :e omega, hl_HAS_SIZE A (hl_UNIV A) m = 1 /\ hl_HAS_SIZE B (hl_UNIV B) n = 1 -> hl_HAS_SIZE (B :^: A) (hl_UNIV (B :^: A)) (hl_EXP n m) = 1.
Admitted.

// HOL Light: sets.ml:3391 / CARD_FUNSPACE_UNIV   (hash md5:ac28cba8bc8b35c7ec14b956b9a4273d)
Theorem hlt_CARD_FUNSPACE_UNIV : forall A B:set, A <> Empty -> B <> Empty -> hl_FINITE A (hl_UNIV A) = 1 /\ hl_FINITE B (hl_UNIV B) = 1 -> hl_CARD (B :^: A) (hl_UNIV (B :^: A)) = hl_EXP (hl_CARD B (hl_UNIV B)) (hl_CARD A (hl_UNIV A)).
Admitted.

// HOL Light: sets.ml:3395 / FINITE_FUNSPACE_UNIV   (hash md5:986498182eefa9fad8718961c3e3b2a6)
Theorem hlt_FINITE_FUNSPACE_UNIV : forall A B:set, A <> Empty -> B <> Empty -> hl_FINITE A (hl_UNIV A) = 1 /\ hl_FINITE B (hl_UNIV B) = 1 -> hl_FINITE (B :^: A) (hl_UNIV (B :^: A)) = 1.
Admitted.

// HOL Light: sets.ml:3403 / HAS_SIZE_BOOL   (hash md5:161f8fdc4b39913f9235d5e085809aec)
Theorem hlt_HAS_SIZE_BOOL : hl_HAS_SIZE 2 (hl_UNIV 2) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: sets.ml:3410 / CARD_BOOL   (hash md5:c4cd7a460b87c7efc892df7277597bc5)
Theorem hlt_CARD_BOOL : hl_CARD 2 (hl_UNIV 2) = hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: sets.ml:3414 / FINITE_BOOL   (hash md5:a683b0e00bc5d4040d6ea9352a6179e7)
Theorem hlt_FINITE_BOOL : hl_FINITE 2 (hl_UNIV 2) = 1.
Admitted.

// HOL Light: sets.ml:3422 / HAS_SIZE_POWERSET   (hash md5:1ff681b24bde420c41dab40df01a421e)
Theorem hlt_HAS_SIZE_POWERSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall n :e omega, hl_HAS_SIZE A s n = 1 -> hl_HAS_SIZE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_155 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_155 (hl_SUBSET A t s) t = 1 then 1 else 0)) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) = 1.
Admitted.

// HOL Light: sets.ml:3434 / CARD_POWERSET   (hash md5:6063af4dcfac09535acfa411eac34341)
Theorem hlt_CARD_POWERSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_156 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_156 (hl_SUBSET A t s) t = 1 then 1 else 0)) = hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_CARD A s).
Admitted.

// HOL Light: sets.ml:3438 / FINITE_POWERSET   (hash md5:3ae71668592f92c8300210136b6c496e)
Theorem hlt_FINITE_POWERSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_157 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_157 (hl_SUBSET A t s) t = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:3442 / FINITE_POWERSET_EQ   (hash md5:41710ae7a2b99eaec1cb84878dab932e)
Theorem hlt_FINITE_POWERSET_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_158 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_158 (hl_SUBSET A t s) t = 1 then 1 else 0)) = 1 <-> hl_FINITE A s = 1.
Admitted.

// HOL Light: sets.ml:3452 / FINITE_RESTRICTED_SUBSETS   (hash md5:bb629d5a3ea74b0adefb825509e11bb6)
Theorem hlt_FINITE_RESTRICTED_SUBSETS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_160 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_160 (if hl_SUBSET A t s = 1 /\ P t = 1 then 1 else 0) t = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:3458 / FINITE_UNIONS   (hash md5:fc936e290505bf16faa4466670c43444)
Theorem hlt_FINITE_UNIONS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_FINITE A (hl_UNIONS A s) = 1 <-> hl_FINITE (2 :^: A) s = 1 /\ forall t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 -> hl_FINITE A t = 1.
Admitted.

// HOL Light: sets.ml:3467 / FINITE_CARD_LE_UNIONS   (hash md5:93e50fa259c57e838e21294f821448c0)
Theorem hlt_FINITE_CARD_LE_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, forall m n :e omega, (forall x :e A, hl_IN A x s = 1 -> hl_FINITE B (t x) = 1 /\ hl_le (hl_CARD B (t x)) n = 1) /\ (hl_FINITE A s = 1 /\ hl_le (hl_CARD A s) m = 1) -> hl_FINITE B (hl_UNIONS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_161 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_161 (hl_IN A x s) (t x) = 1 then 1 else 0))) = 1 /\ hl_le (hl_CARD B (hl_UNIONS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_162 :e 2 :^: B => if exists x :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_162 (hl_IN A x s) (t x) = 1 then 1 else 0)))) (hl_mul m n) = 1.
Admitted.

// HOL Light: sets.ml:3479 / POWERSET_CLAUSES   (hash md5:70a8a2d45d230cb1a42aaf9faab99fd3)
Theorem hlt_POWERSET_CLAUSES : forall A:set, A <> Empty -> hl_GSPEC (2 :^: A) (fun GEN_PVAR_163 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_163 (hl_SUBSET A s (hl_EMPTY A)) s = 1 then 1 else 0) = hl_INSERT (2 :^: A) (hl_EMPTY A) (hl_EMPTY (2 :^: A)) /\ forall a :e A, forall t :e 2 :^: A, hl_GSPEC (2 :^: A) (fun GEN_PVAR_164 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_164 (hl_SUBSET A s (hl_INSERT A a t)) s = 1 then 1 else 0) = hl_UNION (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_165 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_165 (hl_SUBSET A s t) s = 1 then 1 else 0)) (hl_IMAGE (2 :^: A) (2 :^: A) (fun s :e 2 :^: A => hl_INSERT A a s) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_166 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_166 (hl_SUBSET A s t) s = 1 then 1 else 0))).
Admitted.

// HOL Light: sets.ml:3495 / FINITE_IMAGE_INFINITE   (hash md5:31d295c1043c3a66b02308e635b29881)
Theorem hlt_FINITE_IMAGE_INFINITE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_INFINITE A s = 1 /\ hl_FINITE B (hl_IMAGE A B f s) = 1 -> exists a :e A, hl_IN A a s = 1 /\ hl_INFINITE A (hl_GSPEC A (fun GEN_PVAR_171 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_171 (if hl_IN A x s = 1 /\ f x = f a then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:3507 / FINITE_RESTRICTED_POWERSET   (hash md5:6d5e319604ba9537fa3f9a8ec03ec919)
Theorem hlt_FINITE_RESTRICTED_POWERSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall n :e omega, hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_176 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_176 (if hl_SUBSET A t s = 1 /\ hl_HAS_SIZE A t n = 1 then 1 else 0) t = 1 then 1 else 0)) = 1 <-> hl_FINITE A s = 1 \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: sets.ml:3531 / FINITE_RESTRICTED_FUNSPACE   (hash md5:4e867d485b4202d1178efdda8a9b4106)
Theorem hlt_FINITE_RESTRICTED_FUNSPACE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall k :e B :^: A, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_FINITE (B :^: A) (hl_GSPEC (B :^: A) (fun GEN_PVAR_180 :e B :^: A => if exists f :e B :^: A, hl_SETSPEC (B :^: A) GEN_PVAR_180 (if hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_179 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_179 (if ~ f x = k x then 1 else 0) x = 1 then 1 else 0)) s = 1 then 1 else 0) f = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:3557 / NUMSEG_CLAUSES_LT   (hash md5:5052659b8d84d7cebe394b3fde658df8)
Theorem hlt_NUMSEG_CLAUSES_LT : hl_GSPEC omega (fun GEN_PVAR_181 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_181 (hl_lt i (hl_NUMERAL hl_zero)) i = 1 then 1 else 0) = hl_EMPTY omega /\ forall k :e omega, hl_GSPEC omega (fun GEN_PVAR_182 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_182 (hl_lt i (hl_SUC k)) i = 1 then 1 else 0) = hl_INSERT omega k (hl_GSPEC omega (fun GEN_PVAR_183 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_183 (hl_lt i k) i = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:3562 / HAS_SIZE_NUMSEG_LT   (hash md5:6490c867dd61eac7c875392d93f2b2ed)
Theorem hlt_HAS_SIZE_NUMSEG_LT : forall n :e omega, hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_184 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_184 (hl_lt m n) m = 1 then 1 else 0)) n = 1.
Admitted.

// HOL Light: sets.ml:3568 / CARD_NUMSEG_LT   (hash md5:782da97d4a89c568fb7f473c924961da)
Theorem hlt_CARD_NUMSEG_LT : forall n :e omega, hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_185 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_185 (hl_lt m n) m = 1 then 1 else 0)) = n.
Admitted.

// HOL Light: sets.ml:3572 / FINITE_NUMSEG_LT   (hash md5:5f4bb6c0603c9a2c2fe2a275ed479e29)
Theorem hlt_FINITE_NUMSEG_LT : forall n :e omega, hl_FINITE omega (hl_GSPEC omega (fun GEN_PVAR_186 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_186 (hl_lt m n) m = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:3576 / NUMSEG_CLAUSES_LE   (hash md5:c56ae0818992cecb12f29776dfc32f4d)
Theorem hlt_NUMSEG_CLAUSES_LE : hl_GSPEC omega (fun GEN_PVAR_187 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_187 (hl_le i (hl_NUMERAL hl_zero)) i = 1 then 1 else 0) = hl_INSERT omega (hl_NUMERAL hl_zero) (hl_EMPTY omega) /\ forall k :e omega, hl_GSPEC omega (fun GEN_PVAR_188 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_188 (hl_le i (hl_SUC k)) i = 1 then 1 else 0) = hl_INSERT omega (hl_SUC k) (hl_GSPEC omega (fun GEN_PVAR_189 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_189 (hl_le i k) i = 1 then 1 else 0)).
Admitted.

// HOL Light: sets.ml:3581 / HAS_SIZE_NUMSEG_LE   (hash md5:23433488ce6b36aac38709ecd1379339)
Theorem hlt_HAS_SIZE_NUMSEG_LE : forall n :e omega, hl_HAS_SIZE omega (hl_GSPEC omega (fun GEN_PVAR_190 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_190 (hl_le m n) m = 1 then 1 else 0)) (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: sets.ml:3585 / FINITE_NUMSEG_LE   (hash md5:e0ab6d234a2b928d33057f2dedb86df7)
Theorem hlt_FINITE_NUMSEG_LE : forall n :e omega, hl_FINITE omega (hl_GSPEC omega (fun GEN_PVAR_191 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_191 (hl_le m n) m = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: sets.ml:3589 / CARD_NUMSEG_LE   (hash md5:f5428de42536ac0a89a40bab06c85285)
Theorem hlt_CARD_NUMSEG_LE : forall n :e omega, hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_192 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_192 (hl_le m n) m = 1 then 1 else 0)) = hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: sets.ml:3593 / num_FINITE   (hash md5:1d72873b878bd3f30c51efe6dd52e975)
Theorem hlt_num_FINITE : forall s :e 2 :^: omega, hl_FINITE omega s = 1 <-> exists a :e omega, forall x :e omega, hl_IN omega x s = 1 -> hl_le x a = 1.
Admitted.

// HOL Light: sets.ml:3603 / num_FINITE_AVOID   (hash md5:79e6d0d3243f447436209c84fb421933)
Theorem hlt_num_FINITE_AVOID : forall s :e 2 :^: omega, hl_FINITE omega s = 1 -> exists a :e omega, ~ hl_IN omega a s = 1.
Admitted.

// HOL Light: sets.ml:3607 / num_INFINITE_EQ   (hash md5:4b7382bd4bf0b631e304d1b9679c8a4c)
Theorem hlt_num_INFINITE_EQ : forall s :e 2 :^: omega, hl_INFINITE omega s = 1 <-> forall N :e omega, exists n :e omega, hl_le N n = 1 /\ hl_IN omega n s = 1.
Admitted.

// HOL Light: sets.ml:3612 / num_INFINITE   (hash md5:8644b0e4ba32091ab3d770a98748af07)
Theorem hlt_num_INFINITE : hl_INFINITE omega (hl_UNIV omega) = 1.
Admitted.

// HOL Light: sets.ml:3631 / FINITE_REAL_INTERVAL   (hash md5:6c1df66e4d26b520247a3dfbd5f7fce9)
Theorem hlt_FINITE_REAL_INTERVAL : (forall a :e R, ~ hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_202 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_202 (hl_real_lt a x) x = 1 then 1 else 0)) = 1) /\ ((forall a :e R, ~ hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_203 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_203 (hl_real_le a x) x = 1 then 1 else 0)) = 1) /\ ((forall b :e R, ~ hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_204 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_204 (hl_real_lt x b) x = 1 then 1 else 0)) = 1) /\ ((forall b :e R, ~ hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_205 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_205 (hl_real_le x b) x = 1 then 1 else 0)) = 1) /\ ((forall a b :e R, hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_206 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_206 (if hl_real_lt a x = 1 /\ hl_real_lt x b = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_real_le b a = 1) /\ ((forall a b :e R, hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_207 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_207 (if hl_real_le a x = 1 /\ hl_real_lt x b = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_real_le b a = 1) /\ ((forall a b :e R, hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_208 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_208 (if hl_real_lt a x = 1 /\ hl_real_le x b = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_real_le b a = 1) /\ forall a b :e R, hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_209 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_209 (if hl_real_le a x = 1 /\ hl_real_le x b = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_real_le b a = 1)))))).
Admitted.

// HOL Light: sets.ml:3689 / real_INFINITE   (hash md5:c6e856ca19eac4996c814db7019590c1)
Theorem hlt_real_INFINITE : hl_INFINITE R (hl_UNIV R) = 1.
Admitted.

// HOL Light: sets.ml:3700 / HAS_SIZE_INDEX   (hash md5:7471a6144c4e96e37f24d156f109f23b)
Theorem hlt_HAS_SIZE_INDEX : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall n :e omega, hl_HAS_SIZE A s n = 1 -> exists f :e A :^: omega, (forall m :e omega, hl_lt m n = 1 -> hl_IN A (f m) s = 1) /\ forall x :e A, hl_IN A x s = 1 -> hl_exists_unique omega (fun m :e omega => if hl_lt m n = 1 /\ f m = x then 1 else 0) = 1.
Admitted.

// HOL Light: sets.ml:3722 / INFINITE_ENUMERATE   (hash md5:b819df0e614b9cd5696753c54661ff5a)
Theorem hlt_INFINITE_ENUMERATE : forall s :e 2 :^: omega, hl_INFINITE omega s = 1 -> exists r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ hl_IMAGE omega omega r (hl_UNIV omega) = s.
Admitted.

// HOL Light: sets.ml:3758 / INFINITE_ENUMERATE_EQ   (hash md5:abdcbc10f4331a440d8fefb584c883f4)
Theorem hlt_INFINITE_ENUMERATE_EQ : forall s :e 2 :^: omega, hl_INFINITE omega s = 1 <-> exists r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ hl_IMAGE omega omega r (hl_UNIV omega) = s.
Admitted.

// HOL Light: sets.ml:3767 / INFINITE_ENUMERATE_SUBSET   (hash md5:83807e05d6d99ac17e56dd0530561033)
Theorem hlt_INFINITE_ENUMERATE_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_INFINITE A s = 1 <-> exists f :e A :^: omega, (forall x :e omega, hl_IN A (f x) s = 1) /\ forall x y :e omega, f x = f y -> x = y.
Admitted.

// HOL Light: sets.ml:3790 / set_of_list   (hash md5:d3d631d275d67da22322de6660a5f072)
Theorem hlt_set_of_list : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, hl_set_of_list A (hl_NIL A) = hl_EMPTY A /\ hl_set_of_list A (hl_CONS A h t) = hl_INSERT A h (hl_set_of_list A t).
Admitted.

// HOL Light: sets.ml:3794 / list_of_set   (hash md5:8f405bc9630b9ef0a99fa9fabc53ce7e)
Theorem hlt_list_of_set : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_list_of_set A s = hl_select (finseq A) (fun l :e finseq A => if hl_set_of_list A l = s /\ hl_LENGTH A l = hl_CARD A s then 1 else 0).
Admitted.

// HOL Light: sets.ml:3797 / LIST_OF_SET_PROPERTIES   (hash md5:2c60be58b84f78baa8469c2045186954)
Theorem hlt_LIST_OF_SET_PROPERTIES : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_set_of_list A (hl_list_of_set A s) = s /\ hl_LENGTH A (hl_list_of_set A s) = hl_CARD A s.
Admitted.

// HOL Light: sets.ml:3811 / SET_OF_LIST_OF_SET   (hash md5:85840d855553cffe18cef93d6703ee93)
Theorem hlt_SET_OF_LIST_OF_SET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_set_of_list A (hl_list_of_set A s) = s.
Admitted.

// HOL Light: sets.ml:3815 / LENGTH_LIST_OF_SET   (hash md5:1ef1cba51848cbca13cc9d6ea0b89508)
Theorem hlt_LENGTH_LIST_OF_SET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_LENGTH A (hl_list_of_set A s) = hl_CARD A s.
Admitted.

// HOL Light: sets.ml:3819 / MEM_LIST_OF_SET   (hash md5:61692abf27370d43800ed8b3058b4a3a)
Theorem hlt_MEM_LIST_OF_SET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> forall x :e A, hl_MEM A x (hl_list_of_set A s) = 1 <-> hl_IN A x s = 1.
Admitted.

// HOL Light: sets.ml:3828 / FINITE_SET_OF_LIST   (hash md5:38e0d51202b6da4a07d3459e13ad037e)
Theorem hlt_FINITE_SET_OF_LIST : forall A:set, A <> Empty -> forall l :e finseq A, hl_FINITE A (hl_set_of_list A l) = 1.
Admitted.

// HOL Light: sets.ml:3832 / IN_SET_OF_LIST   (hash md5:e04f19a74d3f5a4a5d78af3e746c55df)
Theorem hlt_IN_SET_OF_LIST : forall A:set, A <> Empty -> forall x :e A, forall l :e finseq A, hl_IN A x (hl_set_of_list A l) = 1 <-> hl_MEM A x l = 1.
Admitted.

// HOL Light: sets.ml:3838 / SET_OF_LIST_APPEND   (hash md5:71f78d782520f2945776ecaa9f66d3b9)
Theorem hlt_SET_OF_LIST_APPEND : forall A:set, A <> Empty -> forall l1 l2 :e finseq A, hl_set_of_list A (hl_APPEND A l1 l2) = hl_UNION A (hl_set_of_list A l1) (hl_set_of_list A l2).
Admitted.

// HOL Light: sets.ml:3843 / SET_OF_LIST_MAP   (hash md5:4f00d943be0bd84213704d69ec6f7b11)
Theorem hlt_SET_OF_LIST_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall l :e finseq A, hl_set_of_list B (hl_MAP A B f l) = hl_IMAGE A B f (hl_set_of_list A l).
Admitted.

// HOL Light: sets.ml:3848 / SET_OF_LIST_EQ_EMPTY   (hash md5:3b95c74d1c8514bd39f4217cb7568a84)
Theorem hlt_SET_OF_LIST_EQ_EMPTY : forall A:set, A <> Empty -> forall l :e finseq A, hl_set_of_list A l = hl_EMPTY A <-> l = hl_NIL A.
Admitted.

// HOL Light: sets.ml:3853 / LIST_OF_SET_EMPTY   (hash md5:77c8888341b38741f7d5f257b8ad4443)
Theorem hlt_LIST_OF_SET_EMPTY : forall A:set, A <> Empty -> hl_list_of_set A (hl_EMPTY A) = hl_NIL A.
Admitted.

// HOL Light: sets.ml:3858 / LIST_OF_SET_SING   (hash md5:245aa0fb25dbac2ee343dff7deb7baba)
Theorem hlt_LIST_OF_SET_SING : forall A:set, A <> Empty -> forall a :e A, hl_list_of_set A (hl_INSERT A a (hl_EMPTY A)) = hl_CONS A a (hl_NIL A).
Admitted.

// HOL Light: sets.ml:3894 / pairwise   (hash md5:f591b58ad9838277f3fd24b4deccb546)
Theorem hlt_pairwise : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall r :e 2 :^: A :^: A, hl_pairwise A r s = 1 <-> forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> r x y = 1.
Admitted.

// HOL Light: sets.ml:3897 / PAIRWISE_EMPTY   (hash md5:2e05512263770e402cde83a5757d60b2)
Theorem hlt_PAIRWISE_EMPTY : forall A:set, A <> Empty -> forall r :e 2 :^: A :^: A, hl_pairwise A r (hl_EMPTY A) = 1 <-> True.
Admitted.

// HOL Light: sets.ml:3901 / PAIRWISE_SING   (hash md5:0276e64753da57534c56a2ad177ca991)
Theorem hlt_PAIRWISE_SING : forall A:set, A <> Empty -> forall r :e 2 :^: A :^: A, forall x :e A, hl_pairwise A r (hl_INSERT A x (hl_EMPTY A)) = 1 <-> True.
Admitted.

// HOL Light: sets.ml:3905 / PAIRWISE_IMP   (hash md5:1a5ec442af15f04e4e6248a9e1f80e37)
Theorem hlt_PAIRWISE_IMP : forall A:set, A <> Empty -> forall P Q :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_pairwise A P s = 1 /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ (P x y = 1 /\ ~ x = y)) -> Q x y = 1) -> hl_pairwise A Q s = 1.
Admitted.

// HOL Light: sets.ml:3912 / PAIRWISE_MONO   (hash md5:7435153190af43f717a585882cf89016)
Theorem hlt_PAIRWISE_MONO : forall A:set, A <> Empty -> forall r :e 2 :^: A :^: A, forall s t :e 2 :^: A, hl_pairwise A r s = 1 /\ hl_SUBSET A t s = 1 -> hl_pairwise A r t = 1.
Admitted.

// HOL Light: sets.ml:3916 / PAIRWISE_AND   (hash md5:67023d03a94a293bcd04f67c7b99dbf1)
Theorem hlt_PAIRWISE_AND : forall A:set, A <> Empty -> forall R1 R' :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_pairwise A R1 s = 1 /\ hl_pairwise A R' s = 1 <-> hl_pairwise A (fun x :e A => fun y :e A => if R1 x y = 1 /\ R' x y = 1 then 1 else 0) s = 1.
Admitted.

// HOL Light: sets.ml:3921 / PAIRWISE_INSERT   (hash md5:bdcf223e063494cab1c69de3864505f3)
Theorem hlt_PAIRWISE_INSERT : forall A:set, A <> Empty -> forall r :e 2 :^: A :^: A, forall x :e A, forall s :e 2 :^: A, hl_pairwise A r (hl_INSERT A x s) = 1 <-> (forall y :e A, hl_IN A y s = 1 /\ ~ y = x -> r x y = 1 /\ r y x = 1) /\ hl_pairwise A r s = 1.
Admitted.

// HOL Light: sets.ml:3928 / PAIRWISE_INSERT_SYMMETRIC   (hash md5:71016cc21d495fdf0c656aa4a54e2ac8)
Theorem hlt_PAIRWISE_INSERT_SYMMETRIC : forall A:set, A <> Empty -> forall r :e 2 :^: A :^: A, forall x :e A, forall s :e 2 :^: A, (forall y :e A, hl_IN A y s = 1 -> (r x y = 1 <-> r y x = 1)) -> (hl_pairwise A r (hl_INSERT A x s) = 1 <-> (forall y :e A, hl_IN A y s = 1 /\ ~ y = x -> r x y = 1) /\ hl_pairwise A r s = 1).
Admitted.

// HOL Light: sets.ml:3935 / PAIRWISE_IMAGE   (hash md5:2174cffdeee47a3ddcd9f90d0e336c8f)
Theorem hlt_PAIRWISE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall r :e 2 :^: B :^: B, forall f :e B :^: A, hl_pairwise B r (hl_IMAGE A B f s) = 1 <-> hl_pairwise A (fun x :e A => fun y :e A => if ~ f x = f y -> r (f x) (f y) = 1 then 1 else 0) s = 1.
Admitted.

// HOL Light: sets.ml:3941 / PAIRWISE_UNION   (hash md5:a3516632abbe4c7ddd7cfd1687e8f636)
Theorem hlt_PAIRWISE_UNION : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall s t :e 2 :^: A, hl_pairwise A R1 (hl_UNION A s t) = 1 <-> hl_pairwise A R1 s = 1 /\ (hl_pairwise A R1 t = 1 /\ forall x y :e A, hl_IN A x (hl_DIFF A s t) = 1 /\ hl_IN A y (hl_DIFF A t s) = 1 -> R1 x y = 1 /\ R1 y x = 1).
Admitted.

// HOL Light: sets.ml:3947 / PAIRWISE_CHAIN_UNIONS   (hash md5:710832e2e77206e27269a5d0a08e06d7)
Theorem hlt_PAIRWISE_CHAIN_UNIONS : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall c :e 2 :^: (2 :^: A), (forall s :e 2 :^: A, hl_IN (2 :^: A) s c = 1 -> hl_pairwise A R1 s = 1) /\ (forall s t :e 2 :^: A, hl_IN (2 :^: A) s c = 1 /\ hl_IN (2 :^: A) t c = 1 -> hl_SUBSET A s t = 1 \/ hl_SUBSET A t s = 1) -> hl_pairwise A R1 (hl_UNIONS A c) = 1.
Admitted.

// HOL Light: sets.ml:3954 / DIFF_UNIONS_PAIRWISE_DISJOINT   (hash md5:f9b768e4b5391065f8445242b04da4af)
Theorem hlt_DIFF_UNIONS_PAIRWISE_DISJOINT : forall A:set, A <> Empty -> forall s t :e 2 :^: (2 :^: A), hl_pairwise (2 :^: A) (hl_DISJOINT A) s = 1 /\ hl_SUBSET (2 :^: A) t s = 1 -> hl_DIFF A (hl_UNIONS A s) (hl_UNIONS A t) = hl_UNIONS A (hl_DIFF (2 :^: A) s t).
Admitted.

// HOL Light: sets.ml:3968 / INTER_UNIONS_PAIRWISE_DISJOINT   (hash md5:9c534c273ecbf734aac1ed8fd24b0c9a)
Theorem hlt_INTER_UNIONS_PAIRWISE_DISJOINT : forall A:set, A <> Empty -> forall s t :e 2 :^: (2 :^: A), hl_pairwise (2 :^: A) (hl_DISJOINT A) (hl_UNION (2 :^: A) s t) = 1 -> hl_INTER A (hl_UNIONS A s) (hl_UNIONS A t) = hl_UNIONS A (hl_INTER (2 :^: A) s t).
Admitted.

// HOL Light: sets.ml:3983 / PSUBSET_UNIONS_PAIRWISE_DISJOINT   (hash md5:243ac025bf71c94649029f0e4b06c9a1)
Theorem hlt_PSUBSET_UNIONS_PAIRWISE_DISJOINT : forall A:set, A <> Empty -> forall u v :e 2 :^: (2 :^: A), hl_pairwise (2 :^: A) (hl_DISJOINT A) v = 1 /\ hl_PSUBSET (2 :^: A) u (hl_DELETE (2 :^: A) v (hl_EMPTY A)) = 1 -> hl_PSUBSET A (hl_UNIONS A u) (hl_UNIONS A v) = 1.
Admitted.

// HOL Light: sets.ml:4004 / UNION_OF   (hash md5:25d82b5cb03a9eaf3382011c3d5d47f2)
Theorem hlt_UNION_OF : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q :e 2 :^: (2 :^: A), hl_UNION_OF A P Q = fun s :e 2 :^: A => if exists u :e 2 :^: (2 :^: A), P u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> Q c = 1) /\ hl_UNIONS A u = s) then 1 else 0.
Admitted.

// HOL Light: sets.ml:4008 / INTERSECTION_OF   (hash md5:6f5c0dd6e56e08069e581d23c1506ecc)
Theorem hlt_INTERSECTION_OF : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q :e 2 :^: (2 :^: A), hl_INTERSECTION_OF A P Q = fun s :e 2 :^: A => if exists u :e 2 :^: (2 :^: A), P u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> Q c = 1) /\ hl_INTERS A u = s) then 1 else 0.
Admitted.

// HOL Light: sets.ml:4012 / UNION_OF_INC   (hash md5:2be0ff7cc25c5917d88dcf6c578f4f62)
Theorem hlt_UNION_OF_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P (hl_INSERT (2 :^: A) s (hl_EMPTY (2 :^: A))) = 1 /\ Q s = 1 -> hl_UNION_OF A P Q s = 1.
Admitted.

// HOL Light: sets.ml:4017 / INTERSECTION_OF_INC   (hash md5:b471d5ab89033a2b0a4d1c9663e632fe)
Theorem hlt_INTERSECTION_OF_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P (hl_INSERT (2 :^: A) s (hl_EMPTY (2 :^: A))) = 1 /\ Q s = 1 -> hl_INTERSECTION_OF A P Q s = 1.
Admitted.

// HOL Light: sets.ml:4022 / UNION_OF_MONO   (hash md5:addc85395ab48571a4dc665f2ed63939)
Theorem hlt_UNION_OF_MONO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q Q' :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_UNION_OF A P Q s = 1 /\ (forall x :e 2 :^: A, Q x = 1 -> Q' x = 1) -> hl_UNION_OF A P Q' s = 1.
Admitted.

// HOL Light: sets.ml:4027 / INTERSECTION_OF_MONO   (hash md5:6e89c4ae029aad2bad67e259a9ebb8f0)
Theorem hlt_INTERSECTION_OF_MONO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q Q' :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_INTERSECTION_OF A P Q s = 1 /\ (forall x :e 2 :^: A, Q x = 1 -> Q' x = 1) -> hl_INTERSECTION_OF A P Q' s = 1.
Admitted.

// HOL Light: sets.ml:4033 / FORALL_UNION_OF   (hash md5:6e4a560db3da630cb86211a42920596f)
Theorem hlt_FORALL_UNION_OF : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q R1 :e 2 :^: (2 :^: A), (forall s :e 2 :^: A, hl_UNION_OF A P Q s = 1 -> R1 s = 1) <-> forall t :e 2 :^: (2 :^: A), P t = 1 /\ (forall c :e 2 :^: A, hl_IN (2 :^: A) c t = 1 -> Q c = 1) -> R1 (hl_UNIONS A t) = 1.
Admitted.

// HOL Light: sets.ml:4038 / FORALL_INTERSECTION_OF   (hash md5:5f79e4d483a15775ccd0711a61d64cf7)
Theorem hlt_FORALL_INTERSECTION_OF : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q R1 :e 2 :^: (2 :^: A), (forall s :e 2 :^: A, hl_INTERSECTION_OF A P Q s = 1 -> R1 s = 1) <-> forall t :e 2 :^: (2 :^: A), P t = 1 /\ (forall c :e 2 :^: A, hl_IN (2 :^: A) c t = 1 -> Q c = 1) -> R1 (hl_INTERS A t) = 1.
Admitted.

// HOL Light: sets.ml:4043 / UNION_OF_EMPTY   (hash md5:1392cadcd430d06336ba3bbb701bac2a)
Theorem hlt_UNION_OF_EMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q :e 2 :^: (2 :^: A), P (hl_EMPTY (2 :^: A)) = 1 -> hl_UNION_OF A P Q (hl_EMPTY A) = 1.
Admitted.

// HOL Light: sets.ml:4049 / INTERSECTION_OF_EMPTY   (hash md5:00b95ce7f141ca720ae6975e5372e059)
Theorem hlt_INTERSECTION_OF_EMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: (2 :^: A)), forall Q :e 2 :^: (2 :^: A), P (hl_EMPTY (2 :^: A)) = 1 -> hl_INTERSECTION_OF A P Q (hl_UNIV A) = 1.
Admitted.

// HOL Light: sets.ml:4059 / ARBITRARY   (hash md5:ebb3dfc9269b12bd3ecf47beb3fe4538)
Theorem hlt_ARBITRARY : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_ARBITRARY A s = 1 <-> True.
Admitted.

// HOL Light: sets.ml:4062 / ARBITRARY_UNION_OF_ALT   (hash md5:92f9114949a5cf745172023efdca6c9c)
Theorem hlt_ARBITRARY_UNION_OF_ALT : forall A:set, A <> Empty -> forall B :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_UNION_OF A (hl_ARBITRARY A) B s = 1 <-> forall x :e A, hl_IN A x s = 1 -> exists u :e 2 :^: A, hl_IN (2 :^: A) u B = 1 /\ (hl_IN A x u = 1 /\ hl_SUBSET A u s = 1).
Admitted.

// HOL Light: sets.ml:4074 / ARBITRARY_UNION_OF_EMPTY   (hash md5:5443bcaab3d01a3f3fca8e84c71ba4b5)
Theorem hlt_ARBITRARY_UNION_OF_EMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNION_OF A (hl_ARBITRARY A) P (hl_EMPTY A) = 1.
Admitted.

// HOL Light: sets.ml:4078 / ARBITRARY_INTERSECTION_OF_EMPTY   (hash md5:e705eea73b7053ab4d0937253d6aaf73)
Theorem hlt_ARBITRARY_INTERSECTION_OF_EMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_INTERSECTION_OF A (hl_ARBITRARY A) P (hl_UNIV A) = 1.
Admitted.

// HOL Light: sets.ml:4082 / ARBITRARY_UNION_OF_INC   (hash md5:6f9b16005ff8cc7117c57a11a5b7cd29)
Theorem hlt_ARBITRARY_UNION_OF_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P s = 1 -> hl_UNION_OF A (hl_ARBITRARY A) P s = 1.
Admitted.

// HOL Light: sets.ml:4086 / ARBITRARY_INTERSECTION_OF_INC   (hash md5:a3083b32f50f2d40e3ac5ce8874c3d36)
Theorem hlt_ARBITRARY_INTERSECTION_OF_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P s = 1 -> hl_INTERSECTION_OF A (hl_ARBITRARY A) P s = 1.
Admitted.

// HOL Light: sets.ml:4090 / ARBITRARY_UNION_OF_COMPLEMENT   (hash md5:9e3906f5addbf22964328b7dcfc5cb84)
Theorem hlt_ARBITRARY_UNION_OF_COMPLEMENT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_UNION_OF A (hl_ARBITRARY A) P s = 1 <-> hl_INTERSECTION_OF A (hl_ARBITRARY A) (fun s1 :e 2 :^: A => P (hl_DIFF A (hl_UNIV A) s1)) (hl_DIFF A (hl_UNIV A) s) = 1.
Admitted.

// HOL Light: sets.ml:4102 / ARBITRARY_INTERSECTION_OF_COMPLEMENT   (hash md5:c142ad7421ca738f64bef2d316a0b1a2)
Theorem hlt_ARBITRARY_INTERSECTION_OF_COMPLEMENT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_INTERSECTION_OF A (hl_ARBITRARY A) P s = 1 <-> hl_UNION_OF A (hl_ARBITRARY A) (fun s1 :e 2 :^: A => P (hl_DIFF A (hl_UNIV A) s1)) (hl_DIFF A (hl_UNIV A) s) = 1.
Admitted.

// HOL Light: sets.ml:4108 / ARBITRARY_UNION_OF_IDEMPOT   (hash md5:6eaf056df1352fc4230bfd06e6381b09)
Theorem hlt_ARBITRARY_UNION_OF_IDEMPOT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNION_OF A (hl_ARBITRARY A) (hl_UNION_OF A (hl_ARBITRARY A) P) = hl_UNION_OF A (hl_ARBITRARY A) P.
Admitted.

// HOL Light: sets.ml:4127 / ARBITRARY_INTERSECTION_OF_IDEMPOT   (hash md5:d28bada1c47c9c2cf6827795cc3114df)
Theorem hlt_ARBITRARY_INTERSECTION_OF_IDEMPOT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_INTERSECTION_OF A (hl_ARBITRARY A) (hl_INTERSECTION_OF A (hl_ARBITRARY A) P) = hl_INTERSECTION_OF A (hl_ARBITRARY A) P.
Admitted.

// HOL Light: sets.ml:4135 / ARBITRARY_UNION_OF_UNIONS   (hash md5:999249a4ba21d71e28ab06d6ca277a1b)
Theorem hlt_ARBITRARY_UNION_OF_UNIONS : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_UNION_OF A (hl_ARBITRARY A) P s = 1) -> hl_UNION_OF A (hl_ARBITRARY A) P (hl_UNIONS A u) = 1.
Admitted.

// HOL Light: sets.ml:4143 / ARBITRARY_UNION_OF_UNION   (hash md5:0cb196b28925ba2f992a0071a903994f)
Theorem hlt_ARBITRARY_UNION_OF_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_UNION_OF A (hl_ARBITRARY A) P s = 1 /\ hl_UNION_OF A (hl_ARBITRARY A) P t = 1 -> hl_UNION_OF A (hl_ARBITRARY A) P (hl_UNION A s t) = 1.
Admitted.

// HOL Light: sets.ml:4152 / ARBITRARY_INTERSECTION_OF_INTERS   (hash md5:4ca4c107594bbd75b4c2d972e4f22d70)
Theorem hlt_ARBITRARY_INTERSECTION_OF_INTERS : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_INTERSECTION_OF A (hl_ARBITRARY A) P s = 1) -> hl_INTERSECTION_OF A (hl_ARBITRARY A) P (hl_INTERS A u) = 1.
Admitted.

// HOL Light: sets.ml:4161 / ARBITRARY_INTERSECTION_OF_INTER   (hash md5:ae0458e2781a54f03957ac8d06784819)
Theorem hlt_ARBITRARY_INTERSECTION_OF_INTER : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_INTERSECTION_OF A (hl_ARBITRARY A) P s = 1 /\ hl_INTERSECTION_OF A (hl_ARBITRARY A) P t = 1 -> hl_INTERSECTION_OF A (hl_ARBITRARY A) P (hl_INTER A s t) = 1.
Admitted.

// HOL Light: sets.ml:4170 / ARBITRARY_UNION_OF_INTER_EQ   (hash md5:a862a0522fa186e418eed15308ca2be0)
Theorem hlt_ARBITRARY_UNION_OF_INTER_EQ : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, hl_UNION_OF A (hl_ARBITRARY A) P s = 1 /\ hl_UNION_OF A (hl_ARBITRARY A) P t = 1 -> hl_UNION_OF A (hl_ARBITRARY A) P (hl_INTER A s t) = 1) <-> forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> hl_UNION_OF A (hl_ARBITRARY A) P (hl_INTER A s t) = 1.
Admitted.

// HOL Light: sets.ml:4186 / ARBITRARY_UNION_OF_INTER   (hash md5:7dd30e2c5c757901ad6804c6299695cd)
Theorem hlt_ARBITRARY_UNION_OF_INTER : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_INTER A s t) = 1) -> forall s t :e 2 :^: A, hl_UNION_OF A (hl_ARBITRARY A) P s = 1 /\ hl_UNION_OF A (hl_ARBITRARY A) P t = 1 -> hl_UNION_OF A (hl_ARBITRARY A) P (hl_INTER A s t) = 1.
Admitted.

// HOL Light: sets.ml:4194 / ARBITRARY_INTERSECTION_OF_UNION_EQ   (hash md5:81eaa609fcd0702fb377ed06dc483a48)
Theorem hlt_ARBITRARY_INTERSECTION_OF_UNION_EQ : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, hl_INTERSECTION_OF A (hl_ARBITRARY A) P s = 1 /\ hl_INTERSECTION_OF A (hl_ARBITRARY A) P t = 1 -> hl_INTERSECTION_OF A (hl_ARBITRARY A) P (hl_UNION A s t) = 1) <-> forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> hl_INTERSECTION_OF A (hl_ARBITRARY A) P (hl_UNION A s t) = 1.
Admitted.

// HOL Light: sets.ml:4210 / ARBITRARY_INTERSECTION_OF_UNION   (hash md5:43f27ec422c4c1c6861a9a009128d994)
Theorem hlt_ARBITRARY_INTERSECTION_OF_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_UNION A s t) = 1) -> forall s t :e 2 :^: A, hl_INTERSECTION_OF A (hl_ARBITRARY A) P s = 1 /\ hl_INTERSECTION_OF A (hl_ARBITRARY A) P t = 1 -> hl_INTERSECTION_OF A (hl_ARBITRARY A) P (hl_UNION A s t) = 1.
Admitted.

// HOL Light: sets.ml:4219 / FINITE_UNION_OF_EMPTY   (hash md5:ab7a993d4740468c3c3658460e4af2e6)
Theorem hlt_FINITE_UNION_OF_EMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNION_OF A (hl_FINITE (2 :^: A)) P (hl_EMPTY A) = 1.
Admitted.

// HOL Light: sets.ml:4223 / FINITE_INTERSECTION_OF_EMPTY   (hash md5:5f96c69d92f715c098e9a445167dcbbc)
Theorem hlt_FINITE_INTERSECTION_OF_EMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P (hl_UNIV A) = 1.
Admitted.

// HOL Light: sets.ml:4227 / FINITE_UNION_OF_INC   (hash md5:995382e9ae1f4040e8830222bd4b0ac7)
Theorem hlt_FINITE_UNION_OF_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P s = 1 -> hl_UNION_OF A (hl_FINITE (2 :^: A)) P s = 1.
Admitted.

// HOL Light: sets.ml:4231 / FINITE_INTERSECTION_OF_INC   (hash md5:81fb3b5cdd44004f52b5949cd7ce2f56)
Theorem hlt_FINITE_INTERSECTION_OF_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P s = 1 -> hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P s = 1.
Admitted.

// HOL Light: sets.ml:4235 / FINITE_UNION_OF_COMPLEMENT   (hash md5:28b8de3cb73ee729dbad085540345b71)
Theorem hlt_FINITE_UNION_OF_COMPLEMENT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_UNION_OF A (hl_FINITE (2 :^: A)) P s = 1 <-> hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) (fun s1 :e 2 :^: A => P (hl_DIFF A (hl_UNIV A) s1)) (hl_DIFF A (hl_UNIV A) s) = 1.
Admitted.

// HOL Light: sets.ml:4247 / FINITE_INTERSECTION_OF_COMPLEMENT   (hash md5:5526f97c0cb8a915e4f74a3878aa30bc)
Theorem hlt_FINITE_INTERSECTION_OF_COMPLEMENT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P s = 1 <-> hl_UNION_OF A (hl_FINITE (2 :^: A)) (fun s1 :e 2 :^: A => P (hl_DIFF A (hl_UNIV A) s1)) (hl_DIFF A (hl_UNIV A) s) = 1.
Admitted.

// HOL Light: sets.ml:4253 / FINITE_UNION_OF_IDEMPOT   (hash md5:782948909848c38b0a5eec5fa29ea32c)
Theorem hlt_FINITE_UNION_OF_IDEMPOT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNION_OF A (hl_FINITE (2 :^: A)) (hl_UNION_OF A (hl_FINITE (2 :^: A)) P) = hl_UNION_OF A (hl_FINITE (2 :^: A)) P.
Admitted.

// HOL Light: sets.ml:4272 / FINITE_INTERSECTION_OF_IDEMPOT   (hash md5:fdc2ca0515d8521ef2238ef9015363d9)
Theorem hlt_FINITE_INTERSECTION_OF_IDEMPOT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) (hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P) = hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P.
Admitted.

// HOL Light: sets.ml:4280 / FINITE_UNION_OF_UNIONS   (hash md5:760b7e0cd7eded2fc30b017c0c7db8e1)
Theorem hlt_FINITE_UNION_OF_UNIONS : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) u = 1 /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_UNION_OF A (hl_FINITE (2 :^: A)) P s = 1) -> hl_UNION_OF A (hl_FINITE (2 :^: A)) P (hl_UNIONS A u) = 1.
Admitted.

// HOL Light: sets.ml:4288 / FINITE_UNION_OF_UNION   (hash md5:d3c9fc3a26879f258b4cb9034ae085a0)
Theorem hlt_FINITE_UNION_OF_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_UNION_OF A (hl_FINITE (2 :^: A)) P s = 1 /\ hl_UNION_OF A (hl_FINITE (2 :^: A)) P t = 1 -> hl_UNION_OF A (hl_FINITE (2 :^: A)) P (hl_UNION A s t) = 1.
Admitted.

// HOL Light: sets.ml:4297 / FINITE_INTERSECTION_OF_INTERS   (hash md5:b74bc7504be2867dfa3d0f08df3475ca)
Theorem hlt_FINITE_INTERSECTION_OF_INTERS : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) u = 1 /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P s = 1) -> hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P (hl_INTERS A u) = 1.
Admitted.

// HOL Light: sets.ml:4306 / FINITE_INTERSECTION_OF_INTER   (hash md5:da583880e82d07d5dd6049b54a3fc22b)
Theorem hlt_FINITE_INTERSECTION_OF_INTER : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P s = 1 /\ hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P t = 1 -> hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P (hl_INTER A s t) = 1.
Admitted.

// HOL Light: sets.ml:4315 / FINITE_UNION_OF_INTER_EQ   (hash md5:4efccce7ee7947502ebd147cca05a291)
Theorem hlt_FINITE_UNION_OF_INTER_EQ : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, hl_UNION_OF A (hl_FINITE (2 :^: A)) P s = 1 /\ hl_UNION_OF A (hl_FINITE (2 :^: A)) P t = 1 -> hl_UNION_OF A (hl_FINITE (2 :^: A)) P (hl_INTER A s t) = 1) <-> forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> hl_UNION_OF A (hl_FINITE (2 :^: A)) P (hl_INTER A s t) = 1.
Admitted.

// HOL Light: sets.ml:4331 / FINITE_UNION_OF_INTER   (hash md5:62b69fbb00325cdbc63dbd778aedde46)
Theorem hlt_FINITE_UNION_OF_INTER : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_INTER A s t) = 1) -> forall s t :e 2 :^: A, hl_UNION_OF A (hl_FINITE (2 :^: A)) P s = 1 /\ hl_UNION_OF A (hl_FINITE (2 :^: A)) P t = 1 -> hl_UNION_OF A (hl_FINITE (2 :^: A)) P (hl_INTER A s t) = 1.
Admitted.

// HOL Light: sets.ml:4339 / FINITE_INTERSECTION_OF_UNION_EQ   (hash md5:99357c770c7be387f61a06b19e603909)
Theorem hlt_FINITE_INTERSECTION_OF_UNION_EQ : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P s = 1 /\ hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P t = 1 -> hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P (hl_UNION A s t) = 1) <-> forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P (hl_UNION A s t) = 1.
Admitted.

// HOL Light: sets.ml:4355 / FINITE_INTERSECTION_OF_UNION   (hash md5:5069470f353cfbfd33b5bb5476186e4e)
Theorem hlt_FINITE_INTERSECTION_OF_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_UNION A s t) = 1) -> forall s t :e 2 :^: A, hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P s = 1 /\ hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P t = 1 -> hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P (hl_UNION A s t) = 1.
Admitted.

// HOL Light: sets.ml:4368 / CARD_SET_OF_LIST_LE   (hash md5:6e5c8bd4691e77c6851cbf5fb793ae13)
Theorem hlt_CARD_SET_OF_LIST_LE : forall A:set, A <> Empty -> forall l :e finseq A, hl_le (hl_CARD A (hl_set_of_list A l)) (hl_LENGTH A l) = 1.
Admitted.

// HOL Light: sets.ml:4374 / HAS_SIZE_SET_OF_LIST   (hash md5:ae685800b6a0e3b0a09677b2af8370a2)
Theorem hlt_HAS_SIZE_SET_OF_LIST : forall A:set, A <> Empty -> forall l :e finseq A, hl_HAS_SIZE A (hl_set_of_list A l) (hl_LENGTH A l) = 1 <-> hl_PAIRWISE A (fun x :e A => fun y :e A => if ~ x = y then 1 else 0) l = 1.
Admitted.

// HOL Light: sets.ml:4386 / SURJECTIVE_IFF_INJECTIVE_GEN   (hash md5:435b9b8b9a84b06920605371905e8612)
Theorem hlt_SURJECTIVE_IFF_INJECTIVE_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (hl_CARD A s = hl_CARD B t /\ hl_SUBSET B (hl_IMAGE A B f s) t = 1)) -> ((forall y :e B, hl_IN B y t = 1 -> exists x :e A, hl_IN A x s = 1 /\ f x = y) <-> forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y).
Admitted.

// HOL Light: sets.ml:4406 / SURJECTIVE_IFF_INJECTIVE   (hash md5:a9da3106997a7401d967998dffabf9c4)
Theorem hlt_SURJECTIVE_IFF_INJECTIVE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e A :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A (hl_IMAGE A A f s) s = 1 -> ((forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x s = 1 /\ f x = y) <-> forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y).
Admitted.

// HOL Light: sets.ml:4413 / IMAGE_IMP_INJECTIVE_GEN   (hash md5:12c785baaef4a619610b79e68cb256fa)
Theorem hlt_IMAGE_IMP_INJECTIVE_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, hl_FINITE A s = 1 /\ (hl_CARD A s = hl_CARD B t /\ hl_IMAGE A B f s = t) -> forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light: sets.ml:4423 / IMAGE_IMP_INJECTIVE   (hash md5:0bc4a78db893abffe92f9bf55d108e1e)
Theorem hlt_IMAGE_IMP_INJECTIVE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e A :^: A, hl_FINITE A s = 1 /\ hl_IMAGE A A f s = s -> forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light: sets.ml:4429 / HAS_SIZE_IMAGE_INJ_RESTRICT   (hash md5:4b359cf0ae45afeae7a49a16408f0eeb)
Theorem hlt_HAS_SIZE_IMAGE_INJ_RESTRICT : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t P :e 2 :^: B, forall n :e omega, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (hl_CARD A s = hl_CARD B t /\ (hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ ((forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ hl_HAS_SIZE A (hl_GSPEC A (fun GEN_PVAR_219 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_219 (if hl_IN A x s = 1 /\ P (f x) = 1 then 1 else 0) x = 1 then 1 else 0)) n = 1)))) -> hl_HAS_SIZE B (hl_GSPEC B (fun GEN_PVAR_220 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_220 (if hl_IN B x t = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) n = 1.
Admitted.

// HOL Light: sets.ml:4450 / CARD_LE_INJ   (hash md5:b55031a5fed584f116e24490865ab03b)
Theorem hlt_CARD_LE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ hl_le (hl_CARD A s) (hl_CARD B t) = 1) -> exists f :e B :^: A, hl_SUBSET B (hl_IMAGE A B f s) t = 1 /\ forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light: sets.ml:4475 / FORALL_IN_CLAUSES   (hash md5:c707a7044e9e7098b7e5a5ad0ed9c3ca)
Theorem hlt_FORALL_IN_CLAUSES : forall A:set, A <> Empty -> (forall P :e 2 :^: A, (forall x :e A, hl_IN A x (hl_EMPTY A) = 1 -> P x = 1) <-> True) /\ forall P :e 2 :^: A, forall a :e A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x (hl_INSERT A a s) = 1 -> P x = 1) <-> P a = 1 /\ forall x :e A, hl_IN A x s = 1 -> P x = 1.
Admitted.

// HOL Light: sets.ml:4480 / EXISTS_IN_CLAUSES   (hash md5:254995967a069e2c0c3e67b72a21d698)
Theorem hlt_EXISTS_IN_CLAUSES : forall A:set, A <> Empty -> (forall P :e 2 :^: A, (exists x :e A, hl_IN A x (hl_EMPTY A) = 1 /\ P x = 1) <-> False) /\ forall P :e 2 :^: A, forall a :e A, forall s :e 2 :^: A, (exists x :e A, hl_IN A x (hl_INSERT A a s) = 1 /\ P x = 1) <-> P a = 1 \/ exists x :e A, hl_IN A x s = 1 /\ P x = 1.
Admitted.

// HOL Light: sets.ml:4489 / INJECTIVE_ON_IMAGE   (hash md5:a3957f03c3b22a6228c5cc636a067262)
Theorem hlt_INJECTIVE_ON_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall u :e 2 :^: A, (forall s t :e 2 :^: A, hl_SUBSET A s u = 1 /\ (hl_SUBSET A t u = 1 /\ hl_IMAGE A B f s = hl_IMAGE A B f t) -> s = t) <-> forall x y :e A, hl_IN A x u = 1 /\ (hl_IN A y u = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light: sets.ml:4498 / INJECTIVE_IMAGE   (hash md5:ca0080a855adb7b71bdc1375bc296bb6)
Theorem hlt_INJECTIVE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall s t :e 2 :^: A, hl_IMAGE A B f s = hl_IMAGE A B f t -> s = t) <-> forall x y :e A, f x = f y -> x = y.
Admitted.

// HOL Light: sets.ml:4504 / SURJECTIVE_ON_IMAGE   (hash md5:0e1850d9fbd46e983c5343c5fc15d098)
Theorem hlt_SURJECTIVE_ON_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall u :e 2 :^: A, forall v :e 2 :^: B, (forall t :e 2 :^: B, hl_SUBSET B t v = 1 -> exists s :e 2 :^: A, hl_SUBSET A s u = 1 /\ hl_IMAGE A B f s = t) <-> forall y :e B, hl_IN B y v = 1 -> exists x :e A, hl_IN A x u = 1 /\ f x = y.
Admitted.

// HOL Light: sets.ml:4514 / SURJECTIVE_IMAGE   (hash md5:86436dc65213bfc8555b108e82cb694f)
Theorem hlt_SURJECTIVE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall t :e 2 :^: B, exists s :e 2 :^: A, hl_IMAGE A B f s = t) <-> forall y :e B, exists x :e A, f x = y.
Admitted.

// HOL Light: sets.ml:4520 / INJECTIVE_ON_PREIMAGE   (hash md5:1c74e2e87440f11e6565060bd359e30c)
Theorem hlt_INJECTIVE_ON_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall u :e 2 :^: B, (forall t t' :e 2 :^: B, hl_SUBSET B t u = 1 /\ (hl_SUBSET B t' u = 1 /\ hl_GSPEC A (fun GEN_PVAR_222 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_222 (if hl_IN A x s = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0) = hl_GSPEC A (fun GEN_PVAR_223 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_223 (if hl_IN A x s = 1 /\ hl_IN B (f x) t' = 1 then 1 else 0) x = 1 then 1 else 0)) -> t = t') <-> hl_SUBSET B u (hl_IMAGE A B f s) = 1.
Admitted.

// HOL Light: sets.ml:4530 / SURJECTIVE_ON_PREIMAGE   (hash md5:f0fa44130c731df439b5a4653b25912f)
Theorem hlt_SURJECTIVE_ON_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall u :e 2 :^: B, (forall k :e 2 :^: A, hl_SUBSET A k s = 1 -> exists t :e 2 :^: B, hl_SUBSET B t u = 1 /\ hl_GSPEC A (fun GEN_PVAR_224 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_224 (if hl_IN A x s = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0) = k) <-> hl_SUBSET B (hl_IMAGE A B f s) u = 1 /\ forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light: sets.ml:4545 / INJECTIVE_PREIMAGE   (hash md5:527811d6a0352a6628de804212414c01)
Theorem hlt_INJECTIVE_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall t t' :e 2 :^: B, hl_GSPEC A (fun GEN_PVAR_225 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_225 (hl_IN B (f x) t) x = 1 then 1 else 0) = hl_GSPEC A (fun GEN_PVAR_226 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_226 (hl_IN B (f x) t') x = 1 then 1 else 0) -> t = t') <-> hl_IMAGE A B f (hl_UNIV A) = hl_UNIV B.
Admitted.

// HOL Light: sets.ml:4554 / SURJECTIVE_PREIMAGE   (hash md5:f1e1fc129998a2f80a3dd7ca228201f2)
Theorem hlt_SURJECTIVE_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall k :e 2 :^: A, exists t :e 2 :^: B, hl_GSPEC A (fun GEN_PVAR_227 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_227 (hl_IN B (f x) t) x = 1 then 1 else 0) = k) <-> forall x y :e A, f x = f y -> x = y.
Admitted.

// HOL Light: sets.ml:4565 / CARD_EQ_BIJECTION   (hash md5:469ff9ccf8bb5c899ad58d4f8a8d7997)
Theorem hlt_CARD_EQ_BIJECTION : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ hl_CARD A s = hl_CARD B t) -> exists f :e B :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ ((forall y :e B, hl_IN B y t = 1 -> exists x :e A, hl_IN A x s = 1 /\ f x = y) /\ forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y).
Admitted.

// HOL Light: sets.ml:4576 / CARD_EQ_BIJECTIONS   (hash md5:c6ca64fe79147712a42190986240c239)
Theorem hlt_CARD_EQ_BIJECTIONS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ hl_CARD A s = hl_CARD B t) -> exists f :e B :^: A, exists g :e A :^: B, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y.
Admitted.

// HOL Light: sets.ml:4585 / CARD_EQ_BIJECTIONS_SPECIAL   (hash md5:59b0e4b857342432d44da2a02ba6327b)
Theorem hlt_CARD_EQ_BIJECTIONS_SPECIAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall a :e A, forall b :e B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (hl_CARD A s = hl_CARD B t /\ (hl_IN A a s = 1 /\ hl_IN B b t = 1))) -> exists f :e B :^: A, exists g :e A :^: B, f a = b /\ (g b = a /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y)).
Admitted.

// HOL Light: sets.ml:4600 / BIJECTIONS_HAS_SIZE   (hash md5:37923d43d9ea798d3a45d6889d879860)
Theorem hlt_BIJECTIONS_HAS_SIZE : forall A B:set, A <> Empty -> B <> Empty -> forall n :e omega, forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, forall g :e A :^: B, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ ((forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y) /\ hl_HAS_SIZE A s n = 1) -> hl_HAS_SIZE B t n = 1.
Admitted.

// HOL Light: sets.ml:4610 / BIJECTIONS_HAS_SIZE_EQ   (hash md5:cea671f0e4c3c4b7057dd62747d24fb6)
Theorem hlt_BIJECTIONS_HAS_SIZE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, forall g :e A :^: B, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ (forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y) -> forall n :e omega, hl_HAS_SIZE A s n = 1 <-> hl_HAS_SIZE B t n = 1.
Admitted.

// HOL Light: sets.ml:4622 / BIJECTIONS_CARD_EQ   (hash md5:a2c4d30d4c9a31d5faa4ed344a68b515)
Theorem hlt_BIJECTIONS_CARD_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e B :^: A, forall g :e A :^: B, (hl_FINITE A s = 1 \/ hl_FINITE B t = 1) /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ (forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y)) -> hl_CARD A s = hl_CARD B t.
Admitted.

// HOL Light: sets.ml:4636 / WF_FINITE   (hash md5:4aeef32e8a078032478db475333e60d7)
Theorem hlt_WF_FINITE : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, (forall x :e A, ~ lt x x = 1) /\ ((forall x y z :e A, lt x y = 1 /\ lt y z = 1 -> lt x z = 1) /\ (forall x :e A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_229 :e A => if exists y :e A, hl_SETSPEC A GEN_PVAR_229 (lt y x) y = 1 then 1 else 0)) = 1)) -> hl_WF A lt = 1.
Admitted.

// HOL Light: sets.ml:4654 / WF_PSUBSET   (hash md5:9f23fb0be26d0ccacb5c972b313ae592)
Theorem hlt_WF_PSUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_WF (2 :^: A) (fun t1 :e 2 :^: A => fun t2 :e 2 :^: A => if hl_PSUBSET A t1 t2 = 1 /\ hl_SUBSET A t2 s = 1 then 1 else 0) = 1.
Admitted.

// HOL Light: sets.ml:4665 / le_c   (hash md5:5a22470aa6e1e759d03b16e3350272e8)
Theorem hlt_le_c : forall A B:set, A <> Empty -> B <> Empty -> forall t :e 2 :^: B, forall s :e 2 :^: A, hl_sym_3c3d5f63 A B s t = 1 <-> exists f :e B :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light: sets.ml:4670 / lt_c   (hash md5:188471cbb53394f2d532eee8e028f481)
Theorem hlt_lt_c : forall A B:set, A <> Empty -> B <> Empty -> forall t :e 2 :^: B, forall s :e 2 :^: A, hl_sym_3c5f63 A B s t = 1 <-> hl_sym_3c3d5f63 A B s t = 1 /\ ~ hl_sym_3c3d5f63 B A t s = 1.
Admitted.

// HOL Light: sets.ml:4673 / eq_c   (hash md5:24389193fce9917da6041827a75a8142)
Theorem hlt_eq_c : forall A B:set, A <> Empty -> B <> Empty -> forall t :e 2 :^: B, forall s :e 2 :^: A, hl_sym_3d5f63 A B s t = 1 <-> exists f :e B :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ forall y :e B, hl_IN B y t = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ f x = y then 1 else 0) = 1.
Admitted.

// HOL Light: sets.ml:4678 / ge_c   (hash md5:13b201093c3daa680d60d59f5b054c6f)
Theorem hlt_ge_c : forall A B:set, A <> Empty -> B <> Empty -> forall t :e 2 :^: B, forall s :e 2 :^: A, hl_sym_3e3d5f63 A B s t = 1 <-> hl_sym_3c3d5f63 B A t s = 1.
Admitted.

// HOL Light: sets.ml:4681 / gt_c   (hash md5:fc197b1dd7cc9085131c465c12792c6e)
Theorem hlt_gt_c : forall A B:set, A <> Empty -> B <> Empty -> forall t :e 2 :^: B, forall s :e 2 :^: A, hl_sym_3e5f63 A B s t = 1 <-> hl_sym_3c5f63 B A t s = 1.
Admitted.

// HOL Light: sets.ml:4684 / LE_C   (hash md5:500c823b8f92c73c7ac141ebb43e9157)
Theorem hlt_LE_C : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, forall t :e 2 :^: A, hl_sym_3c3d5f63 B A s t = 1 <-> exists g :e B :^: A, forall x :e B, hl_IN B x s = 1 -> exists y :e A, hl_IN A y t = 1 /\ g y = x.
Admitted.

// HOL Light: sets.ml:4690 / GE_C   (hash md5:6247453d61456cf3817da38e628c8855)
Theorem hlt_GE_C : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3e3d5f63 A B s t = 1 <-> exists f :e B :^: A, forall y :e B, hl_IN B y t = 1 -> exists x :e A, hl_IN A x s = 1 /\ y = f x.
Admitted.

// HOL Light: sets.ml:4694 / COUNTABLE   (hash md5:a4d2d220b45cd3826cf971a233740dac)
Theorem hlt_COUNTABLE : forall A:set, A <> Empty -> forall t :e 2 :^: A, hl_COUNTABLE A t = 1 <-> hl_sym_3e3d5f63 omega A (hl_UNIV omega) t = 1.
Admitted.

// HOL Light: sets.ml:4701 / sup   (hash md5:d2ca7306f413307a8e8aeedfc82e46bd)
Theorem hlt_sup_thm : forall s :e 2 :^: R, hl_sup s = hl_select R (fun a :e R => if (forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:4705 / SUP_EQ   (hash md5:44ff2b01b6aaaca055d3e4a800d4e546)
Theorem hlt_SUP_EQ : forall s t :e 2 :^: R, (forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) <-> forall x :e R, hl_IN R x t = 1 -> hl_real_le x b = 1) -> hl_sup s = hl_sup t.
Admitted.

// HOL Light: sets.ml:4710 / SUP   (hash md5:78511ee47101dedad175c9a7678dd949)
Theorem hlt_SUP : forall s :e 2 :^: R, ~ s = hl_EMPTY R /\ (exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> (forall x :e R, hl_IN R x s = 1 -> hl_real_le x (hl_sup s) = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le (hl_sup s) b = 1.
Admitted.

// HOL Light: sets.ml:4718 / SUP_FINITE_LEMMA   (hash md5:3c0ba582b548457ef2ee799f00e7d114)
Theorem hlt_SUP_FINITE_LEMMA : forall s :e 2 :^: R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> exists b :e R, hl_IN R b s = 1 /\ forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1.
Admitted.

// HOL Light: sets.ml:4726 / SUP_FINITE   (hash md5:5907847a560b5a018c3a4558a7f79ddd)
Theorem hlt_SUP_FINITE : forall s :e 2 :^: R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> hl_IN R (hl_sup s) s = 1 /\ forall x :e R, hl_IN R x s = 1 -> hl_real_le x (hl_sup s) = 1.
Admitted.

// HOL Light: sets.ml:4732 / REAL_LE_SUP_FINITE   (hash md5:72a78c0f69bed58ff99a820c6533ad84)
Theorem hlt_REAL_LE_SUP_FINITE : forall s :e 2 :^: R, forall a :e R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_real_le a (hl_sup s) = 1 <-> exists x :e R, hl_IN R x s = 1 /\ hl_real_le a x = 1).
Admitted.

// HOL Light: sets.ml:4736 / REAL_SUP_LE_FINITE   (hash md5:0b9ae8092fa414be5e56b5ce704a980e)
Theorem hlt_REAL_SUP_LE_FINITE : forall s :e 2 :^: R, forall a :e R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_real_le (hl_sup s) a = 1 <-> forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1).
Admitted.

// HOL Light: sets.ml:4740 / REAL_LT_SUP_FINITE   (hash md5:838ac9ab13e718d6b2d46259dc82d4f3)
Theorem hlt_REAL_LT_SUP_FINITE : forall s :e 2 :^: R, forall a :e R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_real_lt a (hl_sup s) = 1 <-> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt a x = 1).
Admitted.

// HOL Light: sets.ml:4744 / REAL_SUP_LT_FINITE   (hash md5:ee9db9042bccba7e984b3c4febfd468d)
Theorem hlt_REAL_SUP_LT_FINITE : forall s :e 2 :^: R, forall a :e R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_real_lt (hl_sup s) a = 1 <-> forall x :e R, hl_IN R x s = 1 -> hl_real_lt x a = 1).
Admitted.

// HOL Light: sets.ml:4748 / REAL_SUP_UNIQUE   (hash md5:c1b5457338cee1be9919068f8fa6c3c6)
Theorem hlt_REAL_SUP_UNIQUE : forall s :e 2 :^: R, forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) /\ (forall b' :e R, hl_real_lt b' b = 1 -> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt b' x = 1) -> hl_sup s = b.
Admitted.

// HOL Light: sets.ml:4755 / REAL_SUP_LE   (hash md5:fd4c43287aec7cdf757331cc07b2e64e)
Theorem hlt_REAL_SUP_LE : forall s :e 2 :^: R, forall b :e R, ~ s = hl_EMPTY R /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le (hl_sup s) b = 1.
Admitted.

// HOL Light: sets.ml:4759 / REAL_SUP_LE_SUBSET   (hash md5:11e6a0fa80ef64c360010c6adebb40c2)
Theorem hlt_REAL_SUP_LE_SUBSET : forall s t :e 2 :^: R, ~ s = hl_EMPTY R /\ (hl_SUBSET R s t = 1 /\ (exists b :e R, forall x :e R, hl_IN R x t = 1 -> hl_real_le x b = 1)) -> hl_real_le (hl_sup s) (hl_sup t) = 1.
Admitted.

// HOL Light: sets.ml:4765 / REAL_SUP_BOUNDS   (hash md5:cb3c7a5564807549abec37dfc574b11e)
Theorem hlt_REAL_SUP_BOUNDS : forall s :e 2 :^: R, forall a b :e R, ~ s = hl_EMPTY R /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1 /\ hl_real_le x b = 1) -> hl_real_le a (hl_sup s) = 1 /\ hl_real_le (hl_sup s) b = 1.
Admitted.

// HOL Light: sets.ml:4774 / REAL_ABS_SUP_LE   (hash md5:1386df99119b34c458da70f0bd947449)
Theorem hlt_REAL_ABS_SUP_LE : forall s :e 2 :^: R, forall a :e R, ~ s = hl_EMPTY R /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le (hl_real_abs x) a = 1) -> hl_real_le (hl_real_abs (hl_sup s)) a = 1.
Admitted.

// HOL Light: sets.ml:4778 / REAL_SUP_ASCLOSE   (hash md5:899e68432ca3d03908a0b4e5e1b7cd92)
Theorem hlt_REAL_SUP_ASCLOSE : forall s :e 2 :^: R, forall l e1 :e R, ~ s = hl_EMPTY R /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le (hl_real_abs (hl_real_sub x l)) e1 = 1) -> hl_real_le (hl_real_abs (hl_real_sub (hl_sup s) l)) e1 = 1.
Admitted.

// HOL Light: sets.ml:4784 / SUP_UNIQUE_FINITE   (hash md5:a5a2121571ee6bc6c8fcf32cf8d0f7c7)
Theorem hlt_SUP_UNIQUE_FINITE : forall a :e R, forall s :e 2 :^: R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_sup s = a <-> hl_IN R a s = 1 /\ forall y :e R, hl_IN R y s = 1 -> hl_real_le y a = 1).
Admitted.

// HOL Light: sets.ml:4791 / SUP_INSERT_FINITE   (hash md5:f27fac5aee3a4a0cdd1d6e320865d873)
Theorem hlt_SUP_INSERT_FINITE : forall x :e R, forall s :e 2 :^: R, hl_FINITE R s = 1 -> hl_sup (hl_INSERT R x s) = hl_COND R (if s = hl_EMPTY R then 1 else 0) x (hl_real_max x (hl_sup s)).
Admitted.

// HOL Light: sets.ml:4801 / SUP_SING   (hash md5:3a9cb35b953582fc5909b65168df7703)
Theorem hlt_SUP_SING : forall a :e R, hl_sup (hl_INSERT R a (hl_EMPTY R)) = a.
Admitted.

// HOL Light: sets.ml:4805 / SUP_INSERT_INSERT   (hash md5:db5a0106a36c762e7c82cb152ae005c5)
Theorem hlt_SUP_INSERT_INSERT : forall a b :e R, forall s :e 2 :^: R, hl_sup (hl_INSERT R b (hl_INSERT R a s)) = hl_sup (hl_INSERT R (hl_real_max a b) s).
Admitted.

// HOL Light: sets.ml:4812 / REAL_LE_SUP   (hash md5:b21ea54fdfddac32cd95324d42132f84)
Theorem hlt_REAL_LE_SUP : forall s :e 2 :^: R, forall a b y :e R, hl_IN R y s = 1 /\ (hl_real_le a y = 1 /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1)) -> hl_real_le a (hl_sup s) = 1.
Admitted.

// HOL Light: sets.ml:4816 / REAL_SUP_LE_EQ   (hash md5:9f6f5f5e1ff041b6230f0ad673a7b1d5)
Theorem hlt_REAL_SUP_LE_EQ : forall s :e 2 :^: R, forall y :e R, ~ s = hl_EMPTY R /\ (exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> (hl_real_le (hl_sup s) y = 1 <-> forall x :e R, hl_IN R x s = 1 -> hl_real_le x y = 1).
Admitted.

// HOL Light: sets.ml:4821 / SUP_UNIQUE   (hash md5:aeff6e2a6420e0f5569a94de7ce75985)
Theorem hlt_SUP_UNIQUE : forall s :e 2 :^: R, forall b :e R, (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x c = 1) <-> hl_real_le b c = 1) -> hl_sup s = b.
Admitted.

// HOL Light: sets.ml:4826 / SUP_UNION   (hash md5:a5e7010b4354600553d6c25417791f75)
Theorem hlt_SUP_UNION : forall s t :e 2 :^: R, ~ s = hl_EMPTY R /\ (~ t = hl_EMPTY R /\ ((exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) /\ (exists c :e R, forall x :e R, hl_IN R x t = 1 -> hl_real_le x c = 1))) -> hl_sup (hl_UNION R s t) = hl_real_max (hl_sup s) (hl_sup t).
Admitted.

// HOL Light: sets.ml:4834 / ELEMENT_LE_SUP   (hash md5:8c6cbb9981dc1512672fc20fc2b981ce)
Theorem hlt_ELEMENT_LE_SUP : forall s :e 2 :^: R, forall a :e R, (exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) /\ hl_IN R a s = 1 -> hl_real_le a (hl_sup s) = 1.
Admitted.

// HOL Light: sets.ml:4838 / SUP_APPROACH   (hash md5:32183111dabd69ee6a7e3910e3fd2bc5)
Theorem hlt_SUP_APPROACH : forall s :e 2 :^: R, forall c :e R, ~ s = hl_EMPTY R /\ ((exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) /\ hl_real_lt c (hl_sup s) = 1) -> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt c x = 1.
Admitted.

// HOL Light: sets.ml:4849 / REAL_MAX_SUP   (hash md5:84d1c01e26b91a687b52852d378103a7)
Theorem hlt_REAL_MAX_SUP : forall x y :e R, hl_real_max x y = hl_sup (hl_INSERT R x (hl_INSERT R y (hl_EMPTY R))).
Admitted.

// HOL Light: sets.ml:4855 / inf   (hash md5:b6e4351d5c7f0c88c6789029373b4145)
Theorem hlt_inf_thm : forall s :e 2 :^: R, hl_inf s = hl_select R (fun a :e R => if (forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1 then 1 else 0).
Admitted.

// HOL Light: sets.ml:4859 / INF_EQ   (hash md5:bdf9df8416b9b5c2ee70d7924516b24d)
Theorem hlt_INF_EQ : forall s t :e 2 :^: R, (forall a :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) <-> forall x :e R, hl_IN R x t = 1 -> hl_real_le a x = 1) -> hl_inf s = hl_inf t.
Admitted.

// HOL Light: sets.ml:4864 / INF   (hash md5:832a778e84902cbe8201ca419f6f8f6d)
Theorem hlt_INF : forall s :e 2 :^: R, ~ s = hl_EMPTY R /\ (exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> (forall x :e R, hl_IN R x s = 1 -> hl_real_le (hl_inf s) x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b (hl_inf s) = 1.
Admitted.

// HOL Light: sets.ml:4878 / INF_FINITE_LEMMA   (hash md5:bfba4d47a7c25bafcabf364ee4a2c550)
Theorem hlt_INF_FINITE_LEMMA : forall s :e 2 :^: R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> exists b :e R, hl_IN R b s = 1 /\ forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1.
Admitted.

// HOL Light: sets.ml:4886 / INF_FINITE   (hash md5:8ddbc04741ae680e0c4ec056a2b78400)
Theorem hlt_INF_FINITE : forall s :e 2 :^: R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> hl_IN R (hl_inf s) s = 1 /\ forall x :e R, hl_IN R x s = 1 -> hl_real_le (hl_inf s) x = 1.
Admitted.

// HOL Light: sets.ml:4892 / REAL_LE_INF_FINITE   (hash md5:50b743bcf03d6929c3b6df9e9c45b6d9)
Theorem hlt_REAL_LE_INF_FINITE : forall s :e 2 :^: R, forall a :e R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_real_le a (hl_inf s) = 1 <-> forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1).
Admitted.

// HOL Light: sets.ml:4896 / REAL_INF_LE_FINITE   (hash md5:2cead083b7e6b3ece061762c4bca822a)
Theorem hlt_REAL_INF_LE_FINITE : forall s :e 2 :^: R, forall a :e R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_real_le (hl_inf s) a = 1 <-> exists x :e R, hl_IN R x s = 1 /\ hl_real_le x a = 1).
Admitted.

// HOL Light: sets.ml:4900 / REAL_LT_INF_FINITE   (hash md5:ba6d8e4fe7822380970b24519dda03bd)
Theorem hlt_REAL_LT_INF_FINITE : forall s :e 2 :^: R, forall a :e R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_real_lt a (hl_inf s) = 1 <-> forall x :e R, hl_IN R x s = 1 -> hl_real_lt a x = 1).
Admitted.

// HOL Light: sets.ml:4904 / REAL_INF_LT_FINITE   (hash md5:e9d0372e423ac7bdf901e8ab23c9f60c)
Theorem hlt_REAL_INF_LT_FINITE : forall s :e 2 :^: R, forall a :e R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_real_lt (hl_inf s) a = 1 <-> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt x a = 1).
Admitted.

// HOL Light: sets.ml:4908 / REAL_INF_UNIQUE   (hash md5:d246285c3d5572ad2dd0628b7fc02ea7)
Theorem hlt_REAL_INF_UNIQUE : forall s :e 2 :^: R, forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) /\ (forall b' :e R, hl_real_lt b b' = 1 -> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt x b' = 1) -> hl_inf s = b.
Admitted.

// HOL Light: sets.ml:4915 / REAL_LE_INF   (hash md5:4797d85cf8f9e1f94b8dfa6b31e5c1e4)
Theorem hlt_REAL_LE_INF : forall s :e 2 :^: R, forall b :e R, ~ s = hl_EMPTY R /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b (hl_inf s) = 1.
Admitted.

// HOL Light: sets.ml:4919 / REAL_LE_INF_SUBSET   (hash md5:19c28eb24f4596fb1cf5003d90250aec)
Theorem hlt_REAL_LE_INF_SUBSET : forall s t :e 2 :^: R, ~ t = hl_EMPTY R /\ (hl_SUBSET R t s = 1 /\ (exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1)) -> hl_real_le (hl_inf s) (hl_inf t) = 1.
Admitted.

// HOL Light: sets.ml:4925 / REAL_INF_BOUNDS   (hash md5:2ed2d5fbdad1bd204defa63b46ceb6e9)
Theorem hlt_REAL_INF_BOUNDS : forall s :e 2 :^: R, forall a b :e R, ~ s = hl_EMPTY R /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1 /\ hl_real_le x b = 1) -> hl_real_le a (hl_inf s) = 1 /\ hl_real_le (hl_inf s) b = 1.
Admitted.

// HOL Light: sets.ml:4934 / REAL_ABS_INF_LE   (hash md5:5394f8b4c4ddaac69cf7235938d5f1eb)
Theorem hlt_REAL_ABS_INF_LE : forall s :e 2 :^: R, forall a :e R, ~ s = hl_EMPTY R /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le (hl_real_abs x) a = 1) -> hl_real_le (hl_real_abs (hl_inf s)) a = 1.
Admitted.

// HOL Light: sets.ml:4938 / REAL_INF_ASCLOSE   (hash md5:6340d689888e074cf7d89c2cf3b77676)
Theorem hlt_REAL_INF_ASCLOSE : forall s :e 2 :^: R, forall l e1 :e R, ~ s = hl_EMPTY R /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le (hl_real_abs (hl_real_sub x l)) e1 = 1) -> hl_real_le (hl_real_abs (hl_real_sub (hl_inf s) l)) e1 = 1.
Admitted.

// HOL Light: sets.ml:4944 / INF_UNIQUE_FINITE   (hash md5:64c9761b1060cca33763b7f4f1a69991)
Theorem hlt_INF_UNIQUE_FINITE : forall a :e R, forall s :e 2 :^: R, hl_FINITE R s = 1 /\ ~ s = hl_EMPTY R -> (hl_inf s = a <-> hl_IN R a s = 1 /\ forall y :e R, hl_IN R y s = 1 -> hl_real_le a y = 1).
Admitted.

// HOL Light: sets.ml:4951 / INF_INSERT_FINITE   (hash md5:1d83d97f30fad042ee0f27901f564520)
Theorem hlt_INF_INSERT_FINITE : forall x :e R, forall s :e 2 :^: R, hl_FINITE R s = 1 -> hl_inf (hl_INSERT R x s) = hl_COND R (if s = hl_EMPTY R then 1 else 0) x (hl_real_min x (hl_inf s)).
Admitted.

// HOL Light: sets.ml:4961 / INF_SING   (hash md5:9e9101e9e2f4d065a4ac7559ad6fbbca)
Theorem hlt_INF_SING : forall a :e R, hl_inf (hl_INSERT R a (hl_EMPTY R)) = a.
Admitted.

// HOL Light: sets.ml:4965 / INF_INSERT_INSERT   (hash md5:f84b8571e923ec6087760074af6ffac8)
Theorem hlt_INF_INSERT_INSERT : forall a b :e R, forall s :e 2 :^: R, hl_inf (hl_INSERT R b (hl_INSERT R a s)) = hl_inf (hl_INSERT R (hl_real_min a b) s).
Admitted.

// HOL Light: sets.ml:4972 / REAL_SUP_EQ_INF   (hash md5:91182f57329d4d9ca5a8f471e418e09b)
Theorem hlt_REAL_SUP_EQ_INF : forall s :e 2 :^: R, ~ s = hl_EMPTY R /\ (exists B :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le (hl_real_abs x) B = 1) -> (hl_sup s = hl_inf s <-> exists a :e R, s = hl_INSERT R a (hl_EMPTY R)).
Admitted.

// HOL Light: sets.ml:4983 / REAL_INF_LE   (hash md5:1f4ff29c633a13a0d8c1fc30a88eadf2)
Theorem hlt_REAL_INF_LE : forall s :e 2 :^: R, forall a b y :e R, hl_IN R y s = 1 /\ (hl_real_le y b = 1 /\ (forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1)) -> hl_real_le (hl_inf s) b = 1.
Admitted.

// HOL Light: sets.ml:4987 / REAL_LE_INF_EQ   (hash md5:ed8be3ed84740a24e9d145e634f1d5fc)
Theorem hlt_REAL_LE_INF_EQ : forall s :e 2 :^: R, forall y :e R, ~ s = hl_EMPTY R /\ (exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> (hl_real_le y (hl_inf s) = 1 <-> forall x :e R, hl_IN R x s = 1 -> hl_real_le y x = 1).
Admitted.

// HOL Light: sets.ml:4992 / INF_UNIQUE   (hash md5:247255fcd2875b317cc7745c4a435baf)
Theorem hlt_INF_UNIQUE : forall s :e 2 :^: R, forall b :e R, (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le c x = 1) <-> hl_real_le c b = 1) -> hl_inf s = b.
Admitted.

// HOL Light: sets.ml:4997 / INF_UNION   (hash md5:5c4800110aae7c1f2a99d17686a8499a)
Theorem hlt_INF_UNION : forall s t :e 2 :^: R, ~ s = hl_EMPTY R /\ (~ t = hl_EMPTY R /\ ((exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) /\ (exists c :e R, forall x :e R, hl_IN R x t = 1 -> hl_real_le c x = 1))) -> hl_inf (hl_UNION R s t) = hl_real_min (hl_inf s) (hl_inf t).
Admitted.

// HOL Light: sets.ml:5005 / INF_LE_ELEMENT   (hash md5:c2dd8396212ad2073dabf039cd036967)
Theorem hlt_INF_LE_ELEMENT : forall s :e 2 :^: R, forall a :e R, (exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) /\ hl_IN R a s = 1 -> hl_real_le (hl_inf s) a = 1.
Admitted.

// HOL Light: sets.ml:5009 / INF_APPROACH   (hash md5:b7d88063914643b0f366c50922013018)
Theorem hlt_INF_APPROACH : forall s :e 2 :^: R, forall c :e R, ~ s = hl_EMPTY R /\ ((exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) /\ hl_real_lt (hl_inf s) c = 1) -> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt x c = 1.
Admitted.

// HOL Light: sets.ml:5020 / REAL_MIN_INF   (hash md5:368ecdd89c374a6669d966adfb89650d)
Theorem hlt_REAL_MIN_INF : forall x y :e R, hl_real_min x y = hl_inf (hl_INSERT R x (hl_INSERT R y (hl_EMPTY R))).
Admitted.

// HOL Light: sets.ml:5033 / has_inf   (hash md5:68d83551dfae810d4147394a0c56b070)
Theorem hlt_has_inf : forall s :e 2 :^: R, forall b :e R, hl_has_inf s b = 1 <-> forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le c x = 1) <-> hl_real_le c b = 1.
Admitted.

// HOL Light: sets.ml:5036 / has_sup   (hash md5:bc2f3d7fe3f392adb52e953e810405f7)
Theorem hlt_has_sup : forall s :e 2 :^: R, forall b :e R, hl_has_sup s b = 1 <-> forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x c = 1) <-> hl_real_le b c = 1.
Admitted.

// HOL Light: sets.ml:5039 / HAS_INF_LBOUND   (hash md5:1081abf8b09009eeacd37cc777b0eeb9)
Theorem hlt_HAS_INF_LBOUND : forall s :e 2 :^: R, forall b x :e R, hl_has_inf s b = 1 /\ hl_IN R x s = 1 -> hl_real_le b x = 1.
Admitted.

// HOL Light: sets.ml:5043 / HAS_SUP_UBOUND   (hash md5:d438ac14503aef868eba9703a2579b74)
Theorem hlt_HAS_SUP_UBOUND : forall s :e 2 :^: R, forall b x :e R, hl_has_sup s b = 1 /\ hl_IN R x s = 1 -> hl_real_le x b = 1.
Admitted.

// HOL Light: sets.ml:5047 / HAS_INF_INF   (hash md5:1c64642388ebba4504d456217e907070)
Theorem hlt_HAS_INF_INF : forall s :e 2 :^: R, forall l :e R, hl_has_inf s l = 1 <-> ~ s = hl_EMPTY R /\ ((exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) /\ hl_inf s = l).
Admitted.

// HOL Light: sets.ml:5068 / HAS_SUP_SUP   (hash md5:459b6f6f577bc3b9fe83a23ffbe9d2e8)
Theorem hlt_HAS_SUP_SUP : forall s :e 2 :^: R, forall l :e R, hl_has_sup s l = 1 <-> ~ s = hl_EMPTY R /\ ((exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) /\ hl_sup s = l).
Admitted.

// HOL Light: sets.ml:5090 / INF_EXISTS   (hash md5:bd7bd3e9bb12afb55e90be0fc108e813)
Theorem hlt_INF_EXISTS : forall s :e 2 :^: R, (exists l :e R, hl_has_inf s l = 1) <-> ~ s = hl_EMPTY R /\ exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1.
Admitted.

// HOL Light: sets.ml:5094 / SUP_EXISTS   (hash md5:f3174497b528f74abb3887fe2dbbad3f)
Theorem hlt_SUP_EXISTS : forall s :e 2 :^: R, (exists l :e R, hl_has_sup s l = 1) <-> ~ s = hl_EMPTY R /\ exists b :e R, forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1.
Admitted.

// HOL Light: sets.ml:5098 / HAS_INF_APPROACH   (hash md5:14fefa5986aa8d45c692dc5e924c8ce7)
Theorem hlt_HAS_INF_APPROACH : forall s :e 2 :^: R, forall l c :e R, hl_has_inf s l = 1 /\ hl_real_lt l c = 1 -> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt x c = 1.
Admitted.

// HOL Light: sets.ml:5102 / HAS_SUP_APPROACH   (hash md5:955af142bb6cfde88e2454e3da699c72)
Theorem hlt_HAS_SUP_APPROACH : forall s :e 2 :^: R, forall l c :e R, hl_has_sup s l = 1 /\ hl_real_lt c l = 1 -> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt c x = 1.
Admitted.

// HOL Light: sets.ml:5106 / HAS_INF   (hash md5:2967fd2a3d5b6d3144a3cf2eabbc0d57)
Theorem hlt_HAS_INF : forall s :e 2 :^: R, forall l :e R, hl_has_inf s l = 1 <-> ~ s = hl_EMPTY R /\ ((forall x :e R, hl_IN R x s = 1 -> hl_real_le l x = 1) /\ forall c :e R, hl_real_lt l c = 1 -> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt x c = 1).
Admitted.

// HOL Light: sets.ml:5127 / HAS_SUP   (hash md5:fa9a2c21d8a4116d91083a98dd7b9cbc)
Theorem hlt_HAS_SUP : forall s :e 2 :^: R, forall l :e R, hl_has_sup s l = 1 <-> ~ s = hl_EMPTY R /\ ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x l = 1) /\ forall c :e R, hl_real_lt c l = 1 -> exists x :e R, hl_IN R x s = 1 /\ hl_real_lt c x = 1).
Admitted.

// HOL Light: sets.ml:5148 / HAS_INF_LE   (hash md5:475c11761ab3ef01af887ece716ce7e7)
Theorem hlt_HAS_INF_LE : forall s t :e 2 :^: R, forall l m :e R, hl_has_inf s l = 1 /\ (hl_has_inf t m = 1 /\ (forall y :e R, hl_IN R y t = 1 -> exists x :e R, hl_IN R x s = 1 /\ hl_real_le x y = 1)) -> hl_real_le l m = 1.
Admitted.

// HOL Light: sets.ml:5165 / HAS_SUP_LE   (hash md5:a12f7df8a161719c75525819880d865e)
Theorem hlt_HAS_SUP_LE : forall s t :e 2 :^: R, forall l m :e R, hl_has_sup s l = 1 /\ (hl_has_sup t m = 1 /\ (forall y :e R, hl_IN R y t = 1 -> exists x :e R, hl_IN R x s = 1 /\ hl_real_le y x = 1)) -> hl_real_le m l = 1.
Admitted.

