params ["_intel", "_markers"];

if (!isServer) exitWith {};

_intel setVariable ["markersArray", _markers];

{
	_x setMarkerAlpha 0;
} forEach _markers;

_onIntelDeleted = 
{
	params ["_intel"];
	
	_markers = _intel getVariable ["markersArray", []];
	
	{
		_x setMarkerAlpha 1;
	} forEach _markers;
};

_intel addEventHandler ["Deleted", _onIntelDeleted];