#!/usr/bin/env python3
"""Check that the coverage numbers quoted in README.md and docs/DESIGN.md agree with the
committed manifests (generated/manifests/<profile>.manifest.json)."""
import json, os, re, sys
here = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PUBLIC = ('exact_native', 'transport_required', 'generalization_required', 'native_reuse')
bad = 0
counts = {}
for prof in ('core', 'standard', 'mv_vectors', 'multivariate'):
    f = os.path.join(here, 'generated', 'manifests', prof + '.manifest.json')
    if not os.path.exists(f):
        continue
    m = json.load(open(f))
    n = len(m['items']); pub = sum(1 for i in m['items'] if i['status'] in PUBLIC)
    cert = sum(1 for i in m['items'] if i.get('cert_status') == 'native_certified')
    counts[prof] = (n, pub, cert)
readme = open(os.path.join(here, 'README.md')).read()
for prof, (n, pub, cert) in counts.items():
    row = re.search(r'^\| %s[^|]*\| *(\d+) *\| *(\d+) *\|' % re.escape(prof), readme, re.M)
    if not row:
        print(f'doc_counts: README has no coverage row for {prof}'); bad = 1; continue
    if (int(row.group(1)), int(row.group(2))) != (n, pub):
        print(f'doc_counts: README row {prof} says {row.group(1)}/{row.group(2)}, manifest says {n}/{pub}'); bad = 1
design = open(os.path.join(here, 'docs', 'DESIGN.md')).read()
for prof, (n, pub, cert) in counts.items():
    if re.search(r'\b%s %d/%d\b' % (re.escape(prof), pub, n), design) is None and re.search(r'\| %s[^|]*\| *%d *\| *%d *\|' % (re.escape(prof), n, pub), design) is None:
        print(f'doc_counts: DESIGN.md does not state {prof} {pub}/{n}'); bad = 1
print('doc_counts:', 'OK' if not bad else 'FAIL', {p: f'{pub}/{n} public, {cert} certified' for p, (n, pub, cert) in counts.items()})
sys.exit(bad)
