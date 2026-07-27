`timescale 1ns / 1ps


module 4_bit_adder( input c_in,
                    input [3:0]a,b,
                    output [3:0]s,
                    output c_out);
                    
//intermediate carriers
logic c0,c1,c2 ;

//structural model
full_adder(s[0],c0, a[0],b[0],c_in);
full_adder(s[1],c1,a[1],b[1],c0);
full_adder(s[2],c2,a[2],b[2],c1);
full_adder(s[3],c_out,a[3],b[3],c2);


endmodule
