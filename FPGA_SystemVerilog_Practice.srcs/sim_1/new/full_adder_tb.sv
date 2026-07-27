`timescale 1ns / 1ps


module tb_full_adder;

    logic a, b, c_in;
    logic s, c_out;

    full_adder dut(
        .a(a),
        .b(b),
        .c_in(c_in),
        .s(s),
        .c_out(c_out)
    );

    initial begin
        a=0; b=0; c_in=0; #20;
        a=0; b=0; c_in=1; #20;
        a=0; b=1; c_in=0; #20;
        a=0; b=1; c_in=1; #20;
        a=1; b=0; c_in=0; #20;
        a=1; b=0; c_in=1; #20;
        a=1; b=1; c_in=0; #20;
        a=1; b=1; c_in=1; #20;
        $finish;
    end

endmodule