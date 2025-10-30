local ServerScriptService = game:GetService("ServerScriptService")
local wfd = require(ServerScriptService.Server.templates.test.WeaponFakeData)
local ComboModule = {}
ComboModule.__index = ComboModule

function ComboModule.new()
	local self = setmetatable({}, ComboModule)
	self.Combos = {}
	return self
end

function ComboModule:init(plr: Player)
	if not self.Combos[plr] then
		self.Combos[plr] = {}
	end
end

function ComboModule:LoadWeaponInfo(plr: Player, styleName: string)
	local styleData = wfd.Styles[styleName]
	self.Combos[plr]["style"] = {}
	self.Combos[plr]["style"] = styleData.data
	self.Combos[plr]["combo"] = 0
end

--|| MODIFICAR ISSO ||--
-- function ComboModule:GetComboThreshold(plr: Player): number
-- 	if not self.Combos[plr] then
-- 		return 4
-- 	end

-- 	if not self.Combos[plr]["style"] then
-- 		return 4
-- 	end

-- 	return self.Combos[plr]["style"].combo_threshold or 4
-- end
--|| MODIFICAR ISSO ||--

function ComboModule:AddCombo(plr: Player): number
	local comboThreshold = 4
	local actualCombo = self.Combos[plr]["combo"]

	if actualCombo >= comboThreshold then
		self.Combos[plr]["combo"] = 0
		return 1
	end

	if actualCombo < comboThreshold then
		self.Combos[plr]["combo"] = actualCombo + 1
	end
	print("Combo jogador atual: " .. actualCombo + 1)
	return self.Combos[plr]["combo"]
end

return ComboModule
