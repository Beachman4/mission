if(life_session_completed) exitWith {};
cutText[localize "STR_Session_QueryFail","BLACK FADED"];
0 cutFadeOut 9999999;
[[getPlayerUID player,profileName,life_cash,life_atmcash,player],"DB_fnc_insertRequest",false,false] spawn life_fnc_MP;