`timescale 1ns / 1ps


module priority_logic(input logic in1,in2,in3,in4,in5,
                      input logic sel1,sel2,sel3,sel4,
                      output logic out );
       assign out = (sel1) ? in1 :
                    (sel2) ? in2 :
                    (sel3) ? in3 :
                    (sel4) ? in4 :
                    in5; 
endmodule
