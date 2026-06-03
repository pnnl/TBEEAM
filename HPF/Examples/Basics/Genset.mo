within HPF.Examples.Basics;
model Genset
    inner HPF.SystemDef systemDef annotation(Placement(transformation(extent = {{-95.0,220.0},{-55.0,260.0}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Sources.MultiFuelGenerator multiFuelGenerator(fuelType = HPF.Sources.MultiFuelGenerator.FuelType.Diesel) annotation(Placement(transformation(extent = {{-97.66,-12.92},{-5.2,79.54}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Sources.ThreePhase.VoltageSource voltageSource annotation(Placement(transformation(extent = {{-95.85,146.59},{-32.23,210.21}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Loads.ThreePhase.AC_LoadIdealWye Three_Phase_Load(V_nom = 480,Q_nom = 500,P_nom = 100e4) annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{69.82,66.97},{138.4,135.55}},rotation = 0.0)));
    .Modelica.ComplexBlocks.Sources.ComplexStep complexStep(startTime = 1) annotation(Placement(transformation(extent = {{-30.23,-30.23},{30.23,30.23}},origin = {225.60000000000002,103.25},rotation = -180.0)));
equation
    connect(complexStep.y,Three_Phase_Load.S_input) annotation(Line(points = {{192.35,103.25},{165.375,103.25},{165.375,101.26},{138.4,101.26}},color = {160,160,164}));
    connect(Three_Phase_Load.hPin_A,voltageSource.pinP_phA) annotation(Line(points = {{69.82,128.69},{63.81999999999999,128.69},{63.81999999999999,216.21},{-24.28,216.21},{-24.28,210.21}},color = {92,53,102}));
    connect(voltageSource.pinP_phB,Three_Phase_Load.hPin_B) annotation(Line(points = {{-24.28,178.4},{22.769999999999996,178.4},{22.769999999999996,111.55},{69.82,111.55}},color = {92,53,102}));
    connect(Three_Phase_Load.hPin_C,voltageSource.pinP_phC) annotation(Line(points = {{69.82,94.4},{-24.28,94.4},{-24.28,146.59}},color = {92,53,102}));
    connect(Three_Phase_Load.hPin_N,voltageSource.pinN) annotation(Line(points = {{69.82,73.83},{-64.04,73.83},{-64.04,137.84}},color = {117,80,123}));
    connect(multiFuelGenerator.hPin_P,Three_Phase_Load.hPin_A) annotation(Line(points = {{-19.59,63.58},{25.114999999999995,63.58},{25.114999999999995,128.69},{69.82,128.69}},color = {92,53,102}));
    connect(Three_Phase_Load.hPin_B,multiFuelGenerator.hPin_P2) annotation(Line(points = {{69.82,111.55},{25.114999999999995,111.55},{25.114999999999995,37.69},{-19.59,37.69}},color = {92,53,102}));
    connect(Three_Phase_Load.hPin_C,multiFuelGenerator.hPin_P3) annotation(Line(points = {{69.82,94.4},{25.114999999999995,94.4},{25.114999999999995,10.87},{-19.59,10.87}},color = {92,53,102}));
    connect(Three_Phase_Load.hPin_N,multiFuelGenerator.hPin_N) annotation(Line(points = {{69.82,73.83},{63.81999999999999,73.83},{63.81999999999999,-21.939999999999998},{-18.66,-21.939999999999998},{-18.66,-15.94}},color = {117,80,123}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end Genset;