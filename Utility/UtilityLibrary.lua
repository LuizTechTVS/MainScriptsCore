local UtilityLibrary = {}

function UtilityLibrary:PlayersCreateHitbox(argstable)
local hitpart = argstable["HitPart"]
local hitsize = argstable["HitSize"]
local trans = argstable["Transparency"]

_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character[hitpart].Size = Vector3.new(hitsize,hitsize,hitsize)
						v.Character[hitpart].Transparency = trans
						v.Character[hitpart].BrickColor = BrickColor.new("Really blue")
						v.Character[hitpart].Material = "Neon"
						v.Character[hitpart].CanCollide = false
					end)
				end
			end
		end
	end)
end
