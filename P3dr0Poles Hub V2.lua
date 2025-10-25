-- P3dr0Poles Hub V2 Ash-Libs
-- Sem Key System
-- GUI principal
local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodLetters/Ash-Libs/refs/heads/main/source.lua"))()

GUI:CreateMain({
    Name = "P3dr0Poles Hub V2",
    title = "P3dr0Poles Hub V2",
    ToggleUI = "K",
    WindowIcon = "home",
    Theme = {
        Background = Color3.fromRGB(25, 25, 35),
        Secondary = Color3.fromRGB(35, 35, 45),
        Accent = Color3.fromRGB(138, 43, 226),
        Text = Color3.fromRGB(255, 255, 255),
        TextSecondary = Color3.fromRGB(180, 180, 180),
        Border = Color3.fromRGB(50, 50, 60),
        NavBackground = Color3.fromRGB(20, 20, 30)
    },
    Blur = { Enable = false, value = 0.2 },
    Config = { Enabled = false }
})

-- =====================
-- ABA PLAYER
-- =====================
local PlayerTab = GUI:CreateTab("Player", "home")
GUI:CreateSection({parent = PlayerTab, text = "Player Options"})

-- WalkSpeed
GUI:CreateSlider({parent = PlayerTab, text = "WalkSpeed", min = 16, max = 200, default = 16, function(value)
    local pl = game.Players.LocalPlayer
    if pl.Character and pl.Character:FindFirstChildOfClass("Humanoid") then
        pl.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = value
    end
end})

-- JumpPower
GUI:CreateSlider({parent = PlayerTab, text = "JumpPower", min = 50, max = 300, default = 50, function(value)
    local pl = game.Players.LocalPlayer
    if pl.Character and pl.Character:FindFirstChildOfClass("Humanoid") then
        pl.Character:FindFirstChildOfClass("Humanoid").JumpPower = value
    end
end})

-- Infinite Jump
local InfiniteJump = false
GUI:CreateToggle({parent = PlayerTab, text = "Infinite Jump", default = false, callback = function(state)
    InfiniteJump = state
end})
game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJump then
        local pl = game.Players.LocalPlayer
        if pl.Character and pl.Character:FindFirstChildOfClass("Humanoid") then
            pl.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)

-- NoClip
local NoClip = false
GUI:CreateToggle({parent = PlayerTab, text = "NoClip", default = false, callback = function(state)
    NoClip = state
end})
game:GetService("RunService").Stepped:Connect(function()
    if NoClip then
        local pl = game.Players.LocalPlayer
        if pl.Character then
            for _, part in pairs(pl.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end
end)

-- Fly
local Fly = false
local FlySpeed = 3
GUI:CreateTextBox({parent = PlayerTab, text = "Fly Speed (ex: 5)", placeholder = "Fly speed", callback = function(txt)
    local num = tonumber(txt)
    if num then FlySpeed = num end
end})
GUI:CreateToggle({parent = PlayerTab, text = "Fly", default = false, callback = function(state)
    Fly = state
end})

local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local pl = game.Players.LocalPlayer
local hrp
local function updateHRP()
    local char = pl.Character or pl.CharacterAdded:Wait()
    hrp = char:FindFirstChild("HumanoidRootPart")
end
updateHRP()
pl.CharacterAdded:Connect(updateHRP)

RS.RenderStepped:Connect(function()
    if Fly and hrp then
        local moveVector = Vector3.new()
        local cam = workspace.CurrentCamera
        if UIS:IsKeyDown(Enum.KeyCode.W) then moveVector += cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then moveVector -= cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then moveVector -= cam.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then moveVector += cam.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then moveVector += Vector3.new(0,1,0) end
        if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then moveVector -= Vector3.new(0,1,0) end
        if moveVector.Magnitude > 0 then
            hrp.Velocity = moveVector.Unit * FlySpeed * 10
        end
    end
end)

-- =====================
-- ABA ADMIN
-- =====================
local AdminTab = GUI:CreateTab("Admin", "settings")
GUI:CreateSection({parent = AdminTab, text = "Admin Scripts"})

local AdminScripts = {
    {"Infinite Yield", 'https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'},
    {"Fates Admin", "https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"},
    {"CMD-X", "https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"}
}

for _, v in pairs(AdminScripts) do
    GUI:CreateButton({parent = AdminTab, text = v[1], callback = function()
        pcall(function() loadstring(game:HttpGet(v[2]))() end)
    end})
end

-- =====================
-- ABA HUBS
-- =====================
local HubsTab = GUI:CreateTab("Hubs", "home")
GUI:CreateSection({parent = HubsTab, text = "Game / Other Hubs"})

local Hubs = {
    {"Spanish Hub 1", "https://paste.myconan.net/499233.txt"},
    {"Ghub v15", "https://raw.githubusercontent.com/gclich/GHUBV14XZ/main/Ghub_Main_Loader.txt"},
    {"Game Hub Loader 1", "https://raw.githubusercontent.com/GamerScripter/Game-Hub/main/loader"}
}

for _, v in pairs(Hubs) do
    GUI:CreateButton({parent = HubsTab, text = v[1], callback = function()
        pcall(function() loadstring(game:HttpGet(v[2]))() end)
    end})
end

-- =====================
-- ABA FE
-- =====================
local FETab = GUI:CreateTab("FE", "home")
GUI:CreateSection({parent = FETab, text = "FE Scripts / Hubs"})

-- FE Hubs existentes
local FEHubScripts = {
    {"FE Trolling GUI", "https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"}
}
for _, v in pairs(FEHubScripts) do
    GUI:CreateButton({parent = FETab, text = v[1], callback = function()
        pcall(function() loadstring(game:HttpGet(v[2]))() end)
    end})
end

-- NOVOS SCRIPTS FE
GUI:CreateButton({parent = FETab, text = "R15 Animation GUI", callback = function()
    pcall(function()
        loadstring(game:HttpGet("https://gitlab.com/Tsuniox/lua-stuff/-/raw/master/R15GUI.lua"))()
    end)
end})

GUI:CreateButton({parent = FETab, text = "FE Walk on Walls R6/R15", callback = function()
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end)
end})

