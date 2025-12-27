module ringcounter (
    input clk,
    input rst,
    output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
  if (rst)
      q <= 4'b1000;
  else
      q <= {q[2:0], q[3]};
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/ringcounter$ vvp ringcounter.out
VCD info: dumpfile ringcounter.vcd opened for output.
$time=0| clk=0| rst=1| q=1000
$time=5| clk=1| rst=1| q=1000
$time=10| clk=0| rst=0| q=1000
$time=15| clk=1| rst=0| q=0001
$time=20| clk=0| rst=0| q=0001
$time=25| clk=1| rst=0| q=0010
$time=30| clk=0| rst=0| q=0010
$time=35| clk=1| rst=0| q=0100
$time=40| clk=0| rst=0| q=0100
$time=45| clk=1| rst=0| q=1000
$time=50| clk=0| rst=0| q=1000
$time=55| clk=1| rst=0| q=0001
$time=60| clk=0| rst=0| q=0001
$time=65| clk=1| rst=0| q=0010
$time=70| clk=0| rst=0| q=0010
$time=75| clk=1| rst=0| q=0100
$time=80| clk=0| rst=0| q=0100
$time=85| clk=1| rst=0| q=1000
ringcounter_tb.v:12: $finish called at 90 (1s)
$time=90| clk=0| rst=0| q=1000
*/
