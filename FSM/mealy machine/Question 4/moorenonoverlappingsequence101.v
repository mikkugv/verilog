module moorenonoverlappingsequence101(
    input clk,
    input rst,
    input x,
    output reg y
);
   reg [1:0] state, next_state;
always @(posedge clk or posedge rst) begin
   if (rst)
     state <= 2'b00;
   else
     state <= next_state;
    end
always @(*) begin
   if (state == 2'b00) begin
    if (x)
     next_state = 2'b01;
    else
     next_state = 2'b00;
    end
    else if (state == 2'b01) begin
    if (x)
     next_state = 2'b01;
    else
     next_state = 2'b10;
   end
   else if (state == 2'b10) begin
       if (x)
     next_state = 2'b11;
      else
     next_state = 2'b00;
     end
    else if (state == 2'b11) begin
     next_state = 2'b00;
        end
        else begin
            next_state = 2'b00;
        end
    end

    always @(*) begin
        if (state == 2'b11)
            y = 1'b1;
        else
            y = 1'b0;
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/moorenonoverlappingsequence101$ vvp moorenonoverlappingsequence101.out
VCD info: dumpfile moorenonoverlappingsequence101.vcd opened for output.
$time=0|clk=0|rst=1|x=0|y=0
$time=5|clk=1|rst=1|x=0|y=0
$time=10|clk=0|rst=0|x=0|y=0
$time=15|clk=1|rst=0|x=0|y=0
$time=20|clk=0|rst=0|x=1|y=0
$time=25|clk=1|rst=0|x=1|y=0
$time=30|clk=0|rst=0|x=0|y=0
$time=35|clk=1|rst=0|x=0|y=0
$time=40|clk=0|rst=0|x=1|y=0
$time=45|clk=1|rst=0|x=1|y=1
$time=50|clk=0|rst=0|x=0|y=1
$time=55|clk=1|rst=0|x=0|y=0
$time=60|clk=0|rst=0|x=1|y=0
$time=65|clk=1|rst=0|x=1|y=0
$time=70|clk=0|rst=0|x=1|y=0
$time=75|clk=1|rst=0|x=1|y=0
$time=80|clk=0|rst=0|x=1|y=0
$time=85|clk=1|rst=0|x=1|y=0
moorenonoverlappingsequence101_tb.v:19: $finish called at 90 (1s)
$time=90|clk=0|rst=0|x=1|y=0
*/
