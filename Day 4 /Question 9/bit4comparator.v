module bit4comparator (
input  [3:0] A,
input  [3:0] B,
output reg greater,   
output reg lesser,   
output reg equal  
);
always @(*) begin
  if (A > B) begin
       greater = 1'b1;
       lesser = 1'b0;
       equal = 1'b0;
      end
   else if (A < B) begin
       greater = 1'b0;
       lesser = 1'b1;
       equal = 1'b0;
      end
   else begin
       greater = 1'b0;
       lesser = 1'b0;
       equal = 1'b1;
    end
    end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/bit4comparator$ vvp bit4comparator.out
VCD info: dumpfile bit4comparator.vcd opened for output.
time=0 | A= 3 | B= 5 | greater=0 lesser=1 equal=0
time=10 | A= 9 | B= 2 | greater=1 lesser=0 equal=0
time=20 | A= 7 | B= 7 | greater=0 lesser=0 equal=1
time=30 | A= 0 | B=15 | greater=0 lesser=1 equal=0
time=40 | A=15 | B= 0 | greater=1 lesser=0 equal=0
bit4comparator_tb.v:19: $finish called at 50 (1s)
*/
