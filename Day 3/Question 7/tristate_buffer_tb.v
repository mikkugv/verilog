module tristate_buffer_tb;
reg a, en;
wire y;
//instantiate
tristate_buffer dut(
.a(a), 
.en(en), 
.y(y)
);
initial begin
$monitor("$time=%0t ,a=%b en=%b y=%b", $time, a, en, y);
$dumpfile("tristate_buffer.vcd");
$dumpvars(0, tristate_buffer_tb);
a=1; en=1; #10;
a=0; en=1; #10;
en=0;      #10;  
$finish;
end
endmodule
