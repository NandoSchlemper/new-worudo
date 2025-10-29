local AnimationModule = {}
AnimationModule.__index = AnimationModule

function AnimationModule.new()
	local self = setmetatable({}, AnimationModule)
	self.Animations = {}
	return self
end

function AnimationModule:init(plr: Player)
	if not self.Animations[plr] then
		self.Animations[plr] = {}
	end
end

return AnimationModule
