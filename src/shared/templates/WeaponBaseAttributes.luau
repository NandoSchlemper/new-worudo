local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ws = require(ReplicatedStorage.Shared.templates.types.WeaponStatusType)
local wt = require(ReplicatedStorage.Shared.templates.types.WeaponType)

-- Base stats for each weapon
local ModifiersTemplateExample = {
	[wt.SWORD] = {
		[ws.BaseDamage] = 8,
		[ws.CriticalHitChance] = 0.08,
		[ws.CriticalHitDamage] = 1.30,
	},
	[wt.BOW] = {
		[ws.BaseDamage] = 8,
		[ws.CriticalHitChance] = 0.10,
		[ws.CriticalHitDamage] = 1.20,
	},
	[wt.GREATSWORD] = {
		[ws.BaseDamage] = 12,
		[ws.CriticalHitChance] = 0.08,
		[ws.CriticalHitDamage] = 1.30,
	},
	[wt.SPEAR] = {
		[ws.BaseDamage] = 12,
		[ws.CriticalHitChance] = 0.12,
		[ws.CriticalHitDamage] = 1.10,
	},
	[wt.STAFF] = {
		[ws.BaseDamage] = 10,
		[ws.CriticalHitChance] = 0.08,
		[ws.CriticalHitDamage] = 1.30,
	},
	[wt.WAND] = {
		[ws.BaseDamage] = 8,
		[ws.CriticalHitChance] = 0.08,
		[ws.CriticalHitDamage] = 1.30,
	},
}

return ModifiersTemplateExample
