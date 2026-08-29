# Working rules for hol2mg

- Read `docs/DESIGN.md` §20 and the latest `docs/reports/*.md` first.
- Never hand-edit files under `generated/`; fix the exporter, registry (`mappings/*.json`),
  native prelude, or elaborator and regenerate with `tools/update.sh <profile>`.
- Never emit or add an `Axiom`; unproved imports are `Theorem ... Admitted.`
- Every mapping entry needs: scheme, roles, template, class, status, bridge/notes.
  Unknown concepts must fail as `pending_mapping`, never be guessed.
- Megalodon facts: `->` is infix 800 right; binders extend right; notation table is
  empirical (`mglib/God1.notations.json`, regenerate with `tools/probe_notations.py`);
  check generated files with `tools/check_public.sh` (God1 signature + regenerated index).
- Run `python3 tools/golden.py core` after elaborator or mapping changes; update the golden
  file (`tools/golden.py core --update`) only after reviewing the new statements.
- `make test` (self test), `tools/lint.sh` and `tools/check_native.sh` must pass before a commit;
  CI (`.github/workflows/ci.yml`) runs the same steps.
- Source-IR type errors are fatal (exit 3, status `source_type_error`); never use
  `--allow-source-errors` for committed outputs.
- `dev/statements-v1` (tag `statements-v1`) is the frozen statement milestone; develop on
  `dev/semantics-v1`; keep `docs/DESIGN.md` §20–§21 and the copy at
  `/project/repos/HOL_Light_to_Megalodon_Translator_Design.md` in sync.
- Semantic certification: a theorem is `transport_checked` (formerly `native_certified`) only when
  Megalodon checked its literal statement module and the literal-to-native bridge (`Qed`, no
  admitted dependency except the literal source fact); `literal_proved` additionally means the
  literal fact is discharged by a model theorem (`mglib/literal/model_theorems.mg`); `fully_proved`
  (imported HOL proofs) is reserved.  Never mark certification by hand.
- Resource limits: a few CPUs; HOL Light export ≈ 2–4 min, Megalodon shard checks ≈ 4 s each.
