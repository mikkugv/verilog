module replication_operator(
    input [1:0] a,
    output [5:0] y
);
assign y = {3{a}}; 
endmodule

/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/replication_operator$ vvp replication_operator.out
VCD info: dumpfile replicate_op.vcd opened for output.
0 a=10 | y=101010
replication_operator_tb.v:14: $finish called at 10 (1s)
