// hol2mg literal statements (private): shard class of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: class.ml:16 / ETA_AX   (hash md5:e20b11b91c226ce7c7fa8169d22798c6)
Theorem hlt_ETA_AX : forall A B:set, A <> Empty -> B <> Empty -> forall t :e B :^: A, (fun x :e A => t x) = t.
Admitted.

// HOL Light: class.ml:30 / EQ_EXT   (hash md5:74f6b9b467171dc186a2df9978244b58)
Theorem hlt_EQ_EXT : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, (forall x :e A, f x = g x) -> f = g.
Admitted.

// HOL Light: class.ml:35 / FUN_EQ_THM   (hash md5:f5a914b29ff3ffb2975dadfdab697414)
Theorem hlt_FUN_EQ_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, f = g <-> forall x :e A, f x = g x.
Admitted.

// HOL Light: class.ml:53 / SELECT_AX   (hash md5:4e877f34f5dc642b1b50fc1ef7367fcd)
Theorem hlt_SELECT_AX : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall x :e A, P x = 1 -> P (hl_select A P) = 1.
Admitted.

// HOL Light: class.ml:60 / EXISTS_THM   (hash md5:a89cb4aa5c0e6a37ab368e12856a3e84)
Theorem hlt_EXISTS_THM : forall A:set, A <> Empty -> hl_exists A = fun P :e 2 :^: A => P (hl_select A P).
Admitted.

// HOL Light: class.ml:102 / SELECT_REFL   (hash md5:5d89ddfdd48e07285ef4152ba2f87957)
Theorem hlt_SELECT_REFL : forall A:set, A <> Empty -> forall x :e A, hl_select A (fun y :e A => if y = x then 1 else 0) = x.
Admitted.

// HOL Light: class.ml:107 / SELECT_UNIQUE   (hash md5:a3ab62395ef165d333cfc84d6aa0b583)
Theorem hlt_SELECT_UNIQUE : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall x :e A, (forall y :e A, P y = 1 <-> y = x) -> hl_select A P = x.
Admitted.

// HOL Light: class.ml:140 / EXCLUDED_MIDDLE   (hash md5:24badd25546afe87d42d86a1339bd39d)
Theorem hlt_EXCLUDED_MIDDLE : forall t :e 2, t = 1 \/ ~ t = 1.
Admitted.

// HOL Light: class.ml:154 / BOOL_CASES_AX   (hash md5:2d73cf3d9340a07496060ebb19e89f36)
Theorem hlt_BOOL_CASES_AX : forall t :e 2, (t = 1 <-> True) \/ (t = 1 <-> False).
Admitted.

// HOL Light: class.ml:185 / DE_MORGAN_THM   (hash md5:8b8cb517996be6435d3c18d9fc7bbe23)
Theorem hlt_DE_MORGAN_THM : forall t1 t2 :e 2, (~ (t1 = 1 /\ t2 = 1) <-> ~ t1 = 1 \/ ~ t2 = 1) /\ (~ (t1 = 1 \/ t2 = 1) <-> ~ t1 = 1 /\ ~ t2 = 1).
Admitted.

// HOL Light: class.ml:188 / NOT_CLAUSES   (hash md5:3b3c3e9efdbcbcbfc4b0cad619ffceaa)
Theorem hlt_NOT_CLAUSES : (forall t :e 2, ~ ~ t = 1 <-> t = 1) /\ ((~ True <-> False) /\ (~ False <-> True)).
Admitted.

// HOL Light: class.ml:191 / NOT_IMP   (hash md5:045dca8754fe888ab0bd299f74e2ef6c)
Theorem hlt_NOT_IMP : forall t1 t2 :e 2, ~ (t1 = 1 -> t2 = 1) <-> t1 = 1 /\ ~ t2 = 1.
Admitted.

// HOL Light: class.ml:193 / CONTRAPOS_THM   (hash md5:57fb40ff0c7c85aa21a80031583ca69d)
Theorem hlt_CONTRAPOS_THM : forall t1 t2 :e 2, ~ t1 = 1 -> ~ t2 = 1 <-> t2 = 1 -> t1 = 1.
Admitted.

// HOL Light: class.ml:233 / NOT_EXISTS_THM   (hash md5:bd9e48e90e3a55c73b430ea13ad14537)
Theorem hlt_NOT_EXISTS_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, ~ (exists x :e A, P x = 1) <-> forall x :e A, ~ P x = 1.
Admitted.

// HOL Light: class.ml:240 / EXISTS_NOT_THM   (hash md5:6cc8add8ef8d6ef2111d93d16002aab6)
Theorem hlt_EXISTS_NOT_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, (exists x :e A, ~ P x = 1) <-> ~ forall x :e A, P x = 1.
Admitted.

// HOL Light: class.ml:245 / NOT_FORALL_THM   (hash md5:2ea21d2081aa28f6bd8bb8c2f039cb31)
Theorem hlt_NOT_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, ~ (forall x :e A, P x = 1) <-> exists x :e A, ~ P x = 1.
Admitted.

