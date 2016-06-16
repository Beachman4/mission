private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Mask Shop"];
switch (_filter) do
{
	case 0: 
    {
        [];
    };
	case 1: 
    {
        [
            ["Masque_Alien1","Alien Mask",120],
            ["Masque_Anonymous","Anonymous Mask",120],
            ["kio_vfv_mask","Anonymous Mask 2",120],
            ["Masque_Chains",nil,120],
            ["Payday_GeneralO","Payday Mask",120],
            ["Casque_Moto",nil,120],
            ["Masque_Clinton","Clinton Mask",120],
            ["Masque_speedRunner","Speedrunner Mask",120],
            ["Masque_Unic","Unic Mask",120],
            ["Masque_Aubrey","Aubrey Mask",120],
            ["Masque_Bonnie","Bonnie Mask",120],
            ["Masque_Bush","Bush Mask",120],
            ["Masque_Mempo","Mempo Mask",120],
            ["Masque_Lincoln","Lincoln Mask",120],
            ["Masque_Wolfv2","Wolf Mask",120],
            ["Masque_archNemesis","Arch Nemesis Mask",120],
            ["Masque_Arnold","Arnold Mask",120],
            ["Masque_Chuck","Chuck Mask",120],
            ["Masque_Clover","Clover Mask",120],
            ["Masque_Fish","Fish Mask",120],
            ["Masque_Hockey","Hockey Mask",120],
            ["Masque_Metalhead","Metalhead Mask",120],
            ["Masque_Religieuse","Religious Mask",120],
            ["Masque_Smiley","Smiley Mask",120],
            ["Masque_Santa","Santa Mask",120],
            ["Masque_Momie","Momie Mask",120],
            ["Masque_Optimiste","Optimiste Mask",120],
            ["Masque_forceAlpha","Alpha Force Mask",120],
            ["Masque_GdG","GdG Mask",120],
            ["Masque_Gombo","Gombo Mask",120],
            ["Masque_Lion", "Lion Mask",120],
            ["Masque_Orc","Orc Mask",120],
            ["Masque_Mark", "Mark Mask",120],
            ["Masque_Macrilleuse","Macrilleuse Mask",120],
            ["Masque_Hoxton","Hoxton Mask",120],
            ["Masque_Incendiaire","Incendiaire Mask",120],
            ["Masque_Dallas","Dallas Mask",120],
            ["kio_skl_msk_grn","Skull Mask Green",120],
            ["kio_skl_msk_red","Skull Mask Red",120],
            ["kio_skl_msk","Skull Mask",120],
            ["jokermask","Joker Mask",120]
        ];
    };
	case 2: 
    {
        [];
    };
	case 3: 
    {
        [];
    };
	case 4: 
    {
        [];
    };
};
