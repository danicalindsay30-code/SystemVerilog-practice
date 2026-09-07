`timescale 1ns / 1ps

module vectorr_tb;
logic clk;
logic [7:0] in_p;
logic [7:0] out_p;

vectorr dut(.in(in_p),.out(out_p));

//clock generation 

initial begin 
clk = 0;
forever #10 clk = ~clk;
end

//test sequence

initial begin 
in_p = 8'b00001111;
#10;
in_p = 8'b11110000;
#10;
$finish;
end

initial begin 
$monitor("input: %b ---> output: %b",in_p,out_p);
end


endmodule
