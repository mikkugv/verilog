module mux2_if(input a, input b, input s, output reg y);
always @(*) begin
if(s == 0)
y = a;
else
y = b;
end
endmodule




/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux2to1_ifelse$ vvp mux2to1_ifelse.out
VCD info: dumpfile mux2to1_ifelse.vcd opened for output.
$time=0 |a=0| b=0| s=0 |y=0
$time=10 |a=1| b=0| s=0 |y=1
$time=20 |a=0| b=1| s=1 |y=1
$time=30 |a=1| b=1| s=1 |y=1
mux2to1_ifelse_tb.v:13: $finish called at 40 (1s)
*/
