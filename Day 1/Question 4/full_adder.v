module full_adder(input a,b,cin, output s,cout);
assign s= a ^ b ^ cin ;
assign cout= (a&b) | (b&cin) | (cin&a);
endmodule


/*  OUTPUT 
meenakshi@meenakshi-Inspiron-3501:~/verilog/full_adder$ vvp full_adder.out
VCD info: dumpfile full_adder.vcd opened for output.
$time=0, a=0 b=0 cin=0 s=0 cout=0
$time=1, a=0 b=0 cin=1 s=1 cout=0
$time=2, a=0 b=1 cin=0 s=1 cout=0
$time=3, a=0 b=1 cin=1 s=0 cout=1
$time=4, a=1 b=0 cin=0 s=1 cout=0
$time=5, a=1 b=0 cin=1 s=0 cout=1
$time=6, a=1 b=1 cin=0 s=0 cout=1
full_adder_tb.v:24: $finish called at 7 (1s)
$time=7, a=1 b=1 cin=1 s=1 cout=1
*/
