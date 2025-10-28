local AnimationModule = {}
AnimationModule.__index = AnimationModule

function AnimationModule.new()
	local self = setmetatable({}, AnimationModule)
	self.Animations = {}
	return self
end

function AnimationModule:Load() end

return AnimationModule
