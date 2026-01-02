module singleportsynchronousram_tb;
reg clk;
reg we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;
//instantiate 
singleportsynchronousram dut(
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
);
always #5 clk=~clk;
initial begin
$monitor("$time=%0t|clk=%b|we=%b|addr=%b|din=%b|dout=%b",$time,clk,we,addr,din,dout);
$dumpfile("singleportsynchronousram.vcd");
$dumpvars(0,singleportsynchronousram_tb);
    clk = 0;
    we  = 0;
    addr = 0;
    din  = 0;
    #10;
    we = 1;
    addr = 4'b0010;
    din  = 8'hAA;   
     #10;
    addr = 4'b0100;
    din  = 8'h55;   
    #10;
    we = 0;
    addr = 4'b0010; 
    #10;
    addr = 4'b0100; 
    #20;
    $finish;
    end
endmodule

