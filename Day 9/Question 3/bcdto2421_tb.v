module bcdto2421_tb;
reg  [3:0] bcd;
wire [3:0] code2421;
bcd_to_2421 dut (
 .bcd(bcd),
 .code2421(code2421)
 );
initial begin
$monitor("Time=%0t | BCD=%b | 2421=%b",$time, bcd, code2421);
$dumpfile("bcdto2421.vcd");
$dumpvars(0, bcdto2421_tb);
bcd = 4'd0; #10;
bcd = 4'd1; #10;
bcd = 4'd2; #10;
bcd = 4'd3; #10;
bcd = 4'd4; #10;
bcd = 4'd5; #10;
bcd = 4'd6; #10;
bcd = 4'd7; #10;
bcd = 4'd8; #10;
bcd = 4'd9; #10;
$finish;
end
endmodule

