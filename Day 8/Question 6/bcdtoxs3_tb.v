module bcdtoxs3_tb;
    reg  [3:0] bcd;
    wire [3:0] xs3;
    bcdtoxs3 dut (
        .bcd(bcd),
        .xs3(xs3)
    );
    initial begin
        $dumpfile("bcdtoxs3.vcd");
        $dumpvars(0, bcdtoxs3_tb);
        $monitor("t=%0t | BCD=%b (%0d) | XS3=%b", $time, bcd, bcd, xs3);
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
        bcd = 4'd10; #10;
        $finish;
    end
endmodule

