`timescale 1ns / 1ps

module vector3( input logic [4:0] a,b,c,d,e,f,
                output logic [7:0]w,x,y,z);
       
       assign {w,x,y,z}= {a,b,c,d,e,f,3'b11};
       
endmodule
