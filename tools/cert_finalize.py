#!/usr/bin/env python3
"""Finalize certification statuses from a check_cert.sh log (docs/DESIGN.md §21.6).

  tools/cert_finalize.py PROFILE CHECKLOG [--manifest FILE]

bridge_emitted items in shards reported OK become native_certified (the bridge was Qed-checked
and the derived public theorem checked); items in failed shards become bridge_failed.  Also
verifies that the native statement in the certification module equals the public statement.
"""
import json, os, re, sys
prof = sys.argv[1]; log = sys.argv[2]
here = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
man_file = os.path.join(here, 'generated', 'public', prof, prof + '.manifest.json')
if '--manifest' in sys.argv: man_file = sys.argv[sys.argv.index('--manifest') + 1]
cert_dir = os.path.join(here, 'generated', 'cert', prof)
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
            i['cert_status'] = 'native_certified'; n_cert += 1
            if i['name'] in fully_proved and i.get('literal_proved'): n_proved += 1
        else:
            i['cert_status'] = 'bridge_mismatch'; i['cert_error'] = 'certified statement differs from the public statement'; n_mismatch += 1
    else:
        i['cert_status'] = 'bridge_failed'; i['cert_error'] = fail.get(sh, 'base failed' if not base_ok else 'not checked'); n_fail += 1
m['certification'] = {'checked_shards': sorted(ok), 'failed_shards': fail, 'native_certified': n_cert, 'native_proved': n_proved}
json.dump(m, open(man_file, 'w'), indent=1)
print(f'cert_finalize {prof}: {n_cert} native_certified ({n_proved} fully proved), {n_fail} bridge_failed, {n_mismatch} mismatches; shards OK {len(ok)}, failed {len(fail)}')
sys.exit(1 if fail or n_mismatch else 0)
