globals
//globals from ListModule:
constant boolean LIBRARY_ListModule=true
//endglobals from ListModule
//globals from TerrainGlobals:
constant boolean LIBRARY_TerrainGlobals=true
constant integer PLATFORMING= 'cZc1'
constant integer OPENSPACE= 'cOc1'
constant integer SAFE= 'Alvd' //'Agrd'    
constant integer DEATH= 'Dlav'
    
constant integer GRASS= 'cLc1'
constant integer D_GRASS= 'Lgrd'
    
constant integer SUPERJUMP= 'Ztil'
constant integer SUPERBOUNCE= 'cLc1'
constant integer SLIPSTREAM= 'Agrd'
constant integer SLOWWEB= 'Avin'
constant real SLOWWEB_FACTOR= .5
    
constant integer FASTMOVE= 'Lgrd'

constant integer OCEAN= 'Glav'
    
    
    //copies from main TerrainGlobals
constant integer VINES= 'Avin'
constant integer FASTICE= 'Idki'
constant integer MEDIUMICE= 'Glav'
constant integer SLOWICE= 'Iice'
//endglobals from TerrainGlobals
    // Generated
trigger gg_trg_KeyAction= null
trigger gg_trg_KeyPressActions= null
trigger gg_trg_PlatformingLibrary= null
trigger gg_trg_Collision_Iteration_Platformer= null
trigger gg_trg_PlatTerrain= null
trigger gg_trg_Game_Loop_Platforming= null
trigger gg_trg_TerrainGlobals_Copy= null
trigger gg_trg_TTypes= null
trigger gg_trg_ListModule= null
trigger gg_trg_Vector= null
trigger gg_trg_PlatformingPhysics= null
trigger gg_trg_SlipStream= null
trigger gg_trg_Platformer= null
trigger gg_trg_PlatformerSlipstream= null
trigger gg_trg_PlatformerOcean= null
trigger gg_trg_PlatformerIce= null
trigger gg_trg_Stack= null
trigger gg_trg_TerrainGlobals= null
trigger gg_trg_Camera= null
trigger gg_trg_test_abyss= null
trigger gg_trg_List= null
trigger gg_trg_InGamePlatformingChanges= null
trigger gg_trg_temp_debug_library= null
trigger gg_trg_TestPlatforming= null
trigger gg_trg_TestTerrainSize= null
trigger gg_trg_fdsafdsa= null


//JASSHelper struct globals:

endglobals


//library ListModule:
//===========================================================================
// Information:
//==============
//
//     This library provides the List module, which allows you to easily create
// a linked list of all of the allocated instances of a struct-type. Iterating
// through a linked list is about 12% faster than iteratating through an array
// in JASS. There is no faster method to iterate through a list of structs than
// the method used by this module. Aside from the marginal speed gain, the best
// use of this library is to hide some ugly low-level code from your structs.
// Rather than manually building and maintaining a list of struct instances,
// just implement the List module, and your code will become much prettier.
//
//===========================================================================
// How to use the List module:
//=============================
//
//     Using the List module is pretty simple. First, implement it in your
// struct (preferably at the top to avoid unnecessary TriggerEvaluate calls).
// In the struct's create method, you must call listAdd(). In the onDestroy
// method, you must also call listRemove(). An example is shown below:


//     The requirement to call listAdd() and listRemove() will be done away
// with once JassHelper supports module onDestroy and module onCreate, but
// for now, it is not too much of a burden.
//
//     Once this is done, your struct will gain all of the methods detailed
// in the API section. Below is an example of how to iterate through the list
// of allocated structs of the implementing struct-type:

//
//===========================================================================
// List module API:
//==================
//
// (readonly)(static) first -> thistype
//   This member contains the first instance of thistype in the list.
//
// (readonly)(static) last -> thistype
//   This member contains the last instance of thistype in the list.
//
// (readonly)(static) count -> integer
//   This member contains the number of allocated structs of thistype.
//
// (readonly) next -> thistype
//   This member contains the next instance of thistype in the list.
//
// (readonly) prev -> thistype
//   This member contains the previous instance of thistype in the list.
//
// listAdd()
//   This method adds this instance to the list of structs of thistype.
//   This should be called on each instance after it is allocated (within
//   the create method).
//
// listRemove()
//   This method removes this instance from the list of structs of thistype.
//   This should be called on each instance before it is destroyed (within
//   the onDestroy method).
//
// (static) listDestroy()
//   This method destroys all the structs of thistype within the list.
//
//===========================================================================



