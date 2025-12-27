module synchronousupdowncounter_tb;
 reg clk, rst, dir;
 wire [3:0] q;
 synchronousupdowncounter dut (
        .clk(clk),
        .rst(rst),
        .dir(dir),
        .q(q)
    );
always #5 clk = ~clk;
initial begin
$monitor("time=%0t dir=%b q=%b", $time, dir, q);
$dumpfile("synchronousupdowncounter.vcd");
$dumpvars(0, synchronousupdowncounter_tb);
    clk = 0;
    rst = 1;
    dir = 1;   
    #10 rst = 0;
    #40 dir = 0; 
    #40 dir = 1; 
    #100 $finish;
 end
 endmodule

