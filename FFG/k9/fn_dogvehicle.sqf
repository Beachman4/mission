private ["_targ","_player","_mode","_dog"];

_player = _this select 0;

_mode = _this select 3;
player removeAction ffg_dogsearch;
player removeAction ffg_dogcivsearch;
player removeAction ffg_dogvehsearch;
player removeAction ffg_moveto;
player removeAction ffg_follow;
player removeAction ffg_stop;
player removeAction ffg_dogVehicle;
player removeAction ffg_dogattack;
player removeAction ffg_guard;

if (cursortarget != (_player getvariable "dog name")) then {_targ = cursortarget};


_player setvariable ["dogvar",[_player,_targ,"",_mode],true];

sleep 10;



//_dog = "Alsatian_Sandblack_F" createVehicle [0,0,0];// if you want to see the dog in cargo
//_dog attachTo [_targ,[-0.0,-1.5,-0.22]];_dog setdir 180;// if you want to se the dog in cargo


_targ say3d "DOG_do3";


deletevehicle mydog;
_player removeaction act_action;
doggy_act = _targ addAction["<t color='#e5b348'>get K9</t>","scripts\patrol\dogaction.sqf"];

sleep 10;


waitUntil {alive mydog};

//deletevehicle _dog;// if you want to se the dog in cargo




_targ removeaction doggy_act;