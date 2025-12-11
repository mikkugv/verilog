module mux2to1_case(
input a, input b, input s, 
output reg y
);
always @(*) begin
case(s)
1'b0: y = a;
1'b1: y = b;
endcase
end
endmodule




/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux2to1_case$ vvp mux2to1_case.out
VCD info: dumpfile mux2to1_case.vcd opened for output.
$time=0,|a=0| b=1| s=0| y=0
$time=10,|a=1| b=0| s=1| y=0
mux2to1_case_tb.v:16: $finish called at 20 (1s)
*/
