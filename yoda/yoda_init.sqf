waitUntil {time > 0};
execVM "yoda\EtV.sqf";
waitUntil {!isNil "EtVInitialized"};
[player] call EtV_Actions;