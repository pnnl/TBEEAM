within HPF.Examples.ModelingValidation;
model Short
    extends Modelica.Electrical.Analog.Interfaces.OnePort;
equation
    connect(p,n) annotation(Line(points = {{-100,0},{0,0},{0,0},{100,0}},color = {0,0,255}));

    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end Short;
