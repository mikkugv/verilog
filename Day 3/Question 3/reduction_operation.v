module reduction_operator(
input [3:0] a,
output and_r, or_r, xor_r
);
assign and_r = &a;
assign or_r  = |a;
assign xor_r = ^a;
endmodule

/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/reduction_operator$ vvp reduction_operator.out
VCD info: dumpfile reduction_operator.vcd opened for output.
  0 a=1101 | AND=0 | OR=1 | XOR=1
reduction_operator_tb.v:16: $finish called at 10 (1s)
*/
