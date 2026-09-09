module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    //internal 
    logic [7:0] prev_in;
    always_ff @(posedge clk)begin
        prev_in <= in;
       for(int b = 0;b<8;b++)
           if (prev_in[b] ==0 && in[b] == 1)
               pedge[b] <= 1'b1;
           else 
               pedge[b] <= 1'b0;
    end
        
endmodule
