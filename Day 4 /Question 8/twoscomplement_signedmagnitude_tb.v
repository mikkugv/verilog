module twoscomplement_signmagnitude (
input  [7:0] a,        
output reg sign,       
output reg [6:0] mag    
);
reg [7:0] temp;
    always @(*) begin
        sign = a[7];
        if (a[7] == 1'b0) begin
            mag = a[6:0];
        end
        else begin
            temp = ~a + 1'b1;   
            mag  = temp[6:0];
        end
    end
endmodule
