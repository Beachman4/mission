#include <macro.h>
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",75000000],
			["C_Kart_01_Fuel_F",7500000],
			["C_Kart_01_Red_F",7500000],
			["C_Kart_01_Vrana_F",7500000]
		];
	};
	case "med_shop":
	{
		_return = [
			["A3L_CVPILBFD",10],
			["Jonzie_Ambulance_Fire_Department",10],
            ["Jonzie_Ambulance_EMS",10],
			["A3L_Taurus_EMSHC_LB",10],
<<<<<<< HEAD
=======
			["Urbanized_LP700_EMS",10],
>>>>>>> origin/master
			["A3L_ExplorerEMS_P",10],
			["A3L_ExplorerEMS_S",10],
			["ffg_f350", 10],
			["ffg_engine", 10],
			["ffg_rescue", 10],
			["ffg_quint", 10]
		];
	};
    case "sports_car":
    {
        _return = [
			["A3L_RX7_Blue",120000],
			["A3L_RX7_Red",120000],
			["A3L_RX7_White",120000],
			["A3L_RX7_Black",120000],
			["S_Skyline_Red",95000],
			["S_Skyline_Blue",95000],
			["S_Skyline_Black",95000],
			["S_Skyline_Yellow",95000],
			["S_Skyline_Purple",95000],
			["S_Skyline_White",95000],
			["A3L_VolvoS60RBlack",50000],
			["A3L_VolvoS60Rred",50000],
            ["Nissan_GTR_Black",500000],
            ["Nissan_GTR_Red",500000],
			["A3L_Subaru_WRX_DarkBlue",100000],
            ["A3L_Subaru_WRX_Grey",100000],
            ["Nissan_GTR_White",100000]
        ];
    };
    case "muscle_car":
    {
        _return = [
            ["A3L_AMC",80000],
			["A3L_AMXRed",80000],
			["A3L_AMXWhite",80000],
			["A3L_AMXBlue",80000],
			["A3L_AMXGL",85000],
            ["Jonzie_XB",70000]
        ];
    };
    case "bmw_car":
    {
        _return = [
            ["Jonzie_30CSL",20000],
            ["A3L_BMW135Black",70000],
            ["A3L_BMW135Blue",70000],
            ["A3L_BMW135Sport1",70000],
            ["A3L_BMW135Purple",70000],
            ["A3L_BMW135Red",70000],
            ["A3L_BMW135White",70000],
            ["A3L_BMW_M6_Black",100000],
            ["A3L_BMW_M6_DarkBlue",100000],
            ["A3L_BMW_M6_Grey",100000],
            ["A3L_BMW_M6_Red",100000],
            ["A3L_BMW_M6_Yellow",100000],
            ["A3L_BMW_M6_White",100000]

        ];
    };
    case "audi_car":
    {
        _return = [
            ["cg_audi_r8_plus_white",350000],
            ["cg_audi_rs5_noir",250000],
            ["cg_audi_rs5_bleu",250000],
            ["cg_audi_rs5_bleufonce",250000],
            ["cg_audi_rs5_vert",250000],
            ["cg_audi_rs5_grise",250000],
            ["cg_audi_rs5_orange",250000],
            ["cg_audi_rs5_rose",250000],
            ["cg_audi_rs5_rouge",250000],
            ["cg_audi_rs5_white",250000],
            ["cg_audi_rs5_jaune",250000],
			["Nhz_audia8limo",200000]
        ];
    };
    case "taxi_car":
    {
        _return = [
            ["DAR_ImpalaCivE",40000],
            ["DAR_ImpalaCivF",40000],
            ["DAR_ImpalaCivG",40000]
        ];
    };
	case "exo_car":
	{
		_return = [
			["Jonzie_Escalade",140000],
			["S_Vantage_Red",350000],
			["S_Vantage_Blue",350000],
			["S_Vantage_Black",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_LightBlue",350000],
			["S_Vantage_Purple",350000],
			["S_Vantage_White",350000],
			["A3L_Ferrari458black",530000],
			["A3L_Ferrari458white",530000],
			["A3L_Ferrari458blue",530000],
			["S_PorscheRS_Black",450000],
			["S_PorscheRS_Yellow",450000],
			["S_PorscheRS_White",450000],
			["S_McLarenP1_Black",850000],
			["S_McLarenP1_Blue",850000],
			["S_McLarenP1_Orange",850000],
			["S_McLarenP1_White",850000],
			["S_McLarenP1_Yellow",850000],
			["S_McLarenP1_Silver",850000],
			["A3L_Veyron",1500000],
			["A3L_Veyron_red",1500000],
			["A3L_Veyron_black",1500000],
			["A3L_Veyron_white",1500000],
			["A3L_Veyron_orange",1500000],
            ["cg_lamborghini_huracan_noir",500000],
            ["cg_lamborghini_huracan_bleufonce",500000],
            ["cg_lamborghini_huracan_jaune",500000],
            ["cg_lamborghini_huracan_white",500000],
            ["cg_lamborghini_huracan_violet",500000],
            ["cg_lamborghini_huracan_rouge",500000]
		];
	};
	case "chev_car":
	{
		_return = [
			["A3L_SuburbanWhite",60000],
			["A3L_SuburbanBlue",60000],
			["A3L_SuburbanRed",60000],
			["A3L_SuburbanBlack",60000],
			["A3L_SuburbanGrey",60000],
			["A3L_SuburbanOrange",60000],
			["A3L_Camaro",95000],
            ["D_Cobalt_White",40000],
            ["D_Cobalt_Blue",40000],
            ["D_Cobalt_Red",40000],
            ["D_Cobalt_DarkRed",40000],
            ["D_Cobalt_Yellow",40000],
            ["D_Cobalt_Graniite",40000],
            ["DAR_ImpalaCivA",40000],
            ["DAR_ImpalaCivC",40000],
            ["DAR_ImpalaCivD",40000],
            ["A3L_GMC_Van_White",40000],
            ["A3L_GMC_Van_Black",40000]
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_FordKaBlue",6000],
			["A3L_FordKaRed",6000],
			["A3L_FordKaBlack",6000],
			["A3L_FordKaWhite",6000],
			["A3L_FordKaGrey",6000],
			["A3L_CVWhite",11000],
			["A3L_CVBlack",11000],
			["A3L_CVGrey",11000],
			["A3L_CVRed",11000],
			["A3L_CVPink",11000],
			["A3L_CVBlue",11000],
			["A3L_Taurus",22000],
			["A3L_TaurusBlack",22000],
			["A3L_TaurusBlue",22000],
			["A3L_TaurusRed",22000],
			["A3L_TaurusWhite",22000],
            ["A3L_Ford_Mustang_Black",25000],
            ["A3L_Ford_Mustang_White",25000],
            ["A3L_Ford_Mustang_Red",25000],
            ["A3L_Ford_Mustang_DarkBlue",25000],
            ["A3L_Ford_Raptor_Black",32000],
            ["A3L_Ford_Raptor_Grey",32000],
            ["A3L_Ford_Raptor_Red",32000],
            ["Jonzie_Raptor",32000]

		];
	};
	case "dodge_car":
	{
		_return =
		[

			["A3L_GrandCaravan",30000],
			["A3L_GrandCaravanBlk",30000],
			["A3L_GrandCaravanBlue",30000],
			["A3L_GrandCaravanGreen",30000],
			["A3L_GrandCaravanRed",30000],
			["A3L_GrandCaravanPurple",30000],
			["A3L_Challenger",65000],
			["A3L_ChallengerGreen",65000],
			["A3L_ChallengerRed",65000],
			["A3L_ChallengerWhite",65000],
			["A3L_ChallengerBlack",65000],
			["A3L_ChallengerBlue",65000],
			["A3L_ChargerBlack",65000],
			["A3L_ChargerWhite",65000],
			["A3L_ChargerBlue",65000],
            ["A3L_ChargerRed",65000],
			["Jonzie_Viper",250000]
		];
	};
	case "civ_car":
	{
		_return =
		[
            ["A3L_Bicycle",50],
			["B_Quadbike_01_F",650],
			["Jonzie_Mini_Cooper",1200],
            ["A3L_Cooper_concept_blue",45000],
			["A3L_Cooper_concept_black",45000],
			["A3L_Cooper_concept_red",45000],
			["A3L_Cooper_concept_white",45000],
			["A3L_Escort",4000],
			["A3L_EscortTaxi",4000],
			["A3L_EscortBlack",4000],
			["A3L_EscortBlue",4000],
			["A3L_EscortWhite",4000],
			["A3L_EscortPink",4000],
			["A3L_PuntoRed",12000],
			["A3L_PuntoBlack",12000],
			["A3L_PuntoWhite",12000],
			["A3L_PuntoGrey",12000],
			["A3L_RegalBlack",12000],
			["A3L_RegalBlue",12000],
			["A3L_RegalOrange",12000],
			["A3L_RegalRed",12000],
			["A3L_RegalWhite",12000],
			["A3L_JeepWhiteBlack",8000],
			["A3L_JeepGreenBlack",8000],
			["A3L_JeepRedTan",8000],
			["A3L_JeepRedBlack",8000],
			["A3L_JeepGrayBlack",8000],
			["A3L_VolksWagenGolfGTired",16000],
			["A3L_VolksWagenGolfGTiblack",16000],
			["A3L_VolksWagenGolfGTiblue",16000],
			["A3L_VolksWagenGolfGTiwhite",16000],
			["S_Rangerover_Black",65000],
			["S_Rangerover_Red",65000],
			["S_Rangerover_Blue",65000],
			["S_Rangerover_Green",65000],
			["S_Rangerover_Purple",65000],
			["S_Rangerover_Grey",65000],
			["S_Rangerover_Orange",65000],
			["S_Rangerover_White",65000],
            ["Jonzie_STI",20000],
            ["A3L_Touareg_Red",30000],
            ["A3L_Smartcar_Red",5000],
			["A3L_GMC_Van_White",25000],
			["A3L_GMC_Van_Black",25000]
		];
	};
	case "civ_truck":
	{
		_return =
		[
			["A3L_F350Black",32000],
			["A3L_F350Blue",32000],
			["A3L_F350Red",32000],
			["A3L_F350White",32000],
			["A3L_Dumptruck",55000],
			["C_Van_01_box_F",22000],
			["C_Van_01_transport_F",22000],
			["Jonzie_Box_Truck",60000],
			["Jonzie_Flat_Bed",60000],
			["Jonzie_Log_Truck",60000],
			["Jonzie_Tanker_Truck",60000]
		];
	};
	case "civ_tow":
	{
		_return =
		[
			["A3L_Towtruck",45000],
			["Jonzie_Tow_Truck",30000]
		]
	};
    case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["B_Heli_Light_01_F",800000],
			["Jonzie_96_Impala", 3000000]
		];

	};
	case "harley_car":
	{
		_return =
		[
			["tcg_hrly_orig1",3500],
			["tcg_hrly_gay",3500],
            ["tcg_hrly_metal",3500],
            ["tcg_hrly_coco",3500],
            ["tcg_hrly_red",3500],
            ["tcg_hrly_blue",3500],
            ["tcg_hrly_demon",3500],
            ["tcg_hrly_limited",3500],
            ["tcg_hrly",3500]
		];
	};
	case "cop_car":
	{
		_return =
		[
			["A3L_CVPI_Sheriff_LB",10],
			["A3L_CVPI_Sheriff_Slick",10],
			["A3L_Taurus_Sheriff_LB",10],
            ["A3L_Taurus_Sheriff_Slick",10],
			["A3L_Charger_DTU",10],
			["A3L_Charger_Patrol",10],
			["DAR_ExplorerPolice",10],
			["cg_suburban_sert_pol",10]
		];
	};
    case "det_car":
    {
        if(__GETC__(life_coplevel) >= 1) then {
            _return =
            [
                ["A3L_TaurusUC_Black",10],
                ["A3L_TaurusUC_Blue",10],
                ["A3L_TaurusUC_Grey",10],
                ["A3L_TaurusUC_White",10],
                ["A3L_TaurusUC_Red",10],
                ["A3L_ChargerUC_Black_New",10],
                ["A3L_ChargerUC_White_New",10],
                ["A3L_ChargerUC_Blue_New",10],
                ["A3L_CVPIUC_Black",10],
                ["A3L_CVPIUC_Blue",10],
                ["A3L_CVPIUC_Pink",10],
                ["A3L_CVPIUC_Grey",10],
                ["A3L_CVPIUC_Red",10],
                ["A3L_CVPIUC_White",10],
				["A3L_Charger_DTUSupervisor",10],
                ["Ivory_isf_unmarked",10]
            ];
        };
    };
	case "sert_car":
	{
        if(__GETC__(life_coplevel) >= 1) then {
            _return =
            [
                ["A3L_CVPIUCSERT",10],
                ["A3L_TaurusUC",10],
				["A3L_Charger_SERTGrey",10],
                ["DAR_ImpalaPoliceDet",10],
                ["DAR_TahoePoliceDet",10],
                ["DAR_ExplorerPoliceStealth",10]
            ];
        };
	};
    case "sert_air":
    {
        if(__GETC__(life_coplevel) >= 1) then {
            _return =
            [
                ["I_Heli_Transport_02_F",10],
                ["B_Heli_Transport_01_F",10],
                ["O_Heli_Light_02_unarmed_F",10],
                ["I_Heli_light_03_unarmed_F",10]
            ];
        };
    };
	case "civ_air":
	{
		_return =
		[
			["C_Heli_Light_01_civil_F",300000],
			["O_Heli_Light_02_unarmed_F",750000],
            ["ASL_AS350_1",350000],
            ["GNT_C185",300000],
            ["sab_FAAllegro",450000],
            ["sab_FAAllegro_2",450000],
            ["sab_FAAllegro_4",450000],
            ["sab_FAAllegro_5",450000],
            ["sab_piper3",400000],
            ["sab_piper5",400000],
            ["sab_RobinDR400_2",425000],
            ["sab_RobinDR400_3",425000],
            ["sab_RobinDR400_5",425000],
            ["EC635_Unarmed", 500000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",10],
			["C_Heli_Light_01_civil_F",10],
			["B_Heli_Transport_03_unarmed_F",10],
			["O_Heli_Transport_04_F",10],
			["O_Heli_Transport_04_covered_F",10],
			["Sheriff_helo", 10]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",45000],
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["O_Heli_Light_02_unarmed_F",75000],
			["IVORY_BELL512_POLICE",85000],
			["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000],
			["B_Heli_Transport_01_F",200000],
			["B_Heli_Transport_03_unarmed_F",300000],
			["O_Heli_Transport_04_F",300000],
			["IVORY_T6A_1",300000],
			["Sheriff_helo", 45000]
		];
	};
	case "med_air_hs":
	{
		_return =
		[
			["EMS_Chopper",20000],
			["EMS_Orca",30000],
			["A3L_EC635_SAR", 40000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",30000],
			["C_Boat_Civil_01_F",175000],
			["A3L_Ship",700000],
			["A3L_Jetski",150000],
			["A3L_Jetski_yellow",150000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
