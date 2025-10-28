local ServerScriptService = game:GetService("ServerScriptService")
local WeaponFakeData = require(ServerScriptService.Server.templates.test.WeaponFakeData)
local WeaponModule = {}
WeaponModule.__index = WeaponModule

function WeaponModule.new()
	local self = setmetatable({}, WeaponModule)
	self.Weapons = {}
	return self
end

function WeaponModule:init(plr: Player, weapon: string)
	if not self.Weapons[plr] then
		self.Weapons[plr] = {}
	end
	self.Weapons[plr][weapon] = WeaponFakeData[weapon]
end

return WeaponModule
