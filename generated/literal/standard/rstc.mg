// hol2mg literal statements (private): shard rstc of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/rstc.ml:14 / SYM_ALT   (hash md5:a66cd7ee4a285afac484463c22127497)
Theorem hlt_SYM_ALT : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> R1 y x = 1) <-> forall x y :e A, R1 x y = 1 <-> R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:21 / TRANS_ALT   (hash md5:21e53f124e0e31ea49b2c62deca0c258)
Theorem hlt_TRANS_ALT : forall A:set, A <> Empty -> forall R1 S U :e 2 :^: A :^: A, (forall x z :e A, (exists y :e A, R1 x y = 1 /\ S y z = 1) -> U x z = 1) <-> forall x y z :e A, R1 x y = 1 /\ S y z = 1 -> U x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:32 / RC_CASES   (hash md5:5d8563cd52dd513bc837e914ac3281e4)
Theorem hlt_RC_CASES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall a0 a1 :e A, hl_RC A R1 a0 a1 = 1 <-> R1 a0 a1 = 1 \/ a1 = a0.
Admitted.

// HOL Light: Library/rstc.ml:32 / RC_INDUCT   (hash md5:40e1ccfdb269e04f77224444b314546f)
Theorem hlt_RC_INDUCT : forall A:set, A <> Empty -> forall R1 RC' :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> RC' x y = 1) /\ (forall x :e A, RC' x x = 1) -> forall a0 a1 :e A, hl_RC A R1 a0 a1 = 1 -> RC' a0 a1 = 1.
Admitted.

// HOL Light: Library/rstc.ml:32 / RC_RULES   (hash md5:2cc7140d9b17a477dcc5de83107a6cb2)
Theorem hlt_RC_RULES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> hl_RC A R1 x y = 1) /\ forall x :e A, hl_RC A R1 x x = 1.
Admitted.

// HOL Light: Library/rstc.ml:36 / RC_INC   (hash md5:72b93f4758cdbd7f39ee81c083362de7)
Theorem hlt_RC_INC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, R1 x y = 1 -> hl_RC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:40 / RC_REFL   (hash md5:74fd1a2f60985cc6cabade206c1602f3)
Theorem hlt_RC_REFL : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x :e A, hl_RC A R1 x x = 1.
Admitted.

// HOL Light: Library/rstc.ml:44 / RC_EXPLICIT   (hash md5:8bc3eeac5a400e55222b49878bd4bd3a)
Theorem hlt_RC_EXPLICIT : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RC A R1 x y = 1 <-> R1 x y = 1 \/ x = y.
Admitted.

// HOL Light: Library/rstc.ml:48 / RC_MONO   (hash md5:8cf202e294bc870f9622134aa8f8867f)
Theorem hlt_RC_MONO : forall A:set, A <> Empty -> forall R1 S :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> S x y = 1) -> forall x y :e A, hl_RC A R1 x y = 1 -> hl_RC A S x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:54 / RC_CLOSED   (hash md5:0a368f3b3705b3058ad0b065e8d1970a)
Theorem hlt_RC_CLOSED : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RC A R1 = R1 <-> forall x :e A, R1 x x = 1.
Admitted.

// HOL Light: Library/rstc.ml:58 / RC_IDEMP   (hash md5:8a1402f4d3cf223ae77adfd7504dec8d)
Theorem hlt_RC_IDEMP : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RC A (hl_RC A R1) = hl_RC A R1.
Admitted.

// HOL Light: Library/rstc.ml:62 / RC_SYM   (hash md5:185a2c15235788532531e6a683b38289)
Theorem hlt_RC_SYM : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> R1 y x = 1) -> forall x y :e A, hl_RC A R1 x y = 1 -> hl_RC A R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:67 / RC_TRANS   (hash md5:0c6df7cd5187b9c63352e94f16953ec7)
Theorem hlt_RC_TRANS : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y z :e A, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1) -> forall x y z :e A, hl_RC A R1 x y = 1 /\ hl_RC A R1 y z = 1 -> hl_RC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:77 / SC_CASES   (hash md5:13b8a21c677d2cc61f377e8768abc0fe)
Theorem hlt_SC_CASES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall a0 a1 :e A, hl_SC A R1 a0 a1 = 1 <-> R1 a0 a1 = 1 \/ hl_SC A R1 a1 a0 = 1.
Admitted.

// HOL Light: Library/rstc.ml:77 / SC_INDUCT   (hash md5:fcbd4e8670370224f7bda22d88bfef1b)
Theorem hlt_SC_INDUCT : forall A:set, A <> Empty -> forall R1 SC' :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> SC' x y = 1) /\ (forall x y :e A, SC' x y = 1 -> SC' y x = 1) -> forall a0 a1 :e A, hl_SC A R1 a0 a1 = 1 -> SC' a0 a1 = 1.
Admitted.

