private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};
player addUniform "jamie_sheriff";
player addItem "tf_anprc152"; 
player assignItem "tf_anprc152";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
[] call life_fnc_saveGear;