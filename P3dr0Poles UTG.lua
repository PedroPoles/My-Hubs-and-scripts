local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "P3dr0Poles UTG",
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

   KeySystem = false,
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
-- 🧰 ABA TOOLS
local ToolsTab = Window:CreateTab("Tools", 4483362458) -- ID do ícone pode trocar
local ToolsSection = ToolsTab:CreateSection("Ferramentas")

ToolsTab:CreateButton({
    Name = "Vulcan WIP",
    Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/Ez0nUg4u"))()

})

ToolsTab:CreateButton({
    Name = "Harbaceus",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/PUDg61ug"))()
})

ToolsTab:CreateButton({
    Name = "Pacifist",
    Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/16NsrVkP"))()
})

ToolsTab:CreateButton({
    Name = "Tool 4",
    Callback = function()
        -- Coloque aqui o script da Tool 4
    end
})

ToolsTab:CreateButton({
    Name = "Tool 5",
    Callback = function()
        -- Coloque aqui o script da Tool 5
    end
})

ToolsTab:CreateButton({
    Name = "Tool 6",
    Callback = function()
        -- Coloque aqui o script da Tool 6
    end
})

ToolsTab:CreateButton({
    Name = "Tool 7",
    Callback = function()
        -- Coloque aqui o script da Tool 7
    end
})

ToolsTab:CreateButton({
    Name = "Tool 8",
    Callback = function()
        -- Coloque aqui o script da Tool 8
    end
})

ToolsTab:CreateButton({
    Name = "Tool 9",
    Callback = function()
        -- Coloque aqui o script da Tool 9
    end
})

ToolsTab:CreateButton({
    Name = "Tool 10",
    Callback = function()
        -- Coloque aqui o script da Tool 10
    end
})

-- 👾 ABA CHARACTERS
local CharactersTab = Window:CreateTab("Characters", 4483362458)
local CharSection = CharactersTab:CreateSection("Personagens")

CharactersTab:CreateButton({
    Name = "Character 1",
    Callback = function()
        -- Coloque aqui o script do Character 1
    end
})

CharactersTab:CreateButton({
    Name = "Character 2",
    Callback = function()
        -- Coloque aqui o script do Character 2
    end
})

CharactersTab:CreateButton({
    Name = "Character 3",
    Callback = function()
        -- Coloque aqui o script do Character 3
    end
})

CharactersTab:CreateButton({
    Name = "Character 4",
    Callback = function()
        -- Coloque aqui o script do Character 4
    end
})

CharactersTab:CreateButton({
    Name = "Character 5",
    Callback = function()
        -- Coloque aqui o script do Character 5
    end
})

CharactersTab:CreateButton({
    Name = "Character 6",
    Callback = function()
        -- Coloque aqui o script do Character 6
    end
})

CharactersTab:CreateButton({
    Name = "Character 7",
    Callback = function()
        -- Coloque aqui o script do Character 7
    end
})

CharactersTab:CreateButton({
    Name = "Character 8",
    Callback = function()
        -- Coloque aqui o script do Character 8
    end
})

CharactersTab:CreateButton({
    Name = "Character 9",
    Callback = function()
        -- Coloque aqui o script do Character 9
    end
})

CharactersTab:CreateButton({
    Name = "Character 10",
    Callback = function()
        -- Coloque aqui o script do Character 10
    end
})
})