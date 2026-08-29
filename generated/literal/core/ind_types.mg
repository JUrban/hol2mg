// hol2mg literal statements (private): shard ind_types of profile core.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: ind_types.ml:16 / INJ_INVERSE2   (hash md5:678f254c19619e0a438dc71df4f649ad)
Theorem hlt_INJ_INVERSE2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e C :^: B :^: A, (forall x1 :e A, forall y1 :e B, forall x2 :e A, forall y2 :e B, P x1 y1 = P x2 y2 <-> x1 = x2 /\ y1 = y2) -> exists X :e A :^: C, exists Y :e B :^: C, forall x :e A, forall y :e B, X (P x y) = x /\ Y (P x y) = y.
Admitted.

// HOL Light: ind_types.ml:32 / NUMPAIR   (hash md5:59bba51f3151a48a2d1f890abb13f866)
Theorem hlt_NUMPAIR : forall x y :e omega, hl_NUMPAIR x y = hl_mul (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) x) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) y) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: ind_types.ml:35 / NUMPAIR_INJ_LEMMA   (hash md5:a87fbb431f402b48a6aedbfabad5f9b5)
Theorem hlt_NUMPAIR_INJ_LEMMA : forall x1 y1 x2 y2 :e omega, hl_NUMPAIR x1 y1 = hl_NUMPAIR x2 y2 -> x1 = x2.
Admitted.

// HOL Light: ind_types.ml:43 / NUMPAIR_INJ   (hash md5:583a29c12e2073fc29bb9124a2b89b7e)
Theorem hlt_NUMPAIR_INJ : forall x1 y1 x2 y2 :e omega, hl_NUMPAIR x1 y1 = hl_NUMPAIR x2 y2 <-> x1 = x2 /\ y1 = y2.
Admitted.

// HOL Light: ind_types.ml:50 / NUMPAIR_DEST   (hash md5:d62bd4a7ba626c24538e35c7b1a17730)
Theorem hlt_NUMPAIR_DEST : forall x y :e omega, hl_NUMFST (hl_NUMPAIR x y) = x /\ hl_NUMSND (hl_NUMPAIR x y) = y.
Admitted.

// HOL Light: ind_types.ml:58 / NUMSUM   (hash md5:e7b733acb1df4eec4b9804b0fccfa673)
Theorem hlt_NUMSUM : forall b :e 2, forall x :e omega, hl_NUMSUM b x = hl_COND omega b (hl_SUC (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) x)) (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) x).
Admitted.

// HOL Light: ind_types.ml:61 / NUMSUM_INJ   (hash md5:20b1cddd5e0c25eaa9b875d06d74563d)
Theorem hlt_NUMSUM_INJ : forall b1 :e 2, forall x1 :e omega, forall b2 :e 2, forall x2 :e omega, hl_NUMSUM b1 x1 = hl_NUMSUM b2 x2 <-> (b1 = 1 <-> b2 = 1) /\ x1 = x2.
Admitted.

// HOL Light: ind_types.ml:69 / NUMSUM_DEST   (hash md5:6bd64c13fbc76b5ac2218a7edf569d7c)
Theorem hlt_NUMSUM_DEST : forall x :e 2, forall y :e omega, (hl_NUMLEFT (hl_NUMSUM x y) = 1 <-> x = 1) /\ hl_NUMRIGHT (hl_NUMSUM x y) = y.
Admitted.

// HOL Light: ind_types.ml:77 / INJN   (hash md5:1ef0c951a5818331eb5e71b34b8cf6e7)
Theorem hlt_INJN : forall A:set, A <> Empty -> forall m :e omega, hl_INJN A m = fun n :e omega => fun a :e A => if n = m then 1 else 0.
Admitted.

// HOL Light: ind_types.ml:80 / INJN_INJ   (hash md5:f5118a7286890b87ac2818837931dc91)
Theorem hlt_INJN_INJ : forall A:set, A <> Empty -> forall n1 n2 :e omega, hl_INJN A n1 = hl_INJN A n2 <-> n1 = n2.
Admitted.

// HOL Light: ind_types.ml:90 / INJA   (hash md5:99911194bc4ab3f851caad0a42c3634f)
Theorem hlt_INJA : forall A:set, A <> Empty -> forall a :e A, hl_INJA A a = fun n :e omega => fun b :e A => if b = a then 1 else 0.
Admitted.

