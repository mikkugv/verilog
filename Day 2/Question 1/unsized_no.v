module unsized_no(
    input  [7:0]  bi_input,
    input  [15:0] hex_input,
    output [7:0]  bi_output,
    output [15:0] hex_output
);
    assign bi_output  = bi_input;
    assign hex_output = hex_input;
endmodule
/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/unsized_no$ vvp unsized_no.out
VCD info: dumpfile unsized_no.vcd opened for output.
$time=0 | bi_input=00001001 | hex_input=0000101001110101 | bi_output=00001001 | hex_output=0000101001110101
$time=10 | bi_input=00001010 | hex_input=0000101100010111 | bi_output=00001010 | hex_output=0000101100010111
unsized_no_tb.v:23: $finish called at 20 (1s)
*/
