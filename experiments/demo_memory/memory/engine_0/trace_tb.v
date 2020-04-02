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
  reg [7:0] PI_wdata;
  reg [9:0] PI_addr;
  reg [0:0] PI_wen;
  testbench UUT (
    .clk(PI_clk),
    .wdata(PI_wdata),
    .addr(PI_addr),
    .wen(PI_wen)
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
    // UUT.$formal$memory.sv:26$1_CHECK = 1'b0;
    // UUT.$formal$memory.sv:26$1_EN = 1'b0;
    UUT.test_data = 8'b11111111;
    UUT.test_data_valid = 1'b0;
    UUT.test_addr = 10'b1010000000;
    UUT.uut.bank0[8'b10000000] = 8'b00101001;
    UUT.uut.bank0[8'b00000000] = 8'b00000000;
    UUT.uut.bank1[8'b10000000] = 8'b00000000;
    UUT.uut.bank1[8'b00000000] = 8'b00000000;
    UUT.uut.bank2[8'b10000000] = 8'b11111111;
    UUT.uut.bank2[8'b00000000] = 8'b00000000;
    UUT.uut.bank3[8'b10000000] = 8'b00000000;
    UUT.uut.bank3[8'b00000000] = 8'b00000000;

    // state 0
    PI_wdata = 8'b11110111;
    PI_addr = 10'b1010000000;
    PI_wen = 1'b1;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_wdata <= 8'b00000000;
      PI_addr <= 10'b1010000000;
      PI_wen <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      PI_wdata <= 8'b00000000;
      PI_addr <= 10'b0000000000;
      PI_wen <= 1'b0;
    end

    genclock <= cycle < 2;
    cycle <= cycle + 1;
  end
endmodule
