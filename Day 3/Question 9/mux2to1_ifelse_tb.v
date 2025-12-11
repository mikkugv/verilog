module mux2to1_ifelse_tb();
reg a, b, s;
wire y;
mux2_if uut(a, b, s, y);
initial begin
$monitor("$time=%0t |a=%b| b=%b| s=%b |y=%b", $time,a,b,s,y);
$dumpfile("mux2to1_ifelse.vcd");
$dumpvars(0, mux2to1_ifelse_tb);
a=0; b=0; s=0; #10;
a=1; b=0; s=0; #10;
a=0; b=1; s=1; #10;
a=1; b=1; s=1; #10;
$finish;
end
endmodule

