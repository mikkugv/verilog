module synchronousupcounter_tb;
    reg clk, rst;
    wire [3:0] q;
    synchronousupcounter dut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );
 always #5 clk = ~clk;
  initial begin
 $monitor("$time=%0t |q=%b", $time, q);
 $dumpfile("synchronousupcounter.vcd");
 $dumpvars(0, synchronousupcounter_tb);
    clk = 0;
    rst = 1;
    #10 rst = 0;
    #200 $finish;
end
endmodule

