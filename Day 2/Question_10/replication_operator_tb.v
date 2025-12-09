module replication_operator_tb;
reg [1:0] a;
wire [5:0] y;
replication_operator dut(
.a(a),
.y(y)
);
initial begin
$monitor("$time=%0t | a=%b | y=%b",$time, a, y);
$dumpfile("replication_operator.vcd");
$dumpvars(0, replication_operator_tb);
a = 2'b10; #10;
$finish;
end
endmodule

