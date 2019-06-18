(set-logic LIA)

(define-fun
  __node_init_Sofar_0 (
    (Sofar.usr.X_a_0 Bool)
    (Sofar.usr.Sofar_a_0 Bool)
    (Sofar.res.init_flag_a_0 Bool)
  ) Bool
  
  (and (= Sofar.usr.Sofar_a_0 Sofar.usr.X_a_0) Sofar.res.init_flag_a_0)
)

(define-fun
  __node_trans_Sofar_0 (
    (Sofar.usr.X_a_1 Bool)
    (Sofar.usr.Sofar_a_1 Bool)
    (Sofar.res.init_flag_a_1 Bool)
    (Sofar.usr.X_a_0 Bool)
    (Sofar.usr.Sofar_a_0 Bool)
    (Sofar.res.init_flag_a_0 Bool)
  ) Bool
  
  (and
   (= Sofar.usr.Sofar_a_1 (and Sofar.usr.X_a_1 Sofar.usr.Sofar_a_0))
   (not Sofar.res.init_flag_a_1))
)

(define-fun
  __node_init_excludes3_0 (
    (excludes3.usr.X1_a_0 Bool)
    (excludes3.usr.X2_a_0 Bool)
    (excludes3.usr.X3_a_0 Bool)
    (excludes3.usr.excludes_a_0 Bool)
    (excludes3.res.init_flag_a_0 Bool)
  ) Bool
  
  (and
   (=
    excludes3.usr.excludes_a_0
    (not
     (or
      (and
       (and (and excludes3.usr.X1_a_0 excludes3.usr.X2_a_0) excludes3.usr.X1_a_0)
       excludes3.usr.X3_a_0)
      (and excludes3.usr.X2_a_0 excludes3.usr.X3_a_0))))
   excludes3.res.init_flag_a_0)
)

(define-fun
  __node_trans_excludes3_0 (
    (excludes3.usr.X1_a_1 Bool)
    (excludes3.usr.X2_a_1 Bool)
    (excludes3.usr.X3_a_1 Bool)
    (excludes3.usr.excludes_a_1 Bool)
    (excludes3.res.init_flag_a_1 Bool)
    (excludes3.usr.X1_a_0 Bool)
    (excludes3.usr.X2_a_0 Bool)
    (excludes3.usr.X3_a_0 Bool)
    (excludes3.usr.excludes_a_0 Bool)
    (excludes3.res.init_flag_a_0 Bool)
  ) Bool
  
  (and
   (=
    excludes3.usr.excludes_a_1
    (not
     (or
      (and
       (and (and excludes3.usr.X1_a_1 excludes3.usr.X2_a_1) excludes3.usr.X1_a_1)
       excludes3.usr.X3_a_1)
      (and excludes3.usr.X2_a_1 excludes3.usr.X3_a_1))))
   (not excludes3.res.init_flag_a_1))
)

(define-fun
  __node_init_synapse_0 (
    (synapse.usr.e_s1_a_0 Bool)
    (synapse.usr.e_s2_a_0 Bool)
    (synapse.usr.e_s3_a_0 Bool)
    (synapse.usr.init_invalid_s_a_0 Int)
    (synapse.res.nondet_2 Int)
    (synapse.res.nondet_1 Int)
    (synapse.res.nondet_0 Int)
    (synapse.usr.invalid_s_a_0 Int)
    (synapse.usr.valid_s_a_0 Int)
    (synapse.usr.dirty_s_a_0 Int)
    (synapse.usr.mem_init_s_a_0 Int)
    (synapse.res.init_flag_a_0 Bool)
  ) Bool
  
  (and
   (= synapse.usr.mem_init_s_a_0 synapse.usr.init_invalid_s_a_0)
   (= synapse.usr.invalid_s_a_0 synapse.usr.mem_init_s_a_0)
   (= synapse.usr.valid_s_a_0 0)
   (let
    ((X1 Bool (let ((X1 Int synapse.res.nondet_0)) (>= X1 1))))
    (let
     ((X2 Bool (let ((X2 Int synapse.res.nondet_1)) (>= X2 1))))
     (let
      ((X3 Bool (let ((X3 Int synapse.res.nondet_2)) (>= X3 1))))
      (and (= synapse.usr.dirty_s_a_0 0) synapse.res.init_flag_a_0)))))
)

