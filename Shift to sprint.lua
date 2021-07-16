--Put this in starter Charater scripts

local function run(isDown)
	if isDown then
		script.Parent.Humanoid.WalkSpeed = 80 -- Change to your sprint speed
	else
		script.Parent.Humanoid.WalkSpeed = 16 -- Change to your walk speed
	end
end

game:GetService("UserInputService").InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.LeftShift then
		run(true)
	end
end)

game:GetService("UserInputService").InputEnded:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.LeftShift then
		run(false)
	end
end)
