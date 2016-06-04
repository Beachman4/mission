/*
	File: fn_emtMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks emts on the map for other emts. Only initializes when the actual map is open.
*/
private["_markers","_emts"];
_markers = [];
_emts = [];

sleep 0.5;
if(visibleMap) then {
	{if(side _x == independent) then {_emts set[count _emts,_x];}} foreach playableUnits; //Fetch list of cops / blufor
	
	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "Mil_triangle";
		_marker setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
	
		_markers set[count _markers,[_marker,_x]];
	} foreach _emts;
		
	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					if ("ItemGPS" in assignedItems _unit) then
					{
						_marker setMarkerPosLocal (visiblePosition _unit);
					};
				};
			};
			
		} foreach _markers;
		if(!visibleMap) exitWith {};
		sleep 0.02;
	};

	{deleteMarkerLocal (_x select 0);} foreach _markers;
	_markers = [];
	_emts = [];
}; 