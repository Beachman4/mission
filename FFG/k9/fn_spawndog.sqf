_name = param[0];
_type = param[1];

if (player getVariable ["dog", false]) exitWith {hint "You can only have one dog";};
player setVariable ["dog", true, true];


call compile format ['"%2" createUnit [getpos player, group player, "%1=this; this setSpeedMode ""NORMAL""; this setbehaviour ""SAFE""",1]',_name, _type];
_dog = call compile format ["%1", _name];

[_dog] join grpNull;
_dog setBehaviour "safe";
_dog disableAI "FSM";
_dog setSpeedMode "full";

player setVariable ["dog name", _dog, true];

player removeAction ffg_dogsearch;
player removeAction ffg_dogcivsearch;
player removeAction ffg_dogvehsearch;
player removeAction ffg_moveto;
player removeAction ffg_follow;
player removeAction ffg_stop;
player removeAction ffg_dogVehicle;
player removeAction ffg_dogattack;
player removeAction ffg_guard;

act_action = player addAction ["Dog Action", ffg_fnc_dogaction, false, 50, false,false,"", ' vehicle player == player '];
hintSilent "You have recruited a K9";