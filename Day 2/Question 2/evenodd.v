module even_odd( 
    input [3:0] a, 
    output even,odd 
    ); 
assign even = (a[0] == 1'b0) ? 1'b1 : 1'b0; 
assign odd = (a[0] == 1'b1) ? 1'b1 : 1'b0; 
endmodule 



/* OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/even_odd$ vvp even_odd.out
time=0 | a=0 | even=1 | odd=0
time=5 | a=1 | even=0 | odd=1
time=10 | a=2 | even=1 | odd=0
time=15 | a=3 | even=0 | odd=1
time=20 | a=4 | even=1 | odd=0
time=25 | a=5 | even=0 | odd=1
time=30 | a=6 | even=1 | odd=0
time=35 | a=7 | even=0 | odd=1
time=40 | a=8 | even=1 | odd=0
time=45 | a=9 | even=0 | odd=1
time=50 | a=10 | even=1 | odd=0
even_odd_tb.v:23: $finish called at 55 (1s)
*/
