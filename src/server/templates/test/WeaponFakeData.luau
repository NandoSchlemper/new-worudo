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
		animations = {
			m1 = "",
			m2 = "",
			m3 = "",
			m4 = "",
			idle_equipped = "",
			idle_unequipped = "",
			equipping = "",
			run = "",
			walk = "",
		},
	},
}

return FakeData
