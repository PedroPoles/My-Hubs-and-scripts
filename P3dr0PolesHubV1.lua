local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "P3dr0Poles Hub V1",
   Icon = 0,
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by PEDROOPSSS",
   ShowText = "Rayfield",
   Theme = "Default",

   ToggleUIKeybind = "P",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "LoL",
      FileName = "P3dr0Poles Hub V1.txt"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = true,
   KeySettings = {
      Title = "P3dr0Poles",
      Subtitle = "Key System",
      Note = "if you want the key, you can have it, here: P3dr0Hub101",
      FileName = "Get Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"P3dr0Hub101"}
   }
})

-- =========================
-- ABA PLAYER
-- =========================
local PlayerTab = Window:CreateTab("Player", 4483362458)
local PlayerSection = PlayerTab:CreateSection("Player Options")

-- WalkSpeed
PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 200},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "WalkSpeedSlider",
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

-- JumpPower
PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 300},
   Increment = 10,
   Suffix = "Power",
   CurrentValue = 50,
   Flag = "JumpPowerSlider",
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

-- Infinite Jump
local InfiniteJump = false
PlayerTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "InfiniteJumpToggle",
   Callback = function(Value)
      InfiniteJump = Value
   end,
})

game:GetService("UserInputService").JumpRequest:Connect(function()
   if InfiniteJump then
      local player = game.Players.LocalPlayer
      if player and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
         player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
      end
   end
end)

-- NoClip
local NoClip = false
PlayerTab:CreateToggle({
   Name = "NoClip",
   CurrentValue = false,
   Flag = "NoClipToggle",
   Callback = function(Value)
      NoClip = Value
   end,
})

game:GetService("RunService").Stepped:Connect(function()
   if NoClip then
      local player = game.Players.LocalPlayer
      if player.Character then
         for _, part in pairs(player.Character:GetDescendants()) do
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
PlayerTab:CreateInput({
   Name = "Fly Speed",
   PlaceholderText = "Digite a velocidade",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
      local Value = tonumber(Text)
      if Value then
         FlySpeed = Value
      end
   end,
})
PlayerTab:CreateToggle({
   Name = "Fly",
   CurrentValue = false,
   Flag = "FlyToggle",
   Callback = function(Value)
      Fly = Value
   end,
})

local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

RS.RenderStepped:Connect(function()
   if Fly then
      local moveVector = Vector3.new(0,0,0)
      if UIS:IsKeyDown(Enum.KeyCode.W) then moveVector = moveVector + (workspace.CurrentCamera.CFrame.LookVector * FlySpeed) end
      if UIS:IsKeyDown(Enum.KeyCode.S) then moveVector = moveVector - (workspace.CurrentCamera.CFrame.LookVector * FlySpeed) end
      if UIS:IsKeyDown(Enum.KeyCode.A) then moveVector = moveVector - (workspace.CurrentCamera.CFrame.RightVector * FlySpeed) end
      if UIS:IsKeyDown(Enum.KeyCode.D) then moveVector = moveVector + (workspace.CurrentCamera.CFrame.RightVector * FlySpeed) end
      if UIS:IsKeyDown(Enum.KeyCode.Space) then moveVector = moveVector + Vector3.new(0, FlySpeed, 0) end
      if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then moveVector = moveVector - Vector3.new(0, FlySpeed, 0) end
      humanoidRootPart.Velocity = moveVector * 10
   end
end)

-- =========================
-- ABA FPS
-- =========================
local FPSTab = Window:CreateTab("FPS", 4483362458)
local FPSSection = FPSTab:CreateSection("Funções FPS")

-- Toggle Aimbot
FPSTab:CreateToggle({
    Name = "Aimbot",
    CurrentValue = false,
    Flag = "AimbotToggle",
    Callback = function(Value)
        if Value then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()()
        end
    end
})

-- Toggle ESP
FPSTab:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Flag = "ESPToggle",
    Callback = function(Value)
        if Value then
            _G.Settings = {ShowNames = true, ShowDistance = true}
            loadstring(game:HttpGet("https://raw.githubusercontent.com/apakekbebas/esp-lib/main/lib.lua", true))()
        end
    end
})

-- =========================
-- ABA ADMIN (BOTÕES)
-- =========================
local AdminTab = Window:CreateTab("Admin", 4483362458)
local AdminSection = AdminTab:CreateSection("Admin Scripts")

-- Botão Infinite Yield
AdminTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

-- Botão AK / Angelical
AdminTab:CreateButton({
    Name = "AK / Angelical",
    Callback = function()
        loadstring(game:HttpGet("https://angelical.me/ak.lua"))()
    end
})

-- Botão Fates Admin
AdminTab:CreateButton({
    Name = "Fates Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
    end
})

-- Botão CMD-X
AdminTab:CreateButton({
    Name = "CMD-X",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
    end
})

-- Botão Leg Admin V2
AdminTab:CreateButton({
    Name = "Leg Admin V2",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
    end
})

-- Botão Homebrew Admin
AdminTab:CreateButton({
    Name = "Homebrew Admin",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Syntaxx64/HomebrewAdmin/master/Main"))()
    end
})