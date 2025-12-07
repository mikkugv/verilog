module even_odd_tb;
    reg  [3:0] a;
    wire even;
    wire odd;
    //instantiate
    even_odd dut(
        .a(a),
        .even(even),
        .odd(odd)
    );
    initial begin
        $dumpfile("even_odd.vcd");
        $dumpvars(0,even_odd_tb);
        a = 4'd0;#5;
        a = 4'd1;#5;
        a = 4'd2;#5;
        a = 4'd3;#5;
        a = 4'd4;#5;
        a = 4'd5;#5;
        a = 4'd6;#5;
        a = 4'd7;#5;
        a = 4'd8;#5;
        a = 4'd9;#5;
        a = 4'd10;#5;
        $finish;
    end
    initial begin
        $monitor("time=%0t | a=%0d | even=%b | odd=%b", $time, a, even, odd);
    end
endmodule

