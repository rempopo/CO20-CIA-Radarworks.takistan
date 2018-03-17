// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


/*
	SECUFORCE
*/
#define SEC_UNI		["TRYK_U_taki_BL","TRYK_U_taki_COY","TRYK_U_taki_wh","TRYK_U_taki_G_BL","TRYK_U_taki_G_BLK","TRYK_U_taki_G_COY","TRYK_U_taki_G_WH"]
#define SEC_HEAD		["H_ShemagOpen_khk","H_ShemagOpen_tan","H_Shemag_olive_hs","H_Watchcap_blk","H_Watchcap_khk","CUP_H_TKI_Lungee_01","CUP_H_TKI_Lungee_06","CUP_H_TKI_Pakol_1_05","CUP_H_TKI_Pakol_2_03"]
#define SEC_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio"
#define SEC_UNI_ITEMS	[["ACE_fieldDressing",6],["ACE_packingBandage",8],["ACE_elasticBandage",7],["ACE_tourniquet",2],["ACE_morphine",1],["ACE_epinephrine",1],["ACE_quikclot",7],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]



kit_sec_sl =
	[
	["<EQUIPEMENT >>  ",SEC_UNI,"TRYK_V_ArmorVest_CBR","tf_rt1523g",SEC_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_grip_KAC","30Rnd_556x45_Stanag",["muzzle_snds_m_snd_F","acc_flashlight","rhsusf_acc_ACOG_RMR","rhsusf_acc_grip1"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ",SEC_ITEMS,"ACE_Vector"],
	["<UNIFORM ITEMS >> ", SEC_UNI_ITEMS, "ace_maptools"],
	["<VEST ITEMS >> ",[["Chemlight_green",1],["Chemlight_red",1],["SmokeShellPurple",1],["SmokeShellGreen",1],["HandGrenade",2],["30Rnd_556x45_Stanag",10],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_sec_tl =
	[
	["<EQUIPEMENT >>  ",SEC_UNI,"TRYK_V_ArmorVest_CBR","B_AssaultPack_rgr",SEC_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_m203s_d","30Rnd_556x45_Stanag",["muzzle_snds_m_snd_F","acc_flashlight","rhsusf_acc_SpecterDR_D",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ",SEC_ITEMS,"ACE_Vector"],
	["<UNIFORM ITEMS >> ",SEC_UNI_ITEMS],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",1],["30Rnd_556x45_Stanag",8],["rhs_mag_M433_HEDP",7]]],
	["<BACKPACK ITEMS >> ",[["ACE_Clacker",1],["rhs_mag_M433_HEDP",4],["30Rnd_556x45_Stanag",2],["UGL_FlareRed_F",2],["1Rnd_SmokeBlue_Grenade_shell",1],["1Rnd_SmokeRed_Grenade_shell",1],["HandGrenade",2],["SmokeShellGreen",1],["SmokeShellPurple",1]]]
];

kit_sec_ar =
	[
	["<EQUIPEMENT >>  ",SEC_UNI,"TRYK_V_ArmorVest_CBR","B_AssaultPack_rgr",SEC_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_Mk48_des","CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",["","acc_flashlight","ACE_optic_Arco_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ",SEC_ITEMS],
	["<UNIFORM ITEMS >> ",SEC_UNI_ITEMS],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["SmokeShellRed",1],["SmokeShellBlue",1],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_sec_gr =
	[
	["<EQUIPEMENT >>  ",SEC_UNI,"TRYK_V_ArmorVest_CBR","B_AssaultPack_rgr",SEC_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_m203s_d","30Rnd_556x45_Stanag",["muzzle_snds_m_snd_F","acc_flashlight","rhsusf_acc_eotech_552_d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ",SEC_ITEMS,"ACE_Vector"],
	["<UNIFORM ITEMS >> ",SEC_UNI_ITEMS],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",1],["30Rnd_556x45_Stanag",8],["rhs_mag_M433_HEDP",7]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_M433_HEDP",4],["30Rnd_556x45_Stanag",2],["UGL_FlareRed_F",2],["1Rnd_SmokeBlue_Grenade_shell",1],["1Rnd_SmokeRed_Grenade_shell",1],["SmokeShellGreen",1],["SmokeShellPurple",1],["DemoCharge_Remote_Mag",2]]]
];

kit_sec_r =
	[
	["<EQUIPEMENT >>  ",SEC_UNI,"TRYK_V_ArmorVest_CBR","B_Kitbag_cbr",SEC_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_grip_KAC","30Rnd_556x45_Stanag",["muzzle_snds_m_snd_F","acc_flashlight","rhsusf_acc_T1_high","rhsusf_acc_grip1"]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136","rhs_m136_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ",SEC_ITEMS],
	["<UNIFORM ITEMS >> ",SEC_UNI_ITEMS],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",1],["SmokeShellRed",1],["SmokeShellBlue",1],["30Rnd_556x45_Stanag",10]]],
	["<BACKPACK ITEMS >> ",[["ACE_Clacker",1],["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2],["DemoCharge_Remote_Mag",2]]]
];


/*
	TKA
*/

kit_tka_random = [
	"kit_tka_r","kit_tka_r","kit_tka_r","kit_tka_r"
	,"kit_tka_rheavy","kit_tka_rheavy","kit_tka_rheavy","kit_tka_rheavy"
	,"kit_tka_gr","kit_tka_gr"
	,"kit_tka_mg"
];

#define TKA_UNI	["CUP_U_O_TK_MixedCamo","CUP_U_O_TK_Green"]
#define TKA_HEAD	["rhs_6b27m_ml","rhs_fieldcap_helm_ml"]

kit_tka_r =
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_plummag","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_elasticBandage",3],["ACE_tourniquet",2],["ACE_packingBandage",3],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["rhs_30Rnd_545x39_AK_no_tracers",8]]],
	["<BACKPACK ITEMS >> ",[]]
];


kit_tka_gr =
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_elasticBandage",3],["ACE_tourniquet",2],["ACE_packingBandage",3],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",8],["rhs_VOG25",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_tka_rheavy =
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["","rhs_acc_2dpZenit","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_elasticBandage",3],["ACE_tourniquet",2],["ACE_packingBandage",3],["ACE_EarPlugs",1],["PRIMARY MAG",1]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["rhs_VOG25",10],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_tka_mg =
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","CUP_B_AlicePack_Khaki",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_elasticBandage",3],["ACE_tourniquet",2],["ACE_packingBandage",3],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["rhs_VOG25",10],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_tka_crew =
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_CrewBelt","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_plummag_folded","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_elasticBandage",3],["ACE_tourniquet",2],["ACE_packingBandage",3],["ACE_EarPlugs",1],["PRIMARY MAG",1]]],
	["<VEST ITEMS >> ",[["rhs_VOG25",10],["rhs_mag_rdg2_black",1],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];