// HOL Light: ind_types.ml:93 / INJA_INJ   (hash md5:3af13759a862813f9d3ba1a2d2ad8696)
Theorem hlt_INJA_INJ : forall A:set, A <> Empty -> forall a1 a2 :e A, hl_INJA A a1 = hl_INJA A a2 <-> a1 = a2.
Admitted.

// HOL Light: ind_types.ml:103 / INJF   (hash md5:2d3670275e7dddd5a1541e7b37e13273)
Theorem hlt_INJF : forall A:set, A <> Empty -> forall f :e 2 :^: A :^: omega :^: omega, hl_INJF A f = fun n :e omega => f (hl_NUMFST n) (hl_NUMSND n).
Admitted.

// HOL Light: ind_types.ml:106 / INJF_INJ   (hash md5:a2450be81bdbfecc3cddb214159b718e)
Theorem hlt_INJF_INJ : forall A:set, A <> Empty -> forall f1 f2 :e 2 :^: A :^: omega :^: omega, hl_INJF A f1 = hl_INJF A f2 <-> f1 = f2.
Admitted.

// HOL Light: ind_types.ml:119 / INJP   (hash md5:5ce0ce9cc0edd8a069abdfd22cd2eafe)
Theorem hlt_INJP : forall A:set, A <> Empty -> forall f1 f2 :e 2 :^: A :^: omega, hl_INJP A f1 f2 = fun n :e omega => fun a :e A => if hl_NUMLEFT n = 1 /\ f1 (hl_NUMRIGHT n) a = 1 \/ ~ hl_NUMLEFT n = 1 /\ f2 (hl_NUMRIGHT n) a = 1 then 1 else 0.
Admitted.

// HOL Light: ind_types.ml:123 / INJP_INJ   (hash md5:44cdcb28da44b8f006e67870af73581f)
Theorem hlt_INJP_INJ : forall A:set, A <> Empty -> forall f1 f1' f2 f2' :e 2 :^: A :^: omega, hl_INJP A f1 f2 = hl_INJP A f1' f2' <-> f1 = f1' /\ f2 = f2'.
Admitted.

// HOL Light: ind_types.ml:137 / ZCONSTR   (hash md5:bb3f692f617822848c3c53061b905d38)
Theorem hlt_ZCONSTR : forall A:set, A <> Empty -> forall c :e omega, forall i :e A, forall r :e 2 :^: A :^: omega :^: omega, hl_ZCONSTR A c i r = hl_INJP A (hl_INJN A (hl_SUC c)) (hl_INJP A (hl_INJA A i) (hl_INJF A r)).
Admitted.

// HOL Light: ind_types.ml:141 / ZBOT   (hash md5:c4e939ccfc0bd7c4281561dcffb393ac)
Theorem hlt_ZBOT : forall A:set, A <> Empty -> hl_ZBOT A = hl_INJP A (hl_INJN A (hl_NUMERAL hl_zero)) (hl_select (2 :^: A :^: omega) (fun z :e 2 :^: A :^: omega => if True then 1 else 0)).
Admitted.

// HOL Light: ind_types.ml:144 / ZCONSTR_ZBOT   (hash md5:09d36cb701b002e5efb236b07486d24e)
Theorem hlt_ZCONSTR_ZBOT : forall A:set, A <> Empty -> forall c :e omega, forall i :e A, forall r :e 2 :^: A :^: omega :^: omega, ~ hl_ZCONSTR A c i r = hl_ZBOT A.
Admitted.

// HOL Light: ind_types.ml:152 / ZRECSPACE_CASES   (hash md5:665a32fa47d9986799aa5aea804e1d18)
Theorem hlt_ZRECSPACE_CASES : forall A:set, A <> Empty -> forall a :e 2 :^: A :^: omega, hl_ZRECSPACE A a = 1 <-> a = hl_ZBOT A \/ exists c :e omega, exists i :e A, exists r :e 2 :^: A :^: omega :^: omega, a = hl_ZCONSTR A c i r /\ forall n :e omega, hl_ZRECSPACE A (r n) = 1.
Admitted.

