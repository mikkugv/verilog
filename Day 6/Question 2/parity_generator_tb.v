module parity_generator_tb;
    reg  [3:0] D;
    reg        mode;
    wire       P;
    //instantiate 
    parity_generator dut (
        .D(D),
        .mode(mode),
        .P(P)
    );
    initial begin
        $monitor("$time=%0t|D=%b|mode=%b|P=%b",$time,D,mode,P);
        $dumpfile("parity_generator.vcd");
        $dumpvars(0, parity_generator_tb);

        mode = 0;
        D = 4'b0000; #10;  
        D = 4'b0001; #10;   
        D = 4'b1011; #10;   
        D = 4'b1111; #10;  

    
        mode = 1;
        D = 4'b0000; #10;   
        D = 4'b0001; #10;   
        D = 4'b1011; #10;  
        D = 4'b1111; #10;   

        $finish;
    end

endmodule

