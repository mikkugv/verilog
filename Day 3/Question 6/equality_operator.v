module equality_operator(
input [3:0] a,b,
output eq, neq);
assign eq  =(a == b);
assign neq =(a != b);
endmodule



/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/equality_operator$ vvp equality_operator.out
VCD info: dumpfile equality_operator.vcd opened for output.
                   0 a=0100 b=0100 | eq=1 neq=0
equality_operator_tb.v:15: $finish called at 10 (1s)
*/
