-- Leaderstats
local function onPlayerJoined(plr)
	local leaderstats = Instance.new("Folder", plr)
	leaderstats.Name = "leaderstats"
	local stones = Instance.new("IntValue", leaderstats)
	stones.Name = "Stones mined"
	stones.Value = 0
end

game.Players.PlayerAdded:Connect(onPlayerJoined)
