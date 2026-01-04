module singleportasynchronousram(
input clk,
input we,
input [3:0] addr,
input [7:0] din,
output [7:0] dout
);
reg[7:0] mem[0:15];
always@(*) begin
    if(we)
        mem[addr]<=din;
end 
assign dout =mem[addr];
endmodule




/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/singleportasynchronousram$ vvp singleportasynchronousram.out
VCD info: dumpfile singleportasynchronousram.vcd opened for output.
$time=0 | we=0 | addr=0000 | din=00 | dout=xx
$time=5 | we=1 | addr=0010 | din=aa | dout=aa
$time=10 | we=1 | addr=0100 | din=55 | dout=55
$time=15 | we=0 | addr=0010 | din=55 | dout=aa
$time=20 | we=0 | addr=0100 | din=55 | dout=55
singleportasynchronousram_tb.v:21: $finish called at 30 (1s)
*/
