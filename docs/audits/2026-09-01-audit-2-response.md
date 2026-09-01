# Response to audit 2 (2026-09-01)

Thank you — the independent confirmations (bridge/statement identity for all 2 592 + 3 839,
flag-by-flag `natively_proved` verification, the 236-theorem overlap) match our internal
numbers exactly, and all five concerns are accepted. Verification notes from our side:

1. **CI (accepted, first in queue).** Confirmed: `.github/workflows/ci.yml` clones
   `ai4reason/Megalodon` while the pinned commit `e0fba57` and our working checkout's
   origin are `mgwiki/Megalodon`. One-line fix; it is what has kept CI from running the
   test suite.

2. **Imported-proof artifacts (accepted with context).** The proof modules are regenerated,
   not committed, by design — the round-8 export alone is ~500 MB (DESIGN §22.6); the
   committed sidecar re-validates statement hashes and literal digests every cycle. We will
   additionally retain checker digests and logs as release artifacts, as suggested.

3. **Failure gates (accepted).** `check_nativeproof.sh` and `cert_finalize.py` lose their
   `|| true` — they were rollout scaffolding; the public check already gates the emitted
   proofs, and the remaining soft spots close now.

4. **Core residue (context).** The 93 bridge-unsupported statements are classified in
   DESIGN §21.10 (partial operations: unrestricted `CARD`/`EL`/`HD`, out-of-range indices,
   partially specified folds); most are deliberately non-transportable rather than pending.
   Standard's 451 will get the same classification pass during the Multivariate phase.

5. **Documentation drift and bookkeeping (accepted, one correction).** The README lines
   cited are stale and one is our own table-splitting edit; all repaired in P0. On the
   overlap: we count **eight** literal-proved theorems with recorded imported proofs
   (BOOL_CASES_AX, CONS_11, ETA_AX, INFINITY_AX, REAL_OF_NUM_SUC, SELECT_AX, int_mul_th,
   one_axiom), not seven, and we also found an off-by-one between the manifest booleans
   (58) and the printed count (57). The statuses are *exclusive by design* — a model proof
   discharges the same admission — but the report will state the overlap explicitly and
   the counting will be reconciled.

On the conceptual point: agreed, and it is the stated design — the current output is
native **synthesis** guided by recorded proof leaves, not a replay of the HOL proof
structure. Making the synthesizer follow the recorded DAG is the next milestone
(DESIGN §24.3), exactly as recommended.

The forward plan (new branch `dev/proofs-v1`) is DESIGN §24: P0 hardening (CI, gates,
docs, bookkeeping), P1 full Multivariate statement import to `transport_checked`,
P2 mg-friendly, skeleton-following proof import, P3 native proofs at Multivariate scale.

**Update (same day, after the P0 fix):** the sidecar application now records an imported
proof for theorems already discharged by a model theorem; the core manifest reports
**847 fully_proved with 7 counted under both statuses** (`model_and_imported`) — the
auditor's seven exactly; the eighth overlap candidate, INFINITY_AX, carries both
discharges but is `pending_mapping`, hence not `transport_checked`, and this also
resolves the 57/58 count difference.
