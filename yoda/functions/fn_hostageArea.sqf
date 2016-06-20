scriptName "fn_hostageArea:";
/*
	Author: Aylon "MasterYodA" Armstrong <https://the9grounds.com>

	Description:
	Describe your function

	Parameter(s):
	_this select 0: Object - Description

	Returns:
	Bool - True when done
*/
#define SELF _fnc_fn_hostageArea

hostage_start = time;
hostage_time = 15 * 60;

_group = group player;
_spawn = getPos player;
hostage = _group createUnit["O_mas_afr_Rebel8a_F", _spawn, [], 0, "FORM"];
hostage setCaptive true;
_marker = createMarker["hostage", [0, 0]];
_marker setMarkerShape "ICON";
"hostage" setMarkerType "Marker";
"hostage" setMarkerColor "ColorRed";
"hostage" setMarkerText "Hostage Target";
"hostage" setMarkerPos _spawn;
hostage_alive = true;
[[1, "Someone is trying to take a hostage.  The hostage has been marked on the map. Rescue the hostage and arrest the suspects!"], "life_fnc_broadcast", west, false] spawn life_fnc_MP;
player groupChat "The pigs are comin'.";

while {hostage_alive} do {
	//Update Marker

	"hostage" setMarkerPos getPos hostage;

	if (time >= hostage_start + hostage_time) exitWith {
		groupChat "You did it";
		life_atmcash = life_atmcash + 300000;
		deleteVehicle hostage;
		deleteMarker "hostage";
		server globalChat "The Hostage Taker won!";
		[[1,"You have failed the hostage mission."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	};

	if (player distance hostage > 200) then {
		yoda_hostage_failed = true;
		deleteVehicle hostage;
		deleteMarker "hostage";
		server globalChat "The Hostage Taker is a scrub #Roathed";
	};
};

if (yoda_hostage_failed) then {
	//Cooldown
};