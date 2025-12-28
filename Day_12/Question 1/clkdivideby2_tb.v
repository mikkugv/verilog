module clkdivideby2_tb;
 reg clk, rst;
 wire clk_out;
 clkdivideby2 dut (
   .clk(clk),
   .rst(rst),
   .clk_out(clk_out)
 );
always #5 clk = ~clk;
initial begin
 $monitor("$time=%0t|clk=%b|rst=%b|clk_out=%b",$time,clk,rst,clk_out);
 $dumpfile("clkdivideby2.vcd");
 $dumpvars(0, clkdivideby2_tb);
 clk = 0; rst = 1;
 #10 rst = 0;
 #100 $finish;
end
endmodule