// HOL Light: Library/rstc.ml:77 / SC_RULES   (hash md5:4ecb4d832440c56c2113c52a0cc542a3)
Theorem hlt_SC_RULES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> hl_SC A R1 x y = 1) /\ forall x y :e A, hl_SC A R1 x y = 1 -> hl_SC A R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:81 / SC_INC   (hash md5:ace4c99ab9204a970ce75da42441ca68)
Theorem hlt_SC_INC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, R1 x y = 1 -> hl_SC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:85 / SC_SYM   (hash md5:53a65c9269680db278ba349a30664187)
Theorem hlt_SC_SYM : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_SC A R1 x y = 1 -> hl_SC A R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:89 / SC_EXPLICIT   (hash md5:c2c7080ee080510f3486cf4b1d04321f)
Theorem hlt_SC_EXPLICIT : forall A:set, A <> Empty -> forall x y :e A, forall R1 :e 2 :^: A :^: A, hl_SC A R1 x y = 1 <-> R1 x y = 1 \/ R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:94 / SC_MONO   (hash md5:8b288da0f04c57f0f8506018bbcbdb34)
Theorem hlt_SC_MONO : forall A:set, A <> Empty -> forall R1 S :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> S x y = 1) -> forall x y :e A, hl_SC A R1 x y = 1 -> hl_SC A S x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:100 / SC_CLOSED   (hash md5:303a973bec97ca0b93b2826d67b0029b)
Theorem hlt_SC_CLOSED : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_SC A R1 = R1 <-> forall x y :e A, R1 x y = 1 -> R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:104 / SC_IDEMP   (hash md5:95512f2d50621a1873fa11e6e5d0857b)
Theorem hlt_SC_IDEMP : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_SC A (hl_SC A R1) = hl_SC A R1.
Admitted.

// HOL Light: Library/rstc.ml:108 / SC_REFL   (hash md5:e6f071708c4e4a2a0faf7b621338ef21)
Theorem hlt_SC_REFL : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x :e A, R1 x x = 1) -> forall x :e A, hl_SC A R1 x x = 1.
Admitted.

// HOL Light: Library/rstc.ml:116 / TC_CASES   (hash md5:d7b232612e4ff55dfc7d7b94ecc1fec2)
Theorem hlt_TC_CASES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall a0 a1 :e A, hl_TC A R1 a0 a1 = 1 <-> R1 a0 a1 = 1 \/ exists y :e A, hl_TC A R1 a0 y = 1 /\ hl_TC A R1 y a1 = 1.
Admitted.

// HOL Light: Library/rstc.ml:116 / TC_INDUCT   (hash md5:8847f42d3de8aab522b39ed3a242f9df)
Theorem hlt_TC_INDUCT : forall A:set, A <> Empty -> forall R1 TC' :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> TC' x y = 1) /\ (forall x y z :e A, TC' x y = 1 /\ TC' y z = 1 -> TC' x z = 1) -> forall a0 a1 :e A, hl_TC A R1 a0 a1 = 1 -> TC' a0 a1 = 1.
Admitted.

// HOL Light: Library/rstc.ml:116 / TC_RULES   (hash md5:d28353e4bac1e7f36789e80ecfbd056d)
Theorem hlt_TC_RULES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> hl_TC A R1 x y = 1) /\ forall x y z :e A, hl_TC A R1 x y = 1 /\ hl_TC A R1 y z = 1 -> hl_TC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:120 / TC_INC   (hash md5:b0c29ffbca32476cc24ed2e3ab10f317)
Theorem hlt_TC_INC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, R1 x y = 1 -> hl_TC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:124 / TC_TRANS   (hash md5:0385133ac1f897e3f325591f5b0f656f)
Theorem hlt_TC_TRANS : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, hl_TC A R1 x y = 1 /\ hl_TC A R1 y z = 1 -> hl_TC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:128 / TC_MONO   (hash md5:94ea01003c49ef03c1479449b4e2d7a1)
Theorem hlt_TC_MONO : forall A:set, A <> Empty -> forall R1 S :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> S x y = 1) -> forall x y :e A, hl_TC A R1 x y = 1 -> hl_TC A S x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:135 / TC_CLOSED   (hash md5:a3bbf53467101d3ad125fd188ce87bae)
Theorem hlt_TC_CLOSED : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_TC A R1 = R1 <-> forall x y z :e A, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:143 / TC_IDEMP   (hash md5:31ee00b0c346c0e3132c7dd23064fa87)
Theorem hlt_TC_IDEMP : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_TC A (hl_TC A R1) = hl_TC A R1.
Admitted.

// HOL Light: Library/rstc.ml:147 / TC_REFL   (hash md5:966a05ce1ad5583564b185d63d1458a5)
Theorem hlt_TC_REFL : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x :e A, R1 x x = 1) -> forall x :e A, hl_TC A R1 x x = 1.
Admitted.

// HOL Light: Library/rstc.ml:151 / TC_SYM   (hash md5:38cf59c7de48e8d925e233b2c677e7ea)
Theorem hlt_TC_SYM : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> R1 y x = 1) -> forall x y :e A, hl_TC A R1 x y = 1 -> hl_TC A R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:160 / RC_SC   (hash md5:3d82245da8e2718b49ae653abc2dd9b1)
Theorem hlt_RC_SC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RC A (hl_SC A R1) = hl_SC A (hl_RC A R1).
Admitted.

