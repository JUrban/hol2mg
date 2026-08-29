# HOL Light to Megalodon: Independent Design Audit 1

**Date:** 2026-08-29  
**Reviewer:** OpenAI Codex, at the project owner's request  
**Reviewed milestone:** `dev/statements-v1`  
**Reviewed revision:** `f16bb31` (short commit ID observed during the audit)  
**Status:** Independent review feedback; not an authoritative replacement for `docs/DESIGN.md`

## 1. Purpose and handling of this audit

This document records an independent post-milestone review of the HOL Light to Megalodon translator. It distinguishes what `statements-v1` demonstrably achieved from work still required for semantic certification and later proof import.

The worker should preserve this file as the review record. For every numbered finding, either implement the recommendation or record a technically reasoned disagreement in:

```text
docs/audits/2026-08-29-design-audit-1-response.md
```

The response should cite the relevant commits, tests, generated artifacts, or design changes. Accepted decisions should then be incorporated into the living `docs/DESIGN.md` and project plan. This audit itself should not be rewritten to make later implementation agree with it.

## 2. Material reviewed

The review used:

- the worker's execution transcript and final milestone report;
- the pushed [`dev/statements-v1`](https://github.com/JUrban/hol2mg/tree/dev/statements-v1) branch and its 40-commit history;
- the repository README, design document, implementation reports, manifests, registries, generated files, and update tooling;
- the checked-in God1-compatible Megalodon executable and God1 signature/index;
- the supplied paper *GRUNGE: A Grand Unified ATP Challenge* (arXiv:1903.02539v2);
- the supplied paper *Hammering Higher Order Set Theory* (arXiv:2509.08264v1);
- the God1/Godement authoring conventions and the target proof style exemplified by `100thms_12.mg`.

### Review limitation

The audit environment did not contain `ocamlopt` and `ocamlfind`, so the translator could not be rebuilt and the complete `make test` suite could not be rerun there. This is an environment limitation, not evidence of a repository failure. The generated Megalodon output could be checked independently: all 23 Core shards and representative large Multivariate shards passed the bundled checker.

## 3. Executive verdict

`statements-v1` is a substantial and credible completion of the public statement-generation milestone. It is not yet a semantic certification of those statements and is not a proof importer.

The next phase should therefore preserve `dev/statements-v1` and move to a new branch, recommended as:

```text
dev/semantics-v1
```

The next primary deliverable should be a checked chain from typed HOL syntax, through a private literal interpretation, to the public native God1-style theorem. Proof recording/export should remain a later pilot until this semantic chain is working on the complete Core profile.

## 4. Verified `statements-v1` baseline

The branch contains materially useful engineering rather than a demonstration-only prototype:

- kernel-level HOL Light extraction into typed, de Bruijn-based JSONL;
- a native God1-style elaborator with explicit mapping registries and function-view handling;
- generation of constant and type definitions;
- deterministic sharding, manifests, source indexing, reports, semantic/update diffs, and regeneration tooling;
- a native finite-sequence library whose 36 theorems are proved;
- no generated `Axiom` declarations;
- no public use of `HOLType`, `hlist`, generic encoded application, or ordered-pair graph functions in the inspected generated library;
- successful Megalodon checking of every generated Core shard and the inspected large Multivariate shards.

The reviewed manifests reported:

| Profile | Public statements | Total statements |
|---|---:|---:|
| Core | 2,685 | 2,984 |
| Standard | 4,290 | 4,590 |
| Vectors | 4,784 | 5,084 |
| Multivariate | 17,138 | 17,526 |

These figures should be treated as the frozen `statements-v1` baseline and corrected wherever older documentation differs.

## 5. Findings

### A1. The literal semantic layer is intentionally unimplemented

**Severity for statement generation:** none; this was deliberately deferred.  
**Severity for semantic certification:** blocking.

`lib/literal.ml` is only a placeholder. The current compiler largely proceeds directly from typed source IR to attractive native output. This produces useful statements, but it does not yet give a simple, independently checkable account of the exact HOL meaning before nativeization.

**Required response:** Implement a private, syntax-directed literal interpretation of typed HOL terms. This pass must be semantically boring: its purpose is fidelity and auditability, not pleasant public notation.

### A2. Recorded transport obligations are not checked transports

The manifests distinguish results such as `transport_required` and `generalization_required`. In the reviewed Multivariate output, these categories covered most public statements. This is honest and useful metadata, but it is not a proof that the native statement follows from the literal HOL interpretation.

**Required response:** A theorem may be labeled `native_certified` only when Megalodon has checked every bridge, compatibility lemma, generalization step, and final derivation on its path. An obligation recorded in a manifest is not a discharged obligation.

### A3. The trust boundary needs to be explicit

Proof export has not begun, so the original HOL theorem cannot yet arrive with its checked HOL proof. That does not prevent the translator from checking all subsequent nativeization work.

The intended temporary structure is:

```text
typed HOL statement
        |
        | syntax-directed interpretation
        v
literal Megalodon statement L
        |
        | admitted source fact until proof export
        v
checked bridge/generalization proof: L -> N
        |
        v
public native statement N
```

The only phase-specific admission should represent the imported-but-not-yet-replayed HOL theorem at the literal boundary. Bridge lemmas, empty-carrier cases, mapping compatibility theorems, and the derivation of the native theorem must not be `Admitted`.

**Required response:** Add this trust contract to `docs/DESIGN.md`, the generated manifests, and checker gates.

### A4. Empty-carrier generalization is a proof obligation

HOL types are inhabited; public God1-style carriers may be empty. Removing `HOLType` or a nonemptiness hypothesis syntactically is therefore not semantics-preserving by itself.

For each theorem, one of the following must be recorded and checked:

1. the public theorem retains a mathematically natural nonemptiness premise;
2. an existing structure supplies a witness, such as zero or an identity;
3. a separate empty-carrier proof establishes the generalized public statement.

**Required response:** Replace syntactic generalization labels with generated, checked proof paths. Choice, `ARB`, unconstrained witnesses, and higher-order equality require particularly careful tests.

### A5. Representation bridges require proved compatibility, not name mappings

Mappings for naturals, reals, products, lists, vectors, functions, Booleans, and defined types are central semantic decisions. A registry entry can select a target representation but cannot establish that source constants and operations respect it.

**Required response:** Define logical relations (or an equally systematic checked framework) for base types, products, functions, predicates, and constructed types. Prove compatibility theorems for mapped constants. Use bounded/Pi set-functions only where functions escape as values; retain meta-functions as the normal public God1 interface.

### B1. Source-IR type errors must be fatal or quarantined

The reviewed implementation reports source-IR type errors but does not make them fail generation or necessarily quarantine the affected theorem. Continuing after such an error can invalidate all later reasoning about the emitted statement.

**Required response:** Make source-IR type checking a hard gate. No theorem with a type error may reach literal or native output. The failure must identify the source theorem, subterm, expected type, actual type, and provenance.

### B2. The Core golden test is currently ineffective

The Core golden test file was empty during review, so that part of the advertised self-test did not exercise any examples.

**Required response:** Add a reviewed fixture set containing difficult higher-order and representation-sensitive statements. Golden tests should verify typed source IR, literal output, native output, status metadata, and deterministic regeneration—not merely successful parsing.

### B3. Continuous integration is absent

There was no CI configuration in the reviewed branch.

**Required response:** Add CI covering builds, unit/golden tests, deterministic regeneration, manifest consistency, forbidden-public-artifact checks, and Megalodon checking of the agreed generated slice. Pin relevant tool and repository revisions.

### B4. Five native prelude theorems remain admitted

The remaining native prelude admissions enlarge the trust base and would make later certification labels ambiguous.

**Required response:** Prove them or explicitly remove dependent mappings from the certified set. A certified bridge path may not depend on an admitted prelude theorem.

### B5. Documentation and counts have drifted

The README counts for Core and Vectors were stale, and parts of the design's open-items list still described completed work as pending.

**Required response:** Freeze the verified v1 counts above, update completed/pending status without rewriting historical reports, and automatically check documentation tables against manifests where practical.

## 6. Literal-layer correctness contract

The authoritative design should specify the following rules.

### 6.1 Inputs and outputs

For every supported source theorem, retain:

1. source revision and HOL theorem identity;
2. canonical typed source IR and its stable hash;
3. generated literal Megalodon statement;
4. generated native Megalodon statement;
5. mappings and bridge lemmas used;
6. the checked derivation from the literal fact to the native result;
7. checker versions and results.

### 6.2 Minimum literal semantics

The literal pass must define and test at least:

- HOL type variables as inhabited carrier sets;
- function types as the appropriate set-function spaces;
- typed variables as members of their carriers;
- application and abstraction using the checked bounded-function infrastructure;
- equality, including extensional equality at function types;
- bounded quantification over interpreted carriers;
- the distinction between propositions and Booleans used as data;
- products and other primitive type constructors;
- defined constants and HOL type definitions;
- choice and `ARB`, including their dependence on inhabitedness.

The literal representation may be verbose and private. Public readability is the responsibility of the later nativeization pass.

### 6.3 Function policy

Public output should continue to follow the Godement/God1 conventions:

- meta-functions are the default authoring interface;
- bounded-lambda/Pi functions are used when a function must be a set-valued object;
- ordered-pair graph functions are not a new public representation.

The literal layer may use uniform set-functions. The bridge must prove that the chosen public meta-function or reified bounded function agrees on the HOL domain. Function equality must not accidentally depend on behavior outside that domain.

### 6.4 Certification statuses

Use monotone, machine-checked statuses rather than a single optimistic label. A suggested progression is:

```text
extracted
source_typed
literal_emitted
literal_checked
native_emitted
transport_checked
public_checked
native_certified
```

Each status must have an exact predicate and required artifacts. `native_certified` requires the entire chain. Unsupported theorems may be quarantined during development, but must never silently fall back to certification.

## 7. Required difficult fixtures

The initial semantic slice should deliberately include:

- polymorphic identity, composition, and higher-order application;
- function equality and functions stored inside products or lists;
- predicates versus Booleans used as values;
- quantification over empty and inhabited carriers;
- choice, `ARB`, and existence of unconstrained elements;
- products and finite sequences, including mapped higher-order operations;
- natural-number arithmetic and induction statements;
- real arithmetic/order statements mapped to the native real carrier;
- Cartesian vectors and finite function spaces;
- translated type definitions, including abstraction/representation facts;
- one representative theorem from each major Core translation category;
- representative Multivariate statements that currently require both transport and generalization.

## 8. Phase acceptance criteria

The semantic phase should not be declared complete until:

1. `dev/statements-v1` remains reproducible and unchanged as the baseline;
2. source-IR type errors are fatal and zero occur in the supported Core profile;
3. every supported Core theorem has checked literal and native modules;
4. every Core public theorem has a Megalodon-checked transport/generalization path;
5. no bridge, compatibility, empty-carrier, or certified prelude theorem is admitted;
6. the only remaining phase-specific admissions are clearly identified literal source facts awaiting proof export;
7. all Core theorems are certified—quarantine is acceptable during development, not at phase completion;
8. two clean runs from pinned inputs produce byte-identical outputs and manifests;
9. CI runs the golden fixtures, certification gates, and agreed corpus checks;
10. reports distinguish statement coverage, semantic-certification coverage, and proof-import coverage.

Only after these conditions hold should a proof-recording/export pilot become a substantial parallel workstream.

## 9. Recommended implementation order

1. Preserve and tag or otherwise record `dev/statements-v1`; branch to `dev/semantics-v1`.
2. Fix fatal validation, golden tests, CI, documentation drift, and remaining prelude admissions.
3. Specify the literal IR/semantics and implement the syntax-directed pass.
4. Establish the trust-boundary emission pattern and certification manifest.
5. Prove foundational logical relations and representation bridges.
6. Certify the difficult fixture set end to end.
7. Scale certification across the complete Core profile.
8. Reassess the architecture independently before scaling to larger profiles.
9. Begin a small proof-recording/export pilot only after the semantic checkpoint.

## 10. Worker response format

The companion audit response should use a table like:

| Finding | Decision | Implementation/design evidence | Remaining risk |
|---|---|---|---|
| A1 | Accept / Modify / Reject | Commit, test, or design section | Concise explanation |

Disagreement is allowed and can improve the design, but it should be explicit, technically justified, and supported by a minimal checked experiment where possible.

## 11. Bottom line

The project has a strong statement-generation base. The main risk now is not output volume; it is allowing attractive native statements to be mistaken for semantically certified translations. The next branch should make the semantic chain explicit and mechanically checked while preserving the clean God1-style public interface already achieved by `statements-v1`.
