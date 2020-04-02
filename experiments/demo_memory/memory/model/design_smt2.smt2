; SMT-LIBv2 description generated by Yosys 0.9+932 (git sha1 4072a966, clang 6.0.0-1ubuntu2 -fPIC -Os)
; yosys-smt2-module memory
(declare-sort |memory_s| 0)
(declare-fun |memory_is| (|memory_s|) Bool)
; yosys-smt2-input wen 1
; yosys-smt2-wire wen 1
(declare-fun |memory#0| (|memory_s|) Bool) ; \wen
(define-fun |memory_n wen| ((state |memory_s|)) Bool (|memory#0| state))
; yosys-smt2-input wdata 8
; yosys-smt2-wire wdata 8
(declare-fun |memory#1| (|memory_s|) (_ BitVec 8)) ; \wdata
(define-fun |memory_n wdata| ((state |memory_s|)) (_ BitVec 8) (|memory#1| state))
; yosys-smt2-output rdata 8
; yosys-smt2-wire rdata 8
; yosys-smt2-anyseq memory#2 8 $auto$setundef.cc:524:execute$177
(declare-fun |memory#2| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$178
; yosys-smt2-memory bank3 8 8 1 1 sync
(declare-fun |memory#3#0| (|memory_s|) (Array (_ BitVec 8) (_ BitVec 8))) ; bank3
(define-fun |memory_m bank3| ((state |memory_s|)) (Array (_ BitVec 8) (_ BitVec 8)) (|memory#3#0| state))
(declare-fun |memory#4| (|memory_s|) (_ BitVec 8)) ; \addr [7:0]
(define-fun |memory_m:R0A bank3| ((state |memory_s|)) (_ BitVec 8) (|memory#4| state)) ; \addr [7:0]
(define-fun |memory#5| ((state |memory_s|)) (_ BitVec 8) (select (|memory#3#0| state) (|memory_m:R0A bank3| state))) ; $auto$wreduce.cc:454:run$147 [7:0]
(define-fun |memory_m:R0D bank3| ((state |memory_s|)) (_ BitVec 8) (|memory#5| state))
(declare-fun |memory#6| (|memory_s|) (_ BitVec 2)) ; \addr [9:8]
(define-fun |memory#7| ((state |memory_s|)) Bool (= (|memory#6| state) #b11)) ; $eq$memory.sv:59$35_Y
(define-fun |memory#8| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#7| state) (|memory#5| state) (|memory#2| state))) ; $auto$wreduce.cc:454:run$151 [7:0]
; yosys-smt2-memory bank2 8 8 1 0 async
(declare-fun |memory#9#final| (|memory_s|) (Array (_ BitVec 8) (_ BitVec 8))) ; bank2
(define-fun |memory_m bank2| ((state |memory_s|)) (Array (_ BitVec 8) (_ BitVec 8)) (|memory#9#final| state))
(define-fun |memory_m:R0A bank2| ((state |memory_s|)) (_ BitVec 8) (|memory#4| state)) ; \addr [7:0]
(define-fun |memory#10| ((state |memory_s|)) (_ BitVec 8) (select (|memory#9#final| state) (|memory_m:R0A bank2| state))) ; $auto$wreduce.cc:454:run$148 [7:0]
(define-fun |memory_m:R0D bank2| ((state |memory_s|)) (_ BitVec 8) (|memory#10| state))
(define-fun |memory#11| ((state |memory_s|)) Bool (= (|memory#6| state) #b10)) ; $eq$memory.sv:58$33_Y
(define-fun |memory#12| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#11| state) (|memory#10| state) (|memory#8| state))) ; $auto$wreduce.cc:454:run$152 [7:0]
; yosys-smt2-memory bank1 8 8 1 2 sync
(declare-fun |memory#13#0| (|memory_s|) (Array (_ BitVec 8) (_ BitVec 8))) ; bank1
(define-fun |memory_m bank1| ((state |memory_s|)) (Array (_ BitVec 8) (_ BitVec 8)) (|memory#13#0| state))
(define-fun |memory_m:R0A bank1| ((state |memory_s|)) (_ BitVec 8) (|memory#4| state)) ; \addr [7:0]
(define-fun |memory#14| ((state |memory_s|)) (_ BitVec 8) (select (|memory#13#0| state) (|memory_m:R0A bank1| state))) ; $auto$wreduce.cc:454:run$149 [7:0]
(define-fun |memory_m:R0D bank1| ((state |memory_s|)) (_ BitVec 8) (|memory#14| state))
(define-fun |memory#15| ((state |memory_s|)) Bool (= (|memory#6| state) #b01)) ; $eq$memory.sv:57$31_Y
(define-fun |memory#16| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#15| state) (|memory#14| state) (|memory#12| state))) ; $ternary$memory.sv:59$42_Y [7:0]
; yosys-smt2-memory bank0 8 8 1 1 sync
(declare-fun |memory#17#0| (|memory_s|) (Array (_ BitVec 8) (_ BitVec 8))) ; bank0
(define-fun |memory_m bank0| ((state |memory_s|)) (Array (_ BitVec 8) (_ BitVec 8)) (|memory#17#0| state))
(define-fun |memory_m:R0A bank0| ((state |memory_s|)) (_ BitVec 8) (|memory#4| state)) ; \addr [7:0]
(define-fun |memory#18| ((state |memory_s|)) (_ BitVec 8) (select (|memory#17#0| state) (|memory_m:R0A bank0| state))) ; $auto$wreduce.cc:454:run$150 [7:0]
(define-fun |memory_m:R0D bank0| ((state |memory_s|)) (_ BitVec 8) (|memory#18| state))
(define-fun |memory#19| ((state |memory_s|)) Bool (not (or  (= ((_ extract 0 0) (|memory#6| state)) #b1) (= ((_ extract 1 1) (|memory#6| state)) #b1)))) ; $eq$memory.sv:56$29_Y
(define-fun |memory#20| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#19| state) (|memory#18| state) (|memory#16| state))) ; \rdata
(define-fun |memory_n rdata| ((state |memory_s|)) (_ BitVec 8) (|memory#20| state))
; yosys-smt2-wire mem_sel 2
(define-fun |memory_n mem_sel| ((state |memory_s|)) (_ BitVec 2) (|memory#6| state))
; yosys-smt2-wire mem_addr 8
(define-fun |memory_n mem_addr| ((state |memory_s|)) (_ BitVec 8) (|memory#4| state))
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
(declare-fun |memory#21| (|memory_s|) Bool) ; \clk
(define-fun |memory_n clk| ((state |memory_s|)) Bool (|memory#21| state))
; yosys-smt2-input addr 10
; yosys-smt2-wire addr 10
(define-fun |memory_n addr| ((state |memory_s|)) (_ BitVec 10) (concat (|memory#6| state) (|memory#4| state)))
; yosys-smt2-anyseq memory#22 8 $auto$setundef.cc:524:execute$169
(declare-fun |memory#22| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$170
; yosys-smt2-anyseq memory#23 8 $auto$setundef.cc:524:execute$163
(declare-fun |memory#23| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$164
(define-fun |memory#24| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#0| state) (|memory#4| state) (|memory#23| state))) ; $procmux$111_Y
(define-fun |memory#25| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#19| state) (|memory#24| state) (|memory#22| state))) ; $0$memwr$\bank0$memory.sv:48$12_ADDR[7:0]$17
; yosys-smt2-anyseq memory#26 8 $auto$setundef.cc:524:execute$167
(declare-fun |memory#26| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$168
; yosys-smt2-anyseq memory#27 8 $auto$setundef.cc:524:execute$159
(declare-fun |memory#27| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$160
(define-fun |memory#28| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#0| state) (|memory#1| state) (|memory#27| state))) ; $procmux$107_Y
(define-fun |memory#29| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#19| state) (|memory#28| state) (|memory#26| state))) ; $0$memwr$\bank0$memory.sv:48$12_DATA[7:0]$18
(define-fun |memory#30| ((state |memory_s|)) (_ BitVec 1) (ite (|memory#0| state) #b1 #b0)) ; $procmux$103_Y [7]
(define-fun |memory#31| ((state |memory_s|)) (_ BitVec 1) (ite (|memory#19| state) (|memory#30| state) #b0)) ; $0$memwr$\bank0$memory.sv:48$12_EN[7:0]$19 [7]
(define-fun |memory_m:W0A bank0| ((state |memory_s|)) (_ BitVec 8) (|memory#25| state)) ; $0$memwr$\bank0$memory.sv:48$12_ADDR[7:0]$17
(define-fun |memory_m:W0D bank0| ((state |memory_s|)) (_ BitVec 8) (|memory#29| state)) ; $0$memwr$\bank0$memory.sv:48$12_DATA[7:0]$18
(define-fun |memory_m:W0M bank0| ((state |memory_s|)) (_ BitVec 8) (concat (|memory#31| state) (concat (|memory#31| state) (concat (|memory#31| state) (concat (|memory#31| state) (concat (|memory#31| state) (concat (|memory#31| state) (concat (|memory#31| state) (|memory#31| state))))))))) ; { $0$memwr$\bank0$memory.sv:48$12_EN[7:0]$19 [7] $0$memwr$\bank0$memory.sv:48$12_EN[7:0]$19 [7] $0$memwr$\bank0$memory.sv:48$12_EN[7:0]$19 [7] $0$memwr$\bank0$memory.sv:48$12_EN[7:0]$19 [7] $0$memwr$\bank0$memory.sv:48$12_EN[7:0]$19 [7] $0$memwr$\bank0$memory.sv:48$12_EN[7:0]$19 [7] $0$memwr$\bank0$memory.sv:48$12_EN[7:0]$19 [7] $0$memwr$\bank0$memory.sv:48$12_EN[7:0]$19 [7] }
(define-fun |memory#17#1| ((state |memory_s|)) (Array (_ BitVec 8) (_ BitVec 8)) (store (|memory#17#0| state) (|memory_m:W0A bank0| state) (bvor (bvand (|memory_m:W0D bank0| state) (|memory_m:W0M bank0| state)) (bvand (select (|memory#17#0| state) (|memory_m:W0A bank0| state)) (bvnot (|memory_m:W0M bank0| state)))))) ; bank0
; yosys-smt2-anyseq memory#32 8 $auto$setundef.cc:524:execute$173
(declare-fun |memory#32| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$174
(define-fun |memory#33| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#15| state) (|memory#24| state) (|memory#32| state))) ; $0$memwr$\bank1$memory.sv:49$13_ADDR[7:0]$20
; yosys-smt2-anyseq memory#34 8 $auto$setundef.cc:524:execute$171
(declare-fun |memory#34| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$172
(define-fun |memory#35| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#15| state) (|memory#28| state) (|memory#34| state))) ; $0$memwr$\bank1$memory.sv:49$13_DATA[7:0]$21
(define-fun |memory#36| ((state |memory_s|)) (_ BitVec 1) (ite (|memory#15| state) (|memory#30| state) #b0)) ; $0$memwr$\bank1$memory.sv:49$13_EN[7:0]$22 [7]
(define-fun |memory_m:W0A bank1| ((state |memory_s|)) (_ BitVec 8) (|memory#33| state)) ; $0$memwr$\bank1$memory.sv:49$13_ADDR[7:0]$20
(define-fun |memory_m:W0D bank1| ((state |memory_s|)) (_ BitVec 8) (|memory#35| state)) ; $0$memwr$\bank1$memory.sv:49$13_DATA[7:0]$21
(define-fun |memory_m:W0M bank1| ((state |memory_s|)) (_ BitVec 8) (concat (|memory#36| state) (concat (|memory#36| state) (concat (|memory#36| state) (concat (|memory#36| state) (concat (|memory#36| state) (concat (|memory#36| state) (concat (|memory#36| state) (|memory#36| state))))))))) ; { $0$memwr$\bank1$memory.sv:49$13_EN[7:0]$22 [7] $0$memwr$\bank1$memory.sv:49$13_EN[7:0]$22 [7] $0$memwr$\bank1$memory.sv:49$13_EN[7:0]$22 [7] $0$memwr$\bank1$memory.sv:49$13_EN[7:0]$22 [7] $0$memwr$\bank1$memory.sv:49$13_EN[7:0]$22 [7] $0$memwr$\bank1$memory.sv:49$13_EN[7:0]$22 [7] $0$memwr$\bank1$memory.sv:49$13_EN[7:0]$22 [7] $0$memwr$\bank1$memory.sv:49$13_EN[7:0]$22 [7] }
(define-fun |memory#13#1| ((state |memory_s|)) (Array (_ BitVec 8) (_ BitVec 8)) (store (|memory#13#0| state) (|memory_m:W0A bank1| state) (bvor (bvand (|memory_m:W0D bank1| state) (|memory_m:W0M bank1| state)) (bvand (select (|memory#13#0| state) (|memory_m:W0A bank1| state)) (bvnot (|memory_m:W0M bank1| state)))))) ; bank1
; yosys-smt2-anyseq memory#37 8 $auto$setundef.cc:524:execute$157
(declare-fun |memory#37| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$158
(define-fun |memory#38| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#11| state) (|memory#24| state) (|memory#37| state))) ; $0$memwr$\bank1$memory.sv:50$14_ADDR[7:0]$23
; yosys-smt2-anyseq memory#39 8 $auto$setundef.cc:524:execute$175
(declare-fun |memory#39| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$176
(define-fun |memory#40| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#11| state) (|memory#28| state) (|memory#39| state))) ; $0$memwr$\bank1$memory.sv:50$14_DATA[7:0]$24
(define-fun |memory#41| ((state |memory_s|)) (_ BitVec 1) (ite (|memory#11| state) (|memory#30| state) #b0)) ; $0$memwr$\bank1$memory.sv:50$14_EN[7:0]$25 [7]
(define-fun |memory_m:W1A bank1| ((state |memory_s|)) (_ BitVec 8) (|memory#38| state)) ; $0$memwr$\bank1$memory.sv:50$14_ADDR[7:0]$23
(define-fun |memory_m:W1D bank1| ((state |memory_s|)) (_ BitVec 8) (|memory#40| state)) ; $0$memwr$\bank1$memory.sv:50$14_DATA[7:0]$24
(define-fun |memory_m:W1M bank1| ((state |memory_s|)) (_ BitVec 8) (concat (|memory#41| state) (concat (|memory#41| state) (concat (|memory#41| state) (concat (|memory#41| state) (concat (|memory#41| state) (concat (|memory#41| state) (concat (|memory#41| state) (|memory#41| state))))))))) ; { $0$memwr$\bank1$memory.sv:50$14_EN[7:0]$25 [7] $0$memwr$\bank1$memory.sv:50$14_EN[7:0]$25 [7] $0$memwr$\bank1$memory.sv:50$14_EN[7:0]$25 [7] $0$memwr$\bank1$memory.sv:50$14_EN[7:0]$25 [7] $0$memwr$\bank1$memory.sv:50$14_EN[7:0]$25 [7] $0$memwr$\bank1$memory.sv:50$14_EN[7:0]$25 [7] $0$memwr$\bank1$memory.sv:50$14_EN[7:0]$25 [7] $0$memwr$\bank1$memory.sv:50$14_EN[7:0]$25 [7] }
(define-fun |memory#13#2| ((state |memory_s|)) (Array (_ BitVec 8) (_ BitVec 8)) (store (|memory#13#1| state) (|memory_m:W1A bank1| state) (bvor (bvand (|memory_m:W1D bank1| state) (|memory_m:W1M bank1| state)) (bvand (select (|memory#13#1| state) (|memory_m:W1A bank1| state)) (bvnot (|memory_m:W1M bank1| state)))))) ; bank1
(declare-fun |memory#9#0| (|memory_s|) (Array (_ BitVec 8) (_ BitVec 8))) ; bank2
; yosys-smt2-anyseq memory#42 8 $auto$setundef.cc:524:execute$165
(declare-fun |memory#42| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$166
(define-fun |memory#43| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#7| state) (|memory#24| state) (|memory#42| state))) ; $0$memwr$\bank3$memory.sv:51$15_ADDR[7:0]$26
; yosys-smt2-anyseq memory#44 8 $auto$setundef.cc:524:execute$161
(declare-fun |memory#44| (|memory_s|) (_ BitVec 8)) ; $auto$rtlil.cc:2318:Anyseq$162
(define-fun |memory#45| ((state |memory_s|)) (_ BitVec 8) (ite (|memory#7| state) (|memory#28| state) (|memory#44| state))) ; $0$memwr$\bank3$memory.sv:51$15_DATA[7:0]$27
(define-fun |memory#46| ((state |memory_s|)) (_ BitVec 1) (ite (|memory#7| state) (|memory#30| state) #b0)) ; $0$memwr$\bank3$memory.sv:51$15_EN[7:0]$28 [7]
(define-fun |memory_m:W0A bank3| ((state |memory_s|)) (_ BitVec 8) (|memory#43| state)) ; $0$memwr$\bank3$memory.sv:51$15_ADDR[7:0]$26
(define-fun |memory_m:W0D bank3| ((state |memory_s|)) (_ BitVec 8) (|memory#45| state)) ; $0$memwr$\bank3$memory.sv:51$15_DATA[7:0]$27
(define-fun |memory_m:W0M bank3| ((state |memory_s|)) (_ BitVec 8) (concat (|memory#46| state) (concat (|memory#46| state) (concat (|memory#46| state) (concat (|memory#46| state) (concat (|memory#46| state) (concat (|memory#46| state) (concat (|memory#46| state) (|memory#46| state))))))))) ; { $0$memwr$\bank3$memory.sv:51$15_EN[7:0]$28 [7] $0$memwr$\bank3$memory.sv:51$15_EN[7:0]$28 [7] $0$memwr$\bank3$memory.sv:51$15_EN[7:0]$28 [7] $0$memwr$\bank3$memory.sv:51$15_EN[7:0]$28 [7] $0$memwr$\bank3$memory.sv:51$15_EN[7:0]$28 [7] $0$memwr$\bank3$memory.sv:51$15_EN[7:0]$28 [7] $0$memwr$\bank3$memory.sv:51$15_EN[7:0]$28 [7] $0$memwr$\bank3$memory.sv:51$15_EN[7:0]$28 [7] }
(define-fun |memory#3#1| ((state |memory_s|)) (Array (_ BitVec 8) (_ BitVec 8)) (store (|memory#3#0| state) (|memory_m:W0A bank3| state) (bvor (bvand (|memory_m:W0D bank3| state) (|memory_m:W0M bank3| state)) (bvand (select (|memory#3#0| state) (|memory_m:W0A bank3| state)) (bvnot (|memory_m:W0M bank3| state)))))) ; bank3
(define-fun |memory_a| ((state |memory_s|)) Bool true)
(define-fun |memory_u| ((state |memory_s|)) Bool true)
(define-fun |memory_i| ((state |memory_s|)) Bool true)
(define-fun |memory_h| ((state |memory_s|)) Bool 
  (= (|memory#9#0| state) (|memory#9#final| state)) ; bank2
)
(define-fun |memory_t| ((state |memory_s|) (next_state |memory_s|)) Bool (and
  (= (|memory#17#1| state) (|memory#17#0| next_state)) ; bank0
  (= (|memory#13#2| state) (|memory#13#0| next_state)) ; bank1
  (= (|memory#9#0| state) (|memory#9#0| next_state)) ; bank2
  (= (|memory#3#1| state) (|memory#3#0| next_state)) ; bank3
)) ; end of module memory
; yosys-smt2-module testbench
(declare-sort |testbench_s| 0)
(declare-fun |testbench_is| (|testbench_s|) Bool)
; yosys-smt2-input wen 1
; yosys-smt2-wire wen 1
(declare-fun |testbench#0| (|testbench_s|) Bool) ; \wen
(define-fun |testbench_n wen| ((state |testbench_s|)) Bool (|testbench#0| state))
; yosys-smt2-input wdata 8
; yosys-smt2-wire wdata 8
(declare-fun |testbench#1| (|testbench_s|) (_ BitVec 8)) ; \wdata
(define-fun |testbench_n wdata| ((state |testbench_s|)) (_ BitVec 8) (|testbench#1| state))
; yosys-smt2-register test_data_valid 1
; yosys-smt2-wire test_data_valid 1
(declare-fun |testbench#2| (|testbench_s|) (_ BitVec 1)) ; \test_data_valid
(define-fun |testbench_n test_data_valid| ((state |testbench_s|)) Bool (= ((_ extract 0 0) (|testbench#2| state)) #b1))
; yosys-smt2-register test_data 8
; yosys-smt2-wire test_data 8
(declare-fun |testbench#3| (|testbench_s|) (_ BitVec 8)) ; \test_data
(define-fun |testbench_n test_data| ((state |testbench_s|)) (_ BitVec 8) (|testbench#3| state))
; yosys-smt2-wire test_addr 10
; yosys-smt2-anyconst testbench#4 10 memory.sv:15 test_addr
(declare-fun |testbench#4| (|testbench_s|) (_ BitVec 10)) ; \test_addr
(define-fun |testbench_n test_addr| ((state |testbench_s|)) (_ BitVec 10) (|testbench#4| state))
; yosys-smt2-output rdata 8
; yosys-smt2-wire rdata 8
; yosys-smt2-cell memory uut
(declare-fun |testbench#5| (|testbench_s|) (_ BitVec 8)) ; \rdata
(declare-fun |testbench_h uut| (|testbench_s|) |memory_s|)
(define-fun |testbench_n rdata| ((state |testbench_s|)) (_ BitVec 8) (|testbench#5| state))
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
(declare-fun |testbench#6| (|testbench_s|) Bool) ; \clk
(define-fun |testbench_n clk| ((state |testbench_s|)) Bool (|testbench#6| state))
; yosys-smt2-input addr 10
; yosys-smt2-wire addr 10
(declare-fun |testbench#7| (|testbench_s|) (_ BitVec 10)) ; \addr
(define-fun |testbench_n addr| ((state |testbench_s|)) (_ BitVec 10) (|testbench#7| state))
; yosys-smt2-register $formal$memory.sv:26$1_EN 1
(declare-fun |testbench#8| (|testbench_s|) (_ BitVec 1)) ; $formal$memory.sv:26$1_EN
(define-fun |testbench_n $formal$memory.sv:26$1_EN| ((state |testbench_s|)) Bool (= ((_ extract 0 0) (|testbench#8| state)) #b1))
; yosys-smt2-register $formal$memory.sv:26$1_CHECK 1
(declare-fun |testbench#9| (|testbench_s|) (_ BitVec 1)) ; $formal$memory.sv:26$1_CHECK
(define-fun |testbench_n $formal$memory.sv:26$1_CHECK| ((state |testbench_s|)) Bool (= ((_ extract 0 0) (|testbench#9| state)) #b1))
; yosys-smt2-assert 0 memory.sv:26
(define-fun |testbench_a 0| ((state |testbench_s|)) Bool (or (= ((_ extract 0 0) (|testbench#9| state)) #b1) (not (= ((_ extract 0 0) (|testbench#8| state)) #b1)))) ; $assert$memory.sv:26$8
; yosys-smt2-anyseq testbench#10 1 $auto$setundef.cc:524:execute$187
(declare-fun |testbench#10| (|testbench_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$188
; yosys-smt2-anyseq testbench#11 1 $auto$setundef.cc:524:execute$185
(declare-fun |testbench#11| (|testbench_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$186
(define-fun |testbench#12| ((state |testbench_s|)) Bool (= (|testbench#3| state) (|testbench#5| state))) ; $eq$memory.sv:26$7_Y
(define-fun |testbench#13| ((state |testbench_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|testbench#2| state)) #b1) (ite (|testbench#12| state) #b1 #b0) (|testbench#11| state))) ; $procmux$119_Y
(define-fun |testbench#14| ((state |testbench_s|)) Bool (= (|testbench#7| state) (|testbench#4| state))) ; $eq$memory.sv:20$6_Y
(define-fun |testbench#15| ((state |testbench_s|)) (_ BitVec 1) (ite (|testbench#14| state) (|testbench#13| state) (|testbench#10| state))) ; $0$formal$memory.sv:26$1_CHECK[0:0]$4
(define-fun |testbench#16| ((state |testbench_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|testbench#2| state)) #b1) #b1 #b0)) ; $procmux$115_Y
(define-fun |testbench#17| ((state |testbench_s|)) (_ BitVec 1) (ite (|testbench#14| state) (|testbench#16| state) #b0)) ; $0$formal$memory.sv:26$1_EN[0:0]$5
(define-fun |testbench#18| ((state |testbench_s|)) (_ BitVec 8) (ite (|testbench#0| state) (|testbench#1| state) (|testbench#3| state))) ; $procmux$123_Y
(define-fun |testbench#19| ((state |testbench_s|)) (_ BitVec 8) (ite (|testbench#14| state) (|testbench#18| state) (|testbench#3| state))) ; $0\test_data[7:0]
(define-fun |testbench#20| ((state |testbench_s|)) (_ BitVec 1) (ite (|testbench#0| state) #b1 (|testbench#2| state))) ; $procmux$127_Y
(define-fun |testbench#21| ((state |testbench_s|)) (_ BitVec 1) (ite (|testbench#14| state) (|testbench#20| state) (|testbench#2| state))) ; $0\test_data_valid[0:0]
(define-fun |testbench_a| ((state |testbench_s|)) Bool (and
  (|testbench_a 0| state)
  (|memory_a| (|testbench_h uut| state))
))
(define-fun |testbench_u| ((state |testbench_s|)) Bool 
  (|memory_u| (|testbench_h uut| state))
)
(define-fun |testbench_i| ((state |testbench_s|)) Bool (and
  (= (= ((_ extract 0 0) (|testbench#2| state)) #b1) false) ; test_data_valid
  (= (= ((_ extract 0 0) (|testbench#8| state)) #b1) false) ; $formal$memory.sv:26$1_EN
  (|memory_i| (|testbench_h uut| state))
))
(define-fun |testbench_h| ((state |testbench_s|)) Bool (and
  (= (|testbench_is| state) (|memory_is| (|testbench_h uut| state)))
  (= (|testbench#0| state) (|memory_n wen| (|testbench_h uut| state))) ; memory.wen
  (= (|testbench#1| state) (|memory_n wdata| (|testbench_h uut| state))) ; memory.wdata
  (= (|testbench#5| state) (|memory_n rdata| (|testbench_h uut| state))) ; memory.rdata
  (= (|testbench#6| state) (|memory_n clk| (|testbench_h uut| state))) ; memory.clk
  (= (|testbench#7| state) (|memory_n addr| (|testbench_h uut| state))) ; memory.addr
  (|memory_h| (|testbench_h uut| state))
))
(define-fun |testbench_t| ((state |testbench_s|) (next_state |testbench_s|)) Bool (and
  (= (|testbench#15| state) (|testbench#9| next_state)) ; $procdff$145 $formal$memory.sv:26$1_CHECK
  (= (|testbench#17| state) (|testbench#8| next_state)) ; $procdff$146 $formal$memory.sv:26$1_EN
  (= (|testbench#4| state) (|testbench#4| next_state)) ; $anyconst$2 \test_addr
  (= (|testbench#19| state) (|testbench#3| next_state)) ; $procdff$144 \test_data
  (= (|testbench#21| state) (|testbench#2| next_state)) ; $procdff$143 \test_data_valid
  (|memory_t| (|testbench_h uut| state) (|testbench_h uut| next_state))
)) ; end of module testbench
; yosys-smt2-topmod testbench
; end of yosys output
