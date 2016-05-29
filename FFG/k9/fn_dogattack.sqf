private "_targ";

_player = param[0];
_mode = param[3];







if (cursortarget != (_player getvariable "dog name")) then {_targ = cursortarget};
player removeAction ffg_dogsearch;
player removeAction ffg_dogcivsearch;
player removeAction ffg_dogvehsearch;
player removeAction ffg_moveto;
player removeAction ffg_follow;
player removeAction ffg_stop;
player removeAction ffg_dogVehicle;
player removeAction ffg_dogattack;


_player setvariable ["dogvar",[_player,_targ,"",_mode],false];
waitUntil {damage _targ >=0.5};
_targ playMove "AmovPpneMstpSrasWrflDnon";

_dog = _this select 1;



if (_dog distance _targ  >3) then {_dog say3d "DOG_do1";}else{_dog say3d "DOG_do2"};sleep 10;
if (_dog distance _targ  <3) then {_dog say3d "DOG_do2";}else{_dog say3d "DOG_do1"}; 

