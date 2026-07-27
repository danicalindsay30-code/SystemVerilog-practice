`timescale 1ns / 1ps

module mux_2_to_1_tb;

logic [7:0] t_mux_out, t_a, t_b;
logic t_select;

//syntax:
// .port_name_of _module(signal in testbench )
mux_2_to_1 dut(.mux_out(t_mux_out), .a(t_a), .b(t_b), . select(t_select));

//stimulus generator 

initial begin
t_select = 1; t_a = 3; t_b = 5;
#10 t_a = 9; t_b = 14;
#10 t_select = 0;
#10 t_a = 48; t_b = 27; 
end 

//response monitor 

initial begin 

$monitor("t_select = %d t_a = %d t_b = %d t_mux_out = %d",
 t_select, t_a, t_b, t_mux_out);
end
endmodule