// HOL Light: Library/rstc.ml:164 / SC_RC   (hash md5:c17d9e3265f5e0ffbaf1349c5bd1759f)
Theorem hlt_SC_RC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_SC A (hl_RC A R1) = hl_RC A (hl_SC A R1).
Admitted.

// HOL Light: Library/rstc.ml:168 / RC_TC   (hash md5:34161b2d9691ba2c6dd9d6eceb5774c1)
Theorem hlt_RC_TC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RC A (hl_TC A R1) = hl_TC A (hl_RC A R1).
Admitted.

// HOL Light: Library/rstc.ml:174 / TC_RC   (hash md5:6caff19fd0c6a71a54449f7454aa3bd1)
Theorem hlt_TC_RC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_TC A (hl_RC A R1) = hl_RC A (hl_TC A R1).
Admitted.

// HOL Light: Library/rstc.ml:183 / SC_TC   (hash md5:677715b6aeea5d4017ff1b82adadda22)
Theorem hlt_SC_TC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_SC A (hl_TC A R1) x y = 1 -> hl_TC A (hl_SC A R1) x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:191 / TC_TRANS_L   (hash md5:d1042ba62e7a6f7b9684f27c16806af1)
Theorem hlt_TC_TRANS_L : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, hl_TC A R1 x y = 1 /\ R1 y z = 1 -> hl_TC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:195 / TC_TRANS_R   (hash md5:7c9acd2ec03116ca512d53460b9b9bc3)
Theorem hlt_TC_TRANS_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, R1 x y = 1 /\ hl_TC A R1 y z = 1 -> hl_TC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:199 / TC_CASES_L   (hash md5:e1ee41ec9d024888e19698c7dfed41b6)
Theorem hlt_TC_CASES_L : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_TC A R1 x z = 1 <-> R1 x z = 1 \/ exists y :e A, hl_TC A R1 x y = 1 /\ R1 y z = 1.
Admitted.

// HOL Light: Library/rstc.ml:204 / TC_CASES_R   (hash md5:31ef3ea3b97812fa5faceeaffe22934f)
Theorem hlt_TC_CASES_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_TC A R1 x z = 1 <-> R1 x z = 1 \/ exists y :e A, R1 x y = 1 /\ hl_TC A R1 y z = 1.
Admitted.

// HOL Light: Library/rstc.ml:209 / TC_INDUCT_L   (hash md5:8bd81ab14c1b994a1dcdfe86627abc1b)
Theorem hlt_TC_INDUCT_L : forall A:set, A <> Empty -> forall R1 P :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> P x y = 1) /\ (forall x y z :e A, P x y = 1 /\ R1 y z = 1 -> P x z = 1) -> forall x y :e A, hl_TC A R1 x y = 1 -> P x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:218 / TC_INDUCT_R   (hash md5:b908c94e0591608c597be99bdc546837)
Theorem hlt_TC_INDUCT_R : forall A:set, A <> Empty -> forall R1 P :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> P x y = 1) /\ (forall x z :e A, (exists y :e A, R1 x y = 1 /\ P y z = 1) -> P x z = 1) -> forall x y :e A, hl_TC A R1 x y = 1 -> P x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:227 / WF_TC   (hash md5:16e9f71af1bc5771bea82f5e8b29744a)
Theorem hlt_WF_TC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_WF A (hl_TC A R1) = 1 <-> hl_WF A R1 = 1.
Admitted.

// HOL Light: Library/rstc.ml:239 / RSC   (hash md5:59c9e941594a6b4f331f5446c341a818)
Theorem hlt_RSC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RSC A R1 = hl_RC A (hl_SC A R1).
Admitted.

// HOL Light: Library/rstc.ml:242 / RSC_INC   (hash md5:07575b5a00a32daa8fb9e05d5439d9f3)
Theorem hlt_RSC_INC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, R1 x y = 1 -> hl_RSC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:246 / RSC_REFL   (hash md5:05ff88aed0e93b02399a5f118a25035d)
Theorem hlt_RSC_REFL : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x :e A, hl_RSC A R1 x x = 1.
Admitted.

// HOL Light: Library/rstc.ml:250 / RSC_SYM   (hash md5:0714400724adc35225289541d13d6d4a)
Theorem hlt_RSC_SYM : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RSC A R1 x y = 1 -> hl_RSC A R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:254 / RSC_CASES   (hash md5:af93336b544f18b240fd88a8ac9cda8b)
Theorem hlt_RSC_CASES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RSC A R1 x y = 1 <-> x = y \/ (R1 x y = 1 \/ R1 y x = 1).
Admitted.

