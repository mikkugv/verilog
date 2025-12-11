module relational_operator(
input [3:0] a,b, 
output gt, lt, eq);
assign gt = (a > b);
assign lt = (a < b);
assign eq = (a == b);
endmodule


/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/relational_operator$ vvp relational_operator.out
VCD info: dumpfile relational_operator.vcd opened for output.
                   0 a= 5 b= 3 | gt=1 lt=0 eq=0
relational_operator_tb.v:17: $finish called at 10 (1s)
*/
