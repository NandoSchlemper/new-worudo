local HitboxModule = {}
HitboxModule.__index = HitboxModule

function HitboxModule.new()
	local self = setmetatable({}, HitboxModule)
	self.Hitboxes = {}
	return self
end

--||I'll make some FAKE player data, just 4 tests ||--
function HitboxModule:init(plr: Player)
	self.Hitboxes[plr] = {}
end

function HitboxModule:GetHitbox(plr: Player, name: string)
	if not self.Hitboxes[plr] or not self.Hitboxes[plr][name] then
		return
	end
	return self.Hitboxes[plr][name]
end

function HitboxModule:SetHitbox(plr: Player, name: string, vector: Vector3)
	if not self.Hitboxes[plr] then
		return
	end
	self.Hitboxes[plr][name] = vector
end

return HitboxModule
