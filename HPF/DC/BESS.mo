within HPF.DC;
model BESS
  "Battery model with a controller for charge/discharge based on power reference"
 extends Modelica.Electrical.Analog.Interfaces.OnePort;
 // Parameters
 parameter Real capacity = 100 "Battery capacity in kWh";
 parameter Real maxPower = 10e3 "Max charge/discharge power in W";
 parameter Real nominalVoltage = 660 "Nominal battery voltage in V";
 parameter Real initialSOC = 0.5 "Initial State of Charge (0 to 1)";
 Real limitSOC(start=0) "limit of discharge in normal operation";
 // Variables
 Real SOC(start=initialSOC) "State of Charge (0 to 1)";
 //input Real P_ref "Reference power (positive = charge, negative = discharge)";
 // Controller parameters
 parameter Real epsilon = 0.1;
 parameter Real R_internal = 0.01; 
 Real P_actual "Actual power (v * i)";
 Real V_ref "SOC dependent reference voltage";
 Real scale_charge;
 Real scale_discharge;
 parameter Real bessThreshold = 250;
 
 .Modelica.Blocks.Interfaces.RealInput P_ref "Reference power (positive = charge, negative = discharge)" annotation(Placement(transformation(extent = {{-12.126974174863136,-12.126974174863136},{12.126974174863136,12.126974174863136}},origin = {0.0,-2.0},rotation = 90.0)));
    .Modelica.Blocks.Interfaces.BooleanInput outage annotation(Placement(transformation(extent = {{-19.999999999999996,-20.0},{19.999999999999996,20.0}},origin = {47.353563867325335,-3.4932956951305627},rotation = 90.0)));
    //.Modelica.Blocks.Interfaces.BooleanInput outage "True for outage, false for normal operation" annotation(Placement(transformation(extent = {{-12.378343178502355,-12.378343178502346},{12.378343178502355,12.378343178502346}},origin = {-36.0,-2.0},rotation = 90.0)));
  //  .Modelica.Blocks.Interfaces.BooleanInput outage annotation(Placement(transformation(extent = {{-12.437301524518984,-12.437301524518983},{12.437301524518984,12.437301524518983}},origin = {-30.0,-2.0},rotation = 90.0)));
 
equation  
 // Voltage depends on SOC
 V_ref = nominalVoltage * (0.9 + 0.2 * SOC); // 43.2V at SOC=0, 52.8V at SOC=1
 
 // Define scaling factors for smooth transitions
 scale_charge = if SOC < 1 - epsilon then 1 else (1 - SOC) / epsilon;
 scale_discharge = if SOC > (limitSOC + epsilon) then 1 else SOC / epsilon;
   
 limitSOC = if outage then 0 else 0.3;
    
 if SOC<limitSOC then
     i = if abs(P_ref) > 1e-6 then min(maxPower / max(V_ref, 1e-6), abs(P_ref) / max(V_ref, 1e-6)) * scale_charge
         //else if P_ref < 1e-6 then max(-maxPower / max(V_ref, 1e-6), P_ref / max(V_ref, 1e-6)) * scale_discharge
         else 0;
 else
    if outage then
     i = //if P_ref >= -bessThreshold then min(maxPower / max(V_ref, 1e-6), abs(P_ref) / max(V_ref, 1e-6)) * scale_charge
         //else 
            if P_ref <= -1e-6 then max(-maxPower / max(V_ref, 1e-6), P_ref / max(V_ref, 1e-6)) * scale_discharge
            else 0;
    else
     i = if abs(P_ref) >= 1e-6 then min(maxPower / max(V_ref, 1e-6), abs(P_ref) / max(V_ref, 1e-6)) * scale_charge
         //else if P_ref <= -bessThreshold then max(-maxPower / max(V_ref, 1e-6), P_ref / max(V_ref, 1e-6)) * scale_discharge
         else 0;
    end if;
 end if;

 // Power and SOC dynamics
 P_actual = v * i;
 der(SOC) = P_actual / (capacity * 3.6e6);
annotation(
 Documentation(info="<html>
<p>Current-controlled battery with voltage dependent on SOC.</p>
<p>Tracks P_ref with smooth transitions at SOC limits.</p>
<p>Voltage drops from 52.8V (SOC=1) to 43.2V (SOC=0).</p>
</html>"),Icon(graphics = {Rectangle(origin={-2,-62},extent={{-123.60788200494197,60.18426586264059},{124,-60}}),Text(textString="+",origin={-58,-77},extent={{58,-53},{-58,53}}),Text(textString="–",origin={60,-70},extent={{58,-53},{-58,53}}),Text(textString="Text",origin={-18,-134},extent={{-0.3712208374574928,0.16971328756912385},{0,0}}),Text(textString="%name",origin={0,-138},extent={{90,-12},{-90,12}})}));   
end BESS;