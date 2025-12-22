module graytobinary_tb;
    reg  [3:0] gray;
    wire [3:0] bin;
    graytobinary dut (
        .gray(gray),
        .bin(bin)
    );
    initial begin
        $monitor("%0t   %b   %b", $time, gray, bin);
        $dumpfile("graytobinary.vcd");
        $dumpvars(0,graytobinary_tb);
        $display("Time  Gray   Binary");
        gray = 4'b0000; #10;
        gray = 4'b0001; #10;
        gray = 4'b0011; #10;
        gray = 4'b0010; #10;
        gray = 4'b0110; #10;
        gray = 4'b1110; #10;
        $finish;
    end
endmodule

