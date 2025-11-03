local plrs = game:GetService("Players")
local WeaponModule = require(script.modules.WeaponModule)
local PlayerFakeData = require(script.templates.test.PlayerFakeData)
local weapon = game:GetService("ReplicatedStorage"):WaitForChild("BasicSword")

local em = require(script.utils.EventGather)

local M1CombatEvent = em.waitEvent("M1CombatEvent")

local WeaponClass = WeaponModule.new()

M1CombatEvent.OnServerEvent:Connect(function(plr: Player)
	print(plr.Name .. " utilizou o m1")
	WeaponClass:M1(plr)
end)

plrs.PlayerAdded:Connect(function(plr)
	plr.CharacterAppearanceLoaded:Connect(function(char)
		WeaponClass:init(plr, PlayerFakeData.equippedWeapon, PlayerFakeData.equippedStyle)
		local right_arm = char:FindFirstChild("Right Arm")
		local cloned_weapon = weapon:Clone()

		cloned_weapon.Parent = char
		char:SetAttribute("canAttack", true)

		local handle = cloned_weapon:FindFirstChild("Handle")
		local cframevalue = cloned_weapon:FindFirstChild("Value")

		local motor6d = Instance.new("Motor6D")
		motor6d.Part0 = right_arm
		motor6d.Part1 = handle
		motor6d.C1 = cframevalue.Value
		motor6d.Parent = handle
		WeaponClass:Idle(plr)
	end)
end)

while true do
	local dTime = wait(1)
	WeaponClass.Components.Cooldown:Update(dTime)
end

-- ID m1 = 127187018421888
