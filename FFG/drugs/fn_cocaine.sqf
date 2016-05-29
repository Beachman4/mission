_item = "cocaine";
if (player distance (getMarkerPos "cocain_1") > 30) exitWith {hint localize "STR_Cocaine_Process_distance"; };
if (vehicle player != player) exitWith {hint localize "STR_Cocaine_Process_vehicle"; };


_val = 1;
life_action_inUse = true;
if (gather_cocaine) exitWith {};
if (animationState player == "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon") exitWith {};
gather_cocaine = true;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep 2.5;
gather_cocaine = false;

if(([true,_item,_val] call life_fnc_handleInv)) then
{
    _itemName = [([_item,0] call life_fnc_varHandle)] call life_fnc_varToStr;
    titleText[format["You created 1 %1",_itemName],"PLAIN"];
};
life_action_inUse = false;