within HPF.trial;
model System
  parameter Integer nB=3;
  parameter Integer a_index[nB]={2,5,3};
  parameter Integer nA=sum(a_index);

  extends Modelica.Icons.Example;
  ClassB classB[nB]
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  ClassA classA[nA]
    annotation (Placement(transformation(extent={{20,40},{40,60}})));

equation
   for i in 1:nB loop
     classB[i].name= String(i);
     if i>1 then
     for j in (sum(a_index[1:(i-1)])+1):(sum(a_index[1:(i-1)])+a_index[i]) loop
       classA[j].name= String(j);
       connect(classB[i].y, classA[j].u1);
     end for;
     else
     for j in 1:(a_index[1]) loop
       connect(classB[i].y, classA[j].u1);
       classA[j].name= String(j);
     end for;
     end if;
   end for;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end System;
