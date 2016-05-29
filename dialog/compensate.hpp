/*class Life_Admin_Compensate {
	idd = 9920;
	name= "life_admin_compensate_give";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn {waitUntil {!isNull (findDisplay 9920)}; ((findDisplay 9920) displayCtrl 9921) ctrlSetText localize ""STR_Admin_Amount""};";
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.5;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.5;
			h = 0.3 - (22 / 250);
		};
	};
	
	class controls {
	
		class InfoMsg : Life_RscStructuredText
		{
			idc = 9921;
			sizeEx = 0.020;
			text = "";
			x = 0.1;
			y = 0.25;
			w = 0.5; h = 0.11;
		};
		
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "$STR_Admin_Compensate";
			x = 0.1;
			y = 0.2;
			w = 0.5;
			h = (1 / 25);
		};

		class AdminCloseComp : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.5 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class AdminCompensVer : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_Compensate";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] spawn life_fnc_adminCompensate;";
			x = 0.27;
			y = 0.40;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class AdminCompensTex : Life_RscEdit
		{
			idc = 9922;
			text = "";
			x = 0.04 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.35;
			w = (13 / 40);
			h = (1 / 25);
		};
	};
};*/

class Life_Admin_Compensate {
	idd = 9920;
	name= "life_admin_compensate_give";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn {waitUntil {!isNull (findDisplay 9920)}; ((findDisplay 9920) displayCtrl 9921) ctrlSetText localize ""STR_Admin_Amount""};";
	
	class controlsBackground {
		class Life_RscTitleBackground: Life_RscText
		{
			idc = -1;
			x = 0.335 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
		};
		class MainBackground: Life_RscText
		{
			idc = -1;
			x = 0.335 * safezoneW + safezoneX;
			y = 0.3592 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.176 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	
	class controls {
		class InfoMsg: Life_RscStructuredText
		{
			idc = 9921;

			x = 0.335 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.0605 * safezoneH;
		};
		class Title: Life_RscTitle
		{
			idc = -1;
			text = "$STR_Admin_Compensate"; //--- ToDo: Localize;
			x = 0.335 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {0.95,0.95,0.95,1};
			sizeEx = (			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * GUI_GRID_H;
		};
		class AdminCloseComp: Life_RscButtonMenu
		{
			onButtonClick = "closeDialog 0;";

			idc = -1;
			text = "$STR_Global_Close"; //--- ToDo: Localize;
			x = 0.335 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.0644531 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			sizeEx = (			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * GUI_GRID_H;
		};
		class AdminCompensVer: Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Admin_Compensate"; //--- ToDo: Localize;
			x = 0.402031 * safezoneW + safezoneX;
            onButtonClick = "[] spawn life_fnc_adminCompensate;";
			y = 0.5 * safezoneH + safezoneY;
			w = 0.0644531 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
			sizeEx = (			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * GUI_GRID_H;
		};
		class AdminCompensTex: Life_RscEdit
		{
			idc = 9922;
			text = "";
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class life_comp_reason_title: Life_RscText
		{
			idc = -1;
			text = "Reason"; //--- ToDo: Localize;
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class life_comp_reason: Life_RscEdit
		{
			idc = 9923;
			text = "";
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};