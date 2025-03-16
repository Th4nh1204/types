local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ZeeZee2Real/shlexware-Orion-main-source/refs/heads/main/gr')))()
local Window = OrionLib:MakeWindow({Name = "TOI CUT TAY BAN CUNG THE", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Main:AddToggle({
	Name = "Walk Speed",
	Default = false,
	Callback = function(Value)
        getgenv().speed = Value
        if getgenv().speed == true then
            while wait(0.1) do
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
            end
	end
end 
})

Main:AddToggle({
    Name = "Infinite Jump",
    Default = false,
    Callback = function(value)
    getgenv().infjump = value
    game:GetService("UserInputService").JumpRequest:connect(function()
    if getgenv().infjump then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
    end)
end})

Main:AddLabel("FlySpeed (Press F1)")
_G.flyspeed = 200
_G.on = false
        
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        
        local root = game.Players.LocalPlayer.Character.PrimaryPart
        
        UserInputService.InputBegan:Connect(function(inputObject, processed)
            if inputObject.KeyCode == Enum.KeyCode.F1 then
                _G.on = not _G.on
            end
        end)
        
        RunService.RenderStepped:Connect(function()
            if _G.on then
                root.Velocity = root.CFrame.LookVector * _G.flyspeed
            end
        end)
