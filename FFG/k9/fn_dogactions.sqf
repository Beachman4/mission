/*
*
* ffg_fnc_dogactions
*
*/

_player = param[0];
_targ = param[1];
_mode = param[3];

if (cursorTarget != (_player getVariable "dog name")) then {_targ = cursorTarget;};

player removeAction ffg_dogsearch;
player removeAction ffg_dogcivsearch;
player removeAction ffg_dogvehsearch;
player removeAction ffg_moveto;
player removeAction ffg_follow;
player removeAction ffg_stop;
player removeAction ffg_dogVehicle;
player removeAction ffg_dogattack;
player removeAction ffg_guard;


//ffg_dogareasearch = player addAction["Search Area", ffg_fnc_dogsearch, [true, false]];
ffg_dogattack = player addAction["Attack", ffg_fnc_dogattack, "attack"];
ffg_dogcivsearch = player addAction["Search Civilian", ffg_fnc_dogsearch, [false, false], 0, false, false, "", ' cursorTarget side == "Civilian" '];
ffg_dogvehsearch = player addAction["Search Vehicle", ffg_fnc_dogsearch, [false, true], 0, false, false, "", ' cursorTarget isKindOf ["LandVehicle", "Ship", "Air"] '];
ffg_moveto = player addAction["Move To", ffg_fnc_dogmovement, "move"];
ffg_guard = player addAction["Guard", ffg_fnc_dogguard, "guard"];
ffg_dogVehicle = player addAction["Board Vehicle", ffg_fnc_dogvehicle, "cargo"];
ffg_follow = player addAction["Follow", ffg_fnc_dogmovement, "follow"];
if ((player getVariable "dogvar" select 3) == 'follow') then {
    player removeAction ffg_follow;
    ffg_stop = player addAction["Stop", ffg_fnc_dogmovement, "stop"];
} else if ((player getVariable "dogvar" select 3) == 'move') then {
    player removeAction ffg_moveto;
    ffg_stop = player addAction["Stop", ffg_fnc_dogmovement, "stop"];
};

_player setVariable ["dogvar", [_player, _targ, "", _mode], false];

[] call ffg_fnc_dogprocess;