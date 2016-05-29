/*
	File: fn_robShopReset.sqf
    Author: Stevo
    
    Description:
    Starts a server side reset of the shops in case of player(robber) disconnect.
*/

private["_shop","_marker","_loot","_time"];

//Make sure it's only running on the server...
if !(isServer) exitWith {};

//Assignments and nil checks
_shop = _this select 0;
_marker = _this select 1;
_time = _this select 2;
if(isNil "_shop") exitwith {};
if(isNil "_marker") exitwith {};

//Reset action after time delay
sleep _time;
_loot = 1000 + round(random 24000);
_shop setVariable ["_funds",_loot,true];
_marker setMarkerColor "ColorGreen";