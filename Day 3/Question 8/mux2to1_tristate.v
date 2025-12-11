module mux2_tristate(input a, input b, input s, output y);
assign y = (s == 0) ? a : 1'bz;
assign y = (s == 1) ? b : 1'bz;
endmodule

/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux2to1_tristate$ vvp mux2to1_tristate.out
VCD info: dumpfile mux2to1_tristate.vcd opened for output.
$time=0|a=0|b=1|s=0|y=0
$time=10|a=1|b=0|s=0|y=1
$time=20|a=0|b=1|s=1|y=1
$time=30|a=1|b=0|s=1|y=0
mux2to1_tristate_tb.v:19: $finish called at 40 (1s)
*/
