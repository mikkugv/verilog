module synchronousupcounter (
    input clk,
    input rst,
    output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
if (rst)
  q <= 4'b0000;
else
  q <= q + 1'b1;
end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/synchronousupcounter$ vvp synchronousupcounter.out
VCD info: dumpfile synchronousupcounter.vcd opened for output.
$time=0 |q=0000
$time=15 |q=0001
$time=25 |q=0010
$time=35 |q=0011
$time=45 |q=0100
$time=55 |q=0101
$time=65 |q=0110
$time=75 |q=0111
$time=85 |q=1000
$time=95 |q=1001
$time=105 |q=1010
$time=115 |q=1011
$time=125 |q=1100
$time=135 |q=1101
$time=145 |q=1110
$time=155 |q=1111
$time=165 |q=0000
$time=175 |q=0001
$time=185 |q=0010
$time=195 |q=0011
$time=205 |q=0100
synchronousupcounter_tb.v:17: $finish called at 210 (1s)
*/
