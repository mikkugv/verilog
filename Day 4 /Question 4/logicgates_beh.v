module logicgates_beh(
input  a,
input  b,
output reg and_y,
output reg or_y,
output reg not_y,
output reg nand_y,
output reg nor_y,
output reg xor_y,
output reg xnor_y
);
always @(*) begin
and_y  = a & b;
or_y   = a | b;
not_y  = ~a;
nand_y = ~(a & b);
nor_y  = ~(a | b);
xor_y  = a ^ b;
xnor_y = ~(a ^ b);
end
endmodule



/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/logicgates_beh$ vvp logicgates_beh.out
VCD info: dumpfile logicgates_beh.vcd opened for output.
$time=0|a=0|b=0|and_y=0|or_y=0|not_y=1|nand_y=1|nor_y=1|xor_y|xnor_y01
$time=10|a=0|b=1|and_y=0|or_y=1|not_y=1|nand_y=1|nor_y=0|xor_y|xnor_y10
$time=20|a=1|b=0|and_y=0|or_y=1|not_y=0|nand_y=1|nor_y=0|xor_y|xnor_y10
$time=30|a=1|b=1|and_y=1|or_y=1|not_y=0|nand_y=0|nor_y=0|xor_y|xnor_y01
$time=40|a=x|b=z|and_y=x|or_y=x|not_y=x|nand_y=x|nor_y=x|xor_y|xnor_yxx
logicgates_beh_tb.v:25: $finish called at 50 (1s)
*/
