module logicgates_ifelse_tb;
reg a, b;
wire and_y, or_y, nand_y, nor_y, xor_y, xnor_y, not_y;
//instantiate
logicgates_ifelse dut (
        .a(a),
        .b(b),
        .and_y(and_y),
        .or_y(or_y),
        .nand_y(nand_y),
        .nor_y(nor_y),
        .xor_y(xor_y),
        .xnor_y(xnor_y),
        .not_y(not_y)
    );

    initial begin
        $monitor("$time=%0t|a=%b|b=%b|and_y=%b|or_y=%b|nand_y=%b|nor_y=%b|xor_y=%b|xnor_y=%b|not_y=%b",$time,a,b,and_y,or_y,nand_y,nor_y,xor_y,xnor_y,not_y);
        $dumpfile("logicgates_ifelse.vcd");
        $dumpvars(0, logicgates_ifelse_tb);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // X case
        a = 1'bx; b = 1'b1; #10;
        a = 1'b1; b = 1'bx; #10;

        // Z case
        a = 1'bz; b = 1'b0; #10;
        a = 1'b1; b = 1'bz; #10;
        a = 1'bx; b = 1'bz; #10;

        $finish;
    end

endmodule

