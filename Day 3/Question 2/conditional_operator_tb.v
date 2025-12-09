module conditional_operator_tb;
reg a,b;
wire y;
//instantiate
conditional_operator dut(
.a(a),
.b(b),
.y(y)
);
initial begin
$monitor("$time=%0t|a=%b|b=%b|y=%b",$time,a,b,y);
$dumpfile("conditional_operator.vcd");
$dumpvars(0,conditional_operator_tb);
a=1; b=0; #10;
$finish;
end
endmodule

