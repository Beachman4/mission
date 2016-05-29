#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/
if(FETCH_CONST(life_adminlevel) < 4) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
 
/*[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};*/
 
if(life_stealth) then {
        life_stealth = false;
        titleText ["Stealth mode disabled","PLAIN"]; titleFadeOut 2;
        //[[player,false],"ffg_fnc_hideObject",false,false] call life_fnc_mp;
        player setVariable["stealth", false, true];
        [player, false] RemoteExec ["ffg_fnc_hideObject"];
} else {
        life_stealth = true;
        titleText ["Stealth mode enabled","PLAIN"]; titleFadeOut 2;
        //[[player,true],"ffg_fnc_hideObject",false,false] call life_fnc_mp;
        player setVariable["stealth", true, true];
        [player, true] RemoteExec ["ffg_fnc_hideObject"];
};

closeDialog 0;