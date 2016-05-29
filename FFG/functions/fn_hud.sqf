/*
File: fn_hud
Author: Yoda

Setup the hud text


*/

_gucci = parseText "#008000";
_decent = parseText "#FFFF00";
_bad = parseText "#FF0000";


while {true} do {
    sleep 0.01;
    _damage = round ((1 - (damage player)) * 100);
    _hunger = life_hunger;
    _thirst = life_thirst;
    _colorDamage = _gucci;
    _colorHunger = _gucci;
    _colorThirst = _gucci;
    
    if ((_damage >= 60) && (_damage < 100)) then {_colorDamage = _gucci; };
    if ((_damage >= 30) && (_damage < 60)) then {_colorDamage = _decent; };
    if ((_damage >= 0) && (_damage < 30)) then {_colorDamage = _bad; };
    
    if ((_hunger >= 60) && (_hunger < 100)) then {_colorHunger = _gucci; };
    if ((_hunger >= 30) && (_hunger < 60)) then {_colorHunger = _decent; };
    if ((_hunger >= 0) && (_hunger < 30)) then {_colorHunger = _bad; };
    
    if ((_thirst >= 60) && (_thirst < 100)) then {_colorThirst = _gucci; };
    if ((_thirst >= 30) && (_thirst < 60)) then {_colorThirst = _decent; };
    if ((_thirst >= 0) && (_thirst < 30)) then {_colorThirst = _bad; };
    
    _damageText = parseText format ["<t font='EtelkaNarrowMediumPro' color='%1' size='1.3' align='right'>%2</t>", _colorDamage, _damage];
    _hungerText = parseText format ["<t font='EtelkaNarrowMediumPro' color='%1' size='1.3' align='right'>%2</t>", _colorHunger, _hunger];
    _thirstText = parseText format ["<t font='EtelkaNarrowMediumPro' color='%1' size='1.3' align='right'>%2</t>", _colorThirst, _thirst];
    
    ((uiNamespace getVariable "FFG_hud") displayCtrl 26003) ctrlSetStructuredText _damageText;
    ((uiNamespace getVariable "FFG_hud") displayCtrl 26004) ctrlSetStructuredText _hungerText;
    ((uiNamespace getVariable "FFG_hud") displayCtrl 26005) ctrlSetStructuredText _thirstText;  
};