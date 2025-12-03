module half_adder(input a,b, output s,cout);
assign s=a^b;
assign cout=a&b;
endmodule




/* OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/half_adder$ vvp half_adder.out
VCD info: dumpfile half_adder.vcd opened for output.
$time=0 |a=0 b=0, sum=0 ,cout=0
$time=10 |a=0 b=1, sum=1 ,cout=0
$time=20 |a=1 b=0, sum=1 ,cout=0
$time=30 |a=1 b=1, sum=0 ,cout=1
half_adder_tb.v:20: $finish called at 40 (1s)
*/

