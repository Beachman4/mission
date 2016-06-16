private["_filter"];
_filter = param[0];
ctrlSetText[3103,"Detective Clothing Shop"];
switch (_filter) do
{
    case 0: 
    {
        [
            ["DAI_Polo",nil,100],
            ["A3L_DAI",nil,100],
            ["U_ALR_Suit_1",nil,2000],
            ["U_ALR_Suit",nil,2000],
            ["U_ALR_Suit_4",nil,2000]
        ];
    };
    case 1: 
    {
        [];
    };
    case 2: 
    {
        [];
    };
    case 3: 
    {
        [
            ["DAI_TACTVEST_WHITE",nil,100],
            ["DAI_TACTVEST_YELLOW",nil,100],
            ["DAI_VEST_BLACK",nil,100],
            ["DAI_VEST_TAN",nil,100],
            ["DAI_DUTY_VEST",nil,100]
        ];
    };
    case 4: 
    {
        [];
    };
};