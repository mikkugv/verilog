module concatenation_operator_tb;
reg [3:0] a,b;
wire [7:0] y;
//instantiate
concatenation_operator dut(a,b,y);
initial begin
    $monitor("$time=%0t | a=%b| b=%b| y=%b",$time,a,b,y);
    a=4'b1010; b=4'b0110; #10;
    $finish;
end
endmodule

/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/concatenation_operator$ vvp concatenation_operator.out
$time=0 | a=1010| b=0110| y=10100110
concatenation_operator_tb.v:9: $finish called at 10 (1s)
*/
