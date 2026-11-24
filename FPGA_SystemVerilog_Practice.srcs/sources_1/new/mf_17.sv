`timescale 1ns / 1ps

module mf_17#(parameter NUM_TAPS = 17)(input logic clk,
             input logic rst,
             input logic valid_in,
             input logic signed [7:0] sample_in,
             output logic signed [17:0] sample_out);
    //constant FIR coeffs
    localparam logic signed [7:0] TAPS [0: NUM_TAPS-1]='{
         8'sd0,
         8'sd1,
        -8'sd2,
         8'sd2,
         8'sd5,
       -8'sd12,
        -8'sd8,
        8'sd55,
        8'sd99,
        8'sd55,
        -8'sd8,
       -8'sd12,
         8'sd5,
         8'sd2,
        -8'sd2,
         8'sd1,
         8'sd0};
             
       //initiate tap registers
       logic signed [7:0]tap_register [0:NUM_TAPS-1];//unpacked array 18 8-bit elemensts
       //stage 1 : shift register
       //initaite the shift registers
       logic signed[7:0] shift_reg [0:NUM_TAPS-1];
       
       always_ff @(posedge clk) begin 
          if (rst) begin 
          for(int i = 0; i<NUM_TAPS ; i++) begin 
          shift_reg[i] <= '0;
          end 
          sample_out <= '0;      
          end 
          else if (valid_in) begin 
          for(int i = 1; i<NUM_TAPS ; i++) begin
          shift_reg[0] <= sample_in;
          shift_reg[i+1] <= shift_reg[i];  
          end  
       end 
       end
       
       //stage 2: 17 product multiplier 
       //instantiate reg 
       logic signed[15:0] mul_reg [0:NUM_TAPS-1];
       always_comb begin 
       for(int i = 0; i<NUM_TAPS ;i++) begin 
          mul_reg[i] = tap_register[i]*shift_reg[i];
       end 
       
       end 
       //stage 3: accumulation product sum 
       //instantaiste sum variable 
       logic signed [23:0] sum;
       always_comb begin 
       for(int i = 0; i < NUM_TAPS; i++) begin 
          sum = sum + mul_reg[i];
       end 
       end 
       
       //stage 4: right shift to divide by 128
       always sample_out = (sum + 64) >>> 7;//need an arithmetic shift right for signed 
       
endmodule

