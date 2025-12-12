module mux2to1_bitselect(
input [1:0] in,
input sel,
output out
);
assign out = in[sel];
endmodule


/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux2to1_bitselect$ vvp mux2to1_bitselect.out
VCD info: dumpfile mux2to1_bitselect.vcd opened for output.
$time=0| in=01| sel=0| out=1
$time=10| in=01| sel=1| out=0
$time=20| in=10| sel=0| out=0
$time=30| in=10| sel=1| out=1
mux2to1_bitselect_tb.v:19: $finish called at 40 (1s)
*/
