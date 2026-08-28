#!/usr/bin/env python3
"""Compare two generation manifests and print an update report:
new / removed / changed (statement hash) / renamed / status-changed theorems.
Usage: tools/diff_manifests.py OLD.json NEW.json [--md]
"""
import json, sys

def load(p):
    j = json.load(open(p)); return j, {i['source_name']: i for i in j['items']}

def main(old, new, md=False):
    jo, o = load(old); jn, n = load(new)
    p = print
    p(f"# Manifest diff: {jo.get('profile')}@{jo.get('hol_light_commit','?')[:12]} -> {jn.get('profile')}@{jn.get('hol_light_commit','?')[:12]}\n")
    added = sorted(set(n) - set(o)); removed = sorted(set(o) - set(n))
    # detect renames: same source hash
    oh = {i['hash']: k for k, i in o.items()}; renamed = []
    for k in list(added):
        h = n[k]['hash']
        if h in oh and oh[h] in removed:
            renamed.append((oh[h], k)); added.remove(k); removed.remove(oh[h])
    changed = [k for k in sorted(set(o) & set(n)) if o[k]['hash'] != n[k]['hash']]
    restated = [k for k in sorted(set(o) & set(n)) if o[k]['hash'] == n[k]['hash'] and o[k]['statement'] != n[k]['statement']]
    status = [k for k in sorted(set(o) & set(n)) if o[k]['status'] != n[k]['status']]
    p(f"- new: {len(added)}\n- removed: {len(removed)}\n- renamed: {len(renamed)}\n- source statement changed: {len(changed)}\n- same source, different native statement (mapping/emitter change): {len(restated)}\n- status changed: {len(status)}\n")
    def sec(title, items, f):
        if not items: return
        p(f"\n## {title} ({len(items)})\n")
        for k in items[:200]: p(f(k))
        if len(items) > 200: p(f"... {len(items)-200} more")
    sec('New', added, lambda k: f"- {k} [{n[k]['status']}]: {n[k]['statement'][:160]}")
    sec('Removed', removed, lambda k: f"- {k} [{o[k]['status']}]")
    sec('Renamed', renamed, lambda r: f"- {r[0]} -> {r[1]}")
    sec('Source statement changed', changed, lambda k: f"- {k}: {o[k]['statement'][:100]}  ==>  {n[k]['statement'][:100]}")
    sec('Restated', restated, lambda k: f"- {k}: {o[k]['statement'][:100]}  ==>  {n[k]['statement'][:100]}")
    sec('Status changed', status, lambda k: f"- {k}: {o[k]['status']} -> {n[k]['status']}")

if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2], '--md' in sys.argv)
