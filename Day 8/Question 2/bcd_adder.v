module bcd_adder (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] Sum,
    output Cout
);
    wire [4:0] s;
    assign s    = A + B;
    assign Cout = (s > 9);
    assign Sum  = Cout ? (s + 5'd6) : s;
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/bcd_adder$ vvp bcd_adder.out
VCD info: dumpfile bcd_adder.vcd opened for output.
$time=0,A=0011,B=0100,Sum=0111,Cout=0
$time=10,A=0101,B=0110,Sum=0001,Cout=1
$time=20,A=1001,B=1001,Sum=1000,Cout=1
$time=30,A=0010,B=1000,Sum=0000,Cout=1
bcd_adder_tb.v:14: $finish called at 40 (1s)
*/
