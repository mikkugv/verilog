module counter0to99_tb;
reg clk;
reg rst;
wire [3:0] ones;
wire [3:0] tens;
counter0to99 dut (
  .clk(clk),
  .rst(rst),
  .ones(ones),
  .tens(tens)
);
always #5 clk = ~clk;
initial begin
$monitor("$time=%0t|clk=%b|rst=%b|ones=%b|tens=%b",$time,clk,rst,ones,tens);
$dumpfile("counter0to99.vcd");
$dumpvars(0,counter0to99_tb);
clk = 0;
rst = 1;
#10 rst = 0;
#50;   
$finish;
end
endmodule

