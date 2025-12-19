module mux4to1 (
    input  i0, i1, i2, i3,
    input  s0, s1,
    output y
);
    assign y = s1 ? (s0 ? i3 : i2)
                  : (s0 ? i1 : i0);
endmodule
module mux16to1using4to1 (
    input  i0,  i1,  i2,  i3,
    input  i4,  i5,  i6,  i7,
    input  i8,  i9,  i10, i11,
    input  i12, i13, i14, i15,
    input  s0, s1, s2, s3,
    output y
);

    wire w0, w1, w2, w3;
    mux4to1 m0 (i0,  i1,  i2,  i3,  s0, s1, w0);
    mux4to1 m1 (i4,  i5,  i6,  i7,  s0, s1, w1);
    mux4to1 m2 (i8,  i9,  i10, i11, s0, s1, w2);
    mux4to1 m3 (i12, i13, i14, i15, s0, s1, w3);

    mux4to1 m4 (w0, w1, w2, w3, s2, s3, y);

endmodule

/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux16to1using4to1$ vvp mux16to1using4to1.out
VCD info: dumpfile mux16to1using4to1.vcd opened for output.
t=0 | s3s2s1s0=0000 | y=0
t=10 | s3s2s1s0=0001 | y=1
t=20 | s3s2s1s0=0010 | y=0
t=30 | s3s2s1s0=0011 | y=1
t=40 | s3s2s1s0=0100 | y=1
t=50 | s3s2s1s0=0101 | y=0
t=60 | s3s2s1s0=0110 | y=1
t=70 | s3s2s1s0=0111 | y=0
t=80 | s3s2s1s0=1000 | y=0
t=90 | s3s2s1s0=1001 | y=1
t=100 | s3s2s1s0=1010 | y=0
t=110 | s3s2s1s0=1011 | y=1
t=120 | s3s2s1s0=1100 | y=1
t=130 | s3s2s1s0=1101 | y=0
t=140 | s3s2s1s0=1110 | y=1
t=150 | s3s2s1s0=1111 | y=0
mux16to1using4to1_tb.v:47: $finish called at 160 (1s)
*/
