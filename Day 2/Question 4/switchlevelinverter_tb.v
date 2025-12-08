module switchlevelinverter_tb;
reg in;
wire out;
//instantiate 
switchlevelinverter dut(
    .in(in),
    .out(out)
);
initial begin 
    $monitor("$time=%0t|in=%b|out=%b",$time,in,out);
    $dumpfile("switchlevelinverter.vcd");
    $dumpvars(0,switchlevelinverter_tb);
     in=0; #10;
     in=1; #10;
     in=0; #10;
     $finish;
 end  
 endmodule

