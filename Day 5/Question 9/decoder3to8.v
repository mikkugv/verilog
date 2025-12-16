module decoder3to8(
    input A, B, C,
    output reg [7:0] Y
);
   always @(*) begin
    case ({A,B,C})
            3'b000: Y = 8'b00000001;
            3'b001: Y = 8'b00000010;
            3'b010: Y = 8'b00000100;
            3'b011: Y = 8'b00001000;
            3'b100: Y = 8'b00010000;
            3'b101: Y = 8'b00100000;
            3'b110: Y = 8'b01000000;
            3'b111: Y = 8'b10000000;
        endcase
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/decoder3to8$ vvp decoder3to8.out
VCD info: dumpfile decoder3to8.vcd opened for output.
Time=0 | A=0 B=0 C=0 | Y=00000001
Time=10 | A=0 B=0 C=1 | Y=00000010
Time=20 | A=0 B=1 C=0 | Y=00000100
Time=30 | A=0 B=1 C=1 | Y=00001000
Time=40 | A=1 B=0 C=0 | Y=00010000
Time=50 | A=1 B=0 C=1 | Y=00100000
Time=60 | A=1 B=1 C=0 | Y=01000000
Time=70 | A=1 B=1 C=1 | Y=10000000
decoder3to8_tb.v:23: $finish called at 80 (1s)
*/
