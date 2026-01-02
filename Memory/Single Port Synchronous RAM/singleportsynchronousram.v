module singleportsynchronousram(
input clk,
input we,
input [3:0] addr,
input [7:0] din,
output reg [7:0] dout
);
reg[7:0] mem[0:15];
always @(posedge clk) begin
if(we) begin    
mem[addr]<=din;
dout<=din;
end
else begin 
dout<=mem[addr];
end
end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/singleportsynchronousram$ vvp singleportsynchronousram.out
VCD info: dumpfile singleportsynchronousram.vcd opened for output.
$time=0|clk=0|we=0|addr=0000|din=00000000|dout=xxxxxxxx
$time=5|clk=1|we=0|addr=0000|din=00000000|dout=xxxxxxxx
$time=10|clk=0|we=1|addr=0010|din=10101010|dout=xxxxxxxx
$time=15|clk=1|we=1|addr=0010|din=10101010|dout=10101010
$time=20|clk=0|we=1|addr=0100|din=01010101|dout=10101010
$time=25|clk=1|we=1|addr=0100|din=01010101|dout=01010101
$time=30|clk=0|we=0|addr=0010|din=01010101|dout=01010101
$time=35|clk=1|we=0|addr=0010|din=01010101|dout=10101010
$time=40|clk=0|we=0|addr=0100|din=01010101|dout=10101010
$time=45|clk=1|we=0|addr=0100|din=01010101|dout=01010101
$time=50|clk=0|we=0|addr=0100|din=01010101|dout=01010101
$time=55|clk=1|we=0|addr=0100|din=01010101|dout=01010101
singleportsynchronousram_tb.v:37: $finish called at 60 (1s)
$time=60|clk=0|we=0|addr=0100|din=01010101|dout=01010101
*/
