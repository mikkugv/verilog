module counter0to99 (
 input  wire clk,
 input  wire rst,
 output reg  [3:0] ones,
 output reg  [3:0] tens
);
always @(posedge clk or posedge rst) begin
 if (rst) begin
   ones  <= 4'd0;
   tens  <= 4'd0;
end
else begin
  if (ones == 4'd9) begin
      ones <= 4'd0;
  if (tens == 4'd9)
      tens <= 4'd0;
  else
      tens <= tens + 1;
  end
 else begin
     ones <= ones + 1;
 end
 end
 end
endmodule

/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/counter0to99$ vvp counter0to99.out
VCD info: dumpfile counter0to99.vcd opened for output.
$time=0|clk=0|rst=1|ones=0000|tens=0000
$time=5|clk=1|rst=1|ones=0000|tens=0000
$time=10|clk=0|rst=0|ones=0000|tens=0000
$time=15|clk=1|rst=0|ones=0001|tens=0000
$time=20|clk=0|rst=0|ones=0001|tens=0000
$time=25|clk=1|rst=0|ones=0010|tens=0000
$time=30|clk=0|rst=0|ones=0010|tens=0000
$time=35|clk=1|rst=0|ones=0011|tens=0000
$time=40|clk=0|rst=0|ones=0011|tens=0000
$time=45|clk=1|rst=0|ones=0100|tens=0000
$time=50|clk=0|rst=0|ones=0100|tens=0000
$time=55|clk=1|rst=0|ones=0101|tens=0000
counter0to99_tb.v:21: $finish called at 60 (1s)
$time=60|clk=0|rst=0|ones=0101|tens=0000
*/
