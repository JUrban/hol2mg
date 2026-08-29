#!/usr/bin/env python3
"""Generate hol_export/fusion_rec.ml, the proof-recording kernel of the proof-export pilot
(docs/DESIGN.md 22), from the pinned HOL Light fusion.ml.  Every hunk must match exactly once."""
import os, sys
here = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
hol = os.environ.get('HOL_LIGHT_DIR', os.path.join(here, '..', 'repos', 'hol-light'))
src = open(os.path.join(hol, 'fusion.ml')).read()
PROOF = """      Prefl of term
    | Ptrans of thm * thm
    | Pmkcomb of thm * thm
    | Pabs of term * thm
    | Pbeta of term
    | Passume of term
    | Peqmp of thm * thm
    | Pdeduct of thm * thm
    | Pinsttype of (hol_type * hol_type) list * thm
    | Pinst of (term * term) list * thm
    | Paxiom of term
    | Pdefinition of term
    | Ptydef_abs of string * string * string * thm
    | Ptydef_rep of string * string * string * thm
"""
def rep(s, old, new, tag):
    c = s.count(old)
    if c != 1: sys.exit(f'make_fusion_rec: hunk {tag} matches {c} times')
    return s.replace(old, new)
s = src
s = rep(s, "      type thm\n", "      type thm\n\n      type proof =\n" + PROOF.replace("\n    |", "\n        |").replace("      Prefl", "          Prefl") + "\n      val proof_of : thm -> proof\n", 'sig')
s = rep(s, "  type thm = Sequent of (term list * term)\n", "  type thm = Sequent of (term list * term * proof)\n  and proof =\n" + PROOF, 'type')
s = rep(s, "  let dest_thm (Sequent(asl,c)) = (asl,c)\n\n  let hyp (Sequent(asl,c)) = asl\n\n  let concl (Sequent(asl,c)) = c\n",
        "  let dest_thm (Sequent(asl,c,_)) = (asl,c)\n\n  let hyp (Sequent(asl,c,_)) = asl\n\n  let concl (Sequent(asl,c,_)) = c\n\n  let proof_of (Sequent(_,_,p)) = p\n", 'acc')
s = rep(s, "  let REFL tm =\n    Sequent([],safe_mk_eq tm tm)\n", "  let REFL tm =\n    Sequent([],safe_mk_eq tm tm,Prefl tm)\n", 'refl')
s = rep(s, "  let TRANS (Sequent(asl1,c1)) (Sequent(asl2,c2)) =\n    match (c1,c2) with\n      Comb((Comb(Const(\"=\",_),_) as eql),m1),Comb(Comb(Const(\"=\",_),m2),r)\n        when alphaorder m1 m2 = 0 -> Sequent(term_union asl1 asl2,Comb(eql,r))\n",
        "  let TRANS (Sequent(asl1,c1,_) as th1) (Sequent(asl2,c2,_) as th2) =\n    match (c1,c2) with\n      Comb((Comb(Const(\"=\",_),_) as eql),m1),Comb(Comb(Const(\"=\",_),m2),r)\n        when alphaorder m1 m2 = 0 -> Sequent(term_union asl1 asl2,Comb(eql,r),Ptrans(th1,th2))\n", 'trans')
s = rep(s, "  let MK_COMB(Sequent(asl1,c1),Sequent(asl2,c2)) =\n     match (c1,c2) with\n       Comb(Comb(Const(\"=\",_),l1),r1),Comb(Comb(Const(\"=\",_),l2),r2) ->\n        (match type_of r1 with\n           Tyapp(\"fun\",[ty;_]) when compare ty (type_of r2) = 0\n             -> Sequent(term_union asl1 asl2,\n                        safe_mk_eq (Comb(l1,l2)) (Comb(r1,r2)))\n",
        "  let MK_COMB((Sequent(asl1,c1,_) as th1),(Sequent(asl2,c2,_) as th2)) =\n     match (c1,c2) with\n       Comb(Comb(Const(\"=\",_),l1),r1),Comb(Comb(Const(\"=\",_),l2),r2) ->\n        (match type_of r1 with\n           Tyapp(\"fun\",[ty;_]) when compare ty (type_of r2) = 0\n             -> Sequent(term_union asl1 asl2,\n                        safe_mk_eq (Comb(l1,l2)) (Comb(r1,r2)),Pmkcomb(th1,th2))\n", 'mkcomb')
s = rep(s, "  let ABS v (Sequent(asl,c)) =\n    match (v,c) with\n      Var(_,_),Comb(Comb(Const(\"=\",_),l),r) when not(exists (vfree_in v) asl)\n         -> Sequent(asl,safe_mk_eq (Abs(v,l)) (Abs(v,r)))\n",
        "  let ABS v (Sequent(asl,c,_) as th) =\n    match (v,c) with\n      Var(_,_),Comb(Comb(Const(\"=\",_),l),r) when not(exists (vfree_in v) asl)\n         -> Sequent(asl,safe_mk_eq (Abs(v,l)) (Abs(v,r)),Pabs(v,th))\n", 'abs')
