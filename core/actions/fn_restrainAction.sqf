/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Retrains the target.
*/
private["_unit"];
_jailed = param[0];
if (_jailed) then {
	_unit = param[1];
} else {
	_unit = cursorTarget;
	if(isNull _unit) exitWith {}; //Not valid
	if((_unit getVariable "restrained")) exitWith {};
	if(side _unit == west) exitWith {};
	if(player == _unit) exitWith {};
	if(!isPlayer _unit) exitWith {};
};
//Broadcast!

_unit setVariable["restrained",true,true];
if (_jailed) then {
	[["Jailed Bruh"], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
	[[0,format[localize "STR_NOTF_Restrained",_unit getVariable["realname", name _unit], "Jailed bruh"]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
} else {
	[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
	[[0,format[localize "STR_NOTF_Restrained",_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};