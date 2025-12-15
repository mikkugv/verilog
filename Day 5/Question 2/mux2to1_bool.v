module mux2to1_bool (
    input A,
    input B,
    input S,
    output Y
);
    assign Y = (~S & A) | (S & B);
endmodule


/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux2to1_bool$ vvp mux2to1_bool.out
VCD info: dumpfile mux2to1_bool.vcd opened for output.
$time=0|A=0|B=0|S=0|Y=0
$time=10|A=0|B=1|S=0|Y=0
$time=20|A=1|B=0|S=0|Y=1
$time=30|A=1|B=1|S=0|Y=1
$time=40|A=0|B=0|S=1|Y=0
$time=50|A=0|B=1|S=1|Y=1
$time=60|A=1|B=0|S=1|Y=0
$time=70|A=1|B=1|S=1|Y=1
mux2to1_bool_tb.v:24: $finish called at 80 (1s)
*/