s = rep(s, "      Comb(Abs(v,bod),arg) when compare arg v = 0\n        -> Sequent([],safe_mk_eq tm bod)\n", "      Comb(Abs(v,bod),arg) when compare arg v = 0\n        -> Sequent([],safe_mk_eq tm bod,Pbeta tm)\n", 'beta')
s = rep(s, "    if compare (type_of tm) bool_ty = 0 then Sequent([tm],tm)\n", "    if compare (type_of tm) bool_ty = 0 then Sequent([tm],tm,Passume tm)\n", 'assume')
s = rep(s, "  let EQ_MP (Sequent(asl1,eq)) (Sequent(asl2,c)) =\n    match eq with\n      Comb(Comb(Const(\"=\",_),l),r) when alphaorder l c = 0\n        -> Sequent(term_union asl1 asl2,r)\n",
        "  let EQ_MP (Sequent(asl1,eq,_) as th1) (Sequent(asl2,c,_) as th2) =\n    match eq with\n      Comb(Comb(Const(\"=\",_),l),r) when alphaorder l c = 0\n        -> Sequent(term_union asl1 asl2,r,Peqmp(th1,th2))\n", 'eqmp')
s = rep(s, "  let DEDUCT_ANTISYM_RULE (Sequent(asl1,c1)) (Sequent(asl2,c2)) =\n    let asl1' = term_remove c2 asl1 and asl2' = term_remove c1 asl2 in\n    Sequent(term_union asl1' asl2',safe_mk_eq c1 c2)\n",
        "  let DEDUCT_ANTISYM_RULE (Sequent(asl1,c1,_) as th1) (Sequent(asl2,c2,_) as th2) =\n    let asl1' = term_remove c2 asl1 and asl2' = term_remove c1 asl2 in\n    Sequent(term_union asl1' asl2',safe_mk_eq c1 c2,Pdeduct(th1,th2))\n", 'deduct')
s = rep(s, "  let INST_TYPE theta (Sequent(asl,c)) =\n    let inst_fn = inst theta in\n    Sequent(term_image inst_fn asl,inst_fn c)\n", "  let INST_TYPE theta (Sequent(asl,c,_) as th) =\n    let inst_fn = inst theta in\n    Sequent(term_image inst_fn asl,inst_fn c,Pinsttype(theta,th))\n", 'insttype')
s = rep(s, "  let INST theta (Sequent(asl,c)) =\n    let inst_fun = vsubst theta in\n    Sequent(term_image inst_fun asl,inst_fun c)\n", "  let INST theta (Sequent(asl,c,_) as th) =\n    let inst_fun = vsubst theta in\n    Sequent(term_image inst_fun asl,inst_fun c,Pinst(theta,th))\n", 'inst')
s = rep(s, "      let th = Sequent([],tm) in\n", "      let th = Sequent([],tm,Paxiom tm) in\n", 'axiom')
s = rep(s, "             let dth = Sequent([],safe_mk_eq c r) in\n", "             let dth = Sequent([],safe_mk_eq c r,Pdefinition c) in\n", 'def')
s = rep(s, "  let new_basic_type_definition tyname (absname,repname) (Sequent(asl,c)) =\n", "  let new_basic_type_definition tyname (absname,repname) (Sequent(asl,c,_) as th) =\n", 'tydef1')
s = rep(s, "    Sequent([],safe_mk_eq (Comb(abs,mk_comb(rep,a))) a),\n    Sequent([],safe_mk_eq (Comb(P,r))\n                          (safe_mk_eq (mk_comb(rep,mk_comb(abs,r))) r))\n",
        "    Sequent([],safe_mk_eq (Comb(abs,mk_comb(rep,a))) a,Ptydef_abs(tyname,absname,repname,th)),\n    Sequent([],safe_mk_eq (Comb(P,r))\n                          (safe_mk_eq (mk_comb(rep,mk_comb(abs,r))) r),Ptydef_rep(tyname,absname,repname,th))\n", 'tydef2')
hdr = "(* hol2mg proof-recording kernel: HOL Light fusion.ml (pinned commit) with a proof component in     *)\n(* every theorem (docs/DESIGN.md 22).  Generated by tools/make_fusion_rec.py; the kernel interface  *)\n(* is unchanged except for the added type `proof` and `proof_of`.                                   *)\n\n"
out = os.path.join(here, 'hol_export', 'fusion_rec.ml')
open(out, 'w').write(hdr + s)
print('wrote', out)
