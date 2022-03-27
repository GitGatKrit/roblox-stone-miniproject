local ClickDetector = script.Parent.ClickDetector
ClickDetector.MouseClick:Connect(function(plr)
	local percent = script.Parent.Value.Value / 100
	script.Parent.BillboardGui.Base.Health.Size -= UDim2.new(0,25,0,0)
	local endSize = UDim2.new(0,0,0,200)
	script.Parent.BreakSFX:Play()
	if script.Parent.BillboardGui.Base.Health.Size == endSize then
		plr.leaderstats["Stones mined"].Value += 1
		script.Parent.Dissapear:Play()
		script.Parent:Destroy()
	end
end)
