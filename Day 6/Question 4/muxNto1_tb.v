module muxNto1_tb;
    parameter N   = 8;
    parameter SEL = 3;
    reg  [N-1:0]   I;
    reg  [SEL-1:0] S;
    wire  Y;
    //instantiate
    muxNto1 #(
        .N(N),
        .SEL(SEL)
    ) dut (
        .I(I),
        .S(S),
        .Y(Y)
    );
    initial begin
        $monitor("$time=%0t|N=%b|SEL=%b|I=%b|S=%b|Y=%b",$time,N,SEL,I,S,Y);
        $dumpfile("muxNto1.vcd");
        $dumpvars(0, muxNto1_tb);
        I = 8'b10101100;
        S = 3'b000; #10;  
        S = 3'b001; #10;   
        S = 3'b010; #10;  
        S = 3'b011; #10;   
        S = 3'b100; #10;   
        S = 3'b101; #10;   
        S = 3'b110; #10;   
        S = 3'b111; #10;   
        $finish;
    end
endmodule

