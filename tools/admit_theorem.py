#!/usr/bin/env python3
"""Replace the proofs of the named theorems of a Megalodon module by `Admitted.` (in place).

usage: tools/admit_theorem.py FILE NAME [NAME ...]

Used by tools/check_cert.sh (CHECK_RETRY): when a certification module fails inside the imported
proof hltu_N, the theorems hltu_N and hlt_N are admitted and the module is checked again, so that
one failing import does not lose the whole shard (docs/DESIGN.md 22).
"""
import re, sys

def admit(text, names):
    out = []; i = 0; lines = text.split('\n'); n = len(lines); done = set()
    while i < n:
        l = lines[i]
        m = re.match(r'Theorem ([A-Za-z_0-9\']+) :', l)
        if m and m.group(1) in names:
            # the statement may span several lines up to the first line ending with '.' (statement end)
            j = i
            while not lines[j].rstrip().endswith('.'):
                j += 1
            out.extend(lines[i:j + 1]); out.append('Admitted.')
            k = j + 1
            while k < n and not re.match(r'(Qed|Admitted)\.\s*$', lines[k]):
                k += 1
            i = k + 1; done.add(m.group(1))
        else:
            out.append(l); i += 1
    return '\n'.join(out), done

if __name__ == '__main__':
    f = sys.argv[1]; names = set(sys.argv[2:])
    text = open(f).read()
    new, done = admit(text, names)
    open(f, 'w').write(new)
    print('admitted', ' '.join(sorted(done)))
