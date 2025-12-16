module decoder2to4(
    input A, B,
    output reg [3:0] Y
);
    always @(*) begin
        case ({A,B})
            2'b00: Y = 4'b0001;
            2'b01: Y = 4'b0010;
            2'b10: Y = 4'b0100;
            2'b11: Y = 4'b1000;
        endcase
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/decoder2to4$ vvp decoder2to4.out
VCD info: dumpfile decoder2to4.vcd opened for output.
Time=0 | A=0 B=0 | Y=0001
Time=10 | A=0 B=1 | Y=0010
Time=20 | A=1 B=0 | Y=0100
Time=30 | A=1 B=1 | Y=1000
decoder2to4_tb.v:18: $finish called at 40 (1s)
*/
