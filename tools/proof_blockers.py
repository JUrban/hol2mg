#!/usr/bin/env python3
"""Rank the admitted leaves that block imported HOL Light proofs from `fully_proved`.

usage: tools/proof_blockers.py MANIFEST [--top N] [--force N]

For a proof-pilot manifest (tools/proof_pilot.sh), a theorem is fully proved when its
literal fact is proved by an imported proof whose named leaves are all (transitively)
proved.  This script lists, for every leaf that is not proved, how many transport-checked
theorems it blocks (transitively), and why it is not proved:

  not_exported   the leaf has no imported proof (above the exporter's cap or not in the
                 profile); a forced export (`FORCE=name,... tools/proof_pilot.sh`) helps
  import_failed  the exporter produced the proof but the importer rejected it (proof_error)
  shard_failed   the leaf's shard did not check (the literal fact is emitted whether or not
                 the public theorem is bridged, so a missing bridge is not a blocker)
  blocked        the leaf's proof was imported and checked, but one of its own leaves is
                 not proved (the blame goes to that leaf as well)

`--force N` prints the N best not_exported leaves as a FORCE list.
"""
import json, sys, collections

def main():
    args = sys.argv[1:]
    if not args:
        print(__doc__); sys.exit(2)
    top = 25; force = 0
    if '--top' in args:
        i = args.index('--top'); top = int(args[i + 1]); del args[i:i + 2]
    if '--force' in args:
        i = args.index('--force'); force = int(args[i + 1]); del args[i:i + 2]
    m = json.load(open(args[0]))
    items = m['items']
    by_name = {}
    for it in items:
        by_name[it['name']] = it
        for a in it.get('aliases', []) or []:
            by_name.setdefault(a, it)
    ok = set((m.get('certification') or {}).get('checked_shards') or [])
    def checked(it):
        # the shard of the theorem checked (its literal fact hlt_N is emitted whether or not the
        # public theorem is bridged)
        return it.get('shard') in ok
    # closure of proved literal facts (as in cert_finalize)
    fp = set(it['name'] for it in items if it.get('literal_proved') and checked(it))
    changed = True
    while changed:
        changed = False
        for it in items:
            if it['name'] in fp or not it.get('proof_imported') or not checked(it):
                continue
            if all((by_name.get(l, {}).get('name') in fp) for l in it.get('proof_leaves', [])):
                fp.add(it['name']); changed = True
    def proved(name):
        it = by_name.get(name)
        return it is not None and it['name'] in fp
    # unresolved leaves of a theorem, transitively (memoised)
    memo = {}
    def blockers(name, stack=()):
        if name in memo:
            return memo[name]
        it = by_name.get(name)
        res = set()
        if it is None:
            res.add(name)
        elif it['name'] in fp:
            pass
        elif not it.get('proof_imported') or not checked(it):
            res.add(it['name'])
        else:
            if it['name'] in stack:
                return set()
            for l in it.get('proof_leaves', []):
                res |= blockers(l, stack + (it['name'],))
            if not res:   # imported, checked, leaves resolved, but not in fp: shard failure
                res.add(it['name'])
        memo[name] = res
        return res
    count = collections.Counter()
    direct = collections.Counter()
    candidates = [it for it in items if checked(it) and it.get('proof_imported') and it['name'] not in fp]
    for it in candidates:
        for b in blockers(it['name']):
            count[b] += 1
        for l in it.get('proof_leaves', []):
            if not proved(l):
                direct[by_name.get(l, {}).get('name', l)] += 1
    def kind(name):
        it = by_name.get(name)
        if it is None:
            return 'not_in_manifest'
        if it['name'] in fp:
            return 'proved'
        if not it.get('shard'):
            return 'no_shard(%s)' % (it.get('status') or it.get('cert_status'))
        if not checked(it):
            return 'shard_failed'
        if not it.get('proof_imported'):
            return 'not_exported' if not it.get('proof_error') else 'import_failed'
        if all(proved(l) for l in it.get('proof_leaves', [])):
            return 'shard_failed'
        return 'blocked'
    n_all = sum(1 for it in items if checked(it))
    print('theorems in checked shards %d, literal facts proved %d, imported-but-blocked %d' % (n_all, len(fp), len(candidates)))
    print('%-32s %-28s %7s %7s' % ('leaf', 'kind', 'blocks', 'direct'))
    for name, c in count.most_common(top):
        print('%-32s %-28s %7d %7d' % (name, kind(name), c, direct.get(name, 0)))
    if force:
        best = [n for n, _ in count.most_common() if kind(n) == 'not_exported'][:force]
        print('FORCE=' + ','.join(best))

if __name__ == '__main__':
    main()
