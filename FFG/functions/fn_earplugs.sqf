sound_faded = !sound_faded;

if (sound_faded) then {
    1 fadeSound .1;
    hint localize "STR_Sound_Faded";
} else {
    1 fadeSound 1;
    hint localize "STR_Sound_Return";
};