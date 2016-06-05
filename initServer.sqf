if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";
[] call compile PreprocessFileLineNumbers "\life_server\initA3L.sqf";
master_group attachTo[bank_obj,[0,0,0]];
onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";
[8,true,true,12] execFSM "core\timeModule.fsm";
ffg_to_hide = [2270, 8309, 8361, 8308, 2277, 2273, 2284, 8374, 2250, 2246, 2243, 2247, 2242, 2249, 8317, 8316, 8313, 8314, 8315, 8318, 2248, 2245, 2244, 8310, 8312, 8338, 8311, 2209, 16149, 15790, 
               2171, 2103, 2108, 2104, 2109, 2102, 2053, 2038, 2048, 2050, 2049, 2047, 2053, 2054, 2058, 2039, 2041, 2056, 2110, 2037, 2107, 2105, 2106, 2208, 2045, 2057, 2231, 2153, 2141, 2142, 
               2271, 2272, 2240, 2239, 2098, 2140, 16017, 16072, 16071, 16078, 16109, 16207, 15962, 16133, 15963, 16132, 16206, 16121, 16119, 16120, 16122, 19266, 19265, 19264, 16126, 16125, 16124,
               16123, 16127, 16117, 16113, 16116, 16114, 16172, 16174, 16173, 16110, 15988, 15989, 15913, 16119,  16120, 16121, 15958, 16122, 16113, 16117, 16116, 16115, 16114, 15961, 16172, 16111,
               16110, 16064, 15959, 15960, 16031, 16022, 16038, 16028, 16026, 16027, 16044, 16041, 16021, 16066, 16067, 16065, 16019, 16043, 15953, 16068, 16025, 16046, 16047, 16069, 15945, 16033,
               15947, 16032, 15942, 16045, 16030, 16037, 15948, 15950, 16018, 15941, 16042, 15934, 16024, 15938, 16035, 15939, 16036, 16029, 15936, 15952, 16040, 16039, 15949, 16020, 15956, 16034, 
               15957, 15951, 16023, 15940, 16118, 15954, 15946, 15935, 15937, 15955, 15943, 15944, 16112, 16070, 15921, 15933, 15991, 16012, 16007, 15919, 15928, 15997, 15993, 15918, 16000, 15998,
               16008, 16002, 15924, 15916, 16130, 15929, 15930, 15994, 15914, 15923, 15926, 15990, 16001, 15927, 16128, 16006, 15932, 15917, 15925, 15915, 15920, 15996, 16011, 15931, 16004, 15995,
               16005, 15922, 15999, 16009, 15992, 16003, 16131, 16010, 16063, 15973, 15978, 16059, 15986, 16052, 16129, 15970, 15982, 15968, 15984, 16054, 15975, 15974, 15983, 16050, 15967, 16060,
               15971, 16056, 15969, 15977, 16051, 16061, 15972, 15966, 16062, 15979, 16055, 15987, 16053, 15976, 16057, 15981, 16048, 15985, 15980, 16058, 15960, 16049, 16211, 16213, 16251, 16267,
               15891, 15904, 16212, 16250, 16234, 16236, 16252, 16243, 16263, 15909, 16249, 16257, 16261, 16217, 16244, 16224, 16215, 16229, 16210, 15888, 15901, 16269, 16239, 16259, 16231, 16254, 
               16216, 16246, 16226, 15892, 16230, 16256, 16220, 15900, 16235, 16253, 15908, 15895, 16225, 16262, 16245, 16222, 16237, 15896, 15903, 16266, 16242, 16258, 15907, 16240, 15889, 16082, 
               16264, 16223, 16241, 15906, 15902, 16233, 16265, 16228, 16208, 16255, 16083, 15910, 16248, 15890, 16219, 16238, 16227, 16218, 16209, 16232, 16087, 16260, 15898, 15897, 16247, 16268, 
               16221, 16214, 16099, 15893, 16102, 15894, 16092, 15899, 16096, 16084, 15905, 16107, 16095, 16091, 16108, 16100, 16090, 16104, 16088, 16085, 16075, 16106, 16105, 16079, 16076, 16081, 
               16073, 16080, 16207, 16078, 16098, 16089, 16101, 16094, 16097, 16103, 16086, 16074, 16077, 16093, 19411, 19289, 19274, 19270, 19276, 19273, 19275, 19315, 19390, 19389, 19267, 19270, 
               19276, 19271, 19273, 19269, 19268, 19272, 19341, 19416, 19398, 19322, 19313, 19258, 19291, 19328, 19286, 19278, 19355, 19404, 19361, 19348, 19293, 19329, 19405, 19371, 19392, 19331, 
               19319, 19304, 19301, 19368, 19394, 19351, 19390, 19366, 19413, 19325, 19360, 19352, 19391, 19376, 19339, 19303, 19312, 19377, 19353, 19408, 19296, 19282, 19321, 19299, 19285, 19354, 
               19323, 19418, 19350, 19362, 19311, 19417, 19370, 19372, 19406, 19363, 19315, 19300, 19284, 19402, 19298, 19415, 19359, 19343, 19414, 19306, 19290, 19337, 19330, 19396, 19310, 19356,
               19305, 19334, 19320, 19400, 19333, 19283, 19393, 19287, 19324, 19302, 19335, 19374, 19389, 19358, 19357, 19292, 19297, 19367, 19412, 19318, 19280, 19327, 19401, 19349, 19397, 19344, 
               19345, 19295, 19317, 19294, 19340, 19288, 19326, 19277, 19365, 19332, 19346, 19399, 19388, 19338, 19307, 19257, 19342, 19395, 19356, 19310, 19410, 19316, 19396, 19364, 19373, 19259, 
               19337, 19409, 19290, 19281, 19279, 19347, 19309, 19330, 19308, 19343, 19306, 19415, 19414, 19284, 19403, 19407, 19298, 19402, 19336, 19369, 19359, 19375, 19300, 19314, 35372, 35352,
               105750,33506, 33504, 33494, 33492, 33491, 33495, 33606, 33604, 33609, 33493,33502,33500, 33600, 33605, 33607, 33603,33608,33582, 33751, 33577, 33575];
{
    ([0,0,0] nearestObject _x) hideObjectGlobal true;
} foreach ffg_to_hide;

_markername="sert_1";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects;
_markername="sert_2";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 
_markername="sert_3";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 
_markername="sert_4";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 
_markername="rebel_1";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 
_markername="rebel_2";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 
_markername="rebel_3";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 
_markername="rebel_4";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 
_markername="copbase_1";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 
_markername="tree_1";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 
_markername="town_2";
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects; 

while {true} do
{
    {
        if (count units _x==0) then {
            deleteGroup _x;
        }
    } foreach allGroups;
    sleep (60 * 5);
};
