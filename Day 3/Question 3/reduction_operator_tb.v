module reduction_operator_tb;
reg [3:0] a;
wire and_r, or_r, xor_r;
//instantiate
reduction_operator dut(
    .a(a),
    .and_r(and_r),
    .or_r(or_r),
    .xor_r(xor_r)
);
initial begin
$monitor($time," a=%b | AND=%b | OR=%b | XOR=%b", a, and_r, or_r, xor_r);
$dumpfile("reduction_operator.vcd");
$dumpvars(0, reduction_operator_tb);
a = 4'b1101; #10;
$finish;
end
endmodule
