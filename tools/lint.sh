#!/bin/bash
# Repository lint: forbidden artifacts and consistency checks used by CI.
HERE=$(cd "$(dirname "$0")/.." && pwd); cd "$HERE"
bad=0
# 1. No Axiom in native or generated modules (unproved imports must be Theorem ... Admitted.)
if grep -l "^Axiom " mglib/native/*.mg generated/public/*/*.mg generated/literal/*/*.mg 2>/dev/null; then echo "lint: Axiom found"; bad=1; fi
# 2. Manifests, README coverage table and design status agree
python3 tools/doc_counts.py || bad=1
# 3. Golden names all present in the golden file
for n in tests/golden/*.names; do
  p=$(basename "$n" .names)
  [ -f "tests/golden/$p.golden" ] || { echo "lint: missing tests/golden/$p.golden"; bad=1; }
done
[ $bad = 0 ] && echo "lint: OK"
exit $bad
