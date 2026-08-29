#!/usr/bin/env python3
"""Golden fixture tests for a translation profile.

  tools/golden.py PROFILE            compare generated/public/PROFILE/PROFILE.manifest.json with tests/golden/PROFILE.golden
  tools/golden.py PROFILE --update   regenerate the golden file for the names in tests/golden/PROFILE.names
  tools/golden.py PROFILE --manifest FILE   compare against another manifest (used by the self test)

The names file lists one HOL theorem per line (a `# ` line starts a category).  The golden file
records, per fixture: the category, the source-IR hash, the HOL statement, the certification
status, the native statement and (when present in the manifest) the literal statement and the
bridge status.  Every recorded field must match exactly; a fixture missing from the manifest fails.
"""
import json, os, sys

FIELDS = ['hash', 'source', 'status', 'statement', 'literal', 'bridge', 'cert_status']

def read_names(path):
    cat, out = 'uncategorized', []
    for l in open(path):
        l = l.rstrip('\n')
        if not l.strip():
            continue
        if l.startswith('#'):
            cat = l.lstrip('#').strip(); continue
        out.append((cat, l.strip()))
    return out

def fixture_of(item):
    d = {k: item.get(k, '') for k in FIELDS}
    return {k: v for k, v in d.items() if v != ''}

def render(cat, name, fx):
    lines = [f'### {name}   [{cat}]']
    for k in FIELDS:
        if k in fx:
            lines.append(f'{k}: {fx[k]}')
    return '\n'.join(lines) + '\n'

def parse_golden(path):
    out, cur, name, cat = {}, None, None, None
    for l in open(path):
        l = l.rstrip('\n')
        if l.startswith('### '):
            if name: out[name] = (cat, cur)
            head = l[4:]
            name, _, rest = head.partition('   [')
            cat = rest.rstrip(']'); cur = {}
        elif l and cur is not None and ': ' in l:
            k, _, v = l.partition(': ')
            if k in FIELDS: cur[k] = v
    if name: out[name] = (cat, cur)
    return out

def main():
    prof = sys.argv[1]; args = sys.argv[2:]
    here = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    man = os.path.join(here, 'generated', 'public', prof, prof + '.manifest.json')
    if '--manifest' in args: man = args[args.index('--manifest') + 1]
    names_file = os.path.join(here, 'tests', 'golden', prof + '.names')
    gold = os.path.join(here, 'tests', 'golden', prof + '.golden')
    items = {i['source_name']: i for i in json.load(open(man))['items']}
    names = read_names(names_file)
    if '--update' in args:
        missing = [n for _, n in names if n not in items]
        if missing:
            print('names missing from manifest:', missing); sys.exit(1)
        with open(gold, 'w') as f:
            f.write(f'# Golden fixtures for profile {prof}: {len(names)} theorems.  Regenerate with tools/golden.py {prof} --update after reviewing the statements.\n\n')
            for cat, n in names:
                f.write(render(cat, n, fixture_of(items[n])) + '\n')
        print(f'golden file updated: {len(names)} fixtures'); return
    if not os.path.exists(gold):
        print('no golden file', gold); sys.exit(1)
    gold_items = parse_golden(gold)
    bad = 0
    for n, (cat, fx) in gold_items.items():
        i = items.get(n)
        if i is None:
            bad += 1; print(f'GOLDEN MISSING {n}'); continue
        cur = fixture_of(i)
        for k in FIELDS:
            if k in fx and fx[k] != cur.get(k, ''):
                bad += 1; print(f'GOLDEN MISMATCH {n} {k}\n  expected: {fx[k]}\n  actual:   {cur.get(k, "")}')
    print(f'golden {prof}: {len(gold_items)} fixtures, ' + ('OK' if bad == 0 else f'{bad} mismatches'))
    sys.exit(1 if bad else 0)

if __name__ == '__main__':
    main()
