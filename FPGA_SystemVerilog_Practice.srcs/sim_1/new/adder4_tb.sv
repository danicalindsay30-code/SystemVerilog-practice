`timescale 1ns / 1ps
`include "adder4.sv"

module adder4_tb();

logic [3:0] at, bt, st;
logic c_int, c_outt ;

adder4 dut(.at(a),
           .bt(b),
           .st(s),
           .c_int(c_in),
           .c_outt(c_out));
           
//there are 16 x 16 x 2 testcases 
integer i,j,k;

initial begin 
    for(i=0; i<16; i++) begin
       for(j=0; j < 16; j++) begin 
           for(k=0; k < 3 ; k++)begin
               a= i;
               b = j;
               #10;
               if (sum !==(i+j))
                   $display("Error: a=%0d b =%0d Expected = %0d Got=%0d",
                   i, j, i+j,sum);
            end 
      end 
      
      $display("Test complete.");
      $finfish
  end 
      endmodule 


endmodule
