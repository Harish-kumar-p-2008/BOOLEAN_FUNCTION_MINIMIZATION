module deexp2(a,b,c,d,w,x,y,z,f1,f2);
input a,b,c,d;
input w,x,y,z;
output f1,f2;
wire t1,t2,t3,t4,t5;
and (t1, ~a, ~b, ~c, ~d);
and (t2,  a, ~c, ~d);
and (t3, ~b,  c, ~d);
and (t4, ~a,  b,  c,  d);
and (t5,  b, ~c,  d);
or  (f1, t1, t2, t3, t4, t5);
wire t6,t7,t8,t9,t10;
and (t6,  x, ~y,  z);
and (t7, ~x, ~y,  z);
and (t8, ~w,  x,  y);
and (t9,  w, ~x,  y);
and (t10, w,  x,  y);
or  (f2, t6, t7, t8, t9, t10);
endmodule