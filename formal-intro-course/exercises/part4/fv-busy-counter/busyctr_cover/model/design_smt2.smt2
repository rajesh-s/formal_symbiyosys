; SMT-LIBv2 description generated by Yosys 0.9+932 (git sha1 4072a966, clang 6.0.0-1ubuntu2 -fPIC -Os)
; yosys-smt2-module busyctr
(declare-sort |busyctr_s| 0)
(declare-fun |busyctr_is| (|busyctr_s|) Bool)
; yosys-smt2-output o_busy 1
; yosys-smt2-wire o_busy 1
(declare-fun |busyctr#0| (|busyctr_s|) (_ BitVec 16)) ; \counter
(define-fun |busyctr#1| ((state |busyctr_s|)) Bool (distinct (|busyctr#0| state) #b0000000000000000)) ; \o_busy
(define-fun |busyctr_n o_busy| ((state |busyctr_s|)) Bool (|busyctr#1| state))
; yosys-smt2-wire increment 8
; yosys-smt2-anyseq busyctr#2 8 busyctr.v:11 increment
(declare-fun |busyctr#2| (|busyctr_s|) (_ BitVec 8)) ; \increment
(define-fun |busyctr_n increment| ((state |busyctr_s|)) (_ BitVec 8) (|busyctr#2| state))
; yosys-smt2-input i_start_signal 1
; yosys-smt2-wire i_start_signal 1
(declare-fun |busyctr#3| (|busyctr_s|) Bool) ; \i_start_signal
(define-fun |busyctr_n i_start_signal| ((state |busyctr_s|)) Bool (|busyctr#3| state))
; yosys-smt2-input i_reset 1
; yosys-smt2-wire i_reset 1
(declare-fun |busyctr#4| (|busyctr_s|) Bool) ; \i_reset
(define-fun |busyctr_n i_reset| ((state |busyctr_s|)) Bool (|busyctr#4| state))
; yosys-smt2-input i_clk 1
; yosys-smt2-wire i_clk 1
; yosys-smt2-clock i_clk posedge
(declare-fun |busyctr#5| (|busyctr_s|) Bool) ; \i_clk
(define-fun |busyctr_n i_clk| ((state |busyctr_s|)) Bool (|busyctr#5| state))
; yosys-smt2-register f_past_valid 1
; yosys-smt2-wire f_past_valid 1
(declare-fun |busyctr#6| (|busyctr_s|) (_ BitVec 1)) ; \f_past_valid
(define-fun |busyctr_n f_past_valid| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#6| state)) #b1))
; yosys-smt2-register counter 16
; yosys-smt2-wire counter 16
(define-fun |busyctr_n counter| ((state |busyctr_s|)) (_ BitVec 16) (|busyctr#0| state))
; yosys-smt2-register $past$busyctr.v:54$3$0 1
(declare-fun |busyctr#7| (|busyctr_s|) (_ BitVec 1)) ; $past$busyctr.v:54$3$0
(define-fun |busyctr_n $past$busyctr.v:54$3$0| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#7| state)) #b1))
; yosys-smt2-register $past$busyctr.v:49$2$0 16
(declare-fun |busyctr#8| (|busyctr_s|) (_ BitVec 16)) ; $past$busyctr.v:49$2$0
(define-fun |busyctr_n $past$busyctr.v:49$2$0| ((state |busyctr_s|)) (_ BitVec 16) (|busyctr#8| state))
; yosys-smt2-register $past$busyctr.v:36$1$0 1
(declare-fun |busyctr#9| (|busyctr_s|) (_ BitVec 1)) ; $past$busyctr.v:36$1$0
(define-fun |busyctr_n $past$busyctr.v:36$1$0| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#9| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:54$8_EN 1
(declare-fun |busyctr#10| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:54$8_EN
(define-fun |busyctr_n $formal$busyctr.v:54$8_EN| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#10| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:54$8_CHECK 1
(declare-fun |busyctr#11| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:54$8_CHECK
(define-fun |busyctr_n $formal$busyctr.v:54$8_CHECK| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#11| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:49$7_EN 1
(declare-fun |busyctr#12| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:49$7_EN
(define-fun |busyctr_n $formal$busyctr.v:49$7_EN| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#12| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:49$7_CHECK 1
(declare-fun |busyctr#13| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:49$7_CHECK
(define-fun |busyctr_n $formal$busyctr.v:49$7_CHECK| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#13| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:46$6_EN 1
(declare-fun |busyctr#14| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:46$6_EN
(define-fun |busyctr_n $formal$busyctr.v:46$6_EN| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#14| state)) #b1))
; yosys-smt2-register $formal$busyctr.v:46$6_CHECK 1
(declare-fun |busyctr#15| (|busyctr_s|) (_ BitVec 1)) ; $formal$busyctr.v:46$6_CHECK
(define-fun |busyctr_n $formal$busyctr.v:46$6_CHECK| ((state |busyctr_s|)) Bool (= ((_ extract 0 0) (|busyctr#15| state)) #b1))
; yosys-smt2-cover 0 busyctr.v:54
(define-fun |busyctr_c 0| ((state |busyctr_s|)) Bool (and (= ((_ extract 0 0) (|busyctr#11| state)) #b1) (= ((_ extract 0 0) (|busyctr#10| state)) #b1))) ; $cover$busyctr.v:54$56
; yosys-smt2-anyseq busyctr#16 1 $auto$setundef.cc:524:execute$124
(declare-fun |busyctr#16| (|busyctr_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$125
(define-fun |busyctr#17| ((state |busyctr_s|)) Bool (bvule (concat #b00000000 (|busyctr#2| state)) (|busyctr#0| state))) ; $le$busyctr.v:57$51_Y
(define-fun |busyctr#18| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#1| state) (ite (|busyctr#17| state) #b1 #b0) (|busyctr#16| state))) ; $0$formal$busyctr.v:57$10_CHECK[0:0]$46
(define-fun |busyctr#19| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#1| state) #b1 #b0)) ; $0$formal$busyctr.v:46$6_EN[0:0]$31
; yosys-smt2-assume 0 busyctr.v:57
(define-fun |busyctr_u 0| ((state |busyctr_s|)) Bool (or (= ((_ extract 0 0) (|busyctr#18| state)) #b1) (not (= ((_ extract 0 0) (|busyctr#19| state)) #b1)))) ; $assume$busyctr.v:57$58
(define-fun |busyctr#20| ((state |busyctr_s|)) Bool (bvugt (|busyctr#2| state) #b00000000)) ; $0$formal$busyctr.v:55$9_CHECK[0:0]$44
; yosys-smt2-assume 1 busyctr.v:55
(define-fun |busyctr_u 1| ((state |busyctr_s|)) Bool (or (|busyctr#20| state) (not true))) ; $assume$busyctr.v:55$57
(define-fun |busyctr#21| ((state |busyctr_s|)) Bool (not (or  (|busyctr#4| state) false))) ; $0$formal$busyctr.v:44$5_CHECK[0:0]$28
; yosys-smt2-assume 2 busyctr.v:44
(define-fun |busyctr_u 2| ((state |busyctr_s|)) Bool (or (|busyctr#21| state) (not true))) ; $assume$busyctr.v:44$53
; yosys-smt2-anyseq busyctr#22 1 $auto$setundef.cc:524:execute$130
(declare-fun |busyctr#22| (|busyctr_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$131
(define-fun |busyctr#23| ((state |busyctr_s|)) Bool (and (or  (= ((_ extract 0 0) (|busyctr#6| state)) #b1) false) (or  (= ((_ extract 0 0) (|busyctr#9| state)) #b1) false))) ; $logic_and$busyctr.v:36$24_Y
(define-fun |busyctr#24| ((state |busyctr_s|)) Bool (and (or  (|busyctr#23| state) false) (or  (|busyctr#1| state) false))) ; $logic_and$busyctr.v:36$25_Y
(define-fun |busyctr#25| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#24| state) (ite (|busyctr#3| state) #b1 #b0) (|busyctr#22| state))) ; $0$formal$busyctr.v:37$4_CHECK[0:0]$22
(define-fun |busyctr#26| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#24| state) #b1 #b0)) ; $0$formal$busyctr.v:37$4_EN[0:0]$23
; yosys-smt2-assume 3 busyctr.v:37
(define-fun |busyctr_u 3| ((state |busyctr_s|)) Bool (or (= ((_ extract 0 0) (|busyctr#25| state)) #b1) (not (= ((_ extract 0 0) (|busyctr#26| state)) #b1)))) ; $assume$busyctr.v:37$52
; yosys-smt2-assert 0 busyctr.v:49
(define-fun |busyctr_a 0| ((state |busyctr_s|)) Bool (or (= ((_ extract 0 0) (|busyctr#13| state)) #b1) (not (= ((_ extract 0 0) (|busyctr#12| state)) #b1)))) ; $assert$busyctr.v:49$55
; yosys-smt2-assert 1 busyctr.v:46
(define-fun |busyctr_a 1| ((state |busyctr_s|)) Bool (or (= ((_ extract 0 0) (|busyctr#15| state)) #b1) (not (= ((_ extract 0 0) (|busyctr#14| state)) #b1)))) ; $assert$busyctr.v:46$54
; yosys-smt2-anyseq busyctr#27 1 $auto$setundef.cc:524:execute$126
(declare-fun |busyctr#27| (|busyctr_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$127
(define-fun |busyctr#28| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#1| state) #b1 (|busyctr#27| state))) ; $0$formal$busyctr.v:46$6_CHECK[0:0]$30
; yosys-smt2-anyseq busyctr#29 1 $auto$setundef.cc:524:execute$128
(declare-fun |busyctr#29| (|busyctr_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$129
(define-fun |busyctr#30| ((state |busyctr_s|)) Bool (bvult (|busyctr#0| state) (|busyctr#8| state))) ; $lt$busyctr.v:49$39_Y
(define-fun |busyctr#31| ((state |busyctr_s|)) Bool (and (or  (= ((_ extract 0 0) (|busyctr#0| state)) #b1) (= ((_ extract 1 1) (|busyctr#0| state)) #b1) (= ((_ extract 2 2) (|busyctr#0| state)) #b1) (= ((_ extract 3 3) (|busyctr#0| state)) #b1) (= ((_ extract 4 4) (|busyctr#0| state)) #b1) (= ((_ extract 5 5) (|busyctr#0| state)) #b1) (= ((_ extract 6 6) (|busyctr#0| state)) #b1) (= ((_ extract 7 7) (|busyctr#0| state)) #b1) (= ((_ extract 8 8) (|busyctr#0| state)) #b1) (= ((_ extract 9 9) (|busyctr#0| state)) #b1) (= ((_ extract 10 10) (|busyctr#0| state)) #b1) (= ((_ extract 11 11) (|busyctr#0| state)) #b1) (= ((_ extract 12 12) (|busyctr#0| state)) #b1) (= ((_ extract 13 13) (|busyctr#0| state)) #b1) (= ((_ extract 14 14) (|busyctr#0| state)) #b1) (= ((_ extract 15 15) (|busyctr#0| state)) #b1)) (or  (= ((_ extract 0 0) (|busyctr#6| state)) #b1) false))) ; $logic_and$busyctr.v:47$36_Y
(define-fun |busyctr#32| ((state |busyctr_s|)) Bool (distinct (|busyctr#0| state) #b0000001111100111)) ; $ne$busyctr.v:47$37_Y
(define-fun |busyctr#33| ((state |busyctr_s|)) Bool (and (or  (|busyctr#31| state) false) (or  (|busyctr#32| state) false))) ; $logic_and$busyctr.v:47$38_Y
(define-fun |busyctr#34| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#33| state) (ite (|busyctr#30| state) #b1 #b0) (|busyctr#29| state))) ; $0$formal$busyctr.v:49$7_CHECK[0:0]$32
(define-fun |busyctr#35| ((state |busyctr_s|)) (_ BitVec 1) (ite (|busyctr#33| state) #b1 #b0)) ; $0$formal$busyctr.v:49$7_EN[0:0]$33
; yosys-smt2-anyseq busyctr#36 1 $auto$setundef.cc:524:execute$122
(declare-fun |busyctr#36| (|busyctr_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$123
(define-fun |busyctr#37| ((state |busyctr_s|)) Bool (not (or  (|busyctr#1| state) false))) ; $logic_not$busyctr.v:54$48_Y
(define-fun |busyctr#38| ((state |busyctr_s|)) Bool (and (or  (|busyctr#37| state) false) (or  (= ((_ extract 0 0) (|busyctr#7| state)) #b1) false))) ; $logic_and$busyctr.v:54$49_Y
(define-fun |busyctr#39| ((state |busyctr_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|busyctr#6| state)) #b1) (ite (|busyctr#38| state) #b1 #b0) (|busyctr#36| state))) ; $0$formal$busyctr.v:54$8_CHECK[0:0]$42
(define-fun |busyctr#40| ((state |busyctr_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|busyctr#6| state)) #b1) #b1 #b0)) ; $0$formal$busyctr.v:54$8_EN[0:0]$43
(define-fun |busyctr#41| ((state |busyctr_s|)) (_ BitVec 16) (bvsub (|busyctr#0| state) (concat #b00000000 (|busyctr#2| state)))) ; $sub$busyctr.v:20$16_Y
(define-fun |busyctr#42| ((state |busyctr_s|)) (_ BitVec 16) (ite (|busyctr#1| state) (|busyctr#41| state) (|busyctr#0| state))) ; $procmux$95_Y
(define-fun |busyctr#43| ((state |busyctr_s|)) Bool (not (or  (= ((_ extract 0 0) (|busyctr#0| state)) #b1) (= ((_ extract 1 1) (|busyctr#0| state)) #b1) (= ((_ extract 2 2) (|busyctr#0| state)) #b1) (= ((_ extract 3 3) (|busyctr#0| state)) #b1) (= ((_ extract 4 4) (|busyctr#0| state)) #b1) (= ((_ extract 5 5) (|busyctr#0| state)) #b1) (= ((_ extract 6 6) (|busyctr#0| state)) #b1) (= ((_ extract 7 7) (|busyctr#0| state)) #b1) (= ((_ extract 8 8) (|busyctr#0| state)) #b1) (= ((_ extract 9 9) (|busyctr#0| state)) #b1) (= ((_ extract 10 10) (|busyctr#0| state)) #b1) (= ((_ extract 11 11) (|busyctr#0| state)) #b1) (= ((_ extract 12 12) (|busyctr#0| state)) #b1) (= ((_ extract 13 13) (|busyctr#0| state)) #b1) (= ((_ extract 14 14) (|busyctr#0| state)) #b1) (= ((_ extract 15 15) (|busyctr#0| state)) #b1)))) ; $eq$busyctr.v:17$13_Y
(define-fun |busyctr#44| ((state |busyctr_s|)) Bool (and (or  (|busyctr#3| state) false) (or  (|busyctr#43| state) false))) ; $logic_and$busyctr.v:17$14_Y
(define-fun |busyctr#45| ((state |busyctr_s|)) (_ BitVec 16) (ite (|busyctr#44| state) #b0000001111100111 (|busyctr#42| state))) ; $procmux$98_Y
(define-fun |busyctr#46| ((state |busyctr_s|)) (_ BitVec 16) (ite (|busyctr#4| state) #b0000000000000000 (|busyctr#45| state))) ; $0\counter[15:0]
(define-fun |busyctr_a| ((state |busyctr_s|)) Bool (and
  (|busyctr_a 0| state)
  (|busyctr_a 1| state)
))
(define-fun |busyctr_u| ((state |busyctr_s|)) Bool (and
  (|busyctr_u 0| state)
  (|busyctr_u 1| state)
  (|busyctr_u 2| state)
  (|busyctr_u 3| state)
))
(define-fun |busyctr_i| ((state |busyctr_s|)) Bool (and
  (= (= ((_ extract 0 0) (|busyctr#6| state)) #b1) false) ; f_past_valid
  (= (|busyctr#0| state) #b0000000000000000) ; counter
  (= (= ((_ extract 0 0) (|busyctr#10| state)) #b1) false) ; $formal$busyctr.v:54$8_EN
  (= (= ((_ extract 0 0) (|busyctr#12| state)) #b1) false) ; $formal$busyctr.v:49$7_EN
  (= (= ((_ extract 0 0) (|busyctr#14| state)) #b1) false) ; $formal$busyctr.v:46$6_EN
))
(define-fun |busyctr_h| ((state |busyctr_s|)) Bool true)
(define-fun |busyctr_t| ((state |busyctr_s|) (next_state |busyctr_s|)) Bool (and
  (= (|busyctr#28| state) (|busyctr#15| next_state)) ; $procdff$113 $formal$busyctr.v:46$6_CHECK
  (= (|busyctr#19| state) (|busyctr#14| next_state)) ; $procdff$109 $formal$busyctr.v:46$6_EN
  (= (|busyctr#34| state) (|busyctr#13| next_state)) ; $procdff$115 $formal$busyctr.v:49$7_CHECK
  (= (|busyctr#35| state) (|busyctr#12| next_state)) ; $procdff$116 $formal$busyctr.v:49$7_EN
  (= (|busyctr#39| state) (|busyctr#11| next_state)) ; $procdff$104 $formal$busyctr.v:54$8_CHECK
  (= (|busyctr#40| state) (|busyctr#10| next_state)) ; $procdff$105 $formal$busyctr.v:54$8_EN
  (= (ite (|busyctr#3| state) #b1 #b0) (|busyctr#9| next_state)) ; $procdff$117 $past$busyctr.v:36$1$0
  (= (|busyctr#0| state) (|busyctr#8| next_state)) ; $procdff$110 $past$busyctr.v:49$2$0
  (= (ite (|busyctr#1| state) #b1 #b0) (|busyctr#7| next_state)) ; $procdff$103 $past$busyctr.v:54$3$0
  (= #b1 (|busyctr#6| next_state)) ; $procdff$107 \f_past_valid
  (= (|busyctr#46| state) (|busyctr#0| next_state)) ; $procdff$121 \counter
)) ; end of module busyctr
; yosys-smt2-topmod busyctr
; end of yosys output
