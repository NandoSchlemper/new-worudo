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

function HitboxModule:GetHitbox(plr: Player, name: string): Vector3 | nil
	if not self.Hitboxes[plr] or not self.Hitboxes[plr][name] then
		return nil
	end
	return self.Hitboxes[plr][name]
end

function HitboxModule:SetHitbox(plr: Player, name: string, vector: Vector3)
	if not self.Hitboxes[plr] then
		return
	end
	self.Hitboxes[plr][name] = vector
end

function HitboxModule:ShowHitbox(plr: Player, name: string)
	local char = plr.Character
	local plrCF = char:GetPivot()
	plrCF = plrCF + Vector3.new(0, 0, 5)
	local hitbox = self:GetHitbox(plr, name)
	if not hitbox then
		warn("Hitbox não encontrada.")
		return
	end
	local part = Instance.new("Part")
	part.Parent = workspace
	part:PivotTo(plrCF)
	part.Size = hitbox
	part.Transparency = 0.7
	part.Color = Color3.new(1, 0, 0)
	part.Material = Enum.Material.Neon
	part.Anchored = true
	part.Massless = true
	part.CanCollide = false
	task.wait(1)
	part:Destroy()
end

return HitboxModule
