module half_subtractor(input a,input b, output diff,borrow);
assign diff=a^b;
assign borrow=~a&b;
endmodule




/* OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/half_subtractor$ vvp half_subtractor.vvp
VCD info: dumpfile half_subtractor.vcd opened for output.
$time=0|a=0 b=0, diff=0, borrow=0
$time=10|a=0 b=1, diff=1, borrow=1
$time=20|a=1 b=0, diff=1, borrow=0
$time=30|a=1 b=1, diff=0, borrow=0
half_subtractor_tb.v:20: $finish called at 40 (1s)
*/
