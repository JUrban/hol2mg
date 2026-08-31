#!/usr/bin/env python3
"""Phase N1 of native proof synthesis (docs/DESIGN.md 23.4): step-mining analytics.

Reads a recorded proof export (generated/internal/<profile>.proofs.jsonl) and reports, per
recorded theorem and in aggregate: mined step counts at named-lemma granularity (congruence
clusters = one rewrite step), a coarse proof classification, and rigidity (the set of HOL
constants occurring in intermediate conclusions, versus a whitelist of rigidly elaborated
constants).

usage: tools/native_proof_stats.py generated/internal/core.proofs.jsonl [--limit N] [--csv F]
"""
import json, sys, collections

CONG = {"REFL", "MK_COMB", "ABS", "BETA", "TRANS"}
INSTR = {"INST", "INST_TYPE"}
INDUCTION_LEAVES = {
    "num_INDUCTION", "INDUCTION", "num_WF", "num_WOP", "list_INDUCT", "WF_IND",
    "WF_INDUCT", "num_RECURSION", "list_RECURSION", "SNO_INDUCT",
}
# constants whose elaboration is compositional (propositional core, equality, arithmetic on
# num/real/int with mapped operations, numerals); everything else counts as non-rigid
RIGID = {
    "=", "/\\", "\\/", "~", "==>", "!", "?", "?!", "T", "F", "@",
    "SUC", "PRE", "+", "-", "*", "EXP", "DIV", "MOD", "<=", "<", ">=", ">",
    "NUMERAL", "BIT0", "BIT1", "_0", "MIN", "MAX", "EVEN", "ODD", "FACT",
    "real_add", "real_sub", "real_mul", "real_div", "real_neg", "real_inv", "real_pow",
    "real_le", "real_lt", "real_ge", "real_gt", "real_abs", "real_max", "real_min",
    "real_of_num", "real_sgn", "mk_real", "dest_real",
    "int_add", "int_sub", "int_mul", "int_neg", "int_le", "int_lt", "int_ge", "int_gt",
    "int_abs", "int_max", "int_min", "int_of_num", "int_pow", "int_sgn", "num_of_int",
    "abs", "COND",
}

def main():
    path = sys.argv[1]
    limit = int(sys.argv[sys.argv.index("--limit") + 1]) if "--limit" in sys.argv else None
    csvf = sys.argv[sys.argv.index("--csv") + 1] if "--csv" in sys.argv else None
    terms = {}
    tconsts = {}   # term id -> frozenset of constant names (memo)
    rows = []
    agg = collections.Counter(); cls_count = collections.Counter()
    nonrigid_freq = collections.Counter()
    n_proofs = 0

    def consts_of(tid):
        # iterative: constants in a term dag node
        out = tconsts.get(tid)
        if out is not None: return out
        stack = [tid]; acc = set(); seen = set()
        while stack:
            t = stack.pop()
            if t in seen: continue
            seen.add(t)
            memo = tconsts.get(t)
            if memo is not None: acc |= memo; continue
            nd = terms.get(t)
            if nd is None: continue
            k = nd.get("k")
            if k == "c": acc.add(nd.get("n"))
            elif k == "ap": stack.append(nd.get("f")); stack.append(nd.get("x"))
            elif k == "l": stack.append(nd.get("b"))
        tconsts[tid] = frozenset(acc)
        return tconsts[tid]

    with open(path) as f:
        for line in f:
            if line.startswith('{"kind":"term"'):
                r = json.loads(line); terms[r["id"]] = r["node"]; continue
            if not line.startswith('{"kind":"proof"'):
                continue
            r = json.loads(line)
            nodes = r["nodes"]
            n_proofs += 1
            byid = {n["id"]: n for n in nodes}
            nuses = collections.Counter()
            for n in nodes:
                for p in n.get("p", []): nuses[p] += 1
            # congruence clusters: connected components of CONG nodes linked by premise edges
            comp = {}
            def root(i):
                while comp.get(i, i) != i: comp[i] = comp.get(comp[i], comp[i]); i = comp[i]
                return i
            for n in nodes:
                if n["rule"] not in CONG: continue
                comp.setdefault(n["id"], n["id"])
                for p in n.get("p", []):
                    if byid[p]["rule"] in CONG:
                        comp.setdefault(p, p)
                        a, b = root(n["id"]), root(p)
                        if a != b: comp[a] = b
            clusters = collections.defaultdict(list)
            for i in comp: clusters[root(i)].append(i)
            n_clusters = len(clusters)
            # lemma instances: NAMED possibly under INST/INST_TYPE chains
            named_uses = collections.Counter()
            for n in nodes:
                if n["rule"] == "NAMED": named_uses[n["name"]] += 1
            # step estimate: congruence clusters + EQ_MP nodes + DEDUCT nodes + distinct assumes
            n_eqmp = sum(1 for n in nodes if n["rule"] == "EQ_MP")
            n_ded = sum(1 for n in nodes if n["rule"] == "DEDUCT_ANTISYM_RULE")
            n_assume = len({n["tm"] for n in nodes if n["rule"] == "ASSUME"})
            n_named = sum(named_uses.values())
            steps = n_clusters + n_eqmp + n_ded + n_named
            # rigidity: constants in all conclusions
            cs = set()
            for n in nodes: cs |= consts_of(n["concl"])
            nonrigid = sorted(c for c in cs if c not in RIGID)
            for c in nonrigid: nonrigid_freq[c] += 1
            # classification
            rules = collections.Counter(n["rule"] for n in nodes)
            if named_uses.keys() & INDUCTION_LEAVES: cls = "induction"
            elif n_ded == 0 and rules.get("ASSUME", 0) == 0: cls = "rewrite_chain"
            elif not nonrigid: cls = "rigid_glue"
            else: cls = "general"
            cls_count[cls] += 1
            rows.append((r["name"], len(nodes), steps, n_clusters, n_eqmp, n_ded, n_named, cls, len(nonrigid)))
            agg["nodes"] += len(nodes); agg["steps"] += steps
            if limit and n_proofs >= limit: break

    print(f"proofs: {n_proofs}; kernel nodes: {agg['nodes']}; mined steps: {agg['steps']} "
          f"(compression x{agg['nodes']/max(1,agg['steps']):.1f})")
    print("classes:", dict(cls_count))
    for lo, hi in ((0, 10), (11, 25), (26, 50), (51, 100), (101, 10**9)):
        n = sum(1 for r in rows if lo <= r[2] <= hi)
        print(f"  steps {lo:>3}-{'inf' if hi > 10**8 else hi:<3}: {n}")
    rigid_rows = [r for r in rows if r[8] == 0]
    print(f"fully rigid proofs: {len(rigid_rows)}; of those with <= 25 steps: "
          f"{sum(1 for r in rigid_rows if r[2] <= 25)}")
    print("top non-rigid constants:", nonrigid_freq.most_common(15))
    print("\npilot candidates (rigid, <= 25 steps, smallest first):")
    for r in sorted(rigid_rows, key=lambda r: r[2])[:25]:
        print(f"  {r[0]:<40} nodes {r[1]:>5} steps {r[2]:>3} class {r[7]}")
    if csvf:
        with open(csvf, "w") as g:
            g.write("name,nodes,steps,clusters,eqmp,deduct,named,class,nonrigid\n")
            for r in rows: g.write(",".join(map(str, r)) + "\n")
        print("csv:", csvf)

if __name__ == "__main__":
    main()
