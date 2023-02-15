Config = {}

Config.UseTarget = false -- Set to false if you want to use 3DText instead of QBTarget

Config.Blips = true -- Enable blips on the map
Config.BlipName = "Warehouse Logistics"
Config.UniqueNames = true -- Enable unique names for each warehouse
Config.RequiresJob = false -- Enable if you want to require a job to an order
Config.Job = 'logistics' -- Job name
Config.PalletModel = `prop_boxpile_06a` -- Pallet model
Config.PalletMarkers = { -- Pallet markers | https://docs.fivem.net/docs/game-references/markers/ | Set to false to disable markers
	type = 0,
	color = {r = 240, g = 160, b = 1, a = 255},
	scale = {x = 1.0, y = 1.0, z = 1.0}
}

Config.PayScales = {
	min = 50, -- Minimum payout
	max = 100, -- Maximum payout
	bonus = 150, -- Bonus payout if the pallet is below 500 health but higher than 250
	bonus2 = 200, -- Bonus payout if the pallet is below 750 health but higher than 500
	bonus3 = 250, -- Bonus payout if the pallet is below 1000 health but higher than 750
	fromSociety = false -- Enable if you want to pay from the job's bank account
}

Config.Locations = {
	[1] = {
		['Start'] = {
			ped = `s_m_y_airworker`,
			coords = vector3(153.81, -3214.6, 4.93), -- Where the player can take orders vector4(153.81, -3214.6, 5.93, 87.71)
			heading = 87.71,
			scenario = 'WORLD_HUMAN_CLIPBOARD'
		},
		['Blips'] = { -- Will use these settings for each blip if Config.UniqueNames is false, just not the label
			sprite = 525,
			color = 28,
			scale = 0.6,
			display = 4,
			label = 'Walker Logistics'
		},
		['Garage'] = { -- Garage settings
			model = `forklift`,
			ped = `s_m_y_dockwork_01`,
			coords = vector3(120.89, -3184.05, 4.99), 
			heading = 265.37,
			scenario = 'WORLD_HUMAN_AA_COFFEE',
			['Spawn'] = {
				coords = vector3(128.15, -3183.94, 5.87),
				heading = 269.27

			}
		},
		['Pickup'] = { -- Pickup settings ~~ I wouldn't change the vehicle as the function for finding the back is only setup for the benson ~~
			model = `benson`,
			ped = `s_m_m_security_01`,
			['Spawn'] = {
				coords = vector3(305.12, -2831.82, 6.0),
				heading = 91.27
			},
			['Delivery'] = {
				coords = vector3(159.18, -3196.7, 6.01), -- vector3(239.94, -3055.34, 5.86),
				heading = 90.43 -- 81.6,
			},
		},
		['Pallets'] = { -- Pallet locations
			[1] = vector3(160.38, -3141.0, 5.99),
			[2] = vector3(160.65, -3153.77, 5.98),
			[3] = vector3(160.43, -3165.1, 5.99),
			[4] = vector3(162.71, -3211.25, 5.95),
			[5] = vector3(142.92, -3210.27, 5.86),
			[6] = vector3(133.71, -3210.35, 5.86),
			[7] = vector3(117.83, -3217.85, 6.02),
			[8] = vector3(114.89, -3190.58, 6.01)
		},
		inUse = false, -- DO NOT TOUCH
		user = nil -- DO NOT TOUCH
	},
	[2] = {
		['Start'] = {
			ped = `s_m_y_airworker`,
			coords = vector3(17.89, -2665.12, 5.01), -- Where the player can take orders
			heading = 93.33,
			scenario = 'WORLD_HUMAN_CLIPBOARD'
		},
		['Blips'] = { -- Will use these settings for each blip if Config.UniqueNames is false, just not the label
			sprite = 525,
			color = 28,
			scale = 0.6,
			display = 4,
			label = 'Pacific Shipyard'
		},
		['Garage'] = { -- Garage settings
			model = `forklift`,
			ped = `s_m_y_dockwork_01`,
			coords = vector3(27.8, -2654.15, 5.01),
			heading = 12.7,
			scenario = 'WORLD_HUMAN_AA_COFFEE',
			['Spawn'] = {
				coords = vector3(21.01, -2650.14, 6.01),
				heading = 4.0
			}
		},
		['Pickup'] = { -- Pickup settings ~~ I wouldn't change the vehicle as the function for finding the back is only setup for the benson ~~
			coords = vector3(-197.98, -2598.65, 6.0), -- vector3(-197.98, -2598.65, 6.0),
			heading = 176.56, -- 176.56,
			model = `benson`,
			ped = `s_m_m_security_01`,
			['Spawn'] = {
				coords = vector3(-197.98, -2598.65, 6.0), -- vector3(-197.98, -2598.65, 6.0),
				heading = 176.56 -- 176.56,
			},
			['Delivery'] = {
				coords = vector3(-15.979, -2639.408, 6.007), -- vector4(37.23, -2643.52, 6.02, 90.66)
				heading = 184.918,
			}
		},
		['Pallets'] = { -- Pallet locations
			[1] = vector3(-179.08, -2643.96, 6.02),
			[2] = vector3(-129.5, -2668.91, 6.0),
			[3] = vector3(-128.16, -2705.70, 6.01),
			[4] = vector3(-127.63, -2699.01, 6.01),
			[5] = vector3(-105.28, -2684.25, 6.00),
			[6] = vector3(-100.63, -2647.36, 6.02),
			[7] = vector3(38.79, -2678.8, 6.01),
			[8] = vector3(-83.72, -2655.93, 6.0)
		},
		inUse = false, -- DO NOT TOUCH
		user = nil -- DO NOT TOUCH
	},
	[3] = {
		['Start'] = {
			ped = `s_m_y_airworker`,
			coords = vector3(1207.06, -3293.84, 4.0), -- Where the player can take orders
			heading = 273.35,
			scenario = 'PROP_HUMAN_SEAT_COMPUTER',
			chair = -470815620
		},
		['Blips'] = { -- Will use these settings for each blip if Config.UniqueNames is false, just not the label
			sprite = 525,
			color = 28,
			scale = 0.6,
			display = 4,
			label = 'PostOp Warehouse'
		},
		['Garage'] = { -- Garage settings
			model = `forklift`,
			ped = `s_m_m_dockwork_01`,
			coords = vector3(1205.45, -3285.13, 4.5),
			heading = 88.65,
			scenario = 'WORLD_HUMAN_AA_COFFEE',
			['Spawn'] = {
				coords = vector3(1202.16, -3287.55, 5.5),
				heading = 90.0
			}
		},
		['Pickup'] = { -- Pickup settings ~~ I wouldn't change the vehicle as the function for finding the back is only setup for the benson ~~
			model = `benson`,
			ped = `s_m_m_security_01`,
			['Spawn'] = {
				coords = vector3(1113.12, -3334.41, 4.92),
				heading = 266.6
			},
			['Delivery'] = {
				coords = vector3(1229.2, -3222.6, 5.8),
				heading = 269.37
			}
		},
		['Pallets'] = { -- Pallet locations
			[1] = vector3(1190.23, -3306.25, 5.5),
			[2] = vector3(1199.31, -3308.33, 5.5),
			[3] = vector3(1232.87, -3294.65, 5.5),
			[4] = vector3(1191.27, -3274.08, 5.5),
			[5] = vector3(1223.9, -3246.72, 5.5)
		},
		inUse = false, -- DO NOT TOUCH
		user = nil -- DO NOT TOUCH
	}
}