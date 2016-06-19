#include <macro.h>
if (!isNil "A3L_RunCode") exitwith {
	player setvariable ["lolusuck",true,true];
};

A3L_RunCode = compileFinal "
	private ""_code"";
	_code = _this select 0;
	_code = compile _code;
	[] call _code;
";
[] execVM "A3L_Stuff\jailsystem.sqf";
[] execVM "A3L_Stuff\bank.sqf";
[] execVM "A3L_Stuff\hunting.sqf";
life_firstSpawn = true;
life_session_completed = false;
private["_handle","_timeStamp"];
waitUntil {!isNull player && player == player};
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";
[] call life_fnc_setupEVH;
[] call life_fnc_setupActions;
waitUntil {(!isNil {clientGangLeader})};
A3L_Fnc_Request = player;
PublicvariableServer "A3L_Fnc_Request";
0 cutText ["Waiting for the server to be ready...","BLACK FADED"];
0 cutFadeOut 99999999;
waitUntil{!isNil "life_server_isReady"};
[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
0 cutText["Finishing client setup procedure","BLACK FADED"];
0 cutFadeOut 9999999;
[] spawn life_fnc_escInterupt;
switch (playerSide) do
{
	case west:
	{
		if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
			["NotWhitelisted",false,true] call BIS_fnc_endMission;
			sleep 35;
		};
        tf_no_auto_long_range_radio = false;
        waitUntil {!(isNull (findDisplay 46))};
        [] call life_fnc_spawnMenu;
        waitUntil{!isNull (findDisplay 38500)};
        waitUntil{isNull (findDisplay 38500)};
	};
	case civilian:
	{
        if(life_is_arrested) then
        {
            [false,false,life_arrestMinutes,life_arrestReason] call fnc_jailsetup;
        } else {
            [] call life_fnc_spawnMenu;
            waitUntil{!isNull (findDisplay 38500)};
            waitUntil{isNull (findDisplay 38500)};
        };

        [] call life_fnc_zoneCreator;
	};
	case independent:
	{
		if((__GETC__(life_medicLevel)) < 1) exitWith {
			["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
			sleep 35;
		};
        tf_no_auto_long_range_radio = false;
        waitUntil {!(isNull (findDisplay 46))};
        [] call life_fnc_spawnMenu;
        waitUntil{!isNull (findDisplay 38500)};
        waitUntil{isNull (findDisplay 38500)};
	};
};
player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
[] execFSM "core\client.fsm";
waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
0 cutText ["","BLACK IN"];
//[] call life_fnc_hudSetup;
[] call FFG_fnc_hudSetup;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
player setVariable["steam64ID",getPlayerUID player];
player setVariable["realname",profileName,true];
life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";
[] execVM "core\init_survival.sqf";
__CONST__(life_paycheck,life_paycheck);
player setVariable["stealth", false, true];

if (__GETC__(life_adminlevel) > 3) then {
    player addAction["<t color='#ff1111'>Spawn Weapon</t>", "VAS\open.sqf"];
	[] call compile preprocessFileLineNumbers "proving_ground\init.sqf";
	execVM "yoda\yoda_init.sqf";
};
if (playerSide == west) then {
    player setVariable["copLevel", 1, true];
};