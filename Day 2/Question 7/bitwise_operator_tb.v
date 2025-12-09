module bitwise_operator_tb;
reg [3:0] a,b;
wire [3:0] and_o,or_o,not_o,xor_o;
//instantiate 
bitwise_operator dut(
    .a(a),
    .b(b),
    .and_o(and_o),
    .or_o(or_o),
    .not_o(not_o),
    .xor_o(xor_o)
);
initial begin
    $monitor ("$time=%0t|a=%b|b=%b| AND =%b| OR=%b| XOR=%b,NOT=%b",$time,a,b,and_o,or_o,xor_o,not_o);
    $dumpfile("bitwise_operator.vcd");
    $dumpvars(0, bitwise_operator_tb);
    a=4'b1010; b=4'b1100; #10;
    $display("a=%b b=%b", a,b);
    $display("AND = %b", and_o);
    $display("OR  = %b", or_o);
    $display("XOR = %b", xor_o);
    $display("NOT = %b", not_o);
    $finish;
end
endmodule
