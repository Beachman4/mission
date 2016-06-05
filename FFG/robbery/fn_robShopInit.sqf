/*    
	File: fn_robShopInit.sqf
	Author: Stevo

	Description:
	Initialises the robable shops and assigns the variables to them.
*/
private["_shop"];


{
	_x setVariable ["_funds",nil,true];
	_x setVariable ["_status",false,true];
} forEach _shop;