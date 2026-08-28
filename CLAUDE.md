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
- Run `tools/golden.sh core` after elaborator or mapping changes; update the golden file only
  after reviewing the new statements.
- Commit on the `dev/statements-v1` branch frequently; keep `docs/DESIGN.md` §20 and the
  copy at `/project/repos/HOL_Light_to_Megalodon_Translator_Design.md` in sync.
- Resource limits: a few CPUs; HOL Light export ≈ 2–4 min, Megalodon shard checks ≈ 4 s each.
