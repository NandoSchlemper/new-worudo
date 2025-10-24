local WeaponManager = {}
WeaponManager.__index = WeaponManager

function WeaponManager.new()
	local self = setmetatable({}, WeaponManager)
	return self
end

return WeaponManager
