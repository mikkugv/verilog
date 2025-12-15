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
