module decoder2to4_tb;
    reg A, B;
    wire [3:0] Y;
    //instantiate
    decoder2to4 dut (
        .A(A),
        .B(B),
        .Y(Y)
    );
    initial begin
        $monitor("Time=%0t | A=%b B=%b | Y=%b", $time, A, B, Y);
        $dumpfile("decoder2to4.vcd");
        $dumpvars(0,decoder2to4_tb);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $finish;
    end
endmodule

