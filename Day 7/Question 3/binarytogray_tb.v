module binarytogray_tb;
    reg  [3:0] bin;
    wire [3:0] gray;
    binarytogray dut (
        .bin(bin),
        .gray(gray)
    );
    initial begin
        $monitor("%0t | %b | %b", $time, bin, gray);
        $dumpfile("binarytogray.vcd");
        $dumpvars(0,binarytogray_tb);
        $display("Time  Binary  Gray");
        bin = 4'b0000; #10;
        bin = 4'b0001; #10;
        bin = 4'b0010; #10;
        bin = 4'b0011; #10;
        bin = 4'b0100; #10;
        bin = 4'b1011; #10;
        $finish;
    end
endmodule