// HOL Light: ind_types.ml:152 / ZRECSPACE_INDUCT   (hash md5:023b1ff5a6966fcd6776d7ca8af8b5b4)
Theorem hlt_ZRECSPACE_INDUCT : forall A:set, A <> Empty -> forall ZRECSPACE' :e 2 :^: (2 :^: A :^: omega), ZRECSPACE' (hl_ZBOT A) = 1 /\ (forall c :e omega, forall i :e A, forall r :e 2 :^: A :^: omega :^: omega, (forall n :e omega, ZRECSPACE' (r n) = 1) -> ZRECSPACE' (hl_ZCONSTR A c i r) = 1) -> forall a :e 2 :^: A :^: omega, hl_ZRECSPACE A a = 1 -> ZRECSPACE' a = 1.
Admitted.

// HOL Light: ind_types.ml:152 / ZRECSPACE_RULES   (hash md5:aea00ec6313df2c2376b0aa0b7da67d5)
Theorem hlt_ZRECSPACE_RULES : forall A:set, A <> Empty -> hl_ZRECSPACE A (hl_ZBOT A) = 1 /\ forall c :e omega, forall i :e A, forall r :e 2 :^: A :^: omega :^: omega, (forall n :e omega, hl_ZRECSPACE A (r n) = 1) -> hl_ZRECSPACE A (hl_ZCONSTR A c i r) = 1.
Admitted.

// HOL Light: ind_types.ml:285 / FCONS   (hash md5:060c513ba4302e470698772c90fc227a)
Theorem hlt_FCONS : forall A:set, A <> Empty -> (forall a :e A, forall f :e A :^: omega, hl_FCONS A a f (hl_NUMERAL hl_zero) = a) /\ forall a :e A, forall f :e A :^: omega, forall n :e omega, hl_FCONS A a f (hl_SUC n) = f n.
Admitted.

// HOL Light: ind_types.ml:289 / FCONS_UNDO   (hash md5:92616e8eb75b38dbb0ecc710f3336b4f)
Theorem hlt_FCONS_UNDO : forall A:set, A <> Empty -> forall f :e A :^: omega, f = hl_FCONS A (f (hl_NUMERAL hl_zero)) (hl_o omega A omega f hl_SUC).
Admitted.

// HOL Light: ind_types.ml:294 / FNIL   (hash md5:7293877a20b0f2459e27ba514f32a69f)
Theorem hlt_FNIL : forall A:set, A <> Empty -> forall n :e omega, hl_FNIL A n = hl_select A (fun x :e A => if True then 1 else 0).
Admitted.

// HOL Light: ind_types.ml:768 / sum_INDUCT   (hash md5:de2725f07074fc50f47627403a63ffd9)
Theorem hlt_sum_INDUCT : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :+: B), (forall a :e A, P (hl_INL A B a) = 1) /\ (forall a :e B, P (hl_INR B A a) = 1) -> forall x :e A :+: B, P x = 1.
Admitted.

