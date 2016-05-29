_player = param[0];
_targ = param[1];
_mode = param[3];

player removeAction ffg_dogsearch;
player removeAction ffg_dogcivsearch;
player removeAction ffg_dogvehsearch;
player removeAction ffg_moveto;
player removeAction ffg_follow;
player removeAction ffg_stop;
player removeAction ffg_dogVehicle;
player removeAction ffg_dogattack;
player removeAction ffg_guard;

switch (_mode) do {
    case "move" : {
        _player setVariable ["dogvar", [_player, _targ, "", "move"], true];
    };
    case "stop" : {
        _player setVariable ["dogvar", [_player, _targ,"", "stop"], true];
    };
    case "follow" : {

        if (cursortarget != (_player getvariable "dog name")) then {_targ = cursortarget};


        _player setvariable ["dogvar",[_player,_targ,"","follow"],true];
    }; 
};