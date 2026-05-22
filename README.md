# BOOLEAN_FUNCTION_MINIMIZATION

**AIM:**

To implement the given logic function verify its operation in Quartus using Verilog programming.

F1= A’B’C’D’+AC’D’+B’CD’+A’BCD+BC’D 

F2=xy’z+x’y’z+w’xy+wx’y+wxy

**Equipment Required:**

Hardware – PCs, Cyclone II , USB flasher

**Software – Quartus prime**


**Logic Diagram**
![alt text](image.png)

**Procedure**

1.	Type the program in Quartus software.

2.	Compile and run the program.

3.	Generate the RTL schematic and save the logic diagram.

4.	Create nodes for inputs and outputs to generate the timing diagram.

5.	For different input combinations generate the timing diagram.


**Program:**

/* Program to implement the given logic function and to verify its operations in quartus using Verilog programming. 

Developed by: Harish Kumar P 

RegisterNumber: 212225230095

```
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

```

**RTL realization**

![alt text](<Screenshot 2026-05-22 092656.png>)

**RTL**

![alt text](<Screenshot 2026-05-22 085312.png>)

**Result:**

Thus the given logic functions are implemented using and their operations are verified using Verilog programming.

