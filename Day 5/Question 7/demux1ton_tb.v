module demux1toN_tb;
    parameter N = 8;
    reg  D;
    reg  [$clog2(N)-1:0] S;
    wire [N-1:0] Y;
//instantiate
    demux1toN #(.N(N)) DUT (
        .D(D),
        .S(S),
        .Y(Y)
    );
    initial begin
   $monitor("$time=%0t|D=%b|S=%b|Y=%b",$time,D,S,Y);
        $dumpfile("demux1toN.vcd");
        $dumpvars(0, demux1toN_tb);

        D = 0;
        S = 0; #10;
        S = 1; #10;
        S = 2; #10;
        S = 3; #10;
        S = 4; #10;
        S = 5; #10;
        S = 6; #10;
        S = 7; #10;

        D = 1;
        S = 0; #10;
        S = 1; #10;
        S = 2; #10;
        S = 3; #10;
        S = 4; #10;
        S = 5; #10;
        S = 6; #10;
        S = 7; #10;

$finish;
    end
endmodule

