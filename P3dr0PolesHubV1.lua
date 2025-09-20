-- Carregar Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Criar janela principal
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

---------------------------------------------------
-- Aba Player
---------------------------------------------------
local Tab = Window:CreateTab("Player", 4483362458)
local Section = Tab:CreateSection("Player Options")

-- WalkSpeed
Tab:CreateSlider({
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
Tab:CreateSlider({
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
Tab:CreateToggle({
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
Tab:CreateToggle({
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

Tab:CreateInput({
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

Tab:CreateToggle({
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
      local moveVector = Vector3.new(0, 0, 0)
      if UIS:IsKeyDown(Enum.KeyCode.W) then
         moveVector = moveVector + (workspace.CurrentCamera.CFrame.LookVector * FlySpeed)
      end
      if UIS:IsKeyDown(Enum.KeyCode.S) then
         moveVector = moveVector - (workspace.CurrentCamera.CFrame.LookVector * FlySpeed)
      end
      if UIS:IsKeyDown(Enum.KeyCode.A) then
         moveVector = moveVector - (workspace.CurrentCamera.CFrame.RightVector * FlySpeed)
      end
      if UIS:IsKeyDown(Enum.KeyCode.D) then
         moveVector = moveVector + (workspace.CurrentCamera.CFrame.RightVector * FlySpeed)
      end
      if UIS:IsKeyDown(Enum.KeyCode.Space) then
         moveVector = moveVector + Vector3.new(0, FlySpeed, 0)
      end
      if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then
         moveVector = moveVector - Vector3.new(0, FlySpeed, 0)
      end
      humanoidRootPart.Velocity = moveVector * 10
   end
end)

---------------------------------------------------
-- Aba FPS
---------------------------------------------------
local FpsTab = Window:CreateTab("FPS", 4483362458)

FpsTab:CreateToggle({
   Name = "Aimbot",
   CurrentValue = false,
   Flag = "AimbotToggle",
   Callback = function(Value)
      if Value then
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()()
      end
   end,
})

FpsTab:CreateToggle({
   Name = "ESP",
   CurrentValue = false,
   Flag = "EspToggle",
   Callback = function(Value)
      if Value then
         _G.Settings = {ShowNames = true, ShowDistance = true}
         loadstring(game:HttpGet("https://raw.githubusercontent.com/apakekbebas/esp-lib/main/lib.lua", true))()
      end
   end,
})

---------------------------------------------------
-- Aba Admin
---------------------------------------------------
local AdminTab = Window:CreateTab("Admin", 4483362458)

AdminTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

AdminTab:CreateButton({
   Name = "AK Admin",
   Callback = function()
      loadstring(game:HttpGet("https://angelical.me/ak.lua"))()
   end,
})

AdminTab:CreateButton({
   Name = "Fates Admin",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
   end,
})

AdminTab:CreateButton({
   Name = "CmdX",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
   end,
})

AdminTab:CreateButton({
   Name = "Leg Admin V2",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
   end,
})

AdminTab:CreateButton({
   Name = "Homebrew Admin",
   Callback = function()
      loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Syntaxx64/HomebrewAdmin/master/Main"))()
   end,
})

AdminTab:CreateButton({
   Name = "Reviz Admin",
   Callback = function()
      loadstring(game:HttpGetAsync("https://pastebin.com/raw/gQg0G6iA"))()
   end,
})

AdminTab:CreateButton({
   Name = "GX Admin",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/v6E9BmFK",true))()
   end,
})

---------------------------------------------------
-- Aba Hubs
---------------------------------------------------
local HubsTab = Window:CreateTab("Hubs", 4483362458)

-- Spanish Hub
local SpanishHubSection = HubsTab:CreateSection("Spanish Hub")

HubsTab:CreateButton({
   Name = "Spanish Hub (Script 1)",
   Callback = function()
      loadstring(game:HttpGet("https://paste.myconan.net/499233.txt"))()
   end,
})

HubsTab:CreateButton({
   Name = "Spanish Hub (Script 2)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/GHUBV14XZ/main/Ghub_Main_Loader.txt"))()
   end,
})

-- Game Hub
local GameHubSection = HubsTab:CreateSection("Game Hub")

HubsTab:CreateButton({
   Name = "Game Hub (Loader 1)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Game-Hub/main/loader"))()
   end,
})

HubsTab:CreateButton({
   Name = "Game Hub (Loader 2)",
   Callback = function()
      loadstring(game:HttpGet("https://paste.myconan.net/489718.txt"))()
   end,
})

-- Other Hubs
local OtherHubSection = HubsTab:CreateSection("Other Hubs")

HubsTab:CreateButton({
   Name = "GHUB X ZENXOS V15",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/GHUBV15_X_ZENXOS-MAINLOADER/refs/heads/main/GHUB-X-ZENXOS-V15.txt"))()
   end,
})

-- Animations Hub
local AnimationsHubSection = HubsTab:CreateSection("Animations Hub")

HubsTab:CreateButton({
   Name = "AFEM Max (All UGC Emotes)",
   Callback = function()
      loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AFEM-Max-ALL-UGC-EMOTES-FREE-FE-NEW-53663"))()
   end,
})