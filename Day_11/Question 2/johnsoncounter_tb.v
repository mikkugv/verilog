module johnsoncounter_tb;
reg clk, rst;
wire [3:0] q;
johnson_counter dut (
   .clk(clk),
   .rst(rst),
   .q(q)
    );
always #5 clk = ~clk;
initial begin
$monitor("t=%0t q=%b", $time, q);
$dumpfile("johnsoncounter.vcd");
$dumpvars(0, johnsoncounter_tb);
clk = 0;
rst = 1;
#10 rst = 0;
#100 $finish;
end
endmodule

