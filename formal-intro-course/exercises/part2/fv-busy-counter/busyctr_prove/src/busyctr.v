// Copyright (C) 2017-2018, Gisselquist Technology, LLC
// See LICENSE for more details.
`default_nettype	none
module	busyctr(i_clk, i_reset, i_start_signal, o_busy);
	parameter	[15:0]	MAX_AMOUNT = 22;
	input	wire	i_clk, i_reset;
	input	wire	i_start_signal;
	output	reg	o_busy;

	reg	[15:0]	counter;

	initial	counter = 0;
	always @(posedge i_clk)
		if (i_reset)
			counter <= 0;
		else if ((i_start_signal)&&(counter == 0))
			counter <= MAX_AMOUNT-1'b1;
		else if (counter != 0)
			counter <= counter - 1'b1;

	always @(*)
		o_busy <= (counter != 0);

`ifdef	FORMAL
	// Your formal properties would go here
    reg f_past_valid = 0;
    always@(posedge i_clk)begin
      f_past_valid <= 1; 
    
    //if(f_past_valid)
    //  //if(i_start_signal && !$past(i_start_signal))
    //  if(!(i_start_signal && !o_busy))
    //    assume(i_start_signal==1);

      // Assertion 1 
    if(counter !=0)
        assert(o_busy);
    
      // Prove down counting
    if(f_past_valid && i_start_signal)
      if(o_busy && !(o_busy && !($past(o_busy))))
          assert(counter == $past(counter)-1);
    end

`endif
endmodule
