local ReplicatedStorage = game:GetService("ReplicatedStorage")
local att = require(ReplicatedStorage.Shared.templates.types.AttributeTypes)
local wft = require(script.Parent.WeaponFakeDataType)
local FakeData = {}

FakeData.Weapons = {
	[wft.WeaponList["Basic Kanata"]] = {
		hitbox = {
			m1 = Vector3.new(10, 10, 10),
		},
		damage = {
			[att.STR] = 0.90,
			[att.DEX] = 0.45,
		},
	},
}

FakeData.Styles = {
	[wft.StyleList["Asura Katana"]] = {
		skill_combos = {
			ss1 = { "m1", "m1", "m1", "m2" },
			ss2 = { "dash", "m1" },
			ss3 = { "jump", "m1" },
		},
		animations = {
			m1 = "",
			m2 = "",
			m3 = "",
			m4 = "",
			ss1 = "",
			ss2 = "",
			ss3 = "",
			idle_equipped = "",
			idle_unequipped = "",
			equipping = "",
			run = "",
			walk = "",
		},
		data = {
			combo_threshold = 4,
		},
	},
}

export type Weapons = typeof(FakeData.Weapons)
export type Styles = typeof(FakeData.Styles)
return FakeData
