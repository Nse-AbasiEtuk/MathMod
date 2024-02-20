model lr3

Real y11(start=111111);
Real y21(start=99999);
parameter Real a=0.33;
parameter Real b=0.77;
parameter Real c=0.44;
parameter Real d=0.67;

Real y12(start=111111);
Real y22(start=99999);
parameter Real a2=0.28;
parameter Real b2=0.83;
parameter Real c2=0.31;
parameter Real d2=0.75;

equation
  der(y11) = -a*y11 - b*y21 + sin(time+11);
  der(y21) = -c*y11 - d*y21 + cos(time+11);

 
equation
  der(y12) = -a2*y12 - b2*y22 + sin(22*time);
  der(y22) = -c2*y12*y22 - d2*y22 + cos(22*time);

end lr3;