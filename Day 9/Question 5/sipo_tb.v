module sipo_tb;
  reg clk, rst, serial_in;
  wire [3:0] parallel_out;
sipo dut (clk, rst, serial_in, parallel_out);
 always #5 clk = ~clk;
initial begin
    $monitor("$time=%0t| clk=%b|rst=%b| serial_in=%b| parallel_out=%b",$time,clk,rst,serial_in,parallel_out);
    $dumpfile("sipo.vcd");
    $dumpvars(0,sipo_tb);
 clk = 0; rst = 1; serial_in = 0;
 #10 rst = 0;
 #10 serial_in = 1;
 #10 serial_in = 0;
 #10 serial_in = 1;
 #10 serial_in = 1;
 #20 $finish;
end
endmodule

