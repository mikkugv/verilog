module decoder3to8_tb;
    reg A, B, C;
    wire [7:0] Y;
    //instantiate
    decoder3to8 dut (
        .A(A),
        .B(B),
        .C(C),
        .Y(Y)
    );
    initial begin
        $monitor("Time=%0t | A=%b B=%b C=%b | Y=%b",$time, A, B, C, Y);
        $dumpfile("decoder3to8.vcd");
        $dumpvars(0, decoder3to8_tb);
        A=0; B=0; C=0; #10;
        A=0; B=0; C=1; #10;
        A=0; B=1; C=0; #10;
        A=0; B=1; C=1; #10;
        A=1; B=0; C=0; #10;
        A=1; B=0; C=1; #10;
        A=1; B=1; C=0; #10;
        A=1; B=1; C=1; #10;
        $finish;
    end
endmodule

