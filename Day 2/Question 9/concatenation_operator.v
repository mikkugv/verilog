module concatenation_operator (
    input [3:0] a,b, 
    output [7:0] y
);
 assign y = {a,b};
 endmodule


/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/concatenation_operator$ vvp concatenation_operator.out
$time=0 | a=1010| b=0110| y=10100110
concatenation_operator_tb.v:9: $finish called at 10 (1s)
*/
