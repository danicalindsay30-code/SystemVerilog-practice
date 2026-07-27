`timescale 1ns / 1ps


module full_adder(input logic a, b, c_in,
                  output logic s, c_out);
        
        
       //declare the interconnecting wires 
       logic x1,x2,x3;
              
       //structural model
       xor(s,a,b,c_in);
       and(x1,a,b);
       and(x2,a, c_in);
       and(x3,b,c_in);
       
       or(c_out,x1, x2, x3);       
endmodule
