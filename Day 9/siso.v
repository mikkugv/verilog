module siso (
    input clk,
    input rst,
    input serial_in,
    output reg serial_out
);
    always @(posedge clk or posedge rst) begin
    if (rst)
    serial_out <= 1'b0;
    else
    serial_out <= serial_in;
    end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/siso$ vvp siso.out
VCD info: dumpfile siso.vcd opened for output.
$time=0| clk=0| rst=1|serial_in=0 | serial_out=0
$time=5| clk=1| rst=1|serial_in=0 | serial_out=0
$time=10| clk=0| rst=0|serial_in=0 | serial_out=0
$time=15| clk=1| rst=0|serial_in=0 | serial_out=0
$time=20| clk=0| rst=0|serial_in=1 | serial_out=0
$time=25| clk=1| rst=0|serial_in=1 | serial_out=1
$time=30| clk=0| rst=0|serial_in=0 | serial_out=1
$time=35| clk=1| rst=0|serial_in=0 | serial_out=0
$time=40| clk=0| rst=0|serial_in=1 | serial_out=0
$time=45| clk=1| rst=0|serial_in=1 | serial_out=1
$time=50| clk=0| rst=0|serial_in=1 | serial_out=1
$time=55| clk=1| rst=0|serial_in=1 | serial_out=1
siso_tb.v:15: $finish called at 60 (1s)
$time=60| clk=0| rst=0|serial_in=1 | serial_out=1
*/
