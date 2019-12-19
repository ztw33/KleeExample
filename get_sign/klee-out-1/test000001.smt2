(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv0 32) (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) )
(check-sat)
(exit)

2: 定义变量a为一个index为32位bv、value为8位bv的array
3: (_ bv0 32):把0表示成32位bv
   concat (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) )
     把            A             和                                        B                                                    连接
   A: select  a (_ bv3 32)  a[3]
   B: concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) )
        把               C           和                           D                             连接
      C: select  a (_ bv2 32)  a[2]
      D: concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) )  把a[1]和a[0]连接
   其实就是a==0