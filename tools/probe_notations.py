#!/usr/bin/env python3
"""Empirically determine the final notation table of a Megalodon signature.

For every Infix/Prefix/Postfix declaration in the signature, the symbol may be
rebound (also inside sections, whose effect on the global table is not
textual).  We ask Megalodon which constant each symbol denotes at the end of
the signature by comparing definition hashes (-v 6 prints MGID lines).

Output: JSON {"infix": {sym: [const, prec, assoc]}, "prefix": {sym: [const, prec]},
              "postfix": {sym: [const, prec]}}
"""
import json, os, re, subprocess, sys, tempfile

def main(sig, index, megalodon, out):
    decls = {'infix': {}, 'prefix': {}, 'postfix': {}}
    cands = {'infix': {}, 'prefix': {}, 'postfix': {}}
    re_inf = re.compile(r'^Infix +(\S+) +(\d+) *(left|right)? *:= *([A-Za-z_0-9\']+)')
    re_pre = re.compile(r'^Prefix +(\S+) +(\d+) *:= *([A-Za-z_0-9\']+)')
    re_post = re.compile(r'^Postfix +(\S+) +(\d+) *:= *([A-Za-z_0-9\']+)')
    for line in open(sig):
        m = re_inf.match(line)
        if m:
            decls['infix'].setdefault(m.group(1), []).append((m.group(4), int(m.group(2)), m.group(3) or 'none')); continue
        m = re_pre.match(line)
        if m:
            decls['prefix'].setdefault(m.group(1), []).append((m.group(3), int(m.group(2)))); continue
        m = re_post.match(line)
        if m:
            decls['postfix'].setdefault(m.group(1), []).append((m.group(3), int(m.group(2)))); continue
    def run(lines):
        with tempfile.NamedTemporaryFile('w', suffix='.mg', delete=False) as f:
            f.write('\n'.join(lines) + '\n'); path = f.name
        r = subprocess.run([megalodon, '-ind', index, '-I', sig, '-v', '6', path], capture_output=True, text=True)
        os.unlink(path)
        ok = 'Everything looks good' in r.stdout
        return ok, dict(re.findall(r'\(MGID "([^"]+)" "([0-9a-f]+)"\)', r.stdout + r.stderr))
    result = {'infix': {}, 'prefix': {}, 'postfix': {}}
    for kind in ('infix', 'prefix', 'postfix'):
        for sym, l in decls[kind].items():
            cands = list(dict.fromkeys(l))
            resolved = False
            for ty, vty in (('set -> set -> set', 'set -> set'), ('set -> set -> prop', 'set -> prop'), ('prop -> prop -> prop', 'prop -> prop')):
                lines = []
                if kind == 'infix':
                    lines.append(f'Definition h2m_probe : {ty} := fun a b => a {sym} b.')
                    for j, c in enumerate(cands):
                        lines.append(f'Definition h2m_probe_c{j} : {ty} := fun a b => {c[0]} a b.')
                elif kind == 'prefix':
                    lines.append(f'Definition h2m_probe : {vty} := fun a => {sym} a.')
                    for j, c in enumerate(cands):
                        lines.append(f'Definition h2m_probe_c{j} : {vty} := fun a => {c[0]} a.')
                else:
                    lines.append(f'Definition h2m_probe : {vty} := fun a => a {sym}.')
                    for j, c in enumerate(cands):
                        lines.append(f'Definition h2m_probe_c{j} : {vty} := fun a => {c[0]} a.')
                # candidates may individually fail to typecheck (polymorphic); probe candidates one by one
                ok, h = run(lines[:1])
                if not ok: continue
                target = h.get('h2m_probe')
                for j, c in enumerate(cands):
                    okc, hc = run([lines[0], lines[1 + j]])
                    if okc and hc.get(f'h2m_probe_c{j}') == target:
                        result[kind][sym] = [c[0], c[1]] + ([c[2]] if kind == 'infix' else [])
                        resolved = True
                        break
                if resolved: break
            if not resolved:
                print('unresolved symbol', kind, sym, cands, file=sys.stderr)
    json.dump(result, open(out, 'w'), indent=1, sort_keys=True)
    print(f"resolved {sum(len(v) for v in result.values())} notations -> {out}")

if __name__ == '__main__':
    main(*sys.argv[1:5])
