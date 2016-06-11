scriptName "fn_jailCheck:";
/*
	Author: MasterYodA

	Description:
	Describe your function

	Parameter(s):
	_this select 0: Object - Description

	Returns:
	Bool - True when done
*/
#define SELF _fnc_fn_jailCheck

private["_bad","_unit"];
_unit = player;
hint format["%1", _unit];
if(isNull _unit) exitWith {};
if(_unit != player) exitWith {};
if(life_is_arrested) exitWith {};
_bad = false;

A3L_Fnc_OldUniform = Uniform player;
player addUniform "A3L_Prisoner_Outfit";

hint localize "STR_Jail_LicenseNOTF";
[1] call life_fnc_removeLicenses;


if(_bad) then
{
	waitUntil {alive player};
	sleep 1;
};
if(life_inv_heroinu > 0) then {[false,"heroinu",life_inv_heroinu] call life_fnc_handleInv;};
if(life_inv_heroinp > 0) then {[false,"heroinp",life_inv_heroinp] call life_fnc_handleInv;};
if(life_inv_coke > 0) then {[false,"cocaine",life_inv_coke] call life_fnc_handleInv;};
if(life_inv_cokep > 0) then {[false,"cocainep",life_inv_cokep] call life_fnc_handleInv;};
if(life_inv_turtle > 0) then {[false,"turtle",life_inv_turtle] call life_fnc_handleInv;};
if(life_inv_cannabis > 0) then {[false,"cannabis",life_inv_cannabis] call life_fnc_handleInv;};
if(life_inv_marijuana > 0) then {[false,"marijuana",life_inv_marijuana] call life_fnc_handleInv;};
[[player,_bad,life_arrestMinutes,life_arrestReason],"svr_sendtojail",false,false] spawn life_fnc_MP;
[5] call SOCK_fnc_updatePartial;