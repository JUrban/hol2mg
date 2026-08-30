#!/usr/bin/env python3
"""Finalize certification statuses from a check_cert.sh log (docs/DESIGN.md §21.6).

  tools/cert_finalize.py PROFILE CHECKLOG [--manifest FILE]

bridge_emitted items in shards reported OK become transport_checked (the bridge was Qed-checked
and the derived public theorem checked; formerly `native_certified`).  Items whose literal source
fact is discharged by a model theorem (Qed in the certification module) are counted as literal_proved;
fully_proved (imported HOL proofs) is reserved for the proof-export pilot.
"""
import json, os, re, sys
prof = sys.argv[1]; log = sys.argv[2]
here = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
man_file = os.path.join(here, 'generated', 'public', prof, prof + '.manifest.json')
if '--manifest' in sys.argv: man_file = sys.argv[sys.argv.index('--manifest') + 1]
cert_dir = os.path.join(here, 'generated', 'cert', prof)
if '--cert-dir' in sys.argv: cert_dir = sys.argv[sys.argv.index('--cert-dir') + 1]
ok, fail = set(), {}
for l in open(log):
    m = re.match(r'OK\s+(\S+)', l)
    if m: ok.add(m.group(1))
    m = re.match(r'FAIL\s+(\S+):(.*)', l)
    if m: fail[m.group(1)] = m.group(2).strip()[:200]
base_ok = 'base' in ok
m = json.load(open(man_file))
# statements in the certification modules
cert_stmts = {}
fully_proved = set()   # literal source fact proved by a model theorem: no admission remains
for s in ok | set(fail):
    f = os.path.join(cert_dir, s + '.mg')
    if not os.path.exists(f): continue
    txt = open(f).read()
    for mm in re.finditer(r'^Theorem ([A-Za-z_0-9\']+) : (.*)\.\nexact \(\1_bridge hlt_\1\)\.\n(Admitted|Qed)\.', txt, re.M):
        cert_stmts[mm.group(1)] = mm.group(2)
        if mm.group(3) == 'Qed': fully_proved.add(mm.group(1))
n_cert = n_fail = n_mismatch = n_proved = 0
for i in m['items']:
    if i.get('cert_status') != 'bridge_emitted': continue
    sh = i['shard']
    if base_ok and sh in ok:
        if cert_stmts.get(i['name']) == i['statement']:
            i['cert_status'] = 'transport_checked'; n_cert += 1
            if i['name'] in fully_proved and i.get('literal_proved'): n_proved += 1
        else:
            i['cert_status'] = 'bridge_mismatch'; i['cert_error'] = 'certified statement differs from the public statement'; n_mismatch += 1
    else:
        i['cert_status'] = 'bridge_failed'; i['cert_error'] = fail.get(sh, 'base failed' if not base_ok else 'not checked'); n_fail += 1
# uniform-proof closure (independent of the bridge): a theorem's literal fact is proved when its proof is
# imported in a checked shard and every named leaf is proved (transitively), or by a model theorem;
# fully_proved additionally requires the public theorem to be transport_checked
by_hol = {i['source_name']: i for i in m['items']}
# imports admitted by the CHECK_RETRY mechanism of tools/check_cert.sh (an import whose checked
# derivation failed): not proof_imported for the closure
admitted_imports = set()
for line in open(log):
    m = re.search(r'admitted imports:((?: [A-Za-z_0-9\']+)+)', line)
    if m: admitted_imports.update(m.group(1).split())
for i in m['items'] if False else []: pass
def checked(i): return base_ok and i.get('shard') in ok
for i in m['items']:
    if i['name'] in admitted_imports and i.get('proof_imported'):
        i['proof_imported'] = False; i['proof_error'] = 'checked derivation failed; admitted'
fp = set(i['name'] for i in m['items'] if i.get('literal_proved') and checked(i))
changed = True
while changed:
    changed = False
    for i in m['items']:
        if i['name'] in fp or not (i.get('proof_imported') and checked(i)): continue
        leaves = [by_hol.get(l) for l in i.get('proof_leaves', [])]
        if all(l is not None and l['name'] in fp for l in leaves):
            fp.add(i['name']); changed = True
for i in m['items']:
    i['literal_fact_proved'] = i['name'] in fp
    i['fully_proved'] = (i['name'] in fp and bool(i.get('proof_imported')) and i.get('cert_status') == 'transport_checked')
n_full = sum(1 for i in m['items'] if i['fully_proved'])
n_lfp = sum(1 for i in m['items'] if i['literal_fact_proved'] and i.get('proof_imported'))
m['certification'] = {'checked_shards': sorted(ok), 'failed_shards': fail, 'transport_checked': n_cert, 'literal_proved': n_proved, 'fully_proved': n_full}
json.dump(m, open(man_file, 'w'), indent=1)
print(f'cert_finalize {prof}: {n_cert} transport_checked ({n_proved} literal_proved, {n_full} fully_proved; {n_lfp} literal facts proved by imported proofs), {n_fail} bridge_failed, {n_mismatch} mismatches; shards OK {len(ok)}, failed {len(fail)}')
sys.exit(1 if fail or n_mismatch else 0)
