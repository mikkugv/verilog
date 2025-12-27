module oddevencounter (
input clk,
input rst,
input mode,
output reg [3:0] count
);
always @(posedge clk or posedge rst) begin
   if (rst)
     count <= (mode) ? 4'd1 : 4'd0;
   else
     count <= count + 2;
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/evenoddcounter$ vvp evenoddcounter.out
VCD info: dumpfile evenoddcounter.vcd opened for output.
$time=0 | clk=0| rst=1| mode=0| count=0000
$time=5 | clk=1| rst=1| mode=0| count=0000
$time=10 | clk=0| rst=0| mode=0| count=0000
$time=15 | clk=1| rst=0| mode=0| count=0010
$time=20 | clk=0| rst=0| mode=0| count=0010
$time=25 | clk=1| rst=0| mode=0| count=0100
$time=30 | clk=0| rst=0| mode=0| count=0100
$time=35 | clk=1| rst=0| mode=0| count=0110
$time=40 | clk=0| rst=0| mode=0| count=0110
$time=45 | clk=1| rst=0| mode=0| count=1000
$time=50 | clk=0| rst=0| mode=1| count=1000
$time=55 | clk=1| rst=0| mode=1| count=1010
$time=60 | clk=0| rst=1| mode=1| count=0001
$time=65 | clk=1| rst=1| mode=1| count=0001
$time=70 | clk=0| rst=0| mode=1| count=0001
$time=75 | clk=1| rst=0| mode=1| count=0011
$time=80 | clk=0| rst=0| mode=1| count=0011
$time=85 | clk=1| rst=0| mode=1| count=0101
$time=90 | clk=0| rst=0| mode=1| count=0101
$time=95 | clk=1| rst=0| mode=1| count=0111
$time=100 | clk=0| rst=0| mode=1| count=0111
$time=105 | clk=1| rst=0| mode=1| count=1001
evenoddcounter_tb.v:15: $finish called at 110 (1s)
$time=110 | clk=0| rst=0| mode=1| count=1001
*/
