/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Vehicle Garage, why did I spawn this in an action its self?
*/
private["_spawnPos","_dir","_type"];
_type = [_this,1,"",[""]] call BIS_fnc_param;
_spawnPos = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_objects = nearestObjects[player, ["House"], 20];
if ((typeOf (_objects select 1)) in ["Land_HouseDoubleAL", "Land_HouseDoubleAL2"]) then {
	life_garage_sp = [(_spawnPos modelToWorld [-7,-8,0]), (getDir _spawnPos) - 180];
} else {
	if ((typeOf (_objects select 1)) in ["Land_HouseA", "Land_HouseA1", "Land_HouseA1_L", "Land_HouseB", "Land_HouseB1", "Land_HouseB1_L", "Land_HouseC_R", "Land_HouseC1_L"]) then {
		life_garage_sp = [(_spawnPos modelToWorld [4.5,-2,0]),(getDir _spawnPos)-180];
	} else {
		life_garage_sp = [(_spawnPos modelToWorld [-10,0,0]),(getDir _spawnPos)-90];
	};
};
life_garage_type = _type;
[[getPlayerUID player,playerSide,_type,player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,(localize "STR_ANOTF_QueryGarage")];