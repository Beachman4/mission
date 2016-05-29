/*
*
* ffg_fnc_doginit
*
*/
if (playerSide != west) exitWith {};
_player = param[0];
_targ = param[1];

sleep 2;
hintSilent "Dog Ready";

['mydog', 'Alsatian_Sandblack_F'] spawn ffg_fnc_spawndog;

_mode = "follow";

_player setVariable ["dogvar",[_player,_targ,"",_mode],true];

_dog = param[1];
if (_dog distance _targ > 3) then {_dog say3D "DOG_do3"; } else {_dog say3D "DOG_d04"};