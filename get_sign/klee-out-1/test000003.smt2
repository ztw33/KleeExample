(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (=  false (=  (_ bv0 32) ?B1 ) ) (bvslt  ?B1 (_ bv0 32) ) ) ) )
(check-sat)
(exit)