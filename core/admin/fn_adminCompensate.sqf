#include <macro.h>
/*
	File: fn_adminCompensate.sqf
	Author: ColinM9991

	Description:
	Figure it out.
*/
private["_value","_action"];
if(FETCH_CONST(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
_value = parseNumber(ctrlText 9922);
_reason = ctrlText 9923;
if (FETCH_CONST(life_adminlevel) == 3) then {
    if (_value > 50000) exitWith {
        hint "You can't give out that much!";
    };
};
if(_value < 0) exitWith {};
if(_value > 999999) exitWith {hint localize "STR_ANOTF_Fail"};
//if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_AIM_notnumeric"};
if (_reason == "") exitWith {hint "You didn't fill out the reason!"; closeDialog 0;};

_action = [
	format [localize "STR_ANOTF_CompWarn",[_value] call life_fnc_numberText],
	localize "STR_Admin_Compensate",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(_action) then {
	life_cash = life_cash + _value;
	hint format [localize "STR_ANOTF_Success",[_value] call life_fnc_numberText];
    [_value, _reason, player getVariable "realname"] remoteExec ['DB_fnc_compStore', 2];
	closeDialog 0;
} else {
	hint localize "STR_NOTF_ActionCancel";
	closeDialog 0;
};