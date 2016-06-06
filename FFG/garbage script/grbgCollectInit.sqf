/*
	file: grbgCollectInit.sqf
	By Tristan Walsh
	Description: Intialises all wheelie bins placed in mission file
*/

private[_trashCan]

_trashCan = [trashCan_1, trashCan_2, trashCan_3, trashCan_4, trashCan_5, trashCan_6];

{
	_x setVariable ["_wasteAmount",nil,true];
} forEach _trashCan

