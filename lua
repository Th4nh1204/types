function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.fromRGB(205, 84, 75)
						else
							name.TextColor3 = Color3.fromRGB(123, 182, 232)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
--noclip
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().noclip then
            for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
                if v:IsA("Humanoid") then
                    v:ChangeState(11) 
                end
            end
        end
    end)
end)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "TOI CUT TAY BAN CUNG THE", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})
--main tab
local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--esp tab
local Tab = Window:MakeTab({
	Name = "Esp",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--players
Tab:AddToggle({
    Name = "ESP Player",
    Default = false,
    Callback = function(espply)
	ESPPlayer = espply
	UpdatePlayerChams()
end
})
spawn(function()
	while task.wait(0.5) do
		if ESPPlayer then
			UpdatePlayerChams()
		end
	end
end)

--fishbone
Tab:AddToggle({
    Name = "ESP Fishbone",
    Default = false,
    Callback = function(FishboneESP)
        if FishboneESP then
            while wait(0.1) do
                local function createBillboard(entity)
                local billboardGui = entity:FindFirstChild("BillboardGui")
                if not billboardGui then
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "BillboardGui"
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Size = UDim2.new(3, 3, 3, 0)
                    billboardGui.StudsOffset = Vector3.new(0, 10, 0)
                    billboardGui.Adornee = entity
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BackgroundColor3 = Color3.new(161, 165, 162) -- Grey color
                    frame.BackgroundTransparency = 0.5
                    frame.BorderSizePixel = 0
                    frame.ClipsDescendants = true
                    frame.Parent = billboardGui
                    local corner = Instance.new("UICorner")
                    corner.CornerRadius = UDim.new(0.5, 0)
                    corner.Parent = frame
                    billboardGui.Parent = entity
                end
                end
                    local entities = game:GetService("Workspace").Entities:GetDescendants()
                    for _, entity in ipairs(entities) do
                        if entity:IsA("Model") then
                            local jackalHair = entity:FindFirstChild("JackalHair")
                            local animateFishbone = entity:FindFirstChild("AnimateFishbone")
                            
                            if jackalHair or animateFishbone then
                                createBillboard(entity)
                    end
                end
            end  
        end
    else
        local workspace = game:GetService("Workspace")
        local entities = workspace.Entities:GetChildren()
        for _, entity in ipairs(entities) do
            local billboardGui = entity:FindFirstChild("BillboardGui")
            if billboardGui then
                billboardGui:Destroy()
            end
        end
    end
end})
--menos
Tab:AddToggle({
    Name = "ESP Menos",
    Default = false,
    Callback = function(MenosESP)
        if MenosESP then
            while task.wait(0.1) do
                local function createBillboard(entity)
                local billboardGui = entity:FindFirstChild("BillboardGui")
                if not billboardGui then
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "BillboardGui"
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Size = UDim2.new(3, 3, 3, 0)
                    billboardGui.StudsOffset = Vector3.new(0, 10, 0)
                    billboardGui.Adornee = entity
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BackgroundColor3 = Color3.new(161, 165, 162) -- Grey color
                    frame.BackgroundTransparency = 0.5
                    frame.BorderSizePixel = 0
                    frame.ClipsDescendants = true
                    frame.Parent = billboardGui
                    local corner = Instance.new("UICorner")
                    corner.CornerRadius = UDim.new(0.5, 0)
                    corner.Parent = frame
                    billboardGui.Parent = entity
                end
            end
                    local entities = game:GetService("Workspace").Entities:GetDescendants()
                    for _, entity in ipairs(entities) do
                        if entity:IsA("Model") then
                            local jackalHair = entity:FindFirstChild("JackalHair")
                            local animateFishbone = entity:FindFirstChild("AnimateMenos")
                            if jackalHair or animateFishbone then
                                createBillboard(entity)
                    end
                end
            end  
        end
    else
        local workspace = game:GetService("Workspace")
        local entities = workspace.Entities:GetChildren()
        for _, entity in ipairs(entities) do
            local billboardGui = entity:FindFirstChild("BillboardGui")
            if billboardGui then
                billboardGui:Destroy()
            end
        end
    end
end})
--adjuchas
Tab:AddToggle({
    Name = "ESP Adjuchas",
    Default = false,
    Callback = function(AdjuchasESP)
        if AdjuchasESP then
            while task.wait(0.1) do
                local function createBillboard(entity)
                local billboardGui = entity:FindFirstChild("BillboardGui")
                if not billboardGui then
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "BillboardGui"
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Size = UDim2.new(3, 3, 3, 0)
                    billboardGui.StudsOffset = Vector3.new(0, 10, 0)
                    billboardGui.Adornee = entity
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BackgroundColor3 = Color3.new(161, 165, 162) -- Grey color
                    frame.BackgroundTransparency = 0.5
                    frame.BorderSizePixel = 0
                    frame.ClipsDescendants = true
                    frame.Parent = billboardGui
                    local corner = Instance.new("UICorner")
                    corner.CornerRadius = UDim.new(0.5, 0)
                    corner.Parent = frame
                    billboardGui.Parent = entity
                end
                end
                    local entities = game:GetService("Workspace").Entities:GetDescendants()
                    for _, entity in ipairs(entities) do
                        if entity:IsA("Model") then
                            local jackalHair = entity:FindFirstChild("JackalHair")
                            local animateFishbone = entity:FindFirstChild("AnimateAdjuchas")
                            
                            if jackalHair or animateFishbone then
                                createBillboard(entity)
                    end
                end
            end  
        end
    else
        local workspace = game:GetService("Workspace")
        local entities = workspace.Entities:GetChildren()
        for _, entity in ipairs(entities) do
            local billboardGui = entity:FindFirstChild("BillboardGui")
            if billboardGui then
                billboardGui:Destroy()
            end
        end
    end
end})
Main:AddSlider({
	Name = "WalkSpeed Value",
	Min = 16,
	Max = 150,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walk Speed",
	Callback = function(spValue)
		speedValue = spValue
	end
})
Main:AddToggle({
    Name = "WalkSpeed",
    Default = false,
    Callback = function(speedFC)
        speed = speedFC
        if speed then
            game.Players.LocalPlayer:Kick("You have been permanently banned from this game.")
        end
    end})
Main:AddLabel("WalkSpeed (Toggle `")
_G.OnFly = false
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local root = game.Players.LocalPlayer.Character.PrimaryPart
        UserInputService.InputBegan:Connect(function(inputObject)
            if inputObject.KeyCode == Enum.KeyCode.Backquote then
                _G.OnFly = not _G.OnFly
            end
        end)
        RunService.RenderStepped:Connect(function()
            if _G.OnFly then
                root.Velocity = root.CFrame.LookVector * 200
            end
        end)
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
getgenv().RedeemCode = true
Misc:AddButton({
	Name = "Redeem Code",
	Callback = function()
if getgenv().RedeemCode then
    while task.wait() do
        local codes = {"eduardobrg", "doomatearoom", "happyeaster", "nuovalovesquincy", "ohwowcool", "delayedwhoops", "bloodedged", "quickshutdown", "woahreal","rankedmidseason","devilgene","badquincy","sundayupdate","awesomesauce","pockettactics.com/type-soul/codes", "nuova10k", "drakos10k"}
        for _, code in ipairs(codes) do
            local args = { [1] = code }
            game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.Codes:InvokeServer(unpack(args))
            end
        end
    end
end})
Misc:AddButton({
	Name = "Equip Rerolls",
	Callback = function()
        local args = { [1] = "One", [2] = "Locked Shikai/Res/Volt Reroll" }
            game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.EquipSkill:FireServer(unpack(args))
            task.wait()
        local args = { [1] = "Two", [2] = "Locked Element Reroll" }
            game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.EquipSkill:FireServer(unpack(args))
            task.wait()
        local args = { [1] = "Three", [2] = "Locked Clan Reroll" }
            game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.EquipSkill:FireServer(unpack(args))
            task.wait()
        local args = { [1] = "Four", [2] = "Locked Weapon Reroll" }
            game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.EquipSkill:FireServer(unpack(args))
  	end})
OrionLib:Init()
