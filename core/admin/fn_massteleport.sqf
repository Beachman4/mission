#include <macro.h>
/*
    Admin mass teleport

*/

private["_pos"];
if(FETCH_CONST(life_adminlevel) < 4) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

_pos = getPos player;

{
    if (vehicle _x == _x) then {
        _x setPos _pos;
    } else {
        (vehicle _x) setPos _pos;
    };
    
} foreach playableUnits;

closeDialog 0;