#!/bin/bash
# Regenerate the God1 signature file and index used to check generated modules.
# Usage: tools/mk_god1_sig.sh
# Output: mglib/God1.mgs (definitions + theorems-as-axioms), mglib/God1.index
set -e
HERE=$(cd "$(dirname "$0")/.." && pwd)
GOD1=${GOD1_DIR:-$HERE/../repos/god1}
MG=${MEGALODON:-$HERE/../repos/Megalodon/bin/megalodon}
cd "$GOD1/mglib"
echo "God1 commit: $(git -C "$GOD1" rev-parse HEAD)"
timeout 900 "$MG" -ind index/God1.mg.index -indout "$HERE/mglib/God1.index" -s "$HERE/mglib/God1.mgs" God1.mg | tail -1
wc -l "$HERE/mglib/God1.mgs"