// HOL Light: Library/rstc.ml:258 / RSC_INDUCT   (hash md5:923abbe5dacebfb448d3cf36f8fdce63)
Theorem hlt_RSC_INDUCT : forall A:set, A <> Empty -> forall R1 P :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> P x y = 1) /\ ((forall x :e A, P x x = 1) /\ (forall x y :e A, P x y = 1 -> P y x = 1)) -> forall x y :e A, hl_RSC A R1 x y = 1 -> P x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:266 / RSC_MONO   (hash md5:6e133abe866fbb50c438f4b1c0ec57e7)
Theorem hlt_RSC_MONO : forall A:set, A <> Empty -> forall R1 S :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> S x y = 1) -> forall x y :e A, hl_RSC A R1 x y = 1 -> hl_RSC A S x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:272 / RSC_CLOSED   (hash md5:cac3d70324885f24a8cb0be57b41be27)
Theorem hlt_RSC_CLOSED : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RSC A R1 = R1 <-> (forall x :e A, R1 x x = 1) /\ forall x y :e A, R1 x y = 1 -> R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:276 / RSC_IDEMP   (hash md5:e615615435067ef1d3c4e42e2086ed66)
Theorem hlt_RSC_IDEMP : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RSC A (hl_RSC A R1) = hl_RSC A R1.
Admitted.

// HOL Light: Library/rstc.ml:284 / RTC   (hash md5:395a9663ed5f2a3e6810faec536323aa)
Theorem hlt_RTC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RTC A R1 = hl_RC A (hl_TC A R1).
Admitted.

// HOL Light: Library/rstc.ml:287 / RTC_INC   (hash md5:ed1e23cd7c989c7199c0d62714bc59fc)
Theorem hlt_RTC_INC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, R1 x y = 1 -> hl_RTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:291 / RTC_REFL   (hash md5:60d1e9c16dacda49d4cee521958d3c32)
Theorem hlt_RTC_REFL : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x :e A, hl_RTC A R1 x x = 1.
Admitted.

// HOL Light: Library/rstc.ml:295 / RTC_TRANS   (hash md5:a64490d533ced8d3c7674fef3b3884f9)
Theorem hlt_RTC_TRANS : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, hl_RTC A R1 x y = 1 /\ hl_RTC A R1 y z = 1 -> hl_RTC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:299 / RTC_RULES   (hash md5:d7fcddd4b0de9b5e929f31c996eb1072)
Theorem hlt_RTC_RULES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> hl_RTC A R1 x y = 1) /\ ((forall x :e A, hl_RTC A R1 x x = 1) /\ forall x y z :e A, hl_RTC A R1 x y = 1 /\ hl_RTC A R1 y z = 1 -> hl_RTC A R1 x z = 1).
Admitted.

// HOL Light: Library/rstc.ml:306 / RTC_TRANS_L   (hash md5:1af2ade2c4d51fc67e2832119ba27302)
Theorem hlt_RTC_TRANS_L : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, hl_RTC A R1 x y = 1 /\ R1 y z = 1 -> hl_RTC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:310 / RTC_TRANS_R   (hash md5:7fa87f75dbaa08b01fa62ec5a862b3f1)
Theorem hlt_RTC_TRANS_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, R1 x y = 1 /\ hl_RTC A R1 y z = 1 -> hl_RTC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:314 / RTC_CASES   (hash md5:649566b66ac358e9ebb87673797f7283)
Theorem hlt_RTC_CASES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_RTC A R1 x z = 1 <-> x = z \/ exists y :e A, hl_RTC A R1 x y = 1 /\ hl_RTC A R1 y z = 1.
Admitted.

// HOL Light: Library/rstc.ml:318 / RTC_CASES_L   (hash md5:d23a2eb718d006eab8dbca9b5798e20d)
Theorem hlt_RTC_CASES_L : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_RTC A R1 x z = 1 <-> x = z \/ exists y :e A, hl_RTC A R1 x y = 1 /\ R1 y z = 1.
Admitted.

// HOL Light: Library/rstc.ml:322 / RTC_CASES_R   (hash md5:f1ff0d6e92e41f70b1f42a86b31f531b)
Theorem hlt_RTC_CASES_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_RTC A R1 x z = 1 <-> x = z \/ exists y :e A, R1 x y = 1 /\ hl_RTC A R1 y z = 1.
Admitted.

// HOL Light: Library/rstc.ml:326 / RTC_INDUCT   (hash md5:49cf322c93d3bb3c3459708f1bd71c03)
Theorem hlt_RTC_INDUCT : forall A:set, A <> Empty -> forall R1 P :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> P x y = 1) /\ ((forall x :e A, P x x = 1) /\ (forall x y z :e A, P x y = 1 /\ P y z = 1 -> P x z = 1)) -> forall x y :e A, hl_RTC A R1 x y = 1 -> P x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:335 / RTC_INDUCT_L   (hash md5:6e5147d79d11ebc8dcc9ce565164c67a)
Theorem hlt_RTC_INDUCT_L : forall A:set, A <> Empty -> forall R1 P :e 2 :^: A :^: A, (forall x :e A, P x x = 1) /\ (forall x y z :e A, P x y = 1 /\ R1 y z = 1 -> P x z = 1) -> forall x y :e A, hl_RTC A R1 x y = 1 -> P x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:344 / RTC_INDUCT_R   (hash md5:9f88b1d1699173700bf6f23bdc5d3af0)
Theorem hlt_RTC_INDUCT_R : forall A:set, A <> Empty -> forall R1 P :e 2 :^: A :^: A, (forall x :e A, P x x = 1) /\ (forall x y z :e A, R1 x y = 1 /\ P y z = 1 -> P x z = 1) -> forall x y :e A, hl_RTC A R1 x y = 1 -> P x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:353 / RTC_MONO   (hash md5:71ebf4cbb3c9248801432bafc38eaa81)
Theorem hlt_RTC_MONO : forall A:set, A <> Empty -> forall R1 S :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> S x y = 1) -> forall x y :e A, hl_RTC A R1 x y = 1 -> hl_RTC A S x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:359 / RTC_CLOSED   (hash md5:83aa6538b6c91a89ea9403787362b54b)
Theorem hlt_RTC_CLOSED : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RTC A R1 = R1 <-> (forall x :e A, R1 x x = 1) /\ forall x y z :e A, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:365 / RTC_IDEMP   (hash md5:484efe181980734ba2e2ee4daf90d727)
Theorem hlt_RTC_IDEMP : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RTC A (hl_RTC A R1) = hl_RTC A R1.
Admitted.

