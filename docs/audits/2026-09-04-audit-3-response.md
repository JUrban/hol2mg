# Response to audit 3 (2026-09-04)

The audit is accepted in substance: the reporting errors were real, the
Multivariate number was misleading as headlined, and the theorem-by-theorem
loop needed to yield to an infrastructure sprint.  Detailed responses, including
what the auditor could not have known, and the sprint status so far.

## Points accepted and already fixed

1. **README counts.**  The multivariate `transport_checked` figure was stale
   (3305 vs the manifest's 3311) — fixed.  The headline native-proof count mixed
   public-shard `Qed` proofs with the leaf-guided proofs that live only in
   `generated/nativeproof/<profile>/zz_guided.mg`; the README now states the
   distinction explicitly.  (Commit `1eebdc0`.)

2. **Double entry of native facts (rec 4).**  Implemented:
   `Nativeproof.load_native_lemmas` parses the single-line
   `Theorem <name> : <prop>.` headers of `mglib/native/*.mg` with the existing
   template parser, so a new hand lemma no longer needs a manually mirrored
   OCaml AST.  See the caveat below on why injection is currently opt-in.

3. **Guided proofs in dependency order (rec 5).**  Implemented in two stages:
   guided proofs whose candidate premises precede them in shard composition
   order are now emitted into the standalone nativeproof modules (checked
   cumulatively), and — with a stricter same-shard condition, since
   `check_public` composes shards singly — into the public shards with `Qed`.
   Three of the seven core guided proofs inline under the loose condition; the
   first full pass with the strict public condition is running now.

## The auditor's scaling warning was, if anything, understated

We ran the experiment the audit implicitly asks for, and the result is sharper
than predicted.  Injecting the 85 parsed native lemmas as premises for every
goal did not merely slow the full pass 2–3x (40 min to >2.8 h, still
unfinished); it **lost ten standard-profile theorems** to fuel exhaustion —
richer premise sets consume the budget on goals that previously closed.  Even
the 30 logic.mg-only extras more than doubled pass time, superlinearly to the
count, which points at equation/conjunction-shaped premises multiplying the
rewrite branching.  Two conclusions we have adopted:

* premise **indexing (rec 2) is a precondition** for premise-set growth, not an
  optimization to be scheduled "when passes exceed 50 minutes" — the audit was
  right and our earlier threshold was wrong;
* **sentinel probes do not gate table changes** — all eight historically
  fragile sentinels passed under tables that lost ten theorems in the full
  pass.  Only the full names-diff against HEAD gates.

Auto-injection is therefore opt-in (`NPNATIVELOAD` / `NPNATIVEALL`) until the
head-symbol index lands; the parser and the memo-key premise-suffix cache (a
first, harmless speedup) are committed (`e1b160b`).

## Corrections of fact (what the audited snapshot could not show)

The audit covers the `f7646db` push (N32-era: 557 public core Qed).  The local
branch since then: core 592, standard 621, multivariate 599 native proofs
(zero-loss gated per increment), and 438+/847 = 51.7%+ of imported core
theorems carry both statuses.  The increments the audit would have paused
(N33–N37) were precisely the ones that exhausted the *reachable* tail — the
list cluster (ZIP, REVERSE, BUTLAST, EL, LAST), all four ARITH towers, and the
subtraction/parity/real-order families — after which the remaining core
blockers are leaf-only names (IN_ELIM_THM, real_div, real_abs, REAL_INV_0,
list_of_seq) that no hand lemma can land.  The pivot the audit demands and the
plan the loop had converged on are the same pivot.

One nuance on "excessive churn": the per-increment full regeneration is what
the zero-loss tripwire is made of — it caught four fragile-proof regressions
(EQ_ADD_RCANCEL, REAL_ZPOW_0, REAL_LT_NZ, REAL_NOT_LT) that were each fixed
same-day by the transplant pattern.  Caching must preserve that tripwire
(keying on premise set and prover version, as the audit itself proposes).

## Remaining sprint order

1. head-symbol premise indexing + only-relevant-premise selection (rec 2),
   then re-enable statement auto-injection;
2. persistent proof-result caching keyed by statement/premises/version (rec 1);
3. canonical Core proof reuse in Standard/Multivariate (rec 3);
4. CI native-proof verification and manifest-derived documentation counts
   (rec 7);
5. the **Multivariate proof-recording pilot** (rec 6) — accepted as the actual
   gate for the goal's multivariate half: today there are no recorded
   Multivariate proofs to import, and "Multivariate progress" will be reported
   by source origin once there are.
