module demux1to2_tb;
    reg  D;
    reg  S;
    wire Y0;
    wire Y1;
    //instantiate
    demux1to2 DUT (
        .D(D),
        .S(S),
        .Y0(Y0),
        .Y1(Y1)
    );
    initial begin
       $monitor("$time=0%t|D=%b|S=%b|Y0=%b|Y1=%b",$time,D,S,Y0,Y1);
        $dumpfile("demux1to2.vcd");
        $dumpvars(0, demux1to2_tb);
        D = 0; S = 0; #10;
        D = 1; S = 0; #10;

        D = 0; S = 1; #10;
        D = 1; S = 1; #10;

        $finish;
    end

endmodule
