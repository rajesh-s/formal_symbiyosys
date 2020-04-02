`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  wire [0:0] PI_clk = clock;
  demo UUT (
    .clk(PI_clk)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$formal$demo.sv:16$1_CHECK = 1'b0;
    // UUT.$formal$demo.sv:16$1_EN = 1'b0;
    UUT.counter = 6'b000000;

    // state 0
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
    end

    // state 2
    if (cycle == 1) begin
    end

    // state 3
    if (cycle == 2) begin
    end

    // state 4
    if (cycle == 3) begin
    end

    // state 5
    if (cycle == 4) begin
    end

    // state 6
    if (cycle == 5) begin
    end

    // state 7
    if (cycle == 6) begin
    end

    // state 8
    if (cycle == 7) begin
    end

    // state 9
    if (cycle == 8) begin
    end

    // state 10
    if (cycle == 9) begin
    end

    // state 11
    if (cycle == 10) begin
    end

    // state 12
    if (cycle == 11) begin
    end

    // state 13
    if (cycle == 12) begin
    end

    // state 14
    if (cycle == 13) begin
    end

    // state 15
    if (cycle == 14) begin
    end

    // state 16
    if (cycle == 15) begin
    end

    // state 17
    if (cycle == 16) begin
    end

    // state 18
    if (cycle == 17) begin
    end

    // state 19
    if (cycle == 18) begin
    end

    // state 20
    if (cycle == 19) begin
    end

    // state 21
    if (cycle == 20) begin
    end

    // state 22
    if (cycle == 21) begin
    end

    // state 23
    if (cycle == 22) begin
    end

    // state 24
    if (cycle == 23) begin
    end

    // state 25
    if (cycle == 24) begin
    end

    // state 26
    if (cycle == 25) begin
    end

    // state 27
    if (cycle == 26) begin
    end

    // state 28
    if (cycle == 27) begin
    end

    // state 29
    if (cycle == 28) begin
    end

    // state 30
    if (cycle == 29) begin
    end

    // state 31
    if (cycle == 30) begin
    end

    // state 32
    if (cycle == 31) begin
    end

    // state 33
    if (cycle == 32) begin
    end

    genclock <= cycle < 33;
    cycle <= cycle + 1;
  end
endmodule
