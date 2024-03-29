#include <macro.h>
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
while {true} do
{

    if (__GETC__(life_adminlevel) == 0) then
    {

        _channels = ["TaskForce Radio", "SERT Training", "Requesting a Staff Member", "Room One", "Room Two", "Room Three", "Room Four", "Work Room [DND SA+](Desc.)", "Developer Offices"];
        _currentChannel = [] call TFAR_fnc_getTeamSpeakChannelName;
        if (!(_currentChannel in _channels))  then
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