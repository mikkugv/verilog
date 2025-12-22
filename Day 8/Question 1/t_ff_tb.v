module t_ff_tb;
    reg T;
    reg clk;
    wire Q;
    t_ff dut (
        .T(T),
        .clk(clk),
        .Q(Q)
    );
    always #5 clk = ~clk;
    initial begin
        $monitor("time=%0t  clk=%b T=%b Q=%b", $time, clk, T, Q);
        $dumpfile("t_ff.vcd");
        $dumpvars(0, t_ff_tb);
        clk = 0;
        T   = 0;
        #10 T = 1;   
        #20 T = 0;   
        #20 T = 1;   
        #20 T = 1;   
        #20 $finish;
    end
endmodule

