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


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/nbitcomparator$ vvp nbitcomparator.out
VCD info: dumpfile nbitcomparator.vcd opened for output.
A= 4 B= 2 | GT=1 LT=0 EQ=0
A= 3 B= 7 | GT=0 LT=1 EQ=0
A= 5 B= 5 | GT=0 LT=0 EQ=1
A= 9 B= 1 | GT=1 LT=0 EQ=0
nbitcomparator.v:18: $finish called at 40 (1s)
*/
