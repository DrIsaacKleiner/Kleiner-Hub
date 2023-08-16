if game.PlaceId ~= 2753915549 then return end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Kleiner Hub - Blox Fruit V1.1", "Sentinel")

local BloxFruitLocations = {
    ["Blox Fruit Dealer"] = CFrame.new(-2708.57739, 23.2188244, 2105.34814),
    ["Sword Dealer"] = CFrame.new(-2538.47656, 5.28000069, 2026.87744),
    ["Marine Boat Dealer"] = CFrame.new(-2478.57764, 3.55113912, 2003.34851),
    ["Pirate Recruiter"] = CFrame.new(-2572.78687, 5.55691004, 2169.45557),
    ["Marine Leader"] = CFrame.new(-2708.57739, 23.2188244, 2105.34814),
    ["Marine Boat Dealer"] = CFrame.new(-2470.57764, 3.55113912, 2061.34863),
    ["Advance Marines Boat Dealer"] = CFrame.new(-2504.02075, 3.55113912, 1869.35632),
    ["Luxury Boat Dealer"] = CFrame.new(-2549.1001, 3.55113411, 1839.95825)
}

local Teleports = Window:NewTab("Teleports")
for locationName, locationCFrame in pairs(BloxFruitLocations) do
    Teleports:NewButton(locationName, "", function()
        local lp = game.Players.LocalPlayer
        local hrp = lp.Character and lp.Character:FindFirstChild('HumanoidRootPart')
        if hrp then
            hrp.CFrame = locationCFrame
        end
    end)
end

local PlayerSection = Window:NewTab("Player")

PlayerSection:NewTextBox("Walkspeed", "", function(txt)
    local walkspeed = tonumber(txt)
    if walkspeed then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
    end
end)

PlayerSection:NewTextBox("JumpPower", "", function(txt)
    local jumpPower = tonumber(txt)
    if jumpPower then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumpPower
    end
end)

local godModeEnabled = false
PlayerSection:NewButton("Toggle God Mode", "", function()
    godModeEnabled = not godModeEnabled
    local lp = game.Players.LocalPlayer
    local humanoid = lp.Character and lp.Character:FindFirstChild('Humanoid')
    if godModeEnabled and humanoid then
        humanoid.MaxHealth = math.huge
    elseif not godModeEnabled and humanoid then
        humanoid.MaxHealth = 100
    end
end)

local regenRate = 0
PlayerSection:NewSlider("Health Regen Rate", "", 0, 100, 10, function(val)
    regenRate = val
end)

game:GetService("RunService").Heartbeat:Connect(function()
    local lp = game.Players.LocalPlayer
    local humanoid = lp.Character and lp.Character:FindFirstChild('Humanoid')
    if humanoid and humanoid.Health + regenRate <= humanoid.MaxHealth then
        humanoid.Health = humanoid.Health + regenRate
    end
end)

local MiscSection = Window:NewTab("Misc")

MiscSection:NewButton("Noclip", "", function()
    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Name = "1"
    local l = game.Players.LocalPlayer.Character["1"]:Clone()
    l.Parent = game.Players.LocalPlayer.Character
    l.Name = "Humanoid"
    wait(0.1)
    game.Players.LocalPlayer.Character["1"]:Destroy()
end)

MiscSection:NewButton("Reset Character", "", function()
    game.Players.LocalPlayer:LoadCharacter()
end)

local ObjectSection = Window:NewTab("Objects")
ObjectSection:NewButton("Destroy Nearest Object", "", function()
    local lp = game.Players.LocalPlayer
    local closestDistance = math.huge
    local closestObject = nil
    
    for _, obj in pairs(workspace:FindChildren()) do
        if obj:IsA("BasePart") and (obj.Position - lp.Character.PrimaryPart.Position).Magnitude < closestDistance then
            closestDistance = (obj.Position - lp.Character.PrimaryPart.Position).Magnitude
            closestObject = obj
        end
    end

    if closestObject then
        closestObject:Destroy()
    end
end)


-- Texting Simulator
if game.PlaceId == 2580982329 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Kleiner Hub - Texting Simulator V1", "Sentinel")

    --> Tabs and Sections <--
    local Inf = Window:NewTab("Information")
    local Section1 = Inf:NewSection("This hub was made by Dr. Isaac Kleiner#8979")
    local Autofarm  = Window:NewTab("Auto Farm")
    local Section2 = Autofarm:NewSection("Kleiner Hub provides intelligent auto farms using")
    local Section2P2 = Autofarm:NewSection("RenderStepped that fires one frame per millisecond.")

    Section2P2:NewToggle("Auto Farm (REJOIN TO STOP AUTOFARM)", "Fires one frame per millisecond", function(state)
        getgenv().Farm = true;
        if getgenv().Farm == true then
            while game:GetService("RunService").RenderStepped:Wait() do
                local A_1 = "Phone"
                local Event = game:GetService("ReplicatedStorage").Events.SendTexts
                Event:FireServer(A_1)
                end
                else
                    getgenv().Farm = false;
        end
        end)
    end
    
    local L = Window:NewTab("Locations")
    local L1 = L:NewSection("Locations:")
    L1:NewButton("Spawn", "Teleports you to Spawn.", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.731903, 8.89999866, 897.7052, -0.0790341124, -1.10327329e-08, -0.996871889, 8.6144496e-08, 1, -1.78970705e-08, 0.996871889, -8.72895072e-08, -0.0790341124)
    end)
    
    L1:NewButton("Hacker Room", "Teleports you to Hacker Room for Free.", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-88.0088348, 10.5124035, 1039.32251, -0.42270723, 6.13035667e-08, -0.906266272, 3.98559585e-08, 1, 4.90541971e-08, 0.906266272, -1.5384547e-08, -0.42270723)
    end)
