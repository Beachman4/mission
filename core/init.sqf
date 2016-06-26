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

if (isNil "TFAR_fnc_isTeamSpeakPluginEnabled") exitwith {
	
	999999 cutText ["Task Force Radio is not running on your computer. Please re-sync and retry","BLACK FADED"];
	999999 cutFadeOut 99999999;

};

_TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;

if (!(_TFenabled)) then {

	while {!([] call TFAR_fnc_isTeamSpeakPluginEnabled)} do 
	{
		titleText ["Please enable Task Force Radio in your TS3 Plugins! || TS3 -> Settings -> Plugins", "BLACK"];
		sleep 2;
	};
};

FFG_TFEnabled = true;
FFG_onTsServer = "Fast Forward Gaming" == (call TFAR_fnc_getTeamSpeakServerName);
FFG_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
titleText ["Task Force Radio loaded succesfully","BLACK IN"];

[] spawn
{
    if (count playableUnits > 10) then {
        while {true} do 
        {
            _isadmin = false;
            if (!(isNil "life_adminlevel")) then
            {
                _adminlvl = life_adminlevel call BIS_fnc_parseNumber;
                if (_adminlvl > 0) then 
                {
                    _isadmin = true;
                };
            };

            if (!(_isadmin)) then
            {
                _onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
                _onChannel2 = "SERT Training" == (call TFAR_fnc_getTeamSpeakChannelName);
                _onChannel3 = "Requesting a Staff Member" == (call TFAR_fnc_getTeamSpeakChannelName);
                _onChannel4 = "Room One" == (call TFAR_fnc_getTeamSpeakChannelName);
                _onChannel5 = "Room Two" == (call TFAR_fnc_getTeamSpeakChannelName);
                _onChannel6 = "Room Three" == (call TFAR_fnc_getTeamSpeakChannelName);
                _onChannel7 = "Room Four" == (call TFAR_fnc_getTeamSpeakChannelName);
                _onChannel8 = "Work Room [DND SA+](Desc.)" == (call TFAR_fnc_getTeamSpeakChannelName);
                _onChannel9 = "Developer Offices" == (call TFAR_fnc_getTeamSpeakChannelName);
                if !(_onChannel || _onChannel2 || _onChannel3 || _onChannel4 || _onChannel5 || _onChannel6 || _onChannel7 || _onChannel8 || _onChannel9) then
                {
                    titleText ["| Please reload your TaskForce Radio Plugin (teamspeak) to join the TFR channel | Settings -> Plugins -> Reload All |", "BLACK"];
                    FFG_onChannel = false;
                } 
                else 
                {
                    if (!(FFG_onChannel)) then
                    {
                        titleText ["TS channel check completed. Welcome!","BLACK IN"];
                        FFG_onChannel = true;
                    };
                };
	

                _onTsServer = "Fast Forward Gaming" == (call TFAR_fnc_getTeamSpeakServerName);
                if (!(_onTsServer)) then 
                {
                    titleText ["Please join the FFG Teamspeak at ts.FastForwardGaming.net | And/Or enable Task Force Radio in your TS3 Plugins! | TS3 -> Settings -> Plugins |", "BLACK"];
                    FFG_onTsServer = false;
                } 
                else 
                {
                    if (!(FFG_onTsServer)) then 
                    {
                        titleText ["TS server check completed. Welcome!","BLACK IN"];
                        FFG_onTsServer = true;
                    };
                };
		
                _TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;
                if ((!(_TFenabled)) && !(FFG_TFEnabled)) then
                {
                    titleText ["| Please enable Task Force Radio in your TS3 Plugins! | TS3 -> Settings -> Plugins |", "BLACK"];
                    FFG_TFEnabled = false;
                };	

                if ((_TFenabled) && (!(FFG_TFEnabled))) then 
                {
                    titleText ["Plugin enabled, welcome back!","BLACK IN"];
                    FFG_TFEnabled = true;
                };
            };		
            sleep 3;
	   };
    };
};

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