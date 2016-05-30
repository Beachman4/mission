_player = lbData[2902,lbCurSel (2902)];
_player = call compile format["%1", _player];
if(isNil "_player") exitwith {};
if(isNull _player) exitWith {};

"end1" RemoteExec ["BIS_fnc_endMission", owner _player];
hint "Player kicked off";