local CooldownModule = {}
CooldownModule.__index = CooldownModule

function CooldownModule.new()
	local self = setmetatable({}, CooldownModule)
	self.Cooldowns = {}
	return self
end

function CooldownModule:init(plr: Player)
	if not self.Cooldowns[plr] then
		self.Cooldowns[plr] = {}
	end
end

function CooldownModule:SetCooldown(plr: Player, name: string, time: number)
	if self.Cooldowns[plr] == nil then
		self.Cooldowns[plr] = {}
	end
	self.Cooldowns[plr][name] = time
end

function CooldownModule:GetCooldown(plr: Player, name: string)
	if self.Cooldowns[plr] == nil then
		warn("Tabela de cooldowns do jogador ainda não foi criada.")
		return
	end

	if not self.Cooldowns[plr][name] then
		return false
	end

	return true
end

--// Update Recebe o parametro DeltaTime //--
function CooldownModule:Update(dTime)
	for _, cdTable in pairs(self.Cooldowns) do
		for name, time in pairs(cdTable) do
			if time - dTime <= 0 then
				cdTable[name] = nil
			else
				cdTable[name] = math.max(0, time - dTime)
			end
		end
	end
end

return CooldownModule
