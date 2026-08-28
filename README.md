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

Every generated theorem is `Admitted` (never an axiom), carries its HOL source, hash and
status (`exact_native`, `transport_required`, `generalization_required`, `native_reuse`,
`pending_mapping`), and all shards must print `Everything looks good.` under Megalodon.
