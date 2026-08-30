#!/usr/bin/env python3
"""Record the results of a proof-import pilot round for the committed certification (docs/DESIGN.md 22.6).

usage: tools/merge_pilot.py <profile> <pilot-manifest.json> <tag> [--apply]

The pilot manifest is the one written by tools/proof_pilot.sh (cert_finalize on the pilot's own
certification modules, imported proofs included).  For every theorem whose literal fact was proved
through imported proofs there (proof_imported and literal_fact_proved), the sidecar
generated/proofcert/<profile>.pilot_results.json records the statement hash, a digest of the
literal statement text and the public names of the proof's leaves.  tools/cert_finalize.py
re-applies the sidecar on every certification cycle: a recorded fact counts only while the
theorem and, transitively, all its leaves still have the same hash and literal text in the
committed manifest, and `fully_proved` additionally requires the bridge to be transport-checked
in that cycle.  Without --apply the tool only reports what would be recorded.
"""
import hashlib, json, os, sys, time

def lit_digest(i): return hashlib.md5((i.get('literal') or '').encode()).hexdigest()

def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    if len(args) != 3: print(__doc__); sys.exit(2)
    prof, pilot_file, tag = args; apply = '--apply' in sys.argv
    here = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    pilot = json.load(open(pilot_file))
    by_hol = {i['source_name']: i for i in pilot['items']}
    proved = {}
    for i in pilot['items']:
        if not (i.get('proof_imported') and i.get('literal_fact_proved')): continue
        leaves = []
        for l in i.get('proof_leaves', []):
            li = by_hol.get(l)
            if li is None: leaves = None; break
            leaves.append(li['name'])
        if leaves is None: continue
        proved[i['name']] = {'hash': i.get('hash'), 'lit': lit_digest(i), 'leaves': sorted(set(leaves))}
    side_file = os.path.join(here, 'generated', 'proofcert', prof + '.pilot_results.json')
    side = {'profile': prof, 'rounds': [], 'proved': {}}
    if os.path.exists(side_file): side = json.load(open(side_file))
    new = sum(1 for n in proved if n not in side['proved'])
    # the committed manifest: how many recorded facts currently validate
    man = json.load(open(os.path.join(here, 'generated', 'manifests', prof + '.manifest.json')))
    by_name = {i['name']: i for i in man['items']}
    merged = dict(side['proved']); merged.update(proved)
    def matches(n): i = by_name.get(n); return i is not None and i.get('hash') == merged[n]['hash'] and lit_digest(i) == merged[n]['lit']
    model = set(i['name'] for i in man['items'] if i.get('literal_proved'))
    good = set(); changed = True
    while changed:
        changed = False
        for n, r in merged.items():
            if n in good or not matches(n): continue
            if all(l in good or l in model for l in r['leaves']): good.add(n); changed = True
    full = sum(1 for n in good if by_name[n].get('cert_status') == 'transport_checked')
    print(f'merge_pilot {prof} {tag}: pilot proved {len(proved)} literal facts ({new} new); after merge {len(merged)} recorded, {len(good)} validate against the committed manifest, {full} public theorems would be fully_proved')
    if apply:
        side['proved'] = merged
        side['rounds'].append({'tag': tag, 'file': os.path.relpath(pilot_file, here), 'proved': len(proved), 'time': time.strftime('%Y-%m-%d %H:%M')})
        os.makedirs(os.path.dirname(side_file), exist_ok=True)
        json.dump(side, open(side_file, 'w'), indent=1)
        print(f'recorded in {os.path.relpath(side_file, here)}; run tools/update.sh {prof} (or tools/cert_finalize.py) to apply')

if __name__ == '__main__': main()
