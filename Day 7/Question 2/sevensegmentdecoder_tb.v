module sevensegmentdecoder_tb;
    reg  [3:0] bcd;
    wire [6:0] seg;
    sevensegmentdecoder dut (
        .bcd(bcd),
        .seg(seg)
    );
    initial begin
        $monitor("$time=%0t|bcd=%b|seg=%b",$time,bcd,seg);
        $dumpfile("sevensegmentdecoder.vcd");
        $dumpvars(0,sevensegmentdecoder_tb);
        bcd = 4'd0; #10;
        bcd = 4'd1; #10;
        bcd = 4'd2; #10;
        bcd = 4'd3; #10;
        bcd = 4'd4; #10;
        bcd = 4'd5; #10;
        bcd = 4'd6; #10;
        bcd = 4'd7; #10;
        bcd = 4'd8; #10;
        bcd = 4'd9; #10;
        $finish;
    end
endmodule

