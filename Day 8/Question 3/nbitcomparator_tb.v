module nbitcomparator #(
    parameter N = 4
)(
    input  [N-1:0] A,
    input  [N-1:0] B,
    output A_greater_B,
    output A_lesser_B,
    output A_equal_B
);
    assign A_greater_B = (A > B);
    assign A_lesser_B = (A < B);
    assign A_equal_B = (A == B);
endmodule

