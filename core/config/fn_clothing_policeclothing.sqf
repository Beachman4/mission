private["_filter"];
_filter = param[0];
ctrlSetText[3103,"Police Clothing Shop"];
switch (_filter) do
{
	case 0: 
    {
        [
            ["jamie_sheriff","Sheriff Uniform",10],
            ["TCG_PDDTC","Detective Uniform",10],
            ["A3L_DAI","DA Investigator Uniform",10]
        ];
    };
	case 1: 
    {
        [
            ["jamie_pcapgreen","Sheriff Cap",10],
            ["jamie_pcapgreen2","Sheriff Cap Badge",10],
            ["Campaign_Hat_Dark","Campaign Hat (Black)",10],
            ["Campaign_Hat_Tan","Campaign Hat (Tan)",10],
            ["Campaign_Hat_Light","Campaign Hat (Light)",10]
        ];
    };
	case 2: 
    {
        [
            ["G_Aviator",nil,10],
            ["G_Shades_Black",nil,10],
            ["G_Shades_Blue",nil,10],
            ["G_Sport_Blackred",nil,10],
            ["G_Sport_Checkered",nil,10],
            ["G_Sport_Blackyellow",nil,10],
            ["G_Sport_BlackWhite",nil,10],
            ["G_Squares",nil,10]
        ];
    };
	case 3: 
    {
        [
            ["highthreatvestblack","Black Sheriff Vest 1",10],
            ["highthreatvesttan","Tan Sheriff Vest",10],
            ["jamie_sheriff_vest","Green Sheriff Vest",10],
            ["TFO_TACVEST_SHERIFF","Sheriff Task Force Vest",10],
            ["CID_Vest","CID Vest",10],
            ["DAI_TACVEST_WHITE","DAI Vest White",10],
            ["DAI_TACVEST_YELLOW","DAI Vest Yellow",10],
            ["DAI_VEST_BLACK","DAI Vest",10],
            ["jamie_security","Security Vest",10],
            ["IA_VEST_BLACK","IA Vest Black",10],
            ["IA_VEST_WHITE","IA Vest White",10]
        ];
    };
	case 4: 
    {
        [
            ["FFG_PoliceBelt","Duty Belt",10],
            ["FFG_PoliceBeltdrop","Drop Holster Belt",10],
            ["FFG_PoliceBeltINV","Invisible Duty Belt",10],
            ["B_AssaultPack_cbr",nil,10],
            ["B_Kitbag_mcamo",nil,10],
            ["B_TacticalPack_oli",nil,10],
            ["B_FieldPack_ocamo",nil,10],
            ["B_Bergen_sgg",nil,10],
            ["B_Kitbag_cbr",nil,10],
            ["B_Carryall_oli",nil,10],
            ["B_Carryall_khk",nil,10]
        ];
    };
};