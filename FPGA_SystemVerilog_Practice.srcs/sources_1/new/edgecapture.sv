module top_module (
    input  logic        clk,
    input  logic        reset,
    input  logic [31:0] in,
    output logic [31:0] out
);

    logic [31:0] prev_in;

    always_ff @(posedge clk) begin
        if (reset) begin
            prev_in <= in;
            out     <= 32'b0;
        end
        else begin
            if ((prev_in & ~in) != 0)
                out <= out | (prev_in & ~in);

            prev_in <= in;
        end
    end

endmodule