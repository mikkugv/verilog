module siso_tb;
reg clk, rst, serial_in;
wire serial_out;
 siso dut (clk, rst, serial_in, serial_out);
 always #5 clk = ~clk;
 initial begin
     $monitor("$time=%0t| clk=%b| rst=%b|serial_in=%b | serial_out=%b",$time,clk,rst,serial_in,serial_out);
     $dumpfile("siso.vcd");
     $dumpvars(0,siso_tb);
 clk = 0; rst = 1; serial_in = 0;
  #10 rst = 0;
  #10 serial_in = 1;
  #10 serial_in = 0;
  #10 serial_in = 1;
  #20 $finish;
end
endmodule

