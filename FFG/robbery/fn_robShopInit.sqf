/*    
	File: fn_robShopInit.sqf
	Author: Stevo

	Description:
	Initialises the robable shops and assigns the variables to them.
*/
private["_shop"];

_shop = [station_1, station_2, station_3, station_4, market_1, market_2, market_3];

{
	_x setVariable ["_funds",nil,true];
	_x setVariable ["_status",false,true];
} forEach _shop;