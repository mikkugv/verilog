module nonoverlappingsequence101_tb;
reg clk;
reg rst_n;
reg x;
wire z;
nonoverlappingsequence101 dut (
    .clk(clk),
    .rst_n(rst_n),
    .x(x),
    .z(z)
);
always #5 clk = ~clk;
initial begin
$monitor("$time=%0t | x=%b | z=%b", $time, x, z);
$dumpfile("nonoverlappingsequence101.vcd");
$dumpvars(0, nonoverlappingsequence101_tb);
  clk = 0;
  rst_n = 0;
  x = 0;
  #12 rst_n = 1;
 // Input: 1 0 1 0 1 1 0 1
   #10 x = 1;
   #10 x = 0;
   #10 x = 1;  
   #10 x = 0;
   #10 x = 1;
   #10 x = 1;
   #10 x = 0;
   #10 x = 1;  
   #20 $finish;
end
endmodule

