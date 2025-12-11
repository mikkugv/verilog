module relational_operator_tb;
reg [3:0] a,b;
wire gt,lt,eq;
//instantiate
relational_operator dut(
.a(a),
.b(b),
.gt(gt),
.lt(lt),
.eq(eq)
);
initial begin
$monitor($time, " a=%d b=%d | gt=%b lt=%b eq=%b", a, b, gt, lt, eq);
$dumpfile("relational_operator.vcd");
$dumpvars(0, relational_operator_tb);
a = 5; b = 3; #10;
$finish;
end
endmodule

