local plrs = game:GetService("Players")
local weapon = game:GetService("ReplicatedStorage"):WaitForChild("BasicSword")

plrs.PlayerAdded:Connect(function(plr)
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

-- ID m1 = 127187018421888
