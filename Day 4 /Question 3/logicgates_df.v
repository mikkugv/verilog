module logicgates_df(
input  a,
input  b,
output and_y,
output or_y,
output not_y,
output nand_y,
output nor_y,
output xor_y,
output xnor_y
);
assign and_y  = a & b;
assign or_y   = a | b;
assign not_y  = ~a;
assign nand_y = ~(a & b);
assign nor_y  = ~(a | b);
assign xor_y  = a ^ b;
assign xnor_y = ~(a ^ b);
endmodule


/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/logicgates_df$ vvp logicgates_df.out 
VCD info: dumpfile logicgates_df.vcd opened for output.
$time=0|a=0|b=0|and_y=0|or_y=0|not_y=1|nand_y=1|nor_y=1|xor_y=0|xnor_y=1
$time=10|a=0|b=1|and_y=0|or_y=1|not_y=1|nand_y=1|nor_y=0|xor_y=1|xnor_y=0
$time=20|a=1|b=0|and_y=0|or_y=1|not_y=0|nand_y=1|nor_y=0|xor_y=1|xnor_y=0
$time=30|a=1|b=1|and_y=1|or_y=1|not_y=0|nand_y=0|nor_y=0|xor_y=0|xnor_y=1
$time=40|a=x|b=z|and_y=x|or_y=x|not_y=x|nand_y=x|nor_y=x|xor_y=x|xnor_y=x
logicgates_df_tb.v:25: $finish called at 50 (1s)
*/
