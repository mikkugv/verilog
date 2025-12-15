module mux2to1_bool_tb;
    reg A, B, S;
    wire Y;
    //instantiate
    mux2to1_bool DUT (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );
    initial begin
   $monitor("$time=%0t|A=%b|B=%b|S=%b|Y=%b",$time,A,B,S,Y);
   $dumpfile("mux2to1_bool.vcd");
   $dumpvars(0, mux2to1_bool_tb);
        A = 0; B = 0; S = 0; #10;
        A = 0; B = 1; S = 0; #10;
        A = 1; B = 0; S = 0; #10;
        A = 1; B = 1; S = 0; #10;

        A = 0; B = 0; S = 1; #10;
        A = 0; B = 1; S = 1; #10;
        A = 1; B = 0; S = 1; #10;
        A = 1; B = 1; S = 1; #10;
        $finish;
    end
endmodule