// HOL Light: class.ml:249 / FORALL_NOT_THM   (hash md5:46d579bbfb2d94977204d7499747c02c)
Theorem hlt_FORALL_NOT_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, (forall x :e A, ~ P x = 1) <-> ~ exists x :e A, P x = 1.
Admitted.

// HOL Light: class.ml:257 / FORALL_BOOL_THM   (hash md5:b3f414a38201a0bff3f5497ef007dd44)
Theorem hlt_FORALL_BOOL_THM : forall P :e 2 :^: 2, (forall b :e 2, P b = 1) <-> P (if True then 1 else 0) = 1 /\ P (if False then 1 else 0) = 1.
Admitted.

// HOL Light: class.ml:262 / EXISTS_BOOL_THM   (hash md5:1f3fc91c253d2d50983241538709f00e)
Theorem hlt_EXISTS_BOOL_THM : forall P :e 2 :^: 2, (exists b :e 2, P b = 1) <-> P (if True then 1 else 0) = 1 \/ P (if False then 1 else 0) = 1.
Admitted.

// HOL Light: class.ml:271 / LEFT_FORALL_OR_THM   (hash md5:361ce6f536bbd2a6777e5631d7f4d876)
Theorem hlt_LEFT_FORALL_OR_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1 \/ Q = 1) <-> (forall x :e A, P x = 1) \/ Q = 1.
Admitted.

// HOL Light: class.ml:276 / RIGHT_FORALL_OR_THM   (hash md5:a34c284d93a460be6f13fd44e1786f1d)
Theorem hlt_RIGHT_FORALL_OR_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, (forall x :e A, P = 1 \/ Q x = 1) <-> P = 1 \/ forall x :e A, Q x = 1.
Admitted.

// HOL Light: class.ml:281 / LEFT_OR_FORALL_THM   (hash md5:0e9f71044e0d8bff7a2cdc76ae4f2ec0)
Theorem hlt_LEFT_OR_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1) \/ Q = 1 <-> forall x :e A, P x = 1 \/ Q = 1.
Admitted.

// HOL Light: class.ml:285 / RIGHT_OR_FORALL_THM   (hash md5:36d26a3e66649cdb26b042df825aeb45)
Theorem hlt_RIGHT_OR_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 \/ (forall x :e A, Q x = 1) <-> forall x :e A, P = 1 \/ Q x = 1.
Admitted.

// HOL Light: class.ml:293 / LEFT_IMP_FORALL_THM   (hash md5:6cc6ae95cc14ae2b6adbbb7d40b439d6)
Theorem hlt_LEFT_IMP_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1) -> Q = 1 <-> exists x :e A, P x = 1 -> Q = 1.
Admitted.

// HOL Light: class.ml:298 / LEFT_EXISTS_IMP_THM   (hash md5:4592568a3f4db26ed6560bf0037fc48a)
Theorem hlt_LEFT_EXISTS_IMP_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (exists x :e A, P x = 1 -> Q = 1) <-> (forall x :e A, P x = 1) -> Q = 1.
Admitted.

// HOL Light: class.ml:302 / RIGHT_IMP_EXISTS_THM   (hash md5:ae462839da6097103bc5fa0e21a1130c)
Theorem hlt_RIGHT_IMP_EXISTS_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 -> (exists x :e A, Q x = 1) <-> exists x :e A, P = 1 -> Q x = 1.
Admitted.

// HOL Light: class.ml:307 / RIGHT_EXISTS_IMP_THM   (hash md5:61b7e26ac74778c0e8ccdd9a6727daaa)
Theorem hlt_RIGHT_EXISTS_IMP_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, (exists x :e A, P = 1 -> Q x = 1) <-> P = 1 -> exists x :e A, Q x = 1.
Admitted.

// HOL Light: class.ml:315 / COND_DEF   (hash md5:4b7321c4b0ce36e9d6ae573b04198d8e)
Theorem hlt_COND_DEF : forall A:set, A <> Empty -> hl_COND A = fun t :e 2 => fun t1 :e A => fun t2 :e A => hl_select A (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0).
Admitted.

// HOL Light: class.ml:319 / COND_CLAUSES   (hash md5:0917c6f97e746313156fb948ae4a0a66)
Theorem hlt_COND_CLAUSES : forall A:set, A <> Empty -> forall t1 t2 :e A, hl_COND A (if True then 1 else 0) t1 t2 = t1 /\ hl_COND A (if False then 1 else 0) t1 t2 = t2.
Admitted.

// HOL Light: class.ml:342 / COND_EXPAND   (hash md5:a0ffc58d882ed08bb9ceb976d7d87a07)
Theorem hlt_COND_EXPAND : forall b t1 t2 :e 2, b = 1 /\ t1 = 1 \/ ~ b = 1 /\ t2 = 1 <-> (~ b = 1 \/ t1 = 1) /\ (b = 1 \/ t2 = 1).
Admitted.

