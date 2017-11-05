<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Host-Top-Level.vi" Type="VI" URL="../Host-Top-Level.vi"/>
		<Item Name="State.ctl" Type="VI" URL="../State.ctl"/>
		<Item Name="FPGA Target" Type="FPGA Target">
			<Property Name="AutoRun" Type="Bool">false</Property>
			<Property Name="configString.guid" Type="Str">{011A040A-75BA-4567-89CB-188C6D34E6CE}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=bool{102A93BB-8507-461B-A4D7-73FDBFAEBEE4}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32{19A25F1F-C456-438E-AB4F-CE0FC26C273D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=bool{27598E5A-808E-4EB9-A84F-296D067CCD62}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{46069EBC-0053-4041-965A-BF85187D8216}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32{49937737-2A0B-4E7F-AD0C-1D05EEBBD999}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{4BB13084-BAB3-4A6E-B4E9-AC9BFBE1DCCB}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=bool{5020AB3C-3969-4165-86B9-2F2530A23288}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{59DCF378-A174-4D70-827A-A702E0E5FCBC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=bool{5B9C1531-1F55-4112-928D-B3DE74F9605C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32{5BE9848C-5889-4465-BF70-C44C34CF7487}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=bool{739828AD-BC43-4E3B-97D9-0CE4D929078D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=bool{8A08BACC-34C6-4317-86DD-FD6C364FCC8A}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=bool{8BFA1A21-0FD5-4DF8-B7BF-F86B75EFA721}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=bool{948057A4-8F7B-408D-BF53-262C499EA3DA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32{949E217B-A844-48E9-AE80-45AA1E1278E0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32{A0FC7426-3426-4DFC-9223-D8043E991E40}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32{AFAA15FB-1B9A-4503-9EA6-9AD56DDD3543}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{B3C3C994-25C8-42BF-B09A-01A465D95094}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=bool{B41AF13F-1039-4433-9E62-C981244EA7EA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=bool{BA375C68-E556-4947-A523-A1FCAA5EED1B}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32{CAF76B04-54AD-4CF7-BC7C-0FD58A76EC7C}Multiplier=5.000000;Divisor=2.000000{CE93F446-3D6D-41E7-99D5-6543A6F047B4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=bool{D184259A-8AEB-45F8-A7C6-2E562BE21049}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=bool{DA022823-238A-4FBC-819F-997C38E6FEC0}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{DA8FBBD0-27DB-4386-87F6-0F37321F1F53}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=bool{DCDEB793-CC56-459D-BC4B-B25BB31E7ECC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=bool{E02AC908-13A0-4E26-8A45-F99942DC8C66}189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
{EECCEA1D-C490-4E2A-ABBC-5F83D4BD7778}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32{F5B32C05-E465-4665-AF2E-58549686E12F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
			<Property Name="configString.name" Type="Str">100MHzMultiplier=5.000000;Divisor=2.00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;ACLKNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=boolAXI_STR_RXD_1_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32AXI_STR_RXD_1_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=boolAXI_STR_RXD_1_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=boolAXI_STR_RXD_1_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolAXI_STR_RXD_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32AXI_STR_RXD_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=boolAXI_STR_RXD_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=boolAXI_STR_RXD_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=boolAXI_STR_TXD_1_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32AXI_STR_TXD_1_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=boolAXI_STR_TXD_1_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=boolAXI_STR_TXD_1_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=boolAXI_STR_TXD_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32AXI_STR_TXD_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=boolAXI_STR_TXD_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=boolAXI_STR_TXD_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=boold_microblaze189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
gpio1_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32gpio1_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32gpio2_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32gpio2_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32HT-Data_in 2"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"HT-Data_in"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Int_0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=boolInt_1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]TH-Data_Out 2"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"TH-Data_Out"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
			<Property Name="ForceCompileConfigUpdate" Type="Bool">true</Property>
			<Property Name="NI.LV.FPGA.659XR.ActiveSerialIo.Valid" Type="Bool">true</Property>
			<Property Name="NI.LV.FPGA.659XR.ActiveSerialIo.Version" Type="Int">1</Property>
			<Property Name="NI.LV.FPGA.659XR.ClockingAndRoutingTab" Type="Str">&lt;Cluster&gt;
&lt;Name&gt;Clocking and Routing Tab State&lt;/Name&gt;
&lt;NumElts&gt;13&lt;/NumElts&gt;
&lt;EW&gt;
&lt;Name&gt;Input Clock&lt;/Name&gt;
&lt;Choice&gt;PXIe_Clk100&lt;/Choice&gt;
&lt;Choice&gt;PFI 0/CLK IN&lt;/Choice&gt;
&lt;Choice&gt;PXIe_DStarA&lt;/Choice&gt;
&lt;Choice&gt;10 MHz Onboard Clock&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;DBL&gt;
&lt;Name&gt;Input Clock Frequency&lt;/Name&gt;
&lt;Val&gt;100.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;Boolean&gt;
&lt;Name&gt;SMB0 Clock Out&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;SMB1 Clock Out&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;SMB2 Clock Out&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;SMB3 Clock Out&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;DBL&gt;
&lt;Name&gt;SMB Shared Clock Out Frequency&lt;/Name&gt;
&lt;Val&gt;100.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;Boolean&gt;
&lt;Name&gt;MgtRefClk0&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;DBL&gt;
&lt;Name&gt;MgtRefClk0 Clock Frequency&lt;/Name&gt;
&lt;Val&gt;100.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;Boolean&gt;
&lt;Name&gt;MgtRefClk1&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;DBL&gt;
&lt;Name&gt;MgtRefClk1 Clock Frequency&lt;/Name&gt;
&lt;Val&gt;100.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;Boolean&gt;
&lt;Name&gt;MgtRefClk2&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Enable CPRI Output Clock Configuration&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
</Property>
			<Property Name="NI.LV.FPGA.659XR.ClockingPageHasBeenOpenedAtLeastOnce" Type="Bool">false</Property>
			<Property Name="NI.LV.FPGA.659XR.IOConfigurationTab" Type="Str">&lt;Cluster&gt;
&lt;Name&gt;IO Configuration Tab State&lt;/Name&gt;
&lt;NumElts&gt;9&lt;/NumElts&gt;
&lt;EW&gt;
&lt;Name&gt;Voltage Family&lt;/Name&gt;
&lt;Choice&gt;1.2 V&lt;/Choice&gt;
&lt;Choice&gt;1.5 V&lt;/Choice&gt;
&lt;Choice&gt;1.8 V&lt;/Choice&gt;
&lt;Choice&gt;2.5 V&lt;/Choice&gt;
&lt;Choice&gt;3.3 V&lt;/Choice&gt;
&lt;Val&gt;4&lt;/Val&gt;
&lt;/EW&gt;
&lt;Boolean&gt;
&lt;Name&gt;Port 0 RX&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Port 1 RX&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Port 2 RX&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Port 3 RX&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Port 0 TX&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Port 1 TX&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Port 2 TX&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Port 3 TX&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
</Property>
			<Property Name="NI.LV.FPGA.CLIPDeclarations[0].Category" Type="Str">User Defined</Property>
			<Property Name="NI.LV.FPGA.CLIPDeclarations[0].InvalidPath" Type="Str"></Property>
			<Property Name="NI.LV.FPGA.CLIPDeclarations[0].Name" Type="Str">d_microblaze_wrapper_top</Property>
			<Property Name="NI.LV.FPGA.CLIPDeclarationsArraySize" Type="Int">1</Property>
			<Property Name="NI.LV.FPGA.CLIPDeclarationSet" Type="Xml">
<CLIPDeclarationSet>
   <CLIPDeclarationCategory name="User Defined">
      <CLIPDeclaration name="d_microblaze_wrapper_top">
         <DeclarationPaths>
            <Absolute>Z:\work\git\LabVIEW_Fpga\06_MicroBlaze\04_lwIP_Ex\d_microblaze_wrapper_top.xml</Absolute>
            <MD5>82d71516d86eb6e89f4e64e97010a94b</MD5>
            <RelativeToLabVIEW>Z:\work\git\LabVIEW_Fpga\06_MicroBlaze\04_lwIP_Ex\d_microblaze_wrapper_top.xml</RelativeToLabVIEW>
            <RelativeToNiPubDocs>Z:\work\git\LabVIEW_Fpga\06_MicroBlaze\04_lwIP_Ex\d_microblaze_wrapper_top.xml</RelativeToNiPubDocs>
            <RelativeToNiSharedDir>Z:\work\git\LabVIEW_Fpga\06_MicroBlaze\04_lwIP_Ex\d_microblaze_wrapper_top.xml</RelativeToNiSharedDir>
            <RelativeToProject>d_microblaze_wrapper_top.xml</RelativeToProject>
            <Valid>true</Valid>
         </DeclarationPaths>
         <Description></Description>
         <FormatVersion>4.3</FormatVersion>
         <ImplementationList>
            <Path name="d_microblaze_wrapper_top.vhd">
               <MD5>189b0f2f581d1245b50845a1cd12744d</MD5>
               <SimulationFileList>
                  <SimulationModelType>Same as synthesis</SimulationModelType>
               </SimulationFileList>
               <TopLevel></TopLevel>
            </Path>
            <Path name="lwIP_Ex\checkpoint_3.dcp">
               <MD5>ec5d330480ef10456cddb4eadaf9b07a</MD5>
               <SimulationFileList>
                  <SimulationModelType>Exclude from simulation model</SimulationModelType>
               </SimulationFileList>
            </Path>
            <VerifiedImplementationList>
               <Path name="d_microblaze_wrapper_top.vhd">
                  <MD5>189b0f2f581d1245b50845a1cd12744d</MD5>
                  <SimulationFileList>
                     <SimulationModelType>Same as synthesis</SimulationModelType>
                  </SimulationFileList>
                  <TopLevel></TopLevel>
               </Path>
               <Path name="lwIP_Ex\checkpoint_3.dcp">
                  <MD5>895884ebcbb6fcc7e1be69c081149577</MD5>
                  <SimulationFileList>
                     <SimulationModelType>Exclude from simulation model</SimulationModelType>
                  </SimulationFileList>
               </Path>
            </VerifiedImplementationList>
         </ImplementationList>
         <InterfaceList>
            <Interface name="LabVIEW">
               <InterfaceType>LabVIEW</InterfaceType>
               <SignalList>
                  <Signal name="ACLK">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>ACLK</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_RXD_1_tdata">
                     <DataType>
                        <U32></U32>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>AXI_STR_RXD_1_tdata</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 31 downto 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_RXD_1_tlast">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>AXI_STR_RXD_1_tlast</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_RXD_1_tready">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>AXI_STR_RXD_1_tready</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_RXD_1_tvalid">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>AXI_STR_RXD_1_tvalid</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_RXD_tdata">
                     <DataType>
                        <U32></U32>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>AXI_STR_RXD_tdata</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 31 downto 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_RXD_tlast">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>AXI_STR_RXD_tlast</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_RXD_tready">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>AXI_STR_RXD_tready</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_RXD_tvalid">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>AXI_STR_RXD_tvalid</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_TXD_1_tdata">
                     <DataType>
                        <U32></U32>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>AXI_STR_TXD_1_tdata</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 31 downto 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_TXD_1_tlast">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>AXI_STR_TXD_1_tlast</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_TXD_1_tready">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>AXI_STR_TXD_1_tready</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_TXD_1_tvalid">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>AXI_STR_TXD_1_tvalid</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_TXD_tdata">
                     <DataType>
                        <U32></U32>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>AXI_STR_TXD_tdata</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 31 downto 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_TXD_tlast">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>AXI_STR_TXD_tlast</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_TXD_tready">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>AXI_STR_TXD_tready</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="AXI_STR_TXD_tvalid">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>AXI_STR_TXD_tvalid</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="Int_0">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>Int_0</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 0 to 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="Int_1">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>Int_1</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 0 to 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="gpio1_in_tri_i">
                     <DataType>
                        <U32></U32>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>gpio1_in_tri_i</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 31 downto 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="gpio1_out_tri_o">
                     <DataType>
                        <U32></U32>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>gpio1_out_tri_o</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 31 downto 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="gpio2_in_tri_i">
                     <DataType>
                        <U32></U32>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>gpio2_in_tri_i</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 31 downto 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="gpio2_out_tri_o">
                     <DataType>
                        <U32></U32>
                     </DataType>
                     <Description></Description>
                     <Direction>FromCLIP</Direction>
                     <HDLName>gpio2_out_tri_o</HDLName>
                     <HDLType>STD_LOGIC_VECTOR ( 31 downto 0 )</HDLType>
                     <SignalType>data</SignalType>
                     <UseInLabVIEWSingleCycleTimedLoop>Allowed</UseInLabVIEWSingleCycleTimedLoop>
                  </Signal>
                  <Signal name="sys_clock">
                     <CyclesRequiredBeforeAsynchronousResetClears>0</CyclesRequiredBeforeAsynchronousResetClears>
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <FreqInHertz>
                        <Max>200.000000M</Max>
                        <Min>1.000000M</Min>
                     </FreqInHertz>
                     <HDLName>sys_clock</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>clock</SignalType>
                  </Signal>
               </SignalList>
            </Interface>
            <Interface name="Fabric">
               <InterfaceType>Fabric</InterfaceType>
               <SignalList>
                  <Signal name="sys_reset">
                     <DataType>
                        <Boolean></Boolean>
                     </DataType>
                     <Description></Description>
                     <Direction>ToCLIP</Direction>
                     <HDLName>sys_reset</HDLName>
                     <HDLType>STD_LOGIC</HDLType>
                     <SignalType>reset</SignalType>
                  </Signal>
               </SignalList>
            </Interface>
         </InterfaceList>
         <NumberOfBufGsNeeded>0</NumberOfBufGsNeeded>
         <NumberOfDCMsNeeded>0</NumberOfDCMsNeeded>
         <NumberOfMMCMsNeeded>0</NumberOfMMCMsNeeded>
         <SupportedDeviceFamilies>Kintex-7</SupportedDeviceFamilies>
         <TopLevelEntityAndArchitecture>
            <SimulationModel>
               <Architecture>STRUCTURE</Architecture>
               <Entity>d_microblaze_wrapper_top</Entity>
            </SimulationModel>
            <SynthesisModel>
               <Architecture>STRUCTURE</Architecture>
               <Entity>d_microblaze_wrapper_top</Entity>
            </SynthesisModel>
         </TopLevelEntityAndArchitecture>
      </CLIPDeclaration>
   </CLIPDeclarationCategory>
</CLIPDeclarationSet></Property>
			<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">PXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.ConstraintsContainer.ArrayLength" Type="UInt">2</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.ConstraintsContainer[0].ConstraintString" Type="Str"># 0 Disabled
set_property PACKAGE_PIN K14 [get_ports {aMgtTxp[0]}]
set_property PACKAGE_PIN J14 [get_ports {aMgtTxn[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxp[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxn[0]}]
# 1 Disabled
set_property PACKAGE_PIN H15 [get_ports {aMgtTxp[1]}]
set_property PACKAGE_PIN G15 [get_ports {aMgtTxn[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxp[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxn[1]}]
# 2 Disabled
set_property PACKAGE_PIN J11 [get_ports {aMgtTxp[2]}]
set_property PACKAGE_PIN J12 [get_ports {aMgtTxn[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxp[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxn[2]}]
# 3 Disabled
set_property PACKAGE_PIN H14 [get_ports {aMgtTxp[3]}]
set_property PACKAGE_PIN G14 [get_ports {aMgtTxn[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxp[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxn[3]}]
# 0 Disabled
set_property PACKAGE_PIN L16 [get_ports {aMgtRxp[0]}]
set_property PACKAGE_PIN K16 [get_ports {aMgtRxn[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxp[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxn[0]}]
# 1 Disabled
set_property PACKAGE_PIN L15 [get_ports {aMgtRxp[1]}]
set_property PACKAGE_PIN K15 [get_ports {aMgtRxn[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxp[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxn[1]}]
# 2 Disabled
set_property PACKAGE_PIN L12 [get_ports {aMgtRxp[2]}]
set_property PACKAGE_PIN L13 [get_ports {aMgtRxn[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxp[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxn[2]}]
# 3 Disabled
set_property PACKAGE_PIN K13 [get_ports {aMgtRxp[3]}]
set_property PACKAGE_PIN J13 [get_ports {aMgtRxn[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxp[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxn[3]}]
</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.ConstraintsContainer[0].Descriptor.Name" Type="Str">MGT Lane Location Constraints</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.ConstraintsContainer[0].Descriptor.Priority" Type="UInt">100</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.ConstraintsContainer[0].Descriptor.Window" Type="Str"></Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.ConstraintsContainer[1].ConstraintString" Type="Str"># MgtRefClk0 Disabled
set_property PACKAGE_PIN G13 [get_ports {MgtRefClk0p}]
set_property PACKAGE_PIN F13 [get_ports {MgtRefClk0n}]
set_property IOSTANDARD LVCMOS25 [get_ports {MgtRefClk0p}]
set_property IOSTANDARD LVCMOS25 [get_ports {MgtRefClk0n}]
# MgtRefClk1 Disabled
set_property PACKAGE_PIN E13 [get_ports {MgtRefClk1p}]
set_property PACKAGE_PIN C12 [get_ports {MgtRefClk1n}]
set_property IOSTANDARD LVCMOS25 [get_ports {MgtRefClk1p}]
set_property IOSTANDARD LVCMOS25 [get_ports {MgtRefClk1n}]
# MgtRefClk2 Disabled
set_property PACKAGE_PIN D13 [get_ports {Si570Clkp}]
set_property PACKAGE_PIN F12 [get_ports {Si570Clkn}]
set_property IOSTANDARD LVCMOS25 [get_ports {Si570Clkp}]
set_property IOSTANDARD LVCMOS25 [get_ports {Si570Clkn}]
</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.ConstraintsContainer[1].Descriptor.Name" Type="Str">Reference Clock Location Constraints</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.ConstraintsContainer[1].Descriptor.Priority" Type="UInt">200</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.ConstraintsContainer[1].Descriptor.Window" Type="Str"></Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.Constraints.Version" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer.ArrayLength" Type="UInt">7</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].Descriptor.Name" Type="Str">GPIO Voltage</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].Descriptor.Priority" Type="UInt">300</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].Descriptor.Window" Type="Str"></Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence.ArrayLength" Type="UInt">2</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[0].Address" Type="UInt">2312</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[0].Data" Type="UInt">10</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[0].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[0].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[0].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[1].Address" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[1].Data" Type="UInt">2029</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[1].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[1].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[0].RegisterSequence[1].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].Descriptor.Name" Type="Str">GPIO SMB</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].Descriptor.Priority" Type="UInt">400</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].Descriptor.Window" Type="Str"></Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence.ArrayLength" Type="UInt">4</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[0].Address" Type="UInt">2336</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[0].Data" Type="UInt">16</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[0].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[0].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[0].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[1].Address" Type="UInt">2340</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[1].Data" Type="UInt">16</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[1].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[1].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[1].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[2].Address" Type="UInt">2344</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[2].Data" Type="UInt">16</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[2].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[2].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[2].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[3].Address" Type="UInt">2348</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[3].Data" Type="UInt">16</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[3].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[3].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[1].RegisterSequence[3].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].Descriptor.Name" Type="Str">Port Expander</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].Descriptor.Priority" Type="UInt">500</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].Descriptor.Window" Type="Str"></Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence.ArrayLength" Type="UInt">4</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[0].Address" Type="UInt">1026</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[0].Data" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[0].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[0].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[0].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[1].Address" Type="UInt">1027</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[1].Data" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[1].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[1].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[1].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[2].Address" Type="UInt">1030</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[2].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[2].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[2].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[2].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[3].Address" Type="UInt">1031</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[3].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[3].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[3].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[2].RegisterSequence[3].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].Descriptor.Name" Type="Str">Si5368</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].Descriptor.Priority" Type="UInt">600</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].Descriptor.Window" Type="Str">kSi5368_Window</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence.ArrayLength" Type="UInt">67</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[0].Address" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[0].Data" Type="UInt">20</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[0].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[0].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[0].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[1].Address" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[1].Data" Type="UInt">228</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[1].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[1].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[1].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[10].Address" Type="UInt">10</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[10].Data" Type="UInt">47</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[10].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[10].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[10].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[11].Address" Type="UInt">11</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[11].Data" Type="UInt">77</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[11].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[11].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[11].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[12].Address" Type="UInt">12</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[12].Data" Type="UInt">136</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[12].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[12].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[12].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[13].Address" Type="UInt">13</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[13].Data" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[13].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[13].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[13].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[14].Address" Type="UInt">14</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[14].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[14].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[14].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[14].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[15].Address" Type="UInt">15</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[15].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[15].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[15].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[15].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[16].Address" Type="UInt">16</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[16].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[16].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[16].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[16].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[17].Address" Type="UInt">17</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[17].Data" Type="UInt">128</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[17].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[17].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[17].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[18].Address" Type="UInt">18</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[18].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[18].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[18].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[18].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[19].Address" Type="UInt">19</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[19].Data" Type="UInt">44</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[19].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[19].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[19].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[2].Address" Type="UInt">2</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[2].Data" Type="UInt">162</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[2].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[2].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[2].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[20].Address" Type="UInt">20</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[20].Data" Type="UInt">62</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[20].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[20].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[20].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[21].Address" Type="UInt">21</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[21].Data" Type="UInt">254</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[21].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[21].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[21].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[22].Address" Type="UInt">22</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[22].Data" Type="UInt">223</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[22].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[22].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[22].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[23].Address" Type="UInt">23</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[23].Data" Type="UInt">31</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[23].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[23].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[23].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[24].Address" Type="UInt">24</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[24].Data" Type="UInt">63</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[24].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[24].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[24].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[25].Address" Type="UInt">25</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[25].Data" Type="UInt">32</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[25].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[25].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[25].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[26].Address" Type="UInt">26</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[26].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[26].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[26].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[26].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[27].Address" Type="UInt">27</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[27].Data" Type="UInt">9</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[27].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[27].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[27].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[28].Address" Type="UInt">28</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[28].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[28].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[28].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[28].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[29].Address" Type="UInt">29</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[29].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[29].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[29].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[29].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[3].Address" Type="UInt">3</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[3].Data" Type="UInt">69</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[3].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[3].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[3].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[30].Address" Type="UInt">30</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[30].Data" Type="UInt">9</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[30].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[30].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[30].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[31].Address" Type="UInt">31</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[31].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[31].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[31].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[31].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[32].Address" Type="UInt">32</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[32].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[32].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[32].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[32].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[33].Address" Type="UInt">33</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[33].Data" Type="UInt">9</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[33].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[33].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[33].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[34].Address" Type="UInt">34</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[34].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[34].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[34].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[34].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[35].Address" Type="UInt">35</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[35].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[35].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[35].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[35].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[36].Address" Type="UInt">36</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[36].Data" Type="UInt">9</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[36].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[36].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[36].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[37].Address" Type="UInt">37</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[37].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[37].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[37].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[37].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[38].Address" Type="UInt">38</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[38].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[38].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[38].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[38].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[39].Address" Type="UInt">39</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[39].Data" Type="UInt">9</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[39].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[39].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[39].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[4].Address" Type="UInt">4</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[4].Data" Type="UInt">18</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[4].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[4].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[4].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[40].Address" Type="UInt">40</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[40].Data" Type="UInt">192</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[40].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[40].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[40].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[41].Address" Type="UInt">41</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[41].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[41].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[41].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[41].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[42].Address" Type="UInt">42</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[42].Data" Type="UInt">249</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[42].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[42].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[42].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[43].Address" Type="UInt">43</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[43].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[43].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[43].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[43].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[44].Address" Type="UInt">44</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[44].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[44].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[44].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[44].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[45].Address" Type="UInt">45</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[45].Data" Type="UInt">49</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[45].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[45].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[45].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[46].Address" Type="UInt">46</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[46].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[46].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[46].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[46].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[47].Address" Type="UInt">47</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[47].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[47].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[47].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[47].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[48].Address" Type="UInt">48</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[48].Data" Type="UInt">49</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[48].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[48].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[48].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[49].Address" Type="UInt">49</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[49].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[49].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[49].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[49].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[5].Address" Type="UInt">5</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[5].Data" Type="UInt">255</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[5].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[5].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[5].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[50].Address" Type="UInt">50</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[50].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[50].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[50].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[50].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[51].Address" Type="UInt">51</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[51].Data" Type="UInt">49</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[51].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[51].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[51].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[52].Address" Type="UInt">52</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[52].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[52].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[52].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[52].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[53].Address" Type="UInt">53</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[53].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[53].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[53].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[53].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[54].Address" Type="UInt">54</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[54].Data" Type="UInt">49</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[54].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[54].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[54].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[55].Address" Type="UInt">55</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[55].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[55].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[55].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[55].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[56].Address" Type="UInt">56</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[56].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[56].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[56].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[56].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[57].Address" Type="UInt">131</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[57].Data" Type="UInt">31</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[57].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[57].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[57].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[58].Address" Type="UInt">132</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[58].Data" Type="UInt">2</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[58].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[58].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[58].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[59].Address" Type="UInt">138</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[59].Data" Type="UInt">15</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[59].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[59].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[59].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[6].Address" Type="UInt">6</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[6].Data" Type="UInt">63</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[6].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[6].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[6].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[60].Address" Type="UInt">139</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[60].Data" Type="UInt">255</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[60].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[60].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[60].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[61].Address" Type="UInt">140</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[61].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[61].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[61].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[61].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[62].Address" Type="UInt">141</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[62].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[62].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[62].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[62].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[63].Address" Type="UInt">142</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[63].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[63].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[63].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[63].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[64].Address" Type="UInt">143</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[64].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[64].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[64].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[64].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[65].Address" Type="UInt">144</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[65].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[65].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[65].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[65].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[66].Address" Type="UInt">136</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[66].Data" Type="UInt">64</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[66].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[66].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[66].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[7].Address" Type="UInt">7</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[7].Data" Type="UInt">42</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[7].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[7].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[7].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[8].Address" Type="UInt">8</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[8].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[8].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[8].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[8].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[9].Address" Type="UInt">9</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[9].Data" Type="UInt">192</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[9].Mask" Type="UInt">65535</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[9].Operation" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[3].RegisterSequence[9].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].Descriptor.Name" Type="Str">Si5338</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].Descriptor.Priority" Type="UInt">700</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].Descriptor.Window" Type="Str">kSi5338_Window</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence.ArrayLength" Type="UInt">4</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[0].Address" Type="UInt">230</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[0].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[0].Mask" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[0].Operation" Type="UInt">3</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[0].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[1].Address" Type="UInt">230</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[1].Data" Type="UInt">16</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[1].Mask" Type="UInt">16</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[1].Operation" Type="UInt">2</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[1].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[2].Address" Type="UInt">241</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[2].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[2].Mask" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[2].Operation" Type="UInt">3</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[2].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[3].Address" Type="UInt">241</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[3].Data" Type="UInt">128</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[3].Mask" Type="UInt">128</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[3].Operation" Type="UInt">2</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[4].RegisterSequence[3].WaitTime" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[5].Descriptor.Name" Type="Str">Si570</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[5].Descriptor.Priority" Type="UInt">800</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[5].Descriptor.Window" Type="Str"></Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[5].RegisterSequence.ArrayLength" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[6].Descriptor.Name" Type="Str">Settling</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[6].Descriptor.Priority" Type="UInt">900</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[6].Descriptor.Window" Type="Str"></Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[6].RegisterSequence.ArrayLength" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[6].RegisterSequence[0].Address" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[6].RegisterSequence[0].Data" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[6].RegisterSequence[0].Mask" Type="UInt">0</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[6].RegisterSequence[0].Operation" Type="UInt">5</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.RegisterSequenceContainer[6].RegisterSequence[0].WaitTime" Type="UInt">200000</Property>
			<Property Name="NI.LV.FPGA.RIO.659XR.POSC.Version" Type="UInt">1</Property>
			<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Property Name="Resource Name" Type="Str">RIO0</Property>
			<Property Name="Target Class" Type="Str">PXIe-6592R</Property>
			<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
			<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
			<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
				<Property Name="FPGA.PersistentID" Type="Str">{5020AB3C-3969-4165-86B9-2F2530A23288}</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				<Item Name="100MHz" Type="FPGA Derived Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{CAF76B04-54AD-4CF7-BC7C-0FD58A76EC7C}</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig" Type="Str">Multiplier=5.000000;Divisor=2.000000</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.Divisor" Type="Dbl">2</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.FromExternalClock" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.Multiplier" Type="Dbl">5</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.ParentFrequencyInHertz" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
			</Item>
			<Item Name="d_microblaze" Type="FPGA Component Level IP">
				<Property Name="FPGA.PersistentID" Type="Str">{E02AC908-13A0-4E26-8A45-F99942DC8C66}</Property>
				<Property Name="NI.LV.CLIP.ClockConnections" Type="Xml">
<CLIPConnections>
   <CLIPSignal name="sys_clock">
      <ClockFromCLIP>false</ClockFromCLIP>
      <Direction>ToCLIP</Direction>
      <HDLName>sys_clock</HDLName>
      <LinkToFPGAClock>100MHz</LinkToFPGAClock>
      <MaxFreq>200000000.0000</MaxFreq>
      <MinFreq>1000000.000000</MinFreq>
      <UseTopClock>false</UseTopClock>
   </CLIPSignal>
</CLIPConnections></Property>
				<Property Name="NI.LV.CLIP.DeclarationCategory" Type="Str">User Defined</Property>
				<Property Name="NI.LV.CLIP.DeclarationName" Type="Str">d_microblaze_wrapper_top</Property>
				<Property Name="NI.LV.CLIP.SocketedCLIP" Type="Bool">false</Property>
				<Property Name="NI.LV.CLIP.SocketSelection" Type="Str"></Property>
				<Property Name="NI.LV.CLIP.SocketSpecificCompileSignature" Type="Str"></Property>
				<Property Name="NI.LV.CLIP.Version" Type="UInt">4</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="ACLK" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/ACLK</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{4BB13084-BAB3-4A6E-B4E9-AC9BFBE1DCCB}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_RXD_1_tdata" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_RXD_1_tdata</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{5B9C1531-1F55-4112-928D-B3DE74F9605C}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_RXD_1_tlast" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_RXD_1_tlast</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{739828AD-BC43-4E3B-97D9-0CE4D929078D}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_RXD_1_tready" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_RXD_1_tready</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{8A08BACC-34C6-4317-86DD-FD6C364FCC8A}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_RXD_1_tvalid" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{F5B32C05-E465-4665-AF2E-58549686E12F}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_RXD_tdata" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_RXD_tdata</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{A0FC7426-3426-4DFC-9223-D8043E991E40}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_RXD_tlast" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_RXD_tlast</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{59DCF378-A174-4D70-827A-A702E0E5FCBC}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_RXD_tready" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_RXD_tready</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{B3C3C994-25C8-42BF-B09A-01A465D95094}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_RXD_tvalid" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_RXD_tvalid</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{CE93F446-3D6D-41E7-99D5-6543A6F047B4}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_TXD_1_tdata" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_TXD_1_tdata</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{EECCEA1D-C490-4E2A-ABBC-5F83D4BD7778}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_TXD_1_tlast" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_TXD_1_tlast</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{DA8FBBD0-27DB-4386-87F6-0F37321F1F53}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_TXD_1_tready" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_TXD_1_tready</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{19A25F1F-C456-438E-AB4F-CE0FC26C273D}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_TXD_1_tvalid" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{B41AF13F-1039-4433-9E62-C981244EA7EA}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_TXD_tdata" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_TXD_tdata</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{102A93BB-8507-461B-A4D7-73FDBFAEBEE4}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_TXD_tlast" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_TXD_tlast</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{011A040A-75BA-4567-89CB-188C6D34E6CE}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_TXD_tready" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_TXD_tready</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{DCDEB793-CC56-459D-BC4B-B25BB31E7ECC}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="AXI_STR_TXD_tvalid" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/AXI_STR_TXD_tvalid</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D184259A-8AEB-45F8-A7C6-2E562BE21049}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="Int_0" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/Int_0</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{5BE9848C-5889-4465-BF70-C44C34CF7487}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="Int_1" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/Int_1</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{8BFA1A21-0FD5-4DF8-B7BF-F86B75EFA721}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="gpio1_in_tri_i" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/gpio1_in_tri_i</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{949E217B-A844-48E9-AE80-45AA1E1278E0}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="gpio1_out_tri_o" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/gpio1_out_tri_o</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{BA375C68-E556-4947-A523-A1FCAA5EED1B}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="gpio2_in_tri_i" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/gpio2_in_tri_i</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{46069EBC-0053-4041-965A-BF85187D8216}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
				<Item Name="gpio2_out_tri_o" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/d_microblaze/SignalList/gpio2_out_tri_o</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{948057A4-8F7B-408D-BF53-262C499EA3DA}</Property>
					<Property Name="NI.LV.EIO.Physical" Type="Bool">true</Property>
				</Item>
			</Item>
			<Item Name="DRAM Bank 0" Type="FPGA Component Level IP">
				<Property Name="NI.LV.CLIP.DeclarationCategory" Type="Str"></Property>
				<Property Name="NI.LV.CLIP.SocketedCLIP" Type="Bool">true</Property>
				<Property Name="NI.LV.CLIP.SocketSelection" Type="Str">659XR-DRAMTypeA-Bank0</Property>
				<Property Name="NI.LV.CLIP.SocketSpecificCompileSignature" Type="Str"></Property>
				<Property Name="NI.LV.CLIP.Version" Type="UInt">4</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.SortType" Type="Int">3</Property>
			</Item>
			<Item Name="Fpga-Exercisor-Top.vi" Type="VI" URL="../PXIe-6592/Fpga-Exercisor-Top.vi">
				<Property Name="BuildSpec" Type="Str">{FE65809A-27B2-4FB3-986D-886DFE4325F6}</Property>
				<Property Name="configString.guid" Type="Str">{011A040A-75BA-4567-89CB-188C6D34E6CE}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=bool{102A93BB-8507-461B-A4D7-73FDBFAEBEE4}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32{19A25F1F-C456-438E-AB4F-CE0FC26C273D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=bool{27598E5A-808E-4EB9-A84F-296D067CCD62}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{46069EBC-0053-4041-965A-BF85187D8216}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32{49937737-2A0B-4E7F-AD0C-1D05EEBBD999}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{4BB13084-BAB3-4A6E-B4E9-AC9BFBE1DCCB}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=bool{5020AB3C-3969-4165-86B9-2F2530A23288}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{59DCF378-A174-4D70-827A-A702E0E5FCBC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=bool{5B9C1531-1F55-4112-928D-B3DE74F9605C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32{5BE9848C-5889-4465-BF70-C44C34CF7487}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=bool{739828AD-BC43-4E3B-97D9-0CE4D929078D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=bool{8A08BACC-34C6-4317-86DD-FD6C364FCC8A}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=bool{8BFA1A21-0FD5-4DF8-B7BF-F86B75EFA721}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=bool{948057A4-8F7B-408D-BF53-262C499EA3DA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32{949E217B-A844-48E9-AE80-45AA1E1278E0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32{A0FC7426-3426-4DFC-9223-D8043E991E40}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32{AFAA15FB-1B9A-4503-9EA6-9AD56DDD3543}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{B3C3C994-25C8-42BF-B09A-01A465D95094}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=bool{B41AF13F-1039-4433-9E62-C981244EA7EA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=bool{BA375C68-E556-4947-A523-A1FCAA5EED1B}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32{CAF76B04-54AD-4CF7-BC7C-0FD58A76EC7C}Multiplier=5.000000;Divisor=2.000000{CE93F446-3D6D-41E7-99D5-6543A6F047B4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=bool{D184259A-8AEB-45F8-A7C6-2E562BE21049}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=bool{DA022823-238A-4FBC-819F-997C38E6FEC0}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{DA8FBBD0-27DB-4386-87F6-0F37321F1F53}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=bool{DCDEB793-CC56-459D-BC4B-B25BB31E7ECC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=bool{E02AC908-13A0-4E26-8A45-F99942DC8C66}189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
{EECCEA1D-C490-4E2A-ABBC-5F83D4BD7778}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32{F5B32C05-E465-4665-AF2E-58549686E12F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">100MHzMultiplier=5.000000;Divisor=2.00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;ACLKNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=boolAXI_STR_RXD_1_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32AXI_STR_RXD_1_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=boolAXI_STR_RXD_1_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=boolAXI_STR_RXD_1_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolAXI_STR_RXD_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32AXI_STR_RXD_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=boolAXI_STR_RXD_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=boolAXI_STR_RXD_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=boolAXI_STR_TXD_1_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32AXI_STR_TXD_1_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=boolAXI_STR_TXD_1_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=boolAXI_STR_TXD_1_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=boolAXI_STR_TXD_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32AXI_STR_TXD_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=boolAXI_STR_TXD_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=boolAXI_STR_TXD_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=boold_microblaze189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
gpio1_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32gpio1_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32gpio2_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32gpio2_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32HT-Data_in 2"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"HT-Data_in"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Int_0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=boolInt_1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]TH-Data_Out 2"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"TH-Data_Out"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
				<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">Z:\work\git\LabVIEW_Fpga\06_MicroBlaze\04_lwIP_Ex\FPGA Bitfiles\04lwIpEx_FPGATarget_Fpga-Exercisor-T_x8Gx0i3FMmo.lvbitx</Property>
			</Item>
			<Item Name="Fpga-Counter-U16.vi" Type="VI" URL="../PXIe-6592/Fpga-Counter-U16.vi">
				<Property Name="configString.guid" Type="Str">{011A040A-75BA-4567-89CB-188C6D34E6CE}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=bool{102A93BB-8507-461B-A4D7-73FDBFAEBEE4}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32{19A25F1F-C456-438E-AB4F-CE0FC26C273D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=bool{27598E5A-808E-4EB9-A84F-296D067CCD62}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{46069EBC-0053-4041-965A-BF85187D8216}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32{49937737-2A0B-4E7F-AD0C-1D05EEBBD999}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{4BB13084-BAB3-4A6E-B4E9-AC9BFBE1DCCB}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=bool{5020AB3C-3969-4165-86B9-2F2530A23288}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{59DCF378-A174-4D70-827A-A702E0E5FCBC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=bool{5B9C1531-1F55-4112-928D-B3DE74F9605C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32{5BE9848C-5889-4465-BF70-C44C34CF7487}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=bool{739828AD-BC43-4E3B-97D9-0CE4D929078D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=bool{8A08BACC-34C6-4317-86DD-FD6C364FCC8A}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=bool{8BFA1A21-0FD5-4DF8-B7BF-F86B75EFA721}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=bool{948057A4-8F7B-408D-BF53-262C499EA3DA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32{949E217B-A844-48E9-AE80-45AA1E1278E0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32{A0FC7426-3426-4DFC-9223-D8043E991E40}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32{AFAA15FB-1B9A-4503-9EA6-9AD56DDD3543}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{B3C3C994-25C8-42BF-B09A-01A465D95094}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=bool{B41AF13F-1039-4433-9E62-C981244EA7EA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=bool{BA375C68-E556-4947-A523-A1FCAA5EED1B}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32{CAF76B04-54AD-4CF7-BC7C-0FD58A76EC7C}Multiplier=5.000000;Divisor=2.000000{CE93F446-3D6D-41E7-99D5-6543A6F047B4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=bool{D184259A-8AEB-45F8-A7C6-2E562BE21049}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=bool{DA022823-238A-4FBC-819F-997C38E6FEC0}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{DA8FBBD0-27DB-4386-87F6-0F37321F1F53}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=bool{DCDEB793-CC56-459D-BC4B-B25BB31E7ECC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=bool{E02AC908-13A0-4E26-8A45-F99942DC8C66}189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
{EECCEA1D-C490-4E2A-ABBC-5F83D4BD7778}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32{F5B32C05-E465-4665-AF2E-58549686E12F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">100MHzMultiplier=5.000000;Divisor=2.00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;ACLKNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=boolAXI_STR_RXD_1_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32AXI_STR_RXD_1_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=boolAXI_STR_RXD_1_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=boolAXI_STR_RXD_1_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolAXI_STR_RXD_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32AXI_STR_RXD_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=boolAXI_STR_RXD_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=boolAXI_STR_RXD_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=boolAXI_STR_TXD_1_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32AXI_STR_TXD_1_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=boolAXI_STR_TXD_1_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=boolAXI_STR_TXD_1_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=boolAXI_STR_TXD_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32AXI_STR_TXD_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=boolAXI_STR_TXD_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=boolAXI_STR_TXD_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=boold_microblaze189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
gpio1_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32gpio1_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32gpio2_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32gpio2_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32HT-Data_in 2"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"HT-Data_in"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Int_0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=boolInt_1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]TH-Data_Out 2"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"TH-Data_Out"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
			</Item>
			<Item Name="Fpga-Last-NonZeroValue.vi" Type="VI" URL="../PXIe-6592/Fpga-Last-NonZeroValue.vi">
				<Property Name="configString.guid" Type="Str">{011A040A-75BA-4567-89CB-188C6D34E6CE}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=bool{102A93BB-8507-461B-A4D7-73FDBFAEBEE4}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32{19A25F1F-C456-438E-AB4F-CE0FC26C273D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=bool{27598E5A-808E-4EB9-A84F-296D067CCD62}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{46069EBC-0053-4041-965A-BF85187D8216}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32{49937737-2A0B-4E7F-AD0C-1D05EEBBD999}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{4BB13084-BAB3-4A6E-B4E9-AC9BFBE1DCCB}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=bool{5020AB3C-3969-4165-86B9-2F2530A23288}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{59DCF378-A174-4D70-827A-A702E0E5FCBC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=bool{5B9C1531-1F55-4112-928D-B3DE74F9605C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32{5BE9848C-5889-4465-BF70-C44C34CF7487}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=bool{739828AD-BC43-4E3B-97D9-0CE4D929078D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=bool{8A08BACC-34C6-4317-86DD-FD6C364FCC8A}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=bool{8BFA1A21-0FD5-4DF8-B7BF-F86B75EFA721}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=bool{948057A4-8F7B-408D-BF53-262C499EA3DA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32{949E217B-A844-48E9-AE80-45AA1E1278E0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32{A0FC7426-3426-4DFC-9223-D8043E991E40}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32{AFAA15FB-1B9A-4503-9EA6-9AD56DDD3543}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{B3C3C994-25C8-42BF-B09A-01A465D95094}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=bool{B41AF13F-1039-4433-9E62-C981244EA7EA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=bool{BA375C68-E556-4947-A523-A1FCAA5EED1B}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32{CAF76B04-54AD-4CF7-BC7C-0FD58A76EC7C}Multiplier=5.000000;Divisor=2.000000{CE93F446-3D6D-41E7-99D5-6543A6F047B4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=bool{D184259A-8AEB-45F8-A7C6-2E562BE21049}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=bool{DA022823-238A-4FBC-819F-997C38E6FEC0}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{DA8FBBD0-27DB-4386-87F6-0F37321F1F53}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=bool{DCDEB793-CC56-459D-BC4B-B25BB31E7ECC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=bool{E02AC908-13A0-4E26-8A45-F99942DC8C66}189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
{EECCEA1D-C490-4E2A-ABBC-5F83D4BD7778}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32{F5B32C05-E465-4665-AF2E-58549686E12F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">100MHzMultiplier=5.000000;Divisor=2.00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;ACLKNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=boolAXI_STR_RXD_1_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32AXI_STR_RXD_1_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=boolAXI_STR_RXD_1_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=boolAXI_STR_RXD_1_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolAXI_STR_RXD_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32AXI_STR_RXD_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=boolAXI_STR_RXD_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=boolAXI_STR_RXD_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=boolAXI_STR_TXD_1_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32AXI_STR_TXD_1_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=boolAXI_STR_TXD_1_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=boolAXI_STR_TXD_1_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=boolAXI_STR_TXD_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32AXI_STR_TXD_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=boolAXI_STR_TXD_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=boolAXI_STR_TXD_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=boold_microblaze189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
gpio1_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32gpio1_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32gpio2_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32gpio2_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32HT-Data_in 2"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"HT-Data_in"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Int_0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=boolInt_1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]TH-Data_Out 2"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"TH-Data_Out"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
			</Item>
			<Item Name="Fpga-Pulse.vi" Type="VI" URL="../PXIe-6592/Fpga-Pulse.vi">
				<Property Name="configString.guid" Type="Str">{011A040A-75BA-4567-89CB-188C6D34E6CE}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=bool{102A93BB-8507-461B-A4D7-73FDBFAEBEE4}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32{19A25F1F-C456-438E-AB4F-CE0FC26C273D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=bool{27598E5A-808E-4EB9-A84F-296D067CCD62}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{46069EBC-0053-4041-965A-BF85187D8216}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32{49937737-2A0B-4E7F-AD0C-1D05EEBBD999}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{4BB13084-BAB3-4A6E-B4E9-AC9BFBE1DCCB}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=bool{5020AB3C-3969-4165-86B9-2F2530A23288}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{59DCF378-A174-4D70-827A-A702E0E5FCBC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=bool{5B9C1531-1F55-4112-928D-B3DE74F9605C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32{5BE9848C-5889-4465-BF70-C44C34CF7487}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=bool{739828AD-BC43-4E3B-97D9-0CE4D929078D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=bool{8A08BACC-34C6-4317-86DD-FD6C364FCC8A}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=bool{8BFA1A21-0FD5-4DF8-B7BF-F86B75EFA721}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=bool{948057A4-8F7B-408D-BF53-262C499EA3DA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32{949E217B-A844-48E9-AE80-45AA1E1278E0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32{A0FC7426-3426-4DFC-9223-D8043E991E40}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32{AFAA15FB-1B9A-4503-9EA6-9AD56DDD3543}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{B3C3C994-25C8-42BF-B09A-01A465D95094}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=bool{B41AF13F-1039-4433-9E62-C981244EA7EA}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=bool{BA375C68-E556-4947-A523-A1FCAA5EED1B}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32{CAF76B04-54AD-4CF7-BC7C-0FD58A76EC7C}Multiplier=5.000000;Divisor=2.000000{CE93F446-3D6D-41E7-99D5-6543A6F047B4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=bool{D184259A-8AEB-45F8-A7C6-2E562BE21049}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=bool{DA022823-238A-4FBC-819F-997C38E6FEC0}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{DA8FBBD0-27DB-4386-87F6-0F37321F1F53}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=bool{DCDEB793-CC56-459D-BC4B-B25BB31E7ECC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=bool{E02AC908-13A0-4E26-8A45-F99942DC8C66}189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
{EECCEA1D-C490-4E2A-ABBC-5F83D4BD7778}NumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32{F5B32C05-E465-4665-AF2E-58549686E12F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">100MHzMultiplier=5.000000;Divisor=2.00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;ACLKNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/ACLK;0;ReadMethodType=boolAXI_STR_RXD_1_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tdata;0;WriteMethodType=U32AXI_STR_RXD_1_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tlast;0;WriteMethodType=boolAXI_STR_RXD_1_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tready;0;ReadMethodType=boolAXI_STR_RXD_1_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_1_tvalid;0;WriteMethodType=boolAXI_STR_RXD_tdataArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tdata;0;WriteMethodType=U32AXI_STR_RXD_tlastArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tlast;0;WriteMethodType=boolAXI_STR_RXD_treadyNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_RXD_tready;0;ReadMethodType=boolAXI_STR_RXD_tvalidArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_RXD_tvalid;0;WriteMethodType=boolAXI_STR_TXD_1_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tdata;0;ReadMethodType=U32AXI_STR_TXD_1_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tlast;0;ReadMethodType=boolAXI_STR_TXD_1_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tready;0;WriteMethodType=boolAXI_STR_TXD_1_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_1_tvalid;0;ReadMethodType=boolAXI_STR_TXD_tdataNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tdata;0;ReadMethodType=U32AXI_STR_TXD_tlastNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tlast;0;ReadMethodType=boolAXI_STR_TXD_treadyArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/AXI_STR_TXD_tready;0;WriteMethodType=boolAXI_STR_TXD_tvalidNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/AXI_STR_TXD_tvalid;0;ReadMethodType=boold_microblaze189b0f2f581d1245b50845a1cd12744d82d71516d86eb6e89f4e64e97010a94b895884ebcbb6fcc7e1be69c081149577&lt;Array&gt;
&lt;Name&gt;Generics&lt;/Name&gt;
&lt;Dimsize&gt;0&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Generic&lt;/Name&gt;
&lt;NumElts&gt;5&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Type&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Default value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Value&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;Description&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
&lt;Array&gt;
&lt;Name&gt;Clock Connections&lt;/Name&gt;
&lt;Dimsize&gt;1&lt;/Dimsize&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock Connection&lt;/Name&gt;
&lt;NumElts&gt;2&lt;/NumElts&gt;
&lt;Cluster&gt;
&lt;Name&gt;CLIP Clock&lt;/Name&gt;
&lt;NumElts&gt;6&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;LabVIEW name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;String&gt;
&lt;Name&gt;VHDL name&lt;/Name&gt;
&lt;Val&gt;sys_clock&lt;/Val&gt;
&lt;/String&gt;
&lt;DBL&gt;
&lt;Name&gt;Max Freq&lt;/Name&gt;
&lt;Val&gt;200000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;DBL&gt;
&lt;Name&gt;Min Freq&lt;/Name&gt;
&lt;Val&gt;1000000.00000000000000&lt;/Val&gt;
&lt;/DBL&gt;
&lt;EW&gt;
&lt;Name&gt;Direction&lt;/Name&gt;
&lt;Choice&gt;ToCLIP&lt;/Choice&gt;
&lt;Choice&gt;FromCLIP&lt;/Choice&gt;
&lt;Choice&gt;Bidirectional&lt;/Choice&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/EW&gt;
&lt;String&gt;
&lt;Name&gt;ClockToLinkTo&lt;/Name&gt;
&lt;Val&gt;&lt;/Val&gt;
&lt;/String&gt;
&lt;/Cluster&gt;
&lt;Cluster&gt;
&lt;Name&gt;FPGA Clock&lt;/Name&gt;
&lt;NumElts&gt;3&lt;/NumElts&gt;
&lt;String&gt;
&lt;Name&gt;Name&lt;/Name&gt;
&lt;Val&gt;100MHz&lt;/Val&gt;
&lt;/String&gt;
&lt;Boolean&gt;
&lt;Name&gt;Use Top Clock&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;Boolean&gt;
&lt;Name&gt;Clock From CLIP&lt;/Name&gt;
&lt;Val&gt;0&lt;/Val&gt;
&lt;/Boolean&gt;
&lt;/Cluster&gt;
&lt;/Cluster&gt;
&lt;/Array&gt;
gpio1_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio1_in_tri_i;0;WriteMethodType=U32gpio1_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio1_out_tri_o;0;ReadMethodType=U32gpio2_in_tri_iArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/gpio2_in_tri_i;0;WriteMethodType=U32gpio2_out_tri_oNumberOfSyncRegistersForReadInProject=Auto;resource=/d_microblaze/SignalList/gpio2_out_tri_o;0;ReadMethodType=U32HT-Data_in 2"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"HT-Data_in"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Int_0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_0;0;WriteMethodType=boolInt_1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;resource=/d_microblaze/SignalList/Int_1;0;WriteMethodType=boolPXIe-6592R/Clk40/falsefalse12d422121687815e627be18421f4b6dcFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSPXIE_6592RFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]TH-Data_Out 2"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"TH-Data_Out"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
			</Item>
			<Item Name="HT-Data_in" Type="FPGA FIFO">
				<Property Name="Actual Number of Elements" Type="UInt">1029</Property>
				<Property Name="Arbitration for Read" Type="UInt">1</Property>
				<Property Name="Arbitration for Write" Type="UInt">1</Property>
				<Property Name="Control Logic" Type="UInt">0</Property>
				<Property Name="Data Type" Type="UInt">7</Property>
				<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
				<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
				<Property Name="fifo.configured" Type="Bool">true</Property>
				<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
				<Property Name="fifo.valid" Type="Bool">true</Property>
				<Property Name="fifo.version" Type="Int">12</Property>
				<Property Name="FPGA.PersistentID" Type="Str">{27598E5A-808E-4EB9-A84F-296D067CCD62}</Property>
				<Property Name="Local" Type="Bool">false</Property>
				<Property Name="Memory Type" Type="UInt">2</Property>
				<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
				<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
				<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
				<Property Name="Type" Type="UInt">1</Property>
				<Property Name="Type Descriptor" Type="Str">1000800000000001000940070003553332000100000000000000000000</Property>
			</Item>
			<Item Name="HT-Data_in 2" Type="FPGA FIFO">
				<Property Name="Actual Number of Elements" Type="UInt">1029</Property>
				<Property Name="Arbitration for Read" Type="UInt">1</Property>
				<Property Name="Arbitration for Write" Type="UInt">1</Property>
				<Property Name="Control Logic" Type="UInt">0</Property>
				<Property Name="Data Type" Type="UInt">7</Property>
				<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
				<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;HT-Data_in;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
				<Property Name="fifo.configured" Type="Bool">true</Property>
				<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
				<Property Name="fifo.valid" Type="Bool">true</Property>
				<Property Name="fifo.version" Type="Int">12</Property>
				<Property Name="FPGA.PersistentID" Type="Str">{AFAA15FB-1B9A-4503-9EA6-9AD56DDD3543}</Property>
				<Property Name="Local" Type="Bool">false</Property>
				<Property Name="Memory Type" Type="UInt">2</Property>
				<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
				<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
				<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
				<Property Name="Type" Type="UInt">1</Property>
				<Property Name="Type Descriptor" Type="Str">1000800000000001000940070003553332000100000000000000000000</Property>
			</Item>
			<Item Name="TH-Data_Out" Type="FPGA FIFO">
				<Property Name="Actual Number of Elements" Type="UInt">1023</Property>
				<Property Name="Arbitration for Read" Type="UInt">1</Property>
				<Property Name="Arbitration for Write" Type="UInt">1</Property>
				<Property Name="Control Logic" Type="UInt">0</Property>
				<Property Name="Data Type" Type="UInt">7</Property>
				<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
				<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
				<Property Name="fifo.configured" Type="Bool">true</Property>
				<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
				<Property Name="fifo.valid" Type="Bool">true</Property>
				<Property Name="fifo.version" Type="Int">12</Property>
				<Property Name="FPGA.PersistentID" Type="Str">{49937737-2A0B-4E7F-AD0C-1D05EEBBD999}</Property>
				<Property Name="Local" Type="Bool">false</Property>
				<Property Name="Memory Type" Type="UInt">2</Property>
				<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
				<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
				<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
				<Property Name="Type" Type="UInt">2</Property>
				<Property Name="Type Descriptor" Type="Str">1000800000000001000940070003553332000100000000000000000000</Property>
			</Item>
			<Item Name="TH-Data_Out 2" Type="FPGA FIFO">
				<Property Name="Actual Number of Elements" Type="UInt">1023</Property>
				<Property Name="Arbitration for Read" Type="UInt">1</Property>
				<Property Name="Arbitration for Write" Type="UInt">1</Property>
				<Property Name="Control Logic" Type="UInt">0</Property>
				<Property Name="Data Type" Type="UInt">7</Property>
				<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
				<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;TH-Data_Out;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
				<Property Name="fifo.configured" Type="Bool">true</Property>
				<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
				<Property Name="fifo.valid" Type="Bool">true</Property>
				<Property Name="fifo.version" Type="Int">12</Property>
				<Property Name="FPGA.PersistentID" Type="Str">{DA022823-238A-4FBC-819F-997C38E6FEC0}</Property>
				<Property Name="Local" Type="Bool">false</Property>
				<Property Name="Memory Type" Type="UInt">2</Property>
				<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
				<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
				<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
				<Property Name="Type" Type="UInt">2</Property>
				<Property Name="Type Descriptor" Type="Str">1000800000000001000940070003553332000100000000000000000000</Property>
			</Item>
			<Item Name="IP Builder" Type="IP Builder Target">
				<Item Name="Dependencies" Type="Dependencies"/>
				<Item Name="Build Specifications" Type="Build"/>
			</Item>
			<Item Name="PXIe-6592R IO Socket v1" Type="FPGA Component Level IP">
				<Property Name="NI.LV.CLIP.DeclarationCategory" Type="Str"></Property>
				<Property Name="NI.LV.CLIP.SocketedCLIP" Type="Bool">true</Property>
				<Property Name="NI.LV.CLIP.SocketSelection" Type="Str">PXIe-6592R IO Socket v1</Property>
				<Property Name="NI.LV.CLIP.SocketSpecificCompileSignature" Type="Str"></Property>
				<Property Name="NI.LV.CLIP.Version" Type="UInt">4</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.SortType" Type="Int">3</Property>
			</Item>
			<Item Name="Dependencies" Type="Dependencies">
				<Item Name="vi.lib" Type="Folder">
					<Item Name="lvSimController.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/Simulation/lvSimController.dll"/>
				</Item>
			</Item>
			<Item Name="Build Specifications" Type="Build">
				<Item Name="Fpga-Exercisor-Top" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
					<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
					<Property Name="BuildSpecDecription" Type="Str"></Property>
					<Property Name="BuildSpecName" Type="Str">Fpga-Exercisor-Top</Property>
					<Property Name="Comp.BitfileName" Type="Str">04lwIpEx_FPGATarget_Fpga-Exercisor-T_x8Gx0i3FMmo.lvbitx</Property>
					<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
					<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
					<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
					<Property Name="Comp.Version.Build" Type="Int">0</Property>
					<Property Name="Comp.Version.Fix" Type="Int">0</Property>
					<Property Name="Comp.Version.Major" Type="Int">1</Property>
					<Property Name="Comp.Version.Minor" Type="Int">0</Property>
					<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
					<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
					<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
					<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
					<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
					<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
					<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
					<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
					<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
					<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
					<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
					<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
					<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
					<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
					<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
					<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
					<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/Z/work/git/LabVIEW_Fpga/06_MicroBlaze/04_lwIP_Ex/FPGA Bitfiles/04lwIpEx_FPGATarget_Fpga-Exercisor-T_x8Gx0i3FMmo.lvbitx</Property>
					<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/04lwIpEx_FPGATarget_Fpga-Exercisor-T_x8Gx0i3FMmo.lvbitx</Property>
					<Property Name="ProjectPath" Type="Path">/Z/work/git/LabVIEW_Fpga/06_MicroBlaze/04_lwIP_Ex/04_lwIp_Ex.lvproj</Property>
					<Property Name="RelativePath" Type="Bool">true</Property>
					<Property Name="RunWhenLoaded" Type="Bool">false</Property>
					<Property Name="SupportDownload" Type="Bool">true</Property>
					<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
					<Property Name="TargetName" Type="Str">FPGA Target</Property>
					<Property Name="TopLevelVI" Type="Ref">/My Computer/FPGA Target/Fpga-Exercisor-Top.vi</Property>
				</Item>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
