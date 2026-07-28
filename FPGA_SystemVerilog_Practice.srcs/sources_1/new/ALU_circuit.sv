`timescale 1ns / 1ps
// circuit is an 8-bit arithmetic logic unit (ALU), accepting two 8-bit operands
// a 2 bit control input selects which operation to peform 
//ALUcontrol = 00, ALU peforms addition 
//ALUcontrol = 01, ALU peforms suntraction 
//ALUcontrol = 10, ALU peforms a bitwise AND 
//ALUcontol = 11, ALU performs a bitwise OR 

module ALU_circuit(input logic [7:0] a,b,
                   input logic [1:0] ctrl,
                   output logic c_out,
                   output logic [7:0] result);
       logic [7:0] b_int, sum; 
       assign b_int = (ctrl[0]) ? ~b : b ;
       assign {c_out,sum} = a + b_int + ctrl[0];
       
       always_comb
          case(ctrl)
          2'b00 : result = sum; // Add
          2'b01 : result = sum; // Subtract
          2'b10 : result = a & b; // Bitwise AND
          2'b11 : result = a | b; // Bitwise OR
endcase
endmodule
        
        
                 