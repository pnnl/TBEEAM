within HPF.Templates.Validation;
model DCLoad
  extends Modelica.Icons.Example;
  HPF.Templates.DCLoad dCLoad(pwr=50)
    annotation (Placement(transformation(extent={{20,0},{40,20}})));
  Sources.DC.FixedVoltage_FixedCurrent fixedVoltage_FixedCurrent(v_out=10,
      i_out=10)
    annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor11(R=5)   annotation (
    Placement(visible = true, transformation(origin={-10,10},     extent={{-10,10},
            {10,-10}})));
equation
  connect(fixedVoltage_FixedCurrent.n, resistor11.p)
    annotation (Line(points={{-40,10},{-20,10}}, color={0,0,255}));
  connect(resistor11.n, dCLoad.p)
    annotation (Line(points={{0,10},{20,10}}, color={0,0,255}));
  connect(dCLoad.n, fixedVoltage_FixedCurrent.p) annotation (Line(points={{40,
          10},{52,10},{52,-20},{-70,-20},{-70,10},{-60,10}}, color={0,0,255}));
end DCLoad;
