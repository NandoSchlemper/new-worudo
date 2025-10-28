local ReplicatedStorage = game:GetService("ReplicatedStorage")
local att = require(ReplicatedStorage.Shared.templates.types.AttributeTypes)
local wft = require(script.Parent.WeaponFakeDataType)
local WeaponFakeData = {
	[wft["Basic Kanata"]] = {
		hitbox = {
			m1 = Vector3.new(10, 10, 10),
		},
		damage = {
			[att.STR] = 0.90,
			[att.DEX] = 0.45,
		},
	},
}

return WeaponFakeData
