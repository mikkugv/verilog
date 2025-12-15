module logicgates_ifelse (
    input  a,
    input  b,
    output reg and_y,
    output reg or_y,
    output reg nand_y,
    output reg nor_y,
    output reg xor_y,
    output reg xnor_y,
    output reg not_y
);
    always @(*) begin
        // AND 
        if (a === 1'b0 || b === 1'b0)
            and_y = 1'b0;
        else if (a === 1'b1 && b === 1'b1)
            and_y = 1'b1;
        else
            and_y = 1'bx;

        // OR
        if (a === 1'b1 || b === 1'b1)
            or_y = 1'b1;
        else if (a === 1'b0 && b === 1'b0)
            or_y = 1'b0;
        else
            or_y = 1'bx;

        // NAND
        if (a === 1'b0 || b === 1'b0)
            nand_y = 1'b1;
        else if (a === 1'b1 && b === 1'b1)
            nand_y = 1'b0;
        else
            nand_y = 1'bx;

        // NOR
        if (a === 1'b1 || b === 1'b1)
            nor_y = 1'b0;
        else if (a === 1'b0 && b === 1'b0)
            nor_y = 1'b1;
        else
            nor_y = 1'bx;

        // XOR
        if ((a === 1'b0 && b === 1'b1) || (a === 1'b1 && b === 1'b0))
            xor_y = 1'b1;
        else if ((a === 1'b0 && b === 1'b0) || (a === 1'b1 && b === 1'b1))
            xor_y = 1'b0;
        else
            xor_y = 1'bx;

        // XNOR
        if ((a === 1'b0 && b === 1'b0) || (a === 1'b1 && b === 1'b1))
            xnor_y = 1'b1;
        else if ((a === 1'b0 && b === 1'b1) || (a === 1'b1 && b === 1'b0))
            xnor_y = 1'b0;
        else
            xnor_y = 1'bx;

        // NOT 
        if (a === 1'b0)
            not_y = 1'b1;
        else if (a === 1'b1)
            not_y = 1'b0;
        else
            not_y = 1'bx;
    end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/logicgates_ifelse$ vvp logicgates_ifelse.out
VCD info: dumpfile logicgates_ifelse.vcd opened for output.
$time=0|a=0|b=0|and_y=0|or_y=0|nand_y=1|nor_y=1|xor_y=0|xnor_y=1|not_y=1
$time=10|a=0|b=1|and_y=0|or_y=1|nand_y=1|nor_y=0|xor_y=1|xnor_y=0|not_y=1
$time=20|a=1|b=0|and_y=0|or_y=1|nand_y=1|nor_y=0|xor_y=1|xnor_y=0|not_y=0
$time=30|a=1|b=1|and_y=1|or_y=1|nand_y=0|nor_y=0|xor_y=0|xnor_y=1|not_y=0
$time=40|a=x|b=1|and_y=x|or_y=1|nand_y=x|nor_y=0|xor_y=x|xnor_y=x|not_y=x
$time=50|a=1|b=x|and_y=x|or_y=1|nand_y=x|nor_y=0|xor_y=x|xnor_y=x|not_y=0
$time=60|a=z|b=0|and_y=0|or_y=x|nand_y=1|nor_y=x|xor_y=x|xnor_y=x|not_y=x
$time=70|a=1|b=z|and_y=x|or_y=1|nand_y=x|nor_y=0|xor_y=x|xnor_y=x|not_y=0
$time=80|a=x|b=z|and_y=x|or_y=x|nand_y=x|nor_y=x|xor_y=x|xnor_y=x|not_y=x
logicgates_ifelse_tb.v:35: $finish called at 90 (1s)
*/
