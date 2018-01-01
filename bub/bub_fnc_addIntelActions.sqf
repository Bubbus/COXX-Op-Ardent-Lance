params ["_laptop", "_text", "_scriptPath"];

if (!isServer) exitWith {};

_onLaptopInvestigate = compile format 
[
	'params ["_target", "_caller"];

	[[], "%1"] remoteExec ["execVM", _caller];', 
	
	_scriptPath
];



_onTakeIntel = 
{
	params ["_target", "_caller"];
	
	_canFit = _caller canAddItemToBackpack "ACE_Cellphone";
	
	if (_canFit) then
	{
		_caller addItemToBackpack "ACE_Cellphone";
		deleteVehicle _target;
	}
	else
	{
		["Can't add intel to backpack!"] remoteExec ["hint", _caller];
	};
};



[
	_laptop, 
	
	[
		_text,

		_onLaptopInvestigate,
		nil, 
		6, 
		true, 
		true, 
		"", 
		"true", 
		3
	]
	
] remoteExec ["addAction", 0];


[
	_laptop, 
	
	[
		"Take intel",

		_onTakeIntel,
		nil, 
		5, 
		true, 
		true, 
		"", 
		"true", 
		2
	]
	
] remoteExec ["addAction", 0];