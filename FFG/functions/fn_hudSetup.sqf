/*
	File: fn_hudSetup.sqf
	Author: Yoda
	
    setup the hud guyz
*/

[] spawn ffg_fnc_hud;

("FFGHUD" call BIS_fnc_rscLayer) cutRsc ["FFG_hud","PLAIN"]; //show

[] spawn
{
	while {true} do
	{
		sleep 120;
		("FFGHUD" call BIS_fnc_rscLayer) cutText ["","PLAIN"]; //remove
		("FFGHUD" call BIS_fnc_rscLayer) cutRsc ["FFG_hud","PLAIN"]; //show
	};
};