GUI:CreateButton({parent = FETab, text = "FE R15 Spin Fling", callback = function()
    pcall(function()
        local power = 500
        local pl = game.Players.LocalPlayer
        local char = pl.Character or pl.CharacterAdded:Wait()

        game:GetService('RunService').Stepped:Connect(function()
            if char:FindFirstChild("Head") then char.Head.CanCollide = false end
            if char:FindFirstChild("UpperTorso") then char.UpperTorso.CanCollide = false end
            if char:FindFirstChild("LowerTorso") then char.LowerTorso.CanCollide = false end
            if char:FindFirstChild("HumanoidRootPart") then char.HumanoidRootPart.CanCollide = false end
        end)

        wait(0.1)
        local bambam = Instance.new("BodyThrust")
        bambam.Parent = char.HumanoidRootPart
        bambam.Force = Vector3.new(power,0,power)
        bambam.Location = char.HumanoidRootPart.Position
    end)
end})

-- =====================
-- BOTÃO FLUTUANTE ARRASTÁVEL
-- =====================
local player = game.Players.LocalPlayer

local FloatBtn = Instance.new("ImageButton")
FloatBtn.Parent = player:WaitForChild("PlayerGui")
FloatBtn.BackgroundTransparency = 1
FloatBtn.Size = UDim2.new(0,50,0,50)
FloatBtn.Position = UDim2.new(0,10,0,100)
FloatBtn.Image = "rbxassetid://97282030929898" -- substitua pelo ID da imagem
FloatBtn.ZIndex = 999

-- Drag
local dragging = false
local dragInput, dragStart, startPos
FloatBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = FloatBtn.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
FloatBtn.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)
game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        FloatBtn.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
                                      startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Toggle GUI
FloatBtn.MouseButton1Click:Connect(function()
    if GUI.Main then
        GUI.Main.Enabled = not GUI.Main.Enabled
    end
end)

print("P3dr0Poles Hub V2 carregada com Ash-Libs! ✅")��")nction()
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

local UIS = game:GetService("UserInputService")
local CoreGui = game:GetService("StarterGui")

-- Detecta mobile
local isMobile = UIS.TouchEnabled and not UIS.KeyboardEnabled

-- Cria ScreenGui
local ToggleGui = Instance.new("ScreenGui")
ToggleGui.Parent = game.CoreGui
ToggleGui.ResetOnSpawn = false

-- Botão para abrir/fechar Hub
local ToggleButton = Instance.new("ImageButton")
ToggleButton.Parent = ToggleGui
ToggleButton.Size = UDim2.new(0, 60, 0, 60)
ToggleButton.Position = UDim2.new(0, 20, 0.9, -70)
ToggleButton.Image = "rbxassetid://97282030929898" -- f
ToggleButton.BackgroundTransparency = 1

-- Variável para controle
local kavoVisible = true

-- Função de Toggle
ToggleButton.MouseButton1Click:Connect(function()
    kavoVisible = not kavoVisible
    for _, gui in pairs(game.CoreGui:GetChildren()) do
        if gui:FindFirstChild("TopFrame") then -- identifica a UI da Kavo
            gui.Enabled = kavoVisible
        end
    end
end)

if not isMobile then
    ToggleButton.Visible = true -- Se quiser só no mobile coloque "= isMobile"
end
print("P3dr0Poles Hub V2 loaded (Kavo Ocean).")ded (Kavo Ocean).")