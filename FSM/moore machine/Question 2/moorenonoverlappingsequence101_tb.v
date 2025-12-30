module moorenonoverlappingsequence101_tb;
reg clk, rst, x;
wire y;
moorenonoverlappingsequence101 dut(clk, rst, x, y);
always #5 clk = ~clk;
  initial begin
      $monitor("$time=%0t|clk=%b|rst=%b|x=%b|y=%b",$time,clk,rst,x,y);
      $dumpfile("moorenonoverlappingsequence101.vcd");
      $dumpvars(0,moorenonoverlappingsequence101_tb);
        clk = 0;
        rst = 1;
        x = 0;
        #10 rst = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #30 $finish;
    end
endmodule

