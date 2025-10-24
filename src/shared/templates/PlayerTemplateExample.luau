local ReplicatedStorage = game:GetService("ReplicatedStorage")
local att = require(ReplicatedStorage.Shared.templates.types.AttributesTemplateExample)

local PlayerTemplateExample = {
	Attributes = {
		[att.STR] = 0,
		[att.DEX] = 0,
		[att.INT] = 0,
		[att.WIS] = 0,
		[att.CON] = 0,
	},
	Equipped = 0,
}

return PlayerTemplateExample
