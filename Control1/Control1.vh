module control_unit_1 ( 
	w,
	t,
	i,
	frin,
	clear,
	done,
	extern
	) ;

input  w;
input [3:0] t;
input [3:0] i;
inout  frin;
inout  clear;
inout  done;
inout  extern;
