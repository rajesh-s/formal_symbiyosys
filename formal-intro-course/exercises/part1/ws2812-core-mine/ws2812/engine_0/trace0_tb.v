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
  reg [7:0] PI_led_num;
  reg [23:0] PI_rgb_data;
  reg [0:0] PI_reset;
  reg [0:0] PI_write;
  ws2812 UUT (
    .clk(PI_clk),
    .led_num(PI_led_num),
    .rgb_data(PI_rgb_data),
    .reset(PI_reset),
    .write(PI_write)
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
    UUT.bit_counter = 12'b000000000000;
    UUT.data = 1'b0;
    UUT.f_past_valid = 1'b0;
    UUT.led_color = 24'b000000000000000000000000;
    UUT.led_counter = 3'b000;
    UUT.rgb_counter = 5'b00000;
    UUT.state = 2'b01;
    UUT.led_reg[3'b000] = 24'b000000000000000000000000;
    UUT.led_reg[3'b111] = 24'b000000000000000000000000;

    // state 0
    PI_led_num = 8'b00000000;
    PI_rgb_data = 24'b000000000000000000000000;
    PI_reset = 1'b1;
    PI_write = 1'b0;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_led_num <= 8'b00000111;
      PI_rgb_data <= 24'b111111111111111111111111;
      PI_reset <= 1'b0;
      PI_write <= 1'b1;
    end

    // state 2
    if (cycle == 1) begin
      PI_led_num <= 8'b00000000;
      PI_rgb_data <= 24'b000000000000000000000000;
      PI_reset <= 1'b0;
      PI_write <= 1'b1;
    end

    genclock <= cycle < 2;
    cycle <= cycle + 1;
  end
endmodule
