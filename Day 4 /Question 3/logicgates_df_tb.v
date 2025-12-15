module logicgates_df_tb;
reg a, b;
wire and_y, or_y, not_y, nand_y, nor_y, xor_y, xnor_y;
//instantiate
logicgates_df dut (
.a(a),
.b(b),
.and_y(and_y),
.or_y(or_y),
.not_y(not_y),
.nand_y(nand_y),
.nor_y(nor_y),
.xor_y(xor_y),
.xnor_y(xnor_y)
 );
initial begin
$monitor("$time=%0t|a=%b|b=%b|and_y=%b|or_y=%b|not_y=%b|nand_y=%b|nor_y=%b|xor_y=%b|xnor_y=%b",$time,a,b,and_y,or_y,not_y,nand_y,nor_y,xor_y,xnor_y);
$dumpfile("logicgates_df.vcd");
$dumpvars(0, logicgates_df_tb);
a = 0; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 0; #10;
a = 1; b = 1; #10;
a = 1'bx; b = 1'bz; #10;
$finish;
end
endmodule

