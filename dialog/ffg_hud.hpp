class FFG_hud {
	idd = 26000;
	name= "FFG_hud";
	movingEnable = true;
	enableSimulation = true;
	duration = 500000;
	onLoad = "uiNamespace setVariable ['FFG_hud', _this select 0]";
	
	class controls {
		class ffg_hud_thirst: RscPicture
		{
			idc = 26018;
			text = "icons\water_ca.paa";
			x = 0.933125 * safezoneW + safezoneX;
			y = 0.841 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ffg_hud_health: RscPicture
		{
			idc = 26019;
			text = "icons\health_ca.paa";
			x = 0.933125 * safezoneW + safezoneX;
			y = 0.753 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ffg_hud_food: RscPicture
		{
			idc = 26020;
			text = "icons\food_ca.paa";
			x = 0.933125 * safezoneW + safezoneX;
			y = 0.797 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ffg_hud_health_text: RscStructuredText
		{
			idc = 26003;
			text = ""; //--- ToDo: Localize;
			x = 0.958906 * safezoneW + safezoneX;
			y = 0.753 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ffg_hud_food_text: RscStructuredText
		{
			idc = 26004;
			text = ""; //--- ToDo: Localize;
			x = 0.958906 * safezoneW + safezoneX;
			y = 0.797 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ffg_hud_thirst_text: RscStructuredText
		{
			idc = 26005;
			text = ""; //--- ToDo: Localize;
			x = 0.958906 * safezoneW + safezoneX;
			y = 0.841 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.033 * safezoneH;
		};
	};
};