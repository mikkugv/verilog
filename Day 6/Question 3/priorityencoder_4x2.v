module priorityencoder_4x2(
    input  [3:0] I,
    output reg [1:0] Y,
    output reg V
);
    always @(*) begin
        if (I[3]) begin
            Y = 2'b11;
            V = 1'b1;
        end
        else if (I[2]) begin
            Y = 2'b10;
            V = 1'b1;
        end
        else if (I[1]) begin
            Y = 2'b01;
            V = 1'b1;
        end
        else if (I[0]) begin
            Y = 2'b00;
            V = 1'b1;
        end
        else begin
            Y = 2'b00;
            V = 1'b0;
        end
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/priorityencoder_4x2$ vvp priorityencoder_4x2.out
VCD info: dumpfile priorityencoder_4x2.vcd opened for output.
$time=0|I=0000|Y=00|V=0
$time=10|I=0001|Y=00|V=1
$time=20|I=0010|Y=01|V=1
$time=30|I=0100|Y=10|V=1
$time=40|I=1000|Y=11|V=1
$time=50|I=0011|Y=01|V=1
$time=60|I=0110|Y=10|V=1
$time=70|I=1011|Y=11|V=1
$time=80|I=1111|Y=11|V=1
priorityencoder_4x2_tb.v:27: $finish called at 90 (1s)
*/
