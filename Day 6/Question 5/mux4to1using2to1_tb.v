module mux4to1using2to1_tb;
    reg i0, i1, i2, i3;
    reg s0, s1;
    wire y;
    //instantiate
    mux4to1using2to1 dut (
        .i0(i0),
        .i1(i1),
        .i2(i2), 
        .i3(i3),
        .s0(s0),
        .s1(s1),
        .y(y)
    );
    initial begin
        $monitor("$time=%0t|i0=%b|i1=%b|i2=%b|i3=%b|s0=%b|s1=%b|y=%b",$time,i0,i1,i2,i3,s0,s1,y);
        $dumpfile("mux4to1using2to1.vcd");
        $dumpvars(0,mux4to1using2to1_tb);
        i0 = 0; i1 = 1; i2 = 0; i3 = 1;
        s1 = 0; s0 = 0; #10;
        $display("s1=%b s0=%b y=%b (expected i0=%b)", s1, s0, y, i0);
        s1 = 0; s0 = 1; #10;
        $display("s1=%b s0=%b y=%b (expected i1=%b)", s1, s0, y, i1);
        s1 = 1; s0 = 0; #10;
        $display("s1=%b s0=%b y=%b (expected i2=%b)", s1, s0, y, i2);
        s1 = 1; s0 = 1; #10;
        $display("s1=%b s0=%b y=%b (expected i3=%b)", s1, s0, y, i3);
        $finish;
    end

endmodule

