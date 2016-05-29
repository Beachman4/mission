class FFG_RemoveLicense {
	idd = 25000;
	name= "FFG_RemoveLicense";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";

    class controlsBackground {
        class ffg_remove_background: RscPicture
        {
            idc = 25030;
            text = "#(argb,8,8,3)color(0,0.329412,0.541176,1)";
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.352 * safezoneH;
        };
    };
    
    class controls {
        
        class ffg_remove_driver: RscButtonMenu
        {
            idc = 25001;
            text = "Drivers License"; //--- ToDo: Localize;
            x = 0.448438 * safezoneW + safezoneX;
            y = 0.379 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {102,0,0,1};
        };
        class ffg_remove_pilot: RscButtonMenu
        {
            idc = 25002;
            text = "Pilots License"; //--- ToDo: Localize;
            x = 0.448438 * safezoneW + safezoneX;
            y = 0.412 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {102,0,0,1};
        };
        class ffg_remove_boat: RscButtonMenu
        {
            idc = 25003;
            text = "Boating License"; //--- ToDo: Localize;
            x = 0.448438 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {102,0,0,1};
        };
        class ffg_remove_truck: RscButtonMenu
        {
            idc = 25004;
            text = "Truck License"; //--- ToDo: Localize;
            x = 0.448438 * safezoneW + safezoneX;
            y = 0.478 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {102,0,0,1};
        };
        class ffg_remove_gun: RscButtonMenu
        {
            idc = 25005;
            text = "Gun License"; //--- ToDo: Localize;
            x = 0.448438 * safezoneW + safezoneX;
            y = 0.511 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {102,0,0,1};
        };
        class ffg_remove_rifle: RscButtonMenu
        {
            idc = 25006;
            text = "Rifle License"; //--- ToDo: Localize;
            x = 0.448438 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {102,0,0,1};
        };
        class ffg_remove_diving: RscButtonMenu
        {
            idc = 25007;
            text = "Diving License"; //--- ToDo: Localize;
            x = 0.448438 * safezoneW + safezoneX;
            y = 0.577 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {102,0,0,1};
        };
        class ffg_remove_all: RscButtonMenu
        {
            idc = 25008;
            text = "All Licenses"; //--- ToDo: Localize;
            x = 0.448438 * safezoneW + safezoneX;
            y = 0.61 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
            colorBackground[] = {102,0,0,1};
        };
        class ffg_remove_text: RscText
        {
            idc = 25010;
            text = "Remove Licenses"; //--- ToDo: Localize;
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.0876563 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {0,0,0,1};
        };
        class ffg_remove_cancel: RscButtonMenu
        {
            idc = 25011;
            text = "Cancel"; //--- ToDo: Localize;
            x = 0.510312 * safezoneW + safezoneX;
            y = 0.654 * safezoneH + safezoneY;
            w = 0.0464063 * safezoneW;
            h = 0.022 * safezoneH;
            onButtonClick = "closeDialog 0";
            colorText[] = {0,0,0,1};
            colorBackground[] = {102,0,0,1};
        };
    };
};