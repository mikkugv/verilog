module bitselect(
    input [7:0] a,
    output bit3
    );
    assign bit3=a[3];
    endmodule

/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/bitselect$ vvp bitselect.out
VCD info: dumpfile bitselect.vcd opened for output.
$time=0| a=xxxxxxxx| bit3=x
$time=10| a=01001110| bit3=1
$time=20| a=01010011| bit3=0
*/
