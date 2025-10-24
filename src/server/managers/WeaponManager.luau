local RS = game:GetService("ReplicatedStorage")
local PWE = require(RS.Shared.templates.PlayerWeaponExample)

local WeaponManager = {}
WeaponManager.__index = WeaponManager

function WeaponManager.new(WeaponData: PWE.IPlayerWeaponType)
	local self = setmetatable({}, WeaponManager)
	self.Data = WeaponData
	return self
end

return WeaponManager
