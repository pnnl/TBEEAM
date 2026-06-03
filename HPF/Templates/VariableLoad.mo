within HPF.Templates;
model VariableLoad
  extends HPF.Templates.Interfaces.PartialLoad(
    redeclare final HPF.DC.Variable_DC_Load dCLoad);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end VariableLoad;
