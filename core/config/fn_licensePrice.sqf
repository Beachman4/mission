/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {200}; //Drivers License cost
	case "boat": {200}; //Boating license cost
	case "pilot": {10000}; //Pilot/air license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "dive": {500}; //Diving license cost
	case "oil": {200}; //Oil processing license cost
	case "cair": {10}; //Cop Pilot License cost
	case "swat": {10}; //Swat License cost
	case "cg": {10}; //Coast guard license cost
	case "heroin": {500}; //Heroin processing license cost
	case "marijuana": {500}; //Marijuana processing license cost
	case "medmarijuana": {500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {5000}; //Rebel license cost
	case "truck": {1500}; //Truck license cost
	case "diamond": {200};
	case "salt": {200};
	case "cocaine": {500};
	case "sand": {200};
	case "iron": {200};
	case "copper": {200};
	case "cement": {200};
	case "mair": {10};
	case "home": {7500};
	
	case "rifle": {50000};
};