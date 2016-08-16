#include <macro.h>
/*
	File: fn_adminFreeze.sqf
	Author: ColinM9991

	Description: Freezes selected player
*/
if(FETCH_CONST(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
if(_unit == player) exitWith {hint localize "STR_ANOTF_Error";};
//if (_unit getVariable "realname" == "MasterYodA") exitWith {hint "LOL you can't do that to the master"; };
if(getPlayerUID _unit in ["76561198046184938","76561198094830892","76561198104151068","76561198065608925","76561198059347143","76561198011982533","76561198064475673","76561198006762512"]) exitWith {hint "You cannot freeze senior administration";};
//PID in order: Yoda, EMQ, TrickZ, Wombat, Terry,Tim,Puffy,Rick
[[player],"life_fnc_freezePlayer",_unit,false] spawn life_fnc_MP;