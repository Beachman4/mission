scriptName "fn_bombCar:";
/*
	Author: MasterYodA

	Description:
	Describe your function

	Parameter(s):
	_this select 0: Object - Description

	Returns:
	Bool - True when done
*/
#define SELF _fnc_fn_bombCar
_veh = param[0];
bombcar = _veh;
fnc_playSound = {
	[bombcar] remoteExec["yoda_fnc_bombCarMusic", 0];
	bombcar removeAction soundAction;
	sleep 23;
	soundAction = (bombcar) addAction["Play Music", fnc_playSound, "", 1.5, false, false, "", "_this in _target"];
};
bombcar setObjectTextureGlobal [0, "images\vehicleTextures\isis.paa"];
soundAction = bombcar addAction["Play Music", fnc_playSound, "", 1.5, false, false, "", "_this in _target"];
bombcar addAction["Touch off Bomb", "'HelicopterExploBig' createVehicle position player;", "", 1.5, false, false, "", " _this in _target "];