//library ListModule ends
//library TerrainGlobals:

//library TerrainGlobals ends
//===========================================================================
// 
// Just another Warcraft III map
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Fri May 06 18:38:46 2016
//   Map Author: Unknown
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer7 takes nothing returns nothing
    local player p= Player(7)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'e001', - 1031.5, - 243.1, 140.563)
    set u=CreateUnit(p, 'e000', - 915.1, - 233.8, 270.217)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer7()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings()
    call CreateUnitsForPlayer7() // INLINED!!
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: ListModule
//===========================================================================
//TESH.scrollpos=119
//TESH.alwaysfold=0
//===========================================================================
// Trigger: TerrainGlobals
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0

//===========================================================================
// Trigger: Camera
//===========================================================================
function Trig_Camera_Actions takes nothing returns nothing
    call CreateFogModifierRectBJ(true, Player(0), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
endfunction

//===========================================================================
function InitTrig_Camera takes nothing returns nothing
    set gg_trg_Camera=CreateTrigger()
    call TriggerAddAction(gg_trg_Camera, function Trig_Camera_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_ListModule()
    //Function not found: call InitTrig_TerrainGlobals()
    call InitTrig_Camera()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Camera)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(1), true)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(2), true)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)

    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(3), true)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)

    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(4), true)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)

    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(5), true)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)

    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(6), true)
    call SetPlayerController(Player(6), MAP_CONTROL_USER)

    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(7), true)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerTeam(Player(5), 0)
    call SetPlayerTeam(Player(6), 0)
    call SetPlayerTeam(Player(7), 0)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(0, 1)
    call SetStartLocPrio(0, 0, 6, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(1, 3)
    call SetStartLocPrio(1, 0, 2, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(1, 1, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 2, 7, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(2, 1)
    call SetStartLocPrio(2, 0, 5, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(3, 2)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(3, 1, 6, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(4, 3)
    call SetStartLocPrio(4, 0, 2, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(4, 1, 5, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(4, 2, 7, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(5, 2)
    call SetStartLocPrio(5, 0, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 1, 7, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(6, 2)
    call SetStartLocPrio(6, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 1, 3, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(7, 2)
    call SetStartLocPrio(7, 0, 4, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(7, 1, 5, MAP_LOC_PRIO_HIGH)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCDungeon\\DNCDungeonTerrain\\DNCDungeonTerrain.mdl", "Environment\\DNC\\DNCDungeon\\DNCDungeonUnit\\DNCDungeonUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("DungeonDay")
    call SetAmbientNightSound("DungeonNight")
    call SetMapMusic("Music", true, 0)
    call CreateAllUnits()
    call InitBlizzard()


    call InitGlobals()
    call InitTrig_Camera() // INLINED!!
    call ConditionalTriggerExecute(gg_trg_Camera) // INLINED!!

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("Just another Warcraft III map")
    call SetMapDescription("Nondescript")
    call SetPlayers(8)
    call SetTeams(8)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0, - 1792.0, - 128.0)
    call DefineStartLocation(1, 1792.0, 768.0)
    call DefineStartLocation(2, - 128.0, - 704.0)
    call DefineStartLocation(3, - 2112.0, - 1920.0)
    call DefineStartLocation(4, 1152.0, - 3136.0)
    call DefineStartLocation(5, 960.0, - 768.0)
    call DefineStartLocation(6, - 2688.0, - 768.0)
    call DefineStartLocation(7, 2176.0, - 1536.0)

    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(1), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(2), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(3), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(4), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(5), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(6), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(7), MAP_CONTROL_USER)
    call InitGenericPlayerSlots()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:
