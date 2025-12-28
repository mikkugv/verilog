module decadecounter (
 input clk,
 input rst,
 output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
  if (rst)
    q <= 4'b0000;
  else if (q == 4'b1001)   
    q <= 4'b0000;
  else
    q <= q + 1;
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/decadecounter$ vvp decadecounter.out
VCD info: dumpfile decadecounter.vcd opened for output.
$time=0 q=0000
$time=15 q=0001
$time=25 q=0010
$time=35 q=0011
$time=45 q=0100
$time=55 q=0101
$time=65 q=0110
$time=75 q=0111
$time=85 q=1000
$time=95 q=1001
$time=105 q=0000
decadecounter_tb.v:17: $finish called at 110 (1s)
*/
