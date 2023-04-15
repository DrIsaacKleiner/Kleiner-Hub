-- Blox Fruit
if game.PlaceId == 2753915549 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Kleiner Hub - Blox Fruit", "Sentinel")
    local M = Window:NewTab("Main")
    local P = Window:NewTab("Player")
    local A = M:NewSection("Teleports only")
    local C = P:NewSection("Local Player")

    A:NewButton("Blox Fruit Dealer", "BLOX FRUIT DEALER", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2533.48926, 5.25000954, 2060.45166, 0.907377243, 0, 0.420317143, 0, 1, 0, -0.420317143, 0, 0.907377243)
    end)
    A:NewButton("Sword Dealer", "SWORD DEALER", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2538.47656, 5.28000069, 2026.87744, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end)
    A:NewButton("Marine Boat Dealer", "", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2478.57764, 3.55113912, 2003.34851, -0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, -0.996191859)
    end)
    A:NewButton("Pirate Recruiter", "", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2572.78687, 5.55691004, 2169.45557, -0.819156051, 0, 0.573571265, 0, 1, 0, -0.573571265, 0, -0.819156051)
    end)
    A:NewButton("Marine Leader", "", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2708.57739, 23.2188244, 2105.34814, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
    end)
    A:NewButton("Marine Boat Dealer", "", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2470.57764, 3.55113912, 2061.34863, 0.984812498, 0, 0.173621148, 0, 1, 0, -0.173621148, 0, 0.984812498)
    end)
    A:NewButton("Advance Marines Boat Dealer", "", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2504.02075, 3.55113912, 1869.35632, 0.529884458, 0, 0.848069847, 0, 1, 0, -0.848069847, 0, 0.529884458)
    end)
    A:NewButton("Luxury Boat Dealer", "", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2549.1001, 3.55113411, 1839.95825, -0.642763734, 0, -0.766064942, 0, 1, 0, 0.766064942, 0, -0.642763734)
    end)
    C:NewTextBox("Walkspeed", "", function(txt)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = txt
    end)
    C:NewTextBox("JumpPower", "", function(txt)
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = txt
    end)
end

-- Texting Simulator
if game.PlaceId == 2580982329 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Kleiner Hub - Texting Simulator", "Sentinel")

    --> Tabs and Sections <--
    local Inf = Window:NewTab("Information")
    local Section1 = Inf:NewSection("This hub was made by Dr. Isaac Kleiner#8979")
    local Autofarm  = Window:NewTab("Auto Farm")
    local Section2 = Autofarm:NewSection("Kleiner Hub provides Super Auto Farms using")
    local Section2P2 = Autofarm:NewSection("RenderStepped That fires one frame per millisecond.")

    Section2P2:NewToggle("Auto Farm (REJOIN TO STOP AUTOFARM)", "Fires every millisecond per frame", function(state)
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
    
    local L = Window:NewTab("Locations")
    local L1 = L:NewSection("Locations:")
    L1:NewButton("Spawn", "Teleports you to Spawn.", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.731903, 8.89999866, 897.7052, -0.0790341124, -1.10327329e-08, -0.996871889, 8.6144496e-08, 1, -1.78970705e-08, 0.996871889, -8.72895072e-08, -0.0790341124)
    end)
    L1:NewButton("Hacker Room", "Teleports you to Hacker Room for Free.", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-88.0088348, 10.5124035, 1039.32251, -0.42270723, 6.13035667e-08, -0.906266272, 3.98559585e-08, 1, 4.90541971e-08, 0.906266272, -1.5384547e-08, -0.42270723)
    end)
end