// HOL Light: Library/rstc.ml:369 / RTC_SYM   (hash md5:ca3a8192f55633302d73fc62828e9c0b)
Theorem hlt_RTC_SYM : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> R1 y x = 1) -> forall x y :e A, hl_RTC A R1 x y = 1 -> hl_RTC A R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:373 / RTC_STUTTER   (hash md5:ecfd4cbe60d251a88fcccafed2b2b3ac)
Theorem hlt_RTC_STUTTER : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RTC A R1 = hl_RTC A (fun x :e A => fun y :e A => if R1 x y = 1 /\ ~ x = y then 1 else 0).
Admitted.

// HOL Light: Library/rstc.ml:379 / TC_RTC_CASES_L   (hash md5:51c1c50ddb5bb0a96bb868e43f52dd8e)
Theorem hlt_TC_RTC_CASES_L : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_TC A R1 x z = 1 <-> exists y :e A, hl_RTC A R1 x y = 1 /\ R1 y z = 1.
Admitted.

// HOL Light: Library/rstc.ml:383 / TC_RTC_CASES_R   (hash md5:b789b7083e29b9c085c9ce24b0f86dbc)
Theorem hlt_TC_RTC_CASES_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_TC A R1 x z = 1 <-> exists y :e A, R1 x y = 1 /\ hl_RTC A R1 y z = 1.
Admitted.

// HOL Light: Library/rstc.ml:387 / TC_TC_RTC_CASES   (hash md5:3afd2e1fde29c24eb5350774f5305760)
Theorem hlt_TC_TC_RTC_CASES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_TC A R1 x z = 1 <-> exists y :e A, hl_TC A R1 x y = 1 /\ hl_RTC A R1 y z = 1.
Admitted.

// HOL Light: Library/rstc.ml:391 / TC_RTC_TC_CASES   (hash md5:ea0fdde4342b836fd3567dece02fbbf7)
Theorem hlt_TC_RTC_TC_CASES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_TC A R1 x z = 1 <-> exists y :e A, hl_RTC A R1 x y = 1 /\ hl_TC A R1 y z = 1.
Admitted.

// HOL Light: Library/rstc.ml:395 / RTC_NE_IMP_TC   (hash md5:29c274b86698cde7d85169c3fdf77a36)
Theorem hlt_RTC_NE_IMP_TC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RTC A R1 x y = 1 /\ ~ x = y -> hl_TC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:405 / STC   (hash md5:c752ddc58f91942f156c4942892d28e3)
Theorem hlt_STC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_STC A R1 = hl_TC A (hl_SC A R1).
Admitted.

// HOL Light: Library/rstc.ml:408 / STC_INC   (hash md5:af976e9306e50a725d031aec295dc211)
Theorem hlt_STC_INC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, R1 x y = 1 -> hl_STC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:412 / STC_SYM   (hash md5:229d635ac744c042fdc1f250bcd27123)
Theorem hlt_STC_SYM : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_STC A R1 x y = 1 -> hl_STC A R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:416 / STC_TRANS   (hash md5:a213192409e075827f1906084c383499)
Theorem hlt_STC_TRANS : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, hl_STC A R1 x y = 1 /\ hl_STC A R1 y z = 1 -> hl_STC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:420 / STC_TRANS_L   (hash md5:e1259aa4893c221f8c8447d8a2fd35e4)
Theorem hlt_STC_TRANS_L : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, hl_STC A R1 x y = 1 /\ R1 y z = 1 -> hl_STC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:424 / STC_TRANS_R   (hash md5:e68f6decbeaab9e3268f407c82ec31ad)
Theorem hlt_STC_TRANS_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, R1 x y = 1 /\ hl_STC A R1 y z = 1 -> hl_STC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:428 / STC_CASES   (hash md5:c727cbda61e297274ee0014406fc170c)
Theorem hlt_STC_CASES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_STC A R1 x z = 1 <-> R1 x z = 1 \/ (hl_STC A R1 z x = 1 \/ exists y :e A, hl_STC A R1 x y = 1 /\ hl_STC A R1 y z = 1).
Admitted.

