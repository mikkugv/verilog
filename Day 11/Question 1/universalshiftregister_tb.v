module universalshiftregister_tb;
   reg clk, rst;
   reg [1:0] sel;
   reg serial_in;
   reg [3:0] parallel_in;
   wire [3:0] q;
universalshiftregister dut (
   .clk(clk),
   .rst(rst),
   .sel(sel),
   .serial_in(serial_in),
   .parallel_in(parallel_in),
   .q(q)
 );
always #5 clk = ~clk;
initial begin
$monitor("t=%0t sel=%b serial_in=%b parallel_in=%b q=%b",$time, sel, serial_in, parallel_in, q);
$dumpfile("universalshiftregister.vcd");
$dumpvars(0, universalshiftregister_tb);
    clk = 0;
    rst = 1;
    sel = 2'b00;
    serial_in = 0;
    parallel_in = 0;
    #10 rst = 0;
    sel = 2'b11; parallel_in = 4'b1011; #10;
    sel = 2'b10; serial_in = 0; #10;
    sel = 2'b01; serial_in = 1; #10;
    sel = 2'b00; #10;
    #20 $finish;
end
endmodule

