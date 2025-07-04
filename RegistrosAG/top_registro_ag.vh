module top_registro_ag ( 
	clk,
	ain,
	gin,
	gout,
	addsub,
	buswires,
	alu_out
	) ;

input  clk;
input  ain;
input  gin;
input  gout;
input  addsub;
input [1:0] buswires;
inout [1:0] alu_out;
