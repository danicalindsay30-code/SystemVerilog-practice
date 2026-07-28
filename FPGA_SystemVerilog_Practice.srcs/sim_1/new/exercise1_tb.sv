`timescale 1ns / 1ps

module exercise1_tb;

logic tclk, ta_p, tb_p, tc_p, tf;

exercise_1 dut(.clk(tclk), 
               .a_p(ta_p),
               .b_p(tb_p),
               .c_p(tc_p),
               .f(tf));
               
initial begin 
tclk = 0;
forever #10 tclk = ~tclk;
end 

initial begin

    ta_p = 0;
    tb_p = 0;
    tc_p = 0;

    #20;
//test1 checks top path is active
    ta_p = 1;
    tb_p = 1;
    tc_p = 0;

    #20;
//test2 checks bottom path
    ta_p = 0;
    tb_p = 0;
    tc_p = 1;

    #20;

    ta_p = 1;
    tb_p = 0;
    tc_p = 1;

    #60;

    $finish;

end
endmodule
