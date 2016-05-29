_license = param[0];

switch (_license) do
{
    case "driver": {
        license_civ_driver = false;
    };
    case "pilot": {
        license_civ_air = false;
    };
    case "boat": {
        license_civ_boat = false;
    };
    case "truck": {
        license_civ_truck = false;
    };
    case "gun": {
        license_civ_gun = false;
    };
    case "rifle": {
        license_civ_rifle = false;
    };
    case "diving": {
        license_civ_dive = false;
    };
    case "all": {
        license_civ_driver = false;
        license_civ_air = false;
        license_civ_boat = false;
        license_civ_truck = false;
        license_civ_gun = false;
        license_civ_rifle = false;
        license_civ_dive = false;
    };
};