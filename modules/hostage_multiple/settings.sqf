// This module allows you to easily manage hostages, all you need is a unit and a marker.
//
// Usage:
// 1) Create a RmE marker that will represent the rescue zones for the hostage.
// 2) Create the hostage unit and give it a name (used for the end conditions).
// 3) In the init field add this line: [this, ["RescueMarkerName", "RescueMarkerName2"]] call FNC_SetHostageMultiple;
// 4) To check if the hostage has been rescued in the end conditions use this line: hostage call FNC_IsRescued

//
//Example:
//
// private _hostageStatus = hostageAI call FNC_IsRescuedMultiple;
// _hostageStatus params ["_hostageRescued", "_hostageLocation"];

// if (_hostageLocation isEqualTo "myRescueMarker") then {
//         ...
// }
 
