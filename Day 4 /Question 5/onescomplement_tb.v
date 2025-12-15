module onescomplement_tb;
reg  [7:0] a;   
wire [7:0] y;    
//instantiate
onescomplement dut (
.a(a),
.y(y)
);
initial begin
$monitor("time=%0t|a=%b|y=%b",$time,a,y);
$dumpfile("onescomplement.vcd");
$dumpvars(0, onescomplement_tb);
a = 8'b00000000; #10;
a = 8'b11111111; #10;
a = 8'b10101010; #10;
a = 8'b10x01010; #10;
a = 8'b10z01010; #10;
$finish;
end
endmodule