// HOL Light: class.ml:347 / COND_ID   (hash md5:6cd454b7a60ebc592010064af1887257)
Theorem hlt_COND_ID : forall A:set, A <> Empty -> forall b :e 2, forall t :e A, hl_COND A b t t = t.
Admitted.

// HOL Light: class.ml:351 / COND_RAND   (hash md5:abd733d2ca6bac4ed355d508eb6d38ff)
Theorem hlt_COND_RAND : forall A B:set, A <> Empty -> B <> Empty -> forall b :e 2, forall f :e B :^: A, forall x y :e A, f (hl_COND A b x y) = hl_COND B b (f x) (f y).
Admitted.

// HOL Light: class.ml:355 / COND_RATOR   (hash md5:daf8a0139729304ef354db21fe53723a)
Theorem hlt_COND_RATOR : forall A B:set, A <> Empty -> B <> Empty -> forall b :e 2, forall f g :e B :^: A, forall x :e A, hl_COND (B :^: A) b f g x = hl_COND B b (f x) (g x).
Admitted.

// HOL Light: class.ml:359 / COND_ABS   (hash md5:1ff110853c4fd6318c48220aea045eda)
Theorem hlt_COND_ABS : forall A B:set, A <> Empty -> B <> Empty -> forall b :e 2, forall f g :e B :^: A, (fun x :e A => hl_COND B b (f x) (g x)) = hl_COND (B :^: A) b f g.
Admitted.

// HOL Light: class.ml:363 / COND_SWAP   (hash md5:517d4149a3b1212d2fd976fea9192f45)
Theorem hlt_COND_SWAP : forall A:set, A <> Empty -> forall p :e 2, forall x y :e A, hl_COND A (if ~ p = 1 then 1 else 0) x y = hl_COND A p y x.
Admitted.

// HOL Light: class.ml:388 / MONO_COND   (hash md5:3bf95bbe2ccb554b6786e9c177f87e70)
Theorem hlt_MONO_COND : forall A B C D b :e 2, (A = 1 -> B = 1) /\ (C = 1 -> D = 1) -> b = 1 /\ A = 1 \/ ~ b = 1 /\ C = 1 -> b = 1 /\ B = 1 \/ ~ b = 1 /\ D = 1.
Admitted.

// HOL Light: class.ml:399 / COND_ELIM_THM   (hash md5:a175440e00beddf5149a7ff13668add1)
Theorem hlt_COND_ELIM_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall c :e 2, forall x y :e A, P (hl_COND A c x y) = 1 <-> (c = 1 -> P x = 1) /\ (~ c = 1 -> P y = 1).
Admitted.

// HOL Light: class.ml:418 / SKOLEM_THM   (hash md5:7032340324a1a8ad7909cb040961f738)
Theorem hlt_SKOLEM_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (forall x :e A, exists y :e B, P x y = 1) <-> exists y :e B :^: A, forall x :e A, P x (y x) = 1.
Admitted.

// HOL Light: class.ml:426 / SKOLEM_THM_GEN   (hash md5:5565ee13d340ccbd045d169fd93d59bc)
Theorem hlt_SKOLEM_THM_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: A, forall R1 :e 2 :^: B :^: A, (forall x :e A, P x = 1 -> exists y :e B, R1 x y = 1) <-> exists f :e B :^: A, forall x :e A, P x = 1 -> R1 x (f x) = 1.
Admitted.

// HOL Light: class.ml:434 / UNIQUE_SKOLEM_ALT   (hash md5:a0be667b32ad906a5f23194afc353c19)
Theorem hlt_UNIQUE_SKOLEM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (forall x :e A, hl_exists_unique B (fun y :e B => P x y) = 1) <-> exists f :e B :^: A, forall x :e A, forall y :e B, P x y = 1 <-> f x = y.
Admitted.

// HOL Light: class.ml:442 / UNIQUE_SKOLEM_THM   (hash md5:e8db4e1e4a06d49a8fc6b9eaee700c91)
Theorem hlt_UNIQUE_SKOLEM_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (forall x :e A, hl_exists_unique B (fun y :e B => P x y) = 1) <-> hl_exists_unique (B :^: A) (fun f :e B :^: A => if forall x :e A, P x (f x) = 1 then 1 else 0) = 1.
Admitted.

// HOL Light: class.ml:479 / bool_INDUCT   (hash md5:2768244a6fdb07c6d72a47218fa76a7f)
Theorem hlt_bool_INDUCT : forall P :e 2 :^: 2, P (if False then 1 else 0) = 1 /\ P (if True then 1 else 0) = 1 -> forall x :e 2, P x = 1.
Admitted.

// HOL Light: class.ml:484 / bool_RECURSION   (hash md5:69823fe554102974b1cd27dcd768bccf)
Theorem hlt_bool_RECURSION : forall A:set, A <> Empty -> forall a b :e A, exists f :e A :^: 2, f (if False then 1 else 0) = a /\ f (if True then 1 else 0) = b.
Admitted.

