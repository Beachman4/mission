private["_filter"];
_filter = param[0];
ctrlSetText[3103,"Detective Clothing Shop"];
switch (_filter) do
{
    case 0: 
    {
        [
            ["TCG_PDDTC", "Detective Uniform", 10],
            ["U_C_Poor_1", "Blue Tee & Jeans", 10],
            ["jamie_polowhitejeans","White Polo & Jeans", 10],
            ["TRYK_U_B_Denim_T_BG_BK", "Blk Tee & Jeans", 10],
            ["TRYK_U_B_RED_T_BG_BR", "Red Tee & Jeans", 10],
            ["TRYK_U_pad_hood_Cl_blk", "Blk Hoodie & Jeans", 10],
            ["TRYK_shirts_BLK_PAD_YEL", "Yellow Plaid & Blk Jeans", 10],
            ["TRYK_shirts_BLK_PAD_RED2", "Red Plaid & Blk Jeans", 10],
            ["TRYK_shirts_BLK_PAD_BLU3", "Blue Plaid & Blk Jeans", 10],
            ["TRYK_U_B_BLK_tan_Rollup_CombatUniform", "Blk Rollup & Tan Jeans", 10],
            ["TRYK_U_B_PCUGs_gry", "Grey Jacket & Jeans", 10],
            ["TRYK_U_B_PCUGs_BLK", "Blk Jacket & Jeans", 10],
            ["TRYK_U_B_BLK_TAN_2", "Combat Uniform (Tan/Blk)", 10],
            ["jamie_poloorangejeans", "Orange Polo & Jeans", 10]
        ];
    };
    case 1: 
    {
        [
            ["jamie_pcapgreen","Sheriff Cap",10],
            ["jamie_pcapgreen2","Sheriff Cap Badge",10],
            ["H_Cap_blk","Cap (Blk)",10],
            ["H_Cap_oli","Cap (Olive)",10],
            ["H_Cap_tan","Cap (Tan)",10],
            ["TRYK_R_CAP_BLK", "Reverse Cap (Blk)", 10],
            ["TRYK_R_CAP_TAN", "Reverse Cap (Tan)", 10],
            ["TRYK_R_CAP_OD_US", "Reverse Cap (OD)", 10],
            ["TRYK_H_woolhat", "Woolhat (Blk)", 10],
            ["TRYK_H_woolhat_br", "Woolhat (Brn)", 10],
            ["TRYK_H_woolhat_cu", "Woolhat (OD)", 10],
            ["TRYK_H_woolhat_tan", "Woolhat (Tan)", 10]
        ];
    };
    case 2: 
    {
        [
            ["G_Shades_Black",nil,10],
            ["G_Shades_Blue",nil,10],
            ["G_Sport_Blackred",nil,10],
            ["G_Sport_Checkered",nil,10],
            ["G_Sport_Blackyellow",nil,10],
            ["G_Sport_BlackWhite",nil,10],
            ["G_mas_wpn_gog_d", nil, 10],
            ["G_mas_wpn_gog_gd", nil, 10],
            ["G_mas_wpn_gog_md", nil, 10]
        ];
    };
    case 3: 
    {
        [
            ["CID_Vest", "CID Vest", 10],
            ["DAI_TACVEST_WHITE", "DAI Vest (Wht)", 10],
            ["DAI_TACVEST_YELLOW", "DAI Vest (Ylw)", 10],
            ["DAI_VEST_BLACK", "DAI Drop Vest (Blk)", 10],
            ["DAI_VEST_TAN", "DAI Drop Vest (Tan)", 10]
        ];
    };
    case 4: 
    {
        [
            ["FFG_PoliceBelt","Duty Belt (W/ LR Radio)",10],
            ["FFG_PoliceBeltdrop","Drop Holster Belt (W/ LR Radio)",10],
            ["FFG_PoliceBeltINV","Invisible Duty Belt (W/ LR Radio)",10],
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