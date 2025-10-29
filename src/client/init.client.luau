local UserInputService = game:GetService("UserInputService")
local M1CombatEvent: RemoteEvent = game.ReplicatedStorage.Shared.events.M1CombatEvent

local rclick = Enum.UserInputType.MouseButton1

local debounce = 1
local canAttack = true

UserInputService.InputBegan:Connect(function(input, process)
	if process then
		return
	end

	if input.UserInputType == rclick and canAttack then
		print("M1 pressionado")
		M1CombatEvent:FireServer()
		canAttack = false
		wait(debounce)
		canAttack = true
	end
end)
