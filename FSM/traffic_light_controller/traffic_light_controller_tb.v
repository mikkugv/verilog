module traffic_light_controller_tb;
    reg clk, rst;
    wire [2:0] ns, ew;
    traffic_light_controller dut(clk, rst, ns, ew);
    always #5 clk = ~clk;
    initial begin
        $monitor("$time=%0t|clk=%b|rst=%b|ns=%b|ew=%b",$time,clk,rst,ns,ew);
        $dumpfile("traffic_light_controller.vcd");
        $dumpvars(0,traffic_light_controller_tb);
        clk = 0;
        rst = 1;
        #10 rst = 0;
        #80 $finish;
    end
endmodule

