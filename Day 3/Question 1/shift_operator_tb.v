module shift_operator_tb;
reg [3:0] a;
wire [3:0] lshift, rshift;
shift_operator dut(a,lshift,rshift);
initial begin
$monitor($time, " a=%b | L=%b | R=%b", a, lshift, rshift);
$dumpfile("shift_operator.vcd");
$dumpvars(0, shift_operator_tb);
a = 4'b1010; #10;
$finish;
end
endmodule

