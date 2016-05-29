




private "_targ";

_player = _this select 0;
_targ = _this select 1;
_mode = _this select 3;

if (cursortarget != (_player getvariable "dog name")) then {_targ = cursortarget};
player removeAction ffg_dogsearch;
player removeAction ffg_dogcivsearch;
player removeAction ffg_dogvehsearch;
player removeAction ffg_moveto;
player removeAction ffg_follow;
player removeAction ffg_stop;
player removeAction ffg_dogVehicle;
player removeAction ffg_dogattack;


_player setvariable ["dogvar",[_player,_targ,"",_mode],true];

_dog = _this select 1;
waitUntil {damage _targ >=0.2};
if (_dog distance _targ  <3) then {_dog say3d "DOG_do5";}else{_dog say3d "DOG_do5"}; 











