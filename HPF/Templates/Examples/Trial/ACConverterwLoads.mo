within HPF.Templates.Examples.Trial;
model ACConverterwLoads
  extends HPF.Templates.ACConverterwLoads(
    redeclare HPF.PowerConverters.SinglePhase.ACDC_EmpMdl aCDC_ConverterBase(
    name=modelData.aCConverter.name,
    V_Rect=modelData.aCConverter.V_Rect,
    nomP=modelData.aCConverter.nomP,
    nomV=modelData.aCConverter.nomV,
    vAngle=modelData.aCConverter.vAngle,
    P_stby=modelData.aCConverter.P_stby,
    P_DCmin=modelData.aCConverter.P_DCmin,
      modelFileName=modelData.aCConverter.modelFileName),
     redeclare HPF.Templates.Examples.Trial.LoadwStepDown loadwStepDown(modelData=
         modelData.loadwStepDown));

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ACConverterwLoads;
