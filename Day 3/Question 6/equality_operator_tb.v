module equality_operator_tb;
reg [3:0] a,b;
wire eq,neq;
equality_operator dut(
.a(a),
.b(b),
.eq(eq),
.neq(neq)
);
initial begin
$monitor($time, " a=%b b=%b | eq=%b neq=%b", a, b, eq, neq);
$dumpfile("equality_operator.vcd");
$dumpvars(0, equality_operator_tb);
a = 4; b = 4; #10;
$finish;
end
endmodule

