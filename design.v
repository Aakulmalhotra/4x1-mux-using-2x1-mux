module mux4x1(p,q,r,s,sel,out);
  input p,q,r,s;
  input [1:0] sel;
  output out;
  
  wire w1 , w2;
  
  mux2x1 M1(.a(p) , .b(q) , .sel(sel[0]) , .out(w1));
  mux2x1 M2(.a(r) , .b(s) , .sel(sel[0]) , .out(w2));
  mux2x1 M3(.a(w1) , .b(w2) , .sel(sel[1]) , .out(o));
endmodule

module mux2x1(a,b,sel,out);
  input a,b,sel;
  output out;
  reg out;
  always @ (*)
    begin
      if(sel==1'b0)
         out = a;
      else
         out = b;
    end
endmodule
