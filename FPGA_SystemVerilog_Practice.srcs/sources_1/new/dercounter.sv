module top_module (
    input  logic clk,
    input  logic reset,
    output logic OneHertz,
    output logic [2:0] c_enable
);

    // Outputs from the three BCD counters
    logic [3:0] Q_0, Q_1, Q_2;

    // Combinational enable logic
    always_comb begin
        c_enable[0] = 1'b1;
        c_enable[1] = (Q_0 == 4'd9);
        c_enable[2] = (Q_0 == 4'd9) && (Q_1 == 4'd9);

        OneHertz = (Q_0 == 4'd9) &&
                   (Q_1 == 4'd9) &&
                   (Q_2 == 4'd9);
    end

    // All counters use the same 1000 Hz clock
    bcdcount counter0 (clk, reset, c_enable[0], Q_0);
    bcdcount counter1 (clk, reset, c_enable[1], Q_1);
    bcdcount counter2 (clk, reset, c_enable[2], Q_2);

endmodule