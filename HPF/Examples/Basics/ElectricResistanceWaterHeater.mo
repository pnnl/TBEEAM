within HPF.Examples.Basics;
model ElectricResistanceWaterHeater
import Modelica;
import Modelica.Fluid;
import Modelica.Thermal;
import Modelica.Electrical;
import Modelica.Blocks;

// Medium selection (standard water properties)
package Medium = Modelica.Media.Water.StandardWater;

// Global fluid system settings
inner Modelica.Fluid.System system(
p_start=3e5,
T_ambient=293.15
) annotation(Placement(transformation(extent={{-180,100},{-140,140}})));

// Tank: closed, pressurized vessel with heat port enabled
Modelica.Fluid.Vessels.ClosedVolume tank(
redeclare package Medium = Medium,
V=0.15,
nPorts=2,
use_HeatTransfer=true,
use_T_start=true,
T_start=333.15,
p_start=3e5,
portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.02), Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.02)}
) annotation(Placement(transformation(extent={{-20,60},{20,20}})));

// Inlet boundary: cold water mains
Modelica.Fluid.Sources.Boundary_pT coldInlet(
redeclare package Medium = Medium,
p=3e5,
T=288.15, nPorts=1
) annotation(Placement(transformation(extent={{-160.0,60.34},{-120.0,20.34}},rotation = 0.0,origin = {0.0,0.0})));

// Outlet draw: prescribed mass flow (negative draws from tank)
Modelica.Fluid.Sources.MassFlowSource_T draw(
redeclare package Medium = Medium,
use_m_flow_in=true,
T=288.15, nPorts=1
) annotation(Placement(transformation(extent={{120,60},{160,20}})));

// Electrical heater: 240 V DC feeding a ~3 kW resistor (R ≈ 19.2 Ω)
Electrical.Analog.Sources.ConstantVoltage Vdc(V=240)
annotation(Placement(transformation(extent={{-160.53,-20.0},{-120.53,-60.0}},rotation = 0.0,origin = {0.0,0.0})));
Electrical.Analog.Basic.Resistor heater(R=19.2, useHeatPort=true, T_ref=293.15)
annotation(Placement(transformation(extent={{0,-20},{40,-60}})));
Electrical.Analog.Basic.Ground ground
annotation(Placement(transformation(extent={{0,-100},{40,-140}})));
Electrical.Analog.Ideal.IdealClosingSwitch sw
annotation(Placement(transformation(extent={{-80,-20},{-40,-60}})));

// Thermostat: hysteresis based on tank fluid temperature
Blocks.Logical.Hysteresis thermostat(uLow=-338.15, uHigh=-333.15)
annotation(Placement(transformation(extent={{-120,120},{-80,80}})));
Blocks.Sources.RealExpression Tfluid(y=tank.medium.T)
annotation(Placement(transformation(extent={{20,120},{60,80}})));
Blocks.Math.Gain negate(k=-1)
annotation(Placement(transformation(extent={{-40,120},{0,80}})));

// Heat loss to ambient (UA = 5 W/K as an example)
Thermal.HeatTransfer.Components.ThermalConductor loss(G=5.0)
annotation(Placement(transformation(extent={{60,60},{100,20}})));
Thermal.HeatTransfer.Sources.FixedTemperature Tamb(T=293.15)
annotation(Placement(transformation(extent={{100,60},{140,20}})));

// Simple hot water demand: draw 0.05 kg/s (~3 L/min) for 8% of each hour
Blocks.Sources.Pulse drawPulse(
amplitude=-0.05,
width=1,
period=3600,
startTime=1800
) annotation(Placement(transformation(extent={{120,120},{160,80}})));

equation
// Fluid connections
connect(coldInlet.ports[1], tank.ports[1])
annotation(Line(points={{-120,40.34},{-120,40},{-20,40}}, color={0,127,255}));
connect(draw.ports[1], tank.ports[2])
annotation(Line(points={{120,40},{20,40}}, color={0,127,255}));

// Electrical connections
connect(Vdc.p, sw.p)
annotation(Line(points={{-160.53,-40},{-80,-40}}, color={0,0,0}));
connect(sw.n, heater.p)
annotation(Line(points={{-40,-40},{0,-40}}, color={0,0,0}));
connect(heater.n, ground.p)
annotation(Line(points={{40,-40},{40,-80},{20,-80},{20,-100}}, color={0,0,0}));
connect(Vdc.n, ground.p)
annotation(Line(points={{-120.53,-40},{-120.53,-80},{20,-80},{20,-100}}, color={0,0,0}));

// Thermostat control
connect(Tfluid.y, negate.u)
annotation(Line(points={{60,100},{0,100}}, color={0,0,127}));
connect(negate.y, thermostat.u)
annotation(Line(points={{-40,100},{-80,100}}, color={0,0,127}));
connect(sw.control, thermostat.y)
annotation(Line(points={{-60,-20},{-60,60},{-100,60},{-100,80}}, color={0,127,0}));

// Thermal connections: heater and losses into tank, losses to ambient
connect(heater.heatPort, tank.heatPort)
annotation(Line(points={{20,-20},{20,0},{0,0},{0,20}}, color={191,0,0}));
connect(tank.heatPort, loss.port_a)
annotation(Line(points={{0,20},{60,20}}, color={191,0,0}));
connect(loss.port_b, Tamb.port)
annotation(Line(points={{100,40},{100,40}}, color={191,0,0}));

// Demand schedule to mass flow source
connect(drawPulse.y, draw.m_flow_in)
annotation(Line(points={{160,100},{160,80},{140,80},{140,60}}, color={0,0,127}));

annotation(
Diagram(coordinateSystem(extent={{-200,-150},{200,150}}, preserveAspectRatio=false)),
experiment(StartTime=0, StopTime=10800, Tolerance=1e-6)
);

end ElectricResistanceWaterHeater;