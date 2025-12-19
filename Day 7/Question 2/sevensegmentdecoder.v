module sevensegmentdecoder (
    input [3:0] bcd,
    output reg [6:0] seg
);
    always @(*) begin
        case (bcd)
            4'd0: seg = 7'b1111110;
            4'd1: seg = 7'b0110000;
            4'd2: seg = 7'b1101101;
            4'd3: seg = 7'b1111001;
            4'd4: seg = 7'b0110011;
            4'd5: seg = 7'b1011011;
            4'd6: seg = 7'b1011111;
            4'd7: seg = 7'b1110000;
            4'd8: seg = 7'b1111111;
            4'd9: seg = 7'b1111011;
            default: seg = 7'b0000000;
        endcase
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/sevensegmentdecoder$ vvp sevensegmentdecoder.out
VCD info: dumpfile sevensegmentdecoder.vcd opened for output.
$time=0|bcd=0000|seg=1111110
$time=10|bcd=0001|seg=0110000
$time=20|bcd=0010|seg=1101101
$time=30|bcd=0011|seg=1111001
$time=40|bcd=0100|seg=0110011
$time=50|bcd=0101|seg=1011011
$time=60|bcd=0110|seg=1011111
$time=70|bcd=0111|seg=1110000
$time=80|bcd=1000|seg=1111111
$time=90|bcd=1001|seg=1111011
sevensegmentdecoder_tb.v:22: $finish called at 100 (1s)
*/
