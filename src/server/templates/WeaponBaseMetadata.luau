local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ws = require(ReplicatedStorage.Shared.templates.types.WeaponStatusType)
local wt = require(ReplicatedStorage.Shared.templates.types.WeaponType)

local DefaultValue = {
	[ws.Name] = nil, -- vou usar o nome ou o ID pra achar os model
	[ws.GearScore] = nil,
	[ws.MaxGearScore] = nil,
	[ws.MinGearScore] = nil,
	[ws.ThrustDamage] = nil,
	[ws.ComboThreshold] = nil,
}

-- Base stats for each weapon
local WeaponMetadata = {
	[wt.SWORD] = {
		data = DefaultValue,
		[ws.BaseDamage] = 8,
		[ws.CriticalHitChance] = 0.08,
		[ws.CriticalHitDamage] = 1.30,
	},
	[wt.BOW] = {
		data = DefaultValue,
		[ws.BaseDamage] = 8,
		[ws.CriticalHitChance] = 0.10,
		[ws.CriticalHitDamage] = 1.20,
	},
	[wt.GREATSWORD] = {
		data = DefaultValue,
		[ws.BaseDamage] = 12,
		[ws.CriticalHitChance] = 0.08,
		[ws.CriticalHitDamage] = 1.30,
	},
	[wt.SPEAR] = {
		data = DefaultValue,
		[ws.BaseDamage] = 12,
		[ws.CriticalHitChance] = 0.12,
		[ws.CriticalHitDamage] = 1.10,
	},
	[wt.STAFF] = {
		data = DefaultValue,
		[ws.BaseDamage] = 10,
		[ws.CriticalHitChance] = 0.08,
		[ws.CriticalHitDamage] = 1.30,
	},
	[wt.WAND] = {
		data = DefaultValue,
		[ws.BaseDamage] = 8,
		[ws.CriticalHitChance] = 0.08,
		[ws.CriticalHitDamage] = 1.30,
	},
}

return WeaponMetadata
