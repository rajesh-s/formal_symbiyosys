; SMT-LIBv2 description generated by Yosys 0.9+932 (git sha1 4072a966, clang 6.0.0-1ubuntu2 -fPIC -Os)
; yosys-smt2-module busyctr
(declare-sort |busyctr_s| 0)
(declare-fun |busyctr_is| (|busyctr_s|) Bool)
; yosys-smt2-output o_busy 1
; yosys-smt2-wire o_busy 1
(declare-fun |busyctr#0| (|busyctr_s|) (_ BitVec 16)) ; \counter
(define-fun |busyctr#1| ((state |busyctr_s|)) Bool (distinct (|busyctr#0| state) #b0000000000000000)) ; \o_busy
(define-fun |busyctr_n o_busy| ((state |busyctr_s|)) Bool (|busyctr#1| state))
; yosys-smt2-input i_start_signal 1
; yosys-smt2-wire i_start_signal 1
(declare-fun |busyctr#2| (|busyctr_s|) Bool) ; \i_start_signal
(define-fun |busyctr_n i_start_signal| ((state |busyctr_s|)) Bool (|busyctr#2| state))
; yosys-smt2-input i_reset 1
; yosys-smt2-wire i_reset 1
(declare-fun |busyctr#3| (|busyctr_s|) Bool) ; \i_reset
(define-fun |busyctr_n i_reset| ((state |busyctr_s|)) Bool (|busyctr#3| state))
; yosys-smt2-input i_clk 1
; yosys-smt2-wire i_clk 1
; yosys-smt2-clock i_clk posedge
(declare-fun |busyctr#4| (|busyctr_s|) Bool) ; \i_clk
(define-fun |busyctr_n i_clk| ((state |busyctr_s|)) Bool (|busyctr#4| state))
; yosys-smt2-register f_past_valid 1
; yosys-smt2-wire f_past_valid 1
(declare-fun |busyctr#5| (|busyctr_s|) (_ BitVec 1)) ; \f_past_valid
(define-fun |busyctr_n f_past_valid| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#5| state)) #b1))
; yosys-smt2-register counter 16
; yosys-smt2-wire counter 16
(define-fun |busyctr_n counter| ((state |busyctr_s|)) (_ BitVec 16) (|busyctr#0| state))
; yosys-smt2-register $past$busyctr.v:47$2$0 16
(declare-fun |busyctr#6| (|busyctr_s|) (_ BitVec 16)) ; $past$busyctr.v:47$2$0
(define-fun |busyctr_n $past$busyctr.v:47$2$0| ((state |busyctr_s|)) (_ BitVec 16) (|busyctr#6| state))
; yosys-smt2-register $past$busyctr.v:35$1$0 1
(declare-fun |busyctr#7| (|busyctr_s|) (_ BitVec 1)) ; $past$busyctr.v:35$1$0
(define-fun |busyctr_n $past$busyctr.v:35$1$0| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#7| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:47$6_EN 1
(declare-fun |busyctr#8| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:47$6_EN
(define-fun |busyctr_n $formal$busyctr.v:47$6_EN| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#8| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:47$6_CHECK 1
(declare-fun |busyctr#9| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:47$6_CHECK
(define-fun |busyctr_n $formal$busyctr.v:47$6_CHECK| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#9| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:45$5_EN 1
(declare-fun |busyctr#10| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:45$5_EN
(define-fun |busyctr_n $formal$busyctr.v:45$5_EN| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#10| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:45$5_CHECK 1
(declare-fun |busyctr#11| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:45$5_CHECK
(define-fun |busyctr_n $formal$busyctr.v:45$5_CHECK| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#11| state)) #b1))
(define-fun |busyctr#12| ((state |busyctr_s|)) Bool (not (or  (|busyctr#3| state) false))) ; $0$formal$busyctr.v:43$4_CHECK[0:0]$24
; yosys-smt2-assume 0 busyctr.v:43
(define-fun |busyctr_u 0| ((state |busyctr_s|)) Bool (or (|busyctr#12| state) (not true))) ; $assume$busyctr.v:43$42
; yosys-smt2-anyseq busyctr#13 1 $auto$setundef.cc:524:execute$92
(declare-fun |busyctr#13| (|busyctr_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$93
(define-fun |busyctr#14| ((state |busyctr_s|)) Bool (and (or  (= ((_ extract 0 0) (|busyctr#5| state)) #b1) false) (or  (= ((_ extract 0 0) (|busyctr#7| state)) #b1) false))) ; $logic_and$busyctr.v:35$20_Y
(define-fun |busyctr#15| ((state |busyctr_s|)) Bool (and (or  (|busyctr#14| state) false) (or  (|busyctr#1| state) false))) ; $logic_and$busyctr.v:35$21_Y
(define-fun |busyctr#16| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#15| state) (ite (|busyctr#2| state) #b1 #b0) (|busyctr#13| state))) ; $0$formal$busyctr.v:36$3_CHECK[0:0]$18
(define-fun |busyctr#17| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#15| state) #b1 #b0)) ; $0$formal$busyctr.v:36$3_EN[0:0]$19
; yosys-smt2-assume 1 busyctr.v:36
(define-fun |busyctr_u 1| ((state |busyctr_s|)) Bool (or (= ((_ extract 0 0) (|busyctr#16| state)) #b1) (not (= ((_ extract 0 0) (|busyctr#17| state)) #b1)))) ; $assume$busyctr.v:36$41
(define-fun |busyctr#18| ((state |busyctr_s|)) Bool (bvult (|busyctr#0| state) #b0000000000010110)) ; $0$formal$busyctr.v:51$7_CHECK[0:0]$38
; yosys-smt2-assert 0 busyctr.v:51
(define-fun |busyctr_a 0| ((state |busyctr_s|)) Bool (or (|busyctr#18| state) (not true))) ; $assert$busyctr.v:51$45
; yosys-smt2-assert 1 busyctr.v:47
(define-fun |busyctr_a 1| ((state |busyctr_s|)) Bool (or (= ((_ extract 0 0) (|busyctr#9| state)) #b1) (not (= ((_ extract 0 0) (|busyctr#8| state)) #b1)))) ; $assert$busyctr.v:47$44
; yosys-smt2-assert 2 busyctr.v:45
(define-fun |busyctr_a 2| ((state |busyctr_s|)) Bool (or (= ((_ extract 0 0) (|busyctr#11| state)) #b1) (not (= ((_ extract 0 0) (|busyctr#10| state)) #b1)))) ; $assert$busyctr.v:45$43
; yosys-smt2-anyseq busyctr#19 1 $auto$setundef.cc:524:execute$88
(declare-fun |busyctr#19| (|busyctr_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$89
(define-fun |busyctr#20| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#1| state) #b1 (|busyctr#19| state))) ; $0$formal$busyctr.v:45$5_CHECK[0:0]$26
(define-fun |busyctr#21| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#1| state) #b1 #b0)) ; $0$formal$busyctr.v:45$5_EN[0:0]$27
; yosys-smt2-anyseq busyctr#22 1 $auto$setundef.cc:524:execute$90
(declare-fun |busyctr#22| (|busyctr_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$91
(define-fun |busyctr#23| ((state |busyctr_s|)) (_ BitVec 17) (bvsub (concat #b0 (|busyctr#6| state)) #b00000000000000001)) ; { $sub$busyctr.v:47$35_Y [31] $sub$busyctr.v:47$35_Y [15:0] }
(define-fun |busyctr#24| ((state |busyctr_s|)) Bool (= (concat #b0000000000000000 (|busyctr#0| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (concat ((_ extract 16 16) (|busyctr#23| state)) (|busyctr#23| state)))))))))))))))))) ; $eq$busyctr.v:47$36_Y
(define-fun |busyctr#25| ((state |busyctr_s|)) Bool (and (or  (= ((_ extract 0 0) (|busyctr#0| state)) #b1) (= ((_ extract 1 1) (|busyctr#0| state)) #b1) (= ((_ extract 2 2) (|busyctr#0| state)) #b1) (= ((_ extract 3 3) (|busyctr#0| state)) #b1) (= ((_ extract 4 4) (|busyctr#0| state)) #b1) (= ((_ extract 5 5) (|busyctr#0| state)) #b1) (= ((_ extract 6 6) (|busyctr#0| state)) #b1) (= ((_ extract 7 7) (|busyctr#0| state)) #b1) (= ((_ extract 8 8) (|busyctr#0| state)) #b1) (= ((_ extract 9 9) (|busyctr#0| state)) #b1) (= ((_ extract 10 10) (|busyctr#0| state)) #b1) (= ((_ extract 11 11) (|busyctr#0| state)) #b1) (= ((_ extract 12 12) (|busyctr#0| state)) #b1) (= ((_ extract 13 13) (|busyctr#0| state)) #b1) (= ((_ extract 14 14) (|busyctr#0| state)) #b1) (= ((_ extract 15 15) (|busyctr#0| state)) #b1)) (or  (= ((_ extract 0 0) (|busyctr#5| state)) #b1) false))) ; $logic_and$busyctr.v:46$32_Y
(define-fun |busyctr#26| ((state |busyctr_s|)) Bool (distinct (|busyctr#0| state) #b0000000000010101)) ; $ne$busyctr.v:46$33_Y
(define-fun |busyctr#27| ((state |busyctr_s|)) Bool (and (or  (|busyctr#25| state) false) (or  (|busyctr#26| state) false))) ; $logic_and$busyctr.v:46$34_Y
(define-fun |busyctr#28| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#27| state) (ite (|busyctr#24| state) #b1 #b0) (|busyctr#22| state))) ; $0$formal$busyctr.v:47$6_CHECK[0:0]$28
(define-fun |busyctr#29| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#27| state) #b1 #b0)) ; $0$formal$busyctr.v:47$6_EN[0:0]$29
(define-fun |busyctr#30| ((state |busyctr_s|)) (_ BitVec 16) (bvsub (|busyctr#0| state) #b0000000000000001)) ; $sub$busyctr.v:19$12_Y
(define-fun |busyctr#31| ((state |busyctr_s|)) (_ BitVec 16) (ite (|busyctr#1| state) (|busyctr#30| state) (|busyctr#0| state))) ; $procmux$68_Y
(define-fun |busyctr#32| ((state |busyctr_s|)) Bool (not (or  (= ((_ extract 0 0) (|busyctr#0| state)) #b1) (= ((_ extract 1 1) (|busyctr#0| state)) #b1) (= ((_ extract 2 2) (|busyctr#0| state)) #b1) (= ((_ extract 3 3) (|busyctr#0| state)) #b1) (= ((_ extract 4 4) (|busyctr#0| state)) #b1) (= ((_ extract 5 5) (|busyctr#0| state)) #b1) (= ((_ extract 6 6) (|busyctr#0| state)) #b1) (= ((_ extract 7 7) (|busyctr#0| state)) #b1) (= ((_ extract 8 8) (|busyctr#0| state)) #b1) (= ((_ extract 9 9) (|busyctr#0| state)) #b1) (= ((_ extract 10 10) (|busyctr#0| state)) #b1) (= ((_ extract 11 11) (|busyctr#0| state)) #b1) (= ((_ extract 12 12) (|busyctr#0| state)) #b1) (= ((_ extract 13 13) (|busyctr#0| state)) #b1) (= ((_ extract 14 14) (|busyctr#0| state)) #b1) (= ((_ extract 15 15) (|busyctr#0| state)) #b1)))) ; $eq$busyctr.v:16$9_Y
(define-fun |busyctr#33| ((state |busyctr_s|)) Bool (and (or  (|busyctr#2| state) false) (or  (|busyctr#32| state) false))) ; $logic_and$busyctr.v:16$10_Y
(define-fun |busyctr#34| ((state |busyctr_s|)) (_ BitVec 16) (ite (|busyctr#33| state) #b0000000000010101 (|busyctr#31| state))) ; $procmux$71_Y
(define-fun |busyctr#35| ((state |busyctr_s|)) (_ BitVec 16) (ite (|busyctr#3| state) #b0000000000000000 (|busyctr#34| state))) ; $0\counter[15:0]
(define-fun |busyctr_a| ((state |busyctr_s|)) Bool (and
  (|busyctr_a 0| state)
  (|busyctr_a 1| state)
  (|busyctr_a 2| state)
))
(define-fun |busyctr_u| ((state |busyctr_s|)) Bool (and
  (|busyctr_u 0| state)
  (|busyctr_u 1| state)
))
(define-fun |busyctr_i| ((state |busyctr_s|)) Bool (and
  (= (= ((_ extract 0 0) (|busyctr#5| state)) #b1) false) ; f_past_valid
  (= (|busyctr#0| state) #b0000000000000000) ; counter
  (= (= ((_ extract 0 0) (|busyctr#8| state)) #b1) false) ; $formal$busyctr.v:47$6_EN
  (= (= ((_ extract 0 0) (|busyctr#10| state)) #b1) false) ; $formal$busyctr.v:45$5_EN
))
(define-fun |busyctr_h| ((state |busyctr_s|)) Bool true)
(define-fun |busyctr_t| ((state |busyctr_s|) (next_state |busyctr_s|)) Bool (and
  (= (|busyctr#20| state) (|busyctr#11| next_state)) ; $procdff$79 $formal$busyctr.v:45$5_CHECK
  (= (|busyctr#21| state) (|busyctr#10| next_state)) ; $procdff$80 $formal$busyctr.v:45$5_EN
  (= (|busyctr#28| state) (|busyctr#9| next_state)) ; $procdff$81 $formal$busyctr.v:47$6_CHECK
  (= (|busyctr#29| state) (|busyctr#8| next_state)) ; $procdff$82 $formal$busyctr.v:47$6_EN
  (= (ite (|busyctr#2| state) #b1 #b0) (|busyctr#7| next_state)) ; $procdff$83 $past$busyctr.v:35$1$0
  (= (|busyctr#0| state) (|busyctr#6| next_state)) ; $procdff$76 $past$busyctr.v:47$2$0
  (= #b1 (|busyctr#5| next_state)) ; $procdff$78 \f_past_valid
  (= (|busyctr#35| state) (|busyctr#0| next_state)) ; $procdff$87 \counter
)) ; end of module busyctr
; yosys-smt2-topmod busyctr
; end of yosys output
