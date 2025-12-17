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
