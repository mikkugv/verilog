module clkdivideby2 (
  input  clk,
  input  rst,
  output reg clk_out
);
always @(posedge clk or posedge rst) begin
   if (rst)
    clk_out <= 1'b0;
   else
    clk_out <= ~clk_out;
end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog$ vvp clkdivideby2.out
VCD info: dumpfile clkdivideby2.vcd opened for output.
$time=0|clk=0|rst=1|clk_out=0
$time=5|clk=1|rst=1|clk_out=0
$time=10|clk=0|rst=0|clk_out=0
$time=15|clk=1|rst=0|clk_out=1
$time=20|clk=0|rst=0|clk_out=1
$time=25|clk=1|rst=0|clk_out=0
$time=30|clk=0|rst=0|clk_out=0
$time=35|clk=1|rst=0|clk_out=1
$time=40|clk=0|rst=0|clk_out=1
$time=45|clk=1|rst=0|clk_out=0
$time=50|clk=0|rst=0|clk_out=0
$time=55|clk=1|rst=0|clk_out=1
$time=60|clk=0|rst=0|clk_out=1
$time=65|clk=1|rst=0|clk_out=0
$time=70|clk=0|rst=0|clk_out=0
$time=75|clk=1|rst=0|clk_out=1
$time=80|clk=0|rst=0|clk_out=1
$time=85|clk=1|rst=0|clk_out=0
$time=90|clk=0|rst=0|clk_out=0
$time=95|clk=1|rst=0|clk_out=1
$time=100|clk=0|rst=0|clk_out=1
$time=105|clk=1|rst=0|clk_out=0
clkdivideby2_tb.v:16: $finish called at 110 (1s)
$time=110|clk=0|rst=0|clk_out=0
*/
