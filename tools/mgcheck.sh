#!/bin/bash
# Check a generated .mg file against the God1 signature.
# Usage: tools/mgcheck.sh file.mg [extra megalodon args]
HERE=$(cd "$(dirname "$0")/.." && pwd)
MG=${MEGALODON:-$HERE/../repos/Megalodon/bin/megalodon}
f=$1; shift
timeout ${MGTIMEOUT:-300} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces -warnaboutreproven "$@" "$f"
