module mux2_1(i0, i1, sel, out);
    input logic i0, i1, sel;
    output logic out;

    assign out = (i1 & sel) | (i0 & ~sel); 
endmodule