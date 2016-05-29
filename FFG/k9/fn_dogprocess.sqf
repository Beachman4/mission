

private ["_targ","_vtargs","_targs","_dog"];
vtargs = [];

_dog = player getvariable "dog name";//get name of dog.




while {alive _dog} do {
		
_dog setcaptive true;
	
	switch (player getvariable "dogvar" select 3)  do {

		case "Unassign" : {hint "dog Unassigned";deletevehicle _dog;

};

		case "Heal" : {

hintsilent "Heal";
_dog stop false;
_targ = (player getvariable "dogvar" select 1);
_dog domove getpos _targ;_dog dowatch _targ;
if (_dog distance _targ <3) then {_targ setdamage 0};//change damage if you want
sleep 2;_dog setcaptive false;


};

		case "cargo" : {

hintsilent "In cargo";
_dog stop false;
_targ = (player getvariable "dogvar" select 1);
_dog domove getpos _targ;
_dog dowatch _targ;
sleep 2;
_dog setcaptive false;

};
		

		case "attack" : {

hintsilent "Attack";

_dog stop false;
_targ = (player getvariable "dogvar" select 1);
_dog setVelocity [0, 0, 4.5];_dog domove getpos _targ;
_dog dowatch _targ;
if (_dog distance _targ <=3) then {_targ setDamage (damage _targ + (0.05 + random 0.03))};//change damage if you want

sleep 0.5;

_dog setcaptive false;


};
		

		case "follow" : {
hintsilent "Follow";
_dog stop false;
_dog setVelocity [0, 0, 4.5];
_dog setspeedmode 'full'; 

_dog domove getpos player;


};
	     

	      	case "stop"   : {
hintsilent "Stop";  
_dog stop true};
	     
case "guard"  : {

hintsilent "Guard";
_dog stop false;
_targs = nearestobjects [_dog,["man"],50] - [player,_dog];
{if (alive _x) then {_vtargs = _vtargs + [_x]}} foreach _targs;
_targ = _vtargs select 0;
_dog domove getpos _targ;
if (_dog distance _targ  <3) then {_targ setDamage (damage _targ + (0.05 + random 0.03))};//change damage if you want
sleep 2;
_dog setcaptive false;


	           };
    case "move" : {
        createDialog "RscMiniMap";
        onMapSingleClick {
            _dog setVariable ["Dog_MovePos", _pos]; closeDialog 0; onMapSingleClick ""
        };
        _pos = _dog getVariable "Dog_MovePos";
        _marker = createMarkerLocal ["Dog_MoveMarker", _pos];
        _marker setMarkerShapeLocal "ICON";
        _marker setMarkerTypeLocal "selector_selectedMission";
        _marker setMarkerSizeLocal [0.5, 0.5];
        while {alive _dog && _dog distance _pos < 20} do {
            _dog doMove _pos;
            sleep .1;
        };
        if (_dog distance _pos <= 20) then {
            sleep 2;
        };
        deleteMarkerLocal "Dog_MoveMarker";
    };

	
};
sleep 0.5;

//waitUntil {speed _dog <3};


_vtargs=[];
};

player setvariable ["dog",false,true];

