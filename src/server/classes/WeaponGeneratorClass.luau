local WeaponGeneratorClass = {}
WeaponGeneratorClass.__index = WeaponGeneratorClass

function WeaponGeneratorClass.new(plrData, location)
	local self = setmetatable({}, WeaponGeneratorClass)
	return self
end

return WeaponGeneratorClass
