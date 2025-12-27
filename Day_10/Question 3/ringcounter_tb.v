module ringcounter_tb;
reg clk, rst;
wire [3:0] q;
ringcounter dut (clk, rst, q);
always #5 clk = ~clk;
initial begin
$monitor("$time=%0t| clk=%b| rst=%b| q=%b",$time,clk,rst,q);
$dumpfile("ringcounter.vcd");
$dumpvars(0,ringcounter_tb);
  clk = 0; rst = 1;
   #10 rst = 0;
   #80 $finish;
end
endmodule

