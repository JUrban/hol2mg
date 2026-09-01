# hol2mg — HOL Light → Megalodon statement translator

Translates the statements of the (growing) HOL Light library into native, readable
Megalodon theorems on top of the God1 library, following the Godement conventions
(meta-level functions, bounded quantifiers, native `omega`/`int`/`R`, sets as subsets).
Design: `docs/DESIGN.md` (§20 is the implementation log); reports: `docs/reports/`.

## Layout

| path | content |
|---|---|
| `hol_export/export.ml` | exporter loaded inside a clean HOL Light session; kernel-level JSONL |
| `lib/` | OCaml translator: `hol.ml` (HOL IR), `mg.ml` (Megalodon IR, printer, template parser), `registry.ml` (mapping registry), `elab.ml` (native elaboration), `rewrite.ml` (approved rewrites), `emptycase.ml` (empty-carrier evaluator), `manifest.ml` |
| `bin/main.ml` | CLI `hol2mg translate` |
| `mappings/*.json` | reviewed mapping registry (types, constants, rewrite rules, empty-case rules) |
| `mglib/native/*.mg` | hand-written native infrastructure (`prelude.mg`, `finseq.mg`) |
| `mglib/God1.mgs`, `God1.index`, `God1.notations.json` | God1 signature, index, empirically resolved notation table |
| `profiles/*.json` | HOL Light load profiles; `lock.json` pins all revisions |
| `generated/` | public shards, manifests, reports (regenerated; deterministic) |
| `tests/golden/` | golden statements checked by `tools/golden.sh` |
| `tools/` | `update.sh` (one-command update), `hol_export.sh`, `check_public.sh`, `mgcheck.sh`, `mk_god1_sig.sh`, `probe_notations.py`, `index_sources.py`, `golden.sh`, `diff_manifests.py` |

## Usage

```
make                                  # build bin/hol2mg (ocamlfind: yojson, str, unix)
tools/update.sh core                  # export if needed, translate, check, reuse pass, check
tools/update.sh standard --export     # force a fresh HOL Light export
tools/golden.sh core                  # golden statement regression test
tools/check_public.sh generated/public/core          # Megalodon-check all shards
tools/diff_manifests.py old.json generated/manifests/core.manifest.json
```

Upstream update workflow (design §16.4): build the new HOL Light revision (a separate git worktree
works: set `HOL_LIGHT_DIR`), create/adjust a profile pinning the commit, run `tools/update.sh <profile> --export`,
then `tools/diff_manifests.py` between the previous and the new manifest gives the change report
(new / removed / renamed / changed statements); unchanged shards stay byte-identical.

Every generated theorem is emitted with a generated native proof and `Qed` when the
synthesizer closes it (306 core, 339 standard; DESIGN 23), and `Admitted` otherwise
(never an axiom); each carries its HOL source, hash and
status (`exact_native`, `transport_required`, `generalization_required`, `native_reuse`,
`pending_mapping`), and all shards must print `Everything looks good.` under Megalodon.

## Coverage (2026-08-29)

| profile | HOL theorems | public statements | notes |
|---|---|---|---|
| core (`hol.ml`) | 2984 | 2685 | pending = quarantined construction internals |
| standard (+11 `Library/` files) | 4590 | 4290 | number theory, cardinals, orders, closures |
| mv_vectors (+`Multivariate/vectors.ml`) | 5084 | 4784 | 79 automatic definitions |
| multivariate (`Multivariate/make.ml`) | 17526 | 17138 | 480 automatic definitions + 7 automatic types |

## Semantic certification (`dev/semantics-v1`, docs/DESIGN.md §21)

| profile | public statements | literal statements checked | `transport_checked` | `literal_proved` | `fully_proved` |
|---|---|---|---|---|---|
| core | 2685 | 2697 | 2592 | 57 | 847 (recorded from pilot rounds 7–8, DESIGN 22.6) |
| standard | 4290 | 4396 | 3839 | 57 | — |
| multivariate | 17138 | 17332 | 3305 | 57 | — |

Native proof synthesis (DESIGN §23): 331 core, 359 standard and 348 multivariate public theorems additionally carry *generated
native proofs* in the God1 declarative style (`natively_proved`, emitted with `Qed` in the
public shards; `generated/nativeproof/`, `tools/check_nativeproof.sh`).  Seven theorems
are counted under both `literal_proved` and `fully_proved` (`model_and_imported` in the
manifest); an eighth, INFINITY_AX, has both discharges recorded but is not yet
`transport_checked`.

A theorem is `transport_checked` (formerly `native_certified`) only when Megalodon `Qed`-checked
the generated bridge `literal -> native` (`generated/cert/<profile>/`, `tools/check_cert.sh`,
`tools/cert_finalize.py`); the literal statement `hlt_N` is then the only admission.  It is
`literal_proved` when that admission is discharged too, by a model-soundness theorem of the
primitive interface (`mglib/literal/model_theorems.mg`, DESIGN §21.4): nothing is admitted.
`fully_proved` (discharge by an imported HOL Light proof) comes from the proof-export pilot
(DESIGN §22, `tools/proof_pilot.sh`): the large proof modules are regenerated, not
committed, while the committed sidecar (`generated/proofcert/*.pilot_results.json`)
records the results of pilot rounds 7–8 with statement hashes and literal digests,
re-validated by every certification cycle: 847 public Core theorems are `fully_proved`
(report 16–17).  Compatibility theorems for mapped
constants are hand-proved in `mglib/literal/compat.mg` from the literal definitions.

Unmapped `new_definition`/`new_specification` constants and `new_type_definition` types are
translated automatically into `generated/public/<profile>/_definitions.mg` (status `auto`,
listed in the report and review page; a reviewed hand mapping or `override` always wins).
Native infrastructure (`mglib/native/`): `prelude.mg`, `finseq.mg`, `order.mg`; all 73
theorems are proved (`Qed`); nothing there is admitted.
