module demux1to8using1toN_tb;
    reg D;
    reg [2:0] S;         
    wire [7:0] Y;
//instantiate
    demux1to8using1toN#(
        .N(8),
        .SEL(3)
    ) dut (
        .D(D),
        .S(S),
        .Y(Y)
    );
    initial begin
        $monitor("$time=%0t|D=%b|S=%b|Y=%b|",$time,D,S,Y);
        $dumpfile("demux1to8using1toN.vcd");
        $dumpvars(0, demux1to8using1toN_tb);
        D = 1'b1;
        S = 3'b000; #10;
        S = 3'b001; #10;
        S = 3'b010; #10;
        S = 3'b011; #10;
        S = 3'b100; #10;
        S = 3'b101; #10;
        S = 3'b110; #10;
        S = 3'b111; #10;

        D = 1'b0;
        S = 3'b011; #10;
  $finish;
    end
endmodule

