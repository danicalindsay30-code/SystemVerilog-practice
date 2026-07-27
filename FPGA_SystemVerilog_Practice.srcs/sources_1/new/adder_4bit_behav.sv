`timescale 1ns / 1ps


module adder_4bit_behav(output [3:0] s,
                        output c_out, 
                        input [3:0] a,b,
                        input c_in);
                        
       assign {c_out,s}= a +b + c_in ;
       
endmodule
