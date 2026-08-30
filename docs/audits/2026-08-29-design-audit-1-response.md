# Response to design audit 1 (2026-08-29)

Reviewer record: `docs/audits/2026-08-29-design-audit-1.md` (kept verbatim).  Baseline audited:
branch `dev/statements-v1`, commit `f16bb31`, now also tag `statements-v1`.  Work on the findings
happens on `dev/semantics-v1`.  This response is updated as the findings are closed; every row
points at the commit, test or design section that constitutes the evidence.

Status legend: **done** = implemented and checked on `dev/semantics-v1`; **in progress** =
partially implemented, remaining work listed; **planned** = accepted, scheduled in §21 of the
design.

| Finding | Decision | Implementation/design evidence | Remaining risk |
|---|---|---|---|
| A1 Literal layer unimplemented | Accept — implemented | Contract in `docs/DESIGN.md` §21; `lib/literal.ml` + `mglib/literal/model.mg`; Core: 216 literal definitions and 2697 literal statements Megalodon-checked (`tools/check_literal.sh`, commit `66b7e58` and later). | Until the full Core profile is certified, statements outside the certified set remain statement-level only (their manifest `cert_status` says so). |
| A2 Transport obligations not checked | Accept — implemented (2417 of 2685 public Core theorems `transport_checked` at row (k) of §21.7; 38 of them `literal_proved`) | `transport_required`/`generalization_required` are now explicitly *statement-level* labels; certification is a separate monotone `cert_status` that reaches `native_certified` only when Megalodon `Qed`-checks the bridge theorem `L -> N` (§21.3). Megalodon refuses `Qed` on anything that depends on an admitted fact (verified experimentally, §21.3), so a checked bridge cannot silently rest on an admission other than the literal source fact, which is a hypothesis of the bridge, not a dependency. | The bridge proof generator is the largest new component; its coverage is reported per category. |
| A3 Explicit trust boundary | Accept — implemented (`generated/cert/<profile>`, `tools/cert_finalize.py`) | §21.1–21.3: HOL theorem → typed source IR (gate: fatal) → literal statement `hl_<name>` (`Theorem … Admitted.`, the only admission) → bridge `<name>_bridge : L -> N` (`Qed`) → public native statement. Manifests record hash, source statement, literal statement, bridge name and checker result (§21.6). | Model soundness of the primitive interface (§21.4) is argued in the design and partially machine-checked (characterizing theorems proved in `model.mg`); the remainder is listed as an explicit trust item. |
| A4 Empty-carrier generalization is a proof obligation | Accept | The syntactic evaluator (`lib/emptycase.ml`) is demoted to a *heuristic that proposes* dropping `A <> Empty`; the bridge must prove the native statement in the `A = Empty` case (generated empty-case proof) or the premise is retained in the public statement (§21.5). A latent bug in the evaluator (unreachable `finite`/`finite_cardinality`/`equip` rules) was fixed in `3caba27`. | Public statements whose empty case cannot be proved automatically will change (premise retained) relative to `statements-v1`; the diff is reported. |
| A5 Representation bridges via logical relations | Accept — implemented (434 compatibility theorems and 41 model-soundness theorems proved; `mglib/literal/bridge.mg` relations) | §21.4: per-type representation relations (identity on `omega`/`int`/`R`/carriers, `2` vs `prop`, `2 :^: A` vs `Power A`, set functions vs meta-functions, `finseq`, products, translated type definitions) and per-constant compatibility theorems in `mglib/literal/bridge.mg`; mapping entries reference their compatibility theorem (`compat` field) and the bridge generator refuses constants without one. | Proving compatibility for every hand-mapped Core constant is hand work; progress is tracked per mapping file in the reports. |
| B1 Source-IR type errors must be fatal | Accept — done | `lib/hol.ml` re-typechecks every node and names the offending subterm with expected/actual types; `bin/main.ml` gates theorems, definitions, axioms and type definitions, quarantines failures as `source_type_error` (never public, never used for automatic definitions), records them in the manifest header (`source_type_errors`) and exits 3. Negative test: a corrupted export exits 3 with the diagnostic (`3caba27`); Core has 0 errors (`make test` fails otherwise). | None known; `--allow-source-errors` exists only for debugging and is forbidden for committed outputs (CLAUDE.md). |
| B2 Core golden test empty | Accept — done | The reviewer was right: `tests/golden/core.txt` contained only a header (the `--update` run had no names to fill). Replaced by `tests/golden/core.names` (251 theorems in 16 categories following audit §7) and `tests/golden/core.golden` recording source hash, HOL statement, status, native statement and, once available, literal statement and bridge status (`tools/golden.py`). `make test` compares all fields on a fresh translation. | Golden entries are reviewed statement text, not proofs; semantic checks are the bridges. |
| B3 CI absent | Accept — done | `.github/workflows/ci.yml`: build, `tools/lint.sh` (no `Axiom`, README/DESIGN counts vs manifests, golden names), `make test` (determinism of two runs, source gate, golden fixtures, Megalodon check of all Core shards), `tools/check_native.sh` (native modules, admission count). Megalodon is built from the pinned commit and cached. | The workflow could not be executed from this machine (no GitHub credentials for pushing); the identical steps run locally. |
| B4 Five admitted prelude theorems | Accept — done | `finsum_R`, `finsum_omega`, `finprod_R`, `finprod_omega`, `floor_R_int` proved (`3caba27`); `tools/check_native.sh`: 73 `Qed`, 0 `Admitted` across `prelude.mg`, `finseq.mg`, `order.mg`. | None. |
| B5 Documentation drift | Accept — done | README/DESIGN counts corrected to the manifests (core 2685/2984, standard 4290/4590, mv_vectors 4784/5084, multivariate 17138/17526 = the audit's frozen baseline); `tools/doc_counts.py` (run by lint/CI) fails when the documents and manifests disagree; §20.8 open items rewritten; reports distinguish statement coverage from certification coverage (§21.6). | Interim reports are historical snapshots and are not rewritten. |

## Notes on individual decisions

**A2/A3, emission pattern.** Megalodon rejects `Qed` for a theorem whose proof uses an admitted
theorem ("depends on non-proved hl_T1", experiment in §21.3).  The certified artifact is
therefore the implication theorem `<name>_bridge : (literal statement) -> (native statement)`,
which is `Qed` and has no admitted dependency; the public theorem is emitted as
`Theorem <name> : <native>. exact (<name>_bridge hl_<name>). Admitted.` so that the derivation is
visible and checked while the admission is confined to the literal source fact.

**A4, choice between the three options.** The audit offers (a) retaining the premise, (b)
structural witnesses, (c) a separate checked proof.  We use (c) with (a) as the fallback: the
empty case is proved by a generated proof (the same rules the evaluator uses, each backed by a
lemma in `mglib/literal/bridge.mg`); if generation fails the premise stays in the public
statement.  Option (b) is not used: an explicit witness would change the public statement shape
for every generalized theorem.

**A5, scope of "prove compatibility".** Compatibility theorems relate the literal
interpretation of a constant (obtained syntax-directed from its HOL kernel definition, or fixed
for the primitive interface) to its native template.  They may use the literal forms of HOL
theorems (admitted source facts) — e.g. the recursion equations of `+` — because those are on
the source side of the trust boundary; they may not use any other admission.

**Model soundness (new trust item made explicit).** The literal interpretation is a model of
HOL's theory only if the primitive interface (§21.4) satisfies HOL's characterizing theorems.
Those theorems are proved in `mglib/literal/model.mg` where feasible (progress table in
§21.7); each unproved one is listed explicitly as a trusted assumption, never silently.

## Status update (2026-08-29, row (k) of §21.7)

Terminology adopted on the advice of an external reviewer: `transport_checked` (formerly
`native_certified`) means the bridge literal → native is `Qed`-checked and the literal fact is
admitted; `literal_proved` means the literal fact is also discharged by a model-soundness theorem
(`mglib/literal/model_theorems.mg`, §21.4), so nothing is admitted; `fully_proved` is reserved
for discharge by imported HOL Light proofs (§21.8 pilot, not started).  Core: 2417 / 2685
transport_checked, 38 literal_proved, 0 fully_proved.  The model-soundness obligations of the
primitive interface (§21.4 table) are all proved; the trusted-assumption paragraph of §21.7 is
updated accordingly.  Remaining risk: the correctness of the literal *statements* themselves
(§21.2) is syntax-directed and reviewed but not independently checked; the proof-export pilot
will exercise it.

Update 2026-08-30: the proof-export pilot (§22) is running end to end: HOL Light kernel proofs are
recorded, exported and imported into the uniform model, and Megalodon checks the whole chain; in the
cap-1 000 run 236 public Core theorems are `fully_proved` (no admission at all).  The literal
*statements* are thereby exercised by the imported proofs for those theorems.
