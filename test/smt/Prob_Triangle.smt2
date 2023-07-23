(set-logic QF_NRA)
(declare-const x Real UD 0 1000)
(declare-const y Real UD 0 1000)

(assert (<= x (- y)))
(assert (<= y x))
(assert (and (>= x -1) (<= x 1)))
(assert (and (>= y -1) (<= y 1)))

(check-sat)
(get-model)
(exit)