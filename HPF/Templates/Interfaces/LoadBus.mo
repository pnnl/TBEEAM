within HPF.Templates.Interfaces;
expandable connector LoadBus "Control bus for loads"
  extends Modelica.Icons.SignalBus;

  HPF.Templates.Interfaces.ComponentBus load "Load points"
    annotation (HideResult=false);

  annotation (
    defaultComponentName="bus", Documentation(info="<html>
<p>
This expandable connector provides a standard interface for
all control signals required by an air handler controller.
</p>
</html>"));
end LoadBus;