(define-fun
  __node_trans_synapse_0 (
    (synapse.usr.e_s1_a_1 Bool)
    (synapse.usr.e_s2_a_1 Bool)
    (synapse.usr.e_s3_a_1 Bool)
    (synapse.usr.init_invalid_s_a_1 Int)
    (synapse.res.nondet_2 Int)
    (synapse.res.nondet_1 Int)
    (synapse.res.nondet_0 Int)
    (synapse.usr.invalid_s_a_1 Int)
    (synapse.usr.valid_s_a_1 Int)
    (synapse.usr.dirty_s_a_1 Int)
    (synapse.usr.mem_init_s_a_1 Int)
    (synapse.res.init_flag_a_1 Bool)
    (synapse.usr.e_s1_a_0 Bool)
    (synapse.usr.e_s2_a_0 Bool)
    (synapse.usr.e_s3_a_0 Bool)
    (synapse.usr.init_invalid_s_a_0 Int)
    (synapse.usr.invalid_s_a_0 Int)
    (synapse.usr.valid_s_a_0 Int)
    (synapse.usr.dirty_s_a_0 Int)
    (synapse.usr.mem_init_s_a_0 Int)
    (synapse.res.init_flag_a_0 Bool)
  ) Bool
  
  (let
   ((X1 Bool (>= synapse.usr.invalid_s_a_0 1)))
   (let
    ((X2 Bool (>= synapse.usr.valid_s_a_0 1)))
    (let
     ((X3 Bool (>= synapse.usr.invalid_s_a_0 1)))
     (and
      (=
       synapse.usr.invalid_s_a_1
       (ite
        synapse.usr.e_s1_a_1
        (ite
         X3
         (- (+ synapse.usr.invalid_s_a_0 synapse.usr.dirty_s_a_0) 1)
         synapse.usr.invalid_s_a_0)
        (ite
         synapse.usr.e_s2_a_1
         (ite
          X2
          (-
           (+
            (+ synapse.usr.invalid_s_a_0 synapse.usr.dirty_s_a_0)
            synapse.usr.valid_s_a_0)
           1)
          synapse.usr.invalid_s_a_0)
         (ite
          synapse.usr.e_s3_a_1
          (ite
           X1
           (-
            (+
             (+ synapse.usr.invalid_s_a_0 synapse.usr.dirty_s_a_0)
             synapse.usr.valid_s_a_0)
            1)
           synapse.usr.invalid_s_a_0)
          synapse.usr.invalid_s_a_0))))
      (=
       synapse.usr.valid_s_a_1
       (ite
        synapse.usr.e_s1_a_1
        (ite X3 (+ synapse.usr.valid_s_a_0 1) synapse.usr.valid_s_a_0)
        (ite
         synapse.usr.e_s2_a_1
         (ite X2 0 synapse.usr.valid_s_a_0)
         (ite
          synapse.usr.e_s3_a_1
          (ite X1 0 synapse.usr.valid_s_a_0)
          synapse.usr.valid_s_a_0))))
      (=
       synapse.usr.dirty_s_a_1
       (ite
        synapse.usr.e_s1_a_1
        (ite X3 0 synapse.usr.dirty_s_a_0)
        (ite
         synapse.usr.e_s2_a_1
         (ite X2 1 synapse.usr.dirty_s_a_0)
         (ite
          synapse.usr.e_s3_a_1
          (ite X1 1 synapse.usr.dirty_s_a_0)
          synapse.usr.dirty_s_a_0))))
      (= synapse.usr.mem_init_s_a_1 synapse.usr.mem_init_s_a_0)
      (not synapse.res.init_flag_a_1)))))
)

