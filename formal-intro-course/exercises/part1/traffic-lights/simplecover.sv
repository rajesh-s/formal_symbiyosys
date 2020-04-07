module simplecover (
	input clock,
	input reset,

	input pedestrian_green,
	input up_green,
	input down_green,
	input turn_green
);
	reg reset_req = 1;

	always @(posedge clock) begin
		if (reset_req)
			assume (reset);
		reset_req <= 0;
	end

	default clocking @(posedge clock); endclocking
	default disable iff (reset);

	cover property (pedestrian_green);
	cover property (up_green);
	cover property (down_green);
	cover property (turn_green);

	property signal_seq(first, second);
		(first && !second) ##[+] (!first && second);
	endproperty

	pair_pedestrian_up:   cover property (signal_seq(pedestrian_green, up_green));
	pair_pedestrian_down:   cover property (signal_seq(pedestrian_green, down_green));
	pair_pedestrian_turn:   cover property (signal_seq(up_green, turn_green));

endmodule

bind intersection simplecover checker_inst (.*);
