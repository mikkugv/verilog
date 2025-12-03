 module two_input_io(
 input [1:0] a,
 output[1:0] y
 );
 assign y=a;
 endmodule 



/* OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/two_input_io$ vvp two_input_io.out
VCD info: dumpfile two_input_io.vcd opened for output.
$time=0|a=00 y=00
$time=10|a=01 y=01
$time=20|a=10 y=10
$time=30|a=11 y=11
two_input_io_tb.v:18: $finish called at 40 (1s)
*/
