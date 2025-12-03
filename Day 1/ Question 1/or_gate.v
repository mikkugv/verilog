module or_gate(
	input a,
	input b,
	output y
   );
	assign y=a|b;
endmodule





/* OUTPUT 
meenakshi@meenakshi-Inspiron-3501:~/verilog/or_gate$ vvp or_gate.out
VCD info: dumpfile or_gate.vcd opened for output.
time=0 | a=0 b=0 | y=0
time=10 | a=0 b=1 | y=1
time=20 | a=1 b=0 | y=1
time=30 | a=1 b=1 | y=1
or_gate_tb.v:19: $finish called at 40 (1s)
*/
