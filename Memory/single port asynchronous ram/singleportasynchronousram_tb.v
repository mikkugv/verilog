module singleportasynchronousram_tb;
reg we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;
singleportasynchronousram dut (
   .we(we),
   .addr(addr),
   .din(din),
   .dout(dout)
);
initial begin
$monitor("$time=%0t | we=%b | addr=%b | din=%h | dout=%h",$time, we, addr, din, dout);
$dumpfile("singleportasynchronousram.vcd");
$dumpvars(0, singleportasynchronousram_tb);
we = 0; addr = 0; din = 0;
#5  we = 1; addr = 4'b0010; din = 8'hAA;
#5  we = 1; addr = 4'b0100; din = 8'h55;
#5  we = 0; addr = 4'b0010;
#5  addr = 4'b0100;
#10 $finish;
end
endmodule


