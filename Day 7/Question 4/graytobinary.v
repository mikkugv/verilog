module graytobinary (
    input  [3:0] gray,
    output reg [3:0] bin
);
    integer i;
    always @(*) begin
        bin[3] = gray[3];   
        for (i = 2; i >= 0; i = i - 1)
        bin[i] = bin[i+1] ^ gray[i];
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/graytobinary$ vvp graytobinary.out
VCD info: dumpfile graytobinary.vcd opened for output.
Time  Gray   Binary
0   0000   0000
10   0001   0001
20   0011   0010
30   0010   0011
40   0110   0100
50   1110   1011
graytobinary_tb.v:19: $finish called at 60 (1s)
*/
