module parity_generator (
    input  [3:0] D,
    input  mode,   
    output reg   P
);
    always @(*) begin
        if (mode == 1'b0)
            P = ^D;     
        else
            P = ~^D;     
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/parity_generator$ vvp parity_generator.out
VCD info: dumpfile parity_generator.vcd opened for output.
$time=0|D=0000|mode=0|P=0
$time=10|D=0001|mode=0|P=1
$time=20|D=1011|mode=0|P=1
$time=30|D=1111|mode=0|P=0
$time=40|D=0000|mode=1|P=1
$time=50|D=0001|mode=1|P=0
$time=60|D=1011|mode=1|P=0
$time=70|D=1111|mode=1|P=1
parity_generator_tb.v:29: $finish called at 80 (1s)
*/
