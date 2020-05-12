// Description file
// Used to define attributes for the mission
// See: https://community.bistudio.com/wiki/Description.ext

#ifdef description

	#include "dia\rscdefinitions.hpp" //Must have for the end screen to work, if removed Arma 3 will crash on mission load

	// DO NOT CHANGE, spectator script needs people to respawn, to be declared as dead and put into spectator mode
	// See: https://community.bistudio.com/wiki/Description.ext#respawn
	respawn = "BASE";

	// 5 seconds are needed to make sure people properly die and go into spectator
	// See: https://community.bistudio.com/wiki/Description.ext#respawnDelay
	respawnDelay = 5;

	// disabledAI does so not slotted units do not spawn as ai
	// See: https://community.bistudio.com/wiki/Description.ext#disabledAI
	disabledAI = 1;

	// Disables the respawn button
	// See: https://community.bistudio.com/wiki/Description.ext#respawnButton
	respawnButton = 1;

	// Disables the score screen while respawning
	// See: https://community.bistudio.com/wiki/Description.ext#respawnDialog
	respawnDialog = 0;

	// Disables respawn countdown
	// See: https://community.bistudio.com/wiki/Description.ext#respawnTemplates
	respawnTemplates[] = {"Base"};

	// Only for logged-in admins
	// See: https://community.bistudio.com/wiki/Description.ext#enableDebugConsole
	enableDebugConsole = 1;

	// Sets the mode for corpse removal manager. 1 = All units are managed by the manager
	// See: https://community.bistudio.com/wiki/Description.ext#corpseManagerMode
	corpseManagerMode = 1;

	// Enable CBA Target Debugging
	// See: https://github.com/CBATeam/CBA_A3/wiki/Target-Debugging
	enableTargetDebug = 1;

	class Extended_PreInit_EventHandlers {
		class Mission {
			init = "'' call compile preprocessFileLineNumbers 'preinit.sqf'; FNC_GearScript = compile preprocessFileLineNumbers 'customisation\gear.sqf'; FNC_VehicleGearScript = compile preprocessFileLineNumbers 'customisation\vehGear.sqf';"; //Compiles the gear script for the server and client

		};

	};

	class CfgDebriefingSections {
		class acex_killTracker {
			title = "Acex Killed Events";
			variable = "acex_killTracker_outputText";
		};

	};

#endif

#ifdef description_titles
	#include "dia\debug\dia_debug.hpp" //Must have for the end screen to work, if removed Arma 3 will crash on mission load
	#include "dia\endscreen\dia_endscreen.hpp" //Must have for the end screen to work, if removed Arma 3 will crash on mission load

#endif

#ifdef description_params
	// Do nothing.

#endif
