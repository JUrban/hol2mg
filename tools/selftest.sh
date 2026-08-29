#!/bin/bash
# One-command self test: build, translate the committed core export, golden statements,
# Megalodon-check all core shards, determinism of a second run.
set -e
HERE=$(cd "$(dirname "$0")/.." && pwd); cd "$HERE"
make -s
S=$(mktemp -d)
run() { ./bin/hol2mg translate --export generated/internal/core.jsonl --sig mglib/God1.mgs --mappings mappings/core.json,mappings/lists.json --out "$1" --literal-out "$1/literal" --profile core --srcindex generated/internal/core.srcindex.json --timeout 10 --known-props generated/public/core/known_props.txt >/dev/null; }
run "$S/a"; run "$S/b"
cmp -s "$S/a/core.manifest.json" "$S/b/core.manifest.json" && echo "determinism: OK" || { echo "determinism: FAIL"; exit 1; }
for f in "$S/a"/*.mg "$S/a"/literal/*.mg; do cmp -s "$f" "${f/$S\/a/$S\/b}" || { echo "determinism: file differs $f"; exit 1; }; done
python3 - "$S/a/core.manifest.json" <<'PY'
import json,sys
m=json.load(open(sys.argv[1])); bad=[i['source_name'] for i in m['items'] if i['status']=='error']
print('internal errors:', len(bad), bad[:5]); sys.exit(1 if bad else 0)
PY
python3 tools/golden.py core --manifest "$S/a/core.manifest.json"
tools/check_public.sh "$S/a" | grep -v "^OK" || true
tools/check_public.sh "$S/a" >/dev/null && echo "megalodon: all core shards OK"
tools/check_literal.sh "$S/a/literal" | grep -v "^OK" || true
tools/check_literal.sh "$S/a/literal" >/dev/null && echo "megalodon: all core literal modules OK"
rm -rf "$S"
echo "selftest passed"
