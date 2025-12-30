module traffic_light_controller (
    input clk,
    input rst,
    output reg [2:0] ns,
    output reg [2:0] ew
);
    reg [1:0] state, next_state;
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= 2'b00;
        else
            state <= next_state;
    end
    always @(*) begin
        if (state == 2'b00)
            next_state = 2'b01;
        else if (state == 2'b01)
            next_state = 2'b10;
        else if (state == 2'b10)
            next_state = 2'b11;
        else
            next_state = 2'b00;
    end
    always @(*) begin
        if (state == 2'b00) begin
            ns = 3'b100;
            ew = 3'b001;
        end
        else if (state == 2'b01) begin
            ns = 3'b010;
            ew = 3'b001;
        end
        else if (state == 2'b10) begin
            ns = 3'b001;
            ew = 3'b100;
        end
        else begin
            ns = 3'b001;
            ew = 3'b010;
        end
    end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/traffic_light_controller$ vvp traffic_light_controller.out
VCD info: dumpfile traffic_light_controller.vcd opened for output.
$time=0|clk=0|rst=1|ns=100|ew=001
$time=5|clk=1|rst=1|ns=100|ew=001
$time=10|clk=0|rst=0|ns=100|ew=001
$time=15|clk=1|rst=0|ns=010|ew=001
$time=20|clk=0|rst=0|ns=010|ew=001
$time=25|clk=1|rst=0|ns=001|ew=100
$time=30|clk=0|rst=0|ns=001|ew=100
$time=35|clk=1|rst=0|ns=001|ew=010
$time=40|clk=0|rst=0|ns=001|ew=010
$time=45|clk=1|rst=0|ns=100|ew=001
$time=50|clk=0|rst=0|ns=100|ew=001
$time=55|clk=1|rst=0|ns=010|ew=001
$time=60|clk=0|rst=0|ns=010|ew=001
$time=65|clk=1|rst=0|ns=001|ew=100
$time=70|clk=0|rst=0|ns=001|ew=100
$time=75|clk=1|rst=0|ns=001|ew=010
$time=80|clk=0|rst=0|ns=001|ew=010
$time=85|clk=1|rst=0|ns=100|ew=001
traffic_light_controller_tb.v:13: $finish called at 90 (1s)
$time=90|clk=0|rst=0|ns=100|ew=001
*/
