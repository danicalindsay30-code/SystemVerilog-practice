`timescale 1ns / 1ps


module mux_2_to_1(output logic [7:0] mux_out,
                  input logic [7:0] a,b, 
                  input logic select);
                  
       assign mux_out = (select)? b : a ;
       
                  
endmodule
