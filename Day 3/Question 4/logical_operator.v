module logical_operator(
input a,b,
output and_l, or_l, not_l
);
assign and_l = a && b;
assign or_l  = a || b;
assign not_l = !a;
endmodule



/* OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/logical_operator$ vvp logical_operator.out
VCD info: dumpfile logical_operator.vcd opened for output.
                   0a=1 b=0 | AND=0 OR=1 NOT=0
logical_operator_tb.v:17: $finish called at 10 (1s)
*/
