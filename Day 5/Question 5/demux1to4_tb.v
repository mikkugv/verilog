module demux1to4_tb;
    reg  D;
    reg  [1:0] S;
    wire Y0, Y1, Y2, Y3;
//instantiate
    demux1to4 DUT (
        .D(D),
        .S(S),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );
    initial begin
      $monitor("$time=%0t|Y0=%b|Y1=%b|Y2=%b|Y3=%b|D=%b|S=%b",$time,Y0,Y1,Y2,Y3,D,S);
        $dumpfile("demux1to4.vcd");
        $dumpvars(0, demux1to4_tb);
        D = 0; S = 2'b00; #10;
        D = 1; S = 2'b00; #10;

        D = 0; S = 2'b01; #10;
        D = 1; S = 2'b01; #10;

        D = 0; S = 2'b10; #10;
        D = 1; S = 2'b10; #10;

        D = 0; S = 2'b11; #10;
        D = 1; S = 2'b11; #10;

        $finish;
    end

endmodule

