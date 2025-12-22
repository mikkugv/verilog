module binarytogray (
    input  [3:0] bin,
    output [3:0] gray
);
    assign gray = bin ^ (bin >> 1);
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/binarytogray$ vvp binarytogray.out
VCD info: dumpfile binarytogray.vcd opened for output.
Time  Binary  Gray
0 | 0000 | 0000
10 | 0001 | 0001
20 | 0010 | 0011
30 | 0011 | 0010
40 | 0100 | 0110
50 | 1011 | 1110
binarytogray_tb.v:19: $finish called at 60 (1s)
*/
