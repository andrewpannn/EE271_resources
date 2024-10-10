// 2:1 multiplexer
module mux2_1(i0, i1, sel, out);
    // inputs and outputs
    input logic i0, i1, sel;
    output logic out;

    // assign output
    assign out = (i1 & sel) | (i0 & ~sel); 

endmodule