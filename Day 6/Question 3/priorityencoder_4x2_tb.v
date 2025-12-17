module priorityencoder_4x2_tb;
    reg  [3:0] I;
    wire [1:0] Y;
    wire V;
    //instantiate
    priorityencoder_4x2 dut (
        .I(I),
        .Y(Y),
        .V(V)
    );
    initial begin
        $monitor("$time=%0t|I=%b|Y=%b|V=%b",$time,I,Y,V);
        $dumpfile("priorityencoder_4x2.vcd");
        $dumpvars(0, priorityencoder_4x2_tb);
        I = 4'b0000; #10;   

        I = 4'b0001; #10;   
        I = 4'b0010; #10;   
        I = 4'b0100; #10;  
        I = 4'b1000; #10;   

        I = 4'b0011; #10;   
        I = 4'b0110; #10;   
        I = 4'b1011; #10;   
        I = 4'b1111; #10;   

        $finish;
    end
endmodule
