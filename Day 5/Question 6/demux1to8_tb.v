module demux1to8_tb;
    reg  D;
    reg  [2:0] S;
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
  //instantiate
    demux1to8 DUT (
        .D(D),
        .S(S),
        .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3),
        .Y4(Y4), .Y5(Y5), .Y6(Y6), .Y7(Y7)
    );
    initial begin
        $monitor("$time=%0t|D=%b|S=%b|Y0=%b|Y1=%b|Y2=%b|Y3=%b|Y4=%b|Y5=%b|Y6=%b|Y7=%b",$time,D,S,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
        $dumpfile("demux1to8.vcd");
        $dumpvars(0, demux1to8_tb);

        // S = 000
        D = 0; S = 3'b000; #10;
        D = 1; S = 3'b000; #10;

        // S = 001
        D = 0; S = 3'b001; #10;
        D = 1; S = 3'b001; #10;

        // S = 010
        D = 0; S = 3'b010; #10;
        D = 1; S = 3'b010; #10;

        // S = 011
        D = 0; S = 3'b011; #10;
        D = 1; S = 3'b011; #10;

        // S = 100
        D = 0; S = 3'b100; #10;
        D = 1; S = 3'b100; #10;

        // S = 101
        D = 0; S = 3'b101; #10;
        D = 1; S = 3'b101; #10;

        // S = 110
        D = 0; S = 3'b110; #10;
        D = 1; S = 3'b110; #10;

        // S = 111
        D = 0; S = 3'b111; #10;
        D = 1; S = 3'b111; #10;
        $finish;
    end
endmodule

