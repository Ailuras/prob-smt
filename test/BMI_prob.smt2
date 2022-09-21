(set-logic QF_NRA)
(declare-const height Real GD 1.5 0.2)
(declare-const weight Real)
;(declare-const weight Real GD 60 40)
(assert (<= weight (* 23.9 height height)))
(assert (>= weight (* 18.5 height height)))
(check-sat)
(get-model)
(exit)