(define-fun
  __node_init_top_0 (
    (top.usr.e_s1_a_0 Bool)
    (top.usr.e_s2_a_0 Bool)
    (top.usr.e_s3_a_0 Bool)
    (top.usr.init_invalid_s_a_0 Int)
    (top.res.nondet_2 Int)
    (top.res.nondet_1 Int)
    (top.res.nondet_0 Int)
    (top.usr.OK_a_0 Bool)
    (top.res.init_flag_a_0 Bool)
    (top.res.abs_0_a_0 Int)
    (top.res.abs_1_a_0 Int)
    (top.res.abs_2_a_0 Int)
    (top.res.abs_3_a_0 Int)
    (top.res.abs_4_a_0 Bool)
    (top.res.abs_5_a_0 Bool)
    (top.res.abs_6_a_0 Bool)
    (top.res.abs_7_a_0 Int)
    (top.res.inst_2_a_0 Bool)
    (top.res.inst_1_a_0 Bool)
    (top.res.inst_0_a_0 Bool)
  ) Bool
  
  (and
   (= top.usr.OK_a_0 true)
   (let
    ((X1 Int top.res.abs_0_a_0))
    (let
     ((X2 Int top.res.abs_1_a_0))
     (let
      ((X3 Int top.res.abs_2_a_0))
      (and
       (=
        top.res.abs_5_a_0
        (and top.res.abs_4_a_0 (>= top.usr.init_invalid_s_a_0 0)))
       (let
        ((X4 Bool top.res.abs_6_a_0))
        (and
         (= top.res.abs_7_a_0 (+ (+ X1 X2) X3))
         (__node_init_synapse_0
          top.usr.e_s1_a_0
          top.usr.e_s2_a_0
          top.usr.e_s3_a_0
          top.usr.init_invalid_s_a_0
          top.res.nondet_2
          top.res.nondet_1
          top.res.nondet_0
          top.res.abs_0_a_0
          top.res.abs_1_a_0
          top.res.abs_2_a_0
          top.res.abs_3_a_0
          top.res.inst_2_a_0)
         (__node_init_Sofar_0
          top.res.abs_5_a_0
          top.res.abs_6_a_0
          top.res.inst_1_a_0)
         (__node_init_excludes3_0
          top.usr.e_s1_a_0
          top.usr.e_s2_a_0
          top.usr.e_s3_a_0
          top.res.abs_4_a_0
          top.res.inst_0_a_0)
         top.res.init_flag_a_0)))))))
)

(define-fun
  __node_trans_top_0 (
    (top.usr.e_s1_a_1 Bool)
    (top.usr.e_s2_a_1 Bool)
    (top.usr.e_s3_a_1 Bool)
    (top.usr.init_invalid_s_a_1 Int)
    (top.res.nondet_2 Int)
    (top.res.nondet_1 Int)
    (top.res.nondet_0 Int)
    (top.usr.OK_a_1 Bool)
    (top.res.init_flag_a_1 Bool)
    (top.res.abs_0_a_1 Int)
    (top.res.abs_1_a_1 Int)
    (top.res.abs_2_a_1 Int)
    (top.res.abs_3_a_1 Int)
    (top.res.abs_4_a_1 Bool)
    (top.res.abs_5_a_1 Bool)
    (top.res.abs_6_a_1 Bool)
    (top.res.abs_7_a_1 Int)
    (top.res.inst_2_a_1 Bool)
    (top.res.inst_1_a_1 Bool)
    (top.res.inst_0_a_1 Bool)
    (top.usr.e_s1_a_0 Bool)
    (top.usr.e_s2_a_0 Bool)
    (top.usr.e_s3_a_0 Bool)
    (top.usr.init_invalid_s_a_0 Int)
    (top.usr.OK_a_0 Bool)
    (top.res.init_flag_a_0 Bool)
    (top.res.abs_0_a_0 Int)
    (top.res.abs_1_a_0 Int)
    (top.res.abs_2_a_0 Int)
    (top.res.abs_3_a_0 Int)
    (top.res.abs_4_a_0 Bool)
    (top.res.abs_5_a_0 Bool)
    (top.res.abs_6_a_0 Bool)
    (top.res.abs_7_a_0 Int)
    (top.res.inst_2_a_0 Bool)
    (top.res.inst_1_a_0 Bool)
    (top.res.inst_0_a_0 Bool)
  ) Bool
  
  (and
   (= top.res.abs_5_a_1 (and top.res.abs_4_a_1 (>= top.usr.init_invalid_s_a_1 0)))
   (let
    ((X1 Bool top.res.abs_6_a_1))
    (let
     ((X2 Int top.res.abs_2_a_1))
     (let
      ((X3 Int top.res.abs_1_a_1))
      (let
       ((X4 Int top.res.abs_0_a_1))
       (and
        (= top.usr.OK_a_1 (=> X1 (= (+ (+ X4 X3) X2) top.res.abs_7_a_0)))
        (= top.res.abs_7_a_1 (+ (+ X4 X3) X2))
        (__node_trans_synapse_0
         top.usr.e_s1_a_1
         top.usr.e_s2_a_1
         top.usr.e_s3_a_1
         top.usr.init_invalid_s_a_1
         top.res.nondet_2
         top.res.nondet_1
         top.res.nondet_0
         top.res.abs_0_a_1
         top.res.abs_1_a_1
         top.res.abs_2_a_1
         top.res.abs_3_a_1
         top.res.inst_2_a_1
         top.usr.e_s1_a_0
         top.usr.e_s2_a_0
         top.usr.e_s3_a_0
         top.usr.init_invalid_s_a_0
         top.res.abs_0_a_0
         top.res.abs_1_a_0
         top.res.abs_2_a_0
         top.res.abs_3_a_0
         top.res.inst_2_a_0)
        (__node_trans_Sofar_0
         top.res.abs_5_a_1
         top.res.abs_6_a_1
         top.res.inst_1_a_1
         top.res.abs_5_a_0
         top.res.abs_6_a_0
         top.res.inst_1_a_0)
        (__node_trans_excludes3_0
         top.usr.e_s1_a_1
         top.usr.e_s2_a_1
         top.usr.e_s3_a_1
         top.res.abs_4_a_1
         top.res.inst_0_a_1
         top.usr.e_s1_a_0
         top.usr.e_s2_a_0
         top.usr.e_s3_a_0
         top.res.abs_4_a_0
         top.res.inst_0_a_0)
        (not top.res.init_flag_a_1)))))))
)



