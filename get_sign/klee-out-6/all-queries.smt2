; Query 0 -- Type: Validity, Instructions: 15
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (=  (_ bv0 32) (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 5.610034e-03s
;   Validity: 0

; Query 1 -- Type: InitialValues, Instructions: 22
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv0 32) (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 3.044900e-05s
;   Solvable: true
;     a = [0,0,0,0]

; Query 2 -- Type: Validity, Instructions: 23
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (=  false (bvslt  ?B1 (_ bv0 32) ) ) (=  false (=  (_ bv0 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 1.028202e-02s
;   Validity: 0

; Query 3 -- Type: InitialValues, Instructions: 31
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (=  false (=  (_ bv0 32) ?B1 ) ) (=  false (bvslt  ?B1 (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 2.705300e-05s
;   Solvable: true
;     a = [1,1,1,1]

; Query 4 -- Type: InitialValues, Instructions: 33
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (=  false (=  (_ bv0 32) ?B1 ) ) (bvslt  ?B1 (_ bv0 32) ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.961700e-05s
;   Solvable: true
;     a = [0,0,0,128]

