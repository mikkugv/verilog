module shift_operator(
input [3:0] a,
output [3:0] lshift, rshift);
assign lshift = a << 1;
assign rshift = a >> 1;
endmodule



/* OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/shift_operator$ vvp shift_operator.out
VCD info: dumpfile shift_operator.vcd opened for output.
                   0 a=1010 | L=0100 | R=0101
shift_operator_tb.v:10: $finish called at 10 (1s)
*/