(synth-inv str_invariant(
  (top.usr.e_s1 Bool)
  (top.usr.e_s2 Bool)
  (top.usr.e_s3 Bool)
  (top.usr.init_invalid_s Int)
  (top.usr.OK Bool)
  (top.res.init_flag Bool)
  (top.res.abs_0 Int)
  (top.res.abs_1 Int)
  (top.res.abs_2 Int)
  (top.res.abs_3 Int)
  (top.res.abs_4 Bool)
  (top.res.abs_5 Bool)
  (top.res.abs_6 Bool)
  (top.res.abs_7 Int)
  (top.res.inst_2 Bool)
  (top.res.inst_1 Bool)
  (top.res.inst_0 Bool)
))

(declare-fun top.res.nondet_2 () Int)
(declare-fun top.res.nondet_1 () Int)
(declare-fun top.res.nondet_0 () Int)

(declare-primed-var top.usr.e_s1 Bool)
(declare-primed-var top.usr.e_s2 Bool)
(declare-primed-var top.usr.e_s3 Bool)
(declare-primed-var top.usr.init_invalid_s Int)
(declare-primed-var top.usr.OK Bool)
(declare-primed-var top.res.init_flag Bool)
(declare-primed-var top.res.abs_0 Int)
(declare-primed-var top.res.abs_1 Int)
(declare-primed-var top.res.abs_2 Int)
(declare-primed-var top.res.abs_3 Int)
(declare-primed-var top.res.abs_4 Bool)
(declare-primed-var top.res.abs_5 Bool)
(declare-primed-var top.res.abs_6 Bool)
(declare-primed-var top.res.abs_7 Int)
(declare-primed-var top.res.inst_2 Bool)
(declare-primed-var top.res.inst_1 Bool)
(declare-primed-var top.res.inst_0 Bool)

(define-fun
  init (
    (top.usr.e_s1 Bool)
    (top.usr.e_s2 Bool)
    (top.usr.e_s3 Bool)
    (top.usr.init_invalid_s Int)
    (top.usr.OK Bool)
    (top.res.init_flag Bool)
    (top.res.abs_0 Int)
    (top.res.abs_1 Int)
    (top.res.abs_2 Int)
    (top.res.abs_3 Int)
    (top.res.abs_4 Bool)
    (top.res.abs_5 Bool)
    (top.res.abs_6 Bool)
    (top.res.abs_7 Int)
    (top.res.inst_2 Bool)
    (top.res.inst_1 Bool)
    (top.res.inst_0 Bool)
  ) Bool
  
  (and
   (= top.usr.OK true)
   (let
    ((X1 Int top.res.abs_0))
    (let
     ((X2 Int top.res.abs_1))
     (let
      ((X3 Int top.res.abs_2))
      (and
       (= top.res.abs_5 (and top.res.abs_4 (>= top.usr.init_invalid_s 0)))
       (let
        ((X4 Bool top.res.abs_6))
        (and
         (= top.res.abs_7 (+ (+ X1 X2) X3))
         (__node_init_synapse_0
          top.usr.e_s1
          top.usr.e_s2
          top.usr.e_s3
          top.usr.init_invalid_s
          top.res.nondet_2
          top.res.nondet_1
          top.res.nondet_0
          top.res.abs_0
          top.res.abs_1
          top.res.abs_2
          top.res.abs_3
          top.res.inst_2)
         (__node_init_Sofar_0 top.res.abs_5 top.res.abs_6 top.res.inst_1)
         (__node_init_excludes3_0
          top.usr.e_s1
          top.usr.e_s2
          top.usr.e_s3
          top.res.abs_4
          top.res.inst_0)
         top.res.init_flag)))))))
)

