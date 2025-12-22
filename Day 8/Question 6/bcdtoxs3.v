module bcdtoxs3 (
    input  [3:0] bcd,
    output [3:0] xs3
);
assign xs3 = bcd + 4'b0011;
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/bcdtoxs3$ vvp bcdtoxs3.out
VCD info: dumpfile bcdtoxs3.vcd opened for output.
t=0 | BCD=0000 (0) | XS3=0011
t=10 | BCD=0001 (1) | XS3=0100
t=20 | BCD=0010 (2) | XS3=0101
t=30 | BCD=0011 (3) | XS3=0110
t=40 | BCD=0100 (4) | XS3=0111
t=50 | BCD=0101 (5) | XS3=1000
t=60 | BCD=0110 (6) | XS3=1001
t=70 | BCD=0111 (7) | XS3=1010
t=80 | BCD=1000 (8) | XS3=1011
t=90 | BCD=1001 (9) | XS3=1100
t=100 | BCD=1010 (10) | XS3=1101
bcdtoxs3_tb.v:23: $finish called at 110 (1s)
*/
