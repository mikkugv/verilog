module mooreoverlappingsequence101_tb;
 reg clk, rst, x;
 wire y;
 mooreoverlappingsequence101 dut(clk, rst, x, y);
 always #5 clk = ~clk;
 initial begin
 $monitor("$time=%0t|clk=%b|rst=%b|x=%b|y=%b",$time,clk,rst,x,y);
 $dumpfile("mooreoverlappingsequence101.vcd");
 $dumpvars(0,mooreoverlappingsequence101_tb); 
     clk = 0;
     rst = 1;
     x = 0;
     #10 rst = 0;
     #10 x = 1;
     #10 x = 0;
     #10 x = 1;
     #10 x = 0;
     #10 x = 1;
     #10 x = 1;
     #10 x = 0;
     #20 $finish;
end
endmodule

