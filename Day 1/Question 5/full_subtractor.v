module full_subtractor(input a,b,cin, output d,bout);
assign d=a^b^cin;
assign bout=(~a&b)|(~(a^b)&cin);
endmodule




/* OUTPUT:
meenakshi@meenakshi-Inspiron-3501:~/verilog/full_subtractor$ vvp full_subtractor.out
$time=0,a=0 b=0 cin=0 d=0 bout=0
$time=1,a=0 b=0 cin=1 d=1 bout=1
$time=2,a=0 b=1 cin=0 d=1 bout=1
$time=3,a=0 b=1 cin=1 d=0 bout=1
$time=4,a=1 b=0 cin=0 d=1 bout=0
$time=5,a=1 b=0 cin=1 d=0 bout=0
$time=6,a=1 b=1 cin=0 d=0 bout=0
$time=7,a=1 b=1 cin=1 d=1 bout=1
full_subtractor_tb.v:22: $finish called at 8 (1s)
*/
