module parity_checker (
    input  [3:0] D,
    input P,     
    input mode,
    output reg error
);
    always @(*) begin
        if (mode == 1'b0)
            error = ^{D, P};   
        else
            error = ~^{D, P};   
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/parity_checker$ vvp parity_checker.out
VCD info: dumpfile parity_checker.vcd opened for output.
$time=0|D=1011|P=1|mode=0|error=0
$time=10|D=1100|P=0|mode=0|error=0
$time=20|D=1011|P=0|mode=0|error=1
$time=30|D=1100|P=1|mode=0|error=1
$time=40|D=1011|P=0|mode=1|error=0
$time=50|D=1100|P=1|mode=1|error=0
$time=60|D=1011|P=1|mode=1|error=1
$time=70|D=1100|P=0|mode=1|error=1
parity_checker_tb.v:31: $finish called at 80 (1s)
*/