// HOL Light: ind_types.ml:768 / sum_RECURSION   (hash md5:a693dd783d6aeace677183d17ed78fbe)
Theorem hlt_sum_RECURSION : forall A B Z:set, A <> Empty -> B <> Empty -> Z <> Empty -> forall INL' :e Z :^: A, forall INR' :e Z :^: B, exists fn :e Z :^: (A :+: B), (forall a :e A, fn (hl_INL A B a) = INL' a) /\ forall a :e B, fn (hl_INR B A a) = INR' a.
Admitted.

// HOL Light: ind_types.ml:771 / OUTL   (hash md5:c31d1bada798b3a79e21ff4f54d61c5b)
Theorem hlt_OUTL_thm : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, hl_OUTL A B (hl_INL A B x) = x.
Admitted.

// HOL Light: ind_types.ml:774 / OUTR   (hash md5:7d0e05a613fcdc794c952d7ab6306a50)
Theorem hlt_OUTR_thm : forall A B:set, A <> Empty -> B <> Empty -> forall y :e B, hl_OUTR A B (hl_INR B A y) = y.
Admitted.

// HOL Light: ind_types.ml:881 / option_INDUCT   (hash md5:e4c8e92bde030ec48006c86c6a04e07e)
Theorem hlt_option_INDUCT : forall A:set, A <> Empty -> forall P :e 2 :^: (1 :+: A), P (hl_NONE A) = 1 /\ (forall a :e A, P (hl_SOME A a) = 1) -> forall x :e 1 :+: A, P x = 1.
Admitted.

// HOL Light: ind_types.ml:881 / option_RECURSION   (hash md5:ce31bc473fd7b902c2d8553ec8babc5c)
Theorem hlt_option_RECURSION : forall A Z:set, A <> Empty -> Z <> Empty -> forall NONE' :e Z, forall SOME' :e Z :^: A, exists fn :e Z :^: (1 :+: A), fn (hl_NONE A) = NONE' /\ forall a :e A, fn (hl_SOME A a) = SOME' a.
Admitted.

// HOL Light: ind_types.ml:885 / list_INDUCT   (hash md5:e24a8b3534d12615232f89c947dd6ab3)
Theorem hlt_list_INDUCT : forall A:set, A <> Empty -> forall P :e 2 :^: finseq A, P (hl_NIL A) = 1 /\ (forall a0 :e A, forall a1 :e finseq A, P a1 = 1 -> P (hl_CONS A a0 a1) = 1) -> forall x :e finseq A, P x = 1.
Admitted.

// HOL Light: ind_types.ml:885 / list_RECURSION   (hash md5:21b923915525c3b3ed6c44a773a64671)
Theorem hlt_list_RECURSION : forall A Z:set, A <> Empty -> Z <> Empty -> forall NIL' :e Z, forall CONS' :e Z :^: Z :^: finseq A :^: A, exists fn :e Z :^: finseq A, fn (hl_NIL A) = NIL' /\ forall a0 :e A, forall a1 :e finseq A, fn (hl_CONS A a0 a1) = CONS' a0 a1 (fn a1).
Admitted.

// HOL Light: ind_types.ml:889 / FORALL_OPTION_THM   (hash md5:938df231e9f8dddad4567e29e4b8be69)
Theorem hlt_FORALL_OPTION_THM : forall A:set, A <> Empty -> forall P :e 2 :^: (1 :+: A), (forall x :e 1 :+: A, P x = 1) <-> P (hl_NONE A) = 1 /\ forall a :e A, P (hl_SOME A a) = 1.
Admitted.

// HOL Light: ind_types.ml:893 / EXISTS_OPTION_THM   (hash md5:84de9af6ea7f336b2eabd2fa96a39ccc)
Theorem hlt_EXISTS_OPTION_THM : forall A:set, A <> Empty -> forall P :e 2 :^: (1 :+: A), (exists x :e 1 :+: A, P x = 1) <-> P (hl_NONE A) = 1 \/ exists a :e A, P (hl_SOME A a) = 1.
Admitted.

// HOL Light: ind_types.ml:1049 / option_DISTINCT   (hash md5:e7925affd10224458b2c0632786b20c3)
Theorem hlt_option_DISTINCT : forall A:set, A <> Empty -> forall a :e A, ~ hl_SOME A a = hl_NONE A.
Admitted.

// HOL Light: ind_types.ml:1053 / option_INJ   (hash md5:4b1c51697077e7e6230974a578bf806c)
Theorem hlt_option_INJ : forall A:set, A <> Empty -> forall a b :e A, hl_SOME A a = hl_SOME A b <-> a = b.
Admitted.

// HOL Light: ind_types.ml:1061 / ISO   (hash md5:3ba2a1ebc7dc10f5cd16b4b8c40e2eb7)
Theorem hlt_ISO : forall A B:set, A <> Empty -> B <> Empty -> forall g :e A :^: B, forall f :e B :^: A, hl_ISO A B f g = 1 <-> (forall x :e B, f (g x) = x) /\ forall y :e A, g (f y) = y.
Admitted.

// HOL Light: ind_types.ml:1064 / ISO_REFL   (hash md5:a011c509c7618efcc0a361277975e422)
Theorem hlt_ISO_REFL : forall A:set, A <> Empty -> hl_ISO A A (fun x :e A => x) (fun x :e A => x) = 1.
Admitted.

// HOL Light: ind_types.ml:1068 / ISO_FUN   (hash md5:a2a618441e3e25283a31bd76d0349c20)
Theorem hlt_ISO_FUN : forall A A_ B B_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> forall f :e A_ :^: A, forall f' :e A :^: A_, forall g :e B_ :^: B, forall g' :e B :^: B_, hl_ISO A A_ f f' = 1 /\ hl_ISO B B_ g g' = 1 -> hl_ISO (B :^: A) (B_ :^: A_) (fun h :e B :^: A => fun a' :e A_ => g (h (f' a'))) (fun h :e B_ :^: A_ => fun a :e A => g' (h (f a))) = 1.
Admitted.

// HOL Light: ind_types.ml:1073 / ISO_USAGE   (hash md5:ae77431c1897fb97fcc1009b505272ff)
Theorem hlt_ISO_USAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e A :^: B, hl_ISO A B f g = 1 -> (forall P :e 2 :^: A, (forall x :e A, P x = 1) <-> forall x :e B, P (g x) = 1) /\ ((forall P :e 2 :^: A, (exists x :e A, P x = 1) <-> exists x :e B, P (g x) = 1) /\ forall a :e A, forall b :e B, a = g b <-> f a = b).
Admitted.

