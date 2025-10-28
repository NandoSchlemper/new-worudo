local ServerScriptService = game:GetService("ServerScriptService")
local CooldownModule = require(script.Parent.CooldownModule)
local HitboxModule = require(script.Parent.HitboxModule)
local WeaponFakeData = require(ServerScriptService.Server.templates.test.WeaponFakeData)
local WeaponModule = {}
WeaponModule.__index = WeaponModule

function WeaponModule.new()
	local self = setmetatable({}, WeaponModule)
	self.Components = {}
	self.Components.Hitbox = HitboxModule.new()
	self.Components.Cooldown = CooldownModule.new()
	self.Weapons = {}
	return self
end

function WeaponModule:init(plr: Player, weapon: string)
	local wdata = WeaponFakeData.Weapons[weapon]
	if not wdata then
		warn("Sem dados da arma.")
		return
	end

	if not self.Weapons[plr] then
		self.Weapons[plr] = {}
	end

	self.Weapons[plr][weapon] = wdata
	self.Components.Cooldown:init(plr)
	self.Components.Hitbox:init(plr)
	self.Components.Hitbox:SetHitbox(plr, "m1", wdata.hitbox.m1)
end

return WeaponModule
