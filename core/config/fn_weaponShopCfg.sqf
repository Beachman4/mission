#include <macro.h>
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0};

switch(_shop) do
{
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
											["FirstAidKit",nil,250],
											["Medikit",nil,500],
											["ToolKit",nil,500]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
											["A3L_Extinguisher",nil,350],
											["tf_anprc152",nil,100],
											["ItemGPS",nil,250],
											["Binocular",nil,1250],
											["ToolKit",nil,500],
											["NVGoggles",nil,5000]
                                        ]
                                ];
                        };
                };
        };


        case "cop_basic":
        {
                switch(true) do
                {
						case (playerSide != west): {"You are not a police officer"};
                        default
                        {
							["Police Weapon Shop",[["FirstAidKit",nil,10],["Medikit",nil,10],["ToolKit",nil,10],["Binocular",nil,10],["ItemGPS",nil,10],["NVGoggles",nil,10],["tf_anprc152",nil,10]]];
                        };
                };
        };
        case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer"};
                        default
                        {
                            ["Police Weapon Shop",[["Taser_26","Taser",10],["26_cartridge",nil,10],["RH_m9",nil,10],["RH_15Rnd_9x19_M9",nil,10],["RH_g19",nil,10],["RH_17Rnd_9x19_g17",nil,10],["hgun_mas_glocksf_F",nil,10],["hgun_mas_usp_F",nil,10],["12Rnd_mas_45acp_Mag",nil,10],["RH_kimber_nw",nil,10],["RH_7Rnd_45cal_m1911",nil,10],["RH_p226",nil,10],["RH_15Rnd_9x19_SIG",nil,10],["KPFS_P99",nil,10],["KPFS_15rnd_9x19_P99",nil,10],["arifle_mas_hk416",nil,10],["arifle_mas_g36c",nil,10],["30Rnd_mas_556x45_Stanag",nil,10],["srifle_mas_hk417",nil,10],["srifle_mas_m24",nil,10],["5Rnd_mas_762x51_Stanag",nil,10],["20Rnd_mas_762x51_Stanag",nil,10],["RH_M4_moe_b",nil,10],["RH_30Rnd_556x45_M855A1",nil,10],["FHQ_optic_AC11704",nil,10],["FHQ_optic_AC12136",nil,10],["optic_Aco",nil,10],["optic_ACO_grn",nil,10],["FHQ_optic_ACOG",nil,10],["RH_compM2",nil,10]]];
                        };
                };
        };
        case "cop_sert":
        {
            if (__GETC__(life_coplevel) < 2) exitWith {hint "You are not high enough cop level."; closeDialog 0;};
            switch (true) do
            {
                case (playerSide != west): {"You are not a police officer"};
                case (__GETC__(life_coplevel) < 2): {hint "You are not high enough cop level."; closeDialog 0;};
                default
                {
                    ["Sert Weapon Shop", [["RH_M4m_b", "M4A1 Magpul Black", 10],["RH_fa556", nil, 10],["FHQ_acc_ANPEQ15_black", nil, 10],["RH_compm4s", nil, 10],["RH_30Rnd_556x45_M855A1",nil,10],["optic_mas_Arco_blk", nil,10],["optic_mas_acog_eo", nil, 10],["acc_pointer_IR", nil,10],["srifle_mas_m110", "M110 Rifle",10],["FHQ_optic_TWS3050", nil, 10],["muzzle_mas_snds_SH", nil,10],["RH_SFM952V", nil,10],["optic_LRPS",nil,10],["optic_LRPS",nil,10],["20Rnd_mas_762x51_Stanag",nil,10],["SUPER_flash", nil, 10]]];
                };
            };
        };


        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian."};
                        default
                        {
							["Blackmarket",[["arifle_mas_ak74",nil,150000],["arifle_mas_aks74u",nil,175000],["30Rnd_mas_545x39_mag",nil,350],["arifle_mas_akm",nil,225000],["30Rnd_mas_762x39_mag",nil,350],["RH_ar10",nil,450000],["RH_20Rnd_762x51_AR10",nil,350],["arifle_SDAR_F",nil,100000],["20Rnd_556x45_UW_mag",nil,1000],["RH_vz61",nil,75000],["RH_20Rnd_32cal_vz61",nil,250],["RH_tec9",nil,55000],["RH_32Rnd_9x19_tec",nil,250],["RH_g18",nil,60000],["RH_19Rnd_9x19_g18",nil,125]]];
                        };
                };
        };

        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a firearm license!"};
                        default
                        {
							["Firearms Shop",[["hgun_mas_bhp_F",nil,1000],["15Rnd_mas_9x21_Mag",nil,125],["RH_cz75",nil,3000],["RH_16Rnd_9x19_CZ",nil,125],["RH_fn57",nil,5000],["RH_20Rnd_57x28_FN",nil,250],["RH_g17",nil,1000],["RH_g19",nil,1000],["RH_17Rnd_9x19_g17",nil,125],["hgun_mas_glocksf_F",nil,1000],["hgun_mas_m23_F",nil,125],["hgun_mas_usp_F",nil,355],["12Rnd_mas_45acp_Mag",nil,125],["RH_kimber_nw",nil,4500],["RH_7Rnd_45cal_m1911",nil,300],["hgun_mas_p226_F",nil,2500],["15Rnd_mas_9x21_Mag",nil,250]]];
                        };
                };
        };
		case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Gang Armaments",[["hgun_PDW2000_F",nil,5000],["30Rnd_9x21_Mag",nil,25],["sab_1911_handgun",nil,550],["9Rnd_45ACP_Mag",nil,15],["RH_kimber_nw",nil,550],["RH_7Rnd_45cal_m1911",nil,15],["hgun_mas_uzi_F",nil,1500],["15Rnd_mas_9x21_Mag",nil,15],["hgun_mas_p226_F",nil,500],["15Rnd_mas_9x21_Mag",nil,15],["RH_deagle",nil,750],["RH_7Rnd_50_AE",nil,25]]];
                        };
                };
        };
        case "rifle":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rifle): {"You don't have a Rifle license!"};
                        default
                        {
                                ["Rifle Shop",[["arifle_mas_lee",nil,10500],["5Rnd_mas_762x51_Stanag",nil,250]]];
                        };
                };
        };
		case "protest":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Protesting Shop",[["A3L_Sign2","Legalize Weed",7500],["A3L_Sign","Police Pigs",7500],["Tv_Camera","T.V. Camera",10000]]];
                        };
                };
        };

        case "genstore":
        {
                ["General Store",[["ItemMap",nil,60],["FirstAidKit",nil,250],["itemRadio",nil,900],["tf_anprc155","Long Range Radio",2500],["Binocular",nil,1250],["ItemGPS",nil,750],["ToolKit",nil,1500],["NVGoggles",nil,5000]]];
        };
		case "gas":
		{
				["Gas Station Item Shop",[["ToolKit",nil,500],["FirstAidKit",nil,250],["ItemMap",nil,60],["ItemGPS",nil,750],["NVGoggles",nil,5000]]];
		};
		case "dai_shop":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian"};
						case (!license_civ_dai): {"You are not a district attorney!"};
                        default
                        {
                            ["DAI Shop",[["Taser_26","Taser",10],["26_cartridge",nil,10],["RH_m9",nil,10],["RH_15Rnd_9x19_M9",nil,10],["RH_g19",nil,10],["RH_17Rnd_9x19_g17",nil,10],["hgun_mas_glocksf_F",nil,10],["hgun_mas_usp_F",nil,10],["12Rnd_mas_45acp_Mag",nil,10],["RH_kimber_nw",nil,10],["RH_7Rnd_45cal_m1911",nil,10],["RH_p226",nil,10],["RH_15Rnd_9x19_SIG",nil,10],["KPFS_P99",nil,10],["arifle_mas_hk416",nil,10],["arifle_mas_g36c",nil,10],["30Rnd_mas_556x45_Stanag",nil,10],["srifle_mas_hk417",nil,10],["srifle_mas_m24",nil,10],["5Rnd_mas_762x51_Stanag",nil,10],["20Rnd_mas_762x51_Stanag",nil,10],["RH_M4_moe_b",nil,10],["RH_30Rnd_556x45_M855A1",nil,10],["FHQ_optic_AC11704",nil,10],["FHQ_optic_AC12136",nil,10],["optic_Aco",nil,10],["optic_ACO_grn",nil,10],["FHQ_optic_ACOG",nil,10],["RH_compM2",nil,10]]];
                        };
                };
        };
};