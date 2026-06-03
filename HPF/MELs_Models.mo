within HPF;
package MELs_Models
  model light_lvl1_ckt1A
    inner HPF.SystemDef systemDef(
      fFund=60,
      fs=5000,
      hrms={1,3,5,7,9,11,13},
      numPh=1)                                                                               annotation (
      Placement(visible = true, transformation(origin={-80,82.571},      extent = {{-16, -16}, {16, 11.4286}}, rotation = 0)));
    HPF.SinglePhase.Sources.VoltageSource Vin(
      start_v_re={120,0,0,0,0,0,0},
      vArg={0,0,0,0,0,0,0},
      vMag={120,0,0,0,0,0,0})                                                                                                    annotation (
      Placement(visible = true, transformation(origin={-58,30},  extent = {{10, -10}, {-10, 10}}, rotation = 0)));

    /* Ground pins */
    HPF.SinglePhase.Components.Ground GndAC annotation (
      Placement(visible = true, transformation(origin={-86,32},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
      Placement(visible = true, transformation(origin={90,52},      extent = {{-10, -10}, {10, 10}}, rotation = 90)));

    /* Load Profiles */
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone1_f1(
      tableOnFile=true,
      tableName="l1_zone1_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
      annotation (Placement(transformation(extent={{-56,-94},{-36,-74}})));
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone1_b(
      tableOnFile=true,
      tableName="l1_zone1_b",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone2_f1(
      tableOnFile=true,
      tableName="l1_zone2_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone3_a1(
      tableOnFile=true,
      tableName="l1_zone3_a1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone3_f1(
      tableOnFile=true,
      tableName="l1_zone3_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone4_f1(
      tableOnFile=true,
      tableName="l1_zone4_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_a1(
      tableOnFile=true,
      tableName="l1_core_a1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_a2(
      tableOnFile=true,
      tableName="l1_core_a2",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_a3(
      tableOnFile=true,
      tableName="l1_core_a3",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_b(
      tableOnFile=true,
      tableName="l1_core_b",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_c(
      tableOnFile=true,
      tableName="l1_core_c",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_d(
      tableOnFile=true,
      tableName="l1_core_d",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_e_h2(
      tableOnFile=true,
      tableName="l1_core_e_h2",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_f1(
      tableOnFile=true,
      tableName="l1_core_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_f2_f3(
      tableOnFile=true,
      tableName="l1_core_f2_f3",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_g(
      tableOnFile=true,
      tableName="l1_core_g",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_h1(
      tableOnFile=true,
      tableName="l1_core_h1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);

     /* New Load Profile
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone1_f1(
    tableOnFile=true,
    tableName="l1_zone1_f1",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
  */

    /* Light ckt 1 - A phase*/
    HPF.Cables.NEC_CableModel cable_Light_lvl1_ckt1_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=16.1)
      annotation (Placement(transformation(extent={{-16,20},{-36,40}})));

  /* Light Model 25 */
    HPF.Cables.NEC_CableModel cable_light25(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7)
      annotation (Placement(transformation(extent={{14,20},{-6,40}})));
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_25(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915)
                  annotation (Placement(visible=true, transformation(
          origin={34,22},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    HPF.DC.Variable_DC_Load Light_25 annotation (
      Placement(visible = true, transformation(origin={67,29},     extent={{11,-11},
              {-11,11}},                                                                            rotation = 180)));

  /* Light Model 26 */
    HPF.DC.Variable_DC_Load Light_26;
    HPF.Cables.NEC_CableModel cable_light26(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_26(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 27 */
    HPF.DC.Variable_DC_Load Light_27;
    HPF.Cables.NEC_CableModel cable_light27(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_27(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 28 */
    HPF.DC.Variable_DC_Load Light_28;
    HPF.Cables.NEC_CableModel cable_light28(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_28(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 29 */
    HPF.DC.Variable_DC_Load Light_29;
    HPF.Cables.NEC_CableModel cable_light29(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=5);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_29(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 30 */
    HPF.DC.Variable_DC_Load Light_30;
    HPF.Cables.NEC_CableModel cable_light30(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_30(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 31 */
    HPF.DC.Variable_DC_Load Light_31;
    HPF.Cables.NEC_CableModel cable_light31(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=3);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_31(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 32 */
    HPF.DC.Variable_DC_Load Light_32;
    HPF.Cables.NEC_CableModel cable_light32(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=1);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_32(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 37 */
    HPF.DC.Variable_DC_Load Light_37;
    HPF.Cables.NEC_CableModel cable_light37(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_37(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 43 */
    HPF.DC.Variable_DC_Load Light_43;
    HPF.Cables.NEC_CableModel cable_light43(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_43(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 44 */
    HPF.DC.Variable_DC_Load Light_44;
    HPF.Cables.NEC_CableModel cable_light44(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_44(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 61 */
    HPF.DC.Variable_DC_Load Light_61;
    HPF.Cables.NEC_CableModel cable_light61(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_61(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 62 */
    HPF.DC.Variable_DC_Load Light_62;
    HPF.Cables.NEC_CableModel cable_light62(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_62(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 63 */
    HPF.DC.Variable_DC_Load Light_63;
    HPF.Cables.NEC_CableModel cable_light63(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_63(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 64 */
    HPF.DC.Variable_DC_Load Light_64;
    HPF.Cables.NEC_CableModel cable_light64(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_64(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 72 */
    HPF.DC.Variable_DC_Load Light_72;
    HPF.Cables.NEC_CableModel cable_light72(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_72(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 73 */
    HPF.DC.Variable_DC_Load Light_73;
    HPF.Cables.NEC_CableModel cable_light73(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_73(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 81 */
    HPF.DC.Variable_DC_Load Light_81;
    HPF.Cables.NEC_CableModel cable_light81(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_81(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 82 */
    HPF.DC.Variable_DC_Load Light_82;
    HPF.Cables.NEC_CableModel cable_light82(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_82(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 83 */
    HPF.DC.Variable_DC_Load Light_83;
    HPF.Cables.NEC_CableModel cable_light83(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_83(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 84 */
    HPF.DC.Variable_DC_Load Light_84;
    HPF.Cables.NEC_CableModel cable_light84(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_84(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 85 */
    HPF.DC.Variable_DC_Load Light_85;
    HPF.Cables.NEC_CableModel cable_light85(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_85(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 86 */
    HPF.DC.Variable_DC_Load Light_86;
    HPF.Cables.NEC_CableModel cable_light86(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_86(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 87 */
    HPF.DC.Variable_DC_Load Light_87;
    HPF.Cables.NEC_CableModel cable_light87(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_87(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 88 */
    HPF.DC.Variable_DC_Load Light_88;
    HPF.Cables.NEC_CableModel cable_light88(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_88(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 89 */
    HPF.DC.Variable_DC_Load Light_89;
    HPF.Cables.NEC_CableModel cable_light89(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_89(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 90 */
    HPF.DC.Variable_DC_Load Light_90;
    HPF.Cables.NEC_CableModel cable_light90(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_90(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 91 */
    HPF.DC.Variable_DC_Load Light_91;
    HPF.Cables.NEC_CableModel cable_light91(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_91(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 92 */
    HPF.DC.Variable_DC_Load Light_92;
    HPF.Cables.NEC_CableModel cable_light92(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_92(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 100 */
    HPF.DC.Variable_DC_Load Light_100;
    HPF.Cables.NEC_CableModel cable_light100(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_100(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 102 */
    HPF.DC.Variable_DC_Load Light_102;
    HPF.Cables.NEC_CableModel cable_light102(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_102(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 103 */
    HPF.DC.Variable_DC_Load Light_103;
    HPF.Cables.NEC_CableModel cable_light103(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_103(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 105 */
    HPF.DC.Variable_DC_Load Light_105;
    HPF.Cables.NEC_CableModel cable_light105(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_105(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 108 */
    HPF.DC.Variable_DC_Load Light_108;
    HPF.Cables.NEC_CableModel cable_light108(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_108(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 109 */
    HPF.DC.Variable_DC_Load Light_109;
    HPF.Cables.NEC_CableModel cable_light109(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_109(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 110 */
    HPF.DC.Variable_DC_Load Light_110;
    HPF.Cables.NEC_CableModel cable_light110(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_110(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 111 */
    HPF.DC.Variable_DC_Load Light_111;
    HPF.Cables.NEC_CableModel cable_light111(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_111(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 112 */
    HPF.DC.Variable_DC_Load Light_112;
    HPF.Cables.NEC_CableModel cable_light112(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_112(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 113 */
    HPF.DC.Variable_DC_Load Light_113;
    HPF.Cables.NEC_CableModel cable_light113(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_113(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 114 */
    HPF.DC.Variable_DC_Load Light_114;
    HPF.Cables.NEC_CableModel cable_light114(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_114(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 115 */
    HPF.DC.Variable_DC_Load Light_115;
    HPF.Cables.NEC_CableModel cable_light115(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_115(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 116 */
    HPF.DC.Variable_DC_Load Light_116;
    HPF.Cables.NEC_CableModel cable_light116(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_116(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 117 */
    HPF.DC.Variable_DC_Load Light_117;
    HPF.Cables.NEC_CableModel cable_light117(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_117(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 118 */
    HPF.DC.Variable_DC_Load Light_118;
    HPF.Cables.NEC_CableModel cable_light118(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_118(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 119 */
    HPF.DC.Variable_DC_Load Light_119;
    HPF.Cables.NEC_CableModel cable_light119(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_119(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 120 */
    HPF.DC.Variable_DC_Load Light_120;
    HPF.Cables.NEC_CableModel cable_light120(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_120(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 121 */
    HPF.DC.Variable_DC_Load Light_121;
    HPF.Cables.NEC_CableModel cable_light121(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_121(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 122 */
    HPF.DC.Variable_DC_Load Light_122;
    HPF.Cables.NEC_CableModel cable_light122(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_122(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 123 */
    HPF.DC.Variable_DC_Load Light_123;
    HPF.Cables.NEC_CableModel cable_light123(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_123(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 124 */
    HPF.DC.Variable_DC_Load Light_124;
    HPF.Cables.NEC_CableModel cable_light124(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_124(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 125 */
    HPF.DC.Variable_DC_Load Light_125;
    HPF.Cables.NEC_CableModel cable_light125(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_125(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 126 */
    HPF.DC.Variable_DC_Load Light_126;
    HPF.Cables.NEC_CableModel cable_light126(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_126(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 127 */
    HPF.DC.Variable_DC_Load Light_127;
    HPF.Cables.NEC_CableModel cable_light127(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_127(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 128 */
    HPF.DC.Variable_DC_Load Light_128;
    HPF.Cables.NEC_CableModel cable_light128(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_128(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 129 */
    HPF.DC.Variable_DC_Load Light_129;
    HPF.Cables.NEC_CableModel cable_light129(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_129(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 130 */
    HPF.DC.Variable_DC_Load Light_130;
    HPF.Cables.NEC_CableModel cable_light130(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_130(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model
  HPF.DC.Variable_DC_Load Light_2;
  HPF.Cables.NEC_CableModel cable_light2(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_2(
    P_DCmin=2.25,
    P_nom=45,
    P_stby=1.047973212,
    VAC_nom=120,
    VDC_nom=19.5,
    alpha=0.334528765,
    beta=0.101408771,
    gamma=0.001131915);

*/

  equation
    connect(Vin.pin_n, GndAC.pin)
      annotation (Line(points={{-68,30},{-78,30},{-78,32}},                   color={117,80,123}));
    connect(Light_Driver_25.hPin_L, cable_light25.pin_p)
      annotation (Line(points={{24,30},{14,30}},                            color={92,53,102}));
    connect(Light_25.p, Light_Driver_25.pin_p)
      annotation (Line(points={{56,29},{52,29},{52,30},{44,30}},              color={0,0,255}));
    connect(Light_25.n, GndDC.p) annotation (Line(points={{78,29},{82,29},{82,52},{80,52}},   color={0,0,255}));
    connect(combiTimeTable_l1_zone3_a1.y[1], Light_25.u)
      annotation (Line(points={{-35,-84},{4,-84},{4,-86},{67.22,-86},{67.22,23.5}},  color={0,0,127}));
    connect(Light_Driver_25.hPin_N, GndAC.pin)
      annotation (Line(points={{24,14},{-78,14},{-78,32}},                       color={117,80,123}));
    connect(Light_Driver_25.pin_n, GndDC.p)
      annotation (Line(points={{44,14},{80,14},{80,52}},                     color={0,0,255}));
    connect(cable_light25.pin_n, cable_Light_lvl1_ckt1_A.pin_p)
      annotation (Line(points={{-6,30},{-16,30}},                    color={117,80,123}));

  /* Light Connections

  connect(Light_Driver_1.hPin_L, cable_light1.pin_p);
  connect(Light_1.p, Light_Driver_1.pin_p);
  connect(combiTimeTable_l1_zone1_f1.y[1], Light_1.u);
  connect(Light_1.n, GndDC.p);
  connect(Light_Driver_1.hPin_N, GndAC.pin);
  connect(Light_Driver_1.pin_n, GndDC.p);
  connect(cable_light1.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  
  */

  /* Light Connections 130 */
    connect(Light_Driver_130.hPin_L, cable_light130.pin_p);
    connect(Light_130.p, Light_Driver_130.pin_p);
    connect(combiTimeTable_l1_zone4_f1.y[1], Light_130.u);
    connect(Light_130.n, GndDC.p);
    connect(Light_Driver_130.hPin_N, GndAC.pin);
    connect(Light_Driver_130.pin_n, GndDC.p);
    connect(cable_light130.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 129 */
    connect(Light_Driver_129.hPin_L, cable_light129.pin_p);
    connect(Light_129.p, Light_Driver_129.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_129.u);
    connect(Light_129.n, GndDC.p);
    connect(Light_Driver_129.hPin_N, GndAC.pin);
    connect(Light_Driver_129.pin_n, GndDC.p);
    connect(cable_light129.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 128 */
    connect(Light_Driver_128.hPin_L, cable_light128.pin_p);
    connect(Light_128.p, Light_Driver_128.pin_p);
    connect(combiTimeTable_l1_core_g.y[1], Light_128.u);
    connect(Light_128.n, GndDC.p);
    connect(Light_Driver_128.hPin_N, GndAC.pin);
    connect(Light_Driver_128.pin_n, GndDC.p);
    connect(cable_light128.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 127 */
    connect(Light_Driver_127.hPin_L, cable_light127.pin_p);
    connect(Light_127.p, Light_Driver_127.pin_p);
    connect(combiTimeTable_l1_zone4_f1.y[1], Light_127.u);
    connect(Light_127.n, GndDC.p);
    connect(Light_Driver_127.hPin_N, GndAC.pin);
    connect(Light_Driver_127.pin_n, GndDC.p);
    connect(cable_light127.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

    /* Light Connections 126 */
    connect(Light_Driver_126.hPin_L, cable_light126.pin_p);
    connect(Light_126.p, Light_Driver_126.pin_p);
    connect(combiTimeTable_l1_zone4_f1.y[1], Light_126.u);
    connect(Light_126.n, GndDC.p);
    connect(Light_Driver_126.hPin_N, GndAC.pin);
    connect(Light_Driver_126.pin_n, GndDC.p);
    connect(cable_light126.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 125 */
    connect(Light_Driver_125.hPin_L, cable_light125.pin_p);
    connect(Light_125.p, Light_Driver_125.pin_p);
    connect(combiTimeTable_l1_core_g.y[1], Light_125.u);
    connect(Light_125.n, GndDC.p);
    connect(Light_Driver_125.hPin_N, GndAC.pin);
    connect(Light_Driver_125.pin_n, GndDC.p);
    connect(cable_light125.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 124 */
    connect(Light_Driver_124.hPin_L, cable_light124.pin_p);
    connect(Light_124.p, Light_Driver_124.pin_p);
    connect(combiTimeTable_l1_core_g.y[1], Light_124.u);
    connect(Light_124.n, GndDC.p);
    connect(Light_Driver_124.hPin_N, GndAC.pin);
    connect(Light_Driver_124.pin_n, GndDC.p);
    connect(cable_light124.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 123 */
    connect(Light_Driver_123.hPin_L, cable_light123.pin_p);
    connect(Light_123.p, Light_Driver_123.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_123.u);
    connect(Light_123.n, GndDC.p);
    connect(Light_Driver_123.hPin_N, GndAC.pin);
    connect(Light_Driver_123.pin_n, GndDC.p);
    connect(cable_light123.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 122 */
    connect(Light_Driver_122.hPin_L, cable_light122.pin_p);
    connect(Light_122.p, Light_Driver_122.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_122.u);
    connect(Light_122.n, GndDC.p);
    connect(Light_Driver_122.hPin_N, GndAC.pin);
    connect(Light_Driver_122.pin_n, GndDC.p);
    connect(cable_light122.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 121 */
    connect(Light_Driver_121.hPin_L, cable_light121.pin_p);
    connect(Light_121.p, Light_Driver_121.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_121.u);
    connect(Light_121.n, GndDC.p);
    connect(Light_Driver_121.hPin_N, GndAC.pin);
    connect(Light_Driver_121.pin_n, GndDC.p);
    connect(cable_light121.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 120 */
    connect(Light_Driver_120.hPin_L, cable_light120.pin_p);
    connect(Light_120.p, Light_Driver_120.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_120.u);
    connect(Light_120.n, GndDC.p);
    connect(Light_Driver_120.hPin_N, GndAC.pin);
    connect(Light_Driver_120.pin_n, GndDC.p);
    connect(cable_light120.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 118 */
    connect(Light_Driver_118.hPin_L, cable_light118.pin_p);
    connect(Light_118.p, Light_Driver_118.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_118.u);
    connect(Light_118.n, GndDC.p);
    connect(Light_Driver_118.hPin_N, GndAC.pin);
    connect(Light_Driver_118.pin_n, GndDC.p);
    connect(cable_light118.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 117 */
    connect(Light_Driver_117.hPin_L, cable_light117.pin_p);
    connect(Light_117.p, Light_Driver_117.pin_p);
    connect(combiTimeTable_l1_core_g.y[1], Light_117.u);
    connect(Light_117.n, GndDC.p);
    connect(Light_Driver_117.hPin_N, GndAC.pin);
    connect(Light_Driver_117.pin_n, GndDC.p);
    connect(cable_light117.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 116 */
    connect(Light_Driver_116.hPin_L, cable_light116.pin_p);
    connect(Light_116.p, Light_Driver_116.pin_p);
    connect(combiTimeTable_l1_core_g.y[1], Light_116.u);
    connect(Light_116.n, GndDC.p);
    connect(Light_Driver_116.hPin_N, GndAC.pin);
    connect(Light_Driver_116.pin_n, GndDC.p);
    connect(cable_light116.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 119 */
    connect(Light_Driver_119.hPin_L, cable_light119.pin_p);
    connect(Light_119.p, Light_Driver_119.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_119.u);
    connect(Light_119.n, GndDC.p);
    connect(Light_Driver_119.hPin_N, GndAC.pin);
    connect(Light_Driver_119.pin_n, GndDC.p);
    connect(cable_light119.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 26 */
    connect(Light_Driver_26.hPin_L, cable_light26.pin_p);
    connect(Light_26.p, Light_Driver_26.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_26.u);
    connect(Light_26.n, GndDC.p);
    connect(Light_Driver_26.hPin_N, GndAC.pin);
    connect(Light_Driver_26.pin_n, GndDC.p);
    connect(cable_light26.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 27 */
    connect(Light_Driver_27.hPin_L, cable_light27.pin_p);
    connect(Light_27.p, Light_Driver_27.pin_p);
    connect(combiTimeTable_l1_core_c.y[1], Light_27.u);
    connect(Light_27.n, GndDC.p);
    connect(Light_Driver_27.hPin_N, GndAC.pin);
    connect(Light_Driver_27.pin_n, GndDC.p);
    connect(cable_light27.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 28 */
    connect(Light_Driver_28.hPin_L, cable_light28.pin_p);
    connect(Light_28.p, Light_Driver_28.pin_p);
    connect(combiTimeTable_l1_core_c.y[1], Light_28.u);
    connect(Light_28.n, GndDC.p);
    connect(Light_Driver_28.hPin_N, GndAC.pin);
    connect(Light_Driver_28.pin_n, GndDC.p);
    connect(cable_light28.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 29 */
    connect(Light_Driver_29.hPin_L, cable_light29.pin_p);
    connect(Light_29.p, Light_Driver_29.pin_p);
    connect(combiTimeTable_l1_core_d.y[1], Light_29.u);
    connect(Light_29.n, GndDC.p);
    connect(Light_Driver_29.hPin_N, GndAC.pin);
    connect(Light_Driver_29.pin_n, GndDC.p);
    connect(cable_light29.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 30 */
    connect(Light_Driver_30.hPin_L, cable_light30.pin_p);
    connect(Light_30.p, Light_Driver_30.pin_p);
    connect(combiTimeTable_l1_core_d.y[1], Light_30.u);
    connect(Light_30.n, GndDC.p);
    connect(Light_Driver_30.hPin_N, GndAC.pin);
    connect(Light_Driver_30.pin_n, GndDC.p);
    connect(cable_light30.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 31 */
    connect(Light_Driver_31.hPin_L, cable_light31.pin_p);
    connect(Light_31.p, Light_Driver_31.pin_p);
    connect(combiTimeTable_l1_core_c.y[1], Light_31.u);
    connect(Light_31.n, GndDC.p);
    connect(Light_Driver_31.hPin_N, GndAC.pin);
    connect(Light_Driver_31.pin_n, GndDC.p);
    connect(cable_light31.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 32 */
    connect(Light_Driver_32.hPin_L, cable_light32.pin_p);
    connect(Light_32.p, Light_Driver_32.pin_p);
    connect(combiTimeTable_l1_core_c.y[1], Light_32.u);
    connect(Light_32.n, GndDC.p);
    connect(Light_Driver_32.hPin_N, GndAC.pin);
    connect(Light_Driver_32.pin_n, GndDC.p);
    connect(cable_light32.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 37 */
    connect(Light_Driver_37.hPin_L, cable_light37.pin_p);
    connect(Light_37.p, Light_Driver_37.pin_p);
    connect(combiTimeTable_l1_core_a2.y[1], Light_37.u);
    connect(Light_37.n, GndDC.p);
    connect(Light_Driver_37.hPin_N, GndAC.pin);
    connect(Light_Driver_37.pin_n, GndDC.p);
    connect(cable_light37.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 43 */
    connect(Light_Driver_43.hPin_L, cable_light43.pin_p);
    connect(Light_43.p, Light_Driver_43.pin_p);
    connect(combiTimeTable_l1_core_g.y[1], Light_43.u);
    connect(Light_43.n, GndDC.p);
    connect(Light_Driver_43.hPin_N, GndAC.pin);
    connect(Light_Driver_43.pin_n, GndDC.p);
    connect(cable_light43.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 44 */
    connect(Light_Driver_44.hPin_L, cable_light44.pin_p);
    connect(Light_44.p, Light_Driver_44.pin_p);
    connect(combiTimeTable_l1_core_g.y[1], Light_44.u);
    connect(Light_44.n, GndDC.p);
    connect(Light_Driver_44.hPin_N, GndAC.pin);
    connect(Light_Driver_44.pin_n, GndDC.p);
    connect(cable_light44.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 61 */
    connect(Light_Driver_61.hPin_L, cable_light61.pin_p);
    connect(Light_61.p, Light_Driver_61.pin_p);
    connect(combiTimeTable_l1_core_a3.y[1], Light_61.u);
    connect(Light_61.n, GndDC.p);
    connect(Light_Driver_61.hPin_N, GndAC.pin);
    connect(Light_Driver_61.pin_n, GndDC.p);
    connect(cable_light61.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 62 */
    connect(Light_Driver_62.hPin_L, cable_light62.pin_p);
    connect(Light_62.p, Light_Driver_62.pin_p);
    connect(combiTimeTable_l1_core_a3.y[1], Light_62.u);
    connect(Light_62.n, GndDC.p);
    connect(Light_Driver_62.hPin_N, GndAC.pin);
    connect(Light_Driver_62.pin_n, GndDC.p);
    connect(cable_light62.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 63 */
    connect(Light_Driver_63.hPin_L, cable_light63.pin_p);
    connect(Light_63.p, Light_Driver_63.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_63.u);
    connect(Light_63.n, GndDC.p);
    connect(Light_Driver_63.hPin_N, GndAC.pin);
    connect(Light_Driver_63.pin_n, GndDC.p);
    connect(cable_light63.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 64 */
    connect(Light_Driver_64.hPin_L, cable_light64.pin_p);
    connect(Light_64.p, Light_Driver_64.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_64.u);
    connect(Light_64.n, GndDC.p);
    connect(Light_Driver_64.hPin_N, GndAC.pin);
    connect(Light_Driver_64.pin_n, GndDC.p);
    connect(cable_light64.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 72 */
    connect(Light_Driver_72.hPin_L, cable_light72.pin_p);
    connect(Light_72.p, Light_Driver_72.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_72.u);
    connect(Light_72.n, GndDC.p);
    connect(Light_Driver_72.hPin_N, GndAC.pin);
    connect(Light_Driver_72.pin_n, GndDC.p);
    connect(cable_light72.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

    /* Light Connections 73 */
    connect(Light_Driver_73.hPin_L, cable_light73.pin_p);
    connect(Light_73.p, Light_Driver_73.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_73.u);
    connect(Light_73.n, GndDC.p);
    connect(Light_Driver_73.hPin_N, GndAC.pin);
    connect(Light_Driver_73.pin_n, GndDC.p);
    connect(cable_light73.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 81 */
    connect(Light_Driver_81.hPin_L, cable_light81.pin_p);
    connect(Light_81.p, Light_Driver_81.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_81.u);
    connect(Light_81.n, GndDC.p);
    connect(Light_Driver_81.hPin_N, GndAC.pin);
    connect(Light_Driver_81.pin_n, GndDC.p);
    connect(cable_light81.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 82 */
    connect(Light_Driver_82.hPin_L, cable_light82.pin_p);
    connect(Light_82.p, Light_Driver_82.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_82.u);
    connect(Light_82.n, GndDC.p);
    connect(Light_Driver_82.hPin_N, GndAC.pin);
    connect(Light_Driver_82.pin_n, GndDC.p);
    connect(cable_light82.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 83 */
    connect(Light_Driver_83.hPin_L, cable_light83.pin_p);
    connect(Light_83.p, Light_Driver_83.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_83.u);
    connect(Light_83.n, GndDC.p);
    connect(Light_Driver_83.hPin_N, GndAC.pin);
    connect(Light_Driver_83.pin_n, GndDC.p);
    connect(cable_light83.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 84 */
    connect(Light_Driver_84.hPin_L, cable_light84.pin_p);
    connect(Light_84.p, Light_Driver_84.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_84.u);
    connect(Light_84.n, GndDC.p);
    connect(Light_Driver_84.hPin_N, GndAC.pin);
    connect(Light_Driver_84.pin_n, GndDC.p);
    connect(cable_light84.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 85 */
    connect(Light_Driver_85.hPin_L, cable_light85.pin_p);
    connect(Light_85.p, Light_Driver_85.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_85.u);
    connect(Light_85.n, GndDC.p);
    connect(Light_Driver_85.hPin_N, GndAC.pin);
    connect(Light_Driver_85.pin_n, GndDC.p);
    connect(cable_light85.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 86 */
    connect(Light_Driver_86.hPin_L, cable_light86.pin_p);
    connect(Light_86.p, Light_Driver_86.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_86.u);
    connect(Light_86.n, GndDC.p);
    connect(Light_Driver_86.hPin_N, GndAC.pin);
    connect(Light_Driver_86.pin_n, GndDC.p);
    connect(cable_light86.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 87 */
    connect(Light_Driver_87.hPin_L, cable_light87.pin_p);
    connect(Light_87.p, Light_Driver_87.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_87.u);
    connect(Light_87.n, GndDC.p);
    connect(Light_Driver_87.hPin_N, GndAC.pin);
    connect(Light_Driver_87.pin_n, GndDC.p);
    connect(cable_light87.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

    /* Light Connections 88 */
    connect(Light_Driver_88.hPin_L, cable_light88.pin_p);
    connect(Light_88.p, Light_Driver_88.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_88.u);
    connect(Light_88.n, GndDC.p);
    connect(Light_Driver_88.hPin_N, GndAC.pin);
    connect(Light_Driver_88.pin_n, GndDC.p);
    connect(cable_light88.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 89 */
    connect(Light_Driver_89.hPin_L, cable_light89.pin_p);
    connect(Light_89.p, Light_Driver_89.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_89.u);
    connect(Light_89.n, GndDC.p);
    connect(Light_Driver_89.hPin_N, GndAC.pin);
    connect(Light_Driver_89.pin_n, GndDC.p);
    connect(cable_light89.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 90 */
    connect(Light_Driver_90.hPin_L, cable_light90.pin_p);
    connect(Light_90.p, Light_Driver_90.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_90.u);
    connect(Light_90.n, GndDC.p);
    connect(Light_Driver_90.hPin_N, GndAC.pin);
    connect(Light_Driver_90.pin_n, GndDC.p);
    connect(cable_light90.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 91 */
    connect(Light_Driver_91.hPin_L, cable_light91.pin_p);
    connect(Light_91.p, Light_Driver_91.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_91.u);
    connect(Light_91.n, GndDC.p);
    connect(Light_Driver_91.hPin_N, GndAC.pin);
    connect(Light_Driver_91.pin_n, GndDC.p);
    connect(cable_light91.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 92 */
    connect(Light_Driver_92.hPin_L, cable_light92.pin_p);
    connect(Light_92.p, Light_Driver_92.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_92.u);
    connect(Light_92.n, GndDC.p);
    connect(Light_Driver_92.hPin_N, GndAC.pin);
    connect(Light_Driver_92.pin_n, GndDC.p);
    connect(cable_light92.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 100 */
    connect(Light_Driver_100.hPin_L, cable_light100.pin_p);
    connect(Light_100.p, Light_Driver_100.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_100.u);
    connect(Light_100.n, GndDC.p);
    connect(Light_Driver_100.hPin_N, GndAC.pin);
    connect(Light_Driver_100.pin_n, GndDC.p);
    connect(cable_light100.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 102 */
    connect(Light_Driver_102.hPin_L, cable_light102.pin_p);
    connect(Light_102.p, Light_Driver_102.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_102.u);
    connect(Light_102.n, GndDC.p);
    connect(Light_Driver_102.hPin_N, GndAC.pin);
    connect(Light_Driver_102.pin_n, GndDC.p);
    connect(cable_light102.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 103 */
    connect(Light_Driver_103.hPin_L, cable_light103.pin_p);
    connect(Light_103.p, Light_Driver_103.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_103.u);
    connect(Light_103.n, GndDC.p);
    connect(Light_Driver_103.hPin_N, GndAC.pin);
    connect(Light_Driver_103.pin_n, GndDC.p);
    connect(cable_light103.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 105 */
    connect(Light_Driver_105.hPin_L, cable_light105.pin_p);
    connect(Light_105.p, Light_Driver_105.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_105.u);
    connect(Light_105.n, GndDC.p);
    connect(Light_Driver_105.hPin_N, GndAC.pin);
    connect(Light_Driver_105.pin_n, GndDC.p);
    connect(cable_light105.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 108 */
    connect(Light_Driver_108.hPin_L, cable_light108.pin_p);
    connect(Light_108.p, Light_Driver_108.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_108.u);
    connect(Light_108.n, GndDC.p);
    connect(Light_Driver_108.hPin_N, GndAC.pin);
    connect(Light_Driver_108.pin_n, GndDC.p);
    connect(cable_light108.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 109 */
    connect(Light_Driver_109.hPin_L, cable_light109.pin_p);
    connect(Light_109.p, Light_Driver_109.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_109.u);
    connect(Light_109.n, GndDC.p);
    connect(Light_Driver_109.hPin_N, GndAC.pin);
    connect(Light_Driver_109.pin_n, GndDC.p);
    connect(cable_light109.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 110 */
    connect(Light_Driver_110.hPin_L, cable_light110.pin_p);
    connect(Light_110.p, Light_Driver_110.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_110.u);
    connect(Light_110.n, GndDC.p);
    connect(Light_Driver_110.hPin_N, GndAC.pin);
    connect(Light_Driver_110.pin_n, GndDC.p);
    connect(cable_light110.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 111 */
    connect(Light_Driver_111.hPin_L, cable_light111.pin_p);
    connect(Light_111.p, Light_Driver_111.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_111.u);
    connect(Light_111.n, GndDC.p);
    connect(Light_Driver_111.hPin_N, GndAC.pin);
    connect(Light_Driver_111.pin_n, GndDC.p);
    connect(cable_light111.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 112 */
    connect(Light_Driver_112.hPin_L, cable_light112.pin_p);
    connect(Light_112.p, Light_Driver_112.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_112.u);
    connect(Light_112.n, GndDC.p);
    connect(Light_Driver_112.hPin_N, GndAC.pin);
    connect(Light_Driver_112.pin_n, GndDC.p);
    connect(cable_light112.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 113 */
    connect(Light_Driver_113.hPin_L, cable_light113.pin_p);
    connect(Light_113.p, Light_Driver_113.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_113.u);
    connect(Light_113.n, GndDC.p);
    connect(Light_Driver_113.hPin_N, GndAC.pin);
    connect(Light_Driver_113.pin_n, GndDC.p);
    connect(cable_light113.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 114 */
    connect(Light_Driver_114.hPin_L, cable_light114.pin_p);
    connect(Light_114.p, Light_Driver_114.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_114.u);
    connect(Light_114.n, GndDC.p);
    connect(Light_Driver_114.hPin_N, GndAC.pin);
    connect(Light_Driver_114.pin_n, GndDC.p);
    connect(cable_light114.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

  /* Light Connections 115 */
    connect(Light_Driver_115.hPin_L, cable_light115.pin_p);
    connect(Light_115.p, Light_Driver_115.pin_p);
    connect(combiTimeTable_l1_zone3_f1.y[1], Light_115.u);
    connect(Light_115.n, GndDC.p);
    connect(Light_Driver_115.hPin_N, GndAC.pin);
    connect(Light_Driver_115.pin_n, GndDC.p);
    connect(cable_light115.pin_n, cable_Light_lvl1_ckt1_A.pin_p);

    connect(cable_Light_lvl1_ckt1_A.pin_n, Vin.pin_p)
      annotation (Line(points={{-36,30},{-48,30}}, color={117,80,123}));
    annotation (
      Icon(coordinateSystem(preserveAspectRatio=false)),
      Diagram(coordinateSystem(preserveAspectRatio=false)),
      experiment(
        StopTime=8760,
        Interval=0.25,
        __Dymola_Algorithm="Dassl"));
  end light_lvl1_ckt1A;

  model light_lvl1_ckt1B
    inner HPF.SystemDef systemDef(
      fFund=60,
      fs=5000,
      hrms={1,3,5,7,9,11,13},
      numPh=1)                                                                               annotation (
      Placement(visible = true, transformation(origin={-80,82.571},      extent = {{-16, -16}, {16, 11.4286}}, rotation = 0)));
    HPF.SinglePhase.Sources.VoltageSource Vin(
      start_v_re={120,0,0,0,0,0,0},
      vArg={0,0,0,0,0,0,0},
      vMag={120,0,0,0,0,0,0})                                                                                                    annotation (
      Placement(visible = true, transformation(origin={-58,30},  extent = {{10, -10}, {-10, 10}}, rotation = 0)));

    /* Ground pins */
    HPF.SinglePhase.Components.Ground GndAC annotation (
      Placement(visible = true, transformation(origin={-86,32},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
      Placement(visible = true, transformation(origin={90,52},      extent = {{-10, -10}, {10, 10}}, rotation = 90)));

    /* Load Profiles */
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone1_f1(
      tableOnFile=true,
      tableName="l1_zone1_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
      annotation (Placement(transformation(extent={{-56,-94},{-36,-74}})));
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone1_b(
      tableOnFile=true,
      tableName="l1_zone1_b",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone2_f1(
      tableOnFile=true,
      tableName="l1_zone2_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone3_a1(
      tableOnFile=true,
      tableName="l1_zone3_a1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone3_f1(
      tableOnFile=true,
      tableName="l1_zone3_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone4_f1(
      tableOnFile=true,
      tableName="l1_zone4_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_a1(
      tableOnFile=true,
      tableName="l1_core_a1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_a2(
      tableOnFile=true,
      tableName="l1_core_a2",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_a3(
      tableOnFile=true,
      tableName="l1_core_a3",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_b(
      tableOnFile=true,
      tableName="l1_core_b",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_c(
      tableOnFile=true,
      tableName="l1_core_c",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_d(
      tableOnFile=true,
      tableName="l1_core_d",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_e_h2(
      tableOnFile=true,
      tableName="l1_core_e_h2",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_f1(
      tableOnFile=true,
      tableName="l1_core_f1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_f2_f3(
      tableOnFile=true,
      tableName="l1_core_f2_f3",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_g(
      tableOnFile=true,
      tableName="l1_core_g",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_core_h1(
      tableOnFile=true,
      tableName="l1_core_h1",
      fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
      smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);

     /* New Load Profile
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_l1_zone1_f1(
    tableOnFile=true,
    tableName="l1_zone1_f1",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/Light_Level1.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint);
  */

    /* Light ckt 1 - B phase*/
    HPF.Cables.NEC_CableModel cable_Light_lvl1_ckt1_B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=16.1)
      annotation (Placement(transformation(extent={{-14,-18},{-34,2}})));

  /* Light Model 1 */
    HPF.Cables.NEC_CableModel cable_light1(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14,
        length=7) annotation (Placement(transformation(extent={{12,-18},{-8,2}})));
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_1(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915) annotation (Placement(visible=true, transformation(
          origin={38,-16},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    HPF.DC.Variable_DC_Load Light_1 annotation (Placement(visible=true,
          transformation(
          origin={67,-5},
          extent={{11,-11},{-11,11}},
          rotation=180)));

  /* Light Model 2 */
    HPF.DC.Variable_DC_Load Light_2;
    HPF.Cables.NEC_CableModel cable_light2(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_2(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 3 */
    HPF.DC.Variable_DC_Load Light_3;
    HPF.Cables.NEC_CableModel cable_light3(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_3(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 9 */
    HPF.DC.Variable_DC_Load Light_9;
    HPF.Cables.NEC_CableModel cable_light9(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_9(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 10 */
    HPF.DC.Variable_DC_Load Light_10;
    HPF.Cables.NEC_CableModel cable_light10(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_10(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 11 */
    HPF.DC.Variable_DC_Load Light_11;
    HPF.Cables.NEC_CableModel cable_light11(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_11(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 12 */
    HPF.DC.Variable_DC_Load Light_12;
    HPF.Cables.NEC_CableModel cable_light12(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_12(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 45 */
    HPF.DC.Variable_DC_Load Light_45;
    HPF.Cables.NEC_CableModel cable_light45(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_45(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 46 */
    HPF.DC.Variable_DC_Load Light_46;
    HPF.Cables.NEC_CableModel cable_light46(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_46(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 47 */
    HPF.DC.Variable_DC_Load Light_47;
    HPF.Cables.NEC_CableModel cable_light47(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_47(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

   /* Light Model 48 */
    HPF.DC.Variable_DC_Load Light_48;
    HPF.Cables.NEC_CableModel cable_light48(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_48(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 49 */
    HPF.DC.Variable_DC_Load Light_49;
    HPF.Cables.NEC_CableModel cable_light49(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_49(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 281 */
    HPF.DC.Variable_DC_Load Light_281;
    HPF.Cables.NEC_CableModel cable_light281(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_281(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 282 */
    HPF.DC.Variable_DC_Load Light_282;
    HPF.Cables.NEC_CableModel cable_light282(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_282(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 283 */
    HPF.DC.Variable_DC_Load Light_283;
    HPF.Cables.NEC_CableModel cable_light283(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_283(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 284 */
    HPF.DC.Variable_DC_Load Light_284;
    HPF.Cables.NEC_CableModel cable_light284(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_284(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 285 */
    HPF.DC.Variable_DC_Load Light_285;
    HPF.Cables.NEC_CableModel cable_light285(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_285(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 188 */
    HPF.DC.Variable_DC_Load Light_188;
    HPF.Cables.NEC_CableModel cable_light188(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_188(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.0011881915);

  /* Light Model 13 */
    HPF.DC.Variable_DC_Load Light_13;
    HPF.Cables.NEC_CableModel cable_light13(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_13(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 14 */
    HPF.DC.Variable_DC_Load Light_14;
    HPF.Cables.NEC_CableModel cable_light14(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_14(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 15 */
    HPF.DC.Variable_DC_Load Light_15;
    HPF.Cables.NEC_CableModel cable_light15(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_15(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 17 */
    HPF.DC.Variable_DC_Load Light_17;
    HPF.Cables.NEC_CableModel cable_light17(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_17(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 16 */
    HPF.DC.Variable_DC_Load Light_16;
    HPF.Cables.NEC_CableModel cable_light16(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_16(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 18 */
    HPF.DC.Variable_DC_Load Light_18;
    HPF.Cables.NEC_CableModel cable_light18(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_18(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 19 */
    HPF.DC.Variable_DC_Load Light_19;
    HPF.Cables.NEC_CableModel cable_light19(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_19(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 20 */
    HPF.DC.Variable_DC_Load Light_20;
    HPF.Cables.NEC_CableModel cable_light20(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_20(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 21 */
    HPF.DC.Variable_DC_Load Light_21;
    HPF.Cables.NEC_CableModel cable_light21(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_21(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


   /* Light Model 22 */
    HPF.DC.Variable_DC_Load Light_22;
    HPF.Cables.NEC_CableModel cable_light22(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_22(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 23 */
    HPF.DC.Variable_DC_Load Light_23;
    HPF.Cables.NEC_CableModel cable_light23(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_23(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 24 */
    HPF.DC.Variable_DC_Load Light_24;
    HPF.Cables.NEC_CableModel cable_light24(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_24(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 96 */
    HPF.DC.Variable_DC_Load Light_96;
    HPF.Cables.NEC_CableModel cable_light96(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_96(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 97 */
    HPF.DC.Variable_DC_Load Light_97;
    HPF.Cables.NEC_CableModel cable_light97(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_97(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 98 */
    HPF.DC.Variable_DC_Load Light_98;
    HPF.Cables.NEC_CableModel cable_light98(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_98(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 99 */
    HPF.DC.Variable_DC_Load Light_99;
    HPF.Cables.NEC_CableModel cable_light99(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_99(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 279 */
    HPF.DC.Variable_DC_Load Light_279;
    HPF.Cables.NEC_CableModel cable_light279(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_279(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 280 */
    HPF.DC.Variable_DC_Load Light_280;
    HPF.Cables.NEC_CableModel cable_light280(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_280(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 33 */
    HPF.DC.Variable_DC_Load Light_33;
    HPF.Cables.NEC_CableModel cable_light33(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_33(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

      /* Light Model 35 */
    HPF.DC.Variable_DC_Load Light_35;
    HPF.Cables.NEC_CableModel cable_light35(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_35(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 7 */
    HPF.DC.Variable_DC_Load Light_7;
    HPF.Cables.NEC_CableModel cable_light7(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_7(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 8 */
    HPF.DC.Variable_DC_Load Light_8;
    HPF.Cables.NEC_CableModel cable_light8(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_8(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


      /* Light Model 196 */
    HPF.DC.Variable_DC_Load Light_196;
    HPF.Cables.NEC_CableModel cable_light196(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_196(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 197 */
    HPF.DC.Variable_DC_Load Light_197;
    HPF.Cables.NEC_CableModel cable_light197(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_197(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 198 */
    HPF.DC.Variable_DC_Load Light_198;
    HPF.Cables.NEC_CableModel cable_light198(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_198(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 286 */
    HPF.DC.Variable_DC_Load Light_286;
    HPF.Cables.NEC_CableModel cable_light286(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_286(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 4 */
    HPF.DC.Variable_DC_Load Light_4;
    HPF.Cables.NEC_CableModel cable_light4(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_4(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);


  /* Light Model 5 */
    HPF.DC.Variable_DC_Load Light_5;
    HPF.Cables.NEC_CableModel cable_light5(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_5(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 6 */
    HPF.DC.Variable_DC_Load Light_6;
    HPF.Cables.NEC_CableModel cable_light6(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_6(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 50 */
    HPF.DC.Variable_DC_Load Light_50;
    HPF.Cables.NEC_CableModel cable_light50(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_50(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 51 */
    HPF.DC.Variable_DC_Load Light_51;
    HPF.Cables.NEC_CableModel cable_light51(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_51(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);

  /* Light Model 52 */
    HPF.DC.Variable_DC_Load Light_52;
    HPF.Cables.NEC_CableModel cable_light52(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9);
    HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_52(
      P_DCmin=2.25,
      P_nom=45,
      P_stby=1.047973212,
      VAC_nom=120,
      VDC_nom=19.5,
      alpha=0.334528765,
      beta=0.101408771,
      gamma=0.001131915);





      /* Light Model
  HPF.DC.Variable_DC_Load Light_2;
  HPF.Cables.NEC_CableModel cable_light2(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_2(
    P_DCmin=2.25,
    P_nom=45,
    P_stby=1.047973212,
    VAC_nom=120,
    VDC_nom=19.5,
    alpha=0.334528765,
    beta=0.101408771,
    gamma=0.001131915);

*/

  equation
    connect(Vin.pin_n, GndAC.pin)
      annotation (Line(points={{-68,30},{-78,30},{-78,32}},                   color={117,80,123}));
    connect(Light_Driver_1.hPin_L, cable_light1.pin_p)
      annotation (Line(points={{28,-8},{12,-8}}, color={92,53,102}));
    connect(Light_1.p, Light_Driver_1.pin_p) annotation (Line(points={{56,-5},{52,
            -5},{52,-8},{48,-8}}, color={0,0,255}));
    connect(Light_1.n, GndDC.p) annotation (Line(points={{78,-5},{82,-5},{82,52},{
            80,52}}, color={0,0,255}));
    connect(combiTimeTable_l1_zone3_a1.y[1], Light_1.u) annotation (Line(points={{
            -35,-84},{4,-84},{4,-86},{67.22,-86},{67.22,-10.5}}, color={0,0,127}));
    connect(Light_Driver_1.hPin_N, GndAC.pin) annotation (Line(points={{28,-24},{-78,
            -24},{-78,32}}, color={117,80,123}));
    connect(Light_Driver_1.pin_n, GndDC.p)
      annotation (Line(points={{48,-24},{80,-24},{80,52}}, color={0,0,255}));
    connect(cable_light1.pin_n, cable_Light_lvl1_ckt1_B.pin_p)
      annotation (Line(points={{-8,-8},{-14,-8}}, color={117,80,123}));

  /* Light Connections

  connect(Light_Driver_1.hPin_L, cable_light1.pin_p);
  connect(Light_1.p, Light_Driver_1.pin_p);
  connect(combiTimeTable_l1_zone1_f1.y[1], Light_1.u);
  connect(Light_1.n, GndDC.p);
  connect(Light_Driver_1.hPin_N, GndAC.pin);
  connect(Light_Driver_1.pin_n, GndDC.p);
  connect(cable_light1.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  
  */

    /* Light Connections 286 */
    connect(Light_Driver_286.hPin_L, cable_light286.pin_p);
    connect(Light_286.p, Light_Driver_286.pin_p);
    connect(combiTimeTable_l1_core_a2.y[1], Light_286.u);
    connect(Light_286.n, GndDC.p);
    connect(Light_Driver_286.hPin_N, GndAC.pin);
    connect(Light_Driver_286.pin_n, GndDC.p);
    connect(cable_light286.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 4 */
    connect(Light_Driver_4.hPin_L, cable_light4.pin_p);
    connect(Light_4.p, Light_Driver_4.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_4.u);
    connect(Light_4.n, GndDC.p);
    connect(Light_Driver_4.hPin_N, GndAC.pin);
    connect(Light_Driver_4.pin_n, GndDC.p);
    connect(cable_light4.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 50 */
    connect(Light_Driver_50.hPin_L, cable_light50.pin_p);
    connect(Light_50.p, Light_Driver_50.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_50.u);
    connect(Light_50.n, GndDC.p);
    connect(Light_Driver_50.hPin_N, GndAC.pin);
    connect(Light_Driver_50.pin_n, GndDC.p);
    connect(cable_light50.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 51 */
    connect(Light_Driver_51.hPin_L, cable_light51.pin_p);
    connect(Light_51.p, Light_Driver_51.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_51.u);
    connect(Light_51.n, GndDC.p);
    connect(Light_Driver_51.hPin_N, GndAC.pin);
    connect(Light_Driver_51.pin_n, GndDC.p);
    connect(cable_light51.pin_n, cable_Light_lvl1_ckt1_B.pin_p);


  /* Light Connections 52 */
    connect(Light_Driver_52.hPin_L, cable_light52.pin_p);
    connect(Light_52.p, Light_Driver_52.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_52.u);
    connect(Light_52.n, GndDC.p);
    connect(Light_Driver_52.hPin_N, GndAC.pin);
    connect(Light_Driver_52.pin_n, GndDC.p);
    connect(cable_light52.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 5 */
    connect(Light_Driver_5.hPin_L, cable_light5.pin_p);
    connect(Light_5.p, Light_Driver_5.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_5.u);
    connect(Light_5.n, GndDC.p);
    connect(Light_Driver_5.hPin_N, GndAC.pin);
    connect(Light_Driver_5.pin_n, GndDC.p);
    connect(cable_light5.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 8 */
    connect(Light_Driver_8.hPin_L, cable_light8.pin_p);
    connect(Light_8.p, Light_Driver_8.pin_p);
    connect(combiTimeTable_l1_core_c.y[1], Light_8.u);
    connect(Light_8.n, GndDC.p);
    connect(Light_Driver_8.hPin_N, GndAC.pin);
    connect(Light_Driver_8.pin_n, GndDC.p);
    connect(cable_light8.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 6 */
    connect(Light_Driver_6.hPin_L, cable_light6.pin_p);
    connect(Light_6.p, Light_Driver_6.pin_p);
    connect(combiTimeTable_l1_core_a1.y[1], Light_6.u);
    connect(Light_6.n, GndDC.p);
    connect(Light_Driver_6.hPin_N, GndAC.pin);
    connect(Light_Driver_6.pin_n, GndDC.p);
    connect(cable_light6.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 7 */
    connect(Light_Driver_7.hPin_L, cable_light7.pin_p);
    connect(Light_7.p, Light_Driver_7.pin_p);
    connect(combiTimeTable_l1_core_c.y[1], Light_7.u);
    connect(Light_7.n, GndDC.p);
    connect(Light_Driver_7.hPin_N, GndAC.pin);
    connect(Light_Driver_7.pin_n, GndDC.p);
    connect(cable_light7.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 196 */
    connect(Light_Driver_196.hPin_L, cable_light196.pin_p);
    connect(Light_196.p, Light_Driver_196.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_196.u);
    connect(Light_196.n, GndDC.p);
    connect(Light_Driver_196.hPin_N, GndAC.pin);
    connect(Light_Driver_196.pin_n, GndDC.p);
    connect(cable_light196.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 197 */
    connect(Light_Driver_197.hPin_L, cable_light197.pin_p);
    connect(Light_197.p, Light_Driver_197.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_197.u);
    connect(Light_197.n, GndDC.p);
    connect(Light_Driver_197.hPin_N, GndAC.pin);
    connect(Light_Driver_197.pin_n, GndDC.p);
    connect(cable_light197.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 198 */
    connect(Light_Driver_198.hPin_L, cable_light198.pin_p);
    connect(Light_198.p, Light_Driver_198.pin_p);
    connect(combiTimeTable_l1_core_b.y[1], Light_198.u);
    connect(Light_198.n, GndDC.p);
    connect(Light_Driver_198.hPin_N, GndAC.pin);
    connect(Light_Driver_198.pin_n, GndDC.p);
    connect(cable_light198.pin_n, cable_Light_lvl1_ckt1_B.pin_p);





  /* Light Connections 99 */
    connect(Light_Driver_99.hPin_L, cable_light99.pin_p);
    connect(Light_99.p, Light_Driver_99.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_99.u);
    connect(Light_99.n, GndDC.p);
    connect(Light_Driver_99.hPin_N, GndAC.pin);
    connect(Light_Driver_99.pin_n, GndDC.p);
    connect(cable_light99.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 279 */
    connect(Light_Driver_279.hPin_L, cable_light279.pin_p);
    connect(Light_279.p, Light_Driver_279.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_279.u);
    connect(Light_279.n, GndDC.p);
    connect(Light_Driver_279.hPin_N, GndAC.pin);
    connect(Light_Driver_279.pin_n, GndDC.p);
    connect(cable_light279.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 280 */
    connect(Light_Driver_280.hPin_L, cable_light280.pin_p);
    connect(Light_280.p, Light_Driver_280.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_280.u);
    connect(Light_280.n, GndDC.p);
    connect(Light_Driver_280.hPin_N, GndAC.pin);
    connect(Light_Driver_280.pin_n, GndDC.p);
    connect(cable_light280.pin_n, cable_Light_lvl1_ckt1_B.pin_p);


  /* Light Connections 33 */
    connect(Light_Driver_33.hPin_L, cable_light33.pin_p);
    connect(Light_33.p, Light_Driver_33.pin_p);
    connect(combiTimeTable_l1_core_d.y[1], Light_33.u);
    connect(Light_33.n, GndDC.p);
    connect(Light_Driver_33.hPin_N, GndAC.pin);
    connect(Light_Driver_33.pin_n, GndDC.p);
    connect(cable_light33.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 35 */
    connect(Light_Driver_35.hPin_L, cable_light35.pin_p);
    connect(Light_35.p, Light_Driver_35.pin_p);
    connect(combiTimeTable_l1_core_d.y[1], Light_35.u);
    connect(Light_35.n, GndDC.p);
    connect(Light_Driver_35.hPin_N, GndAC.pin);
    connect(Light_Driver_35.pin_n, GndDC.p);
    connect(cable_light35.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 16 */
    connect(Light_Driver_16.hPin_L, cable_light16.pin_p);
    connect(Light_16.p, Light_Driver_16.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_16.u);
    connect(Light_16.n, GndDC.p);
    connect(Light_Driver_16.hPin_N, GndAC.pin);
    connect(Light_Driver_16.pin_n, GndDC.p);
    connect(cable_light16.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 17 */
    connect(Light_Driver_17.hPin_L, cable_light17.pin_p);
    connect(Light_17.p, Light_Driver_17.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_17.u);
    connect(Light_17.n, GndDC.p);
    connect(Light_Driver_17.hPin_N, GndAC.pin);
    connect(Light_Driver_17.pin_n, GndDC.p);
    connect(cable_light17.pin_n, cable_Light_lvl1_ckt1_B.pin_p);


  /* Light Connections 18 */
    connect(Light_Driver_18.hPin_L, cable_light18.pin_p);
    connect(Light_18.p, Light_Driver_18.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_18.u);
    connect(Light_18.n, GndDC.p);
    connect(Light_Driver_18.hPin_N, GndAC.pin);
    connect(Light_Driver_18.pin_n, GndDC.p);
    connect(cable_light18.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 19 */
    connect(Light_Driver_19.hPin_L, cable_light19.pin_p);
    connect(Light_19.p, Light_Driver_19.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_19.u);
    connect(Light_19.n, GndDC.p);
    connect(Light_Driver_19.hPin_N, GndAC.pin);
    connect(Light_Driver_19.pin_n, GndDC.p);
    connect(cable_light19.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 20 */
    connect(Light_Driver_20.hPin_L, cable_light20.pin_p);
    connect(Light_20.p, Light_Driver_20.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_20.u);
    connect(Light_20.n, GndDC.p);
    connect(Light_Driver_20.hPin_N, GndAC.pin);
    connect(Light_Driver_20.pin_n, GndDC.p);
    connect(cable_light20.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 21 */
    connect(Light_Driver_21.hPin_L, cable_light21.pin_p);
    connect(Light_21.p, Light_Driver_21.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_21.u);
    connect(Light_21.n, GndDC.p);
    connect(Light_Driver_21.hPin_N, GndAC.pin);
    connect(Light_Driver_21.pin_n, GndDC.p);
    connect(cable_light21.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 22 */
    connect(Light_Driver_22.hPin_L, cable_light22.pin_p);
    connect(Light_22.p, Light_Driver_22.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_22.u);
    connect(Light_22.n, GndDC.p);
    connect(Light_Driver_22.hPin_N, GndAC.pin);
    connect(Light_Driver_22.pin_n, GndDC.p);
    connect(cable_light22.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 97 */
    connect(Light_Driver_97.hPin_L, cable_light97.pin_p);
    connect(Light_97.p, Light_Driver_97.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_97.u);
    connect(Light_97.n, GndDC.p);
    connect(Light_Driver_97.hPin_N, GndAC.pin);
    connect(Light_Driver_97.pin_n, GndDC.p);
    connect(cable_light97.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 98 */
    connect(Light_Driver_98.hPin_L, cable_light98.pin_p);
    connect(Light_98.p, Light_Driver_98.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_98.u);
    connect(Light_98.n, GndDC.p);
    connect(Light_Driver_98.hPin_N, GndAC.pin);
    connect(Light_Driver_98.pin_n, GndDC.p);
    connect(cable_light98.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 14 */
    connect(Light_Driver_14.hPin_L, cable_light14.pin_p);
    connect(Light_14.p, Light_Driver_14.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_14.u);
    connect(Light_14.n, GndDC.p);
    connect(Light_Driver_14.hPin_N, GndAC.pin);
    connect(Light_Driver_14.pin_n, GndDC.p);
    connect(cable_light14.pin_n, cable_Light_lvl1_ckt1_B.pin_p);


  /* Light Connections 15 */
    connect(Light_Driver_15.hPin_L, cable_light15.pin_p);
    connect(Light_15.p, Light_Driver_15.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_15.u);
    connect(Light_15.n, GndDC.p);
    connect(Light_Driver_15.hPin_N, GndAC.pin);
    connect(Light_Driver_15.pin_n, GndDC.p);
    connect(cable_light15.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 23 */
    connect(Light_Driver_23.hPin_L, cable_light23.pin_p);
    connect(Light_23.p, Light_Driver_23.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_23.u);
    connect(Light_23.n, GndDC.p);
    connect(Light_Driver_23.hPin_N, GndAC.pin);
    connect(Light_Driver_23.pin_n, GndDC.p);
    connect(cable_light23.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 24 */
    connect(Light_Driver_24.hPin_L, cable_light24.pin_p);
    connect(Light_24.p, Light_Driver_24.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_24.u);
    connect(Light_24.n, GndDC.p);
    connect(Light_Driver_24.hPin_N, GndAC.pin);
    connect(Light_Driver_24.pin_n, GndDC.p);
    connect(cable_light24.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 96 */
    connect(Light_Driver_96.hPin_L, cable_light96.pin_p);
    connect(Light_96.p, Light_Driver_96.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_96.u);
    connect(Light_96.n, GndDC.p);
    connect(Light_Driver_96.hPin_N, GndAC.pin);
    connect(Light_Driver_96.pin_n, GndDC.p);
    connect(cable_light96.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 13 */
    connect(Light_Driver_13.hPin_L, cable_light13.pin_p);
    connect(Light_13.p, Light_Driver_13.pin_p);
    connect(combiTimeTable_l1_core_e_h2.y[1], Light_13.u);
    connect(Light_13.n, GndDC.p);
    connect(Light_Driver_13.hPin_N, GndAC.pin);
    connect(Light_Driver_13.pin_n, GndDC.p);
    connect(cable_light13.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 47 */
    connect(Light_Driver_47.hPin_L, cable_light47.pin_p);
    connect(Light_47.p, Light_Driver_47.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_47.u);
    connect(Light_47.n, GndDC.p);
    connect(Light_Driver_47.hPin_N, GndAC.pin);
    connect(Light_Driver_47.pin_n, GndDC.p);
    connect(cable_light47.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

   /* Light Connections 48 */
    connect(Light_Driver_48.hPin_L, cable_light48.pin_p);
    connect(Light_48.p, Light_Driver_48.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_48.u);
    connect(Light_48.n, GndDC.p);
    connect(Light_Driver_48.hPin_N, GndAC.pin);
    connect(Light_Driver_48.pin_n, GndDC.p);
    connect(cable_light48.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 49 */
    connect(Light_Driver_49.hPin_L, cable_light49.pin_p);
    connect(Light_49.p, Light_Driver_49.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_49.u);
    connect(Light_49.n, GndDC.p);
    connect(Light_Driver_49.hPin_N, GndAC.pin);
    connect(Light_Driver_49.pin_n, GndDC.p);
    connect(cable_light49.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 281 */
    connect(Light_Driver_281.hPin_L, cable_light281.pin_p);
    connect(Light_281.p, Light_Driver_281.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_281.u);
    connect(Light_281.n, GndDC.p);
    connect(Light_Driver_281.hPin_N, GndAC.pin);
    connect(Light_Driver_281.pin_n, GndDC.p);
    connect(cable_light281.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 282 */
    connect(Light_Driver_282.hPin_L, cable_light282.pin_p);
    connect(Light_282.p, Light_Driver_282.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_282.u);
    connect(Light_282.n, GndDC.p);
    connect(Light_Driver_282.hPin_N, GndAC.pin);
    connect(Light_Driver_282.pin_n, GndDC.p);
    connect(cable_light282.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 283 */
    connect(Light_Driver_283.hPin_L, cable_light283.pin_p);
    connect(Light_283.p, Light_Driver_283.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_283.u);
    connect(Light_283.n, GndDC.p);
    connect(Light_Driver_283.hPin_N, GndAC.pin);
    connect(Light_Driver_283.pin_n, GndDC.p);
    connect(cable_light283.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 284 */
    connect(Light_Driver_284.hPin_L, cable_light284.pin_p);
    connect(Light_284.p, Light_Driver_284.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_284.u);
    connect(Light_284.n, GndDC.p);
    connect(Light_Driver_284.hPin_N, GndAC.pin);
    connect(Light_Driver_284.pin_n, GndDC.p);
    connect(cable_light284.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 285 */
    connect(Light_Driver_285.hPin_L, cable_light285.pin_p);
    connect(Light_285.p, Light_Driver_285.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_285.u);
    connect(Light_285.n, GndDC.p);
    connect(Light_Driver_285.hPin_N, GndAC.pin);
    connect(Light_Driver_285.pin_n, GndDC.p);
    connect(cable_light285.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 188 */
    connect(Light_Driver_188.hPin_L, cable_light188.pin_p);
    connect(Light_188.p, Light_Driver_188.pin_p);
    connect(combiTimeTable_l1_core_f1.y[1], Light_188.u);
    connect(Light_188.n, GndDC.p);
    connect(Light_Driver_188.hPin_N, GndAC.pin);
    connect(Light_Driver_188.pin_n, GndDC.p);
    connect(cable_light188.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 46 */
    connect(Light_Driver_46.hPin_L, cable_light46.pin_p);
    connect(Light_46.p, Light_Driver_46.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_46.u);
    connect(Light_46.n, GndDC.p);
    connect(Light_Driver_46.hPin_N, GndAC.pin);
    connect(Light_Driver_46.pin_n, GndDC.p);
    connect(cable_light46.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 2 */
    connect(Light_Driver_2.hPin_L, cable_light2.pin_p);
    connect(Light_2.p, Light_Driver_2.pin_p);
    connect(combiTimeTable_l1_zone3_a1.y[1], Light_2.u);
    connect(Light_2.n, GndDC.p);
    connect(Light_Driver_2.hPin_N, GndAC.pin);
    connect(Light_Driver_2.pin_n, GndDC.p);
    connect(cable_light2.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

    /* Light Connections 3 */
    connect(Light_Driver_3.hPin_L, cable_light3.pin_p);
    connect(Light_3.p, Light_Driver_3.pin_p);
    connect(combiTimeTable_l1_zone3_a1.y[1], Light_3.u);
    connect(Light_3.n, GndDC.p);
    connect(Light_Driver_3.hPin_N, GndAC.pin);
    connect(Light_Driver_3.pin_n, GndDC.p);
    connect(cable_light3.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 9 */
    connect(Light_Driver_9.hPin_L, cable_light9.pin_p);
    connect(Light_9.p, Light_Driver_9.pin_p);
    connect(combiTimeTable_l1_core_h1.y[1], Light_9.u);
    connect(Light_9.n, GndDC.p);
    connect(Light_Driver_9.hPin_N, GndAC.pin);
    connect(Light_Driver_9.pin_n, GndDC.p);
    connect(cable_light9.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 10 */
    connect(Light_Driver_10.hPin_L, cable_light10.pin_p);
    connect(Light_10.p, Light_Driver_10.pin_p);
    connect(combiTimeTable_l1_core_h1.y[1], Light_10.u);
    connect(Light_10.n, GndDC.p);
    connect(Light_Driver_10.hPin_N, GndAC.pin);
    connect(Light_Driver_10.pin_n, GndDC.p);
    connect(cable_light10.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 11 */
    connect(Light_Driver_11.hPin_L, cable_light11.pin_p);
    connect(Light_11.p, Light_Driver_11.pin_p);
    connect(combiTimeTable_l1_core_h1.y[1], Light_11.u);
    connect(Light_11.n, GndDC.p);
    connect(Light_Driver_11.hPin_N, GndAC.pin);
    connect(Light_Driver_11.pin_n, GndDC.p);
    connect(cable_light11.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 12 */
    connect(Light_Driver_12.hPin_L, cable_light12.pin_p);
    connect(Light_12.p, Light_Driver_12.pin_p);
    connect(combiTimeTable_l1_core_h1.y[1], Light_12.u);
    connect(Light_12.n, GndDC.p);
    connect(Light_Driver_12.hPin_N, GndAC.pin);
    connect(Light_Driver_12.pin_n, GndDC.p);
    connect(cable_light12.pin_n, cable_Light_lvl1_ckt1_B.pin_p);

  /* Light Connections 45 */
    connect(Light_Driver_45.hPin_L, cable_light45.pin_p);
    connect(Light_45.p, Light_Driver_45.pin_p);
    connect(combiTimeTable_l1_core_f2_f3.y[1], Light_45.u);
    connect(Light_45.n, GndDC.p);
    connect(Light_Driver_45.hPin_N, GndAC.pin);
    connect(Light_Driver_45.pin_n, GndDC.p);
    connect(cable_light45.pin_n, cable_Light_lvl1_ckt1_B.pin_p);









    connect(cable_Light_lvl1_ckt1_B.pin_n, Vin.pin_p)
      annotation (Line(points={{-34,-8},{-42,-8},{-42,30},{-48,30}},
                                                   color={117,80,123}));
    annotation (
      Icon(coordinateSystem(preserveAspectRatio=false)),
      Diagram(coordinateSystem(preserveAspectRatio=false)),
      experiment(
        StopTime=8760,
        Interval=0.25,
        __Dymola_Algorithm="Dassl"));
  end light_lvl1_ckt1B;
end MELs_Models;
