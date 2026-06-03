within HPF.Examples.ModelingValidation;
model commonTemplate
    inner .HPF.SystemDef systemDef(numPh = 1,hrms = {i for i in 1:2:20},fs = 10e3) annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{-120.97591428571431,261.2145642857143},{-55.64251428571433,317.2145642857143}},rotation = 0.0)));
    parameter Integer nTra = 1
        "Number of AC-DC transformers to be used";
    .HPF.SinglePhase.Sources.VoltageSource input_source(vMag = {120,0,0,0,0,0,0,0,0,0},vArg = {0,0,0,0,0,0,0,0,0,0},start_v_re = {120,0,0,0,0,0,0,0,0,0}) annotation(Placement(visible = true,transformation(origin = {-114.0,-24.0},extent = {{-36.0,-36.0},{36.0,36.0}},rotation = -90.0)));
    HPF.SinglePhase.Interface.ACDC_ConverterBase[nTra] ACDC_EmpTra(nomP = 29,modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/osram.mat",V_Rect = 45) annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{48.0,81.0},{108.0,139.0}},rotation = 0.0)));
    .HPF.SinglePhase.Components.Ground ground annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{-130.9762142857143,-166.7857357142857},{-98.97621428571429,-134.7857357142857}},rotation = 0.0)));
    .HPF.DC.Ground ground2 annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{217.0237857142857,-162.7857357142857},{243.0237857142857,-136.7857357142857}},rotation = 0.0)));
    HPF.SinglePhase.Interface.TwoPinBase AC_cable(wireGaugeAC = .HPF.Types.WireGaugeAC.gauge_12,length = 60) annotation(Placement(visible = true,transformation(origin = {-114.97621428571429,221.2142642857143},extent = {{-24.0,-24.0},{24.0,24.0}},rotation = -90.0)));
    .HPF.DC.Variable_DC_Load LED_ annotation(Placement(visible = true,transformation(origin = {474.0,104.0},extent = {{-22.0,-22.0},{22.0,22.0}},rotation = -90.0)));
    .Modelica.Blocks.Sources.CombiTimeTable schedule(tableOnFile = true,tableName = "schedule",fileName = "/media/sf_Project_Codes/BEEAM/HPF/Data/load_profiles/schedule.txt") annotation(Placement(visible = true,transformation(origin = {602.0,278.0},extent = {{-30.0,-30.0},{30.0,30.0}},rotation = -90.0)));
    Modelica.Electrical.Analog.Interfaces.OnePort[nTra] resistor(R = 0) annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{168.0,130.0},{200.0,162.0}},rotation = 0.0)));
    Modelica.Electrical.Analog.Interfaces.OnePort PoE_cable_(wireGaugeDC = .HPF.Types.WireGaugeDC.guage_POE_Patch,length = 5) annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{250.0,0.0},{298.0,48.0}},rotation = 0.0)));
    .HPF.DC.DC2DC_Converters.StepDown PoE_driver_(modelData = igor_PoE_Driver) annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{335.0,-21.0},{381.0,25.0}},rotation = 0.0)));
equation
    connect(input_source.pin_p,AC_cable.pin_n) annotation(Line(points = {{-114.00000000000001,12},{-114.97621428571429,12},{-114.97621428571429,197.2142642857143}},color = {92,53,102}));
    connect(ground.pin,input_source.pin_n) annotation(Line(points = {{-114.97621428571429,-134.7857357142857},{-114.97621428571429,-60},{-113.99999999999999,-60}},color = {92,53,102}));
    connect(LED_.n,ground2.p) annotation(Line(points = {{474,82},{231.0237857142857,82},{231.0237857142857,-136.7857357142857}},color = {0,0,255}));
    connect(schedule.y[1],LED_.u) annotation(Line(points = {{602,245},{485,245},{485,103.56}},color = {0,0,127}));
    connect(ACDC_EmpTra.hPin_P,AC_cable.pin_p) annotation(Line(points = {{48,133.2},{48,245.2142642857143},{-114.97621428571429,245.2142642857143}},color = {92,53,102}));
    connect(ACDC_EmpTra.hPin_N,input_source.pin_n) annotation(Line(points = {{48,86.80000000000001},{8.023785714285708,86.80000000000001},{8.023785714285708,-60},{-113.99999999999999,-60}},color = {117,80,123}));
    connect(ACDC_EmpTra.pin_p,LED_.p) annotation(Line(points = {{108,133.2},{108,126},{474,126}},color = {0,0,255}));
    connect(ACDC_EmpTra.pin_n,LED_.n) annotation(Line(points = {{108,86.80000000000001},{474,86.80000000000001},{474,82}},color = {0,0,255}));
    connect(ACDC_EmpTra[1].pin_p,resistor.p) annotation(Line(points = {{108,133.2},{125,133.2},{125,146},{168,146}},color = {0,0,255}));
    connect(resistor.n,PoE_cable_.p) annotation(Line(points = {{200,146},{200,24},{250,24}},color = {0,0,255}));
    connect(PoE_cable_.n,PoE_driver_.p1) annotation(Line(points = {{298,24},{304,24},{304,31},{335,31},{335,25}},color = {0,0,255}));
    connect(PoE_driver_.p2,LED_.p) annotation(Line(points = {{381,25},{381,132},{474,132},{474,126}},color = {0,0,255}));
    connect(PoE_driver_.n2,LED_.n) annotation(Line(points = {{381,-21},{381,-27},{474,-27},{474,82}},color = {0,0,255}));
    connect(ACDC_EmpTra[1].pin_n,PoE_driver_.n1) annotation(Line(points = {{108,86.80000000000001},{114,86.80000000000001},{114,-27},{335,-27},{335,-21}},color = {0,0,255}));
    connect(PoE_driver_.n1,ground2.p) annotation(Line(points = {{335,-21},{230.0237857142857,-21},{230.0237857142857,-136.7857357142857}},color = {0,0,255}));
    connect(ACDC_EmpTra[1].pin_n,ground2.p) annotation(Line(points = {{108,86.80000000000001},{230.0237857142857,86.80000000000001},{230.0237857142857,-136.7857357142857}},color = {0,0,255}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end commonTemplate;
