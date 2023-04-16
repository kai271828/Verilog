module Full_Adder(a, b, c_in, sum, c_out);
input a, b, c_in;
output sum, c_out;

wire w1, w2, w3;

xor x1(w1, a, b), x2(sum, w1, c_in);
and a1(w2, a, b), a2(w3, w1, c_in);
or o1(c_out, w2, w3);

endmodule
