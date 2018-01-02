if (isDedicated) exitWith {};


_units = 
[
	[
		"NK Infantry",
		"inf", "opf_f", east,
		[
			[
				"NK Rifleman",
				["rif"]
			],
		
			[
				"NK AR Team",
				["ar", "rif", "rif"]
			],
		
			[
				"NK Squad 6x",
				["sl", "ar", "rif", "rif", "rif", "rif"]
			]
		]
	]
];

bub_zeus_unitsStructure = _units;