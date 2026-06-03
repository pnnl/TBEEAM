within HPF.Templates.Interfaces;
model PartialLoad
  extends Modelica.Electrical.Analog.Interfaces.OnePort;
  replaceable DC.Interface.DCLoad dCLoad
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  ComponentBus bus annotation (Placement(transformation(extent={{-50,50},{-10,
            90}}), iconTransformation(extent={{-80,54},{-40,94}})));
equation
  connect(p, dCLoad.p)
    annotation (Line(points={{-100,0},{-10,0}}, color={0,0,255}));
  connect(dCLoad.n, n)
    annotation (Line(points={{10,0},{100,0}}, color={0,0,255}));
  if dCLoad.hasVariableLoad then
  connect(bus.uLoad, dCLoad.u) annotation (Line(
      points={{-30,70},{0,70},{0,5},{0.2,5}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}},
      horizontalAlignment=TextAlignment.Right));
  end if;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PartialLoad;
