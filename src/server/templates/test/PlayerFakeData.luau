local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local WeaponFakeDataType = require(ServerScriptService.Server.templates.test.weaponsFakeDataTypes.WeaponFakeDataType)
local at = require(ReplicatedStorage.Shared.templates.types.AttributeTypes)
local PlayerFakeData = {
	level = 1,
	attributes = {
		[at.CON] = 10,
		[at.DEX] = 20,
		[at.INT] = 20,
		[at.STR] = 10,
		[at.WIS] = 20,
	},
	equippedWeapon = WeaponFakeDataType["Basic Kanata"],
}
return PlayerFakeData
