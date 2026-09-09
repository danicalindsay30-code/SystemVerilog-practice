module top_module ( 
    input  logic clk, 
    input  logic w, R, E, L, 
    output logic Q 
); 
 
    logic D, s1; 
 
    always_comb begin
        if (E) begin
            s1 = w; 
        end
        else begin
            s1 = Q;
        end
     
        if (L) begin
            D = R; 
        end
        else begin
            D = s1;
        end
    end
     
    always_ff @(posedge clk) begin
        Q <= D;
    end
    
endmodule