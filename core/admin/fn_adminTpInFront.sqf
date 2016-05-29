#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/

if(FETCH_CONST(life_adminlevel) < 4) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};
 
if (isNil "admin_tpdirection_0n") then {admin_tpdirection_0n = true;} else {admin_tpdirection_0n = !admin_tpdirection_0n;};
		//sleep 0.01;
		if (admin_tpdirection_0n) then 
		{
			hint "Don't forget god mode, or you will probably die";
			cutText ["TP infront of you ON - Press 6 to tp forward - Press 7 to Fly", "PLAIN DOWN"];
		}
		else
		{
			//hint "TP infront of you OFF";
			cutText ["TP infront of you OFF", "PLAIN DOWN"];
		};