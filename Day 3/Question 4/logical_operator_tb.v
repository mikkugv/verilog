module logical_operator_tb;
reg a,b;
wire and_l,or_l,not_l;
//instantiate
logical_operator dut(
.a(a),
.b(b),
.and_l(and_l),
.or_l(or_l),
.not_l(not_l)
);
initial begin
$monitor($time,+"a=%b b=%b | AND=%b OR=%b NOT=%b",a, b, and_l, or_l, not_l);
$dumpfile("logical_operator.vcd");
$dumpvars(0, logical_operator_tb);
a=1; b=0; #10;
$finish;
end
endmodule

