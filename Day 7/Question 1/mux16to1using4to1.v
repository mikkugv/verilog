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
