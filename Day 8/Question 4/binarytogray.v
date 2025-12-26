module binarytogray (
    input  [3:0] bin,
    output [3:0] gray
);
    assign gray = bin ^ (bin >> 1);
endmodule

