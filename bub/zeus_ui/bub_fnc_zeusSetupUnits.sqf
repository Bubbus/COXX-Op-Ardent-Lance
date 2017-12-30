if (isDedicated) exitWith {};


_units = 
[
	[
		"NK Infantry",
		"inf", "blu_f", west,
		[
			[
				"NK Rifleman",
				["nk-rif"]
			],
		
			[
				"NK AR Team",
				["nk-ar", "nk-rif", "nk-rif"]
			],
		
			[
				"NK Squad 6x",
				["nk-ar", "nk-rif", "nk-rif", "nk-rif", "nk-rif", "nk-rif"]
			]
		]
	]
];

bub_zeus_unitsStructure = _units;