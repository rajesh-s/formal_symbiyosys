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
  reg [0:0] PI_i_clk;
  reg [0:0] PI_i_start_signal;
  reg [0:0] PI_i_reset;
  busyctr UUT (
    .i_clk(PI_i_clk),
    .i_start_signal(PI_i_start_signal),
    .i_reset(PI_i_reset)
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
    // UUT.$formal$busyctr.v:46$6_CHECK = 1'b0;
    // UUT.$formal$busyctr.v:46$6_EN = 1'b0;
    // UUT.$formal$busyctr.v:49$7_CHECK = 1'b0;
    // UUT.$formal$busyctr.v:49$7_EN = 1'b0;
    // UUT.$formal$busyctr.v:54$8_CHECK = 1'b0;
    // UUT.$formal$busyctr.v:54$8_EN = 1'b0;
    // UUT.$past$busyctr.v:36$1$0 = 1'b0;
    // UUT.$past$busyctr.v:49$2$0 = 16'b0000000000000000;
    // UUT.$past$busyctr.v:54$3$0 = 1'b0;
    UUT.counter = 16'b0000000000000000;
    UUT.f_past_valid = 1'b0;

    // state 0
    PI_i_clk = 1'b0;
    PI_i_start_signal = 1'b1;
    PI_i_reset = 1'b0;
    UUT.increment = 8'b10000000;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_i_clk <= 1'b0;
      PI_i_start_signal <= 1'b1;
      PI_i_reset <= 1'b0;
      UUT.increment <= 8'b11111000;
    end

    // state 2
    if (cycle == 1) begin
      PI_i_clk <= 1'b0;
      PI_i_start_signal <= 1'b1;
      PI_i_reset <= 1'b0;
      UUT.increment <= 8'b11111111;
    end

    // state 3
    if (cycle == 2) begin
      PI_i_clk <= 1'b0;
      PI_i_start_signal <= 1'b1;
      PI_i_reset <= 1'b0;
      UUT.increment <= 8'b11110001;
    end

    // state 4
    if (cycle == 3) begin
      PI_i_clk <= 1'b0;
      PI_i_start_signal <= 1'b1;
      PI_i_reset <= 1'b0;
      UUT.increment <= 8'b11111111;
    end

    // state 5
    if (cycle == 4) begin
      PI_i_clk <= 1'b0;
      PI_i_start_signal <= 1'b0;
      PI_i_reset <= 1'b0;
      UUT.increment <= 8'b10000000;
    end

    // state 6
    if (cycle == 5) begin
      PI_i_clk <= 1'b0;
      PI_i_start_signal <= 1'b0;
      PI_i_reset <= 1'b0;
      UUT.increment <= 8'b10000000;
    end

    genclock <= cycle < 6;
    cycle <= cycle + 1;
  end
endmodule
