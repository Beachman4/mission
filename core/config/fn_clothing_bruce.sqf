private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Clothing Shop"];
switch (_filter) do
{
	case 0: 
    {
        [
            ["jamie_Adidas","Adidas Polo",45],
            ["jamie_poloamerica","America Polo",45],
            ["jamie_poloapple","Apple Polo",45],
            ["jamie_poloaustralia","Australia Polo",45],
            ["jamie_avengers","Avengers Polo",45],
            ["jamie_polocanda","Canada Polo",45],
            ["jamie_Ciggy","Ciggy Polo",45],
            ["jamie_polococacola","Coca Cola Polo",45],
            ["jamie_Coco","Coco Polo",45],
            ["jamie_polocookiemonster","Cookie Monster polo",45],
            ["jamie_drunk","Drunk Polo",45],
            ["jamie_poloface","Face Polo",45],
            ["jamie_pololove","Love Polo",45],
            ["jamie_jeff","Jeff Polo",45],
            ["jamie_married","Married Polo",45],
            ["jamie_marvel","Marvel Polo",45],
            ["jamie_mexicantroll","Mexican TrollFace Polo",45],
            ["jamie_minion","Minion Polo",45],
            ["jamie_monstercat","Monstercat Polo",45],
            ["jamie_polomrbong","Mr. Bong Polo",45],
            ["jamie_pancake","Pancake Polo",45],
            ["jamie_polomoon","Moon Polo",45],
            ["jamie_poloqantas","Qantas Polo",45],
            ["jamie_shield","Shield Polo",45],
            ["jamie_Snoopy","Snoopy Polo",45],
            ["jamie_polostunt","Stunt Polo",45],
            ["jamie_tux","Tux Polo",45],
            ["jamie_twitch","Twitch Polo",45],
            ["U_ALR_Suit_1",nil,2000],
            ["U_ALR_Suit",nil,2000],
            ["U_ALR_Suit_4",nil,2000],
            ["U_C_Driver_1_black",nil,250],
            ["U_C_Driver_1_blue",nil,250],
            ["U_C_Driver_1_green",nil,250],
            ["U_C_Driver_1_orange",nil,250],
            ["U_C_Driver_1_red",nil,250],
            ["smart_black1",nil,45],
            ["smart_gray1",nil,45],
            ["smart_red1",nil,45],
            ["smart_pink1",nil,45],
            ["smart_blue1",nil,45],
            ["smart_orange1",nil,45],
            ["smart_yellow1",nil,45],
            ["smart_green1",nil,45],
            ["smart_purple1",nil,45],
            ["smart_brown1",nil,45],
            ["smart_white1",nil,45],
            ["smart_cupcakes1",nil,250],
            ["smart_fuckit1",nil,250],
            ["smart_game1",nil,250],
            ["smart_muffin1",nil,250],
            ["smart_adidas1",nil,250],
            ["smart_apple1",nil,250],
            ["smart_firephoenix1",nil,250],
            ["smart_mcdiabetes1",nil,250],
            ["smart_nike1",nil,250],
            ["smart_pepagator1",nil,250],
            ["smart_troll1",nil,250],
            ["smart_batman1",nil,250],
            ["smart_evolution1",nil,250],
            ["smart_friday121",nil,250],
            ["smart_getalife1",nil,250],
            ["smart_gotyourback1",nil,250],
            ["smart_hans1",nil,250],
            ["smart_kappa1",nil,250],
            ["smart_merica1",nil,1000],
            ["smart_netflix1",nil,250],
            ["smart_patrickstar1",nil,750],
            ["smart_pedro1",nil,250],
            ["smart_procrastination1",nil,250],
            ["smart_spongebob1",nil,500],
            ["smart_stormtrooper1",nil,250],
            ["smart_superman1",nil,250],
            ["smart_teami1",nil,250],
            ["smart_woreyesterday1",nil,250]
        ];
    };
	case 1: 
    {
        [
            ["A3L_Legoman","Lego Helmet",100],
            ["A3L_soa_helmet","Biker Helmet",400],
            ["A3L_gangster_hat","Gangster Mask",100],
            ["A3L_Mask","Mask",100],
            ["A3L_longhairblack","Long Hair Black",120],
            ["A3L_longhairblond","Long Hair Blond",120],
            ["A3L_longhairbrown","Long Hair Brown",120],
            ["A3L_Crown","Crown",120],
            ["cowboyhat","Cowboyhat",120],
            ["A3L_mexicanhat","Mexican Hat",120],
            ["santahat","Santa hat",120],
            ["A3L_Sombrero","Sombrero",120],
            ["turban","Turban",120],
            ["A3L_russianhat","Russianhat",120],
            ["H_Cap_tan",nil,120],
            ["H_Cap_blk",nil,120],
            ["H_Cap_blk_CMMG",nil,120],
            ["H_Cap_brn_SPECOPS",nil,120],
            ["H_Cap_tan_specops_US",nil,120],
            ["H_Cap_khaki_specops_UK",nil,120],
            ["H_Cap_grn",nil,120],
            ["H_Cap_grn_BI",nil,120],
            ["H_Cap_blk_Raven",nil,120],
            ["H_Cap_blk_ION",nil,120],
            ["H_RacingHelmet_1_black_F",nil,120],
            ["H_RacingHelmet_1_blue_F",nil,120],
            ["H_RacingHelmet_1_green_F",nil,120],
            ["H_RacingHelmet_1_orange_F",nil,120],
            ["H_RacingHelmet_1_red_F",nil,120]
        ];
    };
	case 2: 
    {
        [
            ["G_Shades_Black",nil,25],
            ["G_Shades_Blue",nil,20],
            ["G_Sport_Blackred",nil,20],
            ["G_Sport_Checkered",nil,20],
            ["G_Sport_Blackyellow",nil,20],
            ["G_Sport_BlackWhite",nil,20],
            ["G_Squares",nil,10],
            ["G_Aviator",nil,100],
            ["G_Lady_Mirror",nil,150],
            ["G_Lady_Dark",nil,150],
            ["G_Lady_Blue",nil,150],
            ["G_Lowprofile",nil,30],
            ["G_Combat",nil,55]
        ];
    };
	case 3: 
    {
        [
            ["k_cut_2",nil,100],
            ["k_cut_5",nil,100],
            ["k_cut_4",nil,100],
            ["k_cut_3",nil,100],
            ["k_cut_1",nil,100],
            ["k_cut_6",nil,100],
            ["k_cut_11",nil,100],
            ["k_cut_7",nil,100],
            ["k_cut_8",nil,100],
            ["k_cut_9",nil,100],
            ["k_cut_10",nil,100],
            ["V_Press_F",nil,100]
        ];
    };
	case 4: 
    {
        [
            ["B_AssaultPack_cbr",nil,2500],
            ["B_Kitbag_mcamo",nil,4500],
            ["B_TacticalPack_oli",nil,3500],
            ["B_FieldPack_ocamo",nil,3000],
            ["B_Bergen_sgg",nil,4500],
            ["B_Kitbag_cbr",nil,4500],
            ["B_Carryall_oli",nil,5000],
            ["B_Carryall_khk",nil,5000]
        ];
    };
};
