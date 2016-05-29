private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Sheriff HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["cop_spawn_2","SERT HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	case civilian:
	{
		_return = [
			["civ_spawn_1","Union City","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Falls Church","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
	case independent: {
		_return = [
			["medic_spawn_2","Union City Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};
_return;