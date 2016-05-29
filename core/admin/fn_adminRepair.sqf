#include <macro.h>

if(FETCH_CONST(life_adminlevel) < 4) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

if (vehicle player == player) then {
    cusorTarget setDamage 0;
} else {
    vehicle player setDamage 0;
};
closeDialog 0;