/*
*
* ffg_fnc_dogsearch
*
*/

_area = (param[3]) param[0];
_vehicle = (param[3]) param[1];
player removeAction ffg_dogsearch;
player removeAction ffg_dogcivsearch;
player removeAction ffg_dogvehsearch;
player removeAction ffg_moveto;
player removeAction ffg_follow;
player removeAction ffg_stop;
player removeAction ffg_dogVehicle;
player removeAction ffg_dogattack;
player removeAction ffg_guard;

if (_area) then {
    //todo
};
if (_vehicle) then {
    [] spawn life_fnc_vehInvSearch;
} else {
    [cursorTarget] spawn life_fnc_searchAction;
};