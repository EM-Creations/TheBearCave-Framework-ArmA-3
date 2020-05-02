FNC_SetHostageMultiple = {

	private "_unit";

	_unit = _this select 0;
	_showAction = _this select 2;

	if (hasInterface) then {
		_unit addAction ["<t color='#FBB829'>Rescue Hostage</t>",{
			[-2,{_this call FNC_RescueHostageMultiple;},[_this select 0, _this select 1]] call CBA_fnc_globalExecute;
		}, nil, 6, true, true, "", "(_target distance _this) < 2 && !(_target getVariable ['FW_Rescued', false]);"];
	};

	if (!isServer) exitWith {};

	_this spawn {

		private ["_EhAnimDone", "_unit", "_markers", "_break"];

		_unit = _this select 0;
		_markers = _this select 1;

		waitUntil {time > 0.1};

		_unit setBehaviour "CARELESS";
		_unit allowFleeing 0;
		_unit setCaptive true;

		_unit playMoveNow "Acts_AidlPsitMstpSsurWnonDnon04";

		_EhAnimDone = _unit addEventHandler ["AnimDone", {
				private "_unit";
				_unit = _this select 0;

				if (!alive _unit) exitWith {
					_unit removeEventHandler ["AnimDone", _unit getVariable ["FW_EhAnimDone", 0]];
				};

				_unit playMoveNow "Acts_AidlPsitMstpSsurWnonDnon04";
			}
		];

		_unit setVariable ["FW_EhAnimDone", _EhAnimDone];

		_break = false;

		while {true} do {
			{
				if ([_unit, _x] call FNC_InArea) then {
					_unit setVariable ["FW_Rescued", true, true];
					_unit setVariable ["FW_Rescued_Location", _x, true];
					if (vehicle _unit == _unit) then {
						[_unit] joinSilent grpNull;
						_unit disableAI "MOVE";
						sleep 1;
						_unit playMoveNow "AmovPsitMstpSnonWnonDnon_ground";
						_break = true;
					};
				};
			} forEach _markers;
			if (_break) exitWith {};
			sleep 15;
		};

	};

};
