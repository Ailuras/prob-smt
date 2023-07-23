(set-info :smt-lib-version 2.6)
(set-logic QF_NRA)
(set-info :source |These benchmarks used in the paper:

  Dejan Jovanovic and Leonardo de Moura.  Solving Non-Linear Arithmetic.
  In IJCAR 2012, published as LNCS volume 7364, pp. 339--354.

The hong family is a set of crafted benchmarks, a parametrized
generalization of the problem of Hong, sum x_i^2 < 1 and prod x_i > 1.
See:

  H. Hong.  Comparison of several decision algorithms for the existential
  theory of the reals.  1991.

Submitted by Dejan Jovanvic for SMT-LIB.
|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun x_0 () Real)
(assert (< (* x_0 x_0) 1))
(assert (> x_0 1))
(check-sat)
(exit)
