module parity_checker_tb;
    reg  [3:0] D;
    reg        P;
    reg        mode;
    wire       error;
//instantiate
    parity_checker dut (
        .D(D),
        .P(P),
        .mode(mode),
        .error(error)
    );
    initial begin
        $monitor("$time=%0t|D=%b|P=%b|mode=%b|error=%b",$time,D,P,mode,error);
        $dumpfile("parity_checker.vcd");
        $dumpvars(0, parity_checker_tb);
        mode = 0;
        D = 4'b1011; P = 1'b1; #10;   
        D = 4'b1100; P = 1'b0; #10;   

        D = 4'b1011; P = 1'b0; #10;
        D = 4'b1100; P = 1'b1; #10;

        mode = 1;
        D = 4'b1011; P = 1'b0; #10;   
        D = 4'b1100; P = 1'b1; #10;   

        D = 4'b1011; P = 1'b1; #10;
        D = 4'b1100; P = 1'b0; #10;

        $finish;
    end
endmodule

