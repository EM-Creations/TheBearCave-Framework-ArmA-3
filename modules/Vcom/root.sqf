// Vcom module root file
// Author: StatusRed (EM-Creations.co.uk)

#ifdef framework
	["Vcom AI", "3.3.3", "AI Modification: Faster, Smarter, and Deadlier AI.", "genesis92x, StatusRed (Module)"] call FNC_RegisterModule;
	[] execVM "modules\vcom\VcomInit.sqf";
#endif

#ifdef preinit
	VCM_CBASettings = call compile preprocessFileLineNumbers "modules\vcom\Functions\VCM_CBASettings.sqf";
#endif

#ifdef description_functions
  #include "cfgFunctions.hpp"
#endif
