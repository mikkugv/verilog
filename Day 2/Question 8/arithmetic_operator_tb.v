module arithmetic_operator_tb;
reg [3:0] a,b;
wire [4:0] add,sub,mul;
//instantiate
arithmetic_operator dut (
    .a(a),
    .b(b),
    .add(add),
    .sub(sub),
    .mul(mul)
);

initial begin
    $monitor("$time=%0t,a=%b,b=%b,add=%b,sub=%b,mul=%b",$time,a,b,add,sub,mul);
    $dumpfile("arithmetic_operator.vcd");
    $dumpvars(0, arithmetic_operator_tb);
    a=5; b=3; #10;
    $display("a=%b b=%b",a,b);
    $display("add = %b", add);
    $display("sub= %b", sub); 
    $display("mul= %b",mul);
    $finish;
end
endmodule

