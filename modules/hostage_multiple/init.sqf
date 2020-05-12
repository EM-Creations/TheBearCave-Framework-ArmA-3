["Hostage Multiple", "1.0", "Same thing as the hostage module, but with multiple rescue zones", "Starfox64, Modified by W-Cephei"] call FNC_RegisterModule;

FNC_RescueHostageMultiple = {

	private ["_unit", "_caller"];

	_unit = _this select 0;
	_caller = _this select 1;

	if (_unit getVariable ["FW_Rescued", false]) exitWith {};

	if (animationState _unit find "acts_aidlpsitmstpssurwnondnon" != -1) then {

		_unit removeEventHandler ["AnimDone", _unit getVariable ["FW_EhAnimDone", 0]];
		_unit playMoveNow "Acts_AidlPsitMstpSsurWnonDnon_out";

	};

	[_unit] join group _caller;

};

FNC_IsRescuedMultiple= {

	private ["_unit", "_isRescued", "_rescuedLocation"];

	_unit = _this;

	private _isRescued = _unit getVariable ["FW_Rescued", false];
    private _rescuedLocation = _unit getVariable ["FW_Rescued_Location", "NONE"];

    private _return = [_isRescued, _rescuedLocation];
    _return

};
