#!/usr/bin/env python3
"""Advisory source indexer: map top-level theorem/definition names to file:line.

Scans the HOL Light source files listed in an export's meta record (in load
order) for `let NAME = ...` / `let NAME,NAME2 = ...` bindings at column 0.
Kernel values decide statements; this index only supplies provenance for
sharding and comments.  Later bindings of the same name override earlier ones
(matching OCaml toplevel shadowing).
"""
import json, os, re, sys

def main(export, holdir, out):
    meta = None
    with open(export) as f:
        for line in f:
            r = json.loads(line)
            if r['kind'] == 'meta':
                meta = r; break
    files = [f for f, _ in meta['loaded_files']]
    # locate each basename: search holdir for a file with that basename (prefer top level)
    index = {}
    let_re = re.compile(r'^let\s+(rec\s+)?([A-Za-z_][A-Za-z0-9_\']*(?:\s*,\s*[A-Za-z_][A-Za-z0-9_\']*)*)\s*(?::[^=]*)?=')
    for base in files:
        cands = [os.path.join(holdir, base)]
        if not os.path.exists(cands[0]):
            cands = []
            for root, _, fs in os.walk(holdir):
                if base in fs: cands.append(os.path.join(root, base))
        if not cands: continue
        path = cands[0]
        rel = os.path.relpath(path, holdir)
        with open(path, errors='replace') as f:
            for i, line in enumerate(f, 1):
                m = let_re.match(line)
                if m:
                    for nm in re.split(r'\s*,\s*', m.group(2)):
                        index[nm] = [rel, i]
    json.dump({'schema': 1, 'files': files, 'index': index}, open(out, 'w'), indent=0, sort_keys=True)
    print(f'indexed {len(index)} names from {len(files)} files')

if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2], sys.argv[3])
