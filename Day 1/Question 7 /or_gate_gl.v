    module or_gate_gl(a,b,y);
    input a,b;
    output y;
    or(y,a,b);
    endmodule 


/* OUTPUT 
meenakshi@meenakshi-Inspiron-3501:~/verilog/or_gate_gl$ iverilog -o or_gate_gl.out or_gate_gl.v or_gate_gl_tb.v
meenakshi@meenakshi-Inspiron-3501:~/verilog/or_gate_gl$ vvp or_gate_gl.out
VCD info: dumpfile or_gate_gl.vcd opened for output.
$time=0|a=0 b=0 y=0
$time=10|a=0 b=1 y=1
$time=20|a=1 b=0 y=1
$time=30|a=1 b=1 y=1
or_gate_gl_tb.v:20: $finish called at 40 (1s)
*/
