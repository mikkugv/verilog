module conditional_operator(
input a,b, 
output y
);
assign y = (a > b) ? a : b;
endmodule



/* OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/conditional_operator$ vvp conditional_operator.out
VCD info: dumpfile conditional_operator.vcd opened for output.
$time=0|a=1|b=0|y=1
conditional_operator_tb.v:15: $finish called at 10 (1s)
*/
