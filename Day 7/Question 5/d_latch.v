module d_latch (
    input  D,
    input  EN,
    output reg Q
);
    always @ (D or EN) begin
        if (EN)
            Q = D;
    end
endmodule
  




/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/d_latch$ vvp d_latch.out
VCD info: dumpfile d_latch.vcd opened for output.
Time  EN  D  Q
0   0   0  x
10   0   1  x
20   1   1  1
30   1   0  0
40   0   1  0
d_latch_tb.v:19: $finish called at 50 (1s)
*/
