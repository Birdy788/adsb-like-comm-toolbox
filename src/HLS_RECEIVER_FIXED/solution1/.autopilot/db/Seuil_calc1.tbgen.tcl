set moduleName Seuil_calc1
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Seuil_calc1::Seuil_calc1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ clock int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ e int 8 regular {fifo 0 volatile }  }
	{ detect int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clock", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Seuil_calc1.clock.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Seuil_calc1.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Seuil_calc1.e.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "detect", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Seuil_calc1.detect.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ clock sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clock } 
	{ e_dout sc_in sc_lv 8 signal 2 clock } 
	{ e_empty_n sc_in sc_logic 1 signal 2 clock } 
	{ e_read sc_out sc_logic 1 signal 2 clock } 
	{ detect_din sc_out sc_logic 1 signal 3 clock } 
	{ detect_full_n sc_in sc_logic 1 signal 3 clock } 
	{ detect_write sc_out sc_logic 1 signal 3 clock } 
}
set NewPortList {[ 
	{ "name": "clock", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clock", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "detect_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "detect", "role": "din" }} , 
 	{ "name": "detect_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "detect", "role": "full_n" }} , 
 	{ "name": "detect_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "detect", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Seuil_calc1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "e"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "detect"}]},
			{"Name" : "Seuil_calc1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "Seuil_calc1_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "detect_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U22", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U23", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U24", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U25", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U26", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U27", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U28", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U29", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U30", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U31", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U32", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U33", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U34", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U35", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U36", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U37", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mul_meOg_U38", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mul_mfYi_U39", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	Seuil_calc1 {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		detect {Type O LastRead -1 FirstWrite 6}
		Seuil_calc1_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	Seuil_calc1_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		detect {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e { ap_fifo {  { e_dout fifo_data 0 8 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	detect { ap_fifo {  { detect_din fifo_data 1 1 }  { detect_full_n fifo_status 0 1 }  { detect_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	e { fifo_read 1 has_conditional }
	detect { fifo_write 1 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}