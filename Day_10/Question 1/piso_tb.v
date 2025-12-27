module piso_tb;
    reg clk;
    reg rst;
    reg load;
    reg [3:0] parallel_in;
    wire serial_out;
    piso dut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .parallel_in(parallel_in),
        .serial_out(serial_out)
    );
    always #5 clk = ~clk;
    initial begin
        $monitor("$time=%0t| clk=%b|rst=%b| load=%b|parallel_in=%b| serial_out=%b", $time,clk,rst,load,parallel_in,serial_out);
        $dumpfile("piso.vcd");
        $dumpvars(0,piso_tb);
        clk = 0;
        rst = 1;
        load = 0;
        parallel_in = 4'b0000;
        #10 rst = 0;
        #10 load = 1;
        parallel_in = 4'b1011;
        #10 load = 0;
        #40;
        $finish;
    end
endmodule

