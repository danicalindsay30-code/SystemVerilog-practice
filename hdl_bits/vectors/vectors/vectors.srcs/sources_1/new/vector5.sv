module top_module (
    input a, b, c, d, e,
    output [24:0] out );
    //want every possible comparison 
    //a compared with a,b,c,d,e   → 5 results
//b compared with a,b,c,d,e   → 5 results
//c compared with a,b,c,d,e   → 5 results
//d compared with a,b,c,d,e   → 5 results
//e compared with a,b,c,d,e   → 5 results
    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    assign out = ~{ {5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ^ { {5{a,b,c,d,e}}};

endmodule