// HOL Light: Library/rstc.ml:433 / STC_CASES_L   (hash md5:aad3333ce419eeec15e14acd5ccaad04)
Theorem hlt_STC_CASES_L : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_STC A R1 x z = 1 <-> R1 x z = 1 \/ (hl_STC A R1 z x = 1 \/ exists y :e A, hl_STC A R1 x y = 1 /\ R1 y z = 1).
Admitted.

// HOL Light: Library/rstc.ml:438 / STC_CASES_R   (hash md5:029e4be3991df4fe2a411eaa14f15cb5)
Theorem hlt_STC_CASES_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_STC A R1 x z = 1 <-> R1 x z = 1 \/ (hl_STC A R1 z x = 1 \/ exists y :e A, R1 x y = 1 /\ hl_STC A R1 y z = 1).
Admitted.

// HOL Light: Library/rstc.ml:443 / STC_INDUCT   (hash md5:1d7106f7bcea636bb3bf4801ce7d77de)
Theorem hlt_STC_INDUCT : forall A:set, A <> Empty -> forall R1 P :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> P x y = 1) /\ ((forall x y :e A, P x y = 1 -> P y x = 1) /\ (forall x y z :e A, P x y = 1 /\ P y z = 1 -> P x z = 1)) -> forall x y :e A, hl_STC A R1 x y = 1 -> P x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:452 / STC_MONO   (hash md5:6395c6239cfeb603cebfd6bac777c9d3)
Theorem hlt_STC_MONO : forall A:set, A <> Empty -> forall R1 S :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> S x y = 1) -> forall x y :e A, hl_STC A R1 x y = 1 -> hl_STC A S x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:458 / STC_CLOSED   (hash md5:186c47246fda1cffb6f3fe8d193fb489)
Theorem hlt_STC_CLOSED : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_STC A R1 = R1 <-> (forall x y :e A, R1 x y = 1 -> R1 y x = 1) /\ forall x y z :e A, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:465 / STC_IDEMP   (hash md5:3b5ac08473fd15ec34963b75bb9379ef)
Theorem hlt_STC_IDEMP : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_STC A (hl_STC A R1) = hl_STC A R1.
Admitted.

// HOL Light: Library/rstc.ml:469 / STC_REFL   (hash md5:64302093fda20a33b8d0b3e2247d2441)
Theorem hlt_STC_REFL : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x :e A, R1 x x = 1) -> forall x :e A, hl_STC A R1 x x = 1.
Admitted.

// HOL Light: Library/rstc.ml:477 / RSTC   (hash md5:ceb70076cd39d0195e6c9a8826ec8b6c)
Theorem hlt_RSTC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RSTC A R1 = hl_RC A (hl_TC A (hl_SC A R1)).
Admitted.

// HOL Light: Library/rstc.ml:480 / RSTC_INC   (hash md5:a30ec1700370f8d5b882e445ad3cfd37)
Theorem hlt_RSTC_INC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, R1 x y = 1 -> hl_RSTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:484 / RSTC_REFL   (hash md5:57e796ade48539088740c7f9df0bb895)
Theorem hlt_RSTC_REFL : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x :e A, hl_RSTC A R1 x x = 1.
Admitted.

// HOL Light: Library/rstc.ml:488 / RSTC_SYM   (hash md5:ddddbfaa0e2a77ff26afd83724f62563)
Theorem hlt_RSTC_SYM : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RSTC A R1 x y = 1 -> hl_RSTC A R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:492 / RSTC_TRANS   (hash md5:e948ec3e2964d58d9ac83081d2dc13f4)
Theorem hlt_RSTC_TRANS : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, hl_RSTC A R1 x y = 1 /\ hl_RSTC A R1 y z = 1 -> hl_RSTC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:496 / RSTC_RULES   (hash md5:ea0c06d05575f48e93a6faafa1d38deb)
Theorem hlt_RSTC_RULES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> hl_RSTC A R1 x y = 1) /\ ((forall x :e A, hl_RSTC A R1 x x = 1) /\ ((forall x y :e A, hl_RSTC A R1 x y = 1 -> hl_RSTC A R1 y x = 1) /\ forall x y z :e A, hl_RSTC A R1 x y = 1 /\ hl_RSTC A R1 y z = 1 -> hl_RSTC A R1 x z = 1)).
Admitted.

// HOL Light: Library/rstc.ml:504 / RSTC_TRANS_L   (hash md5:2cb9ff07860b1131531a47556063a46d)
Theorem hlt_RSTC_TRANS_L : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, hl_RSTC A R1 x y = 1 /\ R1 y z = 1 -> hl_RSTC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:508 / RSTC_TRANS_R   (hash md5:b3f92b40ca9f0747940874ada0669043)
Theorem hlt_RSTC_TRANS_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y z :e A, R1 x y = 1 /\ hl_RSTC A R1 y z = 1 -> hl_RSTC A R1 x z = 1.
Admitted.

// HOL Light: Library/rstc.ml:512 / RSTC_CASES   (hash md5:d3695e2cd664f0c77f34397b8720f7b0)
Theorem hlt_RSTC_CASES : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_RSTC A R1 x z = 1 <-> x = z \/ (R1 x z = 1 \/ (hl_RSTC A R1 z x = 1 \/ exists y :e A, hl_RSTC A R1 x y = 1 /\ hl_RSTC A R1 y z = 1)).
Admitted.

