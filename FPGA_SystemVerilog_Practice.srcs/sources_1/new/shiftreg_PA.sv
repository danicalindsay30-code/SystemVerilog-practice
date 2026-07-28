`timescale 1ns / 1ps


module shiftreg_PA (input logic E, clk, rst,
output logic A);
logic B, C, D;

always_ff @ (posedge clk or posedge rst)
begin

if (rst) begin A = 0; B = 0; C = 0; D = 0; end
else begin
A = B;
B = C;
C = D;
D = E;
end
end
endmodule
