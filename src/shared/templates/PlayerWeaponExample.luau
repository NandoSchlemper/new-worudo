local ReplicatedStorage = game:GetService("ReplicatedStorage")
local rarity = require(ReplicatedStorage.Shared.templates.types.RarityTemplateExample)
local tier = require(ReplicatedStorage.Shared.templates.types.TierTemplateExample)
local weapon = require(ReplicatedStorage.Shared.templates.types.WeaponTypeTemplateExample)

local PlayerWeaponExample: IPlayerWeaponType = {
	[0] = {
		Name = "Espada de Elfhein",
		Type = weapon.SWORD,
		Rarity = rarity.COMMON,
		Tier = tier.I,
		PlayerPart = "Right Arm",
	},
}

export type IPlayerWeaponType = typeof(PlayerWeaponExample)
return PlayerWeaponExample
