tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;

if (isServer) then {
	bank setvariable ["robbed",false,true];
	stash1 setvariable ["robbed",false,true];
	stash2 setvariable ["robbed",false,true];
	stash3 setvariable ["robbed",false,true];
	stash4 setvariable ["robbed",false,true];
};
enableSaving[false,false];

[] execVM "KRON_Strings.sqf";
[] execVM "core\init.sqf";
"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};