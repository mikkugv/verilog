module pipo_tb;
reg clk;
reg rst;
reg [3:0] parallel_in;
wire [3:0] parallel_out;
pipo dut (
   .clk(clk),
   .rst(rst),
   .parallel_in(parallel_in),
   .parallel_out(parallel_out)
);
always #5 clk = ~clk;
initial begin
$monitor("$time=%0t| clk=%b| rst=%b| parallel_in| parallel_out",$time,clk,rst,parallel_in,parallel_out);
$dumpfile("pipo.vcd");
$dumpvars(0,pipo_tb);
 clk = 0;
 rst = 1;
 parallel_in = 4'b0000;
 #10 rst = 0;
 #10 parallel_in = 4'b1010;
 #10 parallel_in = 4'b1111;
 #10 parallel_in = 4'b0101;
 #20 $finish;
end
endmodule

