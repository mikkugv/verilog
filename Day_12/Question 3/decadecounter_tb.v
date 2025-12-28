module decadecounter_tb;
 reg clk, rst;
 wire [3:0] q;
decadecounter dut (
    .clk(clk),
    .rst(rst),
    .q(q)
 );
always #5 clk = ~clk;
initial begin
$monitor("$time=%0t q=%b", $time, q);
$dumpfile("decadecounter.vcd");
$dumpvars(0, decadecounter_tb);
clk = 0;
rst = 1;
#10 rst = 0;
#100 $finish;
end
endmodule

