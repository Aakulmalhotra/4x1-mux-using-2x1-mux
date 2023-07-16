// Code your testbench here
// or browse Examples
module testbench;
  reg ta, tb , tc ,td;
  reg [1:0] tsel;
  wire tout;
  mux4x1 uut(.p(ta) , .q(tb) , .r(tc) , .s(td) ,.sel(tsel) , .out(tout));
  
  initial 
    begin
      $monitor("P = %b , Q= %b , R=%b , S = %b , Sel = %b , Out = %b",ta,tb,tc,td,tsel,tout);
      #0 ta = 0; tb=0;tc=0;td=0;tsel = 0;
      #5 ta = 1; tb= 1; tsel =1;
      #5 ta= 0 ; tb = 0; tsel =  0;
      #5 ta=1; tc =1; tsel =0;
      #5 $finish;
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      
    end
endmodule


  
