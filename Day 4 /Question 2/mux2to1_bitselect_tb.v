module mux2to1_bitselect_tb;
reg [1:0] in;
reg sel;
wire out;
//instantiate
mux2to1_bitselect uut(
    .in(in),
    .sel(sel),
    .out(out)
);
initial begin
$monitor("$time=%0t| in=%b| sel=%b| out=%b", $time,in,sel,out);
$dumpfile("mux2to1_bitselect.vcd");
$dumpvars(0, mux2to1_bitselect_tb);
in = 2'b01; sel = 0; #10;
sel = 1; #10;
in = 2'b10; sel = 0; #10;
sel = 1; #10;
$finish;
end
endmodule

