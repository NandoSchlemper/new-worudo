local ReplicatedStorage = game:GetService("ReplicatedStorage")
local type = require(ReplicatedStorage.Shared.templates.types.WeaponTypeTemplateExample)

local ModifiersTemplateExample = {
	[type.SWORD] = {
		BaseDamage = 10,
		CriticalHitChance = 0.08,
		CriticalHitDamage = 1.30,
	},
}

return ModifiersTemplateExample
