private["_filter"];
_filter = param[0];
ctrlSetText[3103,"Police Clothing Shop"];

switch (_filter) do
{
    case 0: 
    {
        [
            ["TCG_SERT", "SERT Uniform", 10],
            ["Fox_Sert","Sert Uniform 2", 10],
            ["A3L_SWAT", nil, 10]
        ];
    };
    case 1: 
    {
        [
            ["TCG_swathelmet","SRU Helmet (Blk)",10],
            ["TCG_serthelmet","SRU Helmet (OD)",10],
            ["TRYK_H_PASGT_OD","SRU Mich Helmet (OD)",10]
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
            ["G_Lowprofile",nil,10],
            ["G_Combat",nil,10],
            ["G_mas_wpn_bala",nil,10],
            ["G_mas_wpn_bala_gog",nil,10],
            ["G_mas_wpn_bala_gog_b",nil,10],
            ["G_mas_wpn_bala_mask",nil,10],
            ["G_mas_wpn_bala_mask_b",nil,10],
            ["Mask_M50","M50 Gasmask",10]
        ];
    };
    case 3: 
    {
        [
            ["TCG_sertvest1", "SERT Vest", 10],
            ["TCG_sertvest2", "SERT Vest 2", 10],
            ["TCG_sertvest3", "SERT Vest 3", 10]
        ];
    };
    case 4: 
    {
        [
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