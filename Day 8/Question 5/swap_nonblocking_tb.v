module swap_nonblocking_tb;
    reg clk;
    reg rst;
    wire [3:0] a;
    wire [3:0] b;
    swap_nonblocking dut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b)
    );
    always #5 clk = ~clk;
    initial begin
        $dumpfile("swap_nonblocking.vcd");
        $dumpvars(0, swap_nonblocking_tb);
        $monitor("t=%0t | clk=%b rst=%b a=%d b=%d", $time, clk, rst, a, b);
        clk = 0;
        rst = 1;      
        #10 rst = 0;  
        #50 $finish;  
    end
endmodule

