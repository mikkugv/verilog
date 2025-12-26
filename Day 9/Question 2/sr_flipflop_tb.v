module sr_flipflop_tb;
reg S, R, clk;
wire Q, Qbar;
sr_flipflop dut (
     .S(S),
     .R(R),
     .clk(clk),
     .Q(Q),
     .Qbar(Qbar)
  );
    always #10 clk = ~clk;
    initial begin
$monitor("Time=%0t | S=%b R=%b | Q=%b Qbar=%b",$time, S, R, Q, Qbar);
$dumpfile("sr_flipflop.vcd");
$dumpvars(0,sr_flipflop_tb);
 clk = 0;
 S = 0; R = 0;
 #10 S=0; R=1;   
 #10 S=1; R=0;   
 #10 S=1; R=1;        
 #10 $finish;
end
endmodule

