module mux4 (
    input  logic [3:0] data_in,
    input  logic [1:0] sel,
    output logic       y
);

    always_comb begin
        case (sel)
            2'b00:   y = data_in[0];
            2'b01:   y = data_in[1];
            2'b10:   y = data_in[2];
            2'b11:   y = data_in[3];
            default: y = 1'b0;
        endcase
    end

endmodule
module counter (
    input  logic       clk,
    input  logic       reset,
    output logic [3:0] count
);

    always_ff @(posedge clk) begin
        if (reset)
            count <= 4'b0000;
        else
            count <= count + 1'b1;
    end

endmodule