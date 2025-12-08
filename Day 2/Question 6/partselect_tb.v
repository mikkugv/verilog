module partselect_tb;
reg [7:0] a;
wire [3:0] low;
//instantiate
partselect dut(
.a(a),
.low(low)
);
initial begin
    $monitor("$time=%0t | a=%b |low=%b",$time,a,low);
    $dumpfile("partselect.vcd");
    $dumpvars(0,partselect_tb);
    a = 8'b11011011; #10;
    a = 8'b00111100; #10;
    $finish;
end
endmodule
    