// HOL Light: Library/rstc.ml:518 / RSTC_CASES_L   (hash md5:b1e33f628b527493a882e6da999854f7)
Theorem hlt_RSTC_CASES_L : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_RSTC A R1 x z = 1 <-> x = z \/ (R1 x z = 1 \/ (hl_RSTC A R1 z x = 1 \/ exists y :e A, hl_RSTC A R1 x y = 1 /\ R1 y z = 1)).
Admitted.

// HOL Light: Library/rstc.ml:524 / RSTC_CASES_R   (hash md5:8c407c49e0e9b848fa55efcba6829acc)
Theorem hlt_RSTC_CASES_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x z :e A, hl_RSTC A R1 x z = 1 <-> x = z \/ (R1 x z = 1 \/ (hl_RSTC A R1 z x = 1 \/ exists y :e A, R1 x y = 1 /\ hl_RSTC A R1 y z = 1)).
Admitted.

// HOL Light: Library/rstc.ml:530 / RSTC_INDUCT   (hash md5:c3c22397d2c26571ed3e26d5de48e79a)
Theorem hlt_RSTC_INDUCT : forall A:set, A <> Empty -> forall R1 P :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> P x y = 1) /\ ((forall x :e A, P x x = 1) /\ ((forall x y :e A, P x y = 1 -> P y x = 1) /\ (forall x y z :e A, P x y = 1 /\ P y z = 1 -> P x z = 1))) -> forall x y :e A, hl_RSTC A R1 x y = 1 -> P x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:541 / RSTC_MONO   (hash md5:2ba5e1c9f3743c83f3376d2ad9de6186)
Theorem hlt_RSTC_MONO : forall A:set, A <> Empty -> forall R1 S :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> S x y = 1) -> forall x y :e A, hl_RSTC A R1 x y = 1 -> hl_RSTC A S x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:547 / RSTC_CLOSED   (hash md5:615f5c19bd6ee913a74cc168b75d1dd4)
Theorem hlt_RSTC_CLOSED : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RSTC A R1 = R1 <-> (forall x :e A, R1 x x = 1) /\ ((forall x y :e A, R1 x y = 1 -> R1 y x = 1) /\ forall x y z :e A, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1).
Admitted.

// HOL Light: Library/rstc.ml:554 / RSTC_IDEMP   (hash md5:f9218c22fa3ff83a9810af65312611db)
Theorem hlt_RSTC_IDEMP : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RSTC A (hl_RSTC A R1) = hl_RSTC A R1.
Admitted.

// HOL Light: Library/rstc.ml:562 / RSC_INC_RC   (hash md5:74f4dbbb68cf18f02673cbb7c3b487ba)
Theorem hlt_RSC_INC_RC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RC A R1 x y = 1 -> hl_RSC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:566 / RSC_INC_SC   (hash md5:a0c74213630d42232030f89b1ba9752e)
Theorem hlt_RSC_INC_SC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_SC A R1 x y = 1 -> hl_RSC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:570 / RTC_INC_RC   (hash md5:d9d1ba38c3cece2fca1cbeb7b4315ff6)
Theorem hlt_RTC_INC_RC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RC A R1 x y = 1 -> hl_RTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:574 / RTC_INC_TC   (hash md5:aab80d0685732ec88065a194c4f75a6b)
Theorem hlt_RTC_INC_TC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_TC A R1 x y = 1 -> hl_RTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:578 / STC_INC_SC   (hash md5:e79e9a3b0eb241e7e1ea4f7952fea7fd)
Theorem hlt_STC_INC_SC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_SC A R1 x y = 1 -> hl_STC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:582 / STC_INC_TC   (hash md5:315fd8176a535a72db8f968ed6a9ed3e)
Theorem hlt_STC_INC_TC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_TC A R1 x y = 1 -> hl_STC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:586 / RSTC_INC_RC   (hash md5:55124e994e75834bc39b7f8a1f074779)
Theorem hlt_RSTC_INC_RC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RC A R1 x y = 1 -> hl_RSTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:590 / RSTC_INC_SC   (hash md5:0491cddc5d299ab9e494f243b6f3602c)
Theorem hlt_RSTC_INC_SC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_SC A R1 x y = 1 -> hl_RSTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:594 / RSTC_INC_TC   (hash md5:ef3ed8350a36fd9e0ce07f328b8f0bb3)
Theorem hlt_RSTC_INC_TC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_TC A R1 x y = 1 -> hl_RSTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:598 / RSTC_INC_RSC   (hash md5:a7de6e3c941c8c5eaca448e8e38537e8)
Theorem hlt_RSTC_INC_RSC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RSC A R1 x y = 1 -> hl_RSTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:602 / RSTC_INC_RTC   (hash md5:a56793bcd2ed0b07656a6fc2b2c5c325)
Theorem hlt_RSTC_INC_RTC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RTC A R1 x y = 1 -> hl_RSTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:606 / RSTC_INC_STC   (hash md5:3908a76b6271928ad652da1ec691c947)
Theorem hlt_RSTC_INC_STC : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_STC A R1 x y = 1 -> hl_RSTC A R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:614 / INV   (hash md5:46992fdcea4baa702f55ed4baa51823c)
Theorem hlt_INV : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: A :^: B, forall y :e B, forall x :e A, hl_INV B A R1 x y = 1 <-> R1 y x = 1.
Admitted.

