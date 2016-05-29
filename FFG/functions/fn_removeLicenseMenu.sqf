private["_display", "_curTarget", "_Btn1", "_Btn2", "_Btn3", "_Btn4", "_Btn5", "_Btn6", "_Btn7", "_Btn8"];
if (playerSide != west) exitWith {};
createDialog "FFG_RemoveLicense";
disableSerialization;

_curTarget = param[0];

if (isNull _curTarget) exitWith { hint "Wrong Target!"; closeDialog 0;};

if (!isPlayer _curTarget && side _curTarget != civilian) exitWith { hint "Cannot perform this action"; closeDialog 0;};

_display = findDisplay 25000;

_Btn1 = _display displayCtrl 25001;
_Btn2 = _display displayCtrl 25002;
_Btn3 = _display displayCtrl 25003;
_Btn4 = _display displayCtrl 25004;
_Btn5 = _display displayCtrl 25005;
_Btn6 = _display displayCtrl 25006;
_Btn7 = _display displayCtrl 25007;
_Btn8 = _display displayCtrl 25008;

life_pInact_curTarget = _curTarget;

_Btn1 buttonSetAction "['driver'] RemoteExec [""ffg_fnc_removeLicense"", life_pInact_curTarget]; closeDialog 0;";
_Btn2 buttonSetAction "['pilot'] RemoteExec [""ffg_fnc_removeLicense"", life_pInact_curTarget]; closeDialog 0;";
_Btn3 buttonSetAction "['boat'] RemoteExec [""ffg_fnc_removeLicense"", life_pInact_curTarget]; closeDialog 0;";
_Btn4 buttonSetAction "['truck'] RemoteExec [""ffg_fnc_removeLicense"", life_pInact_curTarget]; closeDialog 0;";
_Btn5 buttonSetAction "['gun'] RemoteExec [""ffg_fnc_removeLicense"", life_pInact_curTarget]; closeDialog 0;";
_Btn6 buttonSetAction "['rifle'] RemoteExec [""ffg_fnc_removeLicense"", life_pInact_curTarget]; closeDialog 0;";
_Btn7 buttonSetAction "['diving'] RemoteExec [""ffg_fnc_removeLicense"", life_pInact_curTarget]; closeDialog 0;";
_Btn8 buttonSetAction "['all'] RemoteExec [""ffg_fnc_removeLicense"", life_pInact_curTarget]; closeDialog 0;";