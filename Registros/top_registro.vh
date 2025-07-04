module top_level ( 
	clk,
	rin,
	r0_out,
	r1_out,
	r2_out,
	buswires
	) ;

input  clk;
input [2:0] rin;
inout [1:0] r0_out;
inout [1:0] r1_out;
inout [1:0] r2_out;
input [1:0] buswires;