// HOL Light: Library/rstc.ml:617 / RC_INV   (hash md5:3df23af9c31f53bc87f2d86d65ba151a)
Theorem hlt_RC_INV : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RC A (hl_INV A A R1) = hl_INV A A (hl_RC A R1).
Admitted.

// HOL Light: Library/rstc.ml:621 / SC_INV   (hash md5:4e7312aba2372eba97aeeff0026bd787)
Theorem hlt_SC_INV : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_SC A (hl_INV A A R1) = hl_INV A A (hl_SC A R1).
Admitted.

// HOL Light: Library/rstc.ml:625 / SC_INV_STRONG   (hash md5:f55776e424127c2ed4b7586cb16b35cd)
Theorem hlt_SC_INV_STRONG : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_SC A (hl_INV A A R1) = hl_SC A R1.
Admitted.

// HOL Light: Library/rstc.ml:629 / TC_INV   (hash md5:2cbd038ba96cd15b233d71de0b30f09d)
Theorem hlt_TC_INV : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_TC A (hl_INV A A R1) = hl_INV A A (hl_TC A R1).
Admitted.

// HOL Light: Library/rstc.ml:634 / RSC_INV   (hash md5:a5051330c091e021514beb03d8e3ffd3)
Theorem hlt_RSC_INV : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RSC A (hl_INV A A R1) = hl_INV A A (hl_RSC A R1).
Admitted.

// HOL Light: Library/rstc.ml:638 / RTC_INV   (hash md5:773b22b5a3f0621aae72898f34160172)
Theorem hlt_RTC_INV : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RTC A (hl_INV A A R1) = hl_INV A A (hl_RTC A R1).
Admitted.

// HOL Light: Library/rstc.ml:642 / STC_INV   (hash md5:634cc07e63cd17a3d9a7085db60facc1)
Theorem hlt_STC_INV : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_STC A (hl_INV A A R1) = hl_INV A A (hl_STC A R1).
Admitted.

// HOL Light: Library/rstc.ml:646 / RSTC_INV   (hash md5:b80749f15d8bced6e727cf2ea5775189)
Theorem hlt_RSTC_INV : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_RSTC A (hl_INV A A R1) = hl_INV A A (hl_RSTC A R1).
Admitted.

// HOL Light: Library/rstc.ml:654 / RELPOW   (hash md5:6bc89804cc75a99225c58025a6d5c523)
Theorem hlt_RELPOW : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, forall n :e omega, (hl_RELPOW A (hl_NUMERAL hl_zero) R1 x y = 1 <-> x = y) /\ (hl_RELPOW A (hl_SUC n) R1 x y = 1 <-> exists z :e A, hl_RELPOW A n R1 x z = 1 /\ R1 z y = 1).
Admitted.

// HOL Light: Library/rstc.ml:658 / RELPOW_R   (hash md5:d7f27a62536aada8f1064ce05dd1755e)
Theorem hlt_RELPOW_R : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, forall n :e omega, (hl_RELPOW A (hl_NUMERAL hl_zero) R1 x y = 1 <-> x = y) /\ (hl_RELPOW A (hl_SUC n) R1 x y = 1 <-> exists z :e A, R1 x z = 1 /\ hl_RELPOW A n R1 z y = 1).
Admitted.

// HOL Light: Library/rstc.ml:665 / RELPOW_M   (hash md5:22f10298ae22a16d6d2fd1a4197998e1)
Theorem hlt_RELPOW_M : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall m n :e omega, forall x y :e A, hl_RELPOW A (hl_add m n) R1 x y = 1 <-> exists z :e A, hl_RELPOW A m R1 x z = 1 /\ hl_RELPOW A n R1 z y = 1.
Admitted.

// HOL Light: Library/rstc.ml:670 / RTC_RELPOW   (hash md5:d14eb45cc979aa3362ae74bff955f1e2)
Theorem hlt_RTC_RELPOW : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_RTC A R1 x y = 1 <-> exists n :e omega, hl_RELPOW A n R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:678 / TC_RELPOW   (hash md5:1b8155db9d34ce898865004ee8956b0f)
Theorem hlt_TC_RELPOW : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, hl_TC A R1 x y = 1 <-> exists n :e omega, hl_RELPOW A (hl_SUC n) R1 x y = 1.
Admitted.

// HOL Light: Library/rstc.ml:685 / RELPOW_SEQUENCE   (hash md5:ab5f6791187049ff6c16b4e671126f0a)
Theorem hlt_RELPOW_SEQUENCE : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall n :e omega, forall x y :e A, hl_RELPOW A n R1 x y = 1 <-> exists f :e A :^: omega, f (hl_NUMERAL hl_zero) = x /\ (f n = y /\ forall i :e omega, hl_lt i n = 1 -> R1 (f i) (f (hl_SUC i)) = 1).
Admitted.

