local ServerScriptService = game:GetService("ServerScriptService")
local WeaponFakeData = require(ServerScriptService.Server.templates.test.WeaponFakeData)
local AnimationModule = {}
AnimationModule.__index = AnimationModule

function AnimationModule.new()
	local self = setmetatable({}, AnimationModule)
	self.Animations = {}
	return self
end

function AnimationModule:init(plr: Player)
	if not self.Animations[plr] then
		self.Animations[plr] = {}
		self.Animations[plr]["tracks"] = {}
	end
end

function AnimationModule:Play(plr: Player, animName: string)
	self.Animations[plr]["tracks"][animName]:Play()
end

function AnimationModule:StopAll(plr: Player)
	for _, track: AnimationTrack in pairs(self.Animations[plr]["tracks"]) do
		track:Stop(0.2)
	end
end

function AnimationModule:Stop(plr: Player, animName: string)
	self.Animations[plr]["tracks"][animName]:Stop(0.2)
end

function AnimationModule:LoadAnimations(plr: Player, styleName: string)
	local ani = WeaponFakeData.Styles[styleName].animations
	local _char = plr.Character
	local _hum = _char:FindFirstChild("Humanoid")
	local _animator: Animator = _hum:FindFirstChild("Animator")

	for aniName, ID in pairs(ani) do
		if not self.Animations[plr]["tracks"] then
			local animation = Instance.new("Animation")
			animation.AnimationId = ID

			local track = _animator:LoadAnimation(animation)
			self.Animations[plr]["tracks"][aniName] = track
		end
	end
end

export type IAnimationModule = typeof(AnimationModule)
return AnimationModule