(define-fun
  trans (
    
    ;; Current state.
    (top.usr.e_s1 Bool)
    (top.usr.e_s2 Bool)
    (top.usr.e_s3 Bool)
    (top.usr.init_invalid_s Int)
    (top.usr.OK Bool)
    (top.res.init_flag Bool)
    (top.res.abs_0 Int)
    (top.res.abs_1 Int)
    (top.res.abs_2 Int)
    (top.res.abs_3 Int)
    (top.res.abs_4 Bool)
    (top.res.abs_5 Bool)
    (top.res.abs_6 Bool)
    (top.res.abs_7 Int)
    (top.res.inst_2 Bool)
    (top.res.inst_1 Bool)
    (top.res.inst_0 Bool)
    
    ;; Next state.
    (top.usr.e_s1! Bool)
    (top.usr.e_s2! Bool)
    (top.usr.e_s3! Bool)
    (top.usr.init_invalid_s! Int)
    (top.usr.OK! Bool)
    (top.res.init_flag! Bool)
    (top.res.abs_0! Int)
    (top.res.abs_1! Int)
    (top.res.abs_2! Int)
    (top.res.abs_3! Int)
    (top.res.abs_4! Bool)
    (top.res.abs_5! Bool)
    (top.res.abs_6! Bool)
    (top.res.abs_7! Int)
    (top.res.inst_2! Bool)
    (top.res.inst_1! Bool)
    (top.res.inst_0! Bool)
  
  ) Bool
  
  (and
   (and
    (= top.res.abs_5! (and top.res.abs_4! (>= top.usr.init_invalid_s! 0)))
    (let
     ((X1 Bool top.res.abs_6!))
     (let
      ((X2 Int top.res.abs_2!))
      (let
       ((X3 Int top.res.abs_1!))
       (let
        ((X4 Int top.res.abs_0!))
        (and
         (= top.usr.OK! (=> X1 (= (+ (+ X4 X3) X2) top.res.abs_7)))
         (= top.res.abs_7! (+ (+ X4 X3) X2))
         (__node_trans_synapse_0
          top.usr.e_s1!
          top.usr.e_s2!
          top.usr.e_s3!
          top.usr.init_invalid_s!
          top.res.nondet_2
          top.res.nondet_1
          top.res.nondet_0
          top.res.abs_0!
          top.res.abs_1!
          top.res.abs_2!
          top.res.abs_3!
          top.res.inst_2!
          top.usr.e_s1
          top.usr.e_s2
          top.usr.e_s3
          top.usr.init_invalid_s
          top.res.abs_0
          top.res.abs_1
          top.res.abs_2
          top.res.abs_3
          top.res.inst_2)
         (__node_trans_Sofar_0
          top.res.abs_5!
          top.res.abs_6!
          top.res.inst_1!
          top.res.abs_5
          top.res.abs_6
          top.res.inst_1)
         (__node_trans_excludes3_0
          top.usr.e_s1!
          top.usr.e_s2!
          top.usr.e_s3!
          top.res.abs_4!
          top.res.inst_0!
          top.usr.e_s1
          top.usr.e_s2
          top.usr.e_s3
          top.res.abs_4
          top.res.inst_0)
         (not top.res.init_flag!)))))))
   (= top.res.nondet_2 top.res.nondet_2)
   (= top.res.nondet_1 top.res.nondet_1)
   (= top.res.nondet_0 top.res.nondet_0))
)

(define-fun
  prop (
    (top.usr.e_s1 Bool)
    (top.usr.e_s2 Bool)
    (top.usr.e_s3 Bool)
    (top.usr.init_invalid_s Int)
    (top.usr.OK Bool)
    (top.res.init_flag Bool)
    (top.res.abs_0 Int)
    (top.res.abs_1 Int)
    (top.res.abs_2 Int)
    (top.res.abs_3 Int)
    (top.res.abs_4 Bool)
    (top.res.abs_5 Bool)
    (top.res.abs_6 Bool)
    (top.res.abs_7 Int)
    (top.res.inst_2 Bool)
    (top.res.inst_1 Bool)
    (top.res.inst_0 Bool)
  ) Bool
  
  top.usr.OK
)

(inv-constraint str_invariant init trans prop)

(check-synth)