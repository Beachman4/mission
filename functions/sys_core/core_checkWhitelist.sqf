switch (playerSide) do
{
	case west:
	{
        if ((__GETC__(life_coplevel) == 0) then {
            ["notWhiteListed",false,true] call BIS_fnc_endMission;
            sleep 35;
        };
	};
	case civilian:
	{};
	case independent:
	{};
};