local ReplicatedStorage = game:GetService("ReplicatedStorage"):WaitForChild("Shared")

local EventGather = {}

function EventGather.waitEvent(eventName: string)
	local event: RemoteEvent = ReplicatedStorage:WaitForChild(eventName)
	return event
end

return EventGather
