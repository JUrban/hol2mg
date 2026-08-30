#!/usr/bin/env python3
"""Classify the public theorems whose bridge is unsupported (docs/DESIGN.md §21.9 residue table).

usage: tools/bridge_residue.py generated/manifests/core.manifest.json [--names]
"""
import json, re, sys, collections

RULES = [
    ("cart index outside the range (`$`/`finite_index`/`idx_n` side conditions)", r"side condition .* :e idx"),
    ("finiteness side condition not derivable from the hypotheses in scope", r"side condition finite"),
    ("list side condition (index/non-empty) not derivable", r"side condition .*(seq_len|seq_nil)"),
    ("iterate side conditions (monoidal operation) not derivable", r"side condition \(forall x y :e"),
    ("other side conditions", r"side condition"),
    ("compat lemma missing (partially specified or unmapped constant)", r"compat_missing"),
    ("arity-4 binders / patterns", r"metapred\(([^,]*,){3}|metafun\(([^,]*,){3}"),
    ("3-ary binders or patterns not supported", r"bridge_binder: view|nested paired abstraction"),
    ("function-typed pattern variables into sets of subsets", r"nested subset argument relation"),
    ("partial applications / meta arguments of higher arity", r"partial application|metafun argument|set function applied"),
    ("`?!` over a non-lambda predicate", r"\?!"),
    ("unmapped constant (GSPEC in a definitional theorem)", r"unmapped constant"),
]

def main():
    path = sys.argv[1]; names = "--names" in sys.argv
    m = json.load(open(path))
    groups = collections.OrderedDict((k, []) for k, _ in RULES); groups["other"] = []
    for e in m["items"]:
        if e.get("cert_status") != "bridge_unsupported": continue
        r = e.get("cert_error", "")
        for k, pat in RULES:
            if re.search(pat, r): groups[k].append(e["name"]); break
        else: groups["other"].append(e["name"])
    total = sum(len(v) for v in groups.values())
    print(f"| reason | theorems |\n|---|---|")
    for k, v in groups.items():
        if not v: continue
        ex = ", ".join(f"`{n}`" for n in sorted(v)[: (len(v) if names else 6)]) + ("" if names or len(v) <= 6 else ", …")
        print(f"| {k} | {len(v)}: {ex} |")
    print(f"\ntotal: {total}")

if __name__ == "__main__": main()
