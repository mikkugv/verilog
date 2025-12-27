module bidirectionalshiftregister_tb;
reg clk, rst, dir, serial_in;
wire [3:0] q;
 bidirectionalshiftregister dut (
   .clk(clk),
   .rst(rst),
   .dir(dir),
   .serial_in(serial_in),
   .q(q)
    );
always #5 clk = ~clk;
 initial begin
 $monitor("$time=%0t| clk=%b| rst=%b| dir=%b|serial_in=%b",$time,clk,rst,dir,serial_in);
 $dumpfile("bidirectionalshiftregister.vcd");
 $dumpvars(0,bidirectionalshiftregister_tb);
   clk = 0; rst = 1; dir = 0; serial_in = 0;
   #10 rst = 0;
   serial_in = 1; #10;
   serial_in = 0; #10;
   dir = 1;
   serial_in = 1; #10;
   serial_in = 0; #10;
   #20 $finish;
end
endmodule

