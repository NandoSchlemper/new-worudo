local plrs = game:GetService("Players")
local CooldownModule = require(script.modules.CooldownModule)
local HitboxModule = require(script.modules.HitboxModule)
local weapon = game:GetService("ReplicatedStorage"):WaitForChild("BasicSword")

local CooldownClass = CooldownModule.new()
local HitboxClass = HitboxModule.new()

plrs.PlayerAdded:Connect(function(plr)
	CooldownClass:init(plr)
	HitboxClass:init(plr)
	plr.CharacterAppearanceLoaded:Connect(function(char)
		local right_arm = char:FindFirstChild("Right Arm")
		local cloned_weapon = weapon:Clone()

		cloned_weapon.Parent = char

		local handle = cloned_weapon:FindFirstChild("Handle")
		local cframevalue = cloned_weapon:FindFirstChild("Value")

		local motor6d = Instance.new("Motor6D")
		motor6d.Part0 = right_arm
		motor6d.Part1 = handle
		motor6d.C1 = cframevalue.Value
		motor6d.Parent = handle
	end)
end)

while true do
	local dTime = wait(1)
	CooldownClass:Update(dTime)
end

-- ID m1 = 127187018421888
