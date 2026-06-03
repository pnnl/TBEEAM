within HPF.Templates.Examples;

model medoff_template_DCconnectedPV
    inner parameter Real PF = 0.95;
    inner parameter Real PF1 = tan(acos(PF));
    parameter Real Vs = 7200;
    parameter Real kp = 3;
    parameter Real ks = 1;
    parameter Real km = 3;
    parameter Integer nconverter_lumA = modelData.nconverter_lumA;
    parameter Integer nconverter_lumB = modelData.nconverter_lumB;
    parameter Integer nconverter_lumC = modelData.nconverter_lumC;
    parameter Integer nconverter_melA = modelData.nconverter_melA;
    parameter Integer nconverter_melB = modelData.nconverter_melB;
    parameter Integer nconverter_melC = modelData.nconverter_melC;
    parameter Integer nconverter_ACmelA = modelData.nconverter_ACmelA;
    parameter Integer nconverter_ACmelB = modelData.nconverter_ACmelB;
    parameter Integer nconverter_ACmelC = modelData.nconverter_ACmelC;    
    parameter Real stepdown[1];
    
    .HPF.SinglePhase.Components.Ground GndAC annotation(Placement(HideResult = true,visible = true,transformation(origin = {0,0},extent = {{0,-136},{16,-120}},rotation = 0)));
    .HPF.SinglePhase.Components.Ground GndAC2 annotation(Placement(HideResult = true,visible = true,transformation(origin = {0,0},extent = {{-110,-108},{-94,-92}},rotation = 0)));

    replaceable parameter .HPF.Templates.Data.Examples.medium_office_light_mel_DCConnected_length modelData annotation(Placement(transformation(extent = {{-79.44,80.0},{-43.44,116.0}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.Transformers.ThreePhase.Symmetric.D1Y Dist_Xmer(Xs = 0.00665 * ks,Xp = 4.4882 * kp,Xm = 10366.7 * km,Rs = 0.0006488 * ks,Rp = 0.43785 * kp,Rc = 110450.1 * km,VSecRated = 480,VPrimRated = 12470) annotation(Placement(visible = true,transformation(extent = {{-32,-76},{18,-36}},rotation = 0,origin = {0,0})));
    
    inner .HPF.SystemDef systemDef(numPh = 3,hrms = {1},fs = 5000,fFund = 60) annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{-81.92,11.39},{-49.92,38.81}},rotation = 0.0)));
    
    .HPF.Sources.ThreePhase.VoltageSource voltageSource(vMag_phC = {Vs},vMag_phB = {Vs},vMag_phA = {Vs},vArg_phC = {2.0944},vArg_phB = {-2.0944},vArg_phA = {0}) annotation(Placement(visible = true,transformation(origin = {0,0},extent = {{-90,-66},{-70,-46}},rotation = 0)));
    
    .HPF.PowerConverters.ThreePhase.ACDC_3pBidirectionalSimple Simple_Bidirectional_3phase(Q1(start = 0),PF = +0.95,gamma_DCAC = 0.013725159,gamma_ACDC = 0.033250334,beta_DCAC = 0.01136924,beta_ACDC = -0.013106201,alpha_DCAC = 0.005765519,alpha_ACDC = 0.011660807,vAngle = 0,VDC_nom = 380,VAC_nom = 277,P_nom = 100000) annotation(Placement(visible = true,transformation(origin = {0,0},extent = {{82,-60},{124,-20}},rotation = 0)));
    
    .Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical2(startTime(displayUnit = "h") = 0,offset = {0},timeScale(displayUnit = "h") = 3600,extrapolation = .Modelica.Blocks.Types.Extrapolation.HoldLastPoint,smoothness = .Modelica.Blocks.Types.Smoothness.ConstantSegments,fileName = .ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/pv_san_diego_roof.txt"),tableName = "pv_profile",tableOnFile = true) annotation(HideResult = true,Placement(transformation(extent = {{14.45,-210.68},{34.45,-190.68}},rotation = 0.0,origin = {0.0,0.0})));
    
    .Modelica.Electrical.Analog.Basic.Ground Ground_DC annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{183.39,-266.15},{203.39,-246.15}},rotation = 0.0)));
    
    .HPF.DC.DC2DC_Converters.DC_DC_MPPT dC_DC_MPPT(beta = -0.00332819,P_nom = 175000,gamma = 0.026130021,alpha = 0.006078996) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {84.45,-198.68},rotation = -90.0)));
    
    .Modelica.Blocks.Math.Gain gain2(k = 0) annotation(Placement(transformation(extent = {{48.45,-210.68},{68.45,-190.68}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.PowerConverters.ThreePhase.ACDC_3pInverterSimpleGridForming Simple_Inverter_Grid_Forming(vMag_ref = 120,vArg_ref = 0.52359877559829833278,vAngle = 2.61799387799149166389,gamma = 0.015653292,beta = 0.013024277,alpha = 0.006933206,VDC_nom = 380,VAC_nom = 120,P_stby = 1.58,P_nom = 2000,P_ACmin = 26.26) annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{180.02,120.95},{146.02,152.95}},rotation = 0.0)));
    
    
    .HPF.DC.DC2DC_Converters.StepDown dclumconv_phaseA[modelData.nconverter_lumA](modelData = modelData.dclumconv_phaseA) annotation(Placement(transformation(extent = {{266.99,20.94},{286.99,40.94}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.DC.DC2DC_Converters.StepDown dclumconv_phaseB[modelData.nconverter_lumB](modelData = modelData.dclumconv_phaseB) annotation(Placement(transformation(extent = {{268.16,-24.84},{288.16,-4.84}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.DC.DC2DC_Converters.StepDown dclumconv_phaseC[modelData.nconverter_lumC](modelData = modelData.dclumconv_phaseC) annotation(Placement(transformation(extent = {{268.17,-71.94},{288.17,-51.94}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.DC.DC2DC_Converters.StepDown dcmelconv_phaseA[modelData.nconverter_melA](modelData = modelData.dcmelconv_phaseA) annotation(Placement(transformation(extent = {{268.18,-119.36},{288.18,-99.36}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.DC.DC2DC_Converters.StepDown dcmelconv_phaseB[modelData.nconverter_melB](modelData = modelData.dcmelconv_phaseB) annotation(Placement(transformation(extent = {{269.35,-165.59},{289.35,-145.59}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.DC.DC2DC_Converters.StepDown dcmelconv_phaseC[modelData.nconverter_melC](modelData = modelData.dcmelconv_phaseC) annotation(Placement(transformation(extent = {{268.57,-212.24},{288.57,-192.24}},origin = {0.0,0.0},rotation = 0.0)));
    
    
    .HPF.Templates.LoadwStepDown lum_phaseA[modelData.nStepDown_lumA](redeclare replaceable .HPF.DC.DC2DC_Converters.StepDown dcdc_Converter, modelData=
         modelData.lum_phaseA) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {355.29,31.79},rotation = -90.0)));
    .HPF.Templates.LoadwStepDown lum_phaseB[modelData.nStepDown_lumB](redeclare replaceable .HPF.DC.DC2DC_Converters.StepDown dcdc_Converter, modelData=
         modelData.lum_phaseB) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {355.71,-15.129999999999999},rotation = -90.0)));
    .HPF.Templates.LoadwStepDown lum_phaseC[modelData.nStepDown_lumC](redeclare replaceable .HPF.DC.DC2DC_Converters.StepDown dcdc_Converter, modelData=
         modelData.lum_phaseC) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {356.87,-62.78},rotation = -90.0)));
    .HPF.Templates.LoadwStepDown mel_phaseA[modelData.nStepDown_melA](redeclare replaceable .HPF.DC.DC2DC_Converters.StepDown dcdc_Converter, modelData=
         modelData.mel_phaseA) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {356.81,-109.07},rotation = -90.0)));
    .HPF.Templates.LoadwStepDown mel_phaseB[modelData.nStepDown_melB](redeclare replaceable .HPF.DC.DC2DC_Converters.StepDown dcdc_Converter, modelData=
         modelData.mel_phaseB) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {357.23,-155.99},rotation = -90.0)));
    .HPF.Templates.LoadwStepDown mel_phaseC[modelData.nStepDown_melC](redeclare replaceable .HPF.DC.DC2DC_Converters.StepDown dcdc_Converter, modelData=
         modelData.mel_phaseC) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {358.39,-203.64},rotation = -90.0)));
    
    
    .HPF.Cables.NEC_CableModelDC poecable_lum_phaseA[modelData.nStepDown_lumA] annotation(Placement(transformation(extent = {{305.73,31.09},{325.73,51.09}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC poecable_lum_phaseB[modelData.nStepDown_lumB] annotation(Placement(transformation(extent = {{305.73,-15.33},{325.73,4.67}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC poecable_lum_phaseC[modelData.nStepDown_lumC] annotation(Placement(transformation(extent = {{309.25,-61.74},{329.25,-41.74}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC poecable_mel_phaseA[modelData.nStepDown_melA] annotation(Placement(transformation(extent = {{305.73,-110.09},{325.73,-90.09}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC poecable_mel_phaseB[modelData.nStepDown_melB] annotation(Placement(transformation(extent = {{309.25,-156.5},{329.25,-136.5}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC poecable_mel_phaseC[modelData.nStepDown_melC] annotation(Placement(transformation(extent = {{309.25,-202.91},{329.25,-182.91}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC dccable_lumconv_phaseA[modelData.nconverter_lumA] annotation(Placement(transformation(extent = {{236.01,31.09},{256.01,51.09}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC dccable_lumconv_phaseB[modelData.nconverter_lumB] annotation(Placement(transformation(extent = {{234.69,-16.06},{254.69,3.94}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC dccable_lumconv_phaseC[modelData.nconverter_lumC] annotation(Placement(transformation(extent = {{235.27,-61.74},{255.27,-41.74}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC dccable_melconv_phaseA[modelData.nconverter_melA] annotation(Placement(transformation(extent = {{235.27,-110.09},{255.27,-90.09}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC dccable_melconv_phaseB[modelData.nconverter_melB] annotation(Placement(transformation(extent = {{235.27,-156.5},{255.27,-136.5}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC dccable_melconv_phaseC[modelData.nconverter_melC] annotation(Placement(transformation(extent = {{235.27,-202.91},{255.27,-182.91}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Electrical.Analog.Basic.Ground Ground_DC2 annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{165.42,40.86},{176.48,51.92}},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC dccable_lumphaseA annotation(Placement(transformation(extent = {{185.18,5.58},{205.18,25.58}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC dccable_lumphaseB annotation(Placement(transformation(extent = {{185.18,-12.34},{205.18,7.66}},origin = {0,0},rotation = 0)));
    .HPF.Cables.NEC_CableModelDC dccable_lumphaseC annotation(Placement(transformation(extent = {{185.18,-30.75},{205.18,-10.75}},origin = {0,0},rotation = 0)));
    .HPF.Cables.NEC_CableModelDC dccable_melphaseA annotation(Placement(transformation(extent = {{189.97,-122.83},{209.97,-102.83}},origin = {0,0},rotation = 0)));
    .HPF.Cables.NEC_CableModelDC dccable_melphaseB annotation(Placement(transformation(extent = {{189.97,-141.25},{209.97,-121.25}},origin = {0,0},rotation = 0)));
    .HPF.Cables.NEC_CableModelDC dccable_melphaseC annotation(Placement(transformation(extent = {{189.97,-159.66},{209.97,-139.66}},origin = {0,0},rotation = 0)));
    
    .HPF.Templates.LoadwStepDown ACmel_phaseA[modelData.nStepDown_ACmelA](modelData = modelData.ACmel_phaseA,redeclare replaceable .HPF.DC.DC2DC_Converters.DummyShort dcdc_Converter) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {354.16,170.61},rotation = -90.0)));
    
    .HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple ACmelconv_phaseA[modelData.nconverter_ACmelA](gamma = modelData.ACmelconv_phaseA.gamma,beta = modelData.ACmelconv_phaseA.beta,alpha = modelData.ACmelconv_phaseA.alpha,P_DCmin = modelData.ACmelconv_phaseA.P_DCmin,P_stby = modelData.ACmelconv_phaseA.P_stby,vAngle = modelData.ACmelconv_phaseA.vAngle,VAC_nom = modelData.ACmelconv_phaseA.nomV,P_nom = modelData.ACmelconv_phaseA.nomP,VDC_nom = modelData.ACmelconv_phaseA.V_Rect) annotation(Placement(transformation(extent = {{277.76,159.05},{297.76,179.05}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.Cables.NEC_CableModelDC dccable_acmelA[modelData.nStepDown_ACmelA] annotation(Placement(transformation(extent = {{308.16,168.61},{328.16,188.61}},origin = {0.0,0.0},rotation = 0.0)));
   
    .HPF.Cables.NEC_CableModel accable_acmelconvA[modelData.nconverter_ACmelA](wireGaugeAC = .HPF.Types.WireGaugeAC.gauge_12) annotation(Placement(transformation(extent = {{249.93,166.48},{269.93,186.48}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.DC.Ground ground annotation(Placement(transformation(extent = {{388.66,107.15},{400.82,119.31}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple ACmelconv_phaseB[modelData.nStepDown_ACmelB](gamma = modelData.ACmelconv_phaseB.gamma,beta = modelData.ACmelconv_phaseB.beta,alpha = modelData.ACmelconv_phaseB.alpha,P_DCmin = modelData.ACmelconv_phaseB.P_DCmin,P_stby = modelData.ACmelconv_phaseB.P_stby,vAngle = modelData.ACmelconv_phaseB.vAngle,VAC_nom = modelData.ACmelconv_phaseB.nomV,P_nom = modelData.ACmelconv_phaseB.nomP,VDC_nom = modelData.ACmelconv_phaseB.V_Rect) annotation(Placement(transformation(extent = {{276.96,118.11},{296.96,138.11}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.Cables.NEC_CableModelDC dccable_acmelB[modelData.nStepDown_ACmelB] annotation(Placement(transformation(extent = {{306.96,130.11},{326.96,150.11}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.Templates.LoadwStepDown ACmel_phaseB[modelData.nStepDown_ACmelB](modelData = modelData.ACmel_phaseB,redeclare replaceable 
    .HPF.DC.DC2DC_Converters.DummyShort dcdc_Converter) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {355.53,132.11},rotation = -90.0)));
    
    .HPF.Cables.NEC_CableModel accable_acmelconvB[modelData.nconverter_ACmelB](wireGaugeAC = .HPF.Types.WireGaugeAC.gauge_12) annotation(Placement(transformation(extent = {{248.96,126.61},{268.96,146.61}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple ACmelconv_phaseC[modelData.nStepDown_ACmelC](gamma = modelData.ACmelconv_phaseC.gamma,beta = modelData.ACmelconv_phaseC.beta,alpha = modelData.ACmelconv_phaseC.alpha,P_DCmin = modelData.ACmelconv_phaseC.P_DCmin,P_stby = modelData.ACmelconv_phaseC.P_stby,vAngle = modelData.ACmelconv_phaseC.vAngle,VAC_nom = modelData.ACmelconv_phaseC.nomV,P_nom = modelData.ACmelconv_phaseC.nomP,VDC_nom = modelData.ACmelconv_phaseC.V_Rect) annotation(Placement(transformation(extent = {{276.96,82.11},{296.96,102.11}},origin = {0.0,0.0},rotation = 0.0)));
   
    .HPF.Cables.NEC_CableModelDC dccable_acmelC[modelData.nStepDown_ACmelC] annotation(Placement(transformation(extent = {{306.96,94.11},{326.96,114.11}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.Templates.LoadwStepDown ACmel_phaseC[modelData.nStepDown_ACmelC](modelData = modelData.ACmel_phaseC,redeclare replaceable .HPF.DC.DC2DC_Converters.DummyShort dcdc_Converter) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {355.53,95.08},rotation = -90.0)));
    
    .HPF.Cables.NEC_CableModel accable_acmelconvC[modelData.nconverter_ACmelC] annotation(Placement(transformation(extent = {{246.96,92.61},{266.96,112.61}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.Cables.NEC_CableModel accable_acmelphaseA annotation(Placement(transformation(extent = {{222.96,166.61},{242.96,186.61}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModel accable_acmelphaseB annotation(Placement(transformation(extent = {{220.96,126.61},{240.96,146.61}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Cables.NEC_CableModel accable_acmelphaseC annotation(Placement(transformation(extent = {{216.96,92.61},{236.96,112.61}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.SinglePhase.Components.Ground ground2 annotation(Placement(transformation(extent = {{261.95,60.05},{277.95,76.05}},origin = {0.0,0.0},rotation = 0.0)));
    
    .HPF.Templates.ACload aCload(aC_LoadIdealWye(P_nom = 100,V_nom = 277),ac_schedule(tableName = "Mechanical",fileName = .ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/loads_15min.txt"),timeScale = 3600,columns = {3})) annotation(Placement(transformation(extent = {{18.32,-18.32},{-18.32,18.32}},origin = {63.43,106.6},rotation = 90.0)));
    
    .HPF.Templates.ACload aCload2(ac_schedule(tableName = "Mechanical",fileName = .ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/loads_15min.txt"),timeScale = 3600,columns = {2}),aC_LoadIdealWye(P_nom = 100,V_nom = 277)) annotation(Placement(transformation(extent = {{18.48,-18.48},{-18.48,18.48}},origin = {23.99,106.45},rotation = 90.0)));

    
equation
    for i in 1:nconverter_lumA loop
            if i>1 then
                 for j in (sum(modelData.stepDown_indices_lumA[1:(i-1)])+1):(sum(modelData.stepDown_indices_lumA[1:(i-1)])+modelData.stepDown_indices_lumA[i]) loop
                          connect(dclumconv_phaseA[i].p2,poecable_lum_phaseA[j].p) annotation(Line(points = {{286.99,40.94},{286.99,46.94},{299.73,46.94},{299.73,41.09},{305.73,41.09}},color = {0,0,255}));
                          connect(poecable_lum_phaseA[j].n,lum_phaseA[j].p) annotation(Line(points = {{325.73,41.09},{331.73,41.09},{331.73,47.79},{355.29,47.79},{355.29,41.79}},color = {0,0,255}));
                          connect(dclumconv_phaseA[i].n2,lum_phaseA[j].n) annotation(Line(points = {{286.99,20.94},{286.99,14.940000000000001},{355.29,14.940000000000001},{355.29,21.79}},color = {0,0,255}));
                          connect(lum_phaseA[j].n,Ground_DC.p) annotation(Line(points = {{355.29,21.79},{376.83,21.79},{376.83,-246.15},{193.39,-246.15}},color = {0,0,255}));
                          
                 end for;
                 
             else
                 for j in (1:modelData.stepDown_indices_lumA[1]) loop
                          connect(dclumconv_phaseA[1].p2,poecable_lum_phaseA[j].p) annotation(Line(points = {{286.99,40.94},{286.99,46.94},{299.73,46.94},{299.73,41.09},{305.73,41.09}},color = {0,0,255}));
                          connect(poecable_lum_phaseA[j].n,lum_phaseA[j].p) annotation(Line(points = {{325.73,41.09},{331.73,41.09},{331.73,47.79},{355.29,47.79},{355.29,41.79}},color = {0,0,255}));
                          connect(dclumconv_phaseA[1].n2,lum_phaseA[j].n) annotation(Line(points = {{286.99,20.94},{286.99,14.940000000000001},{355.29,14.940000000000001},{355.29,21.79}},color = {0,0,255}));
                          connect(lum_phaseA[j].n,Ground_DC.p) annotation(Line(points = {{355.29,21.79},{376.83,21.79},{376.83,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
            end if;
                 connect(dccable_lumphaseA.n,dccable_lumconv_phaseA[i].p) annotation(Line(points = {{205.18,15.58},{220.6,15.58},{220.6,41.09},{236.01,41.09}},color = {0,0,255}));
                 connect(dccable_lumconv_phaseA[i].n,dclumconv_phaseA[i].p1) annotation(Line(points = {{256.01,41.09},{262.01,41.09},{262.01,46.94},{266.99,46.94},{266.99,40.94}},color = {0,0,255}));
                 connect(dclumconv_phaseA[i].n1,Ground_DC.p) annotation(Line(points = {{266.99,20.94},{261.74,20.94},{261.74,-246.15},{193.39,-246.15}},color = {0,0,255}));
     end for;

     for i in 1:nconverter_lumB loop
            if i>1 then
                 for j in (sum(modelData.stepDown_indices_lumB[1:(i-1)])+1):(sum(modelData.stepDown_indices_lumB[1:(i-1)])+modelData.stepDown_indices_lumB[i]) loop
                          connect(dclumconv_phaseB[i].p2,poecable_lum_phaseB[j].p) annotation(Line(points = {{288.16,-4.84},{288.16,1.1600000000000001},{299.73,1.1600000000000001},{299.73,-5.33},{305.73,-5.33}},color = {0,0,255}));
                          connect(poecable_lum_phaseB[j].n,lum_phaseB[j].p) annotation(Line(points = {{325.73,-5.33},{331.73,-5.33},{331.73,0.8700000000000001},{355.71,0.8700000000000001},{355.71,-5.13}},color = {0,0,255}));
                          connect(dclumconv_phaseB[i].n2,lum_phaseB[j].n) annotation(Line(points = {{288.16,-24.84},{288.16,-31.13},{355.71,-31.13},{355.71,-25.13}},color = {0,0,255}));
                          connect(lum_phaseB[j].n,Ground_DC.p) annotation(Line(points = {{355.71,-25.13},{376.2,-25.13},{376.2,-246.15},{193.39,-246.15}},color = {0,0,255}));
                          
                 end for;
                 
             else
                 for j in (1:modelData.stepDown_indices_lumB[1]) loop
                          connect(dclumconv_phaseB[1].p2,poecable_lum_phaseB[j].p) annotation(Line(points = {{286.99,40.94},{286.99,46.94},{299.73,46.94},{299.73,41.09},{305.73,41.09}},color = {0,0,255}));
                          connect(poecable_lum_phaseB[j].n,lum_phaseB[j].p) annotation(Line(points = {{325.73,41.09},{331.73,41.09},{331.73,47.79},{355.29,47.79},{355.29,41.79}},color = {0,0,255}));
                          connect(dclumconv_phaseB[1].n2,lum_phaseB[j].n) annotation(Line(points = {{286.99,20.94},{286.99,14.940000000000001},{355.29,14.940000000000001},{355.29,21.79}},color = {0,0,255}));
                          connect(lum_phaseB[j].n,Ground_DC.p) annotation(Line(points = {{355.29,21.79},{376.83,21.79},{376.83,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
            end if;
                 connect(dccable_lumphaseB.n,dccable_lumconv_phaseB[i].p) annotation(Line(points = {{205.18,-2.34},{219.935,-2.34},{219.935,-6.06},{234.69,-6.06}},color = {0,0,255}));
                 connect(dccable_lumconv_phaseB[i].n,dclumconv_phaseB[i].p1) annotation(Line(points = {{254.69,-6.06},{260.69,-6.06},{260.69,1.1600000000000001},{268.16,1.1600000000000001},{268.16,-4.84}},color = {0,0,255}));
                 connect(dclumconv_phaseB[i].n1,Ground_DC.p) annotation(Line(points = {{268.16,-24.84},{261.86,-24.84},{261.86,-246.15},{193.39,-246.15}},color = {0,0,255}));             
     end for;
 
     for i in 1:nconverter_lumC loop
            if i>1 then
                 for j in (sum(modelData.stepDown_indices_lumC[1:(i-1)])+1):(sum(modelData.stepDown_indices_lumC[1:(i-1)])+modelData.stepDown_indices_lumC[i]) loop
                          connect(dclumconv_phaseC[i].p2,poecable_lum_phaseC[j].p) annotation(Line(points = {{288.17,-51.94},{288.17,-45.94},{303.25,-45.94},{303.25,-51.74},{309.25,-51.74}},color = {0,0,255}));
                          connect(poecable_lum_phaseC[j].n,lum_phaseC[j].p) annotation(Line(points = {{329.25,-51.74},{335.25,-51.74},{335.25,-46.78},{356.87,-46.78},{356.87,-52.78}},color = {0,0,255}));
                          connect(dclumconv_phaseC[i].n2,lum_phaseC[j].n) annotation(Line(points = {{288.17,-71.94},{288.17,-78.78},{356.87,-78.78},{356.87,-72.78}},color = {0,0,255}));
                          connect(lum_phaseC[j].n,Ground_DC.p) annotation(Line(points = {{356.87,-72.78},{376.31,-72.78},{376.31,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
                 
             else
                 for j in (1:modelData.stepDown_indices_lumC[1]) loop
                          connect(dclumconv_phaseC[1].p2,poecable_lum_phaseC[j].p) annotation(Line(points = {{288.17,-51.94},{288.17,-45.94},{303.25,-45.94},{303.25,-51.74},{309.25,-51.74}},color = {0,0,255}));
                          connect(poecable_lum_phaseC[j].n,lum_phaseC[j].p) annotation(Line(points = {{329.25,-51.74},{335.25,-51.74},{335.25,-46.78},{356.87,-46.78},{356.87,-52.78}},color = {0,0,255}));
                          connect(dclumconv_phaseC[1].n2,lum_phaseC[j].n) annotation(Line(points = {{288.17,-71.94},{288.17,-78.78},{356.87,-78.78},{356.87,-72.78}},color = {0,0,255}));
                          connect(lum_phaseC[j].n,Ground_DC.p) annotation(Line(points = {{356.87,-72.78},{376.31,-72.78},{376.31,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
            end if;
                 connect(dccable_lumphaseC.n,dccable_lumconv_phaseC[i].p) annotation(Line(points = {{205.18,-20.75},{220.22500000000002,-20.75},{220.22500000000002,-51.74},{235.27,-51.74}},color = {0,0,255}));
                 connect(dccable_lumconv_phaseC[i].n,dclumconv_phaseC[i].p1) annotation(Line(points = {{255.27,-51.74},{261.27,-51.74},{261.27,-45.94},{268.17,-45.94},{268.17,-51.94}},color = {0,0,255}));
                 connect(dclumconv_phaseC[i].n1,Ground_DC.p) annotation(Line(points = {{268.17,-71.94},{261.87,-71.94},{261.87,-246.15},{193.39,-246.15}},color = {0,0,255}));
     end for;

     for i in 1:nconverter_melA loop
            if i>1 then
                 for j in (sum(modelData.stepDown_indices_melA[1:(i-1)])+1):(sum(modelData.stepDown_indices_melA[1:(i-1)])+modelData.stepDown_indices_melA[i]) loop
                          connect(dcmelconv_phaseA[i].p2,poecable_mel_phaseA[j].p) annotation(Line(points = {{288.18,-99.36},{288.18,-93.36},{299.73,-93.36},{299.73,-100.09},{305.73,-100.09}},color = {0,0,255}));
                          connect(poecable_mel_phaseA[j].n,mel_phaseA[j].p) annotation(Line(points = {{325.73,-100.09},{331.73,-100.09},{331.73,-93.07},{356.81,-93.07},{356.81,-99.07}},color = {0,0,255}));
                          connect(dcmelconv_phaseA[i].n2,mel_phaseA[j].n) annotation(Line(points = {{288.18,-119.36},{288.18,-125.36},{356.81,-125.36},{356.81,-119.07}},color = {0,0,255}));
                          connect(mel_phaseA[j].n,Ground_DC.p) annotation(Line(points = {{356.81,-119.07},{376.25,-119.07},{376.25,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
                 
             else
                 for j in (1:modelData.stepDown_indices_melA[1]) loop
                          connect(dcmelconv_phaseA[1].p2,poecable_mel_phaseA[j].p) annotation(Line(points = {{288.18,-99.36},{288.18,-93.36},{299.73,-93.36},{299.73,-100.09},{305.73,-100.09}},color = {0,0,255}));
                          connect(poecable_mel_phaseA[j].n,mel_phaseA[j].p) annotation(Line(points = {{325.73,-100.09},{331.73,-100.09},{331.73,-93.07},{356.81,-93.07},{356.81,-99.07}},color = {0,0,255}));
                          connect(dcmelconv_phaseA[1].n2,mel_phaseA[j].n) annotation(Line(points = {{288.18,-119.36},{288.18,-125.36},{356.81,-125.36},{356.81,-119.07}},color = {0,0,255}));
                          connect(mel_phaseA[j].n,Ground_DC.p) annotation(Line(points = {{356.81,-119.07},{376.25,-119.07},{376.25,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
            end if;
                 connect(dccable_melphaseA.n,dccable_melconv_phaseA[i].p) annotation(Line(points = {{209.97,-112.83},{222.62,-112.83},{222.62,-100.09},{235.27,-100.09}},color = {0,0,255}));
                 connect(dccable_melconv_phaseA[i].n,dcmelconv_phaseA[i].p1) annotation(Line(points = {{255.27,-100.09},{261.27,-100.09},{261.27,-93.36},{268.18,-93.36},{268.18,-99.36}},color = {0,0,255}));
                 connect(dcmelconv_phaseA[i].n1,Ground_DC.p) annotation(Line(points = {{268.18,-119.36},{261.35,-119.36},{261.35,-246.15},{193.39,-246.15}},color = {0,0,255}));
     end for;

     for i in 1:nconverter_melB loop
            if i>1 then
                 for j in (sum(modelData.stepDown_indices_melB[1:(i-1)])+1):(sum(modelData.stepDown_indices_melB[1:(i-1)])+modelData.stepDown_indices_melB[i]) loop
                          connect(dcmelconv_phaseB[i].p2,poecable_mel_phaseB[j].p) annotation(Line(points = {{289.35,-145.59},{289.35,-139.59},{303.25,-139.59},{303.25,-146.5},{309.25,-146.5}},color = {0,0,255}));
                          connect(poecable_mel_phaseB[j].n,mel_phaseB[j].p) annotation(Line(points = {{329.25,-146.5},{335.25,-146.5},{335.25,-139.99},{357.23,-139.99},{357.23,-145.99}},color = {0,0,255}));
                          connect(dcmelconv_phaseB[i].n2,mel_phaseB[j].n) annotation(Line(points = {{289.35,-165.59},{289.35,-171.99},{357.23,-171.99},{357.23,-165.99}},color = {0,0,255}));
                          connect(mel_phaseB[j].n,Ground_DC.p) annotation(Line(points = {{357.23,-165.99},{376.67,-165.99},{376.67,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
                 
             else
                 for j in (1:modelData.stepDown_indices_melB[1]) loop
                          connect(dcmelconv_phaseB[1].p2,poecable_mel_phaseB[j].p) annotation(Line(points = {{289.35,-145.59},{289.35,-139.59},{303.25,-139.59},{303.25,-146.5},{309.25,-146.5}},color = {0,0,255}));
                          connect(poecable_mel_phaseB[j].n,mel_phaseB[j].p) annotation(Line(points = {{329.25,-146.5},{335.25,-146.5},{335.25,-139.99},{357.23,-139.99},{357.23,-145.99}},color = {0,0,255}));
                          connect(dcmelconv_phaseB[1].n2,mel_phaseB[j].n) annotation(Line(points = {{289.35,-165.59},{289.35,-171.99},{357.23,-171.99},{357.23,-165.99}},color = {0,0,255}));
                          connect(mel_phaseB[j].n,Ground_DC.p) annotation(Line(points = {{357.23,-165.99},{376.67,-165.99},{376.67,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
            end if;
                 connect(dccable_melphaseB.n,dccable_melconv_phaseB[i].p) annotation(Line(points = {{209.97,-131.25},{222.62,-131.25},{222.62,-146.5},{235.27,-146.5}},color = {0,0,255}));
                 connect(dccable_melconv_phaseB[i].n,dcmelconv_phaseB[i].p1) annotation(Line(points = {{255.27,-146.5},{261.27,-146.5},{261.27,-139.59},{269.35,-139.59},{269.35,-145.59}},color = {0,0,255}));
                 connect(dcmelconv_phaseB[i].n1,Ground_DC.p) annotation(Line(points = {{269.35,-165.59},{261.99,-165.59},{261.99,-246.15},{193.39,-246.15}},color = {0,0,255}));
     end for;

     for i in 1:nconverter_melC loop
            if i>1 then
                 for j in (sum(modelData.stepDown_indices_melC[1:(i-1)])+1):(sum(modelData.stepDown_indices_melC[1:(i-1)])+modelData.stepDown_indices_melC[i]) loop
                          connect(dcmelconv_phaseC[i].p2,poecable_mel_phaseC[j].p) annotation(Line(points = {{288.57,-192.24},{288.57,-186.24},{303.25,-186.24},{303.25,-192.91},{309.25,-192.91}},color = {0,0,255}));
                          connect(poecable_mel_phaseC[j].n,mel_phaseC[j].p) annotation(Line(points = {{329.25,-192.91},{335.25,-192.91},{335.25,-187.64},{358.39,-187.64},{358.39,-193.64}},color = {0,0,255}));
                          connect(dcmelconv_phaseC[i].n2,mel_phaseC[j].n) annotation(Line(points = {{288.57,-212.24},{288.57,-219.64},{358.39,-219.64},{358.39,-213.64}},color = {0,0,255}));
                          connect(mel_phaseC[j].n,Ground_DC.p) annotation(Line(points = {{358.39,-213.64},{358.39,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
                 
             else
                 for j in (1:modelData.stepDown_indices_melB[1]) loop
                          connect(dcmelconv_phaseC[1].p2,poecable_mel_phaseC[j].p) annotation(Line(points = {{288.57,-192.24},{288.57,-186.24},{303.25,-186.24},{303.25,-192.91},{309.25,-192.91}},color = {0,0,255}));
                          connect(poecable_mel_phaseC[j].n,mel_phaseC[j].p) annotation(Line(points = {{329.25,-192.91},{335.25,-192.91},{335.25,-187.64},{358.39,-187.64},{358.39,-193.64}},color = {0,0,255}));
                          connect(dcmelconv_phaseC[1].n2,mel_phaseC[j].n) annotation(Line(points = {{288.57,-212.24},{288.57,-219.64},{358.39,-219.64},{358.39,-213.64}},color = {0,0,255}));
                          connect(mel_phaseC[j].n,Ground_DC.p) annotation(Line(points = {{358.39,-213.64},{358.39,-246.15},{193.39,-246.15}},color = {0,0,255}));
                 end for;
            end if;
                 connect(dccable_melphaseC.n,dccable_melconv_phaseC[i].p) annotation(Line(points = {{209.97,-149.66},{222.62,-149.66},{222.62,-192.91},{235.27,-192.91}},color = {0,0,255}));
                 connect(dccable_melconv_phaseC[i].n,dcmelconv_phaseC[i].p1) annotation(Line(points = {{255.27,-192.91},{261.27,-192.91},{261.27,-186.24},{268.57,-186.24},{268.57,-192.24}},color = {0,0,255}));
                 connect(dcmelconv_phaseC[i].n1,Ground_DC.p) annotation(Line(points = {{268.57,-212.24},{261.21,-212.24},{261.21,-246.15},{193.39,-246.15}},color = {0,0,255}));
     end for;

    for i in 1:nconverter_ACmelA loop
            if i>1 then
                 for j in (sum(modelData.stepDown_indices_ACmelA[1:(i-1)])+1):(sum(modelData.stepDown_indices_ACmelA[1:(i-1)])+modelData.stepDown_indices_ACmelA[i]) loop
                          connect(ACmelconv_phaseA[i].pin_p,dccable_acmelA[j].p) annotation(Line(points = {{297.76,177.05},{302.96000000000004,177.05},{302.96000000000004,178.61},{308.16,178.61}},color = {0,0,255}));
                          connect(dccable_acmelA[j].n,ACmel_phaseA[j].p) annotation(Line(points = {{328.16,178.61},{334.16,178.61},{334.16,186.61},{354.16,186.61},{354.16,180.61}},color = {0,0,255}));
                          connect(ACmelconv_phaseA[i].pin_n,ACmel_phaseA[j].n) annotation(Line(points = {{297.76,161.05},{303.76,161.05},{303.76,154.61},{354.16,154.61},{354.16,160.61}},color = {0,0,255}));
                          connect(ACmel_phaseA[j].n,ground.p) annotation(Line(points = {{354.16,160.61},{354.16,139.96},{394.74,139.96},{394.74,119.31}},color = {0,0,255}));
                 end for;
                 
             else
                 for j in (1:modelData.stepDown_indices_ACmelA[1]) loop
                          connect(ACmelconv_phaseA[1].pin_p,dccable_acmelA[j].p) annotation(Line(points = {{297.76,177.05},{302.96000000000004,177.05},{302.96000000000004,178.61},{308.16,178.61}},color = {0,0,255}));
                          connect(dccable_acmelA[j].n,ACmel_phaseA[j].p) annotation(Line(points = {{328.16,178.61},{334.16,178.61},{334.16,186.61},{354.16,186.61},{354.16,180.61}},color = {0,0,255}));
                          connect(ACmelconv_phaseA[1].pin_n,ACmel_phaseA[j].n) annotation(Line(points = {{297.76,161.05},{303.76,161.05},{303.76,154.61},{354.16,154.61},{354.16,160.61}},color = {0,0,255}));
                          connect(ACmel_phaseA[j].n,ground.p) annotation(Line(points = {{354.16,160.61},{354.16,139.96},{394.74,139.96},{394.74,119.31}},color = {0,0,255}));
                 end for;
            end if;
                 connect(accable_acmelphaseA.pin_n,accable_acmelconvA[i].pin_p) annotation(Line(points = {{242.96,176.61},{246.445,176.61},{246.445,176.48},{249.93,176.48}},color = {117,80,123}));
                 connect(accable_acmelconvA[i].pin_n,ACmelconv_phaseA[i].hPin_L) annotation(Line(points = {{269.93,176.48},{273.845,176.48},{273.845,177.05},{277.76,177.05}},color = {117,80,123}));
                 connect(ACmelconv_phaseA[i].hPin_N,ground2.pin) annotation(Line(points = {{277.76,161.05},{269.95,161.05},{269.95,76.05}},color = {117,80,123}));
     end for;

      for i in 1:nconverter_ACmelB loop
            if i>1 then
                 for j in (sum(modelData.stepDown_indices_ACmelB[1:(i-1)])+1):(sum(modelData.stepDown_indices_ACmelB[1:(i-1)])+modelData.stepDown_indices_ACmelB[i]) loop
                          connect(ACmelconv_phaseB[i].pin_p,dccable_acmelB[j].p) annotation(Line(points = {{296.96,136.11},{301.96,136.11},{301.96,140.11},{306.96,140.11}},color = {0,0,255}));
                          connect(dccable_acmelB[j].n,ACmel_phaseB[j].p) annotation(Line(points = {{326.96,140.11},{332.96,140.11},{332.96,148.11},{355.53,148.11},{355.53,142.11}},color = {0,0,255}));
                          connect(ACmelconv_phaseB[i].pin_n,ACmel_phaseB[j].n) annotation(Line(points = {{296.96,120.11},{302.96,120.11},{302.96,116.11},{355.53,116.11},{355.53,122.11}},color = {0,0,255}));
                          connect(ACmel_phaseB[j].n,ground.p) annotation(Line(points = {{355.53,122.11},{355.53,116.11000000000001},{375.135,116.11000000000001},{375.135,125.31},{394.74,125.31},{394.74,119.31}},color = {0,0,255}));
                 end for;
                 
             else
                 for j in (1:modelData.stepDown_indices_ACmelB[1]) loop
                          connect(ACmelconv_phaseB[1].pin_p,dccable_acmelB[j].p) annotation(Line(points = {{296.96,136.11},{301.96,136.11},{301.96,140.11},{306.96,140.11}},color = {0,0,255}));
                          connect(dccable_acmelB[j].n,ACmel_phaseB[j].p) annotation(Line(points = {{326.96,140.11},{332.96,140.11},{332.96,148.11},{355.53,148.11},{355.53,142.11}},color = {0,0,255}));
                          connect(ACmelconv_phaseB[1].pin_n,ACmel_phaseB[j].n) annotation(Line(points = {{296.96,120.11},{302.96,120.11},{302.96,116.11},{355.53,116.11},{355.53,122.11}},color = {0,0,255}));
                          connect(ACmel_phaseB[j].n,ground.p) annotation(Line(points = {{355.53,122.11},{355.53,116.11000000000001},{375.135,116.11000000000001},{375.135,125.31},{394.74,125.31},{394.74,119.31}},color = {0,0,255}));
                 end for;
            end if;
                 connect(accable_acmelphaseB.pin_n,accable_acmelconvB[i].pin_p) annotation(Line(points = {{240.96,136.61},{248.96,136.61}},color = {117,80,123}));
                 connect(accable_acmelconvB[i].pin_n,ACmelconv_phaseB[i].hPin_L) annotation(Line(points = {{268.96,136.61},{272.96,136.61},{272.96,136.11},{276.96,136.11}},color = {117,80,123}));
                 connect(ACmelconv_phaseB[i].hPin_N,ground2.pin) annotation(Line(points = {{276.96,120.11},{269.95,120.11},{269.95,76.05}},color = {117,80,123}));
     end for;

      for i in 1:nconverter_ACmelC loop
            if i>1 then
                 for j in (sum(modelData.stepDown_indices_ACmelC[1:(i-1)])+1):(sum(modelData.stepDown_indices_ACmelC[1:(i-1)])+modelData.stepDown_indices_ACmelC[i]) loop
                          connect(ACmelconv_phaseC[i].pin_p,dccable_acmelC[j].p) annotation(Line(points = {{296.96,100.11},{301.96,100.11},{301.96,104.11},{306.96,104.11}},color = {0,0,255}));
                          connect(dccable_acmelC[j].n,ACmel_phaseC[j].p) annotation(Line(points = {{326.96,104.11},{332.96,104.11},{332.96,111.08},{355.53,111.08},{355.53,105.08}},color = {0,0,255}));
                          connect(ACmelconv_phaseC[i].pin_n,ACmel_phaseC[j].n) annotation(Line(points = {{296.96,84.11},{302.96,84.11},{302.96,79.08},{355.53,79.08},{355.53,85.08}},color = {0,0,255}));
                          connect(ACmel_phaseC[j].n,ground.p) annotation(Line(points = {{355.53,85.08},{355.53,79.08},{375.135,79.08},{375.135,125.31},{394.74,125.31},{394.74,119.31}},color = {0,0,255}));
                 end for;
                 
             else
                 for j in (1:modelData.stepDown_indices_ACmelC[1]) loop
                          connect(ACmelconv_phaseC[1].pin_p,dccable_acmelC[j].p) annotation(Line(points = {{296.96,100.11},{301.96,100.11},{301.96,104.11},{306.96,104.11}},color = {0,0,255}));
                          connect(dccable_acmelC[j].n,ACmel_phaseC[j].p) annotation(Line(points = {{326.96,104.11},{332.96,104.11},{332.96,111.08},{355.53,111.08},{355.53,105.08}},color = {0,0,255}));
                          connect(ACmelconv_phaseC[1].pin_n,ACmel_phaseC[j].n) annotation(Line(points = {{296.96,84.11},{302.96,84.11},{302.96,79.08},{355.53,79.08},{355.53,85.08}},color = {0,0,255}));
                          connect(ACmel_phaseC[j].n,ground.p) annotation(Line(points = {{355.53,85.08},{355.53,79.08},{375.135,79.08},{375.135,125.31},{394.74,125.31},{394.74,119.31}},color = {0,0,255}));
                 end for;
            end if;
                 connect(accable_acmelphaseC.pin_n,accable_acmelconvC[i].pin_p) annotation(Line(points = {{236.96,102.61},{246.96,102.61}},color = {117,80,123}));
                 connect(accable_acmelconvC[i].pin_n,ACmelconv_phaseC[i].hPin_L) annotation(Line(points = {{266.96,102.61},{271.96,102.61},{271.96,100.11},{276.96,100.11}},color = {117,80,123}));
                 connect(ACmelconv_phaseC[i].hPin_N,ground2.pin) annotation(Line(points = {{276.96,84.11},{269.95,84.11},{269.95,76.05}},color = {117,80,123}));
     end for;
    
    connect(Dist_Xmer.pinSec_N,GndAC.pin) annotation(Line(points = {{18,-80},{18,-120},{8,-120}},color = {117,80,123}));
    connect(voltageSource.pinN,GndAC2.pin) annotation(Line(points = {{-80,-68.75},{-80,-92},{-102,-92}},color = {117,80,123}));
    connect(voltageSource.pinP_phA,Dist_Xmer.pinPrim_A) annotation(Line(points = {{-67.5,-46},{-52,-46},{-52,-36},{-32,-36}},color = {92,53,102}));
    connect(voltageSource.pinP_phB,Dist_Xmer.pinPrim_B) annotation(Line(points = {{-67.5,-56},{-32,-56}},color = {92,53,102}));
    connect(voltageSource.pinP_phC,Dist_Xmer.pinPrim_C) annotation(Line(points = {{-67.5,-66},{-62,-66},{-62,-70},{-58,-70},{-58,-76},{-32,-76}},color = {92,53,102}));
    connect(Simple_Bidirectional_3phase.hPin_N,GndAC.pin) annotation(Line(points = {{82,-56},{77.66,-56},{77.66,-120},{8,-120}},color = {117,80,123}));
    connect(Simple_Bidirectional_3phase.hPin_A,Dist_Xmer.pinSec_A) annotation(Line(points = {{82,-24},{60.65,-24},{60.65,-32},{18,-32}},color = {92,53,102}));
    connect(Simple_Bidirectional_3phase.hPin_B,Dist_Xmer.pinSec_B) annotation(Line(points = {{82,-34},{64.06,-34},{64.06,-48},{18,-48}},color = {92,53,102}));
    connect(Simple_Bidirectional_3phase.hPin_C,Dist_Xmer.pinSec_C) annotation(Line(points = {{82,-44},{67.59,-44},{67.59,-64},{18,-64}},color = {92,53,102}));
    connect(dC_DC_MPPT.p,Simple_Bidirectional_3phase.pin_p) annotation(Line(points = {{84.45,-188.68},{84.45,-182},{154.87,-182},{154.87,-24},{124,-24}},color = {0,0,255}));
    connect(dC_DC_MPPT.n,Simple_Bidirectional_3phase.pin_n) annotation(Line(points = {{84.45,-208.68},{84.45,-214},{130,-214},{130,-56},{124,-56}},color = {0,0,255}));
    connect(combiTimeTable_L1_Mechanical2.y[1],gain2.u) annotation(Line(points = {{35.45,-200.68},{46.45,-200.68}},color = {0,0,127}));
    connect(gain2.y,dC_DC_MPPT.P_pv) annotation(Line(points = {{69.45,-200.68},{72.95,-200.68},{72.95,-191.08},{76.45,-191.08}},color = {0,0,127}));
    connect(Simple_Inverter_Grid_Forming.pin_p,Simple_Bidirectional_3phase.pin_p) annotation(Line(points = {{146.02,149.75},{130.12,149.75},{130.12,-24},{124,-24}},color = {0,0,255}));
    connect(Simple_Bidirectional_3phase.pin_n,Ground_DC.p) annotation(Line(points = {{124,-56},{129.99,-56},{129.99,-213.75},{193.39,-213.75},{193.39,-246.15}},color = {0,0,255}));
    connect(Simple_Inverter_Grid_Forming.pin_n,Ground_DC2.p) annotation(Line(points = {{146.02,124.15},{135.7,124.15},{135.7,57.92},{170.95,57.92},{170.95,51.92}},color = {0,0,255}));

    connect(Simple_Inverter_Grid_Forming.hPin_N,ground2.pin) annotation(Line(points = {{180.02,124.15},{180.02,76.05},{269.95,76.05}},color = {117,80,123}));
    connect(aCload2.hPin_A,Dist_Xmer.pinSec_A) annotation(Line(points = {{21.03,77.99},{21.03,-32},{18,-32}},color = {92,53,102}));
    connect(aCload2.hPin_B,Dist_Xmer.pinSec_B) annotation(Line(points = {{24.73,77.99},{24.73,-48},{18,-48}},color = {92,53,102}));
    connect(aCload2.hPin_C,Dist_Xmer.pinSec_C) annotation(Line(points = {{28.42,77.99},{28.42,-64},{18,-64}},color = {92,53,102}));
    connect(aCload2.hPin_N,Dist_Xmer.pinSec_N) annotation(Line(points = {{33.23,77.99},{33.23,-80},{18,-80}},color = {117,80,123}));
    connect(aCload.hPin_A,Dist_Xmer.pinSec_A) annotation(Line(points = {{60.49,78.39},{60.49,-32},{18,-32}},color = {92,53,102}));
    connect(aCload.hPin_B,Dist_Xmer.pinSec_B) annotation(Line(points = {{64.16,78.39},{64.16,-48},{18,-48}},color = {92,53,102}));
    connect(aCload.hPin_C,Dist_Xmer.pinSec_C) annotation(Line(points = {{67.83,78.39},{67.83,-64},{18,-64}},color = {92,53,102}));
    connect(aCload.hPin_N,Dist_Xmer.pinSec_N) annotation(Line(points = {{72.59,78.39},{72.59,-80},{18,-80}},color = {117,80,123}));

    connect(Simple_Bidirectional_3phase.pin_p,dccable_lumphaseA.p) annotation(Line(points = {{124,-24},{154.59,-24},{154.59,15.58},{185.18,15.58}},color = {0,0,255}));
    connect(Simple_Bidirectional_3phase.pin_p,dccable_lumphaseB.p) annotation(Line(points = {{124,-24},{154.59,-24},{154.59,-2.34},{185.18,-2.34}},color = {0,0,255}));
    connect(Simple_Bidirectional_3phase.pin_p,dccable_lumphaseC.p) annotation(Line(points = {{124,-24},{154.59,-24},{154.59,-20.75},{185.18,-20.75}},color = {0,0,255}));
    
    
    connect(Simple_Bidirectional_3phase.pin_p,dccable_melphaseA.p) annotation(Line(points = {{124,-24},{156.985,-24},{156.985,-112.83},{189.97,-112.83}},color = {0,0,255}));
    connect(Simple_Bidirectional_3phase.pin_p,dccable_melphaseB.p) annotation(Line(points = {{124,-24},{156.985,-24},{156.985,-131.25},{189.97,-131.25}},color = {0,0,255}));
    connect(Simple_Bidirectional_3phase.pin_p,dccable_melphaseC.p) annotation(Line(points = {{124,-24},{156.985,-24},{156.985,-149.66},{189.97,-149.66}},color = {0,0,255}));
    connect(Simple_Inverter_Grid_Forming.hPin_A,accable_acmelphaseA.pin_p) annotation(Line(points = {{180.02,149.75},{201.49,149.75},{201.49,176.61},{222.96,176.61}},color = {92,53,102}));
    connect(Simple_Inverter_Grid_Forming.hPin_B,accable_acmelphaseB.pin_p) annotation(Line(points = {{180.02,141.75},{200.49,141.75},{200.49,136.61},{220.96,136.61}},color = {92,53,102}));
    connect(Simple_Inverter_Grid_Forming.hPin_C,accable_acmelphaseC.pin_p) annotation(Line(points = {{180.02,133.75},{198.49,133.75},{198.49,102.61},{216.96,102.61}},color = {92,53,102}));
    
    
    
    
    
    
    
    

end medoff_template_DCconnectedPV;
