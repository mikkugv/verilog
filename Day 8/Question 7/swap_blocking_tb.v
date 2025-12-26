module swap_blocking_tb;
    reg [3:0] a, b;
    reg [3:0] temp;
    initial begin
        $monitor("$time=%0t|a=%b|b=%b|",$time,a,b);
        $dumpfile("swap_blocking.vcd");
        $dumpvars(0,swap_blocking_tb);
        a = 4'd5;
        b = 4'd9;
        $display("Before swap: a=%d b=%d", a, b);
        temp = a;
        a = b;
        b = temp;
        $display("After  swap: a=%d b=%d", a, b);
        #10;
        $finish;
    end
endmodule

