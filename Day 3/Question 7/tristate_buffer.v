module tristate_buffer(
input a,
input en, 
output y
);
assign y = en ? a : 1'bz;   
endmodule


/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/tristate_buffer$ vvp tristate_buffer.out
VCD info: dumpfile tristate_buffer.vcd opened for output.
$time=0 ,a=1 en=1 y=1
$time=10 ,a=0 en=1 y=0
$time=20 ,a=0 en=0 y=z
tristate_buffer_tb.v:17: $finish called at 30 (1s)
*/
