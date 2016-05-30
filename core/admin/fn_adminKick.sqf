_player = lbData[2902,lbCurSel (2902)];
_player = call compile format["%1", _player];
if(isNil "_player") exitWith {};
if(isNull _player) exitWith {};
[["kicked"],"BIS_fnc_endMission",_player,false] call life_fnc_MP;
hint "Player kicked off";