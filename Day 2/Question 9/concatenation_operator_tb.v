module concatenation_operator_tb;
reg [3:0] a,b;
wire [7:0] y;
//instantiate
concatenation_operator dut(a,b,y);
initial begin
    $monitor("$time=%0t | a=%b| b=%b| y=%b",$time,a,b,y);
    $dumpfile("concatenation_operator.vcd");
    $dumpvars(0,concatenation_operator_tb);
    a=4'b1010; b=4'b0110; #10;
    $finish;
end
endmodule

