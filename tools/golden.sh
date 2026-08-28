#!/bin/bash
# Golden statement tests: compare selected theorem statements in a manifest with tests/golden/<profile>.txt
# Usage: tools/golden.sh <profile> [--update]
HERE=$(cd "$(dirname "$0")/.." && pwd)
prof=$1; mode=$2
man=$HERE/generated/public/$prof/$prof.manifest.json
gold=$HERE/tests/golden/$prof.txt
python3 - "$man" "$gold" "$mode" <<'PY'
import json, sys
man, gold, mode = sys.argv[1:4]
items = {i['source_name']: i for i in json.load(open(man))['items']}
if mode == '--update':
    names = [l.split(' [', 1)[0].strip() for l in open(gold) if l.strip() and not l.startswith('#')] if __import__('os').path.exists(gold) else []
    with open(gold, 'w') as f:
        f.write('# name [status]: statement   (regenerate with tools/golden.sh PROFILE --update after review)\n')
        for n in names:
            i = items[n]; f.write(f"{n} [{i['status']}]: {i['statement'] or i['error']}\n")
    print('golden file updated'); sys.exit(0)
bad = 0
for l in open(gold):
    if not l.strip() or l.startswith('#'): continue
    n, rest = l.rstrip('\n').split(' [', 1)
    i = items.get(n)
    cur = f"{i['status']}]: {i['statement'] or i['error']}" if i else 'MISSING'
    if cur != rest:
        bad += 1; print(f"GOLDEN MISMATCH {n}\n  expected: [{rest}\n  actual:   [{cur}")
print('golden:', 'OK' if bad == 0 else f'{bad} mismatches'); sys.exit(1 if bad else 0)
PY
