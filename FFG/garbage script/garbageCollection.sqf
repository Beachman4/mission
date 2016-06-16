/*
  file: garbageCollection.sqf
  By Tristan Walsh
  Description: Carries out the main handling of collecting garbage
*/

Private ["_vehicle", _"trashCan", "_wasteAmount", "_binman", "_trash"];

//Checking nearest vehicle

_vehicle = getNearestVehicle;
If (_vehicle != {Garbage Truck ID}) exitWith {hint "You are using the incorrect vehicle!"};
	
//Assigning Player
	
_binman = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

//Other checks

if (vehicle player != _binman) exitWith {hint "You need to exit your Vehicle!"};
if (player != alive) exitWith {hint "You aren't alive!"};

/* First run Checks */

_trash = _trashCan getVariable "_wasteAmount";
If (isNil _trash) then 
{
	_trash = 10 + round(random 40)
};
/*

TODO: -Add functionality to either add "trash" to player inv or to add it to garbage truck.
	  -Either assign a vehicle as a garbage truck or make a garbage truck model.
	  -Either add a timer that stops players spamming one trash can for trash, or come up with a system that slowly increases the waste.
	