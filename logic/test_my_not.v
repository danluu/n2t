module test_my_not();
   reg a;
   reg expected;
   
   wire b;
   

   my_not u1(b, a);

   initial 
     begin
	a = 0;
	expected = 1;
	#1 a = 1;
	expected = 0;
     end

   initial
     $monitor("my_not %d %b (%b %b)", $time, a, b, expected);
   
endmodule
