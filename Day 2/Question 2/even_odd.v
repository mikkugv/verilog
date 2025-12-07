module even_odd( 
    input [3:0] a, 
    output even,odd 
    ); 
assign even = (a[0] == 1'b0) ? 1'b1 : 1'b0; 
assign odd = (a[0] == 1'b1) ? 1'b1 : 1'b0; 
endmodule 
