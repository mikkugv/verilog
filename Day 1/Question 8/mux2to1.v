module mux2to1(
    input a, b, s,
    output y  
);
    wire s_bar, x, z;

    not (s_bar, s);     
    and (x, s_bar, a);  
    and (z, s, b);     
    or  (y, x, z);      
endmodule





/* OUTPUT 
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux2to1$ vvp mux2to1.vvp
VCD info: dumpfile mux2to1.vcd opened for output.
$time=0 | a=0 b=0 s=0 y=0
$time=10 | a=0 b=1 s=0 y=0
$time=20 | a=1 b=0 s=0 y=1
$time=30 | a=1 b=1 s=0 y=1
$time=40 | a=0 b=0 s=1 y=0
$time=50 | a=0 b=1 s=1 y=1
$time=60 | a=1 b=0 s=1 y=0
$time=70 | a=1 b=1 s=1 y=1
mux2to1_tb.v:30: $finish called at 80 (1s)
*/
