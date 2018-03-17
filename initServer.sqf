/*
 *	You can change MissionDate to some specific date to override date set in mission editor:
 *		format:		[@Year, @Month, @Day, @Hours, @Minutes] (e.g. [2012, 12, 31, 12, 45])
 */
MissionDate = [
	date select 0
	, date select 1
	, date select 2
	, switch ("par_daytime" call BIS_fnc_getParamValue) do {
		case 0: { 10 + round(random 4) };
		case 1: { 21 + round(random 8) };
		case 2: { round(random 24) };
		case 3: { 5 };
	}
	, switch ("par_daytime" call BIS_fnc_getParamValue) do {
		case 3: { 30 };
		default { selectRandom [0,10,15,20,25,30,40,45,50] };
	}
];
publicVariable "MissionDate";

/*
 * Date
 */
setDate MissionDate;

/*
 *	Weather
 */
if (!isNil "dzn_fnc_setWeather") then {
	("par_weather" call BIS_fnc_getParamValue) spawn dzn_fnc_setWeather;
};


/*
 *	Collect Some Player connection data
 */
PlayerConnectedData = [];
PlayerConnectedEH = addMissionEventHandler ["PlayerConnected", {
	diag_log "Client connected";
	diag_log _this;
	// [ DirectPlayID, getPlayerUID player, name player, @bool, clientOwner ]
	PlayerConnectedData pushBack _this;
	publicVariable "PlayerConnectedData";
}];

// Radar destoyed response:
[] spawn {
	waitUntil { sleep 5; !alive Radar };
	
	[tka_radarSite_patrol, [
		(Radar getPos [175, 0])
		,(Radar getPos [175, 270])
		,(Radar getPos [175, 180])
		,(Radar getPos [random 175, random 360])
		,(Radar getPos [random 175, random 360])
	], "SAD"] call dzn_fnc_dynai_moveGroups;
	
	[tka_mine, [
		(Radar getPos [175, 0])
		,(Radar getPos [175, 270])
		,(Radar getPos [175, 180])
		,(Radar getPos [random 175, random 360])
		,(Radar getPos [random 175, random 360])
	], "SAD"] call dzn_fnc_dynai_moveGroups;
	
	sleep 15;
	(group leader bmp2) addWaypoint [(Radar getPos [175, 0]), 200];
	
	sleep 20;
	[RoadPost, [
		(PursuitWP getPos [50, random 360])
		, (PursuitWP getPos [50, random 360])
		, (PursuitWP getPos [50, random 360])
	], "SAD"] call dzn_fnc_dynai_moveGroups;
};