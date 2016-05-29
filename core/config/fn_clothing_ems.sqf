private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"EMS Clothing Shop"];

switch (_filter) do
{
	case 0: {[["EMTRM_uni", nil, 50],["A3L_EMT1", nil, 50],["A3L_EMT2", nil, 50],["fire_uni2", nil, 50],["fire_uni1", nil, 50],["emsoff_uni", nil, 50],["emt_Uni1", nil, 50],["emt_Uni3", nil, 50],["U_B_Wetsuit", nil, 50]];};
	case 1: {[["A3L_medic_helmet", nil, 20],["H_MilCap_blue", nil, 20],["H_CrewHelmetHeli_B", nil, 20]];};
	case 2: {[];};
	case 3: {[["V_RebreatherB",nil,300],["A3L_EMT_FTO_Vest",nil,300],["A3L_EMT_RideAlong_Vest",nil,300]];};
	case 4: {[["FFG_EMTBeltINV","Invisible LR Radio",300],["B_FieldPack_ocamo",nil,300],["B_Carryall_oucamo",nil,300],["B_TacticalPack_blk",nil,300]];};
};
