module swap_blocking;
    reg [3:0] a, b;
    reg [3:0] temp;
    initial begin
        a = 4'd5;
        b = 4'd9;
        temp = a;
        a = b;
        b = temp;
        $display("a=%d b=%d", a, b);
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/swap_blocking$ vvp swap_blocking.out
a= 9 b= 5
VCD info: dumpfile swap_blocking.vcd opened for output.
Before swap: a= 5 b= 9
After  swap: a= 9 b= 5
$time=0|a=1001|b=0101|
swap_blocking_tb.v:16: $finish called at 10 (1s)
*/
