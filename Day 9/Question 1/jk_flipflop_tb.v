module jk_flipflop_tb;
reg J, K, clk;
wire Q, Qbar;
jk_flipflop dut (
    .J(J),
    .K(K),
    .clk(clk),
    .Q(Q),
    .Qbar(Qbar)
 );
always #10 clk = ~clk;
initial begin
$monitor("T=%0t | J=%b K=%b | Q=%b Qbar=%b",$time, J, K, Q, Qbar);
$dumpfile("jk_flipflop.vcd");
$dumpvars(0,jk_flipflop_tb);
clk = 0;
J = 0; K = 0;   
#10 J=0; K=1;   
#10 J=1; K=0;   
#10 J=1; K=1;   
#10 $finish;
end
endmodule

