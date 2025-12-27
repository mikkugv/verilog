module evenoddcounter_tb;
reg clk, rst, mode;
wire [3:0] count;
oddevencounter dut (clk, rst, mode, count);
always #5 clk = ~clk;
initial begin
 $monitor("$time=%0t | clk=%b| rst=%b| mode=%b| count=%b",$time,clk,rst,mode,count);
 $dumpfile("evenoddcounter.vcd");
 $dumpvars(0,evenoddcounter_tb);
 clk = 0; rst = 1; mode = 0;
 #10 rst = 0;
 #40 mode = 1;   
 #10 rst = 1;
 #10 rst = 0;
 #40 $finish;
 end
endmodule

