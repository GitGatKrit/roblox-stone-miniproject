-- Make stones in this random area
local x = 200
local z = 200
function spawnStones(name)
	local stone = game.ServerStorage.Stone:Clone()
	stone.Parent = workspace.StoneFolder
	stone.Name = tostring(name)
	local x1 = math.random(1,x)
	local z1 = math.random(1,z)
	stone.Position = Vector3.new(x1,2,z1)
end
function clearEverything()
	print(#workspace.StoneFolder:GetChildren())
	if #workspace.StoneFolder:GetChildren() >= 30 then
		for _, stone in pairs(workspace.StoneFolder:GetChildren()) do
			stone:Destroy()
		end
	end
end
function main()
	for i = 1, 8 do
		task.wait(5)
		spawnStones("Stone"..i)
		workspace.Dissapear:Play()
	end
end

while true do
	main()
	clearEverything()
end
