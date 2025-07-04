module step_counter ( 
	clk,
	clear,
	w,
	done,
	t
	) ;

input  clk;
input  clear;
input  w;
input  done;
inout [3:0] t;
