module Multiplexer2to1(A, B, select, out);
input A, B, select;
output out;

wire not_select, w1, w2;

not n(not_select, select);
and selectA(w1, A, not_select);
and selectB(w2, B,  select);
or o(out, w1, w2);
endmodule