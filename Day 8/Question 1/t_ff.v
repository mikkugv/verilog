module t_ff (
    input  T,
    input  clk,
    output reg Q
);
    always @(posedge clk) begin
        if (T)
            Q <= ~Q;   
        else
            Q <= Q;  
    end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/t_ff$ vvp t_ff.out
VCD info: dumpfile t_ff.vcd opened for output.
time=0  clk=0 T=0 Q=x
time=5  clk=1 T=0 Q=x
time=10  clk=0 T=1 Q=x
time=15  clk=1 T=1 Q=x
time=20  clk=0 T=1 Q=x
time=25  clk=1 T=1 Q=x
time=30  clk=0 T=0 Q=x
time=35  clk=1 T=0 Q=x
time=40  clk=0 T=0 Q=x
time=45  clk=1 T=0 Q=x
time=50  clk=0 T=1 Q=x
time=55  clk=1 T=1 Q=x
time=60  clk=0 T=1 Q=x
time=65  clk=1 T=1 Q=x
time=70  clk=0 T=1 Q=x
time=75  clk=1 T=1 Q=x
time=80  clk=0 T=1 Q=x
time=85  clk=1 T=1 Q=x
t_ff_tb.v:21: $finish called at 90 (1s)
time=90  clk=0 T=1 Q=x
*/
