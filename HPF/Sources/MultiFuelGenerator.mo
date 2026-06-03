within HPF.Sources;

model MultiFuelGenerator

  outer HPF.SystemDef systemDef;

  // Enumeration for fuel type
  type FuelType = enumeration(
    Diesel "Diesel fuel",
    NaturalGas "Natural gas",
    Propane "Propane fuel"
  ) "Available fuel types";

  // Parameters
  parameter FuelType fuelType = FuelType.Diesel "Select fuel type" annotation(
    Dialog(group = "Fuel Selection"));
  parameter Real P_nom = 100e3 "Nominal power in W";
  parameter Real V_nom = 480 "Nominal line-to-line voltage in V (RMS)";

  // Pins
  HPF.SinglePhase.Interface.HPin_P hPin_P(h = systemDef.numHrm) annotation(Placement(transformation(extent = {{58.88,55.47},{78.88,75.47}},origin = {0.0,0.0},rotation = 0.0)));
  HPF.SinglePhase.Interface.HPin_P hPin_P2(h = systemDef.numHrm) annotation(Placement(transformation(extent = {{58.88,-0.53},{78.88,19.47}},origin = {0.0,0.0},rotation = 0.0)));
  HPF.SinglePhase.Interface.HPin_P hPin_P3(h = systemDef.numHrm) annotation(Placement(transformation(extent = {{58.88,-58.53},{78.88,-38.53}},origin = {0.0,0.0},rotation = 0.0)));
  HPF.SinglePhase.Interface.HPin_N hPin_N(h = systemDef.numHrm) annotation(Placement(transformation(extent = {{60.88,-116.53},{80.88,-96.53}},origin = {0.0,0.0},rotation = 0.0)));

  // Internal single-phase voltage sources (one per phase)
  HPF.SinglePhase.Sources.VoltageSource vSrc_phA(vMag = vMag_phA, vArg = vArg_phA) annotation(Placement(transformation(origin = {-10,60},extent = {{-10,-10},{10,10}},rotation = 180)));
  HPF.SinglePhase.Sources.VoltageSource vSrc_phB(vMag = vMag_phB, vArg = vArg_phB) annotation(Placement(transformation(origin = {-10,10},extent = {{-10,-10},{10,10}},rotation = 180)));
  HPF.SinglePhase.Sources.VoltageSource vSrc_phC(vMag = vMag_phC, vArg = vArg_phC) annotation(Placement(transformation(origin = {-10,-40},extent = {{-10,-10},{10,10}},rotation = 180)));

  // Inputs
  input Real P_ref = P_nom "Reference active power (W, positive = generation)";
  input Boolean outage = false "True for outage, false for normal operation";

  // Outputs
  Real P_actual "Actual active power output (W)";
  Real fuel_rate "Fuel consumption rate (L/h for Diesel/Propane, m3/h for NaturalGas)";
  Real efficiency "Generator efficiency (0 to 1)";
  Real load_factor "Normalized load (P_actual / P_nom)";

protected
  constant Real pi = Modelica.Constants.pi;

  // Per-harmonic voltage magnitude and angle arrays fed to internal sources
  Real vMag_phA[systemDef.numHrm];
  Real vArg_phA[systemDef.numHrm];
  Real vMag_phB[systemDef.numHrm];
  Real vArg_phB[systemDef.numHrm];
  Real vMag_phC[systemDef.numHrm];
  Real vArg_phC[systemDef.numHrm];

equation
  // Set fundamental-frequency voltages; zero all higher harmonics.
  // When in outage, drive all magnitudes to zero.
  for h in 1:systemDef.numHrm loop
    vMag_phA[h] = if outage then 0.0 else if h == 1 then V_nom / sqrt(3) else 0.0;
    vArg_phA[h] = if h == 1 then 0.0 else 0.0;
    vMag_phB[h] = if outage then 0.0 else if h == 1 then V_nom / sqrt(3) else 0.0;
    vArg_phB[h] = if h == 1 then -2.0 * pi / 3.0 else 0.0;
    vMag_phC[h] = if outage then 0.0 else if h == 1 then V_nom / sqrt(3) else 0.0;
    vArg_phC[h] = if h == 1 then 2.0 * pi / 3.0 else 0.0;
  end for;

  // Measure active power delivered to load
  P_actual = sum(vSrc_phA.v[:].re .* vSrc_phA.i[:].re + vSrc_phA.v[:].im .* vSrc_phA.i[:].im) +
             sum(vSrc_phB.v[:].re .* vSrc_phB.i[:].re + vSrc_phB.v[:].im .* vSrc_phB.i[:].im) +
             sum(vSrc_phC.v[:].re .* vSrc_phC.i[:].re + vSrc_phC.v[:].im .* vSrc_phC.i[:].im);

  // Efficiency and fuel consumption (fuel-type coefficients inlined to avoid JModelica SortDependentParameters bug)
  load_factor = P_actual / P_nom;
  efficiency = if P_actual > 0 then
    max(0.1,
      (if fuelType == FuelType.Diesel then 0.15 elseif fuelType == FuelType.NaturalGas then 0.15 else 0.15) +
      (if fuelType == FuelType.Diesel then 0.4  elseif fuelType == FuelType.NaturalGas then 0.3  else 0.35) * load_factor -
      (if fuelType == FuelType.Diesel then 0.2  elseif fuelType == FuelType.NaturalGas then 0.15 else 0.17) * load_factor ^ 2)
    else 0.1;
  fuel_rate = if P_actual > 0 then
    (P_actual / efficiency) /
    (if fuelType == FuelType.Diesel then 35e6 elseif fuelType == FuelType.NaturalGas then 38e6 else 25.3e6)
    * 3600 else 0;

  // Connect internal per-phase sources to external pins
  connect(vSrc_phA.pin_p, hPin_P);
  connect(vSrc_phA.pin_n, hPin_N);
  connect(vSrc_phB.pin_p, hPin_P2);
  connect(vSrc_phB.pin_n, hPin_N);
  connect(vSrc_phC.pin_p, hPin_P3);
  connect(vSrc_phC.pin_n, hPin_N);

annotation(
  Documentation(info = "<html>
<p>Multi-fuel three-phase generator modelled as a harmonic voltage source.</p>
<p>Select fuel type (Diesel, NaturalGas, Propane) to configure fuel energy content and efficiency curve.</p>
<p>When <code>outage = false</code> the generator supplies a balanced three-phase voltage at V_nom / sqrt(3) (fundamental only).
When <code>outage = true</code> all phase voltages are set to zero.</p>
<p>Active power, efficiency, and fuel consumption rate are derived from the port currents and voltages.</p>
<p>Fuel rate is in L/h (Diesel or Propane) or m^3/h (NaturalGas).</p>
</html>"),
  Icon(graphics = {
    Rectangle(origin = {-10,-14}, extent = {{81,-114},{-81,114}}),
    Text(textString = "Generator", origin = {-6,-18}, extent = {{45,-15},{-45,15}})}));
end MultiFuelGenerator;