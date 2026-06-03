within HPF.Templates;
model DCLoad "Component template for DC load"
  extends HPF.Templates.Interfaces.PartialLoad(
    redeclare final HPF.DC.DC_Load dCLoad(pwr=pwr));
  parameter Modelica.Units.SI.Power pwr=1 "Power consumption of load";
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end DCLoad;
