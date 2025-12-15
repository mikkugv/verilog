module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

module nbitripplecarryadder #(
    parameter N = 4
)(
    input  [N-1:0] A,
    input  [N-1:0] B,
    input          Cin,
    output [N-1:0] Sum,
    output         Cout
);
    wire [N:0] C;   
    assign C[0] = Cin;
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : FA_LOOP
            full_adder FA (
                .a   (A[i]),
                .b   (B[i]),
                .cin (C[i]),
                .sum (Sum[i]),
                .cout(C[i+1])
            );
        end
    endgenerate
    assign Cout = C[N];
endmodule


/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/nbitripplecarryadder$ vvp nbitripplecarryadder.out
VCD info: dumpfile nbitripplecarryadder.vcd opened for output.
$time=0|A=0000|B=0000|Cin=0|Sum=0000|Cout=0|
$time=10|A=0011|B=0101|Cin=0|Sum=1000|Cout=0|
$time=20|A=0111|B=0001|Cin=0|Sum=1000|Cout=0|
$time=30|A=1111|B=0001|Cin=0|Sum=0000|Cout=1|
$time=40|A=1010|B=0101|Cin=1|Sum=0000|Cout=1|
nbitripplecarryadder_tb.v:25: $finish called at 50 (1s)
*/
