/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the players houses, mainly throwing down markers.
*/
if(count life_houses == 0) exitWith {}; //Nothing to do.

{
	_position = call compile format["%1",_x select 0];
	_house = nearestObject [_position, "House"];
	_house setVariable["uid",round(random 99999),true];
	_doors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");
	for "_i" from 1 to _doors do {
		_house setVariable [format["bis_disabled_Door_%1", _i], 1, true];
	};
	_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");

	_marker = createMarkerLocal [format["house_%1",(_house getVariable "uid")],_position];
	_marker setMarkerTextLocal _houseName;
	_marker setMarkerColorLocal "ColorBlue";
	_marker setMarkerTypeLocal "loc_Lighthouse";

} foreach life_houses;