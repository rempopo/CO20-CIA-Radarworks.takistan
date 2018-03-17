
/* *********** This array defines detailed properties of zones ************************** */

// MINE
[
	"tka_mine",	/* Zone Name */
	"EAST",true,	/* Side, isActive */	[],[],
	/* Groups: */
	[
	[/*Group Template #0*/
	/* Groups quantity: */1,
	/*Units*/ [["O_Soldier_F",["indoors"],"kit_tka_random"]]],
	[/*Group Template #1*/
	/* Groups quantity: */2,
	/*Units*/ [["O_Soldier_F",[],"kit_tka_random"],["O_Soldier_F",[],"kit_tka_random"],["O_Soldier_F",[],"kit_tka_random"]]]
	],
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	["LIMITED","SAFE","YELLOW","STAG COLUMN"]
]

// Radar Site
,[
	"tka_radarSite",	/* Zone Name */
	"EAST",true,	/* Side, isActive */	[],[],
	/* Groups: */
	[
	[/*Group Template #0*/
	/* Groups quantity: */2,
	/*Units*/ [["O_Soldier_F",[],"kit_tka_random"],["O_Soldier_F",[],"kit_tka_random"]]]
	],
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	["LIMITED","SAFE","YELLOW","STAG COLUMN"]
]
,[
	"tka_radarSite_patrol",	/* Zone Name */
	"EAST",true,	/* Side, isActive */	[],[],
	/* Groups: */
	[
	[/*Group Template #0*/
	/* Groups quantity: */2,
	/*Units*/ [["O_Soldier_F",[],"kit_tka_random"],["O_Soldier_F",[],"kit_tka_random"],["O_Soldier_F",[],"kit_tka_random"],["O_Soldier_F",[],"kit_tka_random"]]]
	],
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	["LIMITED","SAFE","YELLOW","STAG COLUMN"]
]

// Feruz-Abad Base

,[
	"tka_base",	/* Zone Name */
	"EAST",true,	/* Side, isActive */	[],[],
	/* Groups: */
	[
	[/*Group Template #0*/
	/* Groups quantity: */1,
	/*Units*/ [["O_Soldier_F",["indoors"],"kit_tka_random"],["O_Soldier_F",["indoors"],"kit_tka_random"],["O_Soldier_F",["indoors"],"kit_tka_random"],["O_Soldier_F",["indoors"],"kit_tka_random"]]],
	[/*Group Template #1*/
	/* Groups quantity: */3,
	/*Units*/ [["O_Soldier_F",[],"kit_tka_random"],["O_Soldier_F",[],"kit_tka_random"]]]
	],
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	["LIMITED","SAFE","YELLOW","STAG COLUMN"]
]

// Road Post
, [
	"RoadPost" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			2, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_tka_random"]
				,["O_Soldier_F", [], "kit_tka_random"]
				,["O_Soldier_F", [], "kit_tka_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
