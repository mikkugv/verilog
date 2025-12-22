module d_latch_tb;
    reg D, EN;
    wire Q;
    d_latch dut (
        .D(D),
        .EN(EN),
        .Q(Q)
    );
    initial begin
        $monitor("%0t   %b   %b  %b", $time, EN, D, Q);
        $dumpfile("d_latch.vcd");
        $dumpvars(0,d_latch_tb);
        $display("Time  EN  D  Q");
        EN = 0; D = 0; #10;
        EN = 0; D = 1; #10; 
        EN = 1; D = 1; #10; 
        EN = 1; D = 0; #10; 
        EN = 0; D = 1; #10; 
        $finish;
    end
endmodule

