within HPF.Templates.Interfaces;
expandable connector ComponentBus "Control bus for components"
  extends Modelica.Icons.SignalBus;

  annotation (
    defaultComponentName="bus", Documentation(info="<html>
<p>
This expandable connector provides a standard interface for
all control signals required by an air handler controller.
</p>
</html>"));
end ComponentBus;
